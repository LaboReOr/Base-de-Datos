-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `DNI` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellidos` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Fecha_de_nacimiento` date NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (11111111,'Benja','Liras','Avenida Peru 202','2008-05-07'),(11111112,'Eduardo1','Martes','Av 9 de julio 4424','1992-06-04'),(11111113,'Eduardo2','Miercoles','Av 9 de julio 4425','2002-05-04'),(11111114,'Juan','Jueves','Av 9 de julio 4426','1484-02-03'),(11111115,'Juan','Viernes','Av 9 de julio 4427','2024-01-01');
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente_has_Producto`
--

DROP TABLE IF EXISTS `Cliente_has_Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente_has_Producto` (
  `Cliente_DNI` int NOT NULL,
  `Producto_Codigo` int NOT NULL,
  PRIMARY KEY (`Cliente_DNI`,`Producto_Codigo`),
  KEY `fk_Cliente_has_Producto_Producto1_idx` (`Producto_Codigo`),
  KEY `fk_Cliente_has_Producto_Cliente_idx` (`Cliente_DNI`),
  CONSTRAINT `fk_Cliente_has_Producto_Cliente` FOREIGN KEY (`Cliente_DNI`) REFERENCES `Cliente` (`DNI`),
  CONSTRAINT `fk_Cliente_has_Producto_Producto1` FOREIGN KEY (`Producto_Codigo`) REFERENCES `Producto` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente_has_Producto`
--

LOCK TABLES `Cliente_has_Producto` WRITE;
/*!40000 ALTER TABLE `Cliente_has_Producto` DISABLE KEYS */;
INSERT INTO `Cliente_has_Producto` VALUES (11111113,1),(11111112,2),(11111114,3),(11111115,4),(11111111,5);
/*!40000 ALTER TABLE `Cliente_has_Producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producto`
--

DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Producto` (
  `Codigo` int NOT NULL,
  `Precio` int NOT NULL,
  `Proveedor_DNI` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `fk_Producto_Proveedor1_idx` (`Proveedor_DNI`),
  CONSTRAINT `fk_Producto_Proveedor1` FOREIGN KEY (`Proveedor_DNI`) REFERENCES `Proveedor` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES (1,2600,22222222,'Caja'),(2,3200,22222223,'Destornillador'),(3,980,22222224,'Tornillo'),(4,150,22222225,'Tuerca'),(5,10452,22222226,'Cadena');
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedor`
--

DROP TABLE IF EXISTS `Proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedor` (
  `DNI` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedor`
--

LOCK TABLES `Proveedor` WRITE;
/*!40000 ALTER TABLE `Proveedor` DISABLE KEYS */;
INSERT INTO `Proveedor` VALUES (22222222,'Jorge1','Av Pepe 111'),(22222223,'Jorge2','Av Pepe 112'),(22222224,'Jorge3','Av Pepe 113'),(22222225,'Jorge4','Av Pepe 114'),(22222226,'Jorge5','Av Pepe 115');
/*!40000 ALTER TABLE `Proveedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-26 17:21:31
