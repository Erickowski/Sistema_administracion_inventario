-- MySQL dump 10.13  Distrib 5.5.24, for Win64 (x86)
--
-- Host: localhost    Database: sai
-- ------------------------------------------------------
-- Server version	5.5.24-log

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
-- Table structure for table `control_inventarios`
--

DROP TABLE IF EXISTS `control_inventarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_inventarios` (
  `id_control` int(10) NOT NULL DEFAULT '0',
  `cantidad_control` int(10) DEFAULT NULL,
  `tipo_control` varchar(20) DEFAULT NULL,
  `fecha_control` date DEFAULT NULL,
  `id_proveedor` int(10) DEFAULT NULL,
  `id_producto` int(10) DEFAULT NULL,
  `id_usuario` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_control`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_producto` (`id_producto`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `control_inventarios_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`),
  CONSTRAINT `control_inventarios_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `control_inventarios_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_inventarios`
--

LOCK TABLES `control_inventarios` WRITE;
/*!40000 ALTER TABLE `control_inventarios` DISABLE KEYS */;
INSERT INTO `control_inventarios` VALUES (100,100,'Entrada','1995-08-03',100,100,1),(200,100,'Salida','1998-08-03',100,100,1);
/*!40000 ALTER TABLE `control_inventarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `control_productos`
--

DROP TABLE IF EXISTS `control_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `control_productos` (
  `id_producto` int(10) DEFAULT NULL,
  `id_proveedor` int(10) DEFAULT NULL,
  `precio_producto` float(5,2) DEFAULT NULL,
  KEY `id_producto` (`id_producto`),
  KEY `id_proveedor` (`id_proveedor`),
  CONSTRAINT `control_productos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `control_productos_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `control_productos`
--

LOCK TABLES `control_productos` WRITE;
/*!40000 ALTER TABLE `control_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `control_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` int(10) NOT NULL DEFAULT '0',
  `nombre_producto` varchar(40) DEFAULT NULL,
  `descripcion_producto` varchar(100) DEFAULT NULL,
  `cantidad_producto` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (100,'Cabezal','Cabezal de cuatro llaves',100),(200,'Mascarilla','Mascarilla de policarbonato',100),(300,'Casco de seguridad verde','Casco para proteccion especial',100);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id_proveedor` int(10) NOT NULL DEFAULT '0',
  `nombre_proveedor` varchar(40) DEFAULT NULL,
  `direccion_proveedor` varchar(100) DEFAULT NULL,
  `telefono_proveedor` int(10) DEFAULT NULL,
  `email_proveedor` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (100,'Infra','Felix guzman 16',2147483647,'contacto@infra.com'),(200,'Bylack','Tepanecas 230',2147483647,'contacto@bylack.com'),(300,'Herhild','Calle 7 193',2147483647,'contacto@herhild.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_usuario` int(10) NOT NULL DEFAULT '0',
  `nombre_usuario` varchar(20) DEFAULT NULL,
  `password_usuario` varchar(20) DEFAULT NULL,
  `tipo_usuario` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'root','root','root'),(2,'Erick','perez','Empleado'),(3,'Daniel','Mata','Gerente');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-29 13:26:36
