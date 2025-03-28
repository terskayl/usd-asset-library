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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add keyword',7,'add_keyword'),(26,'Can change keyword',7,'change_keyword'),(27,'Can delete keyword',7,'delete_keyword'),(28,'Can view keyword',7,'view_keyword'),(29,'Can add author',8,'add_author'),(30,'Can change author',8,'change_author'),(31,'Can delete author',8,'delete_author'),(32,'Can view author',8,'view_author'),(33,'Can add asset',9,'add_asset'),(34,'Can change asset',9,'change_asset'),(35,'Can delete asset',9,'delete_asset'),(36,'Can view asset',9,'view_asset'),(37,'Can add asset version',10,'add_assetversion'),(38,'Can change asset version',10,'change_assetversion'),(39,'Can delete asset version',10,'delete_assetversion'),(40,'Can view asset version',10,'view_assetversion'),(41,'Can add commit',11,'add_commit'),(42,'Can change commit',11,'change_commit'),(43,'Can delete commit',11,'delete_commit'),(44,'Can view commit',11,'view_commit');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'library','asset'),(10,'library','assetversion'),(8,'library','author'),(11,'library','commit'),(7,'library','keyword'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-02-20 06:55:47.997904'),(2,'auth','0001_initial','2025-02-20 06:55:48.639969'),(3,'admin','0001_initial','2025-02-20 06:55:48.788500'),(4,'admin','0002_logentry_remove_auto_add','2025-02-20 06:55:48.798324'),(5,'admin','0003_logentry_add_action_flag_choices','2025-02-20 06:55:48.805112'),(6,'contenttypes','0002_remove_content_type_name','2025-02-20 06:55:48.917797'),(7,'auth','0002_alter_permission_name_max_length','2025-02-20 06:55:48.979503'),(8,'auth','0003_alter_user_email_max_length','2025-02-20 06:55:48.999249'),(9,'auth','0004_alter_user_username_opts','2025-02-20 06:55:49.006309'),(10,'auth','0005_alter_user_last_login_null','2025-02-20 06:55:49.064306'),(11,'auth','0006_require_contenttypes_0002','2025-02-20 06:55:49.068467'),(12,'auth','0007_alter_validators_add_error_messages','2025-02-20 06:55:49.075349'),(13,'auth','0008_alter_user_username_max_length','2025-02-20 06:55:49.142289'),(14,'auth','0009_alter_user_last_name_max_length','2025-02-20 06:55:49.208564'),(15,'auth','0010_alter_group_name_max_length','2025-02-20 06:55:49.225524'),(16,'auth','0011_update_proxy_permissions','2025-02-20 06:55:49.235159'),(17,'auth','0012_alter_user_first_name_max_length','2025-02-20 06:55:49.307873'),(18,'sessions','0001_initial','2025-02-20 06:55:49.351449'),(19,'library','0001_initial','2025-02-20 17:33:26.096274'),(20,'library','0002_remove_keyword_keyword','2025-02-20 17:33:26.140137'),(21,'library','0003_keyword_keyword','2025-02-20 17:33:26.192121'),(22,'library','0004_assetversion_filepath','2025-02-24 17:30:43.376258'),(23,'library','0005_author_remove_asset_thumbnailfilepath_and_more','2025-03-27 21:06:58.572326'),(24,'library','0006_asset_s3link','2025-03-28 06:39:33.607910');
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
  `thumbnail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkedOutBy_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s3link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `library_asset_checkedOutBy_id_e6d5bb94_fk_library_author_pennkey` (`checkedOutBy_id`),
  CONSTRAINT `library_asset_checkedOutBy_id_e6d5bb94_fk_library_author_pennkey` FOREIGN KEY (`checkedOutBy_id`) REFERENCES `library_author` (`pennkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_asset`
--

LOCK TABLES `library_asset` WRITE;
/*!40000 ALTER TABLE `library_asset` DISABLE KEYS */;
INSERT INTO `library_asset` VALUES ('096497aa96234414aeb36d5fca3f1008','campfire','03.00.00',0,'uploads/default.png',NULL,''),('14730f0f1f714a238890b44a030acd4c','yugiohClockArc','03.00.00',0,'uploads/default.png',NULL,''),('1fa37e03d12843a7b00031913a1b37b5','teapot','03.00.00',0,'uploads/default.png',NULL,''),('8111d814be574627bb97005ae6a0f817','pickleBarrels','03.00.00',0,'uploads/default.png',NULL,''),('880ee2c185b5424d9ee590fbc3c5c908','cafeTable','03.00.00',0,'uploads/default.png',NULL,''),('97d81b67f3e34875b97ec6b275281b2a','beegCrab','03.00.00',0,'uploads/default.png',NULL,''),('abe127f5443842a3b3928d538ac773ad','sittingMoomin','03.00.00',0,'uploads/default.png',NULL,''),('bd8816d4cf1a4c5897d2ffe87df71c4e','parkBench','03.00.00',0,'uploads/default.png',NULL,''),('cd34072e92e94dd0bc91dc8eb76f5c93','yellowDuck','03.00.00',0,'uploads/default.png',NULL,''),('d3126554889f4ab1a271233a187588db','vintageLamp','03.00.00',0,'uploads/default.png',NULL,''),('d36f357d115a40da91a4437eb593b0a0','skateboard','03.00.00',0,'uploads/default.png',NULL,''),('de314b8c2b8846908a70a2906ceb9715','bookStack','03.00.00',0,'uploads/default.png',NULL,''),('eb477a65915c41e08f0cb44799d7af2a','cartoonFish','03.00.00',0,'uploads/default.png',NULL,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=1057 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_asset_keywordslist`
--

