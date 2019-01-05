/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : test11

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2018-12-29 16:21:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add address', '7', 'add_address');
INSERT INTO `auth_permission` VALUES ('20', 'Can change address', '7', 'change_address');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete address', '7', 'delete_address');
INSERT INTO `auth_permission` VALUES ('22', 'Can add carts', '8', 'add_carts');
INSERT INTO `auth_permission` VALUES ('23', 'Can change carts', '8', 'change_carts');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete carts', '8', 'delete_carts');
INSERT INTO `auth_permission` VALUES ('25', 'Can add indent', '9', 'add_indent');
INSERT INTO `auth_permission` VALUES ('26', 'Can change indent', '9', 'change_indent');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete indent', '9', 'delete_indent');
INSERT INTO `auth_permission` VALUES ('28', 'Can add indentss', '10', 'add_indentss');
INSERT INTO `auth_permission` VALUES ('29', 'Can change indentss', '10', 'change_indentss');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete indentss', '10', 'delete_indentss');
INSERT INTO `auth_permission` VALUES ('31', 'Can add seller', '11', 'add_seller');
INSERT INTO `auth_permission` VALUES ('32', 'Can change seller', '11', 'change_seller');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete seller', '11', 'delete_seller');
INSERT INTO `auth_permission` VALUES ('34', 'Can add user', '12', 'add_user');
INSERT INTO `auth_permission` VALUES ('35', 'Can change user', '12', 'change_user');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete user', '12', 'delete_user');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'sqlapp', 'address');
INSERT INTO `django_content_type` VALUES ('8', 'sqlapp', 'carts');
INSERT INTO `django_content_type` VALUES ('9', 'sqlapp', 'indent');
INSERT INTO `django_content_type` VALUES ('10', 'sqlapp', 'indentss');
INSERT INTO `django_content_type` VALUES ('11', 'sqlapp', 'seller');
INSERT INTO `django_content_type` VALUES ('12', 'sqlapp', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-11-02 01:27:15');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-11-02 01:27:16');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-11-02 01:27:16');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-11-02 01:27:16');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-11-02 01:27:16');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-11-02 01:27:16');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-11-02 01:27:17');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-11-02 01:27:17');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-11-02 01:27:17');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-11-02 01:27:17');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-11-02 01:27:17');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2018-11-02 01:27:17');
INSERT INTO `django_migrations` VALUES ('13', 'sessions', '0001_initial', '2018-11-02 01:27:17');
INSERT INTO `django_migrations` VALUES ('14', 'sqlapp', '0001_initial', '2018-11-02 01:27:17');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('00p98kwntx9sychpngnpwvqg8u89p32q', 'MDFhODNhZTI4MzdhOTUyY2VmMTdlZWIwNDAxYzE0ZTQwOTliYTljNTp7InVzZXJuYW1lIjoiXHU2YmRiXHU1ZmQ3XHU2ZDc3IiwicGFzc3dvcmQiOiIxMjM0NTYiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2018-12-30 08:15:41');
INSERT INTO `django_session` VALUES ('5gycq8nt7r7os5s70gkb1xr6nzr0ym21', 'MDFhODNhZTI4MzdhOTUyY2VmMTdlZWIwNDAxYzE0ZTQwOTliYTljNTp7InVzZXJuYW1lIjoiXHU2YmRiXHU1ZmQ3XHU2ZDc3IiwicGFzc3dvcmQiOiIxMjM0NTYiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2018-11-05 12:46:24');
INSERT INTO `django_session` VALUES ('5khgemyv7m4gfljtjlhmw59xfhvpvgw4', 'MDFhODNhZTI4MzdhOTUyY2VmMTdlZWIwNDAxYzE0ZTQwOTliYTljNTp7InVzZXJuYW1lIjoiXHU2YmRiXHU1ZmQ3XHU2ZDc3IiwicGFzc3dvcmQiOiIxMjM0NTYiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2018-11-13 10:40:18');
INSERT INTO `django_session` VALUES ('9pshv8ywioadazxqi90w90yab8i9r16o', 'MDFhODNhZTI4MzdhOTUyY2VmMTdlZWIwNDAxYzE0ZTQwOTliYTljNTp7InVzZXJuYW1lIjoiXHU2YmRiXHU1ZmQ3XHU2ZDc3IiwicGFzc3dvcmQiOiIxMjM0NTYiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2018-11-03 09:53:47');
INSERT INTO `django_session` VALUES ('cmvsweslju1whfgezmdx2etra2kwtbt2', 'MDFhODNhZTI4MzdhOTUyY2VmMTdlZWIwNDAxYzE0ZTQwOTliYTljNTp7InVzZXJuYW1lIjoiXHU2YmRiXHU1ZmQ3XHU2ZDc3IiwicGFzc3dvcmQiOiIxMjM0NTYiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2018-11-08 11:49:21');
INSERT INTO `django_session` VALUES ('eulhwxphmf3kbpjf22tm5m51hx4sl6if', 'MDFhODNhZTI4MzdhOTUyY2VmMTdlZWIwNDAxYzE0ZTQwOTliYTljNTp7InVzZXJuYW1lIjoiXHU2YmRiXHU1ZmQ3XHU2ZDc3IiwicGFzc3dvcmQiOiIxMjM0NTYiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2018-11-23 07:45:35');
INSERT INTO `django_session` VALUES ('ltjghgeqnv42tn3waiuil13th4ev48sd', 'MDFhODNhZTI4MzdhOTUyY2VmMTdlZWIwNDAxYzE0ZTQwOTliYTljNTp7InVzZXJuYW1lIjoiXHU2YmRiXHU1ZmQ3XHU2ZDc3IiwicGFzc3dvcmQiOiIxMjM0NTYiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2018-12-23 16:08:59');
INSERT INTO `django_session` VALUES ('ndq2zq418v179liv26870juu2cmvcfz1', 'MDFhODNhZTI4MzdhOTUyY2VmMTdlZWIwNDAxYzE0ZTQwOTliYTljNTp7InVzZXJuYW1lIjoiXHU2YmRiXHU1ZmQ3XHU2ZDc3IiwicGFzc3dvcmQiOiIxMjM0NTYiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2018-11-04 16:49:31');
INSERT INTO `django_session` VALUES ('wt3m7rh4tpzvriugchhm3eqqncyt5nyn', 'MDFhODNhZTI4MzdhOTUyY2VmMTdlZWIwNDAxYzE0ZTQwOTliYTljNTp7InVzZXJuYW1lIjoiXHU2YmRiXHU1ZmQ3XHU2ZDc3IiwicGFzc3dvcmQiOiIxMjM0NTYiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2018-11-15 04:42:04');
INSERT INTO `django_session` VALUES ('yi5mvoykyimk7psusrwjr22xtyxbom9j', 'ZWEzNjhhNTZiZWQwZjU4ZmYyMzlmZDhkNmM0ZTkyMzZkYjU5MTczMjp7InVzZXJuYW1lIjoiXHU1ZjIwXHU0ZTA5IiwicGFzc3dvcmQiOiIxMTExIiwiX3Nlc3Npb25fZXhwaXJ5Ijo4NjQwMH0=', '2018-11-08 06:23:55');
INSERT INTO `django_session` VALUES ('yly5fekfvp2cqsweknd7qouw2izxd2jy', 'MDFhODNhZTI4MzdhOTUyY2VmMTdlZWIwNDAxYzE0ZTQwOTliYTljNTp7InVzZXJuYW1lIjoiXHU2YmRiXHU1ZmQ3XHU2ZDc3IiwicGFzc3dvcmQiOiIxMjM0NTYiLCJfc2Vzc2lvbl9leHBpcnkiOjg2NDAwfQ==', '2018-11-08 00:55:03');

