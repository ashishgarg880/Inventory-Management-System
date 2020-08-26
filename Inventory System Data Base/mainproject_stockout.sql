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
-- Table structure for table `stockout`
--

DROP TABLE IF EXISTS `stockout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockout` (
  `stockout_id` int(11) NOT NULL AUTO_INCREMENT,
  `Item` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stockout_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockout`
--

LOCK TABLES `stockout` WRITE;
/*!40000 ALTER TABLE `stockout` DISABLE KEYS */;
INSERT INTO `stockout` VALUES (1,'Books','04-07-2017','3'),(2,'computers','06-07-2017','5'),(3,'T.V','06-07-2017','6'),(4,'Air Conditioner','06-07-2017','2'),(5,'Coolers','06-07-2017','4'),(6,'Fans','06-07-2017','8'),(7,'Cables','06-07-2017','13'),(8,'Books','06-07-2017','15'),(9,'T-shirts','06-07-2017','25'),(10,'Shirts','06-07-2017','10'),(11,'Chinos','06-07-2017','12'),(12,'Jeans','06-07-2017','16'),(13,'Shoes','06-07-2017','7'),(14,'Flotters','06-07-2017','10'),(15,'Hats','06-07-2017','5'),(16,'Rice','06-07-2017','18'),(17,'Raisins','06-07-2017','23'),(18,'Grape-nuts','06-07-2017','14'),(19,'Vegetables','06-07-2017','21'),(20,'Fruits','06-07-2017','25'),(21,'Oil','06-07-2017','12'),(22,'shampoo','06-07-2017','24'),(23,'soap','06-07-2017','40'),(24,'comb','06-07-2017','23'),(25,'Facewash','06-07-2017','20'),(26,'Cream','06-07-2017','12'),(27,'Toothpaste','06-07-2017','14'),(28,'computers','12-07-2017','4500');
/*!40000 ALTER TABLE `stockout` ENABLE KEYS */;
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
