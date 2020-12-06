-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: django2
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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-12-06 09:20:11.030822'),(2,'auth','0001_initial','2020-12-06 09:20:16.269871'),(3,'admin','0001_initial','2020-12-06 09:20:55.144473'),(4,'admin','0002_logentry_remove_auto_add','2020-12-06 09:21:01.695885'),(5,'admin','0003_logentry_add_action_flag_choices','2020-12-06 09:21:01.948762'),(6,'contenttypes','0002_remove_content_type_name','2020-12-06 09:21:10.770615'),(7,'auth','0002_alter_permission_name_max_length','2020-12-06 09:21:13.920095'),(8,'auth','0003_alter_user_email_max_length','2020-12-06 09:21:14.262901'),(9,'auth','0004_alter_user_username_opts','2020-12-06 09:21:14.490767'),(10,'auth','0005_alter_user_last_login_null','2020-12-06 09:21:17.492046'),(11,'auth','0006_require_contenttypes_0002','2020-12-06 09:21:17.714921'),(12,'auth','0007_alter_validators_add_error_messages','2020-12-06 09:21:17.919799'),(13,'auth','0008_alter_user_username_max_length','2020-12-06 09:21:20.646234'),(14,'auth','0009_alter_user_last_name_max_length','2020-12-06 09:21:27.286861'),(15,'auth','0010_alter_group_name_max_length','2020-12-06 09:21:27.814559'),(16,'auth','0011_update_proxy_permissions','2020-12-06 09:21:27.880522'),(17,'auth','0012_alter_user_first_name_max_length','2020-12-06 09:21:30.185505'),(18,'core','0001_initial','2020-12-06 09:21:33.584200'),(19,'core','0002_auto_20190905_2039','2020-12-06 09:21:36.483577'),(20,'core','0003_auto_20201201_1608','2020-12-06 09:21:38.755302'),(21,'core','0004_auto_20201201_1621','2020-12-06 09:21:40.836243'),(22,'core','0005_auto_20201201_1622','2020-12-06 09:21:46.986060'),(23,'core','0006_produto_imagem','2020-12-06 09:21:48.819171'),(24,'core','0007_auto_20201201_1636','2020-12-06 09:21:52.867957'),(25,'core','0008_tickets','2020-12-06 09:21:54.065273'),(26,'core','0009_auto_20201206_0604','2020-12-06 09:21:54.126238'),(27,'sessions','0001_initial','2020-12-06 09:21:55.692339');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-06  6:27:19
