-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: chat_app220120
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `authentication`
--

DROP TABLE IF EXISTS `authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authentication` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication`
--

LOCK TABLES `authentication` WRITE;
/*!40000 ALTER TABLE `authentication` DISABLE KEYS */;
INSERT INTO `authentication` VALUES (13,'user1','fakeemail@fake.com','1234','2022-01-24 20:32:28'),(14,'user2','fakeemail@fake.com','1234','2022-01-24 21:30:45'),(15,'user3','fakeemail@fake.com','1234','2022-01-24 22:05:56'),(16,'user4','fakeemail@fake.com','1234','2022-01-24 22:29:29'),(17,'user5','fakeemail@fake.com','1234','2022-01-24 22:45:28'),(18,'user6','fakeemail@fake.com','1234','2022-01-25 16:23:41'),(19,'user7','fakeemail@fake.com','1234','2022-01-25 16:35:59'),(20,'','','','2022-01-25 16:40:38'),(21,'','','','2022-01-25 18:53:06'),(22,'','','','2022-01-25 18:53:48'),(23,'user8','fakeemail@fake.com','1234','2022-01-26 13:29:14'),(24,'user9','fakeemail@fake.com','1234','2022-01-26 14:05:55'),(25,'user10','fakeemail@fake.com','1234','2022-01-26 14:16:43'),(26,'user11','fakeemail@fake.com','1234','2022-01-26 15:43:31'),(27,'test1','fakeemail@fake.com','1234','2022-02-11 10:46:45'),(28,'test2','fakeemail@fake.com','1234','2022-02-11 10:50:24'),(30,'test3','fakeemail@fake.com','1234','2022-02-11 11:52:21'),(31,'test4','fakeemail@fake.com','1234','2022-02-18 19:10:37'),(32,'test5','fakeemail@fake.com','1234','2022-02-18 19:17:56'),(33,'test6','fakeemail@fake.com','1234','2022-02-18 19:18:51'),(34,'test7','fakeemail@fake.com','1234','2022-02-18 19:19:26');
/*!40000 ALTER TABLE `authentication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test1`
--

DROP TABLE IF EXISTS `test1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test1`
--

LOCK TABLES `test1` WRITE;
/*!40000 ALTER TABLE `test1` DISABLE KEYS */;
INSERT INTO `test1` VALUES (1,'test1','test2 test1','test1','testmessages3',0,'2022-02-11 11:42:38'),(2,'test1','test2 test1','test1','testmessages4',0,'2022-02-11 11:45:16'),(3,'test1','test2 test1','test1','testmessages5',0,'2022-02-11 11:47:08'),(4,'test1','test3 test2 test1','test1','testmessages7',0,'2022-02-11 11:53:17'),(5,'test1','test3 test2 test1','test1','testmessage8',0,'2022-02-11 11:57:19'),(6,'test1','test3 test2 test1','test1','testmessages9',0,'2022-02-11 12:02:21'),(7,'test1','test3 test2 test1','test1','testmessage10',0,'2022-02-11 12:10:55'),(8,'test1','test3 test2 test1','test1','testmessage11',0,'2022-02-11 12:11:35'),(9,'test1','test3 test2 test1','test1','testmessage12',0,'2022-02-11 12:13:26'),(10,'test1','test2 test3 test1 test1','test1','self included1',0,'2022-02-11 12:26:16'),(11,'test1','test2 test3 test1 test1','test1','self included1',0,'2022-02-11 12:26:16'),(12,'test1','test2 test3 test1 test1','test1','self included2',0,'2022-02-11 12:34:55'),(13,'test1','test2 test1','test1','testmessage13',0,'2022-02-11 12:45:04'),(14,'test1','test3 test2 test1','test1','testing form_send_message_display',0,'2022-02-16 14:51:37'),(15,'test1','test3 test2 test1','test1','form_send_message_display worked!',0,'2022-02-16 14:52:26'),(16,'test1','test3 test2 test1','test1','another message 01',0,'2022-02-16 14:54:19'),(17,'test1','test3 test2 test1','test1','another message 02',0,'2022-02-16 14:55:48'),(18,'test1','test3 test2 test1','test1','testing message_conversation_links()',0,'2022-02-16 14:58:07'),(19,'test1','test3 test2 test1','test1','testing messages_conversation_links() again',0,'2022-02-16 15:10:44'),(20,'test1','test3 test2 test1','test1','testing change to form_handler() & conditional on messages.php line 26',0,'2022-02-16 15:20:22'),(21,'test1','test3 test2 test1','test1','changes to form_handler() & messages.php line 26 worked.',0,'2022-02-16 15:21:06'),(22,'test1','test3 test2 test1','test1','testing sticky on lines 45 & 46 of messages.php',0,'2022-02-16 15:25:06'),(23,'test1','test3 test2 test1','test1','cool, it worked. Now I don\\\\\\\'t have to keep entering the recipients',0,'2022-02-16 15:25:48'),(24,'test1','test3 test2 test1','test1','cool, it worked. Now I don\\\\\\\'t have to keep entering the recipients',0,'2022-02-16 15:52:11'),(25,'test1','test3 test2 test1','test1','Parse error: syntax error, unexpected \\\\\\\'{\\\\\\\' in C:\\\\\\\\MAMP\\\\\\\\htdocs\\\\\\\\chat_app220120\\\\\\\\functions\\\\\\\\functions_login_registration.php on line 351',0,'2022-02-16 15:52:17'),(26,'test1','test3 test2 test1','test1','error fixed.',0,'2022-02-16 15:52:32'),(27,'test1','test3 test2 test1','test1','testing to see if button output from messages_display_conversation_links() works',0,'2022-02-16 15:53:46'),(28,'test1','test3 test2 test1','test1','Notice: Undefined index: recipients in C:\\\\\\\\MAMP\\\\\\\\htdocs\\\\\\\\chat_app220120\\\\\\\\messages.php on line 55',0,'2022-02-16 16:10:03'),(29,'test1','test3 test2 test1','test1','else if (isset(unique_conversation)){}',0,'2022-02-16 16:11:01'),(30,'test1','test3 test2 test1','test1','feb 17',0,'2022-02-17 14:31:47'),(31,'test1','test2 test1','test1','feb 17 10:38am',0,'2022-02-17 15:39:07'),(32,'test1','test2 test3 test1','test1','test feb17 10:40am',0,'2022-02-17 15:40:13'),(33,'test1','test2 test1','test1','test feb17 10:40am 2',0,'2022-02-17 15:41:11'),(34,'test1','test2 test3 test1','test1','test 3',0,'2022-02-17 15:41:44'),(35,'test1','test2 test3 test1','test1','test4',0,'2022-02-17 15:42:10'),(36,'test1','test2 test3 test1','test1','test5',0,'2022-02-17 15:42:35'),(37,'test1','test2 test3 test1','test1','test6',0,'2022-02-17 15:43:06'),(38,'test1','test2 test3 test1','test1','test7',0,'2022-02-17 16:02:13'),(39,'test1','test2 test1','test1','test',0,'2022-02-17 16:05:55'),(40,'test1','test2 test3 test1','test1','TEST FEB 18',0,'2022-02-18 16:32:05'),(41,'test1','test2 test1','test1','Test feb 18',0,'2022-02-18 16:41:01'),(42,'test1','test2 test3 test1','test1','test feb18, 12:04pm',0,'2022-02-18 17:04:45'),(43,'test1','test2 test3 test1','test1','test feb 18 12:05 pm',0,'2022-02-18 17:05:17'),(44,'test1','test2 test3 test1','test1','unique_conversation',0,'2022-02-18 17:06:05'),(45,'test1','test2 test3 test1','test1','feb 18, 12:11pm',0,'2022-02-18 17:11:46'),(46,'test1','test2 test3 test1','test1','feb 18, 1212pm',0,'2022-02-18 17:12:27'),(47,'test1','test2 test3 test1','test1','feb 18 1213pm',0,'2022-02-18 17:13:12'),(48,'test1','test2 test3 test1','test1','hello message',0,'2022-02-18 17:14:04'),(49,'test1','test2 test3 test1','test1','reorder test',0,'2022-02-18 17:14:25'),(50,'test1','test2 test3 test1','test1','test',0,'2022-02-18 17:16:25'),(51,'test1','test2 test3 test1','test1','test2',0,'2022-02-18 17:17:41'),(52,'test1','test2 test3 test1','test1','test3',0,'2022-02-18 17:18:21'),(53,'test1','test2 test3 test1','test1','test feb 18, 1:51pm',0,'2022-02-18 18:51:31'),(54,'test1','test2 test3 test1','test1','test feb 18 1:54pm',0,'2022-02-18 18:54:38'),(55,'test1','test2 test3 test1','test1','test',0,'2022-02-18 18:59:32'),(56,'test1','test2 test1','test1','test again',0,'2022-02-18 19:03:29'),(57,'test1','test2 test3 test1','test1','testing',0,'2022-02-18 19:04:24'),(58,'test1','test2 test3 test1','test1','testing 1',0,'2022-02-18 19:04:46'),(59,'test1','test1 test7','test7','test feb18, 9:51pm',0,'2022-02-19 02:51:36'),(60,'test1','test1 test7','test7','test feb18, 9:52pm',0,'2022-02-19 02:53:02'),(61,'test1','test1 test2 test7','test7','10:12pm',0,'2022-02-19 03:12:28'),(62,'test1','test1 test2 test7','test7','10:16pm',0,'2022-02-19 03:16:17'),(63,'test1','test1 test3 test7','test7','10:16pm',0,'2022-02-19 03:16:42'),(64,'test1','test1 test3 test7','test7','again. now it will switch',0,'2022-02-19 03:17:18'),(65,'test1','test1 test2 test7','test7','FEB 19, 5:47am',0,'2022-02-19 10:47:07'),(66,'test1','test1 test2 test7','test7','test feb19, 5:47am',0,'2022-02-19 10:47:44'),(67,'test1','test1 test3 test7','test7','test feb19 5:48am',0,'2022-02-19 10:48:20'),(68,'test1','test1 test3 test7','test7','test feb18 5:48am',0,'2022-02-19 10:48:40'),(69,'test1','test1 test7','test7','feb18 5:50am',0,'2022-02-19 10:51:05'),(70,'test1','test1 test7','test7','test feb18 5:;51am',0,'2022-02-19 10:51:24'),(71,'test1','test1 test7','test7','test feb18 5:53am',0,'2022-02-19 10:53:38'),(72,'test1','test1 test7','test7','feb 18 5:53',0,'2022-02-19 10:54:03'),(73,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:21:31'),(74,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:23:10'),(75,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:23:28'),(76,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:31:28'),(77,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:35:18'),(78,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:38:48'),(79,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:39:44'),(80,'test1','test1 test2 test7','test7','test feb18 6:40 am',0,'2022-02-19 11:40:39'),(81,'test1','test1 test7','test7','changed something. feb18 6:50am',0,'2022-02-19 11:50:43'),(82,'test1','test1 test2 test7','test7','changes something feb18 6:51am',0,'2022-02-19 11:51:30'),(83,'test1','test1 test2 test7','test7','send',0,'2022-02-19 13:34:24'),(84,'test1','test1 test2 test7','test7','8:44AM',0,'2022-02-19 13:44:19'),(85,'test1','test1 test2 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-21 22:21:10'),(86,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:41:42'),(87,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:45:17'),(88,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:52:11'),(89,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:52:32'),(90,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:53:08'),(91,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:53:41'),(92,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:53:54'),(93,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:56:05'),(94,'test1','test1 test2 test7','test1','new message',0,'2022-02-23 12:33:22'),(95,'test1','test1 test7','test1','this is a really really really really really really really really really long message',0,'2022-02-23 13:04:47'),(96,'test1','test1 test7','test1','the box resizes according to the length of the string.',0,'2022-02-23 13:05:08'),(97,'test1','test1 test7','test1','test',0,'2022-02-23 15:00:36'),(98,'test1','test1 test7','test1','this is a really really really really really really really really really really really really reallyy loooooooooooooong text',0,'2022-02-23 15:13:26'),(99,'test1','test1 test7','test7','testing 123',0,'2022-02-23 15:14:52'),(100,'test1','test1 test7','test1','testing response123 over',0,'2022-02-23 15:15:08'),(101,'test1','test1 test7','test7','test response ok, over!',0,'2022-02-23 15:15:56'),(102,'test1','test1 test7','test1','stop saying over.',0,'2022-02-23 15:16:08');
/*!40000 ALTER TABLE `test1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test2`
--

DROP TABLE IF EXISTS `test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2`
--

LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
INSERT INTO `test2` VALUES (1,'test2','test2 test1','test1','test',0,'2022-02-11 11:15:25'),(2,'test2','test2 test1','test1','testmessages2',0,'2022-02-11 11:22:14'),(3,'test2','test2 test1','test1','testmessages2',0,'2022-02-11 11:22:14'),(4,'test2','test2 test1','test1','testmessages4',0,'2022-02-11 11:45:16'),(5,'test2','test2 test1','test1','testmessages5',0,'2022-02-11 11:47:08'),(6,'test2','test3 test2 test1','test1','testmessages7',0,'2022-02-11 11:53:17'),(7,'test2','test3 test2 test1','test1','testmessage8',0,'2022-02-11 11:57:19'),(8,'test2','test3 test2 test1','test1','testmessages9',0,'2022-02-11 12:02:21'),(9,'test2','test3 test2 test1','test1','testmessages9',0,'2022-02-11 12:02:21'),(10,'test2','test3 test2 test1','test1','testmessage10',0,'2022-02-11 12:10:55'),(11,'test2','test3 test2 test1','test1','testmessage10',0,'2022-02-11 12:10:55'),(12,'test2','test3 test2 test1','test1','testmessage11',0,'2022-02-11 12:11:34'),(13,'test2','test3 test2 test1','test1','testmessage11',0,'2022-02-11 12:11:34'),(14,'test2','test3 test2 test1','test1','testmessage12',0,'2022-02-11 12:13:26'),(15,'test2','test3 test1 test2 test1','test1','self included1',0,'2022-02-11 12:26:16'),(16,'test2','test3 test1 test2 test1','test1','self included2',0,'2022-02-11 12:34:55'),(17,'test2','test2 test1','test1','testmessage13',0,'2022-02-11 12:45:04'),(18,'test2','test3 test2 test1','test1','testing form_send_message_display',0,'2022-02-16 14:51:37'),(19,'test2','test3 test2 test1','test1','form_send_message_display worked!',0,'2022-02-16 14:52:26'),(20,'test2','test3 test2 test1','test1','another message 01',0,'2022-02-16 14:54:19'),(21,'test2','test3 test2 test1','test1','another message 02',0,'2022-02-16 14:55:48'),(22,'test2','test3 test2 test1','test1','testing message_conversation_links()',0,'2022-02-16 14:58:07'),(23,'test2','test3 test2 test1','test1','testing messages_conversation_links() again',0,'2022-02-16 15:10:44'),(24,'test2','test3 test2 test1','test1','testing change to form_handler() & conditional on messages.php line 26',0,'2022-02-16 15:20:22'),(25,'test2','test3 test2 test1','test1','changes to form_handler() & messages.php line 26 worked.',0,'2022-02-16 15:21:06'),(26,'test2','test3 test2 test1','test1','testing sticky on lines 45 & 46 of messages.php',0,'2022-02-16 15:25:06'),(27,'test2','test3 test2 test1','test1','cool, it worked. Now I don\'t have to keep entering the recipients',0,'2022-02-16 15:25:48'),(28,'test2','test3 test2 test1','test1','cool, it worked. Now I don\'t have to keep entering the recipients',0,'2022-02-16 15:52:11'),(29,'test2','test3 test2 test1','test1','Parse error: syntax error, unexpected \'{\' in C:\\MAMP\\htdocs\\chat_app220120\\functions\\functions_login_registration.php on line 351',0,'2022-02-16 15:52:17'),(30,'test2','test3 test2 test1','test1','error fixed.',0,'2022-02-16 15:52:32'),(31,'test2','test3 test2 test1','test1','testing to see if button output from messages_display_conversation_links() works',0,'2022-02-16 15:53:46'),(32,'test2','test3 test2 test1','test1','Notice: Undefined index: recipients in C:\\MAMP\\htdocs\\chat_app220120\\messages.php on line 55',0,'2022-02-16 16:10:03'),(33,'test2','test3 test2 test1','test1','else if (isset(unique_conversation)){}',0,'2022-02-16 16:11:01'),(34,'test2','test3 test2 test1','test1','feb 17',0,'2022-02-17 14:31:47'),(35,'test2','test2 test1','test1','feb 17 10:38am',0,'2022-02-17 15:39:07'),(36,'test2','test2 test1','test1','feb 17 10:38am',0,'2022-02-17 15:39:07'),(37,'test2','test3 test2 test1','test1','test feb17 10:40am',0,'2022-02-17 15:40:13'),(38,'test2','test3 test2 test1','test1','test feb17 10:40am',0,'2022-02-17 15:40:13'),(39,'test2','test2 test1','test1','test feb17 10:40am 2',0,'2022-02-17 15:41:11'),(40,'test2','test2 test1','test1','test feb17 10:40am 2',0,'2022-02-17 15:41:11'),(41,'test2','test3 test2 test1','test1','test 3',0,'2022-02-17 15:41:44'),(42,'test2','test3 test2 test1','test1','test 3',0,'2022-02-17 15:41:44'),(43,'test2','test3 test2 test1','test1','test4',0,'2022-02-17 15:42:10'),(44,'test2','test3 test2 test1','test1','test4',0,'2022-02-17 15:42:10'),(45,'test2','test3 test2 test1','test1','test5',0,'2022-02-17 15:42:35'),(46,'test2','test3 test2 test1','test1','test5',0,'2022-02-17 15:42:35'),(47,'test2','test3 test2 test1','test1','test6',0,'2022-02-17 15:43:06'),(48,'test2','test3 test2 test1','test1','test6',0,'2022-02-17 15:43:06'),(49,'test2','test3 test2 test1','test1','test7',0,'2022-02-17 16:02:13'),(50,'test2','test3 test2 test1','test1','test7',0,'2022-02-17 16:02:13'),(51,'test2','test2 test1','test1','test',0,'2022-02-17 16:05:55'),(52,'test2','test2 test1','test1','test',0,'2022-02-17 16:05:55'),(53,'test2','test3 test2 test1','test1','TEST FEB 18',0,'2022-02-18 16:32:05'),(54,'test2','test3 test2 test1','test1','TEST FEB 18',0,'2022-02-18 16:32:05'),(55,'test2','test2 test1','test1','Test feb 18',0,'2022-02-18 16:41:01'),(56,'test2','test2 test1','test1','Test feb 18',0,'2022-02-18 16:41:01'),(57,'test2','test3 test2 test1','test1','test feb18, 12:04pm',0,'2022-02-18 17:04:45'),(58,'test2','test3 test2 test1','test1','test feb18, 12:04pm',0,'2022-02-18 17:04:45'),(59,'test2','test3 test2 test1','test1','test feb 18 12:05 pm',0,'2022-02-18 17:05:17'),(60,'test2','test3 test2 test1','test1','test feb 18 12:05 pm',0,'2022-02-18 17:05:17'),(61,'test2','test3 test2 test1','test1','unique_conversation',0,'2022-02-18 17:06:05'),(62,'test2','test3 test2 test1','test1','unique_conversation',0,'2022-02-18 17:06:05'),(63,'test2','test3 test2 test1','test1','feb 18, 12:11pm',0,'2022-02-18 17:11:46'),(64,'test2','test3 test2 test1','test1','feb 18, 12:11pm',0,'2022-02-18 17:11:46'),(65,'test2','test3 test2 test1','test1','feb 18, 1212pm',0,'2022-02-18 17:12:27'),(66,'test2','test3 test2 test1','test1','feb 18, 1212pm',0,'2022-02-18 17:12:27'),(67,'test2','test3 test2 test1','test1','feb 18 1213pm',0,'2022-02-18 17:13:12'),(68,'test2','test3 test2 test1','test1','feb 18 1213pm',0,'2022-02-18 17:13:12'),(69,'test2','test3 test2 test1','test1','hello message',0,'2022-02-18 17:14:04'),(70,'test2','test3 test2 test1','test1','hello message',0,'2022-02-18 17:14:04'),(71,'test2','test3 test2 test1','test1','reorder test',0,'2022-02-18 17:14:25'),(72,'test2','test3 test2 test1','test1','reorder test',0,'2022-02-18 17:14:25'),(73,'test2','test3 test2 test1','test1','test',0,'2022-02-18 17:16:25'),(74,'test2','test3 test2 test1','test1','test',0,'2022-02-18 17:16:25'),(75,'test2','test3 test2 test1','test1','test2',0,'2022-02-18 17:17:41'),(76,'test2','test3 test2 test1','test1','test2',0,'2022-02-18 17:17:41'),(77,'test2','test3 test2 test1','test1','test3',0,'2022-02-18 17:18:21'),(78,'test2','test3 test2 test1','test1','test3',0,'2022-02-18 17:18:21'),(79,'test2','test3 test2 test1','test1','test feb 18, 1:51pm',0,'2022-02-18 18:51:31'),(80,'test2','test3 test2 test1','test1','test feb 18, 1:51pm',0,'2022-02-18 18:51:31'),(81,'test2','test3 test2 test1','test1','test feb 18 1:54pm',0,'2022-02-18 18:54:38'),(82,'test2','test3 test2 test1','test1','test feb 18 1:54pm',0,'2022-02-18 18:54:38'),(83,'test2','test3 test2 test1','test1','test',0,'2022-02-18 18:59:32'),(84,'test2','test3 test2 test1','test1','test',0,'2022-02-18 18:59:32'),(85,'test2','test2 test1','test1','test again',0,'2022-02-18 19:03:29'),(86,'test2','test2 test1','test1','test again',0,'2022-02-18 19:03:29'),(87,'test2','test3 test2 test1','test1','testing',0,'2022-02-18 19:04:24'),(88,'test2','test3 test2 test1','test1','testing',0,'2022-02-18 19:04:24'),(89,'test2','test3 test2 test1','test1','testing 1',0,'2022-02-18 19:04:46'),(90,'test2','test3 test2 test1','test1','testing 1',0,'2022-02-18 19:04:46'),(91,'test2','test2 test7','test7','feb18, 10:53pm',0,'2022-02-19 02:53:38'),(92,'test2','test2 test7','test7','feb18, 10:53pm',0,'2022-02-19 02:57:58'),(93,'test2','test2 test7','test7','feb18, 10:53pm',0,'2022-02-19 02:58:48'),(94,'test2','test2 test7','test7','new',0,'2022-02-19 02:59:03'),(95,'test2','test2 test7','test7','feb18, 10:01pm',0,'2022-02-19 03:01:07'),(96,'test2','test2 test7','test7','again',0,'2022-02-19 03:01:13'),(97,'test2','test2 test7','test7','again',0,'2022-02-19 03:03:02'),(98,'test2','test2 test7','test7','newest test',0,'2022-02-19 03:07:43'),(99,'test2','test1 test2 test7','test7','10:12pm',0,'2022-02-19 03:12:28'),(100,'test2','test1 test2 test7','test7','10:16pm',0,'2022-02-19 03:16:17'),(101,'test2','test1 test2 test7','test7','FEB 19, 5:47am',0,'2022-02-19 10:47:07'),(102,'test2','test1 test2 test7','test7','test feb19, 5:47am',0,'2022-02-19 10:47:44'),(103,'test2','test2 test7','test7','test feb18 5:52am',0,'2022-02-19 10:52:29'),(104,'test2','test2 test7','test7','5:52am',0,'2022-02-19 10:53:10'),(105,'test2','test2 test7','test7','test feb18 6:03am',0,'2022-02-19 11:03:31'),(106,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:21:31'),(107,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:23:10'),(108,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:23:28'),(109,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:31:28'),(110,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:35:18'),(111,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:38:48'),(112,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:39:44'),(113,'test2','test1 test2 test7','test7','test feb18 6:40 am',0,'2022-02-19 11:40:39'),(114,'test2','test1 test2 test7','test7','changes something feb18 6:51am',0,'2022-02-19 11:51:30'),(115,'test2','test1 test2 test7','test7','send',0,'2022-02-19 13:34:24'),(116,'test2','test1 test2 test7','test7','8:44AM',0,'2022-02-19 13:44:19'),(117,'test2','test2 test3','test3','testing multiple users',0,'2022-02-20 21:43:27'),(118,'test2','test2 test3','test2','IT WORKED!!',0,'2022-02-20 21:43:57'),(119,'test2','test2 test3','test3','yes, multiple users and everything. Isn\'t technnology amazing?',0,'2022-02-20 21:44:55'),(120,'test2','test2 test3','test2','oh barf. ok works - ok fine.',0,'2022-02-20 21:45:47'),(121,'test2','test2 test3','test3','thank you for sharing my excitement.',0,'2022-02-20 21:46:07'),(122,'test2','test1 test2 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-21 22:21:10'),(123,'test2','test1 test2 test7','test1','new message',0,'2022-02-23 12:33:22');
/*!40000 ALTER TABLE `test2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test3`
--

DROP TABLE IF EXISTS `test3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test3`
--

LOCK TABLES `test3` WRITE;
/*!40000 ALTER TABLE `test3` DISABLE KEYS */;
INSERT INTO `test3` VALUES (1,'test3','test2 test3 test1','test1','testmessages9',0,'2022-02-11 12:02:21'),(2,'test3','test2 test3 test1','test1','testmessage10',0,'2022-02-11 12:10:55'),(3,'test3','test2 test3 test1','test1','testmessage11',0,'2022-02-11 12:11:34'),(4,'test3','test2 test3 test1','test1','testmessage12',0,'2022-02-11 12:13:26'),(5,'test3','test1 test2 test3 test1','test1','self included1',0,'2022-02-11 12:26:16'),(6,'test3','test1 test2 test3 test1','test1','self included2',0,'2022-02-11 12:34:55'),(7,'test3','test2 test3 test1','test1','testing form_send_message_display',0,'2022-02-16 14:51:37'),(8,'test3','test2 test3 test1','test1','form_send_message_display worked!',0,'2022-02-16 14:52:26'),(9,'test3','test2 test3 test1','test1','another message 01',0,'2022-02-16 14:54:19'),(10,'test3','test2 test3 test1','test1','another message 02',0,'2022-02-16 14:55:48'),(11,'test3','test2 test3 test1','test1','testing message_conversation_links()',0,'2022-02-16 14:58:07'),(12,'test3','test2 test3 test1','test1','testing messages_conversation_links() again',0,'2022-02-16 15:10:44'),(13,'test3','test2 test3 test1','test1','testing change to form_handler() & conditional on messages.php line 26',0,'2022-02-16 15:20:22'),(14,'test3','test2 test3 test1','test1','changes to form_handler() & messages.php line 26 worked.',0,'2022-02-16 15:21:06'),(15,'test3','test2 test3 test1','test1','testing sticky on lines 45 & 46 of messages.php',0,'2022-02-16 15:25:06'),(16,'test3','test2 test3 test1','test1','cool, it worked. Now I don\\\'t have to keep entering the recipients',0,'2022-02-16 15:25:48'),(17,'test3','test2 test3 test1','test1','cool, it worked. Now I don\\\'t have to keep entering the recipients',0,'2022-02-16 15:52:11'),(18,'test3','test2 test3 test1','test1','Parse error: syntax error, unexpected \\\'{\\\' in C:\\\\MAMP\\\\htdocs\\\\chat_app220120\\\\functions\\\\functions_login_registration.php on line 351',0,'2022-02-16 15:52:17'),(19,'test3','test2 test3 test1','test1','error fixed.',0,'2022-02-16 15:52:32'),(20,'test3','test2 test3 test1','test1','testing to see if button output from messages_display_conversation_links() works',0,'2022-02-16 15:53:46'),(21,'test3','test2 test3 test1','test1','Notice: Undefined index: recipients in C:\\\\MAMP\\\\htdocs\\\\chat_app220120\\\\messages.php on line 55',0,'2022-02-16 16:10:03'),(22,'test3','test2 test3 test1','test1','else if (isset(unique_conversation)){}',0,'2022-02-16 16:11:01'),(23,'test3','test2 test3 test1','test1','feb 17',0,'2022-02-17 14:31:47'),(24,'test3','test2 test3 test1','test1','test feb17 10:40am',0,'2022-02-17 15:40:13'),(25,'test3','test2 test3 test1','test1','test 3',0,'2022-02-17 15:41:44'),(26,'test3','test2 test3 test1','test1','test4',0,'2022-02-17 15:42:10'),(27,'test3','test2 test3 test1','test1','test5',0,'2022-02-17 15:42:35'),(28,'test3','test2 test3 test1','test1','test6',0,'2022-02-17 15:43:06'),(29,'test3','test2 test3 test1','test1','test7',0,'2022-02-17 16:02:13'),(30,'test3','test2 test3 test1','test1','TEST FEB 18',0,'2022-02-18 16:32:05'),(31,'test3','test2 test3 test1','test1','test feb18, 12:04pm',0,'2022-02-18 17:04:45'),(32,'test3','test2 test3 test1','test1','test feb 18 12:05 pm',0,'2022-02-18 17:05:17'),(33,'test3','test2 test3 test1','test1','unique_conversation',0,'2022-02-18 17:06:05'),(34,'test3','test2 test3 test1','test1','feb 18, 12:11pm',0,'2022-02-18 17:11:46'),(35,'test3','test2 test3 test1','test1','feb 18, 1212pm',0,'2022-02-18 17:12:27'),(36,'test3','test2 test3 test1','test1','feb 18 1213pm',0,'2022-02-18 17:13:12'),(37,'test3','test2 test3 test1','test1','hello message',0,'2022-02-18 17:14:04'),(38,'test3','test2 test3 test1','test1','reorder test',0,'2022-02-18 17:14:25'),(39,'test3','test2 test3 test1','test1','test',0,'2022-02-18 17:16:25'),(40,'test3','test2 test3 test1','test1','test2',0,'2022-02-18 17:17:41'),(41,'test3','test2 test3 test1','test1','test3',0,'2022-02-18 17:18:21'),(42,'test3','test2 test3 test1','test1','test feb 18, 1:51pm',0,'2022-02-18 18:51:31'),(43,'test3','test2 test3 test1','test1','test feb 18 1:54pm',0,'2022-02-18 18:54:38'),(44,'test3','test2 test3 test1','test1','test',0,'2022-02-18 18:59:32'),(45,'test3','test2 test3 test1','test1','testing',0,'2022-02-18 19:04:24'),(46,'test3','test2 test3 test1','test1','testing 1',0,'2022-02-18 19:04:46'),(47,'test3','test3 test7','test7','test to test3',0,'2022-02-19 02:39:14'),(48,'test3','test1 test3 test7','test7','10:16pm',0,'2022-02-19 03:16:42'),(49,'test3','test1 test3 test7','test7','again. now it will switch',0,'2022-02-19 03:17:18'),(50,'test3','test1 test3 test7','test7','test feb19 5:48am',0,'2022-02-19 10:48:20'),(51,'test3','test1 test3 test7','test7','test feb18 5:48am',0,'2022-02-19 10:48:40'),(52,'test3','test3 test7','test7','test message february 18, 2022, 6:41am',0,'2022-02-19 11:41:33'),(53,'test3','test3 test7','test7','test again',0,'2022-02-19 11:42:11'),(54,'test3','test2 test3','test3','testing multiple users',0,'2022-02-20 21:43:27'),(55,'test3','test2 test3','test2','IT WORKED!!',0,'2022-02-20 21:43:57'),(56,'test3','test2 test3','test3','yes, multiple users and everything. Isn\'t technnology amazing?',0,'2022-02-20 21:44:55'),(57,'test3','test2 test3','test2','oh barf. ok works - ok fine.',0,'2022-02-20 21:45:47'),(58,'test3','test2 test3','test3','thank you for sharing my excitement.',0,'2022-02-20 21:46:07');
/*!40000 ALTER TABLE `test3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test4`
--

DROP TABLE IF EXISTS `test4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test4`
--

LOCK TABLES `test4` WRITE;
/*!40000 ALTER TABLE `test4` DISABLE KEYS */;
INSERT INTO `test4` VALUES (1,'test4','test5 test6 test4 test7','test7','testing order: test6 test5 test4',0,'2022-02-18 19:20:29'),(2,'test4','test5 test6 test4 test7','test7','testing order: test6 test5 test4',0,'2022-02-19 00:18:06'),(3,'test4','test5 test6 test4 test7','test7','test feb18, 718pm',0,'2022-02-19 00:18:29'),(4,'test4','test5 test6 test4 test7','test7','test feb 18 7:19pm',0,'2022-02-19 00:19:59'),(5,'test4','test4 test5 test6 test7 test7','test7','test feb18 8:24pm',0,'2022-02-19 01:24:10'),(6,'test4','test4 test5 test6 test7','test7','test feb18, 8: 28pm',0,'2022-02-19 01:28:09'),(7,'test4','test4 test5 test6 test7','test7','test feb18 8:29pm',0,'2022-02-19 01:29:31'),(8,'test4','test4 test5 test6 test7','test7','test feg18, 8:30pm',0,'2022-02-19 01:30:35'),(9,'test4','test4 test7','test7','test feb18, 8:32',0,'2022-02-19 01:32:04'),(10,'test4','test4 test7','test7','test feb18, 8:33pm',0,'2022-02-19 01:33:56'),(11,'test4','test4 test5 test6 test7','test7','feb18 10:00pm',0,'2022-02-19 03:00:15'),(12,'test4','test4 test5 test6 test7','test7','again',0,'2022-02-19 03:00:31'),(13,'test4','test4 test7','test7','test',0,'2022-02-19 10:54:40'),(14,'test4','test4 test7','test7','test',0,'2022-02-19 10:54:47'),(15,'test4','test4 test5 test6 test7','test7','test feb18 7:43am',0,'2022-02-19 12:43:45'),(16,'test4','test4 test5 test6 test7','test7','new',0,'2022-02-19 12:45:19'),(17,'test4','test4 test7','test7','new',0,'2022-02-19 12:45:34'),(18,'test4','test4 test7','test7','8:44am',0,'2022-02-19 13:44:52');
/*!40000 ALTER TABLE `test4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test5`
--

DROP TABLE IF EXISTS `test5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test5`
--

LOCK TABLES `test5` WRITE;
/*!40000 ALTER TABLE `test5` DISABLE KEYS */;
INSERT INTO `test5` VALUES (1,'test5','test6 test4 test5 test7','test7','testing order: test6 test5 test4',0,'2022-02-18 19:20:29'),(2,'test5','test6 test4 test5 test7','test7','testing order: test6 test5 test4',0,'2022-02-19 00:18:06'),(3,'test5','test6 test4 test5 test7','test7','test feb18, 718pm',0,'2022-02-19 00:18:29'),(4,'test5','test6 test4 test5 test7','test7','test feb 18 7:19pm',0,'2022-02-19 00:19:59'),(5,'test5','test4 test5 test6 test7 test7','test7','test feb18 8:24pm',0,'2022-02-19 01:24:10'),(6,'test5','test4 test5 test6 test7','test7','test feb18, 8: 28pm',0,'2022-02-19 01:28:09'),(7,'test5','test4 test5 test6 test7','test7','test feb18 8:29pm',0,'2022-02-19 01:29:31'),(8,'test5','test4 test5 test6 test7','test7','test feg18, 8:30pm',0,'2022-02-19 01:30:35'),(9,'test5','test5 test7','test7','test feb18, 8:34pm',0,'2022-02-19 01:34:28'),(10,'test5','test4 test5 test6 test7','test7','feb18 10:00pm',0,'2022-02-19 03:00:15'),(11,'test5','test4 test5 test6 test7','test7','again',0,'2022-02-19 03:00:31'),(12,'test5','test5 test7','test7','test  6:02am',0,'2022-02-19 11:02:54'),(13,'test5','test4 test5 test6 test7','test7','test feb18 7:43am',0,'2022-02-19 12:43:45'),(14,'test5','test4 test5 test6 test7','test7','new',0,'2022-02-19 12:45:19'),(15,'test5','test5 test6 test7','test7','test feb18, 7:56am',0,'2022-02-19 12:56:37'),(16,'test5','test5 test6 test7','test7','test',0,'2022-02-19 13:30:50'),(17,'test5','test5 test7','test7','test',0,'2022-02-19 13:31:18'),(18,'test5','test5 test7','test5','test5 to test7',0,'2022-02-19 14:18:02'),(19,'test5','test5 test7','test5','test7 to test5',0,'2022-02-19 14:18:45'),(20,'test5','test5 test7','test5','test7 to test5',0,'2022-02-19 14:23:03'),(21,'test5','test5 test7','test5','test5 to test7',0,'2022-02-19 14:23:37');
/*!40000 ALTER TABLE `test5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test6`
--

DROP TABLE IF EXISTS `test6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test6`
--

LOCK TABLES `test6` WRITE;
/*!40000 ALTER TABLE `test6` DISABLE KEYS */;
INSERT INTO `test6` VALUES (1,'test6','test4 test5 test6 test7','test7','testing order: test6 test5 test4',0,'2022-02-18 19:20:29'),(2,'test6','test4 test5 test6 test7','test7','testing order: test6 test5 test4',0,'2022-02-19 00:18:06'),(3,'test6','test4 test5 test6 test7','test7','test feb18, 718pm',0,'2022-02-19 00:18:29'),(4,'test6','test4 test5 test6 test7','test7','test feb 18 7:19pm',0,'2022-02-19 00:19:59'),(5,'test6','test4 test5 test6 test7 test7','test7','test feb18 8:24pm',0,'2022-02-19 01:24:10'),(6,'test6','test4 test5 test6 test7','test7','test feb18, 8: 28pm',0,'2022-02-19 01:28:09'),(7,'test6','test4 test5 test6 test7','test7','test feb18 8:29pm',0,'2022-02-19 01:29:31'),(8,'test6','test4 test5 test6 test7','test7','test feg18, 8:30pm',0,'2022-02-19 01:30:35'),(9,'test6','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:43:01'),(10,'test6','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:44:54'),(11,'test6','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:52:55'),(12,'test6','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:53:32'),(13,'test6','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:59:13'),(14,'test6','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:59:48'),(15,'test6','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 02:00:49'),(16,'test6','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 02:03:27'),(17,'test6','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 02:03:47'),(18,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:07:05'),(19,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:08:42'),(20,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:11:27'),(21,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:12:33'),(22,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:12:54'),(23,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:20:23'),(24,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:20:56'),(25,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:22:00'),(26,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:23:16'),(27,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:24:13'),(28,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:26:22'),(29,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:27:14'),(30,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:27:39'),(31,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:28:18'),(32,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:29:33'),(33,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:29:52'),(34,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:36:10'),(35,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:36:40'),(36,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:36:51'),(37,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:37:04'),(38,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:37:25'),(39,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:37:57'),(40,'test6','test6 test7','test7','test space found',0,'2022-02-19 02:38:28'),(41,'test6','test4 test5 test6 test7','test7','feb18 10:00pm',0,'2022-02-19 03:00:15'),(42,'test6','test4 test5 test6 test7','test7','again',0,'2022-02-19 03:00:31'),(43,'test6','test6 test7','test7','5:55am',0,'2022-02-19 10:55:15'),(44,'test6','test6 test7','test7','feb18 6;52am',0,'2022-02-19 11:52:00'),(45,'test6','test6 test7','test7','yet another test',0,'2022-02-19 12:09:12'),(46,'test6','test6 test7','test7','test feb18 7:41am',0,'2022-02-19 12:42:16'),(47,'test6','test6 test7','test7','test feb18 7:41am',0,'2022-02-19 12:42:43'),(48,'test6','test6 test7','test7','test feb18 7:42am',0,'2022-02-19 12:42:59'),(49,'test6','test4 test5 test6 test7','test7','test feb18 7:43am',0,'2022-02-19 12:43:45'),(50,'test6','test4 test5 test6 test7','test7','new',0,'2022-02-19 12:45:19'),(51,'test6','test5 test6 test7','test7','test feb18, 7:56am',0,'2022-02-19 12:56:37'),(52,'test6','test5 test6 test7','test7','test',0,'2022-02-19 13:30:50'),(53,'test6','test6 test7','test7','feb18, 8:33am',0,'2022-02-19 13:33:37'),(54,'test6','test6 test7','test7','feb18, 8:33am',0,'2022-02-19 13:34:12');
/*!40000 ALTER TABLE `test6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test7`
--

DROP TABLE IF EXISTS `test7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test7`
--

LOCK TABLES `test7` WRITE;
/*!40000 ALTER TABLE `test7` DISABLE KEYS */;
INSERT INTO `test7` VALUES (1,'test7','test5 test6 test4 test7','test7','testing order: test6 test5 test4',0,'2022-02-18 19:20:29'),(2,'test7','test5 test6 test4 test7','test7','testing order: test6 test5 test4',0,'2022-02-19 00:18:06'),(3,'test7','test5 test6 test4 test7','test7','test feb18, 718pm',0,'2022-02-19 00:18:29'),(4,'test7','test5 test6 test4 test7','test7','test feb 18 7:19pm',0,'2022-02-19 00:19:59'),(5,'test7','test4 test5 test6 test7 test7','test7','test feb18 8:24pm',0,'2022-02-19 01:24:10'),(6,'test7','test4 test5 test6 test7 test7','test7','test feb18 8:24pm',0,'2022-02-19 01:24:10'),(7,'test7','test4 test5 test6 test7','test7','test feb18, 8: 28pm',0,'2022-02-19 01:28:09'),(8,'test7','test4 test5 test6 test7','test7','test feb18 8:29pm',0,'2022-02-19 01:29:31'),(9,'test7','test4 test5 test6 test7','test7','test feg18, 8:30pm',0,'2022-02-19 01:30:35'),(10,'test7','test4 test7','test7','test feb18, 8:32',0,'2022-02-19 01:32:04'),(11,'test7','test4 test7','test7','test feb18, 8:33pm',0,'2022-02-19 01:33:56'),(12,'test7','test5 test7','test7','test feb18, 8:34pm',0,'2022-02-19 01:34:28'),(13,'test7','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:43:01'),(14,'test7','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:44:54'),(15,'test7','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:52:55'),(16,'test7','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:53:32'),(17,'test7','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:59:13'),(18,'test7','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 01:59:48'),(19,'test7','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 02:00:49'),(20,'test7','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 02:03:27'),(21,'test7','test6 test7','test7','test feb18 8:42pm',0,'2022-02-19 02:03:47'),(22,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:07:05'),(23,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:08:42'),(24,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:11:27'),(25,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:12:33'),(26,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:12:54'),(27,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:20:23'),(28,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:20:56'),(29,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:22:00'),(30,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:23:16'),(31,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:24:13'),(32,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:26:22'),(33,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:27:14'),(34,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:27:39'),(35,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:28:18'),(36,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:29:33'),(37,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:29:52'),(38,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:36:10'),(39,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:36:40'),(40,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:36:51'),(41,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:37:04'),(42,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:37:25'),(43,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:37:57'),(44,'test7','test6 test7','test7','test space found',0,'2022-02-19 02:38:28'),(45,'test7','test3 test7','test7','test to test3',0,'2022-02-19 02:39:14'),(46,'test7','test1 test7','test7','test feb18, 9:51pm',0,'2022-02-19 02:51:36'),(47,'test7','test1 test7','test7','test feb18, 9:52pm',0,'2022-02-19 02:53:02'),(48,'test7','test2 test7','test7','feb18, 10:53pm',0,'2022-02-19 02:53:38'),(49,'test7','test2 test7','test7','feb18, 10:53pm',0,'2022-02-19 02:57:58'),(50,'test7','test2 test7','test7','feb18, 10:53pm',0,'2022-02-19 02:58:48'),(51,'test7','test2 test7','test7','new',0,'2022-02-19 02:59:03'),(52,'test7','test4 test5 test6 test7','test7','feb18 10:00pm',0,'2022-02-19 03:00:15'),(53,'test7','test4 test5 test6 test7','test7','again',0,'2022-02-19 03:00:31'),(54,'test7','test2 test7','test7','feb18, 10:01pm',0,'2022-02-19 03:01:07'),(55,'test7','test2 test7','test7','again',0,'2022-02-19 03:01:13'),(56,'test7','test2 test7','test7','again',0,'2022-02-19 03:03:02'),(57,'test7','test2 test7','test7','newest test',0,'2022-02-19 03:07:43'),(58,'test7','test1 test2 test7','test7','10:12pm',0,'2022-02-19 03:12:28'),(59,'test7','test1 test2 test7','test7','10:16pm',0,'2022-02-19 03:16:17'),(60,'test7','test1 test3 test7','test7','10:16pm',0,'2022-02-19 03:16:42'),(61,'test7','test1 test3 test7','test7','again. now it will switch',0,'2022-02-19 03:17:18'),(62,'test7','test1 test2 test7','test7','FEB 19, 5:47am',0,'2022-02-19 10:47:07'),(63,'test7','test1 test2 test7','test7','test feb19, 5:47am',0,'2022-02-19 10:47:44'),(64,'test7','test1 test3 test7','test7','test feb19 5:48am',0,'2022-02-19 10:48:20'),(65,'test7','test1 test3 test7','test7','test feb18 5:48am',0,'2022-02-19 10:48:40'),(66,'test7','test1 test7','test7','feb18 5:50am',0,'2022-02-19 10:51:05'),(67,'test7','test1 test7','test7','test feb18 5:;51am',0,'2022-02-19 10:51:24'),(68,'test7','test2 test7','test7','test feb18 5:52am',0,'2022-02-19 10:52:29'),(69,'test7','test2 test7','test7','5:52am',0,'2022-02-19 10:53:10'),(70,'test7','test1 test7','test7','test feb18 5:53am',0,'2022-02-19 10:53:38'),(71,'test7','test1 test7','test7','feb 18 5:53',0,'2022-02-19 10:54:03'),(72,'test7','test4 test7','test7','test',0,'2022-02-19 10:54:40'),(73,'test7','test4 test7','test7','test',0,'2022-02-19 10:54:47'),(74,'test7','test6 test7','test7','5:55am',0,'2022-02-19 10:55:15'),(75,'test7','test5 test7','test7','test  6:02am',0,'2022-02-19 11:02:54'),(76,'test7','test2 test7','test7','test feb18 6:03am',0,'2022-02-19 11:03:31'),(77,'test7','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:21:31'),(78,'test7','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:23:10'),(79,'test7','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:23:28'),(80,'test7','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:31:28'),(81,'test7','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:35:18'),(82,'test7','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:38:48'),(83,'test7','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:39:44'),(84,'test7','test1 test2 test7','test7','test feb18 6:40 am',0,'2022-02-19 11:40:39'),(85,'test7','test3 test7','test7','test message february 18, 2022, 6:41am',0,'2022-02-19 11:41:33'),(86,'test7','test3 test7','test7','test again',0,'2022-02-19 11:42:11'),(87,'test7','test1 test7','test7','changed something. feb18 6:50am',0,'2022-02-19 11:50:43'),(88,'test7','test1 test2 test7','test7','changes something feb18 6:51am',0,'2022-02-19 11:51:30'),(89,'test7','test6 test7','test7','feb18 6;52am',0,'2022-02-19 11:52:00'),(90,'test7','test6 test7','test7','yet another test',0,'2022-02-19 12:09:12'),(91,'test7','test6 test7','test7','test feb18 7:41am',0,'2022-02-19 12:42:17'),(92,'test7','test6 test7','test7','test feb18 7:41am',0,'2022-02-19 12:42:43'),(93,'test7','test6 test7','test7','test feb18 7:42am',0,'2022-02-19 12:42:59'),(94,'test7','test4 test5 test6 test7','test7','test feb18 7:43am',0,'2022-02-19 12:43:45'),(95,'test7','test4 test5 test6 test7','test7','new',0,'2022-02-19 12:45:19'),(96,'test7','test4 test7','test7','new',0,'2022-02-19 12:45:34'),(97,'test7','test5 test6 test7','test7','test feb18, 7:56am',0,'2022-02-19 12:56:37'),(98,'test7','test5 test6 test7','test7','test',0,'2022-02-19 13:30:50'),(99,'test7','test5 test7','test7','test',0,'2022-02-19 13:31:18'),(100,'test7','test6 test7','test7','feb18, 8:33am',0,'2022-02-19 13:34:12'),(101,'test7','test1 test2 test7','test7','send',0,'2022-02-19 13:34:24'),(102,'test7','test1 test2 test7','test7','8:44AM',0,'2022-02-19 13:44:19'),(103,'test7','test4 test7','test7','8:44am',0,'2022-02-19 13:44:52'),(104,'test7','test5 test7','test5','test5 to test7',0,'2022-02-19 14:18:02'),(105,'test7','test5 test7','test5','test7 to test5',0,'2022-02-19 14:18:45'),(106,'test7','test5 test7','test5','test7 to test5',0,'2022-02-19 14:23:03'),(107,'test7','test5 test7','test5','test5 to test7',0,'2022-02-19 14:23:37'),(108,'test7','test1 test2 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-21 22:21:10'),(109,'test7','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:41:42'),(110,'test7','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:45:17'),(111,'test7','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:52:11'),(112,'test7','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:52:32'),(113,'test7','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:53:08'),(114,'test7','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:53:41'),(115,'test7','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:53:54'),(116,'test7','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:56:05'),(117,'test7','test1 test2 test7','test1','new message',0,'2022-02-23 12:33:22'),(118,'test7','test1 test7','test1','this is a really really really really really really really really really long message',0,'2022-02-23 13:04:47'),(119,'test7','test1 test7','test1','the box resizes according to the length of the string.',0,'2022-02-23 13:05:08'),(120,'test7','test1 test7','test1','test',0,'2022-02-23 15:00:36'),(121,'test7','test1 test7','test1','this is a really really really really really really really really really really really really reallyy loooooooooooooong text',0,'2022-02-23 15:13:26'),(122,'test7','test1 test7','test7','testing 123',0,'2022-02-23 15:14:52'),(123,'test7','test1 test7','test1','testing response123 over',0,'2022-02-23 15:15:08'),(124,'test7','test1 test7','test7','test response ok, over!',0,'2022-02-23 15:15:56'),(125,'test7','test1 test7','test1','stop saying over.',0,'2022-02-23 15:16:08');
/*!40000 ALTER TABLE `test7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user1`
--

DROP TABLE IF EXISTS `user1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user1`
--

LOCK TABLES `user1` WRITE;
/*!40000 ALTER TABLE `user1` DISABLE KEYS */;
INSERT INTO `user1` VALUES (1,'user1','user2 user3 user4 user5 user6 user7 user8 user9 user10 user11 user1 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user10`
--

