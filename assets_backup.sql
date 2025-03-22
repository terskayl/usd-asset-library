-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: assets
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add asset',7,'add_asset'),(26,'Can change asset',7,'change_asset'),(27,'Can delete asset',7,'delete_asset'),(28,'Can view asset',7,'view_asset'),(29,'Can add keyword',8,'add_keyword'),(30,'Can change keyword',8,'change_keyword'),(31,'Can delete keyword',8,'delete_keyword'),(32,'Can view keyword',8,'view_keyword'),(33,'Can add asset version',9,'add_assetversion'),(34,'Can change asset version',9,'change_assetversion'),(35,'Can delete asset version',9,'delete_assetversion'),(36,'Can view asset version',9,'view_assetversion'),(37,'Can add commit',10,'add_commit'),(38,'Can change commit',10,'change_commit'),(39,'Can delete commit',10,'delete_commit'),(40,'Can view commit',10,'view_commit');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$TebRSqXIZ7A61iRI1LSOEp$7tBsJ+qGkdaqzetCZf92eqBXQIXilGien7B0h4G6aIk=','2025-02-20 07:07:57.179425',1,'admin','','','admin@admin.com',1,1,'2025-02-20 06:56:52.803326');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'library','asset'),(9,'library','assetversion'),(10,'library','commit'),(8,'library','keyword'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-02-20 06:55:47.997904'),(2,'auth','0001_initial','2025-02-20 06:55:48.639969'),(3,'admin','0001_initial','2025-02-20 06:55:48.788500'),(4,'admin','0002_logentry_remove_auto_add','2025-02-20 06:55:48.798324'),(5,'admin','0003_logentry_add_action_flag_choices','2025-02-20 06:55:48.805112'),(6,'contenttypes','0002_remove_content_type_name','2025-02-20 06:55:48.917797'),(7,'auth','0002_alter_permission_name_max_length','2025-02-20 06:55:48.979503'),(8,'auth','0003_alter_user_email_max_length','2025-02-20 06:55:48.999249'),(9,'auth','0004_alter_user_username_opts','2025-02-20 06:55:49.006309'),(10,'auth','0005_alter_user_last_login_null','2025-02-20 06:55:49.064306'),(11,'auth','0006_require_contenttypes_0002','2025-02-20 06:55:49.068467'),(12,'auth','0007_alter_validators_add_error_messages','2025-02-20 06:55:49.075349'),(13,'auth','0008_alter_user_username_max_length','2025-02-20 06:55:49.142289'),(14,'auth','0009_alter_user_last_name_max_length','2025-02-20 06:55:49.208564'),(15,'auth','0010_alter_group_name_max_length','2025-02-20 06:55:49.225524'),(16,'auth','0011_update_proxy_permissions','2025-02-20 06:55:49.235159'),(17,'auth','0012_alter_user_first_name_max_length','2025-02-20 06:55:49.307873'),(18,'sessions','0001_initial','2025-02-20 06:55:49.351449'),(19,'library','0001_initial','2025-02-20 17:33:26.096274'),(20,'library','0002_remove_keyword_keyword','2025-02-20 17:33:26.140137'),(21,'library','0003_keyword_keyword','2025-02-20 17:33:26.192121'),(22,'library','0004_assetversion_filepath','2025-02-24 17:30:43.376258');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('xpjiz5ngcdgmuwqxop2yv3ub5w37ck3z','.eJxVjEEOwiAQRe_C2hAQBqxL9z0DmWFAqgaS0q6Md7dNutDtf-_9twi4LiWsPc1hYnEVWpx-N8L4THUH_MB6bzK2uswTyV2RB-1ybJxet8P9OyjYy1Yn8NYqAGOMZjAUKScma5yNxC6THiwMOnqbNDrwEVFlujD4LSClz-LzBd5LN70:1tl0f7:SOGWYTTpSGZ6miwyrqjVPshPUuH9555WEaul2pR3X-Y','2025-03-06 07:07:57.184052');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_asset`
--

DROP TABLE IF EXISTS `library_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_asset` (
  `id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assetName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assetStructureVersion` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hasTexture` tinyint(1) NOT NULL,
  `thumbnailFilepath` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_asset`
--

LOCK TABLES `library_asset` WRITE;
/*!40000 ALTER TABLE `library_asset` DISABLE KEYS */;
INSERT INTO `library_asset` VALUES ('034a7efd1f47478298e0763c36ca70cd','cafeTable','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cafeTable\\thumbnail.png'),('3a1b92ae55c74864968ba712671eb24c','teapot','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\teapot\\thumbnail.png'),('4769ff51393942a4bddafa929cd59f03','campfire','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\campfire\\thumbnail.png'),('5feb9a74aa414c87aa7288024da44319','bookStack','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\bookStack\\thumbnail.png'),('6d887e0d244d41ebac4daa0da4635b97','cartoonFish','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cartoonFish\\thumbnail.png'),('81bbb0e6436146aebe329ff391f357c8','yugiohClockArc','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yugiohClockArc\\thumbnail.png'),('8438dd6d923d4dc2909e85303906914a','beegCrab','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\beegCrab\\thumbnail.png'),('8ef16f727fbc485986cc5b7faef478d6','vintageLamp','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\vintageLamp\\thumbnail.png'),('aada48ec16ce4f398fa4d5b039ecd481','pickleBarrels','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\pickleBarrels\\thumbnail.png'),('ac2edbd6503b4154bd10f62c2f17ee41','sittingMoomin','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\sittingMoomin\\thumbnail.png'),('b19fc4fd1ef24357b47d87a4c37a629e','yellowDuck','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yellowDuck\\thumbnail.png'),('c7fa0add5aa8437b84bf3b668a000f5b','skateboard','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\skateboard\\thumbnail.png'),('f98d11216c07436eb8493db3dd8a4ba8','parkBench','03.00.00',0,'C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\parkBench\\thumbnail.png');
/*!40000 ALTER TABLE `library_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_asset_keywordslist`
--

DROP TABLE IF EXISTS `library_asset_keywordslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_asset_keywordslist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `asset_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `library_asset_keywordsList_asset_id_keyword_id_2a064302_uniq` (`asset_id`,`keyword_id`),
  KEY `library_asset_keywor_keyword_id_946423c7_fk_library_k` (`keyword_id`),
  CONSTRAINT `library_asset_keywor_keyword_id_946423c7_fk_library_k` FOREIGN KEY (`keyword_id`) REFERENCES `library_keyword` (`id`),
  CONSTRAINT `library_asset_keywordsList_asset_id_3a4ca979_fk_library_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `library_asset` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=683 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_asset_keywordslist`
--

LOCK TABLES `library_asset_keywordslist` WRITE;
/*!40000 ALTER TABLE `library_asset_keywordslist` DISABLE KEYS */;
INSERT INTO `library_asset_keywordslist` VALUES (607,'034a7efd1f47478298e0763c36ca70cd',15),(608,'034a7efd1f47478298e0763c36ca70cd',16),(609,'034a7efd1f47478298e0763c36ca70cd',17),(660,'3a1b92ae55c74864968ba712671eb24c',9),(662,'3a1b92ae55c74864968ba712671eb24c',10),(661,'3a1b92ae55c74864968ba712671eb24c',12),(663,'3a1b92ae55c74864968ba712671eb24c',17),(655,'3a1b92ae55c74864968ba712671eb24c',60),(656,'3a1b92ae55c74864968ba712671eb24c',61),(657,'3a1b92ae55c74864968ba712671eb24c',62),(658,'3a1b92ae55c74864968ba712671eb24c',63),(659,'3a1b92ae55c74864968ba712671eb24c',64),(610,'4769ff51393942a4bddafa929cd59f03',18),(611,'4769ff51393942a4bddafa929cd59f03',19),(612,'4769ff51393942a4bddafa929cd59f03',20),(613,'4769ff51393942a4bddafa929cd59f03',21),(614,'4769ff51393942a4bddafa929cd59f03',22),(615,'4769ff51393942a4bddafa929cd59f03',23),(616,'4769ff51393942a4bddafa929cd59f03',24),(617,'4769ff51393942a4bddafa929cd59f03',25),(618,'4769ff51393942a4bddafa929cd59f03',26),(619,'4769ff51393942a4bddafa929cd59f03',27),(597,'5feb9a74aa414c87aa7288024da44319',5),(598,'5feb9a74aa414c87aa7288024da44319',6),(599,'5feb9a74aa414c87aa7288024da44319',7),(600,'5feb9a74aa414c87aa7288024da44319',8),(601,'5feb9a74aa414c87aa7288024da44319',9),(602,'5feb9a74aa414c87aa7288024da44319',10),(603,'5feb9a74aa414c87aa7288024da44319',11),(604,'5feb9a74aa414c87aa7288024da44319',12),(605,'5feb9a74aa414c87aa7288024da44319',13),(606,'5feb9a74aa414c87aa7288024da44319',14),(620,'6d887e0d244d41ebac4daa0da4635b97',28),(621,'6d887e0d244d41ebac4daa0da4635b97',29),(622,'6d887e0d244d41ebac4daa0da4635b97',30),(623,'6d887e0d244d41ebac4daa0da4635b97',31),(624,'6d887e0d244d41ebac4daa0da4635b97',32),(625,'6d887e0d244d41ebac4daa0da4635b97',33),(626,'6d887e0d244d41ebac4daa0da4635b97',34),(627,'6d887e0d244d41ebac4daa0da4635b97',35),(681,'81bbb0e6436146aebe329ff391f357c8',51),(677,'81bbb0e6436146aebe329ff391f357c8',76),(678,'81bbb0e6436146aebe329ff391f357c8',77),(679,'81bbb0e6436146aebe329ff391f357c8',78),(680,'81bbb0e6436146aebe329ff391f357c8',79),(595,'8438dd6d923d4dc2909e85303906914a',31),(596,'8438dd6d923d4dc2909e85303906914a',32),(593,'8438dd6d923d4dc2909e85303906914a',33),(592,'8438dd6d923d4dc2909e85303906914a',80),(594,'8438dd6d923d4dc2909e85303906914a',84),(670,'8ef16f727fbc485986cc5b7faef478d6',17),(664,'8ef16f727fbc485986cc5b7faef478d6',65),(665,'8ef16f727fbc485986cc5b7faef478d6',66),(666,'8ef16f727fbc485986cc5b7faef478d6',67),(667,'8ef16f727fbc485986cc5b7faef478d6',68),(668,'8ef16f727fbc485986cc5b7faef478d6',69),(669,'8ef16f727fbc485986cc5b7faef478d6',70),(639,'aada48ec16ce4f398fa4d5b039ecd481',12),(634,'aada48ec16ce4f398fa4d5b039ecd481',41),(635,'aada48ec16ce4f398fa4d5b039ecd481',42),(636,'aada48ec16ce4f398fa4d5b039ecd481',43),(637,'aada48ec16ce4f398fa4d5b039ecd481',44),(638,'aada48ec16ce4f398fa4d5b039ecd481',45),(640,'aada48ec16ce4f398fa4d5b039ecd481',46),(641,'aada48ec16ce4f398fa4d5b039ecd481',47),(642,'aada48ec16ce4f398fa4d5b039ecd481',48),(644,'ac2edbd6503b4154bd10f62c2f17ee41',31),(643,'ac2edbd6503b4154bd10f62c2f17ee41',49),(645,'ac2edbd6503b4154bd10f62c2f17ee41',50),(646,'ac2edbd6503b4154bd10f62c2f17ee41',51),(673,'b19fc4fd1ef24357b47d87a4c37a629e',29),(671,'b19fc4fd1ef24357b47d87a4c37a629e',71),(672,'b19fc4fd1ef24357b47d87a4c37a629e',72),(674,'b19fc4fd1ef24357b47d87a4c37a629e',73),(675,'b19fc4fd1ef24357b47d87a4c37a629e',74),(676,'b19fc4fd1ef24357b47d87a4c37a629e',75),(647,'c7fa0add5aa8437b84bf3b668a000f5b',52),(648,'c7fa0add5aa8437b84bf3b668a000f5b',53),(649,'c7fa0add5aa8437b84bf3b668a000f5b',54),(650,'c7fa0add5aa8437b84bf3b668a000f5b',55),(651,'c7fa0add5aa8437b84bf3b668a000f5b',56),(652,'c7fa0add5aa8437b84bf3b668a000f5b',57),(653,'c7fa0add5aa8437b84bf3b668a000f5b',58),(654,'c7fa0add5aa8437b84bf3b668a000f5b',59),(633,'f98d11216c07436eb8493db3dd8a4ba8',17),(628,'f98d11216c07436eb8493db3dd8a4ba8',36),(629,'f98d11216c07436eb8493db3dd8a4ba8',37),(630,'f98d11216c07436eb8493db3dd8a4ba8',38),(631,'f98d11216c07436eb8493db3dd8a4ba8',39),(632,'f98d11216c07436eb8493db3dd8a4ba8',40);
/*!40000 ALTER TABLE `library_asset_keywordslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_assetversion`
--

DROP TABLE IF EXISTS `library_assetversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_assetversion` (
  `id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `versionName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filepath` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `library_assetversion_asset_id_77975b7e_fk_library_asset_id` (`asset_id`),
  CONSTRAINT `library_assetversion_asset_id_77975b7e_fk_library_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `library_asset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_assetversion`
--

LOCK TABLES `library_assetversion` WRITE;
/*!40000 ALTER TABLE `library_assetversion` DISABLE KEYS */;
INSERT INTO `library_assetversion` VALUES ('01b44388747e42129197f00db7b358dd','LOD2','ac2edbd6503b4154bd10f62c2f17ee41','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\sittingMoomin\\LODs\\sittingMoomin_LOD2.usda'),('02924995b1df4706b7692c86b686f701','LOD2','81bbb0e6436146aebe329ff391f357c8','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yugiohClockArc\\LODs\\yugiohClockArc_LOD2.usda'),('06bcc6d35991409f92290605bcb49583','LOD1','4769ff51393942a4bddafa929cd59f03','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\campfire\\LODs\\campfire_LOD1.usda'),('0fed03285d19404bb9766e5cc5ed7dae','Variant Set','8438dd6d923d4dc2909e85303906914a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\beegCrab\\beegCrab.usda'),('1500b50978f545abb8b3f92c01c5a8fd','LOD0','c7fa0add5aa8437b84bf3b668a000f5b','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\skateboard\\LODs\\skateboard_LOD0.usda'),('15f56149b8b64af59b385b823c406400','LOD1','5feb9a74aa414c87aa7288024da44319','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\bookStack\\LODs\\bookStack_LOD1.usda'),('189e12a44be045a9bcd5f2bd69f598bc','LOD0','81bbb0e6436146aebe329ff391f357c8','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yugiohClockArc\\LODs\\yugiohClockArc_LOD0.usda'),('1ac85d211a1a45a7a492e98cc4f635bc','LOD1','8ef16f727fbc485986cc5b7faef478d6','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\vintageLamp\\LODs\\vintageLamp_LOD1.usda'),('1b89608ab6de4421a8342fea2544f321','Variant Set','ac2edbd6503b4154bd10f62c2f17ee41','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\sittingMoomin\\sittingMoomin.usda'),('1e302cf2b5a748eab24e190b49c00447','LOD2','3a1b92ae55c74864968ba712671eb24c','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\teapot\\LODs\\teapot_LOD2.usda'),('1e95782b677146698d34b4dbdb6c5fda','Variant Set','3a1b92ae55c74864968ba712671eb24c','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\teapot\\teapot.usda'),('208fb04c1cda477595474885c581ab1e','LOD1','8438dd6d923d4dc2909e85303906914a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\beegCrab\\LODs\\beegCrab_LOD1.usda'),('25e57cfb62594742b7d45cc04b003909','LOD1','81bbb0e6436146aebe329ff391f357c8','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yugiohClockArc\\LODs\\yugiohClockArc_LOD1.usda'),('26da11f5e140404eb20248610541cb01','Variant Set','b19fc4fd1ef24357b47d87a4c37a629e','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yellowDuck\\yellowDuck.usda'),('2a7db738ec1e4f7899b975b3590ba66e','LOD0','f98d11216c07436eb8493db3dd8a4ba8','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\parkBench\\LODs\\parkBench_LOD0.usda'),('315443af79884abdb2d719ef0334c9df','LOD1','aada48ec16ce4f398fa4d5b039ecd481','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\pickleBarrels\\LODs\\pickleBarrels_LOD1.usda'),('44d98734d0b743c9a1f8b502d1e8c884','LOD0','4769ff51393942a4bddafa929cd59f03','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\campfire\\LODs\\campfire_LOD0.usda'),('527d9f4f57ee4f77a7b9aea7d621083c','LOD1','b19fc4fd1ef24357b47d87a4c37a629e','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yellowDuck\\LODs\\yellowDuck_LOD1.usda'),('66dc795e4d794c3eb51a68622c0b2a59','LOD0','6d887e0d244d41ebac4daa0da4635b97','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cartoonFish\\LODs\\cartoonFish_LOD0.usda'),('6b379395692b4a249a34e55c18f441a7','LOD0','b19fc4fd1ef24357b47d87a4c37a629e','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yellowDuck\\LODs\\yellowDuck_LOD0.usda'),('71a4bbcbde7b4139879a1624955a5f89','LOD1','6d887e0d244d41ebac4daa0da4635b97','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cartoonFish\\LODs\\cartoonFish_LOD1.usda'),('750aaa76e0014a93887d85361c0fcf22','LOD1','3a1b92ae55c74864968ba712671eb24c','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\teapot\\LODs\\teapot_LOD1.usda'),('771609a8186946e39fd5bbeda8d35521','LOD2','b19fc4fd1ef24357b47d87a4c37a629e','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yellowDuck\\LODs\\yellowDuck_LOD2.usda'),('894a9c6c33fd4220baa1c9e60dea631e','LOD2','f98d11216c07436eb8493db3dd8a4ba8','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\parkBench\\LODs\\parkBench_LOD2.usda'),('8a3ad0a83e6941e7ad481e98fb226df8','LOD2','8ef16f727fbc485986cc5b7faef478d6','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\vintageLamp\\LODs\\vintageLamp_LOD2.usda'),('8e2155ba4cf24b83aebb69a06afcaa07','LOD2','c7fa0add5aa8437b84bf3b668a000f5b','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\skateboard\\LODs\\skateboard_LOD2.usda'),('92d5e007624a4165a5f2f6db28cc6981','Variant Set','5feb9a74aa414c87aa7288024da44319','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\bookStack\\bookStack.usda'),('942736f097fc4812876320a804331e7b','LOD0','8438dd6d923d4dc2909e85303906914a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\beegCrab\\LODs\\beegCrab_LOD0.usda'),('959a1473afb04baaa81ef10ed86d6350','LOD2','6d887e0d244d41ebac4daa0da4635b97','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cartoonFish\\LODs\\cartoonFish_LOD2.usda'),('95ef792b5187404b8d099947bab219a9','Variant Set','f98d11216c07436eb8493db3dd8a4ba8','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\parkBench\\parkBench.usda'),('9bdda339e79a4baabc0e371849041415','Variant Set','4769ff51393942a4bddafa929cd59f03','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\campfire\\campfire.usda'),('9c2337bf1ff64389b8832dfa6ce94407','LOD2','aada48ec16ce4f398fa4d5b039ecd481','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\pickleBarrels\\LODs\\pickleBarrels_LOD2.usda'),('9f7fc93f7c9b40a88e6404b9d167b72c','LOD1','034a7efd1f47478298e0763c36ca70cd','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cafeTable\\LODs\\cafeTable_LOD1.usda'),('a954067a83d644248bb4ce75cd99e0ce','LOD1','f98d11216c07436eb8493db3dd8a4ba8','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\parkBench\\LODs\\parkBench_LOD1.usda'),('ab7a299d885b43f9bcf15f4bd4982b59','LOD2','4769ff51393942a4bddafa929cd59f03','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\campfire\\LODs\\campfire_LOD2.usda'),('b19c0e8c092f41a6bfc285219c04e890','LOD1','ac2edbd6503b4154bd10f62c2f17ee41','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\sittingMoomin\\LODs\\sittingMoomin_LOD1.usda'),('b843c79198684bcc9e8da47f9e970d13','LOD2','8438dd6d923d4dc2909e85303906914a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\beegCrab\\LODs\\beegCrab_LOD2.usda'),('bebd2777118c46debe0b17d00d821611','LOD0','034a7efd1f47478298e0763c36ca70cd','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cafeTable\\LODs\\cafeTable_LOD0.usda'),('c05ea79f5097444c831233a80e137c91','Variant Set','c7fa0add5aa8437b84bf3b668a000f5b','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\skateboard\\skateboard.usda'),('c9e42e97021548359249a133fc3155fe','LOD0','5feb9a74aa414c87aa7288024da44319','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\bookStack\\LODs\\bookStack_LOD0.usda'),('da9ea77e119e4006a4ddfd153e09cf38','Variant Set','8ef16f727fbc485986cc5b7faef478d6','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\vintageLamp\\vintageLamp.usda'),('e28afae90b364528b0de40d5190c889c','LOD0','3a1b92ae55c74864968ba712671eb24c','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\teapot\\LODs\\teapot_LOD0.usda'),('e3272d57590b44b9a49a7cc3863582d5','Variant Set','034a7efd1f47478298e0763c36ca70cd','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cafeTable\\cafeTable.usda'),('e3ae12f3d093420fb353d9e03cefd946','LOD2','5feb9a74aa414c87aa7288024da44319','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\bookStack\\LODs\\bookStack_LOD2.usda'),('eb4f06570d134737b125fd187a645cb0','LOD1','c7fa0add5aa8437b84bf3b668a000f5b','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\skateboard\\LODs\\skateboard_LOD1.usda'),('ec21eae1d8464dc4ade29c819a05dcce','Variant Set','aada48ec16ce4f398fa4d5b039ecd481','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\pickleBarrels\\pickleBarrels.usda'),('ed48a9ffca454919a127793062a05370','LOD0','8ef16f727fbc485986cc5b7faef478d6','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\vintageLamp\\LODs\\vintageLamp_LOD0.usda'),('ed5ee67d552749fcb04b7c5e78d30236','LOD0','aada48ec16ce4f398fa4d5b039ecd481','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\pickleBarrels\\LODs\\pickleBarrels_LOD0.usda'),('eddb11643ba3434facf3e49b8c272f59','Variant Set','81bbb0e6436146aebe329ff391f357c8','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yugiohClockArc\\yugiohClockArc.usda'),('f00c3978fe1d426ebb7ac94eabb3cc05','Variant Set','6d887e0d244d41ebac4daa0da4635b97','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cartoonFish\\cartoonFish.usda'),('fdc04008aa1c40889a8620cdeb0ec45a','LOD0','ac2edbd6503b4154bd10f62c2f17ee41','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\sittingMoomin\\LODs\\sittingMoomin_LOD0.usda'),('fe2625ed68cc4a368e0f84528809b443','LOD2','034a7efd1f47478298e0763c36ca70cd','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cafeTable\\LODs\\cafeTable_LOD2.usda');
/*!40000 ALTER TABLE `library_assetversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_commit`
--

DROP TABLE IF EXISTS `library_commit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_commit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `library_commit_asset_id_413107ba_fk_library_asset_id` (`asset_id`),
  CONSTRAINT `library_commit_asset_id_413107ba_fk_library_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `library_asset` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_commit`
--

LOCK TABLES `library_commit` WRITE;
/*!40000 ALTER TABLE `library_commit` DISABLE KEYS */;
INSERT INTO `library_commit` VALUES (235,'soominp','03.00.00','2025-02-18 03:34:00.000000','Converted LODs to a variant set','8438dd6d923d4dc2909e85303906914a'),(236,'geant','02.00.00','2025-02-10 20:17:02.000000','Added LODs','8438dd6d923d4dc2909e85303906914a'),(237,'geant','01.00.00','2024-04-22 02:17:05.000000','Initial creation','8438dd6d923d4dc2909e85303906914a'),(238,'claran','03.00.00','2025-02-19 04:59:00.000000','Converted LODs to a variant set','5feb9a74aa414c87aa7288024da44319'),(239,'echou','02.00.00','2025-02-07 22:08:00.000000','Added LODs','5feb9a74aa414c87aa7288024da44319'),(240,'echou','01.00.00','2024-10-14 20:08:00.000000','Initial creation','5feb9a74aa414c87aa7288024da44319'),(241,'fernc','03.00.00','2025-02-14 23:46:00.000000','Converted LODs to a variant set','034a7efd1f47478298e0763c36ca70cd'),(242,'willcai','02.00.00','2025-02-04 00:30:00.000000','Added LODs','034a7efd1f47478298e0763c36ca70cd'),(243,'willcai','01.00.00','2024-11-04 03:19:00.000000','Initial creation','034a7efd1f47478298e0763c36ca70cd'),(244,'aajiang','03.00.00','2025-02-13 05:28:00.000000','Converted LODs to a variant set','4769ff51393942a4bddafa929cd59f03'),(245,'jyguan','02.00.00','2025-01-30 21:20:00.000000','Added LODs','4769ff51393942a4bddafa929cd59f03'),(246,'jyguan','01.00.00','2024-11-21 17:00:00.000000','Initial creation','4769ff51393942a4bddafa929cd59f03'),(247,'geant','03.00.00','2025-02-18 03:41:03.000000','Converted LODs to a variant set','6d887e0d244d41ebac4daa0da4635b97'),(248,'soominp','02.00.00','2025-02-10 00:14:28.000000','Added LODs','6d887e0d244d41ebac4daa0da4635b97'),(249,'soominp','01.00.00','2025-02-04 03:14:32.000000','Initial creation','6d887e0d244d41ebac4daa0da4635b97'),(250,'liuamy05','03.00.00','2025-02-16 05:22:06.000000','Converted LODs to a variant set','f98d11216c07436eb8493db3dd8a4ba8'),(251,'czw','02.00.00','2025-02-10 21:59:44.000000','Added LODs','f98d11216c07436eb8493db3dd8a4ba8'),(252,'czw','01.00.00','2024-11-13 21:49:00.000000','Initial creation','f98d11216c07436eb8493db3dd8a4ba8'),(253,'jyguan','03.00.00','2025-02-14 02:59:00.000000','Converted LODs to a variant set','aada48ec16ce4f398fa4d5b039ecd481'),(254,'aajiang','02.00.00','2025-02-09 04:48:00.000000','Added LODs','aada48ec16ce4f398fa4d5b039ecd481'),(255,'aajiang','01.00.00','2024-05-23 04:48:00.000000','Inital creation','aada48ec16ce4f398fa4d5b039ecd481'),(256,'eschou','03.00.00','2025-02-13 16:23:00.000000','Converted LODs to a variant set','ac2edbd6503b4154bd10f62c2f17ee41'),(257,'claran','02.00.00','2025-02-12 00:50:32.000000','Added LODs','ac2edbd6503b4154bd10f62c2f17ee41'),(258,'claran','01.00.00','2024-02-29 20:06:49.000000','Initial creation','ac2edbd6503b4154bd10f62c2f17ee41'),(259,'willcai','03.00.00','2025-02-18 02:20:00.000000','Converted LODs to a varient set','c7fa0add5aa8437b84bf3b668a000f5b'),(260,'cxndy','02.00.00','2025-02-13 22:05:22.000000','Added LODs','c7fa0add5aa8437b84bf3b668a000f5b'),(261,'cxndy','01.00.00','2025-02-04 01:00:22.000000','Initial creation','c7fa0add5aa8437b84bf3b668a000f5b'),(262,'chuu','03.00.00','2025-02-17 13:08:00.000000','Converted LODs to a variant set','3a1b92ae55c74864968ba712671eb24c'),(263,'raclin','02.00.00','2025-02-09 15:30:00.000000','Added LODs','3a1b92ae55c74864968ba712671eb24c'),(264,'raclin','01.00.00','2025-02-04 07:02:00.000000','Initial creation','3a1b92ae55c74864968ba712671eb24c'),(265,'cxndy','04.00.00','2025-02-17 18:26:00.000000','Converted LODs to a variant set','8ef16f727fbc485986cc5b7faef478d6'),(266,'fernc','03.00.00','2025-02-16 05:18:00.000000','Fixed scale for LOD1&2','8ef16f727fbc485986cc5b7faef478d6'),(267,'fernc','02.00.00','2025-02-04 21:21:00.000000','Added LODs','8ef16f727fbc485986cc5b7faef478d6'),(268,'fernc','01.00.00','2025-01-30 18:06:00.000000','Initial creation','8ef16f727fbc485986cc5b7faef478d6'),(269,'raclin','03.00.00','2025-02-16 07:04:00.000000','Converted LODs to a variant set','b19fc4fd1ef24357b47d87a4c37a629e'),(270,'chuu','02.00.00','2025-02-11 01:48:00.000000','Added LODs','b19fc4fd1ef24357b47d87a4c37a629e'),(271,'chuu','01.00.00','2025-02-04 01:48:00.000000','Initial creation','b19fc4fd1ef24357b47d87a4c37a629e'),(272,'czw','03.00.00','2025-02-16 21:05:27.000000','Converted LODs to a variant set','81bbb0e6436146aebe329ff391f357c8'),(273,'liuamy05','02.00.00','2025-02-12 05:00:26.000000','Added LODs','81bbb0e6436146aebe329ff391f357c8'),(274,'liuamy05','01.00.00','2024-12-03 19:55:13.000000','Initial version','81bbb0e6436146aebe329ff391f357c8');
/*!40000 ALTER TABLE `library_commit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_keyword`
--

DROP TABLE IF EXISTS `library_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_keyword` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `keyword` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_keyword`
--

LOCK TABLES `library_keyword` WRITE;
/*!40000 ALTER TABLE `library_keyword` DISABLE KEYS */;
INSERT INTO `library_keyword` VALUES (32,'animal'),(41,'barrel'),(75,'bathroom'),(81,'beeg'),(36,'bench'),(59,'board'),(26,'bonfire'),(5,'book'),(6,'books'),(69,'bulb'),(15,'cafe'),(23,'camp'),(18,'campfire'),(68,'candle'),(30,'cartoon'),(40,'chair'),(51,'character'),(43,'container'),(34,'coral'),(80,'crab'),(31,'creature'),(29,'cute'),(10,'decoration'),(63,'dish'),(72,'duck'),(82,'example'),(47,'fantasy'),(25,'firepit'),(28,'fish'),(17,'furniture'),(8,'hardcover'),(9,'household'),(83,'keyword'),(64,'kitchen'),(65,'lamp'),(11,'library'),(70,'light'),(19,'logs'),(77,'machine'),(49,'moomin'),(46,'object'),(33,'ocean'),(14,'office'),(24,'outdoors'),(38,'outside'),(37,'park'),(42,'pickel'),(55,'play'),(62,'pot'),(12,'prop'),(35,'reef'),(20,'rocks'),(73,'rubber'),(39,'seat'),(84,'shell'),(52,'skateboard'),(53,'skater'),(54,'sport'),(7,'stack'),(21,'stones'),(48,'storage'),(13,'study'),(27,'survival'),(16,'table'),(61,'tea'),(60,'teapot'),(4,'test'),(74,'toy'),(56,'transportation'),(50,'troll'),(57,'vehicle'),(66,'victorian'),(67,'vintage'),(44,'water-filled'),(58,'wheels'),(22,'wood'),(45,'wooden'),(71,'yellow'),(76,'yu-gi-oh'),(79,'yu-gi-oh!'),(78,'yugioh');
/*!40000 ALTER TABLE `library_keyword` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-22 15:18:14
