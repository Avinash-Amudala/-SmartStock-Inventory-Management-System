-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: new_schema
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `brand_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `model_year` year DEFAULT NULL,
  `list_price` decimal(10,2) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `brand_id` (`brand_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Bluetooth Speaker',9,5,2015,9961.95,'2018-07-19 04:00:00'),(2,'Lightweight Smartphone',1,3,2006,8279.07,'2023-04-22 19:07:51'),(3,'Lightweight Smartphone',4,8,2011,4936.31,'2020-02-26 05:00:00'),(4,'Waterproof Mouse',2,2,2015,1540.18,'2021-04-28 04:00:00'),(5,'High-Performance Mouse',10,7,2012,7019.96,'2020-05-21 04:00:00'),(6,'Bluetooth Camera',8,3,2005,9162.86,'2021-10-21 04:00:00'),(7,'Multifunctional Mouse',1,8,2010,6519.34,'2023-04-22 19:07:51'),(8,'High-Performance Charger',7,10,2012,5425.71,'2020-06-25 04:00:00'),(9,'Multifunctional Camera',2,9,2000,6270.44,'2022-04-10 04:00:00'),(10,'Compact Keyboard',9,6,2023,1217.93,'2019-06-30 04:00:00'),(11,'Compact Speaker',7,8,2004,9067.88,'2021-07-04 04:00:00'),(12,'Compact Camera',7,6,2002,9354.01,'2018-10-17 04:00:00'),(13,'Heavy-Duty Laptop',5,2,2014,6058.11,'2020-03-20 04:00:00'),(14,'Portable Drone',9,7,2012,4992.08,'2022-02-04 05:00:00'),(15,'Heavy-Duty Laptop',10,5,2007,1220.29,'2020-07-26 04:00:00'),(16,'Ergonomic Mouse',3,10,2014,265.18,'2019-07-30 04:00:00'),(17,'Lightweight Smartphone',5,7,2007,6989.17,'2022-12-15 05:00:00'),(18,'Lightweight Mouse',9,4,2019,3477.73,'2018-09-23 04:00:00'),(19,'Compact Keyboard',6,10,2001,2775.15,'2019-11-02 04:00:00'),(20,'Lightweight Charger',3,6,2011,3358.62,'2022-10-03 04:00:00'),(21,'Wireless Camera',7,9,2002,7376.57,'2020-03-29 04:00:00'),(22,'Portable Keyboard',7,6,2013,2133.43,'2019-06-04 04:00:00'),(23,'Multifunctional Smartphone',2,7,2016,5439.45,'2019-11-23 05:00:00'),(24,'High-Performance Headphones',6,2,2010,8836.98,'2021-01-01 05:00:00'),(25,'High-Performance Charger',5,9,2012,1331.37,'2019-02-26 05:00:00'),(26,'Wireless Laptop',3,9,2015,2062.95,'2019-10-03 04:00:00'),(27,'High-Performance Keyboard',2,6,2006,1793.24,'2022-03-05 05:00:00'),(28,'Bluetooth Headphones',6,5,2017,7742.27,'2021-03-08 05:00:00'),(29,'High-Performance Headphones',10,8,2001,1317.53,'2022-02-04 05:00:00'),(30,'Multifunctional Speaker',6,2,2015,9095.27,'2022-09-27 04:00:00'),(31,'Heavy-Duty Smartphone',7,8,2023,2762.23,'2021-04-20 04:00:00'),(32,'Lightweight Speaker',9,7,2001,7027.27,'2021-12-01 05:00:00'),(33,'Bluetooth Printer',7,8,2009,5534.61,'2019-11-05 05:00:00'),(34,'Waterproof Drone',4,3,2017,2580.68,'2023-03-25 04:00:00'),(35,'Multifunctional Printer',9,10,2003,7063.21,'2021-03-24 04:00:00'),(36,'Multifunctional Mouse',4,7,2005,5431.67,'2020-01-20 05:00:00'),(37,'Bluetooth Camera',4,8,2007,4563.19,'2018-07-08 04:00:00'),(38,'Wireless Keyboard',9,4,2021,8938.03,'2023-04-04 04:00:00'),(39,'High-Performance Mouse',6,5,2006,4595.78,'2023-04-06 04:00:00'),(40,'Ergonomic Keyboard',3,5,2003,3448.14,'2021-01-24 05:00:00'),(41,'Compact Drone',9,9,2017,4449.05,'2023-03-11 05:00:00'),(42,'Bluetooth Headphones',7,4,2019,784.94,'2018-09-30 04:00:00'),(43,'Wireless Mouse',1,7,2008,6255.25,'2023-04-22 19:07:51'),(44,'Ergonomic Smartphone',1,5,2005,2260.91,'2023-04-22 19:07:51'),(45,'Multifunctional Printer',4,9,2022,5479.60,'2021-09-07 04:00:00'),(46,'Heavy-Duty Smartphone',6,3,2020,9198.39,'2020-04-04 04:00:00'),(47,'Portable Smartphone',4,5,2005,8930.04,'2020-09-20 04:00:00'),(48,'Compact Mouse',7,4,2013,643.78,'2021-08-19 04:00:00'),(49,'Wireless Drone',3,1,2005,4087.07,'2021-10-05 04:00:00'),(50,'High-Performance Mouse',6,7,2018,7661.23,'2020-09-01 04:00:00'),(51,'High-Performance Camera',8,5,2021,4899.11,'2018-10-23 04:00:00'),(52,'Lightweight Headphones',4,9,2002,9061.55,'2021-03-03 05:00:00'),(53,'Compact Charger',2,8,2010,4423.12,'2021-03-22 04:00:00'),(54,'Portable Camera',9,2,2018,8483.55,'2019-04-10 04:00:00'),(55,'Portable Drone',9,9,2023,2869.65,'2021-08-23 04:00:00'),(56,'Ergonomic Headphones',7,9,2020,9091.23,'2020-08-16 04:00:00'),(57,'Multifunctional Mouse',4,6,2019,752.83,'2021-01-03 05:00:00'),(58,'Ergonomic Printer',6,10,2013,480.05,'2019-02-25 05:00:00'),(59,'Wireless Charger',1,3,2008,8571.27,'2023-04-22 19:07:51'),(60,'Compact Camera',2,10,2002,1958.20,'2019-02-26 05:00:00'),(61,'Lightweight Drone',3,1,2022,1050.81,'2021-10-06 04:00:00'),(62,'Compact Mouse',2,6,2018,8494.63,'2023-01-08 05:00:00'),(63,'High-Performance Laptop',10,8,2015,3830.83,'2023-02-25 05:00:00'),(64,'Compact Headphones',6,4,2002,5325.81,'2020-09-02 04:00:00'),(65,'High-Performance Mouse',2,7,2001,9959.18,'2022-05-26 04:00:00'),(66,'Lightweight Speaker',3,1,2007,4225.51,'2020-09-22 04:00:00'),(67,'High-Performance Mouse',2,2,2017,7996.92,'2021-12-14 05:00:00'),(68,'Compact Mouse',7,2,2021,9122.58,'2022-03-29 04:00:00'),(69,'Bluetooth Mouse',8,2,2008,5650.77,'2022-08-22 04:00:00'),(70,'Portable Smartphone',9,4,2023,3745.16,'2018-08-10 04:00:00'),(71,'Portable Printer',4,7,2020,3523.72,'2023-01-29 05:00:00'),(72,'Wireless Smartphone',3,9,2023,6835.17,'2019-03-18 04:00:00'),(73,'Multifunctional Laptop',2,8,2009,3456.08,'2019-02-01 05:00:00'),(74,'Bluetooth Camera',6,1,2023,5809.99,'2021-11-25 05:00:00'),(75,'Portable Smartphone',3,5,2022,4559.40,'2021-06-25 04:00:00'),(76,'Ergonomic Charger',10,8,2014,8172.23,'2020-03-20 04:00:00'),(77,'Compact Mouse',10,9,2001,1788.84,'2022-06-29 04:00:00'),(78,'Wireless Mouse',5,6,2000,907.88,'2019-05-28 04:00:00'),(79,'Portable Mouse',2,5,2000,2935.40,'2021-06-30 04:00:00'),(80,'Portable Smartphone',8,10,2005,3545.15,'2019-07-11 04:00:00'),(81,'High-Performance Drone',9,9,2004,739.50,'2022-12-24 05:00:00'),(82,'Portable Keyboard',5,1,2012,4004.85,'2018-10-07 04:00:00'),(83,'Heavy-Duty Keyboard',8,7,2002,7136.97,'2020-09-28 04:00:00'),(84,'Compact Mouse',7,9,2012,148.52,'2019-10-24 04:00:00'),(85,'Ergonomic Charger',2,5,2016,7785.91,'2019-04-30 04:00:00'),(86,'Lightweight Mouse',6,2,2016,9053.20,'2018-08-13 04:00:00'),(87,'Multifunctional Laptop',8,7,2011,2001.54,'2019-04-22 04:00:00'),(88,'Heavy-Duty Headphones',10,6,2001,552.12,'2021-01-28 05:00:00'),(89,'Compact Laptop',9,6,2017,9308.08,'2019-08-09 04:00:00'),(90,'Wireless Keyboard',1,1,2007,3072.36,'2023-04-22 19:07:51'),(91,'Lightweight Camera',4,5,2009,4541.06,'2020-04-17 04:00:00'),(92,'Ergonomic Mouse',9,1,2022,7258.05,'2020-05-24 04:00:00'),(93,'Wireless Drone',9,8,2018,1802.62,'2019-02-11 05:00:00'),(94,'Heavy-Duty Printer',6,3,2007,4533.60,'2019-05-30 04:00:00'),(95,'Heavy-Duty Printer',5,4,2020,3582.29,'2021-03-29 04:00:00'),(96,'Waterproof Drone',2,5,2006,9479.27,'2022-08-10 04:00:00'),(97,'Waterproof Drone',4,10,2008,5470.39,'2022-06-26 04:00:00'),(98,'Heavy-Duty Laptop',1,6,2009,10419.26,'2023-04-22 19:07:51'),(99,'Bluetooth Charger',9,6,2017,290.61,'2018-07-21 04:00:00'),(100,'High-Performance Laptop',10,6,2004,3986.67,'2020-10-10 04:00:00'),(101,'iPhone 13',1,1,2022,999.99,'2023-04-25 16:52:49'),(102,'Galaxy S22',2,1,2022,899.99,'2023-04-25 16:52:49'),(103,'PlayStation 5',3,1,2020,499.99,'2023-04-25 16:52:49'),(104,'iPhone 13',1,1,2022,999.99,'2023-04-25 17:14:57'),(105,'Galaxy S22',2,1,2022,899.99,'2023-04-25 17:14:57'),(106,'PlayStation 5',3,1,2020,499.99,'2023-04-25 17:14:57'),(107,'iPhone 13',1,1,2022,999.99,'2023-04-25 17:15:31'),(108,'Galaxy S22',2,1,2022,899.99,'2023-04-25 17:15:31'),(109,'PlayStation 5',3,1,2020,499.99,'2023-04-25 17:15:31');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-01 22:00:36
