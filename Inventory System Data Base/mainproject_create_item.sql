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
-- Table structure for table `create_item`
--

DROP TABLE IF EXISTS `create_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `create_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) DEFAULT NULL,
  `Product` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `create_item`
--

LOCK TABLES `create_item` WRITE;
/*!40000 ALTER TABLE `create_item` DISABLE KEYS */;
INSERT INTO `create_item` VALUES (1,'Electronics','computers'),(4,'Pharmacy','Books'),(5,'Clothes','T-shirts'),(6,'Clothes','Shirts'),(7,'Clothes','Chinos'),(8,'Clothes','Jeans'),(9,'Clothes','Shoes'),(10,'Clothes','Flotters'),(11,'Clothes','Hats'),(12,'Food items','Rice'),(13,'Cosmetics','Oil'),(14,'Cosmetics','shampoo'),(15,'Cosmetics','soap'),(16,'Cosmetics','comb'),(17,'Cosmetics','Facewash'),(18,'Cosmetics','Cream'),(19,'Cosmetics','Toothpaste'),(20,'Electronics','T.V'),(21,'Electronics','Air Conditioner'),(22,'Electronics','Coolers'),(23,'Electronics','Fans'),(24,'Electronics','Cables'),(25,'Food items','Raisins'),(26,'Food items','Grape-nuts'),(27,'Food items','Vegetables'),(28,'Food items','Fruits');
/*!40000 ALTER TABLE `create_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-12 10:53:26