-- ----------------------------
-- Table structure for sqlapp_address
-- ----------------------------
DROP TABLE IF EXISTS `sqlapp_address`;
CREATE TABLE `sqlapp_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(9) NOT NULL,
  `addname` varchar(9) NOT NULL,
  `addres` varchar(100) NOT NULL,
  `addtel` bigint(20) NOT NULL,
  `addpost` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlapp_address
-- ----------------------------
INSERT INTO `sqlapp_address` VALUES ('1', '毛志海', '毛志海', '湖北孝感', '15171231640', '432100');

-- ----------------------------
-- Table structure for sqlapp_carts
-- ----------------------------
DROP TABLE IF EXISTS `sqlapp_carts`;
CREATE TABLE `sqlapp_carts` (
  `caid` int(11) NOT NULL AUTO_INCREMENT,
  `causname` varchar(9) NOT NULL,
  `cartsid` varchar(255) NOT NULL,
  `cartsellnum` varchar(100) NOT NULL,
  `cartname` varchar(50) NOT NULL,
  `cartimg` varchar(200) NOT NULL,
  `cartjiage` varchar(11) NOT NULL,
  `cartcolor` varchar(10) DEFAULT NULL,
  `cartsize` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`caid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlapp_carts
-- ----------------------------
INSERT INTO `sqlapp_carts` VALUES ('3', '毛志海', '12121111', '78', 'X.G.Rich休闲短裤男夏季沙滩五分裤男士短裤潮 深蓝色 29', '002.jpg', '29', '深蓝色', '3');
INSERT INTO `sqlapp_carts` VALUES ('4', '毛志海', '12121212', '20', '222222', '002.jpg', '30', '深蓝色', '1');

