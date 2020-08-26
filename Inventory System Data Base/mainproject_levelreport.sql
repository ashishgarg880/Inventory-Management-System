-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: mainproject
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `levelreport`
--

DROP TABLE IF EXISTS `levelreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levelreport` (
  `Levelreport_id` int(11) NOT NULL AUTO_INCREMENT,
  `Item_name` varchar(45) DEFAULT NULL,
  `Average_consumption` varchar(45) DEFAULT NULL,
  `Delivery_period` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Levelreport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levelreport`
--

LOCK TABLES `levelreport` WRITE;
/*!40000 ALTER TABLE `levelreport` DISABLE KEYS */;
INSERT INTO `levelreport` VALUES (4,'computers','5','10'),(5,'T.V','5','15'),(6,'Air Conditioner','10','8'),(7,'Coolers','3','15'),(8,'Fans','25','12'),(9,'Cables','20','5'),(10,'Books','8','4'),(11,'T-shirts','25','2'),(12,'Shirts','15','4'),(13,'Chinos','10','3'),(14,'Jeans','14','4'),(15,'Shoes','7','6'),(16,'Flotters','5','5'),(17,'Hats','10','4'),(18,'Rice','20','2'),(19,'Raisins','12','5'),(20,'Grape-nuts','10','4'),(21,'Vegetables','40','2'),(22,'Fruits','30','1'),(23,'Oil','20','4'),(24,'shampoo','24','3'),(25,'soap','12','5'),(26,'comb','9','6'),(27,'Facewash','15','6'),(28,'Cream','20','3'),(29,'Toothpaste','21','4');
/*!40000 ALTER TABLE `levelreport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-12 10:53:27
