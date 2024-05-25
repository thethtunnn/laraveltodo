-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: iu51mf0q32fkhfpl.cbetxkdyhwsb.us-east-1.rds.amazonaws.com    Database: vqityyl8byfwd9qy
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.26-MariaDB-log

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goals`
--

DROP TABLE IF EXISTS `goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goals_user_id_foreign` (`user_id`),
  CONSTRAINT `goals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goals`
--

LOCK TABLES `goals` WRITE;
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
INSERT INTO `goals` VALUES (7,'test',4,'2022-10-13 21:25:50','2022-10-13 21:25:50'),(8,'test2_2',4,'2022-10-13 21:26:50','2022-10-13 21:27:46'),(9,'オリジナルアプリ制作',5,'2022-10-15 21:52:31','2022-10-15 21:52:42'),(10,'早く起きる',6,'2022-10-15 23:57:57','2022-10-15 23:57:57'),(11,'ToDOアプリを完成させる',8,'2022-10-26 09:04:19','2022-10-26 09:04:45'),(12,'test',9,'2022-10-30 22:07:16','2022-10-30 22:07:16'),(13,'あああ',10,'2022-11-22 09:40:29','2022-11-22 09:40:29'),(14,'ううう',10,'2022-11-22 09:43:43','2022-11-22 09:43:43'),(15,'朝活',11,'2022-11-24 10:17:22','2022-11-24 10:17:22'),(16,'ddsds',12,'2022-12-04 12:07:36','2022-12-04 12:07:36'),(21,'python基礎学習',16,'2022-12-22 12:03:34','2022-12-22 12:03:34'),(23,'task01',18,'2022-12-26 08:20:45','2022-12-26 08:20:45'),(24,'a',20,'2023-01-10 19:27:18','2023-01-10 19:27:18'),(25,'11111',21,'2023-01-14 11:44:26','2023-01-14 11:44:40'),(26,'1223',21,'2023-01-14 11:45:55','2023-01-14 11:45:55'),(27,'saa',22,'2023-01-20 21:37:02','2023-01-20 21:37:02'),(28,'fasdf',22,'2023-01-20 21:37:10','2023-01-20 21:37:10'),(29,'HTML',23,'2023-01-22 16:40:24','2023-01-22 16:40:24'),(30,'目標１',24,'2023-01-23 18:21:37','2023-01-23 18:21:37'),(31,'目標２',24,'2023-01-23 18:22:29','2023-01-23 18:22:29'),(33,'第２章をする',23,'2023-01-29 13:26:58','2023-01-29 13:26:58'),(35,'あ',27,'2023-02-07 17:12:06','2023-02-07 17:12:06'),(36,'あ',27,'2023-02-07 17:12:07','2023-02-07 17:12:07'),(37,'勉強',26,'2023-02-07 21:50:31','2023-02-08 14:53:24'),(39,'tetete',34,'2023-02-25 01:52:38','2023-02-25 01:52:38'),(40,'test1',34,'2023-02-25 01:53:22','2023-02-25 01:53:22'),(41,'ssss',35,'2023-02-25 11:08:17','2023-02-25 11:08:17'),(47,'あああ',39,'2023-02-27 23:09:14','2023-02-27 23:09:14'),(48,'hh',40,'2023-03-02 23:05:57','2023-03-02 23:05:57'),(53,'123',41,'2023-03-05 16:06:22','2023-03-05 16:06:22'),(54,'ｋｊｋｊｈｋｊ',37,'2023-03-05 17:40:23','2023-03-05 17:40:23'),(56,'aaaaa',42,'2023-03-09 21:03:24','2023-03-09 21:03:24'),(57,'aaa',43,'2023-03-13 11:37:50','2023-03-13 11:37:50'),(58,'目標',44,'2023-03-15 21:49:44','2023-03-15 21:49:44'),(59,'目標2',44,'2023-03-15 21:50:06','2023-03-15 21:50:06'),(60,'A',45,'2023-03-16 20:06:01','2023-03-16 20:06:01'),(61,'勉強する',46,'2023-03-20 12:30:44','2023-03-20 12:30:44'),(62,'目標',47,'2023-03-24 00:37:43','2023-03-24 00:37:43'),(63,'オリジナルアプリの作成',48,'2023-03-26 12:17:49','2023-03-26 12:17:49'),(66,'aaaaaaaaaaaa',49,'2023-04-01 10:53:57','2023-04-01 10:53:57'),(67,'aa',51,'2023-04-16 00:43:09','2023-04-16 00:43:09'),(68,'aa',51,'2023-04-16 00:43:12','2023-04-16 00:43:12'),(69,'sa',51,'2023-04-16 01:03:10','2023-04-16 01:03:10'),(70,'部屋の掃除',52,'2023-04-18 00:01:57','2023-04-18 00:01:57'),(71,'test',53,'2023-04-18 12:15:34','2023-04-18 12:15:34'),(72,'test2',53,'2023-04-18 12:15:53','2023-04-18 12:15:53'),(73,'Pythonの学習',54,'2023-04-22 16:03:36','2023-04-22 16:03:36'),(74,'お寺',54,'2023-04-22 16:04:29','2023-04-22 16:04:29'),(75,'リストA',55,'2023-04-22 16:52:51','2023-04-22 16:52:51'),(76,'リストB',55,'2023-04-22 16:53:31','2023-04-22 16:53:31'),(77,'aa',50,'2023-04-26 09:50:39','2023-04-26 09:50:39'),(78,'ddd',50,'2023-04-26 09:50:49','2023-04-26 09:50:49'),(79,'a',56,'2023-04-27 11:41:32','2023-04-27 11:41:32'),(80,'ToDoアプリを完成させる',1,'2023-04-27 16:36:31','2023-04-27 16:36:31'),(81,'オリジナルアプリの作成準備をする',1,'2023-04-27 16:40:15','2023-04-27 16:40:15'),(82,'筋肉をつけて健康的な体を手に入れる',1,'2023-04-27 16:41:35','2023-04-27 16:41:35');
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_08_23_185201_create_goals_table',1),(6,'2022_08_25_022906_create_todos_table',1),(7,'2022_08_26_065258_create_tags_table',1),(8,'2022_08_27_164341_create_tag_todo_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('test@example.com','$2y$10$bpj/ed0DqFP/wpPvrkm6FehzawrjdBF/nHHNlZvRATCMsTMe1T21O','2022-10-03 22:48:10'),('bbb@bbb.com','$2y$10$DXyGefXbT1cGeBtcHHzxAe0NwQcCwNIAItEb609tpMDh1yPADkqVK','2023-02-25 21:41:07'),('amnoskmkzeeeeei@gmail.com','$2y$10$Nerb1eKPezUiYaTWqaDqruNTrrbh5efa2xnWF.kRW7KRbtzY29bX2','2023-03-24 00:39:28'),('samurai-katagiri@sapporo-pints.com','$2y$10$QQjPoOFer8eAOslCGSy6Ou95EVgwmTyLyefad3eZ/cdmMLa87v7JW','2023-04-18 12:16:13');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_todo`
--

