CREATE DATABASE  IF NOT EXISTS `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `api_key_store`
--

DROP TABLE IF EXISTS `api_key_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_key_store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_id` varchar(100) NOT NULL COMMENT 'hay chinh la ten service, defined trong route cua Gateway',
  `api_key` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT 'api key dc gen tu user service',
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_id_UNIQUE` (`service_id`),
  UNIQUE KEY `api_key_UNIQUE` (`api_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_key_store`
--

LOCK TABLES `api_key_store` WRITE;
/*!40000 ALTER TABLE `api_key_store` DISABLE KEYS */;
INSERT INTO `api_key_store` VALUES (1,'product-management-service','cHJvZHVjdC1tYW5hZ2VtZW50LXNlcnZpY2U=');
/*!40000 ALTER TABLE `api_key_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `del_yn` char(1) NOT NULL DEFAULT 'N',
  `created_dtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_id` bigint NOT NULL,
  `updated_dtm` datetime DEFAULT NULL,
  `updated_id` bigint DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES ('1','test subject','Test Description','N','2022-10-05 16:37:21',2,NULL,NULL,NULL),('2','test subject','Test Description','N','2022-10-05 16:40:07',2,NULL,NULL,NULL),('3','test subject','Test Description','N','2022-10-06 14:44:31',2,NULL,NULL,NULL),('4','test title 2','Test subject 2','N','2022-10-06 14:44:55',2,NULL,NULL,NULL),('5','test title 2','Test subject 2','N','2022-10-06 14:45:08',2,NULL,NULL,NULL),('6','test title 2','Test subject 2','N','2022-10-07 10:13:03',2,NULL,NULL,NULL),('BLOG_020c13c7-3919-4066-b692-24e02dcff28a','test title','test description','N','2022-10-10 15:51:57',2,NULL,NULL,NULL),('BLOG_0efa559c-9f37-429f-a52d-d06d0a7012be','123','123123','N','2022-10-10 17:20:21',2,NULL,NULL,NULL),('BLOG_6adbff29-c586-4d93-a46e-1f59ebffafb0','test title','test description','N','2022-10-10 15:55:31',2,NULL,NULL,NULL),('BLOG_9b82d60d-19a8-4647-abd4-b9696b26b202','test title','test description','N','2022-10-07 14:21:56',2,NULL,NULL,NULL),('BLOG_9cc1916c-b367-4e6c-8f5e-801521f9f59b','test title','test description','N','2022-10-07 14:23:16',2,NULL,NULL,NULL),('BLOG_a4fce4af-1fc3-4cb1-a865-a414d964e7e1','test title','test description','N','2022-10-07 16:09:21',2,NULL,NULL,NULL),('BLOG_c2646244-80e3-4b52-b970-6bf875973f7d','test title','test description','N','2022-10-07 14:20:55',2,NULL,NULL,NULL),('BLOG_d8d5d231-f42b-4b88-b5d1-264591bdf282','test title','test description','N','2022-10-07 15:53:39',2,NULL,NULL,NULL),('BLOG_eb782554-cb07-4ff1-8776-37faa7bc5d3f','test title','test description','N','2022-10-10 15:53:59',2,NULL,NULL,NULL),('BLOG_f6c81995-41a4-4547-a95f-fc414b1c2210','123','123123','N','2022-10-10 16:18:09',2,NULL,NULL,NULL),('BLOG_fb3cebf8-c284-4291-8b5c-5eaa0d099a1c','test title','test description','N','2022-10-07 15:50:45',2,NULL,NULL,NULL),('BLOG_ff895543-5dae-4094-93b2-3be8c521c6fe','test title','test description','N','2022-10-07 14:24:56',2,NULL,NULL,NULL);
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `desc` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `delete_yn` tinyint DEFAULT '0',
  `created_dtm` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_id` bigint DEFAULT NULL,
  `updated_dtm` datetime DEFAULT NULL,
  `updated_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cart` (`user_id`),
  CONSTRAINT `fk_cart` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,2,NULL,NULL,0,'2022-09-07 18:22:06',NULL,NULL,NULL),(2,62,NULL,NULL,0,'2022-09-12 10:23:51',NULL,NULL,NULL),(3,5,NULL,NULL,0,'2022-09-30 15:22:34',NULL,NULL,NULL),(4,64,NULL,NULL,0,'2022-10-03 12:47:35',NULL,NULL,NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_detail` (
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_dtm` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_id` bigint DEFAULT NULL,
  `updated_dtm` datetime DEFAULT NULL,
  `updated_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_id`,`product_id`),
  KEY `fk_cart_detail1` (`product_id`),
  CONSTRAINT `fk_cart_detail` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `fk_cart_detail1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_detail`
--

LOCK TABLES `cart_detail` WRITE;
/*!40000 ALTER TABLE `cart_detail` DISABLE KEYS */;
INSERT INTO `cart_detail` VALUES (1,1,1,'2022-10-03 12:47:35',NULL,NULL,NULL),(1,2,2,'2022-10-03 12:47:35',NULL,NULL,NULL),(2,1,5,'2022-09-13 08:52:24',NULL,NULL,NULL),(2,3,1,'2022-09-13 08:52:24',NULL,NULL,NULL),(3,2,5,'2022-09-30 16:02:57',NULL,NULL,NULL),(3,3,4,'2022-09-30 16:02:57',NULL,NULL,NULL),(3,4,1,'2022-09-30 16:02:58',NULL,NULL,NULL);
/*!40000 ALTER TABLE `cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `desc` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_dtm` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_id` bigint DEFAULT NULL,
  `updated_dtm` datetime DEFAULT NULL,
  `updated_id` bigint DEFAULT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'product',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Black','f','no','2022-06-06 00:00:00',1,'2022-06-06 00:00:00',1,'product'),(2,'White','f','no','2022-06-06 00:00:00',1,'2022-06-06 00:00:00',1,'product'),(3,'Chair','f','no','2022-06-06 00:00:00',1,'2022-06-06 00:00:00',1,'product'),(4,'Furniture','f','no','2022-06-06 00:00:00',1,'2022-06-06 00:00:00',1,'product'),(5,'Sofa','f','no','2022-06-06 00:00:00',1,'2022-06-06 00:00:00',1,'product'),(6,'Decor Art','f','no','2022-06-06 00:00:00',1,'2022-06-06 00:00:00',1,'product');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `desc` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_dtm` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_id` bigint DEFAULT NULL,
  `updated_dtm` datetime DEFAULT NULL,
  `updated_id` bigint DEFAULT NULL,
  `blog_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_image` (`product_id`),
  CONSTRAINT `fk_image` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,1,'../src/assets/images/products/product_1.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(2,2,'../src/assets/images/products/product_2.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(3,1,'../src/assets/images/products/product_3.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(4,2,'../src/assets/images/products/product_2.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(5,3,'../src/assets/images/products/product_1.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(6,3,'../src/assets/images/products/product_2.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(7,3,'../src/assets/images/products/product_3.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(8,3,'../src/assets/images/products/product_4.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(9,4,'../src/assets/images/products/product_2.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(10,4,'../src/assets/images/products/product_3.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(11,4,'../src/assets/images/products/product_1.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(12,4,'../src/assets/images/products/product_4.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(13,5,'../src/assets/images/products/product_3.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(14,5,'../src/assets/images/products/product_1.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(15,5,'../src/assets/images/products/product_2.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(16,5,'../src/assets/images/products/product_4.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(17,6,'../src/assets/images/products/product_4.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(18,6,'../src/assets/images/products/product_3.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(19,6,'../src/assets/images/products/product_1.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(20,6,'../src/assets/images/products/product_2.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(21,7,'../src/assets/images/products/product_5.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(22,7,'../src/assets/images/products/product_4.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(23,7,'../src/assets/images/products/product_3.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(24,7,'../src/assets/images/products/product_1.jpg',NULL,'2022-08-29 11:30:58',NULL,NULL,NULL,NULL),(25,8,'../src/assets/images/products/product_6.jpg',NULL,'2022-08-31 11:22:59',NULL,NULL,NULL,NULL),(26,8,'../src/assets/images/products/product_4.jpg',NULL,'2022-08-31 11:22:59',NULL,NULL,NULL,NULL),(27,8,'../src/assets/images/products/product_3.jpg',NULL,'2022-08-31 11:22:59',NULL,NULL,NULL,NULL),(28,8,'../src/assets/images/products/product_3.jpg',NULL,'2022-08-31 11:22:59',NULL,NULL,NULL,NULL),(29,9,'../src/assets/images/products/product_7.jpg',NULL,'2022-08-31 11:22:59',NULL,NULL,NULL,NULL),(30,9,'../src/assets/images/products/product_4.jpg',NULL,'2022-08-31 11:22:59',NULL,NULL,NULL,NULL),(31,9,'../src/assets/images/products/product_3.jpg',NULL,'2022-08-31 11:22:59',NULL,NULL,NULL,NULL),(32,9,'../src/assets/images/products/product_1.jpg',NULL,'2022-08-31 11:22:59',NULL,NULL,NULL,NULL),(33,10,'../src/assets/images/products/product_8.jpg',NULL,'2022-08-31 11:25:59',NULL,NULL,NULL,NULL),(34,10,'../src/assets/images/products/product_4.jpg',NULL,'2022-08-31 11:25:59',NULL,NULL,NULL,NULL),(35,10,'../src/assets/images/products/product_3.jpg',NULL,'2022-08-31 11:25:59',NULL,NULL,NULL,NULL),(36,10,'../src/assets/images/products/product_1.jpg',NULL,'2022-08-31 11:25:59',NULL,NULL,NULL,NULL),(37,11,'src/assets/images09092022100745664_1.png',NULL,'2022-09-09 10:07:45',NULL,NULL,NULL,NULL),(38,12,'src/assets/images09092022101111673_1.png',NULL,'2022-09-09 10:11:11',NULL,NULL,NULL,NULL),(39,13,'src/assets/images0909202210162107_1.png',NULL,'2022-09-09 10:16:21',NULL,NULL,NULL,NULL),(40,14,'src/assets/images09092022102526543_1.png',NULL,'2022-09-09 10:25:26',NULL,NULL,NULL,NULL),(41,17,'src/assets/images09092022111519453_1.png',NULL,'2022-09-09 11:15:19',NULL,NULL,NULL,NULL),(42,18,'src/assets/images09092022111703638_1.png',NULL,'2022-09-09 11:17:03',NULL,NULL,NULL,NULL),(43,19,'src/assets/images09092022111744250_1.png',NULL,'2022-09-09 11:17:44',NULL,NULL,NULL,NULL),(44,20,'src/assets/images09092022111911502_1.png',NULL,'2022-09-09 11:19:11',NULL,NULL,NULL,NULL),(45,21,'src/assets/images09092022112450395_1.png',NULL,'2022-09-09 11:24:50',NULL,NULL,NULL,NULL),(46,22,'src/assets/images0909202211254276_1.png',NULL,'2022-09-09 11:25:42',NULL,NULL,NULL,NULL),(47,23,'src/assets/images09092022131952437_1.png',NULL,'2022-09-09 13:19:52',NULL,NULL,NULL,NULL),(48,24,'src/assets/images09092022160450271_6339647a8ff64da814e7.jpg',NULL,'2022-09-09 16:04:50',NULL,NULL,NULL,NULL),(49,25,'src/assets/images0909202216064247_product_2.jpg',NULL,'2022-09-09 16:06:42',NULL,NULL,NULL,NULL),(50,25,'src/assets/images0909202216064248_product_4.jpg',NULL,'2022-09-09 16:06:42',NULL,NULL,NULL,NULL),(51,25,'src/assets/images0909202216064248_product_6.jpg',NULL,'2022-09-09 16:06:42',NULL,NULL,NULL,NULL),(52,26,'src/assets/images09092022161708952_product_2.jpg',NULL,'2022-09-09 16:17:09',NULL,NULL,NULL,NULL),(53,26,'src/assets/images09092022161708953_product_4.jpg',NULL,'2022-09-09 16:17:09',NULL,NULL,NULL,NULL),(54,27,'../src/assets/images09092022162154138_bg-workspace.jpg',NULL,'2022-09-09 16:21:54',NULL,NULL,NULL,NULL),(55,28,'../src/assets/images/09092022162442388_bg-workspace.jpg',NULL,'2022-09-09 16:24:42',NULL,NULL,NULL,NULL),(56,29,'../src/assets/images/09092022165313109_img-1.png',NULL,'2022-09-09 16:53:13',NULL,NULL,NULL,NULL),(57,29,'../src/assets/images/09092022165313109_img-2.png',NULL,'2022-09-09 16:53:13',NULL,NULL,NULL,NULL),(58,29,'../src/assets/images/09092022165313110_img-3.png',NULL,'2022-09-09 16:53:13',NULL,NULL,NULL,NULL),(59,29,'../src/assets/images/09092022165313110_img-4.png',NULL,'2022-09-09 16:53:13',NULL,NULL,NULL,NULL),(60,30,'../src/assets/images/1209202217540390_img-2.png',NULL,'2022-09-12 17:54:03',NULL,NULL,NULL,NULL),(61,30,'../src/assets/images/1209202217540390_img-3.png',NULL,'2022-09-12 17:54:03',NULL,NULL,NULL,NULL),(62,30,'../src/assets/images/1209202217540398_img-4.png',NULL,'2022-09-12 17:54:03',NULL,NULL,NULL,NULL),(63,31,'../src/assets/images/13092022093011130_img-2.png',NULL,'2022-09-13 09:30:11',NULL,NULL,NULL,NULL),(64,31,'../src/assets/images/13092022093011130_img-4.png',NULL,'2022-09-13 09:30:11',NULL,NULL,NULL,NULL),(65,31,'../src/assets/images/13092022093011131_img-3.png',NULL,'2022-09-13 09:30:11',NULL,NULL,NULL,NULL),(66,31,'../src/assets/images/13092022093011131_img-1.png',NULL,'2022-09-13 09:30:11',NULL,NULL,NULL,NULL),(67,32,'../src/assets/images/13092022094617949_img-4.png',NULL,'2022-09-13 09:46:17',NULL,NULL,NULL,NULL),(68,32,'../src/assets/images/13092022094617950_img-3.png',NULL,'2022-09-13 09:46:18',NULL,NULL,NULL,NULL),(69,32,'../src/assets/images/13092022094617951_img-1.png',NULL,'2022-09-13 09:46:18',NULL,NULL,NULL,NULL),(70,33,'03102022150238651pexels-mike-b-170811.jpg',NULL,'2022-10-03 15:02:38',NULL,NULL,NULL,'2'),(71,34,'03102022150733283pexels-mike-b-170811.jpg',NULL,'2022-10-03 15:09:22',NULL,NULL,NULL,'2'),(72,NULL,'0710202214205101car (3).jfif',NULL,'2022-10-07 14:20:55',NULL,NULL,NULL,NULL),(73,NULL,'07102022142146827car (3).jfif',NULL,'2022-10-07 14:21:59',NULL,NULL,NULL,NULL),(74,NULL,'07102022142313189car (3).jfif',NULL,'2022-10-07 14:23:16',NULL,NULL,NULL,NULL),(75,NULL,'07102022142452646car (3).jfif',NULL,'2022-10-07 14:24:56',NULL,NULL,NULL,NULL),(76,NULL,'07102022155037580car (3).jfif',NULL,'2022-10-07 15:50:45',NULL,NULL,NULL,NULL),(77,NULL,'0710202215533949car (3).jfif',NULL,'2022-10-07 16:07:18',NULL,NULL,NULL,NULL),(78,NULL,'07102022160921513car (3).jfif',NULL,'2022-10-07 16:09:35',NULL,NULL,NULL,'BLOG_a4fce4af-1fc3-4cb1-a865-a414d964e7e1'),(79,NULL,'10102022155157928car (3).jfif',NULL,'2022-10-10 15:51:57',NULL,NULL,NULL,'BLOG_020c13c7-3919-4066-b692-24e02dcff28a'),(80,NULL,'10102022155359390car (3).jfif',NULL,'2022-10-10 15:53:59',NULL,NULL,NULL,'BLOG_eb782554-cb07-4ff1-8776-37faa7bc5d3f'),(81,NULL,'10102022155531560car (3).jfif',NULL,'2022-10-10 15:55:31',NULL,NULL,NULL,'BLOG_6adbff29-c586-4d93-a46e-1f59ebffafb0'),(82,NULL,'10102022161809884car (3).jfif',NULL,'2022-10-10 16:18:09',NULL,NULL,NULL,'BLOG_f6c81995-41a4-4547-a95f-fc414b1c2210'),(83,NULL,'10102022171946613car (3).jfif',NULL,'2022-10-10 17:20:21',NULL,NULL,NULL,'BLOG_0efa559c-9f37-429f-a52d-d06d0a7012be');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `desc` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `delete_yn` tinyint DEFAULT '0',
  `created_dtm` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_id` int DEFAULT '2',
  `updated_dtm` datetime DEFAULT NULL,
  `updated_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Balenciaga Speed Trainer',500000,'Most of us are familiar with the iconic design of the egg shaped chair floating in the air. The Hanging Egg Chair is a critically acclaimed design that has enjoyed praise worldwide ever since the distinctive sculptural shape was created.',0,'2022-08-08 00:00:00',1,'2022-09-02 00:00:00',1),(2,'Converse',150000,'Chiacchera Desk Chair by Casprini is characterized by a modern Italian design. Its solid and graceful shape makes it ideal for working or studying. Chiacchera Desk Chair features a polypropylene shell and a swivel metal base adjustable in height thru gas piston. Chiacchera Desk Chair is ideal to add an extra touch of vivacity to every modern home office.',0,'2022-08-08 00:00:00',2,'2022-09-02 00:00:00',1),(3,'Arctander Chair',56.8,'Most of us are familiar with the iconic design of the egg shaped chair floating in the air. The Hanging Egg Chair is a critically acclaimed design that has enjoyed praise worldwide ever since the distinctive sculptural shape was created.',0,'2022-08-08 00:00:00',2,'2022-08-08 00:00:00',1),(4,'Stainless steel teapot',85.93,'Chiacchera Desk Chair by Casprini is characterized by a modern Italian design. Its solid and graceful shape makes it ideal for working or studying. Chiacchera Desk Chair features a polypropylene shell and a swivel metal base adjustable in height thru gas piston. Chiacchera Desk Chair is ideal to add an extra touch of vivacity to every modern home office.',0,'2022-08-08 00:00:00',2,'2022-08-08 00:00:00',1),(5,'Beoplay A1',56.82,'Chiacchera Barstool by Casprini is characterized by a modern Italian design. The solid and graceful shape of this stool makes it ideal for conversation. Chiacchera Barstool, suitable both for indoor and outdoor, features a polypropylene shell and metal legs.',0,'2022-08-08 00:00:00',2,'2022-08-08 00:00:00',1),(6,'Turning Table',44.81,'Easy Barstool by Casprini features a modern Italian design. The idea behind this essential seating comes from the movement of soft lines that seem to float freely in the ambience. Easy Barstool is characterized by a shell made of curved multilayer wood available in different finishes and metal legs.',0,'2022-08-08 00:00:00',2,'2022-08-08 00:00:00',1),(7,'Side Table',11.8,'Casquet Chaise Longue by D3CO features a modern Italian design. This harmonious and elegant chaise longue is characterized by a fold-up back cushion to enjoy moments of authentic relaxation. Available in a selection of luxury upholsteries, Casquet is enriched with contrasting piping.',0,'2022-08-08 00:00:00',2,'2022-08-08 00:00:00',1),(8,'Pia Chair',23.8,'Altana P Lounge Chair by Chairs & More features a modern Italian design. It is characterized by generous and enveloping dimensions and by a decoration with marine rope that lightens and covers the entire seat. The shapes and the design of Altana P take up and reinterpret the colonial style of the outdoor seats, according to the interpretation of the designer Antonio De Marco.',0,'2022-08-08 00:00:00',2,'2022-08-08 00:00:00',1),(9,'Iconic Rocking Horse',59.8,'Millie SP Chair by Chairs & More is characterized by a modern Italian design. A light multi-striped effect created by thin cords is the decorative theme of the Millie collection. Designed by the Pastina Studio, the chair is inspired by the 70s, from which it takes some details and the colors palette. With its elegant design.',0,'2022-08-31 11:23:55',2,NULL,NULL),(10,'Outdoor Dining Table',296.8,'Anic is an armchair with bold and elegant lines. With its low backrest and its charming details, Anic is the perfect piece to enrich every refined interior.',0,'2022-08-31 11:25:12',2,NULL,NULL),(11,'sang dang test cai nay nhes',23231,'desc of sang',0,'2022-08-31 11:25:12',2,NULL,NULL),(12,'sdasd asf',123123,'sadas dsa d',0,'2022-08-31 11:25:12',2,NULL,NULL),(13,'test 123',23000,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',0,'2022-08-31 11:25:12',2,NULL,NULL),(14,'asdasd',1111,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',NULL,NULL,NULL,NULL,NULL),(15,'eerwqr',1000,'asdf',0,'2022-09-09 10:42:04',2,NULL,NULL),(16,'eerwqr',1000,'asdf',0,'2022-09-09 10:53:57',2,NULL,NULL),(17,'asdasd',1111,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',NULL,NULL,NULL,NULL,NULL),(18,'asdasd',1111,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',0,NULL,NULL,NULL,NULL),(19,'asdasd',1111,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',0,'2022-09-09 11:17:44',NULL,NULL,NULL),(20,'asdasd',1111,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',0,'2022-09-09 11:19:11',NULL,NULL,NULL),(21,'tututu',123123,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',0,'2022-09-09 11:24:50',NULL,NULL,NULL),(22,'tupoduaf',323123,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',0,'2022-09-09 11:25:42',NULL,NULL,NULL),(23,'asd asd asd',123123,'sad asdsa',0,'2022-09-09 13:19:52',NULL,NULL,NULL),(24,'them moi product',123,'hom qua',0,'2022-09-09 16:04:50',NULL,NULL,NULL),(25,'them moi san pham',12345,'hom nat',0,'2022-09-09 16:06:42',NULL,NULL,NULL),(26,'them moi 1',123456,'them moi 1',0,'2022-09-09 16:17:08',NULL,NULL,NULL),(27,'tudhhh',123321,'alkdfjal;dfjal;dfkjadf',0,'2022-09-09 16:21:54',NULL,NULL,NULL),(28,'themmoiii',1231231,'asdafasdfasdfadfadfadfasdf',0,'2022-09-09 16:24:42',NULL,NULL,NULL),(29,'them 11',123,'them 111',0,'2022-09-09 16:53:13',NULL,NULL,NULL),(30,'asd asd asd',23111,'as das das das da sdas d',0,'2022-09-12 17:54:03',NULL,NULL,NULL),(31,'sdasdasd',123100,'sadas das ds',0,'2022-09-13 09:30:11',NULL,NULL,NULL),(32,'sadasdas',131,'df sdf sdfs fsdfsd',0,'2022-09-13 09:46:17',NULL,NULL,NULL),(33,'test 1',10,'test',NULL,NULL,NULL,NULL,NULL),(34,'ndanh test',20,'ndanh test',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `product_id` bigint DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `blog_id` varchar(100) DEFAULT NULL,
  `created_dtm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_id` varchar(100) DEFAULT NULL,
  `updated_dtm` varchar(100) DEFAULT NULL,
  `updated_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (NULL,2,'BLOG_fb3cebf8-c284-4291-8b5c-5eaa0d099a1c',NULL,NULL,NULL,NULL),(NULL,2,'BLOG_d8d5d231-f42b-4b88-b5d1-264591bdf282',NULL,NULL,NULL,NULL),(NULL,2,'BLOG_a4fce4af-1fc3-4cb1-a865-a414d964e7e1',NULL,NULL,NULL,NULL),(NULL,2,'BLOG_020c13c7-3919-4066-b692-24e02dcff28a',NULL,NULL,NULL,NULL),(NULL,2,'BLOG_f6c81995-41a4-4547-a95f-fc414b1c2210',NULL,NULL,NULL,NULL),(NULL,2,'BLOG_0efa559c-9f37-429f-a52d-d06d0a7012be',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_dtm` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_id` bigint DEFAULT NULL,
  `updated_dtm` datetime DEFAULT NULL,
  `updated_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ADMIN','2022-08-28 00:00:00',1,'2022-09-01 00:00:00',1),(2,'USER','2022-08-28 00:00:00',1,'2022-09-01 00:00:00',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `delete_yn` tinyint DEFAULT '0',
  `created_dtm` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_id` bigint DEFAULT NULL,
  `updated_dtm` datetime DEFAULT NULL,
  `updated_id` bigint DEFAULT NULL,
  `role_id` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_user` (`role_id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Huy Tú','$2a$10$cdPWDA/65GbB46fnl69UOOge8bW/QLx1lkKlU2kGKqDJ475tw53zW','dhtu1@cmcglobal.vn',NULL,NULL,NULL,NULL,NULL,1),(2,'dhtu.vn','$2a$10$WJJWsAvTXT0kemn.unyTHudOARlNQdn/9NDbX7/kgHCNhecyqzBxS','dht2u1@cmcglobal.vn',NULL,NULL,NULL,NULL,NULL,2),(3,'qwerty','$2a$10$M44dQJ2Oc8lMpQrANeLmt.fo1/68yjxld8OYqc7YefPYaKpVPnjd2','qwerty@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(4,'123','$2a$10$4xGfv9NYl.LGADXhIqn5C./PYjFkgs3tInNpAQ6aYXvfy5ay7WkdK','123@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(5,'1234','$2a$10$TlPWbq/yGncsn/U9N/m2du2MMZXeuG.AqjNnR52AYgWXkoHzo38gC','1234@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(6,'sang','$2a$10$W9xeMfTdxndiny.fbdfsze92zh5figoZ5cFDUlDcXUUc.0PnjTa8e','vansang261198@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(7,'12345','$2a$10$HVDS/5GPxwrEPMZqhBMN0epFd6wNXzYpr2Jtyros4oQN/KgPTypiS','12345@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(8,'test','$2a$10$n7S7nSwsD/pD5Po2GYyK6ucVBJWEBfSVpMB7RJyGraCE/R9iXHw12','sadasd@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(9,'tuan','$2a$10$GErDKtrL.I0OdcUFhirHWu6J50H1m22eBHC4r.5BchTbM5uj0U69.','tuan@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(10,'hieu','$2a$10$RtDCtD8hQt.eINscU6rAMe2nPqWWF6YScNebrhD/ncniSIMdjmpOq','hieu@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(11,'asd','$2a$10$GEy9EODYwY/Rl1nAgPlsueVBFUZUdoQHqA7xvqaKUwg9XFCeK40U2','asd@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(12,'ggg','$2a$10$KGQ9RZaNQfCt3OALlmMODOf6hDGfsS.XltlR7XrKWfSsauA7Ph3we','ggg@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(13,'ssss','$2a$10$9LGEZYOBepKYNIp5usDDEuPQDJKCNd3pZBg1ZhSpoCd.Plp3fZhRC','ssss@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(14,'111','$2a$10$BuYe6AwvjHJj.5wuloKVHOfxagOxCq0vpRwQFqupI5Cp2wKU3ETga','111@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(15,'3','$2a$10$MVWFCk1Ij4DrRqYjeP1Nb.jYpok36c6bcdetAPvrnDaXfYMHDzOxO','3@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(16,'sasas','$2a$10$A4Y3gbKPBHXKDtZhNWtFaeCNaawAH5jLK978bXtfDeVwgb4VDhyCG','asas@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(17,'hieu@gmail.com','$2a$10$/LDp1n.VtpX.32Q1MkEzgOVQG0a2s.kloJEj3YMPa6OgRaewl0xr6','ieu@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(18,'o','$2a$10$vyPxBZytLC.k8k9eG/80O.CnlMG9LIZ4aOQiSzU6.A5jn/L0hrvPW','o@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(19,'zxc','$2a$10$Y/FTPrbcyPCxaa4rsns6tujX1.EYodwlnH.G68dtPKEY/xC40UUCa','zxc@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(20,'qwe','$2a$10$e1A2itARxOJ9z9o1PKu2WOFBiJ/mMpRrWh6eODS9azGB9RnQ6KBmC','qwe@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(21,'iop','$2a$10$CZigNeSqFlUlAR9fQtIcJu/Y/lA8cM1/hcLAQJYn5Pu8vS6RAN.S.','iop@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(22,'tyu','$2a$10$iM682m4vrFeq9.EifnuQr.NJDqleGToP4rY/09DVhGzXJ2xTe7NB2','tyu@gamil.com',NULL,NULL,NULL,NULL,NULL,2),(23,'tyu','$2a$10$49sgsu8.R1SQUwOpnypojeJA6nwY/3CD7jsRFbS7wRgM.XjjNz2xy','tyu@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(24,'123tyu','$2a$10$hQ.1cVTUxakLRT/zsJ9C4e0xmQBFl3ud54e8m8YzMcoeua7ygEznS','tyu2@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(25,'ghj','$2a$10$LunzsPGWaM0Jk4LS4yaeNeyLRHMjoWOsbrpw1UlcqFzBfzYBkB0Bm','ghj@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(26,'123','$2a$10$j1GROB3EFvOU6BX98SYM7uvzHDnJrrf7LjvHQ2R2jxgqmLMtXb5gG','zxc1@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(27,'zxc','$2a$10$yeHnz8yGNReEwooUda138OoCnnZYJ8etOHXwxjIjc2U43KK6Dy0ku','zxc2@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(28,'zxc','$2a$10$ucnHGCffl.oGNnz/yM0zrOi81Co0W7MvBwXw0lp6QLB5n9CjtlA2W','vbn@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(29,'123','$2a$10$lA3kGDuxWZ7P3R6KYPg1/OcDVkng.dTZH/nDRBhyASkgTpTOJsckC','nm@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(30,'eqw','$2a$10$GJIHDLPzJGU8B9Ks.nu8aeUc.0GZEgpVakjk2XzRpe1DUT/VbGJ4m','err@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(31,'fgh','$2a$10$7amRQAKcoGyBYjnzF/spCuY2wZJIwNFITsQDlDpbITLI9oK6pqywW','fgh@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(32,'098','$2a$10$wE7e0xZhyDnfv9M4Vx7qPOFyO2js9STaUjViF0tNVaKClpKDhE8O6','098@gmaill.com',NULL,NULL,NULL,NULL,NULL,2),(33,'999','$2a$10$.8O8LWfNuUqp9hzJ86Jo9.M5s9g/xzLN7vJbXe6u9BiabwUEIlcFq','999@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(34,'123','$2a$10$UM.1Jp8JVThKMWlgi5pJSeTjsCmlRzoQrfNj7e.0j8L9rNjtDVxlm','mko@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(35,'123','$2a$10$0pyfEO2KHca2Fp2AMV3pbeuL/BuC2LHkG10X/gdVzbEkHHoEXzQ82','mko1@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(36,'123','$2a$10$LVGF57eNFZD7px2FjB7OD.pppSt.Upk2H0zzIrV3u/1v3O.9nwFHW','iop9@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(37,'hhh','$2a$10$sbNVvy1z0i4erN5f/wz5AOnWUvyCWAeNiYfOUlpCPbMookPidimY.','hhh@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(38,'888','$2a$10$um9pBXUcVBlxaViiEht4buLjXMKnyo5Ytdyfs71ev.T87F5OuvmLy','888@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(39,'123','$2a$10$hAd9yilopmtgcpNn6G41D.Gcj6g8MTKWKgxI4nHA0I0ThH4VUVGOy','ttt@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(40,'123','$2a$10$BMDtwmVkWMbaFGFIBAFvP.Un9sWgtBsRLizJaxSOSc0BMKng.2ymO','ppp@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(41,'123','$2a$10$NWll.HaKjR/KH/Ws2lDE9e74P/UzkWaWasSPFQpiIb9jLhxCAjTf2','jjj@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(42,'123','$2a$10$BUQlG5.PAeep09jgthwNU.V1fHN8/onKckWR5s01urnwRR/e40FZu','1998@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(43,'123','$2a$10$eM6.dx/Eqgmgx5HW.wp4LOz1XWkpztcGGRm64RqqvxK4hyEydJwDK','ooo@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(44,'ggg','$2a$10$1gAARqWFnG3I5SPEi4YDGeX6v4R7pM2nky2GwsEOfr4nvhibAx7xe','hahieu@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(45,'hieu','$2a$10$p86DrJQObuo0GmZGNK19buDhmeapWp0guRGISw7Xe1w61S7GFFOhe','hatrunghieu@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(46,'hieu','$2a$10$fGsvARLClaBj6km8LzrmKuxofFx4K94roJG4ncIlGbpxXv62RtJru','hatrunghieu22091998@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(47,'qweq','$2a$10$Ac8u8BjJF5dTurl7YDz9nOVYqlFoVgyKBUaOh8A0PM7pByexwk0F6','hahieu22@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(48,'qwe','$2a$10$7XKdbtxqPdbduLd6BJQnEO7iGnWew6YxbslfY9mgYNCJJPz/y63Ga','sss@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(49,'123','$2a$10$xm8lzVG/9hPeRkOugneJxuxWXCoY6OBqXfZOEbh8wOZr97JM4sTOG','11111111111111@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(50,'13','$2a$10$zn6KIqPkD4kHcdAbFResaODi.YiegQwa8FalfxpFk585H3OB.CIAi','000000000000@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(51,'ewq','$2a$10$F.JcYB9xwaN1wOwA/ss3geBkP5vDq1jgscLLbyqTp5tBg0LQS62NK','mmmmmmmm@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(52,'qweqe','$2a$10$kO4Dqan8CxXlJ//HMKZGm.EdmGGhBqc6G/wLhyhzV44t4wCYneCii','qqqqqqqqqqq@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(53,'123','$2a$10$6qTKjz4sTnKxYOzh90AK3OPy2154py0LYhVGr8H5F5mxuA9nTGTT2','nnnnnnnnnnnnnn@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(54,'qwe','$2a$10$geanNXT5xeyrLA5jR0w7muwGsXjQueVRayWFCYgplVqLg5PYJMA4q','qqqqqqqqqqqqqqqq@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(55,'ASAs','$2a$10$cU3s8aA8QbfKJNl9I2A.le4ghQxSSjAtC5F0hji6zbvl5iNrf34C6','A1SAs@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(56,'Ha Trung Hieu','$2a$10$a.XVHO4wTpK0HUSTlRsWZuwhuzigwJzK3l7mVA5MRPkFM8RmJ87oC','hatrunghieu220998@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(57,'asdasdasd','$2a$10$iO45toZf7nSqWEDuBbAu6.T7eIs96.6MP.5qSKRkmEFuSNEqKICK2','asdasdsad@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(58,'xxxx','$2a$10$13TMLdqpl237E2w/WKwghOwDhsd9VnolTpKp1TGjK4t5VVGf.DEta','xxxxxxxx@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(59,'asdad','$2a$10$uiQr6r6ilMrpztRmd0wsF.x/uiGUq1/sdF406mQE5mbgOqqkGBBNa','dasdas@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(60,'qqq','$2a$10$K0fP8Ij/rjWKUqWp0hH/gexpA01pZU2a6V.KXpajGX.nTQxf.PjQi','ccccccccc@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(61,'asa','$2a$10$yTz7TRrqaM0iv5WJLcx2IeC6eRTYS0ZcCl0m7FvMa7NOgaPHNCizi','test@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(62,'a','$2a$10$ySiiHakl.esL58lBwf5aDeH.Vfk.bMNaiz8OSgHbPApgYyPzxyCBO','a@gmail.com',NULL,NULL,NULL,NULL,NULL,2),(63,'w','$2a$10$kImyEMrfgVSBzX8al673Mu.heaIFT8m8DZl0TMBov5PrhFxMOETY.','s@hgnail.com',NULL,NULL,NULL,NULL,NULL,2),(64,'Duy Anh','$2a$10$h4xUVf4SoRQBaJdu.reb3.XeEsoQRaKZtRpetG9M6ToLnFwgzidQO','duyanh2812@gmail.com',NULL,NULL,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-24 10:34:47
