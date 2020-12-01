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
-- Table structure for table `Samochod`
--

DROP TABLE IF EXISTS `Samochod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Samochod` (
  `Id_samochodu` int NOT NULL AUTO_INCREMENT,
  `Marka_samochodu` varchar(40) NOT NULL,
  `Model_samochodu` varchar(40) NOT NULL,
  `Silnik_samochodu` varchar(20) NOT NULL,
  `Liczba_koni_mechanicznych_samochodu` int NOT NULL,
  `Liczba_drzwi_samochodu` int NOT NULL,
  `Liczba_miejsc_samochodu` int NOT NULL,
  `Rok_produkcji_samochodu` int NOT NULL,
  `Kolor_samochodu` varchar(30) NOT NULL,
  `Rodzaj_paliwa_samochodu` varchar(30) NOT NULL,
  `Rodzaj_skrzyni_biegow_samochodu` varchar(15) NOT NULL,
  PRIMARY KEY (`Id_samochodu`),
  UNIQUE KEY `Id_samochodu` (`Id_samochodu`),
  CONSTRAINT `Samochod_chk_1` CHECK ((`Liczba_koni_mechanicznych_samochodu` >= 0)),
  CONSTRAINT `Samochod_chk_2` CHECK ((`Liczba_drzwi_samochodu` >= 2)),
  CONSTRAINT `Samochod_chk_3` CHECK ((`Liczba_miejsc_samochodu` >= 2)),
  CONSTRAINT `Samochod_chk_4` CHECK ((`Rok_produkcji_samochodu` >= 1885)),
  CONSTRAINT `Samochod_chk_5` CHECK ((`Rodzaj_paliwa_samochodu` in (_utf8mb4'Benzyna',_utf8mb4'Olej napedowy'))),
  CONSTRAINT `Samochod_chk_6` CHECK ((`Rodzaj_skrzyni_biegow_samochodu` in (_utf8mb4'Manualna',_utf8mb4'Automatyczna')))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Samochod`
--

LOCK TABLES `Samochod` WRITE;
/*!40000 ALTER TABLE `Samochod` DISABLE KEYS */;
INSERT INTO `Samochod` VALUES (1,'FIAT','Punto','1.6',102,5,5,2015,'Czarny','Olej napedowy','Manualna'),(2,'FIAT','Stilo','1.2',70,3,4,2017,'Granatowy','Benzyna','Manualna'),(3,'SKODA','Rapid','1.4',90,5,5,2012,'Czerwony','Benzyna','Automatyczna'),(4,'SKODA','Fabia','1.2',65,3,5,2013,'Szary','Olej napedowy','Manualna'),(5,'CITROEN','C3','1.3',95,5,5,2010,'Niebieski','Olej napedowy','Manualna'),(6,'CITROEN','Picasso','1.5',60,5,5,2011,'Zielony','Benzyna','Manualna'),(7,'RENAULT','Clio','1.2',65,5,5,2009,'Czarny','Benzyna','Manualna'),(8,'RENAULT','Megane','1.6',85,5,3,2011,'Niebieski','Olej napedowy','Manualna'),(9,'OPEL','Astra','1.7',120,3,5,2016,'Niebieski','Benzyna','Automatyczna'),(10,'OPEL','Corsa','1.6',110,5,5,2015,'Bialy','Benzyna','Manualna'),(11,'OPEL','INSIGNIA','2.0',150,5,5,2017,'Zielona','Benzyna','Manualna'),(12,'FORD','FOCUS','1.9',130,3,5,2016,'Bialy','Benzyna','Automatyczna');
/*!40000 ALTER TABLE `Samochod` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 23:41:45
