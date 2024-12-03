-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: healog
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  `month` int NOT NULL,
  `day` int NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `condition` text,
  `feedback` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_diary_date` (`year`,`month`,`day`,`user_id`),
  KEY `fk_diary_user1_idx` (`user_id`),
  CONSTRAINT `fk_diary_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
INSERT INTO `diary` VALUES (480,2024,11,26,'53fa4908-c7f2-4e91-a091-ccea1022e69d','컨디션이 좋습니다.','어깨가 가슴보다 앞으로 오게 되면 어깨에 무리가 갈 수 있으니 주의해주세요. 엉덩이가 벤치에서 떨어지지 않도록 주의해주세요.'),(483,2024,11,26,'efdc2060-f955-44e9-9a2c-0bdf386c2cc5',NULL,NULL),(484,2024,11,26,'02a17c2b-0b7e-433a-9b7c-e39b6ae8ecd4',NULL,NULL),(485,2024,11,26,'f33a28a7-df1c-42c9-abd5-cd8c6054e63e',NULL,NULL),(486,2024,11,26,'b1886632-d28e-4371-8d73-67e197abce4d',NULL,NULL),(487,2024,11,26,'15a48a7c-bbed-445e-8f9e-b990470a1970',NULL,NULL),(488,2024,11,26,'7914fb95-275a-4dd8-811d-c645ea60b1ec',NULL,NULL),(489,2024,11,26,'8480ed8f-f2b5-4ddb-9fef-725583cbe9fa',NULL,NULL),(490,2024,11,26,'77c980f9-f7ab-431f-931b-2199075dde79',NULL,NULL),(491,2024,11,26,'95392136-ce24-4686-adad-602ae2fa0156',NULL,NULL),(492,2024,11,26,'ac787622-abc3-42bb-8fc2-c8ac124bf156',NULL,NULL),(493,2024,11,26,'2c6c9926-8c6b-4fd4-9187-9118fe46e734',NULL,NULL),(494,2024,11,26,'7a221bd5-f67f-4a47-851e-e4337d463787',NULL,NULL),(496,2024,11,25,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(497,2024,11,27,'53fa4908-c7f2-4e91-a091-ccea1022e69d','컨디션이 안좋습니다.',NULL),(499,2024,11,4,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(500,2024,11,7,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(501,2024,11,12,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(502,2024,12,7,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(503,2024,12,12,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(504,2024,12,3,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(505,2024,11,13,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(506,2024,11,15,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(507,2024,11,18,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(508,2024,11,21,'53fa4908-c7f2-4e91-a091-ccea1022e69d',NULL,NULL),(509,2024,11,26,'8c3aa93d-6727-4968-9130-59815a5fff6e',NULL,NULL),(510,2024,11,12,'8c3aa93d-6727-4968-9130-59815a5fff6e',NULL,NULL),(511,2024,11,16,'8c3aa93d-6727-4968-9130-59815a5fff6e',NULL,NULL),(512,2024,11,18,'8c3aa93d-6727-4968-9130-59815a5fff6e',NULL,NULL),(513,2024,11,21,'8c3aa93d-6727-4968-9130-59815a5fff6e',NULL,NULL),(514,2024,11,26,'ed18e396-ca5b-42aa-b662-3526d267d556',NULL,NULL),(515,2024,11,22,'ed18e396-ca5b-42aa-b662-3526d267d556',NULL,NULL),(516,2024,11,27,'8c3aa93d-6727-4968-9130-59815a5fff6e','GOOD',NULL);
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 17:37:20