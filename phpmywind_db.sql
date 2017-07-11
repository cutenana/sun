/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phpmywind_db

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-07-04 23:05:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmw_admanage
-- ----------------------------
DROP TABLE IF EXISTS `pmw_admanage`;
CREATE TABLE `pmw_admanage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '信息id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `classid` smallint(5) unsigned NOT NULL COMMENT '投放范围(广告位)',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '所属广告位父id',
  `parentstr` varchar(80) NOT NULL COMMENT '所属广告位父id字符串',
  `title` varchar(30) NOT NULL COMMENT '广告标识',
  `admode` char(10) NOT NULL COMMENT '展示模式',
  `picurl` varchar(100) NOT NULL COMMENT '上传内容地址',
  `adtext` text NOT NULL COMMENT '展示内容',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `posttime` int(10) unsigned NOT NULL COMMENT '提交时间',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_admanage
-- ----------------------------
INSERT INTO `pmw_admanage` VALUES ('1', '1', '1', '0', '0,', 'QQ电脑管家', 'image', '', '', 'http://guanjia.qq.com/', '1', '1326771010', 'true');
INSERT INTO `pmw_admanage` VALUES ('2', '1', '2', '0', '0,', '迅雷看看', 'image', '', '', 'http://www.xunlei.com/', '2', '1326771024', 'true');

-- ----------------------------
-- Table structure for pmw_admin
-- ----------------------------
DROP TABLE IF EXISTS `pmw_admin`;
CREATE TABLE `pmw_admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '信息id',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `nickname` char(32) NOT NULL COMMENT '昵称',
  `question` tinyint(1) unsigned NOT NULL COMMENT '登录提问',
  `answer` varchar(50) NOT NULL COMMENT '登录回答',
  `levelname` tinyint(1) unsigned NOT NULL COMMENT '级别',
  `checkadmin` enum('true','false') NOT NULL COMMENT '审核',
  `loginip` char(20) NOT NULL COMMENT '登录IP',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_admin
