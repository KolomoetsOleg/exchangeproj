-- MySQL dump 10.13  Distrib 5.1.63, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: exchange_database
-- ------------------------------------------------------
-- Server version	5.1.63-0ubuntu0.11.10.1

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$10$HEJlIHtaSz1waJ8rF3G/LO6EF/NqUn4yZusIb1acY9/U5oYWXuANq','DpdDy9sFpMtyStiLcaoq','2012-08-29 10:15:20','2012-10-06 14:29:42',14,'2012-10-25 18:14:44','2012-10-23 12:31:22','178.165.62.103','82.117.235.43','2012-08-29 10:15:20','2012-10-25 18:14:44');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `index` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address_in_city` varchar(255) DEFAULT NULL,
  `cash_dispenser` int(11) DEFAULT NULL,
  `subsidiary` int(11) DEFAULT NULL,
  `additional_office` int(11) DEFAULT NULL,
  `exchange_point` int(11) DEFAULT NULL,
  `date_of_entering_into_the_BSR` date DEFAULT NULL,
  `address_from_statute` varchar(255) DEFAULT NULL,
  `actual_address` varchar(255) DEFAULT NULL,
  `corresponding_account` double DEFAULT NULL,
  `bic` int(11) DEFAULT NULL,
  `tin` int(11) DEFAULT NULL,
  `rcco` int(11) DEFAULT NULL,
  `account_in_rubles` text,
  `account_in_dollar` text,
  `account_in_euro` text,
  `cash_transfers` varchar(255) DEFAULT NULL,
  `office_hours` varchar(255) DEFAULT NULL,
  `chairman_of_the_council` varchar(255) DEFAULT NULL,
  `statute` varchar(255) DEFAULT NULL,
  `chartered_capital` varchar(255) DEFAULT NULL,
  `members_of_council` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
