/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.9-log : Database - crm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `t_crm_buyer` */

DROP TABLE IF EXISTS `t_crm_buyer`;

CREATE TABLE `t_crm_buyer` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `nick_name` varchar(20) NOT NULL COMMENT '昵称',
  `real_name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(20) DEFAULT NULL COMMENT '市',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `birth` datetime DEFAULT NULL COMMENT '出生日期',
  `consume_amount` decimal(10,0) NOT NULL COMMENT '消费金额',
  `buyer_type` varchar(20) DEFAULT NULL COMMENT '买家类型',
  `creater_id` varchar(64) DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(100) DEFAULT NULL COMMENT '创建人名',
  `updater_id` varchar(64) DEFAULT NULL COMMENT '更新人ID',
  `updater_name` varchar(100) DEFAULT NULL COMMENT '更新人名',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_crm_buyer` */

insert  into `t_crm_buyer`(`id`,`nick_name`,`real_name`,`mobile`,`province`,`city`,`sex`,`birth`,`consume_amount`,`buyer_type`,`creater_id`,`creater_name`,`updater_id`,`updater_name`,`create_date`,`update_date`) values ('e6fe2fc6ebec477d9462d4fd3187920f','蝌蚪妈妈','柯敏','13766285779','江西','吉安','女',NULL,'0',NULL,'77a896896e0c4348ba200ac912c89235','admin','77a896896e0c4348ba200ac912c89235','admin','2015-12-27 15:04:48','2015-12-27 15:04:48');

/*Table structure for table `t_crm_buyeraddress` */

DROP TABLE IF EXISTS `t_crm_buyeraddress`;

CREATE TABLE `t_crm_buyeraddress` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `buyer_id` varchar(64) NOT NULL COMMENT '买家ID',
  `receiver` varchar(20) NOT NULL COMMENT '收货人',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `address` varchar(500) NOT NULL COMMENT '地址',
  `is_default` tinyint(1) NOT NULL COMMENT '是否默认',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_crm_buyeraddress` */

/*Table structure for table `t_crm_order` */

DROP TABLE IF EXISTS `t_crm_order`;

CREATE TABLE `t_crm_order` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `buyer_id` varchar(64) NOT NULL COMMENT '买家ID',
  `nick_name` varchar(20) NOT NULL COMMENT '昵称',
  `real_name` varchar(20) NOT NULL COMMENT '姓名',
  `receiver` varchar(20) NOT NULL COMMENT '收货人',
  `mobile` varchar(20) NOT NULL COMMENT '手机',
  `address` varchar(500) NOT NULL COMMENT '地址',
  `pay_mode` varchar(200) NOT NULL COMMENT '付款方式',
  `post_type` varchar(100) NOT NULL COMMENT '快递类型',
  `post_no` varchar(200) NOT NULL COMMENT '快递单号',
  `status` varchar(100) NOT NULL COMMENT '状态',
  `post_free` tinyint(1) NOT NULL COMMENT '是否包邮',
  `goods_cost` decimal(10,0) NOT NULL COMMENT '宝贝成本',
  `goods_price` decimal(10,0) NOT NULL COMMENT '宝贝售价',
  `post_price` decimal(10,0) NOT NULL COMMENT '邮费',
  `sell_amount` decimal(10,0) NOT NULL COMMENT '销售金额',
  `cost_amount` decimal(10,0) NOT NULL COMMENT '成本金额',
  `profit_amount` decimal(10,0) NOT NULL COMMENT '利润',
  `creater_id` varchar(64) DEFAULT NULL COMMENT '创建人ID',
  `creater_name` varchar(100) DEFAULT NULL COMMENT '创建人名',
  `updater_id` varchar(64) DEFAULT NULL COMMENT '更新人ID',
  `updater_name` varchar(100) DEFAULT NULL COMMENT '更新人名',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_crm_order` */

/*Table structure for table `t_crm_orderitem` */

DROP TABLE IF EXISTS `t_crm_orderitem`;

