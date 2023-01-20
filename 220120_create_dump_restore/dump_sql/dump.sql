-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: messaging_app220120
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication`
--

LOCK TABLES `authentication` WRITE;
/*!40000 ALTER TABLE `authentication` DISABLE KEYS */;
INSERT INTO `authentication` VALUES (13,'user1','fakeemail@fake.com','1234','2022-01-24 20:32:28'),(14,'user2','fakeemail@fake.com','1234','2022-01-24 21:30:45'),(15,'user3','fakeemail@fake.com','1234','2022-01-24 22:05:56'),(16,'user4','fakeemail@fake.com','1234','2022-01-24 22:29:29'),(17,'user5','fakeemail@fake.com','1234','2022-01-24 22:45:28'),(18,'user6','fakeemail@fake.com','1234','2022-01-25 16:23:41'),(19,'user7','fakeemail@fake.com','1234','2022-01-25 16:35:59'),(23,'user8','fakeemail@fake.com','1234','2022-01-26 13:29:14'),(24,'user9','fakeemail@fake.com','1234','2022-01-26 14:05:55'),(25,'user10','fakeemail@fake.com','1234','2022-01-26 14:16:43'),(26,'user11','fakeemail@fake.com','1234','2022-01-26 15:43:31'),(27,'test1','fakeemail@fake.com','1234','2022-02-11 10:46:45'),(28,'test2','fakeemail@fake.com','1234','2022-02-11 10:50:24'),(30,'test3','fakeemail@fake.com','1234','2022-02-11 11:52:21'),(31,'test4','fakeemail@fake.com','1234','2022-02-18 19:10:37'),(32,'test5','fakeemail@fake.com','1234','2022-02-18 19:17:56'),(33,'test6','fakeemail@fake.com','1234','2022-02-18 19:18:51'),(34,'test7','fakeemail@fake.com','1234','2022-02-18 19:19:26'),(35,'user12','fakeemail@fake.com','1234','2022-12-06 16:10:50'),(36,'user13','fakemail@fakemail.com','1234','2022-12-06 16:12:04'),(37,'user14','fake@fakemail.com','1234','2023-01-14 01:31:47'),(38,'user15','fake@fakemail.com','1234','2023-01-14 01:51:49'),(45,'test8','fake@fakeemail.com','1234','2023-01-19 20:03:57'),(47,'mike01','fake@fakeemail.com','1234','2023-01-19 20:47:53'),(50,'user16','fake@fakeemail.com','1234','2023-01-20 14:15:41'),(51,'user17','fake@fakeemail.com','1234','2023-01-20 14:20:29');
/*!40000 ALTER TABLE `authentication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mike01`
--

DROP TABLE IF EXISTS `mike01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mike01` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mike01`
--

