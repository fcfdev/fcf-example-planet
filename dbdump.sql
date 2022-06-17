-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: fcf-example-planet
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.21.10.1

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
-- Table structure for table `___fcfSimpleAuthorization___login_by_email`
--

DROP TABLE IF EXISTS `___fcfSimpleAuthorization___login_by_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `___fcfSimpleAuthorization___login_by_email` (
  `stub_29548` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` bigint DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `___fcfSimpleAuthorization___login_by_email`
--

LOCK TABLES `___fcfSimpleAuthorization___login_by_email` WRITE;
/*!40000 ALTER TABLE `___fcfSimpleAuthorization___login_by_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `___fcfSimpleAuthorization___login_by_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `___fcfSimpleAuthorization___registration_requests`
--

DROP TABLE IF EXISTS `___fcfSimpleAuthorization___registration_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `___fcfSimpleAuthorization___registration_requests` (
  `stub_29548` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `___fcfSimpleAuthorization___registration_requests`
--

LOCK TABLES `___fcfSimpleAuthorization___registration_requests` WRITE;
/*!40000 ALTER TABLE `___fcfSimpleAuthorization___registration_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `___fcfSimpleAuthorization___registration_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `___fcfSimpleAuthorization___users`
--

DROP TABLE IF EXISTS `___fcfSimpleAuthorization___users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `___fcfSimpleAuthorization___users` (
  `stub_29548` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `refmaster` bigint NOT NULL,
  PRIMARY KEY (`refmaster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `___fcfSimpleAuthorization___users`
--

LOCK TABLES `___fcfSimpleAuthorization___users` WRITE;
/*!40000 ALTER TABLE `___fcfSimpleAuthorization___users` DISABLE KEYS */;
INSERT INTO `___fcfSimpleAuthorization___users` VALUES (NULL,'email@email.org',1);
/*!40000 ALTER TABLE `___fcfSimpleAuthorization___users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `___fcf___groups`
--

DROP TABLE IF EXISTS `___fcf___groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `___fcf___groups` (
  `stub_29548` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `___fcf___groups`
--

LOCK TABLES `___fcf___groups` WRITE;
/*!40000 ALTER TABLE `___fcf___groups` DISABLE KEYS */;
INSERT INTO `___fcf___groups` VALUES (NULL,'root','Super users',1),(NULL,'user','Simple users',2);
/*!40000 ALTER TABLE `___fcf___groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `___fcf___groups_roles`
--

DROP TABLE IF EXISTS `___fcf___groups_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `___fcf___groups_roles` (
  `stub_29548` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `self_ref` bigint DEFAULT NULL,
  `entity_ref` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `___fcf___groups_roles`
--

LOCK TABLES `___fcf___groups_roles` WRITE;
/*!40000 ALTER TABLE `___fcf___groups_roles` DISABLE KEYS */;
INSERT INTO `___fcf___groups_roles` VALUES (NULL,1,1,1),(NULL,2,2,2);
/*!40000 ALTER TABLE `___fcf___groups_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `___fcf___roles`
--

DROP TABLE IF EXISTS `___fcf___roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `___fcf___roles` (
  `stub_29548` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `___fcf___roles`
--

LOCK TABLES `___fcf___roles` WRITE;
/*!40000 ALTER TABLE `___fcf___roles` DISABLE KEYS */;
INSERT INTO `___fcf___roles` VALUES (NULL,'root','Super role',1),(NULL,'user','Simple user role',2),(NULL,'render','An auxiliary role that is used when programmatically fetching from the database inside the template hook.',3),(NULL,'menu','An auxiliary role that is used when fetching from the database when building the menu.',4);
/*!40000 ALTER TABLE `___fcf___roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `___fcf___sessions`
--

DROP TABLE IF EXISTS `___fcf___sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `___fcf___sessions` (
  `stub_29548` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `start` datetime NOT NULL,
  `last` datetime NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `___fcf___sessions`
--

LOCK TABLES `___fcf___sessions` WRITE;
/*!40000 ALTER TABLE `___fcf___sessions` DISABLE KEYS */;
INSERT INTO `___fcf___sessions` VALUES (NULL,'_2d708939fad579ecf0d0194327969924479b0dc7dee5163d80640069f023a95',1,'2021-08-27 02:54:24','2021-08-27 02:54:28',1),(NULL,'_44be37fc01ee65e1952b74ce36b350ecc3185110388541ea0a5ccfc04408754',1,'2021-08-27 04:58:24','2021-08-27 05:05:21',2),(NULL,'_4072c4b783faaea14a75c52d298d0ee668bf2869a7367e33d3d448f15a2bb80',1,'2022-06-17 07:34:28','2022-06-17 07:35:23',3);
/*!40000 ALTER TABLE `___fcf___sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `___fcf___users`
--

DROP TABLE IF EXISTS `___fcf___users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `___fcf___users` (
  `stub_29548` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `initialized` int NOT NULL,
  `time_creation` datetime NOT NULL,
  `last_login_attempt` datetime DEFAULT NULL,
  `number_login_attempts` int DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `___fcf___users`
--

LOCK TABLES `___fcf___users` WRITE;
/*!40000 ALTER TABLE `___fcf___users` DISABLE KEYS */;
INSERT INTO `___fcf___users` VALUES (NULL,'root','3c4953d44439b685edc6511bb8567773d15cbec2f30c9878693c42830c67daf4a0df8c084b075bac7e7e0d8e961028d4',1,1,'2021-08-27 00:26:22','2022-06-17 07:34:28',1,1);
/*!40000 ALTER TABLE `___fcf___users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `___fcf___users_groups`
--

DROP TABLE IF EXISTS `___fcf___users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `___fcf___users_groups` (
  `stub_29548` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `self_ref` bigint DEFAULT NULL,
  `entity_ref` bigint DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `___fcf___users_groups`
--

LOCK TABLES `___fcf___users_groups` WRITE;
/*!40000 ALTER TABLE `___fcf___users_groups` DISABLE KEYS */;
INSERT INTO `___fcf___users_groups` VALUES (NULL,1,1,1);
/*!40000 ALTER TABLE `___fcf___users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `___fcf___variables`
--

DROP TABLE IF EXISTS `___fcf___variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `___fcf___variables` (
  `stub_29548` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `package` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `package` (`package`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `___fcf___variables`
--

LOCK TABLES `___fcf___variables` WRITE;
/*!40000 ALTER TABLE `___fcf___variables` DISABLE KEYS */;
INSERT INTO `___fcf___variables` VALUES (NULL,'fcf','installModules','Array of installed packages in the system','[\"fcf\",\"defaultTheme\",\"fcfStyles\",\"fcfControls\",\"fcfDBControls\",\"managementTheme\",\"fcfManagement\",\"fcfSimpleAuthorization\",\"\"]',1),(NULL,'fcf','languages','List of available languages','{\"en\":\"English\",\"ru\":\"Russian\",\"de\":\"German\",\"zh\":\"Chinese\",\"ja\":\"Japanese\",\"fr\":\"French\"}',2),(NULL,'fcf','defaultLanguage','Default language','en',3),(NULL,'fcf','languageIdentification','Methods for determining the language','{\"byPrefix\":true,\"byCookie\":true,\"byParameter\":false,\"parameter\":\"language\",\"byHTTP\":true}',4),(NULL,'fcf','editTranslations','Editable translation files','{\"en\":\":translations/en\"}',5),(NULL,'fcf','languageFiles','Information about translation files','{}',6),(NULL,'fcf','autoFillJoinTables','Contains autocomplete relationships for related tables','{\"___fcf___users\":{\"___fcfSimpleAuthorization___users\":true}}',7),(NULL,'fcf','autoFillTranslateTables','Contains autocomplete relationships for translated tables','{}',8),(NULL,'fcf','lastCron','Time of the last cron launch','2022-06-17 10:36',9),(NULL,'fcf','sitemapSettings','Settings for creating a sitemap file','{\"multilingual\":true,\"enableAutoUpdate\":true,\"autoUpdateDays\":1,\"autoUpdateHours\":0,\"priorityDefault\":0.5,\"changefreqDefault\":\"monthly\",\"multilingualDefault\":true,\"additionalSitemapItems\":[],\"sitemapItems\":[]}',10),(NULL,'fcf','htmlHeader','The part of the HTML header that is included in all pages of the site','',11),(NULL,'fcf','packageVersions','Package versions','{\"fcf\":\"1.1.45-a1\",\"defaultTheme\":\"1.1.1\",\"fcfStyles\":\"1.1.1\",\"fcfControls\":\"1.1.1\",\"fcfDBControls\":\"1.1.1\",\"managementTheme\":\"1.1.1\",\"fcfManagement\":\"1.1.1\",\"fcfSimpleAuthorization\":\"1.1.1\"}',12);
/*!40000 ALTER TABLE `___fcf___variables` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-17 10:36:53
