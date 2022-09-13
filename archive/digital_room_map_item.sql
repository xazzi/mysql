CREATE DATABASE  IF NOT EXISTS `digital_room` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `digital_room`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 10.21.71.189    Database: digital_room
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `map_item`
--

DROP TABLE IF EXISTS `map_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map_item` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `item_map_id` int DEFAULT NULL,
  `item_name` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_item`
--

LOCK TABLES `map_item` WRITE;
/*!40000 ALTER TABLE `map_item` DISABLE KEYS */;
INSERT INTO `map_item` VALUES (1,1,'A-Frames'),(2,1,'Signicade White 36 x 24 in'),(3,1,'Signicade A Frame Signs'),(4,1,'Signicade Black'),(5,1,'Signicade White'),(6,1,'Signicade Deluxe Black 36 x 24 in'),(7,1,'Signicade Deluxe White 36 x 24 in'),(8,1,'Deluxe Signicade A Frame Signs'),(9,1,'Signicade Blue 3\' x 2\''),(10,1,'A-Frame Replacement Signs'),(11,1,'Signicade Deluxe Black'),(12,1,'Signicade Deluxe White'),(13,1,'A-Frame Sign'),(14,1,'Econo Classic'),(15,1,'Sign Panels'),(16,1,'Wheeled Snap In'),(17,1,'36 x 24 in Sandwich Board Sign'),(18,1,'Windsign 36 x 24 in'),(19,1,'Untitled A-Frame Sign'),(20,2,'Breakaway'),(21,2,'Breakaway Banners'),(25,1,'Simpo II A-Frame (Sign Only)'),(26,1,'Simpo II A-Frame'),(28,1,'Signicade White, 36 x 24 in'),(30,1,'Signicade Deluxe Black, 36 x 24 in'),(32,1,'Signicade Deluxe White, 36 x 24 in'),(33,1,'22\" x 28\" Simpo II, 28 x 22 In'),(34,1,'Econo Classic, 3\' x 2\''),(35,1,'Signicade Blue, 3\' x 2\''),(36,1,'Signicade Black, 36 x 24 in'),(37,1,'Signicade Green, 3\' x 2\''),(38,1,'Windsign, 36 x 24 in'),(39,1,'24\" x 24\" Simpo Square 24 in, Black'),(40,1,'24\" x 24\" Simpo Square 24 in, White'),(41,1,'24\" x 36\" Signicade Orange, 3\' x 2\''),(42,1,'36\" x 48\" The Billboard Black, 4\' x 3\'');
/*!40000 ALTER TABLE `map_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-07 23:41:32
