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
-- Table structure for table `Oferta`
--

DROP TABLE IF EXISTS `Oferta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Oferta` (
  `Id_oferty` int NOT NULL AUTO_INCREMENT,
  `Cena_oferty` int NOT NULL,
  `Ilosc_dostepnych_ofert` int NOT NULL,
  `SamochodId_samochodu` int NOT NULL,
  `UmowaId_umowy` int NOT NULL,
  `PromocjaId_promocji` int NOT NULL,
  `PracownikId_Pracownika` int NOT NULL,
  PRIMARY KEY (`Id_oferty`),
  UNIQUE KEY `Id_oferty` (`Id_oferty`),
  KEY `FKOferta893964` (`SamochodId_samochodu`),
  KEY `FKOferta484083` (`UmowaId_umowy`),
  KEY `FKOferta401846` (`PromocjaId_promocji`),
  KEY `FKOferta465343` (`PracownikId_Pracownika`),
  CONSTRAINT `FKOferta401846` FOREIGN KEY (`PromocjaId_promocji`) REFERENCES `Promocja` (`Id_promocji`),
  CONSTRAINT `FKOferta465343` FOREIGN KEY (`PracownikId_Pracownika`) REFERENCES `Pracownik` (`Id_Pracownika`),
  CONSTRAINT `FKOferta484083` FOREIGN KEY (`UmowaId_umowy`) REFERENCES `Umowa` (`Id_umowy`),
  CONSTRAINT `FKOferta893964` FOREIGN KEY (`SamochodId_samochodu`) REFERENCES `Samochod` (`Id_samochodu`),
  CONSTRAINT `Oferta_chk_1` CHECK ((`Cena_oferty` > 0)),
  CONSTRAINT `Oferta_chk_3` CHECK ((`Ilosc_dostepnych_ofert` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Oferta`
--

LOCK TABLES `Oferta` WRITE;
/*!40000 ALTER TABLE `Oferta` DISABLE KEYS */;
INSERT INTO `Oferta` VALUES (8,25000,3,1,1,4,8),(9,500,2,2,3,4,9),(10,35000,5,3,1,4,10),(11,55000,1,5,1,4,11),(12,39000,4,10,1,4,12),(13,2500,4,9,2,4,8),(14,800,1,12,3,4,9);
/*!40000 ALTER TABLE `Oferta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 21:25:06
