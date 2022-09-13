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
-- Dumping routines for database 'digital_room'
--
/*!50003 DROP PROCEDURE IF EXISTS `getMaterial` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getMaterial`(IN paper VARCHAR(255))
BEGIN
SELECT material_info.ID 
	,production_name
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
    ,grade.gsm
    ,bleed_type
    ,printers.name
    ,margins.top
    ,margins.bottom
    ,margins.left
    ,margins.right
    ,force_lamination
    ,crop_gang
    ,white_elements
    ,page_handling
    ,overrun
    ,force_undersize
    ,side_mix
	,rip_device.device
    ,rip_hotfolder.hotfolder
    ,cutter_device.device
    ,cutter_hotfolder.hotfolder
    ,file_name
FROM digital_room.material_info
JOIN digital_room.phoenix_stock on phoenix_stock.ID = material_info.phoenix_stock
JOIN digital_room.grade on grade.ID = material_info.gsm
JOIN digital_room.printers on printers.ID = material_info.printer
JOIN digital_room.margins on margins.ID = material_info.margins
JOIN digital_room.rip_device on rip_device.ID = material_info.rip_device
JOIN digital_room.rip_hotfolder on rip_hotfolder.ID = material_info.rip_hotfolder
JOIN digital_room.cutter_device on cutter_device.ID = material_info.cutter_device
JOIN digital_room.cutter_hotfolder on cutter_hotfolder.ID = material_info.cutter_hotfolder
WHERE material_info.ID = paper;
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

-- Dump completed on 2022-09-08  0:06:58
