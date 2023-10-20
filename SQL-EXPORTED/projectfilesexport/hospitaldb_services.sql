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
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `ServiceID` int NOT NULL AUTO_INCREMENT,
  `ServiceName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Cardiology Consultation',120.00),(2,'Cardiac Stress Test',200.00),(3,'Cardiac Catheterization',500.00),(4,'Neurology Consultation',150.00),(5,'MRI Brain Scan',300.00),(6,'EEG Test',180.00),(7,'Dermatology Evaluation',100.00),(8,'Skin Biopsy',150.00),(9,'Laser Hair Removal',250.00),(10,'Orthopedic Surgery',600.00),(11,'Orthopedic Consultation',130.00),(12,'Physical Therapy',90.00),(13,'Gastroenterology Checkup',180.00),(14,'Colonoscopy',250.00),(15,'Liver Function Test',120.00),(16,'Oncology Screening',250.00),(17,'Chemotherapy Session',350.00),(18,'Radiation Therapy',400.00),(19,'Pediatric Checkup',90.00),(20,'Vaccination',50.00),(21,'Child Growth Assessment',80.00),(22,'General Surgery',800.00),(23,'Appendectomy',500.00),(24,'Gallbladder Removal',700.00),(25,'ENT Specialist Visit',110.00),(26,'Hearing Test',80.00),(27,'Tonsillectomy',400.00),(28,'Urology Consultation',140.00),(29,'Cystoscopy',250.00),(30,'Prostate Exam',120.00),(31,'Nephrology Consultation',160.00),(32,'Kidney Function Test',100.00),(33,'Dialysis Session',350.00),(34,'Radiology X-Ray',80.00),(35,'CT Scan',180.00),(36,'MRI Imaging',250.00),(37,'Psychiatry Session',120.00),(38,'Counseling Session',90.00),(39,'Medication Management',60.00),(40,'Internal Medicine Consultation',150.00),(41,'Blood Pressure Check',50.00);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
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
