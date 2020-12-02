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
-- Table structure for table `Usluga`
--

DROP TABLE IF EXISTS `Usluga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usluga` (
  `Id_uslugi` int NOT NULL AUTO_INCREMENT,
  `Nazwa_uslugi` varchar(30) NOT NULL,
  `Opis_uslugi` varchar(255) NOT NULL,
  `Cena_uslugi` int NOT NULL,
  PRIMARY KEY (`Id_uslugi`),
  UNIQUE KEY `Id_uslugi` (`Id_uslugi`),
  CONSTRAINT `uslua_chk_1` CHECK ((`Cena_uslugi` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usluga`
--

LOCK TABLES `Usluga` WRITE;
/*!40000 ALTER TABLE `Usluga` DISABLE KEYS */;
INSERT INTO `Usluga` VALUES (1,'Przeglad samochodu','Firmowy mechanik dokonuje przegladu samochodu',300),(2,'Dodatkowy komplet kluczy','Dostarczamy dodatkowy komplet kluczy do zakupionego pojazdu',500),(3,'Opony letnie','Dostarczamy dodatkowy komplet letnich opon do auta',450),(4,'Opony zimowe','Dostarczamy dodatkowy komplet zimowych opon do auta',550),(5,'Bagaznik dachowy','W zakupionym aucie montujemy bagaznik dachowy',890),(6,'Hak holowniczy','W zakupionym aucie montujemy hak holowniczy',950),(7,'Dostawa samochodu','Dostarczymy samochod pod wybrany adres',350),(8,'Brak','Brak wykupionej dodatkowej uslugi',0);
/*!40000 ALTER TABLE `Usluga` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02 12:40:10
