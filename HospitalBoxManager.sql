CREATE DATABASE  IF NOT EXISTS `hospitalboxmanagement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospitalboxmanagement`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitalboxmanagement
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add tipo box',7,'add_tipobox'),(26,'Can change tipo box',7,'change_tipobox'),(27,'Can delete tipo box',7,'delete_tipobox'),(28,'Can view tipo box',7,'view_tipobox'),(29,'Can add box',8,'add_box'),(30,'Can change box',8,'change_box'),(31,'Can delete box',8,'delete_box'),(32,'Can view box',8,'view_box'),(33,'Can add tipo medico',9,'add_tipomedico'),(34,'Can change tipo medico',9,'change_tipomedico'),(35,'Can delete tipo medico',9,'delete_tipomedico'),(36,'Can view tipo medico',9,'view_tipomedico'),(37,'Can add medico',10,'add_medico'),(38,'Can change medico',10,'change_medico'),(39,'Can delete medico',10,'delete_medico'),(40,'Can view medico',10,'view_medico'),(41,'Can add consulta medica',11,'add_consultamedica'),(42,'Can change consulta medica',11,'change_consultamedica'),(43,'Can delete consulta medica',11,'delete_consultamedica'),(44,'Can view consulta medica',11,'view_consultamedica');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box`
--

