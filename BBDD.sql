CREATE DATABASE  IF NOT EXISTS `hospitalboxmanagement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospitalboxmanagement`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
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
-- Table structure for table `app_box`
--

DROP TABLE IF EXISTS `app_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_box` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `tipo_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero` (`numero`),
  KEY `app_box_tipo_id_5bc5c441_fk_app_tipobox_id` (`tipo_id`),
  CONSTRAINT `app_box_tipo_id_5bc5c441_fk_app_tipobox_id` FOREIGN KEY (`tipo_id`) REFERENCES `app_tipobox` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_box`
--

LOCK TABLES `app_box` WRITE;
/*!40000 ALTER TABLE `app_box` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_consultamedica`
--

DROP TABLE IF EXISTS `app_consultamedica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_consultamedica` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `paciente` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `box_id` bigint NOT NULL,
  `medico_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_consultamedica_box_id_24683dd3_fk_app_box_id` (`box_id`),
  KEY `app_consultamedica_medico_id_79651745_fk_app_medico_id` (`medico_id`),
  CONSTRAINT `app_consultamedica_box_id_24683dd3_fk_app_box_id` FOREIGN KEY (`box_id`) REFERENCES `app_box` (`id`),
  CONSTRAINT `app_consultamedica_medico_id_79651745_fk_app_medico_id` FOREIGN KEY (`medico_id`) REFERENCES `app_medico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_consultamedica`
--