DROP TABLE IF EXISTS `tag_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_todo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `todo_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_todo_todo_id_foreign` (`todo_id`),
  KEY `tag_todo_tag_id_foreign` (`tag_id`),
  CONSTRAINT `tag_todo_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tag_todo_todo_id_foreign` FOREIGN KEY (`todo_id`) REFERENCES `todos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_todo`
--

LOCK TABLES `tag_todo` WRITE;
/*!40000 ALTER TABLE `tag_todo` DISABLE KEYS */;
INSERT INTO `tag_todo` VALUES (2,2,2,'2022-10-13 21:26:28','2022-10-13 21:26:28'),(3,4,3,'2022-10-13 21:27:29','2022-10-13 21:27:29'),(4,2,3,'2022-10-15 19:11:42','2022-10-15 19:11:42'),(5,5,4,'2022-10-15 23:58:33','2022-10-15 23:58:33'),(8,18,15,'2023-01-20 21:37:50','2023-01-20 21:37:50'),(9,18,13,'2023-01-20 21:38:03','2023-01-20 21:38:03'),(10,18,14,'2023-01-20 21:38:03','2023-01-20 21:38:03'),(11,19,16,'2023-01-22 16:41:10','2023-01-22 16:41:10'),(12,20,17,'2023-01-23 18:22:37','2023-01-23 18:22:37'),(16,30,22,'2023-02-25 01:52:49','2023-02-25 01:52:49'),(17,31,22,'2023-02-25 01:52:49','2023-02-25 01:52:49'),(18,32,23,'2023-02-25 01:53:35','2023-02-25 01:53:35'),(19,32,24,'2023-02-25 01:53:35','2023-02-25 01:53:35'),(20,33,28,'2023-02-25 11:09:12','2023-02-25 11:09:12'),(21,34,26,'2023-02-25 11:09:27','2023-02-25 11:09:27'),(31,45,35,'2023-03-05 16:06:48','2023-03-05 16:06:48'),(32,47,21,'2023-03-10 15:05:19','2023-03-10 15:05:19'),(34,52,37,'2023-03-18 22:08:09','2023-03-18 22:08:09'),(35,54,40,'2023-03-24 00:38:51','2023-03-24 00:38:51'),(36,56,44,'2023-04-16 01:03:56','2023-04-16 01:03:56'),(37,65,49,'2023-04-22 17:20:18','2023-04-22 17:20:18'),(38,64,49,'2023-04-22 17:20:24','2023-04-22 17:20:24'),(39,66,50,'2023-04-26 09:52:10','2023-04-26 09:52:10'),(40,67,50,'2023-04-26 09:52:19','2023-04-26 09:52:19'),(41,68,51,'2023-04-27 11:59:30','2023-04-27 11:59:30'),(42,69,52,'2023-04-27 16:38:27','2023-04-27 16:38:27'),(43,69,55,'2023-04-27 16:38:27','2023-04-27 16:38:27'),(44,69,58,'2023-04-27 16:38:27','2023-04-27 16:38:27'),(45,70,52,'2023-04-27 16:38:54','2023-04-27 16:38:54'),(46,70,55,'2023-04-27 16:38:54','2023-04-27 16:38:54'),(47,70,58,'2023-04-27 16:38:54','2023-04-27 16:38:54'),(48,71,52,'2023-04-27 16:39:19','2023-04-27 16:39:19'),(49,71,55,'2023-04-27 16:39:19','2023-04-27 16:39:19'),(50,71,58,'2023-04-27 16:39:19','2023-04-27 16:39:19'),(51,72,53,'2023-04-27 16:39:38','2023-04-27 16:39:38'),(52,72,56,'2023-04-27 16:39:38','2023-04-27 16:39:38'),(53,72,58,'2023-04-27 16:39:38','2023-04-27 16:39:38'),(54,73,52,'2023-04-27 16:40:30','2023-04-27 16:40:30'),(55,73,55,'2023-04-27 16:40:30','2023-04-27 16:40:30'),(56,74,53,'2023-04-27 16:40:44','2023-04-27 16:40:44'),(57,74,55,'2023-04-27 16:40:44','2023-04-27 16:40:44'),(58,75,53,'2023-04-27 16:40:56','2023-04-27 16:40:56'),(59,75,56,'2023-04-27 16:40:56','2023-04-27 16:40:56'),(60,76,53,'2023-04-27 16:41:09','2023-04-27 16:41:09'),(61,76,55,'2023-04-27 16:41:09','2023-04-27 16:41:09'),(62,77,52,'2023-04-27 16:41:57','2023-04-27 16:41:57'),(63,77,55,'2023-04-27 16:41:57','2023-04-27 16:41:57'),(64,77,59,'2023-04-27 16:41:58','2023-04-27 16:41:58'),(65,78,53,'2023-04-27 16:42:18','2023-04-27 16:42:18'),(66,78,56,'2023-04-27 16:42:18','2023-04-27 16:42:18'),(67,78,59,'2023-04-27 16:42:18','2023-04-27 16:42:18'),(68,79,54,'2023-04-27 16:42:43','2023-04-27 16:42:43'),(69,79,57,'2023-04-27 16:42:43','2023-04-27 16:42:43'),(70,79,59,'2023-04-27 16:42:43','2023-04-27 16:42:43');
/*!40000 ALTER TABLE `tag_todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_user_id_foreign` (`user_id`),
  CONSTRAINT `tags_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (2,'Tag2',4,'2022-10-13 21:26:00','2022-10-13 21:26:17'),(3,'Tag3',4,'2022-10-13 21:27:18','2022-10-13 21:27:18'),(4,'学習',6,'2022-10-15 23:58:19','2022-10-15 23:58:19'),(5,'ss',9,'2022-10-30 22:07:42','2022-10-30 22:07:42'),(6,'い',10,'2022-11-22 09:41:07','2022-11-22 09:41:07'),(8,'サムライエンジニア',16,'2022-12-22 12:03:42','2022-12-22 12:03:42'),(9,'タグ1',17,'2022-12-23 21:05:13','2022-12-23 21:05:13'),(10,'task01',18,'2022-12-26 08:20:35','2022-12-26 08:20:35'),(12,'11',21,'2023-01-14 11:45:35','2023-01-14 11:45:35'),(13,'dsafd',22,'2023-01-20 21:37:06','2023-01-20 21:37:06'),(14,'dsafd',22,'2023-01-20 21:37:17','2023-01-20 21:37:17'),(15,'saa',22,'2023-01-20 21:37:39','2023-01-20 21:37:39'),(16,'至急',23,'2023-01-22 16:40:46','2023-01-22 16:40:46'),(17,'タグ１',24,'2023-01-23 18:21:47','2023-01-23 18:21:47'),(21,'a',26,'2023-02-15 14:15:49','2023-02-15 14:15:49'),(22,'aaaa',34,'2023-02-25 01:52:42','2023-02-25 01:52:42'),(23,'1111',34,'2023-02-25 01:53:06','2023-02-25 01:53:06'),(24,'22222',34,'2023-02-25 01:53:09','2023-02-25 01:53:09'),(25,'33333',34,'2023-02-25 01:53:13','2023-02-25 01:53:13'),(26,'勉強',35,'2023-02-25 11:08:27','2023-02-25 11:08:27'),(27,'仕事',35,'2023-02-25 11:08:36','2023-02-25 11:08:36'),(28,'家事',35,'2023-02-25 11:08:41','2023-02-25 11:08:41'),(29,'aaaaaaa',36,'2023-02-25 15:58:27','2023-02-25 15:58:27'),(30,'xxxxxxxxxx',36,'2023-02-25 15:58:36','2023-02-25 15:58:36'),(33,'ｓｓｓｓｓｓ',37,'2023-02-27 21:31:46','2023-02-27 21:31:46'),(34,'hh',40,'2023-03-02 23:06:02','2023-03-02 23:06:02'),(35,'122',41,'2023-03-05 16:06:26','2023-03-05 16:06:26'),(36,'aae',43,'2023-03-13 11:38:01','2023-03-13 11:38:01'),(37,'AA',45,'2023-03-16 20:06:20','2023-03-16 20:06:20'),(39,'cc',45,'2023-03-16 20:15:23','2023-03-16 20:15:23'),(40,'タグ',47,'2023-03-24 00:38:04','2023-03-24 00:38:04'),(41,'タグ',48,'2023-03-26 12:17:56','2023-03-26 12:17:56'),(42,'aaaaaaa',49,'2023-04-01 10:54:02','2023-04-01 10:54:02'),(44,'test001',51,'2023-04-16 00:43:04','2023-04-16 00:43:04'),(45,'test003',51,'2023-04-16 01:02:36','2023-04-16 01:02:36'),(46,'test002',51,'2023-04-16 01:02:41','2023-04-16 01:02:41'),(47,'テスト',52,'2023-04-18 00:02:06','2023-04-18 00:02:06'),(48,'山口',54,'2023-04-22 16:03:50','2023-04-22 16:03:50'),(49,'イーバリュー株式会社',55,'2023-04-22 16:53:01','2023-04-22 16:53:01'),(50,'abc',50,'2023-04-26 09:51:03','2023-04-26 09:51:03'),(51,'aaaa',56,'2023-04-27 11:41:35','2023-04-27 11:41:35'),(52,'緊急度：高',1,'2023-04-27 16:36:58','2023-04-27 16:36:58'),(53,'緊急度：中',1,'2023-04-27 16:37:10','2023-04-27 16:37:10'),(54,'緊急度：低',1,'2023-04-27 16:37:21','2023-04-27 16:37:21'),(55,'重要度：高',1,'2023-04-27 16:37:31','2023-04-27 16:37:31'),(56,'重要度：中',1,'2023-04-27 16:37:39','2023-04-27 16:37:39'),(57,'重要度：低',1,'2023-04-27 16:37:46','2023-04-27 16:37:46'),(58,'プログラミング',1,'2023-04-27 16:37:54','2023-04-27 16:37:54'),(59,'筋トレ',1,'2023-04-27 16:38:01','2023-04-27 16:38:01');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `goal_id` bigint(20) unsigned NOT NULL,
  `done` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `todos_user_id_foreign` (`user_id`),
  KEY `todos_goal_id_foreign` (`goal_id`),
  CONSTRAINT `todos_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` VALUES (2,'Test contens',4,7,0,'2022-10-13 21:26:28','2022-10-15 19:11:42'),(4,'Test contens2',4,8,0,'2022-10-13 21:27:29','2022-10-13 21:27:29'),(5,'TOEIC',6,10,1,'2022-10-15 23:58:33','2022-10-15 23:58:37'),(6,'開発環境を整える',8,11,0,'2022-10-26 09:04:53','2022-10-26 09:04:53'),(7,'test',9,12,1,'2022-10-30 22:07:23','2022-10-30 22:07:28'),(8,'うう',10,14,0,'2022-11-22 09:44:40','2022-11-22 09:44:54'),(9,'読書',11,15,1,'2022-11-24 10:17:30','2022-11-24 10:17:43'),(10,'ランニング',11,15,0,'2022-11-24 10:17:38','2022-11-24 10:17:38'),(11,'dsdsds',12,16,0,'2022-12-04 12:07:50','2022-12-04 12:07:50'),(15,'ki',21,25,0,'2023-01-14 11:45:42','2023-01-14 11:45:42'),(16,'kk',21,25,1,'2023-01-14 11:45:48','2023-01-14 11:46:34'),(17,'kk',21,26,0,'2023-01-14 11:46:13','2023-01-14 11:46:13'),(18,'fdsafds',22,28,1,'2023-01-20 21:37:50','2023-01-20 21:38:03'),(19,'第１章をする',23,29,0,'2023-01-22 16:41:10','2023-01-22 16:41:10'),(20,'ToDo１',24,30,0,'2023-01-23 18:22:14','2023-01-23 18:22:37'),(21,'ToDo２',24,30,0,'2023-01-23 18:22:58','2023-01-23 18:22:58'),(30,'sasasa',34,39,1,'2023-02-25 01:52:49','2023-02-25 01:52:56'),(31,'sasasa',34,39,0,'2023-02-25 01:52:49','2023-02-25 01:52:49'),(32,'sasasaaaaa',34,40,0,'2023-02-25 01:53:35','2023-02-25 01:53:35'),(33,'皿洗い',35,41,0,'2023-02-25 11:09:12','2023-02-25 11:09:12'),(34,'Laravel勉強',35,41,1,'2023-02-25 11:09:27','2023-02-25 11:09:36'),(45,'123',41,53,1,'2023-03-05 16:06:48','2023-03-05 16:06:54'),(47,'a',26,37,0,'2023-03-10 15:05:19','2023-03-10 15:05:19'),(48,'aaef',43,57,1,'2023-03-13 11:38:13','2023-03-13 11:38:25'),(49,'todo',44,58,1,'2023-03-15 21:49:53','2023-03-15 21:50:32'),(50,'todo2',44,58,0,'2023-03-15 21:50:00','2023-03-15 21:50:00'),(51,'B',45,60,1,'2023-03-16 20:06:09','2023-03-18 20:17:26'),(52,'認証機能を作成する',45,60,0,'2023-03-18 22:08:09','2023-03-18 22:08:09'),(53,'todo',47,62,0,'2023-03-24 00:37:54','2023-03-24 00:38:33'),(54,'テスト',47,62,0,'2023-03-24 00:38:51','2023-03-24 00:38:51'),(55,'とは',48,63,0,'2023-03-26 12:18:09','2023-03-26 12:18:09'),(56,'tag_test',51,68,0,'2023-04-16 01:03:56','2023-04-16 01:03:56'),(57,'テスト',52,70,1,'2023-04-18 00:02:18','2023-04-18 00:02:37'),(58,'テスト２',52,70,0,'2023-04-18 00:02:28','2023-04-18 00:02:28'),(59,'testのTodo',53,71,0,'2023-04-18 12:15:43','2023-04-18 12:15:43'),(60,'こんにちは',54,73,0,'2023-04-22 16:04:02','2023-04-22 16:04:02'),(61,'頑張る',54,74,1,'2023-04-22 16:04:43','2023-04-22 16:04:48'),(63,'イーテラス株式会社',55,76,0,'2023-04-22 16:53:39','2023-04-22 16:53:39'),(64,'イーテラス株式会社',55,75,0,'2023-04-22 16:53:58','2023-04-22 17:20:24'),(65,'イーバリュー株式会社',55,75,0,'2023-04-22 16:54:08','2023-04-22 17:20:18'),(66,'dddd',50,77,0,'2023-04-26 09:52:10','2023-04-26 09:52:10'),(67,'ffggg',50,77,0,'2023-04-26 09:52:19','2023-04-26 09:52:19'),(68,'sdf',56,79,0,'2023-04-27 11:59:30','2023-04-27 11:59:30'),(69,'認証機能を作成する',1,80,0,'2023-04-27 16:38:27','2023-04-27 16:38:27'),(70,'目標のCRUD機能を作成する',1,80,0,'2023-04-27 16:38:54','2023-04-27 16:38:54'),(71,'ToDoのCRUD機能を作成する',1,80,0,'2023-04-27 16:39:19','2023-04-27 16:39:19'),(72,'タグのCRUD機能を作成する',1,80,0,'2023-04-27 16:39:38','2023-04-27 16:39:38'),(73,'アプリの内容を決める',1,81,0,'2023-04-27 16:40:30','2023-04-27 16:40:30'),(74,'必要な機能をリスト化する',1,81,0,'2023-04-27 16:40:44','2023-04-27 16:40:44'),(75,'画面遷移図を作る',1,81,0,'2023-04-27 16:40:56','2023-04-27 16:40:56'),(76,'テーブル設計をする',1,81,0,'2023-04-27 16:41:09','2023-04-27 16:41:09'),(77,'ベンチプレスで80kgを持ち上げる',1,82,0,'2023-04-27 16:41:57','2023-04-27 16:41:57'),(78,'スクワットで100kgを持ち上げる',1,82,0,'2023-04-27 16:42:18','2023-04-27 16:42:18'),(79,'デッドリフトで120kgを持ち上げる',1,82,0,'2023-04-27 16:42:43','2023-04-27 16:42:43');
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'侍太郎','test@example.com',NULL,'$2y$10$rDRMQd2e/TzUCCZKnboflupxhmr0Y6WG59j8WDeTXREYblgcVjqPi',NULL,'2022-10-03 21:16:58','2022-10-03 21:16:58'),(4,'Taro Samurai','abc5@gmail.com',NULL,'$2y$10$aBBp3iBsIAzT4aRhjYyX4O8oPgwX.vWkZiIdNLqYN6N6ZN7o0ei0q',NULL,'2022-10-13 21:25:38','2022-10-13 21:25:38'),(5,'橋本将宏','icenpon@gmail.com',NULL,'$2y$10$LkzzmTNlDMpMQSftvtKgzeULCE4935k07xW3jBMehh.T0/9z/vgF.',NULL,'2022-10-15 21:52:03','2022-10-15 21:52:03'),(6,'naritoshi','naritoshi.2714.p3@gmail.com',NULL,'$2y$10$BDUqLXrcEojDWedPxGnFqehKjYMhurVqBXMZQVkkRZjBZo8tEj9Nq',NULL,'2022-10-15 23:57:47','2022-10-15 23:57:47'),(7,'長尾智之','ilovejojo03011978tomo@docomo.ne.jp',NULL,'$2y$10$YLT7/1CpXy36nLDiQOBNv.7M5hzpASbTPoZURnqxaG3uQiYGknikG','y0mN5BkYnlfc8ySuzlUkeTt12outn2b6F077xOSo3Kferv8lZP1WWZBzHntU','2022-10-18 19:59:25','2022-10-18 19:59:25'),(8,'mk','megumi.kawano@gmail.com',NULL,'$2y$10$KyLQwGfL.lj7rlj/Hyh7i.Tph6PxFxNf6lAWV53FnHLy8nIPwxciy',NULL,'2022-10-26 09:03:38','2022-10-26 09:03:38'),(9,'ttcksf','ttc0104ksf1993@yahoo.co.jp',NULL,'$2y$10$KmF4Fq7GkQFbENWeJvIQ3.8CzdhPikoga9aQaWjGmGaAuKeoY800O',NULL,'2022-10-30 22:07:10','2022-10-30 22:07:10'),(10,'根田将太','s.neda.sys21@morijyobi.ac.jp',NULL,'$2y$10$75KvFUTCAL4q/Y.ww2hGJ.HpYt.jIjJOcY9i0fnQLHPx6HB35DaAe',NULL,'2022-11-22 09:39:15','2022-11-22 09:39:15'),(11,'c','aa@aa',NULL,'$2y$10$l92bW3GqvY72e7bew63ZkOHsqDBPWzg1GAkTsvQ8fUW/Ki8.MQGB.',NULL,'2022-11-24 10:17:03','2022-11-24 10:17:03'),(12,'ken01004791','ken01004791@gmail.com',NULL,'$2y$10$Y6ziogVRZJS9jGhQ6TpoaeqOs86MPfwA42EndjbZWdxXKdxrQkV9W',NULL,'2022-12-04 12:07:26','2022-12-04 12:07:26'),(13,'masa','baby.leaf.clover@gmail.com',NULL,'$2y$10$s/PDzIe.xND8HbSsfN5d5OzMcCfW26gP9CknyyMs89QvyfdyxYHmi','o6abS4BpZgEDpLSbIyKAb2r7gu6iKAFWZXdQjD5Es8PpNxJirjIq7LHBGFVA','2022-12-06 08:30:52','2022-12-06 08:30:52'),(14,'panda','panda@sample.com',NULL,'$2y$10$jDvYGjvK6KxgMdmUyMZfJ.y9NWkDPCGo7oZNbvETJVF.xGqdKEqO.',NULL,'2022-12-14 18:21:59','2022-12-14 18:21:59'),(15,'nikujiru','cuisine.2910@gmail.com',NULL,'$2y$10$FjYB8z3RaX8h8viLy0fem.L0r7xl46rqMLsM7hgJ2kYn7cV3qxckq',NULL,'2022-12-16 14:16:12','2022-12-16 14:16:12'),(16,'mmm','mmm@gmail.com',NULL,'$2y$10$R3krve4sVF4YAF07IbEWwuitnCm.2uWBrIUJUFFhYyNrYyVd4IrGu',NULL,'2022-12-22 12:03:19','2022-12-22 12:03:19'),(17,'テスト','exam@sample.jp',NULL,'$2y$10$A7G6uwXkEovl3KJzirkVFOBF3g4ltDnYi2/QLd285ihwDCWyv9yu.',NULL,'2022-12-23 21:04:51','2022-12-23 21:04:51'),(18,'pandamania','panda@example.com',NULL,'$2y$10$2mENaijxlDVm6TLK2Nu7feMEIY2Gu5d89sOQ2x.KJQXE6e.YFaRQ2',NULL,'2022-12-26 08:13:57','2022-12-26 08:13:57'),(19,'mm_kano','itsrea888@gmail.com',NULL,'$2y$10$zZseUSEjF5r8BSN/m.ZGxeqmqGm99Nf3ZsIj8854drweHLjnFBqFG',NULL,'2023-01-05 12:08:15','2023-01-05 12:08:15'),(20,'aaa','ceo.k@goodnessone.co.jp',NULL,'$2y$10$vCGrrCXuxqh53n97zmSzC.PerFw3Y3BHosIEVHUpA7vbbcQUN0M3a',NULL,'2023-01-10 19:27:05','2023-01-10 19:27:05'),(21,'test','test@test',NULL,'$2y$10$k.T1EZCY3mCmwJLvp4Uuk.BAWbFTMfLE8YnyyzUbkytbAc0wqfTNq',NULL,'2023-01-14 11:44:06','2023-01-14 11:44:06'),(22,'test','test@test.co.jp',NULL,'$2y$10$QdSYQXZ5b/2DRDKwaqDI1unKwy.xuHuhLixkeUit7tcqVToBKwx2S',NULL,'2023-01-20 21:36:57','2023-01-20 21:36:57'),(23,'test1','test1@test.com',NULL,'$2y$10$c2OUVprkatzISoxdxoNLgu1EmlAj1cCxD1jueCY8gAwyoDSZeixha',NULL,'2023-01-22 16:40:11','2023-01-22 16:40:11'),(24,'test','biz-terakoya@sejuku.net',NULL,'$2y$10$R0LhVWNjtKVnxkYFjM/pGeGvxRbdLCI..IGr/lrpg7sT5MdLBVdDm',NULL,'2023-01-23 18:21:27','2023-01-23 18:21:27'),(25,'a','a@gmail.com',NULL,'$2y$10$b8R7VMEx9.KF2/ZskvAww.tpwFcqxFKkodbWXQP1BVJG/O1kdx1d6',NULL,'2023-01-25 16:55:06','2023-01-25 16:55:06'),(26,'a','fumiya1273@gmail.com',NULL,'$2y$10$d7Q8VOF1eTEXaz1V3ZCPgulkqvgNpnAJlxtxVN9J.dwlXhNgPvj.a',NULL,'2023-02-01 14:03:20','2023-02-01 14:03:20'),(27,'あ','kojikoji232@gmail.com',NULL,'$2y$10$dT4xU9Dc5N.m2PUI8ZWmQOjH2c0WV/TVo9hOkWCopDCZyclJ103J2',NULL,'2023-02-07 17:11:54','2023-02-07 17:11:54'),(28,'test','tomatio.love@gmail.com',NULL,'$2y$10$ToBbBGs6ah7YEXV.FRjRLuvBpLaTYeIotvSL8rj8FB7o86xEG6HTG',NULL,'2023-02-08 14:09:44','2023-02-08 14:09:44'),(29,'hanako3','hanako3@example.com',NULL,'$2y$10$lzyCW3vqGwlFKaFZqpTuNebGjFTFy0ffbjNMRjt7c65tdnIXMFasu',NULL,'2023-02-10 15:38:20','2023-02-10 15:38:20'),(32,'Uriah Rivas','xeru@mailinator.com',NULL,'$2y$10$9ZPIcA/HK9Qkh10ltWmtjOe90KhWp3V1GsPVizqtC2eqnt9AE3VJ6',NULL,'2023-02-14 06:07:58','2023-02-14 06:07:58'),(33,'yamamuke','yamamukeisuke@gmail.com',NULL,'$2y$10$OCXP82mDd34oWC/AHp8A6uf9WJfzqIw0iGgB1mLrZb/mweGi/STMe',NULL,'2023-02-20 13:39:33','2023-02-20 13:39:33'),(34,'kenta1086','cx28136@c01.itscom.net',NULL,'$2y$10$7JUKb4YwnTAeitITgV5nK.Je4pgy7DesPhuhw7OMu4GtjZgXAzf5C',NULL,'2023-02-25 01:52:28','2023-02-25 01:52:28'),(35,'yorosiku','aaa@aaa.com',NULL,'$2y$10$1QBwTPmc/3p3OGQc1rGXAO0thsTZBONXFy1EgqDFsn.tBuwQiG7uq',NULL,'2023-02-25 11:07:57','2023-02-25 11:07:57'),(36,'あ','a@a',NULL,'$2y$10$dJwehqQ6BP/mPqqo1amTzOtX20WnabXcj2e2hfVWH3BzwZayITgHq',NULL,'2023-02-25 15:57:47','2023-02-25 15:57:47'),(37,'bbb','bbb@bbb.com',NULL,'$2y$10$FC8QJDbTISMlz.65.TBXauwzFfefDM2zA2pvpjk5WpBKbUqTFPIpq',NULL,'2023-02-25 21:35:37','2023-02-25 21:35:37'),(38,'ccc','ccc@ccc.com',NULL,'$2y$10$wsqYz0V7DzAkkB5qXWddbuoTkVZLRxC.haaVj3tDi1ivdelQSwatK',NULL,'2023-02-27 18:44:05','2023-02-27 18:44:05'),(39,'あ','hiroaki-hn-19960117-@ezweb.ne.jp',NULL,'$2y$10$ebYV0CkX8qS5ye4MPZrvyOPDWhVYD/P67RdmCrRYMERlGcTCNkrVm',NULL,'2023-02-27 23:09:02','2023-02-27 23:09:02'),(40,'w','owifndtzd@gmail.com',NULL,'$2y$10$0vqO/5O4bJAEhVpeb4ffUuB0/wqW.HMB0o7fbkWHqu9FwCsh/HPhG',NULL,'2023-03-02 23:05:48','2023-03-02 23:05:48'),(41,'123','123@ear.com',NULL,'$2y$10$Tl/eDQI6p2llHmmWN6y7de1er8WBDaTTHJ5eBfGLgMGjmwlZNtowu',NULL,'2023-03-05 16:06:03','2023-03-05 16:06:03'),(42,'aaa','aaa@aaa',NULL,'$2y$10$75UTqo1QGnK0OEt9C9CRV.C/m7ETuBp6ymo3eSddzst2.lieAiCgi',NULL,'2023-03-09 21:03:17','2023-03-09 21:03:17'),(43,'a','mizukihashimoto.jpas0428@gmail.com',NULL,'$2y$10$JJdWtQqvQqxX4B4xVoDLp.Al9ocOR.sKb0H1F0fK3psyNFt1N7vMG',NULL,'2023-03-13 11:37:42','2023-03-13 11:37:42'),(44,'888.bengal@gmail.com','888.bengal@gmail.com',NULL,'$2y$10$.I3RHKFIGFFS8lY.TFogUesmmvc8ZmlziHlC10H8YWF6grrdXPqJ6',NULL,'2023-03-15 21:49:28','2023-03-15 21:49:28'),(45,'NANA','kyojinnaapyon@yahoo.co.jp',NULL,'$2y$10$SNXlgjtlSkSa0Z5eDDbF.uG6V..2HGG8Zuy6DIyJ7auD9qilPLPF2',NULL,'2023-03-16 20:05:53','2023-03-16 20:05:53'),(46,'pitagora33','pitagora.3.swich@gmail.com',NULL,'$2y$10$vhIjrBSYQVJprsPMa.O59u2ikrWNCMgY0MugLrpobNzhwjtO3QbKC',NULL,'2023-03-20 12:30:33','2023-03-20 12:30:33'),(47,'ヤギ','amnoskmkzeeeeei@gmail.com',NULL,'$2y$10$ht6pXJ.R12jTqa0kW6B1a.CKe3qpfS6aegoqnaMuyJb0oQ/7/9b0m',NULL,'2023-03-24 00:37:25','2023-03-24 00:37:25'),(48,'福井遥貴','yaoguifujing9@gmail.com',NULL,'$2y$10$ghHD5tDLm5R3E9dCN.GLTurRu66zBxTpSjLBIU9wSQ1KZyzDUOmr2',NULL,'2023-03-26 12:17:27','2023-03-26 12:17:27'),(49,'qqq','tomoh11.0223soccer@gmail.com',NULL,'$2y$10$GN0UoWyRNVgZOat8n//TruTZvRw8NfnVzD8G2KBL/IX6jFAOWOqnG',NULL,'2023-04-01 10:53:49','2023-04-01 10:53:49'),(50,'abc','example@gmail.com',NULL,'$2y$10$1MqWikhOjydhMhozsgeII.HIiHlXTfKywnm6PE4yI0r6GPreJLfIO','OoaQ1V6znZeNqRDOCjX8h5MtL5bhgOjaant6i9ZcYidzVwT52HiraDbpR3kR','2023-04-08 19:24:28','2023-04-08 19:24:28'),(51,'test001','aaaaaaaaaaaaaaaaaaaaa@gmail.com',NULL,'$2y$10$6UQgUg7FQSHJE7PZo/I20uAbopTi8DaepRDO.ogmfAJ5zeEWnKLqO',NULL,'2023-04-16 00:42:41','2023-04-16 00:42:41'),(52,'aya','wtiawtiawmps@gmail.com',NULL,'$2y$10$h91WR.merO9T2UcTXRnQi.e0CMP.tygZ2JtW0T5BtcvoCsbqtju1q',NULL,'2023-04-18 00:01:31','2023-04-18 00:01:31'),(53,'片桐希','samurai-katagiri@sapporo-pints.com',NULL,'$2y$10$igqO8L5GnSUoFgZApqk6TuQtC9bVu9OGaBOREL7HNTeWT4ZxXdJm.',NULL,'2023-04-18 12:15:27','2023-04-18 12:15:27'),(54,'山口　法光','yamaguchi.nori1001@gmail.com',NULL,'$2y$10$4JV4QdDLwM6gEDSX9KCspealCMcRPNiBLAS4t0/Duh0n6V3mPxbeK',NULL,'2023-04-22 16:03:13','2023-04-22 16:03:13'),(55,'るい','aiueo@co.jp',NULL,'$2y$10$GLV1L2Uzf5WWIWgVefgoAurIa7HEWYFtKl5mwFrGxDHC6Bgn9WtAS',NULL,'2023-04-22 16:52:42','2023-04-22 16:52:42'),(56,'test','sample@gmail.com',NULL,'$2y$10$w38ztDYrTlCFXOrN9Yif3uL4AicWw0JVuHlAjXcne7QbpoZrhUnCu',NULL,'2023-04-27 11:41:25','2023-04-27 11:41:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-28  0:27:35
