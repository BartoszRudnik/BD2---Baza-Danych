-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: BD2
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `Klient`
--

DROP TABLE IF EXISTS `Klient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Klient` (
  `Id_klienta` int NOT NULL AUTO_INCREMENT,
  `Imie_klienta` varchar(30) NOT NULL,
  `Nazwisko_klienta` varchar(30) NOT NULL,
  `nrPesel_klienta` varchar(11) NOT NULL,
  PRIMARY KEY (`Id_klienta`),
  UNIQUE KEY `Id_klienta` (`Id_klienta`),
  CONSTRAINT `Klient_chk_1` CHECK ((char_length(`nrPesel_klienta`) = 11))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Klient`
--

LOCK TABLES `Klient` WRITE;
/*!40000 ALTER TABLE `Klient` DISABLE KEYS */;
INSERT INTO `Klient` VALUES (1,'Stefan','Misiowski','92031578901'),(2,'Janusz','Kowalczyk','76021378221'),(3,'Irena','Szara','89021207712'),(4,'Monika','Oliwczak','97013044128'),(5,'Bronislaw','Staszewski','59071288547');
/*!40000 ALTER TABLE `Klient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 21:04:26
