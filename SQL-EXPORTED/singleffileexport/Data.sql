CREATE DATABASE  IF NOT EXISTS `hospitaldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospitaldb`;
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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `DepartmentID` int NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Inpatient'),(2,'Operating Room'),(3,'Emergency'),(4,'Intensive Care');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Temporary view structure for view `report_1_patients_with_10_days_staying`
--

DROP TABLE IF EXISTS `report_1_patients_with_10_days_staying`;
/*!50001 DROP VIEW IF EXISTS `report_1_patients_with_10_days_staying`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `report_1_patients_with_10_days_staying` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Patientid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `report_2_doctors_visited_patients`
--

DROP TABLE IF EXISTS `report_2_doctors_visited_patients`;
/*!50001 DROP VIEW IF EXISTS `report_2_doctors_visited_patients`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `report_2_doctors_visited_patients` AS SELECT 
 1 AS `DoctorID`,
 1 AS `FirstName`,
 1 AS `LastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `report_3_patieng_surgery_spring`
--

DROP TABLE IF EXISTS `report_3_patieng_surgery_spring`;
/*!50001 DROP VIEW IF EXISTS `report_3_patieng_surgery_spring`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `report_3_patieng_surgery_spring` AS SELECT 
 1 AS `PatientID`,
 1 AS `PatientFirstName`,
 1 AS `PatientLastName`,
 1 AS `DoctorID`,
 1 AS `DoctorFirstName`,
 1 AS `DoctorLastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `report_4_services_of_inpatient_dept`
--

DROP TABLE IF EXISTS `report_4_services_of_inpatient_dept`;
/*!50001 DROP VIEW IF EXISTS `report_4_services_of_inpatient_dept`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `report_4_services_of_inpatient_dept` AS SELECT 
 1 AS `ServiceID`,
 1 AS `ServiceName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `report_5_doctor_service`
--

DROP TABLE IF EXISTS `report_5_doctor_service`;
/*!50001 DROP VIEW IF EXISTS `report_5_doctor_service`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `report_5_doctor_service` AS SELECT 
 1 AS `ServiceName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `report_6_cost_of_services`
--

DROP TABLE IF EXISTS `report_6_cost_of_services`;
/*!50001 DROP VIEW IF EXISTS `report_6_cost_of_services`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `report_6_cost_of_services` AS SELECT 
 1 AS `TotalCost`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Table structure for table `surgeries`
--

DROP TABLE IF EXISTS `surgeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surgeries` (
  `SurgeryID` int NOT NULL AUTO_INCREMENT,
  `PatientID` int DEFAULT NULL,
  `DoctorID` int DEFAULT NULL,
  `SurgeryDate` date DEFAULT NULL,
  `DepartmentID` int DEFAULT NULL,
  PRIMARY KEY (`SurgeryID`),
  KEY `PatientID` (`PatientID`),
  KEY `DoctorID` (`DoctorID`),
  KEY `idx_SurgeryDate` (`SurgeryDate`),
  KEY `surgeries_ibfk_3_idx` (`DepartmentID`),
  CONSTRAINT `surgeries_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  CONSTRAINT `surgeries_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`),
  CONSTRAINT `surgeries_ibfk_3` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surgeries`
--

LOCK TABLES `surgeries` WRITE;
/*!40000 ALTER TABLE `surgeries` DISABLE KEYS */;
INSERT INTO `surgeries` VALUES (1,1,1,'2022-01-05',1),(2,2,2,'2022-02-20',2),(3,3,3,'2022-04-15',3),(4,4,3,'2022-04-15',3),(5,5,3,'2022-04-15',3),(6,6,4,'2022-05-05',4),(7,7,5,'2022-07-15',1),(8,8,6,'2022-08-20',2),(9,9,7,'2022-01-12',3),(10,10,8,'2022-02-11',4),(11,11,9,'2022-03-25',1),(12,12,10,'2022-04-18',2),(13,13,11,'2022-05-15',3),(14,14,12,'2022-06-15',4),(15,15,13,'2022-07-10',1),(16,16,14,'2022-08-22',2),(17,17,15,'2022-09-17',3);
/*!40000 ALTER TABLE `surgeries` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `surgeries_check_date` BEFORE INSERT ON `surgeries` FOR EACH ROW BEGIN
    DECLARE admission DATE;
    DECLARE discharge DATE;

    -- Retrieve the AdmissionDate and DischargeDate for the patient
    SELECT AdmissionDate, DischargeDate
    INTO admission, discharge
    FROM hospitaldb.patients
    WHERE PatientID = NEW.PatientID;

    -- Check if SurgeryDate is within the AdmissionDate and DischargeDate range
    IF NEW.SurgeryDate < admission OR NEW.SurgeryDate > discharge THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'SurgeryDate must be between AdmissionDate and DischargeDate.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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

--
-- Dumping events for database 'hospitaldb'
--

--
-- Dumping routines for database 'hospitaldb'
--

--
-- Final view structure for view `report_1_patients_with_10_days_staying`
--

/*!50001 DROP VIEW IF EXISTS `report_1_patients_with_10_days_staying`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report_1_patients_with_10_days_staying` AS select `patients`.`FirstName` AS `FirstName`,`patients`.`LastName` AS `LastName`,`patients`.`PatientID` AS `Patientid` from `patients` where ((`patients`.`AdmissionDate` = '2022-04-10') and ((to_days(`patients`.`DischargeDate`) - to_days(`patients`.`AdmissionDate`)) >= 10)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report_2_doctors_visited_patients`
--

/*!50001 DROP VIEW IF EXISTS `report_2_doctors_visited_patients`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report_2_doctors_visited_patients` AS select distinct `d`.`DoctorID` AS `DoctorID`,`d`.`FirstName` AS `FirstName`,`d`.`LastName` AS `LastName` from `doctors` `d` where `d`.`DoctorID` in (select distinct `v`.`DoctorID` from (`visits` `v` join `report_1_patients_with_10_days_staying` `p` on((`v`.`PatientID` = `p`.`Patientid`))) where (`v`.`DepartmentID` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report_3_patieng_surgery_spring`
--

/*!50001 DROP VIEW IF EXISTS `report_3_patieng_surgery_spring`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report_3_patieng_surgery_spring` AS select `p`.`PatientID` AS `PatientID`,`p`.`FirstName` AS `PatientFirstName`,`p`.`LastName` AS `PatientLastName`,`d`.`DoctorID` AS `DoctorID`,`d`.`FirstName` AS `DoctorFirstName`,`d`.`LastName` AS `DoctorLastName` from ((`patients` `p` join `surgeries` `s` on((`p`.`PatientID` = `s`.`PatientID`))) join `doctors` `d` on((`s`.`DoctorID` = `d`.`DoctorID`))) where ((month(`s`.`SurgeryDate`) in (3,4,5)) and (`d`.`FirstName` = 'Dr. Emily') and (`d`.`LastName` = 'Brown')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report_4_services_of_inpatient_dept`
--

/*!50001 DROP VIEW IF EXISTS `report_4_services_of_inpatient_dept`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report_4_services_of_inpatient_dept` AS select distinct `v`.`ServiceID` AS `ServiceID`,`s`.`ServiceName` AS `ServiceName` from (`visits` `v` join `services` `s` on((`v`.`ServiceID` = `s`.`ServiceID`))) where (`v`.`DepartmentID` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report_5_doctor_service`
--

/*!50001 DROP VIEW IF EXISTS `report_5_doctor_service`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report_5_doctor_service` AS select `s`.`ServiceName` AS `ServiceName` from ((`doctors` `d` join `servicedr` `sd` on((`d`.`DoctorID` = `sd`.`DoctorID`))) join `services` `s` on((`sd`.`ServiceID` = `s`.`ServiceID`))) where ((`d`.`FirstName` = 'Dr. Emily') and (`d`.`LastName` = 'Brown')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `report_6_cost_of_services`
--

/*!50001 DROP VIEW IF EXISTS `report_6_cost_of_services`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `report_6_cost_of_services` AS select sum(`s`.`Cost`) AS `TotalCost` from ((((`visits` `v` join `patients` `p` on((`v`.`PatientID` = `p`.`PatientID`))) join `doctors` `d` on((`v`.`DoctorID` = `d`.`DoctorID`))) join `services` `s` on((`v`.`ServiceID` = `s`.`ServiceID`))) join `departments` `dep` on((`v`.`DepartmentID` = `dep`.`DepartmentID`))) where ((`v`.`DepartmentID` = 1) and (`p`.`FirstName` = 'Bob') and (`p`.`LastName` = 'Johnson')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-21  1:06:23
