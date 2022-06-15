CREATE DATABASE  IF NOT EXISTS `digital_room` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `digital_room`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: digital_room
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `active_gangs`
--

DROP TABLE IF EXISTS `active_gangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_gangs` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `user` varchar(45) DEFAULT NULL,
  `existing` varchar(45) DEFAULT NULL,
  `active` tinyint DEFAULT '0',
  `complete` tinyint DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_gangs`
--

LOCK TABLES `active_gangs` WRITE;
/*!40000 ALTER TABLE `active_gangs` DISABLE KEYS */;
INSERT INTO `active_gangs` VALUES (34,'Bret Combe','2513447,2513446,2513445',0,1),(35,'Bret Combe','2513447,2513446,2513445',0,1),(36,'Bret Combe','2515110,2515109,2515108',0,1),(38,'Bret Combe','2515110,2515109,2515108',0,1);
/*!40000 ALTER TABLE `active_gangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buttcut_disable`
--

DROP TABLE IF EXISTS `buttcut_disable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buttcut_disable` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `item_number` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buttcut_disable`
--

LOCK TABLES `buttcut_disable` WRITE;
/*!40000 ALTER TABLE `buttcut_disable` DISABLE KEYS */;
INSERT INTO `buttcut_disable` VALUES (1,14496570),(2,14482235),(3,14482234),(4,14482233),(5,14482232),(6,14544628),(7,14544624),(8,14539651),(9,14539652),(10,14539653),(11,14539654),(12,14559856),(13,14621074),(14,14841649),(15,14913914),(16,14904019);
/*!40000 ALTER TABLE `buttcut_disable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facility`
--

DROP TABLE IF EXISTS `facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facility` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facility`
--

LOCK TABLES `facility` WRITE;
/*!40000 ALTER TABLE `facility` DISABLE KEYS */;
INSERT INTO `facility` VALUES (1,'Salt Lake City'),(2,'Brighton'),(3,'Solon');
/*!40000 ALTER TABLE `facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed`
--

DROP TABLE IF EXISTS `failed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `entry` varchar(45) DEFAULT NULL,
  `stage` varchar(45) DEFAULT NULL,
  `error` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed`
--

LOCK TABLES `failed` WRITE;
/*!40000 ALTER TABLE `failed` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `gsm` int DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (1,250,'Standard'),(2,251,'Oversize'),(3,252,'Mounting'),(4,253,'Scaled');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotfolders_asanti`
--

DROP TABLE IF EXISTS `hotfolders_asanti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotfolders_asanti` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotfolders_asanti`
--

LOCK TABLES `hotfolders_asanti` WRITE;
/*!40000 ALTER TABLE `hotfolders_asanti` DISABLE KEYS */;
INSERT INTO `hotfolders_asanti` VALUES (1,'None'),(2,'BlackGator'),(3,'WhiteGator'),(4,'2mm-Epanel'),(5,'6mm-Sintra'),(6,'3mm-Sintra'),(7,'25-Acrylic'),(8,'125-Acrylic'),(9,'BrushedSilver'),(10,'Coroplast'),(11,'Falconboard'),(12,'Foamboard'),(13,'A-Frame'),(14,'24pt-Cardstock');
/*!40000 ALTER TABLE `hotfolders_asanti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotfolders_autocutter`
--

DROP TABLE IF EXISTS `hotfolders_autocutter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotfolders_autocutter` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotfolders_autocutter`
--

LOCK TABLES `hotfolders_autocutter` WRITE;
/*!40000 ALTER TABLE `hotfolders_autocutter` DISABLE KEYS */;
INSERT INTO `hotfolders_autocutter` VALUES (1,'Generic'),(2,'Adhesives'),(3,'Banner'),(4,'Coroplast'),(5,'Fabric'),(6,'Falconboard'),(7,'Foamcore'),(8,NULL),(9,'Gatorfoam'),(10,'Magnet'),(11,'Sintra'),(12,NULL),(13,'Coroplast v1');
/*!40000 ALTER TABLE `hotfolders_autocutter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotfolders_caldera`
--

DROP TABLE IF EXISTS `hotfolders_caldera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotfolders_caldera` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotfolders_caldera`
--

LOCK TABLES `hotfolders_caldera` WRITE;
/*!40000 ALTER TABLE `hotfolders_caldera` DISABLE KEYS */;
INSERT INTO `hotfolders_caldera` VALUES (1,'None'),(2,'Standard'),(3,'4milWall'),(4,'13ozBanner'),(5,'Rigid-99x50'),(6,'Standard-W'),(7,'Rigid-99x50-W'),(25,'Standard-DS');
/*!40000 ALTER TABLE `hotfolders_caldera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_name_fullsize`
--

DROP TABLE IF EXISTS `item_name_fullsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_name_fullsize` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_name_fullsize`
--

LOCK TABLES `item_name_fullsize` WRITE;
/*!40000 ALTER TABLE `item_name_fullsize` DISABLE KEYS */;
INSERT INTO `item_name_fullsize` VALUES (1,'Real Estate Rider (Custom)'),(2,'Real Estate Frame (Single Rider)'),(4,'Metal Rod A-Frame'),(5,'Metal Rod A-Frame (Sign Only)'),(6,'Real Estate Rider (for Post)'),(7,'Table Runner'),(8,'Real Estate A-Frame');
/*!40000 ALTER TABLE `item_name_fullsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_number_fullsize`
--

DROP TABLE IF EXISTS `item_number_fullsize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_number_fullsize` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `item_number` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_number_fullsize`
--

LOCK TABLES `item_number_fullsize` WRITE;
/*!40000 ALTER TABLE `item_number_fullsize` DISABLE KEYS */;
INSERT INTO `item_number_fullsize` VALUES (1,14517991),(2,14544687),(3,14544619),(4,14544617),(5,14544616),(6,14544461),(7,14539549),(8,14539548),(9,14539547),(10,14552154),(11,14552153),(12,14549223),(13,14549222),(14,14544791),(15,14544790),(16,14491414),(17,14555490),(18,14480361),(19,14567260),(20,14567259),(21,14559856),(22,14575524),(23,14635237),(24,14678433),(25,14635237),(26,14719387),(27,14913914),(28,14915877),(29,14915875),(30,14938258),(31,14947018),(32,14947017),(33,14966641),(34,14978810),(35,14960918),(36,14974114),(37,14981367),(38,14987248),(39,15001118);
/*!40000 ALTER TABLE `item_number_fullsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_backdrops`
--

DROP TABLE IF EXISTS `map_backdrops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `map_backdrops` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_backdrops`
--

LOCK TABLES `map_backdrops` WRITE;
/*!40000 ALTER TABLE `map_backdrops` DISABLE KEYS */;
INSERT INTO `map_backdrops` VALUES (1,'Backdrops'),(2,'Backdrops + Stand'),(3,'Step and Repeat Banners'),(4,'Step and Repeat Banners + Stand');
/*!40000 ALTER TABLE `map_backdrops` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_item`
--

LOCK TABLES `map_item` WRITE;
/*!40000 ALTER TABLE `map_item` DISABLE KEYS */;
INSERT INTO `map_item` VALUES (1,1,'A-Frames'),(2,1,'Signicade White 36 x 24 in'),(3,1,'Signicade A Frame Signs'),(4,1,'Signicade Black'),(5,1,'Signicade White'),(6,1,'Signicade Deluxe Black 36 x 24 in'),(7,1,'Signicade Deluxe White 36 x 24 in'),(8,1,'Deluxe Signicade A Frame Signs'),(9,1,'Signicade Blue 3\' x 2\''),(10,1,'A-Frame Replacement Signs'),(11,1,'Signicade Deluxe Black'),(12,1,'Signicade Deluxe White'),(13,1,'A-Frame Sign'),(14,1,'Econo Classic'),(15,1,'Sign Panels'),(16,1,'Wheeled Snap In'),(17,1,'36 x 24 in Sandwich Board Sign'),(18,1,'Windsign 36 x 24 in'),(19,1,'Untitled A-Frame Sign'),(20,2,'Breakaway'),(21,2,'Breakaway Banners'),(25,1,'Simpo II A-Frame (Sign Only)'),(26,1,'Simpo II A-Frame'),(28,1,'Signicade White, 36 x 24 in');
/*!40000 ALTER TABLE `map_item` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_paper`
--

LOCK TABLES `map_paper` WRITE;
/*!40000 ALTER TABLE `map_paper` DISABLE KEYS */;
INSERT INTO `map_paper` VALUES (1,1,'8.8 oz. Polyester Fabric'),(2,1,'8.8 oz Polyester Fabric'),(3,1,'8.8 Polyester Fabric'),(4,1,'6.8 oz. Polyester Fabric'),(5,1,'6.8 oz Polyester Fabric'),(6,1,'6.8 Polyester Fabric'),(7,1,'9 oz. Wrinkle Free Fabric'),(8,1,'6.8 oz Polyester Tension Fabric'),(9,1,'9 oz Polyester Fabric'),(10,2,'4mm Corrugated Plastic'),(11,2,'3/16\" Corrugated Plastic\"'),(12,2,'3/16\" Corrugated Plastic'),(13,3,'1/8\" Clear Acrylic\"'),(14,3,'1/8\" Clear Acrylic'),(15,4,'8 oz. Mesh'),(16,4,'Mesh'),(17,5,'1/2\" High-Density Fiberboard\"'),(18,5,'1/2\" High-Density Fiberboard'),(19,6,'3mm Aluminum Composite Panel'),(20,6,'3mm Aluminum Composite Panel UV Coating'),(21,7,'1/4\" Clear Acrylic\"'),(22,7,'1/4\" Clear Acrylic'),(23,7,'1/4\" Acrylic'),(24,8,'3M 180C Adhesive Vinyl'),(25,9,'3.4 mil. Floor Graphic Vinyl'),(26,10,'3/16\" White-Black-White Gatorboard\"'),(27,10,'3/16\" White-Black-White Gatorboard'),(28,11,'24 pt. Cardstock Board 48\"x96\"\"\"'),(29,11,'24 pt. Cardstock Board 48\"x96\"'),(30,12,'3/16\" White Gatorboard\"'),(31,12,'3/16\" White Gatorboard'),(32,13,'3mm PVC'),(33,13,'White PVC Board'),(34,14,'6mm PVC'),(35,15,'White Window Adhesive'),(36,16,'4 mil. Adhesive Vinyl (Removable)'),(37,17,'1/8\" Frosted Acrylic\"'),(38,17,'1/8\" Frosted Acrylic'),(39,18,'13 oz. Matte Vinyl'),(40,18,'13 oz. Vinyl'),(41,18,'13oz Matte'),(42,18,'13oz Gloss'),(43,18,'13 oz. Gloss Vinyl'),(44,19,'13 oz. Smooth Blockout Vinyl'),(45,20,'3 mm. Brushed Aluminum E-Panel'),(46,21,'Clear Static Cling'),(47,21,'Clear Window Cling'),(48,22,'Clear Window Adhesive'),(49,23,'3.4 mil. Carpet Vinyl'),(50,23,'3.4 mil Calendared Vinyl'),(51,24,'1/2\" White-Kraft Falconboard\"'),(52,24,'1/2\" White-Kraft Falconboard'),(53,25,'3/16\" Foam Core\"'),(54,25,'3/16\" Foam Core'),(55,26,'3.5 mil. Backlit Adhesive Vinyl'),(56,27,'30 pt. Magnetic Stock'),(57,27,'30 mil Rolled Magnetic'),(58,28,'Opaque Static Cling'),(59,29,'50/50 Perforated Adhesive Vinyl'),(60,30,'7 mil. Reflective Adhesive Vinyl'),(61,31,'2 mil. Frosted Adhesive Vinyl'),(62,32,'Matte Photo Paper'),(63,32,'Photo Paper (Matte)'),(64,33,'Gloss Photo Paper'),(65,33,'Photo Paper (Gloss)'),(66,34,'Metallic Photo Paper'),(67,35,'4 oz. Polyester Fabric'),(68,35,'4 oz Polyester Fabric'),(69,36,'20 mil. Adhesive Aluminum (Smooth)'),(70,37,'20 mil. Adhesive Aluminum (Rough)'),(71,37,'3M Exterior Vinyl'),(72,38,'Antimicrobial Polyester Fabric'),(73,39,'5.7 oz. Stretch Polyester-Spandex'),(74,40,'3.5 oz. Stretch Polyester-Spandex'),(75,41,'18 oz. Matte Vinyl'),(76,42,'2 mil. Adhesive Cut Vinyl'),(77,42,'2 mil. Adhesive Cut Vinyl (Frosted)'),(78,42,'2 mil. Adhesive Vinyl'),(79,43,'White Vinyl (Outdoor/Indoor)'),(80,43,'White Premium Sticker Paper'),(81,4,'8 oz./9 oz. Mesh Vinyl'),(82,3,'1/8\" Acrylic'),(84,29,'Perforated Vinyl');
/*!40000 ALTER TABLE `map_paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `margins`
--

DROP TABLE IF EXISTS `margins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `margins` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `top` double DEFAULT NULL,
  `bottom` double DEFAULT NULL,
  `left` double DEFAULT NULL,
  `right` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `margins`
--

LOCK TABLES `margins` WRITE;
/*!40000 ALTER TABLE `margins` DISABLE KEYS */;
INSERT INTO `margins` VALUES (2,1.625,0.375,0.1875,0.1875),(3,1.625,1.625,0.25,0.25),(6,1.625,0.75,0.125,0.125),(9,1.625,1.625,1,1),(10,1.625,0.375,0.25,0.25),(11,1.625,0.375,0.5,0.5),(13,1.625,0.375,1,1),(16,0,0,0,0);
/*!40000 ALTER TABLE `margins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materials`
--

DROP TABLE IF EXISTS `materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materials` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `production_name` text,
  `paper_reference` text,
  `item_reference` text,
  `facility` int NOT NULL,
  `type` text,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `phoenix_stock` int NOT NULL,
  `rotation` text,
  `spacing_type` text,
  `spacing_default` text,
  `spacing_top` text,
  `spacing_bottom` text,
  `spacing_left` text,
  `spacing_right` text,
  `bleed` text,
  `allowed_rotations` text,
  `imposition_profile` text,
  `phoenix_version` int DEFAULT NULL,
  `dev_environment` tinyint DEFAULT NULL,
  `gsm` int NOT NULL,
  `bleed_type` text,
  `printer` int NOT NULL,
  `force_lamination` tinyint DEFAULT NULL,
  `crop_gang` tinyint DEFAULT NULL,
  `hotfolder_caldera` int NOT NULL,
  `margins` int NOT NULL,
  `caldera_ip` int DEFAULT NULL,
  `hotfolder_asanti` int NOT NULL,
  `hotfolder_autocutter` int NOT NULL,
  `g3_bigBoy` tinyint DEFAULT NULL,
  `g3_longBoy` tinyint DEFAULT NULL,
  `sac_zund` tinyint DEFAULT NULL,
  `slc_zund` tinyint DEFAULT NULL,
  `router` tinyint DEFAULT NULL,
  `xy` tinyint DEFAULT NULL,
  `white_elements` tinyint DEFAULT NULL,
  `page_handling` text,
  `overrun` int DEFAULT NULL,
  `force_undersize` tinyint DEFAULT '0',
  `side_mix` tinyint DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'24pt-Cardstock','11','0',1,'sheet',48,96,1,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,14,1,1,1,0,0,0,0,0,'OnePerTwoPages',0,0,1),(2,'A-Frame','2','1',1,'sheet',48,96,29,'Custom','Margins','0.5','0.125','0.75','0.125','0.125','0.125','90','Sheet',7,0,1,'Contour',2,0,0,1,10,33,13,4,0,1,0,0,0,0,0,'OnePerPage',0,0,1),(3,'Coroplast','2','0',1,'sheet',48,96,29,'None','Margins','0.5','0.125','0.75','0.125','0.125','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,10,33,10,4,0,1,0,0,0,0,0,'OnePerTwoPages',0,1,1),(4,'BlackGator','10','0',1,'sheet',48,96,1,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,2,9,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(5,'WhiteGator','12','0',1,'sheet',48,96,1,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,3,9,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(6,'2mm-Epanel','6','0',1,'sheet',49,99,2,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,4,1,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(7,'3mm-Sintra','13','0',1,'sheet',50,99,3,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,6,11,0,1,0,0,0,0,0,'OnePerTwoPages',0,0,1),(8,'6mm-Sintra','14','0',1,'sheet',50,99,3,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,5,1,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(9,'3m180','8','0',1,'roll',54,150,4,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',9,1,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(10,'3mIJ40','15','0',1,'roll',54,150,4,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(11,'4milWall','16','0',1,'roll',54,150,4,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,3,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(12,'25-Acrylic','7','0',1,'sheet',50,98,23,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',1,0,0,7,2,33,7,1,0,0,0,0,1,0,1,'OnePerTwoPages',0,0,1),(13,'125-Acrylic','3','0',1,'sheet',50,98,23,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',1,0,0,7,2,33,8,1,0,0,0,0,1,0,1,'OnePerTwoPages',0,0,1),(14,'FrostedAcrylic','17','0',1,'sheet',48,96,13,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',1,0,0,7,2,33,1,1,0,0,0,0,1,0,1,'OnePerTwoPages',0,0,1),(15,'13ozBanner','18','0',1,'roll',126,150,5,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,4,3,33,1,3,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(16,'Breakaway','18','2',1,'roll',126,150,5,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,4,3,33,1,3,1,0,0,0,0,0,0,'OnePerPage',0,0,1),(17,'18ozBanner','41','0',1,'roll',126,150,5,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,0,25,3,33,1,3,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,0),(18,'DSS','19','0',1,'roll',30,150,10,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',1,0,1,2,2,33,1,3,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(19,'BrushedSilver','20','0',1,'sheet',48,96,13,'Custom','Margins','0.5','','0.75','','','0.125','90','Sheet',7,0,1,'Contour',1,0,0,7,2,33,9,1,0,0,0,0,1,0,1,'OnePerTwoPages',0,0,1),(20,'ClearCling','21','0',1,'roll',54,110,25,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',1,0,1,6,13,33,1,2,1,0,0,0,0,0,1,'OnePerTwoPages',0,0,1),(21,'ClearPoly','22','0',1,'roll',60,150,24,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',1,0,1,6,13,33,1,2,1,0,0,0,0,0,1,'OnePerTwoPages',0,0,1),(22,'CarpetDecal','23','0',1,'roll',54,150,4,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,1,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(23,'Falconboard','24','0',1,'sheet',48,96,31,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,10,33,11,6,0,1,0,0,0,0,0,'OnePerTwoPages',0,0,1),(24,'FloorDecal','9','0',1,'roll',54,150,4,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,1,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(25,'Foamboard','25','0',1,'sheet',48,96,30,'Orthogonal','Margins','0.5','0.125','0.75','0.125','0.125','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,10,33,12,7,0,1,0,0,0,0,0,'OnePerTwoPages',0,1,1),(26,'Litecal','26','0',1,'roll',60,150,8,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(27,'Magnet','27','0',1,'roll',40,140,17,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',1,0,1,2,10,33,1,10,0,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(28,'Mesh','4','0',1,'roll',126,150,5,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,3,33,1,1,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(29,'MDO','5','0',1,'sheet',48,96,1,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',1,0,0,5,2,33,1,1,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(30,'OpaqueCling','28','0',1,'roll',54,150,26,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(31,'Perf','29','0',1,'roll',54,150,28,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(32,'ReflectiveVinyl','30','0',1,'sheet',49,99,18,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,3,'Contour',3,0,0,2,3,33,1,1,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(33,'EtchedGlass','31','0',1,'roll',60,150,8,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',1,0,1,6,11,33,1,2,1,0,0,0,0,0,1,'OnePerTwoPages',0,0,1),(34,'PhotoMatte','32','0',1,'roll',50,150,9,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',6,0,0,2,6,33,1,9,0,0,0,0,1,1,0,'OnePerTwoPages',0,0,1),(35,'PhotoGloss','33','0',1,'roll',50,150,9,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',6,0,0,2,6,33,1,9,0,0,0,0,1,1,0,'OnePerTwoPages',0,0,1),(36,'PhotoMetallic','34','0',1,'roll',30,150,10,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',6,0,0,2,6,33,1,9,0,0,0,0,1,1,0,'OnePerTwoPages',0,0,1),(37,'Celtec','1','0',1,'roll',126,160,5,'Orthogonal','Margins','0.5','','0.75','','','0.25','','Sheet',7,0,2,'Contour',5,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(38,'Flag','35','0',1,'roll',126,160,5,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',5,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerPage',0,0,1),(39,'OutdoorWall','36','0',1,'roll',53,150,12,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(40,'StreetGraphics','37','0',1,'roll',53,150,12,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(41,'Mask','38','0',1,'roll',126,160,5,'None','Margins','0.5','','0.75','','','0.125','','CustomFaceMask',7,0,2,'Contour',5,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(42,'Gaiter','39','0',1,'roll',126,160,5,'Custom','Margins','0.6','','0.75','','','0.125','90','CustomFaceMask',7,0,2,'Contour',5,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(43,'Gaiter-Lightweight','40','0',1,'roll',60,160,8,'None','Margins','0.6','','0.75','','','0.125','0','CustomFaceMask',7,0,2,'Contour',5,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(44,'CutVinyl','42','0',1,'roll',48,150,22,'Orthogonal','Margins','0.5','','0.75','','','0.125','','CutVinyl',7,0,2,'Margins',7,0,0,2,16,NULL,1,1,0,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(45,'RollLabels','43','0',3,'roll',12,39,27,'Custom','Margins','0.125','','','','','0.0625','-90','RollLabel',7,0,2,'Margins',10,0,0,1,16,NULL,1,1,0,0,0,0,0,0,0,'OnePerTwoPages',10,0,1),(46,'Coroplast','2','0',2,'sheet',48,96,29,'None','Margins','0.5','.125','.75','.125','.125','.125',NULL,'Sheet',7,0,1,'Contour',11,0,0,1,10,33,10,4,0,1,0,0,0,0,0,'OnePerTwoPages',0,1,0);
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phoenix_stock`
--

DROP TABLE IF EXISTS `phoenix_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phoenix_stock` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `stock` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phoenix_stock`
--

LOCK TABLES `phoenix_stock` WRITE;
/*!40000 ALTER TABLE `phoenix_stock` DISABLE KEYS */;
INSERT INTO `phoenix_stock` VALUES (1,'Sheet_48x96'),(2,'Sheet_49x99'),(3,'Sheet_50x99'),(4,'Roll_54'),(5,'Roll_126'),(6,'deprecated'),(7,'Roll_58'),(8,'Roll_60'),(9,'Roll_50'),(10,'Roll_30'),(11,'Roll_110'),(12,'Roll_53'),(13,'Proc_WhiteInk_48x96'),(14,'Proc_WhiteInk_50x99'),(15,'Proc_WhiteInk_54'),(16,'Proc_WhiteInk_60'),(17,'Mat_Magnet'),(18,'Mat_Reflective'),(19,'Sheet_50x98'),(20,'deprecated'),(21,'deprecated'),(22,'Mat_CutVinyl'),(23,'Proc_WhiteInk_50x98'),(24,'Mat_ClearPoly'),(25,'Mat_ClearCling'),(26,'Mat_OpaqueCling'),(27,'Proc_RollLabel_12'),(28,'Mat_Perf'),(29,'Mat_Coroplast'),(30,'Mat_Foamboard'),(31,'Mat_Falconboard');
/*!40000 ALTER TABLE `phoenix_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printers`
--

DROP TABLE IF EXISTS `printers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `printers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printers`
--

LOCK TABLES `printers` WRITE;
/*!40000 ALTER TABLE `printers` DISABLE KEYS */;
INSERT INTO `printers` VALUES (1,'P10'),(2,'Agfa'),(3,'512'),(4,'350'),(5,'Impres'),(6,'Lambda'),(7,'None'),(8,'Canon'),(9,'Colorado'),(10,'RollLabel'),(11,'EFI Vutek HS100');
/*!40000 ALTER TABLE `printers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rotate_a-frame`
--

DROP TABLE IF EXISTS `rotate_a-frame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rotate_a-frame` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `item_number` int DEFAULT NULL,
  `rotation` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rotate_a-frame`
--

LOCK TABLES `rotate_a-frame` WRITE;
/*!40000 ALTER TABLE `rotate_a-frame` DISABLE KEYS */;
INSERT INTO `rotate_a-frame` VALUES (1,14795978,90);
/*!40000 ALTER TABLE `rotate_a-frame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `undersize`
--

DROP TABLE IF EXISTS `undersize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `undersize` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `type` text,
  `base` int DEFAULT NULL,
  `adjusted` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `undersize`
--

LOCK TABLES `undersize` WRITE;
/*!40000 ALTER TABLE `undersize` DISABLE KEYS */;
INSERT INTO `undersize` VALUES (1,'width',12,11.75),(2,'width',24,23.625),(3,'width',48,47.5),(4,'height',12,11.75),(5,'height',24,23.5),(6,'height',48,47);
/*!40000 ALTER TABLE `undersize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `first` varchar(45) DEFAULT NULL,
  `last` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `directory` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bret','Combe','bret.c@digitalroominc.com','6290'),(2,'Dalenna','McVay','dalenna.mv@digitalroominc.com','6534'),(3,'Chelsea','McVay','chelsea.mv@digitalroominc.com','6532'),(4,'Gary','Speers','gary.s@digitalroominc.com','6536'),(5,'Chris','Roberts','chris.r@digitalroominc.com','6533'),(6,'Brian','Bunch','brian.b@digitalroominc.com','2353'),(7,'Joshua','Thorton','joshua.t@digitalroominc.com','4329'),(8,'Renato','Pascua','renato.p@digitalroominc.com','1927'),(9,'John','Kallios','john.k@digitalroominc.com',NULL),(10,'Jason','Richard Leyco','jrichard.l@digitalroominc.com','2530'),(11,'Norman','De Jesus','norman.dj@digitalroominc.com','2827'),(12,'Alianha','Nicole Javier','alianha.j@digitalroominc.com',NULL),(13,'Ryan','Republica','ryan.r@digitalroominc.com','4339'),(14,'Juan','Jerome Magbanua','juanjerome.m@digitalroominc.com','2882'),(15,'Mario','Atendido','mario.a@digitalroominc.com','216'),(16,'Jude','Vallagomesa','jude.v@digitalroominc.com','3799'),(17,'Ritchie','Cortez','ritchie.c@digitalroominc.com',NULL),(18,'Alfredo','Cruz','alfredo.c@digitalroominc.com','517'),(19,'Archimedes','Turo','archie.t@digitalroominc.com','5596'),(20,'Vincent','Gonzales','vincent.g@digitalroominc.com','171'),(21,'Matthew','Alliston','matthew.al@digitalroominc.com',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-15 12:42:57
