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
  `Codigo` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` int NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'pepe','andrada','Calle1 123',1100001111),(2,'jose','alala','Calle2 234',1111112222),(3,'jorge','gonzles','Calle3 345',1122223333),(4,'leandro','paredes','Calle4 456',1133334444);
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producto`
--

DROP TABLE IF EXISTS `Producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Producto` (
  `Codigo` int NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Precio` int NOT NULL,
  `Stock` int NOT NULL,
  `Proveedor_Codigo` int NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `fk_Producto_Proveedor_idx` (`Proveedor_Codigo`),
  CONSTRAINT `fk_Producto_Proveedor` FOREIGN KEY (`Proveedor_Codigo`) REFERENCES `Proveedor` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto`
--

LOCK TABLES `Producto` WRITE;
/*!40000 ALTER TABLE `Producto` DISABLE KEYS */;
INSERT INTO `Producto` VALUES (1,'Descripcion1',625,62,6),(2,'Descripcion2',3764,45,4),(3,' ',434,19,7),(4,'Descripcion3',5643,78,5),(5,' ',943,15,7),(6,' ',844,34,7),(7,'Descripcion4',7965,67,6),(8,'Descripcion5',8764,58,5);
/*!40000 ALTER TABLE `Producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producto_has_Cliente`
--

DROP TABLE IF EXISTS `Producto_has_Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Producto_has_Cliente` (
  `Producto_Codigo` int NOT NULL,
  `Cliente_Codigo` int NOT NULL,
  `Fecha_de_compra` date NOT NULL,
  PRIMARY KEY (`Producto_Codigo`,`Cliente_Codigo`),
  KEY `fk_Producto_has_Cliente_Cliente1_idx` (`Cliente_Codigo`),
  KEY `fk_Producto_has_Cliente_Producto1_idx` (`Producto_Codigo`),
  CONSTRAINT `fk_Producto_has_Cliente_Cliente1` FOREIGN KEY (`Cliente_Codigo`) REFERENCES `Cliente` (`Codigo`),
  CONSTRAINT `fk_Producto_has_Cliente_Producto1` FOREIGN KEY (`Producto_Codigo`) REFERENCES `Producto` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producto_has_Cliente`
--

LOCK TABLES `Producto_has_Cliente` WRITE;
/*!40000 ALTER TABLE `Producto_has_Cliente` DISABLE KEYS */;
INSERT INTO `Producto_has_Cliente` VALUES (1,4,'2020-06-01'),(2,1,'2023-12-31'),(5,3,'2023-11-24'),(8,2,'2022-08-12');
/*!40000 ALTER TABLE `Producto_has_Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proveedor`
--

DROP TABLE IF EXISTS `Proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Proveedor` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Provincia` varchar(45) DEFAULT NULL,
  `Telefono` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proveedor`
--

LOCK TABLES `Proveedor` WRITE;
/*!40000 ALTER TABLE `Proveedor` DISABLE KEYS */;
INSERT INTO `Proveedor` VALUES (4,'Nombre1','Apellido1','Calle5 567','Buenos Aires',1144445555),(5,'Nombre2','Apellido2','Calle6 678','Cordoba',1155556666),(6,'Nombre3','Apellido3','Calle7 789','Mendoza',1166667777),(7,'Nombre4','Apellido4','Calle8 890','Chubut',1177778888);
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

-- Dump completed on 2024-05-03 17:14:51