-- ----------------------------
-- Table structure for sqlapp_indent
-- ----------------------------
DROP TABLE IF EXISTS `sqlapp_indent`;
CREATE TABLE `sqlapp_indent` (
  `inname` varchar(9) NOT NULL,
  `indsellid` bigint(20) NOT NULL,
  `inseid` varchar(255) NOT NULL,
  PRIMARY KEY (`inname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlapp_indent
-- ----------------------------
INSERT INTO `sqlapp_indent` VALUES ('hk-胡', '9102889828408346', '2018101');
INSERT INTO `sqlapp_indent` VALUES ('lisi', '2773069016938144', '2018102');
INSERT INTO `sqlapp_indent` VALUES ('毛志海', '2725196063959909', '2018111');

-- ----------------------------
-- Table structure for sqlapp_indentss
-- ----------------------------
DROP TABLE IF EXISTS `sqlapp_indentss`;
CREATE TABLE `sqlapp_indentss` (
  `inid` varchar(9) NOT NULL,
  `inname` varchar(9) NOT NULL,
  `inaddres` varchar(100) NOT NULL,
  `inaddtel` bigint(20) NOT NULL,
  `inaddpost` int(11) NOT NULL,
  `indsellid` bigint(20) NOT NULL,
  `insellname` varchar(50) NOT NULL,
  `insellimg` varchar(200) NOT NULL,
  `inselljiage` int(11) NOT NULL,
  `insellcolor` varchar(10) DEFAULT NULL,
  `insellsize` varchar(20) DEFAULT NULL,
  `insellnum` int(11) NOT NULL,
  PRIMARY KEY (`inid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlapp_indentss
-- ----------------------------

-- ----------------------------
-- Table structure for sqlapp_seller
-- ----------------------------
DROP TABLE IF EXISTS `sqlapp_seller`;
CREATE TABLE `sqlapp_seller` (
  `sellid` bigint(20) NOT NULL,
  `sellname` varchar(50) NOT NULL,
  `sellimg` varchar(200) NOT NULL,
  `selljiage` int(11) NOT NULL,
  `sellcolor` varchar(10) DEFAULT NULL,
  `sellsize` varchar(20) DEFAULT NULL,
  `sellnum` int(11) NOT NULL,
  `selltype` varchar(255) NOT NULL,
  `sellimgl1` varchar(255) NOT NULL,
  `sellimgm1` varchar(255) NOT NULL,
  `sellimgs1` varchar(255) NOT NULL,
  `sellcomtype` varchar(255) NOT NULL,
  `sellimgl2` varchar(255) NOT NULL,
  `sellimgm2` varchar(255) NOT NULL,
  `sellimgs2` varchar(255) NOT NULL,
  `sellimgl3` varchar(255) NOT NULL,
  `sellimgm3` varchar(255) NOT NULL,
  `sellimgs3` varchar(255) NOT NULL,
  `sellimgl4` varchar(255) NOT NULL,
  `sellimgm4` varchar(255) NOT NULL,
  `sellimgs4` varchar(255) NOT NULL,
  `sellbrand` varchar(255) NOT NULL,
  `selltime` varchar(255) NOT NULL,
  `sellweight` varchar(255) NOT NULL,
  `sellmade` varchar(255) NOT NULL,
  `sellcpu` varchar(255) NOT NULL,
  `selltouch` varchar(255) NOT NULL,
  `sellface` varchar(255) NOT NULL,
  `sellrun` varchar(255) NOT NULL,
  `sellcamera` varchar(255) NOT NULL,
  `sellimage1` varchar(255) NOT NULL,
  `sellimage2` varchar(255) NOT NULL,
  `sellimage3` varchar(255) NOT NULL,
  PRIMARY KEY (`sellid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlapp_seller
-- ----------------------------
INSERT INTO `sqlapp_seller` VALUES ('2018101', '小米8 透明探索版', 'mi8tsb.jpg', '3699', '透明探索版', '8+128G全网通', '999', 'phone', 'mi8tsb_l1.jpg', 'mi8tsb_m1.jpg', 'mi8tsb_s1.jpg', 'mi', 'mi8tsb_l2.jpg', 'mi8tsb_m2.jpg', 'mi8tsb_s2.jpg', 'mi8tsb_l3.jpg', 'mi8tsb_m3.jpg', 'mi8tsb_s3.jpg', 'mi8tsb_l4.jpg', 'mi8tsb_m4.jpg', 'mi8tsb_s4.jpg', '小米', '2018-09-5', '177g', '中国大陆', '骁龙845 最高主频 2.8GHz Adreno 630 ', '压感屏幕指纹识别', '3D结构光人脸识别', '8GB LPDDR4x 双通道大内存 128GB', 'AI 超感光双摄 DxO超百分相机', 'mi8tsbi1.jpg', 'mi8tsbi2.jpg', 'mi8tsbi3.jpg');
INSERT INTO `sqlapp_seller` VALUES ('2018102', '小米MIX 2S翡翠绿版', 'mix2s.jpg', '3999', '翡翠绿版', '8+256G全网通', '999', 'phone', 'mix2s_l1.jpg', 'mix2s_m1.jpg', 'mix2s_s1.jpg', 'mi', 'mix2s_l2.jpg', 'mix2s_m2.jpg', 'mix2s_s2.jpg', 'mix2s_l3.jpg', 'mix2s_m3.jpg', 'mix2s_s3.jpg', 'mix2s_l4.jpg', 'mix2s_m4.jpg', 'mix2s_s4.jpg', '小米', '2018-08-14', '189g', '中国大陆', '骁龙845 最高主频 2.8GHz\r\nAdreno 630', '后置指纹解锁', '红外人脸识别', '8GB LPDDR4x 双通道大内存 256GB', 'AI 超感光双摄 DxO超百分相机', 'mix2sfcl_1.jpg', 'mix2sfcl_1.jpg', 'mix2sfcl_1.jpg');
INSERT INTO `sqlapp_seller` VALUES ('2018103', '小米8', 'mi8.jpg', '2599', '黑色', '6+64G全网通', '999', 'phone', 'mi8_l1.jpg', 'mi8_m1.jpg', 'mi8_s1.jpg', 'mi', 'mi8_l2.jpg', 'mi8_m2.jpg', 'mi8_s2.jpg', 'mi8_l3.jpg', 'mi8_m3.jpg', 'mi8_s3.jpg', 'mi8_l4.jpg', 'mi8_m4.jpg', 'mi8_s4.jpg', '小米', '2018-05-31', '175g', '中国大陆', '骁龙845 最高主频 2.8GHz\r\nAdreno 630', '后置指纹解锁', '红外人脸识别', '6GB LPDDR4x 双通道大内存 64GB', 'AI 超感光双摄 DxO超百分相机', 'mi8_11.jpg', 'mi8_11.jpg', 'mi8_11.jpg');
INSERT INTO `sqlapp_seller` VALUES ('2018104', 'Apple iPhone XS 64GB 全网通 双卡双待', 'iphoneXS.jpg', '8699', '金色', '4+64G双卡双待全网通', '999', 'phone', 'iphoneXS_l1.jpg', 'iphoneXS_m1.jpg', 'iphoneXS_s1.jpg', 'iphone', 'iphoneXS_l2.jpg', 'iphoneXS_m2.jpg', 'iphoneXS_s2.jpg', 'iphoneXS_l1.jpg', 'iphoneXS_m1.jpg', 'iphoneXS_s1.jpg', 'iphoneXS_l2.jpg', 'iphoneXS_m2.jpg', 'iphoneXS_s2.jpg', '苹果', '2018-09-19', '440g', '中国大陆', 'A12', '无', 'Face ID', '4GB + 64GB', '前置摄像700万像素，后置摄像1200万像素', 'iphoneXS_11.jpg', 'iphoneXS_11.jpg', 'iphoneXS_11.jpg');
INSERT INTO `sqlapp_seller` VALUES ('2018105', 'Apple iPhone XR 64GB 全网通 双卡双待', 'iphoneXR.jpg', '6499', '蓝色', '3+64G全网通', '999', 'phone', 'iphoneXR_l1.jpg', 'iphoneXR_m1.jpg', 'iphoneXR_s1.jpg', 'iphone', 'iphoneXR_l2.jpg', 'iphoneXR_m2.jpg', 'iphoneXR_s2.jpg', 'iphoneXR_l1.jpg', 'iphoneXR_m1.jpg', 'iphoneXR_s1.jpg', 'iphoneXR_l2.jpg', 'iphoneXR_m2.jpg', 'iphoneXR_s2.jpg', '苹果', '2018-09-19', '194g', '中国大陆', 'A12', '无', 'Face ID', '3GB + 64GB', '前置摄像700万像素，后置摄像1200万像素', 'iphoneXR_11.jpg', 'iphoneXR_11.jpg', 'iphoneXR_11.jpg');
INSERT INTO `sqlapp_seller` VALUES ('2018106', 'iPhone XS Max 64GB 全网通 双卡双待', 'iphoneXS.jpg', '9599', '金色', '4+256G全网通', '999', 'phone', 'iphoneXS_l1.jpg', 'iphoneXS_m1.jpg', 'iphoneXS_s1.jpg', 'iphone', 'iphoneXS_l2.jpg', 'iphoneXS_m2.jpg', 'iphoneXS_s2.jpg', 'iphoneXS_l1.jpg', 'iphoneXS_m1.jpg', 'iphoneXS_s1.jpg', 'iphoneXS_l2.jpg', 'iphoneXS_m2.jpg', 'iphoneXS_s2.jpg', '苹果', '2018-09-19', '440g', '中国大陆', 'A12', '无', 'Face ID', '4GB + 256GB', '前置摄像700万像素，后置摄像1200万像素', 'iphoneXS_11.jpg', 'iphoneXS_11.jpg', 'iphoneXS_11.jpg');
INSERT INTO `sqlapp_seller` VALUES ('2018107', '小米8 SE', 'mi8SE.jpg', '2199', '黑色', '6+128G全网通', '999', 'phone', 'mi8SE_l1.jpg', 'mi8SE_m1.jpg', 'mi8SE_s1.jpg', 'mi', 'mi8SE_l2.jpg', 'mi8SE_m2.jpg', 'mi8SE_s2.jpg', 'mi8SE_l3.jpg', 'mi8SE_m3.jpg', 'mi8SE_s3.jpg', 'mi8SE_l4.jpg', 'mi8SE_m4.jpg', 'mi8SE_s4.jpg', '小米', '2018-05-31', '164g', '中国大陆', '骁龙710 全球首发', '后置指纹解锁', '面部识别功能', '6GB LPDDR4x 双通道大内存  128GB eMMC 5.1 机身存储', 'AI 超感光双摄', 'mi8SE_11.jpg', 'mi8SE_11.jpg', 'mi8SE_11.jpg');
INSERT INTO `sqlapp_seller` VALUES ('2018108', '黑鲨游戏手机 液冷更快', 'miblacksha.jpg', '2899', '极夜黑', '6+64G全网通', '999', 'phone', 'miblacksha_l1.jpg', 'miblacksha_m1.jpg', 'miblacksha_s1.jpg', 'mi', 'miblacksha_l2.jpg', 'miblacksha_m2.jpg', 'miblacksha_s2.jpg', 'miblacksha_l3.jpg', 'miblacksha_m3.jpg', 'miblacksha_s3.jpg', 'miblacksha_l4.jpg', 'miblacksha_m4.jpg', 'miblacksha_s4.jpg', '小米', '2018-04-13', '190g', '中国大陆', '骁龙845 最高主频 2.8GHz\r\nAdreno 630', '前置指纹解锁', '面部识别功能', '6GB LPDDR4x 双通道大内存 64GB', 'AI 超感光双摄', 'miblacksha0.jpg', 'miblacksha0.jpg', 'miblacksha0.jpg');
INSERT INTO `sqlapp_seller` VALUES ('2018109', '小米6X', 'mi6x.jpg', '1799', '赤焰红', '6+128G全网通', '999', 'phone', 'mi6x_l1.jpg', 'mi6x_m1.jpg', 'mi6x_s1.jpg', 'mi', 'mi6x_l2.jpg', 'mi6x_m2.jpg', 'mi6x_s2.jpg', 'mi6x_l3.jpg', 'mi6x_m3.jpg', 'mi6x_s3.jpg', 'mi6x_l4.jpg', 'mi6x_m4.jpg', 'mi6x_s4.jpg', '小米', '2018-04-25', '168g', '中国大陆', '骁龙660 AIE处理器', '后置指纹解锁', '面部识别功能', '4GB/6GB LPDDR4x 双通道大内存 128G', '前后 2000 万 拍人更美', 'mi6X_11.jpg', 'mi6X_11.jpg', 'mi6X_11.jpg');
INSERT INTO `sqlapp_seller` VALUES ('2018110', '小米Max 3', 'max3.jpg', '1999', '金色', '6+128G全网通', '999', 'phone', 'max3_l1.jpg', 'max3_m1.jpg', 'max3_s1.jpg', 'mi', 'max3_l2.jpg', 'max3_m2.jpg', 'max3_s2.jpg', 'max3_l3.jpg', 'max3_m3.jpg', 'max3_s3.jpg', 'max3_l4.jpg', 'max3_m4.jpg', 'max3_s4.jpg', '小米', '2018-07', '221g', '中国大陆', '骁龙 636 处理器，最高主频 1.8GHz\r\n Adreno™ 509 ', '后置指纹解锁', '面部识别功能', '6GB+128GB  LPDDR4x 双通道大内存，eMMC 5.1 高速闪存', '大像素 AI 双摄', 'xiaomimax3_11.jpg', 'xiaomimax3_11.jpg', 'xiaomimax3_11.jpg');
INSERT INTO `sqlapp_seller` VALUES ('2018111', '华为 HUAWEI Mate RS 保时捷设计', 'hwmates.jpg', '9999', '选黑色', '6+256G全网通', '999', 'phone', 'hwmates_l1.jpg', 'hwmates_m1.jpg', 'hwmates_s1.jpg', 'huwei', 'hwmates_l2.jpg', 'hwmates_m2.jpg', 'hwmates_s2.jpg', 'hwmates_l3.jpg', 'hwmates_m3.jpg', 'hwmates_s3.jpg', 'hwmates_l1.jpg', 'hwmates_m1.jpg', 'hwmates_s1.jpg', '华为', '2018-04-12', '200.00g', '中国大陆', '麒麟970', '后置指纹识别', '红外人脸识别', '6GB LPDDR4x 双通道大内存 256GB', '四摄（后三摄）4000万像素＋2000万像素+800万像素', 'hwMate RS_11.jpg', 'hwMate RS_11.jpg', 'hwMate RS_11.jpg');

-- ----------------------------
-- Table structure for sqlapp_us
-- ----------------------------
DROP TABLE IF EXISTS `sqlapp_us`;
CREATE TABLE `sqlapp_us` (
  `username` varchar(9) NOT NULL,
  `usertel` bigint(20) NOT NULL,
  `password` varchar(17) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlapp_us
-- ----------------------------
INSERT INTO `sqlapp_us` VALUES ('hk-胡', '13477755201', 'hk1326267549');
INSERT INTO `sqlapp_us` VALUES ('lisi', '12345678910', '123456');
INSERT INTO `sqlapp_us` VALUES ('mzh-毛', '15171231640', 'mzh942669366');
INSERT INTO `sqlapp_us` VALUES ('zhangsan', '13477755201', '123456');

-- ----------------------------
-- Table structure for sqlapp_user
-- ----------------------------
DROP TABLE IF EXISTS `sqlapp_user`;
CREATE TABLE `sqlapp_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(12) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlapp_user
-- ----------------------------
INSERT INTO `sqlapp_user` VALUES ('张三', '1111');
INSERT INTO `sqlapp_user` VALUES ('毛志海', '123456');
