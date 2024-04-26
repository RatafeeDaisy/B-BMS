-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: B_BMS
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `B_BMS`
--

/*!40000 DROP DATABASE IF EXISTS `B_BMS`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `B_BMS` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `B_BMS`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-03-08 01:33:15','入住须知11','ABOUT US','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢? 你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p>','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678239888550 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (91,'2023-03-08 01:33:15',1,1,'提问1','回复1',1),(92,'2023-03-08 01:33:15',2,2,'提问2','回复2',2),(93,'2023-03-08 01:33:15',3,3,'提问3','回复3',3),(94,'2023-03-08 01:33:15',4,4,'提问4','回复4',4),(95,'2023-03-08 01:33:15',5,5,'提问5','回复5',5),(96,'2023-03-08 01:33:15',6,6,'提问6','回复6',6),(97,'2023-03-08 01:33:15',7,7,'提问7','回复7',7),(98,'2023-03-08 01:33:15',8,8,'提问8','回复8',8),(1678239680296,'2023-03-08 01:41:19',1678239630655,NULL,'111111111111',NULL,0),(1678239888549,'2023-03-08 01:44:48',1678239630655,1,NULL,'222222222',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1678239862990.png'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjianleixing`
--

DROP TABLE IF EXISTS `fangjianleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianleixing` varchar(200) NOT NULL COMMENT '房间类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianleixing` (`fangjianleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1678239736245 DEFAULT CHARSET=utf8 COMMENT='房间类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjianleixing`
--

LOCK TABLES `fangjianleixing` WRITE;
/*!40000 ALTER TABLE `fangjianleixing` DISABLE KEYS */;
INSERT INTO `fangjianleixing` VALUES (31,'2023-03-08 01:33:15','大床房'),(32,'2023-03-08 01:33:15','房间类型2'),(33,'2023-03-08 01:33:15','房间类型3'),(34,'2023-03-08 01:33:15','房间类型4'),(35,'2023-03-08 01:33:15','房间类型5'),(36,'2023-03-08 01:33:15','房间类型6'),(37,'2023-03-08 01:33:15','房间类型7'),(38,'2023-03-08 01:33:15','房间类型8'),(1678239736244,'2023-03-08 01:42:15','双人房');
/*!40000 ALTER TABLE `fangjianleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjianxinxi`
--

DROP TABLE IF EXISTS `fangjianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianmingcheng` varchar(200) NOT NULL COMMENT '房间名称',
  `fangjianlouceng` varchar(200) DEFAULT NULL COMMENT '房间楼层',
  `fangjianleixing` varchar(200) NOT NULL COMMENT '房间类型',
  `fangjiantupian` longtext COMMENT '房间图片',
  `fangjiansheshi` varchar(200) DEFAULT NULL COMMENT '房间设施',
  `fangjianjiage` int(11) NOT NULL COMMENT '房间价格',
  `fangjianzhuangtai` varchar(200) NOT NULL COMMENT '房间状态',
  `fuwutese` varchar(200) DEFAULT NULL COMMENT '服务特色',
  `dingfangdianhua` varchar(200) DEFAULT NULL COMMENT '订房电话',
  `fangjianjieshao` longtext COMMENT '房间介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='房间信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjianxinxi`
--

LOCK TABLES `fangjianxinxi` WRITE;
/*!40000 ALTER TABLE `fangjianxinxi` DISABLE KEYS */;
INSERT INTO `fangjianxinxi` VALUES (41,'2023-03-08 01:33:15','房间名称1','房间楼层1','大床房','upload/fangjianxinxi_fangjiantupian1.jpg,upload/fangjianxinxi_fangjiantupian2.jpg,upload/fangjianxinxi_fangjiantupian3.jpg','房间设施1',198,'已预订','服务特色1','020-89819991','<p><img src=\"http://localhost:8080/B_BMS/upload/1678239515985.jpg\"></p><p>房间介绍1</p>','2023-03-08 09:42:32'),(42,'2023-03-08 01:33:15','房间名称2','房间楼层2','双人房','upload/fangjianxinxi_fangjiantupian2.jpg,upload/fangjianxinxi_fangjiantupian3.jpg,upload/fangjianxinxi_fangjiantupian4.jpg','房间设施2',298,'已预订','服务特色2','020-89819992','<p>房间介绍2</p>','2023-03-08 09:45:53'),(43,'2023-03-08 01:33:15','房间名称3','房间楼层3','大床房','upload/fangjianxinxi_fangjiantupian3.jpg,upload/fangjianxinxi_fangjiantupian4.jpg,upload/fangjianxinxi_fangjiantupian5.jpg','房间设施3',3,'已预订','服务特色3','020-89819993','<p>房间介绍3</p>','2023-03-08 09:40:47'),(44,'2023-03-08 01:33:15','房间名称4','房间楼层4','房间类型4','upload/fangjianxinxi_fangjiantupian4.jpg,upload/fangjianxinxi_fangjiantupian5.jpg,upload/fangjianxinxi_fangjiantupian6.jpg','房间设施4',4,'已预订','服务特色4','020-89819994','房间介绍4','2023-03-08 09:33:15'),(45,'2023-03-08 01:33:15','房间名称5','房间楼层5','房间类型5','upload/fangjianxinxi_fangjiantupian5.jpg,upload/fangjianxinxi_fangjiantupian6.jpg,upload/fangjianxinxi_fangjiantupian7.jpg','房间设施5',5,'已预订','服务特色5','020-89819995','房间介绍5','2023-03-08 09:33:15'),(46,'2023-03-08 01:33:15','房间名称6','房间楼层6','房间类型6','upload/fangjianxinxi_fangjiantupian6.jpg,upload/fangjianxinxi_fangjiantupian7.jpg,upload/fangjianxinxi_fangjiantupian8.jpg','房间设施6',6,'已预订','服务特色6','020-89819996','房间介绍6','2023-03-08 09:33:15'),(47,'2023-03-08 01:33:15','房间名称7','房间楼层7','房间类型7','upload/fangjianxinxi_fangjiantupian7.jpg,upload/fangjianxinxi_fangjiantupian8.jpg,upload/fangjianxinxi_fangjiantupian9.jpg','房间设施7',7,'已预订','服务特色7','020-89819997','房间介绍7','2023-03-08 09:33:15'),(48,'2023-03-08 01:33:15','房间名称8','房间楼层8','房间类型8','upload/fangjianxinxi_fangjiantupian8.jpg,upload/fangjianxinxi_fangjiantupian9.jpg,upload/fangjianxinxi_fangjiantupian10.jpg','房间设施8',8,'已预订','服务特色8','020-89819998','房间介绍8','2023-03-08 09:33:15');
/*!40000 ALTER TABLE `fangjianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `huiyuanleixing` varchar(200) DEFAULT NULL COMMENT '会员类型',
  `huiyuanzhekou` float DEFAULT NULL COMMENT '会员折扣',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1678239630656 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (21,'2023-03-08 01:33:15','用户名1','123456','姓名1','女','upload/huiyuan_touxiang1.jpg','13823888881','440300199101010001','黄金会员',0.8),(22,'2023-03-08 01:33:15','用户名2','123456','姓名2','男','upload/huiyuan_touxiang2.jpg','13823888882','440300199202020002','无会员',2),(23,'2023-03-08 01:33:15','用户名3','123456','姓名3','男','upload/huiyuan_touxiang3.jpg','13823888883','440300199303030003','无会员',3),(24,'2023-03-08 01:33:15','用户名4','123456','姓名4','男','upload/huiyuan_touxiang4.jpg','13823888884','440300199404040004','无会员',4),(25,'2023-03-08 01:33:15','用户名5','123456','姓名5','男','upload/huiyuan_touxiang5.jpg','13823888885','440300199505050005','无会员',5),(26,'2023-03-08 01:33:15','用户名6','123456','姓名6','男','upload/huiyuan_touxiang6.jpg','13823888886','440300199606060006','无会员',6),(27,'2023-03-08 01:33:15','用户名7','123456','姓名7','男','upload/huiyuan_touxiang7.jpg','13823888887','440300199707070007','无会员',7),(28,'2023-03-08 01:33:15','用户名8','123456','姓名8','男','upload/huiyuan_touxiang8.jpg','13823888888','440300199808080008','无会员',8),(1678239630655,'2023-03-08 01:40:30','111','111','小邹呀','女','upload/1678239618673.jpeg','16459878981','654598789845654598','无会员',1);
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuanleixing`
--

DROP TABLE IF EXISTS `huiyuanleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuanleixing` varchar(200) NOT NULL COMMENT '会员类型',
  `huiyuanzhekou` float NOT NULL COMMENT '会员折扣',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuanleixing` (`huiyuanleixing`),
  UNIQUE KEY `huiyuanzhekou` (`huiyuanzhekou`)
) ENGINE=InnoDB AUTO_INCREMENT=1678239715966 DEFAULT CHARSET=utf8 COMMENT='会员类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuanleixing`
--

LOCK TABLES `huiyuanleixing` WRITE;
/*!40000 ALTER TABLE `huiyuanleixing` DISABLE KEYS */;
INSERT INTO `huiyuanleixing` VALUES (11,'2023-03-08 01:33:15','无会员',1),(12,'2023-03-08 01:33:15','青铜会员',0.9),(13,'2023-03-08 01:33:15','会员类型3',3),(14,'2023-03-08 01:33:15','会员类型4',4),(15,'2023-03-08 01:33:15','会员类型5',5),(16,'2023-03-08 01:33:15','会员类型6',6),(17,'2023-03-08 01:33:15','会员类型7',7),(18,'2023-03-08 01:33:15','会员类型8',8),(1678239715965,'2023-03-08 01:41:55','黄金会员',0.8);
/*!40000 ALTER TABLE `huiyuanleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678239674146 DEFAULT CHARSET=utf8 COMMENT='投诉反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (141,'2023-03-08 01:33:15',1,'用户名1','upload/messages_avatarurl1.jpg','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(142,'2023-03-08 01:33:15',2,'用户名2','upload/messages_avatarurl2.jpg','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(143,'2023-03-08 01:33:15',3,'用户名3','upload/messages_avatarurl3.jpg','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(144,'2023-03-08 01:33:15',4,'用户名4','upload/messages_avatarurl4.jpg','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(145,'2023-03-08 01:33:15',5,'用户名5','upload/messages_avatarurl5.jpg','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(146,'2023-03-08 01:33:15',6,'用户名6','upload/messages_avatarurl6.jpg','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(147,'2023-03-08 01:33:15',7,'用户名7','upload/messages_avatarurl7.jpg','留言内容7','upload/messages_cpicture7.jpg','回复内容7','upload/messages_rpicture7.jpg'),(148,'2023-03-08 01:33:15',8,'用户名8','upload/messages_avatarurl8.jpg','留言内容8','upload/messages_cpicture8.jpg','回复内容8','upload/messages_rpicture8.jpg'),(1678239674145,'2023-03-08 01:41:13',1678239630655,'111','upload/1678239618673.jpeg','1212','upload/1678239672877.jpeg','222','upload/1678239844568.jpeg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2023-03-08 01:33:15','满怀热爱，奔赴山海：向着世界开启旅行新篇章','晨光熹微，窗外的啁啾鸟鸣婉转动听，恰好风过林梢，仲冬的暖阳穿过树叶的间隙在居室地板上形成细细碎碎的光斑，睁开朦胧的双眼，悄然间千帆过近，新元肇启，依依不舍地撕下2023年的最后一页日历，是时候和2024年轻轻招手、道一声问候。','upload/news_picture1.jpg','<p>晨光熹微，窗外的啁啾鸟鸣婉转动听，恰好风过林梢，仲冬的暖阳穿过树叶的间隙在居室地板上形成细细碎碎的光斑，睁开朦胧的双眼，悄然间千帆过近，新元肇启，依依不舍地撕下2023年的最后一页日历，是时候和2024年轻轻招手、道一声问候。美好新年，触及心灵、感怀思绪的诗与远方期待着你的到来，如诗如画、美轮美奂的迷人风景期盼着你的驻足，趁着旅行计划还未确定，不妨跟随我们的脚步，翻开这份为你特别制作的旅行心愿手册，在心中种下专属自己的愿望清单。</p><p>幽静古城的微风带着宁静的倦容撩动了尘封的思绪，抖落了一地的往事尘埃。新的一年，在吹不出褶皱的平静日子来一趟丽江吧，徒步于错落有致的斑驳瓦屋间，抬头是一汪幽蓝的碧玉苍穹，俯首是悠悠潮湿的青石板路，流浪直到夜色渐深，火红的灯笼挂上亭廊翘檐，璀璨的繁星点缀晴朗夜空，游人如潮的民谣广场光影闪烁，让灵魂得到洗涤、让心灵得到栖居；若是想要寻求自然美景的抚慰缱绻，不妨等到凌晨破晓，云雾缭绕的玉龙雪山会镀上一层耀眼夺目、婉转流畅的金光，日落金山的浪漫奇观定会让你毕生难忘。</p><p>纳西特色的雕栊木桁古朴沉静，古色古香的斜拱镂槛清幽雅致，绿树掩映，游廊曲折，简约的木制家具配备柔和的灯光营造出温馨典雅的居住氛围，居住在此的客人可以徜徉在室内温水游泳池和茶树水疗中心卸下疲惫、放松休憩，或者是登上民宿的顶层露天，俯瞰自然风光和楼台亭阁相得益彰的独有景致，感受丽江古城的独特魅力。此外，民宿还配备有七色光中餐厅和紫苏亚洲美食餐厅两个餐厅，分别供应纯正的云南美食与西式料理，充分满足不同游客的味蕾需求。</p>'),(112,'2023-03-08 01:33:15','加拿大国际冰冻发艺大赛 | 勇敢者的创意游戏','北极光穿透稀薄的云层散发出令人惊叹的五彩光芒，裹着绒绒毛发的雪橇犬排列着整齐的队伍狂奔在在厚厚的积雪层上，自然去雕饰的森林温泉若隐若现在水雾之中，依托于圣•艾利斯山脉的育空地区位于加拿大的西北角，属于极冷极寒之地。','upload/news_picture2.jpg','<p>北极光穿透稀薄的云层散发出令人惊叹的五彩光芒，裹着绒绒毛发的雪橇犬排列着整齐的队伍狂奔在在厚厚的积雪层上，自然去雕饰的森林温泉若隐若现在水雾之中，依托于圣•艾利斯山脉的育空地区位于加拿大的西北角，属于极冷极寒之地。这里的冬季难熬，但加拿大人善于寻找乐趣。从2011年开始，育空每年都会举办国际冰冻发艺大赛，参赛选手要利用完美的天气条件，于一分钟内让头发在零下20℃（零下4℉）的低温中冻结，同时为保持体温还需要浸泡在塔希尼温泉之中，拥有最奇特发型的人则能够赢得一张全年无限次使用塔基尼温泉的通行证。在漫长的冬季，旅客或可在树木繁茂的自然保护区内滑雪，或可在波光粼粼的湖面上滑冰，享受在冰封的大地上纵情奔驰的刺激；在短暂的五六月夏季，这里的气候非常适合旅客山地骑行、划独木舟以及徒步旅行，旅客可以远离喧嚣、尽情地探索未知世界。</p><p>入住温馨舒适的木屋客房后，喜爱户外运动的旅客可以参与皮划艇、山地骑行和雪鞋健行等活动，偏好自在养生的旅客则能够选择在露天热水浴缸中放松身心、悠闲休憩。如果想要参加国际冰冻发艺大赛，不妨在温泉中提前演练一下！</p>'),(113,'2023-03-08 01:33:15','中国·张家界 | 泉谭湍流任浮游','如果你厌倦了城市的喧嚣生活，想要在浮躁的社会中寻求一方净土，湖南省张家界鬼斧神工的山景风光会是一个犒劳辛苦一年的自己的绝佳选项.','upload/news_picture3.jpg','<p>如果你厌倦了城市的喧嚣生活，想要在浮躁的社会中寻求一方净土，湖南省张家界鬼斧神工的山景风光会是一个犒劳辛苦一年的自己的绝佳选项。奇特险峻的神鹰护鞭、拔地擎天的南山孤峰、巍峨磅礴的天然石桥、湍流疾激的宝峰飞瀑、峰峦叠翠的空中田园、秀美壮观的十里画廊……每一处美景天成的自然景点都会令人叹为观止，优质的清新空气会让照片无需滤镜也能充满通透感。无论是乘坐大巴车沿着盘旋的公路行进在千仞立壁之间，还是乘坐惊险刺激的观光索道俯瞰翻腾的云海，都能让你观赏到张家界的绝美风光、体会到旅行的独特乐趣。</p><p>一望无际的缤纷野花盛开绽放，清澈见底的小溪潺潺穿行流过，绿树簇拥的张家界山语品宿地处大隐于世的清风峡山涧幽谷之中，山环水抱，适合喜爱亲近自然的旅客。民宿十四间客房大部分均享有视野开阔、绿意葱茏的苍翠山景，星空和鸟语相伴，带给旅客清爽惬意的居住体验。值得一提的是，得益于优越的地理位置，民宿毗邻武陵源国家森林公园、杨家界风景区、天子山等著名景点，骑上民宿免费提供的自行车，即可顺着旖旎曲径纵享张家界的山林野趣、感受美丽乡间的安定和宁静。</p>'),(114,'2023-03-08 01:33:15','肆意撒欢：请收好这份节日指引！','当东非大草原上的野生动物为了充足的水源和食物向北迁徙，可可西里的藏羚羊正遵循着种群的集体记忆向南觅食；当南半球的澳洲人沿着夏日海岸潜入其中探索水下洞穴构成的迷宫，北半球的因纽特人正为躲避窗外刺骨的寒风依偎在冉冉火炉旁取暖；当东半球的人们伴着熹微的晨光踏上了工作的路程，西半球的民众还躺在柔软的床榻上安安稳稳地睡着......','upload/news_picture4.jpg','<p>当东非大草原上的野生动物为了充足的水源和食物向北迁徙，可可西里的藏羚羊正遵循着种群的集体记忆向南觅食；当南半球的澳洲人沿着夏日海岸潜入其中探索水下洞穴构成的迷宫，北半球的因纽特人正为躲避窗外刺骨的寒风依偎在冉冉火炉旁取暖；当东半球的人们伴着熹微的晨光踏上了工作的路程，西半球的民众还躺在柔软的床榻上安安稳稳地睡着......不同的地理环境造就了不同的自然风光，也孕育出了形态各异的风土人情。你是否会担心在旅途中无法融入当地生活？别烦恼，不妨跟随我们一起跟着节日去旅行！这可是体验不同民俗文化的最佳方式！</p><p>海浪拍打着塔拉戈纳的海滨巨石，悄悄唤起了这座千年老城。塔拉戈纳是加泰罗尼亚的一座港口城市，位于地中海的黄金海岸，盛产海鲜。作为伊比利亚半岛上第一座罗马古城，塔拉戈纳的一砖一木都承载着一段段悠久的历史，古罗马遗迹的尘埃之下掩埋着一段段古老的故事。每年的10月1日至2日，小镇会在塔拉科竞技场广场（Tàrraco Arena Plaza）举办为期两日的叠人塔大赛。所谓“叠人塔”，即通过力量和技巧把人一层层叠搭在一起，通常可以搭到7层左右，最高可达9层。此项运动据说起源于当地的一种舞蹈，对于团队协作能力有着很高的要求，是“团结、冷静、勇敢”的代名词，已被列入联合国教科文组织非物质文化遗产代表名录，声名远扬，吸引全球各地好奇的旅客慕名而来。除了观赏叠人塔表演，中世纪风格的建筑也是塔拉戈纳不容错过的特色，旅客可以参观高耸入云的塔拉戈纳大教堂、探访古罗马时期的沿海露天剧场遗址、前往萨玛公园（Parc Samà）享受片刻宁静，这里有风景如画的葡萄园、繁茂的橄榄树，漫步其中，说不定还能偶遇华丽多彩的孔雀。</p><p>坐落于地中海的黄金海岸，距离米拉克海滩只有不到一公里的距离。这家华丽的精品民宿配备户外游泳池、私人停车位、健身中心、花园和土耳其浴室，提供客房服务、24小时前台和免费Wi-Fi，供应美味的欧陆式美食。旅客可以一边呼吸着地中海带来的潮湿空气，一边观赏临近的历史古迹和海景。此外，该民宿地理位置便利，只需短暂步行，即可抵达叠人塔大赛举办地，想要亲身参与叠人塔大赛的旅客不妨前往民宿的健身中心锻炼一下力量和灵活性，为比赛提前做好准备。</p>'),(115,'2023-03-08 01:33:15','泰国猴子盛宴 | 专属猴子的“自助餐”庆典','山不在高，有仙则名；水不在深，有龙则灵。位于泰国北部的华富里始建于公元5世纪，以“猴子”闻名，有着“猴城”之称。在这里，猴子可以和人一样在马路上任意行走，自由自在的生活，从现实意义上真正实现人与动物的共居。','upload/news_picture5.jpg','<p>山不在高，有仙则名；水不在深，有龙则灵。位于泰国北部的华富里始建于公元5世纪，以“猴子”闻名，有着“猴城”之称。在这里，猴子可以和人一样在马路上任意行走，自由自在的生活，从现实意义上真正实现人与动物的共居。11月26日，泰国华富里镇的当地居民和远道而来的旅客齐聚一堂，参加一年一度的猴子盛宴。当天，居民们会准备为猴子准备丰盛的美食，其中包括色彩缤纷的水果、翠色欲滴的蔬菜和丰富多样的果汁，借此对于猴子为当地观光经济所做出的贡献表示感激和回馈，也祈求来年能有更加幸福的生活。旅客们可以在三峰塔这一数千只猴子的栖息地进行拍照打卡，届时该寺庙也会准备大量的水果供猴子们大快朵颐。徒步旅行是在华富里旅游的不二之选，旅客可以游览宏伟的寺庙、参观纳莱国王宫殿、体验考艾国家公园之旅 (Khao Yai National Park Tour)，充分感受华富里的历史文化氛围、欣赏热带自然美景。</p><p>泰国的天气常年炎热，这里配备驱走燥热的空调客房、风景雅致的美丽花园，大量的木质家具为旅客们营造自然脱俗的度假氛围，方便旅客舒缓身心。旅客们在此或可享受舒缓人心的泰式按摩，或可品尝香辣可口的泰式美食，这家可持续住宿甄选当地新鲜食材，在参与专为猴子举办的盛大宴会之前，不妨先来此饱餐一顿。</p>'),(116,'2023-03-08 01:33:15','墨西哥萝卜之夜 | 贴近自然的工艺大赛','银装素裹的冬日，大雪纷飞，圣诞老人驾着驯鹿拉的雪橇手提着铃铛穿梭于大街小巷之中，给人们发放礼物，带来安宁。但在墨西哥的瓦哈卡市的圣诞节，圣诞树和礼物并非是圣诞的重要意象，时令蔬菜红萝卜是当地圣诞节的主角，独树一帜。','upload/news_picture6.jpg','<p>装素裹的冬日，大雪纷飞，圣诞老人驾着驯鹿拉的雪橇手提着铃铛穿梭于大街小巷之中，给人们发放礼物，带来安宁。但在墨西哥的瓦哈卡市的圣诞节，圣诞树和礼物并非是圣诞的重要意象，时令蔬菜红萝卜是当地圣诞节的主角，独树一帜。18世纪，两个修士把一些被农民遗留在土地的萝卜拔了出来，由于它们的大小和形状都很别致，两人便把这些奇特的萝卜带到了12月23日举行的圣诞市场上，后来，人们开始对它们进行雕刻，当地政府也开始专门举办雕刻萝卜的正式比赛。此后每年的12月23日，全球各地的雕刻高手便会齐聚在瓦哈卡市，将萝卜雕刻成戏剧场景、野生动物或神话生物等形象，众多艺术展品争奇斗艳，越是别出心裁、越能引人关注。观赏完高手云集的萝卜雕刻大赛后，想要进一步感受充满活力的艺术和手工艺氛围的旅客可以在Booking.com缤客预订瓦哈卡工匠村之旅 (Oaxaca Artisan Villages Tour)，见证当地手工艺人制作陶器、皮带、纺织品和木雕人物的过程，亦或是仅仅漫步于瓦哈卡宁静的街道上，静静感受浓郁的拉美文化气息。</p><p>民宿混合了墨西哥不同历史时期遗留的建筑风格，充分展现其混血文化的独一无二。除了平板电视、空调以及配有淋浴设施和免费洗浴用品的私人浴室，这家民宿的部分客房还设有私人阳台，供人欣赏城市风光。当夜幕降临，日落跌进迢迢星野，旅客可以在民宿的露台上阅读小憩、放松身心，还能够与其他到访这座城市的游客小酌一番，交流彼此对于萝卜之夜的见闻和感想。</p>'),(117,'2023-03-08 01:33:15','苏格兰圣火节 | 别开生面的诸神黄昏','维京人在苏格兰的历史和身份认同中占据着重要的地位，因此，在每年1月的最后一个星期二，苏格兰设得兰群岛的勒威克民众会身着传统服饰扮演成维京人的角色，进行一系列游行活动，最后将火把抛向船只，节日的狂欢由此在一艘帆船的燃烧中达到高潮，以此充分彰显设得兰群岛精神和文化传统。','upload/news_picture7.jpg','<p>美剧《维京传奇》是不少人了解维京时代的伊始，该剧讲述了维京人为了生存和荣耀而战的传奇故事：杀伐果决的传奇领袖拉格纳一次次凭借其卓越的才智创造战绩、忠诚竭智的佛罗基打造船只助力主人公的征掠、勇猛无畏的女武神拉葛莎在谢幕战斗后壮烈地死去......“强大、自立、刚毅、冒险、奋武”是维京战士的勋章。维京人在苏格兰的历史和身份认同中占据着重要的地位，因此，在每年1月的最后一个星期二，苏格兰设得兰群岛的勒威克民众会身着传统服饰扮演成维京人的角色，进行一系列游行活动，最后将火把抛向船只，节日的狂欢由此在一艘帆船的燃烧中达到高潮，以此充分彰显设得兰群岛精神和文化传统。值得一提的是，对于庆典负责人“Guizer Jarl”将穿着何种服装、扮演维京传说中的哪个角色等细节都是完全保密的，这更让圣火节的节日庆典蒙上一层神秘的面纱。旅客也可以置身于设德兰群岛的宜人风光中，迎着清新的海风，嗅着街边面包店的香气，徒步行走在充满异国风情的砂岩建筑群中。</p><p>一座维多利亚时期的宏伟建筑改建而成，保留了维多利亚时期哥特复兴的尖塔、户外的木质拱肩以及蒸汽朋克式的家具风格。该旅舍位于勒威克的市中心，毗邻贝恩海滩。居住在此的旅客可以俯瞰迷人的朱比利花卉公园，还可以在旅舍的花园中享受清新自然的苏格兰气息。旅舍的房间分为混合宿舍和私人客房，如果旅客希望更好地融入当地氛围，推荐在圣火节期间入住混合宿舍，与其他旅客共享旅途的有趣点滴。</p>'),(118,'2023-03-08 01:33:15','意大利橙子大战 | 黏黏糊糊的橘色海洋','橙子大战的历史最早便起源于磨坊女反杀邪恶领主的故事，每年2月中旬，在伊夫雷亚这一位于意大利西北部的古朴静谧的小镇上，人们用橙子代替武器、与各路人马互砸，既意味着对于反抗暴政精神的传承，也意味着把一年的坏运气和烦恼都丢掉。','upload/news_picture8.jpg','<p>打破中世纪的封建禁锢、挥舞追求自由的旗帜、宣扬人性的解放，文艺复兴时期的思想观念已早已深刻地浸入意大利人的传统文化之中，反抗暴政和强权的传说一直为意大利人津津乐道。橙子大战的历史最早便起源于磨坊女反杀邪恶领主的故事，每年2月中旬，在伊夫雷亚这一位于意大利西北部的古朴静谧的小镇上，人们用橙子代替武器、与各路人马互砸，既意味着对于反抗暴政精神的传承，也意味着把一年的坏运气和烦恼都丢掉。在大战开始后，橙子漫天飞舞，果汁飞溅，尖叫声此起彼伏，场面十分混乱，整个街道不用多久都会染上橙子的颜色。如果想避开橙子大战，不要忘记戴上红色的帽子。亦或是前往都灵，热爱人文风光和历史文化的旅客不妨选择神话及传说晚间导览游，跟随知识渊博的导游行走在黄金四角区和古城区的街道上，聆听隐藏在都灵街巷背后的故事和传说。</p><p>民宿融合了轻快简约的现代风格以及传统经典的意大利风格，营造出梦幻般的住宿环境。除了供应精致的英式或意大利式早餐满足旅客味蕾，旅馆还提供自行车租赁服务，方便旅客探索周边优美的自然风光，这对于外地游客而言十分友好。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingjiajilu`
--

DROP TABLE IF EXISTS `pingjiajilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingjiajilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tuifangdanhao` varchar(200) DEFAULT NULL COMMENT '退房单号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjiantupian` longtext COMMENT '房间图片',
  `tuifangshijian` datetime DEFAULT NULL COMMENT '退房时间',
  `tuifangbeizhu` varchar(200) DEFAULT NULL COMMENT '退房备注',
  `fangjianpingfen` varchar(200) NOT NULL COMMENT '房间评分',
  `pingjianeirong` longtext NOT NULL COMMENT '评价内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tuifangdanhao` (`tuifangdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1678239902264 DEFAULT CHARSET=utf8 COMMENT='评价记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingjiajilu`
--

LOCK TABLES `pingjiajilu` WRITE;
/*!40000 ALTER TABLE `pingjiajilu` DISABLE KEYS */;
INSERT INTO `pingjiajilu` VALUES (81,'2023-03-08 01:33:15','1111111111','房间名称1','upload/pingjiajilu_fangjiantupian1.jpg,upload/pingjiajilu_fangjiantupian2.jpg,upload/pingjiajilu_fangjiantupian3.jpg','2023-03-08 09:33:15','退房备注1','1','评价内容1','用户名1','13823888881',1,1,''),(82,'2023-03-08 01:33:15','2222222222','房间名称2','upload/pingjiajilu_fangjiantupian2.jpg,upload/pingjiajilu_fangjiantupian3.jpg,upload/pingjiajilu_fangjiantupian4.jpg','2023-03-08 09:33:15','退房备注2','1','评价内容2','用户名2','13823888882',2,2,''),(83,'2023-03-08 01:33:15','3333333333','房间名称3','upload/pingjiajilu_fangjiantupian3.jpg,upload/pingjiajilu_fangjiantupian4.jpg,upload/pingjiajilu_fangjiantupian5.jpg','2023-03-08 09:33:15','退房备注3','1','评价内容3','用户名3','13823888883',3,3,''),(84,'2023-03-08 01:33:15','4444444444','房间名称4','upload/pingjiajilu_fangjiantupian4.jpg,upload/pingjiajilu_fangjiantupian5.jpg,upload/pingjiajilu_fangjiantupian6.jpg','2023-03-08 09:33:15','退房备注4','1','评价内容4','用户名4','13823888884',4,4,''),(85,'2023-03-08 01:33:15','5555555555','房间名称5','upload/pingjiajilu_fangjiantupian5.jpg,upload/pingjiajilu_fangjiantupian6.jpg,upload/pingjiajilu_fangjiantupian7.jpg','2023-03-08 09:33:15','退房备注5','1','评价内容5','用户名5','13823888885',5,5,''),(86,'2023-03-08 01:33:15','6666666666','房间名称6','upload/pingjiajilu_fangjiantupian6.jpg,upload/pingjiajilu_fangjiantupian7.jpg,upload/pingjiajilu_fangjiantupian8.jpg','2023-03-08 09:33:15','退房备注6','1','评价内容6','用户名6','13823888886',6,6,''),(87,'2023-03-08 01:33:15','7777777777','房间名称7','upload/pingjiajilu_fangjiantupian7.jpg,upload/pingjiajilu_fangjiantupian8.jpg,upload/pingjiajilu_fangjiantupian9.jpg','2023-03-08 09:33:15','退房备注7','1','评价内容7','用户名7','13823888887',7,7,''),(88,'2023-03-08 01:33:15','8888888888','房间名称8','upload/pingjiajilu_fangjiantupian8.jpg,upload/pingjiajilu_fangjiantupian9.jpg,upload/pingjiajilu_fangjiantupian10.jpg','2023-03-08 09:33:15','退房备注8','1','评价内容8','用户名8','13823888888',8,8,''),(1678239902263,'2023-03-08 01:45:01','1678239898110','房间名称1','upload/fangjianxinxi_fangjiantupian1.jpg','2023-03-08 09:44:58','1','5','11','111','16459878981',1678239630655,1678239793141,'这里回复评价');
/*!40000 ALTER TABLE `pingjiajilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruzhujilu`
--

DROP TABLE IF EXISTS `ruzhujilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruzhujilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingdanhao` varchar(200) DEFAULT NULL COMMENT '预订单号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjiantupian` longtext COMMENT '房间图片',
  `dingdanjine` int(11) DEFAULT NULL COMMENT '订单金额',
  `ruzhurenshu` varchar(200) DEFAULT NULL COMMENT '入住人数',
  `ruzhutianshu` varchar(200) DEFAULT NULL COMMENT '入住天数',
  `banliriqi` date DEFAULT NULL COMMENT '办理日期',
  `xinxibeizhu` varchar(200) DEFAULT NULL COMMENT '信息备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678239793142 DEFAULT CHARSET=utf8 COMMENT='入住记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruzhujilu`
--

LOCK TABLES `ruzhujilu` WRITE;
/*!40000 ALTER TABLE `ruzhujilu` DISABLE KEYS */;
INSERT INTO `ruzhujilu` VALUES (71,'2023-03-08 01:33:15','预订单号1','房间名称1','upload/ruzhujilu_fangjiantupian1.jpg,upload/ruzhujilu_fangjiantupian2.jpg,upload/ruzhujilu_fangjiantupian3.jpg',1,'入住人数1','入住天数1','2023-03-08','信息备注1','用户名1','姓名1','13823888881','440300199101010001',1,1),(72,'2023-03-08 01:33:15','预订单号2','房间名称2','upload/ruzhujilu_fangjiantupian2.jpg,upload/ruzhujilu_fangjiantupian3.jpg,upload/ruzhujilu_fangjiantupian4.jpg',2,'入住人数2','入住天数2','2023-03-08','信息备注2','用户名2','姓名2','13823888882','440300199202020002',2,2),(73,'2023-03-08 01:33:15','预订单号3','房间名称3','upload/ruzhujilu_fangjiantupian3.jpg,upload/ruzhujilu_fangjiantupian4.jpg,upload/ruzhujilu_fangjiantupian5.jpg',3,'入住人数3','入住天数3','2023-03-08','信息备注3','用户名3','姓名3','13823888883','440300199303030003',3,3),(74,'2023-03-08 01:33:15','预订单号4','房间名称4','upload/ruzhujilu_fangjiantupian4.jpg,upload/ruzhujilu_fangjiantupian5.jpg,upload/ruzhujilu_fangjiantupian6.jpg',4,'入住人数4','入住天数4','2023-03-08','信息备注4','用户名4','姓名4','13823888884','440300199404040004',4,4),(75,'2023-03-08 01:33:15','预订单号5','房间名称5','upload/ruzhujilu_fangjiantupian5.jpg,upload/ruzhujilu_fangjiantupian6.jpg,upload/ruzhujilu_fangjiantupian7.jpg',5,'入住人数5','入住天数5','2023-03-08','信息备注5','用户名5','姓名5','13823888885','440300199505050005',5,5),(76,'2023-03-08 01:33:15','预订单号6','房间名称6','upload/ruzhujilu_fangjiantupian6.jpg,upload/ruzhujilu_fangjiantupian7.jpg,upload/ruzhujilu_fangjiantupian8.jpg',6,'入住人数6','入住天数6','2023-03-08','信息备注6','用户名6','姓名6','13823888886','440300199606060006',6,6),(77,'2023-03-08 01:33:15','预订单号7','房间名称7','upload/ruzhujilu_fangjiantupian7.jpg,upload/ruzhujilu_fangjiantupian8.jpg,upload/ruzhujilu_fangjiantupian9.jpg',7,'入住人数7','入住天数7','2023-03-08','信息备注7','用户名7','姓名7','13823888887','440300199707070007',7,7),(78,'2023-03-08 01:33:15','预订单号8','房间名称8','upload/ruzhujilu_fangjiantupian8.jpg,upload/ruzhujilu_fangjiantupian9.jpg,upload/ruzhujilu_fangjiantupian10.jpg',8,'入住人数8','入住天数8','2023-03-08','信息备注8','用户名8','姓名8','13823888888','440300199808080008',8,8),(1678239793141,'2023-03-08 01:43:12','1678239654587','房间名称1','upload/fangjianxinxi_fangjiantupian1.jpg',396,'2','2','2023-03-08','12','111','小邹呀','16459878981','654598789845654598',1,1678239659944);
/*!40000 ALTER TABLE `ruzhujilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1678239668607 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1678239648658,'2023-03-08 01:40:48',1678239630655,43,'fangjianxinxi','房间名称3','upload/fangjianxinxi_fangjiantupian3.jpg','1','大床房',NULL),(1678239665163,'2023-03-08 01:41:04',1678239630655,41,'fangjianxinxi','房间名称1','upload/fangjianxinxi_fangjiantupian1.jpg','1','大床房',NULL),(1678239668606,'2023-03-08 01:41:07',1678239630655,51,'zhoubiansheshi','设施名称1','upload/zhoubiansheshi_sheshitupian1.jpg','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-03-08 01:33:15','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','w91bfq45mxhz67h34c0s26508ahe1b1l','2023-03-08 01:37:39','2023-03-08 02:45:13'),(2,1678239630655,'111','huiyuan','会员','81jq90ymw9073ewfow8ojn6qs076h7w3','2023-03-08 01:40:34','2023-03-08 02:45:57'),(3,21,'用户名1','huiyuan','会员','y4pr3pal6ruhm3238spxtkmf3munz8mu','2023-03-08 01:45:35','2023-03-08 02:45:36');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-03-08 01:33:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yudingjilu`
--

DROP TABLE IF EXISTS `yudingjilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yudingjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingdanhao` varchar(200) DEFAULT NULL COMMENT '预订单号',
  `fangjianmingcheng` varchar(200) DEFAULT NULL COMMENT '房间名称',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjiantupian` longtext COMMENT '房间图片',
  `yudingriqi` date DEFAULT NULL COMMENT '预定日期',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `ruzhurenshu` varchar(200) NOT NULL COMMENT '入住人数',
  `fangjianjiage` int(11) DEFAULT NULL COMMENT '房间价格',
  `ruzhutianshu` int(11) NOT NULL COMMENT '入住天数',
  `huiyuanzhekou` float DEFAULT NULL COMMENT '会员折扣',
  `dingdanjine` float DEFAULT NULL COMMENT '订单金额',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `huiyuanleixing` varchar(200) DEFAULT NULL COMMENT '会员类型',
  `shhf` longtext COMMENT '回复内容',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yudingdanhao` (`yudingdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1678239950494 DEFAULT CHARSET=utf8 COMMENT='预定记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yudingjilu`
--

LOCK TABLES `yudingjilu` WRITE;
/*!40000 ALTER TABLE `yudingjilu` DISABLE KEYS */;
INSERT INTO `yudingjilu` VALUES (61,'2023-03-08 01:33:15','1111111111','房间名称1','房间类型1','upload/yudingjilu_fangjiantupian1.jpg,upload/yudingjilu_fangjiantupian2.jpg,upload/yudingjilu_fangjiantupian3.jpg','2023-03-08','2023-03-08 09:33:15','入住人数1',1,1,1,1,'用户名1','姓名1','13823888881','440300199101010001','会员类型1','','未支付'),(62,'2023-03-08 01:33:15','2222222222','房间名称2','房间类型2','upload/yudingjilu_fangjiantupian2.jpg,upload/yudingjilu_fangjiantupian3.jpg,upload/yudingjilu_fangjiantupian4.jpg','2023-03-08','2023-03-08 09:33:15','入住人数2',2,2,2,2,'用户名2','姓名2','13823888882','440300199202020002','会员类型2','','未支付'),(63,'2023-03-08 01:33:15','3333333333','房间名称3','房间类型3','upload/yudingjilu_fangjiantupian3.jpg,upload/yudingjilu_fangjiantupian4.jpg,upload/yudingjilu_fangjiantupian5.jpg','2023-03-08','2023-03-08 09:33:15','入住人数3',3,3,3,3,'用户名3','姓名3','13823888883','440300199303030003','会员类型3','','未支付'),(64,'2023-03-08 01:33:15','4444444444','房间名称4','房间类型4','upload/yudingjilu_fangjiantupian4.jpg,upload/yudingjilu_fangjiantupian5.jpg,upload/yudingjilu_fangjiantupian6.jpg','2023-03-08','2023-03-08 09:33:15','入住人数4',4,4,4,4,'用户名4','姓名4','13823888884','440300199404040004','会员类型4','','未支付'),(65,'2023-03-08 01:33:15','5555555555','房间名称5','房间类型5','upload/yudingjilu_fangjiantupian5.jpg,upload/yudingjilu_fangjiantupian6.jpg,upload/yudingjilu_fangjiantupian7.jpg','2023-03-08','2023-03-08 09:33:15','入住人数5',5,5,5,5,'用户名5','姓名5','13823888885','440300199505050005','会员类型5','','未支付'),(66,'2023-03-08 01:33:15','6666666666','房间名称6','房间类型6','upload/yudingjilu_fangjiantupian6.jpg,upload/yudingjilu_fangjiantupian7.jpg,upload/yudingjilu_fangjiantupian8.jpg','2023-03-08','2023-03-08 09:33:15','入住人数6',6,6,6,6,'用户名6','姓名6','13823888886','440300199606060006','会员类型6','','未支付'),(67,'2023-03-08 01:33:15','7777777777','房间名称7','房间类型7','upload/yudingjilu_fangjiantupian7.jpg,upload/yudingjilu_fangjiantupian8.jpg,upload/yudingjilu_fangjiantupian9.jpg','2023-03-06','2023-03-06 09:33:15','入住人数7',7,7,7,343,'用户名7','姓名7','13823888887','440300199707070007','会员类型7','','未支付'),(68,'2023-03-08 01:33:15','8888888888','房间名称8','房间类型8','upload/yudingjilu_fangjiantupian8.jpg,upload/yudingjilu_fangjiantupian9.jpg,upload/yudingjilu_fangjiantupian10.jpg','2023-03-07','2023-03-07 09:33:15','入住人数8',8,8,8,512,'用户名8','姓名8','13823888888','440300199808080008','会员类型8','','未支付'),(1678239659944,'2023-03-08 01:40:59','1678239654587','房间名称1','大床房','upload/fangjianxinxi_fangjiantupian1.jpg','2023-03-08','2023-03-08 09:40:54','2',198,2,1,396,'111','小邹呀','16459878981','654598789845654598','无会员','111','已支付'),(1678239950493,'2023-03-08 01:45:50','1678239942956','房间名称2','双人房','upload/fangjianxinxi_fangjiantupian2.jpg','2023-03-08','2023-03-08 09:45:42','2',298,2,0.8,476.8,'用户名1','姓名1','13823888881','440300199101010001','黄金会员',NULL,'');
/*!40000 ALTER TABLE `yudingjilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhoubiansheshi`
--

DROP TABLE IF EXISTS `zhoubiansheshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhoubiansheshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sheshimingcheng` varchar(200) NOT NULL COMMENT '设施名称',
  `sheshitupian` longtext COMMENT '设施图片',
  `sheshileixing` varchar(200) DEFAULT NULL COMMENT '设施类型',
  `sheshiweizhi` varchar(200) DEFAULT NULL COMMENT '设施位置',
  `lianjiewangzhi` varchar(200) DEFAULT NULL COMMENT '链接网址',
  `fuwusheshi` varchar(200) DEFAULT NULL COMMENT '服务设施',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `sheshijieshao` longtext COMMENT '设施介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sheshimingcheng` (`sheshimingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='周边设施';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhoubiansheshi`
--

LOCK TABLES `zhoubiansheshi` WRITE;
/*!40000 ALTER TABLE `zhoubiansheshi` DISABLE KEYS */;
INSERT INTO `zhoubiansheshi` VALUES (51,'2023-03-08 01:33:15','设施名称1','upload/zhoubiansheshi_sheshitupian1.jpg,upload/zhoubiansheshi_sheshitupian2.jpg,upload/zhoubiansheshi_sheshitupian3.jpg','设施类型1','设施位置1','https://www.baidu.com/?tn=02003390_88_hao_pg','服务设施1','2023-03-08','设施介绍1'),(52,'2023-03-08 01:33:15','设施名称2','upload/zhoubiansheshi_sheshitupian2.jpg,upload/zhoubiansheshi_sheshitupian3.jpg,upload/zhoubiansheshi_sheshitupian4.jpg','设施类型2','设施位置2','https://www.baidu.com/?tn=02003390_88_hao_pg','服务设施2','2023-03-08','设施介绍2'),(53,'2023-03-08 01:33:15','设施名称3','upload/zhoubiansheshi_sheshitupian3.jpg,upload/zhoubiansheshi_sheshitupian4.jpg,upload/zhoubiansheshi_sheshitupian5.jpg','设施类型3','设施位置3','https://www.baidu.com/?tn=02003390_88_hao_pg','服务设施3','2023-03-08','设施介绍3'),(54,'2023-03-08 01:33:15','设施名称4','upload/zhoubiansheshi_sheshitupian4.jpg,upload/zhoubiansheshi_sheshitupian5.jpg,upload/zhoubiansheshi_sheshitupian6.jpg','设施类型4','设施位置4','https://www.baidu.com/?tn=02003390_88_hao_pg','服务设施4','2023-03-08','设施介绍4'),(55,'2023-03-08 01:33:15','设施名称5','upload/zhoubiansheshi_sheshitupian5.jpg,upload/zhoubiansheshi_sheshitupian6.jpg,upload/zhoubiansheshi_sheshitupian7.jpg','设施类型5','设施位置5','https://www.baidu.com/?tn=02003390_88_hao_pg','服务设施5','2023-03-08','设施介绍5'),(56,'2023-03-08 01:33:15','设施名称6','upload/zhoubiansheshi_sheshitupian6.jpg,upload/zhoubiansheshi_sheshitupian7.jpg,upload/zhoubiansheshi_sheshitupian8.jpg','设施类型6','设施位置6','https://www.baidu.com/?tn=02003390_88_hao_pg','服务设施6','2023-03-08','设施介绍6'),(57,'2023-03-08 01:33:15','设施名称7','upload/zhoubiansheshi_sheshitupian7.jpg,upload/zhoubiansheshi_sheshitupian8.jpg,upload/zhoubiansheshi_sheshitupian9.jpg','设施类型7','设施位置7','https://www.baidu.com/?tn=02003390_88_hao_pg','服务设施7','2023-03-08','设施介绍7'),(58,'2023-03-08 01:33:15','设施名称8','upload/zhoubiansheshi_sheshitupian8.jpg,upload/zhoubiansheshi_sheshitupian9.jpg,upload/zhoubiansheshi_sheshitupian10.jpg','设施类型8','设施位置8','https://www.baidu.com/?tn=02003390_88_hao_pg','服务设施8','2023-03-08','设施介绍8');
/*!40000 ALTER TABLE `zhoubiansheshi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10 11:11:07