CREATE TABLE `t_crm_orderitem` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `order_id` varchar(64) NOT NULL COMMENT '订单ID',
  `goods_name` varchar(200) NOT NULL COMMENT '商品',
  `format` varchar(100) NOT NULL COMMENT '规格',
  `goods_cost` decimal(10,0) NOT NULL COMMENT '宝贝成本',
  `goods_price` decimal(10,0) NOT NULL COMMENT '宝贝售价',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_crm_orderitem` */

/*Table structure for table `t_sys_dept` */

DROP TABLE IF EXISTS `t_sys_dept`;

CREATE TABLE `t_sys_dept` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `pid` varchar(64) DEFAULT NULL COMMENT '上级部门ID',
  `pname` varchar(100) DEFAULT NULL COMMENT '上级部门名称',
  `dep_order` int(11) DEFAULT NULL COMMENT '顺序',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_dept` */

/*Table structure for table `t_sys_message` */

DROP TABLE IF EXISTS `t_sys_message`;

CREATE TABLE `t_sys_message` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `from_id` varchar(64) DEFAULT NULL COMMENT '发送人ID',
  `from_name` varchar(100) DEFAULT NULL COMMENT '发送人',
  `to_id` varchar(64) DEFAULT NULL COMMENT '接收人ID',
  `to_name` varchar(100) DEFAULT NULL COMMENT '接收人',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `read_flag` tinyint(1) DEFAULT NULL COMMENT '已读',
  `url` varchar(500) DEFAULT NULL COMMENT '消息路径',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_message` */

/*Table structure for table `t_sys_oplog` */

DROP TABLE IF EXISTS `t_sys_oplog`;

CREATE TABLE `t_sys_oplog` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `title` varchar(500) DEFAULT NULL COMMENT '来文标题',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `real_name` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_oplog` */

insert  into `t_sys_oplog`(`id`,`title`,`content`,`user_name`,`real_name`,`create_date`,`update_date`) values ('1b7cc576b89b4d46be28b5e44b3c5834','修改资源','资源名称：买家地址','admin','admin','2015-12-26 23:37:20','2015-12-26 23:37:20'),('26d451f2016249458a7e1bdb8f3cc37e','角色赋权','角色名称：管理员','admin','admin','2015-12-26 23:37:54','2015-12-26 23:37:54'),('34bcc99d4ee54f0c8479c4ed2c0224ea','修改资源','资源名称：订单明细','admin','admin','2015-12-26 23:37:42','2015-12-26 23:37:42'),('4a7842163fc44a07bbfaede6a4f6dde5','修改资源','资源名称：买家','admin','admin','2015-12-26 23:37:09','2015-12-26 23:37:09'),('a01da03469f44874abc737d3883657a1','修改资源','资源名称：订单','admin','admin','2015-12-26 23:37:32','2015-12-26 23:37:32'),('ef3d4b6634994fa6a57d3e8735c7b535','添加资源','资源名称：买卖管理','admin','admin','2015-12-26 23:36:49','2015-12-26 23:36:49');

/*Table structure for table `t_sys_resource` */

DROP TABLE IF EXISTS `t_sys_resource`;

