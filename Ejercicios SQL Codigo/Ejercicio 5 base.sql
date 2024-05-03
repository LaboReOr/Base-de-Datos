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
-- Table structure for table `Ingresos`
--

DROP TABLE IF EXISTS `Ingresos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingresos` (
  `Codigo` int NOT NULL,
  `N° Habitacion` int NOT NULL,
  `Cama` int NOT NULL,
  `Fecha` date NOT NULL,
  `Paciente_Codigo` int NOT NULL,
  `Medico_Codigo` int NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `fk_Ingresos_Paciente_idx` (`Paciente_Codigo`),
  KEY `fk_Ingresos_Medico1_idx` (`Medico_Codigo`),
  CONSTRAINT `fk_Ingresos_Medico1` FOREIGN KEY (`Medico_Codigo`) REFERENCES `Medico` (`Codigo`),
  CONSTRAINT `fk_Ingresos_Paciente` FOREIGN KEY (`Paciente_Codigo`) REFERENCES `Paciente` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingresos`
--

LOCK TABLES `Ingresos` WRITE;
/*!40000 ALTER TABLE `Ingresos` DISABLE KEYS */;
INSERT INTO `Ingresos` VALUES (1,1,1,'2021-03-06',1,3),(3,3,3,'2019-06-30',4,2);
/*!40000 ALTER TABLE `Ingresos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medico`
--

DROP TABLE IF EXISTS `Medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medico` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Especialidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medico`
--

LOCK TABLES `Medico` WRITE;
/*!40000 ALTER TABLE `Medico` DISABLE KEYS */;
INSERT INTO `Medico` VALUES (1,'Jorgito','Muñoz','1166667777','Traumatologo'),(2,'Andres','Rauschgift','1177778888','Especialidad2'),(3,'Andreo','Pepe','1188889999','Especialidad3'),(5,'Pepe','Sand','1199990000','Pediatra');
/*!40000 ALTER TABLE `Medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paciente`
--

DROP TABLE IF EXISTS `Paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Paciente` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Ciudad` varchar(45) NOT NULL,
  `Provincia` varchar(45) NOT NULL,
  `Codigo postal` varchar(45) NOT NULL,
  `Telefono` int NOT NULL,
  `Nacimiento` date NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paciente`
--

LOCK TABLES `Paciente` WRITE;
/*!40000 ALTER TABLE `Paciente` DISABLE KEYS */;
INSERT INTO `Paciente` VALUES (1,'Nombre1','Apellido1','Calle1 123','CABA','Buenos aires','1041',1122223333,'1992-06-25'),(2,'Nombre2','Apellido2','Calle2 234','Cordoba','Cordoba','2144',1133334444,'1978-01-05'),(3,'Nombre3','Apellido3','Calle3 345','Mendoza','Mendoza','8915',1144445555,'2012-10-11'),(4,'Nombre4','Apellido4','Calle4 456','Rosario','Santa Fe','5639',1155556666,'1986-08-19');
/*!40000 ALTER TABLE `Paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-03 15:50:49
