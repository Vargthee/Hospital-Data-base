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
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visits` (
  `VisitID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  `ServiceID` int DEFAULT NULL,
  `VisitDate` date DEFAULT NULL,
  PRIMARY KEY (`VisitID`),
  KEY `PatientID` (`PatientID`),
  KEY `DoctorID` (`DoctorID`),
  KEY `idx_DepartmentID` (`DepartmentID`),
  KEY `idx_ServiceID` (`ServiceID`),
  CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  CONSTRAINT `visits_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`),
  CONSTRAINT `visits_ibfk_3` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  CONSTRAINT `visits_ibfk_4` FOREIGN KEY (`ServiceID`) REFERENCES `services` (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (1,1,1,1,1,'2023-01-15'),(2,2,2,1,2,'2023-02-25'),(3,3,3,1,3,'2022-04-10'),(4,3,2,1,1,'2022-04-10'),(5,3,1,1,1,'2022-04-10'),(6,3,3,1,2,'2022-04-12'),(7,3,4,1,2,'2022-04-12'),(8,3,1,1,3,'2022-04-12'),(9,3,2,1,3,'2022-04-12'),(10,3,3,1,2,'2022-04-12'),(11,3,3,1,2,'2022-04-12'),(12,4,4,2,4,'2023-05-15'),(13,5,5,3,7,'2023-07-25'),(14,6,6,4,9,'2023-01-02'),(15,7,7,1,1,'2023-01-03'),(16,8,8,1,2,'2023-01-04'),(17,9,9,1,3,'2023-01-05'),(18,10,10,1,3,'2023-01-06'),(19,11,11,1,3,'2023-01-07'),(20,12,12,1,3,'2023-01-08'),(21,13,13,1,3,'2023-01-09'),(22,14,14,1,4,'2023-01-10'),(23,15,15,1,4,'2023-01-11'),(24,16,16,1,2,'2023-01-12'),(25,17,17,4,10,'2023-01-13'),(26,18,18,4,10,'2023-01-14'),(27,19,19,4,10,'2023-01-15'),(28,20,20,4,9,'2023-01-16'),(29,21,21,3,8,'2023-01-17'),(30,22,22,2,6,'2023-01-18'),(31,23,23,2,5,'2023-01-19'),(32,24,24,4,9,'2023-01-20'),(33,25,25,3,7,'2023-01-21'),(34,26,26,2,4,'2023-01-22'),(35,27,27,4,10,'2023-01-23'),(36,28,28,3,8,'2023-01-24'),(37,29,29,2,5,'2023-01-25'),(38,30,30,1,1,'2023-01-26');
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
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
