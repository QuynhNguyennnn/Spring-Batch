CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `id` (`id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`id`) REFERENCES `staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (2,'admin','123','admin');
INSERT INTO `account` VALUES (1,'quynhnn','123456','admin');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `date_of_birth` varchar(45) NOT NULL,
  `create_user` varchar(45) DEFAULT NULL,
  `create_date_time` varchar(45) DEFAULT NULL,
  `update_user` varchar(45) DEFAULT NULL,
  `update_date_time` varchar(45) DEFAULT NULL,
  `delete_flag` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Quynh','Hcm','','2005','1','2023-03-01 09:37:10','1','2023-03-09 16:53:52',0);
INSERT INTO `staff` VALUES (2,'Hung','hcm','0123456','2000',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (3,'yuiio','Hcm','45668','2005',NULL,NULL,NULL,'2023-02-28 14:57:04',0);
INSERT INTO `staff` VALUES (4,'4','CT','012233','2000',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (6,'Hello','HCM','5455','2003',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (7,'fjnf','da','Ada','aadd',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (8,'fjnf','da','Ada','aadd',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (9,'fjnf','da','Ada','aadd',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (10,'fjnf','da','Ada','aadd',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (11,'fjnf','da','Ada','aadd',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (12,'fjnf','da','Ada','aadd',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (13,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (14,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (15,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (16,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (17,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (18,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (19,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (20,'Quynh','CT','012233','2000',NULL,NULL,'20','2023-03-03 16:08:40',0);
INSERT INTO `staff` VALUES (21,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (22,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (23,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (24,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (25,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (26,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (27,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (28,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (29,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (30,'a','as','aasa','aa',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (31,'binh','HCM','02455','2006',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (32,'binh','HCM','02455','2006',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (33,'iii','HCM','02455','2006',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (34,'banhhh','hcm','01525','2004',NULL,NULL,NULL,NULL,0);
INSERT INTO `staff` VALUES (35,'banhhhbao','hcm','01525','2004',NULL,NULL,'35','2023-03-03 16:26:10',1);
INSERT INTO `staff` VALUES (36,'yuiio','Hcm','45668','2005','36','2023-02-28 14:41:51','36','2023-03-06 16:41:19',1);
INSERT INTO `staff` VALUES (38,'yuiio','Hcm','45668','2005','1','2023-03-01 09:37:10','38','2023-03-09 15:01:37',0);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_entity`
--

DROP TABLE IF EXISTS `staff_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_entity` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_entity`
--

LOCK TABLES `staff_entity` WRITE;
/*!40000 ALTER TABLE `staff_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_entity_seq`
--

DROP TABLE IF EXISTS `staff_entity_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_entity_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_entity_seq`
--

LOCK TABLES `staff_entity_seq` WRITE;
/*!40000 ALTER TABLE `staff_entity_seq` DISABLE KEYS */;
INSERT INTO `staff_entity_seq` VALUES (1);
/*!40000 ALTER TABLE `staff_entity_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_register_request`
--

DROP TABLE IF EXISTS `staff_register_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_register_request` (
  `id` int NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_register_request`
--

LOCK TABLES `staff_register_request` WRITE;
/*!40000 ALTER TABLE `staff_register_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_register_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_register_request_seq`
--

DROP TABLE IF EXISTS `staff_register_request_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_register_request_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_register_request_seq`
--

LOCK TABLES `staff_register_request_seq` WRITE;
/*!40000 ALTER TABLE `staff_register_request_seq` DISABLE KEYS */;
INSERT INTO `staff_register_request_seq` VALUES (1);
/*!40000 ALTER TABLE `staff_register_request_seq` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-23 15:57:41