LOCK TABLES `app_consultamedica` WRITE;
/*!40000 ALTER TABLE `app_consultamedica` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_consultamedica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_medico`
--

DROP TABLE IF EXISTS `app_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_medico` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `tipo_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_medico_tipo_id_b24acc46_fk_app_tipomedico_id` (`tipo_id`),
  CONSTRAINT `app_medico_tipo_id_b24acc46_fk_app_tipomedico_id` FOREIGN KEY (`tipo_id`) REFERENCES `app_tipomedico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_medico`
--

LOCK TABLES `app_medico` WRITE;
/*!40000 ALTER TABLE `app_medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_tipobox`
--

DROP TABLE IF EXISTS `app_tipobox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_tipobox` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_tipobox`
--

LOCK TABLES `app_tipobox` WRITE;
/*!40000 ALTER TABLE `app_tipobox` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_tipobox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_tipomedico`
--

DROP TABLE IF EXISTS `app_tipomedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_tipomedico` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_tipomedico`
--

LOCK TABLES `app_tipomedico` WRITE;
/*!40000 ALTER TABLE `app_tipomedico` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_tipomedico` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add box',7,'add_box'),(26,'Can change box',7,'change_box'),(27,'Can delete box',7,'delete_box'),(28,'Can view box',7,'view_box'),(29,'Can add tipo box',8,'add_tipobox'),(30,'Can change tipo box',8,'change_tipobox'),(31,'Can delete tipo box',8,'delete_tipobox'),(32,'Can view tipo box',8,'view_tipobox'),(33,'Can add tipo medico',9,'add_tipomedico'),(34,'Can change tipo medico',9,'change_tipomedico'),(35,'Can delete tipo medico',9,'delete_tipomedico'),(36,'Can view tipo medico',9,'view_tipomedico'),(37,'Can add medico',10,'add_medico'),(38,'Can change medico',10,'change_medico'),(39,'Can delete medico',10,'delete_medico'),(40,'Can view medico',10,'view_medico'),(41,'Can add consulta medica',11,'add_consultamedica'),(42,'Can change consulta medica',11,'change_consultamedica'),(43,'Can delete consulta medica',11,'delete_consultamedica'),(44,'Can view consulta medica',11,'view_consultamedica');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box`
--

LOCK TABLES `box` WRITE;
/*!40000 ALTER TABLE `box` DISABLE KEYS */;
INSERT INTO `box` VALUES (1,1,'B','Disponible'),(2,1,'B','Disponible'),(3,1,'B','Disponible'),(4,2,'Q','Mantenimiento'),(5,2,'Q','Mantenimiento'),(6,3,'P','Disponible'),(7,3,'P','Disponible'),(8,4,'E','Disponible'),(9,1,'B','Mantenimiento'),(10,2,'Q','Disponible'),(11,3,'P','Disponible'),(12,4,'E','Disponible'),(13,1,'B','Disponible'),(14,2,'Q','Mantenimiento'),(15,3,'P','Disponible');
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
  `fechaInicio` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  PRIMARY KEY (`idMedico`,`idBox`),
  KEY `FK_ConsultaBox` (`idBox`),
  CONSTRAINT `FK_ConsultaBox` FOREIGN KEY (`idBox`) REFERENCES `box` (`idBox`),
  CONSTRAINT `FK_ConsultaMedico` FOREIGN KEY (`idMedico`) REFERENCES `medico` (`idMedico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consultamedica`
--

LOCK TABLES `consultamedica` WRITE;
/*!40000 ALTER TABLE `consultamedica` DISABLE KEYS */;
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
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','box'),(11,'app','consultamedica'),(10,'app','medico'),(8,'app','tipobox'),(9,'app','tipomedico'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-07-12 21:48:58.253051'),(2,'auth','0001_initial','2025-07-12 21:48:59.597312'),(3,'admin','0001_initial','2025-07-12 21:48:59.870357'),(4,'admin','0002_logentry_remove_auto_add','2025-07-12 21:48:59.882144'),(5,'admin','0003_logentry_add_action_flag_choices','2025-07-12 21:48:59.896241'),(6,'app','0001_initial','2025-07-12 21:49:00.673764'),(7,'contenttypes','0002_remove_content_type_name','2025-07-12 21:49:00.835131'),(8,'auth','0002_alter_permission_name_max_length','2025-07-12 21:49:01.035599'),(9,'auth','0003_alter_user_email_max_length','2025-07-12 21:49:01.068727'),(10,'auth','0004_alter_user_username_opts','2025-07-12 21:49:01.080912'),(11,'auth','0005_alter_user_last_login_null','2025-07-12 21:49:01.176764'),(12,'auth','0006_require_contenttypes_0002','2025-07-12 21:49:01.185771'),(13,'auth','0007_alter_validators_add_error_messages','2025-07-12 21:49:01.197798'),(14,'auth','0008_alter_user_username_max_length','2025-07-12 21:49:01.315305'),(15,'auth','0009_alter_user_last_name_max_length','2025-07-12 21:49:01.438346'),(16,'auth','0010_alter_group_name_max_length','2025-07-12 21:49:01.468372'),(17,'auth','0011_update_proxy_permissions','2025-07-12 21:49:01.482504'),(18,'auth','0012_alter_user_first_name_max_length','2025-07-12 21:49:01.610201'),(19,'sessions','0001_initial','2025-07-12 21:49:01.683639');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (41,1,'Dr. Juan Pérez',123456789,'1980-05-15',12345),(42,2,'Dra. María González',98765432,'1975-11-22',54321),(43,3,'Dr. Carlos López',45678901,'1985-03-10',67890),(44,1,'Dra. Ana Silva',23456789,'1990-07-30',23456),(45,4,'Dr. Pedro Rojas',34567890,'1978-09-12',34567),(46,2,'Dra. Claudia Méndez',56789012,'1982-12-05',56789),(47,5,'Dr. Roberto Navarro',67890123,'1970-02-28',67891),(48,3,'Dra. Francisca Torres',78901234,'1988-06-18',78901),(49,6,'Dr. Alejandro Díaz',89012345,'1983-04-22',89012),(50,7,'Dra. Patricia Vargas',90123456,'1979-08-14',90123),(51,4,'Dr. Manuel Soto',11223345,'1981-01-25',11223),(52,5,'Dra. Daniela Castro',22334456,'1986-10-08',22334),(53,1,'Dr. Arturo Medina',33445567,'1977-07-19',33445),(54,2,'Dra. Valentina Ríos',44556678,'1984-03-31',44556),(55,3,'Dr. Sergio Peña',55667789,'1973-09-27',55667),(56,6,'Dra. Camila Flores',66778890,'1989-11-11',66778),(57,7,'Dr. Nicolás Herrera',77889901,'1987-05-06',77889),(58,4,'Dra. Sofía Jiménez',88990012,'1976-12-15',88990),(59,5,'Dr. Gabriel Muñoz',99001123,'1980-08-24',99001),(60,1,'Dra. Andrea Ruiz',10111213,'1974-04-17',10111);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipobox`
--

LOCK TABLES `tipobox` WRITE;
/*!40000 ALTER TABLE `tipobox` DISABLE KEYS */;
INSERT INTO `tipobox` VALUES (25,'Consulta General, Camilla, monitor básico, escritorio'),(26,'Box Quirúrgico, Luces quirúrgicas, monitor avanzado, instrumental'),(27,'Box Pediatría, Camilla infantil, juguetes, monitor pediátrico'),(28,'Box Emergencias, Monitor cardiaco, desfibrilador, carro de emergencia');
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomedico`
--

LOCK TABLES `tipomedico` WRITE;
/*!40000 ALTER TABLE `tipomedico` DISABLE KEYS */;
INSERT INTO `tipomedico` VALUES (57,'Cardiología'),(58,'Pediatría'),(59,'Traumatología'),(60,'Dermatología'),(61,'Oftalmología'),(62,'Ginecología'),(63,'Neurología');
/*!40000 ALTER TABLE `tipomedico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hospitalboxmanagement'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-20 13:30:51
