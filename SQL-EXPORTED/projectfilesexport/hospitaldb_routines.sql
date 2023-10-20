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
-- Dumping events for database 'hospitaldb'
--

--
-- Dumping routines for database 'hospitaldb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-21  1:05:10
