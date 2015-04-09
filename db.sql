-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: cs4111.chgh9mmogaje.us-east-1.rds.amazonaws.com    Database: MovieDB
-- ------------------------------------------------------
-- Server version	5.6.19-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add movie',1,'add_movie'),(2,'Can change movie',1,'change_movie'),(3,'Can delete movie',1,'delete_movie'),(4,'Can add crew',2,'add_crew'),(5,'Can change crew',2,'change_crew'),(6,'Can delete crew',2,'delete_crew'),(7,'Can add produce',3,'add_produce'),(8,'Can change produce',3,'change_produce'),(9,'Can delete produce',3,'delete_produce'),(10,'Can add genre',4,'add_genre'),(11,'Can change genre',4,'change_genre'),(12,'Can delete genre',4,'delete_genre'),(13,'Can add belong to',5,'add_belongto'),(14,'Can change belong to',5,'change_belongto'),(15,'Can delete belong to',5,'delete_belongto'),(16,'Can add release info',6,'add_releaseinfo'),(17,'Can change release info',6,'change_releaseinfo'),(18,'Can delete release info',6,'delete_releaseinfo'),(19,'Can add review',7,'add_review'),(20,'Can change review',7,'change_review'),(21,'Can delete review',7,'delete_review'),(22,'Can add watch',8,'add_watch'),(23,'Can change watch',8,'change_watch'),(24,'Can delete watch',8,'delete_watch'),(25,'Can add favorite',9,'add_favorite'),(26,'Can change favorite',9,'change_favorite'),(27,'Can delete favorite',9,'delete_favorite'),(28,'Can add post',10,'add_post'),(29,'Can change post',10,'change_post'),(30,'Can delete post',10,'delete_post'),(31,'Can add topic',11,'add_topic'),(32,'Can change topic',11,'change_topic'),(33,'Can delete topic',11,'delete_topic'),(34,'Can add comment',12,'add_comment'),(35,'Can change comment',12,'change_comment'),(36,'Can delete comment',12,'delete_comment'),(37,'Can add log entry',13,'add_logentry'),(38,'Can change log entry',13,'change_logentry'),(39,'Can delete log entry',13,'delete_logentry'),(40,'Can add permission',14,'add_permission'),(41,'Can change permission',14,'change_permission'),(42,'Can delete permission',14,'delete_permission'),(43,'Can add group',15,'add_group'),(44,'Can change group',15,'change_group'),(45,'Can delete group',15,'delete_group'),(46,'Can add user',16,'add_user'),(47,'Can change user',16,'change_user'),(48,'Can delete user',16,'delete_user'),(49,'Can add content type',17,'add_contenttype'),(50,'Can change content type',17,'change_contenttype'),(51,'Can delete content type',17,'delete_contenttype'),(52,'Can add session',18,'add_session'),(53,'Can change session',18,'change_session'),(54,'Can delete session',18,'delete_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$7n9Z5PJh60Mo$WhZNK+t2erZB89Xx1EQT5RiWYoeS37D/pysKq9e7/Cg=','2015-04-09 03:28:25.543094',1,'admin','','','admin@admin.com',1,1,'2015-04-02 20:54:57.233000'),(8,'pbkdf2_sha256$20000$3xCWAPRz6Zs2$fqYqnmv1Qoyp3BRbayHIYQ0wwcJibtT1RDdAc9du8tY=','2015-04-06 15:06:22.225276',1,'LinxinYao','','','',0,1,'2015-04-02 21:10:39.000000'),(9,'pbkdf2_sha256$20000$AMlD7VDGuNHa$Tzp6R0hnv/yoIRYmrLL60A46Y1X6q8Oit7Qhp0vv0j8=','2015-04-09 02:48:15.257000',1,'DiLi','','','',0,1,'2015-04-02 21:12:06.000000'),(10,'pbkdf2_sha256$20000$X1ltG0piPeiB$JN7hgANOzQZWplGmf0dL8xdxXeTJUuisgJwjmXCesnA=',NULL,0,'Obama','','','',0,1,'2015-04-02 21:12:35.789000'),(11,'pbkdf2_sha256$20000$X9yznmrTKAMO$KQPrY9AVIvG3cX522R+UpoMk9zWuvMyjQHmLWlMYXM4=',NULL,0,'Jordan','','','',0,1,'2015-04-02 21:12:55.505000'),(12,'pbkdf2_sha256$20000$LXpY2Ks0ONir$wFkMMxYNdcYNZmzL5rR5gFRDZUKqk3XohYiUMGX2Kxk=',NULL,0,'HAHA','','','',0,1,'2015-04-02 21:13:12.254000'),(13,'pbkdf2_sha256$20000$15ST2HuGKAG6$QoPrEGFS7MBmH2eGfqsImq8opP0oWv/H179BcfFNVsw=',NULL,0,'Jinping','','','',0,1,'2015-04-02 21:13:38.581000'),(14,'pbkdf2_sha256$20000$7MeIpGoh3AkT$AJJx84oiFlJz0iEvKo4DVTfYOFoWZMfISIA7auKTp8Y=',NULL,0,'Keqiang','','','',0,1,'2015-04-02 21:13:57.641000'),(15,'pbkdf2_sha256$20000$WL7TLQU9090J$oltCxDNQVr6YogjzFv75XMMYfaboYWNE3oWhBKcvblQ=',NULL,0,'Qishan','','','',0,1,'2015-04-02 21:14:21.423000'),(16,'pbkdf2_sha256$20000$yMhYvUkeoQhG$BlGni75RYpX7f0syGkBVLa2wXjyqOj9ECveceoFrt2M=',NULL,0,'zhengsheng','','','',0,1,'2015-04-02 21:14:42.927000'),(17,'pbkdf2_sha256$20000$NOW0a6HsXmDy$veMoqF2EwKU//2a++9GHnlfcySXe50zr1TYWAsuGkXs=',NULL,0,'myson','','','',0,1,'2015-04-02 21:15:35.268000'),(18,'pbkdf2_sha256$20000$7KDNVCVUsNYw$+e2pYRvIdXxmFYCKpP8Dud1dPIqPnecncSjOHwERHuk=','2015-04-09 03:19:17.236000',0,'test','','','',0,1,'2015-04-02 21:16:00.354000'),(19,'pbkdf2_sha256$20000$xGEADhPyrSqq$hMAIIrwJKZgqvIRRXjpkZY9f59RJVCPInGv8NXjt0RQ=','2015-04-09 05:05:53.106065',0,'LixinYao','','','',0,1,'2015-04-06 15:06:48.407456'),(20,'pbkdf2_sha256$20000$tBMXL2TAswae$U0u+/vGZZkGpLudNq0PNMTCXhGoJ4vuBWhM9Em8cqx0=',NULL,0,'staniel','','','',0,1,'2015-04-08 21:21:55.142238'),(21,'pbkdf2_sha256$20000$4zohzxvgDcDk$goCAAPwmNM2uLg1ZutW8uV/KhwkF877QysBopa9tqLk=','2015-04-09 02:51:32.166827',0,'siyao','','','',0,1,'2015-04-09 02:51:26.022380'),(22,'pbkdf2_sha256$20000$mXiYUKLD6awC$/6ByXRI6P6HnunCNhRR0w86aPLrSb7Vxw+3F/Rj+FLI=','2015-04-09 04:08:56.312146',0,'xinyue','','','',0,1,'2015-04-09 03:24:59.493659'),(23,'pbkdf2_sha256$20000$X8YRTGr6TzOI$SrLFltAzZZuCtE6nlVMbwLgPV+0qyclNQvkaDAUctJM=','2015-04-09 05:03:21.402000',0,'di','','','',0,1,'2015-04-09 03:35:24.661000'),(24,'pbkdf2_sha256$20000$rS47rqipJbRd$nlvUxj/+ue8YI3v1ujP99RteO/wOV7OZsLbgBv+Nj2A=','2015-04-09 03:43:37.198238',0,'stan','','','',0,1,'2015-04-09 03:43:31.177828');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-04-02 21:10:39.405000','8','LinxinYao',1,'',16,1),(2,'2015-04-02 21:11:36.323000','8','LinxinYao',2,'Changed is_superuser.',16,1),(3,'2015-04-02 21:11:43.325000','8','LinxinYao',2,'No fields changed.',16,1),(4,'2015-04-02 21:12:06.520000','9','DiLi',1,'',16,1),(5,'2015-04-02 21:12:35.901000','10','Obama',1,'',16,1),(6,'2015-04-02 21:12:55.621000','11','Jordan',1,'',16,1),(7,'2015-04-02 21:13:12.300000','12','HAHA',1,'',16,1),(8,'2015-04-02 21:13:38.640000','13','Jinping',1,'',16,1),(9,'2015-04-02 21:13:57.693000','14','Keqiang',1,'',16,1),(10,'2015-04-02 21:14:21.482000','15','Qishan',1,'',16,1),(11,'2015-04-02 21:14:42.977000','16','zhengsheng',1,'',16,1),(12,'2015-04-02 21:15:35.363000','17','myson',1,'',16,1),(13,'2015-04-02 21:16:00.404000','18','test',1,'',16,1),(14,'2015-04-02 21:16:31.446000','9','DiLi',2,'Changed is_superuser.',16,1),(15,'2015-04-08 03:43:01.293861','1','Review object',1,'',7,1),(16,'2015-04-08 03:43:52.263063','2','Review object',1,'',7,1),(17,'2015-04-08 03:49:13.235587','3','Review object',1,'',7,1),(18,'2015-04-08 03:52:17.662617','4','Review object',1,'',7,1),(19,'2015-04-08 03:52:35.847277','5','Review object',1,'',7,1),(20,'2015-04-08 03:53:17.813653','6','Review object',1,'',7,1),(21,'2015-04-09 00:48:15.551698','11','Furious 7',1,'',1,1),(22,'2015-04-09 00:48:49.901444','12','Cinderella',1,'',1,1),(23,'2015-04-09 00:49:51.402374','13','The Lord of the Rings: The Fellowship of the Ring',1,'',1,1),(24,'2015-04-09 00:50:16.420129','14','Star Wars: Episode V - The Empire Strikes Back',1,'',1,1),(25,'2015-04-09 00:50:41.074671','15','Forrest Gump',1,'',1,1),(26,'2015-04-09 00:51:32.380969','16','Inception',1,'',1,1),(27,'2015-04-09 00:51:52.632115','17','One Flew Over the Cuckoo\'s Nest',1,'',1,1),(28,'2015-04-09 00:52:10.549136','18','The Lord of the Rings: The Two Towers',1,'',1,1),(29,'2015-04-09 00:52:28.958990','19','Goodfellas',1,'',1,1),(30,'2015-04-09 00:52:47.699377','20','The Matrix',1,'',1,1),(31,'2015-04-09 00:53:45.291945','21','Star Wars',1,'',1,1),(32,'2015-04-09 00:54:07.103229','22','Seven Samurai ',1,'',1,1),(33,'2015-04-09 00:54:29.822360','23','City of God',1,'',1,1),(34,'2015-04-09 00:54:53.348243','24','Interstellar',1,'',1,1),(35,'2015-04-09 00:55:11.239005','25','The Silence of the Lambs',1,'',1,1),(36,'2015-04-09 00:57:52.875474','11','Peter Jackson',1,'',2,1),(37,'2015-04-09 00:58:10.106712','12','Irvin Kershner',1,'',2,1),(38,'2015-04-09 00:58:23.126569','13','Robert Zemeckis',1,'',2,1),(39,'2015-04-09 00:58:43.537413','14','Milos Forman',1,'',2,1),(40,'2015-04-09 01:01:22.603447','11','Peter Jackson produce The Lord of the Rings: The Return of the King',1,'',3,1),(41,'2015-04-09 01:01:35.360161','12','Irvin Kershner produce Star Wars: Episode V - The Empire Strikes Back',1,'',3,1),(42,'2015-04-09 01:01:47.698457','13','Robert Zemeckis produce Forrest Gump',1,'',3,1),(43,'2015-04-09 01:02:40.675777','14','Christopher Nolan produce Inception',1,'',3,1),(44,'2015-04-09 01:02:54.565824','15','Milos Forman produce One Flew Over the Cuckoo\'s Nest',1,'',3,1),(45,'2015-04-09 01:04:11.509170','16','Peter Jackson produce The Lord of the Rings: The Two Towers',1,'',3,1),(46,'2015-04-09 01:04:40.615223','15','Martin Scorsese',1,'',2,1),(47,'2015-04-09 01:04:47.552221','17','Martin Scorsese produce Goodfellas',1,'',3,1),(48,'2015-04-09 01:05:11.560217','16','Andy Wachowski ',1,'',2,1),(49,'2015-04-09 01:05:13.733026','18','Andy Wachowski  produce The Matrix',1,'',3,1),(50,'2015-04-09 01:05:31.811680','17','George Lucas',1,'',2,1),(51,'2015-04-09 01:05:33.686535','19','George Lucas produce Star Wars',1,'',3,1),(52,'2015-04-09 01:05:52.508274','18','Akira Kurosawa',1,'',2,1),(53,'2015-04-09 01:05:54.401212','20','Akira Kurosawa produce Seven Samurai ',1,'',3,1),(54,'2015-04-09 01:08:08.766775','19','Fernando Meirelles',1,'',2,1),(55,'2015-04-09 01:08:10.939718','21','Fernando Meirelles produce City of God',1,'',3,1),(56,'2015-04-09 01:08:24.008880','22','Christopher Nolan produce Interstellar',1,'',3,1),(57,'2015-04-09 01:08:43.449748','20','Jonathan Demme',1,'',2,1),(58,'2015-04-09 01:08:45.268201','23','Jonathan Demme produce The Silence of the Lambs',1,'',3,1),(59,'2015-04-09 01:09:56.645124','21','James Wan',1,'',2,1),(60,'2015-04-09 01:10:04.370057','24','James Wan produce Furious 7',1,'',3,1),(61,'2015-04-09 01:10:25.097922','22','Kenneth Branagh',1,'',2,1),(62,'2015-04-09 01:10:30.098192','25','Kenneth Branagh produce Cinderella',1,'',3,1),(63,'2015-04-09 01:16:39.237380','26','Peter Jackson produce The Lord of the Rings: The Fellowship of the Ring',1,'',3,1),(64,'2015-04-09 01:20:32.198561','23','Cinderella belong to Drama',1,'',5,1),(65,'2015-04-09 01:20:42.503971','24','Cinderella belong to Fantasy',1,'',5,1),(66,'2015-04-09 01:21:10.110037','25','City of God belong to Drama',1,'',5,1),(67,'2015-04-09 01:21:22.200236','26','City of God belong to Crime',1,'',5,1),(68,'2015-04-09 01:21:51.277990','27','Interstellar belong to Fantasy',1,'',5,1),(69,'2015-04-09 01:22:09.726342','28','The Silence of the Lambs belong to Drama',1,'',5,1),(70,'2015-04-09 01:22:16.725377','29','The Silence of the Lambs belong to Thriller',1,'',5,1),(71,'2015-04-09 01:22:50.538292','30','The Lord of the Rings: The Two Towers belong to Adventure',1,'',5,1),(72,'2015-04-09 01:23:13.950131','31','The Lord of the Rings: The Two Towers belong to Fantasy',1,'',5,1),(73,'2015-04-09 01:23:52.270849','32','Goodfellas belong to Crime',1,'',5,1),(74,'2015-04-09 01:23:59.183658','33','Goodfellas belong to Drama',1,'',5,1),(75,'2015-04-09 01:24:21.073856','34','The Matrix belong to Action',1,'',5,1),(76,'2015-04-09 01:24:42.532123','35','Star Wars belong to Action',1,'',5,1),(77,'2015-04-09 01:25:04.373306','36','Star Wars belong to Adventure',1,'',5,1),(78,'2015-04-09 01:25:15.714154','37','Star Wars belong to Fantasy',1,'',5,1),(79,'2015-04-09 01:25:31.481635','38','Seven Samurai  belong to Drama',1,'',5,1),(80,'2015-04-09 01:26:26.480591','39','Star Wars: Episode V - The Empire Strikes Back belong to Action',1,'',5,1),(81,'2015-04-09 01:26:36.430223','40','Star Wars: Episode V - The Empire Strikes Back belong to Adventure',1,'',5,1),(82,'2015-04-09 01:26:43.472503','41','Star Wars: Episode V - The Empire Strikes Back belong to Fantasy',1,'',5,1),(83,'2015-04-09 01:27:01.927571','42','Forrest Gump belong to Drama',1,'',5,1),(84,'2015-04-09 01:27:18.711459','43','Inception belong to Action',1,'',5,1),(85,'2015-04-09 01:28:02.465125','44','One Flew Over the Cuckoo\'s Nest belong to Drama',1,'',5,1),(86,'2015-04-09 01:28:53.012869','45','Furious 7 belong to Action',1,'',5,1),(87,'2015-04-09 01:28:59.716680','46','Furious 7 belong to Thriller',1,'',5,1),(88,'2015-04-09 01:29:13.623115','47','Furious 7 belong to Thriller',1,'',5,1),(89,'2015-04-09 01:29:27.954857','47','Furious 7 belong to Thriller',3,'',5,1),(90,'2015-04-09 01:29:40.962876','48','Furious 7 belong to Crime',1,'',5,1),(91,'2015-04-09 01:31:49.375811','49','The Lord of the Rings: The Fellowship of the Ring belong to Adventure',1,'',5,1),(92,'2015-04-09 01:31:57.294753','50','The Lord of the Rings: The Fellowship of the Ring belong to Fantasy',1,'',5,1),(93,'2015-04-09 01:39:49.202878','13','Furious 7 2015-03-16 USA',1,'',6,1),(94,'2015-04-09 01:40:28.948980','14','Furious 7 2015-04-12 China',1,'',6,1),(95,'2015-04-09 01:42:45.176610','15','City of God 2002-08-31 USA',1,'',6,1),(96,'2015-04-09 01:44:23.774209','16','Interstellar 2014-10-26 USA',1,'',6,1),(97,'2015-04-09 01:44:45.324594','17','Interstellar 2014-10-29 UK',1,'',6,1),(98,'2015-04-09 01:49:54.894058','8','The Good, the Bad and the Ugly',2,'Changed storyline.',1,1),(99,'2015-04-09 01:50:47.171245','24','Interstellar',2,'Changed storyline.',1,1),(100,'2015-04-09 01:51:06.855986','25','The Silence of the Lambs',2,'Changed storyline.',1,1),(101,'2015-04-09 01:51:34.632396','18','The Lord of the Rings: The Two Towers',2,'Changed storyline.',1,1),(102,'2015-04-09 01:51:59.933599','19','Goodfellas',2,'Changed storyline.',1,1),(103,'2015-04-09 01:52:36.643398','20','The Matrix',2,'Changed storyline.',1,1),(104,'2015-04-09 01:53:08.655465','21','Star Wars',2,'Changed storyline.',1,1),(105,'2015-04-09 01:53:41.540759','22','Seven Samurai ',2,'Changed storyline.',1,1),(106,'2015-04-09 01:54:03.545500','13','The Lord of the Rings: The Fellowship of the Ring',2,'Changed storyline.',1,1),(107,'2015-04-09 01:54:25.935166','14','Star Wars: Episode V - The Empire Strikes Back',2,'Changed storyline.',1,1),(108,'2015-04-09 01:55:04.761981','15','Forrest Gump',2,'Changed storyline.',1,1),(109,'2015-04-09 01:55:25.978800','16','Inception',2,'Changed storyline.',1,1),(110,'2015-04-09 01:55:43.580183','17','One Flew Over the Cuckoo\'s Nest',2,'Changed storyline.',1,1),(111,'2015-04-09 01:56:24.943055','23','City of God',2,'Changed storyline.',1,1),(112,'2015-04-09 01:57:14.959128','12','Cinderella',2,'Changed storyline.',1,1),(113,'2015-04-09 01:57:37.814663','11','Furious 7',2,'Changed storyline.',1,1),(114,'2015-04-09 01:58:06.118122','10','Fight Club',2,'Changed storyline.',1,1),(115,'2015-04-09 01:59:02.331983','9','The Lord of the Rings: The Return of the King',2,'Changed storyline.',1,1),(116,'2015-04-09 01:59:39.415671','7','Schindler\'s List',2,'Changed storyline.',1,1),(117,'2015-04-09 02:00:11.823410','6','12 Angry Men',2,'Changed storyline.',1,1),(118,'2015-04-09 02:00:47.642047','5','Pulp Fiction',2,'Changed storyline.',1,1),(119,'2015-04-09 02:01:16.180777','4','The Dark Knight',2,'Changed storyline.',1,1),(120,'2015-04-09 02:02:03.077997','3','The Godfather: Part II',2,'Changed storyline.',1,1),(121,'2015-04-09 02:02:25.153537','2','The Godfather',2,'Changed storyline.',1,1),(122,'2015-04-09 02:02:47.763357','1','The Shawshank Redemption',2,'Changed storyline.',1,1),(123,'2015-04-09 03:24:37.249979','18','Cinderella 2015-03-13 USA',1,'',6,1),(124,'2015-04-09 03:28:15.410645','19','Forrest Gump 1994-07-06 USA',1,'',6,1),(125,'2015-04-09 03:29:36.796886','20','The Silence of the Lambs 1991-02-14 USA',1,'',6,1),(126,'2015-04-09 03:29:40.372298','21','Goodfellas 1990-09-21 USA',1,'',6,1),(127,'2015-04-09 03:30:04.964223','22','The Silence of the Lambs 1991-02-15 Germany',1,'',6,1),(128,'2015-04-09 03:30:23.550702','23','Inception 2010-07-16 USA',1,'',6,1),(129,'2015-04-09 03:31:15.973669','24','The Matrix 1999-03-31 USA',1,'',6,1),(130,'2015-04-09 03:31:19.211147','25','One Flew Over the Cuckoo\'s Nest 1975-11-21 USA',1,'',6,1),(131,'2015-04-09 03:32:34.458736','26','The Lord of the Rings: The Two Towers 2003-04-26 China',1,'',6,1),(132,'2015-04-09 03:33:35.214728','27','The Lord of the Rings: The Two Towers 2002-12-05 USA',1,'',6,1),(133,'2015-04-09 03:33:54.224898','28','Seven Samurai  1956-11-19 USA',1,'',6,1),(134,'2015-04-09 03:34:42.720767','29','Star Wars 1977-05-25 USA',1,'',6,1),(135,'2015-04-09 03:34:49.077621','30','The Lord of the Rings: The Fellowship of the Ring 2001-12-19 USA',1,'',6,1),(136,'2015-04-09 03:35:25.832224','31','Star Wars: Episode V - The Empire Strikes Back 1986-06-20 USA',1,'',6,1),(137,'2015-04-09 03:35:27.219264','32','The Lord of the Rings: The Fellowship of the Ring 2015-12-10 UK',1,'',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (13,'admin','logentry'),(15,'auth','group'),(14,'auth','permission'),(16,'auth','user'),(17,'contenttypes','contenttype'),(5,'movie','belongto'),(12,'movie','comment'),(2,'movie','crew'),(9,'movie','favorite'),(4,'movie','genre'),(1,'movie','movie'),(10,'movie','post'),(3,'movie','produce'),(6,'movie','releaseinfo'),(7,'movie','review'),(11,'movie','topic'),(8,'movie','watch'),(18,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-04-02 20:20:40.853613'),(2,'auth','0001_initial','2015-04-02 20:20:41.613909'),(3,'admin','0001_initial','2015-04-02 20:20:41.827413'),(4,'contenttypes','0002_remove_content_type_name','2015-04-02 20:20:42.129689'),(5,'auth','0002_alter_permission_name_max_length','2015-04-02 20:20:42.277493'),(6,'auth','0003_alter_user_email_max_length','2015-04-02 20:20:42.402748'),(7,'auth','0004_alter_user_username_opts','2015-04-02 20:20:42.475394'),(8,'auth','0005_alter_user_last_login_null','2015-04-02 20:20:42.629157'),(9,'auth','0006_require_contenttypes_0002','2015-04-02 20:20:42.690578'),(10,'movie','0001_initial','2015-04-02 20:20:44.956204'),(11,'sessions','0001_initial','2015-04-02 20:20:45.120047'),(12,'movie','0002_auto_20150408_1801','2015-04-08 22:04:25.985000'),(13,'movie','0003_auto_20150408_2142','2015-04-09 01:42:47.957000'),(14,'movie','0004_auto_20150408_2246','2015-04-09 02:46:35.241000'),(15,'movie','0005_auto_20150408_2317','2015-04-09 03:17:58.581000');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7aumxg31j2hyx3gu50v5wx1a2jeuwj04','OTk1MDFhMjlmOGYzN2VmMDM2NDZmMWZjYjg3NTM5OWJjODFmNTY1Mjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyMTI2M2NmZTM3MDk3ZGI3YWJkZjUyN2FlNDVlMmFiYjA1ZmI0NzkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMyJ9','2015-04-23 05:03:21.458000'),('kju5giaeyexvhi9chkogghf9avgbv5z3','YzUxMzFlZTk1MTJhMWU4MGI4YzkxMzAwOTllZTRhNGUxN2ZkNzY0MDp7fQ==','2015-04-20 17:23:05.608977'),('pvlplb5c2s9bb6ik5kozyb5n4a0lz4ht','NmU0YzlkZmFhZjg0NjQ5ODAyNDQzYmZmMWE4MmY2ZGNmNDI3MjAzMjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijg2MzVkMDYzYTczMGYxMWNkNjViNDNkYzI1N2U0M2ZlZTdiZTJhNjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMiJ9','2015-04-23 04:08:56.368063'),('v0fvb91endw22ylr0nzl6u7ms15vbk3f','ZGI2NjdmZmJhMmQ4ZmE0Zjk1Yjc3YzJhNWMzY2YzNDMxNWVhNmVlNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjkwYmQwNzI3OTE1ODQ5MDk5ZGQ3OTU2MzhlODI0YzhjYzkwNTZmNWUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyMSJ9','2015-04-23 02:51:32.219407'),('venbl11u99ogf94w8goi12qd8rf6662m','MWZmYTk0MWZhYjVhOWRkZTUwODNmNDllNzhlMzU2MTkxYTljMzRhNjp7Il9hdXRoX3VzZXJfaGFzaCI6ImMxYjdiNmM2NTJkMDE4YWNlMzBmNTkzNTZiNDE4N2RjNGI3MjhlYzIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxOSJ9','2015-04-23 05:05:53.158963');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_belongto`
--