LOCK TABLES `library_asset_keywordslist` WRITE;
/*!40000 ALTER TABLE `library_asset_keywordslist` DISABLE KEYS */;
INSERT INTO `library_asset_keywordslist` VALUES (984,'096497aa96234414aeb36d5fca3f1008',19),(985,'096497aa96234414aeb36d5fca3f1008',20),(986,'096497aa96234414aeb36d5fca3f1008',21),(987,'096497aa96234414aeb36d5fca3f1008',22),(988,'096497aa96234414aeb36d5fca3f1008',23),(989,'096497aa96234414aeb36d5fca3f1008',24),(990,'096497aa96234414aeb36d5fca3f1008',25),(991,'096497aa96234414aeb36d5fca3f1008',26),(992,'096497aa96234414aeb36d5fca3f1008',27),(993,'096497aa96234414aeb36d5fca3f1008',28),(1055,'14730f0f1f714a238890b44a030acd4c',49),(1051,'14730f0f1f714a238890b44a030acd4c',74),(1052,'14730f0f1f714a238890b44a030acd4c',75),(1053,'14730f0f1f714a238890b44a030acd4c',76),(1054,'14730f0f1f714a238890b44a030acd4c',77),(1034,'1fa37e03d12843a7b00031913a1b37b5',10),(1036,'1fa37e03d12843a7b00031913a1b37b5',11),(1035,'1fa37e03d12843a7b00031913a1b37b5',13),(1037,'1fa37e03d12843a7b00031913a1b37b5',18),(1029,'1fa37e03d12843a7b00031913a1b37b5',58),(1030,'1fa37e03d12843a7b00031913a1b37b5',59),(1031,'1fa37e03d12843a7b00031913a1b37b5',60),(1032,'1fa37e03d12843a7b00031913a1b37b5',61),(1033,'1fa37e03d12843a7b00031913a1b37b5',62),(1013,'8111d814be574627bb97005ae6a0f817',13),(1008,'8111d814be574627bb97005ae6a0f817',39),(1009,'8111d814be574627bb97005ae6a0f817',40),(1010,'8111d814be574627bb97005ae6a0f817',41),(1011,'8111d814be574627bb97005ae6a0f817',42),(1012,'8111d814be574627bb97005ae6a0f817',43),(1014,'8111d814be574627bb97005ae6a0f817',44),(1015,'8111d814be574627bb97005ae6a0f817',45),(1016,'8111d814be574627bb97005ae6a0f817',46),(981,'880ee2c185b5424d9ee590fbc3c5c908',16),(982,'880ee2c185b5424d9ee590fbc3c5c908',17),(983,'880ee2c185b5424d9ee590fbc3c5c908',18),(966,'97d81b67f3e34875b97ec6b275281b2a',1),(967,'97d81b67f3e34875b97ec6b275281b2a',2),(968,'97d81b67f3e34875b97ec6b275281b2a',3),(969,'97d81b67f3e34875b97ec6b275281b2a',4),(970,'97d81b67f3e34875b97ec6b275281b2a',5),(1018,'abe127f5443842a3b3928d538ac773ad',4),(1017,'abe127f5443842a3b3928d538ac773ad',47),(1019,'abe127f5443842a3b3928d538ac773ad',48),(1020,'abe127f5443842a3b3928d538ac773ad',49),(1007,'bd8816d4cf1a4c5897d2ffe87df71c4e',18),(1002,'bd8816d4cf1a4c5897d2ffe87df71c4e',34),(1003,'bd8816d4cf1a4c5897d2ffe87df71c4e',35),(1004,'bd8816d4cf1a4c5897d2ffe87df71c4e',36),(1005,'bd8816d4cf1a4c5897d2ffe87df71c4e',37),(1006,'bd8816d4cf1a4c5897d2ffe87df71c4e',38),(1047,'cd34072e92e94dd0bc91dc8eb76f5c93',30),(1045,'cd34072e92e94dd0bc91dc8eb76f5c93',69),(1046,'cd34072e92e94dd0bc91dc8eb76f5c93',70),(1048,'cd34072e92e94dd0bc91dc8eb76f5c93',71),(1049,'cd34072e92e94dd0bc91dc8eb76f5c93',72),(1050,'cd34072e92e94dd0bc91dc8eb76f5c93',73),(1044,'d3126554889f4ab1a271233a187588db',18),(1038,'d3126554889f4ab1a271233a187588db',63),(1039,'d3126554889f4ab1a271233a187588db',64),(1040,'d3126554889f4ab1a271233a187588db',65),(1041,'d3126554889f4ab1a271233a187588db',66),(1042,'d3126554889f4ab1a271233a187588db',67),(1043,'d3126554889f4ab1a271233a187588db',68),(1021,'d36f357d115a40da91a4437eb593b0a0',50),(1022,'d36f357d115a40da91a4437eb593b0a0',51),(1023,'d36f357d115a40da91a4437eb593b0a0',52),(1024,'d36f357d115a40da91a4437eb593b0a0',53),(1025,'d36f357d115a40da91a4437eb593b0a0',54),(1026,'d36f357d115a40da91a4437eb593b0a0',55),(1027,'d36f357d115a40da91a4437eb593b0a0',56),(1028,'d36f357d115a40da91a4437eb593b0a0',57),(971,'de314b8c2b8846908a70a2906ceb9715',6),(972,'de314b8c2b8846908a70a2906ceb9715',7),(973,'de314b8c2b8846908a70a2906ceb9715',8),(974,'de314b8c2b8846908a70a2906ceb9715',9),(975,'de314b8c2b8846908a70a2906ceb9715',10),(976,'de314b8c2b8846908a70a2906ceb9715',11),(977,'de314b8c2b8846908a70a2906ceb9715',12),(978,'de314b8c2b8846908a70a2906ceb9715',13),(979,'de314b8c2b8846908a70a2906ceb9715',14),(980,'de314b8c2b8846908a70a2906ceb9715',15),(999,'eb477a65915c41e08f0cb44799d7af2a',2),(997,'eb477a65915c41e08f0cb44799d7af2a',4),(998,'eb477a65915c41e08f0cb44799d7af2a',5),(994,'eb477a65915c41e08f0cb44799d7af2a',29),(995,'eb477a65915c41e08f0cb44799d7af2a',30),(996,'eb477a65915c41e08f0cb44799d7af2a',31),(1000,'eb477a65915c41e08f0cb44799d7af2a',32),(1001,'eb477a65915c41e08f0cb44799d7af2a',33);
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
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
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
INSERT INTO `library_assetversion` VALUES ('0348d048be184c0fb8a73be118d3fdab','Variant Set','8111d814be574627bb97005ae6a0f817','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\pickleBarrels\\pickleBarrels.usda','',''),('08ca324093a44234bc775f3023e14854','LOD0','cd34072e92e94dd0bc91dc8eb76f5c93','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yellowDuck\\LODs\\yellowDuck_LOD0.usda','',''),('09acc3281d654679b99cb71a3517b0f7','LOD1','880ee2c185b5424d9ee590fbc3c5c908','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cafeTable\\LODs\\cafeTable_LOD1.usda','',''),('143d7a845dd245d186e876915ccd49ab','LOD0','096497aa96234414aeb36d5fca3f1008','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\campfire\\LODs\\campfire_LOD0.usda','',''),('1cdecb237ca9415583f3fdd8b7e4e516','Variant Set','880ee2c185b5424d9ee590fbc3c5c908','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cafeTable\\cafeTable.usda','',''),('1f32b1e0d8c246be87e046a11f600cd2','LOD2','d3126554889f4ab1a271233a187588db','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\vintageLamp\\LODs\\vintageLamp_LOD2.usda','',''),('2044e71f23784d2d88c9fa2d9ca21d8c','LOD1','8111d814be574627bb97005ae6a0f817','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\pickleBarrels\\LODs\\pickleBarrels_LOD1.usda','',''),('20f326769d344e478c4ed28e378bd075','Variant Set','d36f357d115a40da91a4437eb593b0a0','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\skateboard\\skateboard.usda','',''),('22120602c6c348359143fa14689a0677','LOD2','880ee2c185b5424d9ee590fbc3c5c908','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cafeTable\\LODs\\cafeTable_LOD2.usda','',''),('24dbe2a0b23a422f875579c0b569e69a','LOD1','97d81b67f3e34875b97ec6b275281b2a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\beegCrab\\LODs\\beegCrab_LOD1.usda','',''),('2a6c41068a23493694f54dceb9d4f25c','LOD0','97d81b67f3e34875b97ec6b275281b2a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\beegCrab\\LODs\\beegCrab_LOD0.usda','',''),('2e801884136e46f2b38432a4f5a3efef','LOD0','eb477a65915c41e08f0cb44799d7af2a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cartoonFish\\LODs\\cartoonFish_LOD0.usda','',''),('2f97dc94cc764de4b2c32e4067e84427','LOD2','eb477a65915c41e08f0cb44799d7af2a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cartoonFish\\LODs\\cartoonFish_LOD2.usda','',''),('3c0e381c2b774168a42f228bedeedf37','LOD1','d3126554889f4ab1a271233a187588db','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\vintageLamp\\LODs\\vintageLamp_LOD1.usda','',''),('404c140ad5d44931a791e4cc11c96b8a','LOD2','cd34072e92e94dd0bc91dc8eb76f5c93','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yellowDuck\\LODs\\yellowDuck_LOD2.usda','',''),('41290f491db94c3d96ce3516a1f628d3','Variant Set','eb477a65915c41e08f0cb44799d7af2a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cartoonFish\\cartoonFish.usda','',''),('4f4be5655e38483cb6e3a7eca4ab7e66','Variant Set','d3126554889f4ab1a271233a187588db','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\vintageLamp\\vintageLamp.usda','',''),('51ccc556371b4b5cb1bf6ab94bd9722c','LOD2','096497aa96234414aeb36d5fca3f1008','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\campfire\\LODs\\campfire_LOD2.usda','',''),('54e4d918e9bd4a579193505d5671d763','LOD2','d36f357d115a40da91a4437eb593b0a0','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\skateboard\\LODs\\skateboard_LOD2.usda','',''),('5de8e4691d9b4bdcadebde0cc9e0e020','Variant Set','096497aa96234414aeb36d5fca3f1008','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\campfire\\campfire.usda','',''),('62450d1c71284a708573a269d5bf335a','LOD2','bd8816d4cf1a4c5897d2ffe87df71c4e','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\parkBench\\LODs\\parkBench_LOD2.usda','',''),('6c898bd69799498ea17d90f6906368e7','LOD2','8111d814be574627bb97005ae6a0f817','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\pickleBarrels\\LODs\\pickleBarrels_LOD2.usda','',''),('6d9e8a7d59544769a99e18e25f8e0210','LOD2','abe127f5443842a3b3928d538ac773ad','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\sittingMoomin\\LODs\\sittingMoomin_LOD2.usda','',''),('6e1c4d62ed73413abd77e4f6810709bc','Variant Set','de314b8c2b8846908a70a2906ceb9715','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\bookStack\\bookStack.usda','',''),('6e2000076c2d42e19aeba21d0edda809','LOD2','14730f0f1f714a238890b44a030acd4c','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yugiohClockArc\\LODs\\yugiohClockArc_LOD2.usda','',''),('721169ba418444599ba8d15170603683','Variant Set','abe127f5443842a3b3928d538ac773ad','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\sittingMoomin\\sittingMoomin.usda','',''),('7258ea2311044da3b5b57833b412f1fb','LOD1','abe127f5443842a3b3928d538ac773ad','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\sittingMoomin\\LODs\\sittingMoomin_LOD1.usda','',''),('7eaf03312e7f4864a4b4d161e8344bf7','LOD1','cd34072e92e94dd0bc91dc8eb76f5c93','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yellowDuck\\LODs\\yellowDuck_LOD1.usda','',''),('8c9b9e3a263a470aa6f3814dd4277970','LOD0','8111d814be574627bb97005ae6a0f817','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\pickleBarrels\\LODs\\pickleBarrels_LOD0.usda','',''),('91ca372e394e44749aba7a24d04086d3','LOD1','bd8816d4cf1a4c5897d2ffe87df71c4e','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\parkBench\\LODs\\parkBench_LOD1.usda','',''),('93212dc29f1d4cbbbb3ae2ac58b68877','Variant Set','cd34072e92e94dd0bc91dc8eb76f5c93','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yellowDuck\\yellowDuck.usda','',''),('9a4537f2f37048e898be6a7b9dce2fe1','LOD0','14730f0f1f714a238890b44a030acd4c','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yugiohClockArc\\LODs\\yugiohClockArc_LOD0.usda','',''),('9a7effedfc5041e887db3d11dc22175e','LOD2','1fa37e03d12843a7b00031913a1b37b5','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\teapot\\LODs\\teapot_LOD2.usda','',''),('9dd22d6a683d4930b8962b1ea7389132','LOD0','de314b8c2b8846908a70a2906ceb9715','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\bookStack\\LODs\\bookStack_LOD0.usda','',''),('a21776647038401087a323433fcf691c','LOD0','d3126554889f4ab1a271233a187588db','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\vintageLamp\\LODs\\vintageLamp_LOD0.usda','',''),('aae3911822e246eb9ae77b5f04661b24','LOD0','bd8816d4cf1a4c5897d2ffe87df71c4e','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\parkBench\\LODs\\parkBench_LOD0.usda','',''),('b11f64d80b734c7aa59ed7615ef3571b','Variant Set','14730f0f1f714a238890b44a030acd4c','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yugiohClockArc\\yugiohClockArc.usda','',''),('b5237cd55b4c4d079d580d3e208497f0','LOD0','880ee2c185b5424d9ee590fbc3c5c908','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cafeTable\\LODs\\cafeTable_LOD0.usda','',''),('b52e7a78ffa343128532eebb0797860b','Variant Set','97d81b67f3e34875b97ec6b275281b2a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\beegCrab\\beegCrab.usda','',''),('baf58c1311224183afcfb981f9b6e98a','Variant Set','bd8816d4cf1a4c5897d2ffe87df71c4e','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\parkBench\\parkBench.usda','',''),('be62534d722b44ca90f01823b2a132d8','LOD0','1fa37e03d12843a7b00031913a1b37b5','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\teapot\\LODs\\teapot_LOD0.usda','',''),('be7cd62584584881831cf79d2547f382','LOD1','eb477a65915c41e08f0cb44799d7af2a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\cartoonFish\\LODs\\cartoonFish_LOD1.usda','',''),('caef6d533b854b278ae8bddbcd338388','LOD1','d36f357d115a40da91a4437eb593b0a0','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\skateboard\\LODs\\skateboard_LOD1.usda','',''),('e04bd5baefe94190baefc0ba6dc9752f','LOD2','de314b8c2b8846908a70a2906ceb9715','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\bookStack\\LODs\\bookStack_LOD2.usda','',''),('e0fe3d6c1deb444fbbc88d41cf3f8809','LOD1','1fa37e03d12843a7b00031913a1b37b5','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\teapot\\LODs\\teapot_LOD1.usda','',''),('e2aa60a132d447f786348aa650df043d','Variant Set','1fa37e03d12843a7b00031913a1b37b5','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\teapot\\teapot.usda','',''),('e6dd592c23794320802340e72ec63bcc','LOD1','de314b8c2b8846908a70a2906ceb9715','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\bookStack\\LODs\\bookStack_LOD1.usda','',''),('e7a809214547446ba103c977021df947','LOD2','97d81b67f3e34875b97ec6b275281b2a','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\beegCrab\\LODs\\beegCrab_LOD2.usda','',''),('e9ea39baa04f463e852883b2a5b60b10','LOD1','14730f0f1f714a238890b44a030acd4c','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\yugiohClockArc\\LODs\\yugiohClockArc_LOD1.usda','',''),('fac17055670a4ce18ee3eedb23a095cc','LOD1','096497aa96234414aeb36d5fca3f1008','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\campfire\\LODs\\campfire_LOD1.usda','',''),('fb0a4df203aa4a688c7b355436cfe3d8','LOD0','d36f357d115a40da91a4437eb593b0a0','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\skateboard\\LODs\\skateboard_LOD0.usda','',''),('fd85a6c16bed4500827689ff5890ce35','LOD0','abe127f5443842a3b3928d538ac773ad','C:\\Users\\njbhv\\Downloads\\Week 4 Assets\\sittingMoomin\\LODs\\sittingMoomin_LOD0.usda','','');
/*!40000 ALTER TABLE `library_assetversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_assetversion_dependencies`
--

DROP TABLE IF EXISTS `library_assetversion_dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_assetversion_dependencies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assetversion_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_assetversion_dependencies`
--

LOCK TABLES `library_assetversion_dependencies` WRITE;
/*!40000 ALTER TABLE `library_assetversion_dependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_assetversion_dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_author`
--

DROP TABLE IF EXISTS `library_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_author` (
  `pennkey` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`pennkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_author`
--

LOCK TABLES `library_author` WRITE;
/*!40000 ALTER TABLE `library_author` DISABLE KEYS */;
INSERT INTO `library_author` VALUES ('aajiang','Aaron','Jiang',''),('chuu','Christina','Qiu',''),('claran','Clara','Nolan',''),('cxndy','Cindy','Xu',''),('czw','Charles','Wang',''),('echou','','',''),('eschou','Elyssa','Chou',''),('fernc','Caroline','Fernandes',''),('geant','Anthony','Ge',''),('jyguan','Jackie','Guan',''),('liuamy05','Amy','Liu',''),('raclin','Rachel','Lin',''),('soominp','Jacky','Park',''),('willcai','Will','Cai','');
/*!40000 ALTER TABLE `library_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_commit`
--

DROP TABLE IF EXISTS `library_commit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_commit` (
  `id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `library_commit_asset_id_413107ba_fk_library_asset_id` (`asset_id`),
  KEY `library_commit_author_id_176d6481` (`author_id`),
  CONSTRAINT `library_commit_asset_id_413107ba_fk_library_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `library_asset` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_commit`
--

LOCK TABLES `library_commit` WRITE;
/*!40000 ALTER TABLE `library_commit` DISABLE KEYS */;
INSERT INTO `library_commit` VALUES ('104c361672e14c799a2baa790c18c9aa','czw','03.00.00','2025-02-16 21:05:27.000000','Converted LODs to a variant set','14730f0f1f714a238890b44a030acd4c'),('182c3487860247f2865015e024bf35eb','cxndy','04.00.00','2025-02-17 18:26:00.000000','Converted LODs to a variant set','d3126554889f4ab1a271233a187588db'),('1873a8ad60d0420a82602016de50edb2','liuamy05','01.00.00','2024-12-03 19:55:13.000000','Initial version','14730f0f1f714a238890b44a030acd4c'),('1a97d52c47ff423193391bd348e58356','aajiang','01.00.00','2024-05-23 04:48:00.000000','Inital creation','8111d814be574627bb97005ae6a0f817'),('1bb6b32a45fc4fdab793de361c02bfab','czw','01.00.00','2024-11-13 21:49:00.000000','Initial creation','bd8816d4cf1a4c5897d2ffe87df71c4e'),('1c9736016cd944f497dbc17c70d3fbbb','willcai','01.00.00','2024-11-04 03:19:00.000000','Initial creation','880ee2c185b5424d9ee590fbc3c5c908'),('3112e8de64664800a8c0cdea7174860f','geant','03.00.00','2025-02-18 03:41:03.000000','Converted LODs to a variant set','eb477a65915c41e08f0cb44799d7af2a'),('344bebb3836442f9899d202df8d5b7ef','fernc','01.00.00','2025-01-30 18:06:00.000000','Initial creation','d3126554889f4ab1a271233a187588db'),('3bc0774c0c5a4dbdaf4e8d21368a02e4','aajiang','03.00.00','2025-02-13 05:28:00.000000','Converted LODs to a variant set','096497aa96234414aeb36d5fca3f1008'),('3d1d710e48d7442b9314d1417bc1ff54','jyguan','03.00.00','2025-02-14 02:59:00.000000','Converted LODs to a variant set','8111d814be574627bb97005ae6a0f817'),('4e2cdc7e154f415b8c588b79d1205923','geant','01.00.00','2024-04-22 02:17:05.000000','Initial creation','97d81b67f3e34875b97ec6b275281b2a'),('50be58711df24414abf041f899afa0cf','raclin','01.00.00','2025-02-04 07:02:00.000000','Initial creation','1fa37e03d12843a7b00031913a1b37b5'),('511b0c18d18c4d71abf660a7c0da59af','fernc','03.00.00','2025-02-14 23:46:00.000000','Converted LODs to a variant set','880ee2c185b5424d9ee590fbc3c5c908'),('51627fbd98454efe8e601e4d642b35bf','chuu','03.00.00','2025-02-17 13:08:00.000000','Converted LODs to a variant set','1fa37e03d12843a7b00031913a1b37b5'),('5849424e98944b20bf79daa5aa4cf4e5','eschou','03.00.00','2025-02-13 16:23:00.000000','Converted LODs to a variant set','abe127f5443842a3b3928d538ac773ad'),('5d9c4ba26dc941dfa051ea40b2edf519','willcai','02.00.00','2025-02-04 00:30:00.000000','Added LODs','880ee2c185b5424d9ee590fbc3c5c908'),('5e05cec9595e46e792a36ea624d9681d','liuamy05','02.00.00','2025-02-12 05:00:26.000000','Added LODs','14730f0f1f714a238890b44a030acd4c'),('61f9d2e2d48444c3af48a52db47c123b','chuu','01.00.00','2025-02-04 01:48:00.000000','Initial creation','cd34072e92e94dd0bc91dc8eb76f5c93'),('691be8d723c442d8ac4a1172778afab6','soominp','01.00.00','2025-02-04 03:14:32.000000','Initial creation','eb477a65915c41e08f0cb44799d7af2a'),('771f0efc5b574cfbae66bd3c1f2ab6a1','cxndy','02.00.00','2025-02-13 22:05:22.000000','Added LODs','d36f357d115a40da91a4437eb593b0a0'),('8285e20e4ca54b618bd308db52fbd1d6','claran','03.00.00','2025-02-19 04:59:00.000000','Converted LODs to a variant set','de314b8c2b8846908a70a2906ceb9715'),('86bcf8d879a24c978134704535896736','liuamy05','03.00.00','2025-02-16 05:22:06.000000','Converted LODs to a variant set','bd8816d4cf1a4c5897d2ffe87df71c4e'),('90a8a9fb51b64dc79623f62640f2578f','fernc','03.00.00','2025-02-16 05:18:00.000000','Fixed scale for LOD1&2','d3126554889f4ab1a271233a187588db'),('94acba969f564090bbeb77afa39f56af','aajiang','02.00.00','2025-02-09 04:48:00.000000','Added LODs','8111d814be574627bb97005ae6a0f817'),('99c13c65e8c3428da73c608503251318','cxndy','01.00.00','2025-02-04 01:00:22.000000','Initial creation','d36f357d115a40da91a4437eb593b0a0'),('9d3e38085c794bbfb37625b7745e4bbf','claran','01.00.00','2024-02-29 20:06:49.000000','Initial creation','abe127f5443842a3b3928d538ac773ad'),('a3b4d3908b244607aa35fe85f68bec76','soominp','03.00.00','2025-02-18 03:34:00.000000','Converted LODs to a variant set','97d81b67f3e34875b97ec6b275281b2a'),('ab36317102a6491a9298a9d54e9c2e81','fernc','02.00.00','2025-02-04 21:21:00.000000','Added LODs','d3126554889f4ab1a271233a187588db'),('b711c11bb84b4280827347f4e0504c36','echou','01.00.00','2024-10-14 20:08:00.000000','Initial creation','de314b8c2b8846908a70a2906ceb9715'),('c0fc2d93decf449abae242dbb314f118','claran','02.00.00','2025-02-12 00:50:32.000000','Added LODs','abe127f5443842a3b3928d538ac773ad'),('c57a51a895834c2993fe4243018cdd9a','echou','02.00.00','2025-02-07 22:08:00.000000','Added LODs','de314b8c2b8846908a70a2906ceb9715'),('d14e7d7596e94140835db2612ba31396','soominp','02.00.00','2025-02-10 00:14:28.000000','Added LODs','eb477a65915c41e08f0cb44799d7af2a'),('d77d00fd440e4b74bdde0ed4ff0c4986','raclin','02.00.00','2025-02-09 15:30:00.000000','Added LODs','1fa37e03d12843a7b00031913a1b37b5'),('d848ae82316d4908be1cfaf7d8ef692a','geant','02.00.00','2025-02-10 20:17:02.000000','Added LODs','97d81b67f3e34875b97ec6b275281b2a'),('d985f7e6b99641c9857cfe7425f3f543','jyguan','01.00.00','2024-11-21 17:00:00.000000','Initial creation','096497aa96234414aeb36d5fca3f1008'),('ea3d7a3a4f154597ad1d9004be1da105','jyguan','02.00.00','2025-01-30 21:20:00.000000','Added LODs','096497aa96234414aeb36d5fca3f1008'),('edc3cd67918543a68ff579457f4446df','raclin','03.00.00','2025-02-16 07:04:00.000000','Converted LODs to a variant set','cd34072e92e94dd0bc91dc8eb76f5c93'),('eec58d0b66714fa18a13ab1738aed853','czw','02.00.00','2025-02-10 21:59:44.000000','Added LODs','bd8816d4cf1a4c5897d2ffe87df71c4e'),('eef872a122d5443796b0feb9d846a4bf','chuu','02.00.00','2025-02-11 01:48:00.000000','Added LODs','cd34072e92e94dd0bc91dc8eb76f5c93'),('fe2d1ddd441e4676866581cead871657','willcai','03.00.00','2025-02-18 02:20:00.000000','Converted LODs to a varient set','d36f357d115a40da91a4437eb593b0a0');
/*!40000 ALTER TABLE `library_commit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_commit_sublayers`
--

DROP TABLE IF EXISTS `library_commit_sublayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_commit_sublayers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `commit_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assetversion_id` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `library_commit_sublayers_commit_id_d1af5701_fk` (`commit_id`),
  CONSTRAINT `library_commit_sublayers_commit_id_d1af5701_fk` FOREIGN KEY (`commit_id`) REFERENCES `library_commit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_commit_sublayers`
--

LOCK TABLES `library_commit_sublayers` WRITE;
/*!40000 ALTER TABLE `library_commit_sublayers` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_commit_sublayers` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_keyword`
--

LOCK TABLES `library_keyword` WRITE;
/*!40000 ALTER TABLE `library_keyword` DISABLE KEYS */;
INSERT INTO `library_keyword` VALUES (5,'animal'),(39,'barrel'),(73,'bathroom'),(34,'bench'),(57,'board'),(27,'bonfire'),(6,'book'),(7,'books'),(67,'bulb'),(16,'cafe'),(24,'camp'),(19,'campfire'),(66,'candle'),(31,'cartoon'),(38,'chair'),(49,'character'),(41,'container'),(32,'coral'),(1,'crab'),(4,'creature'),(30,'cute'),(11,'decoration'),(61,'dish'),(70,'duck'),(45,'fantasy'),(26,'firepit'),(29,'fish'),(18,'furniture'),(9,'hardcover'),(10,'household'),(62,'kitchen'),(63,'lamp'),(12,'library'),(68,'light'),(20,'logs'),(75,'machine'),(47,'moomin'),(44,'object'),(2,'ocean'),(15,'office'),(25,'outdoors'),(36,'outside'),(35,'park'),(40,'pickel'),(53,'play'),(60,'pot'),(13,'prop'),(33,'reef'),(21,'rocks'),(71,'rubber'),(37,'seat'),(3,'shell'),(50,'skateboard'),(51,'skater'),(52,'sport'),(8,'stack'),(22,'stones'),(46,'storage'),(14,'study'),(28,'survival'),(17,'table'),(59,'tea'),(58,'teapot'),(72,'toy'),(54,'transportation'),(48,'troll'),(55,'vehicle'),(64,'victorian'),(65,'vintage'),(42,'water-filled'),(56,'wheels'),(23,'wood'),(43,'wooden'),(69,'yellow'),(74,'yu-gi-oh'),(77,'yu-gi-oh!'),(76,'yugioh');
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

-- Dump completed on 2025-03-28  2:43:15
