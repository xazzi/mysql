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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materials`
--

LOCK TABLES `materials` WRITE;
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
INSERT INTO `materials` VALUES (1,'24pt-Cardstock','11','0',1,'sheet',48,96,1,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,14,1,1,1,0,0,0,0,0,'OnePerTwoPages',0,0,1),(2,'A-Frame','2','1',1,'sheet',48,96,29,'Custom','Margins','0.5','0.125','0.75','0.125','0.125','0.125','90','Sheet',7,0,1,'Contour',2,0,0,1,10,33,13,4,0,1,0,0,0,0,0,'OnePerPage',0,0,1),(3,'Coroplast','2','0',1,'sheet',48,96,29,'None','Margins','0.5','0.125','0.75','0.125','0.125','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,10,33,10,4,0,1,0,0,0,0,0,'OnePerTwoPages',0,1,0),(4,'BlackGator','10','0',1,'sheet',48,96,1,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,2,9,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(5,'WhiteGator','12','0',1,'sheet',48,96,1,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,3,9,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(6,'2mm-Epanel','6','0',1,'sheet',49,99,2,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,4,1,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(7,'3mm-Sintra','13','0',1,'sheet',50,99,3,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,6,11,0,1,0,0,0,0,0,'OnePerTwoPages',0,0,1),(8,'6mm-Sintra','14','0',1,'sheet',50,99,3,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,2,33,5,1,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(9,'3m180','8','0',1,'roll',54,150,4,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',9,1,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(10,'3mIJ40','15','0',1,'roll',54,150,4,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(11,'4milWall','16','0',1,'roll',54,150,4,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,3,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(12,'25-Acrylic','7','0',1,'sheet',50,98,23,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',1,0,0,7,2,33,7,1,0,0,0,0,1,0,1,'OnePerTwoPages',0,0,1),(13,'125-Acrylic','3','0',1,'sheet',50,98,23,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',1,0,0,7,2,33,8,1,0,0,0,0,1,0,1,'OnePerTwoPages',0,0,1),(14,'FrostedAcrylic','17','0',1,'sheet',48,96,13,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',1,0,0,7,2,33,1,1,0,0,0,0,1,0,1,'OnePerTwoPages',0,0,1),(15,'13ozBanner','18','0',1,'roll',126,150,5,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,4,3,33,1,3,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,0),(16,'Breakaway','18','2',1,'roll',126,150,5,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,4,3,33,1,3,1,0,0,0,0,0,0,'OnePerPage',0,0,1),(17,'18ozBanner','41','0',1,'roll',126,150,5,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,0,25,3,33,1,3,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,0),(18,'DSS','19','0',1,'roll',30,150,10,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',1,0,1,2,2,33,1,3,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(19,'BrushedSilver','20','0',1,'sheet',48,96,13,'Custom','Margins','0.5','','0.75','','','0.125','90','Sheet',7,0,1,'Contour',1,0,0,7,2,33,9,1,0,0,0,0,1,0,1,'OnePerTwoPages',0,0,1),(20,'ClearCling','21','0',1,'roll',54,110,25,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',1,0,1,6,13,33,1,2,1,0,0,0,0,0,1,'OnePerTwoPages',0,0,1),(21,'ClearPoly','22','0',1,'roll',60,150,24,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',1,0,1,6,13,33,1,2,1,0,0,0,0,0,1,'OnePerTwoPages',0,0,1),(22,'CarpetDecal','23','0',1,'roll',54,150,4,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,1,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(23,'Falconboard','24','0',1,'sheet',48,96,31,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,10,33,11,6,0,1,0,0,0,0,0,'OnePerTwoPages',0,0,1),(24,'FloorDecal','9','0',1,'roll',54,150,4,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,1,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(25,'Foamboard','25','0',1,'sheet',48,96,30,'Orthogonal','Margins','0.5','0.125','0.75','0.125','0.125','0.125','','Sheet',7,0,1,'Contour',2,0,0,1,10,33,12,7,0,1,0,0,0,0,0,'OnePerTwoPages',0,1,1),(26,'Litecal','26','0',1,'roll',60,150,8,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(27,'Magnet','27','0',1,'roll',40,140,17,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',1,0,1,2,10,33,1,10,0,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(28,'Mesh','4','0',1,'roll',126,150,5,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(29,'MDO','5','0',1,'sheet',48,96,1,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,1,'Contour',1,0,0,5,2,33,1,1,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(30,'OpaqueCling','28','0',1,'roll',54,150,26,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(31,'Perf','29','0',1,'roll',54,150,28,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(32,'ReflectiveVinyl','30','0',1,'sheet',49,99,18,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,3,'Contour',3,0,1,2,3,33,1,1,0,0,0,0,1,0,0,'OnePerTwoPages',0,0,1),(33,'EtchedGlass','31','0',1,'roll',60,150,8,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',1,0,1,6,11,33,1,2,1,0,0,0,0,0,1,'OnePerTwoPages',0,0,1),(34,'PhotoMatte','32','0',1,'roll',50,150,9,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',6,0,0,2,6,33,1,9,0,0,0,0,1,1,0,'OnePerTwoPages',0,0,1),(35,'PhotoGloss','33','0',1,'roll',50,150,9,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',6,0,0,2,6,33,1,9,0,0,0,0,1,1,0,'OnePerTwoPages',0,0,1),(36,'PhotoMetallic','34','0',1,'roll',30,150,10,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',6,0,0,2,6,33,1,9,0,0,0,0,1,1,0,'OnePerTwoPages',0,0,1),(37,'Celtec','1','0',1,'roll',126,160,5,'Orthogonal','Margins','0.5','','0.75','','','0.25','','Sheet',7,0,2,'Contour',5,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(38,'Flag','35','0',1,'roll',126,160,5,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',5,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerPage',0,0,1),(39,'OutdoorWall','36','0',1,'roll',53,150,12,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(40,'StreetGraphics','37','0',1,'roll',53,150,12,'Orthogonal','Margins','0.5','','0.75','','','0.125','','Sheet',7,0,2,'Contour',3,0,1,2,9,33,1,2,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(41,'Mask','38','0',1,'roll',126,160,5,'None','Margins','0.5','','0.75','','','0.125','','CustomFaceMask',7,0,2,'Contour',5,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(42,'Gaiter','39','0',1,'roll',126,160,5,'Custom','Margins','0.6','','0.75','','','0.125','90','CustomFaceMask',7,0,2,'Contour',5,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(43,'Gaiter-Lightweight','40','0',1,'roll',60,160,8,'None','Margins','0.6','','0.75','','','0.125','0','CustomFaceMask',7,0,2,'Contour',5,0,1,2,3,33,1,5,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(44,'CutVinyl','42','0',1,'roll',48,150,22,'Orthogonal','Margins','0.5','','0.75','','','0.125','','CutVinyl',7,0,2,'Margins',7,0,0,2,16,NULL,1,1,0,0,0,0,0,0,0,'OnePerTwoPages',0,0,1),(45,'RollLabels','43','0',3,'roll',12,39,27,'Custom','Margins','0.125','','','','','0.0625','-90','RollLabel',7,0,2,'Margins',10,0,0,1,16,NULL,1,1,0,0,0,0,0,0,0,'OnePerTwoPages',10,0,1),(46,'Coroplast','2','0',2,'sheet',48,96,29,'None','Margins','0.5','.125','.75','.125','.125','.125',NULL,'Sheet',7,0,1,'Contour',11,0,0,1,10,33,10,4,0,1,0,0,0,0,0,'OnePerTwoPages',10,1,0),(47,'A-Frame','2','1',2,'sheet',48,96,29,'Custom','Margins','.5','.125','.75','.125','.125','.125','90','Sheet',7,0,1,'Contour',11,0,0,1,10,33,13,4,0,1,0,0,0,0,0,'OnePerPage',0,0,1),(48,'13ozBanner','18','0',2,'roll',126,370,5,'Orthogonal','Margins','.5',NULL,'.75',NULL,NULL,'.125',NULL,'Sheet',7,0,2,'Contour',12,0,1,4,3,33,1,3,1,0,0,0,0,0,0,'OnePerTwoPages',0,0,1);
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-27 19:20:18
