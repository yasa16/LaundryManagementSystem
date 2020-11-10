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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `fName` varchar(45) NOT NULL,
  `lName` varchar(45) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `contactNo` varchar(10) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`,`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nishan','Niriella','NishanNiriella99','nishandilip12@ymail.com','0755292982','nishanniriella12345'),(2,'John','Marshal','Marshal95','marshal95@ymail.com','0775292984','marshal12345'),(3,'Yasasmi','Dhanarathna','Nikeshala98','yasa@gmail.com','0725292981','yasami12345'),(4,'Heshiki','Halpe','Hesh98','hesh@gmail.com','0715292981','heshiki12345'),(5,'Anjana','De Seram','Anjana99','anjana@gmail.com','0785292981','anjana12345'),(6,'123','123456789','1234','1234@gmail.com','12345789','123'),(7,'user','null','user','user@gmail.com','12345','user'),(8,'user','user','user','user@gmail.com','12345','user'),(9,'John','Silva','silva','silva@yahoo.com','12345','silva'),(10,'789','789','789','789@gmail.com','789','789'),(11,'456','456','456','456@gmail.com','456','456'),(12,'456','456','456','456@gmail.com','456','456'),(13,'','','','','',''),(14,'Cat','Castrol','cat123','cat12@gmail.com','0112544104','123'),(15,'German','Shepherd','german','german@gmail.com','3216549870','123'),(16,'456','456','456','456','456','456'),(17,'456','456','456','456','456','456'),(18,'Kitty','Kan','kitty','kitty@ymail.com','3216549871','123'),(19,'Bat','Man','bat','bat123@gmail.com','1234567890','123'),(20,'Bat','Man','bat','bat123@gmail.com','1234567890','123'),(21,'Bat','Man','bat','bat123@gmail.com','1234567890','123'),(22,'Namal','Karuppu','namal97','namal@gmail.com','0115487962','123'),(23,'Kamal','Perera','Kamal','kama@ymail.com','1234567891','kamal'),(24,'Test2','Customer','Test','test@gmail.com','1234567891','123'),(25,'1234','123','123','123456@gmail.com','1234567891','123'),(26,'user','test','user','user@gmail.com','0112222333','123'),(27,'Kamal','Silva','silvak','kamalsilva@gmail.com','0112578425','123'),(28,'Nirmal','Perera','nirmal','perera@gmail.com','0112235478','123'),(29,'Sasitha','Bandara','sasi','banda@gmail.com','0714520301','123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
