-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: ropa_online1
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `camisas`
--

DROP TABLE IF EXISTS `camisas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camisas` (
  `id` int NOT NULL,
  `talla` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camisas`
--

LOCK TABLES `camisas` WRITE;
/*!40000 ALTER TABLE `camisas` DISABLE KEYS */;
INSERT INTO `camisas` VALUES (1,'S','negro','$8.00'),(2,'M','negro','$10.00'),(3,'XS','azul','$5.00'),(4,'S','verde','$8.00'),(5,'L','negro','$12.00');
/*!40000 ALTER TABLE `camisas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `dui` bigint NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  PRIMARY KEY (`dui`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (555647839,'Santos',28),(744374998,'Daniel',18),(2356374777,'Alexandra',18),(4433374899,'Daniela',18),(8926374898,'melvin',18);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `cantidad` int NOT NULL,
  `nombre_producto` varchar(50) DEFAULT NULL,
  `id_c` int DEFAULT NULL,
  `id_p` int DEFAULT NULL,
  `dui_cl` bigint DEFAULT NULL,
  PRIMARY KEY (`cantidad`),
  KEY `id_c` (`id_c`),
  KEY `id_p` (`id_p`),
  KEY `dui_cl` (`dui_cl`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_c`) REFERENCES `camisas` (`id`),
  CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_p`) REFERENCES `pantalones` (`id_p`),
  CONSTRAINT `compra_ibfk_3` FOREIGN KEY (`dui_cl`) REFERENCES `cliente` (`dui`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,'pantalon',NULL,2,555647839),(2,'pantalon',NULL,5,8926374898),(3,'camisa',4,NULL,2356374777),(4,'camisa',2,NULL,744374998),(5,'pantalon',NULL,3,2356374777);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pantalones`
--

DROP TABLE IF EXISTS `pantalones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pantalones` (
  `id_p` int NOT NULL,
  `talla` varchar(50) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pantalones`
--

LOCK TABLES `pantalones` WRITE;
/*!40000 ALTER TABLE `pantalones` DISABLE KEYS */;
INSERT INTO `pantalones` VALUES (1,'30','negro','$15.00'),(2,'32','negro','$17.00'),(3,'34','azul oscuro','$18.00'),(4,'28','verde oscuro','$14.00'),(5,'26','blanco','$12.00');
/*!40000 ALTER TABLE `pantalones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-27 20:20:56
