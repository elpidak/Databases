-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.25

DROP SCHEMA IF EXISTS mydb;
CREATE SCHEMA mydb;
USE mydb;

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
-- Table structure for table `αγοράζει`
--

DROP TABLE IF EXISTS `αγοράζει`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `αγοράζει` (
  `Προϊόν_idΠροϊόντος` int NOT NULL,
  `Πελάτης_idΠελάτη` int NOT NULL,
  `idΑγοράς` int DEFAULT NULL,
  `ημερομηνίαΑγοράς` datetime DEFAULT NULL,
  PRIMARY KEY (`Προϊόν_idΠροϊόντος`,`Πελάτης_idΠελάτη`),
  KEY `fk_Προϊόν_has_Πελάτης_Πελάτης1_idx` (`Πελάτης_idΠελάτη`),
  KEY `fk_Προϊόν_has_Πελάτης_Προϊόν_idx` (`Προϊόν_idΠροϊόντος`),
  CONSTRAINT `fk_Προϊόν_has_Πελάτης_Πελάτης1` FOREIGN KEY (`Πελάτης_idΠελάτη`) REFERENCES `πελάτης` (`idΠελάτη`),
  CONSTRAINT `fk_Προϊόν_has_Πελάτης_Προϊόν` FOREIGN KEY (`Προϊόν_idΠροϊόντος`) REFERENCES `προϊόν` (`idΠροϊόντος`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `αγοράζει`
--

LOCK TABLES `αγοράζει` WRITE;
/*!40000 ALTER TABLE `αγοράζει` DISABLE KEYS */;
INSERT INTO `αγοράζει` VALUES (1255783,4,1,'2021-12-23 11:30:00'),(2684959,7,38,'2021-04-25 10:29:01'),(3648527,1,4872,'2021-08-13 19:21:49'),(4734581,6,3297,'2021-01-19 16:59:17'),(5925143,3,478,'2021-04-12 14:07:58'),(7458527,5,1387,'2021-11-25 20:58:07'),(8482591,2,247,'2021-07-22 09:44:33');
/*!40000 ALTER TABLE `αγοράζει` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `αγορέςαλλαντικών`
--

DROP TABLE IF EXISTS `αγορέςαλλαντικών`;
/*!50001 DROP VIEW IF EXISTS `αγορέςαλλαντικών`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `αγορέςαλλαντικών` AS SELECT 
 1 AS `Προϊόν_idΠροϊόντος`,
 1 AS `Πελάτης_idΠελάτη`,
 1 AS `idΑγοράς`,
 1 AS `ημερομηνίαΑγοράς`,
 1 AS `idΠροϊόντος`,
 1 AS `κατηγορία`,
 1 AS `αξίαΠροϊόντος`,
 1 AS `Κατάστημα_idΚαταστήματος`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `αγορέςανωτων10`
--

DROP TABLE IF EXISTS `αγορέςανωτων10`;
/*!50001 DROP VIEW IF EXISTS `αγορέςανωτων10`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `αγορέςανωτων10` AS SELECT 
 1 AS `Προϊόν_idΠροϊόντος`,
 1 AS `Πελάτης_idΠελάτη`,
 1 AS `idΑγοράς`,
 1 AS `ημερομηνίαΑγοράς`,
 1 AS `idΠροϊόντος`,
 1 AS `κατηγορία`,
 1 AS `αξίαΠροϊόντος`,
 1 AS `Κατάστημα_idΚαταστήματος`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `αξιολογεί_κατάστημα`
--

DROP TABLE IF EXISTS `αξιολογεί_κατάστημα`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `αξιολογεί_κατάστημα` (
  `Πελάτης_idΠελάτη` int NOT NULL,
  `Κατάστημα_idΚαταστήματος` int NOT NULL,
  `καθαριότητα` int DEFAULT NULL,
  `ποικιλίαΠροϊόντων` int DEFAULT NULL,
  PRIMARY KEY (`Πελάτης_idΠελάτη`,`Κατάστημα_idΚαταστήματος`),
  KEY `fk_Πελάτης_has_Κατάστημα_Κατάστημα_idx` (`Κατάστημα_idΚαταστήματος`),
  KEY `fk_Πελάτης_has_Κατάστημα_Πελάτης1_idx` (`Πελάτης_idΠελάτη`),
  CONSTRAINT `fk_Πελάτης_has_Κατάστημα_Κατάστημα1` FOREIGN KEY (`Κατάστημα_idΚαταστήματος`) REFERENCES `κατάστημα` (`idΚαταστήματος`),
  CONSTRAINT `fk_Πελάτης_has_Κατάστημα_Πελάτης1` FOREIGN KEY (`Πελάτης_idΠελάτη`) REFERENCES `πελάτης` (`idΠελάτη`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `αξιολογεί_κατάστημα`
--

LOCK TABLES `αξιολογεί_κατάστημα` WRITE;
/*!40000 ALTER TABLE `αξιολογεί_κατάστημα` DISABLE KEYS */;
INSERT INTO `αξιολογεί_κατάστημα` VALUES (12,5,7,6),(23,2,6,7),(45,3,7,9),(78,1,8,9),(234,4,7,8),(456,7,6,7),(573,6,9,8);
/*!40000 ALTER TABLE `αξιολογεί_κατάστημα` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `αξιολογεί_υπάλληλο`
--

DROP TABLE IF EXISTS `αξιολογεί_υπάλληλο`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `αξιολογεί_υπάλληλο` (
  `πελάτης_idΠελάτη` int NOT NULL,
  `υπάλληλος_idΥπαλλήλου` int NOT NULL,
  `ευγένεια` int DEFAULT NULL,
  `χρόνος εξυπηρέτησης` int DEFAULT NULL,
  PRIMARY KEY (`πελάτης_idΠελάτη`,`υπάλληλος_idΥπαλλήλου`),
  KEY `fk_πελάτης_has_υπάλληλος_υπάλληλος_idx` (`υπάλληλος_idΥπαλλήλου`),
  KEY `fk_πελάτης_has_υπάλληλος_πελάτης1_idx` (`πελάτης_idΠελάτη`),
  CONSTRAINT `fk_πελάτης_has_υπάλληλος_πελάτης1` FOREIGN KEY (`πελάτης_idΠελάτη`) REFERENCES `πελάτης` (`idΠελάτη`),
  CONSTRAINT `fk_πελάτης_has_υπάλληλος_υπάλληλος1` FOREIGN KEY (`υπάλληλος_idΥπαλλήλου`) REFERENCES `υπάλληλος` (`idΥπαλλήλου`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `αξιολογεί_υπάλληλο`
--

LOCK TABLES `αξιολογεί_υπάλληλο` WRITE;
/*!40000 ALTER TABLE `αξιολογεί_υπάλληλο` DISABLE KEYS */;
INSERT INTO `αξιολογεί_υπάλληλο` VALUES (3,234,9,9),(8,45,8,8),(15,12,8,6),(28,78,9,7),(34,23,7,8),(48,573,6,5),(53,456,7,4);
/*!40000 ALTER TABLE `αξιολογεί_υπάλληλο` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `κατάστημα`
--

DROP TABLE IF EXISTS `κατάστημα`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `κατάστημα` (
  `idΚαταστήματος` int NOT NULL,
  `κέρδος/κατηγορία` decimal(8,2) DEFAULT NULL,
  `μέσοςΌροςΠαραμονήςΚατάστημα` decimal(8,2) DEFAULT NULL,
  `αριθμόςΠελατών` int DEFAULT NULL,
  `idΙδιοκτήτη` int DEFAULT NULL,
  `διεύθυνση` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idΚαταστήματος`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `κατάστημα`
--

LOCK TABLES `κατάστημα` WRITE;
/*!40000 ALTER TABLE `κατάστημα` DISABLE KEYS */;
INSERT INTO `κατάστημα` VALUES (1,23.00,2.60,578,9410,'Καρόλου Ντηλ 2'),(2,38.00,10.00,65,9398,'Τσιμισκή 78'),(3,45.00,4.70,134,9611,'Ε. Σαουνίδη 8'),(4,238.00,1.50,643,9690,'Μητροπόλεως 26'),(5,67.00,3.30,235,9410,'Ικτίνου 39'),(6,799.00,5.20,78,9611,'Σιδηροκάστρου 27'),(7,79.00,4.50,98,9398,'Παύλου Μελά 13');
/*!40000 ALTER TABLE `κατάστημα` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `μ.ο.εξυπηρέτησης`
--

DROP TABLE IF EXISTS `μ.ο.εξυπηρέτησης`;
/*!50001 DROP VIEW IF EXISTS `μ.ο.εξυπηρέτησης`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `μ.ο.εξυπηρέτησης` AS SELECT 
 1 AS `υπάλληλος_idΥπαλλήλου`,
 1 AS `AVG(``χρόνος εξυπηρέτησης``)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `μ.ο.καθαριότητας`
--

DROP TABLE IF EXISTS `μ.ο.καθαριότητας`;
/*!50001 DROP VIEW IF EXISTS `μ.ο.καθαριότητας`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `μ.ο.καθαριότητας` AS SELECT 
 1 AS `Κατάστημα_idΚαταστήματος`,
 1 AS `AVG(καθαριότητα)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `παραγόμενο_αριθμός_αγορών`
--

DROP TABLE IF EXISTS `παραγόμενο_αριθμός_αγορών`;
/*!50001 DROP VIEW IF EXISTS `παραγόμενο_αριθμός_αγορών`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `παραγόμενο_αριθμός_αγορών` AS SELECT 
 1 AS `Πελάτης_idΠελάτη`,
 1 AS `COUNT(idΑγοράς)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `παραγόμενο_αριθμός_πελατών`
--

DROP TABLE IF EXISTS `παραγόμενο_αριθμός_πελατών`;
/*!50001 DROP VIEW IF EXISTS `παραγόμενο_αριθμός_πελατών`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `παραγόμενο_αριθμός_πελατών` AS SELECT 
 1 AS `COUNT(idΠελάτη)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `παραγόμενο_κέρδος_κατηγορία`
--

DROP TABLE IF EXISTS `παραγόμενο_κέρδος_κατηγορία`;
/*!50001 DROP VIEW IF EXISTS `παραγόμενο_κέρδος_κατηγορία`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `παραγόμενο_κέρδος_κατηγορία` AS SELECT 
 1 AS `κατηγορία`,
 1 AS `SUM(αξίαΠροϊόντος)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `παραγόμενο_μ.ο.παραμονής`
--

DROP TABLE IF EXISTS `παραγόμενο_μ.ο.παραμονής`;
/*!50001 DROP VIEW IF EXISTS `παραγόμενο_μ.ο.παραμονής`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `παραγόμενο_μ.ο.παραμονής` AS SELECT 
 1 AS `AVG(διάρκειαΠαραμονήςΚατάστημα)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `παραγόμενο_ποσό_αγορών`
--

DROP TABLE IF EXISTS `παραγόμενο_ποσό_αγορών`;
/*!50001 DROP VIEW IF EXISTS `παραγόμενο_ποσό_αγορών`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `παραγόμενο_ποσό_αγορών` AS SELECT 
 1 AS `Πελάτης_idΠελάτη`,
 1 AS `SUM(αξίαΠροϊόντος)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `πελάτης`
--

DROP TABLE IF EXISTS `πελάτης`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `πελάτης` (
  `idΠελάτη` int NOT NULL,
  `πόντοι` int DEFAULT NULL,
  `αριθμόςΑγορών` int DEFAULT NULL,
  `ποσόΑγορών` decimal(8,2) DEFAULT NULL,
  `διάρκειαΠαραμονήςΚατάστημα` decimal(10,0) DEFAULT NULL,
  `φύλο` enum('άνδρας','γυναίκα','άλλο') DEFAULT NULL,
  `ηλικία` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idΠελάτη`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `πελάτης`
--

LOCK TABLES `πελάτης` WRITE;
/*!40000 ALTER TABLE `πελάτης` DISABLE KEYS */;
INSERT INTO `πελάτης` VALUES (1,54761,34,68.32,5,'άλλο',26,'ironman@gmail.com'),(23,100,20,155.20,1,'άλλο',51,'ros@yahoo.gr'),(26,26,28,78.00,5,'γυναίκα',25,'spiderman@yahoo.com'),(684,9647,53,130.20,2,'άνδρας',47,'thor@asgard.com '),(754,2,1,3.00,3,'άνδρας',19,'vision@gmail.com'),(984,104,15,49.10,10,'γυναίκα',42,'captainamerica@gmail.com'),(1157,37,8,11.65,5,'άνδρας',58,'antman@gmail.com'),(2247,87,48,100.45,3,'άλλο',32,'wanda@outlook.com');
/*!40000 ALTER TABLE `πελάτης` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `προϊόν`
--

DROP TABLE IF EXISTS `προϊόν`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `προϊόν` (
  `idΠροϊόντος` int NOT NULL,
  `κατηγορία` enum('αλλαντικά','γαλακτοκομικά','αναψυκτικά','καθαριστικά','χαρτικά΄','ψάρια','οπωροπωλείο') NOT NULL,
  `αξίαΠροϊόντος` decimal(8,2) DEFAULT NULL,
  `Κατάστημα_idΚαταστήματος` int NOT NULL,
  PRIMARY KEY (`idΠροϊόντος`,`Κατάστημα_idΚαταστήματος`),
  KEY `fk_Προϊόν_Κατάστημα1_idx` (`Κατάστημα_idΚαταστήματος`),
  CONSTRAINT `fk_Προϊόν_Κατάστημα1` FOREIGN KEY (`Κατάστημα_idΚαταστήματος`) REFERENCES `κατάστημα` (`idΚαταστήματος`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `προϊόν`
--

LOCK TABLES `προϊόν` WRITE;
/*!40000 ALTER TABLE `προϊόν` DISABLE KEYS */;
INSERT INTO `προϊόν` VALUES (1255783,'γαλακτοκομικά',1.30,3),(2684959,'αναψυκτικά',0.90,2),(5925143,'γαλακτοκομικά',10.25,1),(7891243,'οπωροπωλείο',2.50,5),(8482591,'οπωροπωλείο',1.95,4),(8495716,'καθαριστικά',3.25,7),(9588961,'αλλαντικά',4.70,6);
/*!40000 ALTER TABLE `προϊόν` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `υπάλληλος`
--

DROP TABLE IF EXISTS `υπάλληλος`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `υπάλληλος` (
  `idΥπαλλήλου` int NOT NULL,
  `Κατάστημα_idΚαταστήματος` int NOT NULL,
  PRIMARY KEY (`idΥπαλλήλου`,`Κατάστημα_idΚαταστήματος`),
  KEY `fk_Υπάλληλος_Κατάστημα1_idx` (`Κατάστημα_idΚαταστήματος`),
  CONSTRAINT `fk_Υπάλληλος_Κατάστημα1` FOREIGN KEY (`Κατάστημα_idΚαταστήματος`) REFERENCES `κατάστημα` (`idΚαταστήματος`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `υπάλληλος`
--

LOCK TABLES `υπάλληλος` WRITE;
/*!40000 ALTER TABLE `υπάλληλος` DISABLE KEYS */;
INSERT INTO `υπάλληλος` VALUES (12,1),(45,1),(4,3),(7,5),(8,6),(56,7),(23,9),(41,11);
/*!40000 ALTER TABLE `υπάλληλος` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `αγορέςαλλαντικών`
--

/*!50001 DROP VIEW IF EXISTS `αγορέςαλλαντικών`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `αγορέςαλλαντικών` AS select `αγοράζει`.`Προϊόν_idΠροϊόντος` AS `Προϊόν_idΠροϊόντος`,`αγοράζει`.`Πελάτης_idΠελάτη` AS `Πελάτης_idΠελάτη`,`αγοράζει`.`idΑγοράς` AS `idΑγοράς`,`αγοράζει`.`ημερομηνίαΑγοράς` AS `ημερομηνίαΑγοράς`,`προϊόν`.`idΠροϊόντος` AS `idΠροϊόντος`,`προϊόν`.`κατηγορία` AS `κατηγορία`,`προϊόν`.`αξίαΠροϊόντος` AS `αξίαΠροϊόντος`,`προϊόν`.`Κατάστημα_idΚαταστήματος` AS `Κατάστημα_idΚαταστήματος` from (`αγοράζει` join `προϊόν` on((`αγοράζει`.`Προϊόν_idΠροϊόντος` = `προϊόν`.`idΠροϊόντος`))) where ((`προϊόν`.`κατηγορία` = 'γαλακτοκομικά') and (`προϊόν`.`Κατάστημα_idΚαταστήματος` = 3)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `αγορέςανωτων10`
--

/*!50001 DROP VIEW IF EXISTS `αγορέςανωτων10`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `αγορέςανωτων10` AS select `αγοράζει`.`Προϊόν_idΠροϊόντος` AS `Προϊόν_idΠροϊόντος`,`αγοράζει`.`Πελάτης_idΠελάτη` AS `Πελάτης_idΠελάτη`,`αγοράζει`.`idΑγοράς` AS `idΑγοράς`,`αγοράζει`.`ημερομηνίαΑγοράς` AS `ημερομηνίαΑγοράς`,`προϊόν`.`idΠροϊόντος` AS `idΠροϊόντος`,`προϊόν`.`κατηγορία` AS `κατηγορία`,`προϊόν`.`αξίαΠροϊόντος` AS `αξίαΠροϊόντος`,`προϊόν`.`Κατάστημα_idΚαταστήματος` AS `Κατάστημα_idΚαταστήματος` from (`αγοράζει` join `προϊόν` on((`αγοράζει`.`Προϊόν_idΠροϊόντος` = `προϊόν`.`idΠροϊόντος`))) where (`προϊόν`.`αξίαΠροϊόντος` > 10) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `μ.ο.εξυπηρέτησης`
--

/*!50001 DROP VIEW IF EXISTS `μ.ο.εξυπηρέτησης`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `μ.ο.εξυπηρέτησης` AS select `αξιολογεί_υπάλληλο`.`υπάλληλος_idΥπαλλήλου` AS `υπάλληλος_idΥπαλλήλου`,avg(`αξιολογεί_υπάλληλο`.`χρόνος εξυπηρέτησης`) AS `AVG(``χρόνος εξυπηρέτησης``)` from `αξιολογεί_υπάλληλο` group by `αξιολογεί_υπάλληλο`.`υπάλληλος_idΥπαλλήλου` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `μ.ο.καθαριότητας`
--

/*!50001 DROP VIEW IF EXISTS `μ.ο.καθαριότητας`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `μ.ο.καθαριότητας` AS select `αξιολογεί_κατάστημα`.`Κατάστημα_idΚαταστήματος` AS `Κατάστημα_idΚαταστήματος`,avg(`αξιολογεί_κατάστημα`.`καθαριότητα`) AS `AVG(καθαριότητα)` from `αξιολογεί_κατάστημα` group by `αξιολογεί_κατάστημα`.`Κατάστημα_idΚαταστήματος` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `παραγόμενο_αριθμός_αγορών`
--

/*!50001 DROP VIEW IF EXISTS `παραγόμενο_αριθμός_αγορών`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `παραγόμενο_αριθμός_αγορών` AS select `αγοράζει`.`Πελάτης_idΠελάτη` AS `Πελάτης_idΠελάτη`,count(`αγοράζει`.`idΑγοράς`) AS `COUNT(idΑγοράς)` from `αγοράζει` where (`αγοράζει`.`Πελάτης_idΠελάτη` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `παραγόμενο_αριθμός_πελατών`
--

/*!50001 DROP VIEW IF EXISTS `παραγόμενο_αριθμός_πελατών`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `παραγόμενο_αριθμός_πελατών` AS select count(`πελάτης`.`idΠελάτη`) AS `COUNT(idΠελάτη)` from `πελάτης` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `παραγόμενο_κέρδος_κατηγορία`
--

/*!50001 DROP VIEW IF EXISTS `παραγόμενο_κέρδος_κατηγορία`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `παραγόμενο_κέρδος_κατηγορία` AS select `προϊόν`.`κατηγορία` AS `κατηγορία`,sum(`προϊόν`.`αξίαΠροϊόντος`) AS `SUM(αξίαΠροϊόντος)` from (`αγοράζει` join `προϊόν` on((`αγοράζει`.`Προϊόν_idΠροϊόντος` = `προϊόν`.`idΠροϊόντος`))) where (`προϊόν`.`κατηγορία` = 'οπωροπωλείο') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `παραγόμενο_μ.ο.παραμονής`
--

/*!50001 DROP VIEW IF EXISTS `παραγόμενο_μ.ο.παραμονής`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `παραγόμενο_μ.ο.παραμονής` AS select avg(`πελάτης`.`διάρκειαΠαραμονήςΚατάστημα`) AS `AVG(διάρκειαΠαραμονήςΚατάστημα)` from `πελάτης` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `παραγόμενο_ποσό_αγορών`
--

/*!50001 DROP VIEW IF EXISTS `παραγόμενο_ποσό_αγορών`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `παραγόμενο_ποσό_αγορών` AS select `αγοράζει`.`Πελάτης_idΠελάτη` AS `Πελάτης_idΠελάτη`,sum(`προϊόν`.`αξίαΠροϊόντος`) AS `SUM(αξίαΠροϊόντος)` from (`αγοράζει` join `προϊόν` on((`αγοράζει`.`Προϊόν_idΠροϊόντος` = `προϊόν`.`idΠροϊόντος`))) where (`αγοράζει`.`Πελάτης_idΠελάτη` = 2) */;
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

-- Dump completed on 2021-12-20 21:32:54