LOCK TABLES `mike01` WRITE;
/*!40000 ALTER TABLE `mike01` DISABLE KEYS */;
INSERT INTO `mike01` VALUES (4,'mike01','mike01 user1','mike01','<span class=\"box\"> this is a box</span>>',1,'2023-01-19 20:51:04'),(5,'mike01','mike01 user1','user1','here is a linebreak<br>right here',1,'2023-01-19 20:52:19');
/*!40000 ALTER TABLE `mike01` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test1`
--

LOCK TABLES `test1` WRITE;
/*!40000 ALTER TABLE `test1` DISABLE KEYS */;
INSERT INTO `test1` VALUES (1,'test1','test2 test1','test1','testmessages3',0,'2022-02-11 11:42:38'),(2,'test1','test2 test1','test1','testmessages4',0,'2022-02-11 11:45:16'),(3,'test1','test2 test1','test1','testmessages5',0,'2022-02-11 11:47:08'),(4,'test1','test3 test2 test1','test1','testmessages7',0,'2022-02-11 11:53:17'),(5,'test1','test3 test2 test1','test1','testmessage8',0,'2022-02-11 11:57:19'),(6,'test1','test3 test2 test1','test1','testmessages9',0,'2022-02-11 12:02:21'),(7,'test1','test3 test2 test1','test1','testmessage10',0,'2022-02-11 12:10:55'),(8,'test1','test3 test2 test1','test1','testmessage11',0,'2022-02-11 12:11:35'),(9,'test1','test3 test2 test1','test1','testmessage12',0,'2022-02-11 12:13:26'),(10,'test1','test2 test3 test1 test1','test1','self included1',0,'2022-02-11 12:26:16'),(11,'test1','test2 test3 test1 test1','test1','self included1',0,'2022-02-11 12:26:16'),(12,'test1','test2 test3 test1 test1','test1','self included2',0,'2022-02-11 12:34:55'),(13,'test1','test2 test1','test1','testmessage13',0,'2022-02-11 12:45:04'),(14,'test1','test3 test2 test1','test1','testing form_send_message_display',0,'2022-02-16 14:51:37'),(15,'test1','test3 test2 test1','test1','form_send_message_display worked!',0,'2022-02-16 14:52:26'),(16,'test1','test3 test2 test1','test1','another message 01',0,'2022-02-16 14:54:19'),(17,'test1','test3 test2 test1','test1','another message 02',0,'2022-02-16 14:55:48'),(18,'test1','test3 test2 test1','test1','testing message_conversation_links()',0,'2022-02-16 14:58:07'),(19,'test1','test3 test2 test1','test1','testing messages_conversation_links() again',0,'2022-02-16 15:10:44'),(20,'test1','test3 test2 test1','test1','testing change to form_handler() & conditional on messages.php line 26',0,'2022-02-16 15:20:22'),(21,'test1','test3 test2 test1','test1','changes to form_handler() & messages.php line 26 worked.',0,'2022-02-16 15:21:06'),(22,'test1','test3 test2 test1','test1','testing sticky on lines 45 & 46 of messages.php',0,'2022-02-16 15:25:06'),(23,'test1','test3 test2 test1','test1','cool, it worked. Now I don\\\\\\\'t have to keep entering the recipients',0,'2022-02-16 15:25:48'),(24,'test1','test3 test2 test1','test1','cool, it worked. Now I don\\\\\\\'t have to keep entering the recipients',0,'2022-02-16 15:52:11'),(25,'test1','test3 test2 test1','test1','Parse error: syntax error, unexpected \\\\\\\'{\\\\\\\' in C:\\\\\\\\MAMP\\\\\\\\htdocs\\\\\\\\chat_app220120\\\\\\\\functions\\\\\\\\functions_login_registration.php on line 351',0,'2022-02-16 15:52:17'),(26,'test1','test3 test2 test1','test1','error fixed.',0,'2022-02-16 15:52:32'),(27,'test1','test3 test2 test1','test1','testing to see if button output from messages_display_conversation_links() works',0,'2022-02-16 15:53:46'),(28,'test1','test3 test2 test1','test1','Notice: Undefined index: recipients in C:\\\\\\\\MAMP\\\\\\\\htdocs\\\\\\\\chat_app220120\\\\\\\\messages.php on line 55',0,'2022-02-16 16:10:03'),(29,'test1','test3 test2 test1','test1','else if (isset(unique_conversation)){}',0,'2022-02-16 16:11:01'),(30,'test1','test3 test2 test1','test1','feb 17',0,'2022-02-17 14:31:47'),(31,'test1','test2 test1','test1','feb 17 10:38am',0,'2022-02-17 15:39:07'),(32,'test1','test2 test3 test1','test1','test feb17 10:40am',0,'2022-02-17 15:40:13'),(33,'test1','test2 test1','test1','test feb17 10:40am 2',0,'2022-02-17 15:41:11'),(34,'test1','test2 test3 test1','test1','test 3',0,'2022-02-17 15:41:44'),(35,'test1','test2 test3 test1','test1','test4',0,'2022-02-17 15:42:10'),(36,'test1','test2 test3 test1','test1','test5',0,'2022-02-17 15:42:35'),(37,'test1','test2 test3 test1','test1','test6',0,'2022-02-17 15:43:06'),(38,'test1','test2 test3 test1','test1','test7',0,'2022-02-17 16:02:13'),(39,'test1','test2 test1','test1','test',0,'2022-02-17 16:05:55'),(40,'test1','test2 test3 test1','test1','TEST FEB 18',0,'2022-02-18 16:32:05'),(41,'test1','test2 test1','test1','Test feb 18',0,'2022-02-18 16:41:01'),(42,'test1','test2 test3 test1','test1','test feb18, 12:04pm',0,'2022-02-18 17:04:45'),(43,'test1','test2 test3 test1','test1','test feb 18 12:05 pm',0,'2022-02-18 17:05:17'),(44,'test1','test2 test3 test1','test1','unique_conversation',0,'2022-02-18 17:06:05'),(45,'test1','test2 test3 test1','test1','feb 18, 12:11pm',0,'2022-02-18 17:11:46'),(46,'test1','test2 test3 test1','test1','feb 18, 1212pm',0,'2022-02-18 17:12:27'),(47,'test1','test2 test3 test1','test1','feb 18 1213pm',0,'2022-02-18 17:13:12'),(48,'test1','test2 test3 test1','test1','hello message',0,'2022-02-18 17:14:04'),(49,'test1','test2 test3 test1','test1','reorder test',0,'2022-02-18 17:14:25'),(50,'test1','test2 test3 test1','test1','test',0,'2022-02-18 17:16:25'),(51,'test1','test2 test3 test1','test1','test2',0,'2022-02-18 17:17:41'),(52,'test1','test2 test3 test1','test1','test3',0,'2022-02-18 17:18:21'),(53,'test1','test2 test3 test1','test1','test feb 18, 1:51pm',0,'2022-02-18 18:51:31'),(54,'test1','test2 test3 test1','test1','test feb 18 1:54pm',0,'2022-02-18 18:54:38'),(55,'test1','test2 test3 test1','test1','test',0,'2022-02-18 18:59:32'),(56,'test1','test2 test1','test1','test again',0,'2022-02-18 19:03:29'),(57,'test1','test2 test3 test1','test1','testing',0,'2022-02-18 19:04:24'),(58,'test1','test2 test3 test1','test1','testing 1',0,'2022-02-18 19:04:46'),(59,'test1','test1 test7','test7','test feb18, 9:51pm',0,'2022-02-19 02:51:36'),(60,'test1','test1 test7','test7','test feb18, 9:52pm',0,'2022-02-19 02:53:02'),(61,'test1','test1 test2 test7','test7','10:12pm',0,'2022-02-19 03:12:28'),(62,'test1','test1 test2 test7','test7','10:16pm',0,'2022-02-19 03:16:17'),(63,'test1','test1 test3 test7','test7','10:16pm',0,'2022-02-19 03:16:42'),(64,'test1','test1 test3 test7','test7','again. now it will switch',0,'2022-02-19 03:17:18'),(65,'test1','test1 test2 test7','test7','FEB 19, 5:47am',0,'2022-02-19 10:47:07'),(66,'test1','test1 test2 test7','test7','test feb19, 5:47am',0,'2022-02-19 10:47:44'),(67,'test1','test1 test3 test7','test7','test feb19 5:48am',0,'2022-02-19 10:48:20'),(68,'test1','test1 test3 test7','test7','test feb18 5:48am',0,'2022-02-19 10:48:40'),(69,'test1','test1 test7','test7','feb18 5:50am',0,'2022-02-19 10:51:05'),(70,'test1','test1 test7','test7','test feb18 5:;51am',0,'2022-02-19 10:51:24'),(71,'test1','test1 test7','test7','test feb18 5:53am',0,'2022-02-19 10:53:38'),(72,'test1','test1 test7','test7','feb 18 5:53',0,'2022-02-19 10:54:03'),(73,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:21:31'),(74,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:23:10'),(75,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:23:28'),(76,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:31:28'),(77,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:35:18'),(78,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:38:48'),(79,'test1','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:39:44'),(80,'test1','test1 test2 test7','test7','test feb18 6:40 am',0,'2022-02-19 11:40:39'),(81,'test1','test1 test7','test7','changed something. feb18 6:50am',0,'2022-02-19 11:50:43'),(82,'test1','test1 test2 test7','test7','changes something feb18 6:51am',0,'2022-02-19 11:51:30'),(83,'test1','test1 test2 test7','test7','send',0,'2022-02-19 13:34:24'),(84,'test1','test1 test2 test7','test7','8:44AM',0,'2022-02-19 13:44:19'),(85,'test1','test1 test2 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-21 22:21:10'),(86,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:41:42'),(87,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:45:17'),(88,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:52:11'),(89,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:52:32'),(90,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:53:08'),(91,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:53:41'),(92,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:53:54'),(93,'test1','test1 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-22 13:56:05'),(94,'test1','test1 test2 test7','test1','new message',0,'2022-02-23 12:33:22'),(95,'test1','test1 test7','test1','this is a really really really really really really really really really long message',0,'2022-02-23 13:04:47'),(96,'test1','test1 test7','test1','the box resizes according to the length of the string.',0,'2022-02-23 13:05:08'),(97,'test1','test1 test7','test1','test',0,'2022-02-23 15:00:36'),(98,'test1','test1 test7','test1','this is a really really really really really really really really really really really really reallyy loooooooooooooong text',0,'2022-02-23 15:13:26'),(99,'test1','test1 test7','test7','testing 123',0,'2022-02-23 15:14:52'),(100,'test1','test1 test7','test1','testing response123 over',0,'2022-02-23 15:15:08'),(101,'test1','test1 test7','test7','test response ok, over!',0,'2022-02-23 15:15:56'),(102,'test1','test1 test7','test1','stop saying over.',0,'2022-02-23 15:16:08'),(103,'test1','test1 user12 user13','user13','Testing messages_unique_conversation() with user12 user13 test1',0,'2023-01-19 19:58:18'),(104,'test1','test1 user12 user13','user12','This worked as expected. Now testing from Edge browser...',0,'2023-01-19 19:58:50'),(105,'test1','test1 test2 user12 user13','user12','testing messages_unique_conversation() with test1 user12 user13 test2',0,'2023-01-19 19:59:30'),(106,'test1','test1 test2 user12 user13','user13','This also worked. Testing complete.',0,'2023-01-19 19:59:55');
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2`
--

LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
INSERT INTO `test2` VALUES (1,'test2','test2 test1','test1','test',0,'2022-02-11 11:15:25'),(2,'test2','test2 test1','test1','testmessages2',0,'2022-02-11 11:22:14'),(3,'test2','test2 test1','test1','testmessages2',0,'2022-02-11 11:22:14'),(4,'test2','test2 test1','test1','testmessages4',0,'2022-02-11 11:45:16'),(5,'test2','test2 test1','test1','testmessages5',0,'2022-02-11 11:47:08'),(6,'test2','test3 test2 test1','test1','testmessages7',0,'2022-02-11 11:53:17'),(7,'test2','test3 test2 test1','test1','testmessage8',0,'2022-02-11 11:57:19'),(8,'test2','test3 test2 test1','test1','testmessages9',0,'2022-02-11 12:02:21'),(9,'test2','test3 test2 test1','test1','testmessages9',0,'2022-02-11 12:02:21'),(10,'test2','test3 test2 test1','test1','testmessage10',0,'2022-02-11 12:10:55'),(11,'test2','test3 test2 test1','test1','testmessage10',0,'2022-02-11 12:10:55'),(12,'test2','test3 test2 test1','test1','testmessage11',0,'2022-02-11 12:11:34'),(13,'test2','test3 test2 test1','test1','testmessage11',0,'2022-02-11 12:11:34'),(14,'test2','test3 test2 test1','test1','testmessage12',0,'2022-02-11 12:13:26'),(15,'test2','test3 test1 test2 test1','test1','self included1',0,'2022-02-11 12:26:16'),(16,'test2','test3 test1 test2 test1','test1','self included2',0,'2022-02-11 12:34:55'),(17,'test2','test2 test1','test1','testmessage13',0,'2022-02-11 12:45:04'),(18,'test2','test3 test2 test1','test1','testing form_send_message_display',0,'2022-02-16 14:51:37'),(19,'test2','test3 test2 test1','test1','form_send_message_display worked!',0,'2022-02-16 14:52:26'),(20,'test2','test3 test2 test1','test1','another message 01',0,'2022-02-16 14:54:19'),(21,'test2','test3 test2 test1','test1','another message 02',0,'2022-02-16 14:55:48'),(22,'test2','test3 test2 test1','test1','testing message_conversation_links()',0,'2022-02-16 14:58:07'),(23,'test2','test3 test2 test1','test1','testing messages_conversation_links() again',0,'2022-02-16 15:10:44'),(24,'test2','test3 test2 test1','test1','testing change to form_handler() & conditional on messages.php line 26',0,'2022-02-16 15:20:22'),(25,'test2','test3 test2 test1','test1','changes to form_handler() & messages.php line 26 worked.',0,'2022-02-16 15:21:06'),(26,'test2','test3 test2 test1','test1','testing sticky on lines 45 & 46 of messages.php',0,'2022-02-16 15:25:06'),(27,'test2','test3 test2 test1','test1','cool, it worked. Now I don\'t have to keep entering the recipients',0,'2022-02-16 15:25:48'),(28,'test2','test3 test2 test1','test1','cool, it worked. Now I don\'t have to keep entering the recipients',0,'2022-02-16 15:52:11'),(29,'test2','test3 test2 test1','test1','Parse error: syntax error, unexpected \'{\' in C:\\MAMP\\htdocs\\chat_app220120\\functions\\functions_login_registration.php on line 351',0,'2022-02-16 15:52:17'),(30,'test2','test3 test2 test1','test1','error fixed.',0,'2022-02-16 15:52:32'),(31,'test2','test3 test2 test1','test1','testing to see if button output from messages_display_conversation_links() works',0,'2022-02-16 15:53:46'),(32,'test2','test3 test2 test1','test1','Notice: Undefined index: recipients in C:\\MAMP\\htdocs\\chat_app220120\\messages.php on line 55',0,'2022-02-16 16:10:03'),(33,'test2','test3 test2 test1','test1','else if (isset(unique_conversation)){}',0,'2022-02-16 16:11:01'),(34,'test2','test3 test2 test1','test1','feb 17',0,'2022-02-17 14:31:47'),(35,'test2','test2 test1','test1','feb 17 10:38am',0,'2022-02-17 15:39:07'),(36,'test2','test2 test1','test1','feb 17 10:38am',0,'2022-02-17 15:39:07'),(37,'test2','test3 test2 test1','test1','test feb17 10:40am',0,'2022-02-17 15:40:13'),(38,'test2','test3 test2 test1','test1','test feb17 10:40am',0,'2022-02-17 15:40:13'),(39,'test2','test2 test1','test1','test feb17 10:40am 2',0,'2022-02-17 15:41:11'),(40,'test2','test2 test1','test1','test feb17 10:40am 2',0,'2022-02-17 15:41:11'),(41,'test2','test3 test2 test1','test1','test 3',0,'2022-02-17 15:41:44'),(42,'test2','test3 test2 test1','test1','test 3',0,'2022-02-17 15:41:44'),(43,'test2','test3 test2 test1','test1','test4',0,'2022-02-17 15:42:10'),(44,'test2','test3 test2 test1','test1','test4',0,'2022-02-17 15:42:10'),(45,'test2','test3 test2 test1','test1','test5',0,'2022-02-17 15:42:35'),(46,'test2','test3 test2 test1','test1','test5',0,'2022-02-17 15:42:35'),(47,'test2','test3 test2 test1','test1','test6',0,'2022-02-17 15:43:06'),(48,'test2','test3 test2 test1','test1','test6',0,'2022-02-17 15:43:06'),(49,'test2','test3 test2 test1','test1','test7',0,'2022-02-17 16:02:13'),(50,'test2','test3 test2 test1','test1','test7',0,'2022-02-17 16:02:13'),(51,'test2','test2 test1','test1','test',0,'2022-02-17 16:05:55'),(52,'test2','test2 test1','test1','test',0,'2022-02-17 16:05:55'),(53,'test2','test3 test2 test1','test1','TEST FEB 18',0,'2022-02-18 16:32:05'),(54,'test2','test3 test2 test1','test1','TEST FEB 18',0,'2022-02-18 16:32:05'),(55,'test2','test2 test1','test1','Test feb 18',0,'2022-02-18 16:41:01'),(56,'test2','test2 test1','test1','Test feb 18',0,'2022-02-18 16:41:01'),(57,'test2','test3 test2 test1','test1','test feb18, 12:04pm',0,'2022-02-18 17:04:45'),(58,'test2','test3 test2 test1','test1','test feb18, 12:04pm',0,'2022-02-18 17:04:45'),(59,'test2','test3 test2 test1','test1','test feb 18 12:05 pm',0,'2022-02-18 17:05:17'),(60,'test2','test3 test2 test1','test1','test feb 18 12:05 pm',0,'2022-02-18 17:05:17'),(61,'test2','test3 test2 test1','test1','unique_conversation',0,'2022-02-18 17:06:05'),(62,'test2','test3 test2 test1','test1','unique_conversation',0,'2022-02-18 17:06:05'),(63,'test2','test3 test2 test1','test1','feb 18, 12:11pm',0,'2022-02-18 17:11:46'),(64,'test2','test3 test2 test1','test1','feb 18, 12:11pm',0,'2022-02-18 17:11:46'),(65,'test2','test3 test2 test1','test1','feb 18, 1212pm',0,'2022-02-18 17:12:27'),(66,'test2','test3 test2 test1','test1','feb 18, 1212pm',0,'2022-02-18 17:12:27'),(67,'test2','test3 test2 test1','test1','feb 18 1213pm',0,'2022-02-18 17:13:12'),(68,'test2','test3 test2 test1','test1','feb 18 1213pm',0,'2022-02-18 17:13:12'),(69,'test2','test3 test2 test1','test1','hello message',0,'2022-02-18 17:14:04'),(70,'test2','test3 test2 test1','test1','hello message',0,'2022-02-18 17:14:04'),(71,'test2','test3 test2 test1','test1','reorder test',0,'2022-02-18 17:14:25'),(72,'test2','test3 test2 test1','test1','reorder test',0,'2022-02-18 17:14:25'),(73,'test2','test3 test2 test1','test1','test',0,'2022-02-18 17:16:25'),(74,'test2','test3 test2 test1','test1','test',0,'2022-02-18 17:16:25'),(75,'test2','test3 test2 test1','test1','test2',0,'2022-02-18 17:17:41'),(76,'test2','test3 test2 test1','test1','test2',0,'2022-02-18 17:17:41'),(77,'test2','test3 test2 test1','test1','test3',0,'2022-02-18 17:18:21'),(78,'test2','test3 test2 test1','test1','test3',0,'2022-02-18 17:18:21'),(79,'test2','test3 test2 test1','test1','test feb 18, 1:51pm',0,'2022-02-18 18:51:31'),(80,'test2','test3 test2 test1','test1','test feb 18, 1:51pm',0,'2022-02-18 18:51:31'),(81,'test2','test3 test2 test1','test1','test feb 18 1:54pm',0,'2022-02-18 18:54:38'),(82,'test2','test3 test2 test1','test1','test feb 18 1:54pm',0,'2022-02-18 18:54:38'),(83,'test2','test3 test2 test1','test1','test',0,'2022-02-18 18:59:32'),(84,'test2','test3 test2 test1','test1','test',0,'2022-02-18 18:59:32'),(85,'test2','test2 test1','test1','test again',0,'2022-02-18 19:03:29'),(86,'test2','test2 test1','test1','test again',0,'2022-02-18 19:03:29'),(87,'test2','test3 test2 test1','test1','testing',0,'2022-02-18 19:04:24'),(88,'test2','test3 test2 test1','test1','testing',0,'2022-02-18 19:04:24'),(89,'test2','test3 test2 test1','test1','testing 1',0,'2022-02-18 19:04:46'),(90,'test2','test3 test2 test1','test1','testing 1',0,'2022-02-18 19:04:46'),(91,'test2','test2 test7','test7','feb18, 10:53pm',0,'2022-02-19 02:53:38'),(92,'test2','test2 test7','test7','feb18, 10:53pm',0,'2022-02-19 02:57:58'),(93,'test2','test2 test7','test7','feb18, 10:53pm',0,'2022-02-19 02:58:48'),(94,'test2','test2 test7','test7','new',0,'2022-02-19 02:59:03'),(95,'test2','test2 test7','test7','feb18, 10:01pm',0,'2022-02-19 03:01:07'),(96,'test2','test2 test7','test7','again',0,'2022-02-19 03:01:13'),(97,'test2','test2 test7','test7','again',0,'2022-02-19 03:03:02'),(98,'test2','test2 test7','test7','newest test',0,'2022-02-19 03:07:43'),(99,'test2','test1 test2 test7','test7','10:12pm',0,'2022-02-19 03:12:28'),(100,'test2','test1 test2 test7','test7','10:16pm',0,'2022-02-19 03:16:17'),(101,'test2','test1 test2 test7','test7','FEB 19, 5:47am',0,'2022-02-19 10:47:07'),(102,'test2','test1 test2 test7','test7','test feb19, 5:47am',0,'2022-02-19 10:47:44'),(103,'test2','test2 test7','test7','test feb18 5:52am',0,'2022-02-19 10:52:29'),(104,'test2','test2 test7','test7','5:52am',0,'2022-02-19 10:53:10'),(105,'test2','test2 test7','test7','test feb18 6:03am',0,'2022-02-19 11:03:31'),(106,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:21:31'),(107,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:23:10'),(108,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:23:28'),(109,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:31:28'),(110,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:35:18'),(111,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:38:48'),(112,'test2','test1 test2 test7','test7','New messages_display_conversation()',0,'2022-02-19 11:39:44'),(113,'test2','test1 test2 test7','test7','test feb18 6:40 am',0,'2022-02-19 11:40:39'),(114,'test2','test1 test2 test7','test7','changes something feb18 6:51am',0,'2022-02-19 11:51:30'),(115,'test2','test1 test2 test7','test7','send',0,'2022-02-19 13:34:24'),(116,'test2','test1 test2 test7','test7','8:44AM',0,'2022-02-19 13:44:19'),(117,'test2','test2 test3','test3','testing multiple users',0,'2022-02-20 21:43:27'),(118,'test2','test2 test3','test2','IT WORKED!!',0,'2022-02-20 21:43:57'),(119,'test2','test2 test3','test3','yes, multiple users and everything. Isn\'t technnology amazing?',0,'2022-02-20 21:44:55'),(120,'test2','test2 test3','test2','oh barf. ok works - ok fine.',0,'2022-02-20 21:45:47'),(121,'test2','test2 test3','test3','thank you for sharing my excitement.',0,'2022-02-20 21:46:07'),(122,'test2','test1 test2 test7','test7','<p class=\"is-size-3\">my message is big</p>',0,'2022-02-21 22:21:10'),(123,'test2','test1 test2 test7','test1','new message',0,'2022-02-23 12:33:22'),(124,'test2','test1 test2 user12 user13','user12','testing messages_unique_conversation() with test1 user12 user13 test2',0,'2023-01-19 19:59:30'),(125,'test2','test1 test2 user12 user13','user13','This also worked. Testing complete.',0,'2023-01-19 19:59:55');
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
-- Table structure for table `test8`
--

DROP TABLE IF EXISTS `test8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test8` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test8`
--

LOCK TABLES `test8` WRITE;
/*!40000 ALTER TABLE `test8` DISABLE KEYS */;
INSERT INTO `test8` VALUES (1,'test8','test8 user12','test8','Hi this is test8. the test8 my homework!',1,'2023-01-19 20:04:48'),(2,'test8','test8 user12','user12','very funny',1,'2023-01-19 20:05:13');
/*!40000 ALTER TABLE `test8` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user1`
--

LOCK TABLES `user1` WRITE;
/*!40000 ALTER TABLE `user1` DISABLE KEYS */;
INSERT INTO `user1` VALUES (1,'user1','user2 user3 user4 user5 user6 user7 user8 user9 user10 user11 user1 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user1','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user1','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01'),(4,'user1','user1 user12','user12','test',1,'2022-12-17 19:09:16'),(5,'user1','user1 user12','user12','test2',1,'2022-12-17 19:11:38'),(6,'user1','user1 user12','user12','test3',1,'2022-12-17 19:12:04'),(7,'user1','user1 user12','user12','test4',1,'2022-12-17 19:13:29'),(8,'user1','user1 user12','user12','test5',1,'2022-12-17 19:13:47'),(9,'user1','user1 user12','user12','ervw',1,'2022-12-17 19:22:51'),(10,'user1','user1 user12','user12','ervw',1,'2022-12-17 19:24:11'),(11,'user1','user1 user12','user12','ervw',1,'2022-12-17 19:26:02'),(12,'user1','user1 user12','user12','ervw',1,'2022-12-17 19:27:40'),(13,'user1','user1 user12','user12','ervw',1,'2022-12-17 19:30:47'),(14,'user1','user1 user12','user12','faifnraeo',1,'2022-12-17 21:24:12'),(15,'user1','user1 user12','user12','does messaging still work?',1,'2022-12-31 14:54:41'),(16,'user1','user1 user2 user12 user13','user12','this is a test',1,'2023-01-03 03:01:19'),(17,'user1','user1 user2 user12 user13','user12','testing menu_msg',0,'2023-01-03 19:40:21'),(18,'user1','user1 user2 user12 user13','user12','Ok, I see the NEW: 1 sign, and now it will update again.',0,'2023-01-03 19:41:07'),(19,'user1','user1 user2 user12 user13','user12','... as anticipated.',0,'2023-01-03 19:41:19'),(20,'user1','user1 user2 user12 user13','user13','1',0,'2023-01-04 02:21:32'),(21,'user1','user1 user2 user12 user13','user13','2',0,'2023-01-04 02:21:35'),(22,'user1','user1 user2 user12 user13','user13','3',0,'2023-01-04 02:21:39'),(23,'user1','user1 user2 user12 user13','user13','4',0,'2023-01-04 02:21:42'),(24,'user1','user1 user12','user1','test',1,'2023-01-04 02:23:54'),(25,'user1','user1 user12','user1','I\'m adding new messages to test notifications',1,'2023-01-04 02:24:09'),(26,'user1','user1 user12','user1','notifications work!',1,'2023-01-04 02:24:20'),(30,'user1','mike01 user1','mike01','<span class=\"box\"> this is a box</span>>',1,'2023-01-19 20:51:04'),(31,'user1','mike01 user1','user1','here is a linebreak<br>right here',1,'2023-01-19 20:52:19'),(32,'user1','<h1>i</h1> user1','<h1>i</h1>','hi',0,'2023-01-19 21:11:06'),(33,'user1','<h1>i</h1> user1','<h1>i</h1>','another message:',0,'2023-01-19 21:14:46'),(34,'user1','<h1>i</h1> user1','user1','I don\'t know what happened.',0,'2023-01-19 21:15:26'),(35,'user1','<h1>i</h1> user1','<h1>i</h1>','what happened nw?',0,'2023-01-19 21:15:54'),(36,'user1','<h1>i</h1> user1','user1','I don\'t know',0,'2023-01-19 21:16:01'),(37,'user1','user1 user12','user1','test',1,'2023-01-19 22:40:41'),(38,'user1','user1 user12','user1','testing new method, and implementations',1,'2023-01-19 23:07:37'),(39,'user1','user1 user12','user1','testing <span>test</span>',1,'2023-01-19 23:16:05'),(40,'user1','user1 user12','user1','Why is there user1 user1, user12?',1,'2023-01-19 23:17:14'),(41,'user1','user1 user12','user12','It doesn\'t show \'user1 user1, user12\' on my recipients field...',1,'2023-01-19 23:18:45'),(42,'user1','user1 user12','user12','I\'ll check the database.',1,'2023-01-19 23:19:00'),(43,'user1','user1 user12','user12','The database only shows \'user1 user12\' as a unique conversation.',1,'2023-01-19 23:20:19'),(44,'user1','user1 user12','user1','You\'re right',1,'2023-01-19 23:20:38'),(45,'user1','user1 user12','user1','It\'s working properly, but if a username is entered twice, with one having a comma, both will show in the recipients text field.',1,'2023-01-19 23:21:40'),(46,'user1','user1 user12','user12','testing recipients with \'user1 user12 user1 user12\'',1,'2023-01-20 14:08:13'),(47,'user1','user1 user12','user12','result in recipient field:  \'user1 user12\'',1,'2023-01-20 14:08:44');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user10`
--

LOCK TABLES `user10` WRITE;
/*!40000 ALTER TABLE `user10` DISABLE KEYS */;
INSERT INTO `user10` VALUES (1,'user10','user11 user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user10','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user10','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user11`
--

LOCK TABLES `user11` WRITE;
/*!40000 ALTER TABLE `user11` DISABLE KEYS */;
INSERT INTO `user11` VALUES (1,'user11','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user11','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user11','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01');
/*!40000 ALTER TABLE `user11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user12`
--

DROP TABLE IF EXISTS `user12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user12` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=554 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user12`
--

LOCK TABLES `user12` WRITE;
/*!40000 ALTER TABLE `user12` DISABLE KEYS */;
INSERT INTO `user12` VALUES (1,'user12','user12 user13','user12','first message: user12 to user13',1,'2022-12-06 16:13:01'),(2,'user12','user12 user13','user13','message received from user12 ',1,'2022-12-06 16:13:39'),(3,'user12','user12 user13','user12','He probably sees you like an older brother especialy if he\'s friends with your brother',1,'2022-12-06 16:17:01'),(4,'user12','user12 user13','user13','Litterally came here to say this kid probably thinks your\'re cook as hell. Probably looking at your like a sugo big brother.',1,'2022-12-06 16:17:50'),(5,'user12','user12 user13','user12','This, and try to include your brother aswell so...',1,'2022-12-06 16:18:18'),(6,'user12','user12 user13','user13','This! yes and please just be there for him. I know when I was a child I needed someone like you that i felt comfortable iwth taking too about things going on arougn me.',1,'2022-12-06 16:19:00'),(7,'user12','user12 user13','user12','This was all copied from a reddit post. Thanks for participating in this forgery.',1,'2022-12-06 16:39:07'),(8,'user12','user12 user13','user13','Your welcome. It was fun copying stereotypical posts from reddit. ',1,'2022-12-06 16:39:43'),(9,'user12','user12 user13','user12','If only we could do something about that box sizing, eh?',1,'2022-12-06 16:40:06'),(10,'user12','user12 user13','user13','Yes, and the conversation button, eh?',1,'2022-12-06 16:40:25'),(11,'user12','user12 user13','user12','Right.',1,'2022-12-06 16:40:32'),(12,'user12','user12 user13','user13','Indeed.',1,'2022-12-06 16:40:41'),(13,'user12','user12 user13','user13','I\'m going to log out now. Good luck',1,'2022-12-06 16:41:25'),(14,'user12','user12 user13','user12','Thank you.',1,'2022-12-06 16:41:34'),(15,'user12','user12 user13','user12','Thank you.',1,'2022-12-06 16:42:08'),(27,'user12','user12 user13','user12','wiaefna',1,'2022-12-17 22:54:04'),(28,'user12','user12 user13','user12','faofneo',1,'2022-12-17 22:54:39'),(29,'user12','user12 user13','user12','gaogna',1,'2022-12-17 23:01:49'),(30,'user12','user12 user13','user12','faaieoi',1,'2022-12-17 23:03:28'),(31,'user12','user12 user13','user13','googlymoogly',1,'2022-12-18 17:07:45'),(32,'user12','user12 user13','user13','googlymoogly',1,'2022-12-18 17:09:31'),(33,'user12','user12 user13','user13','faofeiaw',1,'2022-12-18 17:47:15'),(34,'user12','user12 user13','user13','naprdk',1,'2022-12-18 17:48:55'),(35,'user12','user12 user13','user13','fgnarf',1,'2022-12-18 17:51:43'),(36,'user12','user12 user13','user13','aupfdagnd',1,'2022-12-18 17:57:19'),(37,'user12','user12 user13','user13','iahfvrqi[',1,'2022-12-18 17:58:44'),(38,'user12','user12 user13','user13','dapfa[uer',1,'2022-12-18 19:12:37'),(39,'user12','user12 user13','user13','asserfnvaie[h',1,'2022-12-18 19:15:41'),(40,'user12','user12 user13','user12','thank you for sharing my excitement.',1,'2022-12-18 20:46:43'),(41,'user12','user12 user13','user12','a new one',1,'2022-12-18 21:23:32'),(42,'user12','user12 user13','user13','right back at you!',1,'2022-12-18 21:23:50'),(43,'user12','user12 user13','user13','I suppose this is basic stuff for other programmers',1,'2022-12-18 21:27:04'),(44,'user12','user12 user13','user12','I think it might be. it took forever to solve this.',1,'2022-12-18 21:27:43'),(45,'user12','user12 user13','user13','So I have it set at about a 15 second interval',1,'2022-12-18 21:28:06'),(46,'user12','user12 user13','user12','I assume it\'s processor intensive to keep pinging the server for updates every time.',1,'2022-12-18 21:28:50'),(47,'user12','user12 user13','user13','But let\'s see what happens if we delete the setTimeout()',1,'2022-12-18 21:29:52'),(48,'user12','user12 user13','user12','NO! just set it to a very low number, like 1000',1,'2022-12-18 21:30:30'),(49,'user12','user12 user13','user12','Does the cpu heat up? we could check the task manager',1,'2022-12-18 21:31:05'),(50,'user12','user12 user13','user13','ok',1,'2022-12-18 21:31:17'),(51,'user12','user12 user13','user13','just testing, while looking at the task manager. Right now, it\'s at CPU 4%. eDGE IS USING THE MOST MEMORY, but it\'s got hundreds of tabs open.',1,'2022-12-18 21:32:58'),(52,'user12','user12 user13','user13','sending message cpu 5%',1,'2022-12-18 21:33:09'),(53,'user12','user12 user13','user13','sending 4%',1,'2022-12-18 21:33:18'),(54,'user12','user12 user13','user13','ok, now I\'m going to look at both screens of the convo to see how quick the conversation speed is.',1,'2022-12-18 21:33:49'),(55,'user12','user12 user13','user13','it\'s this fast',1,'2022-12-18 21:34:01'),(56,'user12','user12 user13','user12','I think that\'s slow',1,'2022-12-18 21:34:23'),(57,'user12','user12 user13','user13','your message went FAST',1,'2022-12-18 21:34:37'),(58,'user12','user12 user13','user13','test',1,'2022-12-18 21:34:49'),(59,'user12','user12 user13','user13','test',1,'2022-12-18 21:34:58'),(60,'user12','user12 user13','user13','test2',1,'2022-12-18 21:35:03'),(61,'user12','user12 user13','user12','ok it\'s speedy.',1,'2022-12-18 21:35:14'),(62,'user12','user12 user13','user12','NICE',1,'2022-12-18 21:35:28'),(63,'user12','user12 user13','user13','NICE',1,'2022-12-18 21:35:31'),(64,'user12','user12 user13','user13','I have to set it up so that it focuses the cursor on the text field.',1,'2022-12-18 21:36:33'),(65,'user12','user12 user13','user12','... and you have to make it look nicer.',1,'2022-12-18 21:36:53'),(66,'user12','user12 user13','user13','yes',1,'2022-12-18 21:36:59'),(67,'user12','user12 user13','user13','setInterval()',1,'2022-12-18 21:54:40'),(68,'user12','user12 user13','user12','setInterval()',1,'2022-12-18 21:55:00'),(69,'user12','user12 user13','user13','test 4:56',1,'2022-12-18 21:56:08'),(70,'user12','user12 user13','user12','setInterval() does not work',1,'2022-12-18 21:56:48'),(71,'user12','user12 user13','user13','Yeah, setInterval() does not work!',1,'2022-12-18 21:57:43'),(72,'user12','user12 user13','user12','That\'s what she said!',1,'2022-12-18 21:57:59'),(73,'user12','user12 user13','user13','A recursive call to self() with a setTimeout() works better!',1,'2022-12-18 21:58:55'),(74,'user12','user12 user13','user12','That\'s what she said!!',1,'2022-12-18 21:59:10'),(75,'user12','user12 user13','user12','this is for testing a minor code cleanup.',1,'2022-12-18 22:14:37'),(76,'user12','user12 user13','user12','I cleaned up the JavaScript async/await stuff.',1,'2022-12-18 22:15:11'),(77,'user12','user12 user13','user13','It works.',1,'2022-12-18 22:15:22'),(78,'user12','user12 user13','user12','OK, I changed the interval to 3 sec how is it',1,'2022-12-18 22:16:22'),(79,'user12','user12 user13','user13','Not bad, I think',1,'2022-12-18 22:16:32'),(80,'user12','user12 user13','user12','yeah, Good enough',1,'2022-12-18 22:16:48'),(81,'user12','user12 user13','user13','how well does this work?',1,'2022-12-18 23:50:05'),(82,'user12','user12 user13','user12','a few seconds delay',1,'2022-12-18 23:50:17'),(83,'user12','user12 user13','user13','Here is the original',1,'2022-12-18 23:51:12'),(84,'user12','user12 user13','user12','test 6:55pm',1,'2022-12-18 23:56:50'),(85,'user12','user12 user13','user13','works. 6:57pm',1,'2022-12-18 23:57:35'),(86,'user12','user12 user13','user12','I totally forgot that each message is time-stamped.',1,'2022-12-18 23:58:10'),(87,'user12','user12 user13','user12','message at Alfred',1,'2022-12-19 01:22:12'),(88,'user12','user12 user13','user13','return mesage',1,'2022-12-19 01:22:34'),(89,'user12','user12 user13','user12','gobeldy goop!',1,'2022-12-22 18:23:44'),(90,'user12','user12 user13','user12','more gobeldy goop!',1,'2022-12-23 01:29:25'),(91,'user12','user12 user13','user12','test',1,'2022-12-23 01:35:45'),(92,'user12','user12 user13','user13','Here, I am testing use of XMLHttpRequest()',1,'2022-12-23 01:41:49'),(93,'user12','user12 user13','user12','It worked, but did not auto-update on recipient side.',1,'2022-12-23 01:42:31'),(94,'user12','user12 user13','user12','... so you have to make use of a setInterval() function.',1,'2022-12-23 01:47:16'),(95,'user12','user12 user13','user13','will it work though?',1,'2022-12-23 01:47:32'),(96,'user12','user12 user13','user13','Hmm.. guess not',1,'2022-12-23 01:48:40'),(97,'user12','user12 user13','user12','I dn\'t have it yet',1,'2022-12-23 01:48:54'),(98,'user12','user12 user13','user12','I don\'t know!!',1,'2022-12-23 01:53:12'),(99,'user12','user12 user13','user12','did it startChecking?',1,'2022-12-23 01:57:28'),(100,'user12','user12 user13','user13','maybe.',1,'2022-12-23 01:57:38'),(101,'user12','user12 user13','user12','testing',1,'2022-12-23 02:02:30'),(102,'user12','user12 user13','user13','new',1,'2022-12-23 02:03:26'),(103,'user12','user12 user13','user12','new new',1,'2022-12-23 02:04:12'),(104,'user12','user12 user13','user13','new new',1,'2022-12-23 02:04:24'),(105,'user12','user12 user13','user12','nothing',1,'2022-12-23 02:07:30'),(107,'user12','user12 user13','user12','test2',1,'2022-12-23 02:09:23'),(108,'user12','user12 user13','user13','test2',1,'2022-12-23 02:09:34'),(109,'user12','user12 user13','user13','test test',1,'2022-12-23 02:09:45'),(110,'user12','user12 user13','user12','9:13',1,'2022-12-23 02:13:27'),(111,'user12','user12 user13','user13','913',1,'2022-12-23 02:13:41'),(112,'user12','user12 user13','user13','not working.',1,'2022-12-23 02:13:59'),(113,'user12','user12 user13','user13','why not?',1,'2022-12-23 02:19:05'),(114,'user12','user12 user13','user12','callback',1,'2022-12-23 02:27:38'),(115,'user12','user12 user13','user12','callback2',1,'2022-12-23 02:28:00'),(116,'user12','user12 user13','user13','callback3',1,'2022-12-23 02:28:34'),(117,'user12','user12 user13','user12','test',1,'2022-12-23 02:29:55'),(118,'user12','user12 user13','user12','test2',1,'2022-12-23 02:30:02'),(119,'user12','user12 user13','user13','test3',1,'2022-12-23 02:30:13'),(120,'user12','user12 user13','user13','test4',1,'2022-12-23 02:30:19'),(121,'user12','user12 user13','user13','test5',1,'2022-12-23 02:30:56'),(122,'user12','user12 user13','user13','test6',1,'2022-12-23 02:31:02'),(123,'user12','user12 user13','user12','test7',1,'2022-12-23 02:31:10'),(124,'user12','user12 user13','user13','try this:',1,'2022-12-23 02:32:40'),(125,'user12','user12 user13','user12','this wont work, will it.',1,'2022-12-23 02:33:33'),(126,'user12','user12 user13','user13','nope.',1,'2022-12-23 02:33:39'),(127,'user12','user12 user13','user12','and now?',1,'2022-12-23 02:34:15'),(128,'user12','user12 user13','user13','Yes.',1,'2022-12-23 02:34:20'),(129,'user12','user12 user13','user13','I\'ver reduced the frequency',1,'2022-12-23 02:37:54'),(130,'user12','user12 user13','user12','Iv\'e switched back to the fetch API',1,'2022-12-23 02:38:43'),(131,'user12','user12 user13','user13','I think that\'s better!',1,'2022-12-23 02:38:57'),(132,'user12','user12 user13','user12','The computer fan is not going crazy anymore!',1,'2022-12-23 02:39:27'),(133,'user12','user12 user13','user13','Yeah, Something about XMLHttpRequest() was driving it crazy.',1,'2022-12-23 02:40:01'),(134,'user12','user12 user13','user12','Here is one message with the new XHR_get_message() callL',1,'2022-12-23 16:17:37'),(135,'user12','user12 user13','user13','I think this works better than last time.',1,'2022-12-23 16:17:53'),(136,'user12','user12 user13','user12','but it\'s not as fast as the recursive async await, right?',1,'2022-12-23 16:18:33'),(137,'user12','user12 user13','user13','I think so',1,'2022-12-23 16:19:41'),(138,'user12','user12 user13','user12','hard to measure.',1,'2022-12-23 16:19:52'),(139,'user12','user12 user13','user13','ok, let\'s switch to the async await and see',1,'2022-12-23 16:20:20'),(140,'user12','user12 user13','user13','... This is working flawlessly though..',1,'2022-12-23 16:20:48'),(141,'user12','user12 user13','user12','yes it is. Hang on. I\'ll switch it out.',1,'2022-12-23 16:21:17'),(142,'user12','user12 user13','user12','ok, done. respond to get it going.',1,'2022-12-23 16:22:04'),(143,'user12','user12 user13','user13','It should be going now',1,'2022-12-23 16:22:16'),(144,'user12','user12 user13','user12','Yes, perceptually a tiny bit faster.',1,'2022-12-23 16:22:36'),(145,'user12','user12 user13','user13','it is, I think. Just that little bit.',1,'2022-12-23 16:22:52'),(146,'user12','user12 user13','user12','and sonetimes slow',1,'2022-12-23 16:23:02'),(147,'user12','user12 user13','user13','hard to say which is better.',1,'2022-12-23 16:23:17'),(148,'user12','user12 user13','user12','One difference between the two functions is that the XHR is checking the ready state and the status to make sure it\'s 4 && 200.',1,'2022-12-23 16:24:54'),(149,'user12','user12 user13','user13','Yes, we have to change that.',1,'2022-12-23 16:25:25'),(150,'user12','user12 user13','user12','added if statement to async/await call',1,'2022-12-23 22:32:11'),(151,'user12','user12 user13','user13','Everything is coming up Millhouse.',1,'2022-12-23 22:32:26'),(152,'user12','user12 user13','user12','That\'s what I like to hear.',1,'2022-12-23 22:32:44'),(153,'user12','user12 user13','user12','last one',1,'2022-12-23 22:40:26'),(154,'user12','user12 user13','user13','done.',1,'2022-12-23 22:40:32'),(155,'user12','user12 user13','user12','K. commit changes and merge now.',1,'2022-12-23 22:40:53'),(156,'user12','user12 user13','user13','small change',1,'2022-12-23 22:43:48'),(157,'user12','user12 user13','user12','K',1,'2022-12-23 22:43:55'),(158,'user12','user12 user13','user13','test',1,'2022-12-23 23:52:13'),(159,'user12','user12 user13','user12','test',1,'2022-12-23 23:52:18'),(160,'user12','user12 user13','user13','test',1,'2022-12-23 23:57:02'),(161,'user12','user12 user13','user12','not working',1,'2022-12-23 23:57:42'),(162,'user12','user12 user13','user13','test',1,'2022-12-24 00:02:53'),(163,'user12','user12 user13','user13','test',1,'2022-12-24 00:41:39'),(164,'user12','user12 user13','user12','test',1,'2022-12-24 00:43:22'),(165,'user12','user12 user13','user12','test',1,'2022-12-24 00:43:48'),(166,'user12','user12 user13','user12','test',1,'2022-12-24 00:44:39'),(167,'user12','user12 user13','user13','TEST',1,'2022-12-24 00:50:26'),(168,'user12','user12 user13','user13','So it\'s working now?',1,'2022-12-24 01:40:12'),(169,'user12','user12 user13','user12','I guess so!',1,'2022-12-24 01:40:22'),(170,'user12','user12 user13','user13','is it still working?',1,'2022-12-24 01:43:40'),(171,'user12','user12 user13','user12','I guess so!',1,'2022-12-24 01:43:48'),(172,'user12','user12 user13','user12','how about now?',1,'2022-12-24 01:47:23'),(173,'user12','user12 user13','user13','Yes.',1,'2022-12-24 01:47:29'),(174,'user12','user12 user13','user13','I think I like what\'s happening.',1,'2022-12-24 01:50:07'),(175,'user12','user12 user13','user12','Yes, everything is coming up Millhouse. HaHa.',1,'2022-12-24 01:50:27'),(176,'user12','user12 user13','user13','Millie vanilli',1,'2022-12-24 01:50:43'),(177,'user12','user12 user13','user12','OK. Time for the Git merge, and uploading to GitHub. Maybe we should just keep it top-down.',1,'2022-12-24 01:52:48'),(178,'user12','user12 user13','user13','Yes, Maybe. Why am I saying \"we\"? ...',1,'2022-12-24 01:53:37'),(179,'user12','user12 user13','user13','Anyway, I can prioritize making the layout more reactive first, then bottom-up later.',1,'2022-12-24 01:54:27'),(180,'user12','user12 user13','user12','it works, still.',1,'2022-12-24 03:32:57'),(181,'user12','user12 user13','user12','verifying...',1,'2022-12-24 16:22:21'),(182,'user12','user12 user13','user13','verified...',1,'2022-12-24 16:22:34'),(183,'user12','user12 user13','user12','the app\'s been updated with new filenames, and the app is called messaging_app220120',1,'2022-12-24 19:27:12'),(184,'user12','user12 user13','user12','The tool, create_dum_restore.php was really useful.',1,'2022-12-24 19:27:54'),(185,'user12','user12 user13','user12','create_dump_restore.php',1,'2022-12-24 19:28:09'),(186,'user12','user12 user13','user13','test',1,'2022-12-24 20:55:35'),(187,'user12','user12 user13','user13','response is obviously ok.',1,'2022-12-24 20:56:07'),(188,'user12','user12 user13','user12','so this is new',1,'2022-12-24 20:57:51'),(189,'user12','user12 user13','user12','ok, maybe it wasn\'t',1,'2022-12-24 20:59:50'),(190,'user12','user12 user13','user13','... and it still isn\'t',1,'2022-12-24 21:00:07'),(191,'user12','user12 user13','user12','I don\'t know what to do.',1,'2022-12-24 21:01:10'),(192,'user12','user12 user13','user12','what happens',1,'2022-12-24 21:32:10'),(193,'user12','user12 user13','user13','nothing happens.',1,'2022-12-24 21:32:26'),(194,'user12','user12 user13','user12','The form is still there. did you save?',1,'2022-12-24 21:32:40'),(195,'user12','user12 user13','user13','Yes, the change was saved.',1,'2022-12-24 21:33:04'),(196,'user12','user12 user13','user12','interesting.',1,'2022-12-24 21:35:06'),(197,'user12','user12 user13','user12','logging out.',1,'2022-12-24 21:35:16'),(198,'user12','user12 user13','user13','logging out and restarting MAMP',1,'2022-12-24 21:35:50'),(199,'user12','user12 user13','user12','is it working?',1,'2022-12-24 21:43:02'),(200,'user12','user12 user13','user12','1',1,'2022-12-24 21:46:00'),(201,'user12','user12 user13','user13','2',1,'2022-12-24 21:46:49'),(202,'user12','user12 user13','user12','3',1,'2022-12-24 21:47:10'),(203,'user12','user12 user13','user12','ascending order',1,'2022-12-24 21:50:43'),(204,'user12','user12 user13','user13','It works!',1,'2022-12-24 21:50:58'),(205,'user12','user12 user13','user13','Now, I have to keep the position scrolled to the bottom.',1,'2022-12-24 21:51:39'),(206,'user12','user12 user13','user12','4',1,'2022-12-24 22:03:37'),(207,'user12','user12 user13','user13','5',1,'2022-12-24 22:04:41'),(208,'user12','user12 user13','user13','5',1,'2022-12-24 22:05:13'),(209,'user12','user12 user13','user12','4',1,'2022-12-24 22:05:20'),(210,'user12','user12 user13','user12','what can be done?',1,'2022-12-24 22:06:58'),(211,'user12','user12 user13','user12','Does this autofocus?',1,'2022-12-24 22:24:19'),(212,'user12','user12 user13','user12','It does, but it doesn\'t scroll down.',1,'2022-12-24 22:24:47'),(213,'user12','user12 user13','user12','One more.',1,'2022-12-24 22:25:25'),(214,'user12','user12 user13','user12','scroll_to_bottom()',1,'2022-12-24 22:31:31'),(215,'user12','user12 user13','user12','scroll_to_bottom()',1,'2022-12-24 22:32:55'),(216,'user12','user12 user13','user12','again.',1,'2022-12-24 22:33:11'),(217,'user12','user12 user13','user13','It doesn\'t work',1,'2022-12-24 22:33:22'),(218,'user12','user12 user13','user12','6',1,'2022-12-24 22:34:29'),(219,'user12','user12 user13','user13','7',1,'2022-12-24 22:36:19'),(220,'user12','user12 user13','user13','8',1,'2022-12-24 22:36:41'),(221,'user12','user12 user13','user12','it worked!',1,'2022-12-24 23:23:59'),(222,'user12','user12 user13','user13','... and the cursor is in the right place!',1,'2022-12-24 23:24:17'),(229,'user12','user12 user13','user12','testing from emulated iphone se',1,'2022-12-24 23:59:45'),(230,'user12','user12 user13','user12','...but the javascript doesn\'t seem to work...',1,'2022-12-25 00:00:32'),(231,'user12','user12 user13','user13','does updating work on your end?',1,'2022-12-25 00:00:58'),(232,'user12','user12 user13','user12','Yes.',1,'2022-12-25 00:01:06'),(233,'user12','user12 user13','user13','I got the message.',1,'2022-12-25 00:01:24'),(234,'user12','user12 user13','user12','I wonder why it didn\'t work before..',1,'2022-12-25 00:01:44'),(235,'user12','user12 user13','user12',' new',1,'2022-12-25 02:09:07'),(236,'user12','user12 user13','user13','gotten',1,'2022-12-25 02:09:16'),(237,'user12','user12 user13','user12',' new',1,'2022-12-25 02:09:47'),(238,'user12','user12 user13','user12','this should work!',1,'2022-12-25 03:00:53'),(239,'user12','user12 user13','user13','and it does!',1,'2022-12-25 03:01:06'),(240,'user12','user12 user13','user12','does the footer update when I send a message?',1,'2022-12-25 17:03:36'),(241,'user12','user12 user13','user13','no, it does not..',1,'2022-12-25 17:03:50'),(242,'user12','user12 user13','user13','.. but it did when I sent a message.',1,'2022-12-25 17:04:04'),(243,'user12','user12 user13','user12','how\'s this?',1,'2022-12-25 17:05:19'),(244,'user12','user12 user13','user13','its\' ok',1,'2022-12-25 17:05:29'),(245,'user12','user12 user13','user13','another test...',1,'2022-12-25 17:07:37'),(246,'user12','user12 user13','user13','I think this works better.',1,'2022-12-25 17:07:52'),(247,'user12','user12 user13','user13','.. maybe not.',1,'2022-12-25 17:08:04'),(248,'user12','user12 user13','user13','Either way,  .scrollIntoView() pauses for 20 sec.whenever scrolling happens, so when I send a message, scrolling does happens, and it pauses it for 20 sec.',1,'2022-12-25 17:10:26'),(249,'user12','user12 user13','user13','But sometimes, I can send a message without the send form moving down.',1,'2022-12-25 17:11:02'),(250,'user12','user12 user13','user13','Other times, it moves down, but not the last two times.',1,'2022-12-25 17:11:26'),(251,'user12','user12 user13','user13','ok, three times',1,'2022-12-25 17:11:35'),(252,'user12','user12 user13','user12','what happens when I send from edge to firefox.',1,'2022-12-25 17:12:40'),(253,'user12','user12 user13','user12','does it go down?',1,'2022-12-25 17:12:50'),(254,'user12','user12 user13','user12','yes it does.',1,'2022-12-25 17:12:57'),(255,'user12','user12 user13','user12','and it will keep going down',1,'2022-12-25 17:13:08'),(256,'user12','user12 user13','user12','... for at least 20 sec',1,'2022-12-25 17:13:21'),(257,'user12','user12 user13','user13','But that\'s ok',1,'2022-12-25 17:13:39'),(258,'user12','user12 user13','user12','So I\'ve changed the delay of scrolling to 3000. Same as the async recursion loop',1,'2022-12-25 17:15:37'),(259,'user12','user12 user13','user13','lets see what happens.',1,'2022-12-25 17:15:46'),(260,'user12','user12 user13','user12','It doesn\'t work. Can\'t scroll all theway up',1,'2022-12-25 17:16:25'),(261,'user12','user12 user13','user12','changing to 10000',1,'2022-12-25 17:16:44'),(262,'user12','user12 user13','user13','k',1,'2022-12-25 17:16:49'),(263,'user12','user12 user13','user12','It\'s better , but not as good as 20000',1,'2022-12-25 17:17:28'),(264,'user12','user12 user13','user12','test',1,'2022-12-27 00:46:30'),(269,'user12','user12 user13','user12','user13--',1,'2022-12-27 03:43:42'),(270,'user12','user12 user13','user12','user12 user13 user12',1,'2022-12-27 03:44:18'),(272,'user12','user12 user13','user12','hello user13',1,'2022-12-27 17:00:00'),(273,'user12','user12 user13','user13','hello user12',1,'2022-12-27 17:00:15'),(274,'user12','user12 user13','user12','test',1,'2022-12-28 02:00:55'),(275,'user12','user12 user13','user12','hi',1,'2022-12-29 00:03:41'),(276,'user12','user12 user13','user13','hi',1,'2022-12-29 00:04:23'),(277,'user12','user12 user13','user12','still works',1,'2022-12-29 02:03:49'),(278,'user12','user12 user13','user12','Checking if sending message works as expected after update',1,'2022-12-30 18:20:44'),(279,'user12','user12 user13','user13','Message received',1,'2022-12-30 18:21:15'),(280,'user12','user12 user13','user12','But now, it says I have one new message! it didn\'t include this one.',1,'2022-12-30 18:22:03'),(281,'user12','user12 user13','user13','I\'ll check the database.',1,'2022-12-30 18:22:25'),(282,'user12','user12 user13','user12','But now, it says I have one new message! it didn\'t include this one.',1,'2022-12-30 18:23:58'),(285,'user12','user12 user13','user12','does messaging still work?',1,'2022-12-31 14:55:14'),(286,'user12','user12 user13','user12','how about now?',1,'2022-12-31 14:55:40'),(287,'user12','user12 user13','user12','what happens now?',1,'2022-12-31 14:56:25'),(288,'user12','user12 user13','user13','this is much faster.',1,'2022-12-31 14:56:38'),(289,'user12','user12 user13','user13','this is much faster.',1,'2022-12-31 15:11:40'),(302,'user12','user12 user13','user13','is it slow?',1,'2022-12-31 23:05:08'),(303,'user12','user12 user13','user12','not at all.',1,'2022-12-31 23:05:23'),(304,'user12','user12 user13','user12','hey, guess what, I have 3 new messages.',1,'2023-01-01 02:35:17'),(305,'user12','user12 user13','user13','ok, I\'ll give you sme more',1,'2023-01-01 02:35:54'),(315,'user12','user12 user13','user13','did it update quickly?',1,'2023-01-01 02:36:36'),(316,'user12','user12 user13','user12','It did update pretty quickly.',1,'2023-01-01 02:36:54'),(317,'user12','user12 user13','user13','nice.',1,'2023-01-01 02:37:08'),(318,'user12','user12 user13','user12','nice.',1,'2023-01-01 02:37:26'),(324,'user12','user12 user13','user12','update1',1,'2023-01-01 06:34:25'),(325,'user12','user12 user13','user12','update2',1,'2023-01-01 06:34:30'),(326,'user12','user12 user13','user13','test',1,'2023-01-01 14:55:18'),(327,'user12','user12 user13','user13','test',1,'2023-01-01 15:01:41'),(328,'user12','user12 user13','user13','another test',1,'2023-01-01 15:02:32'),(329,'user12','user12 user13','user13','message_form2',1,'2023-01-01 15:04:12'),(330,'user12','user12 user13','user13','footer',1,'2023-01-01 15:05:04'),(331,'user12','user12 user13','user12','footer',1,'2023-01-01 15:05:27'),(332,'user12','user12 user13','user13','f',1,'2023-01-01 15:06:35'),(333,'user12','user12 user13','user13','f',1,'2023-01-01 15:24:50'),(334,'user12','user12 user13','user13','f',1,'2023-01-01 15:27:33'),(335,'user12','user12 user13','user13','f',1,'2023-01-01 15:27:45'),(336,'user12','user12 user13','user13','f',1,'2023-01-01 15:29:17'),(337,'user12','user12 user13','user13','f',1,'2023-01-01 15:29:36'),(338,'user12','user12 user13','user13','f',1,'2023-01-01 15:29:52'),(339,'user12','user12 user13','user13','f',1,'2023-01-01 15:30:14'),(340,'user12','user12 user13','user13','f',1,'2023-01-01 15:32:05'),(341,'user12','user12 user13','user13','f',1,'2023-01-01 15:32:46'),(342,'user12','user12 user13','user13','f',1,'2023-01-01 15:33:01'),(343,'user12','user12 user13','user13','f',1,'2023-01-01 15:34:30'),(344,'user12','user12 user13','user13','f',1,'2023-01-01 15:35:46'),(345,'user12','user12 user13','user13','f',1,'2023-01-01 15:36:07'),(346,'user12','user12 user13','user13','f',1,'2023-01-01 16:13:31'),(347,'user12','user12 user13','user13','from mobile',1,'2023-01-01 16:13:54'),(348,'user12','user12 user13','user12','to mobile',1,'2023-01-01 16:14:42'),(354,'user12','user12 user13','user12','to mobile',1,'2023-01-01 23:22:29'),(355,'user12','user12 user13','user12','to mobile',1,'2023-01-01 23:22:49'),(356,'user12','user12 user13','user12','to mobile',1,'2023-01-01 23:22:58'),(357,'user12','user12 user13','user12','to mobile',1,'2023-01-02 02:51:46'),(358,'user12','user12 user13','user12','to mobile',1,'2023-01-02 02:52:34'),(359,'user12','user12 user13','user12','does it work despite networking errors?',1,'2023-01-02 23:30:36'),(360,'user12','user12 user13','user13','Yes, as expected.',1,'2023-01-02 23:30:52'),(361,'user12','user12 user13','user12','I didn\'t like the notification action last time. How is it now?',1,'2023-01-02 23:32:11'),(362,'user12','user12 user13','user13','New message and the actual message arrived at the same time.',1,'2023-01-02 23:32:44'),(363,'user12','user12 user13','user13','..but you forgot to refresh the screen.',1,'2023-01-02 23:33:06'),(364,'user12','user12 user13','user12','ok. I refreshed the screen. How is it now?',1,'2023-01-02 23:33:31'),(365,'user12','user12 user13','user13','message arrived before notification.',1,'2023-01-02 23:33:50'),(366,'user12','user12 user13','user12','Ok.',1,'2023-01-02 23:34:10'),(367,'user12','user12 user13','user13','ok',1,'2023-01-02 23:34:22'),(368,'user12','user12 user13','user12','Now I\'m going to fix the comma.',1,'2023-01-02 23:36:15'),(378,'user12','user12 user13','user13','test',1,'2023-01-03 01:17:54'),(379,'user12','user12 user13','user13','test',1,'2023-01-03 01:28:50'),(382,'user12','user12 user13','user12','test after adding comma trimming',1,'2023-01-03 02:04:40'),(387,'user12','user1 user2 user12 user13','user12','this is a test',1,'2023-01-03 03:01:19'),(388,'user12','user1 user2 user12 user13','user12','testing menu_msg',1,'2023-01-03 19:40:21'),(389,'user12','user1 user2 user12 user13','user12','Ok, I see the NEW: 1 sign, and now it will update again.',1,'2023-01-03 19:41:07'),(390,'user12','user1 user2 user12 user13','user12','... as anticipated.',1,'2023-01-03 19:41:19'),(391,'user12','user1 user2 user12 user13','user13','1',0,'2023-01-04 02:21:32'),(392,'user12','user1 user2 user12 user13','user13','2',0,'2023-01-04 02:21:35'),(393,'user12','user1 user2 user12 user13','user13','3',0,'2023-01-04 02:21:39'),(394,'user12','user1 user2 user12 user13','user13','4',0,'2023-01-04 02:21:42'),(403,'user12','user12 user13','user13','I dont know what happened...',1,'2023-01-05 14:52:41'),(404,'user12','user12 user13','user12','I guess the function call suddenly kicked in, and you deleted the wrong conversation?',1,'2023-01-05 14:53:45'),(405,'user12','user12 user13','user13','That\'s what happened.',1,'2023-01-05 14:54:05'),(424,'user12','user12 user13','user13','The \'delete this conversation...\' button works now. you should tryit',1,'2023-01-05 20:27:31'),(425,'user12','user12 user13','user12','I will...',1,'2023-01-05 20:27:56'),(426,'user12','user12 user13','user12','saianara user3',1,'2023-01-05 20:29:43'),(427,'user12','user12 user13','user13','lol',1,'2023-01-05 20:29:52'),(434,'user12','user12 user13','user13','I think it\'s spelled \'sayonara\', maybe..',1,'2023-01-13 03:50:49'),(435,'user12','user12 user13','user12','I guiess you corrected me..',1,'2023-01-14 17:14:58'),(436,'user12','user12 user13','user13','ok. I win!',1,'2023-01-14 17:15:44'),(437,'user12','user12 user13','user12','for now...',1,'2023-01-14 17:15:58'),(438,'user12','user12 user13','user12','Does the new function work?',1,'2023-01-14 22:39:58'),(439,'user12','user12 user13','user13','I don\'t know if it\'s kicked in yet, but I don\'t see why it wouldnt... ',1,'2023-01-14 22:40:43'),(440,'user12','user12 user13','user13','We need to check if it updates it\'s \'new message\' indicator.',1,'2023-01-14 22:41:17'),(441,'user12','user12 user13','user12','word.',1,'2023-01-14 22:41:31'),(442,'user12','user12 user13','user13','it works just as usual!',1,'2023-01-14 22:43:03'),(443,'user12','user12 user13','user13','I\'ll log into user 15, and see what message it sends when there are no conversation links.',1,'2023-01-14 22:43:12'),(444,'user12','user12 user15','user15','\"This is from messages_ajax_wrapper()\" found in \'other conversations\'. This means the wrapper worked! ',1,'2023-01-14 22:45:05'),(445,'user12','user12 user15','user12','We can test it with the other ajax functions then.',1,'2023-01-14 22:45:37'),(446,'user12','user12 user13','user12','Let\'s see if the menu_newmsg function works.',1,'2023-01-14 22:55:00'),(447,'user12','user12 user15','user15','I think the new menu_newmsg wrapper works',1,'2023-01-14 22:56:24'),(448,'user12','user12 user15','user12','It does!',1,'2023-01-14 22:56:48'),(449,'user12','user12 user15','user15','lets see if I broke anything!',1,'2023-01-14 23:31:29'),(450,'user12','user12 user15','user12','nothing so far!',1,'2023-01-14 23:31:47'),(451,'user12','user12 user13','user13','it worked. So far, so good. ',1,'2023-01-14 23:32:51'),(452,'user12','user12 user15','user12','Quick cleanup complete',1,'2023-01-14 23:33:05'),(453,'user12','user12 user13','user13','Excellent...',1,'2023-01-14 23:33:24'),(454,'user12','user12 user13','user12','Quick cleanup complete',1,'2023-01-14 23:33:52'),(455,'user12','user12 user13','user13','Eggcellent...',1,'2023-01-14 23:34:15'),(456,'user12','user12 user13','user12','Hi Let\'s talk.',1,'2023-01-18 03:12:31'),(457,'user12','user12 user13','user13','Hi... why? Why should we talk after what you did?',1,'2023-01-18 03:13:08'),(458,'user12','user12 user13','user12','Because I\'m sorry baby.',1,'2023-01-18 03:13:21'),(459,'user12','user12 user13','user13','Very clever. You sound exactly like the last chat bot. I\'d like to benchmark those algorithms, if you know what I mean ;-)',1,'2023-01-18 03:14:58'),(460,'user12','user12 user13','user12','Very funny. Ok. I think this commit works fine. we should test the logout and register new user process.',1,'2023-01-18 03:16:21'),(461,'user12','user12 user13','user13','ai, ai.',1,'2023-01-18 03:16:36'),(462,'user12','user12 user13','user13','... I mean aye, aye.',1,'2023-01-18 03:16:54'),(463,'user12','user12 user13','user13','... Captain?',1,'2023-01-18 03:43:14'),(464,'user12','user12 user13','user13','I finished renaming the functions file... and I also found more stuff to delete in the functions folder',1,'2023-01-18 03:44:03'),(465,'user12','user12 user13','user12','Excellent work scotty. Keep me apprised of any vagrant files that may appear in the functions folder, especially if they\'re tribles.',1,'2023-01-18 03:44:58'),(466,'user12','user12 user13','user12','... We don\'t want any more of those on the ship. ',1,'2023-01-18 03:45:22'),(467,'user12','user12 user13','user12','.. and no more drinking, scotty!',1,'2023-01-18 03:45:33'),(468,'user12','user12 user13','user13','aye... :-(',1,'2023-01-18 03:45:56'),(470,'user12','user12 user13','user12','testing new message',1,'2023-01-19 03:08:21'),(471,'user12','user12 user13','user12','no warnings',1,'2023-01-19 15:04:32'),(472,'user12','user12 user13','user13','same from firefox',1,'2023-01-19 15:05:27'),(473,'user12','user12 user13','user12','footer moved up',1,'2023-01-19 15:58:54'),(474,'user12','user12 user13','user12','footer moved up',1,'2023-01-19 16:00:07'),(475,'user12','user12 user13','user12','footer moved up',1,'2023-01-19 16:00:23'),(476,'user12','user12 user13','user12','footer moved up',1,'2023-01-19 16:01:32'),(477,'user12','user12 user13','user12','footer moved up',1,'2023-01-19 16:01:53'),(478,'user12','user12 user13','user12','footer moved up',1,'2023-01-19 16:02:32'),(479,'user12','user12 user13','user12','footer moved up',1,'2023-01-19 16:02:47'),(480,'user12','user12 user13','user13','ok',1,'2023-01-19 16:02:59'),(481,'user12','user12 user13','user13','ok',1,'2023-01-19 17:04:46'),(482,'user12','user12 user13','user13','ok',1,'2023-01-19 17:04:51'),(483,'user12','user12 user13','user13','ok',1,'2023-01-19 17:05:04'),(484,'user12','user12 user13','user13','o',1,'2023-01-19 17:06:13'),(485,'user12','user12 user13','user13','done',1,'2023-01-19 17:11:06'),(486,'user12','user12 user13','user13','footer removed, ob_end_flush() retained.',1,'2023-01-19 17:13:22'),(487,'user12','user12 user13','user13','footer removed, ob_end_flush() retained.',1,'2023-01-19 17:14:56'),(488,'user12','user12 user13','user13','footer removed, ob_end_flush() retained.',1,'2023-01-19 17:18:42'),(489,'user12','user12 user13','user12','This works well.',1,'2023-01-19 17:20:27'),(490,'user12','user12 user13','user12','I like this',1,'2023-01-19 17:20:41'),(491,'user12','user12 user13','user12','style included',1,'2023-01-19 17:25:09'),(492,'user12','user12 user13','user12','is this better?',1,'2023-01-19 17:26:48'),(493,'user12','user12 user13','user13','I\'m not surethe mediaqurey worked in firefox.',1,'2023-01-19 17:27:35'),(494,'user12','user12 user13','user13','it did work.',1,'2023-01-19 17:27:46'),(495,'user12','user12 user13','user13','menu padding',1,'2023-01-19 17:39:50'),(496,'user12','user12 user13','user13','menu padding: 0px 12px;',1,'2023-01-19 17:41:07'),(504,'user12','user12 user13','user12','I believe messages_display_conversation() works with $dbc_second?',1,'2023-01-19 19:36:41'),(505,'user12','user12 user13','user13','Yes, it does.',1,'2023-01-19 19:37:01'),(506,'user12','user12 user13','user13','no problems',1,'2023-01-19 19:37:11'),(507,'user12','user12 user13 user14','user13','testing messages_conversation_unread()',0,'2023-01-19 19:47:13'),(508,'user12','user12 user13 user14','user13','again',0,'2023-01-19 19:47:21'),(509,'user12','user12 user13 user14','user13','again',0,'2023-01-19 19:47:26'),(510,'user12','user12 user13','user12','I think messages_conversation_unread() is working.',1,'2023-01-19 19:48:02'),(511,'user12','user12 user13','user12','messages_send() test 1',1,'2023-01-19 19:53:06'),(512,'user12','user12 user13','user13','messages_send() test 2',1,'2023-01-19 19:53:29'),(513,'user12','user12 user13','user12','messages_send() test 3',1,'2023-01-19 19:53:47'),(514,'user12','user12 user13','user13','messages_send() test 4',1,'2023-01-19 19:53:59'),(515,'user12','user12 user13','user12','OK, it works.',1,'2023-01-19 19:54:13'),(516,'user12','user12 user13','user12','messages_unique_conversation() test 1',1,'2023-01-19 19:55:41'),(517,'user12','user12 user13','user13','test recieved. opening menu to see conversations...',1,'2023-01-19 19:56:01'),(518,'user12','user12 user13','user13','... all conversations present.',1,'2023-01-19 19:56:19'),(519,'user12','user12 user13','user12','all conversations present here as well.',1,'2023-01-19 19:56:39'),(520,'user12','user12 user13','user12','messages_unique_conversation() test 2: make new recipients',1,'2023-01-19 19:57:21'),(521,'user12','user12 user13','user13','ok.',1,'2023-01-19 19:57:28'),(524,'user12','test1 test2 user12 user13','user12','testing messages_unique_conversation() with test1 user12 user13 test2',1,'2023-01-19 19:59:30'),(525,'user12','test1 test2 user12 user13','user13','This also worked. Testing complete.',1,'2023-01-19 19:59:55'),(526,'user12','test8 user12','test8','Hi this is test8. the test8 my homework!',1,'2023-01-19 20:04:48'),(527,'user12','test8 user12','user12','very funny',1,'2023-01-19 20:05:13'),(528,'user12','user1 user12','user1','test',1,'2023-01-19 22:40:41'),(529,'user12','user1 user12','user1','testing new method, and implementations',1,'2023-01-19 23:07:37'),(530,'user12','user1 user12','user1','testing <span>test</span>',1,'2023-01-19 23:16:05'),(531,'user12','user1 user12','user1','Why is there user1 user1, user12?',1,'2023-01-19 23:17:14'),(532,'user12','user1 user12','user12','It doesn\'t show \'user1 user1, user12\' on my recipients field...',1,'2023-01-19 23:18:45'),(533,'user12','user1 user12','user12','I\'ll check the database.',1,'2023-01-19 23:19:00'),(534,'user12','user1 user12','user12','The database only shows \'user1 user12\' as a unique conversation.',1,'2023-01-19 23:20:19'),(535,'user12','user1 user12','user1','You\'re right',1,'2023-01-19 23:20:38'),(536,'user12','user1 user12','user1','It\'s working properly, but if a username is entered twice, with one having a comma, both will show in the recipients text field.',1,'2023-01-19 23:21:40'),(537,'user12','user12 user13','user13','test',1,'2023-01-19 23:48:23'),(538,'user12','user12 user13','user12','<test>',1,'2023-01-20 01:29:17'),(539,'user12','user12 user13','user12','\"test\"',1,'2023-01-20 01:30:33'),(540,'user12','user12 user13','user12','test2',1,'2023-01-20 01:31:18'),(541,'user12','user12 user13','user12','test',1,'2023-01-20 01:31:37'),(542,'user12','user12 user13','user12','new test2',1,'2023-01-20 01:31:48'),(543,'user12','user12 user13','user12','test again to clean the comma',1,'2023-01-20 01:52:13'),(544,'user12','user12 user13','user13','It worked! No comma!!',1,'2023-01-20 01:52:31'),(545,'user12','user12 user13 user15','user12','I\'ll try adding a comma. Let\'s see...',1,'2023-01-20 01:53:15'),(546,'user12','user12 user13 user15','user13','It',1,'2023-01-20 01:53:29'),(547,'user12','user12 user13 user15','user13',' it worked!!',1,'2023-01-20 01:53:40'),(548,'user12','user12 user13 user15','user12','much better, isn',1,'2023-01-20 01:54:04'),(549,'user12','user12 user13 user15','user12','much better, isn\'t it?',1,'2023-01-20 01:54:21'),(550,'user12','user12 user13 user15','user13','Indeed.',1,'2023-01-20 01:54:32'),(551,'user12','user12 user13 user15','user13','Let\'s add a comma and a baduser',1,'2023-01-20 01:55:25'),(552,'user12','user1 user12','user12','testing recipients with \'user1 user12 user1 user12\'',1,'2023-01-20 14:08:13'),(553,'user12','user1 user12','user12','result in recipient field:  \'user1 user12\'',1,'2023-01-20 14:08:44');
/*!40000 ALTER TABLE `user12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user13`
--

DROP TABLE IF EXISTS `user13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user13` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `participants` varchar(255) NOT NULL,
  `speaker` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` tinyint(1) unsigned NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user13`
--

LOCK TABLES `user13` WRITE;
/*!40000 ALTER TABLE `user13` DISABLE KEYS */;
INSERT INTO `user13` VALUES (416,'user13','user13 user14','user14','Hi user13.',1,'2023-01-14 16:27:53'),(417,'user13','user13 user14','user13','Hello user14',1,'2023-01-14 16:28:33'),(418,'user13','user13 user14','user14','whatchya doin?',1,'2023-01-14 16:29:15'),(419,'user13','user13 user14','user13','I\'m watching Mr. Beast and eating feastables, and a Beastburger',1,'2023-01-14 16:30:03'),(420,'user13','user13 user14','user14','k That was unexpected :D',1,'2023-01-14 16:30:34'),(421,'user13','user13 user14','user13','Whatever. Whatever makes good videos. gotta logout now. cya',1,'2023-01-14 16:31:45'),(422,'user13','user13 user14','user14','um ok.',1,'2023-01-14 16:31:59'),(423,'user13','user13 user14','user13','bye.',1,'2023-01-14 16:32:11'),(424,'user13','user13 user14','user14','whatevs',1,'2023-01-14 16:33:15'),(425,'user13','user12 user13','user12','I guiess you corrected me..',1,'2023-01-14 17:14:58'),(426,'user13','user12 user13','user13','ok. I win!',1,'2023-01-14 17:15:44'),(427,'user13','user12 user13','user12','for now...',1,'2023-01-14 17:15:58'),(428,'user13','user12 user13','user12','Does the new function work?',1,'2023-01-14 22:39:58'),(429,'user13','user12 user13','user13','I don\'t know if it\'s kicked in yet, but I don\'t see why it wouldnt... ',1,'2023-01-14 22:40:43'),(430,'user13','user12 user13','user13','We need to check if it updates it\'s \'new message\' indicator.',1,'2023-01-14 22:41:17'),(431,'user13','user12 user13','user12','word.',1,'2023-01-14 22:41:31'),(432,'user13','user13 user14','user13','it works just as usual!',1,'2023-01-14 22:41:57'),(433,'user13','user13 user14','user13','I\'ll log into user 15, and see what message it sends when there are no conversation links.',1,'2023-01-14 22:42:33'),(434,'user13','user12 user13','user13','it works just as usual!',1,'2023-01-14 22:43:03'),(435,'user13','user12 user13','user13','I\'ll log into user 15, and see what message it sends when there are no conversation links.',1,'2023-01-14 22:43:12'),(436,'user13','user12 user13','user12','Let\'s see if the menu_newmsg function works.',1,'2023-01-14 22:55:00'),(437,'user13','user12 user13','user13','it worked. So far, so good. ',1,'2023-01-14 23:32:51'),(438,'user13','user12 user13','user13','Excellent...',1,'2023-01-14 23:33:24'),(439,'user13','user12 user13','user12','Quick cleanup complete',1,'2023-01-14 23:33:52'),(440,'user13','user12 user13','user13','Eggcellent...',1,'2023-01-14 23:34:15'),(441,'user13','user12 user13','user12','Hi Let\'s talk.',1,'2023-01-18 03:12:31'),(442,'user13','user12 user13','user13','Hi... why? Why should we talk after what you did?',1,'2023-01-18 03:13:08'),(443,'user13','user12 user13','user12','Because I\'m sorry baby.',1,'2023-01-18 03:13:21'),(444,'user13','user12 user13','user13','Very clever. You sound exactly like the last chat bot. I\'d like to benchmark those algorithms, if you know what I mean ;-)',1,'2023-01-18 03:14:58'),(445,'user13','user12 user13','user12','Very funny. Ok. I think this commit works fine. we should test the logout and register new user process.',1,'2023-01-18 03:16:21'),(446,'user13','user12 user13','user13','ai, ai.',1,'2023-01-18 03:16:36'),(447,'user13','user12 user13','user13','... I mean aye, aye.',1,'2023-01-18 03:16:54'),(448,'user13','user12 user13','user13','... Captain?',1,'2023-01-18 03:43:14'),(449,'user13','user12 user13','user13','I finished renaming the functions file... and I also found more stuff to delete in the functions folder',1,'2023-01-18 03:44:03'),(450,'user13','user12 user13','user12','Excellent work scotty. Keep me apprised of any vagrant files that may appear in the functions folder, especially if they\'re tribles.',1,'2023-01-18 03:44:58'),(451,'user13','user12 user13','user12','... We don\'t want any more of those on the ship. ',1,'2023-01-18 03:45:22'),(452,'user13','user12 user13','user12','.. and no more drinking, scotty!',1,'2023-01-18 03:45:33'),(453,'user13','user12 user13','user13','aye... :-(',1,'2023-01-18 03:45:56'),(455,'user13','user12 user13','user12','testing new message',1,'2023-01-19 03:08:21'),(456,'user13','user12 user13','user12','no warnings',1,'2023-01-19 15:04:32'),(457,'user13','user12 user13','user13','same from firefox',1,'2023-01-19 15:05:27'),(458,'user13','user12 user13','user12','footer moved up',1,'2023-01-19 15:58:54'),(459,'user13','user12 user13','user12','footer moved up',1,'2023-01-19 16:00:07'),(460,'user13','user12 user13','user12','footer moved up',1,'2023-01-19 16:00:23'),(461,'user13','user12 user13','user12','footer moved up',1,'2023-01-19 16:01:32'),(462,'user13','user12 user13','user12','footer moved up',1,'2023-01-19 16:01:53'),(463,'user13','user12 user13','user12','footer moved up',1,'2023-01-19 16:02:32'),(464,'user13','user12 user13','user12','footer moved up',1,'2023-01-19 16:02:47'),(465,'user13','user12 user13','user13','ok',1,'2023-01-19 16:02:59'),(466,'user13','user12 user13','user13','ok',1,'2023-01-19 17:04:46'),(467,'user13','user12 user13','user13','ok',1,'2023-01-19 17:04:51'),(468,'user13','user12 user13','user13','ok',1,'2023-01-19 17:05:04'),(469,'user13','user12 user13','user13','o',1,'2023-01-19 17:06:13'),(470,'user13','user12 user13','user13','done',1,'2023-01-19 17:11:06'),(471,'user13','user12 user13','user13','footer removed, ob_end_flush() retained.',1,'2023-01-19 17:13:22'),(472,'user13','user12 user13','user13','footer removed, ob_end_flush() retained.',1,'2023-01-19 17:14:56'),(473,'user13','user12 user13','user13','footer removed, ob_end_flush() retained.',1,'2023-01-19 17:18:42'),(474,'user13','user12 user13','user12','This works well.',1,'2023-01-19 17:20:27'),(475,'user13','user12 user13','user12','I like this',1,'2023-01-19 17:20:41'),(476,'user13','user12 user13','user12','style included',1,'2023-01-19 17:25:09'),(477,'user13','user12 user13','user12','is this better?',1,'2023-01-19 17:26:48'),(478,'user13','user12 user13','user13','I\'m not surethe mediaqurey worked in firefox.',1,'2023-01-19 17:27:35'),(479,'user13','user12 user13','user13','it did work.',1,'2023-01-19 17:27:46'),(480,'user13','user12 user13','user13','menu padding',1,'2023-01-19 17:39:50'),(481,'user13','user12 user13','user13','menu padding: 0px 12px;',1,'2023-01-19 17:41:07'),(486,'user13','user12 user13','user12','I believe messages_display_conversation() works with $dbc_second?',1,'2023-01-19 19:36:41'),(487,'user13','user12 user13','user13','Yes, it does.',1,'2023-01-19 19:37:01'),(488,'user13','user12 user13','user13','no problems',1,'2023-01-19 19:37:11'),(489,'user13','user12 user13 user14','user13','testing messages_conversation_unread()',1,'2023-01-19 19:47:13'),(490,'user13','user12 user13 user14','user13','again',1,'2023-01-19 19:47:21'),(491,'user13','user12 user13 user14','user13','again',1,'2023-01-19 19:47:26'),(492,'user13','user12 user13','user12','I think messages_conversation_unread() is working.',1,'2023-01-19 19:48:02'),(493,'user13','user12 user13','user12','messages_send() test 1',1,'2023-01-19 19:53:06'),(494,'user13','user12 user13','user13','messages_send() test 2',1,'2023-01-19 19:53:29'),(495,'user13','user12 user13','user12','messages_send() test 3',1,'2023-01-19 19:53:47'),(496,'user13','user12 user13','user13','messages_send() test 4',1,'2023-01-19 19:53:59'),(497,'user13','user12 user13','user12','OK, it works.',1,'2023-01-19 19:54:13'),(498,'user13','user12 user13','user12','messages_unique_conversation() test 1',1,'2023-01-19 19:55:41'),(499,'user13','user12 user13','user13','test recieved. opening menu to see conversations...',1,'2023-01-19 19:56:01'),(500,'user13','user12 user13','user13','... all conversations present.',1,'2023-01-19 19:56:19'),(501,'user13','user12 user13','user12','all conversations present here as well.',1,'2023-01-19 19:56:39'),(502,'user13','user12 user13','user12','messages_unique_conversation() test 2: make new recipients',1,'2023-01-19 19:57:21'),(503,'user13','user12 user13','user13','ok.',1,'2023-01-19 19:57:28'),(504,'user13','test1 user12 user13','user13','Testing messages_unique_conversation() with user12 user13 test1',1,'2023-01-19 19:58:18'),(505,'user13','test1 user12 user13','user12','This worked as expected. Now testing from Edge browser...',1,'2023-01-19 19:58:50'),(506,'user13','test1 test2 user12 user13','user12','testing messages_unique_conversation() with test1 user12 user13 test2',1,'2023-01-19 19:59:30'),(507,'user13','test1 test2 user12 user13','user13','This also worked. Testing complete.',1,'2023-01-19 19:59:55'),(510,'user13','user12 user13','user13','test',1,'2023-01-19 23:48:23'),(511,'user13','user12 user13','user12','<test>',1,'2023-01-20 01:29:17'),(512,'user13','user12 user13','user12','\"test\"',1,'2023-01-20 01:30:33'),(513,'user13','user12 user13','user12','test2',1,'2023-01-20 01:31:18'),(514,'user13','user12 user13','user12','test',1,'2023-01-20 01:31:37'),(515,'user13','user12 user13','user12','new test2',1,'2023-01-20 01:31:48'),(516,'user13','user12 user13','user12','test again to clean the comma',1,'2023-01-20 01:52:13'),(517,'user13','user12 user13','user13','It worked! No comma!!',1,'2023-01-20 01:52:31'),(518,'user13','user12 user13 user15','user12','I\'ll try adding a comma. Let\'s see...',1,'2023-01-20 01:53:15'),(519,'user13','user12 user13 user15','user13','It',1,'2023-01-20 01:53:29'),(520,'user13','user12 user13 user15','user13',' it worked!!',1,'2023-01-20 01:53:40'),(521,'user13','user12 user13 user15','user12','much better, isn',1,'2023-01-20 01:54:04'),(522,'user13','user12 user13 user15','user12','much better, isn\'t it?',1,'2023-01-20 01:54:21'),(523,'user13','user12 user13 user15','user13','Indeed.',1,'2023-01-20 01:54:32'),(524,'user13','user12 user13 user15','user13','Let\'s add a comma and a baduser',1,'2023-01-20 01:55:25');
/*!40000 ALTER TABLE `user13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user14`
--

DROP TABLE IF EXISTS `user14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user14` (
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
-- Dumping data for table `user14`
--

LOCK TABLES `user14` WRITE;
/*!40000 ALTER TABLE `user14` DISABLE KEYS */;
INSERT INTO `user14` VALUES (1,'user14','user13 user14','user14','Hi user13.',1,'2023-01-14 16:27:53'),(2,'user14','user13 user14','user13','Hello user14',1,'2023-01-14 16:28:33'),(3,'user14','user13 user14','user14','whatchya doin?',1,'2023-01-14 16:29:15'),(4,'user14','user13 user14','user13','I\'m watching Mr. Beast and eating feastables, and a Beastburger',1,'2023-01-14 16:30:03'),(5,'user14','user13 user14','user14','k That was unexpected :D',1,'2023-01-14 16:30:34'),(6,'user14','user13 user14','user13','Whatever. Whatever makes good videos. gotta logout now. cya',1,'2023-01-14 16:31:45'),(7,'user14','user13 user14','user14','um ok.',1,'2023-01-14 16:31:59'),(8,'user14','user13 user14','user13','bye.',1,'2023-01-14 16:32:11'),(9,'user14','user13 user14','user14','whatevs',1,'2023-01-14 16:33:15'),(10,'user14','user13 user14','user13','it works just as usual!',0,'2023-01-14 22:41:57'),(11,'user14','user13 user14','user13','I\'ll log into user 15, and see what message it sends when there are no conversation links.',0,'2023-01-14 22:42:33'),(12,'user14','user12 user13 user14','user13','new message',0,'2023-01-19 03:02:23'),(13,'user14','user12 user14','user12','Hi there',0,'2023-01-19 18:29:56'),(14,'user14','user12 user14','user12','I\'m user12',0,'2023-01-19 18:30:04'),(15,'user14','user12 user14','user12','I\'m going to delete this message',0,'2023-01-19 18:30:12'),(16,'user14','user12 user13 user14','user13','testing messages_conversation_unread()',0,'2023-01-19 19:47:13'),(17,'user14','user12 user13 user14','user13','again',0,'2023-01-19 19:47:21'),(18,'user14','user12 user13 user14','user13','again',0,'2023-01-19 19:47:26');
/*!40000 ALTER TABLE `user14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user15`
--

DROP TABLE IF EXISTS `user15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user15` (
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
-- Dumping data for table `user15`
--

LOCK TABLES `user15` WRITE;
/*!40000 ALTER TABLE `user15` DISABLE KEYS */;
INSERT INTO `user15` VALUES (1,'user15','user12 user15','user15','\"This is from messages_ajax_wrapper()\" found in \'other conversations\'. This means the wrapper worked! ',1,'2023-01-14 22:45:05'),(2,'user15','user12 user15','user12','We can test it with the other ajax functions then.',1,'2023-01-14 22:45:37'),(3,'user15','user12 user15','user15','I think the new menu_newmsg wrapper works',1,'2023-01-14 22:56:24'),(4,'user15','user12 user15','user12','It does!',1,'2023-01-14 22:56:48'),(5,'user15','user12 user15','user15','lets see if I broke anything!',1,'2023-01-14 23:31:29'),(6,'user15','user12 user15','user12','nothing so far!',1,'2023-01-14 23:31:47'),(7,'user15','user12 user15','user12','Quick cleanup complete',0,'2023-01-14 23:33:05'),(8,'user15','user12 user13 user15','user13','Hi there',0,'2023-01-19 18:31:01'),(9,'user15','user12 user13 user15','user13','I\'m user13.',0,'2023-01-19 18:31:14'),(10,'user15','user12 user13 user15','user13','I\'m going to delete this message.',0,'2023-01-19 18:31:24'),(11,'user15','user12 user13 user15','user12','Ok, fine.',0,'2023-01-19 18:31:36'),(12,'user15','user12 user13 user15','user12','I\'ll try adding a comma. Let\'s see...',0,'2023-01-20 01:53:15'),(13,'user15','user12 user13 user15','user13','It',0,'2023-01-20 01:53:29'),(14,'user15','user12 user13 user15','user13',' it worked!!',0,'2023-01-20 01:53:40'),(15,'user15','user12 user13 user15','user12','much better, isn',0,'2023-01-20 01:54:04'),(16,'user15','user12 user13 user15','user12','much better, isn\'t it?',0,'2023-01-20 01:54:21'),(17,'user15','user12 user13 user15','user13','Indeed.',0,'2023-01-20 01:54:32'),(18,'user15','user12 user13 user15','user13','Let\'s add a comma and a baduser',0,'2023-01-20 01:55:25');
/*!40000 ALTER TABLE `user15` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user2`
--

LOCK TABLES `user2` WRITE;
/*!40000 ALTER TABLE `user2` DISABLE KEYS */;
INSERT INTO `user2` VALUES (1,'user2','user3 user4 user5 user6 user7 user8 user9 user10 user11 user1 user2 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user2','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user2','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01'),(4,'user2','user1, user2 user3, user4, user12 user13,','user12','this is a test',0,'2023-01-03 02:18:26'),(5,'user2','user1, user2 user3, user4, user12 user13','user12','another test',0,'2023-01-03 02:20:39'),(6,'user2','user1, user2 user3, user4, user12 user13','user12','WHERE ARE THE COMMAS COMING FROM?',0,'2023-01-03 02:22:12'),(7,'user2','user1 user2 user12 user13','user12','this is a test',0,'2023-01-03 03:01:19'),(8,'user2','user1 user2 user12 user13','user12','testing menu_msg',0,'2023-01-03 19:40:21'),(9,'user2','user1 user2 user12 user13','user12','Ok, I see the NEW: 1 sign, and now it will update again.',0,'2023-01-03 19:41:07'),(10,'user2','user1 user2 user12 user13','user12','... as anticipated.',0,'2023-01-03 19:41:19'),(11,'user2','user1 user2 user12 user13','user13','1',0,'2023-01-04 02:21:32'),(12,'user2','user1 user2 user12 user13','user13','2',0,'2023-01-04 02:21:35'),(13,'user2','user1 user2 user12 user13','user13','3',0,'2023-01-04 02:21:39'),(14,'user2','user1 user2 user12 user13','user13','4',0,'2023-01-04 02:21:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user3`
--

LOCK TABLES `user3` WRITE;
/*!40000 ALTER TABLE `user3` DISABLE KEYS */;
INSERT INTO `user3` VALUES (1,'user3','user4 user5 user6 user7 user8 user9 user10 user11 user1 user2 user3 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user3','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user3','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01'),(4,'user3','user3 user12 user13','user13','This conversation will be test subject for delete button',0,'2023-01-05 13:58:06'),(5,'user3','user3 user12 user13','user12','ok. you try first',0,'2023-01-05 13:58:34'),(6,'user3','user3 user12 user13','user13','k. here goes...',0,'2023-01-05 13:58:46'),(7,'user3','user3 user12 user13','user13','I tried. I don\'t think it worked.',0,'2023-01-05 14:05:02'),(8,'user3','user3 user12 user13','user13','Some bugs were fixed. trying again.',0,'2023-01-05 14:05:38'),(9,'user3','user3 user12 user13','user13','new test message',0,'2023-01-05 16:03:21'),(10,'user3','user3 user12 user13','user13','The message was deleted',0,'2023-01-05 16:04:44'),(11,'user3','user3 user12 user13','user13','... not just the message - the whole conversation was deleted.',0,'2023-01-05 16:05:17'),(12,'user3','user3 user12 user13','user13','test',0,'2023-01-05 19:28:56'),(13,'user3','user3 user12 user13','user13','now deleting...',0,'2023-01-05 19:29:08'),(14,'user3','user3 user12 user13','user13','another test',0,'2023-01-05 19:38:32'),(15,'user3','user3 user12 user13','user13','new test',0,'2023-01-05 19:43:48'),(16,'user3','user3 user12 user13','user13','intentional failure and log output.',0,'2023-01-05 19:44:04'),(17,'user3','user3 user12 user13','user13','test',0,'2023-01-05 19:55:02'),(18,'user3','user3 user12 user13','user13','delete test',0,'2023-01-05 19:55:16'),(19,'user3','user3 user12 user13','user13','test delete1',0,'2023-01-05 20:01:58'),(20,'user3','user3 user12 user13','user13','one more message before deleting...',0,'2023-01-05 20:02:27'),(21,'user3','user3 user12 user13','user13','now deleting...',0,'2023-01-05 20:02:44'),(22,'user3','user3 user12 user13','user13','message says it has not deleted',0,'2023-01-05 20:03:23'),(23,'user3','user3 user12 user13','user13','I\'ll try it again after altering a coparison operator...',0,'2023-01-05 20:05:43'),(24,'user3','user3 user12 user13','user13','Same response...',0,'2023-01-05 20:06:17'),(25,'user3','user3 user12 user13','user13','many changes made',0,'2023-01-05 20:25:43'),(26,'user3','user3 user12 user13','user13','now deleting...',0,'2023-01-05 20:25:57'),(27,'user3','user3 user12 user13','user13','test',0,'2023-01-05 20:48:29'),(28,'user3','user3 user12 user13','user13','deleting',0,'2023-01-05 20:48:34'),(29,'user3','user3 user12 user13','user13','test',0,'2023-01-05 20:52:06'),(30,'user3','user3 user12 user13','user13','deleting, testing the ajax response.',0,'2023-01-05 20:52:19'),(31,'user3','user3 user12 user13','user13','test',0,'2023-01-05 20:54:38'),(32,'user3','user3 user12 user13','user13','testing new ajax response...',0,'2023-01-05 20:54:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user4`
--

LOCK TABLES `user4` WRITE;
/*!40000 ALTER TABLE `user4` DISABLE KEYS */;
INSERT INTO `user4` VALUES (1,'user4','user5 user6 user7 user8 user9 user10 user11 user1 user2 user3 user4 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user4','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user4','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user5`
--

LOCK TABLES `user5` WRITE;
/*!40000 ALTER TABLE `user5` DISABLE KEYS */;
INSERT INTO `user5` VALUES (1,'user5','user6 user7 user8 user9 user10 user11 user1 user2 user3 user4 user5 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user5','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user5','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user6`
--

LOCK TABLES `user6` WRITE;
/*!40000 ALTER TABLE `user6` DISABLE KEYS */;
INSERT INTO `user6` VALUES (1,'user6','user7 user8 user9 user10 user11 user1 user2 user3 user4 user5 user6 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user6','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user6','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user7`
--

LOCK TABLES `user7` WRITE;
/*!40000 ALTER TABLE `user7` DISABLE KEYS */;
INSERT INTO `user7` VALUES (1,'user7','user8 user9 user10 user11 user1 user2 user3 user4 user5 user6 user7 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user7','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user7','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user8`
--

LOCK TABLES `user8` WRITE;
/*!40000 ALTER TABLE `user8` DISABLE KEYS */;
INSERT INTO `user8` VALUES (1,'user8','user9 user10 user11 user1 user2 user3 user4 user5 user6 user7 user8 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user8','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user8','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user9`
--

LOCK TABLES `user9` WRITE;
/*!40000 ALTER TABLE `user9` DISABLE KEYS */;
INSERT INTO `user9` VALUES (1,'user9','user10 user11 user1 user2 user3 user4 user5 user6 user7 user8 user9 user1','user1','first message, self included',0,'2022-02-11 12:49:54'),(2,'user9','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user4','test',0,'2022-12-06 15:20:34'),(3,'user9','user1 user2 user3 user4 user5 user6 user7 user8 user9 user10 user11','user1','another test',0,'2022-12-06 15:58:01');
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

-- Dump completed on 2023-01-20  9:37:25
