/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_job

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 04/06/2023 21:46:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add order log', 16, 'add_orderlog');
INSERT INTO `auth_permission` VALUES (62, 'Can change order log', 16, 'change_orderlog');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order log', 16, 'delete_orderlog');
INSERT INTO `auth_permission` VALUES (64, 'Can view order log', 16, 'view_orderlog');
INSERT INTO `auth_permission` VALUES (65, 'Can add order', 17, 'add_order');
INSERT INTO `auth_permission` VALUES (66, 'Can change order', 17, 'change_order');
INSERT INTO `auth_permission` VALUES (67, 'Can delete order', 17, 'delete_order');
INSERT INTO `auth_permission` VALUES (68, 'Can view order', 17, 'view_order');
INSERT INTO `auth_permission` VALUES (69, 'Can add comment', 18, 'add_comment');
INSERT INTO `auth_permission` VALUES (70, 'Can change comment', 18, 'change_comment');
INSERT INTO `auth_permission` VALUES (71, 'Can delete comment', 18, 'delete_comment');
INSERT INTO `auth_permission` VALUES (72, 'Can view comment', 18, 'view_comment');
INSERT INTO `auth_permission` VALUES (73, 'Can add banner', 19, 'add_banner');
INSERT INTO `auth_permission` VALUES (74, 'Can change banner', 19, 'change_banner');
INSERT INTO `auth_permission` VALUES (75, 'Can delete banner', 19, 'delete_banner');
INSERT INTO `auth_permission` VALUES (76, 'Can view banner', 19, 'view_banner');
INSERT INTO `auth_permission` VALUES (77, 'Can add address', 20, 'add_address');
INSERT INTO `auth_permission` VALUES (78, 'Can change address', 20, 'change_address');
INSERT INTO `auth_permission` VALUES (79, 'Can delete address', 20, 'delete_address');
INSERT INTO `auth_permission` VALUES (80, 'Can view address', 20, 'view_address');
INSERT INTO `auth_permission` VALUES (81, 'Can add company', 21, 'add_company');
INSERT INTO `auth_permission` VALUES (82, 'Can change company', 21, 'change_company');
INSERT INTO `auth_permission` VALUES (83, 'Can delete company', 21, 'delete_company');
INSERT INTO `auth_permission` VALUES (84, 'Can view company', 21, 'view_company');
INSERT INTO `auth_permission` VALUES (85, 'Can add resume', 22, 'add_resume');
INSERT INTO `auth_permission` VALUES (86, 'Can change resume', 22, 'change_resume');
INSERT INTO `auth_permission` VALUES (87, 'Can delete resume', 22, 'delete_resume');
INSERT INTO `auth_permission` VALUES (88, 'Can view resume', 22, 'view_resume');
INSERT INTO `auth_permission` VALUES (89, 'Can add post', 23, 'add_post');
INSERT INTO `auth_permission` VALUES (90, 'Can change post', 23, 'change_post');
INSERT INTO `auth_permission` VALUES (91, 'Can delete post', 23, 'delete_post');
INSERT INTO `auth_permission` VALUES (92, 'Can view post', 23, 'view_post');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, '', 'http://www.baidu.com111', '2023-06-03 14:15:00.318012');

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '生活服务', NOW());
INSERT INTO `b_classification` VALUES (2, 'IT互联网', NOW());
INSERT INTO `b_classification` VALUES (3, '教育培训', NOW());
INSERT INTO `b_classification` VALUES (4, '物流运输', NOW());
INSERT INTO `b_classification` VALUES (5, '设计创意', NOW());

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for b_company
-- ----------------------------
DROP TABLE IF EXISTS `b_company`;
CREATE TABLE `b_company`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `guimo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hangye` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_company_user_id_908f2ad2_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_company_user_id_908f2ad2_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_company
-- ----------------------------
INSERT INTO `b_company` VALUES (1, '快客科技', '', '50人', '互联网/IT服务', '啊啊啊', '北京中关村', 4);
INSERT INTO `b_company` VALUES (2, '极速物流', '', '100人', '物流运输', NULL, '上海浦东', 7);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------
INSERT INTO `b_error_log` VALUES (1, '127.0.0.1', '/myapp/admin/thing/create', 'POST', '参数错误', '2023-06-02 19:05:13.946588');
INSERT INTO `b_error_log` VALUES (2, '127.0.0.1', '/myapp/admin/thing/create', 'POST', '参数错误', '2023-06-02 19:06:04.411632');
INSERT INTO `b_error_log` VALUES (3, '127.0.0.1', '/myapp/admin/resume/detail', 'GET', '对象不存在', '2023-06-03 10:48:16.748941');
INSERT INTO `b_error_log` VALUES (4, '127.0.0.1', '/myapp/admin/resume/detail', 'GET', '对象不存在', '2023-06-03 10:51:45.434867');
INSERT INTO `b_error_log` VALUES (5, '127.0.0.1', '/myapp/admin/post/detail', 'GET', '对象不存在', '2023-06-03 11:03:00.668510');
INSERT INTO `b_error_log` VALUES (6, '127.0.0.1', '/myapp/admin/post/detail', 'GET', '对象不存在', '2023-06-03 11:03:04.548680');
INSERT INTO `b_error_log` VALUES (7, '127.0.0.1', '/myapp/admin/post/create', 'POST', '参数错误', '2023-06-03 11:05:27.222544');
INSERT INTO `b_error_log` VALUES (8, '127.0.0.1', '/myapp/admin/post/create', 'POST', '参数错误', '2023-06-03 11:05:50.983401');
INSERT INTO `b_error_log` VALUES (9, '127.0.0.1', '/myapp/admin/post/create', 'POST', '参数错误', '2023-06-03 11:12:38.531952');
INSERT INTO `b_error_log` VALUES (10, '127.0.0.1', '/myapp/admin/post/detail', 'GET', '对象不存在', '2023-06-03 11:14:23.162288');
INSERT INTO `b_error_log` VALUES (11, '127.0.0.1', '/myapp/index/thing/getWishThingList', 'GET', '操作失败User matching query does not exist.', '2023-06-03 16:43:34.569761');
INSERT INTO `b_error_log` VALUES (12, '127.0.0.1', '/myapp/index/thing/getCollectThingList', 'GET', '操作失败User matching query does not exist.', '2023-06-03 16:43:34.572761');
INSERT INTO `b_error_log` VALUES (13, '127.0.0.1', '/myapp/index/thing/getCollectThingList', 'GET', '操作失败User matching query does not exist.', '2023-06-03 16:44:31.082352');
INSERT INTO `b_error_log` VALUES (14, '127.0.0.1', '/myapp/index/thing/getWishThingList', 'GET', '操作失败User matching query does not exist.', '2023-06-03 16:44:31.081352');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-03 14:21:35.661143');
INSERT INTO `b_login_log` VALUES (2, 'test', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-03 15:20:42.192560');
INSERT INTO `b_login_log` VALUES (3, 'test', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-03 16:01:32.939142');
INSERT INTO `b_login_log` VALUES (4, 'test', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-03 16:45:16.434572');
INSERT INTO `b_login_log` VALUES (5, 'test', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-04 15:20:04.909376');
INSERT INTO `b_login_log` VALUES (6, 'bbb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-04 15:21:54.227629');
INSERT INTO `b_login_log` VALUES (7, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-04 15:35:33.435810');
INSERT INTO `b_login_log` VALUES (8, 'ccc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-04 21:28:09.262410');
INSERT INTO `b_login_log` VALUES (9, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-04 21:40:47.844545');
INSERT INTO `b_login_log` VALUES (10, 'dddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-04 21:43:27.188819');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, 'aaaa', 'bbbb', NULL);

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2490 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-06-02 19:05:13.951587', '/myapp/admin/thing/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-06-02 19:05:18.905071', '/myapp/admin/order/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-06-02 19:05:19.450221', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-06-02 19:05:19.458775', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-06-02 19:05:19.460295', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-06-02 19:05:23.739604', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-06-02 19:05:31.748832', '/myapp/admin/user/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-06-02 19:05:31.801838', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-06-02 19:05:46.403970', '/myapp/admin/user/create', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-06-02 19:05:46.459880', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-06-02 19:06:04.427996', '/myapp/admin/thing/create', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-06-02 19:06:31.865472', '/myapp/admin/thing/create', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-06-02 19:06:33.908601', '/myapp/admin/thing/create', 'POST', NULL, '79');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-06-02 19:06:35.064035', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-06-02 19:06:53.958369', '/myapp/admin/thing/delete', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-06-02 19:07:02.139375', '/myapp/admin/thing/delete', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-06-02 19:07:10.682124', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-06-02 19:07:18.120559', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-06-03 10:22:01.296674', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-06-03 10:22:01.300675', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-06-03 10:22:01.306696', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-06-03 10:22:01.325362', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-06-03 10:22:30.624082', '/myapp/admin/overview/count', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-06-03 10:22:53.512401', '/myapp/admin/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-06-03 10:22:55.272634', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-06-03 10:22:55.287676', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-06-03 10:22:55.307974', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-06-03 10:23:18.396094', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-06-03 10:35:26.617531', '/myapp/admin/company/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-06-03 10:36:47.251035', '/myapp/admin/company/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-06-03 10:37:48.566027', '/myapp/admin/company/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-06-03 10:37:56.904962', '/myapp/admin/company/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-06-03 10:38:05.367218', '/myapp/admin/company/create', 'POST', NULL, '84');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-06-03 10:39:25.050031', '/myapp/admin/company/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-06-03 10:41:54.949740', '/myapp/admin/company/update', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-06-03 10:42:12.236425', '/myapp/admin/company/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-06-03 10:42:56.823049', '/myapp/admin/company/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-06-03 10:43:16.326272', '/myapp/admin/company/delete', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-06-03 10:48:07.772765', '/myapp/admin/resume/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-06-03 10:48:16.761377', '/myapp/admin/resume/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-06-03 10:48:45.717067', '/myapp/admin/resume/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-06-03 10:49:12.869571', '/myapp/admin/resume/update', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-06-03 10:49:21.597994', '/myapp/admin/resume/delete', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-06-03 10:50:15.291579', '/myapp/admin/resume/update', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-06-03 10:50:35.517192', '/myapp/admin/resume/create', 'POST', NULL, '107');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-06-03 10:50:56.326091', '/myapp/admin/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-06-03 10:50:58.758124', '/myapp/admin/resume/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-06-03 10:51:45.443069', '/myapp/admin/resume/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-06-03 10:55:59.328006', '/myapp/admin/resume/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-06-03 10:56:35.635086', '/myapp/admin/resume/create', 'POST', NULL, '143');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-06-03 10:57:54.478575', '/myapp/admin/company/create', 'POST', NULL, '6');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-06-03 10:58:11.131520', '/myapp/admin/resume/delete', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-06-03 10:58:15.588539', '/myapp/admin/resume/create', 'POST', NULL, '96');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-06-03 10:58:38.031637', '/myapp/admin/resume/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-06-03 10:59:31.776166', '/myapp/admin/post/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-06-03 11:02:50.902184', '/myapp/admin/post/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-06-03 11:03:00.674745', '/myapp/admin/post/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-06-03 11:03:04.559853', '/myapp/admin/post/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-06-03 11:03:31.949430', '/myapp/admin/post/create', 'POST', NULL, '176');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-06-03 11:05:27.237048', '/myapp/admin/post/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-06-03 11:05:50.986623', '/myapp/admin/post/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-06-03 11:06:03.126381', '/myapp/admin/post/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-06-03 11:12:38.545357', '/myapp/admin/post/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-06-03 11:12:55.801325', '/myapp/admin/post/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-06-03 11:13:50.388235', '/myapp/admin/post/delete', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-06-03 11:13:59.954778', '/myapp/admin/post/delete', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-06-03 11:14:23.179720', '/myapp/admin/post/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-06-03 11:14:26.482473', '/myapp/admin/post/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-06-03 11:14:29.049782', '/myapp/admin/post/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-06-03 11:16:35.240951', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-06-03 11:16:35.247368', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-06-03 11:16:35.260039', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-06-03 11:16:35.707109', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-06-03 11:16:35.708117', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-06-03 11:16:35.718117', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-06-03 11:17:52.535249', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-06-03 11:17:52.537258', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-06-03 11:17:52.547096', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-06-03 11:18:17.466775', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-06-03 11:18:17.468284', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-06-03 11:18:17.478400', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-06-03 11:18:48.421376', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-06-03 11:18:48.426554', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-06-03 11:18:48.455473', '/myapp/admin/tag/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-06-03 11:19:12.247542', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-06-03 11:19:12.248544', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-06-03 11:19:12.254544', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-06-03 11:19:55.477875', '/myapp/admin/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-06-03 11:19:55.920275', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-06-03 11:19:55.921867', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-06-03 11:19:55.943310', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-06-03 11:21:19.598735', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-06-03 11:21:19.601737', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-06-03 11:21:19.624260', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-06-03 11:21:22.120767', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-06-03 11:21:22.595942', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-06-03 11:21:22.596944', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-06-03 11:21:22.634630', '/myapp/admin/tag/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-06-03 11:22:13.376696', '/myapp/admin/order/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-06-03 11:22:13.821063', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-06-03 11:22:13.824201', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-06-03 11:22:13.831905', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-06-03 11:22:28.880913', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-06-03 11:22:42.016971', '/myapp/admin/thing/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-06-03 11:22:44.952010', '/myapp/admin/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-06-03 11:22:45.382775', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-06-03 11:22:45.387939', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-06-03 11:22:45.405869', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-06-03 11:22:54.813000', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-06-03 11:22:57.240416', '/myapp/admin/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-06-03 11:24:05.710958', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-06-03 11:24:05.740642', '/myapp/admin/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-06-03 11:24:05.758936', '/myapp/admin/tag/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-06-03 11:28:54.344840', '/myapp/admin/order/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-06-03 11:28:54.827771', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-06-03 11:28:54.843683', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-06-03 11:28:54.856281', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-06-03 11:29:49.211305', '/myapp/admin/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-06-03 11:29:50.805689', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-06-03 11:29:50.807352', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-06-03 11:29:50.845249', '/myapp/admin/tag/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-06-03 11:31:03.614007', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-06-03 11:31:03.617073', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-06-03 11:31:03.657562', '/myapp/admin/tag/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-06-03 11:32:03.779439', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-06-03 11:32:03.781409', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-06-03 11:32:03.801372', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-06-03 11:32:17.708766', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-06-03 11:32:24.985286', '/myapp/admin/classification/create', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-06-03 11:32:25.005286', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-06-03 11:32:26.290582', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-06-03 11:32:33.056140', '/myapp/admin/tag/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-06-03 11:32:33.076097', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-06-03 11:32:35.687838', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-06-03 11:32:36.406688', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-06-03 11:32:41.019706', '/myapp/admin/tag/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-06-03 11:32:41.048737', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-06-03 11:32:42.689302', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-06-03 11:32:42.690302', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-06-03 11:32:42.719477', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-06-03 11:33:35.752394', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-06-03 11:33:35.883796', '/myapp/admin/thing/list', 'GET', NULL, '82');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-06-03 11:33:48.132081', '/myapp/admin/thing/update', 'POST', NULL, '63');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-06-03 11:33:48.218975', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-06-03 11:34:31.404769', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-06-03 11:34:31.405745', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-06-03 11:34:31.439560', '/myapp/admin/tag/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-06-03 11:39:33.755471', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-06-03 11:39:33.758471', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-06-03 11:39:33.773471', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-06-03 11:39:52.856748', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-06-03 11:39:52.929746', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-06-03 11:41:27.207470', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-06-03 11:41:27.239469', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-06-03 11:41:27.277049', '/myapp/admin/tag/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-06-03 11:41:30.553672', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-06-03 11:41:30.556687', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-06-03 11:41:30.586764', '/myapp/admin/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-06-03 11:41:36.884085', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-06-03 11:41:36.976666', '/myapp/admin/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-06-03 11:41:44.999261', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-06-03 11:41:45.104422', '/myapp/admin/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-06-03 11:41:49.286588', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-06-03 11:41:49.350142', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-06-03 11:42:45.199339', '/myapp/admin/thing/update', 'POST', NULL, '71');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-06-03 11:42:45.308898', '/myapp/admin/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-06-03 11:42:55.697028', '/myapp/admin/thing/update', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-06-03 11:42:55.819981', '/myapp/admin/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-06-03 11:43:32.281249', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-06-03 11:43:32.282249', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-06-03 11:43:32.283249', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-06-03 11:44:18.239879', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-06-03 11:44:18.364554', '/myapp/admin/thing/list', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-06-03 11:45:06.105492', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-06-03 11:45:06.106504', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-06-03 11:45:06.119639', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-06-03 11:45:53.286383', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-06-03 11:45:53.288235', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-06-03 11:45:53.309032', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-06-03 11:46:11.458424', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-06-03 11:46:11.476984', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-06-03 11:46:11.496995', '/myapp/admin/classification/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-06-03 11:47:03.983766', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-06-03 11:47:04.006481', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-06-03 11:47:04.015466', '/myapp/admin/tag/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-06-03 11:47:15.345734', '/myapp/admin/thing/update', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-06-03 11:47:15.444613', '/myapp/admin/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-06-03 11:47:33.460766', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-06-03 11:47:33.537841', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-06-03 11:47:54.433878', '/myapp/admin/thing/delete', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-06-03 11:47:54.522219', '/myapp/admin/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-06-03 11:47:57.523085', '/myapp/admin/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-06-03 11:47:58.184641', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-06-03 11:47:58.187630', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-06-03 11:47:58.216957', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-06-03 13:16:33.682313', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-06-03 13:16:33.686629', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-06-03 13:16:33.705636', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-06-03 13:16:42.185568', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-06-03 13:16:42.189573', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-06-03 13:16:42.194566', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-06-03 13:22:39.124048', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-06-03 13:22:39.130049', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-06-03 13:22:39.147384', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-06-03 13:22:42.970973', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-06-03 13:22:42.978005', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-06-03 13:22:42.995268', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-06-03 13:22:44.249578', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-06-03 13:22:44.255577', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-06-03 13:22:44.269272', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-06-03 13:24:08.047757', '/myapp/admin/company/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-06-03 13:24:08.058795', '/myapp/admin/company/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-06-03 13:24:08.060848', '/myapp/admin/company/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-06-03 13:25:11.792196', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-06-03 13:25:11.792196', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-06-03 13:25:11.810068', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-06-03 13:26:01.810320', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-06-03 13:26:01.811363', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-06-03 13:26:01.812295', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-06-03 13:26:21.182711', '/myapp/admin/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-06-03 13:26:21.676510', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-06-03 13:26:21.678744', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-06-03 13:26:21.680925', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-06-03 13:26:32.469807', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-06-03 13:26:32.472304', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-06-03 13:26:32.475616', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-06-03 13:27:05.937093', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-06-03 13:27:05.940093', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-06-03 13:27:05.953160', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-06-03 13:27:06.495846', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-06-03 13:27:06.498090', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-06-03 13:27:06.509397', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-06-03 13:29:33.618255', '/myapp/admin/company/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-06-03 13:29:33.674930', '/myapp/admin/company/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-06-03 13:29:38.647296', '/myapp/admin/company/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-06-03 13:29:38.693856', '/myapp/admin/company/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-06-03 13:30:36.210563', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-06-03 13:30:36.212562', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-06-03 13:30:36.214077', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-06-03 13:30:41.204139', '/myapp/admin/company/update', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-06-03 13:30:41.252094', '/myapp/admin/company/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-06-03 13:30:44.798818', '/myapp/admin/company/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2023-06-03 13:30:44.847207', '/myapp/admin/company/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2023-06-03 13:30:52.794441', '/myapp/admin/company/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2023-06-03 13:30:52.847885', '/myapp/admin/company/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2023-06-03 13:31:42.419836', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2023-06-03 13:31:42.421835', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2023-06-03 13:31:42.425836', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2023-06-03 13:34:13.939788', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2023-06-03 13:34:13.941882', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2023-06-03 13:34:13.945052', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2023-06-03 13:34:42.483842', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2023-06-03 13:34:42.488873', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2023-06-03 13:34:42.490865', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2023-06-03 13:34:46.382731', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2023-06-03 13:34:46.386136', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2023-06-03 13:34:46.413354', '/myapp/admin/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2023-06-03 13:34:46.934031', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2023-06-03 13:34:46.938032', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2023-06-03 13:34:46.943039', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2023-06-03 13:34:52.265220', '/myapp/admin/company/update', 'POST', NULL, '230');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2023-06-03 13:34:52.314291', '/myapp/admin/company/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2023-06-03 13:35:58.782014', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2023-06-03 13:35:58.784233', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2023-06-03 13:35:58.786250', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2023-06-03 13:37:53.134181', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2023-06-03 13:37:53.167656', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2023-06-03 13:37:53.177658', '/myapp/admin/classification/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2023-06-03 13:37:53.227237', '/upload/company/1685770491227.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2023-06-03 13:37:56.898962', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2023-06-03 13:37:56.899962', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2023-06-03 13:37:56.904962', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2023-06-03 13:37:58.904913', '/upload/company/1685770491227.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2023-06-03 13:39:23.849777', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2023-06-03 13:39:23.858778', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2023-06-03 13:39:23.860777', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2023-06-03 13:39:24.362766', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2023-06-03 13:39:24.364831', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2023-06-03 13:39:24.365806', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2023-06-03 13:39:29.306128', '/myapp/admin/company/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2023-06-03 13:39:29.342582', '/myapp/admin/company/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2023-06-03 13:39:29.364988', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2023-06-03 13:39:31.548454', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2023-06-03 13:39:31.553854', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2023-06-03 13:39:31.569366', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2023-06-03 13:39:32.003115', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2023-06-03 13:39:32.004114', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2023-06-03 13:39:32.006274', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2023-06-03 13:40:06.543564', '/myapp/admin/company/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2023-06-03 13:40:10.160304', '/myapp/admin/company/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2023-06-03 13:40:13.506175', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2023-06-03 13:40:13.509352', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2023-06-03 13:40:13.528946', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2023-06-03 13:40:13.964189', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2023-06-03 13:40:13.970538', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2023-06-03 13:40:13.976892', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2023-06-03 13:41:29.591686', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2023-06-03 13:41:29.591686', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2023-06-03 13:41:29.596293', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2023-06-03 13:41:29.617741', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2023-06-03 13:41:32.024517', '/upload/company/1685770768426.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2023-06-03 13:42:32.606276', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2023-06-03 13:42:32.618829', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2023-06-03 13:42:32.621879', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2023-06-03 13:42:32.638345', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2023-06-03 13:42:42.043071', '/myapp/admin/overview/count', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2023-06-03 13:42:43.907730', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2023-06-03 13:42:43.910730', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2023-06-03 13:42:43.912731', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2023-06-03 13:42:43.944253', '/upload/company/1685770768426.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2023-06-03 13:43:22.700349', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2023-06-03 13:43:22.704100', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2023-06-03 13:43:22.729494', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2023-06-03 13:43:22.987570', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2023-06-03 13:43:22.989561', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2023-06-03 13:43:22.995572', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2023-06-03 13:43:32.696898', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2023-06-03 13:43:32.702033', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2023-06-03 13:43:32.718844', '/upload/company/1685770768426.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2023-06-03 13:43:32.733957', '/upload/company/1685770768426.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2023-06-03 13:44:42.877452', '/myapp/admin/company/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2023-06-03 13:44:42.930769', '/myapp/admin/company/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2023-06-03 13:44:42.968883', '/upload/company/1685771081809.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2023-06-03 13:44:44.792405', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2023-06-03 13:44:44.796405', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2023-06-03 13:44:44.818417', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2023-06-03 13:44:45.280076', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2023-06-03 13:44:45.283383', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2023-06-03 13:44:45.290755', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2023-06-03 13:44:51.103250', '/myapp/admin/company/delete', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2023-06-03 13:44:51.134476', '/myapp/admin/company/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2023-06-03 13:44:52.626942', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2023-06-03 13:44:52.630933', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2023-06-03 13:44:52.674340', '/myapp/admin/tag/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2023-06-03 13:44:52.994450', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2023-06-03 13:44:52.998547', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2023-06-03 13:44:53.005448', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2023-06-03 13:44:55.196173', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2023-06-03 13:44:55.199163', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2023-06-03 13:44:55.215167', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2023-06-03 13:44:55.818504', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2023-06-03 13:44:55.820592', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2023-06-03 13:44:55.844447', '/myapp/admin/tag/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2023-06-03 13:44:57.579212', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2023-06-03 13:44:57.599485', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2023-06-03 13:44:57.607483', '/myapp/admin/tag/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2023-06-03 13:44:58.170914', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2023-06-03 13:44:58.173248', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2023-06-03 13:44:58.180792', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2023-06-03 13:44:59.812043', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2023-06-03 13:44:59.836682', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2023-06-03 13:44:59.844133', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2023-06-03 13:45:00.865183', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2023-06-03 13:45:00.867245', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2023-06-03 13:45:00.881307', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2023-06-03 13:45:01.593074', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2023-06-03 13:45:01.595005', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2023-06-03 13:45:01.626255', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2023-06-03 13:46:18.330731', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2023-06-03 13:46:18.335266', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2023-06-03 13:46:18.349772', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2023-06-03 13:46:19.586190', '/myapp/admin/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2023-06-03 13:46:20.835927', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2023-06-03 13:46:20.839449', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2023-06-03 13:46:20.844884', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2023-06-03 13:46:20.890372', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2023-06-03 13:46:21.782707', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2023-06-03 13:46:21.785706', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2023-06-03 13:46:21.787857', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2023-06-03 13:46:48.343022', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2023-06-03 13:46:48.350069', '/myapp/admin/resume/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2023-06-03 13:46:48.357078', '/myapp/admin/resume/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2023-06-03 13:46:48.371463', '/upload/resume/logo_Yvy8kmb.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2023-06-03 13:46:51.684931', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2023-06-03 13:46:51.694612', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2023-06-03 13:46:51.709403', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2023-06-03 13:46:52.152037', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2023-06-03 13:46:52.157369', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2023-06-03 13:46:52.155162', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2023-06-03 13:47:34.646934', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2023-06-03 13:47:34.653933', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2023-06-03 13:47:34.665010', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2023-06-03 13:48:09.227191', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2023-06-03 13:48:09.224026', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2023-06-03 13:48:09.226126', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2023-06-03 13:48:34.716701', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2023-06-03 13:48:34.718703', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2023-06-03 13:48:34.736743', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2023-06-03 13:48:49.835231', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2023-06-03 13:48:49.838235', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2023-06-03 13:48:49.858711', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2023-06-03 13:49:07.624839', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2023-06-03 13:49:07.625831', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2023-06-03 13:49:07.629830', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2023-06-03 13:49:07.663023', '/upload/company/1685770768426.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2023-06-03 13:49:08.120999', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2023-06-03 13:49:08.125450', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2023-06-03 13:49:08.129730', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2023-06-03 13:49:23.044891', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2023-06-03 13:49:23.046056', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2023-06-03 13:49:23.065093', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2023-06-03 13:49:23.629560', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2023-06-03 13:49:23.631337', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2023-06-03 13:49:23.634935', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2023-06-03 13:51:28.345901', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2023-06-03 13:51:28.346901', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2023-06-03 13:51:28.348893', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2023-06-03 13:51:28.387223', '/upload/company/1685770768426.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2023-06-03 13:51:28.852031', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2023-06-03 13:51:28.853837', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2023-06-03 13:51:28.854917', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2023-06-03 13:52:03.354715', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2023-06-03 13:52:03.355724', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2023-06-03 13:52:03.358061', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2023-06-03 13:52:05.367631', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2023-06-03 13:52:05.369553', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2023-06-03 13:52:05.372769', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2023-06-03 13:52:05.771545', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2023-06-03 13:52:05.772901', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2023-06-03 13:52:05.773908', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2023-06-03 13:54:06.616177', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2023-06-03 13:54:06.619172', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2023-06-03 13:54:06.641203', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2023-06-03 13:57:11.530210', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2023-06-03 13:57:11.531213', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2023-06-03 13:57:11.532212', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2023-06-03 13:57:14.021179', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2023-06-03 13:57:14.023448', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2023-06-03 13:57:14.025693', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2023-06-03 13:57:16.367472', '/myapp/admin/resume/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2023-06-03 13:57:16.411469', '/myapp/admin/resume/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2023-06-03 13:57:23.017604', '/myapp/admin/resume/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2023-06-03 13:57:23.078563', '/myapp/admin/resume/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2023-06-03 13:57:25.170402', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2023-06-03 13:57:25.173612', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2023-06-03 13:57:25.174628', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2023-06-03 13:57:25.213674', '/upload/company/1685770768426.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2023-06-03 13:57:25.596652', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2023-06-03 13:57:25.599619', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2023-06-03 13:57:25.604990', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2023-06-03 13:58:09.295576', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2023-06-03 13:58:09.301577', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2023-06-03 13:58:09.305577', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2023-06-03 13:58:15.339832', '/myapp/admin/resume/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2023-06-03 13:58:15.395468', '/myapp/admin/resume/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2023-06-03 13:58:22.663464', '/myapp/admin/resume/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2023-06-03 13:58:22.713957', '/myapp/admin/resume/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2023-06-03 13:59:03.488566', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2023-06-03 13:59:03.494924', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2023-06-03 13:59:03.495924', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2023-06-03 13:59:03.936893', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2023-06-03 13:59:03.938470', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2023-06-03 13:59:03.940666', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2023-06-03 13:59:08.439827', '/myapp/admin/resume/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2023-06-03 13:59:08.507612', '/myapp/admin/resume/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2023-06-03 13:59:18.994570', '/myapp/admin/resume/update', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2023-06-03 13:59:19.048214', '/myapp/admin/resume/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2023-06-03 13:59:22.323367', '/myapp/admin/resume/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2023-06-03 13:59:22.382803', '/myapp/admin/resume/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2023-06-03 13:59:31.085604', '/myapp/admin/resume/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2023-06-03 13:59:31.126337', '/myapp/admin/resume/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2023-06-03 14:00:06.604616', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2023-06-03 14:00:06.606711', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2023-06-03 14:00:06.631206', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2023-06-03 14:00:08.138505', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2023-06-03 14:00:08.142646', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2023-06-03 14:00:08.150157', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2023-06-03 14:00:08.197635', '/upload/company/1685770768426.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2023-06-03 14:00:08.617479', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2023-06-03 14:00:08.621565', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2023-06-03 14:00:08.628382', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2023-06-03 14:00:14.394822', '/myapp/admin/resume/update', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2023-06-03 14:00:14.443302', '/myapp/admin/resume/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2023-06-03 14:00:20.665966', '/myapp/admin/resume/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2023-06-03 14:00:20.733877', '/myapp/admin/resume/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2023-06-03 14:00:30.573381', '/myapp/admin/resume/update', 'POST', NULL, '228');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2023-06-03 14:00:30.644919', '/myapp/admin/resume/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2023-06-03 14:00:30.684703', '/upload/resume/1685772029168.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2023-06-03 14:00:31.968556', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2023-06-03 14:00:31.974907', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2023-06-03 14:00:31.978711', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2023-06-03 14:00:32.373927', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2023-06-03 14:00:32.388537', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2023-06-03 14:00:32.396317', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2023-06-03 14:00:37.417941', '/myapp/admin/resume/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2023-06-03 14:00:37.486725', '/myapp/admin/resume/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2023-06-03 14:00:37.525272', '/upload/resume/1685772036385.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2023-06-03 14:00:38.840423', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2023-06-03 14:00:38.845422', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2023-06-03 14:00:38.849421', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2023-06-03 14:00:39.264428', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2023-06-03 14:00:39.288336', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2023-06-03 14:00:39.295537', '/myapp/admin/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2023-06-03 14:00:41.161441', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2023-06-03 14:00:41.163894', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2023-06-03 14:00:41.192272', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2023-06-03 14:00:41.644069', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2023-06-03 14:00:41.647008', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2023-06-03 14:00:41.674301', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2023-06-03 14:00:42.048881', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2023-06-03 14:00:42.056020', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2023-06-03 14:00:42.061201', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2023-06-03 14:00:42.096727', '/upload/resume/1685772036385.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2023-06-03 14:00:51.728790', '/myapp/admin/resume/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2023-06-03 14:00:55.873952', '/myapp/admin/resume/delete', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2023-06-03 14:00:55.918036', '/myapp/admin/resume/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2023-06-03 14:00:57.156374', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2023-06-03 14:00:57.164492', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2023-06-03 14:00:57.167635', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2023-06-03 14:00:57.579105', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2023-06-03 14:00:57.582061', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2023-06-03 14:00:57.603071', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2023-06-03 14:00:59.942841', '/myapp/admin/resume/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2023-06-03 14:01:01.677017', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2023-06-03 14:01:01.679290', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2023-06-03 14:01:01.685607', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2023-06-03 14:01:02.084476', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2023-06-03 14:01:02.086718', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2023-06-03 14:01:02.112559', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2023-06-03 14:01:08.266673', '/myapp/admin/resume/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2023-06-03 14:01:08.303988', '/myapp/admin/resume/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2023-06-03 14:01:08.321898', '/upload/resume/1685772067199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2023-06-03 14:01:19.145102', '/myapp/admin/resume/update', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2023-06-03 14:01:19.195757', '/myapp/admin/resume/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2023-06-03 14:01:27.019861', '/myapp/admin/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2023-06-03 14:01:27.392176', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2023-06-03 14:01:27.399820', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2023-06-03 14:01:27.413500', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2023-06-03 14:01:27.939088', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2023-06-03 14:01:27.946938', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2023-06-03 14:01:27.955603', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2023-06-03 14:01:28.643002', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2023-06-03 14:01:28.644705', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2023-06-03 14:01:28.693084', '/myapp/admin/tag/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2023-06-03 14:01:30.643648', '/myapp/admin/order/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2023-06-03 14:02:42.224006', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2023-06-03 14:02:42.227006', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2023-06-03 14:02:42.260526', '/myapp/admin/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2023-06-03 14:02:43.227152', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2023-06-03 14:02:44.075823', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2023-06-03 14:02:44.077842', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2023-06-03 14:02:44.119253', '/myapp/admin/tag/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2023-06-03 14:02:46.572810', '/myapp/admin/overview/count', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2023-06-03 14:02:50.396132', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2023-06-03 14:02:50.399110', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2023-06-03 14:02:50.410133', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2023-06-03 14:03:06.424205', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (548, '127.0.0.1', '2023-06-03 14:03:06.427221', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (549, '127.0.0.1', '2023-06-03 14:03:06.437243', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (550, '127.0.0.1', '2023-06-03 14:03:08.431899', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (551, '127.0.0.1', '2023-06-03 14:03:09.040204', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (552, '127.0.0.1', '2023-06-03 14:03:09.042790', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (553, '127.0.0.1', '2023-06-03 14:03:09.051015', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (554, '127.0.0.1', '2023-06-03 14:03:09.554506', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (555, '127.0.0.1', '2023-06-03 14:03:11.630402', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (556, '127.0.0.1', '2023-06-03 14:03:11.641410', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (557, '127.0.0.1', '2023-06-03 14:03:11.646402', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (558, '127.0.0.1', '2023-06-03 14:03:17.174599', '/myapp/admin/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (559, '127.0.0.1', '2023-06-03 14:03:17.277408', '/myapp/admin/thing/list', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (560, '127.0.0.1', '2023-06-03 14:03:19.099634', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (561, '127.0.0.1', '2023-06-03 14:03:20.066063', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (562, '127.0.0.1', '2023-06-03 14:03:20.923359', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (563, '127.0.0.1', '2023-06-03 14:03:21.351922', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (564, '127.0.0.1', '2023-06-03 14:03:21.371525', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (565, '127.0.0.1', '2023-06-03 14:03:21.403707', '/myapp/admin/tag/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (566, '127.0.0.1', '2023-06-03 14:03:41.780341', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (567, '127.0.0.1', '2023-06-03 14:03:42.529975', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (568, '127.0.0.1', '2023-06-03 14:03:43.450976', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (569, '127.0.0.1', '2023-06-03 14:03:44.124152', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (570, '127.0.0.1', '2023-06-03 14:03:44.128768', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (571, '127.0.0.1', '2023-06-03 14:03:44.157614', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (572, '127.0.0.1', '2023-06-03 14:03:46.876393', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (573, '127.0.0.1', '2023-06-03 14:03:47.415781', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (574, '127.0.0.1', '2023-06-03 14:03:47.896292', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (575, '127.0.0.1', '2023-06-03 14:03:47.898306', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (576, '127.0.0.1', '2023-06-03 14:03:47.916743', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (577, '127.0.0.1', '2023-06-03 14:03:47.944128', '/upload/company/1685770768426.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (578, '127.0.0.1', '2023-06-03 14:03:48.655652', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (579, '127.0.0.1', '2023-06-03 14:03:48.656661', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (580, '127.0.0.1', '2023-06-03 14:03:48.659660', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (581, '127.0.0.1', '2023-06-03 14:03:48.674662', '/upload/resume/1685772067199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (582, '127.0.0.1', '2023-06-03 14:03:49.979026', '/myapp/admin/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (583, '127.0.0.1', '2023-06-03 14:03:50.924148', '/myapp/admin/user/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (584, '127.0.0.1', '2023-06-03 14:03:51.837521', '/myapp/admin/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (585, '127.0.0.1', '2023-06-03 14:03:52.333017', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (586, '127.0.0.1', '2023-06-03 14:03:52.335381', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (587, '127.0.0.1', '2023-06-03 14:03:52.338953', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (588, '127.0.0.1', '2023-06-03 14:03:55.594765', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (589, '127.0.0.1', '2023-06-03 14:03:55.624850', '/myapp/admin/classification/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (590, '127.0.0.1', '2023-06-03 14:03:55.626867', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (591, '127.0.0.1', '2023-06-03 14:03:56.585809', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (592, '127.0.0.1', '2023-06-03 14:10:27.011702', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (593, '127.0.0.1', '2023-06-03 14:10:27.472663', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (594, '127.0.0.1', '2023-06-03 14:10:27.474649', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (595, '127.0.0.1', '2023-06-03 14:10:27.495415', '/myapp/admin/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (596, '127.0.0.1', '2023-06-03 14:10:30.836451', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (597, '127.0.0.1', '2023-06-03 14:10:34.838224', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (598, '127.0.0.1', '2023-06-03 14:10:37.474539', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (599, '127.0.0.1', '2023-06-03 14:10:37.477527', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (600, '127.0.0.1', '2023-06-03 14:10:37.485535', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (601, '127.0.0.1', '2023-06-03 14:10:37.515697', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (602, '127.0.0.1', '2023-06-03 14:10:39.062220', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (603, '127.0.0.1', '2023-06-03 14:10:39.065219', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (604, '127.0.0.1', '2023-06-03 14:10:39.069229', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (605, '127.0.0.1', '2023-06-03 14:10:39.085235', '/upload/resume/1685772067199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (606, '127.0.0.1', '2023-06-03 14:10:42.198477', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (607, '127.0.0.1', '2023-06-03 14:10:42.203633', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (608, '127.0.0.1', '2023-06-03 14:10:42.207172', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (609, '127.0.0.1', '2023-06-03 14:10:44.092046', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (610, '127.0.0.1', '2023-06-03 14:10:44.094603', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (611, '127.0.0.1', '2023-06-03 14:10:44.097756', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (612, '127.0.0.1', '2023-06-03 14:10:48.444348', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (613, '127.0.0.1', '2023-06-03 14:10:48.447172', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (614, '127.0.0.1', '2023-06-03 14:10:48.449743', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (615, '127.0.0.1', '2023-06-03 14:10:52.395935', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (616, '127.0.0.1', '2023-06-03 14:10:52.407363', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (617, '127.0.0.1', '2023-06-03 14:10:52.436756', '/myapp/admin/tag/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (618, '127.0.0.1', '2023-06-03 14:10:58.478202', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (619, '127.0.0.1', '2023-06-03 14:10:58.483213', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (620, '127.0.0.1', '2023-06-03 14:10:58.487209', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (621, '127.0.0.1', '2023-06-03 14:10:58.914612', '/myapp/admin/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (622, '127.0.0.1', '2023-06-03 14:11:01.829340', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (623, '127.0.0.1', '2023-06-03 14:11:01.835331', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (624, '127.0.0.1', '2023-06-03 14:11:01.840331', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (625, '127.0.0.1', '2023-06-03 14:11:02.237370', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (626, '127.0.0.1', '2023-06-03 14:11:02.239503', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (627, '127.0.0.1', '2023-06-03 14:11:02.245703', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (628, '127.0.0.1', '2023-06-03 14:11:03.175878', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (629, '127.0.0.1', '2023-06-03 14:11:03.179137', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (630, '127.0.0.1', '2023-06-03 14:11:03.222513', '/myapp/admin/classification/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (631, '127.0.0.1', '2023-06-03 14:11:03.567797', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (632, '127.0.0.1', '2023-06-03 14:12:52.466029', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (633, '127.0.0.1', '2023-06-03 14:12:52.467521', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (634, '127.0.0.1', '2023-06-03 14:12:52.500315', '/myapp/admin/classification/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (635, '127.0.0.1', '2023-06-03 14:12:54.314106', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (636, '127.0.0.1', '2023-06-03 14:13:24.038817', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (637, '127.0.0.1', '2023-06-03 14:13:24.039818', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (638, '127.0.0.1', '2023-06-03 14:13:24.060700', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (639, '127.0.0.1', '2023-06-03 14:13:26.617394', '/myapp/admin/company/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (640, '127.0.0.1', '2023-06-03 14:13:26.619398', '/myapp/admin/company/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (641, '127.0.0.1', '2023-06-03 14:13:26.622398', '/myapp/admin/company/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (642, '127.0.0.1', '2023-06-03 14:13:26.664795', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (643, '127.0.0.1', '2023-06-03 14:13:52.074557', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (644, '127.0.0.1', '2023-06-03 14:13:52.081562', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (645, '127.0.0.1', '2023-06-03 14:13:52.079558', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (646, '127.0.0.1', '2023-06-03 14:13:52.124659', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (647, '127.0.0.1', '2023-06-03 14:14:08.574769', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (648, '127.0.0.1', '2023-06-03 14:14:08.577769', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (649, '127.0.0.1', '2023-06-03 14:14:08.579769', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (650, '127.0.0.1', '2023-06-03 14:14:08.594779', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (651, '127.0.0.1', '2023-06-03 14:14:10.573957', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (652, '127.0.0.1', '2023-06-03 14:14:10.574957', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (653, '127.0.0.1', '2023-06-03 14:14:10.576971', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (654, '127.0.0.1', '2023-06-03 14:14:10.597957', '/upload/resume/1685772067199.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (655, '127.0.0.1', '2023-06-03 14:14:12.366941', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (656, '127.0.0.1', '2023-06-03 14:14:12.367447', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (657, '127.0.0.1', '2023-06-03 14:14:12.370558', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (658, '127.0.0.1', '2023-06-03 14:14:12.403012', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (659, '127.0.0.1', '2023-06-03 14:14:13.451921', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (660, '127.0.0.1', '2023-06-03 14:14:13.456650', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (661, '127.0.0.1', '2023-06-03 14:14:13.459184', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (662, '127.0.0.1', '2023-06-03 14:14:13.498346', '/upload/resume/1685772067199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (663, '127.0.0.1', '2023-06-03 14:14:14.121692', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (664, '127.0.0.1', '2023-06-03 14:14:14.125701', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (665, '127.0.0.1', '2023-06-03 14:14:14.141693', '/upload/company/1685770768426.jpeg', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (666, '127.0.0.1', '2023-06-03 14:14:14.142691', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (667, '127.0.0.1', '2023-06-03 14:14:14.738951', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (668, '127.0.0.1', '2023-06-03 14:14:15.848571', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (669, '127.0.0.1', '2023-06-03 14:14:15.851560', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (670, '127.0.0.1', '2023-06-03 14:14:15.886075', '/myapp/admin/tag/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (671, '127.0.0.1', '2023-06-03 14:14:20.135308', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (672, '127.0.0.1', '2023-06-03 14:14:27.279297', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (673, '127.0.0.1', '2023-06-03 14:14:27.295787', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (674, '127.0.0.1', '2023-06-03 14:14:27.313348', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (675, '127.0.0.1', '2023-06-03 14:14:28.296184', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (676, '127.0.0.1', '2023-06-03 14:14:28.808485', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (677, '127.0.0.1', '2023-06-03 14:14:29.531116', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (678, '127.0.0.1', '2023-06-03 14:14:29.532690', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (679, '127.0.0.1', '2023-06-03 14:14:29.541068', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (680, '127.0.0.1', '2023-06-03 14:14:29.585550', '/upload/company/1685770768426.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (681, '127.0.0.1', '2023-06-03 14:14:30.519445', '/myapp/admin/resume/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (682, '127.0.0.1', '2023-06-03 14:14:30.524710', '/myapp/admin/resume/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (683, '127.0.0.1', '2023-06-03 14:14:30.537811', '/myapp/admin/resume/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (684, '127.0.0.1', '2023-06-03 14:14:30.544813', '/upload/resume/1685772067199.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (685, '127.0.0.1', '2023-06-03 14:14:31.492738', '/myapp/admin/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (686, '127.0.0.1', '2023-06-03 14:14:32.337195', '/myapp/admin/user/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (687, '127.0.0.1', '2023-06-03 14:14:34.441606', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (688, '127.0.0.1', '2023-06-03 14:14:34.710707', '/myapp/admin/overview/count', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (689, '127.0.0.1', '2023-06-03 14:14:37.129774', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1064');
INSERT INTO `b_op_log` VALUES (690, '127.0.0.1', '2023-06-03 14:14:37.753964', '/myapp/admin/user/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (691, '127.0.0.1', '2023-06-03 14:14:40.023749', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1020');
INSERT INTO `b_op_log` VALUES (692, '127.0.0.1', '2023-06-03 14:14:40.831408', '/myapp/admin/overview/count', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (693, '127.0.0.1', '2023-06-03 14:14:43.276843', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (694, '127.0.0.1', '2023-06-03 14:14:43.280112', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (695, '127.0.0.1', '2023-06-03 14:14:43.286749', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (696, '127.0.0.1', '2023-06-03 14:14:43.322826', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (697, '127.0.0.1', '2023-06-03 14:14:44.491632', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (698, '127.0.0.1', '2023-06-03 14:14:45.224411', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (699, '127.0.0.1', '2023-06-03 14:14:46.755489', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (700, '127.0.0.1', '2023-06-03 14:14:47.649837', '/myapp/admin/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (701, '127.0.0.1', '2023-06-03 14:14:48.163601', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (702, '127.0.0.1', '2023-06-03 14:14:50.595179', '/myapp/admin/ad/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (703, '127.0.0.1', '2023-06-03 14:14:51.464498', '/myapp/admin/notice/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (704, '127.0.0.1', '2023-06-03 14:14:53.087042', '/myapp/admin/ad/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (705, '127.0.0.1', '2023-06-03 14:15:00.334990', '/myapp/admin/ad/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (706, '127.0.0.1', '2023-06-03 14:15:00.383289', '/myapp/admin/ad/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (707, '127.0.0.1', '2023-06-03 14:15:01.659208', '/myapp/admin/notice/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (708, '127.0.0.1', '2023-06-03 14:15:03.083863', '/myapp/admin/overview/count', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (709, '127.0.0.1', '2023-06-03 14:15:47.056346', '/myapp/admin/overview/count', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (710, '127.0.0.1', '2023-06-03 14:16:12.584275', '/myapp/admin/overview/count', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (711, '127.0.0.1', '2023-06-03 14:16:13.111725', '/myapp/admin/overview/count', 'GET', NULL, '522');
INSERT INTO `b_op_log` VALUES (712, '127.0.0.1', '2023-06-03 14:17:47.983782', '/myapp/admin/overview/count', 'GET', NULL, '169');
INSERT INTO `b_op_log` VALUES (713, '127.0.0.1', '2023-06-03 14:17:48.396931', '/myapp/admin/overview/count', 'GET', NULL, '564');
INSERT INTO `b_op_log` VALUES (714, '127.0.0.1', '2023-06-03 14:17:58.137966', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1015');
INSERT INTO `b_op_log` VALUES (715, '127.0.0.1', '2023-06-03 14:17:58.686391', '/myapp/admin/overview/count', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (716, '127.0.0.1', '2023-06-03 14:18:12.768333', '/myapp/admin/overview/count', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (717, '127.0.0.1', '2023-06-03 14:18:13.521102', '/myapp/admin/overview/count', 'GET', NULL, '765');
INSERT INTO `b_op_log` VALUES (718, '127.0.0.1', '2023-06-03 14:18:34.920912', '/myapp/admin/overview/count', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (719, '127.0.0.1', '2023-06-03 14:18:35.070853', '/myapp/admin/overview/count', 'GET', NULL, '141');
INSERT INTO `b_op_log` VALUES (720, '127.0.0.1', '2023-06-03 14:19:00.815399', '/myapp/admin/overview/count', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (721, '127.0.0.1', '2023-06-03 14:19:04.653462', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (722, '127.0.0.1', '2023-06-03 14:19:05.262127', '/myapp/admin/overview/count', 'GET', NULL, '627');
INSERT INTO `b_op_log` VALUES (723, '127.0.0.1', '2023-06-03 14:19:12.616862', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (724, '127.0.0.1', '2023-06-03 14:19:23.745965', '/myapp/admin/classification/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (725, '127.0.0.1', '2023-06-03 14:19:23.793546', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (726, '127.0.0.1', '2023-06-03 14:19:25.267113', '/myapp/admin/overview/count', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (727, '127.0.0.1', '2023-06-03 14:19:27.863249', '/myapp/admin/overview/count', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (728, '127.0.0.1', '2023-06-03 14:19:28.410074', '/myapp/admin/overview/count', 'GET', NULL, '551');
INSERT INTO `b_op_log` VALUES (729, '127.0.0.1', '2023-06-03 14:19:35.032491', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (730, '127.0.0.1', '2023-06-03 14:19:35.052071', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (731, '127.0.0.1', '2023-06-03 14:19:35.071771', '/myapp/admin/tag/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (732, '127.0.0.1', '2023-06-03 14:19:38.856575', '/myapp/admin/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (733, '127.0.0.1', '2023-06-03 14:19:38.912494', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (734, '127.0.0.1', '2023-06-03 14:19:40.227052', '/myapp/admin/overview/count', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (735, '127.0.0.1', '2023-06-03 14:19:49.511417', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1019');
INSERT INTO `b_op_log` VALUES (736, '127.0.0.1', '2023-06-03 14:19:57.057535', '/myapp/admin/overview/count', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (737, '127.0.0.1', '2023-06-03 14:20:01.290147', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (738, '127.0.0.1', '2023-06-03 14:20:01.969052', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (739, '127.0.0.1', '2023-06-03 14:20:01.971016', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (740, '127.0.0.1', '2023-06-03 14:20:01.981522', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (741, '127.0.0.1', '2023-06-03 14:20:02.028718', '/upload/company/1685770768426.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (742, '127.0.0.1', '2023-06-03 14:20:02.675423', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (743, '127.0.0.1', '2023-06-03 14:20:02.678765', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (744, '127.0.0.1', '2023-06-03 14:20:02.681988', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (745, '127.0.0.1', '2023-06-03 14:20:02.722436', '/upload/resume/1685772067199.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (746, '127.0.0.1', '2023-06-03 14:20:03.444310', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (747, '127.0.0.1', '2023-06-03 14:20:04.350753', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (748, '127.0.0.1', '2023-06-03 14:20:04.359753', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (749, '127.0.0.1', '2023-06-03 14:20:04.378783', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (750, '127.0.0.1', '2023-06-03 14:20:05.779486', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (751, '127.0.0.1', '2023-06-03 14:20:05.781710', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (752, '127.0.0.1', '2023-06-03 14:20:05.804976', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (753, '127.0.0.1', '2023-06-03 14:20:06.565228', '/myapp/admin/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (754, '127.0.0.1', '2023-06-03 14:20:54.321145', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (755, '127.0.0.1', '2023-06-03 14:20:54.327276', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (756, '127.0.0.1', '2023-06-03 14:20:54.330411', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (757, '127.0.0.1', '2023-06-03 14:21:08.733935', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (758, '127.0.0.1', '2023-06-03 14:21:08.750668', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (759, '127.0.0.1', '2023-06-03 14:21:08.780033', '/myapp/admin/tag/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (760, '127.0.0.1', '2023-06-03 14:21:10.240138', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (761, '127.0.0.1', '2023-06-03 14:21:11.070495', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (762, '127.0.0.1', '2023-06-03 14:21:11.072770', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (763, '127.0.0.1', '2023-06-03 14:21:11.111158', '/myapp/admin/classification/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (764, '127.0.0.1', '2023-06-03 14:21:12.148330', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (765, '127.0.0.1', '2023-06-03 14:21:12.174918', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (766, '127.0.0.1', '2023-06-03 14:21:12.184911', '/myapp/admin/tag/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (767, '127.0.0.1', '2023-06-03 14:21:12.853970', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (768, '127.0.0.1', '2023-06-03 14:21:12.859129', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (769, '127.0.0.1', '2023-06-03 14:21:12.886880', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (770, '127.0.0.1', '2023-06-03 14:21:13.727666', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (771, '127.0.0.1', '2023-06-03 14:21:15.937873', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1017');
INSERT INTO `b_op_log` VALUES (772, '127.0.0.1', '2023-06-03 14:21:35.668174', '/myapp/admin/adminLogin', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (773, '127.0.0.1', '2023-06-03 14:21:35.812723', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (774, '127.0.0.1', '2023-06-03 14:21:35.819510', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (775, '127.0.0.1', '2023-06-03 14:21:35.851294', '/myapp/admin/classification/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (776, '127.0.0.1', '2023-06-03 14:21:40.035042', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (777, '127.0.0.1', '2023-06-03 14:21:40.641512', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (778, '127.0.0.1', '2023-06-03 14:21:40.658020', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (779, '127.0.0.1', '2023-06-03 14:21:40.675598', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (780, '127.0.0.1', '2023-06-03 14:21:42.374259', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (781, '127.0.0.1', '2023-06-03 14:21:42.377341', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (782, '127.0.0.1', '2023-06-03 14:21:42.377341', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (783, '127.0.0.1', '2023-06-03 14:21:43.010913', '/myapp/admin/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (784, '127.0.0.1', '2023-06-03 14:21:44.734883', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (785, '127.0.0.1', '2023-06-03 14:21:44.738302', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (786, '127.0.0.1', '2023-06-03 14:21:44.744409', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (787, '127.0.0.1', '2023-06-03 14:21:45.252189', '/myapp/admin/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (788, '127.0.0.1', '2023-06-03 14:22:18.513616', '/myapp/admin/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (789, '127.0.0.1', '2023-06-03 14:22:19.636742', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (790, '127.0.0.1', '2023-06-03 14:22:19.660683', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (791, '127.0.0.1', '2023-06-03 14:22:19.663683', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (792, '127.0.0.1', '2023-06-03 14:22:20.157811', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (793, '127.0.0.1', '2023-06-03 14:22:20.694704', '/myapp/admin/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (794, '127.0.0.1', '2023-06-03 14:22:21.831105', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (795, '127.0.0.1', '2023-06-03 14:22:21.835269', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (796, '127.0.0.1', '2023-06-03 14:22:21.837291', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (797, '127.0.0.1', '2023-06-03 14:22:21.885351', '/upload/resume/1685772067199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (798, '127.0.0.1', '2023-06-03 14:22:22.901397', '/myapp/admin/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (799, '127.0.0.1', '2023-06-03 14:22:24.429896', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (800, '127.0.0.1', '2023-06-03 14:22:24.430898', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (801, '127.0.0.1', '2023-06-03 14:22:24.459337', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (802, '127.0.0.1', '2023-06-03 14:22:24.852411', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (803, '127.0.0.1', '2023-06-03 14:22:25.412082', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (804, '127.0.0.1', '2023-06-03 14:22:27.114547', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (805, '127.0.0.1', '2023-06-03 14:22:27.118096', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (806, '127.0.0.1', '2023-06-03 14:22:27.130038', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (807, '127.0.0.1', '2023-06-03 14:25:54.640849', '/myapp/admin/user/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (808, '127.0.0.1', '2023-06-03 14:26:15.490376', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (809, '127.0.0.1', '2023-06-03 14:26:15.493375', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (810, '127.0.0.1', '2023-06-03 14:26:15.496369', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (811, '127.0.0.1', '2023-06-03 14:26:15.516376', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (812, '127.0.0.1', '2023-06-03 14:27:19.432514', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (813, '127.0.0.1', '2023-06-03 14:27:20.035487', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (814, '127.0.0.1', '2023-06-03 14:27:20.612404', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (815, '127.0.0.1', '2023-06-03 14:27:21.271637', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (816, '127.0.0.1', '2023-06-03 14:27:21.940069', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (817, '127.0.0.1', '2023-06-03 14:27:23.797478', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (818, '127.0.0.1', '2023-06-03 14:27:24.222162', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (819, '127.0.0.1', '2023-06-03 14:27:25.121425', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (820, '127.0.0.1', '2023-06-03 14:27:25.578625', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (821, '127.0.0.1', '2023-06-03 14:27:29.607000', '/myapp/index/thing/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (822, '127.0.0.1', '2023-06-03 14:27:29.621012', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (823, '127.0.0.1', '2023-06-03 14:27:29.628545', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (824, '127.0.0.1', '2023-06-03 14:27:29.638552', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (825, '127.0.0.1', '2023-06-03 14:46:08.759100', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (826, '127.0.0.1', '2023-06-03 14:46:09.606957', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (827, '127.0.0.1', '2023-06-03 14:46:09.984869', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (828, '127.0.0.1', '2023-06-03 14:50:45.167367', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (829, '127.0.0.1', '2023-06-03 14:50:45.169378', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (830, '127.0.0.1', '2023-06-03 14:50:45.177078', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (831, '127.0.0.1', '2023-06-03 14:50:45.191952', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (832, '127.0.0.1', '2023-06-03 14:55:31.186541', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (833, '127.0.0.1', '2023-06-03 14:55:31.189532', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (834, '127.0.0.1', '2023-06-03 14:55:31.200062', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (835, '127.0.0.1', '2023-06-03 14:55:33.967381', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (836, '127.0.0.1', '2023-06-03 14:55:33.969959', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (837, '127.0.0.1', '2023-06-03 14:55:33.982636', '/myapp/index/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (838, '127.0.0.1', '2023-06-03 14:55:33.985901', '/myapp/index/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (839, '127.0.0.1', '2023-06-03 14:55:34.798485', '/myapp/index/thing/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (840, '127.0.0.1', '2023-06-03 14:55:34.815488', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (841, '127.0.0.1', '2023-06-03 14:55:34.830569', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (842, '127.0.0.1', '2023-06-03 14:55:34.836659', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (843, '127.0.0.1', '2023-06-03 14:55:37.366699', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (844, '127.0.0.1', '2023-06-03 14:55:37.378723', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (845, '127.0.0.1', '2023-06-03 14:55:37.395262', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (846, '127.0.0.1', '2023-06-03 14:55:37.397255', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (847, '127.0.0.1', '2023-06-03 14:55:54.879360', '/myapp/admin/thing/create', 'POST', NULL, '61');
INSERT INTO `b_op_log` VALUES (848, '127.0.0.1', '2023-06-03 14:55:55.848514', '/myapp/admin/thing/create', 'POST', NULL, '65');
INSERT INTO `b_op_log` VALUES (849, '127.0.0.1', '2023-06-03 14:55:56.560910', '/myapp/admin/thing/create', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (850, '127.0.0.1', '2023-06-03 14:55:59.403827', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (851, '127.0.0.1', '2023-06-03 14:56:00.416239', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (852, '127.0.0.1', '2023-06-03 14:56:24.393521', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (853, '127.0.0.1', '2023-06-03 14:56:25.101492', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (854, '127.0.0.1', '2023-06-03 14:56:25.666024', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (855, '127.0.0.1', '2023-06-03 14:56:26.078853', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (856, '127.0.0.1', '2023-06-03 14:56:26.883427', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (857, '127.0.0.1', '2023-06-03 14:56:27.879374', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (858, '127.0.0.1', '2023-06-03 14:56:28.602425', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (859, '127.0.0.1', '2023-06-03 14:56:29.685491', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (860, '127.0.0.1', '2023-06-03 14:56:31.239042', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (861, '127.0.0.1', '2023-06-03 14:56:31.676229', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (862, '127.0.0.1', '2023-06-03 14:56:31.999569', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (863, '127.0.0.1', '2023-06-03 14:56:32.598881', '/myapp/index/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (864, '127.0.0.1', '2023-06-03 14:56:33.001666', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (865, '127.0.0.1', '2023-06-03 14:56:33.674097', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (866, '127.0.0.1', '2023-06-03 14:56:34.749916', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (867, '127.0.0.1', '2023-06-03 14:56:42.622824', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (868, '127.0.0.1', '2023-06-03 14:56:42.651000', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (869, '127.0.0.1', '2023-06-03 14:56:42.663600', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (870, '127.0.0.1', '2023-06-03 14:56:42.668562', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (871, '127.0.0.1', '2023-06-03 15:00:44.152253', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (872, '127.0.0.1', '2023-06-03 15:00:44.158665', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (873, '127.0.0.1', '2023-06-03 15:00:44.165328', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (874, '127.0.0.1', '2023-06-03 15:00:44.186856', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (875, '127.0.0.1', '2023-06-03 15:00:46.782798', '/myapp/index/thing/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (876, '127.0.0.1', '2023-06-03 15:00:46.795805', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (877, '127.0.0.1', '2023-06-03 15:00:46.828500', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (878, '127.0.0.1', '2023-06-03 15:00:46.831565', '/myapp/index/thing/detail', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (879, '127.0.0.1', '2023-06-03 15:04:06.396362', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (880, '127.0.0.1', '2023-06-03 15:04:06.397362', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (881, '127.0.0.1', '2023-06-03 15:04:06.398361', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (882, '127.0.0.1', '2023-06-03 15:04:06.407363', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (883, '127.0.0.1', '2023-06-03 15:04:12.079236', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (884, '127.0.0.1', '2023-06-03 15:04:12.093343', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (885, '127.0.0.1', '2023-06-03 15:04:12.096347', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (886, '127.0.0.1', '2023-06-03 15:04:12.104356', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (887, '127.0.0.1', '2023-06-03 15:04:13.800799', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (888, '127.0.0.1', '2023-06-03 15:05:21.307252', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (889, '127.0.0.1', '2023-06-03 15:05:21.306263', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (890, '127.0.0.1', '2023-06-03 15:05:21.308252', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (891, '127.0.0.1', '2023-06-03 15:05:21.318255', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (892, '127.0.0.1', '2023-06-03 15:05:22.727987', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (893, '127.0.0.1', '2023-06-03 15:06:13.656960', '/myapp/admin/thing/list', 'GET', NULL, '245');
INSERT INTO `b_op_log` VALUES (894, '127.0.0.1', '2023-06-03 15:06:47.075775', '/myapp/admin/thing/list', 'GET', NULL, '98');
INSERT INTO `b_op_log` VALUES (895, '127.0.0.1', '2023-06-03 15:07:20.227402', '/myapp/admin/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (896, '127.0.0.1', '2023-06-03 15:08:34.585421', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (897, '127.0.0.1', '2023-06-03 15:08:34.586464', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (898, '127.0.0.1', '2023-06-03 15:08:34.587821', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (899, '127.0.0.1', '2023-06-03 15:08:34.595635', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (900, '127.0.0.1', '2023-06-03 15:08:42.304937', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (901, '127.0.0.1', '2023-06-03 15:08:55.623860', '/myapp/admin/thing/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (902, '127.0.0.1', '2023-06-03 15:10:57.207174', '/myapp/index/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (903, '127.0.0.1', '2023-06-03 15:12:38.309203', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (904, '127.0.0.1', '2023-06-03 15:12:38.315251', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (905, '127.0.0.1', '2023-06-03 15:12:38.323213', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (906, '127.0.0.1', '2023-06-03 15:12:38.325287', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (907, '127.0.0.1', '2023-06-03 15:12:44.016253', '/myapp/index/address/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (908, '127.0.0.1', '2023-06-03 15:12:44.020689', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (909, '127.0.0.1', '2023-06-03 15:12:45.595636', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (910, '127.0.0.1', '2023-06-03 15:12:45.597637', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (911, '127.0.0.1', '2023-06-03 15:12:45.618361', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (912, '127.0.0.1', '2023-06-03 15:12:45.633580', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (913, '127.0.0.1', '2023-06-03 15:16:18.184031', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (914, '127.0.0.1', '2023-06-03 15:16:18.202012', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (915, '127.0.0.1', '2023-06-03 15:16:18.203012', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (916, '127.0.0.1', '2023-06-03 15:16:18.208792', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (917, '127.0.0.1', '2023-06-03 15:18:03.475539', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (918, '127.0.0.1', '2023-06-03 15:18:03.487540', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (919, '127.0.0.1', '2023-06-03 15:18:03.502539', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (920, '127.0.0.1', '2023-06-03 15:18:03.508547', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (921, '127.0.0.1', '2023-06-03 15:18:34.326981', '/myapp/index/thing/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (922, '127.0.0.1', '2023-06-03 15:18:34.336034', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (923, '127.0.0.1', '2023-06-03 15:18:34.347984', '/myapp/index/thing/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (924, '127.0.0.1', '2023-06-03 15:18:34.368115', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (925, '127.0.0.1', '2023-06-03 15:18:44.781576', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (926, '127.0.0.1', '2023-06-03 15:18:44.785114', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (927, '127.0.0.1', '2023-06-03 15:18:44.806720', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (928, '127.0.0.1', '2023-06-03 15:18:44.811996', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (929, '127.0.0.1', '2023-06-03 15:19:01.643778', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (930, '127.0.0.1', '2023-06-03 15:19:01.647029', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (931, '127.0.0.1', '2023-06-03 15:19:01.670847', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (932, '127.0.0.1', '2023-06-03 15:19:01.677113', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (933, '127.0.0.1', '2023-06-03 15:19:07.007379', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (934, '127.0.0.1', '2023-06-03 15:19:07.013682', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (935, '127.0.0.1', '2023-06-03 15:19:07.032150', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (936, '127.0.0.1', '2023-06-03 15:19:07.039261', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (937, '127.0.0.1', '2023-06-03 15:19:09.539586', '/myapp/index/comment/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (938, '127.0.0.1', '2023-06-03 15:19:56.224159', '/myapp/index/comment/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (939, '127.0.0.1', '2023-06-03 15:20:36.761461', '/myapp/index/notice/list_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (940, '127.0.0.1', '2023-06-03 15:20:36.766724', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (941, '127.0.0.1', '2023-06-03 15:20:36.770536', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (942, '127.0.0.1', '2023-06-03 15:20:36.798324', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (943, '127.0.0.1', '2023-06-03 15:20:42.200090', '/myapp/index/user/login', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (944, '127.0.0.1', '2023-06-03 15:20:42.288834', '/myapp/index/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (945, '127.0.0.1', '2023-06-03 15:20:42.293906', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (946, '127.0.0.1', '2023-06-03 15:20:42.297565', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (947, '127.0.0.1', '2023-06-03 15:20:42.321507', '/myapp/index/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (948, '127.0.0.1', '2023-06-03 15:20:47.551331', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (949, '127.0.0.1', '2023-06-03 15:20:47.560506', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (950, '127.0.0.1', '2023-06-03 15:20:47.586389', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (951, '127.0.0.1', '2023-06-03 15:20:47.594521', '/myapp/index/comment/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (952, '127.0.0.1', '2023-06-03 15:20:57.598470', '/myapp/index/comment/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (953, '127.0.0.1', '2023-06-03 15:20:57.657918', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (954, '127.0.0.1', '2023-06-03 15:21:01.030785', '/myapp/index/comment/like', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (955, '127.0.0.1', '2023-06-03 15:21:01.071054', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (956, '127.0.0.1', '2023-06-03 15:21:01.297328', '/myapp/index/comment/like', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (957, '127.0.0.1', '2023-06-03 15:21:01.336240', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (958, '127.0.0.1', '2023-06-03 15:21:05.133357', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (959, '127.0.0.1', '2023-06-03 15:21:05.820380', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (960, '127.0.0.1', '2023-06-03 15:21:08.074353', '/myapp/index/thing/addCollectUser', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (961, '127.0.0.1', '2023-06-03 15:21:08.139994', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (962, '127.0.0.1', '2023-06-03 15:21:08.657827', '/myapp/index/thing/addWishUser', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (963, '127.0.0.1', '2023-06-03 15:21:08.716455', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (964, '127.0.0.1', '2023-06-03 15:21:38.079147', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (965, '127.0.0.1', '2023-06-03 15:21:38.104659', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (966, '127.0.0.1', '2023-06-03 15:21:38.108753', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (967, '127.0.0.1', '2023-06-03 15:21:38.136659', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (968, '127.0.0.1', '2023-06-03 15:21:42.521943', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (969, '127.0.0.1', '2023-06-03 15:21:42.533217', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (970, '127.0.0.1', '2023-06-03 15:21:42.543003', '/myapp/index/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (971, '127.0.0.1', '2023-06-03 15:21:42.545057', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (972, '127.0.0.1', '2023-06-03 15:24:05.834542', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (973, '127.0.0.1', '2023-06-03 15:24:05.851332', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (974, '127.0.0.1', '2023-06-03 15:24:05.857760', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (975, '127.0.0.1', '2023-06-03 15:24:05.866898', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (976, '127.0.0.1', '2023-06-03 15:24:11.519172', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (977, '127.0.0.1', '2023-06-03 15:24:11.530549', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (978, '127.0.0.1', '2023-06-03 15:24:11.537549', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (979, '127.0.0.1', '2023-06-03 15:24:11.545549', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (980, '127.0.0.1', '2023-06-03 15:27:41.319423', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (981, '127.0.0.1', '2023-06-03 15:27:41.338004', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (982, '127.0.0.1', '2023-06-03 15:27:41.347039', '/myapp/index/thing/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (983, '127.0.0.1', '2023-06-03 15:27:41.350093', '/myapp/index/thing/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (984, '127.0.0.1', '2023-06-03 15:27:44.028290', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (985, '127.0.0.1', '2023-06-03 15:27:44.032293', '/myapp/index/address/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (986, '127.0.0.1', '2023-06-03 15:27:45.342228', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (987, '127.0.0.1', '2023-06-03 15:27:45.360242', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (988, '127.0.0.1', '2023-06-03 15:27:45.370239', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (989, '127.0.0.1', '2023-06-03 15:27:45.382786', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (990, '127.0.0.1', '2023-06-03 15:27:48.354254', '/myapp/index/thing/addWishUser', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (991, '127.0.0.1', '2023-06-03 15:27:48.418976', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (992, '127.0.0.1', '2023-06-03 15:27:48.800255', '/myapp/index/thing/addCollectUser', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (993, '127.0.0.1', '2023-06-03 15:27:48.843576', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (994, '127.0.0.1', '2023-06-03 15:30:13.962077', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (995, '127.0.0.1', '2023-06-03 15:30:13.980596', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (996, '127.0.0.1', '2023-06-03 15:30:13.986600', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (997, '127.0.0.1', '2023-06-03 15:30:13.994599', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (998, '127.0.0.1', '2023-06-03 15:38:33.461096', '/myapp/index/resume/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (999, '127.0.0.1', '2023-06-03 15:38:40.278491', '/myapp/index/resume/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1000, '127.0.0.1', '2023-06-03 15:40:09.611211', '/myapp/index/resume/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1001, '127.0.0.1', '2023-06-03 15:41:18.661992', '/myapp/index/resume/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1002, '127.0.0.1', '2023-06-03 15:41:19.786255', '/myapp/index/resume/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1003, '127.0.0.1', '2023-06-03 15:41:20.621902', '/myapp/index/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1004, '127.0.0.1', '2023-06-03 15:41:25.541676', '/myapp/index/resume/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1005, '127.0.0.1', '2023-06-03 15:41:28.259635', '/myapp/index/resume/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1006, '127.0.0.1', '2023-06-03 15:41:31.023507', '/myapp/index/resume/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1007, '127.0.0.1', '2023-06-03 15:44:08.551260', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1008, '127.0.0.1', '2023-06-03 15:44:08.559302', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1009, '127.0.0.1', '2023-06-03 15:44:08.565298', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1010, '127.0.0.1', '2023-06-03 15:44:08.565298', '/myapp/index/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1011, '127.0.0.1', '2023-06-03 15:44:14.344828', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1012, '127.0.0.1', '2023-06-03 15:44:14.360831', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1013, '127.0.0.1', '2023-06-03 15:44:14.374343', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1014, '127.0.0.1', '2023-06-03 15:44:14.378350', '/myapp/index/thing/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1015, '127.0.0.1', '2023-06-03 15:44:15.473869', '/myapp/index/resume/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1016, '127.0.0.1', '2023-06-03 15:47:37.709845', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1017, '127.0.0.1', '2023-06-03 15:47:37.719793', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1018, '127.0.0.1', '2023-06-03 15:47:37.736791', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1019, '127.0.0.1', '2023-06-03 15:47:37.739794', '/myapp/index/comment/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1020, '127.0.0.1', '2023-06-03 15:47:40.335545', '/myapp/index/resume/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1021, '127.0.0.1', '2023-06-03 15:52:06.508758', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1022, '127.0.0.1', '2023-06-03 15:52:06.513936', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1023, '127.0.0.1', '2023-06-03 15:52:06.524618', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1024, '127.0.0.1', '2023-06-03 15:52:06.534640', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1025, '127.0.0.1', '2023-06-03 15:53:03.877769', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1026, '127.0.0.1', '2023-06-03 15:53:03.876760', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1027, '127.0.0.1', '2023-06-03 15:53:03.892990', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1028, '127.0.0.1', '2023-06-03 15:53:03.895144', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1029, '127.0.0.1', '2023-06-03 15:53:09.588386', '/myapp/index/resume/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1030, '127.0.0.1', '2023-06-03 15:53:09.639376', '/myapp/index/post/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1031, '127.0.0.1', '2023-06-03 15:54:17.180885', '/myapp/index/resume/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1032, '127.0.0.1', '2023-06-03 15:54:17.198887', '/myapp/index/post/create', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (1033, '127.0.0.1', '2023-06-03 15:55:33.689187', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1034, '127.0.0.1', '2023-06-03 15:55:33.699662', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1035, '127.0.0.1', '2023-06-03 15:55:33.708100', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1036, '127.0.0.1', '2023-06-03 15:55:33.710409', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1037, '127.0.0.1', '2023-06-03 15:55:35.546923', '/myapp/index/resume/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1038, '127.0.0.1', '2023-06-03 15:55:35.572433', '/myapp/index/post/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (1039, '127.0.0.1', '2023-06-03 15:55:59.192321', '/myapp/index/resume/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1040, '127.0.0.1', '2023-06-03 15:55:59.244488', '/myapp/index/post/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1041, '127.0.0.1', '2023-06-03 15:56:07.370414', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1042, '127.0.0.1', '2023-06-03 15:56:07.378419', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1043, '127.0.0.1', '2023-06-03 15:56:07.379419', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1044, '127.0.0.1', '2023-06-03 15:56:07.384418', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1045, '127.0.0.1', '2023-06-03 15:56:12.267504', '/myapp/index/thing/detail', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1046, '127.0.0.1', '2023-06-03 15:56:12.273423', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1047, '127.0.0.1', '2023-06-03 15:56:12.281442', '/myapp/index/thing/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1048, '127.0.0.1', '2023-06-03 15:56:12.282430', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1049, '127.0.0.1', '2023-06-03 15:57:22.261492', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1050, '127.0.0.1', '2023-06-03 15:57:22.264797', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1051, '127.0.0.1', '2023-06-03 15:57:22.275016', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1052, '127.0.0.1', '2023-06-03 15:57:22.284575', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1053, '127.0.0.1', '2023-06-03 15:57:22.863177', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1054, '127.0.0.1', '2023-06-03 15:57:22.868342', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1055, '127.0.0.1', '2023-06-03 15:57:22.875843', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1056, '127.0.0.1', '2023-06-03 15:57:22.905857', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1057, '127.0.0.1', '2023-06-03 15:57:35.968212', '/myapp/index/thing/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1058, '127.0.0.1', '2023-06-03 15:57:35.975089', '/myapp/index/thing/detail', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1059, '127.0.0.1', '2023-06-03 15:57:36.008901', '/myapp/index/thing/detail', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (1060, '127.0.0.1', '2023-06-03 15:57:36.014194', '/myapp/index/thing/detail', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (1061, '127.0.0.1', '2023-06-03 15:57:39.931826', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1062, '127.0.0.1', '2023-06-03 15:57:39.935097', '/myapp/index/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1063, '127.0.0.1', '2023-06-03 15:57:39.961717', '/myapp/index/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1064, '127.0.0.1', '2023-06-03 15:57:39.964710', '/myapp/index/tag/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1065, '127.0.0.1', '2023-06-03 15:57:46.902679', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1066, '127.0.0.1', '2023-06-03 15:57:46.909310', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1067, '127.0.0.1', '2023-06-03 15:57:46.935742', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1068, '127.0.0.1', '2023-06-03 15:57:46.942753', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1069, '127.0.0.1', '2023-06-03 15:57:56.597026', '/myapp/index/thing/addCollectUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1070, '127.0.0.1', '2023-06-03 15:57:56.673768', '/myapp/index/thing/detail', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1071, '127.0.0.1', '2023-06-03 15:57:56.978899', '/myapp/index/thing/addWishUser', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (1072, '127.0.0.1', '2023-06-03 15:57:57.035733', '/myapp/index/thing/detail', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1073, '127.0.0.1', '2023-06-03 15:57:59.365864', '/myapp/index/comment/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (1074, '127.0.0.1', '2023-06-03 15:57:59.383863', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1075, '127.0.0.1', '2023-06-03 15:58:03.909144', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1076, '127.0.0.1', '2023-06-03 15:58:03.939199', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1077, '127.0.0.1', '2023-06-03 15:58:03.940141', '/myapp/index/thing/getWishThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1078, '127.0.0.1', '2023-06-03 15:58:03.950138', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1079, '127.0.0.1', '2023-06-03 15:58:10.958653', '/myapp/index/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1080, '127.0.0.1', '2023-06-03 15:58:11.972798', '/myapp/index/order/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1081, '127.0.0.1', '2023-06-03 15:58:12.535121', '/myapp/index/order/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1082, '127.0.0.1', '2023-06-03 15:58:18.488637', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1083, '127.0.0.1', '2023-06-03 15:58:18.492612', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1084, '127.0.0.1', '2023-06-03 15:59:24.906985', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1085, '127.0.0.1', '2023-06-03 15:59:51.700316', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1086, '127.0.0.1', '2023-06-03 15:59:51.728863', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1087, '127.0.0.1', '2023-06-03 15:59:54.958493', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1088, '127.0.0.1', '2023-06-03 15:59:54.975397', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1089, '127.0.0.1', '2023-06-03 16:00:16.580726', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1090, '127.0.0.1', '2023-06-03 16:00:58.118168', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1091, '127.0.0.1', '2023-06-03 16:00:58.124169', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1092, '127.0.0.1', '2023-06-03 16:00:58.148173', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1093, '127.0.0.1', '2023-06-03 16:00:58.155179', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1094, '127.0.0.1', '2023-06-03 16:01:08.698291', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1095, '127.0.0.1', '2023-06-03 16:01:08.702582', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1096, '127.0.0.1', '2023-06-03 16:01:08.723667', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1097, '127.0.0.1', '2023-06-03 16:01:08.738041', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1098, '127.0.0.1', '2023-06-03 16:01:20.363076', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1099, '127.0.0.1', '2023-06-03 16:01:20.369084', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1100, '127.0.0.1', '2023-06-03 16:01:20.367086', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1101, '127.0.0.1', '2023-06-03 16:01:20.393215', '/myapp/index/thing/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (1102, '127.0.0.1', '2023-06-03 16:01:23.220331', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1103, '127.0.0.1', '2023-06-03 16:01:23.222332', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1104, '127.0.0.1', '2023-06-03 16:01:23.225336', '/myapp/index/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1105, '127.0.0.1', '2023-06-03 16:01:23.254335', '/myapp/index/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1106, '127.0.0.1', '2023-06-03 16:01:24.025150', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1107, '127.0.0.1', '2023-06-03 16:01:24.031174', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1108, '127.0.0.1', '2023-06-03 16:01:24.063655', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1109, '127.0.0.1', '2023-06-03 16:01:24.074532', '/myapp/index/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1110, '127.0.0.1', '2023-06-03 16:01:32.944777', '/myapp/index/user/login', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (1111, '127.0.0.1', '2023-06-03 16:01:33.044537', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1112, '127.0.0.1', '2023-06-03 16:01:33.049545', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1113, '127.0.0.1', '2023-06-03 16:01:33.054537', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1114, '127.0.0.1', '2023-06-03 16:01:33.081784', '/myapp/index/tag/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1115, '127.0.0.1', '2023-06-03 16:01:39.649239', '/myapp/index/user/info', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1116, '127.0.0.1', '2023-06-03 16:01:39.650233', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1117, '127.0.0.1', '2023-06-03 16:01:39.653225', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1118, '127.0.0.1', '2023-06-03 16:01:39.655225', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1119, '127.0.0.1', '2023-06-03 16:01:45.580026', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1120, '127.0.0.1', '2023-06-03 16:01:46.365523', '/myapp/index/thing/getWishThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1121, '127.0.0.1', '2023-06-03 16:01:48.056454', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1122, '127.0.0.1', '2023-06-03 16:01:48.892309', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1123, '127.0.0.1', '2023-06-03 16:03:44.320348', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1124, '127.0.0.1', '2023-06-03 16:03:44.339258', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1125, '127.0.0.1', '2023-06-03 16:03:44.344933', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1126, '127.0.0.1', '2023-06-03 16:03:58.353031', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1127, '127.0.0.1', '2023-06-03 16:04:01.680015', '/myapp/index/thing/getWishThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1128, '127.0.0.1', '2023-06-03 16:04:01.688742', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1129, '127.0.0.1', '2023-06-03 16:04:01.692463', '/myapp/index/thing/getWishThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1130, '127.0.0.1', '2023-06-03 16:04:01.704342', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1131, '127.0.0.1', '2023-06-03 16:04:51.658743', '/myapp/index/comment/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1132, '127.0.0.1', '2023-06-03 16:04:51.682144', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1133, '127.0.0.1', '2023-06-03 16:04:51.684630', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1134, '127.0.0.1', '2023-06-03 16:04:51.686830', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1135, '127.0.0.1', '2023-06-03 16:05:15.994279', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1136, '127.0.0.1', '2023-06-03 16:05:16.017638', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1137, '127.0.0.1', '2023-06-03 16:05:16.019638', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1138, '127.0.0.1', '2023-06-03 16:05:16.046306', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1139, '127.0.0.1', '2023-06-03 16:05:45.677002', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1140, '127.0.0.1', '2023-06-03 16:05:47.873383', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1141, '127.0.0.1', '2023-06-03 16:05:48.937685', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1142, '127.0.0.1', '2023-06-03 16:05:49.812543', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1143, '127.0.0.1', '2023-06-03 16:07:09.441263', '/myapp/index/thing/getWishThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1144, '127.0.0.1', '2023-06-03 16:07:10.866569', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1145, '127.0.0.1', '2023-06-03 16:07:11.213155', '/myapp/index/thing/getWishThingList', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1146, '127.0.0.1', '2023-06-03 16:08:02.928088', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1147, '127.0.0.1', '2023-06-03 16:08:03.421750', '/myapp/index/thing/getWishThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1148, '127.0.0.1', '2023-06-03 16:08:04.782308', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1149, '127.0.0.1', '2023-06-03 16:08:05.324428', '/myapp/index/thing/getWishThingList', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1150, '127.0.0.1', '2023-06-03 16:08:06.066108', '/myapp/index/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1151, '127.0.0.1', '2023-06-03 16:08:06.972868', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1152, '127.0.0.1', '2023-06-03 16:08:08.791105', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1153, '127.0.0.1', '2023-06-03 16:08:10.166821', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1154, '127.0.0.1', '2023-06-03 16:08:14.224682', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1155, '127.0.0.1', '2023-06-03 16:08:19.729713', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1156, '127.0.0.1', '2023-06-03 16:08:21.869015', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1157, '127.0.0.1', '2023-06-03 16:08:22.510041', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1158, '127.0.0.1', '2023-06-03 16:10:56.047312', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1159, '127.0.0.1', '2023-06-03 16:10:56.063464', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1160, '127.0.0.1', '2023-06-03 16:10:56.069005', '/myapp/index/user/info', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2023-06-03 16:10:56.072006', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2023-06-03 16:10:56.152120', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2023-06-03 16:10:56.154118', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2023-06-03 16:10:56.155153', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2023-06-03 16:10:56.171815', '/myapp/index/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2023-06-03 16:10:56.379718', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2023-06-03 16:10:57.089867', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2023-06-03 16:10:57.756280', '/myapp/index/user/info', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2023-06-03 16:12:06.628040', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2023-06-03 16:12:06.645599', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2023-06-03 16:12:06.646597', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2023-06-03 16:12:31.349338', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2023-06-03 16:12:31.360529', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2023-06-03 16:12:31.363626', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2023-06-03 16:12:31.364629', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2023-06-03 16:12:34.631569', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2023-06-03 16:12:35.251064', '/myapp/index/resume/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2023-06-03 16:12:51.635085', '/myapp/index/resume/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1179, '127.0.0.1', '2023-06-03 16:12:54.576767', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1180, '127.0.0.1', '2023-06-03 16:12:54.912744', '/myapp/index/resume/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1181, '127.0.0.1', '2023-06-03 16:14:00.125859', '/myapp/index/resume/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1182, '127.0.0.1', '2023-06-03 16:14:34.316724', '/myapp/index/resume/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1183, '127.0.0.1', '2023-06-03 16:15:30.604374', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1184, '127.0.0.1', '2023-06-03 16:15:31.211070', '/myapp/index/resume/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1185, '127.0.0.1', '2023-06-03 16:16:02.948028', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1186, '127.0.0.1', '2023-06-03 16:16:03.375234', '/myapp/index/resume/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1187, '127.0.0.1', '2023-06-03 16:17:10.750680', '/myapp/index/resume/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1188, '127.0.0.1', '2023-06-03 16:18:30.310077', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1189, '127.0.0.1', '2023-06-03 16:18:31.122805', '/myapp/index/resume/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1190, '127.0.0.1', '2023-06-03 16:25:42.542545', '/myapp/index/resume/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1191, '127.0.0.1', '2023-06-03 16:27:47.626275', '/myapp/index/resume/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1192, '127.0.0.1', '2023-06-03 16:27:47.638545', '/myapp/index/resume/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1193, '127.0.0.1', '2023-06-03 16:27:47.643545', '/myapp/index/resume/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1194, '127.0.0.1', '2023-06-03 16:27:47.646544', '/myapp/index/resume/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1195, '127.0.0.1', '2023-06-03 16:27:53.681595', '/myapp/index/resume/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (1196, '127.0.0.1', '2023-06-03 16:27:53.733547', '/myapp/index/resume/detail', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1197, '127.0.0.1', '2023-06-03 16:28:02.704298', '/myapp/index/resume/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (1198, '127.0.0.1', '2023-06-03 16:28:02.731578', '/myapp/index/resume/detail', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1199, '127.0.0.1', '2023-06-03 16:28:49.939972', '/myapp/index/resume/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1200, '127.0.0.1', '2023-06-03 16:28:52.549328', '/myapp/index/resume/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (1201, '127.0.0.1', '2023-06-03 16:28:52.594382', '/myapp/index/resume/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1202, '127.0.0.1', '2023-06-03 16:28:56.538173', '/myapp/index/resume/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (1203, '127.0.0.1', '2023-06-03 16:28:56.591033', '/myapp/index/resume/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1204, '127.0.0.1', '2023-06-03 16:28:59.969148', '/myapp/index/resume/update', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (1205, '127.0.0.1', '2023-06-03 16:29:00.024945', '/myapp/index/resume/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1206, '127.0.0.1', '2023-06-03 16:29:03.157989', '/myapp/index/resume/update', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (1207, '127.0.0.1', '2023-06-03 16:29:03.202000', '/myapp/index/resume/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1208, '127.0.0.1', '2023-06-03 16:29:05.173237', '/myapp/index/resume/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1209, '127.0.0.1', '2023-06-03 16:29:05.204267', '/myapp/index/resume/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1210, '127.0.0.1', '2023-06-03 16:29:17.419357', '/myapp/index/resume/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1211, '127.0.0.1', '2023-06-03 16:29:17.470883', '/myapp/index/resume/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1212, '127.0.0.1', '2023-06-03 16:29:33.466097', '/myapp/index/resume/update', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (1213, '127.0.0.1', '2023-06-03 16:29:33.518617', '/myapp/index/resume/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1214, '127.0.0.1', '2023-06-03 16:32:13.249426', '/myapp/index/resume/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1215, '127.0.0.1', '2023-06-03 16:32:23.818530', '/myapp/index/resume/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1216, '127.0.0.1', '2023-06-03 16:32:23.836077', '/myapp/index/resume/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1217, '127.0.0.1', '2023-06-03 16:32:23.847068', '/myapp/index/resume/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1218, '127.0.0.1', '2023-06-03 16:32:23.850069', '/myapp/index/resume/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1219, '127.0.0.1', '2023-06-03 16:32:27.714644', '/myapp/index/thing/getWishThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1220, '127.0.0.1', '2023-06-03 16:32:27.736676', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1221, '127.0.0.1', '2023-06-03 16:32:27.737691', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1222, '127.0.0.1', '2023-06-03 16:32:27.744571', '/myapp/index/thing/getWishThingList', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1223, '127.0.0.1', '2023-06-03 16:33:06.864423', '/myapp/index/thing/getWishThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1224, '127.0.0.1', '2023-06-03 16:33:06.877159', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1225, '127.0.0.1', '2023-06-03 16:33:06.886492', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1226, '127.0.0.1', '2023-06-03 16:33:06.888521', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1227, '127.0.0.1', '2023-06-03 16:33:10.117568', '/upload/raw/1685780971830.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1228, '127.0.0.1', '2023-06-03 16:33:56.819416', '/upload/raw/1685780971830.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1229, '127.0.0.1', '2023-06-03 16:34:04.619129', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1230, '127.0.0.1', '2023-06-03 16:34:04.624307', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1231, '127.0.0.1', '2023-06-03 16:34:04.646414', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1232, '127.0.0.1', '2023-06-03 16:34:04.648428', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1233, '127.0.0.1', '2023-06-03 16:34:06.402426', '/myapp/index/resume/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1234, '127.0.0.1', '2023-06-03 16:34:11.188705', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1235, '127.0.0.1', '2023-06-03 16:34:11.204697', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1236, '127.0.0.1', '2023-06-03 16:34:11.209697', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1237, '127.0.0.1', '2023-06-03 16:34:11.213697', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1238, '127.0.0.1', '2023-06-03 16:34:53.312961', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1239, '127.0.0.1', '2023-06-03 16:34:53.335962', '/myapp/index/thing/getWishThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1240, '127.0.0.1', '2023-06-03 16:34:53.339961', '/myapp/index/thing/getWishThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1241, '127.0.0.1', '2023-06-03 16:34:53.356960', '/myapp/index/thing/getWishThingList', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1242, '127.0.0.1', '2023-06-03 16:36:33.170946', '/upload/raw/1685780971830.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1243, '127.0.0.1', '2023-06-03 16:43:25.142356', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1244, '127.0.0.1', '2023-06-03 16:43:25.146385', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1245, '127.0.0.1', '2023-06-03 16:43:25.157954', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1246, '127.0.0.1', '2023-06-03 16:43:25.168058', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1247, '127.0.0.1', '2023-06-03 16:43:32.657092', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1248, '127.0.0.1', '2023-06-03 16:43:32.669092', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1249, '127.0.0.1', '2023-06-03 16:43:32.685102', '/myapp/index/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1250, '127.0.0.1', '2023-06-03 16:43:32.698518', '/myapp/index/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1251, '127.0.0.1', '2023-06-03 16:43:34.530712', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1252, '127.0.0.1', '2023-06-03 16:43:34.577829', '/myapp/index/thing/getWishThingList', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1253, '127.0.0.1', '2023-06-03 16:43:34.578792', '/myapp/index/thing/getWishThingList', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1254, '127.0.0.1', '2023-06-03 16:43:34.762343', '/myapp/index/thing/getWishThingList', 'GET', NULL, '223');
INSERT INTO `b_op_log` VALUES (1255, '127.0.0.1', '2023-06-03 16:43:38.487229', '/myapp/index/user/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1256, '127.0.0.1', '2023-06-03 16:43:40.060334', '/myapp/index/user/update', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1257, '127.0.0.1', '2023-06-03 16:44:28.060552', '/myapp/index/user/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (1258, '127.0.0.1', '2023-06-03 16:44:31.070351', '/myapp/index/thing/getWishThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1259, '127.0.0.1', '2023-06-03 16:44:31.086360', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1260, '127.0.0.1', '2023-06-03 16:44:31.087352', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1261, '127.0.0.1', '2023-06-03 16:44:31.138511', '/myapp/index/thing/getWishThingList', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1262, '127.0.0.1', '2023-06-03 16:44:35.843545', '/myapp/index/user/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (1263, '127.0.0.1', '2023-06-03 16:44:46.832756', '/myapp/index/user/info', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (1264, '127.0.0.1', '2023-06-03 16:44:51.959857', '/myapp/index/resume/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1265, '127.0.0.1', '2023-06-03 16:44:52.022311', '/myapp/index/user/info', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (1266, '127.0.0.1', '2023-06-03 16:45:10.360630', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1267, '127.0.0.1', '2023-06-03 16:45:10.362671', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1268, '127.0.0.1', '2023-06-03 16:45:10.364065', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1269, '127.0.0.1', '2023-06-03 16:45:10.375749', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1270, '127.0.0.1', '2023-06-03 16:45:16.440571', '/myapp/index/user/login', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (1271, '127.0.0.1', '2023-06-03 16:45:16.525007', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1272, '127.0.0.1', '2023-06-03 16:45:16.527344', '/myapp/index/notice/list_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1273, '127.0.0.1', '2023-06-03 16:45:16.530357', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1274, '127.0.0.1', '2023-06-03 16:45:16.557067', '/myapp/index/notice/list_api', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1275, '127.0.0.1', '2023-06-03 16:45:22.164726', '/myapp/index/notice/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1276, '127.0.0.1', '2023-06-03 16:45:22.175726', '/myapp/index/notice/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1277, '127.0.0.1', '2023-06-03 16:45:22.183730', '/myapp/index/notice/list_api', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1278, '127.0.0.1', '2023-06-03 16:45:22.185730', '/myapp/index/notice/list_api', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1279, '127.0.0.1', '2023-06-03 16:45:25.584215', '/myapp/index/user/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1280, '127.0.0.1', '2023-06-03 16:45:25.636091', '/myapp/index/user/info', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1281, '127.0.0.1', '2023-06-03 16:45:32.514425', '/myapp/index/user/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (1282, '127.0.0.1', '2023-06-03 16:45:32.561736', '/myapp/index/user/info', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1283, '127.0.0.1', '2023-06-03 16:45:34.145178', '/myapp/index/user/info', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1284, '127.0.0.1', '2023-06-03 16:45:37.476082', '/myapp/index/resume/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1285, '127.0.0.1', '2023-06-03 16:45:46.631471', '/myapp/index/user/info', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1286, '127.0.0.1', '2023-06-03 16:45:47.333619', '/myapp/index/address/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1287, '127.0.0.1', '2023-06-03 16:45:48.053945', '/myapp/index/comment/listMyComments', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1288, '127.0.0.1', '2023-06-03 16:45:48.580232', '/myapp/index/order/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1289, '127.0.0.1', '2023-06-03 16:45:49.978221', '/myapp/index/comment/listMyComments', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1290, '127.0.0.1', '2023-06-03 16:45:50.862636', '/myapp/index/order/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1291, '127.0.0.1', '2023-06-04 09:38:20.901978', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1292, '127.0.0.1', '2023-06-04 09:38:20.921519', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1293, '127.0.0.1', '2023-06-04 09:38:20.919514', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1294, '127.0.0.1', '2023-06-04 09:38:20.935033', '/myapp/index/order/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1295, '127.0.0.1', '2023-06-04 09:38:52.079590', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1296, '127.0.0.1', '2023-06-04 09:38:52.081384', '/myapp/index/order/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1297, '127.0.0.1', '2023-06-04 09:38:52.092760', '/myapp/index/order/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1298, '127.0.0.1', '2023-06-04 09:38:52.095990', '/myapp/index/order/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1299, '127.0.0.1', '2023-06-04 09:38:57.531478', '/myapp/index/user/info', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1300, '127.0.0.1', '2023-06-04 09:38:59.300244', '/myapp/index/resume/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1301, '127.0.0.1', '2023-06-04 09:39:01.188941', '/myapp/index/resume/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (1302, '127.0.0.1', '2023-06-04 09:39:01.227453', '/myapp/index/resume/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1303, '127.0.0.1', '2023-06-04 09:49:44.254138', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1304, '127.0.0.1', '2023-06-04 09:49:47.037500', '/myapp/index/resume/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1305, '127.0.0.1', '2023-06-04 09:49:49.049891', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1306, '127.0.0.1', '2023-06-04 09:50:00.379394', '/myapp/index/resume/detail', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1307, '127.0.0.1', '2023-06-04 09:53:22.223800', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1308, '127.0.0.1', '2023-06-04 09:53:22.239031', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1309, '127.0.0.1', '2023-06-04 09:53:22.241048', '/myapp/index/thing/getWishThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1310, '127.0.0.1', '2023-06-04 09:53:22.245167', '/myapp/index/thing/getWishThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1311, '127.0.0.1', '2023-06-04 09:53:23.676566', '/myapp/index/order/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1312, '127.0.0.1', '2023-06-04 09:55:02.089482', '/myapp/index/order/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1313, '127.0.0.1', '2023-06-04 10:04:42.171468', '/myapp/index/post/list_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1314, '127.0.0.1', '2023-06-04 10:05:35.271963', '/myapp/index/post/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1315, '127.0.0.1', '2023-06-04 10:05:35.273157', '/myapp/index/post/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1316, '127.0.0.1', '2023-06-04 10:05:35.286100', '/myapp/index/post/list_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1317, '127.0.0.1', '2023-06-04 10:05:35.287099', '/myapp/index/post/list_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1318, '127.0.0.1', '2023-06-04 10:06:08.244262', '/myapp/index/post/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1319, '127.0.0.1', '2023-06-04 10:06:08.250537', '/myapp/index/post/list_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1320, '127.0.0.1', '2023-06-04 10:06:08.254592', '/myapp/index/post/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1321, '127.0.0.1', '2023-06-04 10:06:08.263434', '/myapp/index/post/list_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1322, '127.0.0.1', '2023-06-04 10:06:26.664514', '/myapp/index/resume/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1323, '127.0.0.1', '2023-06-04 10:06:28.250343', '/myapp/index/post/list_api', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1324, '127.0.0.1', '2023-06-04 10:08:46.164120', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1325, '127.0.0.1', '2023-06-04 10:08:46.175474', '/myapp/index/thing/getWishThingList', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1326, '127.0.0.1', '2023-06-04 10:08:46.176517', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1327, '127.0.0.1', '2023-06-04 10:08:46.179831', '/myapp/index/thing/getWishThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1328, '127.0.0.1', '2023-06-04 10:13:17.294675', '/myapp/index/post/list_user_post_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1329, '127.0.0.1', '2023-06-04 10:13:21.201427', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1330, '127.0.0.1', '2023-06-04 10:13:21.223649', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1331, '127.0.0.1', '2023-06-04 10:13:21.229287', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1332, '127.0.0.1', '2023-06-04 10:13:21.230287', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1333, '127.0.0.1', '2023-06-04 10:13:23.299122', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1334, '127.0.0.1', '2023-06-04 10:13:23.316323', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1335, '127.0.0.1', '2023-06-04 10:13:23.323344', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1336, '127.0.0.1', '2023-06-04 10:13:23.325327', '/myapp/index/comment/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1337, '127.0.0.1', '2023-06-04 10:13:26.289198', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1338, '127.0.0.1', '2023-06-04 10:13:26.304205', '/myapp/index/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1339, '127.0.0.1', '2023-06-04 10:13:26.315205', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1340, '127.0.0.1', '2023-06-04 10:13:26.322483', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1341, '127.0.0.1', '2023-06-04 10:13:28.682285', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1342, '127.0.0.1', '2023-06-04 10:13:28.690286', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1343, '127.0.0.1', '2023-06-04 10:13:28.714705', '/myapp/index/thing/detail', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1344, '127.0.0.1', '2023-06-04 10:13:28.717793', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1345, '127.0.0.1', '2023-06-04 10:13:31.331603', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1346, '127.0.0.1', '2023-06-04 10:13:31.360951', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1347, '127.0.0.1', '2023-06-04 10:13:31.379399', '/myapp/index/comment/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1348, '127.0.0.1', '2023-06-04 10:13:31.383390', '/myapp/index/comment/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (1349, '127.0.0.1', '2023-06-04 10:13:34.713957', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1350, '127.0.0.1', '2023-06-04 10:13:34.747382', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1351, '127.0.0.1', '2023-06-04 10:13:34.750065', '/myapp/index/comment/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (1352, '127.0.0.1', '2023-06-04 10:13:34.751351', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1353, '127.0.0.1', '2023-06-04 10:14:42.212704', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1354, '127.0.0.1', '2023-06-04 10:14:42.219697', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1355, '127.0.0.1', '2023-06-04 10:14:42.221724', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1356, '127.0.0.1', '2023-06-04 10:14:42.223724', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1357, '127.0.0.1', '2023-06-04 10:15:09.816360', '/myapp/index/resume/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1358, '127.0.0.1', '2023-06-04 10:15:17.747940', '/myapp/index/post/list_user_post_api', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1359, '127.0.0.1', '2023-06-04 10:15:20.017654', '/myapp/index/resume/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1360, '127.0.0.1', '2023-06-04 10:15:20.788328', '/myapp/index/post/list_user_post_api', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1361, '127.0.0.1', '2023-06-04 10:15:26.278739', '/myapp/index/resume/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1362, '127.0.0.1', '2023-06-04 10:15:26.808893', '/myapp/index/post/list_user_post_api', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1363, '127.0.0.1', '2023-06-04 10:16:07.515711', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1364, '127.0.0.1', '2023-06-04 10:16:08.280636', '/myapp/index/thing/getWishThingList', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1365, '127.0.0.1', '2023-06-04 10:20:32.573952', '/myapp/index/thing/getWishThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1366, '127.0.0.1', '2023-06-04 10:20:32.593963', '/myapp/index/thing/getWishThingList', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1367, '127.0.0.1', '2023-06-04 10:20:32.597961', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1368, '127.0.0.1', '2023-06-04 10:20:32.636880', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1369, '127.0.0.1', '2023-06-04 10:20:32.920871', '/myapp/index/post/list_user_post_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1370, '127.0.0.1', '2023-06-04 10:22:15.253787', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1371, '127.0.0.1', '2023-06-04 10:22:15.255787', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1372, '127.0.0.1', '2023-06-04 10:22:15.327626', '/myapp/admin/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1373, '127.0.0.1', '2023-06-04 10:22:21.386776', '/myapp/index/comment/listMyComments', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1374, '127.0.0.1', '2023-06-04 10:22:21.692073', '/myapp/index/address/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1375, '127.0.0.1', '2023-06-04 10:22:25.413814', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1376, '127.0.0.1', '2023-06-04 10:22:25.435396', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1377, '127.0.0.1', '2023-06-04 10:22:25.473069', '/myapp/admin/tag/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1378, '127.0.0.1', '2023-06-04 10:22:43.044660', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (1379, '127.0.0.1', '2023-06-04 10:22:43.155079', '/myapp/admin/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (1380, '127.0.0.1', '2023-06-04 10:24:06.423835', '/myapp/index/comment/listMyComments', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1381, '127.0.0.1', '2023-06-04 10:24:09.007775', '/myapp/index/user/info', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1382, '127.0.0.1', '2023-06-04 10:24:10.410520', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1383, '127.0.0.1', '2023-06-04 10:24:10.433467', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1384, '127.0.0.1', '2023-06-04 10:24:10.454463', '/myapp/admin/classification/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1385, '127.0.0.1', '2023-06-04 10:36:37.669071', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1386, '127.0.0.1', '2023-06-04 10:36:37.670071', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1387, '127.0.0.1', '2023-06-04 10:36:37.694079', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1388, '127.0.0.1', '2023-06-04 10:38:19.506211', '/myapp/index/thing/list_user_thing', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1389, '127.0.0.1', '2023-06-04 10:38:19.506211', '/myapp/index/thing/list_user_thing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1390, '127.0.0.1', '2023-06-04 10:38:19.540083', '/myapp/index/thing/list_user_thing', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1391, '127.0.0.1', '2023-06-04 10:38:25.789053', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1392, '127.0.0.1', '2023-06-04 10:38:25.796062', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1393, '127.0.0.1', '2023-06-04 10:38:25.805053', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1394, '127.0.0.1', '2023-06-04 10:38:25.808055', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1395, '127.0.0.1', '2023-06-04 10:38:25.811063', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1396, '127.0.0.1', '2023-06-04 10:38:25.840165', '/myapp/admin/tag/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1397, '127.0.0.1', '2023-06-04 10:38:34.562503', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1398, '127.0.0.1', '2023-06-04 10:38:35.662153', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1399, '127.0.0.1', '2023-06-04 10:38:35.664153', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1400, '127.0.0.1', '2023-06-04 10:38:35.723682', '/myapp/admin/tag/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (1401, '127.0.0.1', '2023-06-04 10:38:47.501027', '/myapp/index/thing/list', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (1402, '127.0.0.1', '2023-06-04 10:39:13.726199', '/myapp/index/thing/list_user_thing', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1403, '127.0.0.1', '2023-06-04 10:39:13.727206', '/myapp/index/thing/list_user_thing', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1404, '127.0.0.1', '2023-06-04 10:39:13.769159', '/myapp/index/thing/list_user_thing', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1405, '127.0.0.1', '2023-06-04 10:39:21.741941', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1406, '127.0.0.1', '2023-06-04 10:39:21.744266', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1407, '127.0.0.1', '2023-06-04 10:39:21.763834', '/myapp/index/thing/getWishThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1408, '127.0.0.1', '2023-06-04 10:39:21.768034', '/myapp/index/thing/getWishThingList', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1409, '127.0.0.1', '2023-06-04 10:39:21.787582', '/myapp/index/thing/getWishThingList', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1410, '127.0.0.1', '2023-06-04 10:39:21.817802', '/myapp/index/thing/getWishThingList', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (1411, '127.0.0.1', '2023-06-04 10:39:27.249073', '/myapp/index/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (1412, '127.0.0.1', '2023-06-04 10:39:27.349463', '/myapp/index/thing/list_user_thing', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (1413, '127.0.0.1', '2023-06-04 10:40:30.290812', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1414, '127.0.0.1', '2023-06-04 10:40:30.293812', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1415, '127.0.0.1', '2023-06-04 10:40:30.338025', '/myapp/index/thing/list_user_thing', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1416, '127.0.0.1', '2023-06-04 10:40:33.272168', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1417, '127.0.0.1', '2023-06-04 10:40:33.293324', '/myapp/index/thing/getWishThingList', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1418, '127.0.0.1', '2023-06-04 10:40:33.310432', '/myapp/index/thing/getWishThingList', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1419, '127.0.0.1', '2023-06-04 10:40:33.315421', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1420, '127.0.0.1', '2023-06-04 10:40:33.330050', '/myapp/index/thing/getWishThingList', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1421, '127.0.0.1', '2023-06-04 10:40:33.352061', '/myapp/index/thing/getWishThingList', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1422, '127.0.0.1', '2023-06-04 10:40:39.475287', '/myapp/index/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1423, '127.0.0.1', '2023-06-04 10:40:39.602855', '/myapp/index/thing/list_user_thing', 'GET', NULL, '92');
INSERT INTO `b_op_log` VALUES (1424, '127.0.0.1', '2023-06-04 10:41:32.673937', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1425, '127.0.0.1', '2023-06-04 10:41:32.677880', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1426, '127.0.0.1', '2023-06-04 10:41:32.700268', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1427, '127.0.0.1', '2023-06-04 10:41:38.649828', '/myapp/index/thing/update', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (1428, '127.0.0.1', '2023-06-04 10:41:38.718835', '/myapp/index/thing/list_user_thing', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1429, '127.0.0.1', '2023-06-04 10:41:43.547081', '/myapp/index/thing/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (1430, '127.0.0.1', '2023-06-04 10:41:43.647814', '/myapp/index/thing/list_user_thing', 'GET', NULL, '72');
INSERT INTO `b_op_log` VALUES (1431, '127.0.0.1', '2023-06-04 10:41:47.082849', '/myapp/index/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (1432, '127.0.0.1', '2023-06-04 10:41:47.270670', '/myapp/index/thing/list_user_thing', 'GET', NULL, '153');
INSERT INTO `b_op_log` VALUES (1433, '127.0.0.1', '2023-06-04 10:42:01.596502', '/myapp/index/thing/delete', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (1434, '127.0.0.1', '2023-06-04 10:42:01.663126', '/myapp/index/thing/list_user_thing', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1435, '127.0.0.1', '2023-06-04 10:42:12.937963', '/myapp/index/thing/update', 'POST', NULL, '56');
INSERT INTO `b_op_log` VALUES (1436, '127.0.0.1', '2023-06-04 10:42:13.052164', '/myapp/index/thing/list_user_thing', 'GET', NULL, '68');
INSERT INTO `b_op_log` VALUES (1437, '127.0.0.1', '2023-06-04 10:43:17.489437', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1438, '127.0.0.1', '2023-06-04 10:43:17.491219', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1439, '127.0.0.1', '2023-06-04 10:43:17.522449', '/myapp/admin/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1440, '127.0.0.1', '2023-06-04 10:43:57.053011', '/myapp/index/thing/create', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (1441, '127.0.0.1', '2023-06-04 10:43:57.182283', '/myapp/index/thing/list_user_thing', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (1442, '127.0.0.1', '2023-06-04 10:44:13.160293', '/myapp/index/thing/create', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (1443, '127.0.0.1', '2023-06-04 10:44:13.302391', '/myapp/index/thing/list_user_thing', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (1444, '127.0.0.1', '2023-06-04 10:45:57.673369', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1445, '127.0.0.1', '2023-06-04 10:45:57.679359', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1446, '127.0.0.1', '2023-06-04 10:45:57.712475', '/myapp/admin/tag/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1447, '127.0.0.1', '2023-06-04 10:45:57.764277', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1448, '127.0.0.1', '2023-06-04 10:45:57.786250', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1449, '127.0.0.1', '2023-06-04 10:45:57.814262', '/myapp/admin/tag/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1450, '127.0.0.1', '2023-06-04 10:46:01.694176', '/myapp/admin/classification/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1451, '127.0.0.1', '2023-06-04 10:46:01.706356', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1452, '127.0.0.1', '2023-06-04 10:46:01.709876', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1453, '127.0.0.1', '2023-06-04 10:46:01.718822', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1454, '127.0.0.1', '2023-06-04 10:46:01.724847', '/myapp/admin/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1455, '127.0.0.1', '2023-06-04 10:46:01.762776', '/myapp/admin/classification/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (1456, '127.0.0.1', '2023-06-04 10:46:08.714164', '/myapp/index/thing/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (1457, '127.0.0.1', '2023-06-04 10:46:08.784129', '/myapp/index/thing/list_user_thing', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1458, '127.0.0.1', '2023-06-04 10:46:18.509905', '/myapp/index/thing/create', 'POST', NULL, '278');
INSERT INTO `b_op_log` VALUES (1459, '127.0.0.1', '2023-06-04 10:49:18.781394', '/myapp/index/thing/list_user_thing', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1460, '127.0.0.1', '2023-06-04 10:49:18.785424', '/myapp/index/thing/list_user_thing', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1461, '127.0.0.1', '2023-06-04 10:49:18.828525', '/myapp/index/thing/list_user_thing', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (1462, '127.0.0.1', '2023-06-04 10:49:25.505538', '/myapp/index/thing/create', 'POST', NULL, '134');
INSERT INTO `b_op_log` VALUES (1463, '127.0.0.1', '2023-06-04 10:56:01.740123', '/myapp/index/thing/list_user_thing', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1464, '127.0.0.1', '2023-06-04 10:56:01.743043', '/myapp/index/thing/list_user_thing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1465, '127.0.0.1', '2023-06-04 10:56:01.811748', '/myapp/index/thing/list_user_thing', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (1466, '127.0.0.1', '2023-06-04 10:59:47.436056', '/myapp/index/thing/list_user_thing', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1467, '127.0.0.1', '2023-06-04 10:59:47.437804', '/myapp/index/thing/list_user_thing', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1468, '127.0.0.1', '2023-06-04 10:59:47.489896', '/myapp/index/thing/list_user_thing', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1469, '127.0.0.1', '2023-06-04 10:59:55.384693', '/myapp/index/company/list_user_company_api', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1470, '127.0.0.1', '2023-06-04 10:59:55.455257', '/myapp/index/thing/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (1471, '127.0.0.1', '2023-06-04 10:59:55.558097', '/myapp/index/thing/list_user_thing', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (1472, '127.0.0.1', '2023-06-04 11:00:25.728659', '/myapp/index/thing/list_user_thing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1473, '127.0.0.1', '2023-06-04 11:00:25.730394', '/myapp/index/thing/list_user_thing', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1474, '127.0.0.1', '2023-06-04 11:00:25.786609', '/myapp/index/thing/list_user_thing', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (1475, '127.0.0.1', '2023-06-04 11:00:33.634200', '/myapp/index/resume/detail', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1476, '127.0.0.1', '2023-06-04 11:00:37.678870', '/myapp/index/thing/list_user_thing', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1477, '127.0.0.1', '2023-06-04 11:00:37.681795', '/myapp/index/thing/list_user_thing', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1478, '127.0.0.1', '2023-06-04 11:00:37.774320', '/myapp/index/thing/list_user_thing', 'GET', NULL, '100');
INSERT INTO `b_op_log` VALUES (1479, '127.0.0.1', '2023-06-04 11:00:45.585003', '/myapp/index/thing/update', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (1480, '127.0.0.1', '2023-06-04 11:00:45.688422', '/myapp/index/thing/list_user_thing', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (1481, '127.0.0.1', '2023-06-04 11:00:56.508569', '/myapp/index/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1482, '127.0.0.1', '2023-06-04 11:00:56.676740', '/myapp/index/thing/list_user_thing', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (1483, '127.0.0.1', '2023-06-04 11:02:48.740132', '/myapp/index/thing/list_user_thing', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1484, '127.0.0.1', '2023-06-04 11:02:48.747443', '/myapp/index/thing/list_user_thing', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1485, '127.0.0.1', '2023-06-04 11:02:48.757561', '/myapp/index/thing/list_user_thing', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1486, '127.0.0.1', '2023-06-04 11:02:48.763567', '/myapp/index/thing/list_user_thing', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1487, '127.0.0.1', '2023-06-04 11:02:48.770844', '/myapp/index/thing/list_user_thing', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1488, '127.0.0.1', '2023-06-04 11:02:48.817687', '/myapp/index/thing/list_user_thing', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (1489, '127.0.0.1', '2023-06-04 11:02:49.773174', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1490, '127.0.0.1', '2023-06-04 11:02:51.187949', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1491, '127.0.0.1', '2023-06-04 11:02:51.214958', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1492, '127.0.0.1', '2023-06-04 11:02:51.233958', '/myapp/admin/classification/list', 'GET', NULL, '51');
INSERT INTO `b_op_log` VALUES (1493, '127.0.0.1', '2023-06-04 11:02:51.761634', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1494, '127.0.0.1', '2023-06-04 11:03:19.693395', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1495, '127.0.0.1', '2023-06-04 11:03:19.697170', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1496, '127.0.0.1', '2023-06-04 11:03:19.796557', '/myapp/admin/tag/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (1497, '127.0.0.1', '2023-06-04 11:03:21.121616', '/myapp/index/user/info', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1498, '127.0.0.1', '2023-06-04 11:03:21.703726', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1499, '127.0.0.1', '2023-06-04 11:03:21.729246', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1500, '127.0.0.1', '2023-06-04 11:03:21.784423', '/myapp/admin/classification/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1501, '127.0.0.1', '2023-06-04 11:03:22.630983', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1502, '127.0.0.1', '2023-06-04 11:03:23.200150', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1503, '127.0.0.1', '2023-06-04 11:03:23.201972', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1504, '127.0.0.1', '2023-06-04 11:03:23.267533', '/myapp/admin/classification/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (1505, '127.0.0.1', '2023-06-04 11:03:24.355640', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1506, '127.0.0.1', '2023-06-04 11:08:49.926545', '/myapp/index/company/list_user_company_api', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (1507, '127.0.0.1', '2023-06-04 11:09:40.267667', '/myapp/index/company/list_user_company_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1508, '127.0.0.1', '2023-06-04 11:09:45.314525', '/myapp/index/company/list_user_company_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1509, '127.0.0.1', '2023-06-04 11:09:45.344276', '/myapp/index/company/list_user_company_api', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1510, '127.0.0.1', '2023-06-04 11:09:45.346656', '/myapp/index/company/list_user_company_api', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1511, '127.0.0.1', '2023-06-04 11:09:45.403447', '/myapp/index/company/list_user_company_api', 'GET', NULL, '79');
INSERT INTO `b_op_log` VALUES (1512, '127.0.0.1', '2023-06-04 11:09:57.888552', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1513, '127.0.0.1', '2023-06-04 11:11:47.164902', '/myapp/index/company/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1514, '127.0.0.1', '2023-06-04 11:11:47.223650', '/myapp/index/company/list_user_company_api', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1515, '127.0.0.1', '2023-06-04 11:12:30.119328', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1516, '127.0.0.1', '2023-06-04 11:12:33.578020', '/myapp/index/company/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (1517, '127.0.0.1', '2023-06-04 11:12:33.610229', '/myapp/index/company/list_user_company_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1518, '127.0.0.1', '2023-06-04 11:12:42.150433', '/myapp/index/company/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (1519, '127.0.0.1', '2023-06-04 11:12:42.204373', '/myapp/index/company/list_user_company_api', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1520, '127.0.0.1', '2023-06-04 11:13:08.157212', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1521, '127.0.0.1', '2023-06-04 11:13:08.192126', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1522, '127.0.0.1', '2023-06-04 11:13:15.810042', '/myapp/index/company/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (1523, '127.0.0.1', '2023-06-04 11:13:15.864962', '/myapp/index/company/list_user_company_api', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1524, '127.0.0.1', '2023-06-04 11:13:37.417707', '/myapp/index/company/list_user_company_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1525, '127.0.0.1', '2023-06-04 11:13:37.432407', '/upload/company/1685770768426.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1526, '127.0.0.1', '2023-06-04 11:13:41.062012', '/myapp/index/company/update', 'POST', NULL, '237');
INSERT INTO `b_op_log` VALUES (1527, '127.0.0.1', '2023-06-04 11:13:41.090173', '/myapp/index/company/list_user_company_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1528, '127.0.0.1', '2023-06-04 11:13:41.103279', '/upload/company/1685848419951.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1529, '127.0.0.1', '2023-06-04 11:13:46.745288', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1530, '127.0.0.1', '2023-06-04 11:13:46.761238', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1531, '127.0.0.1', '2023-06-04 11:13:46.775793', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1532, '127.0.0.1', '2023-06-04 11:13:46.777825', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1533, '127.0.0.1', '2023-06-04 11:13:46.785741', '/upload/company/1685848419951.png', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1534, '127.0.0.1', '2023-06-04 11:14:36.549234', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1535, '127.0.0.1', '2023-06-04 11:14:36.564224', '/upload/company/1685848419951.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1536, '127.0.0.1', '2023-06-04 11:14:39.569651', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1537, '127.0.0.1', '2023-06-04 11:14:39.598659', '/myapp/index/company/list_user_company_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1538, '127.0.0.1', '2023-06-04 11:14:39.603658', '/myapp/index/company/list_user_company_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1539, '127.0.0.1', '2023-06-04 11:14:39.606660', '/myapp/index/company/list_user_company_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1540, '127.0.0.1', '2023-06-04 11:14:39.615650', '/upload/company/1685848419951.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1541, '127.0.0.1', '2023-06-04 11:14:40.812876', '/myapp/index/company/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (1542, '127.0.0.1', '2023-06-04 11:14:40.867066', '/myapp/index/company/list_user_company_api', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1543, '127.0.0.1', '2023-06-04 11:15:02.929799', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1544, '127.0.0.1', '2023-06-04 11:15:02.941265', '/upload/company/1685848419951.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1545, '127.0.0.1', '2023-06-04 11:15:06.384342', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1546, '127.0.0.1', '2023-06-04 11:15:06.397852', '/myapp/index/company/list_user_company_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1547, '127.0.0.1', '2023-06-04 11:15:06.404519', '/myapp/index/company/list_user_company_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1548, '127.0.0.1', '2023-06-04 11:15:06.408156', '/myapp/index/company/list_user_company_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1549, '127.0.0.1', '2023-06-04 11:15:06.415153', '/upload/company/1685848419951.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1550, '127.0.0.1', '2023-06-04 11:15:07.305066', '/myapp/index/company/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (1551, '127.0.0.1', '2023-06-04 11:15:07.347338', '/myapp/index/company/list_user_company_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1552, '127.0.0.1', '2023-06-04 11:15:28.102136', '/myapp/index/post/list_user_post_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1553, '127.0.0.1', '2023-06-04 11:15:29.513617', '/myapp/index/thing/list_user_thing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1554, '127.0.0.1', '2023-06-04 11:15:29.524286', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1555, '127.0.0.1', '2023-06-04 11:15:29.602100', '/myapp/admin/tag/list', 'GET', NULL, '85');
INSERT INTO `b_op_log` VALUES (1556, '127.0.0.1', '2023-06-04 11:17:06.624916', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1557, '127.0.0.1', '2023-06-04 11:17:06.628921', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1558, '127.0.0.1', '2023-06-04 11:17:06.661351', '/myapp/admin/tag/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1559, '127.0.0.1', '2023-06-04 11:17:06.661351', '/myapp/admin/tag/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1560, '127.0.0.1', '2023-06-04 11:17:06.671860', '/myapp/admin/tag/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1561, '127.0.0.1', '2023-06-04 11:17:06.715593', '/myapp/admin/tag/list', 'GET', NULL, '93');
INSERT INTO `b_op_log` VALUES (1562, '127.0.0.1', '2023-06-04 11:17:07.459902', '/myapp/index/company/list_user_company_api', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1563, '127.0.0.1', '2023-06-04 11:17:07.486870', '/upload/company/1685848419951.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1564, '127.0.0.1', '2023-06-04 11:17:08.198887', '/myapp/index/post/list_user_post_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1565, '127.0.0.1', '2023-06-04 11:19:16.437740', '/myapp/index/post/list_user_post_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1566, '127.0.0.1', '2023-06-04 11:19:16.451694', '/myapp/index/post/list_user_post_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1567, '127.0.0.1', '2023-06-04 11:19:16.454825', '/myapp/index/post/list_user_post_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1568, '127.0.0.1', '2023-06-04 11:19:16.457871', '/myapp/index/post/list_user_post_api', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1569, '127.0.0.1', '2023-06-04 11:19:24.032322', '/myapp/index/thing/getWishThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1570, '127.0.0.1', '2023-06-04 11:19:24.060811', '/myapp/index/thing/getWishThingList', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1571, '127.0.0.1', '2023-06-04 11:19:24.077287', '/myapp/index/thing/getWishThingList', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (1572, '127.0.0.1', '2023-06-04 11:19:24.080289', '/myapp/index/thing/getWishThingList', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (1573, '127.0.0.1', '2023-06-04 11:21:17.095852', '/myapp/index/post/list_company_post_api', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1574, '127.0.0.1', '2023-06-04 11:23:54.173873', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1575, '127.0.0.1', '2023-06-04 11:23:54.194661', '/myapp/index/post/list_company_post_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1576, '127.0.0.1', '2023-06-04 11:24:03.608343', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1577, '127.0.0.1', '2023-06-04 11:24:03.614271', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1578, '127.0.0.1', '2023-06-04 11:24:03.646411', '/myapp/admin/tag/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (1579, '127.0.0.1', '2023-06-04 11:24:04.360480', '/myapp/index/company/list_user_company_api', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1580, '127.0.0.1', '2023-06-04 11:24:04.399488', '/myapp/index/post/list_company_post_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1581, '127.0.0.1', '2023-06-04 11:24:20.175556', '/myapp/index/company/list_user_company_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1582, '127.0.0.1', '2023-06-04 11:24:20.212477', '/myapp/index/post/list_company_post_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1583, '127.0.0.1', '2023-06-04 11:24:39.219132', '/myapp/index/company/list_user_company_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1584, '127.0.0.1', '2023-06-04 11:24:39.250038', '/myapp/index/post/list_company_post_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1585, '127.0.0.1', '2023-06-04 11:24:48.675891', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1586, '127.0.0.1', '2023-06-04 11:24:48.683905', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1587, '127.0.0.1', '2023-06-04 11:24:48.693739', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1588, '127.0.0.1', '2023-06-04 11:24:48.695056', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1589, '127.0.0.1', '2023-06-04 11:24:48.715931', '/myapp/index/post/list_company_post_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1590, '127.0.0.1', '2023-06-04 11:26:52.513414', '/myapp/index/company/list_user_company_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1591, '127.0.0.1', '2023-06-04 11:26:52.538025', '/myapp/index/post/list_company_post_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1592, '127.0.0.1', '2023-06-04 11:27:04.304427', '/myapp/index/company/list_user_company_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1593, '127.0.0.1', '2023-06-04 11:27:04.345989', '/upload/company/1685848419951.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1594, '127.0.0.1', '2023-06-04 11:27:05.288133', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1595, '127.0.0.1', '2023-06-04 11:27:05.348444', '/myapp/index/post/list_company_post_api', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1596, '127.0.0.1', '2023-06-04 11:27:06.386163', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1597, '127.0.0.1', '2023-06-04 11:27:06.397527', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1598, '127.0.0.1', '2023-06-04 11:27:06.417135', '/myapp/admin/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1599, '127.0.0.1', '2023-06-04 11:27:06.911351', '/myapp/index/company/list_user_company_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1600, '127.0.0.1', '2023-06-04 11:27:06.939359', '/myapp/index/post/list_company_post_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1601, '127.0.0.1', '2023-06-04 11:27:07.454171', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1602, '127.0.0.1', '2023-06-04 11:27:07.470417', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1603, '127.0.0.1', '2023-06-04 11:27:07.486530', '/myapp/admin/tag/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1604, '127.0.0.1', '2023-06-04 11:27:09.290827', '/myapp/index/company/list_user_company_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1605, '127.0.0.1', '2023-06-04 11:27:10.228586', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1606, '127.0.0.1', '2023-06-04 11:27:10.228586', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1607, '127.0.0.1', '2023-06-04 11:27:10.269201', '/myapp/admin/tag/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1608, '127.0.0.1', '2023-06-04 11:27:10.761268', '/myapp/index/company/list_user_company_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1609, '127.0.0.1', '2023-06-04 11:27:10.827153', '/myapp/index/post/list_company_post_api', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (1610, '127.0.0.1', '2023-06-04 11:27:11.484960', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1611, '127.0.0.1', '2023-06-04 11:27:12.526111', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1612, '127.0.0.1', '2023-06-04 11:27:12.528168', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1613, '127.0.0.1', '2023-06-04 11:27:12.554777', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1614, '127.0.0.1', '2023-06-04 11:27:13.198438', '/myapp/index/company/list_user_company_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1615, '127.0.0.1', '2023-06-04 11:27:13.246900', '/myapp/index/post/list_company_post_api', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1616, '127.0.0.1', '2023-06-04 11:27:16.515993', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1617, '127.0.0.1', '2023-06-04 11:28:00.137642', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1618, '127.0.0.1', '2023-06-04 11:28:00.138644', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1619, '127.0.0.1', '2023-06-04 11:28:00.143653', '/myapp/index/company/list_user_company_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1620, '127.0.0.1', '2023-06-04 11:28:00.148641', '/myapp/index/company/list_user_company_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1621, '127.0.0.1', '2023-06-04 11:28:12.158593', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1622, '127.0.0.1', '2023-06-04 11:28:12.160592', '/myapp/index/company/list_user_company_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1623, '127.0.0.1', '2023-06-04 11:28:12.169607', '/myapp/index/company/list_user_company_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1624, '127.0.0.1', '2023-06-04 11:28:12.172591', '/myapp/index/company/list_user_company_api', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1625, '127.0.0.1', '2023-06-04 11:28:19.856773', '/myapp/index/company/list_user_company_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1626, '127.0.0.1', '2023-06-04 11:28:19.857775', '/myapp/index/company/list_user_company_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1627, '127.0.0.1', '2023-06-04 11:28:19.858773', '/myapp/index/company/list_user_company_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1628, '127.0.0.1', '2023-06-04 11:28:19.863764', '/myapp/index/company/list_user_company_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1629, '127.0.0.1', '2023-06-04 11:28:21.417423', '/myapp/index/post/list_user_post_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1630, '127.0.0.1', '2023-06-04 11:28:23.044571', '/myapp/index/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1631, '127.0.0.1', '2023-06-04 11:28:24.339378', '/myapp/index/comment/listMyComments', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1632, '127.0.0.1', '2023-06-04 11:28:27.174902', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1633, '127.0.0.1', '2023-06-04 11:28:27.919386', '/myapp/index/thing/getWishThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1634, '127.0.0.1', '2023-06-04 11:28:29.310287', '/myapp/index/post/list_user_post_api', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1635, '127.0.0.1', '2023-06-04 11:28:30.034563', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1636, '127.0.0.1', '2023-06-04 11:28:30.089825', '/myapp/index/post/list_company_post_api', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1637, '127.0.0.1', '2023-06-04 11:28:30.622326', '/myapp/index/thing/list_user_thing', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1638, '127.0.0.1', '2023-06-04 11:28:30.623382', '/myapp/index/thing/list_user_thing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1639, '127.0.0.1', '2023-06-04 11:28:30.672040', '/myapp/index/thing/list_user_thing', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (1640, '127.0.0.1', '2023-06-04 11:28:32.058090', '/myapp/index/post/list_user_post_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1641, '127.0.0.1', '2023-06-04 11:28:33.148403', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1642, '127.0.0.1', '2023-06-04 11:28:33.150527', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1643, '127.0.0.1', '2023-06-04 11:28:33.183372', '/myapp/admin/tag/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1644, '127.0.0.1', '2023-06-04 11:28:33.615512', '/myapp/index/company/list_user_company_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1645, '127.0.0.1', '2023-06-04 11:28:33.658847', '/myapp/index/post/list_company_post_api', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1646, '127.0.0.1', '2023-06-04 11:28:34.383406', '/myapp/index/company/list_user_company_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1647, '127.0.0.1', '2023-06-04 11:29:12.526873', '/myapp/index/company/list_user_company_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1648, '127.0.0.1', '2023-06-04 11:29:12.578496', '/myapp/index/post/list_company_post_api', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1649, '127.0.0.1', '2023-06-04 11:29:13.036544', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1650, '127.0.0.1', '2023-06-04 11:29:13.053952', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1651, '127.0.0.1', '2023-06-04 11:29:13.069844', '/myapp/admin/tag/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1652, '127.0.0.1', '2023-06-04 11:29:14.203773', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1653, '127.0.0.1', '2023-06-04 11:29:14.865063', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1654, '127.0.0.1', '2023-06-04 11:29:14.866051', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1655, '127.0.0.1', '2023-06-04 11:29:14.908260', '/myapp/admin/tag/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (1656, '127.0.0.1', '2023-06-04 11:29:15.238276', '/myapp/index/company/list_user_company_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1657, '127.0.0.1', '2023-06-04 11:29:15.295172', '/myapp/index/post/list_company_post_api', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1658, '127.0.0.1', '2023-06-04 11:29:15.862596', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1659, '127.0.0.1', '2023-06-04 11:29:15.865447', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1660, '127.0.0.1', '2023-06-04 11:29:15.891801', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1661, '127.0.0.1', '2023-06-04 11:29:16.547512', '/myapp/index/company/list_user_company_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1662, '127.0.0.1', '2023-06-04 11:29:17.036223', '/myapp/index/company/list_user_company_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1663, '127.0.0.1', '2023-06-04 11:29:17.067792', '/myapp/index/post/list_company_post_api', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1664, '127.0.0.1', '2023-06-04 11:29:18.917354', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1665, '127.0.0.1', '2023-06-04 11:29:18.918354', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1666, '127.0.0.1', '2023-06-04 11:29:18.955557', '/myapp/admin/tag/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1667, '127.0.0.1', '2023-06-04 11:29:20.411281', '/myapp/index/company/list_user_company_api', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1668, '127.0.0.1', '2023-06-04 11:29:21.368963', '/myapp/index/post/list_user_post_api', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1669, '127.0.0.1', '2023-06-04 11:29:22.244835', '/myapp/index/resume/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1670, '127.0.0.1', '2023-06-04 11:29:23.105803', '/myapp/index/comment/listMyComments', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1671, '127.0.0.1', '2023-06-04 11:29:23.953766', '/myapp/index/resume/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1672, '127.0.0.1', '2023-06-04 11:29:25.343981', '/myapp/index/post/list_user_post_api', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1673, '127.0.0.1', '2023-06-04 11:29:26.587981', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1674, '127.0.0.1', '2023-06-04 11:29:27.174265', '/myapp/index/thing/getWishThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1675, '127.0.0.1', '2023-06-04 11:29:28.415154', '/myapp/index/company/list_user_company_api', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1676, '127.0.0.1', '2023-06-04 11:29:28.471989', '/myapp/index/post/list_company_post_api', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1677, '127.0.0.1', '2023-06-04 11:29:29.416052', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1678, '127.0.0.1', '2023-06-04 11:29:29.417671', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1679, '127.0.0.1', '2023-06-04 11:29:29.441429', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1680, '127.0.0.1', '2023-06-04 11:29:30.715956', '/myapp/index/company/list_user_company_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1681, '127.0.0.1', '2023-06-04 11:29:30.770985', '/myapp/index/post/list_company_post_api', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1682, '127.0.0.1', '2023-06-04 11:29:45.033472', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1683, '127.0.0.1', '2023-06-04 11:29:48.285241', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1684, '127.0.0.1', '2023-06-04 11:29:48.286241', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1685, '127.0.0.1', '2023-06-04 11:29:48.320981', '/myapp/admin/tag/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (1686, '127.0.0.1', '2023-06-04 11:29:48.989056', '/myapp/index/company/list_user_company_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1687, '127.0.0.1', '2023-06-04 11:29:49.050978', '/myapp/index/post/list_company_post_api', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (1688, '127.0.0.1', '2023-06-04 11:30:21.465153', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1689, '127.0.0.1', '2023-06-04 11:30:21.473219', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1690, '127.0.0.1', '2023-06-04 11:30:21.472210', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1691, '127.0.0.1', '2023-06-04 11:30:21.478218', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1692, '127.0.0.1', '2023-06-04 11:30:21.515298', '/myapp/index/post/list_company_post_api', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (1693, '127.0.0.1', '2023-06-04 15:03:42.462960', '/myapp/index/thing/getWishThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1694, '127.0.0.1', '2023-06-04 15:03:42.473948', '/myapp/index/thing/getWishThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1695, '127.0.0.1', '2023-06-04 15:03:42.483990', '/myapp/index/thing/getWishThingList', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1696, '127.0.0.1', '2023-06-04 15:03:42.487964', '/myapp/index/thing/getWishThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1697, '127.0.0.1', '2023-06-04 15:03:42.507124', '/myapp/index/post/list_company_post_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1698, '127.0.0.1', '2023-06-04 15:03:56.884649', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1699, '127.0.0.1', '2023-06-04 15:03:56.887646', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1700, '127.0.0.1', '2023-06-04 15:03:56.919592', '/myapp/admin/tag/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1701, '127.0.0.1', '2023-06-04 15:03:57.758236', '/myapp/index/company/list_user_company_api', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (1702, '127.0.0.1', '2023-06-04 15:03:57.788277', '/upload/company/1685848419951.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1703, '127.0.0.1', '2023-06-04 15:04:01.516728', '/myapp/index/post/list_user_post_api', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1704, '127.0.0.1', '2023-06-04 15:04:04.326096', '/myapp/index/resume/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1705, '127.0.0.1', '2023-06-04 15:04:05.807918', '/myapp/index/comment/listMyComments', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1706, '127.0.0.1', '2023-06-04 15:04:07.373204', '/myapp/index/post/list_user_post_api', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1707, '127.0.0.1', '2023-06-04 15:04:10.925232', '/myapp/index/user/info', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1708, '127.0.0.1', '2023-06-04 15:04:15.001922', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1709, '127.0.0.1', '2023-06-04 15:04:19.273004', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1710, '127.0.0.1', '2023-06-04 15:04:19.276017', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1711, '127.0.0.1', '2023-06-04 15:04:19.306284', '/myapp/admin/classification/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (1712, '127.0.0.1', '2023-06-04 15:04:21.598033', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1713, '127.0.0.1', '2023-06-04 15:04:21.640532', '/myapp/index/post/list_company_post_api', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1714, '127.0.0.1', '2023-06-04 15:04:54.274201', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1715, '127.0.0.1', '2023-06-04 15:04:57.124548', '/myapp/index/company/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (1716, '127.0.0.1', '2023-06-04 15:04:57.152707', '/myapp/index/company/list_user_company_api', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1717, '127.0.0.1', '2023-06-04 15:06:22.938372', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1718, '127.0.0.1', '2023-06-04 15:06:22.939368', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1719, '127.0.0.1', '2023-06-04 15:06:22.967192', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1720, '127.0.0.1', '2023-06-04 15:06:29.388685', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1721, '127.0.0.1', '2023-06-04 15:06:29.389684', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1722, '127.0.0.1', '2023-06-04 15:06:29.401683', '/myapp/index/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1723, '127.0.0.1', '2023-06-04 15:06:29.407684', '/myapp/index/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1724, '127.0.0.1', '2023-06-04 15:06:35.365849', '/myapp/index/comment/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1725, '127.0.0.1', '2023-06-04 15:06:35.370882', '/myapp/index/thing/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1726, '127.0.0.1', '2023-06-04 15:06:35.383813', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1727, '127.0.0.1', '2023-06-04 15:06:35.389813', '/myapp/index/thing/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1728, '127.0.0.1', '2023-06-04 15:06:43.737777', '/myapp/index/thing/addWishUser', 'POST', NULL, '66');
INSERT INTO `b_op_log` VALUES (1729, '127.0.0.1', '2023-06-04 15:06:43.786726', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1730, '127.0.0.1', '2023-06-04 15:06:44.770933', '/myapp/index/thing/addCollectUser', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (1731, '127.0.0.1', '2023-06-04 15:06:44.795788', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1732, '127.0.0.1', '2023-06-04 15:07:20.831369', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1733, '127.0.0.1', '2023-06-04 15:07:20.837369', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1734, '127.0.0.1', '2023-06-04 15:07:20.849775', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1735, '127.0.0.1', '2023-06-04 15:07:20.854778', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1736, '127.0.0.1', '2023-06-04 15:07:20.875367', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1737, '127.0.0.1', '2023-06-04 15:07:20.876367', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1738, '127.0.0.1', '2023-06-04 15:07:20.877367', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1739, '127.0.0.1', '2023-06-04 15:07:20.888729', '/myapp/index/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1740, '127.0.0.1', '2023-06-04 15:07:24.953432', '/myapp/index/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1741, '127.0.0.1', '2023-06-04 15:07:24.957445', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1742, '127.0.0.1', '2023-06-04 15:07:24.959458', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1743, '127.0.0.1', '2023-06-04 15:07:24.967474', '/myapp/index/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1744, '127.0.0.1', '2023-06-04 15:07:30.838503', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1745, '127.0.0.1', '2023-06-04 15:07:31.964803', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1746, '127.0.0.1', '2023-06-04 15:07:35.818862', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1747, '127.0.0.1', '2023-06-04 15:07:35.822031', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1748, '127.0.0.1', '2023-06-04 15:07:35.836791', '/myapp/index/user/info', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1749, '127.0.0.1', '2023-06-04 15:07:35.837799', '/myapp/index/user/info', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1750, '127.0.0.1', '2023-06-04 15:08:13.633485', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1751, '127.0.0.1', '2023-06-04 15:08:30.855373', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1752, '127.0.0.1', '2023-06-04 15:08:30.892458', '/myapp/index/post/list_company_post_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1753, '127.0.0.1', '2023-06-04 15:08:33.357768', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1754, '127.0.0.1', '2023-06-04 15:08:33.358768', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1755, '127.0.0.1', '2023-06-04 15:08:33.393689', '/myapp/admin/tag/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (1756, '127.0.0.1', '2023-06-04 15:08:36.103311', '/myapp/index/company/list_user_company_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1757, '127.0.0.1', '2023-06-04 15:09:34.658406', '/myapp/index/post/list_user_post_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1758, '127.0.0.1', '2023-06-04 15:09:37.667870', '/myapp/index/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1759, '127.0.0.1', '2023-06-04 15:10:19.298924', '/myapp/index/user/info', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1760, '127.0.0.1', '2023-06-04 15:10:21.708235', '/myapp/index/resume/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1761, '127.0.0.1', '2023-06-04 15:10:28.463733', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1762, '127.0.0.1', '2023-06-04 15:10:31.437710', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1763, '127.0.0.1', '2023-06-04 15:10:31.438708', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1764, '127.0.0.1', '2023-06-04 15:10:31.457658', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1765, '127.0.0.1', '2023-06-04 15:10:31.468643', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1766, '127.0.0.1', '2023-06-04 15:15:24.754567', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1767, '127.0.0.1', '2023-06-04 15:15:24.756790', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1768, '127.0.0.1', '2023-06-04 15:15:24.760058', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1769, '127.0.0.1', '2023-06-04 15:15:24.781394', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1770, '127.0.0.1', '2023-06-04 15:18:55.184542', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1771, '127.0.0.1', '2023-06-04 15:18:55.192140', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1772, '127.0.0.1', '2023-06-04 15:18:55.193143', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1773, '127.0.0.1', '2023-06-04 15:18:55.226033', '/myapp/index/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1774, '127.0.0.1', '2023-06-04 15:19:52.284734', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1775, '127.0.0.1', '2023-06-04 15:19:52.287209', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1776, '127.0.0.1', '2023-06-04 15:19:52.289208', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1777, '127.0.0.1', '2023-06-04 15:19:52.304208', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1778, '127.0.0.1', '2023-06-04 15:20:04.915896', '/myapp/index/user/login', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (1779, '127.0.0.1', '2023-06-04 15:20:04.965781', '/myapp/index/classification/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1780, '127.0.0.1', '2023-06-04 15:20:04.970904', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1781, '127.0.0.1', '2023-06-04 15:20:04.972130', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1782, '127.0.0.1', '2023-06-04 15:20:04.980798', '/myapp/index/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1783, '127.0.0.1', '2023-06-04 15:20:10.087164', '/myapp/index/thing/getWishThingList', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (1784, '127.0.0.1', '2023-06-04 15:20:10.090212', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1785, '127.0.0.1', '2023-06-04 15:20:10.110468', '/myapp/index/notice/list_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1786, '127.0.0.1', '2023-06-04 15:20:10.117869', '/myapp/index/notice/list_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1787, '127.0.0.1', '2023-06-04 15:20:10.121971', '/myapp/index/notice/list_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1788, '127.0.0.1', '2023-06-04 15:20:10.141440', '/myapp/index/notice/list_api', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (1789, '127.0.0.1', '2023-06-04 15:20:27.332026', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1790, '127.0.0.1', '2023-06-04 15:20:27.375130', '/myapp/index/post/list_company_post_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1791, '127.0.0.1', '2023-06-04 15:21:35.811255', '/myapp/index/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1792, '127.0.0.1', '2023-06-04 15:21:35.822629', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1793, '127.0.0.1', '2023-06-04 15:21:35.833868', '/myapp/index/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1794, '127.0.0.1', '2023-06-04 15:21:35.840848', '/myapp/index/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1795, '127.0.0.1', '2023-06-04 15:21:48.638586', '/myapp/index/user/register', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (1796, '127.0.0.1', '2023-06-04 15:21:54.230896', '/myapp/index/user/login', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1797, '127.0.0.1', '2023-06-04 15:21:54.302573', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1798, '127.0.0.1', '2023-06-04 15:21:54.313992', '/myapp/index/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1799, '127.0.0.1', '2023-06-04 15:21:54.318303', '/myapp/index/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1800, '127.0.0.1', '2023-06-04 15:21:54.320720', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1801, '127.0.0.1', '2023-06-04 15:21:58.471661', '/myapp/index/thing/list_user_thing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1802, '127.0.0.1', '2023-06-04 15:21:58.471777', '/myapp/index/thing/list_user_thing', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1803, '127.0.0.1', '2023-06-04 15:21:58.482282', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1804, '127.0.0.1', '2023-06-04 15:21:58.483282', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1805, '127.0.0.1', '2023-06-04 15:21:58.484282', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1806, '127.0.0.1', '2023-06-04 15:21:58.486282', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1807, '127.0.0.1', '2023-06-04 15:22:00.861554', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1808, '127.0.0.1', '2023-06-04 15:22:07.525098', '/myapp/index/company/list_user_company_api', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1809, '127.0.0.1', '2023-06-04 15:22:09.668025', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1810, '127.0.0.1', '2023-06-04 15:22:09.669028', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1811, '127.0.0.1', '2023-06-04 15:22:09.683843', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1812, '127.0.0.1', '2023-06-04 15:22:11.537714', '/myapp/index/company/list_user_company_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1813, '127.0.0.1', '2023-06-04 15:22:20.173697', '/myapp/index/post/list_user_post_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (1814, '127.0.0.1', '2023-06-04 15:22:22.131232', '/myapp/index/resume/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1815, '127.0.0.1', '2023-06-04 15:22:23.723397', '/myapp/index/comment/listMyComments', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1816, '127.0.0.1', '2023-06-04 15:22:28.298267', '/myapp/index/resume/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1817, '127.0.0.1', '2023-06-04 15:22:31.083528', '/myapp/index/user/info', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1818, '127.0.0.1', '2023-06-04 15:22:32.691825', '/myapp/index/resume/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1819, '127.0.0.1', '2023-06-04 15:22:38.295092', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1820, '127.0.0.1', '2023-06-04 15:22:39.801605', '/myapp/admin/classification/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (1821, '127.0.0.1', '2023-06-04 15:22:39.804104', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1822, '127.0.0.1', '2023-06-04 15:22:39.805111', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1823, '127.0.0.1', '2023-06-04 15:22:43.864215', '/myapp/index/company/list_user_company_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1824, '127.0.0.1', '2023-06-04 15:23:29.755861', '/myapp/index/company/list_user_company_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1825, '127.0.0.1', '2023-06-04 15:24:05.459495', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1826, '127.0.0.1', '2023-06-04 15:24:08.478558', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1827, '127.0.0.1', '2023-06-04 15:24:08.479557', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1828, '127.0.0.1', '2023-06-04 15:24:08.482767', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1829, '127.0.0.1', '2023-06-04 15:24:08.483767', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1830, '127.0.0.1', '2023-06-04 15:24:12.909760', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1831, '127.0.0.1', '2023-06-04 15:24:12.911094', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1832, '127.0.0.1', '2023-06-04 15:24:12.914231', '/myapp/index/thing/list_user_thing', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1833, '127.0.0.1', '2023-06-04 15:24:14.707858', '/myapp/index/company/list_user_company_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1834, '127.0.0.1', '2023-06-04 15:24:34.934808', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1835, '127.0.0.1', '2023-06-04 15:24:36.896024', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1836, '127.0.0.1', '2023-06-04 15:24:36.900361', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1837, '127.0.0.1', '2023-06-04 15:24:36.901873', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1838, '127.0.0.1', '2023-06-04 15:24:38.005980', '/myapp/index/company/list_user_company_api', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1839, '127.0.0.1', '2023-06-04 15:24:45.818798', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1840, '127.0.0.1', '2023-06-04 15:24:45.819798', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1841, '127.0.0.1', '2023-06-04 15:24:45.820906', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1842, '127.0.0.1', '2023-06-04 15:24:49.589882', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1843, '127.0.0.1', '2023-06-04 15:24:50.890980', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1844, '127.0.0.1', '2023-06-04 15:24:50.892376', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1845, '127.0.0.1', '2023-06-04 15:24:50.893375', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1846, '127.0.0.1', '2023-06-04 15:24:59.348778', '/myapp/index/company/list_user_company_api', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1847, '127.0.0.1', '2023-06-04 15:25:03.566821', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1848, '127.0.0.1', '2023-06-04 15:25:11.628490', '/myapp/index/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1849, '127.0.0.1', '2023-06-04 15:25:35.141692', '/myapp/index/resume/create', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (1850, '127.0.0.1', '2023-06-04 15:25:43.778486', '/myapp/index/resume/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (1851, '127.0.0.1', '2023-06-04 15:26:42.956623', '/myapp/index/resume/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1852, '127.0.0.1', '2023-06-04 15:26:57.121167', '/myapp/index/resume/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (1853, '127.0.0.1', '2023-06-04 15:28:21.244556', '/myapp/index/resume/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1854, '127.0.0.1', '2023-06-04 15:28:27.865115', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1855, '127.0.0.1', '2023-06-04 15:28:27.886560', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1856, '127.0.0.1', '2023-06-04 15:28:27.889108', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1857, '127.0.0.1', '2023-06-04 15:28:27.894581', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1858, '127.0.0.1', '2023-06-04 15:28:35.536326', '/myapp/index/resume/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (1859, '127.0.0.1', '2023-06-04 15:28:35.563552', '/myapp/index/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1860, '127.0.0.1', '2023-06-04 15:28:42.436490', '/myapp/index/resume/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (1861, '127.0.0.1', '2023-06-04 15:28:42.454746', '/myapp/index/resume/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1862, '127.0.0.1', '2023-06-04 15:28:59.006425', '/myapp/index/resume/update', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (1863, '127.0.0.1', '2023-06-04 15:28:59.034442', '/myapp/index/resume/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1864, '127.0.0.1', '2023-06-04 15:29:04.941268', '/myapp/index/comment/listMyComments', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1865, '127.0.0.1', '2023-06-04 15:29:07.206827', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1866, '127.0.0.1', '2023-06-04 15:29:09.699484', '/myapp/index/post/list_user_post_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1867, '127.0.0.1', '2023-06-04 15:29:11.313036', '/myapp/index/company/list_user_company_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1868, '127.0.0.1', '2023-06-04 15:29:16.419616', '/myapp/index/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1869, '127.0.0.1', '2023-06-04 15:29:16.422488', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1870, '127.0.0.1', '2023-06-04 15:29:16.426863', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1871, '127.0.0.1', '2023-06-04 15:29:16.431389', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1872, '127.0.0.1', '2023-06-04 15:29:18.929709', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1873, '127.0.0.1', '2023-06-04 15:29:18.933853', '/myapp/index/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1874, '127.0.0.1', '2023-06-04 15:29:18.948046', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1875, '127.0.0.1', '2023-06-04 15:29:18.954707', '/myapp/index/comment/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1876, '127.0.0.1', '2023-06-04 15:29:20.487429', '/myapp/index/resume/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1877, '127.0.0.1', '2023-06-04 15:29:20.511123', '/myapp/index/post/create', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (1878, '127.0.0.1', '2023-06-04 15:29:34.483457', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1879, '127.0.0.1', '2023-06-04 15:29:34.486457', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1880, '127.0.0.1', '2023-06-04 15:29:34.488625', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1881, '127.0.0.1', '2023-06-04 15:29:34.508042', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1882, '127.0.0.1', '2023-06-04 15:29:36.706068', '/myapp/index/post/list_user_post_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1883, '127.0.0.1', '2023-06-04 15:29:38.919502', '/myapp/index/resume/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1884, '127.0.0.1', '2023-06-04 15:29:40.243654', '/myapp/index/comment/listMyComments', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1885, '127.0.0.1', '2023-06-04 15:29:41.842220', '/myapp/index/company/list_user_company_api', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1886, '127.0.0.1', '2023-06-04 15:30:03.160628', '/myapp/index/company/create', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (1887, '127.0.0.1', '2023-06-04 15:30:03.183359', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1888, '127.0.0.1', '2023-06-04 15:30:11.944990', '/myapp/index/company/update', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1889, '127.0.0.1', '2023-06-04 15:30:11.962007', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1890, '127.0.0.1', '2023-06-04 15:30:15.871649', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1891, '127.0.0.1', '2023-06-04 15:30:15.872648', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1892, '127.0.0.1', '2023-06-04 15:30:15.877444', '/myapp/index/thing/list_user_thing', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1893, '127.0.0.1', '2023-06-04 15:30:17.430291', '/myapp/index/company/list_user_company_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1894, '127.0.0.1', '2023-06-04 15:30:20.833297', '/myapp/index/thing/list_user_thing', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1895, '127.0.0.1', '2023-06-04 15:30:20.835297', '/myapp/index/thing/list_user_thing', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1896, '127.0.0.1', '2023-06-04 15:30:20.841687', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1897, '127.0.0.1', '2023-06-04 15:30:47.548427', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1898, '127.0.0.1', '2023-06-04 15:30:47.609239', '/myapp/index/thing/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (1899, '127.0.0.1', '2023-06-04 15:30:47.672161', '/myapp/index/thing/list_user_thing', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1900, '127.0.0.1', '2023-06-04 15:30:50.950133', '/myapp/index/company/list_user_company_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1901, '127.0.0.1', '2023-06-04 15:30:50.996808', '/myapp/index/post/list_company_post_api', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1902, '127.0.0.1', '2023-06-04 15:31:04.499801', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1903, '127.0.0.1', '2023-06-04 15:31:04.501080', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1904, '127.0.0.1', '2023-06-04 15:31:04.502132', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1905, '127.0.0.1', '2023-06-04 15:31:04.534823', '/myapp/index/thing/list', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (1906, '127.0.0.1', '2023-06-04 15:31:06.177689', '/myapp/index/thing/detail', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1907, '127.0.0.1', '2023-06-04 15:31:06.181718', '/myapp/index/thing/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1908, '127.0.0.1', '2023-06-04 15:31:06.195145', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1909, '127.0.0.1', '2023-06-04 15:31:06.196152', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1910, '127.0.0.1', '2023-06-04 15:31:08.804841', '/myapp/index/resume/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (1911, '127.0.0.1', '2023-06-04 15:31:08.852733', '/myapp/index/post/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (1912, '127.0.0.1', '2023-06-04 15:31:13.504028', '/myapp/index/resume/detail', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1913, '127.0.0.1', '2023-06-04 15:31:13.507419', '/myapp/index/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1914, '127.0.0.1', '2023-06-04 15:31:13.508720', '/myapp/index/resume/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1915, '127.0.0.1', '2023-06-04 15:31:13.511870', '/myapp/index/resume/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1916, '127.0.0.1', '2023-06-04 15:31:15.913862', '/myapp/index/company/list_user_company_api', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1917, '127.0.0.1', '2023-06-04 15:31:15.945405', '/myapp/index/post/list_company_post_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1918, '127.0.0.1', '2023-06-04 15:31:20.645840', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1919, '127.0.0.1', '2023-06-04 15:31:20.648241', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (1920, '127.0.0.1', '2023-06-04 15:31:20.651311', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1921, '127.0.0.1', '2023-06-04 15:31:28.640214', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1922, '127.0.0.1', '2023-06-04 15:33:28.388011', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1923, '127.0.0.1', '2023-06-04 15:33:28.389707', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1924, '127.0.0.1', '2023-06-04 15:33:28.392728', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1925, '127.0.0.1', '2023-06-04 15:33:28.405554', '/myapp/index/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1926, '127.0.0.1', '2023-06-04 15:33:30.904738', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1927, '127.0.0.1', '2023-06-04 15:33:30.910731', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1928, '127.0.0.1', '2023-06-04 15:33:30.919741', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1929, '127.0.0.1', '2023-06-04 15:33:30.925740', '/myapp/index/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (1930, '127.0.0.1', '2023-06-04 15:33:42.416222', '/myapp/index/resume/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1931, '127.0.0.1', '2023-06-04 15:33:42.441144', '/myapp/index/post/create', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (1932, '127.0.0.1', '2023-06-04 15:33:46.529956', '/myapp/index/thing/addWishUser', 'POST', NULL, '68');
INSERT INTO `b_op_log` VALUES (1933, '127.0.0.1', '2023-06-04 15:33:46.547030', '/myapp/index/thing/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1934, '127.0.0.1', '2023-06-04 15:33:48.677290', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1935, '127.0.0.1', '2023-06-04 15:33:48.682132', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1936, '127.0.0.1', '2023-06-04 15:33:48.684700', '/myapp/index/thing/getWishThingList', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1937, '127.0.0.1', '2023-06-04 15:33:48.685713', '/myapp/index/thing/getWishThingList', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1938, '127.0.0.1', '2023-06-04 15:33:50.715801', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1939, '127.0.0.1', '2023-06-04 15:33:50.740049', '/myapp/index/post/list_company_post_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (1940, '127.0.0.1', '2023-06-04 15:33:52.110430', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1941, '127.0.0.1', '2023-06-04 15:33:52.112431', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1942, '127.0.0.1', '2023-06-04 15:33:52.117577', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (1943, '127.0.0.1', '2023-06-04 15:33:53.704849', '/myapp/index/company/list_user_company_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1944, '127.0.0.1', '2023-06-04 15:33:55.713614', '/myapp/index/company/list_user_company_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (1945, '127.0.0.1', '2023-06-04 15:33:55.750701', '/myapp/index/post/list_company_post_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (1946, '127.0.0.1', '2023-06-04 15:33:58.774178', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1947, '127.0.0.1', '2023-06-04 15:33:58.773178', '/myapp/index/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1948, '127.0.0.1', '2023-06-04 15:33:58.790101', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1949, '127.0.0.1', '2023-06-04 15:33:58.791103', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1950, '127.0.0.1', '2023-06-04 15:35:02.134304', '/myapp/index/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1951, '127.0.0.1', '2023-06-04 15:35:02.145784', '/myapp/index/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (1952, '127.0.0.1', '2023-06-04 15:35:02.161058', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1953, '127.0.0.1', '2023-06-04 15:35:02.163666', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (1954, '127.0.0.1', '2023-06-04 15:35:02.243156', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1955, '127.0.0.1', '2023-06-04 15:35:02.245182', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1956, '127.0.0.1', '2023-06-04 15:35:02.246191', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1957, '127.0.0.1', '2023-06-04 15:35:02.257862', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1958, '127.0.0.1', '2023-06-04 15:35:02.275976', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1959, '127.0.0.1', '2023-06-04 15:35:02.277239', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1960, '127.0.0.1', '2023-06-04 15:35:02.278250', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1961, '127.0.0.1', '2023-06-04 15:35:02.312219', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (1962, '127.0.0.1', '2023-06-04 15:35:02.330854', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1963, '127.0.0.1', '2023-06-04 15:35:02.331867', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1964, '127.0.0.1', '2023-06-04 15:35:02.332869', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1965, '127.0.0.1', '2023-06-04 15:35:02.347028', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (1966, '127.0.0.1', '2023-06-04 15:35:33.439810', '/myapp/admin/adminLogin', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (1967, '127.0.0.1', '2023-06-04 15:35:33.640778', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1968, '127.0.0.1', '2023-06-04 15:35:33.648070', '/myapp/admin/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (1969, '127.0.0.1', '2023-06-04 15:35:33.683502', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (1970, '127.0.0.1', '2023-06-04 15:35:38.771417', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (1971, '127.0.0.1', '2023-06-04 15:35:40.518438', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (1972, '127.0.0.1', '2023-06-04 15:35:40.520864', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (1973, '127.0.0.1', '2023-06-04 15:35:40.550274', '/myapp/admin/tag/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (1974, '127.0.0.1', '2023-06-04 15:35:47.808214', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1975, '127.0.0.1', '2023-06-04 15:36:26.676976', '/myapp/admin/classification/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1976, '127.0.0.1', '2023-06-04 15:36:26.690827', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1977, '127.0.0.1', '2023-06-04 15:36:33.641864', '/myapp/admin/classification/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (1978, '127.0.0.1', '2023-06-04 15:36:33.660485', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1979, '127.0.0.1', '2023-06-04 15:36:40.451153', '/myapp/admin/classification/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (1980, '127.0.0.1', '2023-06-04 15:36:40.487368', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1981, '127.0.0.1', '2023-06-04 15:36:47.111840', '/myapp/admin/classification/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1982, '127.0.0.1', '2023-06-04 15:36:47.128512', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1983, '127.0.0.1', '2023-06-04 15:37:13.407978', '/myapp/admin/classification/create', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (1984, '127.0.0.1', '2023-06-04 15:37:13.424812', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1985, '127.0.0.1', '2023-06-04 15:37:28.662976', '/myapp/index/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1986, '127.0.0.1', '2023-06-04 15:37:28.665601', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (1987, '127.0.0.1', '2023-06-04 15:37:28.669637', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1988, '127.0.0.1', '2023-06-04 15:37:28.680172', '/myapp/index/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (1989, '127.0.0.1', '2023-06-04 15:37:38.937513', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (1990, '127.0.0.1', '2023-06-04 15:37:47.918246', '/myapp/admin/tag/create', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (1991, '127.0.0.1', '2023-06-04 15:37:47.950229', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (1992, '127.0.0.1', '2023-06-04 15:37:54.741047', '/myapp/admin/tag/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1993, '127.0.0.1', '2023-06-04 15:37:54.758323', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1994, '127.0.0.1', '2023-06-04 15:38:00.719775', '/myapp/admin/tag/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1995, '127.0.0.1', '2023-06-04 15:38:00.743662', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (1996, '127.0.0.1', '2023-06-04 15:38:08.855904', '/myapp/admin/tag/update', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (1997, '127.0.0.1', '2023-06-04 15:38:08.891809', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (1998, '127.0.0.1', '2023-06-04 15:38:15.765217', '/myapp/admin/tag/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (1999, '127.0.0.1', '2023-06-04 15:38:15.781410', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2000, '127.0.0.1', '2023-06-04 15:38:23.816479', '/myapp/admin/tag/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (2001, '127.0.0.1', '2023-06-04 15:38:23.834840', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2002, '127.0.0.1', '2023-06-04 15:38:31.190805', '/myapp/admin/tag/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2003, '127.0.0.1', '2023-06-04 15:38:31.208873', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2004, '127.0.0.1', '2023-06-04 15:38:35.813222', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2005, '127.0.0.1', '2023-06-04 15:38:35.816754', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2006, '127.0.0.1', '2023-06-04 15:38:35.818409', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2007, '127.0.0.1', '2023-06-04 15:38:35.828564', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (2008, '127.0.0.1', '2023-06-04 15:38:55.339614', '/myapp/admin/tag/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2009, '127.0.0.1', '2023-06-04 15:38:55.387629', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2010, '127.0.0.1', '2023-06-04 15:38:58.246526', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2011, '127.0.0.1', '2023-06-04 15:38:58.248583', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2012, '127.0.0.1', '2023-06-04 15:38:58.252193', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2013, '127.0.0.1', '2023-06-04 15:38:58.264056', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2014, '127.0.0.1', '2023-06-04 15:39:15.927658', '/myapp/admin/tag/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (2015, '127.0.0.1', '2023-06-04 15:39:15.970117', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (2016, '127.0.0.1', '2023-06-04 15:39:20.584349', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2017, '127.0.0.1', '2023-06-04 15:39:20.586359', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2018, '127.0.0.1', '2023-06-04 15:39:20.586809', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2019, '127.0.0.1', '2023-06-04 15:39:20.596361', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2020, '127.0.0.1', '2023-06-04 15:39:30.139719', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2021, '127.0.0.1', '2023-06-04 15:39:30.160938', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2022, '127.0.0.1', '2023-06-04 15:39:30.180972', '/myapp/admin/tag/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (2023, '127.0.0.1', '2023-06-04 15:40:15.402024', '/myapp/admin/thing/update', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (2024, '127.0.0.1', '2023-06-04 15:40:15.474923', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (2025, '127.0.0.1', '2023-06-04 15:41:15.703343', '/myapp/admin/thing/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2026, '127.0.0.1', '2023-06-04 15:41:15.769593', '/myapp/admin/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (2027, '127.0.0.1', '2023-06-04 15:41:48.836400', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (2028, '127.0.0.1', '2023-06-04 15:41:48.923877', '/myapp/admin/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (2029, '127.0.0.1', '2023-06-04 15:42:24.345504', '/myapp/admin/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (2030, '127.0.0.1', '2023-06-04 15:42:24.406700', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (2031, '127.0.0.1', '2023-06-04 15:42:37.210780', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (2032, '127.0.0.1', '2023-06-04 15:42:37.305379', '/myapp/admin/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (2033, '127.0.0.1', '2023-06-04 15:42:59.290416', '/myapp/admin/thing/update', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (2034, '127.0.0.1', '2023-06-04 15:42:59.384187', '/myapp/admin/thing/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (2035, '127.0.0.1', '2023-06-04 15:43:21.653994', '/myapp/admin/thing/update', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (2036, '127.0.0.1', '2023-06-04 15:43:21.719437', '/myapp/admin/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (2037, '127.0.0.1', '2023-06-04 15:43:29.689119', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2038, '127.0.0.1', '2023-06-04 15:43:29.690093', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2039, '127.0.0.1', '2023-06-04 15:43:29.695092', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2040, '127.0.0.1', '2023-06-04 15:43:29.708115', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2041, '127.0.0.1', '2023-06-04 15:43:36.877153', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2042, '127.0.0.1', '2023-06-04 15:43:38.415596', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2043, '127.0.0.1', '2023-06-04 15:43:39.362917', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2044, '127.0.0.1', '2023-06-04 15:43:40.608032', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (2045, '127.0.0.1', '2023-06-04 15:43:41.793506', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2046, '127.0.0.1', '2023-06-04 15:43:42.809048', '/myapp/index/thing/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (2047, '127.0.0.1', '2023-06-04 15:43:44.221697', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (2048, '127.0.0.1', '2023-06-04 15:43:49.990787', '/myapp/index/thing/list_user_thing', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2049, '127.0.0.1', '2023-06-04 15:43:49.998755', '/myapp/index/thing/list_user_thing', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2050, '127.0.0.1', '2023-06-04 15:43:49.999261', '/myapp/index/thing/list_user_thing', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2051, '127.0.0.1', '2023-06-04 15:43:50.005068', '/myapp/admin/tag/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2052, '127.0.0.1', '2023-06-04 15:43:50.008071', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2053, '127.0.0.1', '2023-06-04 15:43:50.019578', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2054, '127.0.0.1', '2023-06-04 15:44:33.880812', '/myapp/index/company/list_user_company_api', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2055, '127.0.0.1', '2023-06-04 15:44:33.950125', '/myapp/index/thing/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (2056, '127.0.0.1', '2023-06-04 15:44:34.014608', '/myapp/index/thing/list_user_thing', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (2057, '127.0.0.1', '2023-06-04 15:45:29.996805', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2058, '127.0.0.1', '2023-06-04 15:45:30.030608', '/myapp/index/thing/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (2059, '127.0.0.1', '2023-06-04 15:45:30.073887', '/myapp/index/thing/list_user_thing', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2060, '127.0.0.1', '2023-06-04 15:45:36.747416', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2061, '127.0.0.1', '2023-06-04 15:45:36.750017', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2062, '127.0.0.1', '2023-06-04 15:45:36.754561', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2063, '127.0.0.1', '2023-06-04 15:45:36.771877', '/myapp/index/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2064, '127.0.0.1', '2023-06-04 15:46:20.329077', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2065, '127.0.0.1', '2023-06-04 15:46:20.367346', '/myapp/index/thing/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (2066, '127.0.0.1', '2023-06-04 15:46:20.410659', '/myapp/index/thing/list_user_thing', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2067, '127.0.0.1', '2023-06-04 15:46:24.694497', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2068, '127.0.0.1', '2023-06-04 15:46:24.697497', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2069, '127.0.0.1', '2023-06-04 15:46:24.700502', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2070, '127.0.0.1', '2023-06-04 15:46:24.718634', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (2071, '127.0.0.1', '2023-06-04 15:47:43.418623', '/myapp/index/company/list_user_company_api', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (2072, '127.0.0.1', '2023-06-04 15:47:43.463530', '/myapp/index/thing/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (2073, '127.0.0.1', '2023-06-04 15:47:43.526129', '/myapp/index/thing/list_user_thing', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (2074, '127.0.0.1', '2023-06-04 15:48:17.111520', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2075, '127.0.0.1', '2023-06-04 15:48:17.143676', '/myapp/index/thing/create', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (2076, '127.0.0.1', '2023-06-04 15:48:17.195909', '/myapp/index/thing/list_user_thing', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2077, '127.0.0.1', '2023-06-04 15:48:53.557170', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2078, '127.0.0.1', '2023-06-04 15:48:53.626322', '/myapp/index/thing/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (2079, '127.0.0.1', '2023-06-04 15:48:53.688085', '/myapp/index/thing/list_user_thing', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (2080, '127.0.0.1', '2023-06-04 15:48:57.090753', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2081, '127.0.0.1', '2023-06-04 15:48:57.092496', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2082, '127.0.0.1', '2023-06-04 15:48:57.094517', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2083, '127.0.0.1', '2023-06-04 15:48:57.117859', '/myapp/index/classification/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (2084, '127.0.0.1', '2023-06-04 15:49:56.048453', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2085, '127.0.0.1', '2023-06-04 15:49:56.050784', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2086, '127.0.0.1', '2023-06-04 15:49:56.075698', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2087, '127.0.0.1', '2023-06-04 15:49:56.077719', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2088, '127.0.0.1', '2023-06-04 15:49:56.082398', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2089, '127.0.0.1', '2023-06-04 15:49:56.119578', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (2090, '127.0.0.1', '2023-06-04 15:49:59.126930', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2091, '127.0.0.1', '2023-06-04 15:49:59.128930', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2092, '127.0.0.1', '2023-06-04 15:49:59.132448', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2093, '127.0.0.1', '2023-06-04 15:49:59.153521', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2094, '127.0.0.1', '2023-06-04 15:50:01.903776', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2095, '127.0.0.1', '2023-06-04 15:50:03.327710', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2096, '127.0.0.1', '2023-06-04 15:50:06.707786', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (2097, '127.0.0.1', '2023-06-04 15:50:08.075394', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2098, '127.0.0.1', '2023-06-04 15:50:09.399680', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (2099, '127.0.0.1', '2023-06-04 15:50:17.811179', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (2100, '127.0.0.1', '2023-06-04 15:50:19.050646', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (2101, '127.0.0.1', '2023-06-04 15:50:20.353886', '/myapp/index/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (2102, '127.0.0.1', '2023-06-04 15:51:07.368114', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (2103, '127.0.0.1', '2023-06-04 15:51:09.352774', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2104, '127.0.0.1', '2023-06-04 15:51:14.592166', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2105, '127.0.0.1', '2023-06-04 15:51:14.618915', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2106, '127.0.0.1', '2023-06-04 15:51:14.621258', '/myapp/index/comment/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2107, '127.0.0.1', '2023-06-04 15:51:14.633936', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2108, '127.0.0.1', '2023-06-04 15:51:20.269414', '/myapp/index/resume/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (2109, '127.0.0.1', '2023-06-04 15:51:20.320108', '/myapp/index/post/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2110, '127.0.0.1', '2023-06-04 15:51:32.093546', '/myapp/index/comment/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (2111, '127.0.0.1', '2023-06-04 15:51:32.122774', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2112, '127.0.0.1', '2023-06-04 15:51:34.994404', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2113, '127.0.0.1', '2023-06-04 15:51:34.995370', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2114, '127.0.0.1', '2023-06-04 15:51:34.999354', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2115, '127.0.0.1', '2023-06-04 15:51:35.033528', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (2116, '127.0.0.1', '2023-06-04 15:51:46.817389', '/myapp/admin/tag/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2117, '127.0.0.1', '2023-06-04 15:51:46.823597', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2118, '127.0.0.1', '2023-06-04 15:51:46.824103', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2119, '127.0.0.1', '2023-06-04 15:51:46.826117', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2120, '127.0.0.1', '2023-06-04 15:51:46.830119', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2121, '127.0.0.1', '2023-06-04 15:51:46.852121', '/myapp/admin/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (2122, '127.0.0.1', '2023-06-04 15:53:12.012780', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2123, '127.0.0.1', '2023-06-04 15:53:12.014541', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2124, '127.0.0.1', '2023-06-04 15:53:12.071269', '/myapp/admin/tag/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (2125, '127.0.0.1', '2023-06-04 15:56:39.987720', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2126, '127.0.0.1', '2023-06-04 15:56:39.988720', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2127, '127.0.0.1', '2023-06-04 15:56:40.012021', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2128, '127.0.0.1', '2023-06-04 15:56:40.060634', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2129, '127.0.0.1', '2023-06-04 15:56:40.063662', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2130, '127.0.0.1', '2023-06-04 15:56:40.087147', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (2131, '127.0.0.1', '2023-06-04 15:56:44.730756', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2132, '127.0.0.1', '2023-06-04 15:56:44.735895', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2133, '127.0.0.1', '2023-06-04 15:56:44.738003', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2134, '127.0.0.1', '2023-06-04 15:56:44.740051', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2135, '127.0.0.1', '2023-06-04 15:56:44.748837', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2136, '127.0.0.1', '2023-06-04 15:56:44.780840', '/myapp/admin/tag/list', 'GET', NULL, '55');
INSERT INTO `b_op_log` VALUES (2137, '127.0.0.1', '2023-06-04 15:57:06.130439', '/myapp/index/company/list_user_company_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2138, '127.0.0.1', '2023-06-04 15:57:06.191285', '/myapp/index/thing/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (2139, '127.0.0.1', '2023-06-04 15:57:06.259562', '/myapp/index/thing/list_user_thing', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (2140, '127.0.0.1', '2023-06-04 15:57:11.147354', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2141, '127.0.0.1', '2023-06-04 15:57:11.151868', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2142, '127.0.0.1', '2023-06-04 15:57:11.210203', '/myapp/admin/tag/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (2143, '127.0.0.1', '2023-06-04 15:57:23.562096', '/myapp/admin/thing/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (2144, '127.0.0.1', '2023-06-04 15:57:23.684109', '/myapp/admin/thing/list', 'GET', NULL, '88');
INSERT INTO `b_op_log` VALUES (2145, '127.0.0.1', '2023-06-04 15:57:35.853456', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2146, '127.0.0.1', '2023-06-04 15:57:35.865078', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2147, '127.0.0.1', '2023-06-04 15:57:35.868262', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2148, '127.0.0.1', '2023-06-04 15:57:35.882506', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (2149, '127.0.0.1', '2023-06-04 16:03:54.899245', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2150, '127.0.0.1', '2023-06-04 16:03:54.901268', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2151, '127.0.0.1', '2023-06-04 16:03:54.901268', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2152, '127.0.0.1', '2023-06-04 16:03:54.925280', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2153, '127.0.0.1', '2023-06-04 16:03:57.653972', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2154, '127.0.0.1', '2023-06-04 16:03:57.657202', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2155, '127.0.0.1', '2023-06-04 16:03:57.665985', '/myapp/index/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2156, '127.0.0.1', '2023-06-04 16:03:57.712426', '/myapp/index/classification/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (2157, '127.0.0.1', '2023-06-04 16:04:02.007746', '/myapp/index/thing/list', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (2158, '127.0.0.1', '2023-06-04 16:04:03.241945', '/myapp/index/thing/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (2159, '127.0.0.1', '2023-06-04 16:04:09.952500', '/myapp/index/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (2160, '127.0.0.1', '2023-06-04 16:04:11.233152', '/myapp/index/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (2161, '127.0.0.1', '2023-06-04 16:05:00.908337', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2162, '127.0.0.1', '2023-06-04 16:05:00.909814', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2163, '127.0.0.1', '2023-06-04 16:05:00.914406', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2164, '127.0.0.1', '2023-06-04 16:05:00.943627', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (2165, '127.0.0.1', '2023-06-04 16:05:05.699335', '/myapp/index/thing/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (2166, '127.0.0.1', '2023-06-04 16:05:10.309669', '/myapp/index/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (2167, '127.0.0.1', '2023-06-04 16:05:12.815325', '/myapp/index/thing/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (2168, '127.0.0.1', '2023-06-04 16:05:15.835088', '/myapp/index/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2169, '127.0.0.1', '2023-06-04 16:05:18.364686', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2170, '127.0.0.1', '2023-06-04 16:05:20.023855', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2171, '127.0.0.1', '2023-06-04 16:05:21.688194', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2172, '127.0.0.1', '2023-06-04 16:05:22.966856', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (2173, '127.0.0.1', '2023-06-04 16:05:24.644655', '/myapp/index/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (2174, '127.0.0.1', '2023-06-04 16:05:31.371234', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2175, '127.0.0.1', '2023-06-04 16:05:31.378963', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2176, '127.0.0.1', '2023-06-04 16:05:31.516884', '/myapp/admin/classification/list', 'GET', NULL, '148');
INSERT INTO `b_op_log` VALUES (2177, '127.0.0.1', '2023-06-04 16:05:37.127944', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (2178, '127.0.0.1', '2023-06-04 16:05:37.315855', '/myapp/admin/thing/list', 'GET', NULL, '157');
INSERT INTO `b_op_log` VALUES (2179, '127.0.0.1', '2023-06-04 16:05:40.658776', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2180, '127.0.0.1', '2023-06-04 16:05:40.662055', '/myapp/index/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2181, '127.0.0.1', '2023-06-04 16:05:40.665739', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2182, '127.0.0.1', '2023-06-04 16:05:40.721228', '/myapp/index/tag/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (2183, '127.0.0.1', '2023-06-04 16:05:48.240608', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (2184, '127.0.0.1', '2023-06-04 16:05:48.455745', '/myapp/admin/thing/list', 'GET', NULL, '189');
INSERT INTO `b_op_log` VALUES (2185, '127.0.0.1', '2023-06-04 16:05:54.272730', '/myapp/admin/thing/update', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (2186, '127.0.0.1', '2023-06-04 16:05:54.454893', '/myapp/admin/thing/list', 'GET', NULL, '156');
INSERT INTO `b_op_log` VALUES (2187, '127.0.0.1', '2023-06-04 16:05:57.500744', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2188, '127.0.0.1', '2023-06-04 16:05:57.504343', '/myapp/index/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2189, '127.0.0.1', '2023-06-04 16:05:57.509316', '/myapp/index/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2190, '127.0.0.1', '2023-06-04 16:05:57.552663', '/myapp/index/tag/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (2191, '127.0.0.1', '2023-06-04 16:06:05.785818', '/myapp/admin/thing/update', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (2192, '127.0.0.1', '2023-06-04 16:06:05.979584', '/myapp/admin/thing/list', 'GET', NULL, '147');
INSERT INTO `b_op_log` VALUES (2193, '127.0.0.1', '2023-06-04 16:06:08.946759', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2194, '127.0.0.1', '2023-06-04 16:06:08.948962', '/myapp/index/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2195, '127.0.0.1', '2023-06-04 16:06:08.951495', '/myapp/index/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2196, '127.0.0.1', '2023-06-04 16:06:09.020501', '/myapp/index/classification/list', 'GET', NULL, '77');
INSERT INTO `b_op_log` VALUES (2197, '127.0.0.1', '2023-06-04 21:28:02.175988', '/myapp/index/user/register', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (2198, '127.0.0.1', '2023-06-04 21:28:05.059480', '/myapp/index/user/login', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (2199, '127.0.0.1', '2023-06-04 21:28:09.266290', '/myapp/index/user/login', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (2200, '127.0.0.1', '2023-06-04 21:28:09.344348', '/myapp/index/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2201, '127.0.0.1', '2023-06-04 21:28:09.347347', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2202, '127.0.0.1', '2023-06-04 21:28:09.348361', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2203, '127.0.0.1', '2023-06-04 21:28:09.370946', '/myapp/index/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (2204, '127.0.0.1', '2023-06-04 21:28:21.306346', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2205, '127.0.0.1', '2023-06-04 21:28:22.742087', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (2206, '127.0.0.1', '2023-06-04 21:28:25.095947', '/myapp/index/thing/detail', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2207, '127.0.0.1', '2023-06-04 21:28:25.106925', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2208, '127.0.0.1', '2023-06-04 21:28:25.115923', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2209, '127.0.0.1', '2023-06-04 21:28:25.129856', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (2210, '127.0.0.1', '2023-06-04 21:28:33.570221', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2211, '127.0.0.1', '2023-06-04 21:28:33.577061', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2212, '127.0.0.1', '2023-06-04 21:28:33.591438', '/myapp/index/comment/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2213, '127.0.0.1', '2023-06-04 21:28:33.597950', '/myapp/index/comment/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (2214, '127.0.0.1', '2023-06-04 21:28:38.259767', '/myapp/index/comment/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (2215, '127.0.0.1', '2023-06-04 21:28:38.280018', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2216, '127.0.0.1', '2023-06-04 21:28:43.701761', '/myapp/index/comment/create', 'POST', NULL, '49');
INSERT INTO `b_op_log` VALUES (2217, '127.0.0.1', '2023-06-04 21:28:43.727278', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2218, '127.0.0.1', '2023-06-04 21:28:45.600895', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2219, '127.0.0.1', '2023-06-04 21:28:46.921478', '/myapp/index/comment/like', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (2220, '127.0.0.1', '2023-06-04 21:28:46.946736', '/myapp/index/comment/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2221, '127.0.0.1', '2023-06-04 21:28:48.389485', '/myapp/index/comment/like', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (2222, '127.0.0.1', '2023-06-04 21:28:48.413225', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2223, '127.0.0.1', '2023-06-04 21:29:18.434949', '/myapp/index/thing/addWishUser', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (2224, '127.0.0.1', '2023-06-04 21:29:18.464146', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2225, '127.0.0.1', '2023-06-04 21:29:19.453745', '/myapp/index/thing/addCollectUser', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (2226, '127.0.0.1', '2023-06-04 21:29:19.489834', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2227, '127.0.0.1', '2023-06-04 21:29:28.534706', '/myapp/index/thing/getWishThingList', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2228, '127.0.0.1', '2023-06-04 21:29:28.557454', '/myapp/index/user/info', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2229, '127.0.0.1', '2023-06-04 21:29:28.563427', '/myapp/index/user/info', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2230, '127.0.0.1', '2023-06-04 21:29:28.573233', '/myapp/index/user/info', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (2231, '127.0.0.1', '2023-06-04 21:29:31.476502', '/myapp/index/post/list_user_post_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2232, '127.0.0.1', '2023-06-04 21:29:32.795622', '/myapp/index/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2233, '127.0.0.1', '2023-06-04 21:29:34.250753', '/myapp/index/comment/listMyComments', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2234, '127.0.0.1', '2023-06-04 21:29:39.697412', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2235, '127.0.0.1', '2023-06-04 21:29:39.730146', '/myapp/index/comment/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (2236, '127.0.0.1', '2023-06-04 21:29:39.732167', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (2237, '127.0.0.1', '2023-06-04 21:29:39.769743', '/myapp/index/comment/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (2238, '127.0.0.1', '2023-06-04 21:29:42.333267', '/myapp/index/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2239, '127.0.0.1', '2023-06-04 21:29:55.890525', '/myapp/index/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2240, '127.0.0.1', '2023-06-04 21:31:32.645796', '/myapp/index/comment/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2241, '127.0.0.1', '2023-06-04 21:31:32.655910', '/myapp/index/comment/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2242, '127.0.0.1', '2023-06-04 21:31:32.678125', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2243, '127.0.0.1', '2023-06-04 21:31:32.701159', '/myapp/index/comment/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2244, '127.0.0.1', '2023-06-04 21:31:32.707235', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2245, '127.0.0.1', '2023-06-04 21:31:32.736910', '/myapp/index/comment/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (2246, '127.0.0.1', '2023-06-04 21:31:32.753086', '/myapp/index/comment/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (2247, '127.0.0.1', '2023-06-04 21:31:32.780462', '/myapp/index/comment/list', 'GET', NULL, '89');
INSERT INTO `b_op_log` VALUES (2248, '127.0.0.1', '2023-06-04 21:31:35.516933', '/myapp/index/resume/detail', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2249, '127.0.0.1', '2023-06-04 21:32:08.901235', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2250, '127.0.0.1', '2023-06-04 21:32:08.912475', '/myapp/index/notice/list_api', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2251, '127.0.0.1', '2023-06-04 21:32:08.928043', '/myapp/index/comment/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2252, '127.0.0.1', '2023-06-04 21:32:08.947926', '/myapp/index/comment/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (2253, '127.0.0.1', '2023-06-04 21:32:08.958284', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (2254, '127.0.0.1', '2023-06-04 21:32:08.986895', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2255, '127.0.0.1', '2023-06-04 21:32:08.990959', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (2256, '127.0.0.1', '2023-06-04 21:32:09.049054', '/myapp/index/thing/list', 'GET', NULL, '44');
INSERT INTO `b_op_log` VALUES (2257, '127.0.0.1', '2023-06-04 21:32:13.026786', '/myapp/index/resume/detail', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2258, '127.0.0.1', '2023-06-04 21:32:13.120583', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2259, '127.0.0.1', '2023-06-04 21:32:13.124434', '/myapp/index/notice/list_api', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2260, '127.0.0.1', '2023-06-04 21:32:13.159224', '/myapp/index/resume/detail', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2261, '127.0.0.1', '2023-06-04 21:32:13.162250', '/myapp/index/resume/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2262, '127.0.0.1', '2023-06-04 21:32:20.217832', '/myapp/index/notice/list_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2263, '127.0.0.1', '2023-06-04 21:32:20.236230', '/myapp/index/notice/list_api', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (2264, '127.0.0.1', '2023-06-04 21:32:20.243567', '/myapp/index/notice/list_api', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (2265, '127.0.0.1', '2023-06-04 21:32:20.272030', '/myapp/index/notice/list_api', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (2266, '127.0.0.1', '2023-06-04 21:32:25.274456', '/myapp/index/thing/addWishUser', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (2267, '127.0.0.1', '2023-06-04 21:32:25.305853', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2268, '127.0.0.1', '2023-06-04 21:32:26.189761', '/myapp/index/thing/addCollectUser', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (2269, '127.0.0.1', '2023-06-04 21:32:26.252797', '/myapp/index/thing/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (2270, '127.0.0.1', '2023-06-04 21:32:29.018824', '/myapp/index/resume/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2271, '127.0.0.1', '2023-06-04 21:32:29.072830', '/myapp/index/resume/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2272, '127.0.0.1', '2023-06-04 21:32:29.092779', '/myapp/index/resume/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (2273, '127.0.0.1', '2023-06-04 21:32:29.098955', '/myapp/index/resume/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (2274, '127.0.0.1', '2023-06-04 21:32:29.102287', '/myapp/index/resume/detail', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (2275, '127.0.0.1', '2023-06-04 21:32:44.127606', '/myapp/index/resume/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (2276, '127.0.0.1', '2023-06-04 21:32:44.157180', '/myapp/index/resume/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2277, '127.0.0.1', '2023-06-04 21:32:49.946924', '/myapp/index/thing/detail', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2278, '127.0.0.1', '2023-06-04 21:32:49.960093', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2279, '127.0.0.1', '2023-06-04 21:32:49.984599', '/myapp/index/thing/detail', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (2280, '127.0.0.1', '2023-06-04 21:32:50.022589', '/myapp/index/thing/detail', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (2281, '127.0.0.1', '2023-06-04 21:32:52.456717', '/myapp/index/resume/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2282, '127.0.0.1', '2023-06-04 21:32:52.492587', '/myapp/index/post/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (2283, '127.0.0.1', '2023-06-04 21:32:56.772199', '/myapp/index/resume/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2284, '127.0.0.1', '2023-06-04 21:32:56.795566', '/myapp/index/resume/detail', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2285, '127.0.0.1', '2023-06-04 21:32:56.798620', '/myapp/index/resume/detail', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2286, '127.0.0.1', '2023-06-04 21:32:56.807292', '/myapp/index/resume/detail', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (2287, '127.0.0.1', '2023-06-04 21:32:59.486497', '/myapp/index/post/list_user_post_api', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2288, '127.0.0.1', '2023-06-04 21:33:01.082399', '/myapp/index/resume/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2289, '127.0.0.1', '2023-06-04 21:33:02.392489', '/myapp/index/comment/listMyComments', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (2290, '127.0.0.1', '2023-06-04 21:33:11.814394', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2291, '127.0.0.1', '2023-06-04 21:33:14.019950', '/myapp/index/company/list_user_company_api', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2292, '127.0.0.1', '2023-06-04 21:33:16.493769', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2293, '127.0.0.1', '2023-06-04 21:33:16.497078', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2294, '127.0.0.1', '2023-06-04 21:33:16.503149', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2295, '127.0.0.1', '2023-06-04 21:33:19.079744', '/myapp/index/company/list_user_company_api', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2296, '127.0.0.1', '2023-06-04 21:33:22.387498', '/myapp/index/post/list_user_post_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2297, '127.0.0.1', '2023-06-04 21:33:34.513852', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2298, '127.0.0.1', '2023-06-04 21:33:34.525840', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2299, '127.0.0.1', '2023-06-04 21:33:43.029957', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2300, '127.0.0.1', '2023-06-04 21:33:43.080125', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (2301, '127.0.0.1', '2023-06-04 21:33:46.947968', '/myapp/index/notice/list_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2302, '127.0.0.1', '2023-06-04 21:33:46.969201', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2303, '127.0.0.1', '2023-06-04 21:33:47.001732', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (2304, '127.0.0.1', '2023-06-04 21:33:47.031706', '/myapp/index/comment/list', 'GET', NULL, '69');
INSERT INTO `b_op_log` VALUES (2305, '127.0.0.1', '2023-06-04 21:33:56.980388', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2306, '127.0.0.1', '2023-06-04 21:33:58.484111', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2307, '127.0.0.1', '2023-06-04 21:34:00.238084', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2308, '127.0.0.1', '2023-06-04 21:34:01.791198', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2309, '127.0.0.1', '2023-06-04 21:34:03.314390', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2310, '127.0.0.1', '2023-06-04 21:34:04.703288', '/myapp/index/thing/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (2311, '127.0.0.1', '2023-06-04 21:34:06.043008', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2312, '127.0.0.1', '2023-06-04 21:34:07.357725', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2313, '127.0.0.1', '2023-06-04 21:34:08.924542', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2314, '127.0.0.1', '2023-06-04 21:34:10.984767', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2315, '127.0.0.1', '2023-06-04 21:34:12.283152', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2316, '127.0.0.1', '2023-06-04 21:34:13.674965', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2317, '127.0.0.1', '2023-06-04 21:34:15.005673', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (2318, '127.0.0.1', '2023-06-04 21:34:16.549083', '/myapp/index/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2319, '127.0.0.1', '2023-06-04 21:34:17.810717', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2320, '127.0.0.1', '2023-06-04 21:34:19.051882', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2321, '127.0.0.1', '2023-06-04 21:34:20.070612', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2322, '127.0.0.1', '2023-06-04 21:34:28.282872', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2323, '127.0.0.1', '2023-06-04 21:34:28.285931', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2324, '127.0.0.1', '2023-06-04 21:34:28.441725', '/myapp/admin/thing/list', 'GET', NULL, '152');
INSERT INTO `b_op_log` VALUES (2325, '127.0.0.1', '2023-06-04 21:34:36.891809', '/myapp/admin/thing/update', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (2326, '127.0.0.1', '2023-06-04 21:34:37.062486', '/myapp/admin/thing/list', 'GET', NULL, '133');
INSERT INTO `b_op_log` VALUES (2327, '127.0.0.1', '2023-06-04 21:34:47.389777', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2328, '127.0.0.1', '2023-06-04 21:34:49.792828', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2329, '127.0.0.1', '2023-06-04 21:34:51.045997', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (2330, '127.0.0.1', '2023-06-04 21:34:56.280481', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2331, '127.0.0.1', '2023-06-04 21:34:56.294882', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2332, '127.0.0.1', '2023-06-04 21:34:56.316938', '/myapp/index/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (2333, '127.0.0.1', '2023-06-04 21:34:56.350548', '/myapp/index/thing/list', 'GET', NULL, '76');
INSERT INTO `b_op_log` VALUES (2334, '127.0.0.1', '2023-06-04 21:35:00.317489', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2335, '127.0.0.1', '2023-06-04 21:35:00.331070', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (2336, '127.0.0.1', '2023-06-04 21:35:00.352684', '/myapp/index/thing/detail', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (2337, '127.0.0.1', '2023-06-04 21:35:00.387834', '/myapp/index/thing/detail', 'GET', NULL, '84');
INSERT INTO `b_op_log` VALUES (2338, '127.0.0.1', '2023-06-04 21:35:04.906433', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2339, '127.0.0.1', '2023-06-04 21:35:04.913025', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (2340, '127.0.0.1', '2023-06-04 21:35:04.937407', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (2341, '127.0.0.1', '2023-06-04 21:35:04.966537', '/myapp/index/comment/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (2342, '127.0.0.1', '2023-06-04 21:35:12.671223', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2343, '127.0.0.1', '2023-06-04 21:35:18.926033', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2344, '127.0.0.1', '2023-06-04 21:35:20.456669', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2345, '127.0.0.1', '2023-06-04 21:35:20.459140', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2346, '127.0.0.1', '2023-06-04 21:35:20.471139', '/myapp/admin/company/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2347, '127.0.0.1', '2023-06-04 21:35:20.520304', '/upload/company/1685848419951.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (2348, '127.0.0.1', '2023-06-04 21:35:22.698466', '/myapp/admin/resume/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2349, '127.0.0.1', '2023-06-04 21:35:22.704050', '/myapp/admin/resume/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2350, '127.0.0.1', '2023-06-04 21:35:22.716298', '/myapp/admin/resume/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2351, '127.0.0.1', '2023-06-04 21:35:22.743615', '/upload/resume/1685772067199.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2352, '127.0.0.1', '2023-06-04 21:35:28.688313', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2353, '127.0.0.1', '2023-06-04 21:35:28.692428', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2354, '127.0.0.1', '2023-06-04 21:35:28.695178', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2355, '127.0.0.1', '2023-06-04 21:35:30.459149', '/myapp/admin/comment/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2356, '127.0.0.1', '2023-06-04 21:35:31.716514', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2357, '127.0.0.1', '2023-06-04 21:35:33.768467', '/myapp/admin/overview/count', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2358, '127.0.0.1', '2023-06-04 21:35:37.135013', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1039');
INSERT INTO `b_op_log` VALUES (2359, '127.0.0.1', '2023-06-04 21:39:18.929091', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2360, '127.0.0.1', '2023-06-04 21:39:20.712090', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (2361, '127.0.0.1', '2023-06-04 21:39:20.715665', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2362, '127.0.0.1', '2023-06-04 21:39:20.760913', '/myapp/admin/tag/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (2363, '127.0.0.1', '2023-06-04 21:39:24.844281', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2364, '127.0.0.1', '2023-06-04 21:39:44.110856', '/myapp/admin/user/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (2365, '127.0.0.1', '2023-06-04 21:39:44.137777', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2366, '127.0.0.1', '2023-06-04 21:40:03.604384', '/myapp/admin/user/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (2367, '127.0.0.1', '2023-06-04 21:40:03.629376', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2368, '127.0.0.1', '2023-06-04 21:40:10.572215', '/myapp/admin/comment/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (2369, '127.0.0.1', '2023-06-04 21:40:11.647985', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2370, '127.0.0.1', '2023-06-04 21:40:47.850160', '/myapp/admin/adminLogin', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (2371, '127.0.0.1', '2023-06-04 21:40:47.966876', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2372, '127.0.0.1', '2023-06-04 21:40:47.969147', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2373, '127.0.0.1', '2023-06-04 21:40:48.106580', '/myapp/admin/tag/list', 'GET', NULL, '143');
INSERT INTO `b_op_log` VALUES (2374, '127.0.0.1', '2023-06-04 21:40:54.265396', '/myapp/admin/thing/update', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (2375, '127.0.0.1', '2023-06-04 21:41:19.913645', '/myapp/admin/thing/delete', 'POST', NULL, '6');
INSERT INTO `b_op_log` VALUES (2376, '127.0.0.1', '2023-06-04 21:41:21.745167', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2377, '127.0.0.1', '2023-06-04 21:41:25.052157', '/myapp/admin/classification/update', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (2378, '127.0.0.1', '2023-06-04 21:41:30.650109', '/myapp/admin/classification/delete', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (2379, '127.0.0.1', '2023-06-04 21:41:32.511091', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2380, '127.0.0.1', '2023-06-04 21:41:35.852528', '/myapp/admin/tag/delete', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (2381, '127.0.0.1', '2023-06-04 21:41:37.763789', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2382, '127.0.0.1', '2023-06-04 21:41:37.768562', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2383, '127.0.0.1', '2023-06-04 21:41:37.771077', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2384, '127.0.0.1', '2023-06-04 21:41:41.675603', '/myapp/admin/company/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (2385, '127.0.0.1', '2023-06-04 21:41:47.098206', '/myapp/admin/company/delete', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (2386, '127.0.0.1', '2023-06-04 21:41:49.177299', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2387, '127.0.0.1', '2023-06-04 21:41:49.180471', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2388, '127.0.0.1', '2023-06-04 21:41:49.188897', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2389, '127.0.0.1', '2023-06-04 21:41:52.554520', '/myapp/admin/resume/update', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (2390, '127.0.0.1', '2023-06-04 21:41:57.397806', '/myapp/admin/resume/delete', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (2391, '127.0.0.1', '2023-06-04 21:41:59.227043', '/myapp/admin/comment/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2392, '127.0.0.1', '2023-06-04 21:42:02.690220', '/myapp/admin/comment/delete', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (2393, '127.0.0.1', '2023-06-04 21:42:04.536055', '/myapp/admin/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2394, '127.0.0.1', '2023-06-04 21:42:08.087709', '/myapp/admin/user/update', 'POST', NULL, '11');
INSERT INTO `b_op_log` VALUES (2395, '127.0.0.1', '2023-06-04 21:42:11.971742', '/myapp/admin/user/delete', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (2396, '127.0.0.1', '2023-06-04 21:42:38.755496', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2397, '127.0.0.1', '2023-06-04 21:42:38.757504', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2398, '127.0.0.1', '2023-06-04 21:42:38.760576', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2399, '127.0.0.1', '2023-06-04 21:42:38.791959', '/myapp/index/thing/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (2400, '127.0.0.1', '2023-06-04 21:42:41.154320', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2401, '127.0.0.1', '2023-06-04 21:42:41.171842', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (2402, '127.0.0.1', '2023-06-04 21:42:41.180789', '/myapp/index/comment/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (2403, '127.0.0.1', '2023-06-04 21:42:41.214377', '/myapp/index/comment/list', 'GET', NULL, '80');
INSERT INTO `b_op_log` VALUES (2404, '127.0.0.1', '2023-06-04 21:42:43.606205', '/myapp/index/resume/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2405, '127.0.0.1', '2023-06-04 21:42:43.663200', '/myapp/index/post/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (2406, '127.0.0.1', '2023-06-04 21:42:48.280311', '/myapp/index/comment/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (2407, '127.0.0.1', '2023-06-04 21:42:48.303145', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2408, '127.0.0.1', '2023-06-04 21:42:54.943541', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2409, '127.0.0.1', '2023-06-04 21:42:54.947054', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2410, '127.0.0.1', '2023-06-04 21:42:54.982982', '/myapp/index/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2411, '127.0.0.1', '2023-06-04 21:42:55.033443', '/myapp/index/tag/list', 'GET', NULL, '96');
INSERT INTO `b_op_log` VALUES (2412, '127.0.0.1', '2023-06-04 21:42:56.603654', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2413, '127.0.0.1', '2023-06-04 21:42:56.612200', '/myapp/index/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (2414, '127.0.0.1', '2023-06-04 21:42:56.621220', '/myapp/index/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (2415, '127.0.0.1', '2023-06-04 21:42:56.664956', '/myapp/index/classification/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (2416, '127.0.0.1', '2023-06-04 21:43:00.736143', '/myapp/index/comment/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2417, '127.0.0.1', '2023-06-04 21:43:00.762372', '/myapp/index/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (2418, '127.0.0.1', '2023-06-04 21:43:00.772787', '/myapp/index/comment/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (2419, '127.0.0.1', '2023-06-04 21:43:00.803884', '/myapp/index/comment/list', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (2420, '127.0.0.1', '2023-06-04 21:43:16.859270', '/myapp/index/user/register', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (2421, '127.0.0.1', '2023-06-04 21:43:27.194227', '/myapp/index/user/login', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (2422, '127.0.0.1', '2023-06-04 21:43:27.588277', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (2423, '127.0.0.1', '2023-06-04 21:43:27.590324', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2424, '127.0.0.1', '2023-06-04 21:43:27.592735', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2425, '127.0.0.1', '2023-06-04 21:43:27.643312', '/myapp/index/thing/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (2426, '127.0.0.1', '2023-06-04 21:43:33.228016', '/myapp/index/comment/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2427, '127.0.0.1', '2023-06-04 21:43:33.240041', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2428, '127.0.0.1', '2023-06-04 21:43:33.259046', '/myapp/index/comment/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (2429, '127.0.0.1', '2023-06-04 21:43:33.293210', '/myapp/index/comment/list', 'GET', NULL, '74');
INSERT INTO `b_op_log` VALUES (2430, '127.0.0.1', '2023-06-04 21:43:35.588409', '/myapp/index/resume/detail', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2431, '127.0.0.1', '2023-06-04 21:43:35.652009', '/myapp/index/resume/detail', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2432, '127.0.0.1', '2023-06-04 21:43:35.659085', '/myapp/index/resume/detail', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (2433, '127.0.0.1', '2023-06-04 21:43:35.665364', '/myapp/index/resume/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (2434, '127.0.0.1', '2023-06-04 21:43:35.667413', '/myapp/index/resume/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2435, '127.0.0.1', '2023-06-04 21:43:44.202435', '/myapp/index/resume/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (2436, '127.0.0.1', '2023-06-04 21:43:44.257583', '/myapp/index/resume/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (2437, '127.0.0.1', '2023-06-04 21:43:47.776523', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2438, '127.0.0.1', '2023-06-04 21:43:47.794313', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (2439, '127.0.0.1', '2023-06-04 21:43:47.822203', '/myapp/index/comment/list', 'GET', NULL, '49');
INSERT INTO `b_op_log` VALUES (2440, '127.0.0.1', '2023-06-04 21:43:47.853551', '/myapp/index/comment/list', 'GET', NULL, '81');
INSERT INTO `b_op_log` VALUES (2441, '127.0.0.1', '2023-06-04 21:43:50.097217', '/myapp/index/resume/detail', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (2442, '127.0.0.1', '2023-06-04 21:43:50.147504', '/myapp/index/post/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (2443, '127.0.0.1', '2023-06-04 21:43:54.388112', '/myapp/index/comment/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (2444, '127.0.0.1', '2023-06-04 21:43:54.431044', '/myapp/index/comment/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (2445, '127.0.0.1', '2023-06-04 21:43:56.843095', '/myapp/index/thing/addWishUser', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (2446, '127.0.0.1', '2023-06-04 21:43:56.876780', '/myapp/index/thing/detail', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (2447, '127.0.0.1', '2023-06-04 21:43:57.829112', '/myapp/index/thing/addCollectUser', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (2448, '127.0.0.1', '2023-06-04 21:43:57.867474', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (2449, '127.0.0.1', '2023-06-04 21:44:00.355950', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2450, '127.0.0.1', '2023-06-04 21:44:00.379040', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (2451, '127.0.0.1', '2023-06-04 21:44:00.382544', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (2452, '127.0.0.1', '2023-06-04 21:44:00.385950', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (2453, '127.0.0.1', '2023-06-04 21:44:05.178081', '/myapp/index/resume/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (2454, '127.0.0.1', '2023-06-04 21:44:05.205004', '/myapp/index/resume/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2455, '127.0.0.1', '2023-06-04 21:44:06.667127', '/myapp/index/post/list_user_post_api', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2456, '127.0.0.1', '2023-06-04 21:44:07.973028', '/myapp/index/comment/listMyComments', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2457, '127.0.0.1', '2023-06-04 21:44:09.365510', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2458, '127.0.0.1', '2023-06-04 21:44:13.580263', '/myapp/index/company/list_user_company_api', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2459, '127.0.0.1', '2023-06-04 21:44:15.926672', '/myapp/index/company/list_user_company_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2460, '127.0.0.1', '2023-06-04 21:44:25.724360', '/myapp/index/company/create', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (2461, '127.0.0.1', '2023-06-04 21:44:25.746700', '/myapp/index/company/list_user_company_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2462, '127.0.0.1', '2023-06-04 21:44:27.440889', '/myapp/index/company/update', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (2463, '127.0.0.1', '2023-06-04 21:44:27.464280', '/myapp/index/company/list_user_company_api', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (2464, '127.0.0.1', '2023-06-04 21:44:35.147336', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (2465, '127.0.0.1', '2023-06-04 21:44:35.150856', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2466, '127.0.0.1', '2023-06-04 21:44:35.158414', '/myapp/index/thing/list_user_thing', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (2467, '127.0.0.1', '2023-06-04 21:44:53.313361', '/myapp/index/company/list_user_company_api', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (2468, '127.0.0.1', '2023-06-04 21:44:53.400089', '/myapp/index/thing/create', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (2469, '127.0.0.1', '2023-06-04 21:44:53.444875', '/myapp/index/thing/list_user_thing', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2470, '127.0.0.1', '2023-06-04 21:44:57.168059', '/myapp/index/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (2471, '127.0.0.1', '2023-06-04 21:44:57.210402', '/myapp/index/thing/list_user_thing', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (2472, '127.0.0.1', '2023-06-04 21:44:58.957629', '/myapp/index/company/list_user_company_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (2473, '127.0.0.1', '2023-06-04 21:44:59.001820', '/myapp/index/post/list_company_post_api', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (2474, '127.0.0.1', '2023-06-04 21:45:06.454584', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (2475, '127.0.0.1', '2023-06-04 21:45:06.456587', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (2476, '127.0.0.1', '2023-06-04 21:45:06.616712', '/myapp/admin/tag/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (2477, '127.0.0.1', '2023-06-04 21:45:12.856733', '/myapp/admin/thing/update', 'POST', NULL, '8');
INSERT INTO `b_op_log` VALUES (2478, '127.0.0.1', '2023-06-04 21:45:19.187520', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2479, '127.0.0.1', '2023-06-04 21:45:19.195312', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2480, '127.0.0.1', '2023-06-04 21:45:19.201304', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (2481, '127.0.0.1', '2023-06-04 21:45:33.830279', '/myapp/index/thing/update', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (2482, '127.0.0.1', '2023-06-04 21:45:33.865184', '/myapp/index/thing/list_user_thing', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (2483, '127.0.0.1', '2023-06-04 21:45:39.083077', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2484, '127.0.0.1', '2023-06-04 21:45:39.091271', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2485, '127.0.0.1', '2023-06-04 21:45:39.242147', '/myapp/admin/classification/list', 'GET', NULL, '163');
INSERT INTO `b_op_log` VALUES (2486, '127.0.0.1', '2023-06-04 21:45:45.015216', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2487, '127.0.0.1', '2023-06-04 21:45:46.390138', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (2488, '127.0.0.1', '2023-06-04 21:45:46.398194', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (2489, '127.0.0.1', '2023-06-04 21:45:46.552425', '/myapp/admin/tag/list', 'GET', NULL, '166');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------

-- ----------------------------
-- Table structure for b_order_log
-- ----------------------------
DROP TABLE IF EXISTS `b_order_log`;
CREATE TABLE `b_order_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_log_thing_id_7306f624_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_log_user_id_1003e839_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_log_thing_id_7306f624_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_log_user_id_1003e839_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_post
-- ----------------------------
DROP TABLE IF EXISTS `b_post`;
CREATE TABLE `b_post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `resume_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_post_company_id_cbf89a0e_fk_b_company_id`(`company_id`) USING BTREE,
  INDEX `b_post_thing_id_3bff8228_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_post_user_id_d324e8d6_fk_b_user_id`(`user_id`) USING BTREE,
  INDEX `b_post_resume_id_10767609_fk_b_resume_id`(`resume_id`) USING BTREE,
  CONSTRAINT `b_post_company_id_cbf89a0e_fk_b_company_id` FOREIGN KEY (`company_id`) REFERENCES `b_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_post_thing_id_3bff8228_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_post_user_id_d324e8d6_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_post_resume_id_10767609_fk_b_resume_id` FOREIGN KEY (`resume_id`) REFERENCES `b_resume` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_post
-- ----------------------------
INSERT INTO `b_post` VALUES (1, NOW(), 1, 1, 1, 1);
INSERT INTO `b_post` VALUES (2, NOW(), 1, 2, 1, 1);
INSERT INTO `b_post` VALUES (3, NOW(), 1, 6, 1, 1);
INSERT INTO `b_post` VALUES (4, NOW(), 2, 3, 2, 2);
INSERT INTO `b_post` VALUES (5, NOW(), 2, 7, 2, 2);
INSERT INTO `b_post` VALUES (6, NOW(), 1, 8, 2, 2);

-- ----------------------------
-- Table structure for b_resume
-- ----------------------------
DROP TABLE IF EXISTS `b_resume`;
CREATE TABLE `b_resume`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `raw` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `education` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_resume_user_id_11c0024d_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_resume_user_id_11c0024d_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_resume
-- ----------------------------
INSERT INTO `b_resume` VALUES (4, '', '张三', '男', '2000-01-09', '', 1, '本科', '厦门理工学院', 'hakjshda@qq.com', '11111111111');
INSERT INTO `b_resume` VALUES (5, '', '李四', '女', NULL, '', 2, '专科', '职业技术学院', NULL, '132224235411');

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (1, '远程工作', NOW());
INSERT INTO `b_tag` VALUES (2, '日结工资', NOW());
INSERT INTO `b_tag` VALUES (3, '长期合作', NOW());
INSERT INTO `b_tag` VALUES (4, '新手友好', NOW());

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `education` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `work_date` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `work_hours` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `work_expe` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  INDEX `b_thing_company_id_c5f57876_fk_b_company_id`(`company_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_company_id_c5f57876_fk_b_company_id` FOREIGN KEY (`company_id`) REFERENCES `b_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '前端开发工程师', '', '使用vue', '本科', '13800138000', '2025-06-01至2025-08-31', '09:00-18:00', '0', NOW(), 1, 2, 0, 2, 1, '北京', '400-600/天','1-3年',1,4);
INSERT INTO `b_thing` VALUES (2, 'Python数据爬虫', '', '会python', '专科', '400-100-2001', '长期有效', '自主安排', '0', NOW(), 0, 1, 1, 3, 1, '北京', '500-800/天','1年',1,4);
INSERT INTO `b_thing` VALUES (3, '临时分拣员', '', '能吃苦', '不限', '13812345678', '2025-11-01至2025-11-15', '08:00-20:00', '0', NOW(), 0, 2, 1, 4, 4, '北京', '200-300/天','不限',2,7);
INSERT INTO `b_thing` VALUES (4, '家庭保洁服务', '', '有经验', '不限', '020-88889999', '提前1天预约', '按次结算', '0', NOW(), 1, 2, 0, 3, 2, '北京', '150-250/次','不限',2,7);
INSERT INTO `b_thing` VALUES (5, '英语家教（小学）', '', '有教室资格证', '专科', '18566667777', '周末及假期', '2小时/次', '0', NOW(), 0, 2, 2, 4, 3, '北京', '100-150/小时','不限',2,7);
INSERT INTO `b_thing` VALUES (6, 'UI设计师（兼职）', '', '会UI设计', '本科', '0571-88112233', '周末及假期', '弹性工作制', '0', NOW(), 0, 7, 2, 6, 5, '哈尔滨', '300-500/天','1-2年',1,4);
INSERT INTO `b_thing` VALUES (7, '双十一快递临时工', '', '时间充足', '不限', '400-300-4002', '2025-11-10至2025-11-20', '三班倒', '0', NOW(), 0, 5, 3, 6, 2, '上海', '300-400/天','不限',2,7);
INSERT INTO `b_thing` VALUES (8, '移动端测试工程师', '', '会使用测试工具', '本科', '010-66558899', '实习期3个月', '周一至周五', '0', NOW(), 1, 6, 2, 7, 1, '广州', '350-550/天','1-3年',1,4);
INSERT INTO `b_thing` VALUES (9, '钢琴陪练老师', '', '钢琴十级', '不限', '19180808888', '周末全天', '1.5小时/次', '0', NOW(), 0, 7, 2, 4, 3, '广州', '80-120/小时','不限',2,7);
INSERT INTO `b_thing` VALUES (10, '活动摄影跟拍', '', '会摄影', '不限', '17782345678', '周末全天', '按场次计算', '0', NOW(), 0, 1, 1, 1, 5, '青岛', '500-800/场','2-3年',1,4);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (1, 4, 1);
INSERT INTO `b_thing_collect` VALUES (2, 7, 1);
INSERT INTO `b_thing_collect` VALUES (3, 4, 1);
INSERT INTO `b_thing_collect` VALUES (4, 7, 2);
INSERT INTO `b_thing_collect` VALUES (5, 8, 2);
INSERT INTO `b_thing_collect` VALUES (6, 8, 2);

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------
INSERT INTO `b_thing_tag` (`id`, `thing_id`, `tag_id`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 2),
(4, 4, 4),
(5, 5, 4),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 4),
(10, 10, 1);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (1, 4, 1);
INSERT INTO `b_thing_wish` VALUES (2, 7, 1);
INSERT INTO `b_thing_wish` VALUES (3, 10, 1);
INSERT INTO `b_thing_wish` VALUES (4, 1, 2);
INSERT INTO `b_thing_wish` VALUES (5, 7, 2);
INSERT INTO `b_thing_wish` VALUES (6, 8, 2);
INSERT INTO `b_thing_wish` VALUES (7, 8, 2);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'user1', '098f6bcd4621d373cade4e832627b4f6', '2', '0', '张三', '', '13800000001', 'zhangsan@test.com', 'M', 'f', NOW(), 0, NULL, 0, NULL, '098f6bcd4621d373cade4e832627b4f6', '2');
INSERT INTO `b_user` VALUES (2, 'admin111', 'bbad8d72c1fac1d081727158807a8798', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-02 19:05:46.387975', 0, NULL, 0, 'bbad8d72c1fac1d081727158807a8798', NULL, '2');
INSERT INTO `b_user` VALUES (3, 'user2', '08f8e0260c64418510cefb2b06eee5cd', '2', '0', NULL, '', '13800000002', 'lisi@test.com', 'F', NULL, NOW(), 0, NULL, 0, NULL, '08f8e0260c64418510cefb2b06eee5cd', NULL);
INSERT INTO `b_user` VALUES (4, 'company1', '9df62e693988eb4e1e1444ece0578579', '2', '0', '快客科技', '', '400-100-2001', 'kuaike@tech.com', NULL, NULL, NOW(), 0, NULL, 0, NULL, '9df62e693988eb4e1e1444ece0578579', NULL);
INSERT INTO `b_user` VALUES (5, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, NOW(), 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL, NULL);
INSERT INTO `b_user` VALUES (6, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, NOW(), 0, NULL, 0, NULL, NULL, NULL);
INSERT INTO `b_user` VALUES (7, 'company2', '11ddbaf3386aea1f2974eee984542152', '2', '0', '极速物流', '', '400-300-4002', 'jisu@logistics.com', NULL, NULL, NOW(), 0, NULL, 0, NULL, '11ddbaf3386aea1f2974eee984542152', NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'company');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'orderlog');
INSERT INTO `django_content_type` VALUES (23, 'myapp', 'post');
INSERT INTO `django_content_type` VALUES (22, 'myapp', 'resume');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-06-02 19:04:25.563604');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-06-02 19:04:25.943712');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-06-02 19:04:26.033337');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-06-02 19:04:26.048854');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-02 19:04:26.061431');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-06-02 19:04:26.165624');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-06-02 19:04:26.239894');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-06-02 19:04:26.307832');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-06-02 19:04:26.322727');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-06-02 19:04:26.390448');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-06-02 19:04:26.398460');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-02 19:04:26.413779');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-06-02 19:04:26.486604');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-02 19:04:26.562823');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-06-02 19:04:26.638508');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-06-02 19:04:26.651738');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-02 19:04:26.712544');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-06-02 19:04:27.680705');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_auto_20230601_1911', '2023-06-02 19:04:28.019819');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_thing_user', '2023-06-02 19:04:28.087512');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20230601_1929', '2023-06-02 19:04:28.402993');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_delete_record', '2023-06-02 19:04:28.424033');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2023-06-02 19:04:28.487306');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_auto_20230603_1111', '2023-06-03 11:12:03.047752');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0007_auto_20230603_1350', '2023-06-03 13:51:02.130135');
INSERT INTO `django_migrations` VALUES (26, 'myapp', '0008_user_job_role', '2023-06-03 14:24:52.724590');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0009_auto_20230603_1615', '2023-06-03 16:15:22.728566');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
