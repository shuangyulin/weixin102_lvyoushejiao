/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm4v081
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm4v081` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm4v081`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm4v081/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm4v081/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm4v081/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussfenxiangquan` */

DROP TABLE IF EXISTS `discussfenxiangquan`;

CREATE TABLE `discussfenxiangquan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='分享圈评论表';

/*Data for the table `discussfenxiangquan` */

insert  into `discussfenxiangquan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-03-30 17:39:41',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-03-30 17:39:41',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-03-30 17:39:41',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-03-30 17:39:41',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-03-30 17:39:41',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-03-30 17:39:41',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussjingdiantuijian` */

DROP TABLE IF EXISTS `discussjingdiantuijian`;

CREATE TABLE `discussjingdiantuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='景点推荐评论表';

/*Data for the table `discussjingdiantuijian` */

insert  into `discussjingdiantuijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (111,'2021-03-30 17:39:41',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-30 17:39:41',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-30 17:39:41',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-30 17:39:41',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-30 17:39:41',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-30 17:39:41',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussjiudiantuijian` */

DROP TABLE IF EXISTS `discussjiudiantuijian`;

CREATE TABLE `discussjiudiantuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='酒店推荐评论表';

/*Data for the table `discussjiudiantuijian` */

insert  into `discussjiudiantuijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-03-30 17:39:41',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-30 17:39:41',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-30 17:39:41',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-30 17:39:41',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-30 17:39:41',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-30 17:39:41',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussmeishituijian` */

DROP TABLE IF EXISTS `discussmeishituijian`;

CREATE TABLE `discussmeishituijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='美食推荐评论表';

/*Data for the table `discussmeishituijian` */

insert  into `discussmeishituijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-03-30 17:39:41',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-30 17:39:41',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-30 17:39:41',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-30 17:39:41',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-30 17:39:41',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-30 17:39:41',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discusszhoubiantuijian` */

DROP TABLE IF EXISTS `discusszhoubiantuijian`;

CREATE TABLE `discusszhoubiantuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='周边推荐评论表';

/*Data for the table `discusszhoubiantuijian` */

insert  into `discusszhoubiantuijian`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (141,'2021-03-30 17:39:41',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-30 17:39:41',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-30 17:39:41',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-30 17:39:41',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-30 17:39:41',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-30 17:39:41',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fangyichaxun` */

DROP TABLE IF EXISTS `fangyichaxun`;

CREATE TABLE `fangyichaxun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `fengxiandengji` varchar(200) DEFAULT NULL COMMENT '风险等级',
  `lvyoujianyi` varchar(200) DEFAULT NULL COMMENT '旅游建议',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='防疫查询';

/*Data for the table `fangyichaxun` */

insert  into `fangyichaxun`(`id`,`addtime`,`didian`,`fengxiandengji`,`lvyoujianyi`) values (51,'2021-03-30 17:39:41','地点1','一级','旅游建议1'),(52,'2021-03-30 17:39:41','地点2','一级','旅游建议2'),(53,'2021-03-30 17:39:41','地点3','一级','旅游建议3'),(54,'2021-03-30 17:39:41','地点4','一级','旅游建议4'),(55,'2021-03-30 17:39:41','地点5','一级','旅游建议5'),(56,'2021-03-30 17:39:41','地点6','一级','旅游建议6');

/*Table structure for table `fenxiangquan` */

DROP TABLE IF EXISTS `fenxiangquan`;

CREATE TABLE `fenxiangquan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `fenxiangneirong` longtext COMMENT '分享内容',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='分享圈';

/*Data for the table `fenxiangquan` */

insert  into `fenxiangquan`(`id`,`addtime`,`biaoti`,`zhanghao`,`xingming`,`fenxiangneirong`,`fengmian`,`thumbsupnum`,`crazilynum`) values (91,'2021-03-30 17:39:41','标题1','账号1','姓名1','分享内容1','http://localhost:8080/ssm4v081/upload/fenxiangquan_fengmian1.jpg',1,1),(92,'2021-03-30 17:39:41','标题2','账号2','姓名2','分享内容2','http://localhost:8080/ssm4v081/upload/fenxiangquan_fengmian2.jpg',2,2),(93,'2021-03-30 17:39:41','标题3','账号3','姓名3','分享内容3','http://localhost:8080/ssm4v081/upload/fenxiangquan_fengmian3.jpg',3,3),(94,'2021-03-30 17:39:41','标题4','账号4','姓名4','分享内容4','http://localhost:8080/ssm4v081/upload/fenxiangquan_fengmian4.jpg',4,4),(95,'2021-03-30 17:39:41','标题5','账号5','姓名5','分享内容5','http://localhost:8080/ssm4v081/upload/fenxiangquan_fengmian5.jpg',5,5),(96,'2021-03-30 17:39:41','标题6','账号6','姓名6','分享内容6','http://localhost:8080/ssm4v081/upload/fenxiangquan_fengmian6.jpg',6,6);

/*Table structure for table `jingdianfenlei` */

DROP TABLE IF EXISTS `jingdianfenlei`;

CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='景点分类';

/*Data for the table `jingdianfenlei` */

insert  into `jingdianfenlei`(`id`,`addtime`,`leibie`) values (41,'2021-03-30 17:39:41','类别1'),(42,'2021-03-30 17:39:41','类别2'),(43,'2021-03-30 17:39:41','类别3'),(44,'2021-03-30 17:39:41','类别4'),(45,'2021-03-30 17:39:41','类别5'),(46,'2021-03-30 17:39:41','类别6');

/*Table structure for table `jingdiantuijian` */

DROP TABLE IF EXISTS `jingdiantuijian`;

CREATE TABLE `jingdiantuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianleibie` varchar(200) DEFAULT NULL COMMENT '景点类别',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `jingdiantupian` varchar(200) DEFAULT NULL COMMENT '景点图片',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='景点推荐';

/*Data for the table `jingdiantuijian` */

insert  into `jingdiantuijian`(`id`,`addtime`,`diqu`,`jingdianmingcheng`,`jingdianleibie`,`jingdiandizhi`,`jingdiantupian`,`jingdianjieshao`,`thumbsupnum`,`crazilynum`) values (31,'2021-03-30 17:39:41','地区1','景点名称1','景点类别1','景点地址1','http://localhost:8080/ssm4v081/upload/jingdiantuijian_jingdiantupian1.jpg','景点介绍1',1,1),(32,'2021-03-30 17:39:41','地区2','景点名称2','景点类别2','景点地址2','http://localhost:8080/ssm4v081/upload/jingdiantuijian_jingdiantupian2.jpg','景点介绍2',2,2),(33,'2021-03-30 17:39:41','地区3','景点名称3','景点类别3','景点地址3','http://localhost:8080/ssm4v081/upload/jingdiantuijian_jingdiantupian3.jpg','景点介绍3',3,3),(34,'2021-03-30 17:39:41','地区4','景点名称4','景点类别4','景点地址4','http://localhost:8080/ssm4v081/upload/jingdiantuijian_jingdiantupian4.jpg','景点介绍4',4,4),(35,'2021-03-30 17:39:41','地区5','景点名称5','景点类别5','景点地址5','http://localhost:8080/ssm4v081/upload/jingdiantuijian_jingdiantupian5.jpg','景点介绍5',5,5),(36,'2021-03-30 17:39:41','地区6','景点名称6','景点类别6','景点地址6','http://localhost:8080/ssm4v081/upload/jingdiantuijian_jingdiantupian6.jpg','景点介绍6',6,6);

/*Table structure for table `jiudiantuijian` */

DROP TABLE IF EXISTS `jiudiantuijian`;

CREATE TABLE `jiudiantuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `jiudianjieshao` longtext COMMENT '酒店介绍',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='酒店推荐';

/*Data for the table `jiudiantuijian` */

insert  into `jiudiantuijian`(`id`,`addtime`,`diqu`,`jiudianmingcheng`,`jiudiandizhi`,`zhaopian`,`jiudianjieshao`,`lianxifangshi`,`thumbsupnum`,`crazilynum`) values (71,'2021-03-30 17:39:41','地区1','酒店名称1','酒店地址1','http://localhost:8080/ssm4v081/upload/jiudiantuijian_zhaopian1.jpg','酒店介绍1','联系方式1',1,1),(72,'2021-03-30 17:39:41','地区2','酒店名称2','酒店地址2','http://localhost:8080/ssm4v081/upload/jiudiantuijian_zhaopian2.jpg','酒店介绍2','联系方式2',2,2),(73,'2021-03-30 17:39:41','地区3','酒店名称3','酒店地址3','http://localhost:8080/ssm4v081/upload/jiudiantuijian_zhaopian3.jpg','酒店介绍3','联系方式3',3,3),(74,'2021-03-30 17:39:41','地区4','酒店名称4','酒店地址4','http://localhost:8080/ssm4v081/upload/jiudiantuijian_zhaopian4.jpg','酒店介绍4','联系方式4',4,4),(75,'2021-03-30 17:39:41','地区5','酒店名称5','酒店地址5','http://localhost:8080/ssm4v081/upload/jiudiantuijian_zhaopian5.jpg','酒店介绍5','联系方式5',5,5),(76,'2021-03-30 17:39:41','地区6','酒店名称6','酒店地址6','http://localhost:8080/ssm4v081/upload/jiudiantuijian_zhaopian6.jpg','酒店介绍6','联系方式6',6,6);

/*Table structure for table `meiriqiandao` */

DROP TABLE IF EXISTS `meiriqiandao`;

CREATE TABLE `meiriqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `leibie` varchar(200) DEFAULT NULL COMMENT '类别',
  `shijian` date DEFAULT NULL COMMENT '时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617097294904 DEFAULT CHARSET=utf8 COMMENT='每日签到';

/*Data for the table `meiriqiandao` */

insert  into `meiriqiandao`(`id`,`addtime`,`bianhao`,`zhanghao`,`xingming`,`leibie`,`shijian`,`userid`) values (21,'2021-03-30 17:39:41','编号1','账号1','姓名1','签到','2021-03-30',1),(22,'2021-03-30 17:39:41','编号2','账号2','姓名2','签到','2021-03-30',2),(23,'2021-03-30 17:39:41','编号3','账号3','姓名3','签到','2021-03-30',3),(24,'2021-03-30 17:39:41','编号4','账号4','姓名4','签到','2021-03-30',4),(25,'2021-03-30 17:39:41','编号5','账号5','姓名5','签到','2021-03-30',5),(26,'2021-03-30 17:39:41','编号6','账号6','姓名6','签到','2021-03-30',6),(1617097294903,'2021-03-30 17:41:34','1617097291498','用户1','姓名1','签到','2021-03-30',11);

/*Table structure for table `meishituijian` */

DROP TABLE IF EXISTS `meishituijian`;

CREATE TABLE `meishituijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `shiwumingcheng` varchar(200) DEFAULT NULL COMMENT '食物名称',
  `shiwujianjie` longtext COMMENT '食物简介',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='美食推荐';

/*Data for the table `meishituijian` */

insert  into `meishituijian`(`id`,`addtime`,`diqu`,`shiwumingcheng`,`shiwujianjie`,`zhaopian`,`thumbsupnum`,`crazilynum`) values (61,'2021-03-30 17:39:41','地区1','食物名称1','食物简介1','http://localhost:8080/ssm4v081/upload/meishituijian_zhaopian1.jpg',1,1),(62,'2021-03-30 17:39:41','地区2','食物名称2','食物简介2','http://localhost:8080/ssm4v081/upload/meishituijian_zhaopian2.jpg',2,2),(63,'2021-03-30 17:39:41','地区3','食物名称3','食物简介3','http://localhost:8080/ssm4v081/upload/meishituijian_zhaopian3.jpg',3,3),(64,'2021-03-30 17:39:41','地区4','食物名称4','食物简介4','http://localhost:8080/ssm4v081/upload/meishituijian_zhaopian4.jpg',4,4),(65,'2021-03-30 17:39:41','地区5','食物名称5','食物简介5','http://localhost:8080/ssm4v081/upload/meishituijian_zhaopian5.jpg',5,5),(66,'2021-03-30 17:39:41','地区6','食物名称6','食物简介6','http://localhost:8080/ssm4v081/upload/meishituijian_zhaopian6.jpg',6,6);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','02ouq6wnf8ft2bp5lu31j3ojwzhwg66j','2021-03-30 17:41:27','2021-03-30 18:41:28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-30 17:39:41');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`shenfenzheng`,`zhaopian`) values (11,'2021-03-30 17:39:40','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm4v081/upload/yonghu_zhaopian1.jpg'),(12,'2021-03-30 17:39:41','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm4v081/upload/yonghu_zhaopian2.jpg'),(13,'2021-03-30 17:39:41','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm4v081/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-30 17:39:41','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm4v081/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-30 17:39:41','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm4v081/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-30 17:39:41','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm4v081/upload/yonghu_zhaopian6.jpg');

/*Table structure for table `zhoubiantuijian` */

DROP TABLE IF EXISTS `zhoubiantuijian`;

CREATE TABLE `zhoubiantuijian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdiandizhi` varchar(200) DEFAULT NULL COMMENT '景点地址',
  `zhoubianmingcheng` varchar(200) DEFAULT NULL COMMENT '周边名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `tuijianliyou` longtext COMMENT '推荐理由',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='周边推荐';

/*Data for the table `zhoubiantuijian` */

insert  into `zhoubiantuijian`(`id`,`addtime`,`jingdianmingcheng`,`jingdiandizhi`,`zhoubianmingcheng`,`tupian`,`tuijianliyou`,`thumbsupnum`,`crazilynum`) values (81,'2021-03-30 17:39:41','景点名称1','景点地址1','周边名称1','http://localhost:8080/ssm4v081/upload/zhoubiantuijian_tupian1.jpg','推荐理由1',1,1),(82,'2021-03-30 17:39:41','景点名称2','景点地址2','周边名称2','http://localhost:8080/ssm4v081/upload/zhoubiantuijian_tupian2.jpg','推荐理由2',2,2),(83,'2021-03-30 17:39:41','景点名称3','景点地址3','周边名称3','http://localhost:8080/ssm4v081/upload/zhoubiantuijian_tupian3.jpg','推荐理由3',3,3),(84,'2021-03-30 17:39:41','景点名称4','景点地址4','周边名称4','http://localhost:8080/ssm4v081/upload/zhoubiantuijian_tupian4.jpg','推荐理由4',4,4),(85,'2021-03-30 17:39:41','景点名称5','景点地址5','周边名称5','http://localhost:8080/ssm4v081/upload/zhoubiantuijian_tupian5.jpg','推荐理由5',5,5),(86,'2021-03-30 17:39:41','景点名称6','景点地址6','周边名称6','http://localhost:8080/ssm4v081/upload/zhoubiantuijian_tupian6.jpg','推荐理由6',6,6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
