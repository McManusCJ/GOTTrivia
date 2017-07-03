-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

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
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `question` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `answer1` varchar(255) DEFAULT NULL,
  `answer2` varchar(255) DEFAULT NULL,
  `answer3` varchar(255) DEFAULT NULL,
  `answer4` varchar(255) DEFAULT NULL,
  `correctAnswer` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES ('Â¿A que casa pertenece este emblema?','houseArryn.png','Casa Tarly','Casa Karstark','Casa Arryn','Casa Tully','Casa Arryn','logos',1,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseBaratheon.png','Casa Baratheon','Casa Bolton','Casa Arryn','Casa Mormont','Casa Baratheon','logos',2,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseBolton.png','Casa Tarly','Casa Karstark','Casa Lannister','Casa Bolton','Casa Bolton','logos',3,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseFrey.png','Casa Greyjoy','Casa Frey','Casa Arryn','Casa Hightower','Casa Frey','logos',4,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseGreyjoy.png','Casa Greyjoy','Casa Karstark','Casa Arryn','Casa Tully','Casa Greyjoy','logos',5,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseHightower.png','Casa Frey','Casa Stark','Casa Tyrell','Casa Hightower','Casa Hightower','logos',6,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseKarstark.png','Casa Tyrell','Casa Karstark','Casa Martell','Casa Targaryen','Casa Karstark','logos',7,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseLannister.png','Casa Baratheon','Casa Stark','Casa Lannister','Casa Mormont','Casa Lannister','logos',8,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseMartell.png','Casa Tully','Casa Karstark','Casa Martell','Casa Tyrell','Casa Martell','logos',9,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseMormont.png','Casa Tarly','Casa Karstark','Casa Greyjoy','Casa Mormont','Casa Mormont','logos',10,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseStark.png','Casa Lannister','Casa Stark','Casa Baratheon','Casa Targaryen','Casa Stark','logos',11,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseTargaryen.png','Casa Tarly','Casa Targaryen','Casa Hightower','Casa Tully','Casa Targaryen','logos',12,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseTarly.png','Casa Tarly','Casa Arryn','Casa Bolton','Casa Tully','Casa Tarly','logos',13,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseTully.png','Casa Tarly','Casa Karstark','Casa Arryn','Casa Tully','Casa Tully','logos',14,NULL,NULL),('\r\nÂ¿A que casa pertenece este emblema?','houseTyrell.png','Casa Tarly','Casa Martell','Casa Arryn','Casa Tyrell','Casa Tyrell','logos',15,NULL,NULL);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-30 19:03:40
