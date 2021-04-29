/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : base

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 29/04/2021 23:14:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device`  (
  `device_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '设备编号',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备图片',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备名称',
  `specifications` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备类别',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备状态',
  `upt_act` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据状态（I插入 D删除 U更新）',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_id` int(0) NULL DEFAULT NULL COMMENT '创建人ID',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_id` int(0) NULL DEFAULT NULL COMMENT '更新人ID',
  `supplier_id` int(0) NULL DEFAULT NULL COMMENT '供应商id',
  `sys_user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`device_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES (1, 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1682050408,2246241836&fm=26&gp=0.jpg', '网络安全设备', 'DGD-180', '办公设备', '故障', 'U', '2021-04-25 21:25:57', NULL, NULL, NULL, 1, 48);
INSERT INTO `device` VALUES (2, 'https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=4075731522,2564604962&fm=199&app=68&f=JPEG?w=750&h=750&s=8AA27E238AAA528C1F30119E0100A0E2', '至强处理器', 'SK-1516', '办公设备', '故障', 'U', '2021-04-25 21:26:51', NULL, NULL, NULL, 2, 36);
INSERT INTO `device` VALUES (3, 'https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=806662246,1098827315&fm=199&app=68&f=JPEG?w=750&h=750&s=09A2E4125F1A7EC8027408D10200C0B2', 'Atom D525多网口软路由整机', 'GT800', '办公设备', '正常', NULL, '2021-04-25 21:29:58', NULL, NULL, NULL, 2, 36);

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '设备知识id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备知识标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备知识内容',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章作者',
  `upt_act` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据状态（I插入 D删除 U更新）',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_id` int(0) NULL DEFAULT NULL COMMENT '创建人ID',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_id` int(0) NULL DEFAULT NULL COMMENT '更新人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES (1, '网络安全设备', '网络安全设备包括IP协议密码机、安全路由器、线路密码机、防火墙等，广义的信息安全设备除了包括上述设备外，还包括密码芯片、加密卡、身份识别卡、电话密码机、传真密码机、异步数据密码机、安全服务器、安全加密套件、金融加密机/卡、安全中间件、公开密钥基础设施（PKI)系统、授权证书（CA)系统、安全操作系统、防病毒软件、网络/系统扫描系统、入侵检测系统、网络安全预警与审计系统等', '设备知识', 'hhg', 'U', '2021-04-25 21:17:12', NULL, NULL, NULL);
INSERT INTO `knowledge` VALUES (2, '什么是网络安全', '国际标准化组织（ISO）为计算机网络安全做如下定义：为数据处理系统建立和采用的技术和管理的安全保护，保护计算机硬件、软件和数据不因偶然和恶意的原因遭到破坏、更改和泄露。网络安全包括两个方面内容：一是网络系统的安全，二是网络信息的安全', '安全知识', 'hsa', 'U', '2021-04-25 21:17:16', NULL, NULL, NULL);
INSERT INTO `knowledge` VALUES (3, '路由器怎么使用', 'xdvsdvwrsbwrbdvadv', '安全知识', 'fsd', 'I', '2021-04-26 21:46:27', NULL, '2021-04-26 21:46:27', NULL);
INSERT INTO `knowledge` VALUES (4, 'rd来说明设备安全问题', '<p>我是来瞎说的啦</p>\n', '安全知识', 'zrd', 'I', '2021-04-29 22:33:04', NULL, '2021-04-29 22:33:04', NULL);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '申请单号',
  `applicant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '申请人',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '采购类型',
  `approval_sta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审批状态',
  `upt_act` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据状态（I插入 D删除 U更新）',
  `created_id` int(0) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_at` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '申请时间',
  `updated_id` int(0) NULL DEFAULT NULL COMMENT '更新人ID',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES (2, '小志', '路由', '进行中', NULL, NULL, '2021-04-27 20:49:32', NULL, NULL);
INSERT INTO `order` VALUES (3, '小张', '主机', '进行中', NULL, NULL, '2021-04-27 20:49:31', NULL, NULL);
INSERT INTO `order` VALUES (4, '老王', '显示器', '进行中', NULL, NULL, '2021-04-27 20:49:30', NULL, NULL);
INSERT INTO `order` VALUES (5, '李四', '鼠标', '进行中', NULL, NULL, '2021-04-27 20:49:29', NULL, NULL);
INSERT INTO `order` VALUES (6, '铁柱', '键盘', '已结束', NULL, NULL, '2021-04-27 20:49:26', NULL, NULL);
INSERT INTO `order` VALUES (7, '二妞', '主板', '已结束', NULL, NULL, '2021-04-27 20:49:24', NULL, NULL);
INSERT INTO `order` VALUES (8, '小明', 'U盘', '进行中', NULL, NULL, '2021-04-29 23:06:59', NULL, NULL);
INSERT INTO `order` VALUES (12, '超级管理员', '主机', '进行中', 'I', NULL, '2021-04-29 23:06:56', NULL, '2021-04-29 23:06:09');
INSERT INTO `order` VALUES (14, '超级管理员', '主机', '已结束', 'I', NULL, '2021-04-29 03:13:06', NULL, '2021-04-28 09:13:43');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `detail_id` int(0) NOT NULL AUTO_INCREMENT,
  `order_id` int(0) NULL DEFAULT NULL COMMENT '订单编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `count` int(0) NULL DEFAULT NULL,
  `price` int(0) NULL DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1, 2, '小米路由器', 5, 50, '小米');
INSERT INTO `order_detail` VALUES (2, 11, '小米主机', 5, 100, '小米');
INSERT INTO `order_detail` VALUES (3, 12, '小米显示器', 10, 500, '小米');
INSERT INTO `order_detail` VALUES (4, 12, '华为芯片', 2, 1000, '华为');
INSERT INTO `order_detail` VALUES (6, 14, '华为主机', 3, 122, '华为');
INSERT INTO `order_detail` VALUES (7, 14, '华为手机', 2, 111, '华为');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `supplier_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '供应商id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `telphone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商联系电话',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商地址',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '备注',
  PRIMARY KEY (`supplier_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, '思科网络系统公司', '19596125471', '徐州市云龙区亚东小区', '市场的');
INSERT INTO `supplier` VALUES (2, '开创视界科技', '13700278265', '陕西省西安市未央区草滩八路中心小区', '封测');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `path` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路径',
  `component` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件标识',
  `meta_title` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `meta_icon` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `parent_id` int(0) NULL DEFAULT NULL COMMENT '父菜单ID',
  `hidden` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '(0显示，1隐藏)',
  `keep_alive` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '(0不缓存，1缓存)',
  `upt_act` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据状态（I插入 D删除 U更新）',
  `created_id` int(0) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_id` int(0) NULL DEFAULT NULL COMMENT '更新人ID',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '/sys', 'Layout', 'sys', '系统管理', 'set', 2, 0, '0', '0', 'I', NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (2, '/sys/user', 'sys/User', 'User', '用户管理', 'user', 3, 1, '0', '1', 'U', NULL, NULL, 36, '2021-04-01 10:38:52');
INSERT INTO `sys_menu` VALUES (3, '/sys/role', 'sys/Role', 'Role', '角色管理', 'role', 4, 1, '0', '1', 'I', NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (4, '/sys/menu', 'sys/Menu', 'Menu', '菜单管理', 'menu', 5, 1, '0', '1', 'I', NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (5, '/', 'Layout', 'home', '首页', 'home', 0, 0, '0', '0', 'I', NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (6, '/', 'index/Index', 'Home', '首页', 'home', 1, 5, '0', '0', 'I', NULL, NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES (52, '/device', 'Layout', 'dev', '设备管理', 'course', 9, 0, '0', '0', 'U', 36, '2021-04-25 19:45:54', 36, '2021-04-25 19:51:07');
INSERT INTO `sys_menu` VALUES (53, '/device/dev', 'device/Device', 'device', '设备台账', 'record', 9, 52, '0', '0', 'D', 36, '2021-04-25 19:50:22', 36, '2021-04-25 19:58:25');
INSERT INTO `sys_menu` VALUES (54, '/device/dev', 'device/Device', 'dev', '设备台账', 'record', 9, 52, '0', '0', 'U', 36, '2021-04-25 20:01:12', 36, '2021-04-25 20:08:10');
INSERT INTO `sys_menu` VALUES (55, '/device/order', 'device/Order', 'buyOrder', '订单管理', 'record', 9, 52, '0', '0', 'D', 36, '2021-04-25 20:06:46', 36, '2021-04-29 23:12:24');
INSERT INTO `sys_menu` VALUES (56, '/knowledge', 'Layout', 'knowledge', '知识库', 'course', 9, 0, '0', '0', 'D', 36, '2021-04-25 20:15:30', 36, '2021-04-26 20:44:08');
INSERT INTO `sys_menu` VALUES (57, '/knowledge/detail', 'knowledge/Knowledge', 'knowledgeStore', '设备资料', 'menu', 9, 56, '0', '0', 'D', 36, '2021-04-25 20:18:40', 36, '2021-04-25 20:20:10');
INSERT INTO `sys_menu` VALUES (58, '/knowledge/knowledge', 'knowledge/Knowledge', 'knowledge', '知识库', 'menu', 9, 56, '0', '0', 'D', 36, '2021-04-25 20:21:48', 36, '2021-04-26 20:44:04');
INSERT INTO `sys_menu` VALUES (59, '/device/supplier', 'device/Supplier', 'supplier', '供应商管理', 'course', 9, 55, '0', '0', 'D', 36, '2021-04-25 20:27:53', 36, '2021-04-25 20:33:23');
INSERT INTO `sys_menu` VALUES (60, '/device/supplier', 'device/Supplier', 'supplier', '供应商管理', 'menu', 9, 52, '0', '0', 'I', 36, '2021-04-25 20:34:54', 36, '2021-04-25 20:34:54');
INSERT INTO `sys_menu` VALUES (61, '/knowledge', 'knowledge/Data', 'data', '设备资料', 'timetable', 9, 56, '0', '0', 'D', 36, '2021-04-25 20:41:08', 36, '2021-04-26 20:42:07');
INSERT INTO `sys_menu` VALUES (62, '/device/repair', 'device/RepairList', 'repair', '维修工单', 'set', 9, 52, '0', '0', 'U', 36, '2021-04-25 20:54:02', 36, '2021-04-25 20:54:51');
INSERT INTO `sys_menu` VALUES (63, '/approval', 'Layout', 'approval', '订单管理', 'timetable', 9, 0, '0', '0', 'U', 36, '2021-04-26 19:40:34', 36, '2021-04-29 23:08:25');
INSERT INTO `sys_menu` VALUES (64, '/device/order', 'device/Order', 'buyOrder', '订单管理', 'user', 9, 63, '0', '0', 'U', 36, '2021-04-26 19:41:47', 36, '2021-04-29 23:11:03');
INSERT INTO `sys_menu` VALUES (65, '/approval/order', 'approval/orderApproval', 'order', '订单审批', 'user', 9, 63, '0', '0', 'U', 36, '2021-04-26 19:42:53', 36, '2021-04-26 19:46:45');
INSERT INTO `sys_menu` VALUES (66, '/knowledge', 'Layout', 'knowledge', '知识库', 'course', 9, 0, '0', '0', 'I', 36, '2021-04-26 20:44:50', 36, '2021-04-26 20:44:50');
INSERT INTO `sys_menu` VALUES (67, '/knowledge/knowledge', 'knowledge/Knowledge', 'knowledge', '知识库', 'menu', 9, 66, '0', '0', 'I', 36, '2021-04-26 20:45:27', 36, '2021-04-26 20:45:27');
INSERT INTO `sys_menu` VALUES (68, '/knowledge/detail', 'knowledge/Detail', 'Detail', '详情', 'record', 9, 66, '1', '0', 'I', 36, '2021-04-29 21:56:41', 36, '2021-04-29 21:56:41');
INSERT INTO `sys_menu` VALUES (69, '/knowledge/add', 'knowledge/AddData', 'add', '添加', 'record', 9, 66, '1', '0', 'I', 36, '2021-04-29 21:58:19', 36, '2021-04-29 21:58:19');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `code` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色代码',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `upt_act` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据状态（I插入 D删除 U更新）',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `created_id` int(0) NULL DEFAULT NULL COMMENT '创建人ID',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `updated_id` int(0) NULL DEFAULT NULL COMMENT '更新人ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'ADMIN', 1, 'I', '2020-12-07 16:08:19', 1, '2020-12-07 16:08:22', 1);
INSERT INTO `sys_role` VALUES (9, 'll', 'w', NULL, 'I', '2021-04-24 14:43:51', 36, '2021-04-24 14:43:51', 36);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` int(0) NOT NULL COMMENT '角色ID',
  `menu_id` int(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统【角色】【菜单】表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 3);
INSERT INTO `sys_role_menu` VALUES (1, 4);
INSERT INTO `sys_role_menu` VALUES (1, 5);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 52);
INSERT INTO `sys_role_menu` VALUES (1, 54);
INSERT INTO `sys_role_menu` VALUES (1, 55);
INSERT INTO `sys_role_menu` VALUES (1, 60);
INSERT INTO `sys_role_menu` VALUES (1, 62);
INSERT INTO `sys_role_menu` VALUES (1, 63);
INSERT INTO `sys_role_menu` VALUES (1, 64);
INSERT INTO `sys_role_menu` VALUES (1, 65);
INSERT INTO `sys_role_menu` VALUES (1, 66);
INSERT INTO `sys_role_menu` VALUES (1, 67);
INSERT INTO `sys_role_menu` VALUES (1, 68);
INSERT INTO `sys_role_menu` VALUES (1, 69);
INSERT INTO `sys_role_menu` VALUES (9, 5);
INSERT INTO `sys_role_menu` VALUES (9, 6);
INSERT INTO `sys_role_menu` VALUES (9, 52);
INSERT INTO `sys_role_menu` VALUES (9, 54);
INSERT INTO `sys_role_menu` VALUES (9, 63);
INSERT INTO `sys_role_menu` VALUES (9, 64);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '物理主键',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账号',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `device_id` int(0) NULL DEFAULT NULL,
  `upt_act` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '数据状态（I插入 D删除 U更新）',
  `created_id` int(0) NULL DEFAULT NULL COMMENT '创建人ID',
  `created_at` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_id` int(0) NULL DEFAULT NULL COMMENT '更新人ID',
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (36, 'admin', '超级管理员', 'e4589e240e8c2c60bd8ee6b99e1411bb', NULL, NULL, NULL, 'U', 31, '2020-12-17 15:07:35', 36, '2021-01-02 12:07:42');
INSERT INTO `sys_user` VALUES (48, '你的男孩', '管理员', '743c4d81b35239313001ae8e8a142acc', '1', '17350279166', NULL, 'I', 36, '2021-04-28 00:36:56', 36, '2021-04-28 00:36:56');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` int(0) NOT NULL COMMENT '用户ID',
  `role_id` int(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统【用户】【角色】关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (36, 1);
INSERT INTO `sys_user_role` VALUES (48, 9);

SET FOREIGN_KEY_CHECKS = 1;