DROP TABLE IF EXISTS `user10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user10` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user10`
--

LOCK TABLES `user10` WRITE;
/*!40000 ALTER TABLE `user10` DISABLE KEYS */;
INSERT INTO `user10` VALUES (1,'user10','user11 user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user11`
--

DROP TABLE IF EXISTS `user11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user11` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user11`
--

LOCK TABLES `user11` WRITE;
/*!40000 ALTER TABLE `user11` DISABLE KEYS */;
INSERT INTO `user11` VALUES (1,'user11','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user2`
--

DROP TABLE IF EXISTS `user2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user2`
--

LOCK TABLES `user2` WRITE;
/*!40000 ALTER TABLE `user2` DISABLE KEYS */;
INSERT INTO `user2` VALUES (1,'user2','user3 user4 user5 user6 user7 user8 user9 user10 user11 user1 user2 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user3`
--

DROP TABLE IF EXISTS `user3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user3`
--

LOCK TABLES `user3` WRITE;
/*!40000 ALTER TABLE `user3` DISABLE KEYS */;
INSERT INTO `user3` VALUES (1,'user3','user4 user5 user6 user7 user8 user9 user10 user11 user1 user2 user3 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user4`
--

DROP TABLE IF EXISTS `user4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user4` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user4`
--

LOCK TABLES `user4` WRITE;
/*!40000 ALTER TABLE `user4` DISABLE KEYS */;
INSERT INTO `user4` VALUES (1,'user4','user5 user6 user7 user8 user9 user10 user11 user1 user2 user3 user4 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user5`
--

DROP TABLE IF EXISTS `user5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user5` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user5`
--

LOCK TABLES `user5` WRITE;
/*!40000 ALTER TABLE `user5` DISABLE KEYS */;
INSERT INTO `user5` VALUES (1,'user5','user6 user7 user8 user9 user10 user11 user1 user2 user3 user4 user5 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user6`
--

DROP TABLE IF EXISTS `user6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user6` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user6`
--

LOCK TABLES `user6` WRITE;
/*!40000 ALTER TABLE `user6` DISABLE KEYS */;
INSERT INTO `user6` VALUES (1,'user6','user7 user8 user9 user10 user11 user1 user2 user3 user4 user5 user6 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user7`
--

DROP TABLE IF EXISTS `user7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user7` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user7`
--

LOCK TABLES `user7` WRITE;
/*!40000 ALTER TABLE `user7` DISABLE KEYS */;
INSERT INTO `user7` VALUES (1,'user7','user8 user9 user10 user11 user1 user2 user3 user4 user5 user6 user7 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user8`
--

DROP TABLE IF EXISTS `user8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user8`
--

LOCK TABLES `user8` WRITE;
/*!40000 ALTER TABLE `user8` DISABLE KEYS */;
INSERT INTO `user8` VALUES (1,'user8','user9 user10 user11 user1 user2 user3 user4 user5 user6 user7 user8 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user9`
--

DROP TABLE IF EXISTS `user9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user9` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user9`
--

LOCK TABLES `user9` WRITE;
/*!40000 ALTER TABLE `user9` DISABLE KEYS */;
INSERT INTO `user9` VALUES (1,'user9','user10 user11 user1 user2 user3 user4 user5 user6 user7 user8 user9 user1','user1','first message, self included',0,'2022-02-11 12:49:54');
/*!40000 ALTER TABLE `user9` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-04 18:15:25
