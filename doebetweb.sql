-- MySQL dump 10.13  Distrib 5.6.41, for Win64 (x86_64)
--
-- Host: localhost    Database: doebetweb
-- ------------------------------------------------------
-- Server version	5.6.41-log

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
-- Table structure for table `tbldoebetwebappuser`
--

DROP TABLE IF EXISTS `tbldoebetwebappuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldoebetwebappuser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER` varchar(15) NOT NULL,
  `PWSS` char(32) NOT NULL,
  `UNME` varchar(250) NOT NULL,
  `FNME` varchar(250) NOT NULL,
  `GNDR` char(1) NOT NULL,
  `BTDY` date NOT NULL,
  `COTY` varchar(50) NOT NULL,
  `CITY` varchar(250) NOT NULL,
  `CDPT` char(5) NOT NULL,
  `EMIL` varchar(250) NOT NULL,
  `MOBL` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoebetwebappuser`
--

LOCK TABLES `tbldoebetwebappuser` WRITE;
/*!40000 ALTER TABLE `tbldoebetwebappuser` DISABLE KEYS */;
INSERT INTO `tbldoebetwebappuser` VALUES (1,'admindoebetweb','96f4f1df3dd8c1ab8ec23118936021de','Administrator','BetWeb','M','1985-06-17','Mexico','Amecameca','56900','erick.velazquez.delrosario@gmail.com','5500000000');
/*!40000 ALTER TABLE `tbldoebetwebappuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoebetwebappuserbag`
--

DROP TABLE IF EXISTS `tbldoebetwebappuserbag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldoebetwebappuserbag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `APUS` int(11) NOT NULL,
  `BLCE` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoebetwebappuserbag`
--

LOCK TABLES `tbldoebetwebappuserbag` WRITE;
/*!40000 ALTER TABLE `tbldoebetwebappuserbag` DISABLE KEYS */;
INSERT INTO `tbldoebetwebappuserbag` VALUES (1,1,1000.00);
/*!40000 ALTER TABLE `tbldoebetwebappuserbag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoebetwebbeevent`
--

DROP TABLE IF EXISTS `tbldoebetwebbeevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldoebetwebbeevent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EVNT` int(11) NOT NULL,
  `BETT` int(11) NOT NULL,
  `BIMB` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoebetwebbeevent`
--

