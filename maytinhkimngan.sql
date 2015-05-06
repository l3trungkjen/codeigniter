-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: electronic_components
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(250) NOT NULL,
  `position` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `position` tinyint(2) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Git',0,'2015-05-11 13:20:20',NULL),(2,'abc',1,'2015-05-11 13:22:12',1),(6,'test cake',2,'2015-05-14 15:53:35',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lists`
--

DROP TABLE IF EXISTS `lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `position` tinyint(2) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lists`
--

LOCK TABLES `lists` WRITE;
/*!40000 ALTER TABLE `lists` DISABLE KEYS */;
INSERT INTO `lists` VALUES (1,1,'Hello1',0,'2015-05-11 14:16:13',1),(2,2,'test',0,'2015-05-11 14:18:21',1),(3,1,'World1',1,'2015-05-11 14:24:15',1),(4,6,'test_t_1',2,'2015-05-14 15:53:35',1),(6,6,'test_t_3',1,'2015-05-14 15:53:35',1),(15,6,'123',0,'2015-05-18 11:57:34',1);
/*!40000 ALTER TABLE `lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `list_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` varchar(150) NOT NULL,
  `sale` int(11) DEFAULT NULL,
  `image` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `set_new` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,0,'123','123',123,'public/upload/1432102985.jpg','131312312321',0,1),(2,2,'123132','123',1231,'public/upload/1432103043.jpg','123123123',0,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `fullname` varchar(150) NOT NULL,
  `current_sign_in_at` datetime NOT NULL,
  `last_sign_in_at` datetime NOT NULL,
  `current_sign_in_ip` varchar(150) NOT NULL,
  `last_sign_in_ip` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `permision` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kien','029177b13b098dbce8283e747543850d','le kien','2015-05-08 15:59:43','2015-05-08 15:59:43','2015-05-08 15:59:43','2015-05-08 15:59:43','2015-05-08 15:59:43',1),(2,'kien','029177b13b098dbce8283e747543850d','le kien','2015-05-08 16:01:46','2015-05-08 16:01:46','2015-05-08 16:01:46','2015-05-08 16:01:46','2015-05-08 16:01:46',1),(3,'kien','029177b13b098dbce8283e747543850d','123','2015-05-08 16:03:42','2015-05-08 16:03:42','2015-05-08 16:03:42','2015-05-08 16:03:42','2015-05-08 16:03:42',1),(4,'123213','53149055bef41b560c2120c7318aae79','123113','2015-05-08 16:40:33','2015-05-08 16:40:33','2015-05-08 16:40:33','2015-05-08 16:40:33','2015-05-08 16:40:33',1),(5,'kien1234','029177b13b098dbce8283e747543850d','123','2015-05-08 16:50:12','2015-05-08 16:50:12','2015-05-08 16:50:12','2015-05-08 16:50:12','2015-05-08 16:50:12',1),(6,'123','029177b13b098dbce8283e747543850d','123','2015-05-08 16:50:29','2015-05-08 16:50:29','2015-05-08 16:50:29','2015-05-08 16:50:29','2015-05-08 16:50:29',1),(7,'3123','029177b13b098dbce8283e747543850d','12312','2015-05-08 16:55:21','2015-05-08 16:55:21','2015-05-08 16:55:21','2015-05-08 16:55:21','2015-05-08 16:55:21',1),(8,'123','029177b13b098dbce8283e747543850d','123','2015-05-08 16:56:16','2015-05-08 16:56:16','2015-05-08 16:56:16','2015-05-08 16:56:16','2015-05-08 16:56:16',1),(9,'123','029177b13b098dbce8283e747543850d','123','2015-05-08 17:00:25','2015-05-08 17:00:25','2015-05-08 17:00:25','2015-05-08 17:00:25','2015-05-08 17:00:25',1),(10,'123','029177b13b098dbce8283e747543850d','123','2015-05-08 17:01:07','2015-05-08 17:01:07','2015-05-08 17:01:07','2015-05-08 17:01:07','2015-05-08 17:01:07',1),(11,'l3trungkjen','029177b13b098dbce8283e747543850d','Lê Trung Kiên','2015-05-11 09:14:30','2015-05-11 09:14:30','2015-05-11 09:14:30','2015-05-11 09:14:30','2015-05-11 09:14:30',1),(12,'123','029177b13b098dbce8283e747543850d','123','2015-05-11 11:28:57','2015-05-11 11:28:57','2015-05-11 11:28:57','2015-05-11 11:28:57','2015-05-11 11:28:57',1);
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

-- Dump completed on 2015-06-02 16:46:57
