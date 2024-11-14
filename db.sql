/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmqh048
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmqh048` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmqh048`;

/*Table structure for table `baoxiuxinxi` */

DROP TABLE IF EXISTS `baoxiuxinxi`;

CREATE TABLE `baoxiuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiubianhao` varchar(200) DEFAULT NULL COMMENT '报修编号',
  `sheshimingcheng` varchar(200) NOT NULL COMMENT '设施名称',
  `baoxiuneirong` longtext COMMENT '报修内容',
  `baoxiuriqi` date DEFAULT NULL COMMENT '报修日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baoxiubianhao` (`baoxiubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='报修信息';

/*Data for the table `baoxiuxinxi` */

insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`sfsh`,`shhf`) values (61,'2021-05-09 10:59:29','报修编号1','设施名称1','报修内容1','2021-05-09','账号1','姓名1','手机1','楼房号1','是','');
insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`sfsh`,`shhf`) values (62,'2021-05-09 10:59:29','报修编号2','设施名称2','报修内容2','2021-05-09','账号2','姓名2','手机2','楼房号2','是','');
insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`sfsh`,`shhf`) values (63,'2021-05-09 10:59:29','报修编号3','设施名称3','报修内容3','2021-05-09','账号3','姓名3','手机3','楼房号3','是','');
insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`sfsh`,`shhf`) values (64,'2021-05-09 10:59:29','报修编号4','设施名称4','报修内容4','2021-05-09','账号4','姓名4','手机4','楼房号4','是','');
insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`sfsh`,`shhf`) values (65,'2021-05-09 10:59:29','报修编号5','设施名称5','报修内容5','2021-05-09','账号5','姓名5','手机5','楼房号5','是','');
insert  into `baoxiuxinxi`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`baoxiuneirong`,`baoxiuriqi`,`zhanghao`,`xingming`,`shouji`,`loufanghao`,`sfsh`,`shhf`) values (66,'2021-05-09 10:59:29','报修编号6','设施名称6','报修内容6','2021-05-09','账号6','姓名6','手机6','楼房号6','是','');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmqh048/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmqh048/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmqh048/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussfangyuanxinxi` */

DROP TABLE IF EXISTS `discussfangyuanxinxi`;

CREATE TABLE `discussfangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='房源信息评论表';

/*Data for the table `discussfangyuanxinxi` */

insert  into `discussfangyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-05-09 10:59:29',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussfangyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-05-09 10:59:29',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussfangyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-05-09 10:59:29',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussfangyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-05-09 10:59:29',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussfangyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-05-09 10:59:29',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussfangyuanxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-05-09 10:59:29',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `fangyuanxinxi` */

DROP TABLE IF EXISTS `fangyuanxinxi`;

CREATE TABLE `fangyuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `fangwuhuxing` varchar(200) DEFAULT NULL COMMENT '房屋户型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shifouchushou` varchar(200) DEFAULT NULL COMMENT '是否出售',
  `chushoujiage` float DEFAULT NULL COMMENT '出售价格',
  `mianji` varchar(200) DEFAULT NULL COMMENT '面积',
  `fangwushebei` longtext COMMENT '房屋设备',
  `fangyuanxiangqing` longtext COMMENT '房源详情',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='房源信息';

/*Data for the table `fangyuanxinxi` */