CREATE TABLE `t_sys_resource` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(500) DEFAULT NULL COMMENT '资源路径',
  `pid` varchar(64) DEFAULT NULL COMMENT '父ID',
  `summary` varchar(200) DEFAULT NULL COMMENT '介绍',
  `res_order` int(11) DEFAULT NULL COMMENT '顺序',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_resource` */

insert  into `t_sys_resource`(`id`,`name`,`url`,`pid`,`summary`,`res_order`,`create_date`,`update_date`) values ('23f9f5e30efb446e8b99828f231801bf','用户管理','admin/user/list','c8101bf7bf4f49439926fabc585e3aff',NULL,30,'2015-04-05 23:05:51','2015-04-05 23:05:51'),('25e11f9651cf431ca4ba8dc2b57733d9','角色管理','admin/role/list','c8101bf7bf4f49439926fabc585e3aff',NULL,40,'2015-04-05 23:06:15','2015-04-05 23:06:15'),('39d2a6c1f2884eaa802de67d6474af51','消息管理','admin/message/list ','c8101bf7bf4f49439926fabc585e3aff',NULL,80,'2015-12-07 10:16:54','2015-12-07 10:16:54'),('8bb0f9ad12cf4c9f8c15bf44bc7c5649','买家地址','admin/buyeraddress/list','a90118350b994ee18486b9c2610f0286',NULL,20,'2015-12-26 23:34:34','2015-12-26 23:34:34'),('9e0fb0bd541745b3849f0c0cc8f5e091','用户消息数','admin/usermsgcount/list','c8101bf7bf4f49439926fabc585e3aff',NULL,80,'2015-04-07 10:57:36','2015-04-07 10:57:36'),('9ed8b16e15d249a19a2a0d67d01691d8','订单明细','admin/orderitem/list','a90118350b994ee18486b9c2610f0286',NULL,40,'2015-12-26 23:34:34','2015-12-26 23:34:34'),('a90118350b994ee18486b9c2610f0286','买卖管理','/','root',NULL,10,'2015-12-26 23:36:49','2015-12-26 23:36:49'),('c0721cac2b02490c9b40ad590af5de66','部门管理','admin/dept/list','c8101bf7bf4f49439926fabc585e3aff',NULL,10,'2015-04-05 20:49:06','2015-04-05 20:49:06'),('c0a6c2746fa2410384f4cac6e73a0a79','操作日志','admin/oplog/list','c8101bf7bf4f49439926fabc585e3aff',NULL,90,'2015-04-22 10:01:47','2015-04-22 10:01:47'),('c6cc703ba14548e4b78f290db491c262','买家','admin/buyer/list','a90118350b994ee18486b9c2610f0286',NULL,10,'2015-12-26 23:34:34','2015-12-26 23:34:34'),('c8101bf7bf4f49439926fabc585e3aff','系统管理','/','root',NULL,20,'2015-04-05 20:47:58','2015-04-05 20:47:58'),('cd3c5be0608c4ae082558c5b9917ff30','订单','admin/order/list','a90118350b994ee18486b9c2610f0286',NULL,30,'2015-12-26 23:34:34','2015-12-26 23:34:34'),('ef6ffbc106d94ffd9594c337cd407103','资源管理','admin/resource/list','c8101bf7bf4f49439926fabc585e3aff',NULL,20,'2015-04-05 23:05:23','2015-04-05 23:05:23');

/*Table structure for table `t_sys_role` */

DROP TABLE IF EXISTS `t_sys_role`;

CREATE TABLE `t_sys_role` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `summary` varchar(200) DEFAULT NULL COMMENT '介绍',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_role` */

insert  into `t_sys_role`(`id`,`name`,`summary`,`create_date`,`update_date`) values ('25ea24d421684be987921a8579c790eb','管理员','管理员','2015-03-31 15:07:02','2015-03-31 15:07:02');

/*Table structure for table `t_sys_roleresource` */

DROP TABLE IF EXISTS `t_sys_roleresource`;

CREATE TABLE `t_sys_roleresource` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `role_id` varchar(64) DEFAULT NULL COMMENT '角色ID',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `resource_id` varchar(64) DEFAULT NULL COMMENT '资源ID',
  `resource_name` varchar(100) DEFAULT NULL COMMENT '资源名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_roleresource` */

