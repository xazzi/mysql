CREATE DATABASE  IF NOT EXISTS `digital_room` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `digital_room`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: digital_room
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
-- Table structure for table `map_paper`
--

DROP TABLE IF EXISTS `map_paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map_paper` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `paper_map_id` int DEFAULT NULL,
  `paper_name` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_paper`
--

LOCK TABLES `map_paper` WRITE;
/*!40000 ALTER TABLE `map_paper` DISABLE KEYS */;
INSERT INTO `map_paper` VALUES (1,1,'8.8 oz. Polyester Fabric'),(2,1,'8.8 oz Polyester Fabric'),(3,1,'8.8 Polyester Fabric'),(4,1,'6.8 oz. Polyester Fabric'),(5,1,'6.8 oz Polyester Fabric'),(6,1,'6.8 Polyester Fabric'),(7,1,'9 oz. Wrinkle Free Fabric'),(8,1,'6.8 oz Polyester Tension Fabric'),(9,1,'9 oz Polyester Fabric'),(10,2,'4mm Corrugated Plastic'),(11,2,'3/16\" Corrugated Plastic\"'),(12,2,'3/16\" Corrugated Plastic'),(13,3,'1/8\" Clear Acrylic\"'),(14,3,'1/8\" Clear Acrylic'),(15,4,'8 oz. Mesh'),(16,4,'Mesh'),(17,5,'1/2\" High-Density Fiberboard\"'),(18,5,'1/2\" High-Density Fiberboard'),(19,6,'3mm Aluminum Composite Panel'),(20,6,'3mm Aluminum Composite Panel UV Coating'),(21,7,'1/4\" Clear Acrylic\"'),(22,7,'1/4\" Clear Acrylic'),(23,7,'1/4\" Acrylic'),(24,8,'3M 180C Adhesive Vinyl'),(25,9,'3.4 mil. Floor Graphic Vinyl'),(26,10,'3/16\" White-Black-White Gatorboard\"'),(27,10,'3/16\" White-Black-White Gatorboard'),(28,11,'24 pt. Cardstock Board 48\"x96\"\"\"'),(29,11,'24 pt. Cardstock Board 48\"x96\"'),(30,12,'3/16\" White Gatorboard\"'),(31,12,'3/16\" White Gatorboard'),(32,13,'3mm PVC'),(33,13,'White PVC Board'),(34,14,'6mm PVC'),(35,15,'White Window Adhesive'),(36,16,'4 mil. Adhesive Vinyl (Removable)'),(37,17,'1/8\" Frosted Acrylic\"'),(38,17,'1/8\" Frosted Acrylic'),(39,18,'13 oz. Matte Vinyl'),(40,18,'13 oz. Vinyl'),(41,18,'13oz Matte'),(42,18,'13oz Gloss'),(43,18,'13 oz. Gloss Vinyl'),(44,19,'13 oz. Smooth Blockout Vinyl'),(45,20,'3 mm. Brushed Aluminum E-Panel'),(46,21,'Clear Static Cling'),(47,21,'Clear Window Cling'),(48,22,'Clear Window Adhesive'),(49,23,'3.4 mil. Carpet Vinyl'),(50,23,'3.4 mil Calendared Vinyl'),(51,24,'1/2\" White-Kraft Falconboard\"'),(52,24,'1/2\" White-Kraft Falconboard'),(53,25,'3/16\" Foam Core\"'),(54,25,'3/16\" Foam Core'),(55,26,'3.5 mil. Backlit Adhesive Vinyl'),(56,27,'30 pt. Magnetic Stock'),(57,27,'30 mil Rolled Magnetic'),(58,28,'Opaque Static Cling'),(59,29,'50/50 Perforated Adhesive Vinyl'),(60,30,'7 mil. Reflective Adhesive Vinyl'),(61,31,'2 mil. Frosted Adhesive Vinyl'),(62,32,'Matte Photo Paper'),(63,32,'Photo Paper (Matte)'),(64,33,'Gloss Photo Paper'),(65,33,'Photo Paper (Gloss)'),(66,34,'Metallic Photo Paper'),(67,35,'4 oz. Polyester Fabric'),(68,35,'4 oz Polyester Fabric'),(69,36,'20 mil. Adhesive Aluminum (Smooth)'),(70,37,'20 mil. Adhesive Aluminum (Rough)'),(71,37,'3M Exterior Vinyl'),(72,38,'Antimicrobial Polyester Fabric'),(73,39,'5.7 oz. Stretch Polyester-Spandex'),(74,40,'3.5 oz. Stretch Polyester-Spandex'),(75,41,'18 oz. Matte Vinyl'),(76,42,'2 mil. Adhesive Cut Vinyl'),(77,42,'2 mil. Adhesive Cut Vinyl (Frosted)'),(78,42,'2 mil. Adhesive Vinyl'),(79,43,'White Vinyl (Outdoor/Indoor)'),(80,43,'White Premium Sticker Paper'),(81,4,'8 oz./9 oz. Mesh Vinyl'),(82,3,'1/8\" Acrylic'),(84,29,'Perforated Vinyl'),(85,20,'3 mm. Brushed Aluminum E-Panel UV Coating'),(86,36,'20 mil. Adhesive Aluminum (Removable)'),(87,29,'Perforated Window Film'),(89,16,'Wall Decal'),(90,4,'8oz Mesh'),(91,28,'White Window Cling'),(92,9,'Floor Graphic');
/*!40000 ALTER TABLE `map_paper` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-27 19:20:17
