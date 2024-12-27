-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northeastern_university
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `Attendance_ID` int NOT NULL AUTO_INCREMENT,
  `NUID` varchar(5) NOT NULL,
  `Entry_Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Access_Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`Attendance_ID`),
  KEY `NUID` (`NUID`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`NUID`) REFERENCES `person` (`NUID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'03510','2024-12-12 23:58:26',1),(2,'08691','2024-12-12 23:58:57',1),(4,'03510','2024-12-13 00:05:27',1),(6,'03510','2024-12-13 00:08:06',1),(7,'08691','2024-12-13 00:26:50',1),(8,'06030','2024-12-13 00:31:22',0),(9,'08691','2024-12-13 03:11:14',1),(10,'03510','2024-12-13 13:48:30',1),(11,'08691','2024-12-13 13:48:33',1),(12,'03510','2024-12-13 14:09:19',1);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14  3:40:51


-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northeastern_university
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `Equipment_ID` int NOT NULL AUTO_INCREMENT,
  `Equipment_Name` varchar(100) NOT NULL,
  `Equipment_Type` enum('Cardio','Strength','Flexibility','Other') NOT NULL,
  `Status` enum('Operational','Under Maintenance','Out of Service') NOT NULL DEFAULT 'Operational',
  `Purchase_Date` date NOT NULL,
  `Last_Service_Date` date DEFAULT NULL,
  PRIMARY KEY (`Equipment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'Treadmill','Cardio','Operational','2022-01-15','2024-12-13'),(2,'Bench Press','Strength','Operational','2023-03-10',NULL);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14  3:40:51

-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northeastern_university
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `equipment_maintenance`
--

DROP TABLE IF EXISTS `equipment_maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment_maintenance` (
  `Maintenance_ID` int NOT NULL AUTO_INCREMENT,
  `Equipment_ID` int NOT NULL,
  `Serviced_By` varchar(5) NOT NULL,
  `Service_Date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Maintenance_ID`),
  KEY `Equipment_ID` (`Equipment_ID`),
  KEY `Serviced_By` (`Serviced_By`),
  CONSTRAINT `equipment_maintenance_ibfk_1` FOREIGN KEY (`Equipment_ID`) REFERENCES `equipment` (`Equipment_ID`) ON DELETE CASCADE,
  CONSTRAINT `equipment_maintenance_ibfk_2` FOREIGN KEY (`Serviced_By`) REFERENCES `person` (`NUID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_maintenance`
--

LOCK TABLES `equipment_maintenance` WRITE;
/*!40000 ALTER TABLE `equipment_maintenance` DISABLE KEYS */;
INSERT INTO `equipment_maintenance` VALUES (1,1,'08691','2024-12-13 02:48:19','Replaced motor and cleaned.'),(2,1,'08691','2024-12-13 02:49:12','Replaced motor and cleaned.'),(3,1,'08691','2024-12-13 02:50:15','Replaced motor and cleaned.'),(4,1,'08691','2024-12-13 14:21:20','sdgfa.');
/*!40000 ALTER TABLE `equipment_maintenance` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Update_Last_Service_Date` AFTER INSERT ON `equipment_maintenance` FOR EACH ROW BEGIN
    -- Update the Last_Service_Date in the Equipment table
    UPDATE Equipment
    SET Last_Service_Date = NEW.Service_Date
    WHERE Equipment_ID = NEW.Equipment_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14  3:40:50
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northeastern_university
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `gym_staff`
--

DROP TABLE IF EXISTS `gym_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gym_staff` (
  `Staff_ID` int NOT NULL AUTO_INCREMENT,
  `NUID` varchar(5) NOT NULL,
  `Role` enum('Fitness Consultant','Fitness Assistant','Fitness Trainer','Fitness Consultant Supervisor','Fitness Assistant Supervisor','Building Supervisor') NOT NULL,
  PRIMARY KEY (`Staff_ID`),
  KEY `NUID` (`NUID`),
  CONSTRAINT `gym_staff_ibfk_1` FOREIGN KEY (`NUID`) REFERENCES `person` (`NUID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_staff`
--

LOCK TABLES `gym_staff` WRITE;
/*!40000 ALTER TABLE `gym_staff` DISABLE KEYS */;
INSERT INTO `gym_staff` VALUES (1,'03510','Fitness Consultant'),(2,'05844','Fitness Assistant'),(4,'08219','Fitness Consultant'),(6,'01313','Fitness Consultant'),(7,'03510','Fitness Assistant'),(8,'01729','Fitness Trainer'),(9,'03317','Fitness Trainer'),(13,'09070','Fitness Assistant Supervisor');
/*!40000 ALTER TABLE `gym_staff` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Check_Student_Only` BEFORE INSERT ON `gym_staff` FOR EACH ROW BEGIN
    DECLARE student_count INT;
    -- Check if the NUID exists in the Person table with Type = 'Student'
    SELECT COUNT(*) INTO student_count
    FROM Person
    WHERE NUID = NEW.NUID AND Type = 'Student';

    -- If not a student, raise an error
    IF student_count = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Only students can be added as gym staff.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14  3:40:50
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northeastern_university
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `NUID` varchar(5) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Type` enum('Student','Employee','Faculty') NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Recreation_Access` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`NUID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('01313','Aarav','Reddy','Student','aarav.reddy@example.com',1),('01729','Meera','Reddy','Student','meera.reddy@example.com',0),('02397','Aditya','Kumar','Student','aditya.kumar@example.com',0),('03039','Sneha','Bose','Employee','sneha.bose@example.com',0),('03265','Kabir','Patel','Employee','kabir.patel@example.com',0),('03317','Neha','Jain','Student','neha.jain@example.com',0),('03492','Arjun','Sinha','Employee','arjun.sinha@example.com',0),('03510','Aarav','Kumar','Student','aarav.kumar@example.com',1),('03777','Aryan','Singh','Faculty','aryan.singh@example.com',0),('04612','Meera','Patel','Employee','meera.patel@example.com',1),('04758','Sneha','Singh','Employee','sneha.singh@example.com',0),('04886','Aarav','Agarwal','Employee','aarav.agarwal@example.com',1),('05283','Sneha','Desai','Student','sneha.desai@example.com',0),('05649','Neha','Desai','Employee','neha.desai@example.com',1),('05844','Isha','Patel','Student','isha.patel@example.com',1),('06030','Ronak','Mishra','Faculty','ron.mishra@example.com',0),('06900','Aarav','Pillai','Faculty','aarav.pillai@example.com',0),('06924','Emily','Brown','Employee','emily.brown@example.com',1),('07003','Rahul','Jain','Faculty','rahul.jain@example.com',1),('07614','Rohit','Singh','Employee','rohit.singh@example.com',0),('07768','Mugali','Shiv','Student','s.aasrad@example.com',1),('08219','Rishab','Shukla','Student','rishab.shukla@example.com',1),('08519','Aditya','Singh','Faculty','aditya.singh@example.com',0),('08691','John','Doe','Faculty','john.doe@example.com',1),('09070','Chetan','Warad','Student','c.warad@example.com',1),('09123','Riya','Desai','Employee','riya.desai@example.com',0),('09588','Arjun','Chatterjee','Employee','arjun.chatterjee@example.com',0);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Generate_NUID` BEFORE INSERT ON `person` FOR EACH ROW BEGIN
    DECLARE random_suffix INT;
    SET random_suffix = FLOOR(1000 + (RAND() * 9000)); -- Generate a 4-digit random number
    SET NEW.NUID = LPAD(random_suffix, 5, '0'); -- Prefix '00' to make it 5 characters
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14  3:40:50
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northeastern_university
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Temporary view structure for view `biweekly_salary_view`
--

DROP TABLE IF EXISTS `biweekly_salary_view`;
/*!50001 DROP VIEW IF EXISTS `biweekly_salary_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `biweekly_salary_view` AS SELECT 
 1 AS `NUID`,
 1 AS `Full_Name`,
 1 AS `Biweekly_Salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `live_list`
--

DROP TABLE IF EXISTS `live_list`;
/*!50001 DROP VIEW IF EXISTS `live_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `live_list` AS SELECT 
 1 AS `NUID`,
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Entry_Time`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `live_count`
--

DROP TABLE IF EXISTS `live_count`;
/*!50001 DROP VIEW IF EXISTS `live_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `live_count` AS SELECT 
 1 AS `Current_Members`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `gym_staff_view`
--

DROP TABLE IF EXISTS `gym_staff_view`;
/*!50001 DROP VIEW IF EXISTS `gym_staff_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gym_staff_view` AS SELECT 
 1 AS `Staff_ID`,
 1 AS `NUID`,
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Role`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `session_summary`
--

DROP TABLE IF EXISTS `session_summary`;
/*!50001 DROP VIEW IF EXISTS `session_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `session_summary` AS SELECT 
 1 AS `Session_ID`,
 1 AS `Program_Name`,
 1 AS `Trainer_NUID`,
 1 AS `Max_Seats`,
 1 AS `Booked_Seats`,
 1 AS `Remaining_Seats`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `staff_timesheet`
--

DROP TABLE IF EXISTS `staff_timesheet`;
/*!50001 DROP VIEW IF EXISTS `staff_timesheet`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `staff_timesheet` AS SELECT 
 1 AS `Timesheet_ID`,
 1 AS `NUID`,
 1 AS `Clock_In`,
 1 AS `Clock_Out`,
 1 AS `Hours_Worked`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `biweekly_salary_view`
--

/*!50001 DROP VIEW IF EXISTS `biweekly_salary_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `biweekly_salary_view` AS select `g`.`NUID` AS `NUID`,concat(`p`.`First_Name`,' ',`p`.`Last_Name`) AS `Full_Name`,`Calculate_Biweekly_Salary`(`g`.`NUID`) AS `Biweekly_Salary` from (`gym_staff` `g` join `person` `p` on((`g`.`NUID` = `p`.`NUID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `live_list`
--

/*!50001 DROP VIEW IF EXISTS `live_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `live_list` AS select `a`.`NUID` AS `NUID`,`p`.`First_Name` AS `First_Name`,`p`.`Last_Name` AS `Last_Name`,`a`.`Entry_Time` AS `Entry_Time` from (`attendance` `a` join `person` `p` on((`a`.`NUID` = `p`.`NUID`))) where ((`a`.`Access_Status` = true) and (`a`.`Entry_Time` >= (now() - interval 2 hour))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `live_count`
--

/*!50001 DROP VIEW IF EXISTS `live_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `live_count` AS select count(0) AS `Current_Members` from `attendance` where (`attendance`.`Entry_Time` >= (now() - interval 2 hour)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gym_staff_view`
--

/*!50001 DROP VIEW IF EXISTS `gym_staff_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gym_staff_view` AS select `gs`.`Staff_ID` AS `Staff_ID`,`gs`.`NUID` AS `NUID`,`p`.`First_Name` AS `First_Name`,`p`.`Last_Name` AS `Last_Name`,`gs`.`Role` AS `Role` from (`gym_staff` `gs` join `person` `p` on((`gs`.`NUID` = `p`.`NUID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_summary`
--

/*!50001 DROP VIEW IF EXISTS `session_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `session_summary` AS select `s`.`Session_ID` AS `Session_ID`,`s`.`Program_Name` AS `Program_Name`,`s`.`Trainer_NUID` AS `Trainer_NUID`,`s`.`Max_Seats` AS `Max_Seats`,`s`.`Booked_Seats` AS `Booked_Seats`,`s`.`Remaining_Seats` AS `Remaining_Seats` from (`sessions` `s` left join `session_bookings` `sb` on((`s`.`Session_ID` = `sb`.`Session_ID`))) group by `s`.`Session_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `staff_timesheet`
--

/*!50001 DROP VIEW IF EXISTS `staff_timesheet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `staff_timesheet` AS select `timesheet`.`Timesheet_ID` AS `Timesheet_ID`,`timesheet`.`NUID` AS `NUID`,`timesheet`.`Clock_In` AS `Clock_In`,`timesheet`.`Clock_Out` AS `Clock_Out`,`timesheet`.`Hours_Worked` AS `Hours_Worked` from `timesheet` where (`timesheet`.`NUID` = '03510') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'northeastern_university'
--

--
-- Dumping routines for database 'northeastern_university'
--
/*!50003 DROP FUNCTION IF EXISTS `Calculate_Biweekly_Salary` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Calculate_Biweekly_Salary`(staff_nuid VARCHAR(5)) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total_hours DECIMAL(10, 2);
    DECLARE salary DECIMAL(10, 2);
    DECLARE pay_rate DECIMAL(5, 2) DEFAULT 15.00; -- Fixed pay rate of $15/hour

    -- Calculate total hours worked in the last 14 days
    SELECT COALESCE(SUM(TIMESTAMPDIFF(MINUTE, Clock_In, Clock_Out) / 60), 0)
    INTO total_hours
    FROM Timesheet
    WHERE NUID = staff_nuid AND Clock_In >= DATE_SUB(CURDATE(), INTERVAL 14 DAY);

    -- Calculate the salary
    SET salary = total_hours * pay_rate;

    RETURN salary;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BookSession` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BookSession`(
    IN member_nuid VARCHAR(5),
    IN session_id INT
)
BEGIN
    DECLARE booking_id INT; -- Variable to store Booking_ID

    -- Start the transaction
    START TRANSACTION;

    -- Check if the member has already booked this session
    SELECT Booking_ID INTO booking_id
    FROM Session_Bookings
    WHERE Session_ID = session_id AND Member_NUID = member_nuid
    LIMIT 1;

    -- Debugging: Output booking_id
    SELECT booking_id AS BookingID;

    IF booking_id IS NULL THEN
        -- Insert the booking record (triggers handle seat availability and updates)
        INSERT INTO Session_Bookings (Session_ID, Member_NUID)
        VALUES (session_id, member_nuid);

        -- Commit the transaction if everything succeeds
        COMMIT;
    ELSE
        -- Rollback and signal error
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Member has already booked this session.';
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckAndLogAttendance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckAndLogAttendance`(IN person_nuid VARCHAR(5))
BEGIN
    DECLARE has_access BOOLEAN;
    DECLARE person_exists INT;

    -- Check if the person exists
    SELECT COUNT(*) INTO person_exists
    FROM Person
    WHERE NUID = person_nuid;

    -- If the person does not exist
    IF person_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Person does not exist in the system.';
    ELSE
        -- Check Recreation_Access if the person exists
        SELECT Recreation_Access INTO has_access
        FROM Person
        WHERE NUID = person_nuid;

        -- If the person does not have access
        IF has_access = FALSE THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No gym access.';
        ELSE
            -- If the person has access, log attendance
            INSERT INTO Attendance (NUID, Access_Status)
            VALUES (person_nuid, TRUE);
        END IF;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14  3:40:51
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northeastern_university
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `session_bookings`
--

DROP TABLE IF EXISTS `session_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_bookings` (
  `Booking_ID` int NOT NULL AUTO_INCREMENT,
  `Session_ID` int NOT NULL,
  `Member_NUID` varchar(5) NOT NULL,
  PRIMARY KEY (`Booking_ID`),
  UNIQUE KEY `Session_ID` (`Session_ID`,`Member_NUID`),
  KEY `Member_NUID` (`Member_NUID`),
  CONSTRAINT `session_bookings_ibfk_1` FOREIGN KEY (`Session_ID`) REFERENCES `sessions` (`Session_ID`) ON DELETE CASCADE,
  CONSTRAINT `session_bookings_ibfk_2` FOREIGN KEY (`Member_NUID`) REFERENCES `person` (`NUID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_bookings`
--

LOCK TABLES `session_bookings` WRITE;
/*!40000 ALTER TABLE `session_bookings` DISABLE KEYS */;
INSERT INTO `session_bookings` VALUES (1,1,'03510');
/*!40000 ALTER TABLE `session_bookings` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Check_Seat_Availability` BEFORE INSERT ON `session_bookings` FOR EACH ROW BEGIN
    DECLARE remaining_seats INT;

    -- Retrieve the remaining seats for the session
    SELECT Remaining_Seats INTO remaining_seats
    FROM Sessions
    WHERE Session_ID = NEW.Session_ID;

    -- If no seats are available, raise an error
    IF remaining_seats <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No seats available for this session.';
    END IF;

    -- Increment Booked_Seats in the Sessions table
    UPDATE Sessions
    SET Booked_Seats = Booked_Seats + 1
    WHERE Session_ID = NEW.Session_ID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14  3:40:50
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northeastern_university
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `Session_ID` int NOT NULL AUTO_INCREMENT,
  `Program_Name` enum('Yoga','Zumba','Personal Training','Boxing','Pilates') NOT NULL,
  `Trainer_NUID` varchar(5) NOT NULL,
  `Max_Seats` int NOT NULL,
  `Booked_Seats` int NOT NULL DEFAULT '0',
  `Remaining_Seats` int GENERATED ALWAYS AS ((`Max_Seats` - `Booked_Seats`)) STORED,
  PRIMARY KEY (`Session_ID`),
  KEY `Trainer_NUID` (`Trainer_NUID`),
  CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`Trainer_NUID`) REFERENCES `gym_staff` (`NUID`),
  CONSTRAINT `Check_Valid_Booked_Seats` CHECK ((`Booked_Seats` <= `Max_Seats`))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`Session_ID`, `Program_Name`, `Trainer_NUID`, `Max_Seats`, `Booked_Seats`) VALUES (1,'Yoga','01729',30,1),(2,'Zumba','01729',25,0),(3,'Personal Training','01729',15,0),(4,'Boxing','03317',30,0),(5,'Pilates','03317',20,0),(6,'Boxing','01729',50,0);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Validate_Fitness_Trainer` BEFORE INSERT ON `sessions` FOR EACH ROW BEGIN
    DECLARE trainer_role VARCHAR(50);

    -- Retrieve the role of the trainer from Gym_Staff
    SELECT Role INTO trainer_role
    FROM Gym_Staff
    WHERE NUID = NEW.Trainer_NUID;

    -- Check if the role is 'Fitness Trainer'
    IF trainer_role != 'Fitness Trainer' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Only Fitness Trainers can conduct sessions.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14  3:40:50
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northeastern_university
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheet` (
  `Timesheet_ID` int NOT NULL AUTO_INCREMENT,
  `NUID` varchar(5) NOT NULL,
  `Clock_In` datetime NOT NULL,
  `Clock_Out` datetime NOT NULL,
  `Hours_Worked` decimal(5,2) GENERATED ALWAYS AS ((timestampdiff(MINUTE,`Clock_In`,`Clock_Out`) / 60)) STORED,
  PRIMARY KEY (`Timesheet_ID`),
  KEY `NUID` (`NUID`),
  CONSTRAINT `timesheet_ibfk_1` FOREIGN KEY (`NUID`) REFERENCES `person` (`NUID`),
  CONSTRAINT `Check_Clock_Validity` CHECK ((`Clock_In` < `Clock_Out`))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
INSERT INTO `timesheet` (`Timesheet_ID`, `NUID`, `Clock_In`, `Clock_Out`) VALUES (1,'03510','2024-12-11 08:00:00','2024-12-11 12:00:00'),(2,'03510','2024-12-12 14:00:00','2024-12-12 18:00:00'),(3,'03510','2024-12-13 10:00:00','2024-12-13 21:00:00'),(4,'05844','2024-12-11 08:00:00','2024-12-11 12:00:00'),(5,'05844','2024-12-12 14:00:00','2024-12-12 18:00:00'),(6,'05844','2024-12-13 10:00:00','2024-12-13 21:00:00'),(7,'01313','2024-12-11 08:00:00','2024-12-11 12:00:00');
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Check_Valid_Staff_And_Hours` BEFORE INSERT ON `timesheet` FOR EACH ROW BEGIN
    DECLARE is_gym_staff INT;
    DECLARE total_hours DECIMAL(5, 2);

    -- Check if the NUID belongs to a valid gym staff
    SELECT COUNT(*) INTO is_gym_staff
    FROM Gym_Staff
    WHERE NUID = NEW.NUID;

    IF is_gym_staff = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This NUID does not belong to a valid gym staff member.';
    END IF;

    -- Calculate total hours already logged for the same week
    SELECT COALESCE(SUM(Hours_Worked), 0) INTO total_hours
    FROM Timesheet
    WHERE NUID = NEW.NUID
      AND YEARWEEK(NEW.Clock_In, 1) = YEARWEEK(Clock_In, 1);

    -- If the total hours exceed 20, raise an error
    IF total_hours + (TIMESTAMPDIFF(MINUTE, NEW.Clock_In, NEW.Clock_Out) / 60) > 20 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Weekly hour limit exceeded. A gym staff cannot work more than 20 hours per week.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-14  3:40:50
