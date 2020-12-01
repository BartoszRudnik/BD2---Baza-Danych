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
-- Table structure for table `Pracownik`
--

DROP TABLE IF EXISTS `Pracownik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pracownik` (
  `Id_Pracownika` int NOT NULL AUTO_INCREMENT,
  `Imie_Pracownika` varchar(30) NOT NULL,
  `Nazwisko_Pracownika` varchar(30) NOT NULL,
  `Data_zatrudnienia_pracownika` date NOT NULL,
  `Pensja_pracownika` int NOT NULL,
  `haslo_pracownika` varchar(255) NOT NULL,
  `UprawnieniaId_uprawnienia` int NOT NULL,
  PRIMARY KEY (`Id_Pracownika`),
  UNIQUE KEY `Id_Pracownika` (`Id_Pracownika`),
  KEY `FKPracownik280738` (`UprawnieniaId_uprawnienia`),
  CONSTRAINT `FKPracownik280738` FOREIGN KEY (`UprawnieniaId_uprawnienia`) REFERENCES `Uprawnienie` (`Id_uprawnienia`),
  CONSTRAINT `Pracownik_chk_1` CHECK ((`Pensja_pracownika` >= 0)),
  CONSTRAINT `Pracownik_chk_2` CHECK ((char_length(`haslo_pracownika`) >= 6))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pracownik`
--

LOCK TABLES `Pracownik` WRITE;
/*!40000 ALTER TABLE `Pracownik` DISABLE KEYS */;
INSERT INTO `Pracownik` VALUES (7,'Maciej','Kowalski','2012-09-12',5500,'haslo1234',1),(8,'Stefan','Nowak','2015-12-02',4000,'mojehaslo999',2),(9,'Alicja','Nowacka','2016-02-23',4000,'pl22ww33',2),(10,'Wojciech','Stalicki','2019-05-12',3200,'nowehaslo2312',3),(11,'Karolina','Woźna','2019-02-21',3200,'testowehaslo23187',3),(12,'Dominika','Kowal','2020-01-30',2900,'wwwccc222',3);
/*!40000 ALTER TABLE `Pracownik` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 21:25:05
