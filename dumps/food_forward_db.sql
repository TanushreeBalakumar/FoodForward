-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: food_forward_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `collected_food`
--

DROP TABLE IF EXISTS `collected_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collected_food` (
  `id` int NOT NULL AUTO_INCREMENT,
  `donor_name` varchar(255) NOT NULL,
  `food_type` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact_info` varchar(255) NOT NULL,
  `expiry_time` datetime NOT NULL,
  `donation_number` varchar(10) NOT NULL,
  `collected_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collected_food`
--

LOCK TABLES `collected_food` WRITE;
/*!40000 ALTER TABLE `collected_food` DISABLE KEYS */;
INSERT INTO `collected_food` VALUES (33,'Kumar','Briyani',30,'Chennai','7658964345','2025-03-09 09:00:00','727931','2025-03-08 17:02:10'),(36,'Bala','Dosa batter',50,'Sollavaram','9840452455','2025-03-10 00:00:00','693965','2025-03-09 02:20:53'),(37,'Tanu','test',3,'Redhills','9876543210','2025-03-09 18:44:00','174720','2025-03-09 07:09:58'),(38,'Arun','Fried rice',20,'Kavaraipettai','7658964345','2025-03-10 15:47:00','232234','2025-03-09 10:23:19');
/*!40000 ALTER TABLE `collected_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'XYZ','someone@gmail.com','Hi I am running an old age home. we are interested to join your page so that we can access the available excess food from our locality through your page.','2025-03-07 17:07:51','9876054321'),(2,'abc','abc@example.com','Amazing work!\n','2025-03-08 07:11:35','9876504318'),(3,'Swetha','harrypotter@example.com','Can you provide me with my donation number?','2025-03-09 10:27:17','1234567890');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donors`
--

DROP TABLE IF EXISTS `donors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `food_type` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `expiry_time` datetime DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `donation_number` varchar(6) DEFAULT NULL,
  `donor_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_location` (`location`),
  KEY `idx_expiry_time` (`expiry_time`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donors`
--

LOCK TABLES `donors` WRITE;
/*!40000 ALTER TABLE `donors` DISABLE KEYS */;
INSERT INTO `donors` VALUES (29,'test',12,'Chennai','9856728892','2025-03-17 20:45:00','2025-03-08 11:16:55',NULL,'Test User'),(30,'Rice',20,'Redhills','9876543210','2025-03-10 00:00:00','2025-03-08 11:18:52',NULL,'Baki'),(31,'potatoes',14,'Chennai','9876543210','2025-03-11 00:00:00','2025-03-08 13:38:41',NULL,'Sneha'),(32,'Briyani',30,'Chennai','7658964345','2025-03-09 09:00:00','2025-03-08 16:38:20','215376','Kumar'),(34,'Eggs',20,'Chennai','7658964345','2025-03-09 02:00:00','2025-03-08 16:48:29','888202','Priya'),(35,'meals',4,'Ponneri','3456784567','2025-03-08 23:55:00','2025-03-08 18:21:46','527363','Madhu');
/*!40000 ALTER TABLE `donors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expired_food`
--

DROP TABLE IF EXISTS `expired_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expired_food` (
  `id` int NOT NULL,
  `donor_name` varchar(255) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `expiry_time` datetime NOT NULL,
  `moved_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expired_food`
--

LOCK TABLES `expired_food` WRITE;
/*!40000 ALTER TABLE `expired_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `expired_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receivers`
--

DROP TABLE IF EXISTS `receivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receivers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receivers`
--

LOCK TABLES `receivers` WRITE;
/*!40000 ALTER TABLE `receivers` DISABLE KEYS */;
INSERT INTO `receivers` VALUES (1,'John Doe','johndoe@example.com','9876543210','password123','2025-03-08 06:51:30'),(2,'Test User','test@example.com','9876543210','$2b$10$W5H9/U76z.zFDlQb./G9.OW/eZ0B1KOx7B9CFO2hPS8ZCCLptnM2W','2025-03-08 08:34:02'),(3,'harry','harrypotter@example.com','9876504321','$2b$10$0JUrtLrWZtiMRWqT7QbxrOkHFXfIAY5LE3uVXqW8xCv9rjzQOyJrK','2025-03-08 13:43:30'),(4,'divya','test1@example.com','7654321890','$2b$10$MMw2HcFRjOINlGj4MWS1Ue8o.NGZgIV76lt.TFRCy0WJ7DutXF5nS','2025-03-08 18:23:52'),(5,'Bala Kumar J','jb.jagan76@gmail.com','9876540321','$2b$10$X4bTCmH9IglWlLbTMxQKTumSVbqGNmlUeLwOTAAG7KEezEs3HAGWK','2025-03-09 02:17:27'),(6,'varadharajan','varadharajan.l@tcs.com','9840100347','$2b$10$8mUNEy5wJXPae3qazr4h0.rBrEBZT3X/mAKtH7cBHZESS0pbRB8yC','2025-03-09 07:05:40'),(7,'Shruthi','shruthi123@gmail.com','6789123457','$2b$10$2R.TTNEm59tFM0l8vFbtquaLMOgdPWnl823JFnxrDES1rtpz6k3Kq','2025-03-09 10:20:26');
/*!40000 ALTER TABLE `receivers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-09 16:50:58
