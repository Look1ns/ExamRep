CREATE DATABASE  IF NOT EXISTS `dbexam` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbexam`;
-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: dbexam
-- ------------------------------------------------------
-- Server version	8.0.30-alt1.1

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
-- Table structure for table `TypeUstr`
--

DROP TABLE IF EXISTS `TypeUstr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TypeUstr` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TypeUstr`
--

LOCK TABLES `TypeUstr` WRITE;
/*!40000 ALTER TABLE `TypeUstr` DISABLE KEYS */;
/*!40000 ALTER TABLE `TypeUstr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Login` text NOT NULL,
  `Password` text NOT NULL,
  `Role` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Zakazchik`
--

DROP TABLE IF EXISTS `Zakazchik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Zakazchik` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Fam` text NOT NULL,
  `Name` text NOT NULL,
  `Otch` text NOT NULL,
  `PhoneNumber` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zakazchik`
--

LOCK TABLES `Zakazchik` WRITE;
/*!40000 ALTER TABLE `Zakazchik` DISABLE KEYS */;
/*!40000 ALTER TABLE `Zakazchik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Zayavka`
--

DROP TABLE IF EXISTS `Zayavka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Zayavka` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Number` int NOT NULL,
  `IdType` int NOT NULL,
  `IdZakazchik` int NOT NULL,
  `Model` text NOT NULL,
  `Status` text NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IdType` (`IdType`),
  KEY `IdZakazchik` (`IdZakazchik`),
  CONSTRAINT `Zayavka_ibfk_1` FOREIGN KEY (`IdType`) REFERENCES `TypeUstr` (`Id`),
  CONSTRAINT `Zayavka_ibfk_2` FOREIGN KEY (`IdZakazchik`) REFERENCES `Zakazchik` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zayavka`
--

LOCK TABLES `Zayavka` WRITE;
/*!40000 ALTER TABLE `Zayavka` DISABLE KEYS */;
/*!40000 ALTER TABLE `Zayavka` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29 13:51:10
