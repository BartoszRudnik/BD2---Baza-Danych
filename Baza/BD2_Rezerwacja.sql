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
-- Table structure for table `Rezerwacja`
--

DROP TABLE IF EXISTS `Rezerwacja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rezerwacja` (
  `Id_rezerwacji` int NOT NULL AUTO_INCREMENT,
  `Uwagi_do_rezerwacji` varchar(255) DEFAULT NULL,
  `KlientId_klienta` int NOT NULL,
  `Data_Rezerwacji` date NOT NULL,
  `Data_Zakonczenia` date NOT NULL,
  `Oferta_UslugaOfertaId_oferty` int NOT NULL,
  `Oferta_UslugaUslugaId_uslugi` int NOT NULL,
  PRIMARY KEY (`Id_rezerwacji`),
  UNIQUE KEY `Id_rezerwacji` (`Id_rezerwacji`),
  KEY `FKRezerwacja916903` (`KlientId_klienta`),
  KEY `FKRezerwacja820383` (`Oferta_UslugaOfertaId_oferty`,`Oferta_UslugaUslugaId_uslugi`),
  CONSTRAINT `FKRezerwacja820383` FOREIGN KEY (`Oferta_UslugaOfertaId_oferty`, `Oferta_UslugaUslugaId_uslugi`) REFERENCES `Oferta_Usluga` (`OfertaId_oferty`, `UslugaId_uslugi`),
  CONSTRAINT `FKRezerwacja916903` FOREIGN KEY (`KlientId_klienta`) REFERENCES `Klient` (`Id_klienta`),
  CONSTRAINT `con1` CHECK ((`Data_Zakonczenia` >= `Data_Rezerwacji`))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rezerwacja`
--

LOCK TABLES `Rezerwacja` WRITE;
/*!40000 ALTER TABLE `Rezerwacja` DISABLE KEYS */;
INSERT INTO `Rezerwacja` VALUES (4,'test uwaga',1,'2019-11-23','2019-11-23',8,1),(5,'test uwaga2',2,'2019-11-23','2019-11-29',9,2),(6,'test uwaga3',3,'2019-01-12','2019-08-12',13,6);
/*!40000 ALTER TABLE `Rezerwacja` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 23:41:47