insert  into `fangyuanxinxi`(`id`,`addtime`,`loufanghao`,`fangwuhuxing`,`tupian`,`shifouchushou`,`chushoujiage`,`mianji`,`fangwushebei`,`fangyuanxiangqing`,`fabushijian`,`zhanghao`,`xingming`,`shouji`,`clicktime`,`clicknum`) values (51,'2021-05-09 10:59:29','楼房号1','房屋户型1','http://localhost:8080/ssmqh048/upload/fangyuanxinxi_tupian1.jpg','是',1,'面积1','房屋设备1','房源详情1','2021-05-09','账号1','姓名1','手机1','2021-05-09 10:59:29',1);
insert  into `fangyuanxinxi`(`id`,`addtime`,`loufanghao`,`fangwuhuxing`,`tupian`,`shifouchushou`,`chushoujiage`,`mianji`,`fangwushebei`,`fangyuanxiangqing`,`fabushijian`,`zhanghao`,`xingming`,`shouji`,`clicktime`,`clicknum`) values (52,'2021-05-09 10:59:29','楼房号2','房屋户型2','http://localhost:8080/ssmqh048/upload/fangyuanxinxi_tupian2.jpg','是',2,'面积2','房屋设备2','房源详情2','2021-05-09','账号2','姓名2','手机2','2021-05-09 10:59:29',2);
insert  into `fangyuanxinxi`(`id`,`addtime`,`loufanghao`,`fangwuhuxing`,`tupian`,`shifouchushou`,`chushoujiage`,`mianji`,`fangwushebei`,`fangyuanxiangqing`,`fabushijian`,`zhanghao`,`xingming`,`shouji`,`clicktime`,`clicknum`) values (53,'2021-05-09 10:59:29','楼房号3','房屋户型3','http://localhost:8080/ssmqh048/upload/fangyuanxinxi_tupian3.jpg','是',3,'面积3','房屋设备3','房源详情3','2021-05-09','账号3','姓名3','手机3','2021-05-09 10:59:29',3);
insert  into `fangyuanxinxi`(`id`,`addtime`,`loufanghao`,`fangwuhuxing`,`tupian`,`shifouchushou`,`chushoujiage`,`mianji`,`fangwushebei`,`fangyuanxiangqing`,`fabushijian`,`zhanghao`,`xingming`,`shouji`,`clicktime`,`clicknum`) values (54,'2021-05-09 10:59:29','楼房号4','房屋户型4','http://localhost:8080/ssmqh048/upload/fangyuanxinxi_tupian4.jpg','是',4,'面积4','房屋设备4','房源详情4','2021-05-09','账号4','姓名4','手机4','2021-05-09 10:59:29',4);
insert  into `fangyuanxinxi`(`id`,`addtime`,`loufanghao`,`fangwuhuxing`,`tupian`,`shifouchushou`,`chushoujiage`,`mianji`,`fangwushebei`,`fangyuanxiangqing`,`fabushijian`,`zhanghao`,`xingming`,`shouji`,`clicktime`,`clicknum`) values (55,'2021-05-09 10:59:29','楼房号5','房屋户型5','http://localhost:8080/ssmqh048/upload/fangyuanxinxi_tupian5.jpg','是',5,'面积5','房屋设备5','房源详情5','2021-05-09','账号5','姓名5','手机5','2021-05-09 10:59:29',5);
insert  into `fangyuanxinxi`(`id`,`addtime`,`loufanghao`,`fangwuhuxing`,`tupian`,`shifouchushou`,`chushoujiage`,`mianji`,`fangwushebei`,`fangyuanxiangqing`,`fabushijian`,`zhanghao`,`xingming`,`shouji`,`clicktime`,`clicknum`) values (56,'2021-05-09 10:59:29','楼房号6','房屋户型6','http://localhost:8080/ssmqh048/upload/fangyuanxinxi_tupian6.jpg','是',6,'面积6','房屋设备6','房源详情6','2021-05-09','账号6','姓名6','手机6','2021-05-09 10:59:29',6);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='住户交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (91,'2021-05-09 10:59:29','帖子标题1','帖子内容1',1,1,'用户名1','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (92,'2021-05-09 10:59:29','帖子标题2','帖子内容2',2,2,'用户名2','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (93,'2021-05-09 10:59:29','帖子标题3','帖子内容3',3,3,'用户名3','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (94,'2021-05-09 10:59:29','帖子标题4','帖子内容4',4,4,'用户名4','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (95,'2021-05-09 10:59:29','帖子标题5','帖子内容5',5,5,'用户名5','开放');
insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (96,'2021-05-09 10:59:29','帖子标题6','帖子内容6',6,6,'用户名6','开放');

/*Table structure for table `jiaofeixinxi` */

DROP TABLE IF EXISTS `jiaofeixinxi`;

CREATE TABLE `jiaofeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  `jiaofeileixing` varchar(200) DEFAULT NULL COMMENT '缴费类型',
  `feiyong` float DEFAULT NULL COMMENT '费用',
  `jiaofeishijian` date DEFAULT NULL COMMENT '缴费时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='缴费信息';

/*Data for the table `jiaofeixinxi` */

insert  into `jiaofeixinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`loufanghao`,`jiaofeileixing`,`feiyong`,`jiaofeishijian`,`ispay`) values (41,'2021-05-09 10:59:29','账号1','姓名1','楼房号1','水费',1,'2021-05-09','未支付');
insert  into `jiaofeixinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`loufanghao`,`jiaofeileixing`,`feiyong`,`jiaofeishijian`,`ispay`) values (42,'2021-05-09 10:59:29','账号2','姓名2','楼房号2','水费',2,'2021-05-09','未支付');
insert  into `jiaofeixinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`loufanghao`,`jiaofeileixing`,`feiyong`,`jiaofeishijian`,`ispay`) values (43,'2021-05-09 10:59:29','账号3','姓名3','楼房号3','水费',3,'2021-05-09','未支付');
insert  into `jiaofeixinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`loufanghao`,`jiaofeileixing`,`feiyong`,`jiaofeishijian`,`ispay`) values (44,'2021-05-09 10:59:29','账号4','姓名4','楼房号4','水费',4,'2021-05-09','未支付');
insert  into `jiaofeixinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`loufanghao`,`jiaofeileixing`,`feiyong`,`jiaofeishijian`,`ispay`) values (45,'2021-05-09 10:59:29','账号5','姓名5','楼房号5','水费',5,'2021-05-09','未支付');
insert  into `jiaofeixinxi`(`id`,`addtime`,`zhanghao`,`xingming`,`loufanghao`,`jiaofeileixing`,`feiyong`,`jiaofeishijian`,`ispay`) values (46,'2021-05-09 10:59:29','账号6','姓名6','楼房号6','水费',6,'2021-05-09','未支付');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (111,'2021-05-09 10:59:29',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (112,'2021-05-09 10:59:29',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (113,'2021-05-09 10:59:29',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (114,'2021-05-09 10:59:29',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (115,'2021-05-09 10:59:29',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (116,'2021-05-09 10:59:29',6,'用户名6','留言内容6','回复内容6');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','c1hkmnj2q6lulukf5h7xysy9q4fro0rf','2021-05-09 11:01:19','2021-05-09 12:01:20');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-09 10:59:29');

/*Table structure for table `weixiuzhipai` */

DROP TABLE IF EXISTS `weixiuzhipai`;

CREATE TABLE `weixiuzhipai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baoxiubianhao` varchar(200) DEFAULT NULL COMMENT '报修编号',
  `sheshimingcheng` varchar(200) DEFAULT NULL COMMENT '设施名称',
  `jishurenyuan` varchar(200) DEFAULT NULL COMMENT '技术人员',
  `zhipaishijian` datetime DEFAULT NULL COMMENT '指派时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `loufanghao` varchar(200) DEFAULT NULL COMMENT '楼房号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='维修指派';

/*Data for the table `weixiuzhipai` */

insert  into `weixiuzhipai`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`jishurenyuan`,`zhipaishijian`,`zhanghao`,`xingming`,`loufanghao`) values (71,'2021-05-09 10:59:29','报修编号1','设施名称1','技术人员1','2021-05-09 10:59:29','账号1','姓名1','楼房号1');
insert  into `weixiuzhipai`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`jishurenyuan`,`zhipaishijian`,`zhanghao`,`xingming`,`loufanghao`) values (72,'2021-05-09 10:59:29','报修编号2','设施名称2','技术人员2','2021-05-09 10:59:29','账号2','姓名2','楼房号2');
insert  into `weixiuzhipai`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`jishurenyuan`,`zhipaishijian`,`zhanghao`,`xingming`,`loufanghao`) values (73,'2021-05-09 10:59:29','报修编号3','设施名称3','技术人员3','2021-05-09 10:59:29','账号3','姓名3','楼房号3');
insert  into `weixiuzhipai`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`jishurenyuan`,`zhipaishijian`,`zhanghao`,`xingming`,`loufanghao`) values (74,'2021-05-09 10:59:29','报修编号4','设施名称4','技术人员4','2021-05-09 10:59:29','账号4','姓名4','楼房号4');
insert  into `weixiuzhipai`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`jishurenyuan`,`zhipaishijian`,`zhanghao`,`xingming`,`loufanghao`) values (75,'2021-05-09 10:59:29','报修编号5','设施名称5','技术人员5','2021-05-09 10:59:29','账号5','姓名5','楼房号5');
insert  into `weixiuzhipai`(`id`,`addtime`,`baoxiubianhao`,`sheshimingcheng`,`jishurenyuan`,`zhipaishijian`,`zhanghao`,`xingming`,`loufanghao`) values (76,'2021-05-09 10:59:29','报修编号6','设施名称6','技术人员6','2021-05-09 10:59:29','账号6','姓名6','楼房号6');