DROP TABLE IF EXISTS `movie_belongto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_belongto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid_id` int(11) NOT NULL,
  `mid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_belongto_298751f4` (`gid_id`),
  KEY `movie_belongto_0e6bf13e` (`mid_id`),
  CONSTRAINT `movie_belongto_mid_id_5377a405d2a6cff8_fk_movie_movie_id` FOREIGN KEY (`mid_id`) REFERENCES `movie_movie` (`id`),
  CONSTRAINT `movie_belongto_gid_id_9d274cae5b5775e_fk_movie_genre_id` FOREIGN KEY (`gid_id`) REFERENCES `movie_genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_belongto`
--

LOCK TABLES `movie_belongto` WRITE;
/*!40000 ALTER TABLE `movie_belongto` DISABLE KEYS */;
INSERT INTO `movie_belongto` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,3),(7,1,4),(8,2,4),(9,3,4),(10,4,4),(11,1,5),(12,2,5),(13,4,5),(14,2,6),(15,2,7),(16,5,7),(17,6,7),(18,7,8),(19,8,9),(20,9,9),(22,2,10),(23,2,12),(24,9,12),(25,2,23),(26,1,23),(27,9,24),(28,2,25),(29,4,25),(30,8,18),(31,9,18),(32,1,19),(33,2,19),(34,3,20),(35,3,21),(36,8,21),(37,9,21),(38,2,22),(39,3,14),(40,8,14),(41,9,14),(42,2,15),(43,3,16),(44,2,17),(45,3,11),(46,4,11),(48,1,11),(49,8,13),(50,9,13);
/*!40000 ALTER TABLE `movie_belongto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_comment`
--

DROP TABLE IF EXISTS `movie_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_comment` (
  `post_ptr_id` int(11) NOT NULL,
  `post_belong_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_ptr_id`),
  KEY `movie_comment_e95aabe8` (`post_belong_id`),
  CONSTRAINT `movie_comment_post_belong_id_3de07b42_fk_movie_topic_post_ptr_id` FOREIGN KEY (`post_belong_id`) REFERENCES `movie_topic` (`post_ptr_id`),
  CONSTRAINT `movie_comment_post_ptr_id_16fca3ab9660bb90_fk_movie_post_id` FOREIGN KEY (`post_ptr_id`) REFERENCES `movie_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_comment`
--

LOCK TABLES `movie_comment` WRITE;
/*!40000 ALTER TABLE `movie_comment` DISABLE KEYS */;
INSERT INTO `movie_comment` VALUES (19,18),(20,18),(21,18),(46,22),(40,29),(33,30),(36,31),(48,31),(38,34),(39,37),(44,41),(45,41),(47,41),(49,41),(50,41),(51,41),(52,41),(53,41),(54,41),(55,41),(56,41),(57,41),(58,41);
/*!40000 ALTER TABLE `movie_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_crew`
--

DROP TABLE IF EXISTS `movie_crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_crew` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `crew_type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_crew`
--

LOCK TABLES `movie_crew` WRITE;
/*!40000 ALTER TABLE `movie_crew` DISABLE KEYS */;
INSERT INTO `movie_crew` VALUES (1,'Tim Robbins','Born in West Covina, California, but raised in New York City, Tim Robbins is the son of former The H',0),(2,'Francis Ford Coppola','Francis Ford Coppola was born in 1939 in Detroit, Michigan, but grew up in a New York suburb in a cr',0),(3,'Al Pacino','One of the greatest actors in all of film history, Al Pacino established himself during one of film\'',0),(4,'Christopher Nolan','Best known for his cerebral, often nonlinear story-telling, acclaimed writer-director Christopher No',0),(5,'John Travolta','John Travolta was born in Englewood, New Jersey, one of six children of Helen Travolta ( Helen Ce',0),(6,'Sidney Lumet','Sidney Lumet was a master of cinema, best known for his technical knowledge and his skill at getting',0),(7,'Liam Neeson','Liam Neeson	Liam Neeson was born on June 7, 1952 in Ballymena, Northern Ireland, UK, to Katherine (Brown), a coo',1952),(8,'Sergio Leone','Sergio Leone was virtually born into the cinema - he was the son of Roberto Roberti (A.K.A. Vincenzo',2),(9,'Elijah Wood','Elijah Wood	Elijah Wood is an American actor best known for portraying Frodo Baggins in Peter Jackson\'s blockbus',1),(10,'David Fincher','David Fincher was born in 1962 in Denver, Colorado, and was raised in Marin County, California. When',0),(11,'Peter Jackson','',0),(12,'Irvin Kershner','',0),(13,'Robert Zemeckis','',0),(14,'Milos Forman','',0),(15,'Martin Scorsese','',0),(16,'Andy Wachowski ','',0),(17,'George Lucas','',0),(18,'Akira Kurosawa','',0),(19,'Fernando Meirelles','',0),(20,'Jonathan Demme','',0),(21,'James Wan','',0),(22,'Kenneth Branagh','',0);
/*!40000 ALTER TABLE `movie_crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_favorite`
--

DROP TABLE IF EXISTS `movie_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid_id` int(11) NOT NULL,
  `uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_favorite_0e6bf13e` (`mid_id`),
  KEY `movie_favorite_71422c2d` (`uid_id`),
  CONSTRAINT `movie_favorite_uid_id_54eb555ed287667e_fk_auth_user_id` FOREIGN KEY (`uid_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `movie_favorite_mid_id_76f6d06277cb9f76_fk_movie_movie_id` FOREIGN KEY (`mid_id`) REFERENCES `movie_movie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_favorite`
--

LOCK TABLES `movie_favorite` WRITE;
/*!40000 ALTER TABLE `movie_favorite` DISABLE KEYS */;
INSERT INTO `movie_favorite` VALUES (1,2,19),(2,4,19),(3,6,19),(4,5,19),(5,11,19),(6,24,19),(7,17,19),(8,22,19),(9,21,19),(10,14,19),(11,13,19),(12,18,19),(13,20,19),(14,25,19),(15,11,1),(16,10,24),(17,12,19),(18,6,23);
/*!40000 ALTER TABLE `movie_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (1,'Crime'),(2,'Drama'),(3,'Action'),(4,'Thriller'),(5,'Biography'),(6,'History'),(7,'Western'),(8,'Adventure'),(9,'Fantasy');
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_movie`
--

DROP TABLE IF EXISTS `movie_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `runtime` int(11) DEFAULT NULL,
  `storyline` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_movie`
--

LOCK TABLES `movie_movie` WRITE;
/*!40000 ALTER TABLE `movie_movie` DISABLE KEYS */;
INSERT INTO `movie_movie` VALUES (1,'The Shawshank Redemption',142,'Andy Dufresne is a young and successful banker whose life changes drastically when he is convicted and sentenced to life imprisonment for the murder of his wife and her lover. Set in the 1940\'s, the film shows how Andy, with the help of his friend Red, the prison entrepreneur, turns out to be a most unconventional prisoner.'),(2,'The Godfather',175,'When the aging head of a famous crime family decides to transfer his position to one of his subalterns, a series of unfortunate events start happening to the family, and a war begins between all the well-known families leading to insolence, deportation, murder and revenge, and ends with the favorable successor being finally chosen.'),(3,'The Godfather: Part II',200,'The continuing saga of the Corleone crime family tells the story of a young Vito Corleone growing up in Sicily and in 1910s New York; and follows Michael Corleone in the 1950s as he attempts to expand the family business into Las Vegas, Hollywood and Cuba.'),(4,'The Dark Knight',152,'Batman raises the stakes in his war on crime. With the help of Lieutenant Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the city streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as The Joker.'),(5,'Pulp Fiction',154,'Jules Winnfield and Vincent Vega are two hitmen who are out to retrieve a suitcase stolen from their employer, mob boss Marsellus Wallace. Wallace has also asked Vincent to take his wife Mia out a few days later when Wallace himself will be out of town. Butch Coolidge is an aging boxer who is paid by Wallace to lose his next fight. The lives of these seemingly unrelated people are woven together comprising of a series of funny, bizarre and uncalled-for incidents.'),(6,'12 Angry Men',96,'The defense and the prosecution have rested and the jury is filing into the jury room to decide if a young Spanish-American is guilty or innocent of murdering his father. What begins as an open and shut case of murder soon becomes a mini-drama of each of the jurors\' prejudices and preconceptions about the trial, the accused, and each other. Based on the play, all of the action takes place on the stage of the jury room.'),(7,'Schindler\'s List',195,'Oskar Schindler is a vainglorious and greedy German businessman who becomes an unlikely humanitarian amid the barbaric Nazi reign when he feels compelled to turn his factory into a refuge for Jews. Based on the true story of Oskar Schindler who managed to save about 1100 Jews from being gassed at the Auschwitz concentration camp, it is a testament for the good in all of us.'),(8,'The Good, the Bad and the Ugly',161,'Blondie (The Good) is a professional gunslinger who is out trying to earn a few dollars. Angel Eyes (The Bad) is a hit man who always commits to a task and sees it through, as long as he is paid to do so. And Tuco (The Ugly) is a wanted outlaw trying to take care of his own hide. Tuco and Blondie share a partnership together making money off Tuco\'s bounty, but when Blondie unties the partnership, Tuco tries to hunt down Blondie. When Blondie and Tuco come across a horse carriage loaded with dead bodies, they soon learn from the only survivor (Bill Carson) that he and a few other men have buried a stash of gold in a cemetery. Unfortunately Carson dies and Tuco only finds out the name of the cemetery, while Blondie finds out the name on the grave. Now the two must keep each other alive in order to find the gold. Angel Eyes (who had been looking for Bill Carson) discovers that Tuco and Blondie meet with Carson and knows they know the location of the gold. All he needs is for the two to ...'),(9,'The Lord of the Rings: The Return of the King',201,'While Frodo & Sam continue to approach Mount Doom to destroy the One Ring, unaware of the path Gollum is leading them, the former Fellowship aid Rohan & Gondor in a great battle in the Pelennor Fields, Minas Tirith and the Black Gates as Sauron wages his last war against Middle-Earth.'),(10,'Fight Club',139,'A ticking-time-bomb insomniac and a slippery soap salesman channel primal male aggression into a shocking new form of therapy. Their concept catches on, with underground \"fight clubs\" forming in every town, until an eccentric gets in the way and ignites an out-of-control spiral toward oblivion.'),(11,'Furious 7',137,'Dominic Torretto and his crew thought they left the criminal mercenary life behind. They defeated an international terrorist named Owen Shaw and went their seperate ways. But now, Shaw\'s brother, Deckard Shaw is out killing the crew one by one for revenge. Worse, a Somalian terrorist called Jakarde, and a shady government official called \"Mr. Nobody\" are both competing to steal a computer terrorism program called God\'s Eye, that can turn any technological device into a weapon. Torretto must reconvene with his team to stop Shaw and retrieve the God\'s Eye program while caught in a power struggle between terrorist and the United States government.'),(12,'Cinderella',105,'A girl named Ella (Cinderella) has the purest heart living in a cruel world filled with evil stepsisters and an evil stepmother out to ruin Ella\'s life. Ella comes one with her pure heart when she meets the prince and dances her way to a better life with glass shoes and a little help from her fairy godmother of course.'),(13,'The Lord of the Rings: The Fellowship of the Ring',178,'An ancient Ring thought lost for centuries has been found, and through a strange twist in fate has been given to a small Hobbit named Frodo. When Gandalf discovers the Ring is in fact the One Ring of the Dark Lord Sauron, Frodo must make an epic quest to the Cracks of Doom in order to destroy it! However he does not go alone. He is joined by Gandalf, Legolas the elf, Gimli the Dwarf, Aragorn, Boromir and his three Hobbit friends Merry, Pippin and Samwise. Through mountains, snow, darkness, forests, rivers and plains, facing evil and danger at every corner the Fellowship of the Ring must go. Their quest to destroy the One Ring is the only hope for the end of the Dark Lords reign!'),(14,'Star Wars: Episode V - The Empire Strikes Back',124,'After the Rebel base on the icy planet Hoth is taken over by the empire, Han, Leia, Chewbacca, and C-3PO flee across the galaxy from the Empire. Luke travels to the forgotten planet of Dagobah to receive training from the Jedi master Yoda, while Vader endlessly pursues him.'),(15,'Forrest Gump',142,'Forrest Gump is a simple man with a low I.Q. but good intentions. He is running through childhood with his best and only friend Jenny. His \'mama\' teaches him the ways of life and leaves him to choose his destiny. Forrest joins the army for service in Vietnam, finding new friends called Dan and Bubba, he wins medals, creates a famous shrimp fishing fleet, inspires people to jog, starts a ping-pong craze, create the smiley, write bumper stickers and songs, donating to people and meeting the president several times. However, this is all irrelevant to Forrest who can only think of his childhood sweetheart Jenny Curran. Who has messed up her life. Although in the end all he wants to prove is that anyone can love anyone.'),(16,'Inception',148,'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb\'s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible-inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming.'),(17,'One Flew Over the Cuckoo\'s Nest',133,'McMurphy has a criminal past and has once again gotten himself into trouble and is sentenced by the court. To escape labor duties in prison, McMurphy pleads insanity and is sent to a ward for the mentally unstable. Once here, McMurphy both endures and stands witness to the abuse and degradation of the oppressive Nurse Ratched, who gains superiority and power through the flaws of the other inmates. McMurphy and the other inmates band together to make a rebellious stance against the atrocious Nurse.'),(18,'The Lord of the Rings: The Two Towers',179,'While Frodo and Sam, now accompanied by a new guide, continue their hopeless journey towards the land of shadow to destroy the One Ring, each member of the broken fellowship plays their part in the battle against the evil wizard Saruman and his armies of Isengard.'),(19,'Goodfellas',146,'Henry Hill is a small time gangster, who takes part in a robbery with Jimmy Conway and Tommy De Vito, two other gangsters who have set their sights a bit higher. His two partners kill off everyone else involved in the robbery, and slowly start to climb up through the hierarchy of the Mob. Henry, however, is badly affected by his partners success, but will he stoop low enough to bring about the downfall of Jimmy and Tommy?'),(20,'The Matrix',136,'Thomas A. Anderson is a man living two lives. By day he is an average computer programmer and by night a hacker known as Neo. Neo has always questioned his reality, but the truth is far beyond his imagination. Neo finds himself targeted by the police when he is contacted by Morpheus, a legendary computer hacker branded a terrorist by the government. Morpheus awakens Neo to the real world, a ravaged wasteland where most of humanity have been captured by a race of machines that live off of the humans\' body heat and electrochemical energy and who imprison their minds within an artificial reality known as the Matrix. As a rebel against the machines, Neo must return to the Matrix and confront the agents: super-powerful computer programs devoted to snuffing out Neo and the entire human rebellion.'),(21,'Star Wars',121,'A young boy from Tatooine sets out on an adventure with an old Jedi named Obi-Wan Kenobi as his mentor to save Princess Leia from the ruthless Darth Vader and Destroy the Death Star built by the Empire which has the power to destroy the entire galaxy.'),(22,'Seven Samurai ',207,'A veteran samurai, who has fallen on hard times, answers a village\'s request for protection from bandits. He gathers 6 other samurai to help him, and they teach the townspeople how to defend themselves, and they supply the samurai with three small meals a day. The film culminates in a giant battle when 40 bandits attack the village.'),(23,'City of God',130,'Brazil, 1960\'s, City of God. The Tender Trio robs motels and gas trucks. Younger kids watch and learn well...too well. 1970\'s: Li\'l Zé has prospered very well and owns the city. He causes violence and fear as he wipes out rival gangs without mercy. His best friend Bené is the only one to keep him on the good side of sanity. Rocket has watched these two gain power for years, and he wants no part of it. Yet he keeps getting swept up in the madness. All he wants to do is take pictures. 1980\'s: Things are out of control between the last two remaining gangs...will it ever end? Welcome to the City of God.'),(24,'Interstellar',169,'In the near future, Earth has been devastated by drought and famine, causing a scarcity in food and extreme changes in climate. When humanity is facing extinction, a mysterious rip in the space-time continuum is discovered, giving mankind the opportunity to widen its lifespan. A group of explorers must travel beyond our solar system in search of a planet that can sustain life. The crew of the Endurance are required to think bigger and go further than any human in history as they embark on an interstellar voyage into the unknown. Coop, the pilot of the Endurance, must decide between seeing his children again and the future of the human race.'),(25,'The Silence of the Lambs',118,'Young FBI agent Clarice Starling is assigned to help find a missing woman to save her from a psychopathic serial killer who skins his victims. Clarice attempts to gain a better insight into the twisted mind of the killer by talking to another psychopath Hannibal Lecter, who used to be a respected psychiatrist. FBI agent Jack Crawford believes that Lecter, who is also a very powerful and clever mind manipulator, has the answers to their questions and can help locate the killer. However, Clarice must first gain Lecter\'s confidence before the inmate will give away any information.');
/*!40000 ALTER TABLE `movie_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_post`
--

DROP TABLE IF EXISTS `movie_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_post_71422c2d` (`user_id`),
  CONSTRAINT `movie_post_user_id_3d5bd0d4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_post`
--

LOCK TABLES `movie_post` WRITE;
/*!40000 ALTER TABLE `movie_post` DISABLE KEYS */;
INSERT INTO `movie_post` VALUES (17,'It\'s definitely a great movie!','2015-04-09 00:00:00.000000',19),(18,'I am looking for some girls to watch the film XXX. ','2015-04-09 00:00:00.000000',21),(19,'After all Brother Yao','2015-04-09 00:00:00.000000',19),(20,'awesome','2015-04-09 00:00:00.000000',21),(21,'bring me girls!!!','2015-04-09 00:00:00.000000',19),(22,'Hello! Let\'s make friends!!! My facebook is Di:)','2015-04-09 04:19:03.538000',23),(24,'What are some good comedy crime movies? \n\nSome of my faves include: \n\nThe Honeymoon Machine \'61 \n\nThe Pink Panther \'63 \n\nPenelope \'66 \n\nWho\'s Minding the Mint? \'67 \n\nSmall Time Crooks \'01 \n\nAny others? [smile] \n\nBy the way, I think that \"Elevator to the Gallows\" (1950s French movie) has some comedy elements, though I think that many folks will probably disagree that it\'s comedy crime. ','2015-04-09 03:40:32.783990',19),(25,'looking to watch a great crime / thriller film rated around 7.5 to 8.1, any suggestions?','2015-04-09 03:41:03.997078',19),(26,'Thanks to the nifty IMDB ratings graph, I see that I haven\'t rated a single film with a 1970 release date. After racking my brains a bit it looks like I really haven\'t seen a single film from that year. \n\nGot a few on the watchlist, tho: \n\nCatch 22 \nThe Reckoning \nZabriskie Point (Pink Floyd interest) \nThe Man Who Haunted Himself \nColossus: The Forbin Project \nEl topo \n\n\nThey all sound like my kind of cuppa. \n\n\nWhat\'s your favourites from this year?','2015-04-09 03:41:44.823308',19),(27,'Yes, I know, \"Rewatchability\" is a bit of a misnomer, or just sounds *beep* but I think you get me. \n\nFor a few years now, I have felt jaded with mainstream movies. I still look forward to the occasional blockbuster, if a specific/favoured Director or Actor is attached. Point being, I think what makes a film \"Best/Boss\" for me is if it has rewatch value. \n\nFor instance, for me 2014 had a fairly miserable year for films with rewatch value. \n\nTom Cruise\'s All You Need is Kill adaptation has good rewatch value, but I\'m wondering what else there is? ','2015-04-09 04:24:07.774465',19),(28,'What are some of the best horror films from the 90s up until now? I\'m looking for something really scary that isn\'t only \"killing sprees.\" I want a movie that *beep* with your head and will make you look behind you or out the window. Maybe something that\'ll even make you sick. Most horror films I\'ve found (especailly American) suck! Please help!!!','2015-04-09 03:44:03.635317',24),(29,'Ken Leung - Rush Hour, X-Men: The Last Stand, etc.','2015-04-09 03:44:40.964811',24),(30,'Can you recommend me Asian movies. \nDrama, romance, not heavy on action or martial arts. \nWhen I like two movies by the same director I usually go looking \nfor his other movies in search for more of a good thing. Unfortunately \nthat doesn\'t always mean I will like his other movies. \nI know \"Old boy\" is a favorite with many. Forgive me, but for me it was over the top -- I stopped watching at the \"I\'m like a dog or something\" scene. \n\n\nThese I have in my collection, so I can watch them again: \n\n• Last life in the universe (Thai) \n• The scent of green papaya (Vietnamese) \n• Okuributo (Japan) \n• Perhaps love (I don\'t even like musicals, this is the exception, the only musical in my entire collection happens to be a Chinese one) \n\n• Kim Ki-Duk movies: \nBin Yip, Spring summer..., Breath \nI have also seen: the Bow, The Isle, Address Unknown, Samaritan Girl. Didn\'t really like \"Dream\". \nI have no desire for his violent movies. \n\n• Ang Lee movies: \nLust, Caution \nEat drink man woman \nI don\'t care for \"Crouching Tiger...\" \n\n• The road home (Melodrama (Yimou Zhang) (Chinese)) \nAlso liked: Raise the Red lantern \nWas not al that much into \"Red Sorghum\" \n\n• Dangerous Liaisons (Jin-ho Hur) (Korean) \nI also like: Christmas in august, A good rain knows, April snow \n\n• Wong Kar Wai (HK): \nIn the mood for love \nChung king Express \nhave seen some of his other movies but don\'t necessarily like them. \n\nLiked: \n• Zhu Yu\'s train (can\'t find it on imdb) \n• An affair (1998) (orig.: Jung sa) \n\nMediocre, but still watchable: \nDaisy, A moment to remember (Woo-sung Jung is very easy \non the eyes indeed, but I don\'t care for his action flics). \n\nYour recommendations are welcome. Thank you.','2015-04-09 03:45:31.905671',24),(31,'1. Jodaeiye Nader az Simin (2011) \n\n2. Cidade de Deus (2002) \n\n3. Jagten (2012) \n\n4. Yip Man (2008) \n\n5. Låt den rätte komma in (2008)','2015-04-09 03:46:53.239176',24),(32,'For me, it\'s \nAlien \nAliens \nAlien Resurrection \nAlien3 (Resurrection wasn\'t great, but I liked it better than this) \nPrometheus \nAVP \nAVP:R','2015-04-09 03:47:31.476509',24),(33,'Tokyo Hot. It\'s a great Japanese movie company. The women actors are really hot!','2015-04-09 03:48:01.061866',22),(34,'Here´s my top 10. What is your top 5-10 movies from this year? \nI think it wasn´t the greatest movie year but still decent.. \nOnly top 3 deserves 9 or 10 rating. \n\n1. Das Boot \n2. Evil dead \n3. Excalibur \n4. Indiana Jones: Raiders of the lost ark \n5. Possession \n6. Mad max: Road warrior \n7. Southern comfort \n8. Escape from New York \n9. The Beyond \n10. Scanners','2015-04-09 03:48:21.180696',24),(35,'- Not including short films - \n\n \n\n- We live in a box of space and time. Movies are windows in its walls -','2015-04-09 03:49:10.397802',24),(36,'1.白日焰火 2. 英雄 3. 夜宴 4. 小泽玛利亚 5. 爆乳中出','2015-04-09 03:49:21.264210',22),(37,'Really excited','2015-04-09 04:09:51.171349',22),(38,'My favorite is teacher Cang. She\'s a milestone in movies. ','2015-04-09 04:10:31.528651',22),(39,'Dirty guy!!!','2015-04-09 04:10:51.213422',19),(40,'Xinyue Li','2015-04-09 04:10:54.328412',22),(41,'Brad Pitt is sooooooooooo cool!','2015-04-09 04:14:49.134831',22),(42,'I find it interesting to discuss here. Meet new friends! Haha','2015-04-09 04:14:55.432525',19),(44,'The script was tight, the theme fascinating, the acting incredible (especially Edward Norton, as one might expect), the direction inspired, and the cinematography stunning. It is one of the few films of the past five years that deserves to be seen multiple times. In fact, if you have seen it only once, you have missed something. I was seriously hoping the movie would receive Oscar nominations for Best Actor (Norton), Best Screenplay, Best Director, Best Cinematography and Best Picture.\n\nSo, how is it that the film received no nominations? Unfortunately, it had a mismatched ad campaign. The ads made it seem like the movie was about street boxing, instead of a intellectual and emotional ride through a man\'s psyche as he takes a strange path toward rebellion against consumer society. As a result, most who went to see it were disappointed, and those who would recognize its brilliance stayed far away from the movie theaters. This is one of the most underrated movies I know.\n\nI always love movies that keep you entertained and keep you guessing, and this movie scores a 10 in both. Those who enjoyed The Game, Memento, or The Matrix really should check it out.','2015-04-09 04:16:13.717576',19),(45,'Who do you like besides Brad?','2015-04-09 04:16:36.789652',19),(46,'Nice to meet you!!! ','2015-04-09 04:19:25.193066',19),(47,'Totally agree with you Lixin! Let\'s go to a movie next time. Can\'t wait to watch with you:)','2015-04-09 04:22:15.110607',22),(48,'What are 4 & 5??? Are those thrilling?','2015-04-09 04:22:35.419000',23),(49,'Hmm, I also love that actress. She is really profligate in this movie haha. ','2015-04-09 04:24:07.783813',22),(50,'This is definitely the best movie I have ever watched. You can never guess the ending until the last minutes.','2015-04-09 04:30:44.546000',23),(51,'I like this also because there are many famous actors!','2015-04-09 04:33:04.912000',23),(52,'Hey guys, bring me next time you go to watch a movie.','2015-04-09 04:34:02.196000',23),(53,'I just cannot wait for many latest movies!','2015-04-09 04:34:36.280000',23),(54,'Of course!','2015-04-09 04:37:21.683189',19),(55,'I actually had not thought it is that cool until I watched twice and understood the plot.','2015-04-09 04:38:22.738000',23),(56,'The only thing that stop me from watching latest movies is so many dues','2015-04-09 04:38:16.796445',19),(57,'Looking forward to any other comment for this movie.','2015-04-09 04:38:59.996000',23),(58,'En, maybe I did not totally understand the movie. I will watch it one more time','2015-04-09 04:39:04.837776',19);
/*!40000 ALTER TABLE `movie_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_produce`
--

DROP TABLE IF EXISTS `movie_produce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_produce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid_id` int(11) NOT NULL,
  `mid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_produce_cid_id_3c517cf7538f518f_fk_movie_crew_id` (`cid_id`),
  KEY `movie_produce_mid_id_7a5999760e797339_fk_movie_movie_id` (`mid_id`),
  CONSTRAINT `movie_produce_mid_id_7a5999760e797339_fk_movie_movie_id` FOREIGN KEY (`mid_id`) REFERENCES `movie_movie` (`id`),
  CONSTRAINT `movie_produce_cid_id_3c517cf7538f518f_fk_movie_crew_id` FOREIGN KEY (`cid_id`) REFERENCES `movie_crew` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_produce`
--

LOCK TABLES `movie_produce` WRITE;
/*!40000 ALTER TABLE `movie_produce` DISABLE KEYS */;
INSERT INTO `movie_produce` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,9),(12,12,14),(13,13,15),(14,4,16),(15,14,17),(16,11,18),(17,15,19),(18,16,20),(19,17,21),(20,18,22),(21,19,23),(22,4,24),(23,20,25),(24,21,11),(25,22,12),(26,11,13);
/*!40000 ALTER TABLE `movie_produce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_releaseinfo`
--

DROP TABLE IF EXISTS `movie_releaseinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_releaseinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `area` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `movie_releaseinfo_id_731265b56fcd16ba_uniq` (`id`,`mid_id`),
  KEY `movie_releaseinfo_mid_id_539d43ad0ec537dc_fk_movie_movie_id` (`mid_id`),
  CONSTRAINT `movie_releaseinfo_mid_id_539d43ad0ec537dc_fk_movie_movie_id` FOREIGN KEY (`mid_id`) REFERENCES `movie_movie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_releaseinfo`
--

LOCK TABLES `movie_releaseinfo` WRITE;
/*!40000 ALTER TABLE `movie_releaseinfo` DISABLE KEYS */;
INSERT INTO `movie_releaseinfo` VALUES (1,1,'1994-10-14','USA'),(2,2,'1994-09-10','Canada'),(3,2,'1972-03-24','USA'),(4,2,'1972-08-11','UK'),(5,3,'1974-12-20','USA'),(6,4,'2008-07-18','USA'),(7,5,'1994-10-14','USA'),(8,6,'1957-04-10','USA'),(9,7,'1993-02-04','USA'),(10,8,'1996-12-23','Italy'),(11,9,'2003-12-17','USA'),(12,10,'1999-10-15','USA'),(13,11,'2015-03-16','USA'),(14,11,'2015-04-12','China'),(15,23,'2002-08-31','USA'),(16,24,'2014-10-26','USA'),(17,24,'2014-10-29','UK'),(18,12,'2015-03-13','USA'),(19,15,'1994-07-06','USA'),(20,25,'1991-02-14','USA'),(21,19,'1990-09-21','USA'),(22,25,'1991-02-15','Germany'),(23,16,'2010-07-16','USA'),(24,20,'1999-03-31','USA'),(25,17,'1975-11-21','USA'),(26,18,'2003-04-26','China'),(27,18,'2002-12-05','USA'),(28,22,'1956-11-19','USA'),(29,21,'1977-05-25','USA'),(30,13,'2001-12-19','USA'),(31,14,'1986-06-20','USA'),(32,13,'2015-12-10','UK');
/*!40000 ALTER TABLE `movie_releaseinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_review`
--

DROP TABLE IF EXISTS `movie_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) DEFAULT NULL,
  `content` longtext NOT NULL,
  `rating` int(11) NOT NULL,
  `mid_id` int(11) NOT NULL,
  `uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_review_mid_id_ab2dcee439e0248_fk_movie_movie_id` (`mid_id`),
  KEY `movie_review_uid_id_734a49020dc332c0_fk_auth_user_id` (`uid_id`),
  CONSTRAINT `movie_review_mid_id_ab2dcee439e0248_fk_movie_movie_id` FOREIGN KEY (`mid_id`) REFERENCES `movie_movie` (`id`),
  CONSTRAINT `movie_review_uid_id_734a49020dc332c0_fk_auth_user_id` FOREIGN KEY (`uid_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_review`
--

LOCK TABLES `movie_review` WRITE;
/*!40000 ALTER TABLE `movie_review` DISABLE KEYS */;
INSERT INTO `movie_review` VALUES (1,'2015-04-08 00:00:00.000000','very good',8,1,19),(2,'2015-04-08 00:00:00.000000','not as expected',6,3,19),(3,'2015-04-08 00:00:00.000000','not so bad',7,4,19),(4,'2015-04-08 00:00:00.000000','perfect!',10,9,19),(6,'2015-04-08 00:00:00.000000','wow!!!',9,9,19),(12,'2015-04-08 00:00:00.000000',' Hope to watch it later!',7,10,19),(13,'2015-04-08 00:00:00.000000','    Impressive!!!',10,2,19),(14,'2015-04-08 00:00:00.000000','    but also great!',8,3,19),(18,'2015-04-09 00:00:00.000000','    So sad',7,7,19),(19,'2015-04-09 00:00:00.000000','    Great!    Great!    Great!',9,5,19),(20,'2015-04-09 00:00:00.000000','    hahahaha',9,6,1),(23,'2015-04-09 00:00:00.000000','    his movie from Walt Disney Pictures is great in its entertainment,direction,romance,perfect acting, amazing direction and script. It is hard for me to see how some people defame Walt Disney because of envy.\r\n\r\nCinderella is a top and successful movie that had already achieved more than 335 million US$ all over the world ( A very clear proof that Walt Disney Pictures are the best expert in making animation and excellent movies).\r\n\r\nThis film is a real terrific family movie you must all see whether you are children or adults.\r\n',8,12,19),(24,'2015-04-09 00:00:00.000000','    I knew nothing of this film before I saw it by chance in a rare Pub open screening, but boy was I glad I got the chance to take a look. I was riveted all night - I completely ignored my friends! I thought it was an awesome re-enactment of a true story - powerful, moving, raw, real - and even funny in parts. I walked away afterwards, beaming. It\'s rare a great film like this is made, especially these days. I gave it ten out of ten. Please see it if you can.',9,23,19),(25,'2015-04-09 00:00:00.000000','    I am, unfortunately, not one of the faithful Chuck Palahniuk readers who had read the book BEFORE they saw the movie. I, however, couldn\'t wait to read the book after seeing this film. I\'ve read the book 5 times since and seen the movie more times than I can remember. Simply put, this movie changed my life. Not just on a personal level (on which I will not comment here except to say I\'m now a major Palahniuk fan) but also as a movie-watcher. I view movies differently after seeing this movie, because it broke down doors. This movie is literally the first time I ever came upon something that, at first sight seemed incredibly stylish, sophisticated and entertaining. The plot lured you in before turning you upside down, the acting was nothing short of perfect (has there ever been a more memorable character than Brad Pitt as Tyler Durden?), the music, the screenplay (based on what is now my all-time favorite book), the lighting, the pacing, the everything! Virtually everything about this movie took my by surprise, save for one man. David Fincher, director, was probably the only reason I went to see this movie in the first place. His work on \'Seven\' and \'The Game\' had me excited to see what he would do next, but I came to this movie expecting a stylish flick that offered a good plot and hopefully some good acting but what I got was so much, much more. Honestly, how many times have you seen a movie that, with every viewing, gets even more complicated yet so simple that you can\'t help but laugh. Every time I watch this movie I notice something new about it, such is the depth of what is on the screen. Then there\'s the tiny issue of the story of Fight Club, penned by Chuck Palahniuk (who has one of the most fertile imaginations around. Don\'t believe me? Read \'Survivor\' and weep!) the story is nothing short of incredible, a pure shock-value social commentary on the state of the world at the end of the century. You\'ll cry, you\'ll laugh, you\'ll do all the clichés but most importantly you\'ll identify with every single thing on the screen. This movie rates as one of my all-time favorite movies and, simply put, if you haven\'t seen it yet then quit wasting your time OnLine and get to the nearest videostore!',8,10,19),(26,'2015-04-09 00:00:00.000000','    Quite simply, the greatest film ever made.\r\n\r\nHumour, sadness, action, drama and a Vietnam film all rolled into one.\r\n\r\nI\'m not a stone cold, heartless villain, but it takes a lot to make me cry when I watch a movie. Bambi\'s mother, I couldn\'t care less. Jimmy Stewart in, \"Oh, what a wonderful life,\" - yeah right! The Lion King, when Mufasa bites the big one - on the verge.\r\n\r\nBut seriously - I bawled my big brown eyes out, on several occasions in this film. A real tear-jerker, and a wonderful character, played to perfection by Tom Hanks. Every bit as worthy for the Oscar as Rooney was to win the Premiership in 2007.\r\n\r\nI cannot say it enough: This is THE film of all time. Watch it, and you\'ll see.',9,15,19),(27,'2015-04-09 00:00:00.000000','    By about 2009 when \'Fast & Furious\' was released, the franchise had slowly began to veer away from its initial focus of street racing and instead began to turn its attention to the action genre and over-the-top big budget sequences. However along with this change of style, the franchise was actually getting better and better with each film. Today I saw the most recent instalment in the cinema... talk about action-packed. \'Fast & Furious 7\' is a no-holds, over- the-top and mindless action film, but this aside, it is an extremely entertaining and fun film to watch. With an all-star cast and some brilliant action sequences, \'Fast & Furious 7\' is proof that certain franchises can continually make great movies. The most notable moment however in the entire film is the emotional and respectful ending during the send-off of Paul Walker, the film finishing with a montage of Walker in the previous six films, finishing with just two words, \'For Paul\', this is the first time a Fast and Furious film has affected me emotionally, and it is arguably the best in the franchise.',9,11,19),(28,'2015-04-09 00:00:00.000000','    If there was one word that I could use to describe Martin Scorsese\'s \"Goodfellas\": it\'d be priceless.\r\n\r\nA surreal and deeply fascinating take on life of Henry Hill who was involved in the Mob for three decades and his rise throughout the time span (and Nicholas Pileggi\'s book \"Wiseguy\").\r\n\r\nThere isn\'t a single moment in the movie where it doesn\'t miss a beat, you could only tell by the atmosphere of the time period and it seems so real.\r\n\r\nThe performances in this film simply make it even more memorable and how the characters are portrayed here especially by Ray Liotta, Robert De Niro, Joe Pesci (who won an Oscar for Best Supporting Actor), and Paul Sorvino are believable and easy to understand that they were a family, very close and tightly knit to the core. Also, how director Martin Scorsese lets the movie pace itself and keeps the viewer off guard in what happens deserves a lot of credit.',8,19,19),(29,'2015-04-09 00:00:00.000000','    What is going on with the IMDb user reviews lately? It\'s like the masses can no longer be trusted. In the last month, the users have decreed \"Airbender\" the worst abomination ever, when in fact it\'s just an average movie. User reviews raved over \"Despicable Me\", when it was about as entertaining as a \"Dexter\'s Lab\" rerun. And now? \"Inception\" is the 3rd best movie ever made? Are you kidding me? This was a very creative and interesting flick that went waaaayyy overboard. The problem with this genre (you know the genre -- was it a dream? or a dream about a dream? or a parallel universe where people dream they\'re dreaming about parallel universes while pretending to dream) is sooner or later you stop caring about the actual action because it\'s a dream. So the 20 minutes spent watching gunfights and car crashes in the pouring rain, and the 30 minutes spent watching these guys shoot up a ski fortress, and another 30 minutes watching what\'s-his-name float around a hotel just didn\'t do it for me. Not a terrible movie, but 3rd greatest movie ever? You must be dreaming.',8,16,19),(30,'2015-04-09 00:00:00.000000','    I was extremely lucky to get the chance to see this film upon its first day release, before entering the cinema, my expectations were already high, after all, this was a film from the cinematic genius who brought us the likes of \'Inception\' and \'The Dark Knight\', to summarise the following review in a single sentence: I left the cinema in extreme awe from the visual masterpiece I had just viewed. A film that explores the psychological and emotional state of a man whose life revolves around his family, \'Interstellar\' is a thrilling and thought-provoking film that boasts an intellectual story masterfully written by the Nolan brothers. Whilst there seems to have been influence from films like \'2001: A Space Odyssey\' and \'Apollo 13\', \'Interstellar\' is unique in its own way. Whilst the subject may be hard to comprehend at times, it can\'t be denied how visually monumental and thoughtful Christopher Nolan\'s epic science fiction masterpiece is, and can easily be named the best film of this year and possibly one of the greatest science fiction films to have ever graced the screen. A sheer brilliant feat of cinema.',9,24,19),(31,'2015-04-09 00:00:00.000000','    Jack Nicholson is a great actor. No, not a great actor, a spectacular actor. This is a film from fairly early in his career, as well as it is for several other actors in this film, who later have had long, great careers too, including Danny DeVito, Christopher Lloyd and Brad Dourif. The film has some unforgettable moments... who could forget Louise Fletcher\'s icy stare, Jack Nicholson\'s smart-aleck remarks or Will Sampson\'s impressive, almost entirely silent performance? The film portrays the horrible truth about how patients were treated in mental institutions back then, and tells the story of someone who desperately wanted to break out, to rebel, to change things, for himself and for the others. I was compelled by this film, from the very first frame. I never took my eyes off it, and I will definitely be thinking about this film for a while. I thought it was great the way one of the very first frames depicted the institution as something far more similar to a prison than a hospital. Milos Forman did a great job of making that contrast very powerful to the viewer. The film is very moving and a truly beautiful cinematic experience. Every single actor gives a stellar performance, every single character is perfectly written, every single line, every single frame is absolutely perfect. I wouldn\'t change a thing in this film. It has a great pace, you never lose interest, but it never seems to be rushing to get through it, either. It\'s simply perfect. I have not read the original book, but if I ever come across it, I might check it out. I have only seen this film once, but I will definitely watch it many times in years to come. I recommend this amazing piece of great cinema to anyone who has at least a slight interest in the drama genre, or any fan of any of the actors, as they are all in their absolute prime in this film. 10/10',10,17,19),(32,'2015-04-09 00:00:00.000000','    Akira Kurosawa\'s masterpiece... The Japanese equivalent to Orson Welles\' Citizen Kane.. I say it\'s just as good, if not even better. Not only Kurosawa\'s most well known film, but the most widely recognized Japanese film ever made. This movie will forever be known as a milestone in motion picture history.\r\n\r\nThe story revolves around a village that has become a group of bandits\' common looting and pillaging ground. The villagers cannot take this any longer and go to town to hire warriors to defend the village from the bandits. A wandering ronin, Kambei (Takashi Shimura) agrees to help them and with his help, they recruit six others that agree to take the job. The seven samurai teach the villagers how to stand up to the bandits and defend themselves. Finally, when the time comes, they engage in a fierce battle with the attacking bandits.\r\n\r\nAbout once in every 20 years or so we are gifted with a film that has the meaning, power, richness, and technique that The Seven Samurai has. I cannot urge anyone enough to see this film, the images are true cinematic poetry rich with so much emotion that I cannot even describe them in words. If you have never seen any of Kurosawa\'s works, then please see Seven Samurai... you will witness the true beauty, excellence and magic that the art form known as film is capable of.',8,22,19),(33,'2015-04-09 00:00:00.000000','    Star wars made epic fantasy real. For a generation of people it has defined what the cinema experience is meant to be. Today it is probable that pc games will offer a deeper and more satisfying entertainment solution, but for pure visual and aural pleasure, mixed with basic emotional manipulation, there has never and will never be a better example of cinema than when star wars appeared over 25 years ago. When you think of star wars, you must remember what else was happening at the time. In America, the war in Vietnam had been lost. In the U.K economic disaster was occurring(a 3 day working week, and the army collecting rubbish). It was almost like the two most technically advanced countries in the world were going backwards. Star wars let everybody escape from that reality and reach for a future that was uncertain but ultimately good.',8,21,19),(35,'2015-04-09 00:00:00.000000','    The Empire Strikes Back is the best film in the original Star Wars trilogy. It has all the great qualities that the original Star Wars has: great effects (at the time of its release), appealing characters, and lots of spellbinding action. It also has eliminated some of the problems that plagued the first: the storyline is tighter, and goes much deeper into character development. The performances are terrific, especially by Harrison Ford as Han Solo, and Billy Dee Williams as Lando Calrissian. George Lucas has also remembered to include a spellbinding battle sequence with the snowspeeder sequence near the beginning of the film. The conclusion, with a lightsaber duel between Darth Vader and Luke Skywalker, is truly one of the most suspenseful and dramatic scenes in the entire series. This is a truly wondrous film, and serves as a constant reminder that just because a movie is expensive and a blockbuster doesn\'t mean that it has to be shallow and two dimensional. This film will undoubtedly entertain viewers of all ages from start to finish.',9,14,19),(36,'2015-04-09 00:00:00.000000','    I absolutely love this movie, partly because the acting is really good, but also for the CGI effects and the good storyline. I watched the extended version and realized that it isn\'t boring like some people think because some people I know think that FOTR is quite a lengthy movie because of all the talking, but in my opinion, if there\'s not talking, there\'s no story! If they just jumped to the fighting scenes without any of the introduction, then you won\'t know where the movie started from. I love the scenes where they get to fight, whether Orcs or Nazgul, the fighting scenes are still the climax of the movie.\r\n\r\nAnother good movie to see after FOTR is TTT, of course. It is the second part of this great trilogy and there are more climatic scenes. Most probably, you\'ll enjoy that more than FOTR but don\'t shun this movie just because it\'s a bit lengthy.\r\n\r\nOverall, it\'s a great movie to see and it is really worth spending the money to buy/rent the extended/special DVD to watch too. Definitely a 10 out of 10 on my scale! Actually, in my opinion, 10/10 doesn\'t even come close!',7,13,19),(37,'2015-04-09 00:00:00.000000','    Peter Jackson truly outdid himself when creating the Lord of the Rings: The Fellowship of the Ring and he fails to disappoint us in the 2nd part of the Trilogy. The Two Towers shows us that he is not a one-hit wonder, like so many directors are. I actually think that The Two Towers reaches the same level as the Fellowship of the Ring, and sometimes even surpasses it.\r\n\r\nThis film is the biggest film in the trilogy. What do I mean by that? Well this film has so many things going like the amazing Battle of Helms Deep. Frodo and Sam journey to Mount Doom, to destroy the Ring. But the one who\'s leading them through the way is Gollum, he looks so creepy and realistic, that he doesn\'t feel disconnected from us. A powerful performance by Andy Serkis as Gollum, he should of been nominated for an Oscar for Best Supporting Actor.\r\n\r\nThe Best part of the film, is quite easily and everyone knows it the ending. The ending of the battle of Helm\'s Deep is quite breathtaking, and as Gandalf the White comes in the distance with another army to defeat the Orcs. When Treebeard and his army of Entz tear down Isengard, the destruction and the battle is so immense in size, that you truly have to see to believe.\r\n\r\nIn size and scale, Peter Jackson has truly redefined the word \"epic\" and he also pays attention to the small things that truly elevate this movie from great to amazing. I definitely recommend this film to everyone, but you really should watch the first movie to truly understand what\'s going on.',9,18,19),(38,'2015-04-09 00:00:00.000000','    Ok- first, as mentioned in another review, the geographic/historical errors in this film are GLARING. You\'ve got men carrying revolvers that look like old style cap-and-ball pistols, but they\'re loading them with metallic cartridges- historically about five years early. Eastwood carries a rifle that hasn\'t been invented yet, Tuco assembles a \"superpistol\" out of a Colt, a Remington, and a Smith and Wesson- impossible. And there was nothing of merit taking place between the North and South during the Civil War in the Southwest. Now, that aside, I must say that this is the Greatest western ever. I first saw this film when I was about ten. I\'d never sat through an entire Western befor, even though my Dad watched them constantly. Since then, I\'ve been through film school, watched hundreds of Westerns, learned to appreciate them- but NOTHING matches up to this. The Searchers, Stagecoach, Gunfight at the O.K. Corral, The Gunfighter, High Noon, Shane- all great films, but saddled with the standard American Western morality- the good guy never takes liberties with the eastern schoolmarm, the bad guy wears a black hat, etc. Coming from Italy, TG,TB &TU isn\'t bound by these conventions. Blondie\'s the \"good guy\"- but he\'s also a bounty hunter. He makes a living in a highly immoral way, but is obviously the \"good\"- not because we\'re told, but from small acts- giving the dying soldier a cigar, making sure the Captain knows to hold on till he hears the bridge blow, the genuine regret he feel for having to let Shorty die. And while Angel Eyes may be the Bad, we at least know he has prinicpals- when he\'s hired for a job, he always sees the job through. And Tuco may be more immoral than the other two, but he\'s so savvy and his role so humorous that one can\'t bring oneself to look upon him disfavorably. In other words, historical inaccuracies aside, TG, TB, & TU maybe one of the most accurate portrayals of the West ever put on film- there are no clear-cut lines of conduct, no black and white, or even grey, but just a swirled palette of various facets of the human condition.',8,8,19),(39,'2015-04-09 00:00:00.000000','    he Matrix...when I first heard about it, I expected just another sci-fi action thriller. Good and filled with insane stunts, but not terribly intelligent.\r\n\r\nBoy, was I wrong. Oh, the stunts are there in spades, all right, and yes, they are awesome. And the special effects are absolutely amazing (even if similar ones have been used in other movies as a result- and not explained as well).\r\n\r\nBut the movie has plot as well. It has characters that I cared about. From Keanu Reeves\' excellent portrayal of Neo, the man trying to come to grips with his own identity, to Lawrence Fishburne\'s mysterious Morpheus, and even the creepy Agents, everyone does a stellar job of making their characters more than just the usual action \"hero that kicks butt\" and \"cannon fodder\" roles. I cared about each and every one of the heroes, and hated the villains with a passion. It has a plot, and it has a meaning...and lo and behold, a plot does help the fight scenes! Just try it, if you haven\'t seen the movie before. Watch one of the fight scenes. Then watch the whole movie. There\'s a big difference in the feeling and excitement of the scenes- sure, they\'re great as standalones, but the whole thing put together is an experience unlike just about everything else that\'s come to the theaters. Think about it next time you\'re watching one of the more brainless action flicks...think how much better it COULD be.\r\n\r\nAll I can say is WATCH THIS MOVIE. If you haven\'t, you\'re missing out on one of the best films of all time. It isn\'t just special effects, folks.\r\n',10,20,19),(40,'2015-04-09 00:00:00.000000','    I\'ve seen way too many thrillers. You name it: \"Identity\", \"Seven\", \"The Usual Suspects\", etc., etc., etc. I remember my friend being so obsessed with \"Silence of the Lambs\", that it drove me crazy. And I hated the movie naturally and refused to see it. But everyone told me that I have to see this, so I let my guard down. And had an open mind, and I\'m glad I did. My friend was right, this is a great movie. It is so well acted, I couldn\'t even describe. I loved \"Silence of the Lambs\" and would recommend it to anyone. It\'s creepy and exciting. Trust me, you\'ll love it.',9,25,19),(41,'2015-04-09 00:00:00.000000','    This film deserves to be on anyone\'s list of top films. My problem is that it is so perfect, so seamlessly polished, it is hard to appreciate the individual excellences.\r\n\r\nThe acting is top notch. I believe that monologue acting is quite a bit simpler than real reactive ensemble acting. Most of what we see today is monologues pretending to be conversations. But in this film, we have utter mastery of throwing emotions. Once the air becomes filled with human essence, it is hard to not get soaked ourselves as the camera moves through the thick atmosphere. Yes, there are slight differences in how each actor projects (Fonda internally, Balsam completely on his skin...) but the ensemble presents one vision to the audience.\r\n\r\nThe writing is snappy too. You can tell it was worked and worked and worried, going through several generations. It is easy to be mesmerized by this writing and acting, and miss the rare accomplishment of the camera-work. This camera is so fluid, you forget you are in one room. It moves from being a human observer, to being omniscient, to being a target. It is smart enough to seldom center on the element of most importance, so expands the field to all men.\r\n\r\nThis is very hard. Very hard, to make the camera human. So much easier to do what we see today -- acknowledge the machinery and jigger with it. Do we have a filmmaker today who could do this?\r\n\r\nTed\'s Evaluation -- 4 of 3: Every cineliterate person should experience this.',10,6,19),(42,'2015-04-09 03:28:33.438359','    ',8,11,1),(43,'2015-04-09 03:36:43.806670','amazing!    ',10,20,1),(44,'2015-04-09 04:09:09.605840','    best movie ever',10,10,24);
/*!40000 ALTER TABLE `movie_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_topic`
--

DROP TABLE IF EXISTS `movie_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_topic` (
  `post_ptr_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`post_ptr_id`),
  CONSTRAINT `movie_topic_post_ptr_id_6bd10b92cca8e3d8_fk_movie_post_id` FOREIGN KEY (`post_ptr_id`) REFERENCES `movie_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_topic`
--

LOCK TABLES `movie_topic` WRITE;
/*!40000 ALTER TABLE `movie_topic` DISABLE KEYS */;
INSERT INTO `movie_topic` VALUES (17,'I love furious 7'),(18,'Hello, let\'s watch film'),(22,'I am a big movie fan'),(24,'comedy crime'),(25,'Crime : Best Crime films not on IMDb top 250'),(26,'Your favourite films from 1970'),(27,'Your best \"rewatchable\" films of 2014 edited'),(28,' Best horror films from the 90s - present'),(29,'Actors who deserve more recognition'),(30,'Can you recommend me Asian movies?'),(31,'Top 5 Foreign Movies From (2000-2014)'),(32,'Alien Franchise Best to Worst'),(34,'Top 5-10 movies from year 1981'),(35,'Nolan Films , Best to Worst.'),(37,'I love Japanese Movies'),(41,'Do you guys love Fight Club?'),(42,'This is the best place for movie!');
/*!40000 ALTER TABLE `movie_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_watch`
--

DROP TABLE IF EXISTS `movie_watch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_watch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid_id` int(11) NOT NULL,
  `uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_watch_mid_id_1fd8d9735f994994_fk_movie_movie_id` (`mid_id`),
  KEY `movie_watch_uid_id_b5de0e788f9f68c_fk_auth_user_id` (`uid_id`),
  CONSTRAINT `movie_watch_uid_id_b5de0e788f9f68c_fk_auth_user_id` FOREIGN KEY (`uid_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `movie_watch_mid_id_1fd8d9735f994994_fk_movie_movie_id` FOREIGN KEY (`mid_id`) REFERENCES `movie_movie` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_watch`
--

LOCK TABLES `movie_watch` WRITE;
/*!40000 ALTER TABLE `movie_watch` DISABLE KEYS */;
INSERT INTO `movie_watch` VALUES (1,1,19),(5,6,19),(6,7,19),(7,11,19),(8,21,19),(9,14,19),(10,20,19),(11,25,19),(12,11,1),(13,10,24),(14,12,19);
/*!40000 ALTER TABLE `movie_watch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-09  9:17:53
