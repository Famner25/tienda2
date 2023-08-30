CREATE DATABASE  IF NOT EXISTS `tienda2` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tienda2`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda2
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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio compra` decimal(10,0) NOT NULL,
  `precio venta` decimal(10,0) NOT NULL,
  `cantidad` decimal(10,0) NOT NULL,
  `tipo productos_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productos_tipo productos1_idx` (`tipo productos_id`),
  CONSTRAINT `fk_productos_tipo productos1` FOREIGN KEY (`tipo productos_id`) REFERENCES `tipo productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'refrigerador ',2250000,3300000,8,1),(2,'batidora',26000,55000,67,1),(3,'tostadora',35000,60000,45,1),(4,'lavadora',750000,1000000,26,1),(5,'secador ',130000,180000,36,1),(6,'estestufa elestrica',620000,830000,18,1),(7,'televisor smat tv',950000,1500000,14,1),(8,'computadora portatil',1700000,2500000,23,1),(9,'horno microhondas ',480000,600000,14,1),(10,'aspiradora',350000,470000,12,1),(11,'aire acondicionado',1600000,2300000,17,1),(12,'plancha de ropa ',190000,235000,30,1),(13,'frijol x bulto',160000,270000,11,5),(14,'freidora electrica ',185000,255000,10,1),(15,'bulto de arroz ',140000,260000,25,5),(16,'sierra electrica',230000,395000,19,3),(17,'pulidora ',145000,200000,15,3),(18,'pantalones ',45000,70000,33,2),(19,'camisa ',30000,60000,23,2),(20,'zapatos nike',115000,175000,12,2),(21,'libros x 12',65000,95000,50,4);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-29 20:46:26
