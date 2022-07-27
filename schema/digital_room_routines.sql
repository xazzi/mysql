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
-- Dumping events for database 'digital_room'
--

--
-- Dumping routines for database 'digital_room'
--
/*!50003 DROP PROCEDURE IF EXISTS `getMaterial_v1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaterial_v1`(IN paper VARCHAR(255), IN item VARCHAR(255))
BEGIN
SELECT materials.ID 
	,production_name
	,paper_reference
    ,item_reference
    ,type
    ,width
    ,height
	,phoenix_stock.stock
    ,rotation
    ,spacing_type
    ,spacing_default
    ,spacing_top
    ,spacing_bottom
    ,spacing_left
    ,spacing_right
    ,bleed
    ,allowed_rotations
    ,imposition_profile
    ,phoenix_version
    ,dev_environment
    ,grade.gsm
    ,bleed_type
    ,printers.name
    ,margins.top
    ,margins.bottom
    ,margins.left
    ,margins.right
    ,force_lamination
    ,crop_gang
    ,hotfolders_caldera.name
    ,caldera_ip
    ,hotfolders_asanti.name as hotfolder_asanti
    ,hotfolders_autocutter.name as hotfolder_autocutter
    ,g3_bigBoy
    ,g3_longBoy
    ,sac_zund
    ,slc_zund
    ,router
    ,xy
    ,white_elements
    ,page_handling
    ,overrun
    ,force_undersize
FROM digital_room.materials
JOIN digital_room.phoenix_stock on phoenix_stock.ID = materials.phoenix_stock
JOIN digital_room.grade on grade.ID = materials.gsm
JOIN digital_room.printers on printers.ID = materials.printer
JOIN digital_room.margins on margins.ID = materials.margins
JOIN digital_room.hotfolders_asanti on hotfolders_asanti.ID = materials.hotfolder_asanti
JOIN digital_room.hotfolders_caldera on hotfolders_caldera.ID = materials.hotfolder_caldera
JOIN digital_room.hotfolders_autocutter on hotfolders_autocutter.ID = materials.hotfolder_autocutter
WHERE materials.paper_reference = paper and materials.item_reference = item;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaterial_v2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaterial_v2`(IN paper VARCHAR(255), IN item VARCHAR(255), IN facility varchar(255))
BEGIN
SELECT materials.ID 
	,production_name
	,paper_reference
    ,item_reference
    ,type
    ,width
    ,height
	,phoenix_stock.stock
    ,rotation
    ,spacing_type
    ,spacing_default
    ,spacing_top
    ,spacing_bottom
    ,spacing_left
    ,spacing_right
    ,bleed
    ,allowed_rotations
    ,imposition_profile
    ,phoenix_version
    ,dev_environment
    ,grade.gsm
    ,bleed_type
    ,printers.name
    ,margins.top
    ,margins.bottom
    ,margins.left
    ,margins.right
    ,force_lamination
    ,crop_gang
    ,hotfolders_caldera.name
    ,caldera_ip
    ,hotfolders_asanti.name as hotfolder_asanti
    ,hotfolders_autocutter.name as hotfolder_autocutter
    ,g3_bigBoy
    ,g3_longBoy
    ,sac_zund
    ,slc_zund
    ,router
    ,xy
    ,white_elements
    ,page_handling
    ,overrun
    ,force_undersize
    ,facility
FROM digital_room.materials
JOIN digital_room.phoenix_stock on phoenix_stock.ID = materials.phoenix_stock
JOIN digital_room.grade on grade.ID = materials.gsm
JOIN digital_room.printers on printers.ID = materials.printer
JOIN digital_room.margins on margins.ID = materials.margins
JOIN digital_room.hotfolders_asanti on hotfolders_asanti.ID = materials.hotfolder_asanti
JOIN digital_room.hotfolders_caldera on hotfolders_caldera.ID = materials.hotfolder_caldera
JOIN digital_room.hotfolders_autocutter on hotfolders_autocutter.ID = materials.hotfolder_autocutter
WHERE materials.paper_reference = paper and materials.item_reference = item and materials.facility = facility;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getMaterial_v3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaterial_v3`(IN paper VARCHAR(255), IN item VARCHAR(255), IN facility varchar(255))
BEGIN
SELECT materials.ID 
	,production_name
	,paper_reference
    ,item_reference
    ,type
    ,width
    ,height
	,phoenix_stock.stock
    ,rotation
    ,spacing_type
    ,spacing_default
    ,spacing_top
    ,spacing_bottom
    ,spacing_left
    ,spacing_right
    ,bleed
    ,allowed_rotations
    ,imposition_profile
    ,phoenix_version
    ,dev_environment
    ,grade.gsm
    ,bleed_type
    ,printers.name
    ,margins.top
    ,margins.bottom
    ,margins.left
    ,margins.right
    ,force_lamination
    ,crop_gang
    ,hotfolders_caldera.name
    ,caldera_ip
    ,hotfolders_asanti.name as hotfolder_asanti
    ,hotfolders_autocutter.name as hotfolder_autocutter
    ,g3_bigBoy
    ,g3_longBoy
    ,sac_zund
    ,slc_zund
    ,router
    ,xy
    ,white_elements
    ,page_handling
    ,overrun
    ,force_undersize
    ,facility
    ,side_mix
FROM digital_room.materials
JOIN digital_room.phoenix_stock on phoenix_stock.ID = materials.phoenix_stock
JOIN digital_room.grade on grade.ID = materials.gsm
JOIN digital_room.printers on printers.ID = materials.printer
JOIN digital_room.margins on margins.ID = materials.margins
JOIN digital_room.hotfolders_asanti on hotfolders_asanti.ID = materials.hotfolder_asanti
JOIN digital_room.hotfolders_caldera on hotfolders_caldera.ID = materials.hotfolder_caldera
JOIN digital_room.hotfolders_autocutter on hotfolders_autocutter.ID = materials.hotfolder_autocutter
WHERE materials.paper_reference = paper and materials.item_reference = item and materials.facility = facility;
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

-- Dump completed on 2022-07-27 19:20:19
