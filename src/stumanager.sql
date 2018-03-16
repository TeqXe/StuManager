/*
Navicat MySQL Data Transfer

Source Server         : yyg_mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-03-16 14:12:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `operation` varchar(50) DEFAULT NULL,
  `method` varchar(200) DEFAULT NULL,
  `params` text,
  `time` bigint(20) NOT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', 'admin', 'saveSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.save()', '{\"userId\":2,\"username\":\"yuyg\",\"password\":\"29cd7e8ad51ea65b6d8fd3ed705bc551085ecd12a6264c89f2dd45630fcc71db\",\"salt\":\"dmNJxBWQxYITkieBEzZz\",\"email\":\"1358582114@qq.com\",\"mobile\":\"17777777777\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:26:11 PM\"}', '385', '0:0:0:0:0:0:0:1', '2018-03-02 15:26:11');
INSERT INTO `sys_log` VALUES ('2', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[2]', '333', '0:0:0:0:0:0:0:1', '2018-03-02 15:27:26');
INSERT INTO `sys_log` VALUES ('3', 'admin', 'saveSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.save()', '{\"userId\":3,\"username\":\"yuyg\",\"password\":\"47896706e5ee6bf6c9385cf08a4178e8815a38da0818e1a2f590822a16c9b021\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"1358582114@qq.com\",\"mobile\":\"17512549923\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '632', '0:0:0:0:0:0:0:1', '2018-03-02 15:27:50');
INSERT INTO `sys_log` VALUES ('4', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":18,\"username\":\"yuyg18\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"1358582114@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '315', '0:0:0:0:0:0:0:1', '2018-03-02 15:33:59');
INSERT INTO `sys_log` VALUES ('5', 'admin', 'saveSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.save()', '{\"roleId\":1,\"roleName\":\"test001\",\"remark\":\"test001\",\"createUserId\":1,\"menuIdList\":[],\"createTime\":\"Mar 2, 2018 3:39:11 PM\"}', '896', '0:0:0:0:0:0:0:1', '2018-03-02 15:39:12');
INSERT INTO `sys_log` VALUES ('6', 'admin', 'saveSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.save()', '{\"roleId\":2,\"roleName\":\"test002\",\"remark\":\"test002\",\"createUserId\":1,\"menuIdList\":[],\"createTime\":\"Mar 2, 2018 3:46:59 PM\"}', '396', '0:0:0:0:0:0:0:1', '2018-03-02 15:47:00');
INSERT INTO `sys_log` VALUES ('7', 'admin', 'updateSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.update()', '{\"roleId\":4,\"roleName\":\"test004\",\"remark\":\"test004\",\"createUserId\":1,\"menuIdList\":[],\"createTime\":\"Mar 2, 2018 3:46:59 PM\"}', '383', '0:0:0:0:0:0:0:1', '2018-03-02 15:54:23');
INSERT INTO `sys_log` VALUES ('8', 'admin', 'deleteSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.delete()', '[17,16]', '312', '0:0:0:0:0:0:0:1', '2018-03-02 15:54:45');
INSERT INTO `sys_log` VALUES ('9', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":1,\"parentName\":\"sys\",\"name\":\"test\",\"url\":\"test\",\"perms\":\"sys\",\"type\":1,\"icon\":\"https://fontawesome.com/icons/adn?style\\u003dbrands\",\"orderNum\":0}', '655', '0:0:0:0:0:0:0:1', '2018-03-02 16:05:16');
INSERT INTO `sys_log` VALUES ('10', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":1,\"parentName\":\"sys\",\"name\":\"test\",\"url\":\"test\",\"perms\":\"sys\",\"type\":1,\"icon\":\"https://fontawesome.com/icons/adn?style\\u003dbrands\",\"orderNum\":0}', '152', '0:0:0:0:0:0:0:1', '2018-03-02 16:05:17');
INSERT INTO `sys_log` VALUES ('11', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '36', '383', '0:0:0:0:0:0:0:1', '2018-03-02 16:05:48');
INSERT INTO `sys_log` VALUES ('12', 'admin', 'updateSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.update()', '{\"menuId\":37,\"parentId\":1,\"parentName\":\"sys\",\"name\":\"test1\",\"url\":\"test\",\"perms\":\"sys\",\"type\":1,\"icon\":\"https://fontawesome.com/icons/adn?style\\u003dbrands\",\"orderNum\":0}', '159', '0:0:0:0:0:0:0:1', '2018-03-02 16:06:00');
INSERT INTO `sys_log` VALUES ('13', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '37', '383', '0:0:0:0:0:0:0:1', '2018-03-02 16:06:10');
INSERT INTO `sys_log` VALUES ('14', 'admin', 'saveSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.save()', '{\"userId\":19,\"username\":\"yangxd\",\"password\":\"0c777743e39be50f1788cff3e879689b5649f3a3775bf1d7bef1d891c81c4771\",\"salt\":\"JGrII93wHPFhWu2Bb3uN\",\"email\":\"1878458745@qq.com\",\"mobile\":\"15895896547\",\"status\":1,\"roleIdList\":[1],\"createUserId\":1,\"createTime\":\"Mar 5, 2018 3:06:48 PM\"}', '629', '127.0.0.1', '2018-03-05 15:06:48');
INSERT INTO `sys_log` VALUES ('15', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[19]', '307', '127.0.0.1', '2018-03-05 15:07:27');
INSERT INTO `sys_log` VALUES ('16', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"list\",\"perms\":\"sys:mansion:list,sys:mansion:info\",\"type\":2,\"orderNum\":0}', '165', '127.0.0.1', '2018-03-05 16:15:36');
INSERT INTO `sys_log` VALUES ('17', 'admin', 'updateSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.update()', '{\"menuId\":41,\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"list\",\"perms\":\"sys:mansion:list,sys:mansion:info\",\"type\":2,\"orderNum\":0}', '1157', '127.0.0.1', '2018-03-05 16:16:29');
INSERT INTO `sys_log` VALUES ('18', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"add\",\"perms\":\"sys:mansion:save,sys:menu:list\",\"type\":2,\"orderNum\":0}', '163', '127.0.0.1', '2018-03-05 16:17:31');
INSERT INTO `sys_log` VALUES ('19', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"update\",\"perms\":\"sys:mansion:update,sys:menu:list\",\"type\":2,\"orderNum\":0}', '164', '127.0.0.1', '2018-03-05 16:18:01');
INSERT INTO `sys_log` VALUES ('20', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"delete\",\"perms\":\"sys:mansion:delete\",\"type\":2,\"orderNum\":0}', '796', '127.0.0.1', '2018-03-05 16:18:49');
INSERT INTO `sys_log` VALUES ('21', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":39,\"parentName\":\"mansion\",\"name\":\"delete\",\"perms\":\"sys:mansion:delete\",\"type\":2,\"orderNum\":0}', '1113', '127.0.0.1', '2018-03-05 16:18:49');
INSERT INTO `sys_log` VALUES ('22', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '45', '424', '127.0.0.1', '2018-03-05 16:19:09');
INSERT INTO `sys_log` VALUES ('23', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '45', '697', '127.0.0.1', '2018-03-05 16:19:12');
INSERT INTO `sys_log` VALUES ('24', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '45', '2205', '127.0.0.1', '2018-03-05 16:19:13');
INSERT INTO `sys_log` VALUES ('25', 'admin', 'saveSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.save()', '{\"roleId\":20,\"roleName\":\"test234\",\"createUserId\":1,\"menuIdList\":[],\"createTime\":\"Mar 5, 2018 5:42:37 PM\"}', '421', '0:0:0:0:0:0:0:1', '2018-03-05 17:42:37');
INSERT INTO `sys_log` VALUES ('26', 'admin', 'deleteSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.delete()', '[20,19,18,15,13,14,12]', '294', '0:0:0:0:0:0:0:1', '2018-03-05 17:42:52');
INSERT INTO `sys_log` VALUES ('27', 'admin', 'saveSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.save()', '{\"userId\":22,\"username\":\"yuyg\",\"password\":\"f5a039d3e1bb66978eaeeadb7193553c01d7fe21a93674938a5820eca111c6b0\",\"salt\":\"WT3qAcNRcp9LQbpq9kA9\",\"email\":\"1358582114@qq.com\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 5, 2018 5:57:54 PM\"}', '309', '0:0:0:0:0:0:0:1', '2018-03-05 17:57:54');
INSERT INTO `sys_log` VALUES ('28', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[22]', '299', '0:0:0:0:0:0:0:1', '2018-03-05 17:58:17');
INSERT INTO `sys_log` VALUES ('29', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[22]', '276', '127.0.0.1', '2018-03-05 17:58:17');
INSERT INTO `sys_log` VALUES ('30', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[22]', '597', '127.0.0.1', '2018-03-05 17:58:17');
INSERT INTO `sys_log` VALUES ('31', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":48,\"parentName\":\"USER_TABLE\",\"name\":\"list\",\"perms\":\"sys:generatetest:list,sys:generatetest:info\",\"type\":2,\"orderNum\":0}', '139', '0:0:0:0:0:0:0:1', '2018-03-05 21:24:57');
INSERT INTO `sys_log` VALUES ('32', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":48,\"parentName\":\"USER_TABLE\",\"name\":\"add\",\"url\":\"\",\"perms\":\"sys:generatetest:save,sys:menu:list\",\"type\":2,\"icon\":\"\",\"orderNum\":0}', '134', '0:0:0:0:0:0:0:1', '2018-03-05 21:25:31');
INSERT INTO `sys_log` VALUES ('33', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":48,\"parentName\":\"USER_TABLE\",\"name\":\"update\",\"url\":\"\",\"perms\":\"sys:generatetest:update,sys:menu:list\",\"type\":2,\"icon\":\"\",\"orderNum\":0}', '136', '0:0:0:0:0:0:0:1', '2018-03-05 21:26:27');
INSERT INTO `sys_log` VALUES ('34', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":48,\"parentName\":\"USER_TABLE\",\"name\":\"delete\",\"url\":\"\",\"perms\":\"sys:generatetest:delete\",\"type\":2,\"icon\":\"\",\"orderNum\":0}', '144', '0:0:0:0:0:0:0:1', '2018-03-05 21:26:59');
INSERT INTO `sys_log` VALUES ('35', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":61,\"parentName\":\"USER_TABLE\",\"name\":\"list\",\"perms\":\"master:generatetest:list,master:generatetest:info\",\"type\":2,\"orderNum\":0}', '148', '0:0:0:0:0:0:0:1', '2018-03-06 10:19:49');
INSERT INTO `sys_log` VALUES ('36', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":61,\"parentName\":\"USER_TABLE\",\"name\":\"add\",\"perms\":\"master:generatetest:save\",\"type\":2,\"orderNum\":0}', '153', '0:0:0:0:0:0:0:1', '2018-03-06 10:20:27');
INSERT INTO `sys_log` VALUES ('37', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":61,\"parentName\":\"USER_TABLE\",\"name\":\"update\",\"perms\":\"master:generatetest:update\",\"type\":2,\"orderNum\":0}', '144', '0:0:0:0:0:0:0:1', '2018-03-06 10:20:51');
INSERT INTO `sys_log` VALUES ('38', 'admin', 'saveSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.save()', '{\"parentId\":61,\"parentName\":\"USER_TABLE\",\"name\":\"delete\",\"perms\":\"master:generatetest:delete\",\"type\":2,\"orderNum\":0}', '143', '0:0:0:0:0:0:0:1', '2018-03-06 10:21:21');
INSERT INTO `sys_log` VALUES ('39', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":23,\"username\":\"yuyg\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"1358582114@qq.com\",\"mobile\":\"\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '324', '0:0:0:0:0:0:0:1', '2018-03-06 10:25:08');
INSERT INTO `sys_log` VALUES ('40', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[23,21,20,18,17]', '385', '0:0:0:0:0:0:0:1', '2018-03-06 10:26:57');
INSERT INTO `sys_log` VALUES ('41', 'admin', 'updateSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.update()', '{\"menuId\":109,\"parentId\":92,\"parentName\":\"master\",\"name\":\"MANAGEMENT_FRONT\",\"url\":\"modules/master/managementcompanyfront.html\",\"type\":1,\"icon\":\"fa fa-file-code-o\",\"orderNum\":3}', '169', '0:0:0:0:0:0:0:1', '2018-03-06 15:41:34');
INSERT INTO `sys_log` VALUES ('42', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '18', '392', '0:0:0:0:0:0:0:1', '2018-03-06 15:47:38');
INSERT INTO `sys_log` VALUES ('43', 'admin', 'updateSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.update()', '{\"menuId\":1,\"parentId\":0,\"parentName\":\"level1menu\",\"name\":\"sys\",\"type\":0,\"icon\":\"fa fa-cog\",\"orderNum\":1}', '90', '0:0:0:0:0:0:0:1', '2018-03-06 15:48:16');
INSERT INTO `sys_log` VALUES ('44', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '20', '378', '0:0:0:0:0:0:0:1', '2018-03-07 14:25:03');
INSERT INTO `sys_log` VALUES ('45', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[16]', '374', '127.0.0.1', '2018-03-07 16:32:10');
INSERT INTO `sys_log` VALUES ('46', 'admin', 'deleteSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.delete()', '[1]', '302', '127.0.0.1', '2018-03-07 17:21:55');
INSERT INTO `sys_log` VALUES ('47', 'admin', 'deleteSysRoleEntity', 'com.sps.modules.sys.controller.SysRoleController.delete()', '[2,3,4,5,6,7,8]', '303', '127.0.0.1', '2018-03-07 17:47:08');
INSERT INTO `sys_log` VALUES ('48', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '32', '361', '127.0.0.1', '2018-03-07 17:49:25');
INSERT INTO `sys_log` VALUES ('49', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '33', '354', '127.0.0.1', '2018-03-07 17:49:32');
INSERT INTO `sys_log` VALUES ('50', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '34', '356', '127.0.0.1', '2018-03-07 17:49:38');
INSERT INTO `sys_log` VALUES ('51', 'admin', 'deleteSysMenuEntity', 'com.sps.modules.sys.controller.SysMenuController.delete()', '35', '354', '127.0.0.1', '2018-03-07 17:49:43');
INSERT INTO `sys_log` VALUES ('52', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":15,\"username\":\"yuyg\",\"password\":\"c3700d37354db4763c881a385b82121e455b1e9e64b77abbcc365c56f0f7c333\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"1358582114@qq.com\",\"mobile\":\"17512549923\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '485', '127.0.0.1', '2018-03-07 17:52:47');
INSERT INTO `sys_log` VALUES ('53', 'admin', 'deleteSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.delete()', '[15,14,12,13,11,10,9,8,7]', '298', '127.0.0.1', '2018-03-07 17:54:06');
INSERT INTO `sys_log` VALUES ('54', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":4,\"username\":\"wangyang\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"11223344@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '291', '127.0.0.1', '2018-03-07 17:54:48');
INSERT INTO `sys_log` VALUES ('55', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":4,\"username\":\"wangyang\",\"password\":\"c3700d37354db4763c881a385b82121e455b1e9e64b77abbcc365c56f0f7c333\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"11223344@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '289', '127.0.0.1', '2018-03-07 17:54:56');
INSERT INTO `sys_log` VALUES ('56', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":5,\"username\":\"zhangkx\",\"password\":\"c3700d37354db4763c881a385b82121e455b1e9e64b77abbcc365c56f0f7c333\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"11223344@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '293', '127.0.0.1', '2018-03-07 17:55:19');
INSERT INTO `sys_log` VALUES ('57', 'admin', 'updateSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.update()', '{\"userId\":6,\"username\":\"qilei\",\"password\":\"c3700d37354db4763c881a385b82121e455b1e9e64b77abbcc365c56f0f7c333\",\"salt\":\"7qapXqVYyVq0hwgAbg1W\",\"email\":\"1358582114@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 2, 2018 3:27:49 PM\"}', '315', '127.0.0.1', '2018-03-07 17:56:18');
INSERT INTO `sys_log` VALUES ('58', 'admin', 'saveSysUserEntity', 'com.sps.modules.sys.controller.SysUserController.save()', '{\"userId\":24,\"username\":\"yangxd\",\"password\":\"73f7d0ceca2d651a8434fa764e1c1127bacf47a301d06d5256ea486f4686ef3e\",\"salt\":\"473QsKI8VZrTO4fZyhnQ\",\"email\":\"11223344@qq.com\",\"mobile\":\"18888888888\",\"status\":1,\"roleIdList\":[],\"createUserId\":1,\"createTime\":\"Mar 7, 2018 6:01:59 PM\"}', '353', '127.0.0.1', '2018-03-07 18:01:59');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `perms` text,
  `type` int(11) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', 'sys', null, null, '0', 'fa fa-cog', '1');
INSERT INTO `sys_menu` VALUES ('2', '1', 'user', 'modules/sys/user.html', null, '1', 'fa fa-user', '1');
INSERT INTO `sys_menu` VALUES ('3', '1', 'role', 'modules/sys/role.html', null, '1', 'fa fa-user-secret', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', 'menu', 'modules/sys/menu.html', null, '1', 'fa fa-th-list', '3');
INSERT INTO `sys_menu` VALUES ('5', '1', 'SQL', 'druid/sql.html', null, '1', 'fa fa-bug', '4');
INSERT INTO `sys_menu` VALUES ('6', '2', 'list', null, 'sys:user:list,sys:user:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('7', '2', 'add', null, 'sys:user:save,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '2', 'update', null, 'sys:user:update,sys:role:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('9', '2', 'delete', null, 'sys:user:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '3', 'list', null, 'sys:role:list,sys:role:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '3', 'add', null, 'sys:role:save,sys:menu:list', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '3', 'update', null, 'sys:role:update,sys:menu:list', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '3', 'delete', null, 'sys:role:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '4', 'list', null, 'sys:menu:list,sys:menu:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '4', 'add', null, 'sys:menu:save,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '4', 'update', null, 'sys:menu:update,sys:menu:select', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '4', 'delete', null, 'sys:menu:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '1', 'log', 'modules/sys/log.html', 'sys:log:list', '1', 'fa fa-file-text-o', '7');
INSERT INTO `sys_menu` VALUES ('21', '6', 'list', null, 'sys:schedule:list,sys:schedule:info', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '6', 'add', null, 'sys:schedule:save', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '6', 'update', null, 'sys:schedule:update', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('24', '6', 'delete', null, 'sys:schedule:delete', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '6', 'pause', null, 'sys:schedule:pause', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('26', '6', 'resume', null, 'sys:schedule:resume', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('27', '6', 'run', null, 'sys:schedule:run', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('28', '6', 'log', null, 'sys:schedule:log', '2', null, '0');
INSERT INTO `sys_menu` VALUES ('29', '1', 'generator', 'modules/sys/generator.html', 'sys:generator:list,sys:generator:code', '1', 'fa fa-rocket', '8');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('9', 'test003', 'test003', '1', '2018-03-02 15:46:59');
INSERT INTO `sys_role` VALUES ('10', 'test003', 'test003', '1', '2018-03-02 15:46:59');
INSERT INTO `sys_role` VALUES ('11', 'test003', 'test003', '1', '2018-03-02 15:46:59');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `create_user_id` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '9ec9750e709431dad22365cabc5c625482e574c74adaebba7dd02f1129e4ce1d', 'YzcmCZNvbXocrsz9dm8e', null, null, '1', null, null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_token`;
CREATE TABLE `sys_user_token` (
  `user_id` int(10) NOT NULL,
  `token` varchar(200) NOT NULL,
  `expire_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_token
-- ----------------------------
INSERT INTO `sys_user_token` VALUES ('1', 'd7868026007c9d14e89c06b3ee1e71dc', '2018-03-17 02:08:13', '2018-03-16 14:08:13');