/*Table structure for table `xiaoquhuanjing` */

DROP TABLE IF EXISTS `xiaoquhuanjing`;

CREATE TABLE `xiaoquhuanjing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `huanweigongren` varchar(200) DEFAULT NULL COMMENT '环卫工人',
  `zhipaishijian` datetime DEFAULT NULL COMMENT '指派时间',
  `dasaoquyu` varchar(200) DEFAULT NULL COMMENT '打扫区域',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='小区环境';

/*Data for the table `xiaoquhuanjing` */

insert  into `xiaoquhuanjing`(`id`,`addtime`,`biaoti`,`huanweigongren`,`zhipaishijian`,`dasaoquyu`,`beizhu`) values (81,'2021-05-09 10:59:29','标题1','环卫工人1','2021-05-09 10:59:29','打扫区域1','备注1');
insert  into `xiaoquhuanjing`(`id`,`addtime`,`biaoti`,`huanweigongren`,`zhipaishijian`,`dasaoquyu`,`beizhu`) values (82,'2021-05-09 10:59:29','标题2','环卫工人2','2021-05-09 10:59:29','打扫区域2','备注2');
insert  into `xiaoquhuanjing`(`id`,`addtime`,`biaoti`,`huanweigongren`,`zhipaishijian`,`dasaoquyu`,`beizhu`) values (83,'2021-05-09 10:59:29','标题3','环卫工人3','2021-05-09 10:59:29','打扫区域3','备注3');
insert  into `xiaoquhuanjing`(`id`,`addtime`,`biaoti`,`huanweigongren`,`zhipaishijian`,`dasaoquyu`,`beizhu`) values (84,'2021-05-09 10:59:29','标题4','环卫工人4','2021-05-09 10:59:29','打扫区域4','备注4');
insert  into `xiaoquhuanjing`(`id`,`addtime`,`biaoti`,`huanweigongren`,`zhipaishijian`,`dasaoquyu`,`beizhu`) values (85,'2021-05-09 10:59:29','标题5','环卫工人5','2021-05-09 10:59:29','打扫区域5','备注5');
insert  into `xiaoquhuanjing`(`id`,`addtime`,`biaoti`,`huanweigongren`,`zhipaishijian`,`dasaoquyu`,`beizhu`) values (86,'2021-05-09 10:59:29','标题6','环卫工人6','2021-05-09 10:59:29','打扫区域6','备注6');

/*Table structure for table `xiaoqutongzhi` */

DROP TABLE IF EXISTS `xiaoqutongzhi`;

CREATE TABLE `xiaoqutongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620529302544 DEFAULT CHARSET=utf8 COMMENT='小区通知';

