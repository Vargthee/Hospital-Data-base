-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitaldb
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `servicedr`
--

DROP TABLE IF EXISTS `servicedr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicedr` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DoctorID` int NOT NULL,
  `ServiceID` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DoctorID` (`DoctorID`,`ServiceID`),
  KEY `s_ifk_idx` (`ServiceID`),
  KEY `dr_ifk_idx` (`DoctorID`),
  CONSTRAINT `dr_ifk` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`),
  CONSTRAINT `s_ifk` FOREIGN KEY (`ServiceID`) REFERENCES `services` (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicedr`
--

LOCK TABLES `servicedr` WRITE;
/*!40000 ALTER TABLE `servicedr` DISABLE KEYS */;
INSERT INTO `servicedr` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,3,7),(8,3,8),(9,4,9),(10,4,10),(11,5,11),(12,5,12),(13,6,13),(14,7,14),(15,8,15),(16,9,16),(17,10,17),(18,11,18),(19,12,19),(20,13,20),(21,14,21),(22,15,22),(23,16,23),(24,17,24),(25,18,25),(26,19,26),(27,20,27),(28,21,28),(29,22,29),(30,23,30),(31,24,31),(32,25,32),(33,26,33),(34,27,34),(35,28,35),(36,29,36),(37,30,37),(38,31,38),(39,32,39),(40,33,40),(41,34,41),(42,35,1),(43,36,2),(44,37,3),(45,38,4),(46,39,5),(47,40,6),(48,41,7),(49,42,8),(50,43,9),(51,44,10),(52,45,11),(53,46,12),(54,47,13),(55,48,14);
/*!40000 ALTER TABLE `servicedr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-21  1:05:10
