CREATE DATABASE  IF NOT EXISTS `gttdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gttdb`;
-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: gttdb
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_Actividad`
--

DROP TABLE IF EXISTS `tbl_Actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_Actividad` (
  `id_actividad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_actividad` varchar(45) NOT NULL,
  `descripcion_actividad` varchar(250) DEFAULT NULL,
  `recomendaciones` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Actividad`
--

LOCK TABLES `tbl_Actividad` WRITE;
/*!40000 ALTER TABLE `tbl_Actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_Actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Actividad_Destino`
--

DROP TABLE IF EXISTS `tbl_Actividad_Destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_Actividad_Destino` (
  `id_actividad` int(11) NOT NULL,
  `id_destino` int(11) NOT NULL,
  KEY `id_actividad` (`id_actividad`),
  KEY `id_destino` (`id_destino`),
  CONSTRAINT `tbl_Actividad_Destino_ibfk_1` FOREIGN KEY (`id_actividad`) REFERENCES `tbl_Actividad` (`id_actividad`),
  CONSTRAINT `tbl_Actividad_Destino_ibfk_2` FOREIGN KEY (`id_destino`) REFERENCES `tbl_Destino` (`id_destino`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Actividad_Destino`
--

LOCK TABLES `tbl_Actividad_Destino` WRITE;
/*!40000 ALTER TABLE `tbl_Actividad_Destino` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_Actividad_Destino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Destino`
--

DROP TABLE IF EXISTS `tbl_Destino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_Destino` (
  `id_destino` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_destino` varchar(45) NOT NULL,
  `descripcion_destino` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Destino`
--

LOCK TABLES `tbl_Destino` WRITE;
/*!40000 ALTER TABLE `tbl_Destino` DISABLE KEYS */;
INSERT INTO `tbl_Destino` VALUES (1,'Chichicastenango','Significa lugar de chichicastes'),(2,'Tikal','En Peten'),(3,'Flores','En Peten'),(4,'Quetzaltenango','La ciudad de los altos Xelaju'),(5,'Panajachel','Solola, Guatemala'),(6,'Esquipulas','La capital centroamericana de la Fe');
/*!40000 ALTER TABLE `tbl_Destino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Imagen`
--

DROP TABLE IF EXISTS `tbl_Imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_Imagen` (
  `id_imagen` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_imagen` varchar(45) DEFAULT NULL,
  `id_viaje` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_imagen`),
  KEY `id_viaje` (`id_viaje`),
  CONSTRAINT `tbl_Imagen_ibfk_1` FOREIGN KEY (`id_viaje`) REFERENCES `tbl_Viaje` (`id_viaje`),
  CONSTRAINT `tbl_Imagen_ibfk_2` FOREIGN KEY (`id_viaje`) REFERENCES `tbl_Viaje` (`id_viaje`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Imagen`
--

LOCK TABLES `tbl_Imagen` WRITE;
/*!40000 ALTER TABLE `tbl_Imagen` DISABLE KEYS */;
INSERT INTO `tbl_Imagen` VALUES (1,'viaje-1.jpg',2),(2,'viaje-2.jpg',2),(3,'viaje-3.jpg',2),(4,'viaje-4.jpg',3),(5,'viaje-5.jpg',3),(6,'viaje-6.jpg',3),(7,'viaje-7.jpg',4),(8,'viaje-8.jpg',4),(9,'viaje-9.jpg',4),(10,'viaje-10.jpg',5),(11,'viaje-11.jpg',5),(12,'viaje-12.jpg',5),(13,'viaje-13.jpg',6),(14,'viaje-14.jpg',6),(15,'viaje-15.jpg',6);
/*!40000 ALTER TABLE `tbl_Imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Reservacion`
--

DROP TABLE IF EXISTS `tbl_Reservacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_Reservacion` (
  `id_reservacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_viaje` int(11) NOT NULL,
  `cancelado` int(11) NOT NULL,
  PRIMARY KEY (`id_reservacion`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_viaje` (`id_viaje`),
  CONSTRAINT `tbl_Reservacion_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_Usuario` (`id_usuario`),
  CONSTRAINT `tbl_Reservacion_ibfk_2` FOREIGN KEY (`id_viaje`) REFERENCES `tbl_Viaje` (`id_viaje`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Reservacion`
--

LOCK TABLES `tbl_Reservacion` WRITE;
/*!40000 ALTER TABLE `tbl_Reservacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_Reservacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Rol`
--

DROP TABLE IF EXISTS `tbl_Rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_Rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(45) NOT NULL,
  `descripcion_rol` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Rol`
--

LOCK TABLES `tbl_Rol` WRITE;
/*!40000 ALTER TABLE `tbl_Rol` DISABLE KEYS */;
INSERT INTO `tbl_Rol` VALUES (1,'Administrador','Encargado de dar mantenimiento a la herramien'),(2,'Empleado','Encargado de autorizar reservaciones'),(3,'Cliente','Persona que reserva viajes para si mismo');
/*!40000 ALTER TABLE `tbl_Rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Ruta`
--

DROP TABLE IF EXISTS `tbl_Ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_Ruta` (
  `id_ruta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_ruta` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ruta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Ruta`
--

LOCK TABLES `tbl_Ruta` WRITE;
/*!40000 ALTER TABLE `tbl_Ruta` DISABLE KEYS */;
INSERT INTO `tbl_Ruta` VALUES (1,'Terrestre');
/*!40000 ALTER TABLE `tbl_Ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Transporte`
--

DROP TABLE IF EXISTS `tbl_Transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_Transporte` (
  `id_transporte` int(11) NOT NULL AUTO_INCREMENT,
  `numero_pasajeros` int(11) DEFAULT NULL,
  `nombre_transporte` varchar(45) DEFAULT NULL,
  `descripcion_transporte` varchar(100) DEFAULT NULL,
  `id_ruta` int(11) NOT NULL,
  PRIMARY KEY (`id_transporte`),
  KEY `id_ruta` (`id_ruta`),
  CONSTRAINT `tbl_Transporte_ibfk_1` FOREIGN KEY (`id_ruta`) REFERENCES `tbl_Ruta` (`id_ruta`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Transporte`
--

LOCK TABLES `tbl_Transporte` WRITE;
/*!40000 ALTER TABLE `tbl_Transporte` DISABLE KEYS */;
INSERT INTO `tbl_Transporte` VALUES (1,48,'Pulman','Bus tipo pulman',1);
/*!40000 ALTER TABLE `tbl_Transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Usuario`
--

DROP TABLE IF EXISTS `tbl_Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_Usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(45) NOT NULL,
  `contrasenia` varchar(45) NOT NULL,
  `primer_nombre` varchar(45) NOT NULL,
  `primer_apellido` varchar(45) NOT NULL,
  `correo_electronico` varchar(45) NOT NULL,
  `id_rol` int(11) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `nombre_usuario` (`nombre_usuario`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `tbl_Usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `tbl_Rol` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Usuario`
--

LOCK TABLES `tbl_Usuario` WRITE;
/*!40000 ALTER TABLE `tbl_Usuario` DISABLE KEYS */;
INSERT INTO `tbl_Usuario` VALUES (1,'admin','admin','administrador','del sistema','administrador@gtt.com',1);
/*!40000 ALTER TABLE `tbl_Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_Viaje`
--

DROP TABLE IF EXISTS `tbl_Viaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_Viaje` (
  `id_viaje` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_viaje` varchar(100) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_transporte` int(11) DEFAULT NULL,
  `id_destino` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_viaje`),
  KEY `id_transporte` (`id_transporte`),
  KEY `id_destino` (`id_destino`),
  CONSTRAINT `tbl_Viaje_ibfk_1` FOREIGN KEY (`id_transporte`) REFERENCES `tbl_Transporte` (`id_transporte`),
  CONSTRAINT `tbl_Viaje_ibfk_2` FOREIGN KEY (`id_destino`) REFERENCES `tbl_Destino` (`id_destino`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_Viaje`
--

LOCK TABLES `tbl_Viaje` WRITE;
/*!40000 ALTER TABLE `tbl_Viaje` DISABLE KEYS */;
INSERT INTO `tbl_Viaje` VALUES (2,'Ruta Maya','2016-04-20','2016-04-26',1,1),(3,'Isla de Flores','2016-08-01','2016-08-03',1,1),(4,'Viaje frio a Xela','2016-06-04','2016-06-10',1,1),(5,'PanaTrip','2016-06-18','2016-06-24',1,1),(6,'Viaje de Fe','2016-09-05','2016-09-08',1,1);
/*!40000 ALTER TABLE `tbl_Viaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-11 21:52:14