/*Data for the table `xiaoqutongzhi` */

insert  into `xiaoqutongzhi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (31,'2021-05-09 10:59:29','标题1','简介1','内容1','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoqutongzhi_fengmian1.jpg','2021-05-09 10:59:29',1);
insert  into `xiaoqutongzhi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (32,'2021-05-09 10:59:29','标题2','简介2','内容2','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoqutongzhi_fengmian2.jpg','2021-05-09 10:59:29',2);
insert  into `xiaoqutongzhi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (33,'2021-05-09 10:59:29','标题3','简介3','内容3','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoqutongzhi_fengmian3.jpg','2021-05-09 10:59:29',3);
insert  into `xiaoqutongzhi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (34,'2021-05-09 10:59:29','标题4','简介4','内容4','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoqutongzhi_fengmian4.jpg','2021-05-09 10:59:29',4);
insert  into `xiaoqutongzhi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (35,'2021-05-09 10:59:29','标题5','简介5','内容5','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoqutongzhi_fengmian5.jpg','2021-05-09 10:59:29',5);
insert  into `xiaoqutongzhi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (36,'2021-05-09 10:59:29','标题6','简介6','内容6','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoqutongzhi_fengmian6.jpg','2021-05-09 10:59:29',6);
insert  into `xiaoqutongzhi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (1620529302543,'2021-05-09 11:01:41','地方电饭锅地方','发给好给对方给对方给对方给对方','<p>发地方给对方鬼地方个个公告跟嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎嘎过</p><p><img src=\"http://localhost:8080/ssmqh048/upload/1620529298477.jpg\"></p><p><br></p><p><img src=\"http://localhost:8080/ssmqh048/upload/1620529300221.jpg\"></p><p><br></p><p><br></p>','2021-05-09','http://localhost:8080/ssmqh048/upload/1620529291711.jpg','2021-05-09 11:01:54',3);

/*Table structure for table `xiaoquxinxi` */

DROP TABLE IF EXISTS `xiaoquxinxi`;

CREATE TABLE `xiaoquxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='小区信息';