INSERT INTO `banks` VALUES (1,'КОММЕРЧЕСКИЙ БАНК «ГАРАНТ-БАНК»','ООО КБ «Гарант-Банк»',' + 7 (840) 226-25-98',' + 7 (840) 226-24-46','http://garant-bank.com','garantbank@garant-bank.com','2131',1,'Харьков',5,5,5,5,'2012-08-15','Street 1','ул. Пушкина, 21',2,2,2,2,'23412','42342','3423423','14','3','Петренко В.С.','Statute','Chartered capital','Members of council','2012-09-07 14:26:40','2012-10-06 14:46:00'),(2,'КОММЕРЧЕСКИЙ БАНК «СУХУМ-БАНК»','ООО КБ «Сухум-Банк» ','+7 (840) 226-52-85','+7 (840) 226-35-45','http://www.sukhumbank.com','info@sukhumbank.com','2131',1,'Харьков',5,5,5,5,'2010-05-09','Street 1','Проспект Леона, 31А',2,2,2,2,'123123','21312312','123123','Cash transfers','9-16','Chairman of the council','Statute','Chartered capital','Members of council','2012-09-07 14:30:32','2012-10-09 18:58:30'),(3,'КОММЕРЧЕСКИЙ БАНК «ГАГРА-БАНК»','ООО КБ «Гагра-Банк»','+7 (840) 234-41-30','+7 (840) 234-41-57','http://www.gagra-bank.com','info@gagra-bank.com',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ул. Пушкина, 21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-10-06 14:52:55','2012-10-09 18:58:15'),(4,'КОММЕРЧЕСКИЙ БАНК «ЧЕРНОМОРСКИЙ БАНК РАЗВИТИЯ»','ООО КБ  «Черноморский банк развития»','+7(840) 229-01-05','+7(840) 229-33-23','http://www.bsdbank.com','bank-chbr@mail.ru',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ул. Лакоба, 35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-10-06 14:58:02','2012-10-09 18:57:03'),(5,'АКЦИОНЕРНЫЙ КОММЕРЧЕСКИЙ СБЕРЕГАТЕЛЬНЫЙ БАНК РА','ОАО \"СБЕРБАНК АБХАЗИИ\"','+7 (840) 229-43-32, +7 (840) 229-43-33','+7 (840) 229-43-32','http://www.sbra.su','info@sbra.su',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'площадь Конституции, 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-10-06 15:16:32','2012-10-06 15:16:32'),(6,'НАЦИОНАЛЬНЫЙ БАНК РЕСПУБЛИКИ АБХАЗИЯ ','БАНК АБХАЗИИ','+7(840) 229-76-23 ','+7(840) 229-76-22','http://www.nb-ra.org','info@nb-ra.org',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Проспект. Леона, 14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-10-08 14:06:55','2012-10-08 14:41:13'),(7,' КОММЕРЧЕСКИЙ БАНК  \"КОММЕРЧЕСКИЙ ИНВЕСТИЦИОННЫЙ БАНК ИННОВАЦИОННЫХ ТЕХНОЛОГИЙ\"','ООО КБ \"КИБИТ-Банк\"','+7-840-229-41-82','+7(840)223-41-83','http://www.cibit-bank.ru','cibit_bank@mail.ru',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'г. Сухум, Проспект Леона, д. 9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-10-08 14:10:48','2012-10-09 18:59:17'),(8,'КОММЕРЧЕСКИЙ БАНК \"Универсал-банк\"','ООО КБ \"Универсал-банк\" ','+7(840)226-33-60','+7(840)223-99-15','http://www.universalbank.su','email@email.emaill',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' г.Сухум, ул. Лакоба, д.31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-10-08 14:13:29','2012-10-08 14:35:16'),(9,'КОММЕРЧЕСКИЙ БАНК \"АМРА-БАНК\"','ООО КБ \"Амра-банк\"','+7(840)223-33-32, ','+7(840)223-33-34,','http://www.amra-bank.ru','info@amra-bank.com',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ул. Лакоба-Конфедератов, 70/27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2012-10-08 14:15:00','2012-10-09 18:56:31');
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Сухум','2012-09-07 14:10:34','2012-10-06 14:41:46'),(2,'Новый Афон','2012-09-07 14:11:03','2012-10-06 14:42:36'),(3,'Гудаута','2012-10-06 14:46:15','2012-10-06 14:46:15'),(4,'Гагра','2012-10-06 14:46:28','2012-10-06 14:46:28'),(5,'Пицунда','2012-10-06 14:46:45','2012-10-06 14:46:45');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'ЕВРО','EUR','2012-09-07 14:31:02','2012-09-07 14:31:02'),(2,'Доллар','USD','2012-09-07 14:31:39','2012-10-08 13:59:58');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchanges`
--

DROP TABLE IF EXISTS `exchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchanges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `buy` double DEFAULT NULL,
  `sell` double DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchanges`
--

LOCK TABLES `exchanges` WRITE;
/*!40000 ALTER TABLE `exchanges` DISABLE KEYS */;
INSERT INTO `exchanges` VALUES (7,3,1,10.45,11.23,'2012-10-20 08:42:27','2012-10-20 08:42:27'),(8,3,2,45.55,23.45,'2012-10-20 08:43:01','2012-10-20 08:43:01'),(9,2,1,34.23,23.42,'2012-10-20 08:43:44','2012-10-20 08:43:44'),(10,2,2,23.34,34.43,'2012-10-20 08:44:25','2012-10-20 08:45:02'),(11,8,2,10,20,'2012-10-22 10:29:33','2012-10-22 10:29:33'),(12,5,1,20,10,'2012-10-22 10:29:50','2012-10-22 10:29:50'),(13,5,2,34.878,45767,'2012-10-23 12:00:57','2012-10-23 12:00:57'),(14,8,1,53.98,34.87,'2012-10-23 12:01:59','2012-10-23 12:32:59'),(15,7,1,12,16,'2012-10-23 12:34:33','2012-10-25 18:15:21'),(16,7,1,12,15,'2012-10-23 12:35:05','2012-10-23 12:35:05'),(17,7,2,22,22,'2012-10-23 12:35:20','2012-10-23 12:35:20'),(18,4,1,55,34,'2012-10-25 18:35:34','2012-10-25 18:35:34');
/*!40000 ALTER TABLE `exchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120803094526'),('20120803094551'),('20120803103631'),('20120803133646'),('20120803133647'),('20120803133648'),('20120806140901'),('20120829073001');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (1,70,'2012-09-07 14:10:34','2012-10-25 18:35:34');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-12 16:29:35