LOCK TABLES `tbldoebetwebbeevent` WRITE;
/*!40000 ALTER TABLE `tbldoebetwebbeevent` DISABLE KEYS */;
INSERT INTO `tbldoebetwebbeevent` VALUES (1,11,1,100),(2,11,2,500),(3,11,3,-200),(4,12,1,200),(5,12,2,200),(6,12,3,100),(7,13,1,200),(8,13,2,200),(9,13,3,100),(10,14,1,200),(11,14,2,200),(12,14,3,100);
/*!40000 ALTER TABLE `tbldoebetwebbeevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoebetwebbetype`
--

DROP TABLE IF EXISTS `tbldoebetwebbetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldoebetwebbetype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SPOT` char(3) NOT NULL,
  `DSCR` varchar(350) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoebetwebbetype`
--

LOCK TABLES `tbldoebetwebbetype` WRITE;
/*!40000 ALTER TABLE `tbldoebetwebbetype` DISABLE KEYS */;
INSERT INTO `tbldoebetwebbetype` VALUES (1,'FTB','Gana Local'),(2,'FTB','Gana Visitante'),(3,'FTB','Empate'),(4,'FTB','Local anota 0 goles'),(5,'FTB','Local anota 1 gol'),(6,'FTB','Local anota 2 goles'),(7,'FTB','Local anota 3 goles'),(8,'FTB','Local anota 4 goles'),(9,'FTB','Local anota 5 goles'),(10,'FTB','Local anota 6 goles ó mas'),(11,'FTB','Visitante anota 0 goles'),(12,'FTB','Visitante anota 1 gol'),(13,'FTB','Visitante anota 2 goles'),(14,'FTB','Visitante anota 3 goles'),(15,'FTB','Visitante anota 4 goles'),(16,'FTB','Visitante anota 5 goles'),(17,'FTB','Visitante anota 6 goles ó mas'),(18,'FTB','Empatan a 0 goles'),(19,'FTB','Empatan a 1 gol'),(20,'FTB','Empatan a 2 goles'),(21,'FTB','Empatan a 3 goles'),(22,'FTB','Empatan a 4 goles'),(23,'FTB','Empatan a 5 goles'),(24,'FTB','Empatan a 6 goles ó mas');
/*!40000 ALTER TABLE `tbldoebetwebbetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoebetwebcompetition`
--

DROP TABLE IF EXISTS `tbldoebetwebcompetition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldoebetwebcompetition` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNME` char(3) NOT NULL,
  `FNME` varchar(250) NOT NULL,
  `SPOT` char(3) NOT NULL,
  `LOGO` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoebetwebcompetition`
--

LOCK TABLES `tbldoebetwebcompetition` WRITE;
/*!40000 ALTER TABLE `tbldoebetwebcompetition` DISABLE KEYS */;
INSERT INTO `tbldoebetwebcompetition` VALUES (1,'LMX','Liga MX','FTB','liga_mx.jpg'),(2,'MXF','Liga MX Femenil','FTB',''),(3,'AMX','Ascenso MX','FTB',''),(4,'CMX','Copa MX','FTB',''),(5,'SMX','Seleccion Mexicana','FTB','');
/*!40000 ALTER TABLE `tbldoebetwebcompetition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoebetwebevent`
--

DROP TABLE IF EXISTS `tbldoebetwebevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldoebetwebevent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CMPT` int(11) NOT NULL,
  `EDTN` varchar(250) DEFAULT NULL,
  `STGE` varchar(250) DEFAULT NULL,
  `LOCL` int(11) DEFAULT NULL,
  `VSTR` int(11) DEFAULT NULL,
  `DTTM` datetime DEFAULT NULL,
  `STUS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoebetwebevent`
--

LOCK TABLES `tbldoebetwebevent` WRITE;
/*!40000 ALTER TABLE `tbldoebetwebevent` DISABLE KEYS */;
INSERT INTO `tbldoebetwebevent` VALUES (11,1,'Apertura 2018','Jornada 16',3,4,'2018-11-09 17:00:00',1),(12,1,'Apertura 2018','Jornada 16',5,6,'2018-11-09 21:00:00',1),(13,1,'Apertura 2018','Jornada 16',2,7,'2018-11-10 17:00:00',1),(14,1,'Apertura 2018','Jornada 16',8,9,'2018-11-10 19:00:00',1),(15,1,'Apertura 2018','Jornada 16',10,1,'2018-11-10 19:00:00',1),(16,1,'Apertura 2018','Jornada 16',11,12,'2018-11-10 21:00:00',1),(17,1,'Apertura 2018','Jornada 16',13,14,'2018-11-10 21:00:00',1),(18,1,'Apertura 2018','Jornada 16',15,16,'2018-11-11 12:00:00',1),(19,1,'Apertura 2018','Jornada 16',17,18,'2018-11-11 18:00:00',1);
/*!40000 ALTER TABLE `tbldoebetwebevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoebetwebsport`
--

DROP TABLE IF EXISTS `tbldoebetwebsport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldoebetwebsport` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNME` char(3) NOT NULL,
  `FNME` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoebetwebsport`
--

LOCK TABLES `tbldoebetwebsport` WRITE;
/*!40000 ALTER TABLE `tbldoebetwebsport` DISABLE KEYS */;
INSERT INTO `tbldoebetwebsport` VALUES (1,'FTB','Futbol'),(2,'BLC','Baloncesto'),(3,'BSB','Beisbol'),(4,'FTA','Futbol Americano');
/*!40000 ALTER TABLE `tbldoebetwebsport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoebetwebteam`
--

DROP TABLE IF EXISTS `tbldoebetwebteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldoebetwebteam` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SNME` varchar(50) NOT NULL,
  `FNME` varchar(250) NOT NULL,
  `STAD` varchar(250) NOT NULL,
  `COTY` varchar(50) NOT NULL,
  `SPOT` char(3) NOT NULL,
  `LOGO` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoebetwebteam`
--

LOCK TABLES `tbldoebetwebteam` WRITE;
/*!40000 ALTER TABLE `tbldoebetwebteam` DISABLE KEYS */;
INSERT INTO `tbldoebetwebteam` VALUES (1,'Chivas','Club Deportivo Guadalajara','Estadio Akron','MX','FTB','chivas.png'),(2,'Cruz Azul','Club Deportivo Cruz Azul','Estadio Azteca','MX','FTB','cruzazul.png'),(3,'Veracruz','Tiburones Rojos de Veracruz','Estadio Luis Pirata Fuente','MX','FTB','veracruz.png'),(4,'Queretaro','Gallos Blancos de Querétaro','Estadio La Corregidora','MX','FTB','queretaro.png'),(5,'Atlas','Atlas','Estadio Jalisco','MX','FTB','atlas.png'),(6,'Pachuca','Tuzos de Pachuca','Estadio Hidalgo','MX','FTB','pachuca.png'),(7,'Lobos BUAP','Lobos BUAP','Estadio Universitario BUAP','MX','FTB','lobosbuap.png'),(8,'Tigres','Tigres de la U.A.N.L.','Estadio Universitario','MX','FTB','tigres.png'),(9,'Puebla','Puebla F.C.','Estadio Cuauhtémoc','MX','FTB','puebla.png'),(10,'León','León','Estadio Nou Camp','MX','FTB','leon.png'),(11,'Tijuana','Club Tijuana','Estadio Caliente','MX','FTB','tijuana.png'),(12,'Morelia','Monarcas Morelia','Estadio José María Morelos y Pavón','MX','FTB','morelia.png'),(13,'Necaxa','Necaxa','Estadio Victoria','MX','FTB','necaxa.png'),(14,'Monterrey','Rayados de Monterrey','Estadio BBVA Bancomer','MX','FTB','monterrey.png'),(15,'Toluca','Diablos de Toluca','Estadio Nemesio Diez','MX','FTB','toluca.png'),(16,'Pumas','Universidad Nacional','Estadio Olímpico Universitario','MX','FTB','pumas.png'),(17,'Santos','Santos Laguna','Estadio TSM Corona','MX','FTB','santos.png'),(18,'America','Aguilas del America','Estadio Azteca','MX','FTB','america.png');
/*!40000 ALTER TABLE `tbldoebetwebteam` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-09  7:40:23
