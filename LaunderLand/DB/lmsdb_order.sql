-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: lmsdb
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `itemCount` int DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `orderDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `pickupDate` varchar(45) DEFAULT NULL,
  `pickupLocation` varchar(45) DEFAULT NULL,
  `pickupTime` varchar(45) DEFAULT NULL,
  `dropOffLocation` varchar(45) DEFAULT NULL,
  `dropOffTime` varchar(45) DEFAULT NULL,
  `dropOffDate` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `serviceType` varchar(45) DEFAULT 'All',
  `userId` int NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `userId_idx` (`userId`),
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (4,78,'8.00 am to 10.00 am','2020-04-23 14:30:11','2020-04-17','Malabe','3.00 pm - 6.00 pm','Malabe','8.00 am - 10.00 am',NULL,NULL,'All',10),(30,15,'1kg - 5kg','2020-04-26 23:59:45','2020-04-30','Malabe','12.00 pm - 2.00 pm','Malabe','3.00 pm - 6.00 pm',NULL,NULL,'All',6),(33,10,'1kg - 5kg','2020-04-27 08:19:41','2020-04-30','sfgs','8.00 am - 10.00 am','Koswatte','12.00 pm - 2.00 pm',NULL,NULL,'All',6),(40,5,'10kg - 15kg','2020-05-03 22:24:13','2020-05-30','Nugegoda','12.00 pm - 2.00 pm','Nugegoda','3.00 pm - 6.00 pm','2020-05-31','','Wash & Iron',22),(44,5,'10kg - 15kg','2020-05-04 01:29:55','2020-05-30','Malabe','3.00 pm - 6.00 pm','Malabe','3.00 pm - 6.00 pm','2020-05-29','','Wash & Fold ',26),(46,15,'5kg - 10kg','2020-05-04 01:50:52','2020-05-31','Nugegoda','3.00 pm - 6.00 pm','Nugegoda','3.00 pm - 6.00 pm','2020-05-30','','Wash & Fold ',27),(47,2,'1kg - 5kg','2020-05-04 01:51:24','2020-05-31','Matara','3.00 pm - 6.00 pm','Galle','3.00 pm - 6.00 pm','2020-05-31','',' Dry Clean',27),(48,15,'10kg - 15kg','2020-05-04 02:23:09','2020-05-29','Malabe','3.00 pm - 6.00 pm','Malabe','6.00 pm - 8.00 pm','2020-05-31','','Wash & Fold ',28),(49,15,'10kg - 15kg','2020-05-04 02:24:11','2020-05-30','Matara','3.00 pm - 6.00 pm','Koswatte','12.00 pm - 2.00 pm','2020-05-31','','Wash & Fold ',28),(51,2,'1kg - 5kg','2020-05-06 13:16:04','2020-05-31','Malabe','12.00 pm - 2.00 pm','Malabe','3.00 pm - 6.00 pm','2020-06-03','','Wash & Fold ',25),(53,5,'5kg - 10kg','2020-05-11 17:52:59','2020-05-13','Malabe','3.00 pm - 6.00 pm','Malabe','12.00 pm - 2.00 pm','2020-05-15','','Wash & Fold ',25);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-12  2:14:14
