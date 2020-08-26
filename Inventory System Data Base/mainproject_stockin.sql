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
-- Table structure for table `stockin`
--

DROP TABLE IF EXISTS `stockin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockin` (
  `stockin_id` int(11) NOT NULL AUTO_INCREMENT,
  `Item` varchar(45) DEFAULT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Quantity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stockin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockin`
--

LOCK TABLES `stockin` WRITE;
/*!40000 ALTER TABLE `stockin` DISABLE KEYS */;
INSERT INTO `stockin` VALUES (1,'Books','04-07-2017','160'),(2,'T.V','05-07-2017','50'),(3,'Air Conditioner','05-07-2017','100'),(4,'Fans','05-07-2017','200'),(5,'Cables','05-07-2017','150'),(6,'T-shirts','05-07-2017','1000'),(7,'Shirts','05-07-2017','1000'),(8,'Chinos','05-07-2017','500'),(9,'Jeans','05-07-2017','500'),(10,'Shoes','05-07-2017','200'),(11,'Flotters','05-07-2017','300'),(12,'Hats','05-07-2017','500'),(13,'Rice','05-07-2017','500'),(14,'Grape-nuts','05-07-2017','400'),(15,'Vegetables','05-07-2017','350'),(16,'Fruits','05-07-2017','160'),(17,'Oil','05-07-2017','3000'),(18,'shampoo','05-07-2017','340'),(19,'soap','05-07-2017','200'),(20,'comb','05-07-2017','50'),(21,'Facewash','05-07-2017','200'),(22,'Cream','05-07-2017','500'),(23,'Toothpaste','05-07-2017','750'),(24,'computers','06-07-2017','100'),(25,'Coolers','06-07-2017','150'),(26,'Raisins','06-07-2017','200'),(27,'Books','08-07-2017','100'),(28,'Air Conditioner','12-07-2017','45'),(29,'computers','12-07-2017','4000'),(30,'computers','12-07-2017','406'),(31,'computers','12-07-2017','25');
/*!40000 ALTER TABLE `stockin` ENABLE KEYS */;
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
