/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm7sval
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm7sval` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm7sval`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617895504268 DEFAULT CHARSET=utf8 COMMENT='联系管理员';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (81,'2021-04-08 23:11:41',1,1,'提问1','回复1',1),(82,'2021-04-08 23:11:41',2,2,'提问2','回复2',2),(83,'2021-04-08 23:11:41',3,3,'提问3','回复3',3),(84,'2021-04-08 23:11:41',4,4,'提问4','回复4',4),(85,'2021-04-08 23:11:41',5,5,'提问5','回复5',5),(86,'2021-04-08 23:11:41',6,6,'提问6','回复6',6),(1617895504267,'2021-04-08 23:25:04',1617895350070,NULL,'11111111',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm7sval/upload/1617895211360.jfif'),(2,'picture2','http://localhost:8080/ssm7sval/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm7sval/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshugenzongzhuangtai` */

DROP TABLE IF EXISTS `discussshugenzongzhuangtai`;

CREATE TABLE `discussshugenzongzhuangtai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617895488458 DEFAULT CHARSET=utf8 COMMENT='树跟踪状态评论表';

/*Data for the table `discussshugenzongzhuangtai` */

insert  into `discussshugenzongzhuangtai`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-08 23:11:41',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-04-08 23:11:41',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-04-08 23:11:41',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-04-08 23:11:41',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-04-08 23:11:41',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-04-08 23:11:41',6,6,'用户名6','评论内容6','回复内容6'),(1617895488457,'2021-04-08 23:24:48',1617895112157,1617895350070,'191110360','1111','');

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
) ENGINE=InnoDB AUTO_INCREMENT=1617895570743 DEFAULT CHARSET=utf8 COMMENT='校友林交流';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (91,'2021-04-08 23:11:41','帖子标题1','<p>帖子内容1</p>',1,1,'用户名1','关闭'),(92,'2021-04-08 23:11:41','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-04-08 23:11:41','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-04-08 23:11:41','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-04-08 23:11:41','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-04-08 23:11:41','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1617895201388,'2021-04-08 23:20:00','标题','<p>内容</p><p>内容内容</p><p>内容</p><p>内容内容</p><p>内容</p><p><br></p>',NULL,1,'','开放'),(1617895547441,'2021-04-08 23:25:46','11111','111111',0,1617895350070,'191110360','开放'),(1617895558761,'2021-04-08 23:25:57','12222','2222',0,1617895350070,'191110360','开放'),(1617895565244,'2021-04-08 23:26:05',NULL,'222222222',1617895558761,1617895350070,'191110360',NULL),(1617895570742,'2021-04-08 23:26:10',NULL,'22',1617895565244,1617895350070,'191110360',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=1617895664242 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-04-08 23:11:41',1,'用户名1','留言内容1','回复内容1222222'),(122,'2021-04-08 23:11:41',2,'用户名2','留言内容2','回复内容2'),(123,'2021-04-08 23:11:41',3,'用户名3','留言内容3','回复内容3'),(125,'2021-04-08 23:11:41',5,'用户名5','留言内容5','回复内容5'),(126,'2021-04-08 23:11:41',6,'用户名6','留言内容6','回复内容6666\n6\n6\n6\n\n6\n6\n6'),(1617895664241,'2021-04-08 23:27:43',1617895350070,'191110360','111111111111','');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='校友林新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-08 23:11:41','标题1','简介1','http://localhost:8080/ssm7sval/upload/news_picture1.jpg','内容1'),(112,'2021-04-08 23:11:41','标题2','简介2','http://localhost:8080/ssm7sval/upload/news_picture2.jpg','内容2'),(113,'2021-04-08 23:11:41','标题3','简介3','http://localhost:8080/ssm7sval/upload/news_picture3.jpg','内容3'),(114,'2021-04-08 23:11:41','标题4','简介4','http://localhost:8080/ssm7sval/upload/news_picture4.jpg','内容4'),(115,'2021-04-08 23:11:41','标题5','简介5','http://localhost:8080/ssm7sval/upload/news_picture5.jpg','内容5'),(116,'2021-04-08 23:11:41','标题6','简介6','http://localhost:8080/ssm7sval/upload/news_picture6.jpg','内容6');

/*Table structure for table `shugenzongzhuangtai` */

DROP TABLE IF EXISTS `shugenzongzhuangtai`;

CREATE TABLE `shugenzongzhuangtai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shumubianhao` varchar(200) DEFAULT NULL COMMENT '树木编号',
  `shumumingcheng` varchar(200) DEFAULT NULL COMMENT '树木名称',
  `suoshuke` varchar(200) DEFAULT NULL COMMENT '所属科',
  `suoshumu` varchar(200) DEFAULT NULL COMMENT '所属目',
  `shumujiankangpinggu` longtext COMMENT '树木健康评估',
  `jinqitupianshangchuan` varchar(200) DEFAULT NULL COMMENT '近期图片上传',
  `shuling` varchar(200) DEFAULT NULL COMMENT '数龄',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `nianjizhuanye` varchar(200) DEFAULT NULL COMMENT '年级专业',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617895643062 DEFAULT CHARSET=utf8 COMMENT='树跟踪状态';

/*Data for the table `shugenzongzhuangtai` */

insert  into `shugenzongzhuangtai`(`id`,`addtime`,`shumubianhao`,`shumumingcheng`,`suoshuke`,`suoshumu`,`shumujiankangpinggu`,`jinqitupianshangchuan`,`shuling`,`zhanghao`,`nianjizhuanye`,`xingming`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (51,'2021-04-08 23:11:41','树木编号1','树木名称1','所属科1','所属目1','树木健康评估1','http://localhost:8080/ssm7sval/upload/1617895077577.jfif','半个月','账号1','年级专业1','姓名1',1,1,'2021-04-08 23:26:21',4),(52,'2021-04-08 23:11:41','树木编号2','树木名称2','所属科2','所属目2','树木健康评估2','http://localhost:8080/ssm7sval/upload/shugenzongzhuangtai_jinqitupianshangchuan2.jpg','半个月','账号2','年级专业2','姓名2',2,2,'2021-04-08 23:11:41',2),(53,'2021-04-08 23:11:41','树木编号3','树木名称3','所属科3','所属目3','树木健康评估3','http://localhost:8080/ssm7sval/upload/shugenzongzhuangtai_jinqitupianshangchuan3.jpg','半个月','账号3','年级专业3','姓名3',3,3,'2021-04-08 23:11:41',3),(54,'2021-04-08 23:11:41','树木编号4','树木名称4','所属科4','所属目4','树木健康评估4','http://localhost:8080/ssm7sval/upload/shugenzongzhuangtai_jinqitupianshangchuan4.jpg','半个月','账号4','年级专业4','姓名4',4,4,'2021-04-08 23:11:41',4),(55,'2021-04-08 23:11:41','树木编号5','树木名称5','所属科5','所属目5','树木健康评估5','http://localhost:8080/ssm7sval/upload/shugenzongzhuangtai_jinqitupianshangchuan5.jpg','半个月','账号5','年级专业5','姓名5',5,5,'2021-04-08 23:11:41',5),(56,'2021-04-08 23:11:41','树木编号6','树木名称6','所属科6','所属目6','树木健康评估6','http://localhost:8080/ssm7sval/upload/shugenzongzhuangtai_jinqitupianshangchuan6.jpg','半个月','账号6','年级专业6','姓名6',6,6,'2021-04-08 23:11:41',6),(1617895112157,'2021-04-08 23:18:31','1617894978777','树','科2','222','1','http://localhost:8080/ssm7sval/upload/1617895094227.jfif,http://localhost:8080/ssm7sval/upload/1617895098118.jfif','一年','11','1','1',1,0,'2021-04-08 23:24:50',2),(1617895114021,'2021-04-08 23:18:33','1617894978777','树','科2','222','1','http://localhost:8080/ssm7sval/upload/1617895094227.jfif,http://localhost:8080/ssm7sval/upload/1617895098118.jfif','一年','11','1','1',0,0,NULL,0),(1617895643061,'2021-04-08 23:27:22','树木编号3','树木名称333','科3','所属目333','11111111111','http://localhost:8080/ssm7sval/upload/1617895634507.jfif','三个月','191110360','计算机','张san',0,0,'2021-04-08 23:27:32',1);

/*Table structure for table `shumu` */

DROP TABLE IF EXISTS `shumu`;

CREATE TABLE `shumu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shumubianhao` varchar(200) DEFAULT NULL COMMENT '树木编号',
  `shumumingcheng` varchar(200) DEFAULT NULL COMMENT '树木名称',
  `suoshuke` varchar(200) DEFAULT NULL COMMENT '所属科',
  `suoshumu` varchar(200) DEFAULT NULL COMMENT '所属目',
  `shumuxiangqing` longtext COMMENT '树木详情',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `shumutupian` varchar(200) DEFAULT NULL COMMENT '树木图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shumubianhao` (`shumubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617895006623 DEFAULT CHARSET=utf8 COMMENT='树木';

/*Data for the table `shumu` */

insert  into `shumu`(`id`,`addtime`,`shumubianhao`,`shumumingcheng`,`suoshuke`,`suoshumu`,`shumuxiangqing`,`zhuyishixiang`,`shumutupian`) values (21,'2021-04-08 23:11:41','树木编号1','树木名称11111','科3','所属目1111','<p>树木详情1</p><p>树木详情v树木详情</p><p>树木详情</p><p>树木详情树木详情</p><p>树木详情树木详情</p><p>树木详情</p>','注意事项1111','http://localhost:8080/ssm7sval/upload/1617894916087.jfif'),(22,'2021-04-08 23:11:41','树木编号2','树木名称22222','科2','所属目22222','<p>树木详情2</p><p>2</p><p>2</p><p>2</p><p>2</p><p><br></p><p>2</p>','注意事项222222','http://localhost:8080/ssm7sval/upload/1617894890020.jfif'),(23,'2021-04-08 23:11:41','树木编号3','树木名称333','科3','所属目333','<p>树木详情3</p><p>树木详情3树木详情3</p><p>树木详情3</p><p>树木详情3树木详情3</p><p>3</p><p>3</p><p>3</p><p>3</p><p>3</p><p><br></p><p>3</p><p>3</p>','注意事项33','http://localhost:8080/ssm7sval/upload/1617894946233.jfif'),(24,'2021-04-08 23:11:41','树木编号4','树木名称4','所属科4','所属目4','树木详情4','注意事项4','http://localhost:8080/ssm7sval/upload/shumu_shumutupian4.jpg'),(25,'2021-04-08 23:11:41','树木编号5','树木名称5','所属科5','所属目5','树木详情5','注意事项5','http://localhost:8080/ssm7sval/upload/shumu_shumutupian5.jpg'),(1617895006622,'2021-04-08 23:16:45','1617894978777','树','科2','222','<p>22</p><p><br></p><p>2</p><p>2</p><p>2</p><p>2</p><p>2</p><p>2</p><p>2</p><p><br></p><p>2</p><p>2</p>','22222222','http://localhost:8080/ssm7sval/upload/1617894997513.jfif');

/*Table structure for table `shumujuankuan` */

DROP TABLE IF EXISTS `shumujuankuan`;

CREATE TABLE `shumujuankuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `juankuangonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '捐款公告标题',
  `juankuanneirong` varchar(200) DEFAULT NULL COMMENT '捐款内容',
  `juankuanjiage` varchar(200) DEFAULT NULL COMMENT '捐款价格',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `nianjizhuanye` varchar(200) DEFAULT NULL COMMENT '年级专业',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='树木捐款';

/*Data for the table `shumujuankuan` */

insert  into `shumujuankuan`(`id`,`addtime`,`juankuangonggaobiaoti`,`juankuanneirong`,`juankuanjiage`,`fengmiantu`,`zhanghao`,`nianjizhuanye`,`xingming`,`sfsh`,`shhf`,`ispay`) values (71,'2021-04-08 23:11:41','捐款公告标题1','捐款内容1','捐款价格1','http://localhost:8080/ssm7sval/upload/shumujuankuan_fengmiantu1.jpg','账号1','年级专业1','姓名1','是','','已支付'),(72,'2021-04-08 23:11:41','捐款公告标题2','捐款内容2','捐款价格2','http://localhost:8080/ssm7sval/upload/shumujuankuan_fengmiantu2.jpg','账号2','年级专业2','姓名2','是','','未支付'),(73,'2021-04-08 23:11:41','捐款公告标题3','捐款内容3','捐款价格3','http://localhost:8080/ssm7sval/upload/shumujuankuan_fengmiantu3.jpg','账号3','年级专业3','姓名3','是','','未支付'),(74,'2021-04-08 23:11:41','捐款公告标题4','捐款内容4','捐款价格4','http://localhost:8080/ssm7sval/upload/shumujuankuan_fengmiantu4.jpg','账号4','年级专业4','姓名4','是','','未支付'),(75,'2021-04-08 23:11:41','捐款公告标题5','捐款内容5','捐款价格5','http://localhost:8080/ssm7sval/upload/shumujuankuan_fengmiantu5.jpg','账号5','年级专业5','姓名5','是','','未支付'),(76,'2021-04-08 23:11:41','捐款公告标题6','捐款内容6','捐款价格6','http://localhost:8080/ssm7sval/upload/shumujuankuan_fengmiantu6.jpg','账号6','年级专业6','姓名6','是','','未支付');

/*Table structure for table `shumulingqu` */

DROP TABLE IF EXISTS `shumulingqu`;

CREATE TABLE `shumulingqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shumubianhao` varchar(200) DEFAULT NULL COMMENT '树木编号',
  `suoshumu` varchar(200) DEFAULT NULL COMMENT '所属目',
  `suoshuke` varchar(200) DEFAULT NULL COMMENT '所属科',
  `shumutupian` varchar(200) DEFAULT NULL COMMENT '树木图片',
  `shumumingcheng` varchar(200) DEFAULT NULL COMMENT '树木名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `nianjizhuanye` varchar(200) DEFAULT NULL COMMENT '年级专业',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617895404510 DEFAULT CHARSET=utf8 COMMENT='树木领取';

/*Data for the table `shumulingqu` */

insert  into `shumulingqu`(`id`,`addtime`,`shumubianhao`,`suoshumu`,`suoshuke`,`shumutupian`,`shumumingcheng`,`zhanghao`,`nianjizhuanye`,`xingming`,`sfsh`,`shhf`) values (41,'2021-04-08 23:11:41','树木编号1','所属目1','所属科1','http://localhost:8080/ssm7sval/upload/shumulingqu_shumutupian1.jpg','树木名称1','账号1','年级专业1','姓名1','是',''),(42,'2021-04-08 23:11:41','树木编号2','所属目2','所属科2','http://localhost:8080/ssm7sval/upload/shumulingqu_shumutupian2.jpg','树木名称2','账号2','年级专业2','姓名2','否','不满足条件'),(43,'2021-04-08 23:11:41','树木编号3','所属目3','所属科3','http://localhost:8080/ssm7sval/upload/shumulingqu_shumutupian3.jpg','树木名称3','账号3','年级专业3','姓名3','是',''),(44,'2021-04-08 23:11:41','树木编号4','所属目4','所属科4','http://localhost:8080/ssm7sval/upload/shumulingqu_shumutupian4.jpg','树木名称4','账号4','年级专业4','姓名4','是',''),(45,'2021-04-08 23:11:41','树木编号5','所属目5','所属科5','http://localhost:8080/ssm7sval/upload/shumulingqu_shumutupian5.jpg','树木名称5','账号5','年级专业5','姓名5','是',''),(46,'2021-04-08 23:11:41','树木编号6','所属目6','所属科6','http://localhost:8080/ssm7sval/upload/shumulingqu_shumutupian6.jpg','树木名称6','账号6','年级专业6','姓名6','是',''),(1617895404509,'2021-04-08 23:23:23','树木编号1','所属目1111','科3','http://localhost:8080/ssm7sval/upload/1617894916087.jfif','树木名称11111','191110360','计算机','张san','','');

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

/*Table structure for table `suoshuke` */

DROP TABLE IF EXISTS `suoshuke`;

CREATE TABLE `suoshuke` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ke` varchar(200) DEFAULT NULL COMMENT '科',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='所属科';

/*Data for the table `suoshuke` */

insert  into `suoshuke`(`id`,`addtime`,`ke`) values (31,'2021-04-08 23:11:41','科1111'),(32,'2021-04-08 23:11:41','科2'),(33,'2021-04-08 23:11:41','科3'),(34,'2021-04-08 23:11:41','科4'),(35,'2021-04-08 23:11:41','科5'),(36,'2021-04-08 23:11:41','科6');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','xaqfhbi8m1j8hb9nabnctdzj7oa76e80','2021-04-08 23:13:23','2021-04-09 00:13:23'),(2,1617895350070,'191110360','yonghu','用户','q16phpwlnmcp4u6b6pif9lm75wntp0rn','2021-04-08 23:22:39','2021-04-09 00:22:39');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-08 23:11:41');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nianjizhuanye` varchar(200) DEFAULT NULL COMMENT '年级专业',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617895350071 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`nianjizhuanye`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`) values (11,'2021-04-08 23:11:41','用户1','123456','年级专业1','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm7sval/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-08 23:11:41','用户2','123456','年级专业2','姓名2','女','13823888882','773890002@qq.com','http://localhost:8080/ssm7sval/upload/yonghu_zhaopian2.jpg'),(14,'2021-04-08 23:11:41','用户4','123456','年级专业4','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm7sval/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-08 23:11:41','用户5','123456','年级专业5','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm7sval/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-08 23:11:41','用户6','123456','年级专业6','姓名6','女','13823888886','773890006@qq.com','http://localhost:8080/ssm7sval/upload/yonghu_zhaopian6.jpg'),(1617895350070,'2021-04-08 23:22:30','191110360','123456','计算机','张san','男','12345612345','123@qq.com','http://localhost:8080/ssm7sval/upload/1617895444873.jpeg');

