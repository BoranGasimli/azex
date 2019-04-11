-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: 127.0.0.1    Database: sendit_db
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acquisition_channel`
--

DROP TABLE IF EXISTS `acquisition_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `acquisition_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_az` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_ru` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acquisition_channel`
--

LOCK TABLES `acquisition_channel` WRITE;
/*!40000 ALTER TABLE `acquisition_channel` DISABLE KEYS */;
INSERT INTO `acquisition_channel` VALUES (1,'Dost məsləhəti',NULL,NULL,1,1),(2,'Facebook',NULL,NULL,2,1),(3,'Instagram',NULL,NULL,3,1),(4,'Axtarış sistemləri',NULL,NULL,4,1),(5,'Televiziya',NULL,NULL,5,1),(6,'Radio',NULL,NULL,6,1),(7,'Digər',NULL,NULL,7,1);
/*!40000 ALTER TABLE `acquisition_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bag`
--

DROP TABLE IF EXISTS `bag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bag_state` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `close_date` datetime DEFAULT NULL,
  `closed_by_user_id` int(11) DEFAULT NULL,
  `ready_for_sending_date` datetime DEFAULT NULL,
  `ready_for_sending_by_user_id` int(11) DEFAULT NULL,
  `sent_date` datetime DEFAULT NULL,
  `sent_by_user_id` int(11) DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `received_by_user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bag`
--

LOCK TABLES `bag` WRITE;
/*!40000 ALTER TABLE `bag` DISABLE KEYS */;
INSERT INTO `bag` VALUES (7,4,'2019-03-28 00:56:13','test','1','2019-03-28 00:56:24',37,'2019-03-28 00:56:41',37,'2019-03-28 00:58:10',37,'2019-03-28 00:59:04',37,1),(8,4,'2019-03-28 02:07:05','2','2','2019-03-28 02:07:15',37,'2019-03-28 02:07:29',37,'2019-03-28 02:07:43',37,'2019-03-28 02:08:05',37,1),(9,4,'2019-03-28 10:47:09','1','1','2019-03-28 10:47:24',37,'2019-03-28 10:47:40',37,'2019-03-28 10:47:56',37,'2019-03-28 10:48:41',37,1),(10,4,'2019-03-28 11:46:09','asad special','2','2019-03-28 11:46:27',37,'2019-03-28 11:46:49',37,'2019-03-28 11:46:58',37,'2019-03-28 11:47:00',37,1),(11,1,'2019-03-28 13:04:58','20190328-1','1','2019-03-28 13:05:03',37,NULL,NULL,NULL,NULL,NULL,NULL,0),(12,4,'2019-03-28 13:05:33','20190328-1','1','2019-03-28 13:05:57',37,'2019-03-28 13:06:59',37,'2019-03-28 13:07:18',37,'2019-03-28 13:07:39',37,1),(13,1,'2019-04-01 00:22:48','1','1','2019-04-01 00:23:02',38,NULL,NULL,NULL,NULL,NULL,NULL,1),(14,1,'2019-04-07 01:53:13','test','1','2019-04-07 01:57:09',38,NULL,NULL,NULL,NULL,NULL,NULL,1),(15,1,'2019-04-07 01:57:22','2','2','2019-04-07 01:58:25',38,NULL,NULL,NULL,NULL,NULL,NULL,0),(16,1,'2019-04-07 01:58:32','3','3','2019-04-07 01:58:39',38,NULL,NULL,NULL,NULL,NULL,NULL,0),(17,2,'2019-04-07 02:04:03','4','4','2019-04-07 02:20:13',38,'2019-04-07 02:48:36',38,NULL,NULL,NULL,NULL,1),(18,0,'2019-04-07 02:20:37','6','6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `bag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bag_detail`
--

DROP TABLE IF EXISTS `bag_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bag_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bag_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `insert_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bag_detail`
--

LOCK TABLES `bag_detail` WRITE;
/*!40000 ALTER TABLE `bag_detail` DISABLE KEYS */;
INSERT INTO `bag_detail` VALUES (5,7,30,'2019-03-28 00:56:23',1),(6,7,29,'2019-03-28 00:56:23',1),(7,7,28,'2019-03-28 00:56:23',1),(8,8,32,'2019-03-28 02:07:13',1),(9,8,31,'2019-03-28 02:07:13',1),(10,9,36,'2019-03-28 10:47:22',1),(11,10,42,'2019-03-28 11:46:25',1),(12,10,41,'2019-03-28 11:46:25',1),(13,10,40,'2019-03-28 11:46:25',1),(14,10,39,'2019-03-28 11:46:25',1),(15,10,38,'2019-03-28 11:46:25',1),(16,10,37,'2019-03-28 11:46:25',1),(17,10,35,'2019-03-28 11:46:25',1),(18,12,44,'2019-03-28 13:05:44',1),(19,12,43,'2019-03-28 13:05:44',1),(20,12,34,'2019-03-28 13:05:55',1),(21,12,33,'2019-03-28 13:05:55',1),(22,13,50,'2019-04-01 00:23:00',1),(23,13,49,'2019-04-01 00:23:01',1),(24,18,65,'2019-04-07 02:24:38',1);
/*!40000 ALTER TABLE `bag_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bag_group`
--

DROP TABLE IF EXISTS `bag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bag_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `etg_date` datetime NOT NULL,
  `etg_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `awb_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `package_amount` decimal(19,2) DEFAULT NULL,
  `package_count` int(11) DEFAULT NULL,
  `sent_amount` decimal(19,2) DEFAULT NULL,
  `sent_date` datetime DEFAULT NULL,
  `total_amount` decimal(19,2) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bag_group`
--

LOCK TABLES `bag_group` WRITE;
/*!40000 ALTER TABLE `bag_group` DISABLE KEYS */;
INSERT INTO `bag_group` VALUES (5,'2019-03-25 00:00:00','1','1','1',1.00,1,1.00,'2019-03-25 00:00:00',1.00,'2019-03-28 00:56:41',2,1),(6,'2019-03-25 00:00:00','2','2','2',2.00,2,2.00,'2019-03-25 00:00:00',2.00,'2019-03-28 02:07:29',2,1),(7,'2019-03-25 00:00:00','1','1','1',1.00,1,1.00,'2019-03-25 00:00:00',1.00,'2019-03-28 10:47:40',2,1),(8,'2019-03-25 00:00:00','77','77','77',7.00,7,7.00,'2019-03-25 00:00:00',7.00,'2019-03-28 11:46:49',2,1),(9,'2019-03-25 00:00:00','20190328-etg','20190328-awb','1asd',0.50,1,1.10,'2019-03-25 00:00:00',1.00,'2019-03-28 13:06:59',2,1),(10,'2019-04-07 00:00:00','123','123','12',1.00,12,12.00,'2019-04-07 00:00:00',12.00,'2019-04-07 02:48:36',0,1);
/*!40000 ALTER TABLE `bag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bag_group_detail`
--

DROP TABLE IF EXISTS `bag_group_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bag_group_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bag_group_id` int(11) NOT NULL,
  `bag_id` int(11) NOT NULL,
  `insert_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bag_group_detail`
--

LOCK TABLES `bag_group_detail` WRITE;
/*!40000 ALTER TABLE `bag_group_detail` DISABLE KEYS */;
INSERT INTO `bag_group_detail` VALUES (5,5,7,'2019-03-28 00:56:41',1),(6,6,8,'2019-03-28 02:07:29',1),(7,7,9,'2019-03-28 10:47:40',1),(8,8,10,'2019-03-28 11:46:49',1),(9,9,12,'2019-03-28 13:06:59',1),(10,10,17,'2019-04-07 02:48:36',1);
/*!40000 ALTER TABLE `bag_group_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_az`
--

DROP TABLE IF EXISTS `balance_az`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `balance_az` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance_amount` decimal(20,6) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `last_update` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `customer_id_idx` (`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_az`
--

LOCK TABLES `balance_az` WRITE;
/*!40000 ALTER TABLE `balance_az` DISABLE KEYS */;
INSERT INTO `balance_az` VALUES (25,0.000000,1,35,'2019-03-28 04:02:14',1),(26,0.000000,1,36,'2019-03-28 00:34:57',1),(27,0.000000,1,37,'2019-03-28 00:34:57',1),(28,-10.080000,1,38,'2019-03-31 20:11:38',1),(29,0.000000,1,39,'2019-03-28 05:09:32',1),(30,0.000000,1,40,'2019-03-28 08:48:45',1),(31,0.000000,1,41,'2019-03-28 14:49:56',1),(32,0.000000,1,42,'2019-03-28 16:18:11',1),(33,-3.360000,1,44,'2019-03-31 20:47:12',1),(34,0.000000,1,45,'2019-03-31 23:37:37',1),(35,0.000000,1,46,'2019-04-02 11:38:45',1);
/*!40000 ALTER TABLE `balance_az` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_tr`
--

DROP TABLE IF EXISTS `balance_tr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `balance_tr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance_amount` decimal(20,6) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `last_update` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `customer_id_idx` (`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_tr`
--

LOCK TABLES `balance_tr` WRITE;
/*!40000 ALTER TABLE `balance_tr` DISABLE KEYS */;
INSERT INTO `balance_tr` VALUES (25,-50.000000,1,35,'2019-03-28 05:05:40',1),(26,0.000000,1,36,'2019-03-28 00:35:04',1),(27,0.000000,1,37,'2019-03-28 00:35:04',1),(28,-40.000000,1,38,'2019-04-01 11:30:02',1),(29,0.000000,1,39,'2019-03-28 02:08:00',1),(30,-20.000000,1,40,'2019-03-28 14:42:26',1),(31,-110.000000,1,41,'2019-03-28 14:40:16',1),(32,-80.000000,1,42,'2019-03-28 15:58:01',1),(33,0.000000,1,44,'2019-03-30 12:20:34',1),(34,0.000000,1,45,'2019-03-31 23:37:37',1),(35,0.000000,1,46,'2019-04-02 11:38:45',1);
/*!40000 ALTER TABLE `balance_tr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_transaction_az`
--

DROP TABLE IF EXISTS `balance_transaction_az`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `balance_transaction_az` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `balance_id` int(11) NOT NULL,
  `tx_user_id` int(11) NOT NULL,
  `tx_date` datetime NOT NULL,
  `amount` decimal(20,6) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `amount_azn` decimal(20,6) NOT NULL,
  `amount_bal_cur` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `balance_before` decimal(20,6) NOT NULL,
  `balance_after` decimal(20,6) NOT NULL,
  `tx_source` int(11) NOT NULL,
  `tx_note` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_transaction_az`
--

LOCK TABLES `balance_transaction_az` WRITE;
/*!40000 ALTER TABLE `balance_transaction_az` DISABLE KEYS */;
INSERT INTO `balance_transaction_az` VALUES (31,25,36,'2019-03-27 23:49:33',-2.000000,2,-3.360000,-3.360000,0.000000,-3.360000,3,'',1),(32,25,36,'2019-03-28 03:50:36',-2.000000,2,-3.360000,-3.360000,-3.360000,-6.720000,3,'',1),(33,25,37,'2019-03-28 04:02:14',6.720000,1,6.720000,6.720000,-6.720000,0.000000,8,'',1),(34,29,37,'2019-03-28 05:09:32',0.000000,1,0.000000,0.000000,0.000000,0.000000,8,'',1),(35,31,42,'2019-03-28 13:43:50',-2.000000,2,-3.360000,-3.360000,0.000000,-3.360000,3,'',1),(36,31,37,'2019-03-28 13:50:10',3.360000,1,3.360000,3.360000,-3.360000,0.000000,8,'',1),(37,31,42,'2019-03-28 13:51:42',-2.000000,2,-3.360000,-3.360000,0.000000,-3.360000,3,'',1),(38,31,42,'2019-03-28 14:27:47',-2.000000,2,-3.360000,-3.360000,-3.360000,-6.720000,3,'',1),(39,31,37,'2019-03-28 14:49:56',6.720000,1,6.720000,6.720000,-6.720000,0.000000,8,'',1),(40,32,37,'2019-03-28 16:18:11',0.000000,1,0.000000,0.000000,0.000000,0.000000,8,'',1),(41,28,39,'2019-03-31 11:58:17',-2.000000,2,-3.360000,-3.360000,0.000000,-3.360000,3,'',1),(42,28,39,'2019-03-31 20:10:18',-2.000000,2,-3.360000,-3.360000,-3.360000,-6.720000,3,'',1),(43,28,39,'2019-03-31 20:11:38',-2.000000,2,-3.360000,-3.360000,-6.720000,-10.080000,3,'',1),(44,33,45,'2019-03-31 20:47:12',-2.000000,2,-3.360000,-3.360000,0.000000,-3.360000,3,'',1);
/*!40000 ALTER TABLE `balance_transaction_az` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_transaction_tr`
--

DROP TABLE IF EXISTS `balance_transaction_tr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `balance_transaction_tr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `balance_id` int(11) NOT NULL,
  `tx_user_id` int(11) NOT NULL,
  `tx_date` datetime NOT NULL,
  `amount` decimal(20,6) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `amount_azn` decimal(20,6) NOT NULL,
  `amount_bal_cur` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `balance_before` decimal(20,6) NOT NULL,
  `balance_after` decimal(20,6) NOT NULL,
  `tx_source` int(11) NOT NULL,
  `tx_note` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_transaction_tr`
--

LOCK TABLES `balance_transaction_tr` WRITE;
/*!40000 ALTER TABLE `balance_transaction_tr` DISABLE KEYS */;
INSERT INTO `balance_transaction_tr` VALUES (19,25,36,'2019-03-28 00:17:15',-10.000000,4,-2.960000,-10.000000,0.000000,-10.000000,1,'',1),(20,25,36,'2019-03-28 01:14:05',-20.000000,4,-5.920000,-20.000000,-10.000000,-30.000000,1,'',1),(21,25,36,'2019-03-28 05:05:40',-20.000000,4,-5.920000,-20.000000,-30.000000,-50.000000,1,'',1),(22,31,42,'2019-03-28 13:54:47',-10.000000,4,-2.960000,-10.000000,0.000000,-10.000000,1,'',1),(23,31,42,'2019-03-28 14:40:16',-100.000000,4,-29.600000,-100.000000,-10.000000,-110.000000,1,'',1),(24,30,41,'2019-03-28 14:42:26',-20.000000,4,-5.920000,-20.000000,0.000000,-20.000000,1,'',1),(25,32,43,'2019-03-28 15:54:01',-70.000000,4,-20.720000,-70.000000,0.000000,-70.000000,1,'',1),(26,32,43,'2019-03-28 15:58:01',-10.000000,4,-2.960000,-10.000000,-70.000000,-80.000000,1,'',1),(27,28,39,'2019-04-01 10:56:49',-10.000000,4,-2.960000,-10.000000,0.000000,-10.000000,1,'',1),(28,28,39,'2019-04-01 11:30:02',-30.000000,4,-8.880000,-30.000000,-10.000000,-40.000000,1,'',1);
/*!40000 ALTER TABLE `balance_transaction_tr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_account`
--

DROP TABLE IF EXISTS `bank_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,3) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_account`
--

LOCK TABLES `bank_account` WRITE;
/*!40000 ALTER TABLE `bank_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashier`
--

DROP TABLE IF EXISTS `cashier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cashier` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `balance` decimal(19,2) DEFAULT NULL,
  `close_date` datetime DEFAULT NULL,
  `open_date` date DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashier`
--

LOCK TABLES `cashier` WRITE;
/*!40000 ALTER TABLE `cashier` DISABLE KEYS */;
/*!40000 ALTER TABLE `cashier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashier_basket`
--

DROP TABLE IF EXISTS `cashier_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cashier_basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `add_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_order_uk` (`user_id`,`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashier_basket`
--

LOCK TABLES `cashier_basket` WRITE;
/*!40000 ALTER TABLE `cashier_basket` DISABLE KEYS */;
INSERT INTO `cashier_basket` VALUES (106,38,41,'2019-04-01 11:38:23',1);
/*!40000 ALTER TABLE `cashier_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Geyim',1,1),(2,'Elektronika',2,1),(3,'Paten',1,1),(4,'Ayakkabı',1,1),(5,'Takım Elbise',1,1),(6,'Ütü',1,1),(7,'Gözlük',1,1),(8,'Nevresim',1,1),(9,'Kitap',1,1),(10,'Oyuncak',1,1),(11,'Saat',1,1),(12,'Kozmetik',1,1),(13,'Blender seti',1,1),(14,'Bijuteri',1,1),(15,'Ayna',1,1),(16,'Ev Aletleri',1,1),(17,'DVD',1,1),(18,'Havlu',1,1),(19,'Porselen',1,1),(20,'Çanta',1,1),(21,'Cüzdan',1,1),(22,'Mutfak Robotu',1,1),(23,'Gögüs Pompası',1,1),(24,'Koltuk-Masa örtüsü',1,1),(25,'Kulaklık',1,1),(26,'Otomobil yedek parça',1,1),(27,'Tıraş makinesi',1,1),(28,'Yedek parça',1,1),(29,'Yemek takımı',1,1),(30,'Köpek maması',1,1),(31,'Termos',1,1),(32,'Tıbbi Ürünler',1,1),(33,'Vizitkart',1,1),(34,'Tencere Seti',1,1),(35,'Ateş ölçer',1,1),(36,'Puzzle',1,1),(37,'Kahve makinesi',1,1),(38,'Klavye',1,1),(39,'Hafıza Kartı',1,1),(40,'Ev Tekstli',1,1),(41,'MAKINA HALISI',1,1),(42,'Bitkisel Ürünler',1,1),(43,'Tablo',1,1),(44,'Şarzlı Diş Fırçası',1,1),(45,'Su Filtresi',1,1),(46,'Kamera',1,1),(47,'Fön makinesi',1,1),(48,'Şemsiye',1,1),(49,'Araba Aksesuarı',1,1),(50,'mumluk',1,1),(51,'Kartuş',1,1),(52,'Yastık',1,1),(53,'Saç Boyası',1,1),(54,'Bluz',1,1),(55,'Elbise',1,1),(56,'Kot Pantalon',1,1),(57,'Kazak',1,1),(58,'Hırka',1,1),(59,'Gömlek',1,1),(60,'T-shirt',1,1),(61,'Pantalon',1,1),(62,'Ceket',1,1),(63,'Şapka',1,1),(64,'Etek',1,1),(65,'Çorap',1,1),(66,'Pijama',1,1),(67,'Kaban',1,1),(68,'Bebek elbise',1,1),(69,'Atkı',1,1),(70,'Mont',1,1),(71,'Cam ürünleri',1,1),(72,'bulaşık deterjanı tablet',1,1),(73,'iç giyim',1,1),(74,'yastık kılıfı',1,1),(75,'Sabun Kalıbı',1,1),(76,'Vinil Kaplama',1,1),(77,'ön tampon - lip',1,1),(78,'Poşet',1,1),(79,'Diş Fırçası',1,1),(80,'Kalem',1,1),(81,'Eşofman Takımı',1,1),(82,'Cep Telefonu Kılıf',1,1),(83,'Pardesü',1,1),(84,'Misir patlatma makinesi',1,1),(85,'Boyunluk',1,1),(86,'Kemer',1,1),(87,'Prezervatif',1,1),(88,'Kupa',1,1),(89,'Eldiven',1,1),(90,'Saklama Kabı',1,1),(91,'Bornoz',1,1),(92,'Battaniye',1,1),(93,'Keçe',1,1),(94,'Mouse',1,1),(95,'Uydu alicisi',1,1),(96,'Tesbih',1,1),(97,'Kravat',1,1),(98,'Radyo',1,1),(99,'Yelek',1,1),(100,'Çerceve',1,1),(101,'kasap bıçağı',1,1),(102,'Tunik',1,1),(103,'Boyama Seti',1,1),(104,'Tabanlik',1,1),(105,'Pipet',1,1),(106,'Tost makinasi',1,1),(107,'Temizlik Süpürgesi',1,1),(108,'Document',1,1),(109,'Tabak',1,1),(110,'Printer',1,1),(111,'saklama poşeti',1,1),(112,'yorgan',1,1),(113,'Kahve',1,1),(114,'Kaşık Bıçak Seti',1,1),(115,'Filtre Klima',1,1),(116,'Masaj şiltesi',1,1),(117,'ayakkabi bağ',1,1),(118,'Masa Takvimi',1,1),(119,'Bulaşıklık',1,1),(120,'Organizer',1,1),(121,'Islak Mendil',1,1),(122,'Tarak',1,1),(123,'Burun Temizleme Aparatı',1,1),(124,'Bebek bakım',1,1),(125,'Bebek Bezi',1,1),(126,'Havlu',1,1),(127,'Eşarp',1,1),(128,'ŞARJÖR KILIFI',1,1),(129,'OPTIK LENS',1,1),(130,'Emzik',1,1),(131,'Kalem',1,1),(132,'Kravat',1,1),(133,'Anakart',1,1),(134,'Ölçüm Çubuğu',1,1),(135,'Kanguru',1,1),(136,'Amortisör',1,1),(137,'Bel Yastığı Sırt Minderi',1,1),(138,'Çerçeve',1,1),(139,'Mendil',1,1),(140,'ÇİKOLATA',1,1),(141,'Termometr',1,1),(142,'Göğüs Pompası',1,1),(143,'Şal Eşarp',1,1),(144,'Limon Sıkacağı',1,1),(145,'MASA SANDALYE',1,1),(146,'DUVAR RAFI',1,1),(147,'GÖZLÜK CAMI',1,1),(148,'Ayak Törpüsü',1,1),(149,'HEDİYE KUTUSU',1,1),(150,'Bacak Şekillendirici',1,1),(151,'Halı',1,1),(152,'davul-zurna',1,1),(153,'Bebek Önlük',1,1),(154,'Renkli Muadil',1,1),(155,'Kartuş Tıpası',1,1),(156,'Ayakkabı Yıkama Filesi',1,1),(157,'Hoparlör',1,1),(158,'Lamba',1,1),(159,'Biberon',1,1),(160,'Masaj Aleti',1,1),(161,'Kahvaltık Seti',1,1),(162,'valiz',1,1),(163,'Mic',1,1),(164,'Kitaplik',1,1),(165,'Watch',1,1),(166,'Kumanda',1,1),(167,'Olta Makinesi',1,1),(168,'Masaj aleti',1,1),(169,'Digər',1,1),(170,'Vitamin',1,1),(171,'Kaydirağım',1,1),(172,'Yatak tepsisi',1,1),(173,'FARE HAŞERE KOVUCU',1,1),(174,'çay',1,1),(175,'ETİKET',1,1),(176,'seyahat seti',1,1),(177,'terazı',1,1),(178,'makara',1,1),(179,'yuzme paleti',1,1),(180,'Tohum',1,1),(181,'OYUN JELI',1,1),(182,'BİLGİSAYAR AKSESUARI',1,1),(183,'Cameras Accessories',1,1),(184,'Tulum',1,1),(185,'Lens',1,1),(186,'Top',1,1),(187,'kişisel bakım',1,1),(188,'Bag',1,1),(189,'Bilgisayar',1,1),(190,'PROTEZ SAÇ',1,1),(191,'perde, panjur',1,1),(192,'Tuz',1,1),(193,'Terlik',1,1),(194,'MAYO - BIKINI',1,1),(195,'Gecelik',1,1),(196,'sweatshirt',1,1),(197,'Trençkot',1,1),(198,'Trençkot',1,1),(199,'Qramofon',1,1),(200,'Bandana',1,1),(201,'Avize',1,1),(202,'panço',1,1),(203,'palto',1,1),(204,'jacket',1,1),(205,'şort',1,1),(206,'bebek arabasi',1,1),(207,'spor ekipmanlari',1,1),(208,'masa örtüsü',1,1),(209,'peçete',1,1),(210,'tayt',1,1),(211,'karset',1,1),(212,'hurç',1,1),(213,'gelinlik',1,1),(214,'Kimono',1,1),(215,'şarj cihazı',1,1),(216,'Atlet',1,1),(217,'Eşofman altı',1,1),(218,'Fular',1,1),(219,'Öğrenci Seti',1,1),(220,'Saç takı',1,1),(221,'Pareo',1,1),(222,'gitar',1,1),(223,'telefon aksesuari',1,1),(224,'koltuk',1,1),(225,'saç makinesi',1,1),(226,'ayakkabı altlığı',1,1),(227,'Papyon',1,1),(228,'Dügme',1,1),(229,'Anahtar',1,1),(230,'Çaydanlık',1,1),(231,'Çimento',1,1),(232,'sünger',1,1),(233,'Plaj Hasırı',1,1),(234,'Tava',1,1),(235,'Cezve',1,1),(236,'KİL HAMURU',1,1),(237,'Termometre',1,1),(238,'Epilatör',1,1),(239,'Sepet',1,1),(240,'Kılıf',1,1),(241,'Mum',1,1),(242,'Gillette',1,1),(243,'Nargile',1,1),(244,'KOLYE',1,1),(245,'Mandal',1,1),(246,'Tansiyon Aleti',1,1),(247,'Diş Macunu',1,1),(248,'buhar makinesi',1,1),(249,'Ip',1,1),(250,'Gögüs Silikonu',1,1),(251,'Aspiratör',1,1),(252,'Sehpa',1,1),(253,'Mutfak Aletleri',1,1),(254,'Dikiş makinesi',1,1),(255,'Bardak',1,1),(256,'Mekik Sehbası',1,1),(257,'Askı',1,1),(258,'Yatak Alezi',1,1),(259,'Kamp aksesuarlari',1,1),(260,'band',1,1),(261,'Kamera aksesuarı',1,1),(262,'Sandalye',1,1),(263,'Micro',1,1),(264,'Kapı Stoperi Çocuk Koruyucu Set',1,1),(265,'Demlik',1,1),(266,'Yüritec',1,1),(267,'Karbonat',1,1),(268,'POSTER',1,1),(269,'PAS PAS',1,1),(270,'sabit telefon',1,1),(271,'kartvizit',1,1),(272,'Külot',1,1),(273,'Pijama Takımı',1,1),(274,'Boxer',1,1),(275,'Babet',1,1),(276,'Casual Ayakkabı',1,1),(277,'Slip',1,1),(278,'Suluk &amp; Matara',1,1),(279,'Banyo Aksesuarları',1,1),(280,'Çift Kişilik Yatak Örtüsü',1,1),(281,'Bot &amp; Bootie',1,1),(282,'Sırt Çantası',1,1),(283,'Sneaker',1,1),(284,'Güneş Gözlüğü',1,1),(285,'Bebek Takımları',1,1),(286,'Bere',1,1),(287,'Bijuteri Küpe',1,1),(288,'Abiye &amp; Mezuniyet Elbisesi',1,1),(289,'Jeans',1,1),(290,'Omuz Çantası',1,1),(291,'Sandalet',1,1),(292,'Pantolon',1,1),(293,'Çift Kişilik Nevresim',1,1),(294,'Basketbol Ayakkabısı',1,1),(295,'Alt-Üst Takım',1,1),(296,'Loafer Ayakkabı',1,1),(297,'Postacı Çantası',1,1),(298,'Klasik Ayakkabı',1,1),(299,'Portföy / Clutch Çanta',1,1),(300,'Klasik Topuklu Ayakkabı',1,1),(301,'Koşu &amp; Antrenman Ayakkabısı',1,1),(302,'Ev Botu',1,1),(303,'Düzenleyici',1,1),(304,'Şort/Bermuda',1,1),(305,'Spor Çantası',1,1),(306,'Yürüyüş Ayakkabısı',1,1),(307,'Polo Yaka T-shirt',1,1),(308,'Parfüm',1,1),(309,'Çizme',1,1),(310,'Süveter',1,1),(311,'Okul Çantası',1,1),(312,'Beslenme Çantası',1,1),(313,'Diğer Aksesuarlar',1,1),(314,'Bebek Body &amp; Zıbın',1,1),(315,'Kulakiçi Kulaklık',1,1),(316,'Parka',1,1),(317,'Şal',1,1),(318,'Outdoor Ayakkabı',1,1),(319,'Spor Malzemeleri',1,1),(320,'Saç Şekillendirici Krem ve Wax',1,1),(321,'Kartlık',1,1),(322,'Oxford Ayakkabı',1,1),(323,'Bel Çantası',1,1),(324,'Bijuteri Kolye',1,1),(325,'Ev Terliği',1,1),(326,'Spor Sütyeni',1,1),(327,'Çift Kişilik Çarşaf Takımı',1,1),(328,'Diğer Hazırlık Gereçleri',1,1),(329,'Saklama Kutusu&amp;Sepet&amp;Hurç',1,1),(330,'Bebek Oyuncakları',1,1),(331,'Astronot Tulum',1,1),(332,'Sabahlık',1,1),(333,'Mineraller',1,1),(334,'Figürler',1,1),(335,'Deri Ceket',1,1),(336,'Mayo',1,1),(337,'Eyeliner',1,1),(338,'Dolgu Topuklu Ayakkabı',1,1),(339,'Yüz Temizleyicileri',1,1),(340,'Kapatıcı',1,1),(341,'Çift Kişilik Pike/Pike Takımı',1,1),(342,'Bebek/Çocuk Battaniyesi',1,1),(343,'Tek Kişilik Yatak Örtüsü',1,1),(344,'Koenzim Q10 Ürünleri',1,1),(345,'El Çantası',1,1),(346,'Korse',1,1),(347,'String',1,1),(348,'Sütyen',1,1),(349,'Panduf',1,1),(350,'Plaj Oyuncakları',1,1),(351,'Lego &amp; Yapı Oyuncakları',1,1),(352,'Biberon/Emzik',1,1),(353,'Pedallı Araçlar',1,1),(354,'Servis/Sunum Ürünleri',1,1),(355,'Köpek Mama Ve Su Kapları',1,1),(356,'Atkı &amp; Bere &amp; Eldiven Set',1,1),(357,'Valiz/Bavul',1,1),(358,'Makyaj Fırça &amp; Aksesuarları',1,1),(359,'Pijama Üstü',1,1),(360,'Saç Düzleştirici',1,1),(361,'Bijuteri Yüzük',1,1),(362,'Denim Ceket',1,1),(363,'Tek Kişilik Battaniye',1,1),(364,'Çay/Kahve Makineleri',1,1),(365,'Nemlendirme &amp; Bakım',1,1),(366,'Toka',1,1),(367,'Pratik Temizlik Gereçleri',1,1),(368,'Diğer Oyuncaklar',1,1),(369,'Alıştırma Bardakları',1,1),(370,'Fantezi Giyim',1,1),(371,'Bebek/Çocuk Uyku Seti',1,1),(372,'Bebek Krem / Yağlar',1,1),(373,'Espadril',1,1),(374,'Cilt Bakım Seti',1,1),(375,'Klozet Takımı',1,1),(376,'Termal Giyim &amp; İçlik',1,1),(377,'Sporcu Aksesuarları',1,1),(378,'Oyuncak Bebek',1,1),(379,'Yürüteç',1,1),(380,'Bijuteri Bileklik',1,1),(381,'Maskara',1,1),(382,'Kapak &amp; Kılıf',1,1),(383,'Aydınlatıcı',1,1),(384,'Masa Lambası',1,1),(385,'Pijama Altı',1,1),(386,'Kap/Ferace',1,1),(387,'Aplik',1,1),(388,'Bebek/Çocuk Yorgan',1,1),(389,'Masa &amp; Duvar Saati',1,1),(390,'Ruj',1,1),(391,'Makyaj Seti',1,1),(392,'Çaylar',1,1),(393,'Krem Çikolata Ve Ezmeler',1,1),(394,'Tıraş Bıçağı',1,1),(395,'Biblo',1,1),(396,'Ekmek Kutusu ve Sepetleri',1,1),(397,'Allık',1,1),(398,'Havlu/Havlu Seti',1,1),(399,'Saç Bakım Seti',1,1),(400,'Gümüş Kolye',1,1),(401,'Kontür',1,1),(402,'Bebek Banyo Aksesuarları',1,1),(403,'Sürüş Aksesuarları',1,1),(404,'Araç İçi Telefon Tutucular',1,1),(405,'Bebek Diş Fırçası ve Macunu',1,1),(406,'Banyo ve Duş Aksesuarları',1,1),(407,'Defterler',1,1),(408,'Paspas',1,1),(409,'Çift Kişilik Battaniye',1,1),(410,'Çelik Bileklik',1,1),(411,'Gümüş Küpe',1,1),(412,'Saç Kremi',1,1),(413,'Şampuan',1,1),(414,'Figür Oyuncaklar',1,1),(415,'Vücut Kremleri &amp; Peelingler',1,1),(416,'Yoga Malzemeleri',1,1),(417,'Tesettür Etek',1,1),(418,'İç çamaşırı takımları',1,1),(419,'Saç Serumu &amp; Maskesi',1,1),(420,'Bakım Yağları',1,1),(421,'Maske &amp; Peeling',1,1),(422,'Göz Kalemi',1,1),(423,'Dudak Kalemi',1,1),(424,'Oto Brandalar&amp; Güneşlik',1,1),(425,'Hamile Sweatshirt',1,1),(426,'Göz Farı',1,1),(427,'Diğer Dekoratif Aksesuarlar',1,1),(428,'Kavanoz &amp; Saklama Kabı',1,1),(429,'Kahvaltı Takımı',1,1),(430,'Takma Tırnak ve Aksesuarları',1,1),(431,'Büstiyer',1,1),(432,'Tesettür Kaban',1,1),(433,'Süpürge',1,1),(434,'Mezuniyet Elbisesi',1,1),(435,'Eğitici/Bilimsel Oyuncaklar',1,1),(436,'Fırın/Kek Kalıpları',1,1),(437,'Saç Aksesuarları',1,1),(438,'Hamile Taytı',1,1),(439,'Hamile T-Shirt',1,1),(440,'Kesme Tahtaları',1,1),(441,'Kupa/Kupa Takımı',1,1),(442,'Şamdan &amp; Mumluk',1,1),(443,'Tenis Ayakkabısı',1,1),(444,'Parfüm Seti',1,1),(445,'Duş Jeli ve Kremleri',1,1),(446,'Patik',1,1),(447,'Hamile Pantolonu',1,1),(448,'Diğer Ev Temizlik Gereçleri',1,1),(449,'Mutfak Havlusu/Kurulama Bezi',1,1),(450,'Pudra',1,1),(451,'Katı/Sıvı Sabun',1,1),(452,'Mama Önlüğü',1,1),(453,'Çerçeve &amp; Fotoğraf Albümleri',1,1),(454,'Kaş Kalemi/Kaş Farı',1,1),(455,'Tonik',1,1),(456,'BB &amp; CC Krem',1,1),(457,'Tek Kişilik Nevresim',1,1),(458,'Dönence ve Projektör',1,1),(459,'Hamile Elbisesi',1,1),(460,'Tek Kişilik Yorgan',1,1),(461,'Body',1,1),(462,'Kostüm',1,1),(463,'Pratik Mutfak Gereçleri',1,1),(464,'Taç',1,1),(465,'Tencere/Tencere Seti',1,1),(466,'Fondöten',1,1),(467,'Tesettür Gömlek',1,1),(468,'Sürahi/ Karaf',1,1),(469,'Süzgeçler',1,1),(470,'Tava/Tava Seti',1,1),(471,'Beslenme Aksesuarları',1,1),(472,'Halı Saha Ayakkabı/Krampon',1,1),(473,'Salopet',1,1),(474,'Önlük/Eldiven/Tutacak',1,1),(475,'Vücut Spreyi',1,1),(476,'Dişlik ve Çıngırak',1,1),(477,'Göğüs Pompaları',1,1),(478,'Göz Makyaj Temizleyicileri',1,1),(479,'Amino Asitler',1,1),(480,'Deniz Şortu',1,1),(481,'Dudak Bakım Ürünleri',1,1),(482,'Alez',1,1),(483,'Fincan/Fincan Takımı',1,1),(484,'Bıçak',1,1),(485,'Kaşık',1,1),(486,'Baharatlık',1,1),(487,'Kaşıklık',1,1),(488,'Tepsi',1,1),(489,'Ütü Masası',1,1),(490,'Yağmurluk/Rüzgarlık',1,1),(491,'Duvar Kağıdı &amp; Sticker',1,1),(492,'Çift Kişilik Yorgan',1,1),(493,'Oto Anahtarlık',1,1),(494,'Bluetooth Kulaklık',1,1),(495,'İmaj Gözlükleri',1,1),(496,'Diğer Bebek Bakım Ürünleri',1,1),(497,'Kase',1,1),(498,'Tıraş Makineleri',1,1),(499,'Bikini Üstü',1,1),(500,'Bikini Takımı',1,1),(501,'Klozet Adaptörü / Lazımlık',1,1),(502,'Din Kitabı',1,1),(503,'Emici Külot',1,1),(504,'Tüy Dökücü Krem',1,1),(505,'Çift Kişilik Uyku Seti',1,1),(506,'Tesettür Pardesü',1,1),(507,'Hastane Çıkışları',1,1),(508,'Forma',1,1),(509,'sakız',1,1),(510,'Makyaj Bazı',1,1),(511,'Biberon Isıtıcı &amp; Sterilizatör',1,1),(512,'Akvaryum Balık Yemleri',1,1),(513,'Fanila',1,1),(514,'Portbebe/Kanguru/Sling',1,1),(515,'Köpek Tasmaları',1,1),(516,'Diğer Köpek Ürünleri',1,1),(517,'Köpek Oyuncakları',1,1),(518,'Köpek Vitaminleri',1,1),(519,'Beslenme Kitabı',1,1),(520,'Bebek/Çocuk Nevresim Takımı',1,1),(521,'Bahçe Oyuncakları',1,1),(522,'Makyaj Çantası',1,1),(523,'Kimono/Kaftan',1,1),(524,'Tek Kişilik Çarşaf Takımı',1,1),(525,'Saç Maşası',1,1),(526,'Keçeli Kalemler',1,1),(527,'Batarya',1,1),(528,'Bebek/Çocuk Yastık ve Kılıfı',1,1),(529,'Emzirme Yastığı',1,1),(530,'Tesettür Elbise',1,1),(531,'Saç Köpüğü',1,1),(532,'Bebek Şampuanı',1,1),(533,'Diğer Cilt Bakım Ürünleri',1,1),(534,'Tek Kişilik Pike/Pike Takımı',1,1),(535,'Ahşap Oyuncaklar',1,1),(536,'Saç Bandı',1,1),(537,'Akademik Edebiyat',1,1),(538,'Selülit &amp; Çatlak Bakımı',1,1),(539,'Softshell &amp; Polar',1,1),(540,'Bilezik',1,1),(541,'Hamile Tunik',1,1),(542,'Ayak Sağlık Ürünleri',1,1),(543,'Oyuncak Arabalar',1,1),(544,'Oyun Setleri',1,1),(545,'Laptop/Evrak Çantası',1,1),(546,'Türk Edebiyatı',1,1),(547,'Fitness Ayakkabısı',1,1),(548,'Telefon Bluetooth Kulaklık',1,1),(549,'Roman',1,1),(550,'Bebek Havlu / Bornoz',1,1),(551,'Plaj Çantası',1,1),(552,'Göz Bakım Ürünleri',1,1),(553,'Akıllı Bileklik',1,1),(554,'Yaşlanma &amp; Kırışıklık Karşıtı',1,1),(555,'Cilt Serumu',1,1),(556,'Bebek Sabunu',1,1),(557,'Aydınlatma',1,1),(558,'Deodorant',1,1),(559,'Hamile Çorabı',1,1),(560,'Çelik Küpe',1,1),(561,'Oto Bakım / Temizlik Ürünleri',1,1),(562,'Epilatörler',1,1),(563,'Islak Mendil / Havlu',1,1),(564,'Göğüs Pedleri / Koruyucular',1,1),(565,'Meyve/Sebze Sıkacağı',1,1),(566,'Tıraş Köpük ve Jelleri',1,1),(567,'Tıraş Sonrası Ürün',1,1),(568,'Oda Kokusu',1,1),(569,'Hamile Külodu',1,1),(570,'Bijuteri Takım',1,1),(571,'Çocuk Puzzle / Yapboz',1,1),(572,'Doğrayıcı/Rondo',1,1),(573,'Saç Kurutma Makinesi',1,1),(574,'Saç Fırçası ve Tarak',1,1),(575,'Kedi Yatakları',1,1),(576,'Tost Makinesi',1,1),(577,'Kedi Taşıma Çantaları',1,1),(578,'Parti Malzemeleri',1,1),(579,'Blender/Blender Seti',1,1),(580,'Biberon Maması',1,1),(581,'Tesettür Tunik',1,1),(582,'Halhal/Ayak Aksesuarları',1,1),(583,'Manikür &amp; Pedikür Aletleri',1,1),(584,'Oyun Halısı',1,1),(585,'Alt Açma Minderi',1,1),(586,'Akıllı Saat',1,1),(587,'Lambader',1,1),(588,'Babydoll',1,1),(589,'Bone &amp; Deniz Gözlüğü',1,1),(590,'Şarj Cihazları &amp; Kabloları',1,1),(591,'Playstation Oyunları',1,1),(592,'Prezervatifler',1,1),(593,'Arma Sticker &amp; Fosfor Şeritler',1,1),(594,'Gümüş Bileklik',1,1),(595,'Kalem Kutusu',1,1),(596,'Banyo Düzenleyici',1,1),(597,'Kulaküstü Kulaklık',1,1),(598,'Runner/Amerikan Servisi',1,1),(599,'Bebek Bakım Çantası',1,1),(600,'Ağda',1,1),(601,'Çok Amaçlı Setler',1,1),(602,'Jantlar&amp; Jant Kapakları',1,1),(603,'Duvak / Gelin Aksesuarı',1,1),(604,'Oje &amp; Oje Çıkarıcılar',1,1),(605,'Pamuk ve Kulak Çubuğu',1,1),(606,'Hamile Montu',1,1),(607,'Hamile Eşofman Altı',1,1),(608,'Koruyucu ve Kilit',1,1),(609,'Tarih',1,1),(610,'Seyahat Sistem Bebek Arabası',1,1),(611,'Uyku Tulumu',1,1),(612,'Hamile Pijama Takımı',1,1),(613,'Bikini Altı',1,1),(614,'Model Araçlar',1,1),(615,'Sağlıklı Atıştırmalıklar',1,1),(616,'Mutfak Rafları',1,1),(617,'Bulaşık Makinesi Deterjanı',1,1),(618,'Bitki ve Tohum',1,1),(619,'Meyve Suyu',1,1),(620,'Banyo Setleri',1,1),(621,'Tartı',1,1),(622,'Granül Kahve',1,1),(623,'Kayak Ekipmanları',1,1),(624,'El &amp; Tırnak Bakımı',1,1),(625,'Müzik Alet ve Ekipmanları',1,1),(626,'Çalışma Masası',1,1),(627,'Spor Oyuncakları',1,1),(628,'Kadeh',1,1),(629,'Hazır Çorba',1,1),(630,'Gümüş Yüzük',1,1),(631,'Peluş Oyuncaklar',1,1),(632,'Kırlent/Kırlent Kılıfı',1,1),(633,'Emzirme Sütyeni',1,1),(634,'Abiye Çanta',1,1),(635,'Pırlanta Küpe',1,1),(636,'Bez Dolaplar',1,1),(637,'Koltuk Örtüsü',1,1),(638,'Bant &amp; Bant Makinesi',1,1),(639,'Mum &amp; Kokular',1,1),(640,'Evrak',1,1),(641,'Plaj Havlusu',1,1),(642,'TV Sehpaları &amp; Üniteleri',1,1),(643,'Orta Sehpa',1,1),(644,'TV Aksesuarları',1,1),(645,'Şemsiye &amp; Tente',1,1),(646,'USB',1,1),(647,'Sanatsal Kağıtlar &amp; Kalemler',1,1),(648,'Koruyucu Aksesuarlar',1,1),(649,'Kol düğmesi',1,1),(650,'Mouse &amp; Mousepad',1,1),(651,'Gümüş Set &amp; Takım',1,1),(652,'Konsept Hediyelikler',1,1),(653,'Vücut Kremleri',1,1),(654,'Bebek Fırça / Tarak Setleri',1,1),(655,'Pikap/Gramofon',1,1),(656,'Çatal &amp; Bıçak &amp; Kaşık Seti',1,1),(657,'Çamaşır Deterjanı',1,1),(658,'Not Kağıtları ve Bloknotlar',1,1),(659,'Çelik Yüzük',1,1),(660,'Bebek/Çocuk Çarşafı',1,1),(661,'Şahmeran',1,1),(662,'Park Yatak / Oyun Parkı',1,1),(663,'Saç Spreyi',1,1),(664,'Yüzük',1,1),(665,'Deniz Ayakkabısı',1,1),(666,'Çocuk Bakımı &amp; Ebeveynlik',1,1),(667,'Çocuk Bakımı &amp; Ebeveynlik',1,1),(668,'Çamaşır Sepeti',1,1),(669,'Plaj Elbisesi',1,1),(670,'Ped',1,1),(671,'Emzirme Atleti',1,1),(672,'Bomber Ceket',1,1),(673,'Yağdanlık',1,1),(674,'Çok Amaçlı Mutfak Dolapları',1,1),(675,'Vitaminler',1,1),(676,'Choker',1,1),(677,'Müzik Sanatı Kitapları',1,1),(678,'Oyuncu Kulaklıkları',1,1),(679,'Hamile Gömlek',1,1),(680,'Altın Küpe',1,1),(681,'Diğer Oyun Konsolları',1,1),(682,'Bireysel Gelişim',1,1),(683,'Altın Kolye',1,1),(684,'Güneş Ürünleri',1,1),(685,'Oyun Hamurları',1,1),(686,'Vazo',1,1),(687,'French Press',1,1),(688,'Telsiz/Masaüstü Telefonları',1,1),(689,'Baharat',1,1),(690,'Tesettür Trençkot',1,1),(691,'Çatal',1,1),(692,'Yazı Tahtası',1,1),(693,'Roll-on / Stick',1,1),(694,'Aktivite &amp; Eğitici Kitaplar',1,1),(695,'Pilates Malzemeleri',1,1),(696,'Kutu Oyunları',1,1),(697,'Armut Koltuk',1,1),(698,'Cımbız &amp; Makaslar',1,1),(699,'Mürekkep',1,1),(700,'Taşınabilir SSD',1,1),(701,'MP Player / Ses Kayıt Cihazı',1,1),(702,'Hamile Bluz',1,1),(703,'Dış Mekan Paspasları',1,1),(704,'Kumandalı Araçlar',1,1),(705,'Mayokini',1,1),(706,'Pantolon Askısı',1,1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_az` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_ru` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Ağdam','Агдам','Ağdam',1,0),(2,'Ağdaş','Агдаш','Ağdaş',2,0),(3,'Ağcabədi','Агджабеди','Ağcabədi',3,0),(4,'Ağstafa','Акстафа','Ağstafa',4,0),(5,'Astara','Астара','Astara',5,0),(6,'Ağsu','Ахсу','Ağsu',6,0),(7,'Balakən','Белоканы','Balakən',7,0),(8,'Bakı','Баку','Bakı',8,1),(9,'Beyləqan','Бейлаган','Beyləqan',9,0),(10,'Bərdə','Барда','Bərdə',10,0),(11,'Biləsuvar','Билясувар','Biləsuvar',11,0),(12,'Qəbələ','Габала','Qəbələ',12,0),(13,'Göygöl','Гёйгёль','Göygöl',13,0),(14,'Göytəpə','Гёйтепе','Göytəpə',14,0),(15,'Göyçay','Геокчай','Göyçay',15,0),(16,'Goranboy','Геранбой','Goranboy',16,0),(17,'Qobustan','Гобустан','Qobustan',17,0),(18,'Horadiz','Горадиз','Horadiz',18,0),(19,'Gəncə','Гянджа','Gəncə',19,0),(20,'Dəliməmmədli','Далимамедли','Dəliməmmədli',20,0),(21,'Daşkəsən','Дашкесан','Daşkəsən',21,0),(22,'Cəlilabad','Джалилабад','Cəlilabad',22,0),(23,'Cəbrayıl','Джебраил','Cəbrayıl',23,0),(24,'Yevlax','Евлах','Yevlax',24,0),(25,'Zaqatala','Закаталы','Zaqatala',25,0),(26,'Zərdab','Зардоб','Zərdab',26,0),(27,'İmişli','Имишли','İmişli',27,0),(28,'İsmayıllı','Исмаиллы','İsmayıllı',28,0),(29,'Qazax','Казах','Qazax',29,0),(30,'Qax','Кахи','Qax',30,0),(31,'Gədəbəy','Кедабек','Gədəbəy',31,0),(32,'Kəlbəcər','Кельбаджар','Kəlbəcər',32,0),(33,'Quba','Куба','Quba',33,0),(34,'Qusar','Кусары','Qusar',34,0),(35,'Kürdəmir','Кюрдамир','Kürdəmir',35,0),(36,'Laçın','Лачин','Laçın',36,0),(37,'Lənkəran','Ленкорань','Lənkəran',37,0),(38,'Lerik','Лерик','Lerik',38,0),(39,'Liman','Лиман','Liman',39,0),(40,'Masallı','Масаллы','Masallı',40,0),(41,'Mingəçevir','Мингечаур','Mingəçevir',41,0),(42,'Naftalan','Нафталан','Naftalan',42,0),(43,'Naxçıvan','Нахичевань','Naxçıvan',43,0),(44,'Neftçala','Нефтечала','Neftçala',44,0),(45,'Oğuz','Огуз','Oğuz',45,0),(46,'Ordubad','Ордубад','Ordubad',46,0),(47,'Saatlı','Саатлы','Saatlı',47,0),(48,'Sabirabad','Сабирабад','Sabirabad',48,0),(49,'Salyan','Сальяны','Salyan',49,0),(50,'Samux','Самух','Samux',50,0),(51,'Siyəzən','Сиазань','Siyəzən',51,0),(52,'Sumqayıt','Сумгаит','Sumqayıt',52,0),(53,'Tovuz','Тауз','Tovuz',53,0),(54,'Tərtər','Тертер','Tərtər',54,0),(55,'Ucar','Уджары','Ucar',55,0),(56,'Füzuli','Физули','Füzuli',56,0),(57,'Xaçmaz','Хачмас','Xaçmaz',57,0),(58,'Xudat','Худат','Xudat',58,0),(59,'Xızı','Хызы','Xızı',59,0),(60,'Xırdalan','Хырдалан','Xırdalan',60,0),(61,'Şabran','Шабран','Şabran',61,0),(62,'Şəmkir','Шамкир','Şəmkir',62,0),(63,'Şərur','Шарур','Şərur',63,0),(64,'Şahbuz','Шахбуз','Şahbuz',64,0),(65,'Şəki','Шеки','Şəki',65,0),(66,'Şamaxı','Шемаха','Şamaxı',66,0),(67,'Şirvan','Ширван','Şirvan',67,0),(68,'Şuşa','Шуша','Şuşa',68,0),(69,'Yardımlı','Ярдымлы','Yardımlı',69,0);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `click_history`
--

DROP TABLE IF EXISTS `click_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `click_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `click_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `click_history`
--

LOCK TABLES `click_history` WRITE;
/*!40000 ALTER TABLE `click_history` DISABLE KEYS */;
INSERT INTO `click_history` VALUES (1,'c040161510a0c7d716c6a8522389bcf3142a2f6ce7df235b37dc59a15331677d','0:0:0:0:0:0:0:1','2019-04-06 14:46:28',1),(2,'e7f8fa6940e5dd40e88bd5aeba1b75692e6835a58b58e00b92c351377012b8c4','0:0:0:0:0:0:0:1','2019-04-06 22:51:29',1),(3,'e7f8fa6940e5dd40e88bd5aeba1b75692e6835a58b58e00b92c351377012b8c4','0:0:0:0:0:0:0:1','2019-04-06 22:52:19',1),(4,'e7f8fa6940e5dd40e88bd5aeba1b75692e6835a58b58e00b92c351377012b8c4','0:0:0:0:0:0:0:1','2019-04-06 22:52:54',1),(5,'e7f8fa6940e5dd40e88bd5aeba1b75692e6835a58b58e00b92c351377012b8c4','0:0:0:0:0:0:0:1','2019-04-06 23:10:41',1),(6,'0681cde9452a1b0cc83e9e08116fb58d203eece5b4c2d103ebc4d810eaaef560','0:0:0:0:0:0:0:1','2019-04-06 23:37:42',1),(7,'0681cde9452a1b0cc83e9e08116fb58d203eece5b4c2d103ebc4d810eaaef560','0:0:0:0:0:0:0:1','2019-04-06 23:39:05',1),(8,'0681cde9452a1b0cc83e9e08116fb58d203eece5b4c2d103ebc4d810eaaef560','0:0:0:0:0:0:0:1','2019-04-06 23:40:09',1),(9,'5d0cf1e0719008b73a230af0b187e94a0296af6d3fbe69772e12c8969c1ba32d','0:0:0:0:0:0:0:1','2019-04-06 23:40:55',1),(10,'5d0cf1e0719008b73a230af0b187e94a0296af6d3fbe69772e12c8969c1ba32d','0:0:0:0:0:0:0:1','2019-04-06 23:46:13',1);
/*!40000 ALTER TABLE `click_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `configuration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `config_value` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_to` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_CONFIG_KEY` (`config_key`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,'SERVICE_PRICE_PERCENT','5','2018-10-25 17:20:07','2021-12-31 00:00:00',1),(2,'PRIORITY_ORDER_SERVICE_FEE','2','2018-10-25 17:20:41','2021-12-31 00:00:00',1),(3,'PRIORITY_ORDER_SERVICE_CURRENCY','USD','2018-10-25 17:20:57','2021-12-31 00:00:00',1),(4,'FA_FULL_NAME','AZEX A.Ş.','2018-10-30 18:37:00','2018-11-14 00:19:32',1),(5,'FA_ADDRESS_TITLE','AZEX','2018-10-30 18:37:30','2021-12-31 00:00:00',1),(6,'FA_ADDRESS_LINE1','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','2018-10-30 18:38:55','2018-11-14 00:19:32',1),(7,'FA_COUNTRY','Türkiye','2018-10-30 18:39:34','2018-11-14 00:19:32',1),(8,'FA_CITY','İstanbul','2018-10-30 18:40:02','2018-11-14 00:19:32',1),(9,'FA_DISTRICT1','Ümraniye','2018-10-30 18:40:18','2018-11-14 00:19:32',1),(10,'FA_DISTRICT2','İnkilap','2018-10-30 18:40:28','2018-11-14 00:19:32',1),(11,'FA_POST_CODE','34768','2018-10-30 18:40:51','2018-11-14 00:19:32',1),(12,'FA_PHONE1','5318964270','2018-10-30 18:41:17','2018-11-14 00:19:32',1),(13,'FA_PHONE2','','2018-10-30 18:41:25','2018-11-14 00:19:32',1),(14,'FA_ID_CARD','66823284324','2018-10-30 18:41:49','2018-11-14 00:19:32',1),(15,'FA_TAX_NO','6220881271','2018-10-30 18:42:02','2018-11-14 00:19:32',1),(18,'FA_FULL_NAME','AZEX A.Ş.','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(19,'FA_ADDRESS_TITLE','AZEX UPDATED','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(20,'FA_ADDRESS_LINE1','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(21,'FA_COUNTRY','Türkiye','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(22,'FA_CITY','İstanbul','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(23,'FA_DISTRICT1','Ümraniye','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(24,'FA_DISTRICT2','İnkilap','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(25,'FA_POST_CODE','34768','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(26,'FA_PHONE1','5318964270','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(27,'FA_PHONE2','','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(28,'FA_ID_CARD','66823284324','2018-11-14 00:19:32','2020-12-31 00:00:00',1),(29,'FA_TAX_NO','6220881271','2018-11-14 00:19:32','2020-12-31 00:00:00',1);
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_az` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_ru` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_tr` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Türkiyə','Турция','Turkey','Türkiye',1,1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'AZN',1,1),(2,'USD',2,1),(3,'EUR',3,1),(4,'TRY',4,1);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_rate_history`
--

DROP TABLE IF EXISTS `currency_rate_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `currency_rate_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_currency_id` int(11) NOT NULL,
  `to_currency_id` int(11) NOT NULL,
  `cbar_rate` decimal(20,6) NOT NULL,
  `azex_rate` decimal(20,6) NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_to` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_rate_history`
--

LOCK TABLES `currency_rate_history` WRITE;
/*!40000 ALTER TABLE `currency_rate_history` DISABLE KEYS */;
INSERT INTO `currency_rate_history` VALUES (1,2,1,1.700000,1.680000,'2018-10-26 01:23:59','2021-12-31 00:00:00',1,1),(2,3,1,1.939800,1.939800,'2018-10-26 01:24:28','2021-12-31 00:00:00',1,1),(3,4,1,0.297200,0.296000,'2018-10-26 01:24:48','2021-12-31 00:00:00',1,1),(4,1,2,0.588235,0.588235,'2018-10-26 03:36:08','2021-12-31 00:00:00',1,1),(5,1,3,0.515517,0.515517,'2018-10-26 03:36:53','2021-12-31 00:00:00',1,1),(6,1,4,3.364738,3.364738,'2018-10-26 03:37:46','2021-12-31 00:00:00',1,1),(7,2,3,0.879053,0.879053,'2018-10-26 03:48:16','2021-12-31 00:00:00',1,1),(8,2,4,5.635810,5.635810,'2018-10-26 03:49:19','2021-12-31 00:00:00',1,1),(9,4,2,0.187987,0.187987,'2018-10-26 03:49:19','2021-12-31 00:00:00',1,1),(10,3,2,1.132520,1.132520,'2018-10-26 03:49:19','2021-12-31 00:00:00',1,1),(11,3,4,6.307700,6.307700,'2018-10-26 03:49:19','2021-12-31 00:00:00',1,1),(12,4,3,0.158486,0.158486,'2018-10-26 03:49:19','2021-12-31 00:00:00',1,1);
/*!40000 ALTER TABLE `currency_rate_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `customer_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_card` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `acquisition_channel` int(11) NOT NULL,
  `friend_referral_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

--
-- Table structure for table `customer_code`
--

DROP TABLE IF EXISTS `customer_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer_code` (
  `prefix` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `last_customer_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_code`
--

LOCK TABLES `customer_code` WRITE;
/*!40000 ALTER TABLE `customer_code` DISABLE KEYS */;
INSERT INTO `customer_code` VALUES ('A',2,'10002'),('B',2,'10002'),('C',2,'10002'),('D',2,'D55751'),('E',2,'E165411'),('F',2,'F117494'),('G',2,'G142894'),('H',2,'H101354'),('I',2,'I35814'),('J',2,'J84812'),('K',2,'K70285'),('M',2,'M85130'),('N',2,'N104794'),('O',2,'O58582'),('P',2,'P68526'),('Q',2,'Q56885'),('R',2,'R68850'),('S',2,'S63594'),('T',2,'T44998'),('U',2,'U65078'),('V',2,'V87349'),('X',2,'X106765'),('Y',2,'Y94861'),('Z',1,'10001');
/*!40000 ALTER TABLE `customer_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_code_generated`
--

DROP TABLE IF EXISTS `customer_code_generated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer_code_generated` (
  `code` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_code_generated`
--

LOCK TABLES `customer_code_generated` WRITE;
/*!40000 ALTER TABLE `customer_code_generated` DISABLE KEYS */;
INSERT INTO `customer_code_generated` VALUES (10000),(35814),(44998),(55751),(56885),(58582),(63594),(65078),(68526),(68850),(70285),(84812),(85130),(87349),(94861),(101354),(104794),(106765),(117494),(142894),(165411);
/*!40000 ALTER TABLE `customer_code_generated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_log`
--

DROP TABLE IF EXISTS `customer_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log_type` int(11) NOT NULL,
  `log_detail` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_log`
--

LOCK TABLES `customer_log` WRITE;
/*!40000 ALTER TABLE `customer_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `shop_order_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_currency_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `order_weight` decimal(20,6) DEFAULT NULL,
  `order_width` decimal(20,6) DEFAULT NULL,
  `order_length` decimal(20,6) DEFAULT NULL,
  `order_height` decimal(20,6) DEFAULT NULL,
  `customer_paid_amount` decimal(20,6) NOT NULL,
  `azex_paid_amount` decimal(20,6) NOT NULL,
  `local_delivery_fee` decimal(20,6) DEFAULT NULL,
  `local_delivery_fee_currency_id` int(11) DEFAULT NULL,
  `local_delivery_start_date` date DEFAULT NULL,
  `local_delivery_end_date` date DEFAULT NULL,
  `local_delivery_date` datetime DEFAULT NULL,
  `international_delivery_fee` decimal(20,6) DEFAULT NULL,
  `international_delivery_fee_currency_id` int(11) DEFAULT NULL,
  `international_delivery_start_date` date DEFAULT NULL,
  `international_delivery_end_date` date DEFAULT NULL,
  `international_delivery_date` datetime DEFAULT NULL,
  `order_status` int(11) NOT NULL,
  `order_user_id` int(11) NOT NULL,
  `tracking_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `payment_date` datetime DEFAULT NULL,
  `payment_tx_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `waiting_for_declaration_date` datetime DEFAULT NULL,
  `declaration_add_date` datetime DEFAULT NULL,
  `ready_for_sending_date` datetime DEFAULT NULL,
  `sent_date` datetime DEFAULT NULL,
  `in_local_stock_date` datetime DEFAULT NULL,
  `payment_confirmation_date` datetime DEFAULT NULL,
  `customer_delivered_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (28,35,'2019-03-27 00:00:01','100028','12345',4,13,3.000000,33.000000,33.000000,33.000000,20.990000,15.000000,10.000000,4,'2019-03-22','2019-03-25',NULL,19.500000,2,NULL,NULL,NULL,11,37,'12345',1,'2019-04-01 10:59:37','paytr1',1,NULL,NULL,NULL,NULL,'2019-03-28 00:59:37','2019-04-01 10:59:37',NULL),(29,35,'2019-03-27 00:00:01','100029','8765',4,13,2.000000,40.000000,40.000000,40.000000,47.240000,30.000000,20.000000,4,'2019-03-22','2019-03-25',NULL,13.000000,2,NULL,NULL,NULL,11,37,'567',1,'2019-04-01 09:30:37','paytr2',1,NULL,NULL,NULL,NULL,'2019-03-28 00:59:37','2019-04-01 09:30:37',NULL),(30,35,'2019-03-28 00:54:38','100031','1357',4,13,1.000000,10.000000,20.000000,30.000000,20.990000,10.000000,0.000000,4,'2019-03-21','2019-03-24',NULL,6.500000,2,NULL,NULL,NULL,12,37,'1357',1,NULL,'',1,NULL,NULL,NULL,NULL,'2019-03-28 00:59:37','2019-03-28 01:02:14','2019-03-30 19:57:41'),(31,39,'2019-03-28 01:37:24','100032','123',4,13,2.500000,20.000000,20.000000,20.000000,78.720000,50.000000,0.000000,4,'2019-03-21','2019-03-24','2019-03-28 02:06:31',16.250000,2,'2019-03-22','2019-03-25','2019-03-28 02:08:05',12,37,'123',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 02:07:43','2019-03-28 02:08:31','2019-03-28 02:09:32','2019-03-30 14:38:23'),(32,35,'2019-03-28 02:05:40','100033','7777',4,13,1.500000,10.000000,10.000000,10.000000,68.230000,40.000000,20.000000,4,'2019-03-21','2019-03-24','2019-03-28 02:06:22',9.750000,2,'2019-03-22','2019-03-25','2019-03-28 02:08:05',12,37,'777',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 02:07:43','2019-03-28 02:08:31','2019-03-28 02:09:32','2019-03-30 13:54:14'),(33,35,'2019-03-28 02:10:44','100034','ramin1',4,3,2.000000,20.000000,150.000000,10.000000,0.000000,0.000000,0.000000,4,'2019-03-23','2019-03-23','2019-03-28 13:00:38',32.500000,2,'2019-03-24','2019-03-27','2019-03-28 13:07:39',10,37,'ramin1',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 13:07:18','2019-03-28 13:10:38',NULL,NULL),(34,35,'2019-03-28 02:10:44','100035','ramin2',4,7,1.000000,40.000000,40.000000,40.000000,0.000000,0.000000,0.000000,4,'2019-03-23','2019-03-23','2019-03-28 13:00:24',6.500000,2,'2019-03-24','2019-03-27','2019-03-28 13:07:39',10,37,'ramin2',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 13:07:18','2019-03-28 13:10:38',NULL,NULL),(35,38,'2019-03-28 10:37:59','100037','1123',4,13,1.000000,90.000000,90.000000,90.000000,314.980000,200.000000,0.000000,4,'2019-03-22','2019-03-25','2019-03-28 11:45:43',6.500000,2,'2019-03-24','2019-03-27','2019-03-28 11:47:02',10,37,'123',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 11:46:58','2019-03-28 11:48:15',NULL,NULL),(36,41,'2019-03-28 10:45:57','100038','123',4,13,1.000000,20.000000,20.000000,20.000000,39.900000,30.000000,0.000000,4,'2019-03-21','2019-03-24','2019-03-28 10:46:41',6.500000,2,'2019-03-22','2019-03-25','2019-03-28 10:48:41',12,37,'adasd',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 10:47:57','2019-03-28 10:49:14','2019-03-28 10:50:10','2019-03-30 13:13:32'),(37,41,'2019-03-28 10:54:47','100039','1234',4,13,8.000000,8.000000,8.000000,8.000000,90.300000,50.000000,10.000000,4,'2019-03-21','2019-03-24','2019-03-28 11:44:09',52.000000,2,'2019-03-22','2019-03-25','2019-03-28 11:47:02',12,37,'456456',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 11:46:58','2019-03-28 11:48:15','2019-03-28 11:49:56','2019-03-30 13:19:19'),(38,35,'2019-03-28 11:11:13','100041','567',4,13,7.000000,77.000000,7.000000,77.000000,209.920000,150.000000,0.000000,4,'2019-03-23','2019-03-26','2019-03-28 11:44:01',45.500000,2,'2019-03-24','2019-03-27','2019-03-28 11:47:02',10,37,'567',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 11:46:58','2019-03-28 11:48:15',NULL,NULL),(39,41,'2019-03-28 11:40:15','100043','76767',4,13,3.500000,66.000000,66.000000,66.000000,6279.000000,5000.000000,100.000000,4,'2019-03-21','2019-03-23','2019-03-28 11:43:51',22.750000,2,'2019-03-22','2019-03-25','2019-03-28 11:47:01',12,37,'6787',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 11:46:58','2019-03-28 11:48:15','2019-03-28 11:49:56','2019-03-30 13:12:32'),(40,41,'2019-03-28 11:41:24','100044','8987',4,13,6.000000,44.000000,44.000000,44.000000,2023.350000,1200.000000,0.000000,4,'2019-03-21','2019-03-23','2019-03-28 11:43:40',39.000000,2,'2019-03-22','2019-03-25','2019-03-28 11:47:01',12,37,'56456',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 11:46:58','2019-03-28 11:48:15','2019-03-28 11:49:56','2019-03-30 13:08:58'),(41,41,'2019-03-28 11:41:58','100045','345',4,13,2.000000,50.000000,50.000000,50.000000,71093.300000,50000.000000,0.000000,4,'2019-03-23','2019-03-25','2019-03-28 11:43:30',13.000000,2,'2019-03-24','2019-03-27','2019-03-28 11:47:01',10,37,'345',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 11:46:58','2019-03-28 11:48:15',NULL,NULL),(42,40,'2019-03-28 11:42:25','100046','456456',4,12,10.000000,20.000000,20.000000,20.000000,1689.450000,1000.000000,20.000000,4,'2019-03-23','2019-03-26','2019-03-28 11:43:13',65.000000,2,'2019-03-24','2019-03-27','2019-03-28 11:47:01',10,37,'67867',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 11:46:58','2019-03-28 11:48:15',NULL,NULL),(43,42,'2019-03-28 12:54:01','100047','345sdfsdf',4,13,1.000000,10.000000,10.000000,10.000000,163.450000,150.000000,70.000000,4,'2019-03-21','2019-03-24','2019-03-28 12:59:56',6.500000,2,'2019-03-22','2019-03-25','2019-03-28 13:07:39',12,37,'adsdf54345',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 13:07:18','2019-03-28 13:10:38','2019-03-28 13:18:11','2019-03-30 14:38:16'),(44,42,'2019-03-28 12:58:01','100048','asdasd',4,13,2.000000,20.000000,20.000000,20.000000,83.960000,60.000000,10.000000,4,'2019-03-21','2019-03-24','2019-03-28 12:59:41',13.000000,2,'2019-03-22','2019-03-25','2019-03-28 13:07:39',12,37,'rtyrty',1,NULL,'',1,NULL,NULL,NULL,'2019-03-28 13:07:18','2019-03-28 13:10:38','2019-03-28 13:18:11','2019-03-30 13:13:51'),(45,35,'2019-03-28 13:45:50','100049','sadf345df',4,7,1.000000,2.000000,2.000000,2.000000,0.000000,0.000000,0.000000,4,'2019-03-27','2019-03-27','2019-03-28 13:45:50',6.500000,2,NULL,NULL,NULL,5,37,'cxsrwe5',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,35,'2019-03-28 13:45:50','100050','w4534dfgdf',4,30,2.000000,50.000000,50.000000,50.000000,0.000000,0.000000,0.000000,4,'2019-03-27','2019-03-27','2019-03-28 13:45:50',13.000000,2,NULL,NULL,NULL,5,37,'sdwerwer',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,38,'2019-03-29 14:44:40','100052','',4,0,3.000000,40.000000,50.000000,55.000000,1000.000000,0.000000,0.000000,0,NULL,NULL,'2019-03-29 15:11:23',19.500000,2,NULL,NULL,NULL,4,39,'',1,NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,38,'2019-03-29 14:57:27','100053','',4,0,2.000000,40.000000,40.000000,40.000000,500.000000,0.000000,0.000000,0,NULL,NULL,'2019-03-29 15:11:11',13.000000,2,NULL,NULL,NULL,4,39,'',1,NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,38,'2019-03-29 15:00:34','100054','',4,0,1.000000,10.000000,10.000000,10.000000,777.000000,0.000000,0.000000,0,NULL,NULL,'2019-03-29 15:01:42',6.500000,2,NULL,NULL,NULL,4,39,'',1,NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,38,'2019-03-30 11:02:57','100055','',4,0,0.000000,0.000000,0.000000,0.000000,89.000000,0.000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,39,'99999',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,38,'2019-03-30 11:04:28','100056','',4,0,0.000000,0.000000,0.000000,0.000000,345.000000,0.000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,39,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,38,'2019-03-30 11:08:49','100057','',4,0,0.000000,0.000000,0.000000,0.000000,676.000000,0.000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,39,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,38,'2019-03-30 11:10:27','100058','',4,0,0.000000,0.000000,0.000000,0.000000,90.000000,0.000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,39,'345345',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,38,'2019-04-01 10:56:49','100060','676767',4,48,1.000000,10.000000,10.000000,10.000000,94.980000,80.000000,10.000000,4,'2019-03-29','2019-04-03','2019-04-03 10:18:31',6.500000,2,NULL,NULL,NULL,4,38,'asdasd',1,NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,38,'2019-04-09 11:30:02','100061','1111',4,48,0.000000,0.000000,0.000000,0.000000,804.830000,700.000000,30.000000,4,'2019-03-31','2019-04-05',NULL,NULL,NULL,NULL,NULL,NULL,3,38,'2222',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,38,'2019-04-01 11:30:41','100062','333333',4,48,3.000000,33.000000,33.000000,33.000000,157.480000,120.000000,0.000000,4,'2019-03-29','2019-04-02','2019-04-03 21:24:14',19.500000,2,NULL,NULL,NULL,4,38,'333333',1,NULL,'',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,38,'2019-04-01 11:31:15','100063','44444',4,13,0.000000,0.000000,0.000000,0.000000,20.990000,17.000000,0.000000,4,'2019-03-31','2019-04-03',NULL,NULL,NULL,NULL,NULL,NULL,3,38,'44444',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,44,'2019-04-01 11:32:06','100064','6666',4,48,0.000000,0.000000,0.000000,0.000000,109.190000,80.000000,0.000000,4,'2019-03-31','2019-04-03',NULL,NULL,NULL,NULL,NULL,NULL,3,38,'6666',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,44,'2019-04-02 11:32:29','100065','77777',4,48,2.200000,22.000000,22.000000,22.000000,157.480000,135.000000,0.000000,4,'2019-04-01','2019-04-10','2019-04-06 08:21:33',14.300000,2,NULL,NULL,NULL,4,38,'7777',1,NULL,'',1,NULL,'2019-04-06 08:57:25',NULL,NULL,NULL,NULL,NULL),(62,44,'2019-04-06 08:25:05','100066','99999',4,0,0.000000,0.000000,0.000000,0.000000,99.000000,0.000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,45,'99999',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,38,'2019-04-06 09:08:24','100067','0000000',4,89,2.500000,25.000000,25.000000,25.000000,0.000000,0.000000,0.000000,4,'2019-04-04','2019-04-04','2019-04-06 09:08:24',16.250000,2,NULL,NULL,NULL,4,38,'0000000',1,NULL,'',1,NULL,'2019-04-06 09:11:23',NULL,NULL,NULL,NULL,NULL),(64,38,'2019-04-06 09:26:10','100068','2222223',4,89,2.200000,22.000000,22.000000,22.000000,199.000000,0.000000,0.000000,4,'2019-04-01','2019-04-01','2019-04-06 09:26:18',14.300000,2,NULL,NULL,NULL,4,38,'2222223',1,NULL,'',1,NULL,'2019-04-06 09:26:10',NULL,NULL,NULL,NULL,NULL),(65,38,'2019-04-07 10:33:48','100069','1111112',4,89,1.100000,11.000000,11.000000,11.000000,299.000000,0.000000,0.000000,4,'2019-04-04','2019-04-04','2019-04-06 10:19:13',7.150000,2,NULL,NULL,NULL,4,38,'1111112',1,NULL,'',1,NULL,'2019-04-06 10:33:48',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_request`
--

DROP TABLE IF EXISTS `customer_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `request_date` datetime NOT NULL,
  `product_link` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_qty` int(11) NOT NULL,
  `price_currency_id` int(11) NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `service_fee` decimal(20,6) NOT NULL,
  `is_priority` int(11) NOT NULL DEFAULT '0',
  `priority_order_service_currency_id` int(11) NOT NULL,
  `priority_order_service_fee` decimal(20,6) NOT NULL,
  `total` decimal(20,6) NOT NULL,
  `customer_note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `request_status` int(11) NOT NULL,
  `local_delivery_fee` decimal(20,6) DEFAULT '0.000000',
  `paid` int(11) NOT NULL DEFAULT '0',
  `pay_date` datetime DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_request`
--

LOCK TABLES `customer_request` WRITE;
/*!40000 ALTER TABLE `customer_request` DISABLE KEYS */;
INSERT INTO `customer_request` VALUES (113,35,'2019-03-28 00:48:56','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4529585',1,4,24.990000,2.250000,0,0,0.000000,47.240000,'normal 1',3,20.000000,1,'2019-03-28 00:14:06',13,1),(114,35,'2019-03-28 00:48:57','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864775',1,4,19.990000,1.000000,0,0,0.000000,20.990000,'normal 2',3,0.000000,1,'2019-03-28 00:54:20',13,1),(115,35,'2019-03-28 00:49:33','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4529585',1,4,24.990000,2.250000,1,2,2.000000,47.240000,'tecili 1',3,20.000000,1,'2019-03-28 00:54:20',13,1),(116,35,'2019-03-28 00:49:33','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864927',1,4,19.990000,1.000000,1,2,2.000000,20.990000,'tecili 2',3,0.000000,1,'2019-03-28 00:14:06',13,1),(117,39,'2019-03-28 03:11:18','https://www.trendyol.com/trendyolmilla/beyaz-v-yaka-pamuklu-basic-orme-t-shirt-twoss19bo0064-p-4922745?boutiqueId=310000&merchantId=968',3,4,24.990000,3.750000,0,0,0.000000,78.720000,'qara',3,0.000000,1,'2019-03-28 02:12:10',13,1),(118,35,'2019-03-28 04:50:36','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864927',1,4,19.990000,1.000000,1,2,2.000000,20.990000,'tecili yeni',3,0.000000,1,'2019-03-28 03:51:41',13,1),(119,40,'2019-03-28 09:50:55','https://www.twist.com.tr/urun/beyaz-yuksek-topuklu-bot_p_32289?departmentId=789',2,4,666.000000,66.600000,0,0,0.000000,1398.600000,'ağ ayaqqabı 2',1,0.000000,0,NULL,12,0),(120,40,'2019-03-28 09:52:07','https://www.twist.com.tr/urun/beyaz-yuksek-topuklu-bot_p_32289?departmentId=788',1,4,599.000000,29.950000,0,0,0.000000,628.950000,'dsds',3,0.000000,1,'2019-03-28 08:56:32',12,1),(121,40,'2019-03-28 09:52:07','https://www.twist.com.tr/urun/beyaz-yuksek-topuklu-bot_p_32289?departmentId=788',1,4,566.000000,28.300000,0,0,0.000000,594.300000,'dsdsdsds',3,0.000000,1,'2019-03-28 08:52:29',12,1),(122,40,'2019-03-28 09:54:54','https://www.twist.com.tr/urun/beyaz-yuksek-topuklu-bot_p_32289?departmentId=788',1,4,444.000000,22.200000,0,0,0.000000,466.200000,'ddsds',3,0.000000,1,'2019-03-28 08:56:32',12,1),(123,38,'2019-03-28 09:57:44','https://www.trendyol.com/trendyolmilla/lila-volan-detayli-isiltili-elbise-tprss19fz0289-p-5476223?boutiqueId=309597&merchantId=968',2,4,149.990000,15.000000,0,0,0.000000,314.980000,'qara',3,0.000000,1,'2019-03-28 08:58:28',13,1),(124,41,'2019-03-28 14:43:50','https://www.trendyol.com/colin-s/erkek-regular-fit-jean-791-monica-clbwnmpnt0325110-p-2186921?boutiqueId=310095&merchantId=161',2,4,19.000000,1.900000,1,2,2.000000,39.900000,'35 olcude qeydddddd',3,0.000000,1,'2019-03-28 13:45:24',13,1),(125,41,'2019-03-28 14:51:42','https://www.trendyol.com/colin-s/erkek-regular-fit-jean-791-monica-clbwnmpnt0325110-p-2186921?boutiqueId=310095&merchantId=161',3,4,19.000000,2.850000,1,2,2.000000,59.850000,'bunlar tecilidi',3,0.000000,1,'2019-03-28 13:53:25',13,1),(126,41,'2019-03-28 14:51:42','https://www.trendyol.com/colin-s/erkek-regular-fit-jean-791-monica-clbwnmpnt0325110-p-2186921?boutiqueId=310095&merchantId=161',1,4,19.000000,1.450000,1,2,2.000000,30.450000,'tecili kargolu',3,10.000000,1,'2019-03-28 13:53:52',13,1),(127,41,'2019-03-28 14:52:40','https://www.trendyol.com/colin-s/erkek-regular-fit-jean-791-monica-clbwnmpnt0325110-p-2186921?boutiqueId=310095&merchantId=161',7,4,19.000000,6.650000,0,0,0.000000,139.650000,'normal',3,0.000000,1,'2019-03-28 13:53:25',13,1),(128,41,'2019-03-28 14:52:40','https://www.trendyol.com/hotic/hakiki-deri-siyah-kadin-bot-p-3541510?boutiqueId=309841&merchantId=968',2,4,299.000000,29.900000,0,0,0.000000,627.900000,'yeni mehsullar',3,0.000000,1,'2019-03-28 13:53:01',13,1),(129,41,'2019-03-28 14:52:40','https://www.trendyol.com/hotic/hakiki-deri-siyah-kadin-bot-p-3541510?boutiqueId=309841&merchantId=968',4,4,299.000000,59.800000,0,0,0.000000,1255.800000,'yeni test',3,0.000000,1,'2019-03-28 13:53:01',13,1),(130,41,'2019-03-28 14:58:15','https://www.trendyol.com/hotic/hakiki-deri-siyah-kadin-bot-p-3541510?boutiqueId=309841&merchantId=968',20,4,299.000000,299.000000,0,0,0.000000,6279.000000,'test qiymet cem',3,0.000000,1,'2019-03-28 13:58:29',13,1),(131,35,'2019-03-28 15:10:26','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4529585',8,4,24.990000,10.000000,0,0,0.000000,209.920000,'normal sifaris test',3,0.000000,1,'2019-03-28 14:10:40',13,1),(132,41,'2019-03-28 15:27:47','https://www.trendyol.com/guess/kadin-kol-saati-guw0638l4-p-1059998?boutiqueId=308947&merchantId=940',90,4,752.310000,3385.400000,1,2,2.000000,71093.300000,'50 sifaris sonra 90 oldu',3,0.000000,1,'2019-03-28 14:29:06',13,1),(133,42,'2019-03-28 16:48:50','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864927',1,4,19.990000,1.500000,0,0,0.000000,31.490000,'normal 1',3,10.000000,1,'2019-03-28 15:51:12',13,1),(134,42,'2019-03-28 16:48:50','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864775',4,4,19.990000,12.000000,0,0,0.000000,251.960000,'normal 2',3,40.000000,1,'2019-03-28 15:51:12',13,1),(135,42,'2019-03-28 16:56:34','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864775',4,4,19.990000,4.000000,0,0,0.000000,83.960000,'test',3,0.000000,1,'2019-03-28 15:56:44',13,1),(136,38,'2019-03-30 13:56:13','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864927',1,4,19.990000,1.000000,0,0,0.000000,20.990000,'asd',1,0.000000,0,NULL,13,1),(137,38,'2019-03-31 04:43:08','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864927',1,4,19.990000,1.000000,0,0,0.000000,20.990000,'test',1,0.000000,0,NULL,13,1),(138,38,'2019-03-31 04:43:09','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864927',1,4,19.990000,1.000000,0,0,0.000000,20.990000,'test',1,0.000000,0,NULL,13,1),(139,38,'2019-03-31 15:58:17','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864927',1,4,19.990000,1.000000,0,0,0.000000,20.990000,'normal',3,0.000000,1,'2019-03-28 15:56:44',13,1),(140,38,'2019-03-31 15:58:35','https://www.morhipo.com/kampanya/detay/22647917/80754/koton-kids-8ykb46286od-shorts',2,4,39.990000,5.000000,1,2,2.000000,104.980000,'tecili',3,10.000000,1,'2019-03-28 15:56:44',48,1),(141,38,'2019-04-01 00:10:18','https://www.morhipo.com/kampanya/detay/22647917/80754/koton-kids-8ykb46286od-shorts',2,4,39.990000,4.000000,1,2,2.000000,83.980000,'tecili',1,0.000000,0,NULL,48,1),(142,38,'2019-04-01 00:11:37','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-p-4864927',4,4,19.990000,4.000000,1,2,2.000000,83.960000,'tecili 4 eded',1,0.000000,0,NULL,13,1),(143,38,'2019-04-01 00:11:51','https://www.trendyol.com/lc-waikiki/kiz-cocuk-tisort-ve-sort-p-3407470?boutiqueId=309026&merchantId=4171',5,4,36.990000,9.250000,0,0,0.000000,194.200000,'normal 5 eded',1,0.000000,0,NULL,13,1),(144,44,'2019-04-01 00:47:12','https://www.morhipo.com/kampanya/detay/20590584/80378/adidas-cf7096-yb-tr-cool-tee',2,4,74.990000,7.500000,0,2,2.000000,157.480000,'tecili 2 eded',3,0.000000,1,'2019-04-01 00:50:44',48,1),(145,44,'2019-04-01 00:47:38','https://www.morhipo.com/kampanya/detay/22520918/80566/panco-18235037-fermuarli-sweat',1,4,103.990000,5.200000,0,0,0.000000,109.190000,'normal 1 eded',3,0.000000,1,'2019-04-01 00:50:44',48,1),(146,44,'2019-04-01 03:54:51','https://www.morhipo.com/kampanya/detay/20590584/80378/adidas-cf7096-yb-tr-cool-tee',1,4,74.990000,3.750000,0,0,0.000000,78.740000,'test',1,0.000000,0,NULL,48,1),(147,38,'2019-04-01 15:16:52','https://www.morhipo.com/kampanya/detay/20590584/80378/adidas-cf7096-yb-tr-cool-tee',2,4,74.990000,7.500000,1,2,2.000000,157.480000,'test',3,0.000000,1,'2019-04-01 10:56:44',48,1),(148,38,'2019-04-01 15:25:56','https://www.morhipo.com/kampanya/detay/22520918/80566/panco-18235037-fermuarli-sweat',7,4,103.990000,46.900000,1,2,2.000000,984.830000,'raul normal 7 eded sifaris',3,30.000000,1,'2019-04-01 10:56:44',48,1);
/*!40000 ALTER TABLE `customer_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `declaration`
--

DROP TABLE IF EXISTS `declaration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `declaration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `shop_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `product_qty` int(11) NOT NULL,
  `order_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tracking_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `order_total` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_currency_id` int(11) NOT NULL,
  `note` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_file_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `new_file_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `insert_date` datetime NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_add_date` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `declaration`
--

LOCK TABLES `declaration` WRITE;
/*!40000 ALTER TABLE `declaration` DISABLE KEYS */;
INSERT INTO `declaration` VALUES (5,35,'Flo','Ayaqqabi',NULL,1,NULL,NULL,'2019-03-27 00:00:00','100',4,'42 olcu qara ayaqqabi','2-Big Data Platform Full Proposal.pdf','declaration-u10001-1553743456.pdf','/home/tomcat/upload/u10001/declaration-u10001-1553743456.pdf',3248708,'2019-03-28 02:24:16',NULL,NULL,1),(6,40,'ttt','bbb',NULL,2,NULL,NULL,'2019-03-20 00:00:00','2',4,'2','Sifarişlər (1).pdf','declaration-a10002-1553756274.pdf','/home/tomcat/upload/a10002/declaration-a10002-1553756274.pdf',13838,'2019-03-28 05:57:54',NULL,NULL,1),(7,38,'koton','geyim',NULL,1,NULL,NULL,'2019-03-27 00:00:00','300',4,'test beyanname','2_2.jpg','declaration-y10001-1553756386.jpg','/home/tomcat/upload/y10001/declaration-y10001-1553756386.jpg',398581,'2019-03-28 05:59:46',NULL,NULL,1),(8,35,'Flo','Ayaqqabi',NULL,1,NULL,NULL,'2019-03-12 00:00:00','100',4,'42 olcu qara ayaqqabi','guidelinesforscopeofwork.pdf','declaration-u10001-1553784450.pdf','/home/tomcat/upload/u10001/declaration-u10001-1553784450.pdf',16914,'2019-03-28 13:47:31',NULL,NULL,1),(9,38,'FLO','Ayaqqabi,asdasdasdasd',NULL,1,NULL,NULL,'2019-03-28 00:00:00','50',4,'asd','ANONOPS_The_Press_Release.pdf','declaration-y10001-1553884770.pdf','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1553884770.pdf',70214,'2019-03-29 14:39:30',NULL,NULL,1),(10,38,'FLO','Ayaqqabi,trtrtrtrtr',NULL,1,NULL,NULL,'2019-03-28 00:00:00','1000',4,'flo','70-778-questions.pdf','declaration-y10001-1553885080.pdf','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1553885080.pdf',437956,'2019-03-29 14:44:40',NULL,NULL,1),(11,38,'Beymen','Kostyum,1234567890',NULL,2,NULL,NULL,'2019-03-27 00:00:00','500',4,'kostyum','ANONOPS_The_Press_Release.pdf','declaration-y10001-1553885847.pdf','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1553885847.pdf',70214,'2019-03-29 14:57:27',NULL,NULL,1),(12,38,'asdasd','ayaqqabi,76666',NULL,6,NULL,NULL,'2019-03-19 00:00:00','777',4,'asd','978-3-662-44722-2_23_Chapter.pdf','declaration-y10001-1553886034.pdf','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1553886034.pdf',796324,'2019-03-29 15:00:34',NULL,NULL,1),(13,38,'test','Kitap',9,7,'','99999','2019-03-29 00:00:00','89',4,'asd','php_developer.pdf','declaration-y10001-1553958176.pdf','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1553958176.pdf',1117566,'2019-03-30 11:02:56',NULL,NULL,1),(14,38,'ertert','Ütü',6,6,'','','2019-03-21 00:00:00','345',4,'','designer.pdf','declaration-y10001-1553958267.pdf','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1553958267.pdf',2177862,'2019-03-30 11:04:28',NULL,NULL,1),(15,38,'asdasd','Ayakkabı',4,10,'','','2019-03-28 00:00:00','676',4,'','php_developer.pdf','declaration-y10001-1553958529.pdf','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1553958529.pdf',1117566,'2019-03-30 11:08:49',NULL,NULL,1),(16,38,'asdasd','Ütü',6,7,'','345345','2019-03-19 00:00:00','90',4,'asd','php_developer.pdf','declaration-y10001-1553958626.pdf','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1553958626.pdf',1117566,'2019-03-30 11:10:27',NULL,NULL,1),(17,38,'qwe','Geyim',1,5,'123','123','2019-03-12 00:00:00','123',4,'123','php_developer.pdf','declaration-y10001-1553958904.pdf','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1553958904.pdf',1117566,'2019-03-30 11:15:04',NULL,NULL,1),(18,38,'FLO','Ayakkabı',4,1,'888888','888888','2019-04-02 00:00:00','199',4,'test','Screen Shot 2019-04-03 at 16.17.20.png','declaration-y10001-1554318082.png','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1554318082.png',1898518,'2019-04-03 15:01:23',56,'2019-04-03 11:01:23',1),(19,38,'Morhipo','Nevresim',8,1,'3333333','3333333','2019-04-03 00:00:00','120',4,'morhipo 33333333','Screen Shot 2019-04-03 at 14.35.00.png','declaration-y10001-1554341185.png','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1554341185.png',420390,'2019-04-03 21:26:26',58,'2019-04-03 17:26:26',1),(20,44,'FLO','Ayakkabı',4,1,'99999','99999','2019-04-05 00:00:00','99',4,'test','Screen Shot 2019-04-05 at 09.35.10.png','declaration-V87349-1554553505.png','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/V87349/declaration-V87349-1554553505.png',559145,'2019-04-06 08:25:05',NULL,NULL,1),(21,44,'FLO','Ayakkabı',4,1,'3333333','3333333','2019-04-05 00:00:00','99.99',4,'test ayaqqabi','Screen Shot 2019-04-03 at 16.17.20.png','declaration-V87349-1554555445.png','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/V87349/declaration-V87349-1554555445.png',1898518,'2019-04-06 08:57:25',61,'2019-04-06 04:57:25',1),(22,38,'FLO','Ayakkabı',4,1,'0000000','0000000','2019-04-05 00:00:00','99',4,'test','Screen Shot 2019-04-05 at 09.35.10.png','declaration-y10001-1554556282.png','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1554556282.png',559145,'2019-04-06 09:11:23',63,'2019-04-06 05:11:23',1),(23,38,'FLO','Ayakkabı',4,1,'2222223','2222223','2019-04-05 00:00:00','199',4,'FLO yeni ayaqqabi','Screen Shot 2019-04-05 at 09.35.10.png','declaration-y10001-1554556852.png','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1554556852.png',559145,'2019-04-06 09:20:52',64,'2019-04-06 05:20:52',1),(24,38,'FLo','Ayakkabı',4,1,'2222223','2222223','2019-04-05 00:00:00','199',4,'FLO ayaqqabi','Screen Shot 2019-04-05 at 09.35.10.png','declaration-y10001-1554557010.png','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1554557010.png',559145,'2019-04-06 09:23:31',64,'2019-04-06 05:23:31',1),(25,38,'FLO','Ayakkabı',4,1,'2222223','2222223','2019-04-05 00:00:00','199',4,'FLO ayaqqabi','Screen Shot 2019-04-05 at 09.35.10.png','declaration-y10001-1554557169.png','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1554557169.png',559145,'2019-04-06 09:26:10',64,'2019-04-06 05:26:10',1),(26,38,'89','Ayakkabı',4,1,'1111112','1111112','2019-04-06 00:00:00','299',4,'test','Screen Shot 2019-04-06 at 13.46.57.png','declaration-y10001-1554561227.png','/Volumes/DATA/WORK/ITCITY/projects/azex/repo/azex/upload/y10001/declaration-y10001-1554561227.png',928250,'2019-04-06 10:33:48',65,'2019-04-06 06:33:48',1);
/*!40000 ALTER TABLE `declaration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_az` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_ru` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'Abşeron','Абшеронcкий','Abşeron',1,1),(2,'Binəqədi','Бинагадинский','Binəqədi',2,1),(3,'Nərimanov','Наримановский','Nərimanov',3,1),(4,'Nəsimi','Насиминский','Nəsimi',4,1),(5,'Nizami','Низаминский','Nizami',5,1),(6,'Qaradağ','Гарадагский','Qaradağ',6,1),(7,'Sabunçu','Сабунчинский','Sabunçu',7,1),(8,'Səbail','Сабаильский','Səbail',8,1),(9,'Suraxanı','Сураханский','Suraxanı',9,1),(10,'Xətai','Хатаинский','Xətai',10,1),(11,'Xəzər','Хазарский','Xəzər',11,1),(12,'Yasamal','Ясамальский','Yasamal',12,1);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expense_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expense_amount` decimal(10,3) NOT NULL,
  `expense_user_id` int(11) NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bank_account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foreign_address`
--

DROP TABLE IF EXISTS `foreign_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `foreign_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `full_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address_line1` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address_line2` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `district1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `district2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone1` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone2` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_card` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foreign_address`
--

LOCK TABLES `foreign_address` WRITE;
/*!40000 ALTER TABLE `foreign_address` DISABLE KEYS */;
INSERT INTO `foreign_address` VALUES (22,30,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','p10001 Ramin Orucov','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(23,31,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','q10001 Elshan Mammadov','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(24,32,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','r10001 Elshan Mammadov','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(25,33,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','s10001 Raul Mammadov','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(26,34,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','t10001 Roza Hamzayeva','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(27,35,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','u10001 Ramin Orucov','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(28,36,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','v10001 Ramin Orucov','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(29,37,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','x10001 Elshan Mammadov','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(30,38,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','y10001 Raul Mammadov','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(31,39,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','z10001 Raul Mammadzade','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(32,40,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','a10002 Tural Əliyev','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(33,41,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','b10002 asad mammdov','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(34,42,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','c10002 David Mammadov','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(35,44,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','V87349 Rafael Oruc','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(36,45,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','X106765 Bahram Hamzayev','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1),(37,46,'AZEX A.Ş.','AZEX UPDATED','İnkilap mh. Küçüksu cd. Yelkenciler sk. Vardar ap. NO :14/4','Y94861 Zəkiyə Əlizadə','Türkiye','İstanbul','Ümraniye','İnkilap','34768','5318964270','','66823284324','6220881271',1);
/*!40000 ALTER TABLE `foreign_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `invoice_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `invoice_amount` decimal(20,6) NOT NULL,
  `open_amount` decimal(20,6) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (31,35,'2019-03-28 00:02:14',72.240000,0.000000,1,37,1),(32,39,'2019-03-28 01:09:32',43.680000,0.000000,1,37,1),(33,41,'2019-03-28 09:50:10',14.280000,0.000000,1,37,1),(34,41,'2019-03-28 10:49:56',197.820000,0.000000,1,37,1),(35,42,'2019-03-28 12:18:11',32.760000,0.000000,1,37,1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_detail`
--

DROP TABLE IF EXISTS `invoice_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_detail`
--

LOCK TABLES `invoice_detail` WRITE;
/*!40000 ALTER TABLE `invoice_detail` DISABLE KEYS */;
INSERT INTO `invoice_detail` VALUES (31,31,28,'2019-03-28 00:02:14','1'),(32,31,29,'2019-03-28 00:02:14','1'),(33,31,30,'2019-03-28 00:02:14','1'),(34,32,31,'2019-03-28 01:09:32','1'),(35,32,32,'2019-03-28 01:09:32','1'),(36,33,36,'2019-03-28 09:50:10','1'),(37,34,37,'2019-03-28 10:49:56','1'),(38,34,39,'2019-03-28 10:49:56','1'),(39,34,40,'2019-03-28 10:49:56','1'),(40,35,44,'2019-03-28 12:18:11','1'),(41,35,43,'2019-03-28 12:18:11','1');
/*!40000 ALTER TABLE `invoice_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_payment`
--

DROP TABLE IF EXISTS `invoice_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoice_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `payment_number` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` decimal(20,6) NOT NULL,
  `amount_currency_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_payment`
--

LOCK TABLES `invoice_payment` WRITE;
/*!40000 ALTER TABLE `invoice_payment` DISABLE KEYS */;
INSERT INTO `invoice_payment` VALUES (38,31,'','2019-03-28 00:02:14',70.000000,1,1,37,1),(39,31,'','2019-03-28 00:02:14',2.240000,1,2,37,1),(40,32,'','2019-03-28 01:09:32',40.000000,1,1,37,1),(41,32,'','2019-03-28 01:09:32',3.680000,1,2,37,1),(42,33,'','2019-03-28 09:50:10',10.000000,1,1,37,1),(43,33,'','2019-03-28 09:50:10',4.280000,1,2,37,1),(44,34,'','2019-03-28 10:49:56',150.000000,1,1,37,1),(45,34,'','2019-03-28 10:49:56',47.820000,1,2,37,1),(46,35,'','2019-03-28 12:18:11',30.000000,1,1,37,1),(47,35,'','2019-03-28 12:18:11',2.760000,1,2,37,1);
/*!40000 ALTER TABLE `invoice_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_action_type`
--

DROP TABLE IF EXISTS `log_action_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log_action_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_action_type`
--

LOCK TABLES `log_action_type` WRITE;
/*!40000 ALTER TABLE `log_action_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_action_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant_order_id`
--

DROP TABLE IF EXISTS `merchant_order_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `merchant_order_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant_order_id`
--

LOCK TABLES `merchant_order_id` WRITE;
/*!40000 ALTER TABLE `merchant_order_id` DISABLE KEYS */;
INSERT INTO `merchant_order_id` VALUES (40);
/*!40000 ALTER TABLE `merchant_order_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_date` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `to_id` bigint(20) DEFAULT NULL,
  `is_read` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn212osqkli6icl4klv9jrw6nk` (`admin_id`),
  KEY `FKjg8fex8hmnwm5v9cxe0rqhwhm` (`to_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_queue`
--

DROP TABLE IF EXISTS `notification_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notification_queue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `notification_type` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_queue`
--

LOCK TABLES `notification_queue` WRITE;
/*!40000 ALTER TABLE `notification_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `amount_currency_id` int(11) NOT NULL,
  `customer_paid_amount` decimal(20,6) NOT NULL,
  `azex_paid_amount` decimal(20,6) NOT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (26,28,116,1,4,20.990000,0.000000,NULL,1),(27,29,115,1,4,47.240000,0.000000,NULL,1),(28,30,118,1,4,20.990000,0.000000,NULL,1),(29,31,117,1,4,78.720000,0.000000,NULL,1),(30,32,114,1,4,20.990000,0.000000,NULL,1),(31,32,113,1,4,47.240000,0.000000,NULL,1),(32,35,123,1,4,314.980000,0.000000,NULL,1),(33,36,124,1,4,39.900000,0.000000,NULL,1),(34,37,126,1,4,30.450000,0.000000,NULL,1),(35,37,125,1,4,59.850000,0.000000,NULL,1),(36,38,131,1,4,209.920000,0.000000,NULL,1),(37,39,130,1,4,6279.000000,0.000000,NULL,1),(38,40,129,1,4,1255.800000,0.000000,NULL,1),(39,40,128,1,4,627.900000,0.000000,NULL,1),(40,40,127,1,4,139.650000,0.000000,NULL,1),(41,41,132,1,4,71093.300000,0.000000,NULL,1),(42,42,122,1,4,466.200000,0.000000,NULL,1),(43,42,121,1,4,594.300000,0.000000,NULL,1),(44,42,120,1,4,628.950000,0.000000,NULL,1),(45,43,134,1,4,131.960000,0.000000,NULL,1),(46,43,133,1,4,31.490000,0.000000,NULL,1),(47,44,135,1,4,83.960000,0.000000,NULL,1),(48,56,140,1,4,94.980000,0.000000,NULL,1),(49,57,148,1,4,804.830000,0.000000,NULL,1),(50,58,147,1,4,157.480000,0.000000,NULL,1),(51,59,139,1,4,20.990000,0.000000,NULL,1),(52,60,145,1,4,109.190000,0.000000,NULL,1),(53,61,144,1,4,157.480000,0.000000,NULL,1);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_number`
--

DROP TABLE IF EXISTS `order_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_number` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_number`
--

LOCK TABLES `order_number` WRITE;
/*!40000 ALTER TABLE `order_number` DISABLE KEYS */;
INSERT INTO `order_number` VALUES (100069);
/*!40000 ALTER TABLE `order_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'Gözləyir',1,1),(2,'Ödənilib',2,1),(3,'Sifariş verilib',3,1),(4,'Türkiyə anbarında',4,1),(5,'Bəyannamə gözləyən',5,1),(6,'Bəyannamə əlavə edilən',6,1),(7,'Göndərillməyə hazır',7,1),(8,'Göndərilib',8,1),(9,'Daxil olub',9,1),(10,'Bakı ofisinə çatıb',10,1),(11,'Ödəniş təsdiqlənib',11,1),(12,'Təhvil verilib',12,1);
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'cash',1),(2,'pos',1);
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytr_payment`
--

DROP TABLE IF EXISTS `paytr_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paytr_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `merchant_order_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_success` int(11) NOT NULL,
  `total_amount` decimal(20,6) NOT NULL,
  `hash` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `failed_reason_code` int(11) DEFAULT NULL,
  `failed_reason_msg` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `test_mode` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_amount` decimal(20,6) DEFAULT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytr_payment`
--

LOCK TABLES `paytr_payment` WRITE;
/*!40000 ALTER TABLE `paytr_payment` DISABLE KEYS */;
INSERT INTO `paytr_payment` VALUES (379,35,'u1000119','success',1,6823.000000,'eYzHNgrM6VJDfgy1YbHVg277fm0qFbefLZSDhUb7DgE=',0,NULL,'1','card','TL',6823.000000,'2019-03-27 20:14:06',1),(380,35,'u1000118','failed',0,0.000000,'QqfnwhR8v7BDSrIhyJKkA+/6Y4KT7t5pVMUTJPPds8s=',6,'İzin verilen sürede ödeme tamamlanmadı','1','card',NULL,NULL,'2019-03-27 20:22:37',1),(381,35,'u1000120','success',1,6823.000000,'76iF6RW2AhascQxE8MHTc5mE7xB1os4LSZOah8h5Bbc=',0,NULL,'1','card','TL',6823.000000,'2019-03-27 20:54:20',1),(382,39,'z1000121','success',1,7872.000000,'V0ZyTNGNnvFlzlQmY8KqfoOQOOeF8jpfdvK+kV6LP5g=',0,NULL,'1','card','TL',7872.000000,'2019-03-27 22:12:10',1),(383,35,'u1000122','success',1,2099.000000,'xnNnTeVgnxgmEzi3xWOL6axvxOFkoMh8fim2lRluqlQ=',0,NULL,'1','card','TL',2099.000000,'2019-03-27 23:51:41',1),(384,40,'a1000223','success',1,59430.000000,'z9LONr4lPE1IKceojqaE4rhMifl1JfW147gDLYGQlxI=',0,NULL,'1','card','TL',59430.000000,'2019-03-28 04:52:29',1),(385,40,'a1000225','success',1,109515.000000,'exvCXVP1M3fbFNA0zL4HjC4n29SsYlARhL9di7q8Qvs=',0,NULL,'1','card','TL',109515.000000,'2019-03-28 04:56:32',1),(386,38,'y1000126','success',1,31498.000000,'1clV807gs+gco1v5YjPA57GaJGfCASNW1Q+Ka6cDJW0=',0,NULL,'1','card','TL',31498.000000,'2019-03-28 04:58:28',1),(387,40,'a1000224','failed',0,0.000000,'LAVD3nIwM25fWxY6Ymu7qY3hq9Gcwcgb4wQO0ZfHIG8=',6,'İzin verilen sürede ödeme tamamlanmadı','1','card',NULL,NULL,'2019-03-28 05:28:33',1),(388,41,'b1000227','success',1,3990.000000,'3aqke2yaVHCxS/3gWD0t6Qe3Q/RUIDYSP+I1F3Ggra8=',0,NULL,'1','card','TL',3990.000000,'2019-03-28 09:45:24',1),(389,41,'b1000228','success',1,188370.000000,'afsu663ZylHZmbybeZYSFHRO/sYbieN2L+qYs2sBd0U=',0,NULL,'1','card','TL',188370.000000,'2019-03-28 09:53:01',1),(390,41,'b1000229','success',1,19950.000000,'MehyU57+xEpdynJCHX+d2FH0cYUuWf3uCe1uZTlY/UA=',0,NULL,'1','card','TL',19950.000000,'2019-03-28 09:53:25',1),(391,41,'b1000230','success',1,3045.000000,'0GoNdnyCQ9iR/LmrswQXuBvSMSoHj2UYWWOSwcdcOuE=',0,NULL,'1','card','TL',3045.000000,'2019-03-28 09:53:52',1),(392,41,'b1000231','success',1,627900.000000,'Ai4CE4n0HD3uSoky+K3nB3p9PIPNeHkbXN6RTOv/A4w=',0,NULL,'1','card','TL',627900.000000,'2019-03-28 09:58:29',1),(393,35,'u1000132','success',1,20992.000000,'FsZ+hkGcXKwz3Pc156EXUa9UXLmS4vFjPM/rh1hRBQg=',0,NULL,'1','card','TL',20992.000000,'2019-03-28 10:10:40',1),(394,41,'b1000233','success',1,7109330.000000,'DsDKHazgRaCiu05TWMPCGhOYGPSseZMYtPW2f8Ta5k8=',0,NULL,'1','card','TL',7109330.000000,'2019-03-28 10:29:06',1),(395,42,'c1000236','success',1,16345.000000,'SzAhZ9JyfjKdY8/Q218KHYyUBEXZUxEcSaWGgvtExgI=',0,NULL,'1','card','TL',16345.000000,'2019-03-28 11:51:11',1),(396,42,'c1000237','success',1,8396.000000,'Pme0oIKWJ0ogAHZu8OE21X/eoWYTL8SjCs8BghZkuqs=',0,NULL,'1','card','TL',8396.000000,'2019-03-28 11:56:44',1),(397,42,'c1000234','failed',0,0.000000,'hJWhDS50n7s9iVyUngDyN+7wLVIeCUv+b6GykoC2jfc=',6,'İzin verilen sürede ödeme tamamlanmadı','1','card',NULL,NULL,'2019-03-28 12:20:37',1),(398,42,'c1000235','failed',0,0.000000,'DwflsT5H72sWlBamUxzMgW3CB33RrHPJvAE+pidCxiE=',6,'İzin verilen sürede ödeme tamamlanmadı','1','card',NULL,NULL,'2019-03-28 12:21:37',1);
/*!40000 ALTER TABLE `paytr_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytr_payment_request`
--

DROP TABLE IF EXISTS `paytr_payment_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paytr_payment_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `customer_ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `merchant_order_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `request_date` datetime NOT NULL,
  `total_amount` decimal(20,6) NOT NULL,
  `response_success` int(11) DEFAULT NULL,
  `response_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_token` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `response_reason` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytr_payment_request`
--

LOCK TABLES `paytr_payment_request` WRITE;
/*!40000 ALTER TABLE `paytr_payment_request` DISABLE KEYS */;
INSERT INTO `paytr_payment_request` VALUES (19,35,'5.197.138.113','u1000118','2019-03-27 23:50:45',68.230000,1,'success','a1466fb6aa66f138760bed0ec1d259dda860e914872a4e1230d9bdf6bea9eb4e',NULL,1),(20,35,'5.197.138.113','u1000119','2019-03-28 00:13:52',68.230000,1,'success','54664e27c059713c0fac20c4ca9ee45ab508a003582c5a12e434053404d24953',NULL,1),(21,35,'5.197.138.113','u1000120','2019-03-28 00:54:12',68.230000,1,'success','07c17d4e3f408199343c25d607e462ff1d5603e153877ce05e611ca46662112b',NULL,1),(22,39,'188.253.224.101','z1000121','2019-03-28 02:11:53',78.720000,1,'success','6a713eea04e847faa8f3d2d8c5d277852ec76ff4d0bc68028531da48d1c98958',NULL,1),(23,35,'5.197.138.113','u1000122','2019-03-28 03:51:26',20.990000,1,'success','2c04e13bf9009f19b9ce43c19f5fbe80ea6127d1586744f0a5c2a49a6f09025f',NULL,1),(24,40,'85.132.96.91','a1000223','2019-03-28 08:52:13',594.300000,1,'success','dd50a352f6eff8e4a664d9ea9bec5ff72f69d1dcf66c211c44c49e8d6d27f3ca',NULL,1),(25,40,'85.132.96.91','a1000224','2019-03-28 08:56:10',466.200000,1,'success','42bf0ebd26d87f999df827b856ff0a6016f405954c4e58b085a4268a00855cf4',NULL,1),(26,40,'85.132.96.91','a1000225','2019-03-28 08:56:19',1095.150000,1,'success','9f7993cac4a7123f13cce1582d09c8d22ffd07d15ad6edf983d9d1a9f79566cd',NULL,1),(27,38,'188.253.229.191','y1000126','2019-03-28 08:58:08',314.980000,1,'success','364e9ee8120a2595fbad1576d81df1c8fa14cc86334b75c0d4bb5e8d7277e914',NULL,1),(28,41,'85.132.96.91','b1000227','2019-03-28 13:44:02',39.900000,1,'success','ba4dd90ef7b68df8c6f29f24b5bf5cb72b5a7c15bdd63fe9b77500515ed3f941',NULL,1),(29,41,'85.132.96.91','b1000228','2019-03-28 13:52:51',1883.700000,1,'success','e2589263e97526229a398bd7ee6f6c071d4260957fc4fc87d71e914e67c64f29',NULL,1),(30,41,'85.132.96.91','b1000229','2019-03-28 13:53:17',199.500000,1,'success','000cd3b39e1e7688df04f467d5db8327500deb45b2a20f6ac181e0a312ac0afa',NULL,1),(31,41,'85.132.96.91','b1000230','2019-03-28 13:53:33',30.450000,1,'success','48b0f0d33a18d78b26daa7b22f53a25988108308e60c3cac7fd13c6f83efcd20',NULL,1),(32,41,'85.132.96.91','b1000231','2019-03-28 13:58:22',6279.000000,1,'success','a648a1476a2af2e8037a66fcf32ba59310db2e726d802e6cddfaf84c84a90ce8',NULL,1),(33,35,'85.132.96.91','u1000132','2019-03-28 14:10:30',209.920000,1,'success','377279c81510e0ed0475961e676dafeaeb16ed8a30aa8fbc0c29e98f6f8bc483',NULL,1),(34,41,'85.132.96.91','b1000233','2019-03-28 14:28:55',71093.300000,1,'success','8dc819f5ec9ad0db968fa1e7946b67311531672d5f28d0d3b91eb659d77c06a9',NULL,1),(35,42,'85.132.96.91','c1000234','2019-03-28 15:48:56',163.450000,1,'success','b9d7510c30969c5de3ed5241db3d7ed71db40c65d3b3d9b3df7d9ed1c3f0189b',NULL,1),(36,42,'85.132.96.91','c1000235','2019-03-28 15:49:20',163.450000,1,'success','b0547c23bee2b66e15a1084fb169962f2d8fbb887a65c89094b9142aad9d4aa3',NULL,1),(37,42,'85.132.96.91','c1000236','2019-03-28 15:50:38',163.450000,1,'success','ee741640e568b789d7a733fff782e6fd48f7e3081cccdb021f7e21425b3e5ced',NULL,1),(38,42,'85.132.96.91','c1000237','2019-03-28 15:56:38',83.960000,1,'success','4b7c2cc64060d0466b37c59f748414dad2a5130d1fdaa77d91a99b7ccee0d721',NULL,1),(39,38,'0:0:0:0:0:0:0:1','y1000138','2019-03-30 09:56:18',20.990000,1,'success','d4d2d7919385e6556e5118327c7b656bd40f669a7ac4ae77d1d5bfc009066f0d',NULL,1),(40,38,'0:0:0:0:0:0:0:1','y1000139','2019-03-30 23:46:57',20.990000,1,'success','7d120829ca781c9d6472f9c8320de225f7787b9786e51d48c5339e8ecd5dc1f4',NULL,1),(41,38,'0:0:0:0:0:0:0:1','y1000140','2019-03-31 00:43:18',62.970000,1,'success','6cae067ab3b207041ff27fd5b0404a55c53949fdb4b229b6d0c558f904a779f7',NULL,1);
/*!40000 ALTER TABLE `paytr_payment_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytr_request_detail`
--

DROP TABLE IF EXISTS `paytr_request_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paytr_request_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_request_id` int(11) NOT NULL,
  `customer_request_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytr_request_detail`
--

LOCK TABLES `paytr_request_detail` WRITE;
/*!40000 ALTER TABLE `paytr_request_detail` DISABLE KEYS */;
INSERT INTO `paytr_request_detail` VALUES (24,19,116,1),(25,19,113,1),(26,20,116,1),(27,20,113,1),(28,21,115,1),(29,21,114,1),(30,22,117,1),(31,23,118,1),(32,24,121,1),(33,25,122,1),(34,26,122,1),(35,26,120,1),(36,27,123,1),(37,28,124,1),(38,29,129,1),(39,29,128,1),(40,30,127,1),(41,30,125,1),(42,31,126,1),(43,32,130,1),(44,33,131,1),(45,34,132,1),(46,35,134,1),(47,35,133,1),(48,36,134,1),(49,36,133,1),(50,37,134,1),(51,37,133,1),(52,38,135,1),(53,39,136,1),(54,40,136,1),(55,41,138,1),(56,41,137,1),(57,41,136,1);
/*!40000 ALTER TABLE `paytr_request_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `measure` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_count` int(11) DEFAULT NULL,
  `product_link` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_stock_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcddxrgvc4e8h066et5yw7np17` (`foreign_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `source_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `azex_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `default_page` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_MODERATOR','redirect:/admin/home',1),(2,'ROLE_ADMIN\r ','redirect:/admin/home',1),(3,'ROLE_STOCK_LOCAL','redirect:/stock-local/home',1),(4,'ROLE_STOCK_FOREIGN','redirect:/stock-foreign/home',1),(5,'ROLE_CUSTOMER','redirect:/customer/home',1),(6,'ROLE_CASHIER','redirect:/cashier/home',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `web_site` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `show_on_web` int(11) NOT NULL DEFAULT '0',
  `crawler_class` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (1,'Trendyol','https://www.trendyol.com/','https://www.trendyol.com/','Trendyol',1,1,0,NULL,0),(2,'Koton','https://www.koton.com/','https://www.koton.com/','Koton',1,2,0,NULL,0),(3,'Pierre Cardin','https://www.pierrecardin.com.tr/','https://img-pierrecardin.mncdn.com/images/frontend/logo.png','Pierre Cardin',1,3,1,'az.azex.web.crawler.PierreCardinCrawler',1),(4,'US POLO ASSN','http://tr.uspoloassn.com/','https://img-uspoloassn.mncdn.com/images/front-end/logo.svg','US POLO ASSN',1,4,1,'az.azex.web.crawler.UspoloassnCrawler',1),(5,'Test Shop New','http://www.azex.az','http://wwww.azex.az/test-shop-logo.jpg','Test Shop Description',1,5,0,NULL,0),(6,'Yeni magaza','http://azex.az/','http://azex.az/azex.png','',1,6,0,NULL,0),(7,'Zara','http://zara.com','https://res.cloudinary.com/azex/image/upload/v1543311958/azex/shops/Zara-logo.png','',1,7,1,'az.azex.web.crawler.ZaraCrawler',1),(8,'Yedigunmoda.com','http://yedigunmoda.com','https://res.cloudinary.com/azex/image/upload/v1543311957/azex/shops/yedigunmoda.png','',1,8,1,'az.azex.web.crawler.YedigunmodaCrawler',1),(9,'yalispor.com','http://yalispor.com','https://res.cloudinary.com/azex/image/upload/v1543311954/azex/shops/yalispor.png','',1,9,1,'az.azex.web.crawler.YalisporCrawler',1),(10,'wcollection.com.tr','https://www.wcollection.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311949/azex/shops/wcollection.png','',1,10,1,'az.azex.web.crawler.WcollectionCrawler',1),(11,'viccoshop.com.tr','https://www.viccoshop.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311947/azex/shops/vicco.png','',1,11,1,'az.azex.web.crawler.ViccoshopCrawler',1),(12,'twist.com.tr','https://www.twist.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311946/azex/shops/twist.png','',1,12,1,'az.azex.web.crawler.TwistCrawler',1),(13,'trendyol.com','https://www.trendyol.com/','https://res.cloudinary.com/azex/image/upload/v1543311944/azex/shops/trendyol-logo.png','',1,13,1,'az.azex.web.crawler.TrendYolCrawler',1),(14,'tr-converse.com','https://www.tr-converse.com/','https://res.cloudinary.com/azex/image/upload/v1543311943/azex/shops/tr-converse.png','',1,14,1,'az.azex.web.crawler.TrconverseCrawler',1),(15,'www.tozlu.com','https://www.tozlu.com/TR','https://res.cloudinary.com/azex/image/upload/v1543311939/azex/shops/tozlu.png','',1,15,1,'az.azex.web.crawler.TozluCrawler',1),(16,'teknosa.com','https://www.teknosa.com/','https://res.cloudinary.com/azex/image/upload/v1543311937/azex/shops/teknosa.png','',1,16,1,'az.azex.web.crawler.TeknosaCrawler',1),(17,'suvari.com.tr','https://www.suvari.com.tr/tr/','https://res.cloudinary.com/azex/image/upload/v1543311936/azex/shops/suvari.png','',1,17,1,'az.azex.web.crawler.SuvariCrawler',1),(18,'supermino.com','https://www.supermino.com/','https://res.cloudinary.com/azex/image/upload/v1543311934/azex/shops/supermino.png','',1,18,1,'az.azex.web.crawler.SuperminoCrawler',1),(19,'stradivarius.com.tr','https://www.stradivarius.com/tr/','https://res.cloudinary.com/azex/image/upload/v1543311931/azex/shops/stradivarius.png','',1,19,1,NULL,1),(20,'sporjinal.com','https://www.sporjinal.com/','https://res.cloudinary.com/azex/image/upload/v1543311930/azex/shops/sporjinal.png','',1,20,1,'az.azex.web.crawler.SporjinalCrawler',1),(21,'soobe.com.tr','https://www.soobe.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311928/azex/shops/soobe.png','',1,21,1,'az.azex.web.crawler.SoobeCrawler',1),(22,'shoebutik.com','https://www.shoebutik.com/','https://res.cloudinary.com/azex/image/upload/v1543311926/azex/shops/shoebutik.png','',1,22,1,'az.azex.web.crawler.Shoebutik',1),(23,'sateen.com','https://www.sateen.com/','https://res.cloudinary.com/azex/image/upload/v1543311925/azex/shops/sateen.png','',1,23,1,NULL,1),(24,'sarar.com','https://shop.sarar.com/','https://res.cloudinary.com/azex/image/upload/v1543311924/azex/shops/sarar.png','',1,24,1,'az.azex.web.crawler.SararCrawler',1),(25,'sahibinden.com','https://www.sahibinden.com/','https://res.cloudinary.com/azex/image/upload/v1543311923/azex/shops/sahibinden_logo.png','',1,25,1,'az.azex.web.crawler.SahibindenCrawler',1),(26,'roman.com.tr','https://www.roman.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311922/azex/shops/roman.png','',1,26,1,'az.azex.web.crawler.RomanCrawler',1),(27,'ramsey.com.tr','https://www.ramsey.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311921/azex/shops/ramsey.png','',1,27,1,'az.azex.web.crawler.RamseyCrawler',1),(28,'pullandbear.com.tr','https://www.pullandbear.com/tr/','https://res.cloudinary.com/azex/image/upload/v1543311921/azex/shops/pull_and_bear.png','',1,28,1,NULL,1),(29,'tr.uspoloassn.com','https://tr.uspoloassn.com/','https://res.cloudinary.com/azex/image/upload/v1543311920/azex/shops/polo_logo.png','',1,29,1,'az.azex.web.crawler.UspoloassnCrawler',1),(30,'double-2a.com','https://www.double-2a.com/','https://res.cloudinary.com/azex/image/upload/v1543311919/azex/shops/pn.psd','',1,30,1,'az.azex.web.crawler.Double2aCrawler',1),(31,'miorre.com.tr','https://www.miorre.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311917/azex/shops/pn_copy.png','',1,31,1,'az.azex.web.crawler.MiorreCrawler',1),(32,'pierrecardin.com.tr','https://www.pierrecardin.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311917/azex/shops/pierre-cardin-logo.jpg','',1,32,1,'az.azex.web.crawler.PierreCardinCrawler',1),(33,'pelininayakkabilari.com','https://www.pelininayakkabilari.com/','https://res.cloudinary.com/azex/image/upload/v1543311916/azex/shops/pelininayakkabilari.png','',1,33,1,'az.azex.web.crawler.PelininayakkabilariCrawler',1),(34,'patirti.com','https://www.patirti.com/','https://res.cloudinary.com/azex/image/upload/v1543311915/azex/shops/patirti.png','',1,34,1,'az.azex.web.crawler.PatirtiCrawler',1),(35,'panco.com.tr','https://www.panco.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311914/azex/shops/panco.png','',1,35,1,'az.azex.web.crawler.PancoCrawler',1),(36,'pamukandpamuk.com','https://www.pamukandpamuk.com/','https://res.cloudinary.com/azex/image/upload/v1543311914/azex/shops/pamukandpamuk.png','',1,36,1,'az.azex.web.crawler.PamukandpamukCrawler',1),(37,'ozdilekteyim.com','http://www.ozdilekteyim.com/shop/tr/ozdilekteyim','https://res.cloudinary.com/azex/image/upload/v1543311913/azex/shops/ozdilekteyim.png','',1,37,1,'az.azex.web.crawler.Ozdilekteyim',1),(38,'oxxo.com.tr','https://www.oxxo.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311912/azex/shops/oxxo.png','',1,38,1,'az.azex.web.crawler.OxxoCrawler',1),(39,'outletim.com','https://outletim.com/anasayfa.php','https://res.cloudinary.com/azex/image/upload/v1543311911/azex/shops/outletim.png','',1,39,1,'az.azex.web.crawler.OutletimCrawler',1),(40,'oseshop.com','https://www.oseshop.com/','https://res.cloudinary.com/azex/image/upload/v1543311910/azex/shops/oseshop.png','',1,40,1,'az.azex.web.crawler.OseshopCrawler',1),(41,'olegcassini.com.tr','https://www.olegcassini.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311909/azex/shops/olegcassini.png','',1,41,1,'az.azex.web.crawler.OlegcassiniCrawler',1),(42,'occasion.com.tr','https://www.occasion.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311908/azex/shops/occasion.png','',1,42,1,'az.azex.web.crawler.OccasionCrawler',1),(43,'nursace.com/','https://www.nursace.com/','https://res.cloudinary.com/azex/image/upload/v1543311906/azex/shops/nursace.png','',1,43,1,'az.azex.web.crawler.NursaceCrawler',1),(44,'nextdirect.com','https://www.nextdirect.com/tr/en','https://res.cloudinary.com/azex/image/upload/v1543311905/azex/shops/nextdirect.png','',1,44,1,'az.azex.web.crawler.NextdirectCrawler',1),(45,'network.com.tr','https://www.network.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311904/azex/shops/network.png','',1,45,1,'az.azex.web.crawler.NetworkCrawler',1),(46,'n11.com','https://www.n11.com/','https://res.cloudinary.com/azex/image/upload/v1543311903/azex/shops/n11_logo.jpg','',1,46,1,'az.azex.web.crawler.N11Crawler',1),(47,'mothercare.com.tr','https://www.mothercare.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311903/azex/shops/mothercare.png','',1,47,1,'az.azex.web.crawler.MothercareCrawler',1),(48,'morhipo.com','https://www.morhipo.com/','https://res.cloudinary.com/azex/image/upload/v1543311902/azex/shops/Morhipo.jpg','',1,48,1,'az.azex.web.crawler.MorhipoCrawler',1),(49,'modanisa.com','https://www.modanisa.com','https://res.cloudinary.com/azex/image/upload/v1543311900/azex/shops/modanisa.png','',1,49,1,'az.azex.web.crawler.ModanisaCrawler',1),(50,'modamlagiyim.com','https://www.modamlagiyim.com/','https://res.cloudinary.com/azex/image/upload/v1543311899/azex/shops/modamlagiyim.png','',1,50,1,'az.azex.web.crawler.ModamlagiyimCrawler',1),(51,'mervedagli.com','https://www.mervedagli.com/','https://res.cloudinary.com/azex/image/upload/v1543311897/azex/shops/mervedagli.png','',1,51,1,'az.azex.web.crawler.MervedagliCrawler',1),(52,'matras.com','https://www.matras.com/','https://res.cloudinary.com/azex/image/upload/v1543311897/azex/shops/matras.png','',1,52,1,'az.azex.web.crawler.MatrasCrawler',1),(53,'majestecanta.com','https://www.majestecanta.com/','https://res.cloudinary.com/azex/image/upload/v1543311897/azex/shops/masejtecanta.png','',1,53,1,'az.azex.web.crawler.MajestecantaCrawler',1),(54,'markafoni.com','https://www.markafoni.com/','https://res.cloudinary.com/azex/image/upload/v1543311896/azex/shops/markafoni_logo.png','',1,54,1,'az.azex.web.crawler.MarkafoniCrawler',1),(55,'markabebe.com','https://www.markabebe.com/','https://res.cloudinary.com/azex/image/upload/v1543311895/azex/shops/markabebe.png','',1,55,1,'az.azex.web.crawler.MarkabebeCrawler',1),(56,'mango.com.tr','https://shop.mango.com/tr','https://res.cloudinary.com/azex/image/upload/v1543311894/azex/shops/mango_logo.png','',1,56,1,NULL,1),(57,'madamecoco.com','https://www.madamecoco.com/','https://res.cloudinary.com/azex/image/upload/v1543311893/azex/shops/madaamecoco.png','',1,57,1,'az.azex.web.crawler.MadamecocoCrawler',1),(58,'lufigo.com','https://www.lufigo.com/','https://res.cloudinary.com/azex/image/upload/v1543311892/azex/shops/lufigo.png','',1,58,1,'az.azex.web.crawler.LufigoCrawler',1),(59,'lufian.com','https://www.lufian.com/','https://res.cloudinary.com/azex/image/upload/v1543311892/azex/shops/lufian.png','',1,59,1,'az.azex.web.crawler.LufigoCrawler',1),(60,'shop.ltbjeans.com','https://shop.ltbjeans.com/','https://res.cloudinary.com/azex/image/upload/v1543311891/azex/shops/ltb.png','',1,60,1,NULL,1),(61,'lovemybody.com.tr','https://www.lovemybody.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311890/azex/shops/lovemybody.png','',1,61,1,'az.azex.web.crawler.LovemybodyCrawler',1),(62,'linens.com.tr','https://www.linens.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311890/azex/shops/linens.png','',1,62,1,'az.azex.web.crawler.LinensCrawler',1),(63,'lidyana.com','https://www.lidyana.com/','https://res.cloudinary.com/azex/image/upload/v1543311889/azex/shops/Lidyana.jpg','',1,63,1,'az.azex.web.crawler.LidyanaCrawler',1),(64,'lcwaikiki.com','https://www.lcwaikiki.com/tr-TR/TR','https://res.cloudinary.com/azex/image/upload/v1543311888/azex/shops/lc-waikiki-logo.png','',1,64,1,'az.azex.web.crawler.LcWaikikiCrawler',1),(65,'lacoste.com.tr','https://www.lacoste.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311887/azex/shops/lacoste.png','',1,65,1,'az.azex.web.crawler.LacosteCrawler',1),(66,'koton.com','https://www.koton.com/tr/','https://res.cloudinary.com/azex/image/upload/v1543311886/azex/shops/Koton_logo.jpg','',1,66,1,'az.azex.web.crawler.KotonCrawler',1),(67,'koctas.com.tr','https://www.koctas.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311885/azex/shops/koctas.png','',1,67,1,'az.azex.web.crawler.KoctasCrawler',1),(68,'kitapyurdu.com','https://www.kitapyurdu.com/','https://res.cloudinary.com/azex/image/upload/v1543311885/azex/shops/kitapyurdu.jpg','',1,68,1,'az.azex.web.crawler.KitapyurduCrawler',1),(69,'kemaltanca.com.tr','https://www.kemaltanca.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311884/azex/shops/kemaltanca.png','',1,69,1,'az.azex.web.crawler.KemaltancaCrawler',1),(70,'keenfootwear.com.tr','http://www.keenfootwear.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311884/azex/shops/keen.png','',1,70,1,NULL,1),(71,'kayaspor.com','https://www.kayaspor.com/','https://res.cloudinary.com/azex/image/upload/v1543311883/azex/shops/kayaspor.png','',1,71,1,'az.azex.web.crawler.KeenfootwearCrawler',1),(72,'karaca.com.tr','https://www.karaca.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311882/azex/shops/karaca.jpg','',1,72,1,'az.azex.web.crawler.KaracaCrawler',1),(73,'isilanil.com','https://www.isilanil.com/','https://res.cloudinary.com/azex/image/upload/v1543311881/azex/shops/isilanil.png','',1,73,1,'az.azex.web.crawler.IsilanilCrawler',1),(74,'iriadam.com','https://www.iriadam.com/','https://res.cloudinary.com/azex/image/upload/v1543311881/azex/shops/iriadam.png','',1,74,1,'az.azex.web.crawler.IriadamCrawler',1),(75,'ipekyol.com.tr','https://www.ipekyol.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311881/azex/shops/ipekyol.jpg','',1,75,1,'az.azex.web.crawler.IpekyolCrawler',1),(76,'incideri.com','https://www.incideri.com/','https://res.cloudinary.com/azex/image/upload/v1543311879/azex/shops/inci.png','',1,76,1,'az.azex.web.crawler.IncideriCrawler',1),(77,'idefix.com','https://www.idefix.com/','https://res.cloudinary.com/azex/image/upload/v1543311879/azex/shops/idefix.png','',1,77,1,'az.azex.web.crawler.IdefixCrawler',1),(78,'hm.com','https://www2.hm.com/tr_tr/index.html','https://res.cloudinary.com/azex/image/upload/v1543311877/azex/shops/hm.gif','',1,78,1,'az.azex.web.crawler.HmCrawler',1),(79,'hisarim.com','https://www.hisarim.com/','https://res.cloudinary.com/azex/image/upload/v1543311877/azex/shops/hisarim.png','',1,79,1,'az.azex.web.crawler.HisarimCrawler',1),(80,'gumuscarsim.com','https://gumuscarsim.com/','https://res.cloudinary.com/azex/image/upload/v1543311877/azex/shops/gumuscarsim.png','',1,80,1,'az.azex.web.crawler.GumuscarsimCrawler',1),(81,'gsstore.org','https://www.gsstore.org/','https://res.cloudinary.com/azex/image/upload/v1543311876/azex/shops/gs_store_b_1.jpg','',1,81,1,'az.azex.web.crawler.GsstoreCrawler',1),(82,'greyder.com','https://www.greyder.com/','https://res.cloudinary.com/azex/image/upload/v1543311875/azex/shops/greyder.png','',1,82,1,'az.azex.web.crawler.GreyderCrawler',1),(83,'gokhantalay.com','https://www.gokhantalay.com/','https://res.cloudinary.com/azex/image/upload/v1543311874/azex/shops/gokhanatalay.png','',1,83,1,'az.azex.web.crawler.GokhantalayCrawler',1),(84,'gittigidiyor.com','https://www.gittigidiyor.com/','https://res.cloudinary.com/azex/image/upload/v1543311874/azex/shops/gitdigidiyor.png','',1,84,1,'az.azex.web.crawler.GittigidiyorCrawler',1),(85,'geyikmoda.com','https://www.geyikmoda.com/','https://res.cloudinary.com/azex/image/upload/v1543311873/azex/shops/geyikmoda.png','',1,85,1,'az.azex.web.crawler.GeyikmodaCrawler',1),(86,'gecegiyim.com','http://www.gecegiyim.com/','https://res.cloudinary.com/azex/image/upload/v1543311872/azex/shops/gecegiyim.png','',1,86,1,NULL,1),(87,'funnababy.com','https://www.funnababy.com/','https://res.cloudinary.com/azex/image/upload/v1543311871/azex/shops/funnababy.png','',1,87,1,'az.azex.web.crawler.FunnababyCrawler',1),(88,'fonexkozmetik.com','https://www.fonexkozmetik.com/','https://res.cloudinary.com/azex/image/upload/v1543311870/azex/shops/fonexcosmetics.png','',1,88,1,NULL,1),(89,'flo.com.tr','https://www.flo.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311870/azex/shops/flo.png','',1,89,1,NULL,1),(90,'fenerium.com.tr','https://www.fenerium.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311870/azex/shops/fenerium.jpg','',1,90,1,NULL,1),(91,'fatosunpapuclari.com','http://www.fatosunpapuclari.com/','https://res.cloudinary.com/azex/image/upload/v1543311868/azex/shops/fatosunpapuclari.png','',1,91,1,NULL,1),(92,'fashionfriends.com','https://www.fashionfriends.com/','https://res.cloudinary.com/azex/image/upload/v1543311868/azex/shops/fashionfreinds.png','',1,92,1,NULL,1),(93,'englishhome.com.tr','https://www.englishhome.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311867/azex/shops/englishhome.png','',1,93,1,'az.azex.web.crawler.EnglishhomeCrawler',1),(94,'elleshoes.com','https://www.elleshoes.com','https://res.cloudinary.com/azex/image/upload/v1543311866/azex/shops/elleshoes.png','',1,94,1,'az.azex.web.crawler.ElleshoesCrawler',1),(95,'efor.com.tr','https://shop.efor.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311865/azex/shops/efor.png','',1,95,1,'az.azex.web.crawler.EforCrawler',1),(96,'e-tesettur.com.tr','https://www.e-tesettur.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311863/azex/shops/e-tesettur.png','',1,96,1,'az.azex.web.crawler.EtesetturCrawler',1),(97,'e-bebek.com','https://www.e-bebek.com/','https://res.cloudinary.com/azex/image/upload/v1543311861/azex/shops/e-bebek.png','',1,97,1,'az.azex.web.crawler.EbebekCrawler',1),(98,'dsdamat.com','https://www.dsdamat.com/','https://res.cloudinary.com/azex/image/upload/v1543311859/azex/shops/dsdamat.png','',1,98,1,'az.azex.web.crawler.DsdamatCrawler',1),(99,'dr.com.tr','https://www.dr.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311859/azex/shops/dr.png','',1,99,1,'az.azex.web.crawler.DrCrawler',1),(100,'dgn.com.tr','https://dgn.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311857/azex/shops/dogancanta.png','',1,100,1,NULL,1),(101,'divarese.com.tr','https://www.divarese.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311856/azex/shops/divarese.png','',1,101,1,NULL,1),(102,'dilebebe.com','https://www.dilebebe.com/','https://res.cloudinary.com/azex/image/upload/v1543311855/azex/shops/dilebebe.png','',1,102,1,NULL,1),(103,'desa.com.tr','https://www.desa.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311855/azex/shops/desa.png','',1,103,1,NULL,1),(104,'denizbutik.com','https://www.denizbutik.com/tr','https://res.cloudinary.com/azex/image/upload/v1543311853/azex/shops/denizbutik.png','',1,104,1,'az.azex.web.crawler.DenizbutikCrawler',1),(105,'delisiyim.com','http://www.delisiyim.com/','https://res.cloudinary.com/azex/image/upload/v1543311852/azex/shops/delisiyim.png','',1,105,1,'az.azex.web.crawler.DelisiyimCrawler',1),(106,'defacto.com.tr','https://www.defacto.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311852/azex/shops/defacto-logo.jpg','',1,106,1,'az.azex.web.crawler.DefactoCrawler',1),(107,'davidjones.com.tr','https://www.davidjones.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311851/azex/shops/davidjones.png','',1,107,1,NULL,1),(108,'damattween.com','https://www.damattween.com/','https://res.cloudinary.com/azex/image/upload/v1543311850/azex/shops/damat_tween.png','',1,108,1,NULL,1),(109,'dagi.com.tr','https://www.dagi.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311849/azex/shops/dagi.png','',1,109,1,'az.azex.web.crawler.DagiCrawler',1),(110,'collezione.com','https://www.collezione.com/','https://res.cloudinary.com/azex/image/upload/v1543311848/azex/shops/collezione.png','',1,110,1,'az.azex.web.crawler.CollezioneCrawler',1),(111,'colins.com.tr','http://www.colins.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311847/azex/shops/colins.png','',1,111,1,'az.azex.web.crawler.ColinsCrawler',1),(112,'celalgultekin.com.tr','https://www.celalgultekin.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311846/azex/shops/celalgultekin.png','',1,112,1,NULL,1),(113,'cazador.com.tr','https://www.cazador.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311846/azex/shops/cazador.png','',1,113,1,NULL,1),(114,'cannesdebonbon.com','https://www.cannesdebonbon.com/','https://res.cloudinary.com/azex/image/upload/v1543311844/azex/shops/cannesbonbon.png','',1,114,1,'az.azex.web.crawler.CannesdebonbonCrawler',1),(115,'cacharel.com.tr','https://www.cacharel.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311844/azex/shops/cacharel.png','',1,115,1,'az.azex.web.crawler.CacharelCrawler',1),(116,'brandroom.com.tr','https://www.brandroom.com.tr','https://res.cloudinary.com/azex/image/upload/v1543311844/azex/shops/brandroom_logo.png','',1,116,1,'az.azex.web.crawler.BrandroomCrawler',1),(117,'boyner.com.tr','https://www.boyner.com.tr','https://res.cloudinary.com/azex/image/upload/v1543311843/azex/shops/boyner_logo.jpg','',1,117,1,'az.azex.web.crawler.BoynerCrawler',1),(118,'beymen.com','https://www.beymen.com/','https://res.cloudinary.com/azex/image/upload/v1543311842/azex/shops/beymen.png','',1,118,1,'az.azex.web.crawler.BeymenCrawler',1),(119,'betashoes.com','https://www.betashoes.com/','https://res.cloudinary.com/azex/image/upload/v1543311841/azex/shops/betashoes.png','',1,119,1,'az.azex.web.crawler.BetashoesCrawler',1),(120,'bershka.com.tr','https://www.bershka.com/tr/','https://res.cloudinary.com/azex/image/upload/v1543311841/azex/shops/bershka.jpg','',1,120,1,NULL,1),(121,'bebefix.com','https://www.bebefix.com/','https://res.cloudinary.com/azex/image/upload/v1543311840/azex/shops/bebefix.png','',1,121,1,'az.azex.web.crawler.BebefixCrawler',1),(122,'bambistore.com.tr','https://www.bambistore.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311839/azex/shops/bambi.png','',1,122,1,NULL,1),(123,'ayyildiz.com.tr','https://www.ayyildiz.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311838/azex/shops/ayyildiz.png','',1,123,1,'az.azex.web.crawler.AyyildizCrawler',1),(124,'ayakkabionline.com','https://www.ayakkabionline.com/','https://res.cloudinary.com/azex/image/upload/v1543311837/azex/shops/ayakkabionline.png','',1,124,1,NULL,1),(125,'ayakkabidunyasi.com.tr','https://www.ayakkabidunyasi.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311836/azex/shops/ayakkabidunyasi.png','',1,125,1,'az.azex.web.crawler.AyakkabidunyasiCrawler',1),(126,'amazon.com.tr','https://www.amazon.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311835/azex/shops/amazon.com.tr.png','',1,126,1,'az.azex.web.crawler.AmazontrCrawler',1),(127,'alvinaonline.com','https://www.alvinaonline.com/','https://res.cloudinary.com/azex/image/upload/v1543311834/azex/shops/alvina.png','',1,127,1,NULL,1),(128,'aloanne.com','http://www.aloanne.com/','https://res.cloudinary.com/azex/image/upload/v1543311833/azex/shops/aloanne.png','',1,128,1,'az.azex.web.crawler.AloanneCrawler',1),(129,'aldoshoes.com.tr','https://www.aldoshoes.com.tr/','https://res.cloudinary.com/azex/image/upload/v1543311832/azex/shops/aldoshoes.png','',1,129,1,'az.azex.web.crawler.AldoshoesCrawler',1),(130,'akakce.com','https://www.akakce.com/','https://res.cloudinary.com/azex/image/upload/v1543311829/azex/shops/akakce.png','',1,130,1,'az.azex.web.crawler.AkakceCrawler',1),(131,'9ay15gun.com','https://www.9ay15gun.com/','https://res.cloudinary.com/azex/image/upload/v1543311827/azex/shops/9ay15gun.png','',1,131,1,NULL,1),(132,'1v1y.com','https://www.1v1y.com/','https://res.cloudinary.com/azex/image/upload/v1543311826/azex/shops/1Y1V.png','',1,132,1,'az.azex.web.crawler.AlvinaonlineCrawler',1);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_history`
--

DROP TABLE IF EXISTS `token_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `token_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_type` int(11) NOT NULL DEFAULT '1',
  `insert_date` datetime NOT NULL,
  `expire_date` datetime NOT NULL,
  `success` int(11) DEFAULT NULL,
  `success_date` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_history`
--

LOCK TABLES `token_history` WRITE;
/*!40000 ALTER TABLE `token_history` DISABLE KEYS */;
INSERT INTO `token_history` VALUES (1,'raminorujov@gmail.com','0:0:0:0:0:0:0:1','c040161510a0c7d716c6a8522389bcf3142a2f6ce7df235b37dc59a15331677d',1,'2019-04-06 12:38:07','2019-04-07 12:38:07',NULL,NULL,1),(2,'raminorujov@gmail.com','0:0:0:0:0:0:0:1','26c1e5d0072bf3fcd39bf704abef47a07940f6c04e504f0e92234b63e215559e',1,'2019-04-06 12:38:07','2019-04-07 12:38:07',NULL,NULL,1),(3,'raul.adgozal@gmail.com','0:0:0:0:0:0:0:1','648d32991b8ab1fce0c8840a33a76edb2a2329f4d30e61f1429ae82597c1496a',1,'2019-04-06 12:39:19','2019-04-07 12:39:19',NULL,NULL,1),(4,'raminorujov@gmail.com','0:0:0:0:0:0:0:1','b9ca5b44ee9e7b7bf2a68cdab59103d88606bad4808cbff8c7397b0f6ea247eb',1,'2019-04-06 18:43:02','2019-04-07 18:43:02',NULL,NULL,1),(5,'raminorujov@gmail.com','0:0:0:0:0:0:0:1','e7f8fa6940e5dd40e88bd5aeba1b75692e6835a58b58e00b92c351377012b8c4',1,'2019-04-06 22:48:44','2019-04-07 22:48:44',1,'2019-04-06 23:10:53',1),(6,'raminorujov@gmail.com','0:0:0:0:0:0:0:1','0681cde9452a1b0cc83e9e08116fb58d203eece5b4c2d103ebc4d810eaaef560',1,'2019-04-06 23:35:53','2019-04-06 23:35:53',NULL,NULL,1),(7,'raminorujov@gmail.com','0:0:0:0:0:0:0:1','5d0cf1e0719008b73a230af0b187e94a0296af6d3fbe69772e12c8969c1ba32d',1,'2019-04-06 23:40:26','2019-04-07 23:40:26',NULL,NULL,1);
/*!40000 ALTER TABLE `token_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_source`
--

DROP TABLE IF EXISTS `transaction_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transaction_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `multiplier` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_source`
--

LOCK TABLES `transaction_source` WRITE;
/*!40000 ALTER TABLE `transaction_source` DISABLE KEYS */;
INSERT INTO `transaction_source` VALUES (1,'Türkiyə daxili kargo',-1,1,1),(2,'Beynəlxalq kargo',-1,2,1),(3,'Təcili Sifariş',-1,3,1),(4,'Kuryer Xidməti',-1,4,1),(5,'Onlayn Ödəniş (PayTR)',1,5,1),(6,'Onlayn Ödəniş (AZ)',1,6,1),(7,'Pos Terminal Ödənişi',1,7,1),(8,'Nağd Ödəniş',1,8,1),(9,'Bonus Balans',1,9,1),(10,'Kampaniya',1,10,1);
/*!40000 ALTER TABLE `transaction_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_USER_ID_idx` (`user_id`,`status`),
  KEY `FK_ROLE_ID_idx` (`role_id`,`status`),
  CONSTRAINT `FK_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pin_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `phone1` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone2` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` date NOT NULL,
  `registration_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_expire_date` datetime DEFAULT NULL,
  `sms_verification_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_verification_status` int(11) NOT NULL DEFAULT '0',
  `sms_verification_date` datetime DEFAULT NULL,
  `activation_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `user_status` int(11) NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-11 15:16:07
