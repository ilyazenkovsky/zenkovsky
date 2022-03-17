CREATE DATABASE  IF NOT EXISTS `team_task_tracker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `team_task_tracker`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: team_task_tracker
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `userId` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_idx` (`userId`),
  CONSTRAINT `fk1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'2021-11-16 00:00:00',5,'2021-11-16 12:13:27','2021-11-16 12:13:27'),(2,'2021-11-16 00:00:00',5,'2021-11-16 12:18:50','2021-11-16 12:18:50'),(3,'2021-11-16 00:00:00',5,'2021-11-16 12:19:32','2021-11-16 12:19:32'),(4,'2021-11-16 00:00:00',5,'2021-11-16 12:19:56','2021-11-16 12:19:56'),(5,'2021-11-16 00:00:00',1,'2021-11-16 12:22:44','2021-11-16 12:22:44'),(6,'2021-11-16 00:00:00',1,'2021-11-16 12:25:41','2021-11-16 12:25:41'),(7,'2021-11-16 00:00:00',1,'2021-11-16 12:29:17','2021-11-16 12:29:17'),(8,'2021-11-16 00:00:00',5,'2021-11-16 12:29:32','2021-11-16 12:29:32'),(9,'2021-11-16 00:00:00',5,'2021-11-16 12:29:52','2021-11-16 12:29:52'),(10,'2021-11-16 00:00:00',5,'2021-11-16 12:30:27','2021-11-16 12:30:27'),(11,'2021-11-16 00:00:00',5,'2021-11-16 12:30:27','2021-11-16 12:30:27'),(12,'2021-11-16 00:00:00',5,'2021-11-16 12:31:42','2021-11-16 12:31:42'),(13,'2021-11-16 00:00:00',5,'2021-11-16 12:34:52','2021-11-16 12:34:52'),(14,'2021-11-16 00:00:00',1,'2021-11-16 12:35:22','2021-11-16 12:35:22'),(15,'2021-11-16 00:00:00',5,'2021-11-16 12:35:39','2021-11-16 12:35:39'),(16,'2021-11-16 00:00:00',5,'2021-11-16 12:36:58','2021-11-16 12:36:58'),(17,'2021-11-16 00:00:00',1,'2021-11-16 12:37:09','2021-11-16 12:37:09');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT '0',
  `estCompletion` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `creatorId` int DEFAULT NULL,
  `assigneeId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `creatorId` (`creatorId`),
  KEY `assigneeId` (`assigneeId`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`assigneeId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Настроить MySQL','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-01','2021-11-16 00:00:00','2021-11-16 00:17:17',1,5),(2,'Настроить nodemailer','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',0,NULL,'2021-11-16 00:00:00','2021-11-16 00:00:00',1,NULL),(3,'Настроить passport','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-03','2021-11-16 00:00:00','2021-11-16 00:00:00',1,2),(4,'Создать seeds.sql','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-04','2021-11-16 00:00:00','2021-11-16 00:00:00',3,3),(5,'Создать schema.sql','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-05','2021-11-16 00:00:00','2021-11-16 00:00:00',3,3),(6,'Создать model index','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-06','2021-11-16 00:00:00','2021-11-16 00:00:00',4,3),(7,'Создать task model','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-07','2021-11-16 00:00:00','2021-11-16 00:00:00',4,3),(8,'Создать user model','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-08','2021-11-16 00:00:00','2021-11-16 00:00:00',4,3),(9,'Установить зависимости проекта','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-09','2021-11-16 00:00:00','2021-11-16 00:00:00',4,3),(10,'Настроить окружение фреймворка','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-10','2021-11-16 00:00:00','2021-11-16 00:00:00',1,2),(11,'Запустить сборку стилей','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-11','2021-11-16 00:00:00','2021-11-16 00:00:00',1,4),(12,'Подгрузить тестовые изоражения','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-12','2021-11-16 00:00:00','2021-11-16 00:00:00',1,3),(13,'Создать index.js','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',0,NULL,'2021-11-16 00:00:00','2021-11-16 00:00:00',2,NULL),(14,'Создать list.js','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',0,'2021-11-14','2021-11-16 00:00:00','2021-11-16 00:00:00',2,2),(15,'Создать login.js','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-15','2021-11-16 00:00:00','2021-11-16 00:00:00',2,4),(16,'Подгрузить materialize.js','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-16','2021-11-16 00:00:00','2021-11-16 00:00:00',2,4),(17,'Создать new.js','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',0,'2021-11-17','2021-11-16 00:00:00','2021-11-16 00:00:00',2,4),(18,'Создать signup.js','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-18','2021-11-16 00:00:00','2021-11-16 00:00:00',2,4),(19,'Создать task.js','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',0,NULL,'2021-11-16 00:00:00','2021-11-16 00:00:00',2,NULL),(20,'Создать users.js','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',0,NULL,'2021-11-16 00:00:00','2021-11-16 00:00:00',2,NULL),(21,'Создать passport api маршрутизатор','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',0,'2021-11-21','2021-11-16 00:00:00','2021-11-16 00:00:00',3,4),(22,'Создать main.handlebars','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-22','2021-11-16 00:00:00','2021-11-16 00:00:00',NULL,2),(23,'Создать index.handlebars','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-23','2021-11-16 00:00:00','2021-11-16 00:00:00',NULL,2),(24,'Создать new.handlebars','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-24','2021-11-16 00:00:00','2021-11-16 00:00:00',NULL,2),(25,'Создать signup.handlebars','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-25','2021-11-16 00:00:00','2021-11-16 00:00:00',NULL,2),(26,'Создать task.handlebars','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-26','2021-11-16 00:00:00','2021-11-16 00:00:00',NULL,2),(27,'Создать users.handlebars','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',0,NULL,'2021-11-16 00:00:00','2021-11-16 00:00:00',NULL,NULL),(28,'Настроить env-переменные','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-28','2021-11-16 00:00:00','2021-11-16 00:00:00',1,3),(29,'Подключить Git','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,NULL,'2021-11-16 00:00:00','2021-11-16 00:00:00',1,NULL),(30,'Настроить тестирование ESLint','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,NULL,'2021-11-16 00:00:00','2021-11-16 00:00:00',1,NULL),(31,'Настроить скрипты package.json','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,NULL,'2021-11-16 00:00:00','2021-11-16 00:00:00',1,NULL),(32,'Настроить MySQL','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',0,NULL,'2021-11-16 00:00:00','2021-11-16 00:00:00',1,NULL),(33,'Подготовить к сборке server.js','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-03','2021-11-16 00:00:00','2021-11-16 00:00:00',1,3),(34,'Наполнить controller.js','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',1,'2021-11-04','2021-11-16 00:00:00','2021-11-16 00:00:00',1,3),(35,'Создать README.md','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in finibus eros, at egestas diam. Etiam consequat hendrerit nunc, in auctor tortor fringilla at. Mauris venenatis a mi et nullam sodales.',0,'2021-11-05','2021-11-16 00:00:00','2021-11-16 00:00:00',3,3);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Петр','Петров',0,'petr@mail.ru','$2a$10$LxwyqXy28L3buW/nhBAlweCRqeJgRIdC9z8k9ZD2nSxLg/VHpPXOK','red','2021-11-16 00:00:00','2021-11-16 00:00:00'),(2,'Василий','Васильев',0,'vasia@mail.ru','$2a$10$LxwyqXy28L3buW/nhBAlweCRqeJgRIdC9z8k9ZD2nSxLg/VHpPXOK','blue','2021-11-16 00:00:00','2021-11-16 00:00:00'),(3,'Алиса','Алисовская',0,'alisalis@ya.by','$2a$10$LxwyqXy28L3buW/nhBAlweCRqeJgRIdC9z8k9ZD2nSxLg/VHpPXOK','purple','2021-11-16 00:00:00','2021-11-16 00:00:00'),(4,'Илья','Ильин',0,'ilyail@google.com','$2a$10$LxwyqXy28L3buW/nhBAlweCRqeJgRIdC9z8k9ZD2nSxLg/VHpPXOK','orange','2021-11-16 00:00:00','2021-11-16 00:00:00'),(5,'Ivan','Ivan',1,'ivan@mail.ru','$2a$10$LxwyqXy28L3buW/nhBAlweCRqeJgRIdC9z8k9ZD2nSxLg/VHpPXOK',NULL,'2021-11-16 00:17:04','2021-11-16 00:17:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 15:38:21
