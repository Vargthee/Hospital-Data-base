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
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `DoctorID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Specialty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`DoctorID`),
  KEY `idx_DoctorID` (`DoctorID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr. Olivia','Smith','Cardiologist'),(2,'Dr. James','Johnson','Neurologist'),(3,'Dr. Emily','Brown','Dermatologist'),(4,'Dr. Robert','Wilson','Orthopedist'),(5,'Dr. Jessica','Harris','Gastroenterologist'),(6,'Dr. Daniel','Clark','Cardiologist'),(7,'Dr. Sarah','Martinez','Neurologist'),(8,'Dr. Michael','Moore','Orthopedist'),(9,'Dr. Emily','Garcia','Dermatologist'),(10,'Dr. William','Taylor','Gastroenterologist'),(11,'Dr. Jennifer','Davis','Oncologist'),(12,'Dr. Kevin','Anderson','Pediatrician'),(13,'Dr. Sophia','White','Surgeon'),(14,'Dr. Benjamin','Smith','ENT Specialist'),(15,'Dr. Ava','Perez','Urologist'),(16,'Dr. David','Roberts','Nephrologist'),(17,'Dr. Grace','Jones','Radiologist'),(18,'Dr. Mason','Wilson','Psychiatrist'),(19,'Dr. Emily','Hall','Internal Medicine'),(20,'Dr. John','Martin','Endocrinologist'),(21,'Dr. Victoria','Young','Cardiologist'),(22,'Dr. Michael','Williams','Neurologist'),(23,'Dr. Amelia','Garcia','Dermatologist'),(24,'Dr. Daniel','Taylor','Orthopedist'),(25,'Dr. Grace','Harris','Gastroenterologist'),(26,'Dr. Benjamin','Clark','Cardiologist'),(27,'Dr. Lily','Moore','Neurologist'),(28,'Dr. David','Thomas','Orthopedist'),(29,'Dr. Olivia','Hall','Dermatologist'),(30,'Dr. William','Wilson','Gastroenterologist'),(31,'Dr. Michael','Anderson','Oncologist'),(32,'Dr. Sophia','Roberts','Pediatrician'),(33,'Dr. Andrew','Davis','Surgeon'),(34,'Dr. Emily','Lewis','ENT Specialist'),(35,'Dr. James','Jones','Urologist'),(36,'Dr. Victoria','Young','Nephrologist'),(37,'Dr. Ava','Hall','Radiologist'),(38,'Dr. Daniel','Martin','Psychiatrist'),(39,'Dr. Sophia','White','Internal Medicine'),(40,'Dr. Benjamin','Perez','Endocrinologist'),(41,'Dr. Olivia','Moore','Cardiologist'),(42,'Dr. Emily','Garcia','Neurologist'),(43,'Dr. James','Wilson','Dermatologist'),(44,'Dr. Victoria','Taylor','Orthopedist'),(45,'Dr. Mason','Harris','Gastroenterologist'),(46,'Dr. Emily','Smith','Cardiologist'),(47,'Dr. Benjamin','Thomas','Neurologist'),(48,'Dr. David','Young','Orthopedist');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
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