/*Table structure for table `yonghuxinxitongji` */

DROP TABLE IF EXISTS `yonghuxinxitongji`;

CREATE TABLE `yonghuxinxitongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `nianjizhuanye` varchar(200) DEFAULT NULL COMMENT '年级专业',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `renyangshumubianhao` varchar(200) DEFAULT NULL COMMENT '认养树木编号',
  `juankuanzongjine` int(11) DEFAULT NULL COMMENT '捐款总金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='用户信息统计';

/*Data for the table `yonghuxinxitongji` */

insert  into `yonghuxinxitongji`(`id`,`addtime`,`zhanghao`,`nianjizhuanye`,`xingming`,`renyangshumubianhao`,`juankuanzongjine`) values (61,'2021-04-08 23:11:41','账号1','年级专业1','姓名1','认养树木编号1',1),(62,'2021-04-08 23:11:41','账号2','年级专业2','姓名2','认养树木编号2',2),(63,'2021-04-08 23:11:41','账号3','年级专业3','姓名3','认养树木编号3',3),(64,'2021-04-08 23:11:41','账号4','年级专业4','姓名4','认养树木编号4',4),(65,'2021-04-08 23:11:41','账号5','年级专业5','姓名5','认养树木编号5',5),(66,'2021-04-08 23:11:41','账号6','年级专业6','姓名6','认养树木编号6',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
