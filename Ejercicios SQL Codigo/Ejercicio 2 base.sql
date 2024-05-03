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
-- Table structure for table `Camion`
--

DROP TABLE IF EXISTS `Camion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Camion` (
  `Matricula` int NOT NULL,
  `Modelo` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Potencia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Camion`
--

LOCK TABLES `Camion` WRITE;
/*!40000 ALTER TABLE `Camion` DISABLE KEYS */;
INSERT INTO `Camion` VALUES (1,'Camion generico 1','Tipo 1','Muy potente'),(2,'Camion generico 2','Tipo 2','Medianamente potente'),(3,'Camion generico 3','Tipo 3','Poco potente');
/*!40000 ALTER TABLE `Camion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Camioneros`
--

DROP TABLE IF EXISTS `Camioneros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Camioneros` (
  `DNI` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Telefono` int NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Ciudad` varchar(45) NOT NULL,
  `Salario` int NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Camioneros`
--

LOCK TABLES `Camioneros` WRITE;
/*!40000 ALTER TABLE `Camioneros` DISABLE KEYS */;
INSERT INTO `Camioneros` VALUES (11111111,'Pepito1',911222222,'Calle 1','Ciudad 1',607640),(11111112,'Pepito2',911333333,'Calle 2','Ciudad 2',553410),(11111113,'Pepito3',911444444,'Calle 3','Ciudad 3',676060);
/*!40000 ALTER TABLE `Camioneros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Camioneros_has_Camion`
--

DROP TABLE IF EXISTS `Camioneros_has_Camion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Camioneros_has_Camion` (
  `Camioneros_DNI` int NOT NULL,
  `Camion_Matricula` int NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`Camioneros_DNI`,`Camion_Matricula`),
  KEY `fk_Camioneros_has_Camion_Camion1_idx` (`Camion_Matricula`),
  KEY `fk_Camioneros_has_Camion_Camioneros1_idx` (`Camioneros_DNI`),
  CONSTRAINT `fk_Camioneros_has_Camion_Camion1` FOREIGN KEY (`Camion_Matricula`) REFERENCES `Camion` (`Matricula`),
  CONSTRAINT `fk_Camioneros_has_Camion_Camioneros1` FOREIGN KEY (`Camioneros_DNI`) REFERENCES `Camioneros` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Camioneros_has_Camion`
--

LOCK TABLES `Camioneros_has_Camion` WRITE;
/*!40000 ALTER TABLE `Camioneros_has_Camion` DISABLE KEYS */;
INSERT INTO `Camioneros_has_Camion` VALUES (11111111,2,'1999-12-30'),(11111112,1,'2003-04-26'),(11111113,3,'1989-10-11');
/*!40000 ALTER TABLE `Camioneros_has_Camion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paquetes`
--

DROP TABLE IF EXISTS `Paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paquetes` (
  `Codigo` int NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Direccion_destinatario` varchar(45) NOT NULL,
  `Camioneros_DNI` int NOT NULL,
  `Provincias_Codigo` int NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `fk_Paquetes_Camioneros_idx` (`Camioneros_DNI`),
  KEY `fk_Paquetes_Provincias1_idx` (`Provincias_Codigo`),
  CONSTRAINT `fk_Paquetes_Camioneros` FOREIGN KEY (`Camioneros_DNI`) REFERENCES `Camioneros` (`DNI`),
  CONSTRAINT `fk_Paquetes_Provincias1` FOREIGN KEY (`Provincias_Codigo`) REFERENCES `Provincias` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paquetes`
--

LOCK TABLES `Paquetes` WRITE;
/*!40000 ALTER TABLE `Paquetes` DISABLE KEYS */;
INSERT INTO `Paquetes` VALUES (104,'Desc Paquete 4','Desc Persona 4',11111112,2),(105,'Desc Paquete 5','Desc Persona 5',11111113,3);
/*!40000 ALTER TABLE `Paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Provincias`
--

DROP TABLE IF EXISTS `Provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Provincias` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Provincias`
--

LOCK TABLES `Provincias` WRITE;
/*!40000 ALTER TABLE `Provincias` DISABLE KEYS */;
INSERT INTO `Provincias` VALUES (1,'Buenos aires'),(2,'Cordoba'),(3,'Mendoza');
/*!40000 ALTER TABLE `Provincias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03 14:31:24
