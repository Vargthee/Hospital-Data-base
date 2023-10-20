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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `PatientID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AdmissionDate` date DEFAULT NULL,
  `DischargeDate` date DEFAULT NULL,
  PRIMARY KEY (`PatientID`),
  KEY `idx_AdmissionDate` (`AdmissionDate`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'John','Doe','2022-01-01','2022-01-10'),(2,'Alice','Smith','2022-02-15','2022-02-25'),(3,'Bob','Johnson','2022-04-10','2022-04-20'),(4,'Mahsa','Nejad','2022-04-10','2022-04-20'),(5,'Radin','Yazdani','2022-04-10','2022-04-20'),(6,'Emma','Williams','2022-05-01','2022-05-12'),(7,'Michael','Brown','2022-07-10','2022-07-20'),(8,'Olivia','Davis','2022-08-15','2022-08-25'),(9,'John','Doe','2022-01-10','2022-01-15'),(10,'Alice','Smith','2022-02-05','2022-02-12'),(11,'Robert','Johnson','2022-03-20','2022-03-27'),(12,'Linda','Brown','2022-04-15','2022-04-21'),(13,'David','Wilson','2022-05-12','2022-05-20'),(14,'Mary','Davis','2022-06-10','2022-06-20'),(15,'Michael','Jones','2022-07-05','2022-07-12'),(16,'Jennifer','Taylor','2022-08-20','2022-08-27'),(17,'William','Miller','2022-09-15','2022-09-21'),(18,'Sarah','Anderson','2022-10-12','2022-10-20'),(19,'James','Brown','2022-11-10','2022-11-20'),(20,'Karen','Harris','2022-12-05','2022-12-12'),(21,'Thomas','White','2023-01-20','2023-01-27'),(22,'Susan','Moore','2023-02-15','2023-02-21'),(23,'Richard','Hall','2023-03-12','2023-03-20'),(24,'Maria','Garcia','2023-04-05','2023-04-15'),(25,'Daniel','Moore','2023-04-10','2023-04-20'),(26,'Elizabeth','Perez','2023-05-12','2023-05-22'),(27,'Samuel','Smith','2023-05-20','2023-05-30'),(28,'Olivia','Rodriguez','2023-06-01','2023-06-11'),(29,'Benjamin','Harris','2023-06-10','2023-06-20'),(30,'Alexander','Lewis','2023-07-10','2023-07-20'),(31,'Chloe','Johnson','2023-07-15','2023-07-25'),(32,'Evelyn','Turner','2023-08-05','2023-08-15'),(33,'Thomas','Davis','2023-08-10','2023-08-20'),(34,'Grace','Scott','2023-09-01','2023-09-11'),(35,'William','Walker','2023-09-10','2023-09-20'),(36,'Lily','King','2023-10-01','2023-10-11'),(37,'David','Martinez','2023-10-05','2023-10-15'),(38,'Harper','Phillips','2023-11-05','2023-11-15'),(39,'Jack','Scott','2023-11-10','2023-11-20'),(40,'Emily','Turner','2023-12-01','2023-12-11'),(41,'Daniel','Green','2023-12-05','2023-12-15'),(42,'Ella','Carter','2024-01-01','2024-01-11'),(43,'Matthew','King','2024-01-10','2024-01-20');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
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
