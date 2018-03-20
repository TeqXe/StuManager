/*
Navicat MySQL Data Transfer

Source Server         : yyg_mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-20 13:23:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
`gid`  int(11) NOT NULL AUTO_INCREMENT ,
`gname`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`gdesc`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`gid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=10013

;

-- ----------------------------
-- Records of grade
-- ----------------------------
BEGIN;
INSERT INTO `grade` VALUES ('10007', '七年级', '七年级(初一)'), ('10008', '八年级', '八年级(初二)'), ('10009', '九年级', '九年级(初三)'), ('10010', '十年级', '十年级(高一)'), ('10011', '十一年级', '十一年级(高二)'), ('10012', '十二年级', '十二年级(高三)');
COMMIT;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
`sid`  int(11) NOT NULL AUTO_INCREMENT ,
`sname`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`sex`  char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`birth`  date NOT NULL ,
`gid`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`sid`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=16

;

-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN;
INSERT INTO `student` VALUES ('1', '张三', 'F', '2005-08-10', '10007'), ('2', '李四', 'M', '2004-05-08', '10008'), ('3', '王五', 'M', '2003-03-06', '10007'), ('13', 'yyyy', 'M', '2018-03-14', '10007');
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
`id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`username`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`operation`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`method`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`params`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`time`  bigint(20) NOT NULL ,
`ip`  varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`create_date`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=91

;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES ('1', 'admin', 'saveSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.save()', '{\"userId\":2,\"username\":\"yuyg\",\"password\":\"29cd7e8ad51ea65b6d8fd3ed705bc551085ecd12a6264c89f2dd45630fcc71db\",\"salt\":\"dmNJxBWQxYITkieBEzZz\",\"email\":\"1358582114@qq.com\",\"mobile\":\"17777777777\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:26:11 PM\"}', '385', '0:0:0:0:0:0:0:1', '2018-03-02 15:26:11'), ('2', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[2]', '333', '0:0:0:0:0:0:0:1', '2018-03-02 15:27:26'), ('3', 'admin', 'saveSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.save()', '{\"userId\":3,\"username\":\"yuyg\",\"password\":\"47896706e5ee6bf6c9385cf08a4178e8815a38da0818e1a2f590822a16c9b021\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"1358582114@qq.com\",\"mobile\":\"17512549923\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '632', '0:0:0:0:0:0:0:1', '2018-03-02 15:27:50'), ('4', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":18,\"username\":\"yuyg18\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"1358582114@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '315', '0:0:0:0:0:0:0:1', '2018-03-02 15:33:59'), ('5', 'admin', 'saveSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.save()', '{\"roleId\":1,\"roleName\":\"test001\",\"remark\":\"test001\",\"createUserId\":1,\"menuIdList\":[],\"createTime\":\"Mar 2, 2018 3:39:11 PM\"}', '896', '0:0:0:0:0:0:0:1', '2018-03-02 15:39:12'), ('6', 'admin', 'saveSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.save()', '{\"roleId\":2,\"roleName\":\"test002\",\"remark\":\"test002\",\"createUserId\":1,\"menuIdList\":[],\"createTime\":\"Mar 2, 2018 3:46:59 PM\"}', '396', '0:0:0:0:0:0:0:1', '2018-03-02 15:47:00'), ('7', 'admin', 'updateSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.update()', '{\"roleId\":4,\"roleName\":\"test004\",\"remark\":\"test004\",\"createUserId\":1,\"menuIdList\":[],\"createTime\":\"Mar 2, 2018 3:46:59 PM\"}', '383', '0:0:0:0:0:0:0:1', '2018-03-02 15:54:23'), ('8', 'admin', 'deleteSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.delete()', '[17,16]', '312', '0:0:0:0:0:0:0:1', '2018-03-02 15:54:45'), ('9', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":1,\"parentName\":\"sys\",\"name\":\"test\",\"url\":\"test\",\"perms\":\"sys\",\"type\":1,\"icon\":\"https://fontawesome.com/icons/adn?style\\u003dbrands\",\"orderNum\":0}', '655', '0:0:0:0:0:0:0:1', '2018-03-02 16:05:16'), ('10', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":1,\"parentName\":\"sys\",\"name\":\"test\",\"url\":\"test\",\"perms\":\"sys\",\"type\":1,\"icon\":\"https://fontawesome.com/icons/adn?style\\u003dbrands\",\"orderNum\":0}', '152', '0:0:0:0:0:0:0:1', '2018-03-02 16:05:17'), ('11', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '36', '383', '0:0:0:0:0:0:0:1', '2018-03-02 16:05:48'), ('12', 'admin', 'updateSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.update()', '{\"menuId\":37,\"parentId\":1,\"parentName\":\"sys\",\"name\":\"test1\",\"url\":\"test\",\"perms\":\"sys\",\"type\":1,\"icon\":\"https://fontawesome.com/icons/adn?style\\u003dbrands\",\"orderNum\":0}', '159', '0:0:0:0:0:0:0:1', '2018-03-02 16:06:00'), ('13', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '37', '383', '0:0:0:0:0:0:0:1', '2018-03-02 16:06:10'), ('14', 'admin', 'saveSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.save()', '{\"userId\":19,\"username\":\"yangxd\",\"password\":\"0c777743e39be50f1788cff3e879689b5649f3a3775bf1d7bef1d891c81c4771\",\"salt\":\"JGrII93wHPFhWu2Bb3uN\",\"email\":\"1878458745@qq.com\",\"mobile\":\"15895896547\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1,\"createTime\":\"Mar 5, 2018 3:06:48 PM\"}', '629', '127.0.0.1', '2018-03-05 15:06:48'), ('15', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[19]', '307', '127.0.0.1', '2018-03-05 15:07:27'), ('16', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"list\",\"perms\":\"sys:mansion:list,sys:mansion:info\",\"type\":2,\"orderNum\":0}', '165', '127.0.0.1', '2018-03-05 16:15:36'), ('17', 'admin', 'updateSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"list\",\"perms\":\"sys:mansion:list,sys:mansion:info\",\"type\":2,\"orderNum\":0}', '1157', '127.0.0.1', '2018-03-05 16:16:29'), ('18', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"add\",\"perms\":\"sys:mansion:save,sys:menu:list\",\"type\":2,\"orderNum\":0}', '163', '127.0.0.1', '2018-03-05 16:17:31'), ('19', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"update\",\"perms\":\"sys:mansion:update,sys:menu:list\",\"type\":2,\"orderNum\":0}', '164', '127.0.0.1', '2018-03-05 16:18:01'), ('20', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"delete\",\"perms\":\"sys:mansion:delete\",\"type\":2,\"orderNum\":0}', '796', '127.0.0.1', '2018-03-05 16:18:49'), ('21', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"delete\",\"perms\":\"sys:mansion:delete\",\"type\":2,\"orderNum\":0}', '1113', '127.0.0.1', '2018-03-05 16:18:49'), ('22', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '45', '424', '127.0.0.1', '2018-03-05 16:19:09'), ('23', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '45', '697', '127.0.0.1', '2018-03-05 16:19:12'), ('24', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '45', '2205', '127.0.0.1', '2018-03-05 16:19:13'), ('25', 'admin', 'saveSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.save()', '{\"roleId\":20,\"roleName\":\"test234\",\"createUserId\":1,\"menuIdList\":[],\"createTime\":\"Mar 5, 2018 5:42:37 PM\"}', '421', '0:0:0:0:0:0:0:1', '2018-03-05 17:42:37'), ('26', 'admin', 'deleteSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.delete()', '[20,19,18,15,13,14,12]', '294', '0:0:0:0:0:0:0:1', '2018-03-05 17:42:52'), ('27', 'admin', 'saveSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.save()', '{\"userId\":22,\"username\":\"yuyg\",\"password\":\"f5a039d3e1bb66978eaeeadb7193553c01d7fe21a93674938a5820eca111c6b0\",\"salt\":\"WT3qAcNRcp9LQbpq9kA9\",\"email\":\"1358582114@qq.com\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 5, 2018 5:57:54 PM\"}', '309', '0:0:0:0:0:0:0:1', '2018-03-05 17:57:54'), ('28', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[22]', '299', '0:0:0:0:0:0:0:1', '2018-03-05 17:58:17'), ('29', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[22]', '276', '127.0.0.1', '2018-03-05 17:58:17'), ('30', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[22]', '597', '127.0.0.1', '2018-03-05 17:58:17'), ('31', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":48,\"parentName\":\"USER_TABLE\",\"name\":\"list\",\"perms\":\"sys:generatetest:list,sys:generatetest:info\",\"type\":2,\"orderNum\":0}', '139', '0:0:0:0:0:0:0:1', '2018-03-05 21:24:57'), ('32', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":48,\"parentName\":\"USER_TABLE\",\"name\":\"add\",\"url\":\"\",\"perms\":\"sys:generatetest:save,sys:menu:list\",\"type\":2,\"icon\":\"\",\"orderNum\":0}', '134', '0:0:0:0:0:0:0:1', '2018-03-05 21:25:31'), ('33', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":48,\"parentName\":\"USER_TABLE\",\"name\":\"update\",\"url\":\"\",\"perms\":\"sys:generatetest:update,sys:menu:list\",\"type\":2,\"icon\":\"\",\"orderNum\":0}', '136', '0:0:0:0:0:0:0:1', '2018-03-05 21:26:27'), ('34', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":48,\"parentName\":\"USER_TABLE\",\"name\":\"delete\",\"url\":\"\",\"perms\":\"sys:generatetest:delete\",\"type\":2,\"icon\":\"\",\"orderNum\":0}', '144', '0:0:0:0:0:0:0:1', '2018-03-05 21:26:59'), ('35', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":61,\"parentName\":\"USER_TABLE\",\"name\":\"list\",\"perms\":\"master:generatetest:list,master:generatetest:info\",\"type\":2,\"orderNum\":0}', '148', '0:0:0:0:0:0:0:1', '2018-03-06 10:19:49'), ('36', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":61,\"parentName\":\"USER_TABLE\",\"name\":\"add\",\"perms\":\"master:generatetest:save\",\"type\":2,\"orderNum\":0}', '153', '0:0:0:0:0:0:0:1', '2018-03-06 10:20:27'), ('37', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":61,\"parentName\":\"USER_TABLE\",\"name\":\"update\",\"perms\":\"master:generatetest:update\",\"type\":2,\"orderNum\":0}', '144', '0:0:0:0:0:0:0:1', '2018-03-06 10:20:51'), ('38', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":61,\"parentName\":\"USER_TABLE\",\"name\":\"delete\",\"perms\":\"master:generatetest:delete\",\"type\":2,\"orderNum\":0}', '143', '0:0:0:0:0:0:0:1', '2018-03-06 10:21:21'), ('39', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":23,\"username\":\"yuyg\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"1358582114@qq.com\",\"mobile\":\"\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '324', '0:0:0:0:0:0:0:1', '2018-03-06 10:25:08'), ('40', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[23,21,20,18,17]', '385', '0:0:0:0:0:0:0:1', '2018-03-06 10:26:57'), ('41', 'admin', 'updateSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.update()', '{\"menuId\":109,\"parentId\":92,\"parentName\":\"master\",\"name\":\"MANAGEMENT_FRONT\",\"url\":\"modules/master/managementcompanyfront.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":3}', '169', '0:0:0:0:0:0:0:1', '2018-03-06 15:41:34'), ('42', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '18', '392', '0:0:0:0:0:0:0:1', '2018-03-06 15:47:38'), ('43', 'admin', 'updateSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.update()', '{\"menuId\":1,\"parentId\":0,\"parentName\":\"level1menu\",\"name\":\"sys\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":1}', '90', '0:0:0:0:0:0:0:1', '2018-03-06 15:48:16'), ('44', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '20', '378', '0:0:0:0:0:0:0:1', '2018-03-07 14:25:03'), ('45', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[16]', '374', '127.0.0.1', '2018-03-07 16:32:10'), ('46', 'admin', 'deleteSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.delete()', '[1]', '302', '127.0.0.1', '2018-03-07 17:21:55'), ('47', 'admin', 'deleteSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.delete()', '[2,3,4,5,6,7,8]', '303', '127.0.0.1', '2018-03-07 17:47:08'), ('48', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '32', '361', '127.0.0.1', '2018-03-07 17:49:25'), ('49', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '33', '354', '127.0.0.1', '2018-03-07 17:49:32'), ('50', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '34', '356', '127.0.0.1', '2018-03-07 17:49:38'), ('51', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '35', '354', '127.0.0.1', '2018-03-07 17:49:43'), ('52', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":15,\"username\":\"yuyg\",\"password\":\"c3700d37354db4763c881a385b82121e455b1e9e64b77abbcc365c56f0f7c333\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"1358582114@qq.com\",\"mobile\":\"17512549923\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '485', '127.0.0.1', '2018-03-07 17:52:47'), ('53', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[15,14,12,13,11,10,9,8,7]', '298', '127.0.0.1', '2018-03-07 17:54:06'), ('54', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":4,\"username\":\"wangyang\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"11223344@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '291', '127.0.0.1', '2018-03-07 17:54:48'), ('55', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":4,\"username\":\"wangyang\",\"password\":\"c3700d37354db4763c881a385b82121e455b1e9e64b77abbcc365c56f0f7c333\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"11223344@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '289', '127.0.0.1', '2018-03-07 17:54:56'), ('56', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":5,\"username\":\"zhangkx\",\"password\":\"c3700d37354db4763c881a385b82121e455b1e9e64b77abbcc365c56f0f7c333\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"11223344@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '293', '127.0.0.1', '2018-03-07 17:55:19'), ('57', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":6,\"username\":\"qilei\",\"password\":\"c3700d37354db4763c881a385b82121e455b1e9e64b77abbcc365c56f0f7c333\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"1358582114@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '315', '127.0.0.1', '2018-03-07 17:56:18'), ('58', 'admin', 'saveSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.save()', '{\"userId\":24,\"username\":\"yangxd\",\"password\":\"73f7d0ceca2d651a8434fa764e1c1127bacf47a301d06d5256ea486f4686ef3e\",\"salt\":\"473QsKI8VZrTO4fZyhnQ\",\"email\":\"11223344@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 7, 2018 6:01:59 PM\"}', '353', '127.0.0.1', '2018-03-07 18:01:59'), ('59', 'admin', 'saveSysUserEntity', 'com.crm.modules.sys.controller.SysUserController.save()', '{\"userId\":3,\"username\":\"yyg\",\"password\":\"df75fad9ead9749e885eea585e548633b5219c5c5c6a09aa50efbe1cc8ccda4c\",\"salt\":\"wG93QDerwlKYVod9mMuh\",\"email\":\"1358582114@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 16, 2018 3:53:05 PM\"}', '102', '0:0:0:0:0:0:0:1', '2018-03-16 15:53:05'), ('60', 'admin', 'deleteSysUserEntity', 'com.crm.modules.sys.controller.SysUserController.delete()', '[2]', '24', '0:0:0:0:0:0:0:1', '2018-03-19 14:10:58'), ('61', 'admin', 'deleteSysUserEntity', 'com.crm.modules.sys.controller.SysUserController.delete()', '[2]', '64', '0:0:0:0:0:0:0:1', '2018-03-19 14:15:11'), ('62', 'admin', 'deleteSysUserEntity', 'com.crm.modules.sys.controller.SysUserController.delete()', '[2]', '105', '0:0:0:0:0:0:0:1', '2018-03-19 14:16:58'), ('63', 'admin', 'saveSysUserEntity', 'com.crm.modules.sys.controller.SysUserController.save()', '{\"userId\":4,\"username\":\"yyg\",\"password\":\"4014a26f79da19795bb135ccd4eb8af168a605bda52e36b3ae28a0d1a65fc7bc\",\"salt\":\"knC1MQmSuA0JptlXpUnl\",\"email\":\"1358582114@qq.com\",\"mobile\":\"17777777777\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 19, 2018 2:17:15 PM\"}', '201', '0:0:0:0:0:0:0:1', '2018-03-19 14:17:15'), ('64', 'admin', 'deleteSysRoleEntity', 'com.crm.modules.sys.controller.SysRoleController.delete()', '[9,10,11]', '798', '0:0:0:0:0:0:0:1', '2018-03-19 14:17:25'), ('65', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":1,\"parentId\":0,\"parentName\":\"level1menu\",\"name\":\"系统管理\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":1}', '135', '0:0:0:0:0:0:0:1', '2018-03-19 14:42:56'), ('66', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":2,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"用户管理\",\"url\":\"modules/sys/user.html\",\"type\":1,\"icon\":\"fa fa-user\",\"orderNum\":1}', '132', '0:0:0:0:0:0:0:1', '2018-03-19 14:43:22'), ('67', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":3,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"角色管理\",\"url\":\"modules/sys/role.html\",\"type\":1,\"icon\":\"fa fa-user-secret\",\"orderNum\":2}', '101', '0:0:0:0:0:0:0:1', '2018-03-19 14:43:34'), ('68', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":4,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"菜单管理\",\"url\":\"modules/sys/menu.html\",\"type\":1,\"icon\":\"fa fa-th-list\",\"orderNum\":3}', '100', '0:0:0:0:0:0:0:1', '2018-03-19 14:43:51'), ('69', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":5,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"SQL监控\",\"url\":\"druid/sql.html\",\"type\":1,\"icon\":\"fa fa-bug\",\"orderNum\":4}', '104', '0:0:0:0:0:0:0:1', '2018-03-19 14:44:18'), ('70', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":19,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"日志管理\",\"url\":\"modules/sys/log.html\",\"perms\":\"sys:log:list\",\"type\":1,\"icon\":\"fa fa-file-text-o\",\"orderNum\":7}', '102', '0:0:0:0:0:0:0:1', '2018-03-19 14:44:34'), ('71', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":29,\"parentId\":1,\"parentName\":\"系统管理\",\"name\":\"代码生成工具\",\"url\":\"modules/sys/generator.html\",\"perms\":\"sys:generator:list,sys:generator:code\",\"type\":1,\"icon\":\"fa fa-rocket\",\"orderNum\":8}', '65', '0:0:0:0:0:0:0:1', '2018-03-19 14:44:57'), ('72', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":0,\"parentName\":\"level1menu\",\"name\":\"学生管理\",\"type\":0,\"icon\":\"fa fa-graduation-cap\",\"orderNum\":0}', '77', '0:0:0:0:0:0:0:1', '2018-03-19 14:58:45'), ('73', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":0,\"parentName\":\"level1menu\",\"name\":\"班级管理\",\"url\":\"modules/master/grade.html\",\"type\":1,\"icon\":\"fa fa-balance-scale\",\"orderNum\":1}', '117', '0:0:0:0:0:0:0:1', '2018-03-19 15:42:23'), ('74', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":31,\"parentId\":0,\"parentName\":\"level1menu\",\"name\":\"班级管理\",\"url\":\"modules/master/grade.html\",\"type\":0,\"icon\":\"fa fa-balance-scale\",\"orderNum\":1}', '59', '0:0:0:0:0:0:0:1', '2018-03-19 15:42:37'), ('75', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":31,\"parentId\":0,\"parentName\":\"level1menu\",\"name\":\"班级管理\",\"url\":\"modules/master/grade.html\",\"type\":1,\"icon\":\"fa fa-balance-scale\",\"orderNum\":0}', '89', '0:0:0:0:0:0:0:1', '2018-03-19 15:42:54'), ('76', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":31,\"parentId\":30,\"parentName\":\"学生管理\",\"name\":\"班级管理\",\"url\":\"modules/master/grade.html\",\"type\":1,\"icon\":\"fa fa-balance-scale\",\"orderNum\":1}', '347', '0:0:0:0:0:0:0:1', '2018-03-19 15:43:36'), ('77', 'admin', 'deleteSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.delete()', '21', '168', '0:0:0:0:0:0:0:1', '2018-03-19 15:45:26'), ('78', 'admin', 'deleteSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.delete()', '22', '89', '0:0:0:0:0:0:0:1', '2018-03-19 15:47:24'), ('79', 'admin', 'deleteSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.delete()', '23', '104', '0:0:0:0:0:0:0:1', '2018-03-19 15:47:33'), ('80', 'admin', 'deleteSysUserEntity', 'com.crm.modules.sys.controller.SysUserController.delete()', '[4]', '152', '0:0:0:0:0:0:0:1', '2018-03-19 15:47:41'), ('81', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":31,\"parentName\":\"班级管理\",\"name\":\"list\",\"perms\":\"master:grade:list,master:grade:info\",\"type\":2,\"orderNum\":0}', '71', '0:0:0:0:0:0:0:1', '2018-03-19 15:48:33'), ('82', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":31,\"parentName\":\"班级管理\",\"name\":\"add\",\"perms\":\"master:grade:save\",\"type\":2,\"orderNum\":0}', '52', '0:0:0:0:0:0:0:1', '2018-03-19 15:50:31'), ('83', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":31,\"parentName\":\"班级管理\",\"name\":\"update\",\"perms\":\"master:grade:update\",\"type\":2,\"orderNum\":0}', '41', '0:0:0:0:0:0:0:1', '2018-03-19 15:51:23'), ('84', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":31,\"parentName\":\"班级管理\",\"name\":\"delete\",\"perms\":\"master:grade:delete\",\"type\":2,\"orderNum\":0}', '59', '0:0:0:0:0:0:0:1', '2018-03-19 15:52:09'), ('85', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":30,\"parentName\":\"学生管理\",\"name\":\"学生管理\",\"url\":\"modules/master/student.html\",\"type\":1,\"icon\":\"fa -fa-male\",\"orderNum\":2}', '73', '0:0:0:0:0:0:0:1', '2018-03-19 15:54:39'), ('86', 'admin', 'updateSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.update()', '{\"menuId\":36,\"parentId\":30,\"parentName\":\"学生管理\",\"name\":\"学生管理\",\"url\":\"modules/master/student.html\",\"type\":1,\"icon\":\"fa fa-male\",\"orderNum\":2}', '45', '0:0:0:0:0:0:0:1', '2018-03-19 15:55:15'), ('87', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":36,\"parentName\":\"学生管理\",\"name\":\"list\",\"perms\":\"master:student:list,master:student:info\",\"type\":2,\"orderNum\":0}', '61', '0:0:0:0:0:0:0:1', '2018-03-19 15:55:50'), ('88', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":36,\"parentName\":\"学生管理\",\"name\":\"add\",\"perms\":\"master:student:save\",\"type\":2,\"orderNum\":0}', '76', '0:0:0:0:0:0:0:1', '2018-03-19 15:56:17'), ('89', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":36,\"parentName\":\"学生管理\",\"name\":\"update\",\"perms\":\"master:student:update\",\"type\":2,\"orderNum\":0}', '60', '0:0:0:0:0:0:0:1', '2018-03-19 15:56:35'), ('90', 'admin', 'saveSysMenuEntity', 'com.crm.modules.sys.controller.SysMenuController.save()', '{\"parentId\":36,\"parentName\":\"学生管理\",\"name\":\"delete\",\"perms\":\"master:student:delete\",\"type\":2,\"orderNum\":0}', '43', '0:0:0:0:0:0:0:1', '2018-03-19 15:56:49');
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
`menu_id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`parent_id`  bigint(20) NULL DEFAULT NULL ,
`name`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`url`  varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`perms`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`type`  int(11) NULL DEFAULT NULL ,
`icon`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`order_num`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`menu_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=41

;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', null, null, '0', 'fa fa-cog', '1'), ('2', '1', '用户管理', 'modules/sys/user.html', null, '1', 'fa fa-user', '1'), ('3', '1', '角色管理', 'modules/sys/role.html', null, '1', 'fa fa-user-secret', '2'), ('4', '1', '菜单管理', 'modules/sys/menu.html', null, '1', 'fa fa-th-list', '3'), ('5', '1', 'SQL监控', 'druid/sql.html', null, '1', 'fa fa-bug', '4'), ('6', '2', 'list', null, 'sys:user:list,sys:user:info', '2', null, '0'), ('7', '2', 'add', null, 'sys:user:save,sys:role:select', '2', null, '0'), ('8', '2', 'update', null, 'sys:user:update,sys:role:select', '2', null, '0'), ('9', '2', 'delete', null, 'sys:user:delete', '2', null, '0'), ('10', '3', 'list', null, 'sys:role:list,sys:role:info', '2', null, '0'), ('11', '3', 'add', null, 'sys:role:save,sys:menu:list', '2', null, '0'), ('12', '3', 'update', null, 'sys:role:update,sys:menu:list', '2', null, '0'), ('13', '3', 'delete', null, 'sys:role:delete', '2', null, '0'), ('14', '4', 'list', null, 'sys:menu:list,sys:menu:info', '2', null, '0'), ('15', '4', 'add', null, 'sys:menu:save,sys:menu:select', '2', null, '0'), ('16', '4', 'update', null, 'sys:menu:update,sys:menu:select', '2', null, '0'), ('17', '4', 'delete', null, 'sys:menu:delete', '2', null, '0'), ('19', '1', '日志管理', 'modules/sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7'), ('29', '1', '代码生成工具', 'modules/sys/generator.html', 'sys:generator:list,sys:generator:code', '1', 'fa fa-rocket', '8'), ('30', '0', '学生管理', null, null, '0', 'fa fa-graduation-cap', '2'), ('31', '30', '班级管理', 'modules/master/grade.html', null, '1', 'fa fa-balance-scale', '1'), ('32', '31', 'list', null, 'master:grade:list,master:grade:info', '2', null, '0'), ('33', '31', 'add', null, 'master:grade:save', '2', null, '0'), ('34', '31', 'update', null, 'master:grade:update', '2', null, '0'), ('35', '31', 'delete', null, 'master:grade:delete', '2', null, '0'), ('36', '30', '学生管理', 'modules/master/student.html', null, '1', 'fa fa-male', '2'), ('37', '36', 'list', null, 'master:student:list,master:student:info', '2', null, '0'), ('38', '36', 'add', null, 'master:student:save', '2', null, '0'), ('39', '36', 'update', null, 'master:student:update', '2', null, '0'), ('40', '36', 'delete', null, 'master:student:delete', '2', null, '0');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
`role_id`  bigint(20) NOT NULL ,
`role_name`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`remark`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`create_user_id`  bigint(20) NULL DEFAULT NULL ,
`create_time`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`role_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
`id`  bigint(20) NOT NULL ,
`role_id`  bigint(20) NULL DEFAULT NULL ,
`menu_id`  bigint(20) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
`user_id`  bigint(20) NOT NULL AUTO_INCREMENT ,
`username`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`password`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`salt`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`email`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`mobile`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`status`  tinyint(4) NULL DEFAULT NULL ,
`create_user_id`  bigint(20) NULL DEFAULT NULL ,
`create_time`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`user_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=5

;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', 'admin', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', 'root@renren.io', '13612345678', '1', '1', '2016-11-11 11:11:11');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
`id`  bigint(20) NOT NULL ,
`user_id`  bigint(20) NULL DEFAULT NULL ,
`role_id`  bigint(20) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_token`;
CREATE TABLE `sys_user_token` (
`user_id`  bigint(20) NOT NULL ,
`token`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`expire_time`  datetime NULL DEFAULT NULL ,
`update_time`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`user_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_token` VALUES ('1', '0105d93128b13c44184b6551e49f0646', '2018-03-20 21:15:15', '2018-03-20 09:15:15'), ('3', '84cde5816320e239ded1ae9d8d280147', '2018-03-13 03:19:28', '2018-03-12 15:19:28');
COMMIT;

-- ----------------------------
-- Auto increment value for grade
-- ----------------------------
ALTER TABLE `grade` AUTO_INCREMENT=10013;

-- ----------------------------
-- Auto increment value for student
-- ----------------------------
ALTER TABLE `student` AUTO_INCREMENT=16;

-- ----------------------------
-- Auto increment value for sys_log
-- ----------------------------
ALTER TABLE `sys_log` AUTO_INCREMENT=91;

-- ----------------------------
-- Auto increment value for sys_menu
-- ----------------------------
ALTER TABLE `sys_menu` AUTO_INCREMENT=41;

-- ----------------------------
-- Auto increment value for sys_user
-- ----------------------------
ALTER TABLE `sys_user` AUTO_INCREMENT=5;
