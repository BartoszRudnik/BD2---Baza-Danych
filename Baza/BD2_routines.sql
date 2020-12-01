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
-- Temporary view structure for view `Liczba_sztuk_danego_samochodu`
--

DROP TABLE IF EXISTS `Liczba_sztuk_danego_samochodu`;
/*!50001 DROP VIEW IF EXISTS `Liczba_sztuk_danego_samochodu`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Liczba_sztuk_danego_samochodu` AS SELECT 
 1 AS `Id_samochodu`,
 1 AS `Marka_samochodu`,
 1 AS `Model_samochodu`,
 1 AS `Łączna liczba sztuk pojazdu`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `szczegoly_pracownik`
--

DROP TABLE IF EXISTS `szczegoly_pracownik`;
/*!50001 DROP VIEW IF EXISTS `szczegoly_pracownik`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `szczegoly_pracownik` AS SELECT 
 1 AS `Imie_Pracownika`,
 1 AS `Nazwisko_Pracownika`,
 1 AS `nazwa_uprawnienia`,
 1 AS `Staz pracy [dni]`,
 1 AS `Pensja_pracownika`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `szczegoly_oferty`
--

DROP TABLE IF EXISTS `szczegoly_oferty`;
/*!50001 DROP VIEW IF EXISTS `szczegoly_oferty`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `szczegoly_oferty` AS SELECT 
 1 AS `Marka_samochodu`,
 1 AS `Model_samochodu`,
 1 AS `Cena_oferty`,
 1 AS `Rodzaj_umowy`,
 1 AS `Ilosc_dostepnych_ofert`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `Liczba_sztuk_danego_samochodu`
--

/*!50001 DROP VIEW IF EXISTS `Liczba_sztuk_danego_samochodu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Liczba_sztuk_danego_samochodu` AS select `Samochod`.`Id_samochodu` AS `Id_samochodu`,`Samochod`.`Marka_samochodu` AS `Marka_samochodu`,`Samochod`.`Model_samochodu` AS `Model_samochodu`,sum(`Oferta`.`Ilosc_dostepnych_ofert`) AS `Łączna liczba sztuk pojazdu` from (`Samochod` join `Oferta` on((`Samochod`.`Id_samochodu` = `Oferta`.`SamochodId_samochodu`))) group by `Samochod`.`Id_samochodu` order by `Samochod`.`Id_samochodu` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `szczegoly_pracownik`
--

/*!50001 DROP VIEW IF EXISTS `szczegoly_pracownik`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `szczegoly_pracownik` AS select `Pracownik`.`Imie_Pracownika` AS `Imie_Pracownika`,`Pracownik`.`Nazwisko_Pracownika` AS `Nazwisko_Pracownika`,`Uprawnienie`.`nazwa_uprawnienia` AS `nazwa_uprawnienia`,(to_days(curdate()) - to_days(`Pracownik`.`Data_zatrudnienia_pracownika`)) AS `Staz pracy [dni]`,`Pracownik`.`Pensja_pracownika` AS `Pensja_pracownika` from (`Pracownik` join `Uprawnienie` on((`Pracownik`.`UprawnieniaId_uprawnienia` = `Uprawnienie`.`Id_uprawnienia`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `szczegoly_oferty`
--

/*!50001 DROP VIEW IF EXISTS `szczegoly_oferty`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `szczegoly_oferty` AS select `Samochod`.`Marka_samochodu` AS `Marka_samochodu`,`Samochod`.`Model_samochodu` AS `Model_samochodu`,`Oferta`.`Cena_oferty` AS `Cena_oferty`,`Umowa`.`Rodzaj_umowy` AS `Rodzaj_umowy`,`Oferta`.`Ilosc_dostepnych_ofert` AS `Ilosc_dostepnych_ofert` from ((`Oferta` join `Umowa` on((`Oferta`.`UmowaId_umowy` = `Umowa`.`Id_umowy`))) join `Samochod` on((`Oferta`.`SamochodId_samochodu` = `Samochod`.`Id_samochodu`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 23:41:47