/*Data for the table `xiaoquxinxi` */

insert  into `xiaoquxinxi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (11,'2021-05-09 10:59:29','标题1','简介1','内容1','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoquxinxi_fengmian1.jpg','2021-05-09 10:59:29',1);
insert  into `xiaoquxinxi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (12,'2021-05-09 10:59:29','标题2','简介2','内容2','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoquxinxi_fengmian2.jpg','2021-05-09 10:59:29',2);
insert  into `xiaoquxinxi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (13,'2021-05-09 10:59:29','标题3','简介3','内容3','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoquxinxi_fengmian3.jpg','2021-05-09 10:59:29',3);
insert  into `xiaoquxinxi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (14,'2021-05-09 10:59:29','标题4','简介4','内容4','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoquxinxi_fengmian4.jpg','2021-05-09 10:59:29',4);
insert  into `xiaoquxinxi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (15,'2021-05-09 10:59:29','标题5','简介5','内容5','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoquxinxi_fengmian5.jpg','2021-05-09 10:59:29',5);
insert  into `xiaoquxinxi`(`id`,`addtime`,`biaoti`,`jianjie`,`neirong`,`fabushijian`,`fengmian`,`clicktime`,`clicknum`) values (16,'2021-05-09 10:59:29','标题6','简介6','内容6','2021-05-09','http://localhost:8080/ssmqh048/upload/xiaoquxinxi_fengmian6.jpg','2021-05-09 10:59:29',6);

/*Table structure for table `zhuhu` */

DROP TABLE IF EXISTS `zhuhu`;

CREATE TABLE `zhuhu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `loufanghao` varchar(200) NOT NULL COMMENT '楼房号',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='住户';

/*Data for the table `zhuhu` */

insert  into `zhuhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`loufanghao`,`dizhi`) values (21,'2021-05-09 10:59:29','住户1','123456','姓名1',1,'男','13823888881','http://localhost:8080/ssmqh048/upload/zhuhu_zhaopian1.jpg','楼房号1','地址1');
insert  into `zhuhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`loufanghao`,`dizhi`) values (22,'2021-05-09 10:59:29','住户2','123456','姓名2',2,'男','13823888882','http://localhost:8080/ssmqh048/upload/zhuhu_zhaopian2.jpg','楼房号2','地址2');
insert  into `zhuhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`loufanghao`,`dizhi`) values (23,'2021-05-09 10:59:29','住户3','123456','姓名3',3,'男','13823888883','http://localhost:8080/ssmqh048/upload/zhuhu_zhaopian3.jpg','楼房号3','地址3');
insert  into `zhuhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`loufanghao`,`dizhi`) values (24,'2021-05-09 10:59:29','住户4','123456','姓名4',4,'男','13823888884','http://localhost:8080/ssmqh048/upload/zhuhu_zhaopian4.jpg','楼房号4','地址4');
insert  into `zhuhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`loufanghao`,`dizhi`) values (25,'2021-05-09 10:59:29','住户5','123456','姓名5',5,'男','13823888885','http://localhost:8080/ssmqh048/upload/zhuhu_zhaopian5.jpg','楼房号5','地址5');
insert  into `zhuhu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`loufanghao`,`dizhi`) values (26,'2021-05-09 10:59:29','住户6','123456','姓名6',6,'男','13823888886','http://localhost:8080/ssmqh048/upload/zhuhu_zhaopian6.jpg','楼房号6','地址6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