DROP TABLE IF EXISTS `box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `box` (
  `idBox` int NOT NULL AUTO_INCREMENT,
  `idTipoBox` int DEFAULT NULL,
  `pasillo` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idBox`),
  KEY `FK_TipoBox` (`idTipoBox`),
  CONSTRAINT `FK_TipoBox` FOREIGN KEY (`idTipoBox`) REFERENCES `tipobox` (`idTipoBox`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box`
--

LOCK TABLES `box` WRITE;
/*!40000 ALTER TABLE `box` DISABLE KEYS */;
INSERT INTO `box` VALUES (1,1,'B','Disponible'),(2,1,'B','Mantenimiento'),(3,1,'B','Mantenimiento'),(4,2,'Q','Mantenimiento'),(5,2,'Q','Mantenimiento'),(6,3,'P','Disponible'),(7,3,'P','Disponible'),(8,4,'E','Disponible'),(9,1,'B','Mantenimiento'),(10,2,'Q','Mantenimiento'),(11,3,'P','Mantenimiento'),(12,4,'E','Mantenimiento'),(13,1,'B','Disponible'),(14,2,'Q','Disponible'),(15,3,'P','Disponible'),(16,1,'B','Disponible'),(17,2,'Q','Disponible'),(18,3,'P','Disponible'),(19,4,'E','Disponible'),(20,1,'B','Disponible'),(21,2,'Q','Disponible'),(22,3,'P','Disponible'),(23,4,'E','Disponible'),(24,1,'B','Disponible'),(25,1,'B','Disponible'),(26,2,'Q','Disponible'),(27,3,'P','Disponible'),(28,4,'E','Disponible'),(29,1,'B','Disponible'),(30,2,'Q','Disponible'),(31,3,'P','Disponible'),(32,1,'B','Disponible'),(33,2,'Q','Disponible'),(34,3,'P','Disponible'),(35,4,'E','Disponible'),(36,1,'B','Disponible'),(37,1,'B','Disponible'),(38,2,'Q','Disponible'),(39,3,'P','Disponible'),(40,4,'E','Disponible'),(41,1,'B','Disponible'),(42,2,'Q','Disponible'),(43,3,'P','Disponible'),(44,4,'E','Disponible'),(45,1,'B','Disponible'),(46,2,'Q','Disponible'),(47,3,'P','Disponible'),(48,1,'B','Disponible'),(49,2,'Q','Disponible'),(50,3,'P','Disponible'),(51,4,'E','Disponible'),(52,1,'B','Disponible'),(53,2,'Q','Disponible'),(54,3,'P','Disponible'),(55,4,'E','Disponible'),(56,1,'B','Disponible');
/*!40000 ALTER TABLE `box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consultamedica`
--

DROP TABLE IF EXISTS `consultamedica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consultamedica` (
  `idMedico` int NOT NULL,
  `idBox` int NOT NULL,
  `fechaInicio` datetime NOT NULL,
  `fechaFinal` datetime NOT NULL,
  PRIMARY KEY (`idMedico`,`idBox`,`fechaInicio`,`fechaFinal`),
  KEY `idBox` (`idBox`),
  CONSTRAINT `consultamedica_ibfk_1` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`),
  CONSTRAINT `consultamedica_ibfk_2` FOREIGN KEY (`idBox`) REFERENCES `box` (`idBox`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultamedica`
--

LOCK TABLES `consultamedica` WRITE;
/*!40000 ALTER TABLE `consultamedica` DISABLE KEYS */;
INSERT INTO `consultamedica` VALUES (5,1,'2025-08-09 23:57:00','2025-08-10 00:27:00'),(7,1,'2025-08-01 08:00:00','2025-08-01 08:30:00'),(10,1,'2025-08-09 23:49:00','2025-08-10 00:19:00'),(14,1,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(14,1,'2025-08-11 07:42:00','2025-08-11 08:12:00'),(15,1,'2025-08-09 23:55:00','2025-08-10 00:25:00'),(15,1,'2025-08-11 10:48:00','2025-08-11 11:18:00'),(16,1,'2025-08-30 08:00:00','2025-08-30 08:30:00'),(17,1,'2025-08-09 23:58:00','2025-08-10 00:28:00'),(17,1,'2025-08-11 00:01:00','2025-08-11 00:31:00'),(18,1,'2025-11-06 13:00:00','2025-11-06 13:30:00'),(19,1,'2025-08-10 00:00:00','2025-08-10 00:30:00'),(19,1,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(3,2,'2025-05-01 08:30:00','2025-05-01 09:00:00'),(17,2,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(1,3,'2025-05-01 08:30:00','2025-05-01 09:00:00'),(1,3,'2025-07-02 09:00:00','2025-07-02 09:30:00'),(2,3,'2025-10-01 09:00:00','2025-10-01 09:30:00'),(7,3,'2025-04-17 08:00:00','2025-04-17 08:30:00'),(7,3,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(9,3,'2025-11-05 08:00:00','2025-11-05 08:30:00'),(10,3,'2025-08-14 10:00:00','2025-08-14 10:30:00'),(11,3,'2025-03-01 08:00:00','2025-03-01 08:30:00'),(11,3,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(14,3,'2025-10-09 13:30:00','2025-10-09 14:00:00'),(15,3,'2025-09-18 09:00:00','2025-09-18 09:30:00'),(17,3,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(17,3,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(19,3,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(1,4,'2025-05-01 08:30:00','2025-05-01 09:00:00'),(1,4,'2025-07-02 09:00:00','2025-07-02 09:30:00'),(1,4,'2025-09-04 09:00:00','2025-09-04 09:30:00'),(1,4,'2025-10-09 09:00:00','2025-10-09 09:30:00'),(2,4,'2025-05-01 14:30:00','2025-05-01 15:00:00'),(3,4,'2025-10-03 08:30:00','2025-10-03 09:00:00'),(9,4,'2025-10-09 09:00:00','2025-10-09 09:30:00'),(9,4,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(11,4,'2025-04-10 13:30:00','2025-04-10 14:00:00'),(11,4,'2025-09-17 08:30:00','2025-09-17 09:00:00'),(15,4,'2025-09-11 08:00:00','2025-09-11 08:30:00'),(15,4,'2025-11-13 13:30:00','2025-11-13 14:00:00'),(16,4,'2025-09-11 08:30:00','2025-09-11 09:00:00'),(16,4,'2025-10-09 09:00:00','2025-10-09 09:30:00'),(16,4,'2025-10-16 13:00:00','2025-10-16 13:30:00'),(20,4,'2025-11-06 13:30:00','2025-11-06 14:00:00'),(1,5,'2025-05-01 08:30:00','2025-05-01 09:00:00'),(1,5,'2025-07-02 09:00:00','2025-07-02 09:30:00'),(1,5,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(4,5,'2025-05-01 14:30:00','2025-05-01 15:00:00'),(9,5,'2025-11-07 09:00:00','2025-11-07 09:30:00'),(10,5,'2025-05-01 14:30:00','2025-05-01 15:00:00'),(18,5,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(1,6,'2025-05-01 08:30:00','2025-05-01 09:00:00'),(1,6,'2025-07-02 09:00:00','2025-07-02 09:30:00'),(1,6,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(1,6,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(14,6,'2025-08-09 23:49:00','2025-08-10 00:19:00'),(14,6,'2025-08-11 00:01:00','2025-08-11 00:31:00'),(16,6,'2025-11-04 10:30:00','2025-11-04 11:00:00'),(17,6,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(5,7,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(7,7,'2025-11-03 11:00:00','2025-11-03 11:30:00'),(9,7,'2025-08-09 23:49:00','2025-08-10 00:19:00'),(13,7,'2025-08-11 00:00:00','2025-08-11 00:30:00'),(15,7,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(18,7,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(15,8,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(15,8,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(17,8,'2025-08-09 23:49:00','2025-08-10 00:19:00'),(18,8,'2025-08-11 00:01:00','2025-08-11 00:31:00'),(4,9,'2025-08-07 09:00:00','2025-08-07 09:30:00'),(5,9,'2025-11-05 15:00:00','2025-11-05 15:30:00'),(15,9,'2025-11-06 11:00:00','2025-11-06 11:30:00'),(4,10,'2025-11-07 15:30:00','2025-11-07 16:00:00'),(16,10,'2025-09-11 08:00:00','2025-09-11 08:30:00'),(16,10,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(2,11,'2025-10-02 09:30:00','2025-10-02 10:00:00'),(11,11,'2025-11-04 08:00:00','2025-11-04 08:30:00'),(15,11,'2025-09-11 08:30:00','2025-09-11 09:00:00'),(18,11,'2025-09-11 09:00:00','2025-09-11 09:30:00'),(2,12,'2025-11-03 08:30:00','2025-11-03 09:00:00'),(5,12,'2025-10-02 09:30:00','2025-10-02 10:00:00'),(10,12,'2025-04-10 13:30:00','2025-04-10 14:00:00'),(15,12,'2025-10-09 13:30:00','2025-10-09 14:00:00'),(16,12,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(2,13,'2025-07-12 08:30:00','2025-07-12 09:00:00'),(17,13,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(10,14,'2025-11-05 08:30:00','2025-11-05 09:00:00'),(13,14,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(1,15,'2025-11-05 13:00:00','2025-11-05 13:30:00'),(16,15,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(16,15,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(10,16,'2025-11-07 09:30:00','2025-11-07 10:00:00'),(11,16,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(13,16,'2025-08-09 23:49:00','2025-08-10 00:19:00'),(13,16,'2025-10-09 13:30:00','2025-10-09 14:00:00'),(17,16,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(19,16,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(7,17,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(12,17,'2025-12-18 10:00:00','2025-12-18 10:30:00'),(13,17,'2025-09-11 13:30:00','2025-09-11 14:00:00'),(15,17,'2025-08-09 23:49:00','2025-08-10 00:19:00'),(17,17,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(17,17,'2025-11-04 11:00:00','2025-11-04 11:30:00'),(8,18,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(8,18,'2025-11-03 11:30:00','2025-11-03 12:00:00'),(14,18,'2025-10-16 13:30:00','2025-10-16 14:00:00'),(4,19,'2025-08-01 13:00:00','2025-08-01 13:30:00'),(16,19,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(6,20,'2025-11-05 15:30:00','2025-11-05 16:00:00'),(15,20,'2025-08-09 23:49:00','2025-08-10 00:19:00'),(16,20,'2025-11-06 11:30:00','2025-11-06 12:00:00'),(17,20,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(5,21,'2025-11-07 16:00:00','2025-11-07 16:30:00'),(14,21,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(16,21,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(12,22,'2025-11-04 08:30:00','2025-11-04 09:00:00'),(3,23,'2025-11-03 09:00:00','2025-11-03 09:30:00'),(5,24,'2025-08-13 15:30:00','2025-08-13 16:00:00'),(6,25,'2025-06-05 09:00:00','2025-06-05 09:30:00'),(11,25,'2025-11-06 09:00:00','2025-11-06 09:30:00'),(16,25,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(2,26,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(2,26,'2025-11-05 13:30:00','2025-11-05 14:00:00'),(10,26,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(16,26,'2025-08-09 23:52:00','2025-08-10 00:22:00'),(1,27,'2025-11-07 14:00:00','2025-11-07 14:30:00'),(5,27,'2025-08-23 09:30:00','2025-08-23 10:00:00'),(15,28,'2025-08-09 23:52:00','2025-08-10 00:22:00'),(18,28,'2025-11-04 11:30:00','2025-11-04 12:00:00'),(6,29,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(9,29,'2025-11-03 12:00:00','2025-11-03 12:30:00'),(3,31,'2025-08-13 10:00:00','2025-08-13 10:30:00'),(5,31,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(7,31,'2025-11-05 16:00:00','2025-11-05 16:30:00'),(17,31,'2025-11-06 12:00:00','2025-11-06 12:30:00'),(4,32,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(6,32,'2025-11-07 16:30:00','2025-11-07 17:00:00'),(16,32,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(13,33,'2025-11-04 09:00:00','2025-11-04 09:30:00'),(17,33,'2025-11-03 08:00:00','2025-11-03 08:30:00'),(4,34,'2025-11-03 09:30:00','2025-11-03 10:00:00'),(12,36,'2025-11-06 09:30:00','2025-11-06 10:00:00'),(3,37,'2025-08-09 23:51:00','2025-08-10 00:21:00'),(3,37,'2025-11-05 14:00:00','2025-11-05 14:30:00'),(2,38,'2025-11-07 14:30:00','2025-11-07 15:00:00'),(13,38,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(17,39,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(19,39,'2025-11-04 12:00:00','2025-11-04 12:30:00'),(10,40,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(8,42,'2025-11-05 16:30:00','2025-11-05 17:00:00'),(18,42,'2025-11-06 12:30:00','2025-11-06 13:00:00'),(7,43,'2025-11-07 08:00:00','2025-11-07 08:30:00'),(14,44,'2025-11-04 09:30:00','2025-11-04 10:00:00'),(5,45,'2025-11-03 10:00:00','2025-11-03 10:30:00'),(15,46,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(13,47,'2025-11-06 10:00:00','2025-11-06 10:30:00'),(4,48,'2025-11-05 14:30:00','2025-11-05 15:00:00'),(3,49,'2025-11-07 15:00:00','2025-11-07 15:30:00'),(20,50,'2025-11-04 12:30:00','2025-11-04 13:00:00'),(7,53,'2025-11-03 12:30:00','2025-11-03 13:00:00'),(19,53,'2025-11-06 13:00:00','2025-11-06 13:30:00'),(8,54,'2025-11-07 08:30:00','2025-11-07 09:00:00'),(15,55,'2025-11-04 10:00:00','2025-11-04 10:30:00'),(6,56,'2025-11-03 10:30:00','2025-11-03 11:00:00'),(14,58,'2025-11-06 10:30:00','2025-11-06 11:00:00');
/*!40000 ALTER TABLE `consultamedica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(8,'app','box'),(11,'app','consultamedica'),(10,'app','medico'),(7,'app','tipobox'),(9,'app','tipomedico'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-07-19 18:19:54.174654'),(2,'auth','0001_initial','2025-07-19 18:19:54.539508'),(3,'admin','0001_initial','2025-07-19 18:19:54.635915'),(4,'admin','0002_logentry_remove_auto_add','2025-07-19 18:19:54.641121'),(5,'admin','0003_logentry_add_action_flag_choices','2025-07-19 18:19:54.646218'),(6,'contenttypes','0002_remove_content_type_name','2025-07-19 18:19:54.693422'),(7,'auth','0002_alter_permission_name_max_length','2025-07-19 18:19:54.733522'),(8,'auth','0003_alter_user_email_max_length','2025-07-19 18:19:54.746957'),(9,'auth','0004_alter_user_username_opts','2025-07-19 18:19:54.751957'),(10,'auth','0005_alter_user_last_login_null','2025-07-19 18:19:54.787178'),(11,'auth','0006_require_contenttypes_0002','2025-07-19 18:19:54.789235'),(12,'auth','0007_alter_validators_add_error_messages','2025-07-19 18:19:54.795252'),(13,'auth','0008_alter_user_username_max_length','2025-07-19 18:19:54.836928'),(14,'auth','0009_alter_user_last_name_max_length','2025-07-19 18:19:54.881354'),(15,'auth','0010_alter_group_name_max_length','2025-07-19 18:19:54.893654'),(16,'auth','0011_update_proxy_permissions','2025-07-19 18:19:54.899697'),(17,'auth','0012_alter_user_first_name_max_length','2025-07-19 18:19:54.935665'),(18,'sessions','0001_initial','2025-07-19 18:19:54.957474'),(19,'app','0001_initial','2025-07-19 22:52:42.330218'),(20,'app','0002_alter_box_options','2025-07-19 23:03:34.313697'),(21,'app','0003_alter_box_table','2025-07-19 23:09:00.078034'),(22,'app','0004_alter_consultamedica_options_alter_medico_options_and_more','2025-07-19 23:14:05.615560'),(23,'app','0005_alter_consultamedica_table_alter_medico_table_and_more','2025-07-19 23:25:31.016328');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
  `idMedico` int NOT NULL AUTO_INCREMENT,
  `idTipoMedico` int DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `rut` int DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `codigoDeProfesional` int DEFAULT NULL,
  PRIMARY KEY (`idMedico`),
  KEY `FK_TipoMedico` (`idTipoMedico`),
  CONSTRAINT `FK_TipoMedico` FOREIGN KEY (`idTipoMedico`) REFERENCES `tipomedico` (`idTipoMedico`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,1,'Dr. Juan JuanJUAn',123456789,'1980-05-15',12345),(2,2,'Dra. María González',98765432,'1975-11-22',54321),(3,3,'Dr. Carlos López',45678901,'1985-03-10',67890),(4,1,'Dra. Ana Silva',23456789,'1990-07-30',23456),(5,4,'Dr. Pedro Rojas',34567890,'1978-09-12',34567),(6,2,'Dra. Claudia Méndez',56789012,'1982-12-05',56789),(7,5,'Dr. Roberto Navarro',67890123,'1970-02-28',67891),(8,3,'Dra. Francisca Torres',78901234,'1988-06-18',78901),(9,6,'Dr. Alejandro Díaz',89012345,'1983-04-22',89012),(10,7,'Dra. Patricia Vargas',90123456,'1979-08-14',90123),(11,4,'Dr. Manuel Soto',11223345,'1981-01-25',11223),(12,5,'Dra. Daniela Castro',22334456,'1986-10-08',22334),(13,1,'Dr. Arturo Medina',33445567,'1977-07-19',33445),(14,2,'Dra. Valentina Ríos',44556678,'1984-03-31',44556),(15,3,'Dr. Sergio Peña',55667789,'1973-09-27',55667),(16,6,'Dra. Camila Flores',66778890,'1989-11-11',66778),(17,7,'Dr. Nicolás Herrera',77889901,'1987-05-06',77889),(18,4,'Dra. Sofía Jiménez',88990012,'1976-12-15',88990),(19,5,'Dr. Gabriel Muñoz',99001123,'1980-08-24',99001),(20,1,'Dra. Andrea Ruiz',10111213,'1974-04-17',10111);
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipobox`
--

DROP TABLE IF EXISTS `tipobox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipobox` (
  `idTipoBox` int NOT NULL AUTO_INCREMENT,
  `tipoBox` varchar(100) NOT NULL,
  PRIMARY KEY (`idTipoBox`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipobox`
--

LOCK TABLES `tipobox` WRITE;
/*!40000 ALTER TABLE `tipobox` DISABLE KEYS */;
INSERT INTO `tipobox` VALUES (1,'Consulta General, Camilla, monitor básico, escritorio'),(2,'Box Quirúrgico, Luces quirúrgicas, monitor avanzado, instrumental'),(3,'Box Pediatría, Camilla infantil, juguetes, monitor pediátrico'),(4,'Box Emergencias, Monitor cardiaco, desfibrilador, carro de emergencia');
/*!40000 ALTER TABLE `tipobox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomedico`
--

DROP TABLE IF EXISTS `tipomedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipomedico` (
  `idTipoMedico` int NOT NULL AUTO_INCREMENT,
  `TipoMedico` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idTipoMedico`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomedico`
--

LOCK TABLES `tipomedico` WRITE;
/*!40000 ALTER TABLE `tipomedico` DISABLE KEYS */;
INSERT INTO `tipomedico` VALUES (1,'Cardiología'),(2,'Pediatría'),(3,'Traumatología'),(4,'Dermatología'),(5,'Oftalmología'),(6,'Ginecología'),(7,'Neurología');
/*!40000 ALTER TABLE `tipomedico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hospitalboxmanagement'
--

--
-- Dumping routines for database 'hospitalboxmanagement'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-11 10:23:01