-- ----------------------------
INSERT INTO `pmw_admin` VALUES ('1', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', '', '0', '', '1', 'true', '0.0.0.0', '1499146512');

-- ----------------------------
-- Table structure for pmw_admingroup
-- ----------------------------
DROP TABLE IF EXISTS `pmw_admingroup`;
CREATE TABLE `pmw_admingroup` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理组id',
  `groupname` varchar(30) NOT NULL COMMENT '管理组名称',
  `description` text NOT NULL COMMENT '管理组描述',
  `groupsite` varchar(30) NOT NULL COMMENT '默认进入站',
  `checkinfo` set('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_admingroup
-- ----------------------------
INSERT INTO `pmw_admingroup` VALUES ('1', '超级管理员', '超级管理员组', '1', 'true');
INSERT INTO `pmw_admingroup` VALUES ('2', '站点管理员', '站点管理员组', '1', 'true');
INSERT INTO `pmw_admingroup` VALUES ('3', '文章发布员', '文章发布员组', '1', 'true');

-- ----------------------------
-- Table structure for pmw_adminnotes
-- ----------------------------
DROP TABLE IF EXISTS `pmw_adminnotes`;
CREATE TABLE `pmw_adminnotes` (
  `uname` varchar(30) NOT NULL COMMENT '用户名',
  `body` mediumtext NOT NULL COMMENT '便签内容',
  `posttime` int(10) unsigned NOT NULL COMMENT '提交时间',
  `postip` varchar(30) NOT NULL COMMENT '提交IP',
  PRIMARY KEY (`uname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_adminnotes
-- ----------------------------

-- ----------------------------
-- Table structure for pmw_adminprivacy
-- ----------------------------
DROP TABLE IF EXISTS `pmw_adminprivacy`;
CREATE TABLE `pmw_adminprivacy` (
  `groupid` tinyint(3) unsigned NOT NULL COMMENT '所属管理组id',
  `siteid` tinyint(1) unsigned NOT NULL COMMENT '站点id',
  `model` varchar(30) NOT NULL COMMENT '管理模块',
  `classid` int(10) NOT NULL COMMENT '类型id',
  `action` varchar(10) NOT NULL COMMENT '可执行操作'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_adminprivacy
-- ----------------------------
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'upload_filemgr_sql', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'web_config', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'admin', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'database_backup', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'infoclass', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'info', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'infolist', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'infoimg', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'soft', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'goodstype', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'goods', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '0', 'infoclass', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '0', 'info', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '0', 'infolist', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '0', 'infoimg', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '0', 'soft', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '0', 'goodstype', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '0', 'goods', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '13', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '13', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '13', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '13', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '12', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '12', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '12', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '12', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '11', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '11', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '11', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '11', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '10', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '10', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '10', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '10', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '9', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '9', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '9', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '9', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '8', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '8', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '8', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '8', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '7', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '7', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '7', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '7', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '6', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '6', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '6', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '6', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '5', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '5', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '5', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '5', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '4', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '4', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '4', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '4', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '3', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '3', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '3', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '3', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '2', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '2', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '2', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '2', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '1', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '1', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '1', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '1', 'category', '1', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'message', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'weblink', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'job', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('2', '0', 'nav', '0', 'all');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '1', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '1', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '1', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '1', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '2', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '2', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '2', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '2', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '3', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '3', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '3', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '3', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '4', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '4', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '4', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '4', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '5', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '5', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '5', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '5', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '6', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '6', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '6', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '6', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '7', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '7', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '7', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '7', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '8', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '8', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '8', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '8', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '9', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '9', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '9', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '9', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '10', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '10', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '10', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '10', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '11', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '11', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '11', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '11', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '12', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '12', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '12', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '12', 'del');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '13', 'list');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '13', 'add');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '13', 'update');
INSERT INTO `pmw_adminprivacy` VALUES ('3', '1', 'category', '13', 'del');

-- ----------------------------
-- Table structure for pmw_adtype
-- ----------------------------
DROP TABLE IF EXISTS `pmw_adtype`;
CREATE TABLE `pmw_adtype` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告位id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '上级id',
  `parentstr` varchar(50) NOT NULL COMMENT '上级id字符串',
  `classname` varchar(30) NOT NULL COMMENT '广告位名称',
  `width` smallint(5) unsigned NOT NULL COMMENT '广告位宽度',
  `height` smallint(5) unsigned NOT NULL COMMENT '广告位高度',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列顺序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_adtype
-- ----------------------------
INSERT INTO `pmw_adtype` VALUES ('1', '1', '0', '0,', '首页广告位', '1003', '80', '1', 'true');
INSERT INTO `pmw_adtype` VALUES ('2', '1', '0', '0,', '子页广告位', '100', '70', '2', 'true');

-- ----------------------------
-- Table structure for pmw_cascade
-- ----------------------------
DROP TABLE IF EXISTS `pmw_cascade`;
CREATE TABLE `pmw_cascade` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '级联组id',
  `groupname` varchar(30) NOT NULL COMMENT '级联组名称',
  `groupsign` varchar(30) NOT NULL COMMENT '级联组标识',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_cascade
-- ----------------------------
INSERT INTO `pmw_cascade` VALUES ('1', '地区', 'area', '1');
INSERT INTO `pmw_cascade` VALUES ('2', '星座', 'astro', '2');
INSERT INTO `pmw_cascade` VALUES ('3', '血型', 'bloodtype', '3');
INSERT INTO `pmw_cascade` VALUES ('4', '证件类型', 'cardtype', '4');
INSERT INTO `pmw_cascade` VALUES ('5', '安全问题', 'question', '5');
INSERT INTO `pmw_cascade` VALUES ('6', '行业分布', 'trade', '6');

-- ----------------------------
-- Table structure for pmw_cascadedata
-- ----------------------------
DROP TABLE IF EXISTS `pmw_cascadedata`;
CREATE TABLE `pmw_cascadedata` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '级联数据id',
  `dataname` char(30) NOT NULL COMMENT '级联数据名称',
  `datavalue` char(20) NOT NULL COMMENT '级联数据值',
  `datagroup` char(20) NOT NULL COMMENT '所属级联组',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `level` tinyint(1) unsigned NOT NULL COMMENT '级联数据层次',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_cascadedata
-- ----------------------------
INSERT INTO `pmw_cascadedata` VALUES ('20019', '澳门特别行政区', '17500', 'area', '17500', '0');
INSERT INTO `pmw_cascadedata` VALUES ('20018', '香港特别行政区', '17000', 'area', '17000', '0');
INSERT INTO `pmw_cascadedata` VALUES ('20017', '台湾省', '16500', 'area', '16500', '0');
INSERT INTO `pmw_cascadedata` VALUES ('20016', '图木舒克市', '16015.3', 'area', '16015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20015', '阿拉尔市', '16015.2', 'area', '16015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20014', '石河子市', '16015.1', 'area', '16015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20013', '省直辖行政单位', '16015', 'area', '16015', '1');
INSERT INTO `pmw_cascadedata` VALUES ('20012', '吉木乃县', '16014.7', 'area', '16015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20011', '青河县', '16014.6', 'area', '16015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20010', '哈巴河县', '16014.5', 'area', '16015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20009', '福海县', '16014.4', 'area', '16014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20008', '富蕴县', '16014.3', 'area', '16014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20007', '布尔津县', '16014.2', 'area', '16014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20006', '阿勒泰市', '16014.1', 'area', '16014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20005', '阿勒泰地区', '16014', 'area', '16014', '1');
INSERT INTO `pmw_cascadedata` VALUES ('20004', '和布克赛尔蒙古自治县', '16013.7', 'area', '16014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20003', '裕民县', '16013.6', 'area', '16014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20002', '托里县', '16013.5', 'area', '16014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20001', '沙湾县', '16013.4', 'area', '16013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('20000', '额敏县', '16013.3', 'area', '16013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19999', '乌苏市', '16013.2', 'area', '16013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19998', '塔城市', '16013.1', 'area', '16013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19997', '塔城地区', '16013', 'area', '16013', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19996', '尼勒克县', '16012.10', 'area', '16012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19995', '特克斯县', '16012.9', 'area', '16013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19994', '昭苏县', '16012.8', 'area', '16013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19993', '新源县', '16012.7', 'area', '16013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19992', '巩留县', '16012.6', 'area', '16013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19991', '霍城县', '16012.5', 'area', '16013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19990', '察布查尔锡伯自治县', '16012.4', 'area', '16012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19989', '伊宁县', '16012.3', 'area', '16012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19988', '奎屯市', '16012.2', 'area', '16012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19987', '伊宁市', '16012.1', 'area', '16012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19986', '伊犁哈萨克自治州', '16012', 'area', '16012', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19985', '民丰县', '16011.8', 'area', '16012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19984', '于田县', '16011.7', 'area', '16012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19983', '策勒县', '16011.6', 'area', '16012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19982', '洛浦县', '16011.5', 'area', '16012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19981', '皮山县', '16011.4', 'area', '16011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19980', '墨玉县', '16011.3', 'area', '16011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19979', '和田县', '16011.2', 'area', '16011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19978', '和田市', '16011.1', 'area', '16011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19977', '和田地区', '16011', 'area', '16011', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19976', '塔什库尔干塔吉克自治县', '16010.12', 'area', '16010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19975', '巴楚县', '16010.11', 'area', '16010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19974', '伽师县', '16010.10', 'area', '16010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19973', '岳普湖县', '16010.9', 'area', '16011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19972', '麦盖提县', '16010.8', 'area', '16011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19971', '叶城县', '16010.7', 'area', '16011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19970', '莎车县', '16010.6', 'area', '16011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19969', '泽普县', '16010.5', 'area', '16011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19968', '英吉沙县', '16010.4', 'area', '16010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19967', '疏勒县', '16010.3', 'area', '16010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19966', '疏附县', '16010.2', 'area', '16010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19965', '喀什市', '16010.1', 'area', '16010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19964', '喀什地区', '16010', 'area', '16010', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19963', '乌恰县', '16009.4', 'area', '16009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19962', '阿合奇县', '16009.3', 'area', '16009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19961', '阿克陶县', '16009.2', 'area', '16009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19960', '阿图什市', '16009.1', 'area', '16009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19959', '克孜勒苏柯尔克孜自治州', '16009', 'area', '16009', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19958', '柯坪县', '16008.9', 'area', '16009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19957', '阿瓦提县', '16008.8', 'area', '16009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19956', '乌什县', '16008.7', 'area', '16009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19955', '拜城县', '16008.6', 'area', '16009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19954', '新和县', '16008.5', 'area', '16009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19953', '沙雅县', '16008.4', 'area', '16008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19952', '库车县', '16008.3', 'area', '16008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19951', '温宿县', '16008.2', 'area', '16008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19950', '阿克苏市', '16008.1', 'area', '16008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19949', '阿克苏地区', '16008', 'area', '16008', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19948', '博湖县', '16007.9', 'area', '16008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19947', '和硕县', '16007.8', 'area', '16008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19946', '和静县', '16007.7', 'area', '16008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19945', '焉耆回族自治县', '16007.6', 'area', '16008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19944', '且末县', '16007.5', 'area', '16008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19943', '若羌县', '16007.4', 'area', '16007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19942', '尉犁县', '16007.3', 'area', '16007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19941', '轮台县', '16007.2', 'area', '16007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19940', '库尔勒市', '16007.1', 'area', '16007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19939', '巴音郭楞蒙古自治州', '16007', 'area', '16007', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19938', '温泉县', '16006.3', 'area', '16006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19937', '精河县', '16006.2', 'area', '16006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19936', '博乐市', '16006.1', 'area', '16006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19935', '博尔塔拉蒙古自治州', '16006', 'area', '16006', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19934', '木垒哈萨克自治县', '16005.8', 'area', '16006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19933', '吉木萨尔县', '16005.7', 'area', '16006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19932', '奇台县', '16005.6', 'area', '16006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19931', '玛纳斯县', '16005.5', 'area', '16006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19930', '呼图壁县', '16005.4', 'area', '16005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19929', '米泉市', '16005.3', 'area', '16005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19928', '阜康市', '16005.2', 'area', '16005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19927', '昌吉市', '16005.1', 'area', '16005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19926', '昌吉回族自治州', '16005', 'area', '16005', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19925', '伊吾县', '16004.3', 'area', '16004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19924', '巴里坤哈萨克自治县', '16004.2', 'area', '16004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19923', '哈密市', '16004.1', 'area', '16004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19922', '哈密地区', '16004', 'area', '16004', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19921', '托克逊县', '16003.3', 'area', '16003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19920', '鄯善县', '16003.2', 'area', '16003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19919', '吐鲁番市', '16003.1', 'area', '16003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19918', '吐鲁番地区', '16003', 'area', '16003', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19917', '乌尔禾区', '16002.4', 'area', '16002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19916', '白碱滩区', '16002.3', 'area', '16002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19915', '克拉玛依区', '16002.2', 'area', '16002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19914', '独山子区', '16002.1', 'area', '16002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19913', '克拉玛依市', '16002', 'area', '16002', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19912', '乌鲁木齐县', '16001.8', 'area', '16002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19911', '东山区', '16001.7', 'area', '16002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19910', '达坂城区', '16001.6', 'area', '16002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19909', '头屯河区', '16001.5', 'area', '16002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19908', '水磨沟区', '16001.4', 'area', '16001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19907', '新市区', '16001.3', 'area', '16001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19906', '沙依巴克区', '16001.2', 'area', '16001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19905', '天山区', '16001.1', 'area', '16001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19904', '乌鲁木齐市', '16001', 'area', '16001', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19903', '新疆维吾尔自治区', '16000', 'area', '16000', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19902', '海原县', '15505.3', 'area', '15505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19901', '中宁县', '15505.2', 'area', '15505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19900', '沙坡头区', '15505.1', 'area', '15505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19899', '中卫市', '15505', 'area', '15505', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19898', '彭阳县', '15504.5', 'area', '15505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19897', '泾源县', '15504.4', 'area', '15504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19896', '隆德县', '15504.3', 'area', '15504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19895', '西吉县', '15504.2', 'area', '15504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19894', '原州区', '15504.1', 'area', '15504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19893', '固原市', '15504', 'area', '15504', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19892', '青铜峡市', '15503.4', 'area', '15503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19891', '同心县', '15503.3', 'area', '15503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19890', '盐池县', '15503.2', 'area', '15503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19889', '利通区', '15503.1', 'area', '15503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19888', '吴忠市', '15503', 'area', '15503', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19887', '平罗县', '15502.3', 'area', '15502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19886', '惠农区', '15502.2', 'area', '15502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19885', '大武口区', '15502.1', 'area', '15502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19884', '石嘴山市', '15502', 'area', '15502', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19883', '灵武市', '15501.6', 'area', '15502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19882', '贺兰县', '15501.5', 'area', '15502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19881', '永宁县', '15501.4', 'area', '15501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19880', '金凤区', '15501.3', 'area', '15501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19879', '西夏区', '15501.2', 'area', '15501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19878', '兴庆区', '15501.1', 'area', '15501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19877', '银川市', '15501', 'area', '15501', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19876', '宁夏回族自治区', '15500', 'area', '15500', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19875', '天峻县', '15008.5', 'area', '15009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19874', '都兰县', '15008.4', 'area', '15008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19873', '乌兰县', '15008.3', 'area', '15008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19872', '德令哈市', '15008.2', 'area', '15008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19871', '格尔木市', '15008.1', 'area', '15008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19870', '海西蒙古族藏族自治州', '15008', 'area', '15008', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19869', '曲麻莱县', '15007.6', 'area', '15008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19868', '囊谦县', '15007.5', 'area', '15008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19867', '治多县', '15007.4', 'area', '15007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19866', '称多县', '15007.3', 'area', '15007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19865', '杂多县', '15007.2', 'area', '15007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19864', '玉树县', '15007.1', 'area', '15007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19863', '玉树藏族自治州', '15007', 'area', '15007', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19862', '玛多县', '15006.6', 'area', '15007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19861', '久治县', '15006.5', 'area', '15007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19860', '达日县', '15006.4', 'area', '15006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19859', '甘德县', '15006.3', 'area', '15006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19858', '班玛县', '15006.2', 'area', '15006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19857', '玛沁县', '15006.1', 'area', '15006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19856', '果洛藏族自治州', '15006', 'area', '15006', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19855', '贵南县', '15005.5', 'area', '15006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19854', '兴海县', '15005.4', 'area', '15005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19853', '贵德县', '15005.3', 'area', '15005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19852', '同德县', '15005.2', 'area', '15005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19851', '共和县', '15005.1', 'area', '15005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19850', '海南藏族自治州', '15005', 'area', '15005', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19849', '河南蒙古族自治县', '15004.4', 'area', '15004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19848', '泽库县', '15004.3', 'area', '15004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19847', '尖扎县', '15004.2', 'area', '15004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19846', '同仁县', '15004.1', 'area', '15004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19845', '黄南藏族自治州', '15004', 'area', '15004', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19844', '刚察县', '15003.4', 'area', '15003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19843', '海晏县', '15003.3', 'area', '15003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19842', '祁连县', '15003.2', 'area', '15003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19841', '门源回族自治县', '15003.1', 'area', '15003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19840', '海北藏族自治州', '15003', 'area', '15003', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19839', '循化撒拉族自治县', '15002.6', 'area', '15003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19838', '化隆回族自治县', '15002.5', 'area', '15003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19837', '互助土族自治县', '15002.4', 'area', '15002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19836', '乐都县', '15002.3', 'area', '15002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19835', '民和回族土族自治县', '15002.2', 'area', '15002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19834', '平安县', '15002.1', 'area', '15002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19833', '海东地区', '15002', 'area', '15002', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19832', '湟源县', '15001.7', 'area', '15002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19831', '湟中县', '15001.6', 'area', '15002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19830', '大通回族土族自治县', '15001.5', 'area', '15002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19829', '城北区', '15001.4', 'area', '15001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19828', '城西区', '15001.3', 'area', '15001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19827', '城中区', '15001.2', 'area', '15001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19826', '城东区', '15001.1', 'area', '15001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19825', '西宁市', '15001', 'area', '15001', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19824', '青海省', '15000', 'area', '15000', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19823', '夏河县', '14514.8', 'area', '14515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19822', '碌曲县', '14514.7', 'area', '14515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19821', '玛曲县', '14514.6', 'area', '14515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19820', '迭部县', '14514.5', 'area', '14515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19819', '舟曲县', '14514.4', 'area', '14514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19818', '卓尼县', '14514.3', 'area', '14514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19817', '临潭县', '14514.2', 'area', '14514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19816', '合作市', '14514.1', 'area', '14514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19815', '甘南藏族自治州', '14514', 'area', '14514', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19814', '积石山保安族东乡族撒拉族自治县', '14513.8', 'area', '14514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19813', '东乡族自治县', '14513.7', 'area', '14514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19812', '和政县', '14513.6', 'area', '14514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19811', '广河县', '14513.5', 'area', '14514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19810', '永靖县', '14513.4', 'area', '14513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19809', '康乐县', '14513.3', 'area', '14513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19808', '临夏县', '14513.2', 'area', '14513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19807', '临夏市', '14513.1', 'area', '14513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19806', '临夏回族自治州', '14513', 'area', '14513', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19805', '两当县', '14512.9', 'area', '14513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19804', '徽　县', '14512.8', 'area', '14513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19803', '礼　县', '14512.7', 'area', '14513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19802', '西和县', '14512.6', 'area', '14513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19801', '康　县', '14512.5', 'area', '14513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19800', '宕昌县', '14512.4', 'area', '14512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19799', '文　县', '14512.3', 'area', '14512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19798', '成　县', '14512.2', 'area', '14512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19797', '武都区', '14512.1', 'area', '14512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19796', '陇南市', '14512', 'area', '14512', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19795', '岷　县', '14511.7', 'area', '14512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19794', '漳　县', '14511.6', 'area', '14512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19793', '临洮县', '14511.5', 'area', '14512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19792', '渭源县', '14511.4', 'area', '14511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19791', '陇西县', '14511.3', 'area', '14511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19790', '通渭县', '14511.2', 'area', '14511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19789', '安定区', '14511.1', 'area', '14511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19788', '定西市', '14511', 'area', '14511', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19787', '镇原县', '14510.8', 'area', '14511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19786', '宁　县', '14510.7', 'area', '14511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19785', '正宁县', '14510.6', 'area', '14511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19784', '合水县', '14510.5', 'area', '14511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19783', '华池县', '14510.4', 'area', '14510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19782', '环　县', '14510.3', 'area', '14510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19781', '庆城县', '14510.2', 'area', '14510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19780', '西峰区', '14510.1', 'area', '14510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19779', '庆阳市', '14510', 'area', '14510', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19778', '敦煌市', '14509.7', 'area', '14510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19777', '玉门市', '14509.6', 'area', '14510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19776', '阿克塞哈萨克族自治县', '14509.5', 'area', '14510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19775', '肃北蒙古族自治县', '14509.4', 'area', '14509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19774', '安西县', '14509.3', 'area', '14509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19773', '金塔县', '14509.2', 'area', '14509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19772', '肃州区', '14509.1', 'area', '14509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19771', '酒泉市', '14509', 'area', '14509', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19770', '静宁县', '14508.7', 'area', '14509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19769', '庄浪县', '14508.6', 'area', '14509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19768', '华亭县', '14508.5', 'area', '14509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19767', '崇信县', '14508.4', 'area', '14508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19766', '灵台县', '14508.3', 'area', '14508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19765', '泾川县', '14508.2', 'area', '14508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19764', '崆峒区', '14508.1', 'area', '14508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19763', '平凉市', '14508', 'area', '14508', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19762', '山丹县', '14507.6', 'area', '14508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19761', '高台县', '14507.5', 'area', '14508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19760', '临泽县', '14507.4', 'area', '14507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19759', '民乐县', '14507.3', 'area', '14507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19758', '肃南裕固族自治县', '14507.2', 'area', '14507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19757', '甘州区', '14507.1', 'area', '14507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19756', '张掖市', '14507', 'area', '14507', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19755', '天祝藏族自治县', '14506.4', 'area', '14506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19754', '古浪县', '14506.3', 'area', '14506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19753', '民勤县', '14506.2', 'area', '14506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19752', '凉州区', '14506.1', 'area', '14506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19751', '武威市', '14506', 'area', '14506', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19750', '张家川回族自治县', '14505.7', 'area', '14506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19749', '武山县', '14505.6', 'area', '14506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19748', '甘谷县', '14505.5', 'area', '14506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19747', '秦安县', '14505.4', 'area', '14505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19746', '清水县', '14505.3', 'area', '14505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19745', '北道区', '14505.2', 'area', '14505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19744', '秦城区', '14505.1', 'area', '14505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19743', '天水市', '14505', 'area', '14505', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19742', '景泰县', '14504.5', 'area', '14505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19741', '会宁县', '14504.4', 'area', '14504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19740', '靖远县', '14504.3', 'area', '14504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19739', '平川区', '14504.2', 'area', '14504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19738', '白银区', '14504.1', 'area', '14504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19737', '白银市', '14504', 'area', '14504', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19736', '永昌县', '14503.2', 'area', '14503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19735', '金川区', '14503.1', 'area', '14503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19734', '金昌市', '14503', 'area', '14503', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19733', '嘉峪关市', '14502', 'area', '14502', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19732', '榆中县', '14501.8', 'area', '14502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19731', '皋兰县', '14501.7', 'area', '14502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19730', '永登县', '14501.6', 'area', '14502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19729', '红古区', '14501.5', 'area', '14502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19728', '安宁区', '14501.4', 'area', '14501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19727', '西固区', '14501.3', 'area', '14501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19726', '七里河区', '14501.2', 'area', '14501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19725', '城关区', '14501.1', 'area', '14501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19724', '兰州市', '14501', 'area', '14501', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19723', '甘肃省', '14500', 'area', '14500', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19722', '柞水县', '14010.7', 'area', '14011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19721', '镇安县', '14010.6', 'area', '14011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19720', '山阳县', '14010.5', 'area', '14011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19719', '商南县', '14010.4', 'area', '14010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19718', '丹凤县', '14010.3', 'area', '14010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19717', '洛南县', '14010.2', 'area', '14010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19716', '商州区', '14010.1', 'area', '14010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19715', '商洛市', '14010', 'area', '14010', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19714', '白河县', '14009.10', 'area', '14009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19713', '旬阳县', '14009.9', 'area', '14010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19712', '镇坪县', '14009.8', 'area', '14010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19711', '平利县', '14009.7', 'area', '14010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19710', '岚皋县', '14009.6', 'area', '14010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19709', '紫阳县', '14009.5', 'area', '14010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19708', '宁陕县', '14009.4', 'area', '14009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19707', '石泉县', '14009.3', 'area', '14009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19706', '汉阴县', '14009.2', 'area', '14009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19705', '汉滨区', '14009.1', 'area', '14009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19704', '安康市', '14009', 'area', '14009', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19703', '子洲县', '14008.12', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19702', '清涧县', '14008.11', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19701', '吴堡县', '14008.10', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19700', '佳　县', '14008.9', 'area', '14009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19699', '米脂县', '14008.8', 'area', '14009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19698', '绥德县', '14008.7', 'area', '14009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19697', '定边县', '14008.6', 'area', '14009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19696', '靖边县', '14008.5', 'area', '14009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19695', '横山县', '14008.4', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19694', '府谷县', '14008.3', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19693', '神木县', '14008.2', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19692', '榆阳区', '14008.1', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19691', '榆林市', '14008', 'area', '14008', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19690', '佛坪县', '14007.11', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19689', '留坝县', '14007.10', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19688', '镇巴县', '14007.9', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19687', '略阳县', '14007.8', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19686', '宁强县', '14007.7', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19685', '勉　县', '14007.6', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19684', '西乡县', '14007.5', 'area', '14008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19683', '洋　县', '14007.4', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19682', '城固县', '14007.3', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19681', '南郑县', '14007.2', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19680', '汉台区', '14007.1', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19679', '汉中市', '14007', 'area', '14007', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19678', '黄陵县', '14006.13', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19677', '黄龙县', '14006.12', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19676', '宜川县', '14006.11', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19675', '洛川县', '14006.10', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19674', '富　县', '14006.9', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19673', '甘泉县', '14006.8', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19672', '吴旗县', '14006.7', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19671', '志丹县', '14006.6', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19670', '安塞县', '14006.5', 'area', '14007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19669', '子长县', '14006.4', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19668', '延川县', '14006.3', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19667', '延长县', '14006.2', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19666', '宝塔区', '14006.1', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19665', '延安市', '14006', 'area', '14006', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19664', '华阴市', '14005.11', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19663', '韩城市', '14005.10', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19662', '富平县', '14005.9', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19661', '白水县', '14005.8', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19660', '蒲城县', '14005.7', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19659', '澄城县', '14005.6', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19658', '合阳县', '14005.5', 'area', '14006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19657', '大荔县', '14005.4', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19656', '潼关县', '14005.3', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19655', '华　县', '14005.2', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19654', '临渭区', '14005.1', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19653', '渭南市', '14005', 'area', '14005', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19652', '兴平市', '14004.14', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19651', '武功县', '14004.13', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19650', '淳化县', '14004.12', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19649', '旬邑县', '14004.11', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19648', '长武县', '14004.10', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19647', '彬　县', '14004.9', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19646', '永寿县', '14004.8', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19645', '礼泉县', '14004.7', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19644', '乾　县', '14004.6', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19643', '泾阳县', '14004.5', 'area', '14005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19642', '三原县', '14004.4', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19641', '渭城区', '14004.3', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19640', '杨凌区', '14004.2', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19639', '秦都区', '14004.1', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19638', '咸阳市', '14004', 'area', '14004', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19637', '太白县', '14003.12', 'area', '14003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19636', '凤　县', '14003.11', 'area', '14003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19635', '麟游县', '14003.10', 'area', '14003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19634', '千阳县', '14003.9', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19633', '陇　县', '14003.8', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19632', '眉　县', '14003.7', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19631', '扶风县', '14003.6', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19630', '岐山县', '14003.5', 'area', '14004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19629', '凤翔县', '14003.4', 'area', '14003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19628', '陈仓区', '14003.3', 'area', '14003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19627', '金台区', '14003.2', 'area', '14003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19626', '滨区', '14003.1', 'area', '14003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19625', '宝鸡市', '14003', 'area', '14003', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19624', '宜君县', '14002.4', 'area', '14002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19623', '耀州区', '14002.3', 'area', '14002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19622', '印台区', '14002.2', 'area', '14002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19621', '王益区', '14002.1', 'area', '14002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19620', '铜川市', '14002', 'area', '14002', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19619', '高陵县', '14001.13', 'area', '14001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19618', '户　县', '14001.12', 'area', '14001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19617', '周至县', '14001.11', 'area', '14001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19616', '蓝田县', '14001.10', 'area', '14001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19615', '长安区', '14001.9', 'area', '14002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19614', '临潼区', '14001.8', 'area', '14002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19613', '阎良区', '14001.7', 'area', '14002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19612', '雁塔区', '14001.6', 'area', '14002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19611', '未央区', '14001.5', 'area', '14002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19610', '灞桥区', '14001.4', 'area', '14001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19609', '莲湖区', '14001.3', 'area', '14001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19608', '碑林区', '14001.2', 'area', '14001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19607', '新城区', '14001.1', 'area', '14001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19606', '西安市', '14001', 'area', '14001', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19605', '陕西省', '14000', 'area', '14000', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19604', '朗　县', '13507.7', 'area', '13508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19603', '察隅县', '13507.6', 'area', '13508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19602', '波密县', '13507.5', 'area', '13508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19601', '墨脱县', '13507.4', 'area', '13507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19600', '米林县', '13507.3', 'area', '13507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19599', '工布江达县', '13507.2', 'area', '13507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19598', '林芝县', '13507.1', 'area', '13507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19597', '林芝地区', '13507', 'area', '13507', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19596', '措勤县', '13506.7', 'area', '13507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19595', '改则县', '13506.6', 'area', '13507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19594', '革吉县', '13506.5', 'area', '13507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19593', '日土县', '13506.4', 'area', '13506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19592', '噶尔县', '13506.3', 'area', '13506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19591', '札达县', '13506.2', 'area', '13506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19590', '普兰县', '13506.1', 'area', '13506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19589', '阿里地区', '13506', 'area', '13506', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19588', '尼玛县', '13505.10', 'area', '13505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19587', '巴青县', '13505.9', 'area', '13506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19586', '班戈县', '13505.8', 'area', '13506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19585', '索　县', '13505.7', 'area', '13506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19584', '申扎县', '13505.6', 'area', '13506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19583', '安多县', '13505.5', 'area', '13506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19582', '聂荣县', '13505.4', 'area', '13505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19581', '比如县', '13505.3', 'area', '13505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19580', '嘉黎县', '13505.2', 'area', '13505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19579', '那曲县', '13505.1', 'area', '13505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19578', '那曲地区', '13505', 'area', '13505', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19577', '岗巴县', '13504.18', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19576', '萨嘎县', '13504.17', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19575', '聂拉木县', '13504.16', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19574', '吉隆县', '13504.15', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19573', '亚东县', '13504.14', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19572', '仲巴县', '13504.13', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19571', '定结县', '13504.12', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19570', '康马县', '13504.11', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19569', '仁布县', '13504.10', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19568', '白朗县', '13504.9', 'area', '13505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19567', '谢通门县', '13504.8', 'area', '13505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19566', '昂仁县', '13504.7', 'area', '13505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19565', '拉孜县', '13504.6', 'area', '13505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19564', '萨迦县', '13504.5', 'area', '13505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19563', '定日县', '13504.4', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19562', '江孜县', '13504.3', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19561', '南木林县', '13504.2', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19560', '日喀则市', '13504.1', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19559', '日喀则地区', '13504', 'area', '13504', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19558', '浪卡子县', '13503.12', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19557', '错那县', '13503.11', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19556', '隆子县', '13503.10', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19555', '加查县', '13503.9', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19554', '洛扎县', '13503.8', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19553', '措美县', '13503.7', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19552', '曲松县', '13503.6', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19551', '琼结县', '13503.5', 'area', '13504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19550', '桑日县', '13503.4', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19549', '贡嘎县', '13503.3', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19548', '扎囊县', '13503.2', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19547', '乃东县', '13503.1', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19546', '山南地区', '13503', 'area', '13503', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19545', '边坝县', '13502.11', 'area', '13502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19544', '洛隆县', '13502.10', 'area', '13502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19543', '芒康县', '13502.9', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19542', '左贡县', '13502.8', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19541', '八宿县', '13502.7', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19540', '察雅县', '13502.6', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19539', '丁青县', '13502.5', 'area', '13503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19538', '类乌齐县', '13502.4', 'area', '13502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19537', '贡觉县', '13502.3', 'area', '13502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19536', '江达县', '13502.2', 'area', '13502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19535', '昌都县', '13502.1', 'area', '13502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19534', '昌都地区', '13502', 'area', '13502', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19533', '墨竹工卡县', '13501.8', 'area', '13502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19532', '达孜县', '13501.7', 'area', '13502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19531', '堆龙德庆县', '13501.6', 'area', '13502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19530', '曲水县', '13501.5', 'area', '13502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19529', '尼木县', '13501.4', 'area', '13501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19528', '当雄县', '13501.3', 'area', '13501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19527', '林周县', '13501.2', 'area', '13501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19526', '城关区', '13501.1', 'area', '13501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19525', '拉萨市', '13501', 'area', '13501', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19524', '西藏自治区', '13500', 'area', '13500', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19523', '维西傈僳族自治县', '13016.3', 'area', '13016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19522', '德钦县', '13016.2', 'area', '13016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19521', '香格里拉县', '13016.1', 'area', '13016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19520', '迪庆藏族自治州', '13016', 'area', '13016', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19519', '兰坪白族普米族自治县', '13015.4', 'area', '13015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19518', '贡山独龙族怒族自治县', '13015.3', 'area', '13015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19517', '福贡县', '13015.2', 'area', '13015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19516', '泸水县', '13015.1', 'area', '13015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19515', '怒江傈僳族自治州', '13015', 'area', '13015', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19514', '陇川县', '13014.5', 'area', '13015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19513', '盈江县', '13014.4', 'area', '13014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19512', '梁河县', '13014.3', 'area', '13014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19511', '潞西市', '13014.2', 'area', '13014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19510', '瑞丽市', '13014.1', 'area', '13014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19509', '德宏傣族景颇族自治州', '13014', 'area', '13014', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19508', '鹤庆县', '13013.12', 'area', '13013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19507', '剑川县', '13013.11', 'area', '13013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19506', '洱源县', '13013.10', 'area', '13013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19505', '云龙县', '13013.9', 'area', '13014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19504', '永平县', '13013.8', 'area', '13014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19503', '巍山彝族回族自治县', '13013.7', 'area', '13014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19502', '南涧彝族自治县', '13013.6', 'area', '13014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19501', '弥渡县', '13013.5', 'area', '13014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19500', '宾川县', '13013.4', 'area', '13013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19499', '祥云县', '13013.3', 'area', '13013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19498', '漾濞彝族自治县', '13013.2', 'area', '13013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19497', '大理市', '13013.1', 'area', '13013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19496', '大理白族自治州', '13013', 'area', '13013', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19495', '勐腊县', '13012.3', 'area', '13012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19494', '勐海县', '13012.2', 'area', '13012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19493', '景洪市', '13012.1', 'area', '13012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19492', '西双版纳傣族自治州', '13012', 'area', '13012', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19491', '富宁县', '13011.8', 'area', '13012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19490', '广南县', '13011.7', 'area', '13012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19489', '丘北县', '13011.6', 'area', '13012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19488', '马关县', '13011.5', 'area', '13012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19487', '麻栗坡县', '13011.4', 'area', '13011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19486', '西畴县', '13011.3', 'area', '13011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19485', '砚山县', '13011.2', 'area', '13011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19484', '文山县', '13011.1', 'area', '13011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19483', '文山壮族苗族自治州', '13011', 'area', '13011', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19482', '河口瑶族自治县', '13010.12', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19481', '绿春县', '13010.11', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19480', '金平苗族瑶族傣族自治县', '13010.10', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19479', '元阳县', '13010.9', 'area', '13011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19478', '泸西县', '13010.8', 'area', '13011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19477', '弥勒县', '13010.7', 'area', '13011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19476', '石屏县', '13010.6', 'area', '13011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19475', '建水县', '13010.5', 'area', '13011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19474', '屏边苗族自治县', '13010.4', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19473', '蒙自县', '13010.3', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19472', '开远市', '13010.2', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19471', '个旧市', '13010.1', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19470', '红河哈尼族彝族自治州', '13010', 'area', '13010', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19469', '禄丰县', '13009.10', 'area', '13009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19468', '武定县', '13009.9', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19467', '元谋县', '13009.8', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19466', '永仁县', '13009.7', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19465', '大姚县', '13009.6', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19464', '姚安县', '13009.5', 'area', '13010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19463', '南华县', '13009.4', 'area', '13009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19462', '牟定县', '13009.3', 'area', '13009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19461', '双柏县', '13009.2', 'area', '13009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19460', '楚雄市', '13009.1', 'area', '13009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19459', '楚雄彝族自治州', '13009', 'area', '13009', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19458', '沧源佤族自治县', '13008.8', 'area', '13009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19457', '耿马傣族佤族自治县', '13008.7', 'area', '13009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19456', '双江拉祜族佤族布朗族傣族自治县', '13008.6', 'area', '13009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19455', '镇康县', '13008.5', 'area', '13009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19454', '永德县', '13008.4', 'area', '13008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19453', '云　县', '13008.3', 'area', '13008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19452', '凤庆县', '13008.2', 'area', '13008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19451', '临翔区', '13008.1', 'area', '13008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19450', '临沧市', '13008', 'area', '13008', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19449', '西盟佤族自治县', '13007.10', 'area', '13007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19448', '澜沧拉祜族自治县', '13007.9', 'area', '13008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19447', '孟连傣族拉祜族佤族自治县', '13007.8', 'area', '13008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19446', '江城哈尼族彝族自治县', '13007.7', 'area', '13008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19445', '镇沅彝族哈尼族拉祜族自治县', '13007.6', 'area', '13008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19444', '景谷傣族彝族自治县', '13007.5', 'area', '13008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19443', '景东彝族自治县', '13007.4', 'area', '13007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19442', '墨江哈尼族自治县', '13007.3', 'area', '13007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19441', '普洱哈尼族彝族自治县', '13007.2', 'area', '13007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19440', '翠云区', '13007.1', 'area', '13007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19439', '思茅市', '13007', 'area', '13007', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19438', '宁蒗彝族自治县', '13006.5', 'area', '13007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19437', '华坪县', '13006.4', 'area', '13006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19436', '永胜县', '13006.3', 'area', '13006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19435', '玉龙纳西族自治县', '13006.2', 'area', '13006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19434', '古城区', '13006.1', 'area', '13006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19433', '丽江市', '13006', 'area', '13006', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19432', '水富县', '13005.11', 'area', '13005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19431', '威信县', '13005.10', 'area', '13005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19430', '彝良县', '13005.9', 'area', '13006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19429', '镇雄县', '13005.8', 'area', '13006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19428', '绥江县', '13005.7', 'area', '13006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19427', '永善县', '13005.6', 'area', '13006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19426', '大关县', '13005.5', 'area', '13006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19425', '盐津县', '13005.4', 'area', '13005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19424', '巧家县', '13005.3', 'area', '13005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19423', '鲁甸县', '13005.2', 'area', '13005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19422', '昭阳区', '13005.1', 'area', '13005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19421', '昭通市', '13005', 'area', '13005', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19420', '昌宁县', '13004.5', 'area', '13005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19419', '龙陵县', '13004.4', 'area', '13004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19418', '腾冲县', '13004.3', 'area', '13004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19417', '施甸县', '13004.2', 'area', '13004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19416', '隆阳区', '13004.1', 'area', '13004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19415', '保山市', '13004', 'area', '13004', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19414', '元江哈尼族彝族傣族自治县', '13003.9', 'area', '13004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19413', '新平彝族傣族自治县', '13003.8', 'area', '13004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19412', '峨山彝族自治县', '13003.7', 'area', '13004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19411', '易门县', '13003.6', 'area', '13004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19410', '华宁县', '13003.5', 'area', '13004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19409', '通海县', '13003.4', 'area', '13003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19408', '澄江县', '13003.3', 'area', '13003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19407', '江川县', '13003.2', 'area', '13003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19406', '红塔区', '13003.1', 'area', '13003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19405', '玉溪市', '13003', 'area', '13003', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19404', '宣威市', '13002.9', 'area', '13003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19403', '沾益县', '13002.8', 'area', '13003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19402', '会泽县', '13002.7', 'area', '13003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19401', '富源县', '13002.6', 'area', '13003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19400', '罗平县', '13002.5', 'area', '13003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19399', '师宗县', '13002.4', 'area', '13002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19398', '陆良县', '13002.3', 'area', '13002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19397', '马龙县', '13002.2', 'area', '13002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19396', '麒麟区', '13002.1', 'area', '13002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19395', '曲靖市', '13002', 'area', '13002', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19394', '安宁市', '13001.14', 'area', '13001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19393', '寻甸回族彝族自治县', '13001.13', 'area', '13001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19392', '禄劝彝族苗族自治县', '13001.12', 'area', '13001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19391', '嵩明县', '13001.11', 'area', '13001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19390', '石林彝族自治县', '13001.10', 'area', '13001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19389', '宜良县', '13001.9', 'area', '13002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19388', '富民县', '13001.8', 'area', '13002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19387', '晋宁县', '13001.7', 'area', '13002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19386', '呈贡县', '13001.6', 'area', '13002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19385', '东川区', '13001.5', 'area', '13002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19384', '西山区', '13001.4', 'area', '13001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19383', '官渡区', '13001.3', 'area', '13001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19382', '盘龙区', '13001.2', 'area', '13001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19381', '五华区', '13001.1', 'area', '13001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19380', '昆明市', '13001', 'area', '13001', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19379', '云南省', '13000', 'area', '13000', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19378', '三都水族自治县', '12509.12', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19377', '惠水县', '12509.11', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19376', '龙里县', '12509.10', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19375', '长顺县', '12509.9', 'area', '12510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19374', '罗甸县', '12509.8', 'area', '12510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19373', '平塘县', '12509.7', 'area', '12510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19372', '独山县', '12509.6', 'area', '12510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19371', '瓮安县', '12509.5', 'area', '12510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19370', '贵定县', '12509.4', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19369', '荔波县', '12509.3', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19368', '福泉市', '12509.2', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19367', '都匀市', '12509.1', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19366', '黔南布依族苗族自治州', '12509', 'area', '12509', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19365', '麻江县', '12508.15', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19364', '雷山县', '12508.14', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19363', '从江县', '12508.13', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19362', '榕江县', '12508.12', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19361', '黎平县', '12508.11', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19360', '台江县', '12508.10', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19359', '剑河县', '12508.9', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19358', '锦屏县', '12508.8', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19357', '天柱县', '12508.7', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19356', '岑巩县', '12508.6', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19355', '镇远县', '12508.5', 'area', '12509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19354', '三穗县', '12508.4', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19353', '施秉县', '12508.3', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19352', '黄平县', '12508.2', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19351', '凯里市', '12508.1', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19350', '黔东南苗族侗族自治州', '12508', 'area', '12508', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19349', '赫章县', '12507.8', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19348', '威宁彝族回族苗族自治县', '12507.7', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19347', '纳雍县', '12507.6', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19346', '织金县', '12507.5', 'area', '12508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19345', '金沙县', '12507.4', 'area', '12507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19344', '黔西县', '12507.3', 'area', '12507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19343', '大方县', '12507.2', 'area', '12507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19342', '毕节市', '12507.1', 'area', '12507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19341', '毕节地区', '12507', 'area', '12507', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19340', '安龙县', '12506.8', 'area', '12507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19339', '册亨县', '12506.7', 'area', '12507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19338', '望谟县', '12506.6', 'area', '12507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19337', '贞丰县', '12506.5', 'area', '12507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19336', '晴隆县', '12506.4', 'area', '12506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19335', '普安县', '12506.3', 'area', '12506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19334', '兴仁县', '12506.2', 'area', '12506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19333', '兴义市', '12506.1', 'area', '12506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19332', '黔西南布依族苗族自治州', '12506', 'area', '12506', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19331', '万山特区', '12505.10', 'area', '12505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19330', '松桃苗族自治县', '12505.9', 'area', '12506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19329', '沿河土家族自治县', '12505.8', 'area', '12506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19328', '德江县', '12505.7', 'area', '12506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19327', '印江土家族苗族自治县', '12505.6', 'area', '12506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19326', '思南县', '12505.5', 'area', '12506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19325', '石阡县', '12505.4', 'area', '12505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19324', '玉屏侗族自治县', '12505.3', 'area', '12505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19323', '江口县', '12505.2', 'area', '12505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19322', '铜仁市', '12505.1', 'area', '12505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19321', '铜仁地区', '12505', 'area', '12505', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19320', '紫云苗族布依族自治县', '12504.6', 'area', '12505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19319', '关岭布依族苗族自治县', '12504.5', 'area', '12505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19318', '镇宁布依族苗族自治县', '12504.4', 'area', '12504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19317', '普定县', '12504.3', 'area', '12504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19316', '平坝县', '12504.2', 'area', '12504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19315', '西秀区', '12504.1', 'area', '12504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19314', '安顺市', '12504', 'area', '12504', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19313', '仁怀市', '12503.14', 'area', '12503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19312', '赤水市', '12503.13', 'area', '12503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19311', '习水县', '12503.12', 'area', '12503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19310', '余庆县', '12503.11', 'area', '12503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19309', '湄潭县', '12503.10', 'area', '12503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19308', '凤冈县', '12503.9', 'area', '12504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19307', '务川仡佬族苗族自治县', '12503.8', 'area', '12504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19306', '道真仡佬族苗族自治县', '12503.7', 'area', '12504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19305', '正安县', '12503.6', 'area', '12504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19304', '绥阳县', '12503.5', 'area', '12504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19303', '桐梓县', '12503.4', 'area', '12503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19302', '遵义县', '12503.3', 'area', '12503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19301', '汇川区', '12503.2', 'area', '12503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19300', '红花岗区', '12503.1', 'area', '12503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19299', '遵义市', '12503', 'area', '12503', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19298', '盘　县', '12502.4', 'area', '12502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19297', '水城县', '12502.3', 'area', '12502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19296', '六枝特区', '12502.2', 'area', '12502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19295', '钟山区', '12502.1', 'area', '12502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19294', '六盘水市', '12502', 'area', '12502', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19293', '清镇市', '12501.10', 'area', '12501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19292', '修文县', '12501.9', 'area', '12502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19291', '息烽县', '12501.8', 'area', '12502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19290', '开阳县', '12501.7', 'area', '12502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19289', '小河区', '12501.6', 'area', '12502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19288', '白云区', '12501.5', 'area', '12502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19287', '乌当区', '12501.4', 'area', '12501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19286', '花溪区', '12501.3', 'area', '12501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19285', '云岩区', '12501.2', 'area', '12501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19284', '南明区', '12501.1', 'area', '12501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19283', '贵阳市', '12501', 'area', '12501', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19282', '贵州省', '12500', 'area', '12500', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19281', '雷波县', '12021.17', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19280', '美姑县', '12021.16', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19279', '甘洛县', '12021.15', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19278', '越西县', '12021.14', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19277', '冕宁县', '12021.13', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19276', '喜德县', '12021.12', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19275', '昭觉县', '12021.11', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19274', '金阳县', '12021.10', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19273', '布拖县', '12021.9', 'area', '12022', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19272', '普格县', '12021.8', 'area', '12022', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19271', '宁南县', '12021.7', 'area', '12022', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19270', '会东县', '12021.6', 'area', '12022', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19269', '会理县', '12021.5', 'area', '12022', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19268', '德昌县', '12021.4', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19267', '盐源县', '12021.3', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19266', '木里藏族自治县', '12021.2', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19265', '西昌市', '12021.1', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19264', '凉山彝族自治州', '12021', 'area', '12021', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19263', '得荣县', '12020.18', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19262', '稻城县', '12020.17', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19261', '乡城县', '12020.16', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19260', '巴塘县', '12020.15', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19259', '理塘县', '12020.14', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19258', '色达县', '12020.13', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19257', '石渠县', '12020.12', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19256', '白玉县', '12020.11', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19255', '德格县', '12020.10', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19254', '新龙县', '12020.9', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19253', '甘孜县', '12020.8', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19252', '炉霍县', '12020.7', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19251', '道孚县', '12020.6', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19250', '雅江县', '12020.5', 'area', '12021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19249', '九龙县', '12020.4', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19248', '丹巴县', '12020.3', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19247', '泸定县', '12020.2', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19246', '康定县', '12020.1', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19245', '甘孜藏族自治州', '12020', 'area', '12020', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19244', '红原县', '12019.13', 'area', '12019', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19243', '若尔盖县', '12019.12', 'area', '12019', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19242', '阿坝县', '12019.11', 'area', '12019', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19241', '壤塘县', '12019.10', 'area', '12019', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19240', '马尔康县', '12019.9', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19239', '黑水县', '12019.8', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19238', '小金县', '12019.7', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19237', '金川县', '12019.6', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19236', '九寨沟县', '12019.5', 'area', '12020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19235', '松潘县', '12019.4', 'area', '12019', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19234', '茂　县', '12019.3', 'area', '12019', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19233', '理　县', '12019.2', 'area', '12019', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19232', '汶川县', '12019.1', 'area', '12019', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19231', '阿坝藏族羌族自治州', '12019', 'area', '12019', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19230', '简阳市', '12018.4', 'area', '12018', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19229', '乐至县', '12018.3', 'area', '12018', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19228', '安岳县', '12018.2', 'area', '12018', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19227', '雁江区', '12018.1', 'area', '12018', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19226', '资阳市', '12018', 'area', '12018', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19225', '平昌县', '12017.4', 'area', '12017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19224', '南江县', '12017.3', 'area', '12017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19223', '通江县', '12017.2', 'area', '12017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19222', '巴州区', '12017.1', 'area', '12017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19221', '巴中市', '12017', 'area', '12017', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19220', '宝兴县', '12016.8', 'area', '12017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19219', '芦山县', '12016.7', 'area', '12017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19218', '天全县', '12016.6', 'area', '12017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19217', '石棉县', '12016.5', 'area', '12017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19216', '汉源县', '12016.4', 'area', '12016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19215', '荥经县', '12016.3', 'area', '12016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19214', '名山县', '12016.2', 'area', '12016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19213', '雨城区', '12016.1', 'area', '12016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19212', '雅安市', '12016', 'area', '12016', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19211', '万源市', '12015.7', 'area', '12016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19210', '渠　县', '12015.6', 'area', '12016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19209', '大竹县', '12015.5', 'area', '12016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19208', '开江县', '12015.4', 'area', '12015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19207', '宣汉县', '12015.3', 'area', '12015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19206', '达　县', '12015.2', 'area', '12015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19205', '通川区', '12015.1', 'area', '12015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19204', '达州市', '12015', 'area', '12015', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19203', '华莹市', '12014.5', 'area', '12015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19202', '邻水县', '12014.4', 'area', '12014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19201', '武胜县', '12014.3', 'area', '12014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19200', '岳池县', '12014.2', 'area', '12014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19199', '广安区', '12014.1', 'area', '12014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19198', '广安市', '12014', 'area', '12014', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19197', '屏山县', '12013.10', 'area', '12013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19196', '兴文县', '12013.9', 'area', '12014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19195', '筠连县', '12013.8', 'area', '12014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19194', '珙　县', '12013.7', 'area', '12014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19193', '高　县', '12013.6', 'area', '12014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19192', '长宁县', '12013.5', 'area', '12014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19191', '江安县', '12013.4', 'area', '12013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19190', '南溪县', '12013.3', 'area', '12013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19189', '宜宾县', '12013.2', 'area', '12013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19188', '翠屏区', '12013.1', 'area', '12013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19187', '宜宾市', '12013', 'area', '12013', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19186', '青神县', '12012.6', 'area', '12013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19185', '丹棱县', '12012.5', 'area', '12013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19184', '洪雅县', '12012.4', 'area', '12012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19183', '彭山县', '12012.3', 'area', '12012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19182', '仁寿县', '12012.2', 'area', '12012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19181', '东坡区', '12012.1', 'area', '12012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19180', '眉山市', '12012', 'area', '12012', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19179', '阆中市', '12011.9', 'area', '12012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19178', '西充县', '12011.8', 'area', '12012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19177', '仪陇县', '12011.7', 'area', '12012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19176', '蓬安县', '12011.6', 'area', '12012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19175', '营山县', '12011.5', 'area', '12012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19174', '南部县', '12011.4', 'area', '12011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19173', '嘉陵区', '12011.3', 'area', '12011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19172', '高坪区', '12011.2', 'area', '12011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19171', '顺庆区', '12011.1', 'area', '12011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19170', '南充市', '12011', 'area', '12011', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19169', '峨眉山市', '12010.11', 'area', '12010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19168', '马边彝族自治县', '12010.10', 'area', '12010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19167', '峨边彝族自治县', '12010.9', 'area', '12011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19166', '沐川县', '12010.8', 'area', '12011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19165', '夹江县', '12010.7', 'area', '12011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19164', '井研县', '12010.6', 'area', '12011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19163', '犍为县', '12010.5', 'area', '12011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19162', '金口河区', '12010.4', 'area', '12010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19161', '五通桥区', '12010.3', 'area', '12010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19160', '沙湾区', '12010.2', 'area', '12010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19159', '市中区', '12010.1', 'area', '12010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19158', '乐山市', '12010', 'area', '12010', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19157', '隆昌县', '12009.5', 'area', '12010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19156', '资中县', '12009.4', 'area', '12009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19155', '威远县', '12009.3', 'area', '12009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19154', '东兴区', '12009.2', 'area', '12009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19153', '市中区', '12009.1', 'area', '12009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19152', '内江市', '12009', 'area', '12009', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19151', '大英县', '12008.5', 'area', '12009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19150', '射洪县', '12008.4', 'area', '12008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19149', '蓬溪县', '12008.3', 'area', '12008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19148', '安居区', '12008.2', 'area', '12008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19147', '船山区', '12008.1', 'area', '12008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19146', '遂宁市', '12008', 'area', '12008', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19145', '苍溪县', '12007.7', 'area', '12008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19144', '剑阁县', '12007.6', 'area', '12008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19143', '青川县', '12007.5', 'area', '12008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19142', '旺苍县', '12007.4', 'area', '12007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19141', '朝天区', '12007.3', 'area', '12007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19140', '元坝区', '12007.2', 'area', '12007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19139', '市中区', '12007.1', 'area', '12007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19138', '广元市', '12007', 'area', '12007', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19137', '江油市', '12006.9', 'area', '12007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19136', '平武县', '12006.8', 'area', '12007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19135', '北川羌族自治县', '12006.7', 'area', '12007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19134', '梓潼县', '12006.6', 'area', '12007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19133', '安　县', '12006.5', 'area', '12007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19132', '盐亭县', '12006.4', 'area', '12006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19131', '三台县', '12006.3', 'area', '12006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19130', '游仙区', '12006.2', 'area', '12006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19129', '涪城区', '12006.1', 'area', '12006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19128', '绵阳市', '12006', 'area', '12006', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19127', '绵竹市', '12005.6', 'area', '12006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19126', '什邡市', '12005.5', 'area', '12006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19125', '广汉市', '12005.4', 'area', '12005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19124', '罗江县', '12005.3', 'area', '12005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19123', '中江县', '12005.2', 'area', '12005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19122', '旌阳区', '12005.1', 'area', '12005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19121', '德阳市', '12005', 'area', '12005', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19120', '古蔺县', '12004.7', 'area', '12005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19119', '叙永县', '12004.6', 'area', '12005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19118', '合江县', '12004.5', 'area', '12005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19117', '泸　县', '12004.4', 'area', '12004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19116', '龙马潭区', '12004.3', 'area', '12004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19115', '纳溪区', '12004.2', 'area', '12004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19114', '江阳区', '12004.1', 'area', '12004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19113', '泸州市', '12004', 'area', '12004', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19112', '盐边县', '12003.5', 'area', '12004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19111', '米易县', '12003.4', 'area', '12003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19110', '仁和区', '12003.3', 'area', '12003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19109', '西　区', '12003.2', 'area', '12003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19108', '东　区', '12003.1', 'area', '12003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19107', '攀枝花市', '12003', 'area', '12003', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19106', '富顺县', '12002.6', 'area', '12003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19105', '荣　县', '12002.5', 'area', '12003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19104', '沿滩区', '12002.4', 'area', '12002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19103', '大安区', '12002.3', 'area', '12002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19102', '贡井区', '12002.2', 'area', '12002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19101', '自流井区', '12002.1', 'area', '12002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19100', '自贡市', '12002', 'area', '12002', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19099', '崇州市', '12001.19', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19098', '邛崃市', '12001.18', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19097', '彭州市', '12001.17', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19096', '都江堰市', '12001.16', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19095', '新津县', '12001.15', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19094', '蒲江县', '12001.14', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19093', '大邑县', '12001.13', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19092', '郫　县', '12001.12', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19091', '双流县', '12001.11', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19090', '金堂县', '12001.10', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19089', '温江区', '12001.9', 'area', '12002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19088', '新都区', '12001.8', 'area', '12002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19087', '青白江区', '12001.7', 'area', '12002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19086', '龙泉驿区', '12001.6', 'area', '12002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19085', '成华区', '12001.5', 'area', '12002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19084', '武侯区', '12001.4', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19083', '金牛区', '12001.3', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19082', '青羊区', '12001.2', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19081', '锦江区', '12001.1', 'area', '12001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19080', '成都市', '12001', 'area', '12001', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19079', '四川省', '12000', 'area', '12000', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19078', '南川市', '11540', 'area', '11540', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19077', '永川市', '11539', 'area', '11539', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19076', '合川市', '11538', 'area', '11538', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19075', '江津市', '11537', 'area', '11537', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19074', '彭水苗族土家族自治县', '11536', 'area', '11536', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19073', '酉阳土家族苗族自治县', '11535', 'area', '11535', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19072', '秀山土家族苗族自治县', '11534', 'area', '11534', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19071', '石柱土家族自治县', '11533', 'area', '11533', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19070', '巫溪县', '11532', 'area', '11532', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19069', '巫山县', '11531', 'area', '11531', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19068', '奉节县', '11530', 'area', '11530', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19067', '云阳县', '11529', 'area', '11529', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19066', '开　县', '11528', 'area', '11528', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19065', '忠　县', '11527', 'area', '11527', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19064', '武隆县', '11526', 'area', '11526', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19063', '垫江县', '11525', 'area', '11525', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19062', '丰都县', '11524', 'area', '11524', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19061', '城口县', '11523', 'area', '11523', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19060', '梁平县', '11522', 'area', '11522', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19059', '璧山县', '11521', 'area', '11521', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19058', '荣昌县', '11520', 'area', '11520', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19057', '大足县', '11519', 'area', '11519', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19056', '铜梁县', '11518', 'area', '11518', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19055', '潼南县', '11517', 'area', '11517', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19054', '綦江县', '11516', 'area', '11516', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19053', '长寿区', '11515', 'area', '11515', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19052', '黔江区', '11514', 'area', '11514', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19051', '巴南区', '11513', 'area', '11513', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19050', '渝北区', '11512', 'area', '11512', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19049', '双桥区', '11511', 'area', '11511', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19048', '万盛区', '11510', 'area', '11510', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19047', '北碚区', '11509', 'area', '11509', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19046', '南岸区', '11508', 'area', '11508', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19045', '九龙坡区', '11507', 'area', '11507', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19044', '沙坪坝区', '11506', 'area', '11506', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19043', '江北区', '11505', 'area', '11505', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19042', '大渡口区', '11504', 'area', '11504', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19041', '渝中区', '11503', 'area', '11503', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19040', '涪陵区', '11502', 'area', '11502', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19039', '万州区', '11501', 'area', '11501', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19038', '重庆市', '11500', 'area', '11500', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19037', '中沙群岛的岛礁及其海域', '11003.19', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19036', '南沙群岛', '11003.18', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19035', '西沙群岛', '11003.17', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19034', '琼中黎族苗族自治县', '11003.16', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19033', '保亭黎族苗族自治县', '11003.15', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19032', '陵水黎族自治县', '11003.14', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19031', '乐东黎族自治县', '11003.13', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19030', '昌江黎族自治县', '11003.12', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19029', '白沙黎族自治县', '11003.11', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19028', '临高县', '11003.10', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19027', '澄迈县', '11003.9', 'area', '11004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19026', '屯昌县', '11003.8', 'area', '11004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19025', '定安县', '11003.7', 'area', '11004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19024', '东方市', '11003.6', 'area', '11004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19023', '万宁市', '11003.5', 'area', '11004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19022', '文昌市', '11003.4', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19021', '儋州市', '11003.3', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19020', '琼海市', '11003.2', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19019', '五指山市', '11003.1', 'area', '11003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19018', '省直辖县级行政单位', '11003', 'area', '11003', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19017', '三亚市', '11002', 'area', '11002', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19016', '美兰区', '11001.4', 'area', '11001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19015', '琼山区', '11001.3', 'area', '11001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19014', '龙华区', '11001.2', 'area', '11001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19013', '秀英区', '11001.1', 'area', '11001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19012', '海口市', '11001', 'area', '11001', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19011', '海南省', '11000', 'area', '11000', '0');
INSERT INTO `pmw_cascadedata` VALUES ('19010', '凭祥市', '10514.7', 'area', '10515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19009', '天等县', '10514.6', 'area', '10515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19008', '大新县', '10514.5', 'area', '10515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19007', '龙州县', '10514.4', 'area', '10514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19006', '宁明县', '10514.3', 'area', '10514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19005', '扶绥县', '10514.2', 'area', '10514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19004', '江洲区', '10514.1', 'area', '10514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19003', '崇左市', '10514', 'area', '10514', '1');
INSERT INTO `pmw_cascadedata` VALUES ('19002', '合山市', '10513.6', 'area', '10514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19001', '金秀瑶族自治县', '10513.5', 'area', '10514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('19000', '武宣县', '10513.4', 'area', '10513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18999', '象州县', '10513.3', 'area', '10513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18998', '忻城县', '10513.2', 'area', '10513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18997', '兴宾区', '10513.1', 'area', '10513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18996', '来宾市', '10513', 'area', '10513', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18995', '宜州市', '10512.11', 'area', '10512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18994', '大化瑶族自治县', '10512.10', 'area', '10512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18993', '都安瑶族自治县', '10512.9', 'area', '10513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18992', '巴马瑶族自治县', '10512.8', 'area', '10513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18991', '环江毛南族自治县', '10512.7', 'area', '10513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18990', '罗城仫佬族自治县', '10512.6', 'area', '10513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18989', '东兰县', '10512.5', 'area', '10513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18988', '凤山县', '10512.4', 'area', '10512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18987', '天峨县', '10512.3', 'area', '10512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18986', '南丹县', '10512.2', 'area', '10512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18985', '金城江区', '10512.1', 'area', '10512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18984', '河池市', '10512', 'area', '10512', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18983', '富川瑶族自治县', '10511.4', 'area', '10511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18982', '钟山县', '10511.3', 'area', '10511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18981', '昭平县', '10511.2', 'area', '10511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18980', '八步区', '10511.1', 'area', '10511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18979', '贺州市', '10511', 'area', '10511', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18978', '隆林各族自治县', '10510.12', 'area', '10510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18977', '西林县', '10510.11', 'area', '10510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18976', '田林县', '10510.10', 'area', '10510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18975', '乐业县', '10510.9', 'area', '10511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18974', '凌云县', '10510.8', 'area', '10511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18973', '那坡县', '10510.7', 'area', '10511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18972', '靖西县', '10510.6', 'area', '10511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18971', '德保县', '10510.5', 'area', '10511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18970', '平果县', '10510.4', 'area', '10510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18969', '田东县', '10510.3', 'area', '10510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18968', '田阳县', '10510.2', 'area', '10510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18967', '右江区', '10510.1', 'area', '10510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18966', '百色市', '10510', 'area', '10510', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18965', '北流市', '10509.6', 'area', '10510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18964', '兴业县', '10509.5', 'area', '10510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18963', '博白县', '10509.4', 'area', '10509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18962', '陆川县', '10509.3', 'area', '10509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18961', '容　县', '10509.2', 'area', '10509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18960', '玉州区', '10509.1', 'area', '10509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18959', '玉林市', '10509', 'area', '10509', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18958', '桂平市', '10508.5', 'area', '10509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18957', '平南县', '10508.4', 'area', '10508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18956', '覃塘区', '10508.3', 'area', '10508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18955', '港南区', '10508.2', 'area', '10508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18954', '港北区', '10508.1', 'area', '10508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18953', '贵港市', '10508', 'area', '10508', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18952', '浦北县', '10507.4', 'area', '10507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18951', '灵山县', '10507.3', 'area', '10507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18950', '钦北区', '10507.2', 'area', '10507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18949', '钦南区', '10507.1', 'area', '10507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18948', '钦州市', '10507', 'area', '10507', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18947', '东兴市', '10506.4', 'area', '10506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18946', '上思县', '10506.3', 'area', '10506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18945', '防城区', '10506.2', 'area', '10506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18944', '港口区', '10506.1', 'area', '10506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18943', '防城港市', '10506', 'area', '10506', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18942', '合浦县', '10505.4', 'area', '10505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18941', '铁山港区', '10505.3', 'area', '10505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18940', '银海区', '10505.2', 'area', '10505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18939', '海城区', '10505.1', 'area', '10505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18938', '北海市', '10505', 'area', '10505', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18937', '岑溪市', '10504.7', 'area', '10505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18936', '蒙山县', '10504.6', 'area', '10505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18935', '藤　县', '10504.5', 'area', '10505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18934', '苍梧县', '10504.4', 'area', '10504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18933', '长洲区', '10504.3', 'area', '10504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18932', '蝶山区', '10504.2', 'area', '10504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18931', '万秀区', '10504.1', 'area', '10504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18930', '梧州市', '10504', 'area', '10504', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18929', '恭城瑶族自治县', '10503.17', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18928', '荔蒲县', '10503.16', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18927', '平乐县', '10503.15', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18926', '资源县', '10503.14', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18925', '龙胜各族自治县', '10503.13', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18924', '灌阳县', '10503.12', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18923', '永福县', '10503.11', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18922', '兴安县', '10503.10', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18921', '全州县', '10503.9', 'area', '10504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18920', '灵川县', '10503.8', 'area', '10504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18919', '临桂县', '10503.7', 'area', '10504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18918', '阳朔县', '10503.6', 'area', '10504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18917', '雁山区', '10503.5', 'area', '10504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18916', '七星区', '10503.4', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18915', '象山区', '10503.3', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18914', '叠彩区', '10503.2', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18913', '秀峰区', '10503.1', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18912', '桂林市', '10503', 'area', '10503', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18911', '三江侗族自治县', '10502.10', 'area', '10502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18910', '融水苗族自治县', '10502.9', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18909', '融安县', '10502.8', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18908', '鹿寨县', '10502.7', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18907', '柳城县', '10502.6', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18906', '柳江县', '10502.5', 'area', '10503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18905', '柳北区', '10502.4', 'area', '10502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18904', '柳南区', '10502.3', 'area', '10502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18903', '鱼峰区', '10502.2', 'area', '10502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18902', '城中区', '10502.1', 'area', '10502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18901', '柳州市', '10502', 'area', '10502', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18900', '横　县', '10501.12', 'area', '10501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18899', '宾阳县', '10501.11', 'area', '10501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18898', '上林县', '10501.10', 'area', '10501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18897', '马山县', '10501.9', 'area', '10502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18896', '隆安县', '10501.8', 'area', '10502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18895', '武鸣县', '10501.7', 'area', '10502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18894', '邕宁区', '10501.6', 'area', '10502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18893', '良庆区', '10501.5', 'area', '10502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18892', '西乡塘区', '10501.4', 'area', '10501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18891', '江南区', '10501.3', 'area', '10501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18890', '青秀区', '10501.2', 'area', '10501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18889', '兴宁区', '10501.1', 'area', '10501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18888', '南宁市', '10501', 'area', '10501', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18887', '广西壮族自治区', '10500', 'area', '10500', '0');
INSERT INTO `pmw_cascadedata` VALUES ('18886', '罗定市', '10021.5', 'area', '10022', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18885', '云安县', '10021.4', 'area', '10021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18884', '郁南县', '10021.3', 'area', '10021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18883', '新兴县', '10021.2', 'area', '10021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18882', '云城区', '10021.1', 'area', '10021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18881', '云浮市', '10021', 'area', '10021', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18880', '普宁市', '10020.5', 'area', '10021', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18879', '惠来县', '10020.4', 'area', '10020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18878', '揭西县', '10020.3', 'area', '10020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18877', '揭东县', '10020.2', 'area', '10020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18876', '榕城区', '10020.1', 'area', '10020', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18875', '揭阳市', '10020', 'area', '10020', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18874', '饶平县', '10019.2', 'area', '10019', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18873', '潮安县', '10019.1', 'area', '10019', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18872', '潮州市', '10019', 'area', '10019', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18871', '中山市', '10018', 'area', '10018', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18870', '东莞市', '10017', 'area', '10017', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18869', '连州市', '10016.8', 'area', '10017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18868', '英德市', '10016.7', 'area', '10017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18867', '清新县', '10016.6', 'area', '10017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18866', '连南瑶族自治县', '10016.5', 'area', '10017', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18865', '连山壮族瑶族自治县', '10016.4', 'area', '10016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18864', '阳山县', '10016.3', 'area', '10016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18863', '佛冈县', '10016.2', 'area', '10016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18862', '清城区', '10016.1', 'area', '10016', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18861', '清远市', '10016', 'area', '10016', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18860', '阳春市', '10015.4', 'area', '10015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18859', '阳东县', '10015.3', 'area', '10015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18858', '阳西县', '10015.2', 'area', '10015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18857', '江城区', '10015.1', 'area', '10015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18856', '阳江市', '10015', 'area', '10015', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18855', '东源县', '10014.6', 'area', '10015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18854', '和平县', '10014.5', 'area', '10015', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18853', '连平县', '10014.4', 'area', '10014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18852', '龙川县', '10014.3', 'area', '10014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18851', '紫金县', '10014.2', 'area', '10014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18850', '源城区', '10014.1', 'area', '10014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18849', '河源市', '10014', 'area', '10014', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18848', '陆丰市', '10013.4', 'area', '10013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18847', '陆河县', '10013.3', 'area', '10013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18846', '海丰县', '10013.2', 'area', '10013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18845', '城　区', '10013.1', 'area', '10013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18844', '汕尾市', '10013', 'area', '10013', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18843', '兴宁市', '10012.8', 'area', '10013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18842', '蕉岭县', '10012.7', 'area', '10013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18841', '平远县', '10012.6', 'area', '10013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18840', '五华县', '10012.5', 'area', '10013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18839', '丰顺县', '10012.4', 'area', '10012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18838', '大埔县', '10012.3', 'area', '10012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18837', '梅　县', '10012.2', 'area', '10012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18836', '梅江区', '10012.1', 'area', '10012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18835', '梅州市', '10012', 'area', '10012', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18834', '龙门县', '10011.5', 'area', '10012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18833', '惠东县', '10011.4', 'area', '10011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18832', '博罗县', '10011.3', 'area', '10011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18831', '惠阳区', '10011.2', 'area', '10011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18830', '惠城区', '10011.1', 'area', '10011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18829', '惠州市', '10011', 'area', '10011', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18828', '四会市', '10010.8', 'area', '10011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18827', '高要市', '10010.7', 'area', '10011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18826', '德庆县', '10010.6', 'area', '10011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18825', '封开县', '10010.5', 'area', '10011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18824', '怀集县', '10010.4', 'area', '10010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18823', '广宁县', '10010.3', 'area', '10010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18822', '鼎湖区', '10010.2', 'area', '10010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18821', '端州区', '10010.1', 'area', '10010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18820', '肇庆市', '10010', 'area', '10010', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18819', '信宜市', '10009.6', 'area', '10010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18818', '化州市', '10009.5', 'area', '10010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18817', '高州市', '10009.4', 'area', '10009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18816', '电白县', '10009.3', 'area', '10009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18815', '茂港区', '10009.2', 'area', '10009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18814', '茂南区', '10009.1', 'area', '10009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18813', '茂名市', '10009', 'area', '10009', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18812', '吴川市', '10008.9', 'area', '10009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18811', '雷州市', '10008.8', 'area', '10009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18810', '廉江市', '10008.7', 'area', '10009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18809', '徐闻县', '10008.6', 'area', '10009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18808', '遂溪县', '10008.5', 'area', '10009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18807', '麻章区', '10008.4', 'area', '10008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18806', '坡头区', '10008.3', 'area', '10008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18805', '霞山区', '10008.2', 'area', '10008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18804', '赤坎区', '10008.1', 'area', '10008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18803', '湛江市', '10008', 'area', '10008', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18802', '恩平市', '10007.7', 'area', '10008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18801', '鹤山市', '10007.6', 'area', '10008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18800', '开平市', '10007.5', 'area', '10008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18799', '台山市', '10007.4', 'area', '10007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18798', '新会区', '10007.3', 'area', '10007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18797', '江海区', '10007.2', 'area', '10007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18796', '蓬江区', '10007.1', 'area', '10007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18795', '江门市', '10007', 'area', '10007', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18794', '高明区', '10006.5', 'area', '10007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18793', '三水区', '10006.4', 'area', '10006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18792', '顺德区', '10006.3', 'area', '10006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18791', '南海区', '10006.2', 'area', '10006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18790', '禅城区', '10006.1', 'area', '10006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18789', '佛山市', '10006', 'area', '10006', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18788', '南澳县', '10005.7', 'area', '10006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18787', '澄海区', '10005.6', 'area', '10006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18786', '潮南区', '10005.5', 'area', '10006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18785', '潮阳区', '10005.4', 'area', '10005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18784', '濠江区', '10005.3', 'area', '10005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18783', '金平区', '10005.2', 'area', '10005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18782', '龙湖区', '10005.1', 'area', '10005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18781', '汕头市', '10005', 'area', '10005', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18780', '金湾区', '10004.3', 'area', '10004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18779', '斗门区', '10004.2', 'area', '10004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18778', '洲区', '10004.1', 'area', '10004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18777', '珠海市', '10004', 'area', '10004', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18776', '盐田区', '10003.6', 'area', '10004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18775', '龙岗区', '10003.5', 'area', '10004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18774', '宝安区', '10003.4', 'area', '10003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18773', '南山区', '10003.3', 'area', '10003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18772', '福田区', '10003.2', 'area', '10003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18771', '罗湖区', '10003.1', 'area', '10003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18770', '深圳市', '10003', 'area', '10003', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18769', '南雄市', '10002.10', 'area', '10002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18768', '乐昌市', '10002.9', 'area', '10003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18767', '新丰县', '10002.8', 'area', '10003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18766', '乳源瑶族自治县', '10002.7', 'area', '10003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18765', '翁源县', '10002.6', 'area', '10003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18764', '仁化县', '10002.5', 'area', '10003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18763', '始兴县', '10002.4', 'area', '10002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18762', '曲江区', '10002.3', 'area', '10002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18761', '浈江区', '10002.2', 'area', '10002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18760', '武江区', '10002.1', 'area', '10002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18759', '韶关市', '10002', 'area', '10002', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18758', '从化市', '10001.12', 'area', '10001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18757', '增城市', '10001.11', 'area', '10001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18756', '花都区', '10001.10', 'area', '10001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18755', '番禺区', '10001.9', 'area', '10002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18754', '黄埔区', '10001.8', 'area', '10002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18753', '白云区', '10001.7', 'area', '10002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18752', '芳村区', '10001.6', 'area', '10002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18751', '天河区', '10001.5', 'area', '10002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18750', '海珠区', '10001.4', 'area', '10001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18749', '越秀区', '10001.3', 'area', '10001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18748', '荔湾区', '10001.2', 'area', '10001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18747', '东山区', '10001.1', 'area', '10001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18746', '广州市', '10001', 'area', '10001', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18745', '广东省', '10000', 'area', '10000', '0');
INSERT INTO `pmw_cascadedata` VALUES ('18744', '龙山县', '9514.8', 'area', '9515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18743', '永顺县', '9514.7', 'area', '9515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18742', '古丈县', '9514.6', 'area', '9515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18741', '保靖县', '9514.5', 'area', '9515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18740', '花垣县', '9514.4', 'area', '9514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18739', '凤凰县', '9514.3', 'area', '9514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18738', '泸溪县', '9514.2', 'area', '9514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18737', '吉首市', '9514.1', 'area', '9514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18736', '湘西土家族苗族自治州', '9514', 'area', '9514', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18735', '涟源市', '9513.5', 'area', '9514', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18734', '冷水江市', '9513.4', 'area', '9513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18733', '新化县', '9513.3', 'area', '9513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18732', '双峰县', '9513.2', 'area', '9513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18731', '娄星区', '9513.1', 'area', '9513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18730', '娄底市', '9513', 'area', '9513', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18729', '洪江市', '9512.12', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18728', '通道侗族自治县', '9512.11', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18727', '靖州苗族侗族自治县', '9512.10', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18726', '芷江侗族自治县', '9512.9', 'area', '9513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18725', '新晃侗族自治县', '9512.8', 'area', '9513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18724', '麻阳苗族自治县', '9512.7', 'area', '9513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18723', '会同县', '9512.6', 'area', '9513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18722', '溆浦县', '9512.5', 'area', '9513', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18721', '辰溪县', '9512.4', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18720', '沅陵县', '9512.3', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18719', '中方县', '9512.2', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18718', '鹤城区', '9512.1', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18717', '怀化市', '9512', 'area', '9512', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18716', '江华瑶族自治县', '9511.11', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18715', '新田县', '9511.10', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18714', '蓝山县', '9511.9', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18713', '宁远县', '9511.8', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18712', '江永县', '9511.7', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18711', '道　县', '9511.6', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18710', '双牌县', '9511.5', 'area', '9512', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18709', '东安县', '9511.4', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18708', '祁阳县', '9511.3', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18707', '冷水滩区', '9511.2', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18706', '芝山区', '9511.1', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18705', '永州市', '9511', 'area', '9511', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18704', '资兴市', '9510.11', 'area', '9510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18703', '安仁县', '9510.10', 'area', '9510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18702', '桂东县', '9510.9', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18701', '汝城县', '9510.8', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18700', '临武县', '9510.7', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18699', '嘉禾县', '9510.6', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18698', '永兴县', '9510.5', 'area', '9511', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18697', '宜章县', '9510.4', 'area', '9510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18696', '桂阳县', '9510.3', 'area', '9510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18695', '苏仙区', '9510.2', 'area', '9510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18694', '北湖区', '9510.1', 'area', '9510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18693', '郴州市', '9510', 'area', '9510', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18692', '沅江市', '9509.6', 'area', '9510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18691', '安化县', '9509.5', 'area', '9510', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18690', '桃江县', '9509.4', 'area', '9509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18689', '南　县', '9509.3', 'area', '9509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18688', '赫山区', '9509.2', 'area', '9509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18687', '资阳区', '9509.1', 'area', '9509', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18686', '益阳市', '9509', 'area', '9509', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18685', '桑植县', '9508.4', 'area', '9508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18684', '慈利县', '9508.3', 'area', '9508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18683', '武陵源区', '9508.2', 'area', '9508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18682', '永定区', '9508.1', 'area', '9508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18681', '张家界市', '9508', 'area', '9508', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18680', '津市市', '9507.9', 'area', '9508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18679', '石门县', '9507.8', 'area', '9508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18678', '桃源县', '9507.7', 'area', '9508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18677', '临澧县', '9507.6', 'area', '9508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18676', '澧　县', '9507.5', 'area', '9508', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18675', '汉寿县', '9507.4', 'area', '9507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18674', '安乡县', '9507.3', 'area', '9507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18673', '鼎城区', '9507.2', 'area', '9507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18672', '武陵区', '9507.1', 'area', '9507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18671', '常德市', '9507', 'area', '9507', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18670', '临湘市', '9506.9', 'area', '9507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18669', '汨罗市', '9506.8', 'area', '9507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18668', '平江县', '9506.7', 'area', '9507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18667', '湘阴县', '9506.6', 'area', '9507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18666', '华容县', '9506.5', 'area', '9507', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18665', '岳阳县', '9506.4', 'area', '9506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18664', '君山区', '9506.3', 'area', '9506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18663', '云溪区', '9506.2', 'area', '9506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18662', '岳阳楼区', '9506.1', 'area', '9506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18661', '岳阳市', '9506', 'area', '9506', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18660', '武冈市', '9505.12', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18659', '城步苗族自治县', '9505.11', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18658', '新宁县', '9505.10', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18657', '绥宁县', '9505.9', 'area', '9506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18656', '洞口县', '9505.8', 'area', '9506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18655', '隆回县', '9505.7', 'area', '9506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18654', '邵阳县', '9505.6', 'area', '9506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18653', '新邵县', '9505.5', 'area', '9506', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18652', '邵东县', '9505.4', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18651', '北塔区', '9505.3', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18650', '大祥区', '9505.2', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18649', '双清区', '9505.1', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18648', '邵阳市', '9505', 'area', '9505', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18647', '常宁市', '9504.12', 'area', '9504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18646', '耒阳市', '9504.11', 'area', '9504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18645', '祁东县', '9504.10', 'area', '9504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18644', '衡东县', '9504.9', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18643', '衡山县', '9504.8', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18642', '衡南县', '9504.7', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18641', '衡阳县', '9504.6', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18640', '南岳区', '9504.5', 'area', '9505', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18639', '蒸湘区', '9504.4', 'area', '9504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18638', '石鼓区', '9504.3', 'area', '9504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18637', '雁峰区', '9504.2', 'area', '9504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18636', '珠晖区', '9504.1', 'area', '9504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18635', '衡阳市', '9504', 'area', '9504', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18634', '韶山市', '9503.5', 'area', '9504', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18633', '湘乡市', '9503.4', 'area', '9503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18632', '湘潭县', '9503.3', 'area', '9503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18631', '岳塘区', '9503.2', 'area', '9503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18630', '雨湖区', '9503.1', 'area', '9503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18629', '湘潭市', '9503', 'area', '9503', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18628', '醴陵市', '9502.9', 'area', '9503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18627', '炎陵县', '9502.8', 'area', '9503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18626', '茶陵县', '9502.7', 'area', '9503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18625', '攸　县', '9502.6', 'area', '9503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18624', '株洲县', '9502.5', 'area', '9503', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18623', '天元区', '9502.4', 'area', '9502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18622', '石峰区', '9502.3', 'area', '9502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18621', '芦淞区', '9502.2', 'area', '9502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18620', '荷塘区', '9502.1', 'area', '9502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18619', '株洲市', '9502', 'area', '9502', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18618', '浏阳市', '9501.9', 'area', '9502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18617', '宁乡县', '9501.8', 'area', '9502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18616', '望城县', '9501.7', 'area', '9502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18615', '长沙县', '9501.6', 'area', '9502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18614', '雨花区', '9501.5', 'area', '9502', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18613', '开福区', '9501.4', 'area', '9501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18612', '岳麓区', '9501.3', 'area', '9501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18611', '天心区', '9501.2', 'area', '9501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18610', '芙蓉区', '9501.1', 'area', '9501', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18609', '长沙市', '9501', 'area', '9501', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18608', '湖南省', '9500', 'area', '9500', '0');
INSERT INTO `pmw_cascadedata` VALUES ('18607', '神农架林区', '9014.4', 'area', '9014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18606', '天门市', '9014.3', 'area', '9014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18605', '潜江市', '9014.2', 'area', '9014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18604', '仙桃市', '9014.1', 'area', '9014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18603', '省直辖行政单位', '9014', 'area', '9014', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18602', '鹤峰县', '9013.8', 'area', '9014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18601', '来凤县', '9013.7', 'area', '9014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18600', '咸丰县', '9013.6', 'area', '9014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18599', '宣恩县', '9013.5', 'area', '9014', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18598', '巴东县', '9013.4', 'area', '9013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18597', '建始县', '9013.3', 'area', '9013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18596', '利川市', '9013.2', 'area', '9013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18595', '恩施市', '9013.1', 'area', '9013', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18594', '恩施土家族苗族自治州', '9013', 'area', '9013', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18593', '广水市', '9012.2', 'area', '9012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18592', '曾都区', '9012.1', 'area', '9012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18591', '随州市', '9012', 'area', '9012', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18590', '赤壁市', '9011.6', 'area', '9012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18589', '通山县', '9011.5', 'area', '9012', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18588', '崇阳县', '9011.4', 'area', '9011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18587', '通城县', '9011.3', 'area', '9011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18586', '嘉鱼县', '9011.2', 'area', '9011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18585', '咸安区', '9011.1', 'area', '9011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18584', '咸宁市', '9011', 'area', '9011', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18583', '武穴市', '9010.10', 'area', '9010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18582', '麻城市', '9010.9', 'area', '9011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18581', '黄梅县', '9010.8', 'area', '9011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18580', '蕲春县', '9010.7', 'area', '9011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18579', '浠水县', '9010.6', 'area', '9011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18578', '英山县', '9010.5', 'area', '9011', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18577', '罗田县', '9010.4', 'area', '9010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18576', '红安县', '9010.3', 'area', '9010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18575', '团风县', '9010.2', 'area', '9010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18574', '州区', '9010.1', 'area', '9010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18573', '黄冈市', '9010', 'area', '9010', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18572', '松滋市', '9009.8', 'area', '9010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18571', '洪湖市', '9009.7', 'area', '9010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18570', '石首市', '9009.6', 'area', '9010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18569', '江陵县', '9009.5', 'area', '9010', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18568', '监利县', '9009.4', 'area', '9009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18567', '公安县', '9009.3', 'area', '9009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18566', '荆州区', '9009.2', 'area', '9009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18565', '沙市区', '9009.1', 'area', '9009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18564', '荆州市', '9009', 'area', '9009', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18563', '汉川市', '9008.7', 'area', '9009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18562', '孝南区', '9008.6', 'area', '9009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18561', '孝昌县', '9008.5', 'area', '9009', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18560', '大悟县', '9008.4', 'area', '9008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18559', '云梦县', '9008.3', 'area', '9008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18558', '应城市', '9008.2', 'area', '9008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18557', '安陆市', '9008.1', 'area', '9008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18556', '孝感市', '9008', 'area', '9008', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18555', '东宝区', '9007.5', 'area', '9008', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18554', '掇刀区', '9007.4', 'area', '9007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18553', '京山县', '9007.3', 'area', '9007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18552', '沙洋县', '9007.2', 'area', '9007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18551', '钟祥市', '9007.1', 'area', '9007', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18550', '荆门市', '9007', 'area', '9007', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18549', '鄂城区', '9006.3', 'area', '9006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18548', '华容区', '9006.2', 'area', '9006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18547', '梁子湖区', '9006.1', 'area', '9006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18546', '鄂州市', '9006', 'area', '9006', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18545', '宜城市', '9005.9', 'area', '9006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18544', '枣阳市', '9005.8', 'area', '9006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18543', '老河口市', '9005.7', 'area', '9006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18542', '保康县', '9005.6', 'area', '9006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18541', '谷城县', '9005.5', 'area', '9006', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18540', '南漳县', '9005.4', 'area', '9005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18539', '襄阳区', '9005.3', 'area', '9005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18538', '樊城区', '9005.2', 'area', '9005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18537', '襄城区', '9005.1', 'area', '9005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18536', '襄樊市', '9005', 'area', '9005', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18535', '枝江市', '9004.13', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18534', '当阳市', '9004.12', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18533', '宜都市', '9004.11', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18532', '五峰土家族自治县', '9004.10', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18531', '长阳土家族自治县', '9004.9', 'area', '9005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18530', '秭归县', '9004.8', 'area', '9005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18529', '兴山县', '9004.7', 'area', '9005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18528', '远安县', '9004.6', 'area', '9005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18527', '夷陵区', '9004.5', 'area', '9005', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18526', '猇亭区', '9004.4', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18525', '点军区', '9004.3', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18524', '伍家岗区', '9004.2', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18523', '西陵区', '9004.1', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18522', '宜昌市', '9004', 'area', '9004', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18521', '丹江口市', '9003.8', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18520', '房　县', '9003.7', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18519', '竹溪县', '9003.6', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18518', '竹山县', '9003.5', 'area', '9004', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18517', '郧西县', '9003.4', 'area', '9003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18516', '郧　县', '9003.3', 'area', '9003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18515', '张湾区', '9003.2', 'area', '9003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18514', '茅箭区', '9003.1', 'area', '9003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18513', '十堰市', '9003', 'area', '9003', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18512', '大冶市', '9002.6', 'area', '9003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18511', '阳新县', '9002.5', 'area', '9003', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18510', '铁山区', '9002.4', 'area', '9002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18509', '下陆区', '9002.3', 'area', '9002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18508', '西塞山区', '9002.2', 'area', '9002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18507', '黄石港区', '9002.1', 'area', '9002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18506', '黄石市', '9002', 'area', '9002', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18505', '新洲区', '9001.13', 'area', '9001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18504', '黄陂区', '9001.12', 'area', '9001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18503', '江夏区', '9001.11', 'area', '9001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18502', '蔡甸区', '9001.10', 'area', '9001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18501', '汉南区', '9001.9', 'area', '9002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18500', '东西湖区', '9001.8', 'area', '9002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18499', '洪山区', '9001.7', 'area', '9002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18498', '青山区', '9001.6', 'area', '9002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18497', '武昌区', '9001.5', 'area', '9002', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18496', '汉阳区', '9001.4', 'area', '9001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18495', '乔口区', '9001.3', 'area', '9001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18494', '江汉区', '9001.2', 'area', '9001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18493', '江岸区', '9001.1', 'area', '9001', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18492', '武汉市', '9001', 'area', '9001', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18491', '湖北省', '9000', 'area', '9000', '0');
INSERT INTO `pmw_cascadedata` VALUES ('18490', '新蔡县', '8517.10', 'area', '8517', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18489', '遂平县', '8517.9', 'area', '8518', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18488', '汝南县', '8517.8', 'area', '8518', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18487', '泌阳县', '8517.7', 'area', '8518', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18486', '确山县', '8517.6', 'area', '8518', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18485', '正阳县', '8517.5', 'area', '8518', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18484', '平舆县', '8517.4', 'area', '8517', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18483', '上蔡县', '8517.3', 'area', '8517', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18482', '西平县', '8517.2', 'area', '8517', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18481', '驿城区', '8517.1', 'area', '8517', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18480', '驻马店市', '8517', 'area', '8517', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18479', '项城市', '8516.10', 'area', '8516', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18478', '鹿邑县', '8516.9', 'area', '8517', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18477', '太康县', '8516.8', 'area', '8517', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18476', '淮阳县', '8516.7', 'area', '8517', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18475', '郸城县', '8516.6', 'area', '8517', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18474', '沈丘县', '8516.5', 'area', '8517', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18473', '商水县', '8516.4', 'area', '8516', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18472', '西华县', '8516.3', 'area', '8516', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18471', '扶沟县', '8516.2', 'area', '8516', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18470', '川汇区', '8516.1', 'area', '8516', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18469', '周口市', '8516', 'area', '8516', '1');
INSERT INTO `pmw_cascadedata` VALUES ('18468', '息　县', '8515.10', 'area', '8515', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18467', '淮滨县', '8515.9', 'area', '8516', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18466', '潢川县', '8515.8', 'area', '8516', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18465', '固始县', '8515.7', 'area', '8516', '2');
INSERT INTO `pmw_cascadedata` VALUES ('18464', '商城县', '8515.6', 'area', '8516', '2');

-- ----------------------------
-- Table structure for pmw_diyfield
-- ----------------------------
DROP TABLE IF EXISTS `pmw_diyfield`;
CREATE TABLE `pmw_diyfield` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '自定义字段id',
  `infotype` tinyint(1) unsigned NOT NULL COMMENT '所属模型',
  `catepriv` varchar(255) NOT NULL COMMENT '所属栏目',
  `fieldname` varchar(30) NOT NULL COMMENT '字段名称',
  `fieldtitle` varchar(30) NOT NULL COMMENT '字段标题',
  `fielddesc` varchar(255) NOT NULL COMMENT '字段提示',
  `fieldtype` varchar(30) NOT NULL COMMENT '字段类型',
  `fieldlong` varchar(10) NOT NULL COMMENT '字段长度',
  `fieldsel` varchar(255) NOT NULL COMMENT '字段选项值',
  `fieldcheck` varchar(80) NOT NULL COMMENT '校验正则',
  `fieldcback` varchar(30) NOT NULL COMMENT '未通过提示',
  `orderid` smallint(6) NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_diyfield
-- ----------------------------

-- ----------------------------
-- Table structure for pmw_diymenu
-- ----------------------------
DROP TABLE IF EXISTS `pmw_diymenu`;
CREATE TABLE `pmw_diymenu` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '自定义菜单id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '所属菜单id',
  `classname` varchar(30) NOT NULL COMMENT '菜单项名称',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_diymenu
-- ----------------------------

-- ----------------------------
-- Table structure for pmw_diymodel
-- ----------------------------
DROP TABLE IF EXISTS `pmw_diymodel`;
CREATE TABLE `pmw_diymodel` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '自定义模型id',
  `modeltitle` varchar(30) NOT NULL COMMENT '模型标题',
  `modelname` varchar(30) NOT NULL COMMENT '模型名称',
  `modeltbname` varchar(30) NOT NULL COMMENT '模型表名',
  `defaultfield` varchar(80) NOT NULL COMMENT '预设栏目',
  `orderid` smallint(6) NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_diymodel
-- ----------------------------

-- ----------------------------
-- Table structure for pmw_failedlogin
-- ----------------------------
DROP TABLE IF EXISTS `pmw_failedlogin`;
CREATE TABLE `pmw_failedlogin` (
  `username` char(30) NOT NULL COMMENT '用户名',
  `ip` char(15) NOT NULL COMMENT '登录IP',
  `time` int(10) unsigned NOT NULL COMMENT '登录时间',
  `num` tinyint(1) NOT NULL COMMENT '失败次数',
  `isadmin` tinyint(1) NOT NULL COMMENT '是否是管理员',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_failedlogin
-- ----------------------------

-- ----------------------------
-- Table structure for pmw_fragment
-- ----------------------------
DROP TABLE IF EXISTS `pmw_fragment`;
CREATE TABLE `pmw_fragment` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '碎片数据id',
  `title` varchar(30) NOT NULL COMMENT '碎片数据名称',
  `picurl` varchar(80) NOT NULL COMMENT '碎片数据缩略图',
  `linkurl` varchar(80) NOT NULL COMMENT '碎片数据连接',
  `content` mediumtext NOT NULL COMMENT '碎片数据内容',
  `posttime` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_fragment
-- ----------------------------

-- ----------------------------
-- Table structure for pmw_getmode
-- ----------------------------
DROP TABLE IF EXISTS `pmw_getmode`;
CREATE TABLE `pmw_getmode` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '货到方式id',
  `classname` varchar(30) NOT NULL COMMENT '货到方式名称',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_getmode
-- ----------------------------
INSERT INTO `pmw_getmode` VALUES ('1', '送货上门', '1', 'true');
INSERT INTO `pmw_getmode` VALUES ('2', '用户自取', '2', 'true');

-- ----------------------------
-- Table structure for pmw_goods
-- ----------------------------
DROP TABLE IF EXISTS `pmw_goods`;
CREATE TABLE `pmw_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `classid` smallint(5) unsigned NOT NULL COMMENT '所属栏目',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '所属栏目父id',
  `parentstr` varchar(80) NOT NULL COMMENT '所属栏目父id字符串',
  `typeid` smallint(5) unsigned NOT NULL COMMENT '商品分类',
  `typepid` smallint(5) unsigned NOT NULL COMMENT '商品分类父id',
  `typepstr` varchar(80) NOT NULL COMMENT '商品分类父id字符串',
  `brandid` smallint(5) NOT NULL COMMENT '商品品牌id',
  `brandpid` smallint(5) NOT NULL COMMENT '品牌上级id',
  `brandpstr` varchar(80) NOT NULL COMMENT '品牌上级id字符串',
  `title` varchar(80) NOT NULL COMMENT '商品名称',
  `colorval` char(10) NOT NULL COMMENT '标题颜色',
  `boldval` char(10) NOT NULL COMMENT '标题加粗',
  `flag` varchar(30) NOT NULL COMMENT '属性',
  `goodsid` varchar(30) NOT NULL COMMENT '货号',
  `payfreight` enum('0','1') NOT NULL COMMENT '运费承担',
  `weight` varchar(10) NOT NULL COMMENT '重量',
  `attrstr` text NOT NULL COMMENT '属性字符串',
  `marketprice` char(10) NOT NULL COMMENT '市场价格',
  `salesprice` char(10) NOT NULL COMMENT '销售价格',
  `housenum` smallint(5) unsigned NOT NULL COMMENT '库存数量',
  `housewarn` enum('true','false') NOT NULL COMMENT '库存警告',
  `warnnum` smallint(5) unsigned NOT NULL COMMENT '警告数量',
  `integral` char(10) NOT NULL COMMENT '积分点数',
  `source` varchar(50) NOT NULL COMMENT '文章来源',
  `author` varchar(50) NOT NULL COMMENT '作者编辑',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `keywords` varchar(30) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `content` mediumtext NOT NULL COMMENT '详细内容',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `picarr` text NOT NULL COMMENT '组图',
  `hits` int(10) unsigned NOT NULL COMMENT '点击次数',
  `orderid` int(10) unsigned NOT NULL COMMENT '排列排序',
  `posttime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  `delstate` set('true') NOT NULL COMMENT '删除状态',
  `deltime` int(10) NOT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_goods
-- ----------------------------
INSERT INTO `pmw_goods` VALUES ('1', '12', '0', '0,', '10', '1', '0,1,', '-1', '-1', '', '苹果（APPLE）iPhone 5 16G版 3G手机（黑色）WCDMA/GSM 0元购机', '', '', '', '800292', '0', '0.350', 'array(\"1\"=>\"黑色|白色\",\"2\"=>\"WCDMA|GSM\");', '5899.00', '5499.00', '100', 'true', '20', '0', '', 'admin', '', 'APPLEiPhone 5,苹果iPhone 5,苹果iPh', '【苹果iPhone 5】null 360BUY京东商城(360BUY.COM)提供苹果iPhone 5正品行货，全国价格最低，并包括APPLEiPhone 5手机网购指南，以及苹果iPhone 5图片、iPhone 5参数、iPhone 5评论、iPhone 5心得、iPhone 5技巧等信息，网购苹果iPhone 5手机上京东,放心又轻松', '<p>\r\n	北京时间2012年9月13日凌晨1点（美国时间9月12日上午10点），苹果公司在美国旧金山芳草地艺术中心举行新品发布会。发布会发布了旗下的第六款手机iPhone5。此外，苹果还在大会上更推出最新款的音乐播放器iPod Touch 5、iPod nano 7和之前曝光过的新款耳机“EarPods”。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>iPhone 5</strong> 配备了4英寸1136×640分辨率的屏幕，全新的机身设计，800万像素摄像头，A6处理器和iOS 6。在存储空间方面，iPhone5将包含16GB、32GB、64GB三种版本，两年合约的售价分别为649美元、749美元、849美元。　iPhone价格信息：N42A-美国-199美元、N42B-美国-199美元、N42A-美国-299美元、N42B-美国-299美元、iphone 5，N42A-美国-399美元和N42B-美国-399美元。A和B分别代表黑色和白色。\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<strong>iPhone 5</strong>与上一代产品iPhone4S相比，iPhone5是更轻薄，屏幕尺寸更大，它的厚度是7.6毫米，比前一代是薄了18%，重量为112克，比4S轻了20%，采用速度更快的A6处理器，整体外观也拉长。iPhone5屏幕的尺寸扩大到4英寸，屏幕的比例是16：9，应用软件的图标比之前前一代增加了一行，而处理器方面iPhone5采用的是苹果自家研发的A6处理器（内含两个CPU核心和三个图形核心），性能是A5处理器的两倍，得益于更先进的制程，处理器的核心面积缩小了22%，在大幅提升了性能的同时很好地控制了功耗和发热，iPhone5支持LTE网络,不支持NFC近场芯片。Siri也有升级，支持中文和拓展功能。iPhone 5的网速峰值速率可达到iPhone 4S的7倍。\r\n</p>', 'templates/default/images/imgdata/iphone5_01.jpg', 'a:5:{i:0;s:48:\"templates/default/images/imgdata/iphone5_01.jpg,\";i:1;s:48:\"templates/default/images/imgdata/iphone5_02.jpg,\";i:2;s:48:\"templates/default/images/imgdata/iphone5_03.jpg,\";i:3;s:48:\"templates/default/images/imgdata/iphone5_04.jpg,\";i:4;s:48:\"templates/default/images/imgdata/iphone5_05.jpg,\";}', '327', '1', '1357786470', 'true', '', '0');

-- ----------------------------
-- Table structure for pmw_goodsattr
-- ----------------------------
DROP TABLE IF EXISTS `pmw_goodsattr`;
CREATE TABLE `pmw_goodsattr` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品属性id',
  `goodsid` smallint(5) unsigned NOT NULL COMMENT '所属分类',
  `attrname` varchar(30) NOT NULL COMMENT '属性名称',
  `orderid` mediumint(8) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_goodsattr
-- ----------------------------
INSERT INTO `pmw_goodsattr` VALUES ('1', '10', '颜色', '1', 'true');
INSERT INTO `pmw_goodsattr` VALUES ('2', '10', '型号', '2', 'true');

-- ----------------------------
-- Table structure for pmw_goodsbrand
-- ----------------------------
DROP TABLE IF EXISTS `pmw_goodsbrand`;
CREATE TABLE `pmw_goodsbrand` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品品牌id',
  `parentid` mediumint(8) unsigned NOT NULL COMMENT '品牌上级id',
  `parentstr` varchar(50) NOT NULL COMMENT '品牌上级id字符串',
  `classname` varchar(30) NOT NULL COMMENT '品牌名称',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `orderid` mediumint(10) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_goodsbrand
-- ----------------------------

-- ----------------------------
-- Table structure for pmw_goodsflag
-- ----------------------------
DROP TABLE IF EXISTS `pmw_goodsflag`;
CREATE TABLE `pmw_goodsflag` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品标记id',
  `flag` varchar(30) NOT NULL COMMENT '标记名称',
  `flagname` varchar(30) NOT NULL COMMENT '标记标识',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_goodsflag
-- ----------------------------
INSERT INTO `pmw_goodsflag` VALUES ('1', 'c', '推荐', '1');
INSERT INTO `pmw_goodsflag` VALUES ('2', 'f', '幻灯', '2');
INSERT INTO `pmw_goodsflag` VALUES ('3', 'a', '特推', '3');
INSERT INTO `pmw_goodsflag` VALUES ('4', 't', '特价', '4');
INSERT INTO `pmw_goodsflag` VALUES ('5', 'h', '热卖', '5');

-- ----------------------------
-- Table structure for pmw_goodsorder
-- ----------------------------
DROP TABLE IF EXISTS `pmw_goodsorder`;
CREATE TABLE `pmw_goodsorder` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品订单id',
  `username` varchar(30) NOT NULL COMMENT '会员用户名',
  `attrstr` text NOT NULL COMMENT '商品列表',
  `truename` varchar(30) NOT NULL COMMENT '收货人姓名',
  `telephone` varchar(30) NOT NULL COMMENT '电话',
  `idcard` varchar(30) NOT NULL COMMENT '证件号码',
  `zipcode` varchar(30) NOT NULL COMMENT '邮编',
  `postarea_prov` varchar(10) NOT NULL COMMENT '配送地区_省',
  `postarea_city` varchar(10) NOT NULL COMMENT '配送地区_市',
  `postarea_country` varchar(10) NOT NULL COMMENT '配送地区_县',
  `address` varchar(80) NOT NULL COMMENT '地址',
  `postmode` smallint(5) NOT NULL COMMENT '配送方式',
  `paymode` smallint(5) NOT NULL COMMENT '支付方式',
  `getmode` smallint(5) NOT NULL COMMENT '货到方式',
  `ordernum` varchar(30) NOT NULL COMMENT '订单号',
  `postid` varchar(30) NOT NULL COMMENT '运单号',
  `weight` varchar(10) NOT NULL COMMENT '物品重量',
  `cost` varchar(10) NOT NULL COMMENT '商品运费',
  `amount` varchar(10) NOT NULL COMMENT '订单金额',
  `integral` smallint(5) unsigned NOT NULL COMMENT '积分点数',
  `buyremark` text NOT NULL COMMENT '购物备注',
  `sendremark` text NOT NULL COMMENT '发货方备注',
  `posttime` int(10) unsigned NOT NULL COMMENT '订单时间',
  `orderid` mediumint(10) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` varchar(255) NOT NULL COMMENT '审核状态',
  `core` set('true') NOT NULL COMMENT '是否加星',
  `delstate` set('true') NOT NULL COMMENT '删除状态',
  `deltime` int(10) unsigned NOT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_goodsorder
-- ----------------------------

-- ----------------------------
-- Table structure for pmw_goodstype
-- ----------------------------
DROP TABLE IF EXISTS `pmw_goodstype`;
CREATE TABLE `pmw_goodstype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品类型id',
  `parentid` mediumint(8) unsigned NOT NULL COMMENT '类型上级id',
  `parentstr` varchar(50) NOT NULL COMMENT '类型上级id字符串',
  `classname` varchar(30) NOT NULL COMMENT '类别名称',
  `picurl` varchar(255) DEFAULT NULL COMMENT '缩略图片',
  `linkurl` varchar(255) DEFAULT NULL COMMENT '跳转链接',
  `orderid` mediumint(8) unsigned NOT NULL COMMENT '排列顺序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '隐藏类别',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_goodstype
-- ----------------------------
INSERT INTO `pmw_goodstype` VALUES ('1', '0', '0,', '手机通讯', '', '', '1', 'true');
INSERT INTO `pmw_goodstype` VALUES ('2', '0', '0,', '电脑笔记本', '', '', '2', 'true');
INSERT INTO `pmw_goodstype` VALUES ('3', '0', '0,', '相机 摄相机', '', '', '3', 'true');
INSERT INTO `pmw_goodstype` VALUES ('4', '0', '0,', '随身视听', '', '', '4', 'true');
INSERT INTO `pmw_goodstype` VALUES ('5', '0', '0,', '电脑外设', '', '', '5', 'true');
INSERT INTO `pmw_goodstype` VALUES ('6', '0', '0,', 'DIY装机', '', '', '6', 'true');
INSERT INTO `pmw_goodstype` VALUES ('7', '0', '0,', '办公用品', '', '', '7', 'true');
INSERT INTO `pmw_goodstype` VALUES ('8', '1', '0,1,', '通讯产品', '', '', '8', 'true');
INSERT INTO `pmw_goodstype` VALUES ('9', '1', '0,1,', '手机配件', '', '', '9', 'true');
INSERT INTO `pmw_goodstype` VALUES ('10', '1', '0,1,', '手机', '', '', '10', 'true');
INSERT INTO `pmw_goodstype` VALUES ('11', '2', '0,2,', '电脑整机', '', '', '11', 'true');
INSERT INTO `pmw_goodstype` VALUES ('12', '2', '0,2,', '笔记本', '', '', '12', 'true');
INSERT INTO `pmw_goodstype` VALUES ('13', '2', '0,2,', '电脑配件', '', '', '13', 'true');
INSERT INTO `pmw_goodstype` VALUES ('14', '3', '0,3,', '相机配件', '', '', '14', 'true');
INSERT INTO `pmw_goodstype` VALUES ('15', '3', '0,3,', '数码摄相机', '', '', '15', 'true');
INSERT INTO `pmw_goodstype` VALUES ('16', '3', '0,3,', '数码相机', '', '', '16', 'true');
INSERT INTO `pmw_goodstype` VALUES ('17', '4', '0,4,', '电子阅读', '', '', '17', 'true');
INSERT INTO `pmw_goodstype` VALUES ('18', '4', '0,4,', 'MID', '', '', '18', 'true');
INSERT INTO `pmw_goodstype` VALUES ('19', '4', '0,4,', 'MP3|MP4', '', '', '19', 'true');
INSERT INTO `pmw_goodstype` VALUES ('20', '5', '0,5,', '移动硬盘', '', '', '20', 'true');
INSERT INTO `pmw_goodstype` VALUES ('21', '5', '0,5,', '键盘', '', '', '21', 'true');
INSERT INTO `pmw_goodstype` VALUES ('22', '5', '0,5,', '鼠标', '', '', '22', 'true');
INSERT INTO `pmw_goodstype` VALUES ('23', '6', '0,6,', '扩展配件', '', '', '23', 'true');
INSERT INTO `pmw_goodstype` VALUES ('24', '6', '0,6,', '装机配件', '', '', '24', 'true');
INSERT INTO `pmw_goodstype` VALUES ('25', '6', '0,6,', '显示器', '', '', '25', 'true');
INSERT INTO `pmw_goodstype` VALUES ('26', '7', '0,7,', '投影显示', '', '', '26', 'true');
INSERT INTO `pmw_goodstype` VALUES ('27', '7', '0,7,', '办公打印', '', '', '27', 'true');

-- ----------------------------
-- Table structure for pmw_info
-- ----------------------------
DROP TABLE IF EXISTS `pmw_info`;
CREATE TABLE `pmw_info` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '单页id',
  `classid` smallint(5) unsigned NOT NULL COMMENT '所属栏目id',
  `mainid` smallint(5) NOT NULL COMMENT '二级类别id',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `content` mediumtext NOT NULL COMMENT '内容',
  `posttime` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_info
-- ----------------------------
INSERT INTO `pmw_info` VALUES ('1', '1', '-1', '', '测试信息来自互联网，若涉及侵权，请联系我们删除！', '1326769494');
INSERT INTO `pmw_info` VALUES ('2', '2', '-1', '', '<p style=\"text-indent:2em;\">\r\n	百度，全球最大的中文搜索引擎、最大的中文网站。2000年1月创立于北京中关村。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;\">\r\n	1999年底，身在美国硅谷的李彦宏看到了中国互联网及中文搜索引擎服务的巨大发展潜力，抱着技术改变世界的梦想，他毅然辞掉硅谷的高薪工作，携搜索引擎专利技术，于2000年1月1日在中关村创建了百度公司。从最初的不足10人发展至今，员工人数超过12000人。如今的百度，已成为中国最受欢迎、影响力最大的中文网站。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;\">\r\n	百度拥有数千名研发工程师，这是中国乃至全球最为优秀的技术团队，这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;\">\r\n	从创立之初，百度便将“让人们最便捷地获取信息，找到所求”作为自己的使命，成立以来，公司秉承“以用户为导向”的理念，不断坚持技术创新，致力于为用户提供“简单，可依赖”的互联网搜索产品及服务，其中包括：以网络搜索为主的功能性搜索，以贴吧为主的社区搜索，针对各区域、行业所需的垂直搜索，Mp3搜索，以及门户频道、IM等，全面覆盖了中文网络世界所有的搜索需求，根据第三方权威数据，百度在中国的搜索份额接近80%。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;\">\r\n	在面对用户的搜索产品不断丰富的同时，百度还创新性地推出了基于搜索的营销推广服务，并成为最受企业青睐的互联网营销推广平台。目前，中国已有数十万家企业使用了百度的搜索推广服务，不断提升着企业自身的品牌及运营效率。通过持续的商业模式创新，百度正进一步带动整个互联网行业和中小企业的经济增长，推动社会经济的发展和转型。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;\">\r\n	为推动中国数百万中小网站的发展，百度借助超大流量的平台优势，联合所有优质的各类网站，建立了世界上最大的网络联盟，使各类企业的搜索推广、品牌营销的价值、覆盖面均大面积提升。与此同时，各网站也在联盟大家庭的互助下，获得最大的生存与发展机会。\r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" />\r\n<p style=\"text-indent:2em;\">\r\n	作为国内的一家知名企业，百度也一直秉承“弥合信息鸿沟，共享知识社会”的责任理念，坚持履行企业公民的社会责任。成立来，百度利用自身优势积极投身公益事业，先后投入巨大资源，为盲人、少儿、老年人群体打造专门的搜索产品，解决了特殊群体上网难问题,极大地弥补了社会信息鸿沟问题。此外，在加速推动中国信息化进程、净化网络环境、搜索引擎教育及提升大学生就业率等方面，百度也一直走在行业领先的地位。2011年初，百度还特别成立了百度基金会，围绕知识教育、环境保护、灾难救助等领域，更加系统规范地管理和践行公益事业。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;\">\r\n	2005年，百度在美国纳斯达克上市，一举打破首日涨幅最高等多项纪录，并成为首家进入纳斯达克成分股的中国公司。通过数年来的市场表现，百度优异的业绩与值得依赖的回报，使之成为中国企业价值的代表，傲然屹立于全球资本市场。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;\">\r\n	2009年，百度更是推出全新的框计算技术概念，并基于此理念推出百度开放平台，帮助更多优秀的第三方开发者利用互联网平台自主创新、自主创业，在大幅提升网民互联网使用体验的同时，带动起围绕用户需求进行研发的产业创新热潮，对中国互联网产业的升级和发展产生巨大的拉动效应。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;\">\r\n	今天，百度已经成为中国最具价值的品牌之一，英国《金融时报》将百度列为“中国十大世界级品牌”，成为这个榜单中最年轻的一家公司，也是唯一一家互联网公司。而“亚洲最受尊敬企业”、“全球最具创新力企业”、“中国互联网力量之星”等一系列荣誉称号的获得，也无一不向外界展示着百度成立数年来的成就。\r\n</p>\r\n<br />\r\n<p style=\"text-indent:2em;\">\r\n	多年来，百度董事长兼CEO李彦宏，率领百度人所形成的“简单可依赖”的核心文化，深深地植根于百度。这是一个充满朝气、求实坦诚的公司，以搜索改变生活，推动人类的文明与进步，促进中国经济的发展为己任，正朝着更为远大的目标而迈进。\r\n</p>', '1326769513');
INSERT INTO `pmw_info` VALUES ('3', '3', '-1', 'templates/default/images/aboutus_img.png', '百度，全球最大的中文搜索引擎最大的中文网站。二零零零年一月创立于北京中关村。从最初的不足十人人发展至今，员工人数超过一万两千人。如今的百度，已成为中国最受欢迎、影响力最大的中文网站。百度拥有数千名研发工程师，这是中国乃至全球最为优秀的技术团队，这支队伍掌握着世界上最为先进的搜索引擎技术，使百度成为中国掌握世界尖端科学核心技术的中国高科技企业，也使中国成为美国、俄罗斯、和韩国之外，全球仅有的4个拥有搜索引擎核心技术的国家之一。', '1326769523');
INSERT INTO `pmw_info` VALUES ('4', '9', '-1', '', '<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"ke-zeroborder\">\r\n	<tbody>\r\n		<tr>\r\n			<td width=\"30%\" valign=\"top\">\r\n				<strong> <span style=\"color:#333333;\">百度大厦：</span></strong><br />\r\n地　址：北京市海淀区上地十街10号<br />\r\n邮　编：100085<br />\r\n			</td>\r\n			<td valign=\"top\">\r\n				<br />\r\nAddress:    Baidu Campus, No.10, Shangdi 10th Street Haidian District, Beijing, China<br />\r\nPost Code:&nbsp;100085\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"ke-zeroborder\">\r\n	<tbody>\r\n		<tr>\r\n			<td width=\"30%\" valign=\"top\">\r\n				总　机：(+86 10) 5992 8888<br />\r\n传　真：(+86 10) 5992 0000<br />\r\n			</td>\r\n			<td valign=\"top\">\r\n				Tel:&nbsp;(+86 10) 5992 8888<br />\r\nFAX:&nbsp;(+86 10) 5992 0000\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n<img src=\"templates/default/images/imgdata/map.png\" />', '1326769535');
INSERT INTO `pmw_info` VALUES ('5', '10', '-1', '', '地址:北京市海淀区上地十街10号<br />\r\n总机:(+86 10) 5992 8888<br />\r\n传真:(+86 10) 5992 0000', '1326769548');

-- ----------------------------
-- Table structure for pmw_infoclass
-- ----------------------------
DROP TABLE IF EXISTS `pmw_infoclass`;
CREATE TABLE `pmw_infoclass` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '栏目上级id',
  `parentstr` varchar(50) NOT NULL COMMENT '栏目上级id字符串',
  `infotype` tinyint(1) unsigned NOT NULL COMMENT '栏目类型',
  `classname` varchar(30) NOT NULL COMMENT '栏目名称',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `picwidth` varchar(5) NOT NULL COMMENT '缩略图宽度',
  `picheight` varchar(5) NOT NULL COMMENT '缩略图高度',
  `seotitle` varchar(80) NOT NULL COMMENT 'SEO标题',
  `keywords` varchar(50) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_infoclass
-- ----------------------------
INSERT INTO `pmw_infoclass` VALUES ('1', '1', '0', '0,', '0', '网站公告', '', '', '', '', '', '', '', '1', 'false');
INSERT INTO `pmw_infoclass` VALUES ('2', '1', '0', '0,', '0', '关于我们', 'about.php', '', '', '', '', '', '', '2', 'true');
INSERT INTO `pmw_infoclass` VALUES ('3', '1', '2', '0,2,', '0', '关于我们摘要', '', '', '', '', '', '', '', '3', 'true');
INSERT INTO `pmw_infoclass` VALUES ('4', '1', '0', '0,', '1', '新闻动态', 'news.php', '', '', '', '', '', '', '4', 'true');
INSERT INTO `pmw_infoclass` VALUES ('5', '1', '0', '0,', '2', '产品展示', 'product.php', '', '', '', '', '', '', '5', 'true');
INSERT INTO `pmw_infoclass` VALUES ('6', '1', '5', '0,5,', '2', '笔记本电脑', 'product.php?cid=6', '', '', '', '', '', '', '6', 'true');
INSERT INTO `pmw_infoclass` VALUES ('7', '1', '5', '0,5,', '2', '智能手机', 'product.php?cid=7', '', '', '', '', '', '', '7', 'true');
INSERT INTO `pmw_infoclass` VALUES ('8', '1', '0', '0,', '2', '成功案例', 'case.php', '', '', '', '', '', '', '8', 'true');
INSERT INTO `pmw_infoclass` VALUES ('9', '1', '0', '0,', '0', '联系我们', 'contact.php', '', '', '', '', '', '', '9', 'true');
INSERT INTO `pmw_infoclass` VALUES ('10', '1', '9', '0,9,', '0', '联系我们摘要', '', '', '', '', '', '', '', '10', 'true');
INSERT INTO `pmw_infoclass` VALUES ('11', '1', '0', '0,', '3', '软件下载', 'soft.php', '', '', '', '', '', '', '11', 'true');
INSERT INTO `pmw_infoclass` VALUES ('12', '1', '0', '0,', '4', '商品展示', 'goods.php', '', '', '', '', '', '', '12', 'true');
INSERT INTO `pmw_infoclass` VALUES ('13', '1', '0', '0,', '2', '幻灯Banner', '', '', '', '', '', '', '', '13', 'false');
INSERT INTO `pmw_infoclass` VALUES ('14', '1', '0', '0,', '1', '解决方案', '', '', '', '', '', '', '', '14', 'true');
INSERT INTO `pmw_infoclass` VALUES ('15', '1', '0', '0,', '1', '关于我们', '', 'uploads/image/20170703/1499072594.png', '', '', '', '', '', '15', 'true');
INSERT INTO `pmw_infoclass` VALUES ('16', '1', '0', '0,', '1', '新闻资讯', '', '', '', '', '', '', '', '16', 'true');
INSERT INTO `pmw_infoclass` VALUES ('17', '1', '0', '0,', '1', '尾部', '', '', '', '', '', '', '', '17', 'true');
INSERT INTO `pmw_infoclass` VALUES ('18', '1', '0', '0,', '1', '解决方案', '', '', '', '', '', '', '', '18', 'true');
INSERT INTO `pmw_infoclass` VALUES ('19', '1', '0', '0,', '1', '产品展示', '', '', '', '', '', '', '', '19', 'true');
INSERT INTO `pmw_infoclass` VALUES ('20', '1', '15', '0,15,', '1', '公司简介', '', '', '', '', '', '', '', '20', 'true');
INSERT INTO `pmw_infoclass` VALUES ('21', '1', '15', '0,15,', '1', '荣誉资质', 'abouthonnor.php', '', '', '', '', '', '', '21', 'true');
INSERT INTO `pmw_infoclass` VALUES ('22', '1', '15', '0,15,', '1', '企业文化', 'aboutclutrue.php', '', '', '', '', '', '', '22', 'true');
INSERT INTO `pmw_infoclass` VALUES ('23', '1', '15', '0,15,', '1', '董事长致辞', 'aboutmine.php', '', '', '', '', '', '', '23', 'true');
INSERT INTO `pmw_infoclass` VALUES ('24', '1', '15', '0,15,', '1', '公司风采', '', '', '', '', '', '', '', '24', 'true');
INSERT INTO `pmw_infoclass` VALUES ('25', '1', '15', '0,15,', '1', '合作伙伴', 'aboutpeople.php', '', '', '', '', '', '', '25', 'true');
INSERT INTO `pmw_infoclass` VALUES ('26', '1', '15', '0,15,', '1', '公司地址', '', '', '', '', '', '', '', '26', 'true');
INSERT INTO `pmw_infoclass` VALUES ('27', '1', '0', '0,', '1', '加入奥昇', '', '', '', '', '', '', '', '27', 'true');
INSERT INTO `pmw_infoclass` VALUES ('28', '1', '0', '0,', '1', '详情页面', '', '', '', '', '', '', '', '28', 'true');

-- ----------------------------
-- Table structure for pmw_infoflag
-- ----------------------------
DROP TABLE IF EXISTS `pmw_infoflag`;
CREATE TABLE `pmw_infoflag` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '信息标记id',
  `flag` varchar(30) NOT NULL COMMENT '标记名称',
  `flagname` varchar(30) NOT NULL COMMENT '标记标识',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_infoflag
-- ----------------------------
INSERT INTO `pmw_infoflag` VALUES ('1', 'h', '头条', '1');
INSERT INTO `pmw_infoflag` VALUES ('2', 'c', '推荐', '2');
INSERT INTO `pmw_infoflag` VALUES ('3', 'f', '幻灯', '3');
INSERT INTO `pmw_infoflag` VALUES ('4', 'a', '特荐', '4');
INSERT INTO `pmw_infoflag` VALUES ('5', 's', '滚动', '5');
INSERT INTO `pmw_infoflag` VALUES ('6', 'j', '跳转', '6');

-- ----------------------------
-- Table structure for pmw_infoimg
-- ----------------------------
DROP TABLE IF EXISTS `pmw_infoimg`;
CREATE TABLE `pmw_infoimg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片信息id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `classid` smallint(5) unsigned NOT NULL COMMENT '所属栏目id',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '所属栏目上级id',
  `parentstr` varchar(80) NOT NULL COMMENT '所属栏目上级id字符串',
  `mainid` smallint(5) NOT NULL COMMENT '二级类别id',
  `mainpid` smallint(5) NOT NULL COMMENT '二级类别父id',
  `mainpstr` varchar(80) NOT NULL COMMENT '二级累呗父id字符串',
  `title` varchar(80) NOT NULL COMMENT '标题',
  `colorval` char(10) NOT NULL COMMENT '字体颜色',
  `boldval` char(10) NOT NULL COMMENT '字体加粗',
  `flag` varchar(30) NOT NULL COMMENT '属性',
  `source` varchar(50) NOT NULL COMMENT '文章来源',
  `author` varchar(50) NOT NULL COMMENT '作者编辑',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `content` mediumtext NOT NULL COMMENT '详细内容',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `picarr` text NOT NULL COMMENT '组图',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击次数',
  `orderid` int(10) unsigned NOT NULL COMMENT '排列排序',
  `posttime` int(10) NOT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  `delstate` set('true') NOT NULL COMMENT '删除状态',
  `deltime` int(10) unsigned NOT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_infoimg
-- ----------------------------
INSERT INTO `pmw_infoimg` VALUES ('1', '1', '7', '5', '0,5,', '-1', '-1', '', '苹果iPhone 4S 白色版', '', '', '', '', 'admin', '', '白色版', '', '', 'templates/default/images/imgdata/iphone4s_w.jpg', '', '57', '1', '1326770071', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('2', '1', '7', '5', '0,5,', '-1', '-1', '', '苹果iphone 4s', '', '', '', '', 'admin', '', '黑色版', '', '', 'templates/default/images/imgdata/iphone4s.jpg', '', '118', '2', '1326770089', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('3', '1', '6', '5', '0,5,', '-1', '-1', '', '苹果iPad 2 16GB/WIFI版', '', '', '', '', 'admin', '', '16GB/WIFI版', '', '', 'templates/default/images/imgdata/ipad2.jpg', '', '85', '3', '1326770110', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('4', '1', '6', '5', '0,5,', '-1', '-1', '', '苹果iPod touch 4', '', '', '', '', 'admin', '', '白色', '', '', 'templates/default/images/imgdata/iPod.jpg', '', '159', '4', '1326770133', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('5', '1', '6', '5', '0,5,', '-1', '-1', '', '苹果MacBook Pro', '', '', '', '', 'admin', '', 'MC725CH/A', '', '', 'templates/default/images/imgdata/macbook.jpg', '', '86', '5', '1326770162', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('6', '1', '6', '5', '0,5,', '-1', '-1', '', '苹果iMac', '', '', '', '', 'admin', '', 'MC814CH/A', '', '', 'templates/default/images/imgdata/iMac.jpg', '', '160', '6', '1326770178', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('7', '1', '8', '0', '0,', '-1', '-1', '', '361度——腾讯大运会梦想传递', '', '', '', '', 'admin', '', '', '火炬传递将是拉开2011年深圳世界大运会全民眼帘的幕布，政府首次以官方身份举办的网络虚拟火炬传递活动。将火炬虚拟传递举办成为深圳世界大运会的一次互联网传播盛会，361度借此机遇搭载腾讯大平台，迅速使其品牌在深圳世界大运会全面曝光，从而达到361度传播品牌，提升品牌形象的目的。', '', 'templates/default/images/imgdata/361du.jpg', '', '107', '7', '1326770200', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('8', '1', '8', '0', '0,', '-1', '-1', '', '中华牙膏——我的微笑闪亮未来', '', '', '', '', 'admin', '', '', '这次活动将微博与微电影进行多种结合，充分调动用户与向微电影互动，通过看电影收集微笑金币，微博好友“出演”微电影，写下“我的未来”等，将中华牙膏“我的微笑 闪亮未来”的精神精准传递给受众。', '', 'templates/default/images/imgdata/zhonghua.jpg', '', '195', '8', '1326770219', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('9', '1', '8', '0', '0,', '-1', '-1', '', '中国电信天翼——三星I559 I mini I life', '', '', '', '', 'admin', '', '', '作为电信天翼的定制手机，三星Galaxy 系列手机 Galaxy Mini上市之际，电信天翼希望借助腾讯的媒体平台和互动形式，直击年轻消费群体，实现产品对目标受众的充分曝光和产品卖点的有效深化 。', '', 'templates/default/images/imgdata/I559.jpg', '', '143', '9', '1326770246', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('10', '1', '8', '0', '0,', '-1', '-1', '', 'Moto——MT620两面派变身秀', '', '', '', '', 'admin', '', '', 'Tahiti是MOTO推出的第一款将“触摸屏幕”和“QWERTY Bar”相结合的智能手机 ，为快速引发青年白领关注，MOTO借腾讯大平台，打造了一场“两面派变身秀”。', '', 'templates/default/images/imgdata/moto.jpg', '', '116', '10', '1326770273', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('11', '1', '13', '0', '0,', '-1', '-1', '', '三一重工86米世界最长臂架泵车下线', '', '', '', '', 'admin', '', '', '', '', 'templates/default/images/imgdata/slideimg_1.jpg', '', '64', '11', '1326770289', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('12', '1', '13', '0', '0,', '-1', '-1', '', '三一产品获八项第一', '', '', '', '', 'admin', '', '', '', '', 'templates/default/images/imgdata/slideimg_2.jpg', '', '131', '12', '1326770306', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('13', '1', '13', '0', '0,', '-1', '-1', '', '三一获评《财富》十大“最受赞赏中国公司”', '', '', '', '', 'admin', '', '', '', '', 'templates/default/images/imgdata/slideimg_3.jpg', '', '80', '13', '1326770336', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('14', '1', '13', '0', '0,', '-1', '-1', '', '唐家璇：三一重工为国家争了光', '', '', '', '', 'admin', '', '', '', '', 'templates/default/images/imgdata/slideimg_4.jpg', '', '87', '14', '1326770383', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('15', '1', '13', '0', '0,', '-1', '-1', '', '亚洲首台千吨级全地面起重机SAC12000 2.0兆风电吊装圆满成功', '', '', '', '', 'admin', '', '', '', '', 'templates/default/images/imgdata/slideimg_5.jpg', '', '53', '15', '1326770404', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('16', '1', '13', '0', '0,', '-1', '-1', '', '幻灯', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499069511.jpg', '', '66', '16', '1499069088', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('17', '1', '13', '0', '0,', '-1', '-1', '', '幻灯2', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499071073.jpg', '', '126', '17', '1499069142', 'true', '', '0');
INSERT INTO `pmw_infoimg` VALUES ('18', '1', '13', '0', '0,', '-1', '-1', '', '幻灯3', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499076802.jpg', '', '180', '18', '1499069174', 'true', '', '0');

-- ----------------------------
-- Table structure for pmw_infolist
-- ----------------------------
DROP TABLE IF EXISTS `pmw_infolist`;
CREATE TABLE `pmw_infolist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '列表信息id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `classid` smallint(5) unsigned NOT NULL COMMENT '所属栏目id',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '所属栏目上级id',
  `parentstr` varchar(80) NOT NULL COMMENT '所属栏目上级id字符串',
  `mainid` smallint(5) NOT NULL COMMENT '二级类别id',
  `mainpid` smallint(5) NOT NULL COMMENT '二级类别上级id',
  `mainpstr` varchar(80) NOT NULL COMMENT '二级类别上级id字符串',
  `title` varchar(80) NOT NULL COMMENT '标题',
  `colorval` char(10) NOT NULL COMMENT '字体颜色',
  `boldval` char(10) NOT NULL COMMENT '字体加粗',
  `flag` varchar(30) NOT NULL COMMENT '属性',
  `source` varchar(50) NOT NULL COMMENT '文章来源',
  `author` varchar(50) NOT NULL COMMENT '作者编辑',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '摘要',
  `content` mediumtext NOT NULL COMMENT '详细内容',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `picarr` text NOT NULL COMMENT '组图',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击次数',
  `orderid` int(10) unsigned NOT NULL COMMENT '排列排序',
  `posttime` int(10) NOT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  `delstate` set('true') NOT NULL COMMENT '删除状态',
  `deltime` int(10) unsigned NOT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_infolist
-- ----------------------------
INSERT INTO `pmw_infolist` VALUES ('1', '1', '4', '0', '0,', '-1', '-1', '', '百度数据报告进入全国两会引起各界代表热议广受好评', '', '', '', '', 'admin', '', '', '', '<p>\r\n	“统计显示，2010年3月以来，网民最关注的社会民生热点是住房问题，搜索占比高达34.84%，其次是金融类内容、社会保障、物价/通胀等。总体来看，与人民生活息息相关的吃住行、医疗、社保等民生问题占到了关注热点的绝大多数……”\r\n</p>\r\n<p>\r\n	百度作为全球最大的中文搜索引擎，覆盖95%以上中国网民，每天响应数十亿次搜索请求。这份两会专题报告，即是百度科学统计搜索关键词数据库，真实客观地反映一年来中国网民的关注和兴趣点，获得众多两会代表的广泛热议。\r\n</p>\r\n<p>\r\n	“可以看出，百度数据研究中心秉承专业严谨、科学客观的研究态度，用明确的数据分析，表达了网民和老百姓的心声与期待。”全国人大代表、河南省工商联副主席王刚向记者表示。他指出，根据百度数据报告可以看出，住房和消费是老百姓最关心的问题，特别是最近相继出台的“限购令”，更是让老百姓处于不知所从的状态。在王刚看来，限购只是一种手段，不应该是成为一种长久执行的政策。中国经济要保持目前的增长速度，关键是调整结构，扩展经济增长空间，让消费成为拉动经济的最重要力量。政府要加大保障房建设力度，解决了低收入家庭住房问题后，房地产限购应逐步放开，让市场真正符合市场经济发展。但未来中国消费潜能要得到真正释放，必须解决社会保障体系，人们才敢放手去消费。百度的数据报告，有理有据地传达出了普通民众的心声。<br />\r\n2011年3月5日、3月3日，第十一届全国人民代表大会第四次会议和政协第十一届全国委员会第四次会议在京正式拉开帷幕。今年的两会现场，代表们案头所翻阅的资料中，多了一份来自中国4.57亿网民的集体心声。\r\n</p>\r\n<p>\r\n	这便是来自百度数据研究中心的《2011两会专题研究数据报告》。\r\n</p>\r\n<p>\r\n	<br />\r\n全国人大代表、体操名将杨威告诉记者，“会议现场我看到了百度《2011两会专题研究数据报告》，花了几分钟读完之后，感觉报告数据真实展现了中国老百姓的关注热点，对‘两会’代表更深入了解人民呼声、参政议政有很重要参考价值，非常值得一读。”\r\n</p>\r\n<p>\r\n	“中国正处于经济转型期，如何更好地洞察民众消费需求，捕捉技术发展趋势，都是迫在眉睫的命题。百度两会数据报告，真实反映了中国四亿多网民的关注和需求所在，堪称一份\'来自互联网亿万网民的民生提案\'，对于国家经济发展意义重大！”全国人大代表周厚健表示，网络问政对经济进一步健康发展尤为重要，已渐渐成为一种趋势。\r\n</p>\r\n<p>\r\n	全国政协委员张征宇则指出“去年在网上发布《中华人民共和国车船税法(草案)》后，2万多网友近10万条意见。决策前充分论证、听取多方意见，能更好地平衡各方利益，有利于科学决策。百度《2011两会专题研究数据报告》这种形式，正是我们所需要的理性问政数据支撑。希望百度能在此基础上，不断改进数据统计方式，充分发挥网络技术优势，逐步建立和发挥网络智库的作用，为各方的决策提供更多更好的参考建议。”\r\n</p>\r\n<p>\r\n	3月3日，全国政协主席贾庆林在3日在全国政协十一届四次会议开幕会上向大会报告工作时指出，要积极探索利用互联网收集社情民意的新方式，成为党和政府舆情汇集和分析机制的重要方面。\r\n</p>\r\n<p>\r\n	而此次百度数据报告进入两会并广受好评，即是对贾庆林主席这番话语的有力支持。\r\n</p>', '', '', '67', '1', '1326769561', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('2', '1', '4', '0', '0,', '-1', '-1', '', '首届百度高校互联网产品设计大赛开幕', '', '', 'f', '', 'admin', '', '', '', '<p>\r\n	近日，由全球最大的中文搜索引擎公司百度发起的首届“2011高校互联网产品设计大赛”在北京大学正式启动，百度产品总监李健以互动演讲拉开了大赛序幕。据悉，该赛是互联网企业首次面相全日制在校大学生举办的产品设计比赛，旨在推动大学生增强互联网创新实践，为大学生提供实现自我价值的平台，同时也为互联网创新发展积蓄人才力量。\r\n</p>\r\n<p>\r\n	据了解，首届比赛仅接受北京地区的参赛选手，整个活动将从3月中旬一直持续到5月底。参赛同学可组团通过线上报名方式（<a href=\"http://pmstar.baidu.com/\">http://pmstar.baidu.com</a>）提交方案，方案可涉及网页产品、客户端产品和无线应用产品，进入复赛的团队将得到百度资深产品设计人员的一对一指导。\r\n</p>\r\n<p>\r\n	最终筛选出获奖团队6支，他们不仅可以获得金额从5000元至2万元不等的“校园产品之星”奖学金，还将获得2011百度产品部暑期实习的绿色通道，有机会在企业一线体验互联网产品设计和创新实践。\r\n</p>\r\n<p>\r\n	李健表示：“互联网行业发展一日千里，需要更多优秀而有创新精神的人才加入，而大学生正是创新的生力军的新鲜血液，百度希望能够为他们提供一个平台，发现并施展自己的价值，为推动互联网创新发掘更多新生力量。”\r\n</p>\r\n<p>\r\n	启动仪式现场，来自北大、清华、中科院、北邮、北航等多所高校的上千名学生兴致勃勃滴聆听了李健的演讲，现场掌声不断，同学们踊跃发言并提出了自己关心的各种问题，涉及最多的话题是sns社交网络和移动互联网，还有不少同学在现场立即通过大赛官网报名参赛。\r\n</p>\r\n<p>\r\n	一名来自北航的学生表示讲和宿舍同学一起组团报名，他说：“最近两年互联网发展太快，我们在学校有深切的体会，参加这样的比赛，能有机会进行实战锻炼，还有机会和专业人士一对一地切磋交流，对大学生是个难得的机会。”\r\n</p>\r\n<p>\r\n	一位身处互联网多年的人士指出，高校一直是互联网创新的发源地，不仅在国内，在国际，类似facebook这样具有代表性的互联网公司，都是诞生在大学校园，他们为全球互联网技术和形态的创新发展做出了开创性的定义。而中国目前已经拥有超过4.57亿的互联网用户，也是全球最大的互联网市场，每一项互联网创新技术应用都会在这个巨大的市场中经受考验和培育，从而影响整个市场。\r\n</p>', '', '', '55', '2', '1326769590', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('3', '1', '4', '0', '0,', '-1', '-1', '', '百度启动“应用基金奖励计划”', '', '', '', '', 'admin', '', '', '', '<p>\r\n	当下，开放平台的APP模式正席卷全球，国外的鼻祖Facebook借助开放平台力量，聚拢了5亿用户，谷歌Android系统以开放横扫手机市场，苹果App Store模式更成为行业经典。APP的开放浪潮势不可挡，中国互联网行业也开始集体行动，百度、腾讯、新浪、淘宝等纷纷逐鹿开放平台，APP商业模式日渐主流。近日，百度更是在应用开放平台领域重磅出击：宣布启动应用基金奖励计划，投入数亿元激励第三方应用开发者和运营商，为搜索用户创新更多优质应用。\r\n</p>\r\n<p>\r\n	与大多数APP开放平台不同的是，百度开创了全球第一个由平台方“自掏腰包”成立基金为优秀免费应用买单的APP平台。奖励的目标将是免费应用的资源方（开发者或运营商），按用户在网页搜索中的日有效使用量，进行奖励计费，未来还会根据资源方对用户体验的贡献程度评分划级，对于评分级别越高的资源方将给予更多奖励。\r\n</p>\r\n<p>\r\n	<strong>应用变现 让第三方有利可图</strong> \r\n</p>\r\n<p>\r\n	如今应用开放平台可谓蔚然成风，然而，产业链层面的火热却很难解决开发者自身生存状态的矛盾和挣扎。即使在最为火爆的苹果APP Store，能够真正赚钱者也还是少数，更多的人则是在陪太子读书。在国内市场，受制于民众免费观念的侵蚀，广大开发者和运营商的“钱途”更为渺茫，应用开放平台，似乎只是“看起来很美”。\r\n</p>\r\n<p>\r\n	然而，百度应用开发者基金奖励计划的隆重开启，让广大开发者和运营商看到了希望。根据这一计划，百度预计将投入数亿元，面向平台所有开发者或运营商鼓励创新应用的开发。百度开放平台相关负责人表示，百度愿意为可持续发展的行业生态的建立做出表率，除了提供各个层面的强力支持，也包括实实在在的利益回报，让应用变现，让开发者劳有所得，有利可图。百度通过“自掏腰包”的输血方式，将推动更多的开发者参与进来，创造更多的高品质应用，让免费的应用也能转化成收益。“现在我不用过多考虑赚钱的事，只要能开发出网友喜欢的作品，百度会来买单。”奖励计划出台后，有开发者兴奋的表示。\r\n</p>\r\n<p>\r\n	<strong>同步起跑&nbsp; 流量及品牌双重提升</strong> \r\n</p>\r\n<p>\r\n	在国外，成功的开放平台几乎主导了行业的发展方向，应用提供方“寄人篱下”，自主发展和品牌提升空间并不大，尤其是一些实力较小的开发者，即使有优秀的应用产品，脱颖而出的机会并不大，最终很容易形成几家APP独大的局面。\r\n</p>\r\n<p>\r\n	百度开放平台则着重开发者的长远利益，通过分享百度每日数十亿的检索流量及覆盖95%网民群体的品牌影响力，开发者可以共享高黏性、高忠诚度的平台效应，在较短的时间内获得用户的认可，争取到海量用户和自身品牌价值的提升。\r\n</p>\r\n<p>\r\n	显然，这是与单纯注重收益为主的开放平台最大的区别。通过对免费应用的支持，任何一个开发者，都站在同一条起跑线上，所面临的机遇都是平等的，这对于国内的第三方开发者来说不只是福音，更是加速创业的不竭动力。\r\n</p>\r\n<p>\r\n	<strong>扶持应用创新力量成长壮大</strong> \r\n</p>\r\n<p>\r\n	不可否认，Facebook、苹果等国外通行的分成模式，刺激了开发者的成长，催生了一大批优质的游戏、商务、娱乐等应用，但也滋生了开发者“赚一票就走”的心态，这对于第三方开发商或运营商的成长来说，并无益处。<br />\r\n百度应用基金奖励计划的设立初衷在于扶持互联网行业的创新力量，更注重开发者的成长帮助，期望通过一套透明、有效的合作机制，一个利益共享平台、以及技术和资金的有效扶持，推动互联网创新力量的崛起并逐步壮大。\r\n</p>\r\n<p>\r\n	百度也透露，此次“应用基金奖励计划”的启动仅仅是百度开放平台战略规划中的重要一步，未来百度还将会有一系列举措出台，不排除对一些有潜力的开发者和运营商尝试深入合作，为其提供后续的技术和资金上的帮助。\r\n</p>\r\n<p>\r\n	业内专家表示，APP开放平台模式将是未来互联网发展的趋势，以百度应用基金奖励计划为序曲，百度的APP开放将为用户带来更全面、便捷的应用体验，大大降低使用门槛，使用户便捷实现在线娱乐、在线游戏、在线商务等功能。同时对行业来说，更具深远意义：开放架构通过调动产业链开发者、运营方等资源，将打破传统技术壁垒，改变应用分散、使用率低、优质应用被淹没等一系列弊端，营造更为健康有序的循环生态链，这不仅是互联网架构的一次革命性升级，更是未来互联网生态系的雏形。\r\n</p>', '', '', '167', '3', '1326769617', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('4', '1', '4', '0', '0,', '-1', '-1', '', '百度开展网上“地球一小时” 践行绿色环保之路', '', '', '', '', 'admin', '', '', '', '<p>\r\n	近来，日本猝然遭遇史上最强地震海啸袭击，环境和自然灾害等问题愈发引起人们更多的关注和行动。面对这些问题，任何独立个人和企业的力量都显得单薄，需要有一个强大的联系纽带。“地球一小时”正是这样一个纽带意义的活动。3月26日20:30—21:30，2011年度的“地球一小时”活动即将启动。全球最大中文搜索引擎百度，作为世界自然基金会（WWF）“地球一小时”中国区独家搜索引擎合作伙伴，已率先于3月21日起，整合旗下地图、知道、百科、空间、新闻、身边等产品展开为期一周的百度“地球一小时”低碳环保公益行动，唤起全体国民的环保意识。\r\n</p>\r\n<p>\r\n	百度“地球一小时”专题页面向大家全面展现了“地球一小时”活动的意义及开展情况，全方位传播绿色环保、节能减排知识。百度地图开启了“标注你的位置，参与地球一小时”的线上活动，网友可以登录百度“地球一小时”专题页面（<a href=\"http://earth.baidu.com/\">http://earth.baidu.com</a>）或世界自然基金会“地球一小时”官方网站（<a href=\"http://earthhour.org.cn/\">http://earthhour.org.cn</a>），填写姓名和电子邮件后，在线承诺“熄灯一小时”和“一个环保改变”，随即在百度地图上标注自己参与“熄灯一小时”活动的位置，留下一个绿色的“足迹”。除了为官方网站提供API接口外，百度android手机地图还提供了一个全新的玩法，让网民朋友可以在熄灯后将自己的位置分享给好友，实现彼此实时关注；此外，百度地图首页专题上还专门设置了“熄灯去哪儿”板块，为广大网民提供了公园、广场、健身房等众多熄灯后的好去处，倡导“黑暗”中的健康生活方式。\r\n</p>\r\n<p>\r\n	据悉，此次活动百度进行了六大产品的公益联动。除了地图，百度知道通过知道环保问答征集以及用户环保徽章，与广大网民进行了环保话题的深度互动，而且专题页面还会抓取知道带有环保关键词的待解决问题、已解决问题展示、以及提问按钮，供网友回答、提问、浏览，让网友在“问答”中感受环保的可贵；百度百科，则借助亿万网友的力量，通过环保百科词条，对环保知识进行大力普及；而百度空间更是通过空间环保活动征文，让网友在记录中加强环保意识；此外，百度新闻还全面抓取了“地球一小时”的相关资讯，增强网民对环保新闻的关注度；覆盖全国368个城市超过百万商户的生活信息搜索和分享平台百度身边，更是通过和 “真功夫”合作于3月24日发起 “身边真功夫，聚会地球熄灯一小时”线下活动。届时其北京地区33家门店都将关闭招牌灯，网友在享受浪漫烛光晚餐的同时，还可以通过身边客户端上传店铺照片、进行现场播报，完成后就可得到真功夫给身边用户的独家优惠。\r\n</p>\r\n<p>\r\n	百度相关负责人表示，作为一个负责任的企业公民，百度在为数以亿计的网民提供便捷获取信息方式的同时，也一直关注环境保护。百度希望借助“地球一小时”活动，唤起每个人、每个企业的环保意识，每一天、每一刻从身边的小事一点一滴做起，为节能减排发挥各自的作用。百度也将继续践行绿色环保之路，与广大网民一起，为中国的环保事业贡献一己之力。\r\n</p>', '', '', '155', '4', '1326769646', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('5', '1', '4', '0', '0,', '-1', '-1', '', '百度推出“招聘会”搜索 助力学子就业', '', '', '', '', 'admin', '', '', '', '<p>\r\n	进入3月，应届毕业生又将辗转于各大火爆的招聘会现场，迎接“面霸”生活。或许今年莘莘学子们会有不一样的体验。因为日前，全球最大中文搜索引擎百度借助强大的数据开放平台上线了“招聘会”搜索功能，通过对招聘会、企业招聘职位资源的整合，为广大求职者提供海量、全面、精准的求职信息检索服务。\r\n</p>\r\n<p>\r\n	通过该功能，用户只需在百度搜索框输入“招聘会”或“某省市招聘会”等相关关键词，百度框计算系统将自动对接招聘会信息资源提供方，智能识别用户所在的城市，反馈回当地最新的招聘会相关信息，包括时间、地址等。而结合百度地图服务，求职者可以继续查询到从所在地到招聘会现场的公共交通路线，为参加招聘会提供便利，并合理安排自己的应聘计划。<br />\r\n<br />\r\n数据显示，2011年国内高校毕业生高达660万人，是本世纪初的6倍以上。进入3月之后，2011年的第一波招聘求职高峰已经到来。据各地媒体报道，数万人挤爆招聘会现场的情况已经在不断上演，“跑会一族”成为应届毕业生的普遍生存状态。而随着百度“招聘会”搜索功能上线，学子们不仅能获得全面准确的招聘信息，且“跑会”也将更加具有针对性和条理性。\r\n</p>\r\n<p>\r\n	“很多时候参加招聘会都很盲目，不知道取舍，常常是去了招聘会现场才发现根本没有去的必要，却错过了真正应该参与的场次。百度的招聘会搜索，极大方便了我对于招聘会的筛选和面试计划，而且连地图、公交地铁线路都有考虑到，非常贴心。”很多大学生对记者纷纷表示道。\r\n</p>\r\n<p>\r\n	业内人士分析，除了毕业生，百度“招聘会”搜索是一个让招聘企业、招聘会主办方、第三方招聘会发布平台多方共赢的合作模式。通过百度数据开放平台，招聘企业可以更好地安排招聘计划，招聘会主办方可以更好地带动人气和整体运营。而对于第三方招聘会发布平台，目前与百度合作的“应届生”、“应届生毕业生”等多家资源方表示，“通过百度招聘会搜索，不但借助百度海量用户优势将招聘会信息最大化进行有效传递。同时，通过与百度平台的对接获得每天数十亿次检索的机会，在流量、用户和品牌等诸多方面都将获得立竿见影的提升。”\r\n</p>\r\n<p>\r\n	据悉，在招聘会之外，包括智联招聘、中华英才、赶集网、同城58、百姓网等全国一百多家主流招聘网站，也已经悉数加入百度开放平台，通过百度这个中文上网第一入口为亿万求职、跳槽者带来便利。据统计，目前每天有数百多万人通过这种搜索方式找工作。\r\n</p>\r\n<p>\r\n	从百度提出“框计算”以来，一直致力于通过搜索让人们最便捷、最全面、最及时地获得信息，从“客服电话”直接显示、邮箱实现搜索页面直接登录、股票信息实时查询，到高考信息查询、招聘信息查询等等一系列搜索新功能，搜索请求结果正在越来越多的直接呈现在搜索页面上，网民的搜索一站式体验正在一步步得到提升。“框计算”及百度开放平台，正以其强大的技术创新能力为依托，为数亿用户带来一次次全新的搜索体验。\r\n</p>', '', '', '120', '5', '1326769660', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('6', '1', '4', '0', '0,', '-1', '-1', '', '百度市值超腾讯成为中国互联网企业第一', '', '', 'h,a', '', 'admin', '', '', '', '<p>\r\n	3月24日消息 百度（NASDAQ：BIDU）周三报收于132.58美元，其市值也达到了460.7亿美元，超过了腾讯控股（HKG：0700）昨日收盘时的市值，成为中国互联网企业第一。这也是5年来，第一头衔的首次易主。腾讯昨日报收于189.4港元，市值约为446亿美元。\r\n</p>\r\n<p>\r\n	周三开盘后一路上扬，截至收盘报收于132.58美元，涨幅达4.32%。股价创业近52周的新高，市值达到460.7亿美元。而在2005年百度上市时市值仅8.7亿美元，迄今已经增长近53倍。\r\n</p>\r\n<p>\r\n	百度于今年2月1日公布了第四季度财务报告，数据显示该季度百度总营收24.5亿元，同比增长94%；净利润为11.6亿元，同比增长 171.3%。在线广告业务仍然是百度的最主要收入来源。而百度官方新闻稿中则称同比接近翻番的增长速度，标志着百度在第二个十年发展的起跑阶段又开始重新加速。\r\n</p>\r\n<p>\r\n	腾讯则是在3月16日公布了第四季度财务报告，数据显示第四季度总营收55亿元，同比增长49.8%，环比增长5.7%，净利润22亿元，环比增2.1%，同比增45.9%。总营收和净利润增速均出现下滑，其净利润增速创三年来最低。\r\n</p>\r\n<p>\r\n	或受财报不利的消息影响，腾讯股价已连续多日下挫，从220港元跌至昨日的189港元，创下一个月来的新低。\r\n</p>', '', '', '95', '6', '1326769687', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('7', '1', '4', '0', '0,', '-1', '-1', '', '百度文库版权合作平台上线 诚意探索多方共赢', '', '', '', '', 'admin', '', '', '', '<p>\r\n	目前，百度文库版权合作平台正式上线（wenku.baidu.com/hezuo），该平台包括与版权方的具体合作形式，以及对版权合作方的宣传支持等几大板块内容。显而易见，百度此举在表现出其诚意态度的同时，更以迅速行动力和执行力，寻求与版权方的合作共赢。<br />\r\n<br />\r\n<strong>多种合作形式可供选择</strong> \r\n</p>\r\n<p>\r\n	在该平台页面上，可以详细了解百度文库对付费分成模式、广告分成模式的相关介绍。配合这两种合作模式，百度文库将通过多个宣传渠道对合作的正版资源进行宣传推广。其中，付费分成模式将允许用户免费阅读作品部分章节，在此基础上，如果读者希望阅读全本内容，则需要通过网络支付通道支付一定费用，即可将该电子作品存储至自己的个人文库并进行在线全本内容阅读。而经由百度文库收取的费用大部分比例将划拨给版权方所有，从而在确保正版阅读的同时，为版权方带去丰厚的收益回报。\r\n</p>\r\n<p>\r\n	相比之下，广告分成形式则允许读者免费阅读整部作品，但百度文库会在确保用户的优质阅读体验前提下，在作品阅读页面适当位置开发和放置相应广告内容，使作者或版权方获取相应收入。这也意味着作品的吸引力和关注度将会与版权方的收益成正比，作品的浏览量越高，版权方所获得的回报也就越多。\r\n</p>\r\n<p>\r\n	与此同时，针对一些目前暂时尚无法提供全本合作的版权方，百度文库同样给予了足够的关注。版权方可以提供部分新书介绍和免费章节内容，通过文库书店平台，进行新书推广，宣传新书信息，帮助版权方带动实体图书销量。\r\n</p>\r\n<p>\r\n	<strong>强大资源力推正版</strong> \r\n</p>\r\n<p>\r\n	除了提供多种合作形式外，百度文库还利用用户对文学作品、各类文档的巨大搜索量，为版权合作方提供了众多宣传资源来推广正版图书。百度文库将会在文档分享页面、文库书店页面对正版图书进行推荐；在百度搜索结果页增加正版内容展示；还会在文库搜索结果页明显位置对正版作品进行特型展示。此外，还将对版权方旗下的优秀作品、签约作者进行集中宣传，通过专题、活动等形式使版权方和用户互动起来，让版权方的优秀作品、签约作者被更多的读者所知晓、熟悉、喜爱。\r\n</p>\r\n<p>\r\n	为保护作者版权，百度文库最近实行了一系列积极的举措，包括加速文库中可能侵犯他人著作权的文档清理，以及开设绿色举报通道等。除此之外，一项名为 “版权作品DNA比对识别”的技术应用预计将于4月11日上线试运行，该技术将鼓励合作方提供全文正版资源，通过后台识别技术，进行网友上传文档与正版资源的对比审核，从而加速文库识别系统更精准、全面的删除盗版，从源头上阻止侵权文档的上传。\r\n</p>\r\n<p>\r\n	有业内专家指出，互联网已经成为知识普及的重要途径之一。不可否认百度文库在保护版权方面还有一些需要改进和提升的地方，但是我们也欣喜的看到百度主动沟通的意愿、开诚布公的态度以及因此而进行的对版权资源合作模式的积极探索。百度提出来的合作模式，一方面给广大网民带来高质量的作品；另一方面也给出版方和作者提供了一个推广及变现的渠道；同时也让百度文库在打击盗版上，迈出了坚实的一步，可谓多方共赢。\r\n</p>\r\n<p>\r\n	百度文库相关负责人表示，百度非常重视版权的保护问题，同时也希望与版权方建立长期的合作关系，引入丰富的内容，为广大网友提供一个正版内容的阅读平台，同时为版权方构建一个宣传、获益的营销阵地。刚刚一年半左右的百度文库正以其诚意和实际行动向业界表明：在版权保护方面，百度文库一直在努力。百度的心态是开放的，乐于听取来自社会各界的建议和意见，寻求多方的合作共赢。在保护版权方利益的基础上，将更优质的资源、更好的产品、更体贴的服务奉献给广大用户。\r\n</p>', '', '', '92', '7', '1326769711', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('8', '1', '4', '0', '0,', '-1', '-1', '', '百度与音著协达成合作 与音乐人分享著作权收益', '', '', 'c,f', '', 'admin', '', '', '', '3月31日下午消息，百度公司与中国音乐著作权协会(简称音著协)宣布达成合作，双方将共同建立音乐词曲著作权合作主渠道，这意味着音乐词曲权利人可以通过音著协这个主渠道，获得相关著作权收益。<br />\r\n<br />\r\n在互联网上，各类音乐著作权人分布非常广泛，如何找到一个有效的授权方式是数字音乐正版化的一个巨大挑战。百度是第一家与音著协共建著作权合作主渠道的互联网企业。<br />\r\n<br />\r\n据透露，从2008年开始，百度就开始通过与滚石、索亚、EMI等词曲权利人直接合作，获得了相关词曲作品在百度上的使用权。基于此次百度与音著协的合作，进一步建立了音乐作品数字化环境下的授权主渠道，相关音乐作品的许可使用费由百度支付给音著协，并由音著协按照有关规定转交相关权利人。<br />\r\n<br />\r\n百度市场与公关副总裁朱光表示，百度一贯重视知识产权保护工作，并将通过自身努力，积极与相关机构合作，主动探索回馈音乐著作权人的新模式。网络音乐是中国 4亿网民非常喜爱的一项网络应用，百度音乐平台一方面将用更好的产品和技术，免费为网民提供更加优质的音乐体验；另一方面，我们始终认为词曲作者是数字音乐产业繁荣的根本推 动力量，此次和音著协达成的合作，是我们长期坚持数字音乐正版化和回馈版权方的一个重大里程碑。<br />\r\n<br />\r\n中国音乐著作权协会副总干事刘平表示，音著协是中国唯一的音乐著作权集体管理组织，代表着国内国际最广泛的音乐词曲著作权人权益，而百度是中国最大的数字音乐分享平台，上面汇聚了4亿多网民的需求。双方发挥各自的优势，以实际行动解决行业内多年以来悬而未决的数字音乐版权授权难题，这对中国整个数字音乐产业来说，具有开天辟地的历史意义。<br />\r\n<br />\r\n百度音乐事业部总经理梁康妮透露，从去年11月开始，百度就与音著协积极探讨保护词曲权利人权益的有效方式，并根据百度音乐平台的整体使用情况对分成方案进行认真细致的制定和评估，百度将定期向音著协提供每一首歌曲的播放和下载数据报表，这种计算方式此前已经运作超过一年，并获得合作机构认可。而为了保证该项合作能真正向词曲版权方做到公正和透明，百度也在开发新的系统，将支持所有词曲作品版权方获取自身作品在百度音乐平台上播放下载次数统计。<br />\r\n<br />\r\n梁康妮同时介绍，目前音乐著作权主要包括词曲著作权和邻接权，前者的权益主体主要是词曲作者和词曲著作权机构，后者的权益主体主要是艺人和唱片公司。除了词曲著作权方面的合作，目前百度也已经与全球范围内80多家唱片机构就邻接权签订了分成合作协议，目前还在进一步与其他唱片机构展开合作谈判。', '', '', '140', '8', '1326769736', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('9', '1', '4', '0', '0,', '-1', '-1', '', '中影集团携《建党伟业》影片资源 登录百度开放平台', '', '', '', '', 'admin', '', '', '', '近日，建党90周年献礼影片《建党伟业》宣布该片将于6月15日上映，在海报揭幕仪式上，影片出品人兼导演韩三平携导演黄建新及众多主演一同助阵。同时，记者发现，在全球最大中文搜索引擎百度上搜索“建党伟业”，搜索结果以图文并茂的整合方式呈现《建党伟业》影片的相关资料，包括影片介绍、电影片花、明星采访视频、剧照图片、新闻专题、演职员表等。记者联系到中影集团相关负责人，该负责人确认已将《建党伟业》相关影片资源通过百度开放平台发布，提前和观众见面，希望能够直接面向网民发布正版的优质影片资源。<br />\r\n<br />\r\n据了解，百度自2010年9月推出框计算应用开放平台，“即搜即用”理念极大地提升了网民的搜索体验，受到用户的好评。2010年底，中影集团及旗下中国电影网便开始和百度秘密接触，洽谈双方在百度开放平台上的联袂合作。此次，中影集团将2011年最受关注的年度大戏官方资源通过百度开放平台与观众提前见面，无疑可见中影已经嗅到来自百度开放平台的巨大发展机会。<br />\r\n<br />\r\n中国电影网CEO王国伟表示：“中国电影网宗旨是依托中影集团优良的产业资源和品牌优势来服务大众。我们已经看到，百度作为互联网最有影响力的入口，每天服务全中国数亿网民的生活和娱乐，而百度开放平台以创新的方式为资源提供方、用户架起了一座桥梁。我们希望借助百度开放平台，让中影旗下的优质影视资源能够直接面向数亿互联网观众，进而共同探索电影在互联网市场的营销新模式。”<br />\r\n<br />\r\n据了解，百度应用开放是百度“框计算”技术理念的重要实践成果，“框计算”理念由百度总裁兼CEO李彦宏于2009年8月提出，是一种基于需求分析和网络资源调用的高度智能的互联网需求交互模式。理念提出后，百度先后推出数据开放平台和应用开放平台，网民只需要在搜索框中输入相关关键字，便可以直接调用相关正版优质网络资源，实现“即搜即用”，极大提升了网民的搜索体验。<br />\r\n<br />\r\n有评论人士指出，互联网的深度普及已经让人们在电影领域的消费习惯和观影方式都发生了巨大变化，除了院线播映，越来越多电影需要通过多元化的渠道来解除用户。而这次中影与百度两大行业巨头的试水合作也为影视内容出版与互联网渠道的深度融合催生出更多想象空间。<br />\r\n<br />\r\n王国伟表示，“中影的优质正版资源与百度的开放平台相结合，不仅给亿万网友提供了更好的阅读和观赏体验，同时也对《建党伟业》这样的影片起到了非常好的品牌宣传作用。互联网的快速发展，对于影视内容及其他传统文化出版行业来说是一个需要把握好的新机遇。长远来看，我们相信这种合作模式无论对于传统内容出版发行方、互联网，还是广大网友来说，都将是共赢和利好的结果。”<br />\r\n<br />\r\n据悉，近期中影在影片资源推介会公布了2011-2012重点项目，其中包括已经开拍的陆川作品《王的盛宴》、冯小宁作品《1894甲午大海战》、王晶作品《无价之宝》；正在后期制作中的吴宇森作品《飞虎群英》等悉数在列。若《建党伟业》在百度开放平台上试水成功，我们或将看到中影旗下更多优质影视资源登录百度开放平台，届时也无疑将令网民大饱眼福。', '', '', '116', '9', '1326769760', 'false', '', '0');
INSERT INTO `pmw_infolist` VALUES ('10', '1', '4', '0', '0,', '-1', '-1', '', '权威核辐射监测数据登录百度开放平台 消除公众恐慌', '', '', '', '', 'admin', '', '', '', '4月2日，据新华社发布最新消息：我国除西藏外的省份部分地区均监测到极微量放射性物质，不会对我国环境和公众健康造成危害，无需采取任何防护措施。近日，由于日本地震引起的核泄漏事件不断发展，有关核辐射的最新动态也成为我国民众时下最受关注的话题。<br />\r\n<br />\r\n今天中午，记者发现，在全球最大中文搜索引擎百度中搜索“辐射监测”“中国核辐射”等词，在结果页可直接看到来自国家环境保护部官网的中国境内核辐射的最新监测数据，网民可随时关注其所在城市的核辐射数据动态。<br />\r\n<br />\r\n记者致电百度相关负责人了解到，数据上线短短几小时内，登录百度开放平台查询核辐射监测结果的相关搜索量已突破一万次。百度开放平台负责人表示，这些信息均为来自于国家环保部的官方信息，供网民第一时间了解到权威性、准确的信息。除此以外，百度还将环保部网站中放射性核素钚简介、正确看待核辐射等科普知识的链接一并呈现，便于公众了解和正确认识核辐射现状，消除恐慌。<br />\r\n<br />\r\n据了解，在之前的“抢购食盐”风波中，百度通过“框计算”开放平台，及时将政府信息传递给公众，让谣言仅仅“存活”了2天时间即恢复平静。作为全球最大的中文搜索引擎，百度覆盖全中国超过4亿网民群体，每日响应近数十亿次的搜索请求，已经成为互联网最有影响力的信息获取入口。<br />\r\n<br />\r\n业内人士表示，在互联网信息传播空前复杂的时代，由于信息传播的不对称和互联网上无权威的现状，一些不准确的信息很容易引起民众恐慌。百度开放平台在第一时间联合政府相关部门，利用搜索引擎技术及百度作为互联网平台的影响力，将权威监测数据及时送达网民，极大地帮助消除民众因无法及时获得正确信息而引起的恐慌。', '', '', '98', '10', '1326769776', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('11', '1', '4', '0', '0,', '-1', '-1', '', '云起龙骧 共赢未来——“第六届百度联盟峰会”布局开放新时代', '', '', 's', '', 'admin', '', '', '', '<p>\r\n	4月12日，主题为“云起龙骧，共赢未来”的“第六届百度联盟峰会”在云南丽江盛大开幕。来自全国各地的数百家合作伙伴齐聚一堂，与百度董事长兼首席执行官李彦宏，百度高级副总裁沈皓瑜等百度高层，共同就开放创新、互联网未来发展趋势进行深度交流和探讨，此次盛会也受到了百度50余万家联盟合作伙伴以及整个互联网业界瞩目。\r\n</p>\r\n<p>\r\n	与往届联盟峰会不同的是，在本届大会现场，活跃着众多中小网站站长及个人开发者的身影，形成了一道独特的风景。这也契合了本届百度联盟峰会的最大重头戏——百度APP平台全面开放，为众多中小网站及第三方开放者提供一个广阔的创新发展平台，帮助他们实现创业梦想。\r\n</p>\r\n<p>\r\n	据悉，从2002年成立至今，百度联盟经历了九年的发展，从基于流量的搜索时代，到基于受众注意力的全网时代，而今迈进了跨越式的“开放时代”。在这个崭新的阶段，不仅用户的互联网应用需求变得愈发个性和多样，同时互联网产业链之中的各个角色之间的合作也更加扁平。作为全球最大的中文搜索引擎，百度将借助APP平台全面开放的力量构建一种全新的协同体系，在开放、分享和共赢的理念之下，与合作伙伴一起携手，推动我国互联网产业的开放特质和创新氛围，打造一个生机勃勃的互联网生态圈。“百度每年将斥资数千万鼓励创新，为合作伙伴在品牌、流量、收益等多方面带来有效的提升，助力产业发展。”百度高级副总裁沈皓瑜透露。\r\n</p>\r\n<p>\r\n	一路走来，百度联盟的影响力与日俱增，目前已经累计有50余万家合作伙伴加入百度联盟并迅速成长，其中既有成功上市的顺网科技等知名企业，也不乏刚刚毕业的大学生创业者。在沈皓瑜看来，在搜索时代，百度联盟的工作重心是如何基于搜索为伙伴们带来更多收益和快速成长；在全网时代，百度在搜索服务的基础上推出的网盟业务覆盖面更广，不断提高合作伙伴分成奖励的同时，还帮助伙伴优化用户体验、提高流量向收益的转化率；而在开放时代，百度除了将继续加大对搜索和网盟业务的投入，还将通过APP平台的全面开放，为用户提供更便捷优质的使用体验，为合作伙伴提供巨大的成长空间及品牌价值收益。可以预见，基于百度应用开放平台的合作，未来年收入几万级、几十万级和数百万级的应用将会涌现，开发者将获得更透明、公平的竞争机会，成为推动中国互联网繁荣、健康、持续发展的关键力量。\r\n</p>\r\n<p>\r\n	在本届峰会上，百度不仅宣布全面开放APP平台，还明确了普通开发者加入APP平台及获益的方式。百度将通过实施“百度应用成长基金”计划等一系列措施，力求使开发者们可以基于百度开放平台实现分享合作的收益回报，为他们的持续创新注入动力。百度方面表示，希望以基于框计算架构的开放平台为核心，在为亿万网民奉上优质应用体验的同时，为第三方应用开发商、运营商构建一个鼓励创新、促进成长、赢得回报的巨大舞台，真正形成一种有助于产业链中各种角色成长的良性健康机制。\r\n</p>\r\n<p>\r\n	除此之外，百度还详细介绍了一系列旨在帮助伙伴们获得成长，加速良性互联网生态圈形成的利好举措，包括鸿媒体业务、提高分成比例等，力求从技术、品牌、资金、收益、服务等多个角度全方位地帮助合作伙伴获得成长。百度联盟总经理褚达晨介绍称，去年的百度联盟峰会上，百度发布了三大举措来助力联盟伙伴发展，涵盖收益、服务、成长三方面。而今年，“百度将继续加大对网盟业务的技术和资源的投入；不断丰富和优化联盟产品，匹配媒体和推广客户需求；继续针对网盟优质流量、优质广告位提高分成比例，使伙伴分享更大收益。”褚达晨表示，百度希望立足于全面开放的战略，与伙伴们合作共赢、相互促进，最终促进整个产业的升级。“而这也正是百度联盟下一阶段努力的方向。”\r\n</p>\r\n<p>\r\n	百度的这一系列新举措和表态，得到了广大合作伙伴及开发者的极大关注。业内人士评价指出，依托于百度强大的品牌号召力和成熟的推广模式，百度联盟经过多年精心运营，已发展成为国内最大和最具实力的网络推广联盟。百度对于合作伙伴的持续大力扶持，加之全面开放的战略，将帮助更多网站和网络开发者、创业者们更好地成长和成功，并带动整个产业进一步发展和繁荣，迎来一个全新的互联网开放时代。\r\n</p>', '', '', '153', '11', '1326769798', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('12', '1', '4', '0', '0,', '-1', '-1', '', '百度开放知道携手金山WPS 共建办公软件网络帮助平台', '', '', '', '', 'admin', '', '', '', '<p>\r\n	一个是风靡的互联网产品，一个是深得人心的客户端办公软件，这两者相遇会发生什么样的化学反应？近日，百度知道开放平台（http://www.baidu.com/search/openiknow/）与知名办公软件金山WPS展开了深度合作，金山WPS官网创建“知道频道”（http://zhidao.wps.cn/），同步百度知道相关office、WPS等软件使用帮助问答内容；同时双方共建的“知道频道”已嵌入新版WPS Office办公软件中，带来客户端帮助服务的一次革命。嵌入开放知道的最新版WPS Office已于4月12日正式发布（下载地址：http://www.wps.cn/）。百度知道与金山WPS携手开创了互联网产品与客户端软件合作的先河，为用户带来全新的应用和服务体验，是一次双赢的创举。\r\n</p>\r\n<p>\r\n	此次与金山WPS的合作，更是树立了百度知道开放平台一个新的里程碑。具体合作方式上，开放知道与金山WPS共建的“知道频道”嵌入了WPS客户端，用户在工具栏点击“WPS知道”按钮即可在软件内直接提问、搜索、回答。同时金山WPS在官网开通“知道频道”并与百度知道打通，百度知道中的 Office、WPS等软件使用问题会同步到双方共建的“知道频道”。随着新版WPS Office完成全面升级，5000万用户将使用到嵌入“WPS知道”的新版软件服务。百度与金山共建的“知道频道”，将成为网络第一的办公软件问答平台，为网友提供更加聚焦、更加专业且全面的软件知识帮助。从此，每当用户遇到软件使用问题时，面对的将不再是冷冰冰的帮助文档，而是千万有着同样使用经历的知道网友提供的定制化解决办法，极大提升了解决问题的速度与专业度。\r\n</p>\r\n<p>\r\n	有业内分析指出，此次合作无论对知道开放平台，还是对金山WPS，都是一个重大利好。对百度知道开放平台来说，不仅覆盖了众多新鲜的潜在用户，而且把开放知道从Web端向桌面端推进了一大步，提升了用户的使用体验和黏性；对金山WPS来说，携手开放知道既丰富了WPS Office的应用功能，又可以借助百度知道庞大、优质的用户数量与流量，为WPS Office用户提供更好的服务与问题解答。\r\n</p>\r\n<p>\r\n	业内人士的分析也得到了市场的印证，此前金山办公软件开展了“Office的问题 WPS全知道”的主题活动，活动上线仅仅10天，就得到了超过2000名知道网友的追捧，他们纷纷加入到Office专家团，为WPS用户提供图文并茂的专业指导。“对于办公软件，用户经常会发现总是有功能选项、函数、图表不会用。联手开放知道后，WPS的新一代互联网开放式服务平台已正式上线，借助知道网友的力量，掀起一场客户端客服系统的全新革命。”金山软件相关负责人说道。\r\n</p>\r\n<p>\r\n	百度知道相关负责人表示，百度知道一直坚持走开放路线，并取得了巨大的成果。和金山WPS的合作，是百度知道开放平台的又一成功案例和重要里程碑。今后百度还将继续践行开放之道，同时加强同各类客户端软件的深度合作，充分挖掘各自产品的资源优势，打造互联网产品、合作伙伴、客户端软件以及广大网民共赢的产业链和生态圈，推动各方的共同发展与进步。\r\n</p>\r\n<p>\r\n	据了解，百度知道自2005年上线以来，已经累计为广大网民成功解决超过一亿个问题，相当于全体网民共同编纂了超过1000本《十万个为什么》。不仅如此，百度知道还引领潮流，实行开放战略，积极搭建知识需求者和知识提供者之间的桥梁。如今已经有近2000家的合作伙伴与开放知道展开了频道合作模式、数据合作模式等多种形式的合作，为用户带来及时、便捷、准确的问答体验，极大的发挥了知识的价值。\r\n</p>', '', '', '118', '12', '1326769820', 'false', '', '0');
INSERT INTO `pmw_infolist` VALUES ('13', '1', '4', '0', '0,', '-1', '-1', '', '百度：先驱者的探索', '', '', 'f,s', '', 'admin', '', '', '', '<p>\r\n	4•26世界知识产权日临近，回顾过去，很多关于网络知识产权问题依旧无解；不过今年，在百度带动下，中国互联网版权问题迎来了一个可喜的拐点。\r\n</p>\r\n<p>\r\n	多年来，互联网版权争端层出不穷，内容创作者对互联网上盗版泛滥可谓五味俱杂。一方面享受到互联网传播带来的名利双收，另一方面则对侵权行为深恶痛绝。而互联网企业限于诸多原因，根本无暇顾及根除侵权内容或是思考提供长久解决之道。但不久前，百度通过与作家群体、音乐人群体的合作探索，以全新的思路为产业的健康良性发展开辟出一条道路。\r\n</p>\r\n<p>\r\n	<strong>能力越大，责任越大</strong> \r\n</p>\r\n<p>\r\n	每一次新技术的深入发展都会带来了新问题的涌现。当广播出现的时候，音乐界曾经奋起抗争坚决抵制广播中出现他们的原创音乐；电视剧、电影也在与新媒介就分享问题几经斗争。百度文库、音乐如今面临挑战也是行业必然。不过，百度在设立这些服务之初，就纳入了深深的责任思考。\r\n</p>\r\n<p>\r\n	百度文库立足于为教育行业提供丰富的文档资源。为大中小学教育、外语学习、资格考试等领域提供的文档占据了八成，为广大师生借助互联网拓展自身视野，提高自主学习能力提供舞台。\r\n</p>\r\n<p>\r\n	作为国内最早提出与音乐权利人分利机制的互联网平台，百度一直努力推动音乐正版化进程。从2007年开始，百度陆续与全球范围内近百家唱片公司签约，保障音乐著作权所有者的合法权益，其中包括滚石唱片、EMI、英皇唱片等著名音乐公司，艺人及歌曲资源比较优秀的本土唱片公司每年能通过与百度合作获得数千万的收入。\r\n</p>\r\n<p>\r\n	在面对各方权利人版权问题非议时，互联网领域知名律师于国富曾指出，百度文库有非侵权的合理用途，适用于国家《信息网络传播权保护条例》（亦称避风港原则）。2010年北京市海淀区人民法院审理百度文库案件时，认为百度文库符合该条例，驳回了原告的全部诉讼请求。\r\n</p>\r\n<p>\r\n	不过，百度并没有借助 “避风港原则”对众多权利人的声音充耳不闻，而是义不容辞地承担起了保护网络知识版权的责任。同作家拓展及实践分成模式、与音乐人委托机构建立合作主渠道、斥巨资投身音乐正版化平台社区建设……其所有行动无一不昭示着大企业的责任观。\r\n</p>\r\n<p>\r\n	<strong>能力越大，作用越大</strong> \r\n</p>\r\n<p>\r\n	无论是通过用户付费、广告分成、还是平台优先展现再经由多种形式变现，赋予作家等权利人前景；还是尝试与音乐权利方共建合作主渠道，对用户按使用付费，百度都在现实层面上简化了版权保护操作，为通过技术创新与制度完善规范正版资源提供了范本。\r\n</p>\r\n<p>\r\n	在百度与音著协就网络音乐作品授权使用问题达成战略合作后。根据双方的协议，对于百度MP3搜索到的音乐，无论授权作品还是非授权作品链接，百度都将根据用户在线播放和下载次数，委托音著协与词曲作者进行分成。有媒体评价称，百度作为第一家与音著协共建著作权主渠道的互联网企业，让数字音乐的版权尤其是音乐词曲著作权收益题开始“破冰”，成为以公开、透明化机制促进数字音乐公平有序发展的典范。\r\n</p>\r\n<p>\r\n	资深互联网专家胡延平曾表示，今天的百度应该被肯定，至少它是中国互联网企业中做出最多努力的一员。数字版权保护一时还没有理想终极的解决方案，但我们欢迎这种建设性的、有助于多方合作共赢的做法出现。\r\n</p>\r\n<p>\r\n	从某种程度上，百度成为了践行诉求数字时代版权合法化的先驱者。在百度出台一系列致力于保护互联网知识版权的举措后，中国广播电视协会旗下相继诞生了广播、电视的版权专项委员会；各类版权维权平台也推出了自己的大型版权方案，一些编剧群体甚至成立了兼具经纪和权利委托性质的专业公司。一些人士预测，百度身后，信息商业价值开始将被更集中地审视和重估。\r\n</p>\r\n<p>\r\n	在一个变革的时代，新生事物与旧有体系的矛盾与冲突在所难免，但这些冲突也推动着利益相关群体去思考问题的症结所在，通过各方的携手努力实现新秩序的建立和产业的发展。也许，这就是百度作为先驱者探索的价值。\r\n</p>', '', '', '156', '13', '1326769836', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('14', '1', '4', '0', '0,', '-1', '-1', '', 'CBSI全面牵手百度联盟蜜月吸金', '', '', '', '', 'admin', '', '', '', '“CBSI旗下所有媒体都跟百度有全面而深入的合作，我希望‘蜜月期’能一直持续下去。” CBSI(中国)高级副总裁刘小东在2011年百度联盟峰会上对记者说。\r\n作为全球最大的专业互动内容网络，2007年，CBSI中国的互联网业务翻开了全新一页，成为百度联盟中众多联盟伙伴的一员。这绝不是CBSI高层一拍脑袋所做出的行为，事实上，2007年时百度已覆盖全中国95%的网民，CBSI(中国)高级副总裁刘小东对此很有感触，“而且，百度的联盟合作伙伴在过去几年发展非常快”，这两点最终促成了CBSI与百度的牵手。\r\n蜜月“吸金”\r\n“达成3000万人民币是我们跟百度联盟合作的一个目标。”刘小东说。真正达成这个目标却比他预想的要快，“我们在2007年脱离Google系统，进入到百度系统，2008年比2007年我们的收入翻了10倍，当然也是因为2007年基数比较小的原因”。\r\nCBSI的追求不止于此。随后，无论是旗下1.0的媒体，还是2.0的社区，CBSI都将其纳入百度联盟系统。至此，CBSI开始了与百度的“蜜月期”，与百度进行全面合作。甚至2010年新收购的闺蜜网和周公解梦也被其迅速纳入百度联盟系统。“通过收入分成模式，百度的收益已经慢慢成为我们的一个重要收入来源。”刘小东坦言。\r\n除带来实实在在的收益外，百度还帮联盟伙伴节省了大量经费。刘小东以55BBS举例说，“作为一家2.0的社区网站，55BBS通过与百度联盟的合作，像百度统计、百度广告管家，都可以使用百度免费提供的，不用浪费资源自己再建一个强大的团队来做。”\r\n据百度财报数据，2004年百度联盟给伙伴分成达到1090万元，2010年百度联盟的分成收入达到了7.6亿，6年来，百度给联盟合作伙伴带来的收益增长了70倍，甚至超过自己的增长速度。2011年，百度将分给联盟合作伙伴多少？“突破10亿”，百度联盟总经理褚达晨很有信心。\r\n流量品牌双助益\r\n对于百度这些联盟伙伴来说，网站导流和品牌宣传也很关键。百度能否在这两方面交给联盟伙伴一份完美的答卷？刘小东给出的答案是肯定的。他还以 55BBS为例，这个女性的城市社区，涉及婚假、购物等众多领域，如果再建一个庞大销售团队的话，对资金链压力也颇大。“透过百度联盟的合作，包括鸿媒体，百度TV的合作，可以带给网站更多高质量内容的用户、客户。”他说。\r\n据悉，目前百度联盟注册会员近50万，针对他们在互联网创业生命周期中不同阶段的诉求，百度联盟从服务平台、成长计划、站长工具、沟通平台四个方面为会员提供着全方位的运营支持。\r\n刘小东对此深有体会，“包括常青藤、包括先锋论坛，可以给我们很多，让我们认识到国内更多的优秀的战略，优秀的互联网专家，让大家的知识汇聚在一起，让我们整个联盟伙伴对于互联网的应用能力包括技术开发能力都有所提高。”他认为，这些对增加网站管理人员的专业水平具有积极意义。\r\n2010年8月，百度联盟还推出“互联网创业者俱乐部”。成立以来，它开展了9场互联网培训活动，活动辐射全国数百万互联网创业者，其中，互联网的站长超过了1万名。从沟通、收益、成长、融资方面给予创业者支持。\r\n业内人士认为，百度对于合作伙伴的持续大力扶持，加之全面开放的战略，将帮助更多网站和网络开发者、创业者们更好地成长和成功，并带动整个产业进一步发展和繁荣，迎来一个全新的互联网开放时代。', '', '', '162', '14', '1326769846', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('15', '1', '4', '0', '0,', '-1', '-1', '', '2011中国慈善排行榜出炉 百度入选年度十大慈善企业', '', '', '', '', 'admin', '', '', '', '<p>\r\n	2011年4月26日，由民政部指导发布的第八届中国慈善排行榜在国家会议中心正式揭晓。百度作为唯一入围的互联网企业，获评年度十大慈善企业称号。\r\n</p>\r\n<p>\r\n	“在刚刚过去的2010年，百度用自己的努力和坚持，积极践行公益事业、回馈社会，这也是其此次获奖的原因所在。”大会主办方评价称，无论是成立百度公益基金会，用更专业的管理践行公益；还是推行“阳光行动”，荡涤互联网不良信息；或是积极投身教育，为乡村教师送到最新的资讯和最先进的课件；以及扶贫基金会联合启动“爱心包裹”，为孩子们送去欢笑，百度公益像七色阳光一样，看似平淡朴实，却有着阳光般的温暖和力量。\r\n</p>\r\n<p>\r\n	在颁奖仪式上，百度总裁助理张东晨表示，互联网时代的新公益已经成为媒体和社会普遍关注的热点话题，而互联网也已经成为社会了解公益信息、参与公益活动的主要渠道。“百度希望能以技术创新推动公益创新，充分利用互联网平台的影响力，在互联网推动公益事业方面有更大突破。”\r\n</p>\r\n<p>\r\n	近年来，百度先后参与并发起了一系列公益活动，今年初还特别成立了百度基金会，围绕知识教育、环境保护、灾难救助等领域，更加系统规范地管理和践行公益事业。就在几天前，百度一手打造的全国首个互联网公益开放平台也正式上线试运行，旨在为全国公益组织提供免费推广。目前，包括中国扶贫基金会、中国红十字会基金会、中国宋庆龄基金会在内的多家5A级公益机构已经成为这一公益平台的首批受益者，而其他有意向的公益机构目前也已经可以通过百度公益官方网站（gongyi.baidu.com）报名申请加入公益开放平台，经百度后台审核通过之后，公益组织即可获得百度的免费推广服务。预计未来几年，全国两千多家基金会也将陆续加入，从而形成透明度最高、参与规模最大、门槛最低的公益生态网络。\r\n</p>\r\n<p>\r\n	中国基金会中心网首席执行官程刚表示：“全民公益是公益发展的必然趋势。百度通过自身巨大的平台影响力和网络资源，为公益信息的公开和透明做出了巨大贡献。未来，希望有更多基金会和企业共同携手，更好地利用互联网来践行网络公益。”在他看来，百度在公益方面的系列举措，将充分调动和释放互联网平台在社会公益层面的影响力，为公众获取公益信息、参与公益行动提供更便捷畅通的渠道，进一步推动整个社会全民公益目标的实现。\r\n</p>\r\n<p>\r\n	就在此次入围民政部“年度十大慈善企业”榜单之前，百度刚刚荣获了中国扶贫基金会颁发的“中国全民公益突出贡献奖”。而历年来，“2010地球一小时企业最佳创意奖”、“中国企业社会责任特别大奖”等一连串沉甸甸的慈善及社会责任奖项，不仅是对百度在践行公益方面的认可，也意味着百度在公益创新发展的道路上，已经成为互联网行业的先锋力量。\r\n</p>', '', '', '101', '15', '1326769867', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('16', '1', '4', '0', '0,', '-1', '-1', '', '百度：构筑信息时代的全民公益', '', '', 'c,f', '', 'admin', '', '', '', '<p>\r\n	红十字基金会、青少年基金会、扶贫基金会……这些公益机构的名称都是当下大多数人耳熟能详的，但是，如果要问这些机构的具体信息，旗下都有哪些具体的公益项目正在开展等，恐怕就不是所有人都清楚的了。一面是不断扩大的公益组织规模和民众热情，一面却因为信息传播不足，民众难以及时参与其中。如今，这一尴尬局面有望打破——近日，笔者上网时发现，在搜索引擎百度检索“中国扶贫基金会”等词语，在搜索结果页面最显著位置，能够直接看到该基金会的背景、账户等信息，基金会下的各种具体项目也都一目了然。笔者得知，这一功能的实现，源于百度打造的全国首个互联网公益开放平台的上线试运行。\r\n</p>\r\n<p>\r\n	除中国扶贫基金会外，目前，已经有包括中国红十字基金会、中国青少年基金会在内的近100家基金会或标杆公益项目加入了百度公益开放平台，并获得百度所提供的免费推广宣传资源。百度公益开放平台一期面向国内2000多家基金会开放测试，二期将辐射中国近百万注册NGO，从而覆盖整个中国公益圈，让公益信息在百度上触手可及。\r\n</p>\r\n<p>\r\n	<strong>信息时代的新公益</strong> \r\n</p>\r\n<p>\r\n	自成立之日起，百度就一直坚持 “让人们最便捷地获取信息，找到所求”的企业使命，充分利用自己的互联网及技术优势，来帮助人们平等地获取信息，并秉持责任承诺，在教育、环保、扶贫、赈灾等领域践行着自己弥合信息鸿沟、共享知识社会的企业公民理想，广受业界好评。\r\n</p>\r\n<p>\r\n	2008年12月，百度充分调动公司内部各种资源，帮助湖北秭归脐橙通过网络推广宣传、开拓销售渠道，短时间内卖出7万多吨脐橙；在汶川、玉树地震中，百度公司共捐助约1500多万元；此外，百度持续三年参与“爱心包裹”公益行动，2010年10月，百度打造了首款公益类优质资源应用——“保益悦听掌上盲道”网络平台，将百度为盲人获取信息的触角延伸到了手机之上，让数以万计的盲人用户可以通过手机来发短信、上网，让更多的弱势群体都能通过百度的平台领略互联网的科技魅力。\r\n</p>\r\n<p>\r\n	2011年1月，百度更是正式获批成立了百度公益基金会，目前正在搭建专业的管理团队，制定基金会的公益战略规划，基金会的关注方向将主要集中在资助青少年、弱势群体、贫困地区与公益机构提高信息技术应用水平，推动建立公益信息平台，资助救灾、教育、环保等公益项目。\r\n</p>\r\n<p>\r\n	<strong>构筑全民公益平台</strong> \r\n</p>\r\n<p>\r\n	在公益事业的践行上，百度早已走在产业前列，然而，百度的步伐不仅仅停留于此。\r\n</p>\r\n<p>\r\n	作为中国市值最大的互联网公司，近年来，百度更加重视的，是如何进一步发挥出核心的技术优势，以技术力量驱动公益创新，为更多企业、个人、公益组织、慈善机构提供更加广阔的互联网平台。\r\n</p>\r\n<p>\r\n	而此次百度公益开放平台破茧而出，面向全国公益组织，免费为其在互联网上做推广时，解决的则是目前公益界最为突出的问题——公益信息的集结、公开和透明。\r\n</p>\r\n<p>\r\n	正如Robin所说，“我们期待，通过网络的力量，公益的善举与精神能够与公众零距离接触。推动全社会公益氛围形成，使公益与空气和阳光一样触手可及。”未来，百度会立足核心科技、创新优势，驱动公益体系变革、创新、蓬勃发展。而在百度的榜样效应下，一个更开放、透明、规模更大的中国互联网公益生态圈正在形成，让网络改变公益，让公益触手可及。\r\n</p>', '', '', '161', '16', '1326769881', 'false', '', '0');
INSERT INTO `pmw_infolist` VALUES ('17', '1', '4', '0', '0,', '-1', '-1', '', '百度与Facebook成为全球成长最快品牌', '', '', '', '', 'admin', '', '', '', '<p>\r\n	2011年5月9日，世界顶级品牌沟通服务集团WPP旗下权威调研公司华通明略发布第六届年度“BrandZ 全球最具价值品牌100强 (BrandZ Top 100 Most Valuable Global Brands)”排行榜。其中，中国最大搜索引擎百度品牌价值排名全球第29位，与Facebook共同成为全球价值增长最快的品牌，并在科技类细分榜单中，成为跻身全球科技品牌10强的唯一中国公司。\r\n</p>\r\n<p>\r\n	据悉，“BrandZ 全球最具价值品牌100强”研究根据财务数据，结合品牌资产的消费者指标，分析得出品牌价值，并以此评出全球最具价值100个品牌。目前，该榜单已成为国际公认的最权威的品牌排行榜之一。在今年的百强榜中，百度由2010年的第75位跃升至第29位，品牌价值增长达141%，仅次于今年刚上榜排名第35位的Facebook，后者的品牌价值增长为246%。\r\n</p>\r\n<p>\r\n	2011年BrandZ报告指出，“随着中国13亿公民中越来越多的人开始使用互联网搜索，他们更多地倾向于使用百度。因为他们相信，百度能够更深入地理解中国的多元文化和语言中的细微差别。”\r\n</p>\r\n<p>\r\n	事实上，以“让人们最便捷地获取信息，找到所求”为使命的百度一直致力于为用户提供最优质的搜索体验。除了不断致力于技术、产品及服务创新，为网民提供了60余款与搜索相关的产品和服务外，加强在移动、SNS等新兴领域的战略部署外，百度CEO李彦宏还在2009年，创造性地提出了“框计算”理念，并相继推出数据及应用两大开放平台，推动更多优质的数据及应用资源与网民的需求直接对接，以实现“即搜即得”、“即搜即用”。目前，框计算已经影响了 63%以上的搜索结果，深受网民好评。而优质的用户体验，也使得百度以市场份额80%左右的绝对优势，持续领跑中国搜索引擎市场。\r\n</p>\r\n<p>\r\n	更值得关注的是，通过框计算及百度开放平台，百度为众多创业者和开发者提供了广阔的创业及创新平台，并帮助其从创新中受益和发展，百度对于互联网产业链发展及创新的影响力也正在逐渐释放。\r\n</p>\r\n<p>\r\n	百度品牌的快速增长，也得益于其在公益领域的突出贡献。自成立来，百度就一直致力于充分利用自己的互联网及技术优势，在教育、环保、扶贫、赈灾等领域践行着自己弥合信息鸿沟、共享知识社会的企业公民理想，广受业界好评。从帮助湖北秭归农民利用网络推广滞销脐橙,到捐资1500多万元、用于汶川及玉树等震区进行应急救灾和灾区重建工作；从打击互联网不良信息、净化产业环境的“阳光行动”，到帮助盲人创业者打造“掌上盲道”网络平台，让数以万计的盲人用户可以通过手机来发短信、上网；从成立百度公益基金会、用更加专业的管理专注于救灾、教育、环保等公益项目，到推出全国首个互联网公益开放平台、为全国公益组织提供免费推广，百度在积极践行公益事业、回馈社会的同时，也正使得公益的门槛不断降低，推动着互联网时代全民公益理想的实现。\r\n</p>\r\n<p>\r\n	分析人士认为，作为中国技术创新企业的杰出代表，百度公司成为全球成长最快的品牌之一并跻身全球科技品牌10强，体现了中国高科技企业蓬勃的生命力和巨大的发展潜力，也将激励更多中国品牌、尤其是中国科技品牌在世界的崛起。\r\n</p>', '', '', '156', '17', '1326769895', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('18', '1', '4', '0', '0,', '-1', '-1', '', '百度“发微” 一键群发催生“框微控”', '', '', '', '', 'admin', '', '', '', '<p>\r\n	计世网消息：网民“善变之图”曾是个地地道道的“状态控”，哪有好吃、好玩的，“善变之图”总是第一时间在即时聊天工具或社交网站的状态栏里同时更新。但当她开始发觉自己的状态总被各种日志、照片等社交信息淹没后，“善变之图”又成了彻头彻尾的“围脖控”，然而很快又有了新烦恼：为了兼顾几个微博帐户的粉丝，一条微博，要多次登录发好几遍。直到最近，她发现百度上竟然可以实现“微博群发”了，于是她又成为一个新“控”——“框微控”。\r\n</p>\r\n<p>\r\n	“框微”即“框发微博”，用户可直接通过这一应用，将微博内容同步发布到搜狐、腾讯、网易微博中。只要在百度搜索框中键入“发微博”，即可触发百度框计算的“微博在线群发”应用（如下图）。同时，选择并登录相应微博发布入口，即可一键群发一条微博内容到多个微博帐户。\r\n</p>\r\n<p>\r\n	笔者使用发现，除了通过“微博在线群发”实现框发微博，还可直接通过百度搜索框实现微博发布。当网友的搜索内容被百度自然语言识别为微博需求时，即会触发“框发微博”应用提示。如，输入“期待明天能有好天气”这类形同微博内容的语句，用户便可选择是否将内容发布到微博中，并点击实现。\r\n</p>\r\n<p>\r\n	据悉，自“框发微博”低调上线以来，该应用已在网友中日益风行起来，其新奇、简单、高效的微博体验也引发了广大用户的口碑相传。网友 “Harolden-霍大爷”便说：“百度推框发微博，感觉还真的蛮不错”。网友“烟雨画浓”也表示，在全国微博用户达到一亿之际，百度推出“框发微博” ，开启了一个全民微博时代。网友李元则更为宏观地评论到：“百度的发展速度真是快的让人无法想象，尤其是框计算提出以来，让你想不到的东西，一下就会出现在你的眼前。前面是哼唱搜索、百度识图，这不又来了，在百度就可发微博了，看来创新真的可以改变一切。”\r\n</p>\r\n<p>\r\n	百度相关负责人告诉记者：“由百度官方开发的‘框发微博’应用，目前仍处于成长期，尚只支持140字以内的文字内容和网址发布。未来，‘框发微博’ 还将基于用户的实际需求，增加对图片、视频等内容的发布，完善交互功能，扩展合作平台，以更好地实现一键群发微博的创新应用，降低用户的微博发布门槛，提升用户的微博体验。”在源源不绝的创新驱动和技术支持之下，也许我们可以预言，百度这个框除了“发微”，还要发威。\r\n</p>', '', '', '60', '18', '1326769910', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('19', '1', '4', '0', '0,', '-1', '-1', '', '爱佑华夏联合百度在京举办“爱由心生”慈善晚宴', '', '', 'h', '', 'admin', '', '', '2011年5月14日晚，国内首家非公募基金会爱佑华夏慈善基金会（简称爱佑华夏）联合百度公司在北京盘古酒店4层大宴会厅举办了以2011“爱由心生”为主题的慈善晚宴。', '<p>\r\n	2011年5月14日晚，国内首家非公募基金会爱佑华夏慈善基金会（简称爱佑华夏）联合百度公司在北京盘古酒店4层大宴会厅举办了以2011“爱由心生”为主题的慈善晚宴。出席此次晚宴的嘉宾有爱佑华夏慈善基金会理事长王兵、百度公司董事长兼CEO李彦宏、新浪网CEO曹国伟、腾讯公司董事长马化腾、北京万通实业股份有限公司董事长冯仑、上海巨人网络科技有限公司董事长史玉柱、恒基兆业地产集团副主席李家杰等众多中国知名企业家，此次晚宴旨在向基金会的发起人、捐赠人和社会各界展示基金会7年多的发展历程和极致透明的特点，探讨爱佑华夏以及中国慈善基金会未来的发展前景。\r\n</p>\r\n<p>\r\n	目前，爱佑华夏慈善基金会已完成1万名先天心脏病儿童的救助工作，下一阶段将重点关注白血病儿童的救治和援助。今年是爱佑华夏基金成立七周年，百度公司董事长兼CEO李彦宏、新浪网CEO曹国伟受邀正式加入爱佑华夏慈善基金会并成为新的理事。爱佑华夏基金会理事、恒基兆业副主席李家杰宣布向基金会捐款1000万。\r\n</p>\r\n<p>\r\n	爱佑华夏慈善基金会理事长王兵表示，爱佑华夏已经成长为产品型基金会，随着基金会的发展规模和法律法规的完善，爱佑华夏也会出现新的变化。在未来5 到10年，爱佑华夏致力于发展为平台型的基金会，让更多的慈善组织都能通过这个平台找到合适的公益项目。把爱佑华夏打造为社区型的基金会，为慈善基金会的发展提供一个新的视角。愿意始终坚持以企业家的精神，让每一份捐赠不留遗憾的使命，以热忱、正直、高效、创新的价值观不断提醒每一位热心公益的爱心人士，给生命一次机会，给孩子一个未来，推动中国慈善事业的发展。\r\n</p>\r\n<hr style=\"page-break-after:always;\" class=\"ke-pagebreak\" /><p>\r\n	较早前，爱佑华夏基金也加入了百度公益开放平台，通过互联网的开放平台，为基金会及其下爱佑童心等公益项目在全国范围进行免费推广，集结全社会的爱心力量，让更多需要帮助的孩子通过网络平台得到救助。据悉，百度公益开放平台旨在为全国公益组织提供免费推广，将公益组织的官方权威信息及资源与公众直接对接，为公众了解公益信息提供便利；目前已有包括中国扶贫基金会、红十字会基金会、宋庆龄基金会等5A级基金会在内的首批公益机构加入。百度公益基金会秘书长张东晨表示：“百度公益基金会还将持续关注并支持爱佑华夏基金会各类慈善项目，在资助青少年、弱势群体、贫困地区与公益机构提高信息技术应用水平方面做更多贡献。”\r\n</p>', 'templates/default/images/imgdata/newsimg.png', '', '165', '19', '1326769925', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('20', '1', '14', '0', '0,', '-1', '-1', '', '湖南奥昇信息互联网+监督 项目介绍', '', '', 'h', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499075087.jpg', '', '143', '20', '1499069817', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('21', '1', '14', '0', '0,', '-1', '-1', '', '区域卫计生管理', '', '', 'h', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499079756.jpg', '', '121', '21', '1499069864', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('22', '1', '14', '0', '0,', '-1', '-1', '', '智慧教育', '', '', 'h', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499076476.jpg', '', '94', '22', '1499069897', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('23', '1', '15', '0', '0,', '-1', '-1', '', '公司简介', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499080700.png', '', '85', '23', '1499071298', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('24', '1', '15', '0', '0,', '-1', '-1', '', '荣誉资质', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499075800.png', '', '165', '24', '1499071344', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('25', '1', '15', '0', '0,', '-1', '-1', '', '董事长致辞', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499079037.png', '', '149', '25', '1499071379', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('26', '1', '15', '0', '0,', '-1', '-1', '', '企业文化', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499080106.png', '', '128', '26', '1499071433', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('27', '1', '16', '0', '0,', '-1', '-1', '', '新闻图文内容', '', '', '', '', 'admin', '', '', '', '全国政协十二届五次会议提案0001号题目是《关于将学前三年教育纳入义务教育的提案》(以下简称《提案》)，第一提案人是全国政协委员、中央财经大学校长王广谦。 　　该提案指出，与九年义务教育相比，学前教育仍是教育体系中的薄弱环节。学前教育的投资少、资源总量不足、师资短缺、办园水平参差不起、...', 'uploads/image/20170703/1499077628.png', '', '183', '27', '1499071794', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('28', '1', '16', '0', '0,', '-1', '-1', '', '智慧溆浦介绍', '', '', '', '', 'admin', '', '', '', '', '', '', '98', '28', '1499072127', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('29', '1', '16', '0', '0,', '-1', '-1', '', '教师的“铁饭碗”将不保？各省份将破除教师资格“终身制”？', '', '', '', '', 'admin', '', '', '', '', '', '', '88', '29', '1499072197', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('30', '1', '16', '0', '0,', '-1', '-1', '', '2016年教育信息化工作要点', '', '', '', '', 'admin', '', '', '', '', '', '', '136', '30', '1499072219', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('31', '1', '16', '0', '0,', '-1', '-1', '', '互联网巨头涉足医疗产业助力解决“看病难”', '', '', '', '', 'admin', '', '', '', '', '', '', '104', '31', '1499072239', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('32', '1', '16', '0', '0,', '-1', '-1', '', '互联网+监督项目介绍', '', '', '', '', 'admin', '', '', '', '', '', '', '126', '32', '1499072264', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('33', '1', '16', '0', '0,', '-1', '-1', '', '可穿戴医疗将在2016年呈爆发式增长', '', '', '', '', 'admin', '', '', '', '', '', '', '117', '33', '1499072299', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('34', '1', '16', '0', '0,', '-1', '-1', '', '公司与同方合作承建的“互联网+”项目调试成功', '', '', '', '', 'admin', '', '', '', '', '', '', '58', '34', '1499072318', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('35', '1', '16', '0', '0,', '-1', '-1', '', '《2017年教育信息化工作要点》', '', '', '', '', 'admin', '', '', '', '', '', '', '159', '35', '1499072339', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('36', '1', '17', '0', '0,', '-1', '-1', '', '尾部左栏', '', '', '', '', 'admin', '', '', '', '合作热线：4008745099 18307459777 公司地址：湖南省怀化市鹤城区河西市政协大楼<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Copyright &copy; 2014 - 2015 aorise.com All Rights Reserved网站备案 湘ICP备15016651号。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本栏目文字内容归aorise.cn 所有,任何单位及个人未经许可，不得擅自转摘使用。', 'uploads/image/20170703/1499074627.png', '', '104', '36', '1499073035', 'true', 'true', '1499074255');
INSERT INTO `pmw_infolist` VALUES ('37', '1', '17', '0', '0,', '-1', '-1', '', '奥昇教育公众号', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170703/1499079561.png', '', '166', '37', '1499073102', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('38', '1', '17', '0', '0,', '-1', '-1', '', '尾部左部', '', '', '', '', 'admin', '', '', '', '合作热线：4008745099 18307459777 公司地址：湖南省怀化市鹤城区河西市政协大楼<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Copyright &copy; 2014 - 2015 aorise.com All Rights Reserved网站备案 湘ICP备15016651号。<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本栏目文字内容归aorise.cn 所有,任何单位及个人未经许可，不得擅自转摘使用。', 'uploads/image/20170703/1499078026.png', '', '142', '38', '1499074452', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('39', '1', '18', '0', '0,', '-1', '-1', '', '头部', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499178977.jpg', '', '77', '39', '1499085834', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('40', '1', '18', '0', '0,', '-1', '-1', '', '湖南奥昇信息互联网+监督 项目介绍', '', '', '', '', 'admin', 'solutionpro.php', '', '互联网+监督是践行党的群众路线，密切干群关系最直观的体现。其优势表现在通过大数据分析对各种数据进行排查、提炼各种有效信息，协助纪律检查部门缩小排查范围，有针对性的对各种违纪违章情况进行查处。并通过互联网的手段，使得群众亦可不出家门便对掌握的信息进行反馈和跟踪。这是一种趋势，是适应大数据...', '<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">互联网+监督是践行党的群众路线，密切干群关系最直观的体现。其优势表现在通过大数据分析对各种数据进行排查、提炼各种有效信息，协助纪律检查部门缩小排查范围，有针对性的对各种违纪违章情况进行查处。并通过互联网的手段，使得群众亦可不出家门便对掌握的信息进行反馈和跟踪。这是一种趋势，是适应大数据时代下网络监管的具体措施。</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">我公司自主研发的“互联网+监督”系统平台，通过各种数据的处理、整合、分析从而实现自动化分析，为纪律检查和全民监督提供有效的途径和手段。</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">监督平台包括两大部分：前台网站和管理后台。</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">一、前台网站包括四大功能：政民互动、民生监督、扶贫攻坚、信息公示。</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">政民互动：我要投诉、我要举报、我要点赞、你问我答、反馈公示、随手拍；</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">民生监督：惠民政策、民生资金、监督机构、办事流程、与我相关；</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">扶贫攻坚：扶贫政策、精准扶贫、精准脱贫、精准识贫、贫困人口分布、干部帮扶等；</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">信息公示：政策中心、村务公开、项目公示、曝光台。</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">二、管理后台包括：政民互动、政务公示、民生监管、扶贫监管、基础数据、社区地图、数据统计、系统管理等。</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">政民互动：投诉处理、点赞查询、你问我答、随手拍详情、智能回答；</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">政务公示：政策中心、村务公开、惠民办事流程、项目公示、曝光台；</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">民生监管：民生监督组、数据识别（数据碰撞，包括自动识别和手动识别）、各部门补贴情况；</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">扶贫监管：精准识贫（未脱贫人口）、精准扶贫、精准脱贫（脱贫人口）、干部帮扶、众筹扶贫、雨露计划；</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">基础数据：人口信息、房产信息、车辆信息、财政供养人员、企业法人；</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">社区地图：在地图上展现各个乡镇及村子的贫苦信息；</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">数据统计：民生资金统计、扶贫信息统计、投诉统计</span>\r\n</p>\r\n<p style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\">系统管理：辖区管理、角色管理、部门管理、用户管理、考核用户管理、操作日志、登陆日志。</span>\r\n</p>', 'uploads/image/20170704/1499177490.jpg', '', '122', '40', '1499090654', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('41', '1', '18', '0', '0,', '-1', '-1', '', '区域卫计生管理', '', '', '', '', 'admin', 'solutionclean.php', '', '随着社会的不断发展和进步，区域卫生信息化正面临着各种新挑战。基于健康管理及卫生服务领域自身固有的特点和复杂性，卫生信息化发展整体水平落后于其他行业。为加快医疗卫生信息化的发展，国家卫计委将卫生信息化建设作为新医改的核心之一，并且在“十二五”规划中制订了卫生信息化具体的路线图。奥昇信息...', '<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">政策背景</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:21pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">随着社会的不断发展和进步，区域卫生信息化正面临着各种新挑战。基于健康管理及卫生服务领域自身固有的特点和复杂性，卫生信息化发展整体水平落后于其他行业。为加快医疗卫生信息化的发展，国家卫计委将卫生信息化建设作为新医改的核心之一，并且在“十二五”规划中制订了卫生信息化具体的路线图。奥昇信息结合自身优势，自主设计实现以电子病历和健康档案为中心的区域医疗信息化系统解决方案。</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:21pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">整体方案</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">整体构架</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">系统功能</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">区域健康档案</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:21pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">以居民健康为核心，涵盖健康、医疗、卫生等各个方面，实现全区域居民的自我保健和健康管理，实现局面全寿命周期的健康管理。系统按照卫计委颁布的《卫生信息数据元目录》等</span><span style=\"box-sizing:border-box;font-size:14px !important;\">35</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">项卫生标准以及其他行业标准，实现健康档案管理，慢性病跟踪，传染病管理等功能。</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">区域电子病历：以卫生部颁布的《电子病历基本架构和数据标准》为依据实现区域电子病历系统，实现医生文书系统，护理文书系统，病历质控并提供与</span><span style=\"box-sizing:border-box;font-size:14px !important;\">HIS</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">系统的接口。</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">区域医疗协同</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:21pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">为充分整合区域医疗卫生资源，并结合医疗卫生现状，系统实现双向转诊、远程会诊、区域预约挂号平台、公共卫生应急指挥平台等。</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:21pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">区域医疗监管：对医疗机构的人财物等进行监督管理，主要实现药品供应链管理、区域人事管理、社区绩效考核、区域财务监管、区域医疗行为监管、固定资产管理等。</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:21pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">区域健康服务平台：提供面向公众的数据服务平台，方便居民通过网络进行相关信息的查询和处理，主要包括自助查询系统、居民健康卡、慢性病和职业病管理等。</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:21pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">移动医疗：提供基于手机的移动应用和基于微信的公众服务平台等，提供在线的挂号预约，信息查询等功能。</span>\r\n</p>', 'uploads/image/20170704/1499179072.jpg', '', '105', '41', '1499090886', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('42', '1', '18', '0', '0,', '-1', '-1', '', '智慧教育', '', '', '', '', 'admin', 'solutionedu.php', '', '随着时代的进步和技术的发展，互联网和信息化技术深入到生活的方方面面。教育作为关系到国计民生的重大工程，信息化发展现状不容乐观，为此国家制订了《教育信息化中长期发展规划纲要》，并在全国教育信息化工作会议确定以“三通两平台”为抓手，重点推进教育信息化建设。基于此，湖南奥昇信息技术有限公司...', '<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">政策背景</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">随着时代的进步和技术的发展，互联网和信息化技术深入到生活的方方面面。教育作为关系到国计民生的重大工程，信息化发展现状不容乐观，为此国家制订了《教育信息化中长期发展规划纲要》，并在全国教育信息化工作会议确定以“三通两平台”为抓手，重点推进教育信息化建设。基于此，湖南奥昇信息技术有限公司根据国家的整体规划和顶层设计，结合国内教育信息化发展的现状，综合自身的技术优势设计了完全自主知识产权的教育信息化整体解决方案。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">整体方案</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">功能介绍</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">宽带网络校校通</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">依据宽带网络校校通的建设精神，为教育信息化提供良好的网络基础条件，为管理者进行教育资源的管理，老师方便高效的进行教学活动，学生主动积极进行学习活动提供基础保障。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">与运营商合作，建设教育城域网专门用于教育信息化，充分保证网络带宽和网络环境的稳定。中心机房采用先进的核心网络设备，以及安全网关，上网认证等设备保证网络的安全可靠，为各方提供高速，高效，安全绿色的网络环境。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></span><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">实现各个学校的网络联通，为教育信息化提供高速稳定的通信链路。建设教育城域网，主干链路通信带宽不低于</span><span style=\"box-sizing:border-box;font-size:12pt;\">10GB</span><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">，实现光纤到校，百兆到教室，并且实现教室办公区域的无线网络覆盖。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">优质资源班班通</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">通过电子白板，触控一体机以及相关配套的软件系统，实现教室授课信息化。告别“一张嘴，一支粉笔”的传统教学模式；教师可以通过一体机直接调用优质的教学资源，并且可以通一体机实现远程教学，丰富课堂内容，提升学生学习兴趣。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">学习空间人人通：为每个教师，家长，学生开通个人空间，实现老师，学生以及家长在线交流和互动。并且可以通过个人空间实现课内课外资源共享。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;text-indent:24.1pt;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">网络学习空间人人通</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">借助大数据挖掘及开放式的元计算架构，以教师、学生、家长为主体，汇聚教与学相关相信、资源与服务，依据不同用户角色的需求构建设实名制的一站式互动学习网络空间，让每校、每班、每人都拥有实名制的学习、互动、交流、分享空间，扩大优质资源</span><span style=\"box-sizing:border-box;font-size:12pt;\">&nbsp;</span><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">受众群体，体现教育均衡与开放。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;text-indent:24.1pt;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">教育资源公共服务平台</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;text-indent:21pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">用开放的基于云技术的资源平台，提供全面的基于多种教材版本的全知识点覆盖的教学资源，提供多层级的资源管理。将包括课件、视频、试题、文献、素材等多种类型的资源，按照多样化的分类方式进行分类，整理；并通过</span><span style=\"box-sizing:border-box;font-size:12pt;\">WEB</span><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">界面进行展示。并且将区域内教学资源建设和共享。应用于课堂教学、课外教学、教研培训、学术研究中。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;text-indent:24.1pt;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">教育管理公共服务平台</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">按照局、校两级应用的原则，通过建设统一标准的公共服务平台，将贯穿在教育日常工作中的学生、教师、资产和管理等基础信息，按规范格式统一保存在数据中心，在智慧教育云平台的基础上，统一建设各类教育信息化应用，便于各级教育主管部门进行数据查询和统计分析。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;text-indent:24.1pt;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">平安校园</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">基于定位系统以及固定监控系统，实时追踪学生位置及在校情况，并且通过软件系统，实现数据记录，轨迹分析等。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:21pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;\"></span><span style=\"box-sizing:border-box;\"></span></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:21pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p align=\"center\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-align:center;text-indent:21.1pt;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">家校互联</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">基于</span><span style=\"box-sizing:border-box;font-size:12pt;\">WEB</span><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">和移动应用的双重访问终端，实现家长与学校之间全方面沟通的信息沟通，家长通过手机或电脑即可随时获取学生在校的表现。实现家校沟通互联管理，学生平安管理，校车安全，学生成长档案等功能。</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">硬件拓展</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">高清触控一体机：</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">高清超薄触控大屏和推拉黑板组成一体化教学板书、显示及操作平台。集成大屏幕高清显示、交互式电子白板、多多媒体教学演示多多项功能于一体，是智慧教学的理想展示平台。</span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">录播系统：</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">智能录播系统是基于“一体化设计、智能化技术、常态化教学”的理念针对教学需求所开发的，通过该系统的应用，整体解决学校教学、科研实况的录播需求，在教师、学生和学校之间建立良好的充流平台，为学校提供优质视频资源采集的工具，给学校的教学带来真正的帮助。</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">可穿戴安全定位设备：</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">智慧手环是一种穿戴式智能设备，通过</span><span style=\"box-sizing:border-box;font-size:12pt;\">&nbsp;</span><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">这款手环，用户可以记录日常生活中的煅炼、睡眠部分还有饮食等实时数据，并将这些数据与手机、平板、</span><span style=\"box-sizing:border-box;font-size:12pt;\">Ipad Touch</span><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">同步，起到通过数据指导健康生活的作用。</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;\"></span>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">电子书包：</span></b><b style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-size:12pt;\"></span></b>\r\n</p>\r\n<p align=\"left\" class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;text-indent:24pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:12pt;font-family:宋体;\">电子书包是一款基于“人人通”运用，体现教学自主、高效、互动的创新型产品。该产品以智慧管理为核心，无缝对接学校的日常教学活动、借助云计算机、数据挖掘和分析、人工智能、移动终端等为“因材施教”提供可行性方案。</span>\r\n</p>', 'uploads/image/20170704/1499173001.jpg', '', '122', '42', '1499090962', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('43', '1', '16', '0', '0,', '-1', '-1', '', '栏目头部', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499155617.jpg', '', '146', '43', '1499093009', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('44', '1', '16', '0', '0,', '-1', '-1', '', '教育强音 跟你有关！两会这些教...', '', '', '', '', 'admin', 'productedu.php', '', '全国政协十二届五次会议提案0001号题目是《关于将学前三年教育纳入义务教育的提案》(以下简称《提案》)，第一提案人是全国政协委员、中央财经大学校长王广谦。 　　该提案指出，与九年义务教育相比，学前教育仍是教育体系中的薄弱环节。学前教育的投资少、资源总量不足、师资短缺、办园水平参差不', '<div id=\"textarea\" style=\"box-sizing:border-box;margin:0px;padding:0px;font-family:微软雅黑, Arial, Helvetica, sans-serif;color:#666666;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">全国政协十二届五次会议提案</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">0001</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">号题目是《关于将学前三年教育纳入义务教育的提案》</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">(</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">以下简称《提案》</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">)</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">，第一提案人是全国政协委员、中央财经大学校长王广谦。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">该提案指出，与九年义务教育相比，学前教育仍是教育体系中的薄弱环节。学前教育的投资少、资源总量不足、师资短缺、办园水平参差不起、“入园难、入园贵”问题突出。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">为此，提案建议，在九年义务教育已经实现的基础上，将三年学前教育纳入义务教育范畴，统一规划实施</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">;</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">建立以财政资金为主、社会广泛参与的资金支持体系；鼓励和支持有条件的企事业单位举办公立幼儿园，国家按核定的生均定额拨付财政资金；当地政府应履行好学前三年义务教育的职责，对不能进入单位幼儿园的辖区居民需求予以保障</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">;</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">支持引导民间资本进入学前教育领域；尽快制定《学前教育法》等。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">人大代表李光宇：建议高考取消英语科目</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"></span></span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">现今大量学生反映，除了上课学习英语、课下复习和作业以外，许多家长都为孩子报名了英语补习班。课外补习占据了学生原本就有限的课外活动、休闲娱乐时间，不仅使学生感到负担沉重，甚至也影响了睡眠和休息。上海儿童发展研究中心的调查显示，只有</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">17.2%</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">的小学生、</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">19.1%</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">的初中生达到了标准的睡眠时间；来自深圳的调查显示，超过</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">42%</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">的深圳中小学生处于睡眠不足的状态。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"></span></span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">“如果按照每天</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">8</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">个小时的学习时间来计算，在一个孩子最美好的</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">10</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">年时光里，竟然将近五分之一（</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">18.13%</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">）的时间都花在了英语学习上。”全国人大代表、中国宇华教育集团董事局主席李光宇建议高考取消英语科目，把中小学生的英语必修课改为选修课。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">据教育部最新数据显示，中国孩子一年为英语必修课要消耗掉</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">1637.8</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">亿元，中国人每年学英语消耗掉的钱至少能投资</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">0.8</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">个三峡、发射</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">204</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">个神舟航天飞船。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">学校教育时间过长</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:Calibri;\">&nbsp;</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">中学阶段应减两年</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"></span>3</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">月</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">6</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">日上午，全国政协委员、中国工程院院士石碧拟提交提案，建议义务教育加高中阶段学制应减少两年，硕士、博士研究生阶段也减少两年。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">“如此，我觉得对学生、家庭、社会都是有好处的。”“我带过很多博士研究生，毕业后一般都</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">29</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">岁、</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">30</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">岁了，这个年龄太大了。”</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\"></span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"></span></span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">现行学制有什么不好？</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">石碧举例说，过长学制首先对个人人生规划有影响。一般人七岁读小学，九年义务教育、高中三年、本科四年，大学毕业就</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">23</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">岁了。如果继续读研究生，硕士、博士各</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">3</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">年，博士毕业都已</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">29</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">岁。无论男女，近</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">30</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">岁才开始工作，家庭、育儿的事情又接踵而至，事业开始阶段，就无法投入全副精力。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">其二，受教育时间成本太高，随之而来的是经济成本提高。“六年研究生，基本上每年要净支出</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">5</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">万元，六年下来就是</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">30</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">万元。一些城市家庭的学生还能应付，对一些农村家庭学生来说，上不起。”石碧还特别解释，每年</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">5</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">万元支出算上了研究生的补助、收入等，“否则花费更大”。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">第三，也是非常重要的一点，过长的学校教育时间加大了社会的老龄化压力。如果能早点让学生毕业、就业，就增加了劳动者的数量，进而缓解了老龄化压力。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">设本科生导师</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:Calibri;\">&nbsp;</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">，建议落实弹性学制</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\"></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:Calibri;\"></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">近年来，国内一些高校通过扩招等举措，试图构建有利于人人成才的本科人才培养体系，并取得一定的效果。然而，当下大学生仍面临创新能力不强、学习兴趣缺乏的困境，学习动机呈现出“工具化”和“外在化”。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">对此，全国政协常委、农工党中央副主席、上海交通大学副校长蔡威拟在两会期间递交一份题为《关于建立以兴趣为导向创新人才培养体系的建议》的提案，建议激发学生参与科研活动的积极性，设置本科生导师制，加强教师对学生兴趣的个性化指导。此外，建议落实弹性学制，尊重学生个体发展的差异性。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">“仅靠外部动机的推动与诱导不培养学生的兴趣等内部动机，创新人才培养将是一句空话。”蔡威在提案中提出，创新离不开兴趣，创新人才培养需要重视、尊重和培养学习的兴趣，促使兴趣、创造、自信心、成就感、创造成果之间形成正反馈。通过激发学生兴趣使学生能够去主动自发地学习，诱发学生的学习兴趣，激发求知欲和好奇心。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">关注中小学校外培训机构规范管理</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"></span></span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">新学期伊始，不少学校周围的课外辅导班又开始升温。全国政协委员、华中师范大学党委书记马敏在接受记者采访时表示，今年的两会，他带来了关于加强中小学校外培训机构规范管理的提案。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">马敏委员介绍，近年来，为切实减轻学生课业负担，政府采取了全面禁止有偿家教等系列举措并取得了一定的成效。然而，由于学生及家长对教育培训需求呈多样化、个性化发展，巨大的市场需求也使得课外培训机构呈井喷之势。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">他认为，众多校外教育机构的建立，极大地满足了社会对优质教育的需求，行业前景虽好，但也带来了学生人身安全存在隐患，教学质量鱼目混珠、教书和育人严重脱离、对校内教育产生负面影响等问题，亟待规范。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">在调研中马敏发现，当前中小学校外培训机构存在不少问题，一是种类众多，质量良萎不齐，一些补习机构为追求利益虚假宣传招生，无证校外培训机构依然存在；二是课外辅导机构以提升学生学习成绩为幌子，采取题海战术，加重了学生课外负担；三是课外辅导机构与在职教师抱团，有偿家教出现了新的存在形式，严重损害了教育公平。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n	<p class=\"MsoNormal\" style=\"box-sizing:border-box;margin:0cm 0cm 0pt;\">\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">对如何有效遏制课外辅导机构恣意生长，切实减轻学生和家庭的负担，马敏委员提出，要加强监督管理，坚决取缔在校教师变相办班现象；严厉打击未注册、未申报的不具备办学条件的补习班；建议教育管理部门结合实际组建正规、合格的培训机构；增设校内特长班、兴趣班，满足校内学生需求。同时还要加强对家长的培训和引导，破除跟风、攀比、分数为王的教育观念误区，科学处理应试教育与素质教育的关系。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n	</p>\r\n	<div>\r\n		<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\"><br />\r\n</span></span>\r\n	</div>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;\"></span>\r\n</div>\r\n<strong></strong>', 'uploads/image/20170704/1499153503.png', '', '126', '44', '1499094793', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('45', '1', '16', '0', '0,', '-1', '-1', '', '教师的“铁饭碗”将不保？各省...', '', '', '', '', 'admin', 'productshow.php', '', '近日有媒体报道，温州市教育局发布《温州市中小学教师资格定期注册工作实施方案（试行）》（下简称“方案”）。 该方案规定：定期注册不合格或逾期不注册的人员，不得从事教育教学工作。该方案自2017年3月8日起施行。 从2012年起，包括上海、北京在内的多个省份都开始废除教师资格“终身制”： 每...', '<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">小编说</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">今后，教师资格或许不再是“终身制”了。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">无论是近日引起轰动的温州破除教师资格“终身制”的规定，还是上海、北京多个省份的既有制度，打破教师铁饭碗——教师资格“终身制”的浪潮似乎在席卷全国。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">近日有媒体报道，温州市教育局发布《温州市中小学教师资格定期注册工作实施方案（试行）》（下简称“方案”）。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">该方案规定：定期注册不合格或逾期不注册的人员，不得从事教育教学工作。该方案自</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">2017</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">年</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">3</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">月</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">8</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">日起施行。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">从</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">2012</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">年起，包括上海、北京在内的多个省份都开始废除教师资格“终身制”：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">每五年为一个注册周期，定期注册不合格或逾期不注册的人员，不得从事教育教学工作。中小学教师只有连续注册五次，才可免注册。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">为何要废除教师终身制？</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">任何职业都有其专有的特殊性，这种特殊性决定了其应有入职门槛和退出机制，教师职业亦不例外。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">但长期以来，我国的教师进出机制并不健全：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">入职门槛很低，退出机制长期缺位，更重要的是缺乏一套明确的选拔用人的标准。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">这不仅造成了教师队伍鱼目混珠、素质参差不齐，还使那些真正有志于教师职业的人感受不到职业带来的尊严。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">据一项调查显示，我国教师把教师工作当作一项专业的仅占总调查人数的</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">3.1%</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">，教师们普遍缺少专业感和专业意识。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">一时间，似乎只要具备一定的学历，人人皆可做教师。</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:Calibri;\"></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\"></span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">特级教师王栋生曾谈到招聘教师时的一些经历：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">有的应聘者不是谈教育的理想而是先问户口能否解决，是否有分房等福利；还有个应聘者各方面条件都不错，本来约好了试讲，但等到了试讲那一天，学生们千等万等就是不见人影。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">王老师不禁感慨：这些要么功利心很重，要么连最基本的守信、诚实等做人基本素养都不具备的人，怎能奢望能成为一名优秀教师呢？</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">要做一名教师，首先需要做一个合格的公民，这是教师“学高为师，身正为范”的职业性质决定的。这理应成为教师专业考核的题中应有之义。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">教师资格由终身制变为注册制，其意义不仅在于“破”——废除了教师资格的一劳永逸，清退那些德行不合格、专业能力不达标的教师就有了政策依据；</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">更在于“立”——在原有考试科目的基础上增设综合素质、学科教学能力等科目的专业能力考核，为有志于做教师、适合做教师的人确立了行业标准。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">牢牢把住入口和出口这两大关口，依法保证教师队伍的高水准。</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:Calibri;\"></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\"></span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">教师终身制的利与弊</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">欲分析这一政策是否合理，我们不妨先来看看教师终身制的利与弊。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">教师终身制的利与弊：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"></span></span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">利：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">1</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">，能鼓励教师终身从事教育事业；</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">2</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">，有利于教师规划自己的职业生涯，能安心搞教学研究与教学实验；</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">3</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">，有利于破除教师对校长的人身依附关系，张扬教师的个性。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">弊：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">可能使一部分教师混日子，不求上进。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">取消教师终身制的利与弊：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"></span></span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">利：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">让一些混日子的教师振作起来，促使他们不断学习努力工作。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">弊：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">1</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">，不利于教师确立终身从事教育的思想，造成优秀教师的流失；</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">2</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">，容易滋长教师的短期行为，急功近利，不利于教师搞教学研究与教学实验；</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">3</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">，容易形成教师对校长的人身依附关系，而这样的教师难以培养出有个性、有创造性的学生；</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">4</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">，对教师的考核容易变为形式主义，并容易导致部分教师为应付考核而放松教学工作。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">专家和一线教师怎么看</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">一线教师观点：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">作为一名教师，我坚决支持打破教师资格终身制，打破教师铁饭碗。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">因为从教以来，我常常发现有的教师根本就不合格，甚至可以说某些人本来就不该做教师。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">有的教师只能抱着教学参考书和教案集之类的东西照本宣科</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">,</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">让学生照抄所谓的“范文”就算写作文；</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">有的教师甚至弄不懂自己教的小学数学</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">,</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">干脆就不给学生讲；有的教师根本就不懂得如何与学生沟通</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">,</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">不是体罚就是放任；</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">有的教师文凭要么是考场作弊或找枪手混来的</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">,</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">要么就是买的假货；有的教师长年不上班照拿工资</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">,</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">花小钱另找他人代课；有的公然向学生索要财物要挟家长</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">,</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">贪得无厌……</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">不客气地说</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">,</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">在所谓的正式教师里</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">,</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">“假冒伪劣”也不少。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">专家观点：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">“终身制”，在公众的认知思维下，基本上等同于“铁饭碗”。从历史沿革看，它也是流动匮乏的传统用人机制下的产物。时至今日，它与现实需求的脱节，已不言而喻。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">教师资格“终身制”，也是如此。在一劳永逸的“一考定终身”的机制下，教师身份固化，知识更新、素养提升缺乏动力，难免生出“职业倦怠症”，观念僵滞，惰性滋长；</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">行业换血能力缺乏，人才换代慢，教育方式也僵化，教改或也遭遇内生阻力。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">实质上，在教育领域打破“终身制”，早就不乏渐进的步骤。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">在教师法中，曾明确规定：将逐步实行教师聘任制，建立契约式的用人制度，引入竞争择优，完善激励约束，避免论资排辈，增强教师的流动性，实现用人机制弹性化。而定期更新资格认证，其实是对此改革举措的延续和深化。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">专家建议：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">熊丙奇</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:Calibri;\">&nbsp;</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">教育学者，</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\">21</span></span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">世纪教育研究院副院长</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">废除教师“终身制”，还应该保留“终身教职”</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">近日，废除教师资格终身制成为一个热点话题。上海、北京两地都已表示，从今年开始，中小学教师资格在首次注册后将不再是终身制，有可能改为每五年注册一次。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">对此，秋风先生昨日在南方都市报撰文指出，“这种做法既不妥当，也不可行”，其理由是不宜把企业的人员管理机制引入学校。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">笔者赞成秋风先生对于学校和企业不同性质的分析，但是，却并不认为教师就不能考核、评价，必须“终身制”。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">在美国，对于达到规定条件的中小学教师，有“终身教职”，聘任其的学校，不得随意解聘，这种“终身教职”制度，保障教师有一份稳定的工作，同时避免教育自主权受到其他非教学因素的干扰。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">但获得“终身教职”是要满足比较严格的聘任条件的，在获得“终身教职”之前，教师还将面临严格的考核和淘汰。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">而由于“终身教职”的遴选很慎重，一般获得“终身教职”者，经过此前严格的考核、筛选，已经在职业能力、操守方面得到认可，即便没有考核的压力，其对教育的兴趣、热爱，会让他在终身教职岗位上有不错的表现。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">换言之，对于“终身教职”者，驱动力不是来自外部的考核压力，而是来自自己的职业兴趣和职业理想。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">我国教师管理的问题在于：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">所有教师，不管其是否达到相应的聘任条件，进入教师队伍后，就很难退出，基本上就是“终身教职”，这种制度安排，必然会导致一些并没有职业理想、兴趣者，难以胜任教师岗位的要求。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">这也是社会舆论呼吁打破教师终身制的原因。但现在打破“铁饭碗”，又出现新问题，即走到另一个极端，所有教师，都取消“终身”。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">但是完全围绕考核指标转，教师也难以全身心做自己感兴趣的学术，以及投入到教育教学中。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">所以，废除教师终身制，还应该保留“终身教职”。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">而分析国外的“终身教职”制度，通常有如下两个制度做支撑：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">其一，教师同行评价制度，对教师的考核、评价，不是由行政机构进行，而是由教师委员会实施。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">这避免行政因素干扰教师考核、评价，教师同行会设定明晰的教育标准，考察教师的教育水平和贡献。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">我国当前对教师实行的考核，基本上就由行政部门组织，全采用功利性的行政指标，比如，对中小学教师的考核，就有班级平均分数、升学率、学生获奖情况和本人获奖情况。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">考核的结果是，教育日益功利，偏离教育本质，对于这样的考核，大家当然反对。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">其二，年薪制，教师的年薪是事先约定的。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">不像我国，还把教师的收入分为基本工资和绩效工作，绩效工作视考核、评定情况发放，这势必会出现考核者以考核之名干涉教师教育的问题，也会引导教师只关注考核的指标。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-family:Calibri;\"><span style=\"box-sizing:border-box;font-size:small;font-family:微软雅黑, Arial, Helvetica, sans-serif !important;\"><span style=\"box-sizing:border-box;font-size:14px !important;\"></span><o:p style=\"box-sizing:border-box;\"></o:p></span></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">我国在废除教师“终身制”试点中，有必要借鉴国外管理教师、发展教师的经验：</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">如果废除“终身制”而不设立“终身教职”，在教师考核、评价中，依旧采取行政管理和评价方式，并把考核的结果直接与当年的收入挂钩，那么，废除终身制，很难促进教师队伍素质的提高，倒可能进一步加剧教育行政化和功利化的问题。</span><span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><o:p style=\"box-sizing:border-box;\"></o:p></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span lang=\"EN-US\" style=\"box-sizing:border-box;font-size:14px !important;\"><span style=\"box-sizing:border-box;font-size:small;font-family:Calibri;\"></span></span>\r\n</p>\r\n<span style=\"box-sizing:border-box;font-size:small;font-family:宋体;color:#666666;white-space:normal;background-color:#FFFFFF;\"></span><span style=\"color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\"></span>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;color:#666666;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;margin:0cm 0cm 0pt;\">\r\n	<span style=\"box-sizing:border-box;font-size:small;\"><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">——摘自熊丙奇的新浪博客</span></span>\r\n</p>\r\n<strong></strong>', 'uploads/image/20170704/1499157609.png', '', '190', '45', '1499096347', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('46', '1', '16', '0', '0,', '-1', '-1', '', '《2017年教育信息化工作要点》', '', '', '', '', 'admin', 'productwork.php', '', '教育部日前发布《2017年教育信息化工作要点》，核心目标是基本实现具备条件的学校互联网全覆盖，多媒体教室占普通教室比例达到80%，基本形成国家教育资源公共服务体系框架。 《要点》强调，要完善教育信息化基础环境建设，加快推进中小学“宽带网络校校通”。结合精准扶贫、宽带中国和贫困...', '<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">全国政协十二届五次会议提案0001号题目是《关于将学前三年教育纳入义务教育的提案》(以下简称《提案》)，第一提案人是全国政协委员、中央财经大学校长王广谦。 该提案指出，与九年义务教育相比，学前教育仍是教育体系中的薄弱环节。学前教育的投资少、资源总量不足、师资短缺、办园水平参差不起、“入园难、入园贵”问题突出。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">为此，提案建议，在九年义务教育已经实现的基础上，将三年学前教育纳入义务教育范畴，统一规划实施;建立以财政资金为主、社会广泛参与的资金支持体系；鼓励和支持有条件的企事业单位举办公立幼儿园，国家按核定的生均定额拨付财政资金；当地政府应履行好学前三年义务教育的职责，对不能进入单位幼儿园的辖区居民需求予以保障;支持引导民间资本进入学前教育领域；尽快制定《学前教育法》等。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">人大代表李光宇：建议高考取消英语科目</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">现今大量学生反映，除了上课学习英语、课下复习和作业以外，许多家长都为孩子报名了英语补习班。课外补习占据了学生原本就有限的课外活动、休闲娱乐时间，不仅使学生感到负担沉重，甚至也影响了睡眠和休息。上海儿童发展研究中心的调查显示，只有17.2%的小学生、19.1%的初中生达到了标准的睡眠时间；来自深圳的调查显示，超过42%的深圳中小学生处于睡眠不足的状态。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">“如果按照每天8个小时的学习时间来计算，在一个孩子最美好的10年时光里，竟然将近五分之一（18.13%）的时间都花在了英语学习上。”全国人大代表、中国宇华教育集团董事局主席李光宇建议高考取消英语科目，把中小学生的英语必修课改为选修课。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">据教育部最新数据显示，中国孩子一年为英语必修课要消耗掉1637.8亿元，中国人每年学英语消耗掉的钱至少能投资0.8个三峡、发射204个神舟航天飞船。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">学校教育时间过长 中学阶段应减两年</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">3月6日上午，全国政协委员、中国工程院院士石碧拟提交提案，建议义务教育加高中阶段学制应减少两年，硕士、博士研究生阶段也减少两年。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">“如此，我觉得对学生、家庭、社会都是有好处的。”“我带过很多博士研究生，毕业后一般都29岁、30岁了，这个年龄太大了。”</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">现行学制有什么不好？</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">石碧举例说，过长学制首先对个人人生规划有影响。一般人七岁读小学，九年义务教育、高中三年、本科四年，大学毕业就23岁了。如果继续读研究生，硕士、博士各3年，博士毕业都已29岁。无论男女，近30岁才开始工作，家庭、育儿的事情又接踵而至，事业开始阶段，就无法投入全副精力。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">其二，受教育时间成本太高，随之而来的是经济成本提高。“六年研究生，基本上每年要净支出5万元，六年下来就是30万元。一些城市家庭的学生还能应付，对一些农村家庭学生来说，上不起。”石碧还特别解释，每年5万元支出算上了研究生的补助、收入等，“否则花费更大”。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">第三，也是非常重要的一点，过长的学校教育时间加大了社会的老龄化压力。如果能早点让学生毕业、就业，就增加了劳动者的数量，进而缓解了老龄化压力。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">设本科生导师 ，建议落实弹性学制</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">近年来，国内一些高校通过扩招等举措，试图构建有利于人人成才的本科人才培养体系，并取得一定的效果。然而，当下大学生仍面临创新能力不强、学习兴趣缺乏的困境，学习动机呈现出“工具化”和“外在化”。 对此，全国政协常委、农工党中央副主席、上海交通大学副校长蔡威拟在两会期间递交一份题为《关于建立以兴趣为导向创新人才培养体系的建议》的提案，建议激发学生参与科研活动的积极性，设置本科生导师制，加强教师对学生兴趣的个性化指导。此外，建议落实弹性学制，尊重学生个体发展的差异性。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">“仅靠外部动机的推动与诱导不培养学生的兴趣等内部动机，创新人才培养将是一句空话。”蔡威在提案中提出，创新离不开兴趣，创新人才培养需要重视、尊重和培养学习的兴趣，促使兴趣、创造、自信心、成就感、创造成果之间形成正反馈。通过激发学生兴趣使学生能够去主动自发地学习，诱发学生的学习兴趣，激发求知欲和好奇心。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">关注中小学校外培训机构规范管理</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">新学期伊始，不少学校周围的课外辅导班又开始升温。全国政协委员、华中师范大学党委书记马敏在接受记者采访时表示，今年的两会，他带来了关于加强中小学校外培训机构规范管理的提案。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">马敏委员介绍，近年来，为切实减轻学生课业负担，政府采取了全面禁止有偿家教等系列举措并取得了一定的成效。然而，由于学生及家长对教育培训需求呈多样化、个性化发展，巨大的市场需求也使得课外培训机构呈井喷之势。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">他认为，众多校外教育机构的建立，极大地满足了社会对优质教育的需求，行业前景虽好，但也带来了学生人身安全存在隐患，教学质量鱼目混珠、教书和育人严重脱离、对校内教育产生负面影响等问题，亟待规范。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">在调研中马敏发现，当前中小学校外培训机构存在不少问题，一是种类众多，质量良萎不齐，一些补习机构为追求利益虚假宣传招生，无证校外培训机构依然存在；二是课外辅导机构以提升学生学习成绩为幌子，采取题海战术，加重了学生课外负担；三是课外辅导机构与在职教师抱团，有偿家教出现了新的存在形式，严重损害了教育公平。</span><br style=\"box-sizing:border-box;color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<span style=\"color:#333333;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">对如何有效遏制课外辅导机构恣意生长，切实减轻学生和家庭的负担，马敏委员提出，要加强监督管理，坚决取缔在校教师变相办班现象；严厉打击未注册、未申报的不具备办学条件的补习班；建议教育管理部门结合实际组建正规、合格的培训机构；增设校内特长班、兴趣班，满足校内学生需求。同时还要加强对家长的培训和引导，破除跟风、攀比、分数为王的教育观念误区，科学处理应试教育与素质教育的关系。</span><strong></strong>', 'uploads/image/20170704/1499151486.png', '', '142', '46', '1499096698', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('47', '1', '19', '0', '0,', '-1', '-1', '', '头部图片', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499132744.jpg', '', '125', '47', '1499131197', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('48', '1', '19', '0', '0,', '-1', '-1', '', '溆浦县智慧教育平台', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499132672.jpg', '', '104', '48', '1499131390', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('49', '1', '19', '0', '0,', '-1', '-1', '', '怀化市第一人民医院艾默生模块化机房', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499134516.jpg', '', '99', '49', '1499131428', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('50', '1', '19', '0', '0,', '-1', '-1', '', '观摩室', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499135162.jpg', '', '121', '50', '1499131466', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('51', '1', '19', '0', '0,', '-1', '-1', '', '自建的机房', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499138189.jpg', '', '73', '51', '1499131497', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('52', '1', '19', '0', '0,', '-1', '-1', '', '精品录播教室', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499132568.jpg', '', '179', '52', '1499131527', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('53', '1', '15', '0', '0,', '-1', '-1', '', '头部图片', '', '', '', '', 'admin', '', '', '', '', '', '', '119', '53', '1499137722', 'true', 'true', '1499137934');
INSERT INTO `pmw_infolist` VALUES ('54', '1', '15', '0', '0,', '-1', '-1', '', '头部图片', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499140837.jpg', '', '95', '54', '1499137936', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('55', '1', '20', '15', '0,15,', '-1', '-1', '', '内容', '', '', '', '', 'admin', '', '', '', '<p>\r\n	&nbsp;2015年10月湖南奥昇信息技术有限公司成立，注册资金5000万元。公司专注于教育、医疗卫生等领域的软硬件开发、生产、销售、运营服务及相关大数据开发应用，为客户提供“软件+硬件+运营服务+资金”的专业综合性解决方案。<br />\r\n2016年6月，在长沙市天心区湘府西路（省政府南门斜对面）设立长沙研发中心，投资2000万元，可容纳200名研发人员，强助研发力量。\r\n</p>\r\n<p>\r\n	目前，公司已拥有几十项相关软件著作权，现又与多所高校及企事业单位形成产、学、研深度合作模式，助力创新研发生产、实践创新运营服务，旨在为教育、医疗卫生等领域提供一流的产品和服务。\r\n</p>', '', '', '62', '55', '1499139042', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('56', '1', '27', '0', '0,', '-1', '-1', '', '头部图片', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499143453.jpg', '', '65', '56', '1499139427', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('57', '1', '27', '0', '0,', '-1', '-1', '', '前言', '', '', '', '', 'admin', '', '', '', '湖南奥昇信息技术有限公司专注于教育、医疗卫生等领域的软硬件开发、生产、销售、运营服务及相关大数据开发应用，为客户提供“软件+硬件+运营服务+资金”的专业综合性解决方案。 目前，公司已拥有几十项相关软件著作权，现又与多所高校及企事业单位形成产、学、研深度合作模式，助力创新研发生产、实践创新运营服务，旨在为教育、医疗卫生等领域提供一流的产品和服务。', '', '', '200', '57', '1499140261', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('58', '1', '27', '0', '0,', '-1', '-1', '', '软件研发部经理/高级软件工程师', '', '', '', '', 'admin', '', '不限', '', '1、5年以上开发经验、3年以上带团队经验、曾任研发部部门经理优先； 2、3年以上监控、流媒体行业经验，有流媒体或者监控成功项目优先； 3、擅长软件架构，系统分析； 4、清楚项目管理流程，具备多个项目全线参与的经验； 5、理解软件行业产品、具备产品管理基础理念，懂得产品分析，产品规划； 6、具备较强的创新能力、沟通能力、洞察能力、抗压能力； 7、具备技术人力管理能力，有丰富的面试软件开发人员经验，擅长人力分配； 8、在工作中以身作责，能树立威信，能带动士气。', '', '', '59', '58', '1499140658', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('59', '1', '27', '0', '0,', '-1', '-1', '', '互联网软件开发工程师', '', '', '', '', 'admin', '', '不限', '', '1、负责公司内部信息系统的搭建与维护，解决硬件、网络、软件与管理等的综合问题； 2、负责电子商务平台的开发、搭建与维护，确保各项目的顺利实施及安全与稳定地运行。', '', '', '146', '59', '1499140712', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('60', '1', '27', '0', '0,', '-1', '-1', '', '高级软件工程师(Java)', '', '', '', '', 'admin', '', '截至2015-10-1', '', '1）承担商业产品业务系统功能模块的设计开发工作 ； 2）开展Java相关技术的调研工作 ； 3）采用敏捷的软件流程方法推进项目实施； 4）承担商业产品业务系统功能模块的设计开发工作 ； 5）开展Java相关技术的调研工作 ； 6）采用敏捷的软件流程方法推进项目实施。', '', '', '90', '60', '1499140744', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('61', '1', '27', '0', '0,', '-1', '-1', '', '项目经理（数字教育-三通两平台）', '', '', '', '', 'admin', '', '长期', '', '1、负责项目施工期间与客户的沟通协调，建立良好的客户关系。 2、负责项目团队的建设和日常管理工作；包括制定计划，组织带领项目团队完成工作目标。 3、负责项目技术交流，现场考察及方案制作。 4、根据方案文件指导监督工程实施。 5、负责项目实施计划制定、进度控制、成本控制、质量控制，确保项目实施在时间和成本范围内满足客户需求。 6、对客户进行系统使用和维护的现场培训。 7、负责管理和执行项目实施，以及项目验收，确保项目按计划完成并通过客户验收。 8、负责合作伙伴及第三方的沟通协调、组织管理、实施管控等工作。 9、擅长客户协调、需求分析、项目计划的分析撰写及项目的进度掌控。 10、负责指导、处理、协调和解决项目中出现的技术和管理问题，保证项目的正常进行。', '', '', '114', '61', '1499140778', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('62', '1', '27', '0', '0,', '-1', '-1', '', '项目经理（数字医疗方向）', '', '', '', '', 'admin', '', '不限', '', '1、负责项目施工期间与客户的沟通协调，建立良好的客户关系。 2、负责项目团队的建设和日常管理工作；包括制定计划，组织带领项目团队完成工作目标。 3、负责项目技术交流，现场考察及方案制作。 4、根据方案文件指导监督工程实施。 5、负责项目实施计划制定、进度控制、成本控制、质量控制，确保项目实施在时间和成本范围内满足客户需求。 6、对客户进行系统使用和维护的现场培训。 7、负责管理和执行项目实施，以及项目验收，确保项目按计划完成并通过客户验收。 8、负责合作伙伴及第三方的沟通协调、组织管理、实施管控等工作。 9、擅长客户协调、需求分析、项目计划的分析撰写及项目的进度掌控。 10、负责指导、处理、协调和解决项目中出现的技术和管理问题，保证项目的正常进行。', '', '', '109', '62', '1499140813', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('63', '1', '27', '0', '0,', '-1', '-1', '', 'IOS/Android无线研发工程师', '', '', '', '', 'admin', '', '3个月', '', '- 负责垂直类目安卓、IOS系统的软件设计，研发&nbsp; - 快速进行Demo研发&nbsp; - 依据项目进度与需求，能按时完成所需功能开发', '', '', '133', '63', '1499140848', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('64', '1', '27', '0', '0,', '-1', '-1', '', '销售运营专员', '', '', '', '', 'admin', '', '6个月', '', '- 客户管理项目及系统功能推广，指导销售录入和管理客户信息数据&nbsp; - 监控和维护CRM，监测数据异常并设置系统规则、参数，如行业，政策，销售范围等&nbsp; - 通过数据分析监控客户开发情况，有重点分析并寻找客户开发规则及方法优化方案&nbsp; - 根据销售、服务等业务需求处理数据，提供有效报告&nbsp; - 监督销售员客户销售漏斗及拜访覆盖情况，及时反馈其各级主管并推动工作&nbsp; - 合同流程管理及监控，对业务流进行分析和优化，如：合同审批流分析及优化&nbsp; - 新产品流程、系统、产品线准备；老产品流程更新&nbsp; - 协助部门管理相关工作，如销售人员KPI制定及计算', '', '', '143', '64', '1499140882', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('65', '1', '28', '0', '0,', '-1', '-1', '', '头部图片', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499152428.jpg', '', '198', '65', '1499149012', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('66', '1', '25', '15', '0,15,', '-1', '-1', '', '合作伙伴', '', '', '', '', 'admin', '', '', '', '', 'uploads/image/20170704/1499182723.jpg', '', '103', '66', '1499175782', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('67', '1', '23', '15', '0,15,', '-1', '-1', '', '董事长', '', '', '', '', 'admin', '', '', '', '<p class=\"MsoNormal\" style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">欢迎您访问奥昇！</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">期待您认知奥昇！</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">您的关注是我们莫大的荣幸！</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">您的需求是我们前行中最激情的动力！</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">您的支持让我们拥有更加灿烂的未来！</span><span style=\"box-sizing:border-box;font-size:14px !important;\"></span>\r\n</p>\r\n<p class=\"MsoNormal\" style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">感恩有您</span><span style=\"box-sizing:border-box;font-size:14px !important;\">&nbsp;</span><span style=\"box-sizing:border-box;font-size:14px !important;font-family:宋体;\">一路同行！</span>\r\n</p>', 'uploads/image/20170704/1499184674.png', '', '64', '67', '1499177564', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('68', '1', '22', '15', '0,15,', '-1', '-1', '', '文化', '', '', '', '', 'admin', '', '', '', '<p style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	经营理念：用服务感动客户，用真诚团结员工，与同行协作共赢，用行动回报社会！\r\n</p>\r\n<p style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	管理理念：重质量求生存，重效率求效益，重细节定成败！\r\n</p>\r\n<p style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	发展理念：唯才是用！创新驱动！\r\n</p>\r\n<p style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	公司精神：科技为本，追求卓越！\r\n</p>\r\n<p style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	团队精神：协作，分享，共赢，担当，忠诚！\r\n</p>\r\n<p style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	企业价值观：诚信！善良！感恩！\r\n</p>\r\n<p style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	质量方针：顾客满意至上！\r\n</p>\r\n<p style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	公司目标：立足湖南，辐射全国！为教育，医疗卫生等领域提供一流的产品和服务！\r\n</p>', 'uploads/image/20170704/1499185085.jpg', '', '136', '68', '1499177949', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('69', '1', '21', '15', '0,15,', '-1', '-1', '', '荣誉', '', '', '', '', 'admin', '', '', '', '<h3 style=\"box-sizing:border-box;font-size:36px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;text-align:center;background-color:#FFFFFF;\">\r\n	奥昇所获荣誉资质\r\n</h3>\r\n<h3 style=\"box-sizing:border-box;font-size:24px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">\r\n	奥昇 智慧教育-三通两平台主站系统\r\n</h3>\r\n<h3 style=\"box-sizing:border-box;font-size:24px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">\r\n	网络学习空间人人通\r\n</h3>\r\n<h3 style=\"box-sizing:border-box;font-size:24px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">\r\n	智慧教育-家校互联网软件（APP-Andriod）\r\n</h3>\r\n<h3 style=\"box-sizing:border-box;font-size:24px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">\r\n	智慧教育-家校互联网软件（APP-IOS）\r\n</h3>\r\n<h3 style=\"box-sizing:border-box;font-size:24px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">\r\n	智慧教育-教育资源中心系统\r\n</h3>\r\n<h3 style=\"box-sizing:border-box;font-size:24px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">\r\n	智慧教育-授课软件\r\n</h3>\r\n<h3 style=\"box-sizing:border-box;font-size:24px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">\r\n	智慧教育-数字校园管理平台\r\n</h3>\r\n<h3 style=\"box-sizing:border-box;font-size:24px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">\r\n	智慧教育-同步助手软件（APP-Andriod）\r\n</h3>\r\n<h3 style=\"box-sizing:border-box;font-size:24px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">\r\n	智慧教育-云盘管理系统 （APP-IOS）\r\n</h3>\r\n<h3 style=\"box-sizing:border-box;font-size:24px;margin-top:20px;margin-bottom:10px;font-family:微软雅黑, Arial, Helvetica, sans-serif;white-space:normal;background-color:#FFFFFF;\">\r\n	智慧演示系统\r\n</h3>', 'uploads/image/20170704/1499185105.jpg', '', '91', '69', '1499178153', 'true', '', '0');
INSERT INTO `pmw_infolist` VALUES ('70', '1', '20', '15', '0,15,', '-1', '-1', '', '简介', '', '', '', '', 'admin', '', '', '', '<span style=\"box-sizing:border-box;font-size:14px;font-family:&quot;white-space:normal;background-color:#FFFFFF;\">2015年10月湖南奥昇信息技术有限公司成立，注册资金5000万元。公司专注于教育、医疗卫生等领域的软硬件开发、生产、销售、运营服务及相关大数据开发应用，为客户提供“软件+硬件+运营服务+资金”的专业综合性解决方案。</span><br style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\" />\r\n<p style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span ?=\"\" style=\"box-sizing: border-box; font-size: 14px;\">2016年6月，在长沙市天心区湘府西路（省政府南门斜对面）设立长沙研发中心，投资2000万元，可容纳200名研发人员，强助研发力量。</span><span style=\"box-sizing:border-box;font-size:14px;\"></span>\r\n</p>\r\n<p style=\"box-sizing:border-box;font-family:微软雅黑, Arial, Helvetica, sans-serif;font-size:medium;white-space:normal;background-color:#FFFFFF;\">\r\n	<span style=\"box-sizing:border-box;font-size:14px;font-family:&quot;\">目前，公司已拥有几十项相关软件著作权，现又与多所高校及企事业单位形成产、学、研深度合作模式，助力创新研发生产、实践创新运营服务，旨在为教育、医疗卫生等领域提供一流的产品和服务。</span>\r\n</p>', '', '', '75', '70', '1499178360', 'true', '', '0');

-- ----------------------------
-- Table structure for pmw_infosrc
-- ----------------------------
DROP TABLE IF EXISTS `pmw_infosrc`;
CREATE TABLE `pmw_infosrc` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '来源id',
  `srcname` varchar(30) NOT NULL COMMENT '来源名称',
  `linkurl` varchar(80) NOT NULL COMMENT '来源地址',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '来源排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_infosrc
-- ----------------------------

-- ----------------------------
-- Table structure for pmw_job
-- ----------------------------
DROP TABLE IF EXISTS `pmw_job`;
CREATE TABLE `pmw_job` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '招聘信息id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `title` varchar(50) NOT NULL COMMENT '位岗名称',
  `jobplace` varchar(80) NOT NULL COMMENT '工作地点',
  `jobdescription` varchar(50) NOT NULL COMMENT '工作性质',
  `employ` smallint(5) unsigned NOT NULL COMMENT '招聘人数',
  `jobsex` enum('0','1','2') NOT NULL COMMENT '性别要求',
  `treatment` varchar(50) NOT NULL COMMENT '工资待遇',
  `usefullife` varchar(50) NOT NULL COMMENT '有效期',
  `experience` varchar(50) NOT NULL COMMENT '工作经验',
  `education` varchar(80) NOT NULL COMMENT '学历要求',
  `joblang` varchar(50) NOT NULL COMMENT '言语能力',
  `workdesc` mediumtext NOT NULL COMMENT '职位描述',
  `content` mediumtext NOT NULL COMMENT '职位要求',
  `orderid` mediumint(8) unsigned NOT NULL COMMENT '排列排序',
  `posttime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_job
-- ----------------------------
INSERT INTO `pmw_job` VALUES ('1', '1', '销售运营专员', '北京', '市场及销售', '1', '0', '面议', '6个月', '2年以上', '本科', '较好', '- 客户管理项目及系统功能推广，指导销售录入和管理客户信息数据&nbsp;<br />\r\n- 监控和维护CRM，监测数据异常并设置系统规则、参数，如行业，政策，销售范围等&nbsp;<br />\r\n- 通过数据分析监控客户开发情况，有重点分析并寻找客户开发规则及方法优化方案&nbsp;<br />\r\n- 根据销售、服务等业务需求处理数据，提供有效报告&nbsp;<br />\r\n- 监督销售员客户销售漏斗及拜访覆盖情况，及时反馈其各级主管并推动工作&nbsp;<br />\r\n- 合同流程管理及监控，对业务流进行分析和优化，如：合同审批流分析及优化&nbsp;<br />\r\n- 新产品流程、系统、产品线准备；老产品流程更新&nbsp;<br />\r\n- 协助部门管理相关工作，如销售人员KPI制定及计算&nbsp;<br />', '<p>\r\n	- 本科以上学历，统计学、计算机或商业管理等相关专业 <br />\r\n- 一年以上互联网企业工作经验 <br />\r\n- 极强的数据分析和逻辑能力 <br />\r\n- 有优秀的统计学知识背景，并对商业运作有自身的理解 <br />\r\n- 熟悉excel、spss的使用及powerpoint的制作 <br />\r\n- 对数据库有一定了解，熟悉基本的使用操作 <br />\r\n- 学习能力强，责任心强，具有优秀的沟通表达和理解能力，团队合作能力 <br />\r\n- 思维活跃，有创新精神，能承受工作压力\r\n</p>', '1', '1326770483', 'true');
INSERT INTO `pmw_job` VALUES ('2', '1', 'IOS/Android无线研发工程师', '上海', '技术', '0', '0', '面议', '3个月', '2年以上', '本科以以上学历', '较好', '- 负责垂直类目安卓、IOS系统的软件设计，研发&nbsp;<br />\r\n- 快速进行Demo研发&nbsp;<br />\r\n- 依据项目进度与需求，能按时完成所需功能开发&nbsp;<br />', '<p>\r\n	- 本科或本科以上学历,计算机相关专业 <br />\r\n- 精通C/C++，熟悉Objective-C，有独立分析和解决问题的能力 <br />\r\n- 一年以上iPhone平台应用程序开发经验，有志于在手机平台方向发展，对技术有热忱 <br />\r\n- 熟悉手机应用软件的设计和开发；同时具有多种手机平台，IOS、android经验者优先 <br />\r\n- 学习能力强，拥有优秀的逻辑思维能力 <br />\r\n- 自我管理能力强，有良好的时间意识 <br />\r\n- 有较好的沟通交流能力\r\n</p>', '2', '1326770537', 'true');
INSERT INTO `pmw_job` VALUES ('3', '1', '数据中心主管', '北京', '管理支持', '1', '0', '面议', '1个月', '5年以上管理经验', '博士', '较强', '- 部门日常事务的协助与支持，活动组织、会务安排、会议记录等&nbsp;<br />\r\n- 整理周报及相关技术文档&nbsp;<br />\r\n- 协助负责人对项目进行技术评估及进度跟进&nbsp;<br />\r\n- 部门各项规章制度监督与执行&nbsp;<br />\r\n- 经理及项目负责人交办其他任务的督办、协调及落实&nbsp;<br />', '<p>\r\n	- 大学本科以上，具有企业管理、市场营销、电子商务等专业知识 <br />\r\n- 一年以上电话销售相关工作经验专业技能 <br />\r\n- 认同公司企业文化，能够承受工作压力，有优秀的销售能力 <br />\r\n- 对客户信息采集有独到的见解 <br />\r\n- 具有优秀的组织和协调能力 <br />\r\n- 具有优秀的演讲和培训能力 <br />\r\n- 有学习意识和团队意识 <br />\r\n- 良好的服务意识、耐心和责任心，工作积极主动 <br />\r\n- 良好的语言表达能力和人际沟通能力\r\n</p>', '3', '1326770577', 'true');
INSERT INTO `pmw_job` VALUES ('4', '1', '软件配置管理工程师', '北京', '技术', '3', '0', '面议', '长期', '2年以上', '本科', '较好', '（至少包含下列一项）&nbsp;<br />\r\n- 部门版本控制系统的维护&nbsp;<br />\r\n- 软件的版本控制&nbsp;<br />\r\n- 版本控制，软件构建工具的开发<br />', '<p>\r\n	- 熟悉CVS,SVN；<br />\r\n- 熟悉软件配置管理、产品数据管理的相关理论； <br />\r\n- 熟悉软件开发过程； <br />\r\n- 熟悉Linux系统基础操作和命令，及Linux环境下版本构建，软件部署； <br />\r\n- 有Python,Perl, ,Shell其中之一脚本语言编程经验者优先考虑； <br />\r\n- 有构建持续集成经验者优先。\r\n</p>', '4', '1326770633', 'true');
INSERT INTO `pmw_job` VALUES ('5', '1', '高级软件工程师(Java)', '上海', '技术', '6', '0', '面议', '长期', '2年以上开发经验', '不限制', '英语四级', '- 承担商业产品业务系统功能模块的设计开发工作&nbsp;<br />\r\n- 开展Java相关技术的调研工作&nbsp;<br />\r\n- 采用敏捷的软件流程方法推进项目实施&nbsp;<br />', '<p>\r\n	- 深刻理解OOA/OOD/OOP编程思想,掌握多种常用的设计模式 <br />\r\n- 熟悉现有主流的java框架(Spring、Struts、Spring mvc、Hibernate、Ibatis、Freemarker等)的基本原理，具备基于之上研发能力<br />\r\n- 关注新技术，了解Groovy，Jruby，熟悉ROR、COC、RESTful编程风格 <br />\r\n- 热爱软件开发，编码基本功扎实，追求完美，有上进心和很强的学习能力 <br />\r\n- 有丰富的web架构设计经验，对web站点的性能调优、站点扩展和内容集成有深刻的理解 <br />\r\n- 熟悉cache原理及主流的cache框架，有集群系统的开发经验优先考虑 <br />\r\n- 有软件项目管理、企业知识管理、研发流程体系管理经验者优先考虑 <br />\r\n- 有互联网互动产品设计开发经验、企业搜索经验者优先考虑 <br />\r\n- 此职位需要三年以上的软件产品研发经验\r\n</p>', '5', '1326770671', 'true');

-- ----------------------------
-- Table structure for pmw_lnk
-- ----------------------------
DROP TABLE IF EXISTS `pmw_lnk`;
CREATE TABLE `pmw_lnk` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '快捷方式id',
  `lnkname` varchar(30) NOT NULL COMMENT '快捷方式名称',
  `lnklink` varchar(50) NOT NULL COMMENT '跳转链接',
  `lnkico` varchar(50) NOT NULL COMMENT 'ico地址',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_lnk
-- ----------------------------
INSERT INTO `pmw_lnk` VALUES ('1', '栏目管理', 'infoclass.php', 'templates/images/lnkBg01.png', '1');
INSERT INTO `pmw_lnk` VALUES ('2', '列表管理', 'infolist.php', 'templates/images/lnkBg02.png', '2');
INSERT INTO `pmw_lnk` VALUES ('3', '图片管理', 'infoimg.php', 'templates/images/lnkBg03.png', '3');
INSERT INTO `pmw_lnk` VALUES ('4', '商品管理', 'goods.php', 'templates/images/lnkBg04.png', '4');

-- ----------------------------
-- Table structure for pmw_maintype
-- ----------------------------
DROP TABLE IF EXISTS `pmw_maintype`;
CREATE TABLE `pmw_maintype` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '二级类别id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '类别上级id',
  `parentstr` varchar(50) NOT NULL COMMENT '类别上级id字符串',
  `classname` varchar(30) NOT NULL COMMENT '类别名称',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_maintype
-- ----------------------------

-- ----------------------------
-- Table structure for pmw_member
-- ----------------------------
DROP TABLE IF EXISTS `pmw_member`;
CREATE TABLE `pmw_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(32) NOT NULL COMMENT '用户名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `question` varchar(50) NOT NULL COMMENT '提问',
  `answer` varchar(50) NOT NULL COMMENT '回答',
  `cnname` varchar(10) NOT NULL COMMENT '姓名',
  `enname` varchar(20) NOT NULL COMMENT '英文名',
  `avatar` varchar(100) NOT NULL COMMENT '头像',
  `sex` tinyint(1) unsigned NOT NULL COMMENT '性别',
  `birthtype` tinyint(1) unsigned NOT NULL COMMENT '生日类型',
  `birth_year` varchar(10) NOT NULL DEFAULT '-1' COMMENT '生日_年',
  `birth_month` varchar(10) NOT NULL DEFAULT '-1' COMMENT '生日_月',
  `birth_day` varchar(10) NOT NULL DEFAULT '-1' COMMENT '生日_日',
  `astro` varchar(10) NOT NULL DEFAULT '-1' COMMENT '星座',
  `bloodtype` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '血型',
  `trade` varchar(10) NOT NULL DEFAULT '-1' COMMENT '行业',
  `live_prov` varchar(10) NOT NULL DEFAULT '-1' COMMENT '现居地_省',
  `live_city` varchar(10) NOT NULL DEFAULT '-1' COMMENT '现居地_市',
  `live_country` varchar(15) NOT NULL DEFAULT '-1' COMMENT '现居地_区',
  `home_prov` varchar(10) NOT NULL DEFAULT '-1' COMMENT '故乡_省',
  `home_city` varchar(10) NOT NULL DEFAULT '-1' COMMENT '故乡_市',
  `home_country` varchar(15) NOT NULL DEFAULT '-1' COMMENT '故乡_区',
  `cardtype` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '证件类型',
  `cardnum` varchar(32) NOT NULL COMMENT '证件号码',
  `intro` text NOT NULL COMMENT '个人说明',
  `email` varchar(40) NOT NULL COMMENT '电子邮件',
  `qqnum` varchar(20) NOT NULL COMMENT 'QQ号码',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `telephone` varchar(20) NOT NULL COMMENT '固定电话',
  `address_prov` varchar(10) NOT NULL DEFAULT '-1' COMMENT '通信地址_省',
  `address_city` varchar(10) NOT NULL DEFAULT '-1' COMMENT '通信地址_市',
  `address_country` varchar(15) NOT NULL DEFAULT '-1' COMMENT '通信地址_区',
  `address` varchar(100) NOT NULL COMMENT '通信地址',
  `zipcode` varchar(10) NOT NULL COMMENT '邮编',
  `enteruser` set('1') NOT NULL COMMENT '认证',
  `expval` int(10) NOT NULL COMMENT '经验值',
  `integral` int(10) unsigned NOT NULL COMMENT '积分',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `regip` varchar(20) NOT NULL COMMENT '注册IP',
  `logintime` int(10) unsigned NOT NULL COMMENT '登录时间',
  `loginip` varchar(20) NOT NULL COMMENT '登录IP',
  `qqid` varchar(32) NOT NULL COMMENT '绑定QQ',
  `weiboid` varchar(32) NOT NULL COMMENT '绑定微博',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_member
-- ----------------------------
INSERT INTO `pmw_member` VALUES ('1', 'testuser', '85f0fb9cc2792a9b87e3b3facccedc40', '6', '你猜呢', '测试账号', 'TestUser', '', '0', '0', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '--', '-1', '-1', '--', '-1', '', '', 'webmaster@phpmywind.com', '', '', '', '-1', '-1', '-1', '', '', '1', '1000', '0', '1350904403', '127.0.0.1', '1350904403', '127.0.0.1', '', '');

-- ----------------------------
-- Table structure for pmw_message
-- ----------------------------
DROP TABLE IF EXISTS `pmw_message`;
CREATE TABLE `pmw_message` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `nickname` varchar(30) NOT NULL COMMENT '昵称',
  `contact` varchar(50) NOT NULL COMMENT '联系方式',
  `content` text NOT NULL COMMENT '留言内容',
  `htop` set('true') NOT NULL COMMENT '置顶',
  `rtop` set('true') NOT NULL COMMENT '推荐',
  `ip` char(20) NOT NULL COMMENT '留言IP',
  `recont` text NOT NULL COMMENT '回复内容',
  `retime` int(10) unsigned NOT NULL COMMENT '回复时间',
  `orderid` mediumint(8) unsigned NOT NULL COMMENT '排列排序',
  `posttime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_message
-- ----------------------------
INSERT INTO `pmw_message` VALUES ('1', '1', '游客', 'QQ：10000', '站点很好很漂亮，超喜欢，赞！', '', 'true', '127.0.0.1', '感谢您的留言！', '1326770722', '1', '1326770722', 'true');

-- ----------------------------
-- Table structure for pmw_nav
-- ----------------------------
DROP TABLE IF EXISTS `pmw_nav`;
CREATE TABLE `pmw_nav` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '导航id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '导航分类',
  `parentstr` varchar(50) NOT NULL COMMENT '导航分类父id字符串',
  `classname` varchar(30) NOT NULL COMMENT '导航名称',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `relinkurl` varchar(255) NOT NULL COMMENT '重写地址',
  `picurl` varchar(100) NOT NULL COMMENT '导航图片',
  `target` varchar(30) NOT NULL COMMENT '打开方式',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '隐藏导航',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_nav
-- ----------------------------
INSERT INTO `pmw_nav` VALUES ('1', '1', '0', '0,', '主菜单', '#', '', '', '', '1', 'true');
INSERT INTO `pmw_nav` VALUES ('2', '1', '1', '0,1,', '首　页', 'index.php', 'index.html', '', '', '2', 'true');
INSERT INTO `pmw_nav` VALUES ('3', '1', '1', '0,1,', '解决方案', 'solution.php', 'about-2-1.html', '', '', '3', 'true');
INSERT INTO `pmw_nav` VALUES ('4', '1', '1', '0,1,', '新闻资讯', 'news.php', 'news-4-1.html', '', '', '4', 'true');
INSERT INTO `pmw_nav` VALUES ('5', '1', '1', '0,1,', '案例简介', 'product.php', 'product-5-1.html', '', '', '5', 'true');
INSERT INTO `pmw_nav` VALUES ('6', '1', '1', '0,1,', '关于我们', 'about.php', 'about-8-1.html', '', '', '6', 'true');
INSERT INTO `pmw_nav` VALUES ('7', '1', '1', '0.1', '加入奥昇', 'join.php', 'join-1-1.html', '', '', '7', 'true');

-- ----------------------------
-- Table structure for pmw_paymode
-- ----------------------------
DROP TABLE IF EXISTS `pmw_paymode`;
CREATE TABLE `pmw_paymode` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付方式id',
  `classname` varchar(30) NOT NULL COMMENT '支付方式名称',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_paymode
-- ----------------------------
INSERT INTO `pmw_paymode` VALUES ('1', '在线支付', '1', 'true');
INSERT INTO `pmw_paymode` VALUES ('2', '货到付款', '2', 'true');

-- ----------------------------
-- Table structure for pmw_postmode
-- ----------------------------
DROP TABLE IF EXISTS `pmw_postmode`;
CREATE TABLE `pmw_postmode` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '配送方式id',
  `classname` varchar(30) NOT NULL COMMENT '配送方式',
  `postprice` varchar(10) NOT NULL COMMENT '配送价格',
  `orderid` smallint(5) unsigned NOT NULL COMMENT '排列排序',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_postmode
-- ----------------------------
INSERT INTO `pmw_postmode` VALUES ('1', '申通', '15', '1', 'true');
INSERT INTO `pmw_postmode` VALUES ('2', '中通', '15', '2', 'true');
INSERT INTO `pmw_postmode` VALUES ('3', '圆通', '15', '3', 'true');
INSERT INTO `pmw_postmode` VALUES ('4', '顺丰', '22', '4', 'true');
INSERT INTO `pmw_postmode` VALUES ('5', 'EMS', '20', '5', 'true');

-- ----------------------------
-- Table structure for pmw_site
-- ----------------------------
DROP TABLE IF EXISTS `pmw_site`;
CREATE TABLE `pmw_site` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '站点ID',
  `sitename` varchar(30) NOT NULL COMMENT '站点名称',
  `sitekey` varchar(30) NOT NULL COMMENT '站点标识',
  `sitelang` varchar(50) NOT NULL COMMENT '站点语言包',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_site
-- ----------------------------
INSERT INTO `pmw_site` VALUES ('1', '默认站点', 'zh_CN', 'zh_CN');

-- ----------------------------
-- Table structure for pmw_soft
-- ----------------------------
DROP TABLE IF EXISTS `pmw_soft`;
CREATE TABLE `pmw_soft` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '软件信息id',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT '站点id',
  `classid` smallint(5) unsigned NOT NULL COMMENT '所属栏目id',
  `parentid` smallint(5) unsigned NOT NULL COMMENT '所属栏目上级id',
  `parentstr` varchar(80) NOT NULL COMMENT '所属栏目上级id字符串',
  `mainid` smallint(5) NOT NULL COMMENT '二级类别id',
  `mainpid` smallint(5) NOT NULL COMMENT '二级类别父id',
  `mainpstr` varchar(80) NOT NULL COMMENT '二级累呗父id字符串',
  `title` varchar(80) NOT NULL COMMENT '标题',
  `colorval` char(10) NOT NULL COMMENT '字体颜色',
  `boldval` char(10) NOT NULL COMMENT '字体加粗',
  `flag` varchar(30) NOT NULL COMMENT '属性',
  `filetype` char(4) NOT NULL COMMENT '文件类型',
  `softtype` char(10) NOT NULL COMMENT '软件类型',
  `language` char(10) NOT NULL COMMENT '界面语言',
  `accredit` char(10) NOT NULL COMMENT '授权方式',
  `softsize` varchar(10) NOT NULL COMMENT '软件大小',
  `unit` char(4) NOT NULL COMMENT '软件大小单位',
  `runos` varchar(50) NOT NULL COMMENT '运行环境',
  `website` varchar(255) NOT NULL COMMENT '官方网站',
  `demourl` varchar(255) NOT NULL COMMENT '演示地址',
  `dlurl` varchar(255) NOT NULL COMMENT '下载地址',
  `source` varchar(50) NOT NULL COMMENT '文章来源',
  `author` varchar(50) NOT NULL COMMENT '作者编辑',
  `linkurl` varchar(255) NOT NULL COMMENT '跳转链接',
  `keywords` varchar(50) NOT NULL COMMENT '关键字',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `content` mediumtext NOT NULL COMMENT '内容',
  `picurl` varchar(100) NOT NULL COMMENT '缩略图片',
  `picarr` text NOT NULL COMMENT '组图',
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击次数',
  `orderid` int(10) unsigned NOT NULL COMMENT '排列排序',
  `posttime` int(10) NOT NULL COMMENT '更新时间',
  `checkinfo` enum('true','false') NOT NULL COMMENT '审核状态',
  `delstate` set('true') NOT NULL COMMENT '删除状态',
  `deltime` int(10) unsigned NOT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_soft
-- ----------------------------
INSERT INTO `pmw_soft` VALUES ('1', '1', '11', '0', '0,', '-1', '-1', '', '腾讯QQ', '', '', '', '.exe', '国产软件', '简体中文', '免费软件', '51.3', 'MB', 'Win7/WinXP/WinNT', 'http://im.qq.com/', 'http://im.qq.com/', 'http://im.qq.com/', '', 'admin', '', 'QQ,QQ2012,腾讯QQ2012', '免费的即时通讯平台，带来更多的沟通乐趣。', '腾讯推出的即时通讯工具。支持在线聊天、视频电话、点对点断点续传文件、共享文件、网络硬盘、自定义面板、QQ邮箱等多种功能。免费的通讯平台，给您带来更多沟通乐趣。', 'templates/default/images/imgdata/qqlogo.gif', '', '132', '1', '1346030443', 'true', '', '0');
INSERT INTO `pmw_soft` VALUES ('2', '1', '11', '0', '0,', '-1', '-1', '', '掌上百度', '', '', '', '.rar', '国产软件', '简体中文', '免费软件', '2.8', 'MB', 'Win7/WinXP/WinNT', 'http://shouji.baidu.com/', 'http://shouji.baidu.com/zhangbai/indexb.html', 'http://shouji.baidu.com/zhangbai/indexb.html', '', 'admin', '', '', '掌上百度是百度公司专门为手机用户打造的一款客户端软件。', '掌上百度是百度公司专门为手机用户打造的一款客户端软件。除了强大的无线搜索功能外，还整合了百度贴吧、知道这两个最大的社区平台。即使没有电脑，你也可以轻松享用百度的产品和服务，绝对是你出门在外、上下班途中、课间休闲时的绝佳伴侣！<br />\r\n<br />\r\n掌上百度将带给你全新的手机上网的体验。界面简洁、清晰，完全免费。<br />\r\n<br />\r\n掌上百度专门为手机用户精心设计了人性化的功能，你可以直接拍照上传至贴吧及知道，用于发贴、提问，并且全过程都没有验证码的干扰。有了掌上百度，你可以不受终端限制、随时随地、轻松自如地和兴趣相投的网友讨论交流。<br />\r\n<br />\r\n掌上百度还有许多贴心实用的小功能，比如实时更新当前最新最热的关键词；根据你当前所在位置，实时更新所在城市天气；保留你的搜索历史、关键词，减少手机输入带来的不便……<br />\r\n<br />\r\n马上下载掌上百度，体验一下无“线”的乐趣吧~！', 'templates/default/images/imgdata/mobliebaidulogo.jpg', '', '241', '2', '1346033182', 'true', '', '0');

-- ----------------------------
-- Table structure for pmw_sysevent
-- ----------------------------
DROP TABLE IF EXISTS `pmw_sysevent`;
CREATE TABLE `pmw_sysevent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '信息id',
  `uname` varchar(30) NOT NULL COMMENT '用户名',
  `siteid` tinyint(1) unsigned NOT NULL COMMENT '站点id',
  `model` varchar(30) NOT NULL COMMENT '操作模块',
  `classid` int(10) unsigned NOT NULL COMMENT '栏目id',
  `action` varchar(10) NOT NULL COMMENT '执行操作',
  `posttime` int(10) NOT NULL COMMENT '操作时间',
  `ip` varchar(20) NOT NULL COMMENT '操作ip',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_sysevent
-- ----------------------------
INSERT INTO `pmw_sysevent` VALUES ('1', 'admin', '1', 'login', '0', '', '1499068074', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('2', 'admin', '1', 'web_config', '0', 'all', '1499069075', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('3', 'admin', '1', 'infoimg', '0', 'all', '1499069082', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('4', 'admin', '1', 'infoimg', '13', 'add', '1499069135', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('5', 'admin', '1', 'infoimg', '0', 'all', '1499069168', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('6', 'admin', '1', 'infoimg', '13', 'add', '1499069202', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('7', 'admin', '1', 'infoimg', '0', 'all', '1499069704', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('8', 'admin', '1', 'infoclass', '0', 'all', '1499069713', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('9', 'admin', '1', 'infoclass', '0', 'all', '1499069784', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('10', 'admin', '1', 'infolist', '0', 'all', '1499069803', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('11', 'admin', '1', 'infolist', '14', 'add', '1499069858', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('12', 'admin', '1', 'infolist', '0', 'all', '1499069864', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('13', 'admin', '1', 'infolist', '14', 'add', '1499069920', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('14', 'admin', '1', 'infolist', '0', 'all', '1499070021', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('15', 'admin', '1', 'infolist', '14', 'update', '1499070026', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('16', 'admin', '1', 'infoclass', '0', 'all', '1499071190', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('17', 'admin', '1', 'infoclass', '0', 'all', '1499071258', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('18', 'admin', '1', 'infolist', '0', 'all', '1499071278', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('19', 'admin', '1', 'infolist', '15', 'add', '1499071338', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('20', 'admin', '1', 'infolist', '0', 'all', '1499071339', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('21', 'admin', '1', 'infolist', '0', 'all', '1499071427', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('22', 'admin', '1', 'infolist', '15', 'add', '1499071427', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('23', 'admin', '1', 'infoclass', '0', 'all', '1499071767', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('24', 'admin', '1', 'infolist', '0', 'all', '1499071789', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('25', 'admin', '1', 'infolist', '0', 'all', '1499071941', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('26', 'admin', '1', 'infolist', '16', 'add', '1499071941', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('27', 'admin', '1', 'infoclass', '0', 'all', '1499072120', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('28', 'admin', '1', 'infolist', '0', 'all', '1499072123', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('29', 'admin', '1', 'infolist', '0', 'all', '1499072192', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('30', 'admin', '1', 'infolist', '16', 'add', '1499072192', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('31', 'admin', '1', 'infolist', '0', 'all', '1499072259', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('32', 'admin', '1', 'infolist', '16', 'add', '1499072259', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('33', 'admin', '1', 'infolist', '0', 'all', '1499072333', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('34', 'admin', '1', 'infolist', '16', 'add', '1499072333', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('35', 'admin', '1', 'infolist', '0', 'all', '1499072670', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('36', 'admin', '1', 'infoclass', '0', 'all', '1499072989', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('37', 'admin', '1', 'infolist', '0', 'all', '1499073032', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('38', 'admin', '1', 'infolist', '0', 'all', '1499073096', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('39', 'admin', '1', 'infolist', '17', 'add', '1499073096', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('40', 'admin', '1', 'admin', '0', 'all', '1499073910', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('41', 'admin', '1', 'web_config', '0', 'all', '1499073916', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('42', 'admin', '1', 'web_config', '0', 'all', '1499074012', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('43', 'admin', '1', 'web_config', '0', 'all', '1499074080', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('44', 'admin', '1', 'infolist', '0', 'all', '1499074241', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('45', 'admin', '1', 'infolist', '17', 'del', '1499074255', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('46', 'admin', '1', 'infolist', '0', 'all', '1499074452', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('47', 'admin', '1', 'infolist', '17', 'add', '1499074504', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('48', 'admin', '1', 'infoclass', '0', 'all', '1499074617', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('49', 'admin', '1', 'infolist', '0', 'all', '1499075225', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('50', 'admin', '1', 'infolist', '0', 'all', '1499085662', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('51', 'admin', '1', 'infoclass', '0', 'all', '1499085688', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('52', 'admin', '1', 'infoimg', '0', 'all', '1499085716', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('53', 'admin', '1', 'infolist', '0', 'all', '1499085747', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('54', 'admin', '1', 'infoclass', '0', 'all', '1499085764', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('55', 'admin', '1', 'infolist', '0', 'all', '1499085830', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('56', 'admin', '1', 'infolist', '0', 'all', '1499085939', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('57', 'admin', '1', 'infolist', '18', 'add', '1499085939', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('58', 'admin', '1', 'infoclass', '0', 'all', '1499089117', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('59', 'admin', '1', 'infolist', '0', 'all', '1499090648', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('60', 'admin', '1', 'infolist', '0', 'all', '1499090835', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('61', 'admin', '1', 'infolist', '18', 'add', '1499090835', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('62', 'admin', '1', 'infolist', '0', 'all', '1499090949', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('63', 'admin', '1', 'infolist', '18', 'add', '1499090949', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('64', 'admin', '1', 'infoclass', '0', 'all', '1499092985', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('65', 'admin', '1', 'infolist', '0', 'all', '1499092998', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('66', 'admin', '1', 'infolist', '0', 'all', '1499094042', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('67', 'admin', '1', 'infolist', '16', 'add', '1499094042', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('68', 'admin', '1', 'infolist', '0', 'all', '1499094793', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('69', 'admin', '1', 'infolist', '0', 'all', '1499096262', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('70', 'admin', '1', 'infolist', '16', 'add', '1499096262', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('71', 'admin', '1', 'infolist', '0', 'all', '1499096347', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('72', 'admin', '1', 'infolist', '0', 'all', '1499096661', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('73', 'admin', '1', 'infolist', '16', 'add', '1499096661', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('74', 'admin', '1', 'infolist', '0', 'all', '1499096753', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('75', 'admin', '1', 'infolist', '16', 'add', '1499096753', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('76', 'admin', '1', 'infolist', '0', 'all', '1499096848', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('77', 'admin', '1', 'infolist', '0', 'all', '1499096911', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('78', 'admin', '1', 'infolist', '16', 'update', '1499096935', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('79', 'admin', '1', 'infolist', '0', 'all', '1499130713', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('80', 'admin', '1', 'infoimg', '0', 'all', '1499130934', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('81', 'admin', '1', 'infoclass', '0', 'all', '1499131147', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('82', 'admin', '1', 'infolist', '0', 'all', '1499131191', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('83', 'admin', '1', 'infolist', '19', 'add', '1499131242', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('84', 'admin', '1', 'infolist', '0', 'all', '1499131390', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('85', 'admin', '1', 'infolist', '19', 'add', '1499131422', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('86', 'admin', '1', 'infolist', '0', 'all', '1499131460', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('87', 'admin', '1', 'infolist', '19', 'add', '1499131491', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('88', 'admin', '1', 'infolist', '0', 'all', '1499131521', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('89', 'admin', '1', 'infolist', '19', 'add', '1499131559', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('90', 'admin', '1', 'infoimg', '0', 'all', '1499137710', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('91', 'admin', '1', 'infolist', '0', 'all', '1499137718', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('92', 'admin', '1', 'infolist', '15', 'add', '1499137772', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('93', 'admin', '1', 'infolist', '0', 'all', '1499137934', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('94', 'admin', '1', 'infolist', '15', 'del', '1499137934', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('95', 'admin', '1', 'infolist', '15', 'add', '1499137970', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('96', 'admin', '1', 'infolist', '0', 'all', '1499138118', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('97', 'admin', '1', 'infoclass', '0', 'all', '1499138159', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('98', 'admin', '1', 'infolist', '15', 'add', '1499138186', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('99', 'admin', '1', 'infoclass', '0', 'all', '1499138221', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('100', 'admin', '1', 'infolist', '15', 'add', '1499138259', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('101', 'admin', '1', 'infoclass', '0', 'all', '1499138289', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('102', 'admin', '1', 'infolist', '0', 'all', '1499139038', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('103', 'admin', '1', 'infolist', '20', 'add', '1499139082', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('104', 'admin', '1', 'infolist', '0', 'all', '1499139393', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('105', 'admin', '1', 'infoclass', '0', 'all', '1499139400', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('106', 'admin', '1', 'infolist', '27', 'add', '1499139448', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('107', 'admin', '1', 'infolist', '0', 'all', '1499140132', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('108', 'admin', '1', 'infolist', '27', 'update', '1499140146', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('109', 'admin', '1', 'infolist', '0', 'all', '1499140261', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('110', 'admin', '1', 'infolist', '27', 'add', '1499140305', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('111', 'admin', '1', 'infolist', '0', 'all', '1499140657', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('112', 'admin', '1', 'infolist', '27', 'add', '1499140707', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('113', 'admin', '1', 'infolist', '0', 'all', '1499140738', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('114', 'admin', '1', 'infolist', '27', 'add', '1499140773', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('115', 'admin', '1', 'infolist', '0', 'all', '1499140807', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('116', 'admin', '1', 'infolist', '27', 'add', '1499140843', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('117', 'admin', '1', 'infolist', '0', 'all', '1499140877', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('118', 'admin', '1', 'infolist', '27', 'add', '1499140906', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('119', 'admin', '1', 'infolist', '0', 'all', '1499141161', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('120', 'admin', '1', 'infolist', '0', 'all', '1499141222', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('121', 'admin', '1', 'infolist', '27', 'update', '1499141231', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('122', 'admin', '1', 'infolist', '0', 'all', '1499141302', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('123', 'admin', '1', 'infolist', '27', 'update', '1499141302', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('124', 'admin', '1', 'infolist', '0', 'all', '1499141371', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('125', 'admin', '1', 'infolist', '27', 'update', '1499141371', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('126', 'admin', '1', 'login', '0', '', '1499146512', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('127', 'admin', '1', 'infolist', '0', 'all', '1499146519', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('128', 'admin', '1', 'infolist', '0', 'all', '1499146791', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('129', 'admin', '1', 'infolist', '0', 'all', '1499147774', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('130', 'admin', '1', 'infolist', '0', 'all', '1499147839', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('131', 'admin', '1', 'infolist', '16', 'update', '1499147839', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('132', 'admin', '1', 'infolist', '0', 'all', '1499147925', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('133', 'admin', '1', 'infolist', '16', 'update', '1499147925', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('134', 'admin', '1', 'infolist', '0', 'all', '1499147996', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('135', 'admin', '1', 'infolist', '16', 'update', '1499148015', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('136', 'admin', '1', 'infolist', '0', 'all', '1499148074', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('137', 'admin', '1', 'infolist', '0', 'all', '1499148141', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('138', 'admin', '1', 'infolist', '0', 'all', '1499148590', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('139', 'admin', '1', 'infoclass', '0', 'all', '1499148595', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('140', 'admin', '1', 'infolist', '0', 'all', '1499149012', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('141', 'admin', '1', 'infolist', '28', 'add', '1499149072', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('142', 'admin', '1', 'infolist', '0', 'all', '1499149073', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('143', 'admin', '1', 'infoclass', '0', 'all', '1499151831', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('144', 'admin', '1', 'infolist', '0', 'all', '1499151912', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('145', 'admin', '1', 'infoclass', '0', 'all', '1499152015', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('146', 'admin', '1', 'info', '0', 'all', '1499152017', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('147', 'admin', '1', 'infolist', '0', 'all', '1499152018', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('148', 'admin', '1', 'infolist', '0', 'all', '1499152335', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('149', 'admin', '1', 'infolist', '0', 'all', '1499152420', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('150', 'admin', '1', 'infolist', '0', 'all', '1499152661', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('151', 'admin', '1', 'infolist', '16', 'update', '1499152661', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('152', 'admin', '1', 'infolist', '0', 'all', '1499152735', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('153', 'admin', '1', 'infolist', '16', 'update', '1499152735', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('154', 'admin', '1', 'infolist', '0', 'all', '1499165221', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('155', 'admin', '1', 'infolist', '0', 'all', '1499168151', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('156', 'admin', '1', 'infolist', '16', 'update', '1499168160', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('157', 'admin', '1', 'infolist', '0', 'all', '1499168225', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('158', 'admin', '1', 'infolist', '0', 'all', '1499172167', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('159', 'admin', '1', 'infolist', '18', 'update', '1499172217', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('160', 'admin', '1', 'infolist', '0', 'all', '1499172238', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('161', 'admin', '1', 'infolist', '0', 'all', '1499172310', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('162', 'admin', '1', 'infolist', '18', 'update', '1499172330', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('163', 'admin', '1', 'infolist', '0', 'all', '1499172386', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('164', 'admin', '1', 'infolist', '0', 'all', '1499172815', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('165', 'admin', '1', 'infolist', '0', 'all', '1499173722', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('166', 'admin', '1', 'infolist', '0', 'all', '1499174050', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('167', 'admin', '1', 'infolist', '0', 'all', '1499174347', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('168', 'admin', '1', 'infolist', '18', 'update', '1499174381', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('169', 'admin', '1', 'infolist', '0', 'all', '1499174445', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('170', 'admin', '1', 'infolist', '18', 'update', '1499174500', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('171', 'admin', '1', 'infolist', '0', 'all', '1499174511', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('172', 'admin', '1', 'infolist', '0', 'all', '1499174635', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('173', 'admin', '1', 'infolist', '0', 'all', '1499175691', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('174', 'admin', '1', 'infolist', '0', 'all', '1499175782', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('175', 'admin', '1', 'infolist', '25', 'add', '1499175820', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('176', 'admin', '1', 'infolist', '0', 'all', '1499176579', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('177', 'admin', '1', 'infolist', '0', 'all', '1499176644', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('178', 'admin', '1', 'infolist', '0', 'all', '1499177525', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('179', 'admin', '1', 'infolist', '0', 'all', '1499177620', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('180', 'admin', '1', 'infolist', '23', 'add', '1499177620', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('181', 'admin', '1', 'infolist', '0', 'all', '1499177949', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('182', 'admin', '1', 'infolist', '22', 'add', '1499177977', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('183', 'admin', '1', 'infolist', '0', 'all', '1499178153', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('184', 'admin', '1', 'infolist', '21', 'add', '1499178189', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('185', 'admin', '1', 'infolist', '0', 'all', '1499178360', '0.0.0.0');
INSERT INTO `pmw_sysevent` VALUES ('186', 'admin', '1', 'infolist', '20', 'add', '1499178389', '0.0.0.0');

-- ----------------------------
-- Table structure for pmw_uploads
-- ----------------------------
DROP TABLE IF EXISTS `pmw_uploads`;
CREATE TABLE `pmw_uploads` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '上传信息id',
  `name` varchar(30) NOT NULL COMMENT '文件名称',
  `path` varchar(100) NOT NULL COMMENT '文件路径',
  `size` int(10) NOT NULL COMMENT '文件大小',
  `type` enum('image','soft','media') NOT NULL COMMENT '文件类型',
  `posttime` int(10) NOT NULL COMMENT '上传日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_uploads
-- ----------------------------
INSERT INTO `pmw_uploads` VALUES ('1', '1499069511.jpg', 'uploads/image/20170703/1499069511.jpg', '165913', 'image', '1499069131');
INSERT INTO `pmw_uploads` VALUES ('2', '1499071073.jpg', 'uploads/image/20170703/1499071073.jpg', '78547', 'image', '1499069164');
INSERT INTO `pmw_uploads` VALUES ('3', '1499076802.jpg', 'uploads/image/20170703/1499076802.jpg', '551905', 'image', '1499069189');
INSERT INTO `pmw_uploads` VALUES ('4', '1499075087.jpg', 'uploads/image/20170703/1499075087.jpg', '44236', 'image', '1499069853');
INSERT INTO `pmw_uploads` VALUES ('5', '1499079756.jpg', 'uploads/image/20170703/1499079756.jpg', '35213', 'image', '1499069887');
INSERT INTO `pmw_uploads` VALUES ('6', '1499076476.jpg', 'uploads/image/20170703/1499076476.jpg', '56732', 'image', '1499069915');
INSERT INTO `pmw_uploads` VALUES ('7', '1499072594.png', 'uploads/image/20170703/1499072594.png', '32149', 'image', '1499071237');
INSERT INTO `pmw_uploads` VALUES ('8', '1499080700.png', 'uploads/image/20170703/1499080700.png', '32149', 'image', '1499071334');
INSERT INTO `pmw_uploads` VALUES ('9', '1499075800.png', 'uploads/image/20170703/1499075800.png', '31978', 'image', '1499071367');
INSERT INTO `pmw_uploads` VALUES ('10', '1499079037.png', 'uploads/image/20170703/1499079037.png', '31634', 'image', '1499071423');
INSERT INTO `pmw_uploads` VALUES ('11', '1499080106.png', 'uploads/image/20170703/1499080106.png', '32365', 'image', '1499071452');
INSERT INTO `pmw_uploads` VALUES ('12', '1499077628.png', 'uploads/image/20170703/1499077628.png', '140084', 'image', '1499071853');
INSERT INTO `pmw_uploads` VALUES ('13', '1499074627.png', 'uploads/image/20170703/1499074627.png', '29571', 'image', '1499073082');
INSERT INTO `pmw_uploads` VALUES ('14', '1499079561.png', 'uploads/image/20170703/1499079561.png', '13514', 'image', '1499073137');
INSERT INTO `pmw_uploads` VALUES ('15', '1499078026.png', 'uploads/image/20170703/1499078026.png', '29571', 'image', '1499074488');
INSERT INTO `pmw_uploads` VALUES ('16', '1499086513.jpg', 'uploads/image/20170703/1499086513.jpg', '42553', 'image', '1499085933');
INSERT INTO `pmw_uploads` VALUES ('17', '1499092392.jpg', 'uploads/image/20170703/1499092392.jpg', '44236', 'image', '1499090829');
INSERT INTO `pmw_uploads` VALUES ('18', '1499093788.jpg', 'uploads/image/20170703/1499093788.jpg', '35213', 'image', '1499090921');
INSERT INTO `pmw_uploads` VALUES ('19', '1499091930.jpg', 'uploads/image/20170703/1499091930.jpg', '56732', 'image', '1499090991');
INSERT INTO `pmw_uploads` VALUES ('20', '1499096177.jpg', 'uploads/image/20170703/1499096177.jpg', '78164', 'image', '1499094036');
INSERT INTO `pmw_uploads` VALUES ('21', '1499103153.png', 'uploads/image/20170703/1499103153.png', '811279', 'image', '1499096256');
INSERT INTO `pmw_uploads` VALUES ('22', '1499105437.png', 'uploads/image/20170703/1499105437.png', '199850', 'image', '1499096643');
INSERT INTO `pmw_uploads` VALUES ('23', '1499097176.png', 'uploads/image/20170703/1499097176.png', '240666', 'image', '1499096733');
INSERT INTO `pmw_uploads` VALUES ('24', '1499099052.png', 'uploads/image/20170703/1499099052.png', '140084', 'image', '1499096897');
INSERT INTO `pmw_uploads` VALUES ('25', '1499102557.png', 'uploads/image/20170703/1499102557.png', '140084', 'image', '1499096928');
INSERT INTO `pmw_uploads` VALUES ('26', '1499132744.jpg', 'uploads/image/20170704/1499132744.jpg', '61950', 'image', '1499131237');
INSERT INTO `pmw_uploads` VALUES ('27', '1499132672.jpg', 'uploads/image/20170704/1499132672.jpg', '58547', 'image', '1499131417');
INSERT INTO `pmw_uploads` VALUES ('28', '1499134516.jpg', 'uploads/image/20170704/1499134516.jpg', '37513', 'image', '1499131454');
INSERT INTO `pmw_uploads` VALUES ('29', '1499135162.jpg', 'uploads/image/20170704/1499135162.jpg', '33284', 'image', '1499131486');
INSERT INTO `pmw_uploads` VALUES ('30', '1499138189.jpg', 'uploads/image/20170704/1499138189.jpg', '28437', 'image', '1499131516');
INSERT INTO `pmw_uploads` VALUES ('31', '1499132568.jpg', 'uploads/image/20170704/1499132568.jpg', '28838', 'image', '1499131556');
INSERT INTO `pmw_uploads` VALUES ('32', '1499144291.jpg', 'uploads/image/20170704/1499144291.jpg', '51427', 'image', '1499137766');
INSERT INTO `pmw_uploads` VALUES ('33', '1499140837.jpg', 'uploads/image/20170704/1499140837.jpg', '51427', 'image', '1499137967');
INSERT INTO `pmw_uploads` VALUES ('34', '1499141587.jpg', 'uploads/image/20170704/1499141587.jpg', '48374', 'image', '1499139444');
INSERT INTO `pmw_uploads` VALUES ('35', '1499143453.jpg', 'uploads/image/20170704/1499143453.jpg', '97646', 'image', '1499140141');
INSERT INTO `pmw_uploads` VALUES ('36', '1499153574.png', 'uploads/image/20170704/1499153574.png', '811279', 'image', '1499147832');
INSERT INTO `pmw_uploads` VALUES ('37', '1499151037.png', 'uploads/image/20170704/1499151037.png', '140084', 'image', '1499147885');
INSERT INTO `pmw_uploads` VALUES ('38', '1499157609.png', 'uploads/image/20170704/1499157609.png', '199850', 'image', '1499147913');
INSERT INTO `pmw_uploads` VALUES ('39', '1499151486.png', 'uploads/image/20170704/1499151486.png', '240666', 'image', '1499147971');
INSERT INTO `pmw_uploads` VALUES ('40', '1499153503.png', 'uploads/image/20170704/1499153503.png', '140084', 'image', '1499148010');
INSERT INTO `pmw_uploads` VALUES ('41', '1499155617.jpg', 'uploads/image/20170704/1499155617.jpg', '78164', 'image', '1499148070');
INSERT INTO `pmw_uploads` VALUES ('42', '1499152428.jpg', 'uploads/image/20170704/1499152428.jpg', '85197', 'image', '1499149057');
INSERT INTO `pmw_uploads` VALUES ('43', '1499178977.jpg', 'uploads/image/20170704/1499178977.jpg', '42553', 'image', '1499172213');
INSERT INTO `pmw_uploads` VALUES ('44', '1499177490.jpg', 'uploads/image/20170704/1499177490.jpg', '44236', 'image', '1499172327');
INSERT INTO `pmw_uploads` VALUES ('45', '1499179072.jpg', 'uploads/image/20170704/1499179072.jpg', '35213', 'image', '1499172352');
INSERT INTO `pmw_uploads` VALUES ('46', '1499173001.jpg', 'uploads/image/20170704/1499173001.jpg', '56732', 'image', '1499172381');
INSERT INTO `pmw_uploads` VALUES ('47', '1499182723.jpg', 'uploads/image/20170704/1499182723.jpg', '46899', 'image', '1499175815');
INSERT INTO `pmw_uploads` VALUES ('48', '1499184674.png', 'uploads/image/20170704/1499184674.png', '285251', 'image', '1499177593');
INSERT INTO `pmw_uploads` VALUES ('49', '1499185085.jpg', 'uploads/image/20170704/1499185085.jpg', '136791', 'image', '1499177971');
INSERT INTO `pmw_uploads` VALUES ('50', '1499185105.jpg', 'uploads/image/20170704/1499185105.jpg', '121718', 'image', '1499178176');

-- ----------------------------
-- Table structure for pmw_usercomment
-- ----------------------------
DROP TABLE IF EXISTS `pmw_usercomment`;
CREATE TABLE `pmw_usercomment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `aid` int(10) unsigned NOT NULL COMMENT '信息id',
  `molds` tinyint(1) unsigned NOT NULL COMMENT '信息类型',
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `uname` varchar(20) NOT NULL COMMENT '用户名',
  `body` text NOT NULL COMMENT '评论内容',
  `reply` text NOT NULL COMMENT '回复内容',
  `link` varchar(200) NOT NULL COMMENT '评论网址',
  `time` int(10) unsigned NOT NULL COMMENT '评论时间',
  `ip` varchar(30) NOT NULL COMMENT '评论ip',
  `isshow` tinyint(1) unsigned NOT NULL COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pmw_usercomment
-- ----------------------------