insert  into `t_sys_roleresource`(`id`,`role_id`,`role_name`,`resource_id`,`resource_name`,`create_date`,`update_date`) values ('0de8c3ea9aac44fd844d0c174ea34f00','25ea24d421684be987921a8579c790eb','管理员','a90118350b994ee18486b9c2610f0286',NULL,'2015-12-26 23:37:53','2015-12-26 23:37:53'),('64f7f724d7584651874aa942042b62ed','25ea24d421684be987921a8579c790eb','管理员','ef6ffbc106d94ffd9594c337cd407103',NULL,'2015-12-26 23:37:54','2015-12-26 23:37:54'),('72736d9126a7406286af39b6c6959a97','25ea24d421684be987921a8579c790eb','管理员','cd3c5be0608c4ae082558c5b9917ff30',NULL,'2015-12-26 23:37:53','2015-12-26 23:37:53'),('78d27f3eff1c43d1aad9cf97a929a81f','25ea24d421684be987921a8579c790eb','管理员','25e11f9651cf431ca4ba8dc2b57733d9',NULL,'2015-12-26 23:37:54','2015-12-26 23:37:54'),('8a4b399bd85a41ef9d84b90c5b6e707d','25ea24d421684be987921a8579c790eb','管理员','9e0fb0bd541745b3849f0c0cc8f5e091',NULL,'2015-12-26 23:37:54','2015-12-26 23:37:54'),('9b133ed342b54396b385f18e4cf68a56','25ea24d421684be987921a8579c790eb','管理员','8bb0f9ad12cf4c9f8c15bf44bc7c5649',NULL,'2015-12-26 23:37:53','2015-12-26 23:37:53'),('a96656ccafea4e08861270078704f9e8','25ea24d421684be987921a8579c790eb','管理员','39d2a6c1f2884eaa802de67d6474af51',NULL,'2015-12-26 23:37:54','2015-12-26 23:37:54'),('ac96e605ca684103a72dc1e329d01431','25ea24d421684be987921a8579c790eb','管理员','c0721cac2b02490c9b40ad590af5de66',NULL,'2015-12-26 23:37:54','2015-12-26 23:37:54'),('bb589dffbe0045f6a4e237a9457043eb','25ea24d421684be987921a8579c790eb','管理员','c6cc703ba14548e4b78f290db491c262',NULL,'2015-12-26 23:37:53','2015-12-26 23:37:53'),('c8217c839cca451c982266c8ebf9ede3','25ea24d421684be987921a8579c790eb','管理员','9ed8b16e15d249a19a2a0d67d01691d8',NULL,'2015-12-26 23:37:53','2015-12-26 23:37:53'),('cf4fdc7993b0434c859f5c25d09485c5','25ea24d421684be987921a8579c790eb','管理员','23f9f5e30efb446e8b99828f231801bf',NULL,'2015-12-26 23:37:54','2015-12-26 23:37:54'),('d5ca0c25f8be42f6a5f50f4cec6bc4fb','25ea24d421684be987921a8579c790eb','管理员','c0a6c2746fa2410384f4cac6e73a0a79',NULL,'2015-12-26 23:37:54','2015-12-26 23:37:54'),('e419cb6b39334a2b828488d8f356b286','25ea24d421684be987921a8579c790eb','管理员','c8101bf7bf4f49439926fabc585e3aff',NULL,'2015-12-26 23:37:53','2015-12-26 23:37:53');

/*Table structure for table `t_sys_user` */

DROP TABLE IF EXISTS `t_sys_user`;

CREATE TABLE `t_sys_user` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `real_name` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `mobile` varchar(13) DEFAULT NULL COMMENT '手机号',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `dep_id` varchar(64) DEFAULT NULL COMMENT '部门ID',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE_USER_NAME` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_user` */

insert  into `t_sys_user`(`id`,`user_name`,`real_name`,`password`,`mobile`,`email`,`dep_id`,`create_date`,`update_date`) values ('77a896896e0c4348ba200ac912c89235','admin','admin','ceb4f32325eda6142bd65215f4c0f371','1','1','001','2015-04-08 21:42:55','2015-04-08 21:42:55');

/*Table structure for table `t_sys_usermsgcount` */

DROP TABLE IF EXISTS `t_sys_usermsgcount`;

CREATE TABLE `t_sys_usermsgcount` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `unread` int(11) DEFAULT NULL COMMENT '新消息数',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_usermsgcount` */

insert  into `t_sys_usermsgcount`(`id`,`user_id`,`unread`,`create_date`,`update_date`) values ('4ef319e206e345388695b77095481640','77a896896e0c4348ba200ac912c89235',0,'2015-04-08 21:42:55','2015-04-30 18:05:00');

/*Table structure for table `t_sys_userrole` */

DROP TABLE IF EXISTS `t_sys_userrole`;

CREATE TABLE `t_sys_userrole` (
  `id` varchar(64) NOT NULL COMMENT '主键',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `real_name` varchar(100) DEFAULT NULL COMMENT '真实姓名',
  `role_id` varchar(100) DEFAULT NULL COMMENT '角色ID',
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_date` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_userrole` */

insert  into `t_sys_userrole`(`id`,`user_id`,`real_name`,`role_id`,`role_name`,`create_date`,`update_date`) values ('a4ba223bc78f4ba899f3f118d0dac00a','77a896896e0c4348ba200ac912c89235','admin','25ea24d421684be987921a8579c790eb',NULL,'2015-12-07 10:07:11','2015-12-07 10:07:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
