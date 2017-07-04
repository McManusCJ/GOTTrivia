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
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES ('¿A que casa pertenece este emblema?','houseArryn.png','Casa Arryn','Casa Greyjoy','Tully','Tyrell','Casa Arryn','Banners',1,'2017-07-04 10:28:13','2017-07-04 10:28:13'),('¿A que casa pertenece este emblema?','houseBaratheon.png','Casa Lannister','Casa Mormont','Casa Baratheon','Casa Stark','Casa Baratheon','Banners',2,'2017-07-04 10:32:36','2017-07-04 10:45:01'),('¿A que casa pertenece este emblema?','houseBolton.png','Casa Lannister','Casa Tarly','Casa Baratheon','Casa Bolton','Casa Bolton','Banners',3,'2017-07-04 10:33:44','2017-07-04 10:45:31'),('¿A que casa pertenece este emblema?','houseFrey.png','Casa Tarly','Casa Frey','Casa Hightower','Casa Karstark','Casa Frey','Banners',4,'2017-07-04 10:39:01','2017-07-04 10:39:01'),('¿A que casa pertenece este emblema?','houseGreyjoy.png','Casa Karstark','Casa Mormont','Casa Greyjoy','Casa Tully','Casa Greyjoy','Banners',5,'2017-07-04 10:40:38','2017-07-04 10:40:38'),('¿A que casa pertenece este emblema?','houseHightower.png','Casa Frey','Casa Hightower','Casa Greyjoy','Casa Tarly','Casa Hightower','Banners',6,'2017-07-04 10:47:08','2017-07-04 10:47:08'),('¿A que casa pertenece este emblema?','houseKarstark.png','Casa Karstark','Casa Hightower','Casa Starky','Casa Greyjoy','Casa Karstark','Banners',7,'2017-07-04 10:48:21','2017-07-04 10:48:21'),('¿A que casa pertenece este emblema?','houseLannister.png','Casa Stark','Casa Bolton','Casa Baratheon','Casa Lannister','Casa Lannister','Banners',8,'2017-07-04 10:49:49','2017-07-04 10:49:49'),('¿A que casa pertenece este emblema?','houseMartell.png','Casa Martell','Casa Tyrell','Casa Targaryen','Casa Mormont','Casa Martell','Banners',9,'2017-07-04 10:52:15','2017-07-04 10:53:18'),('¿A que casa pertenece este emblema?','houseMormont.png','CAsa Martell','Casa Stark','Casa Mormont','Casa Frey','Casa Mormont','Banners',10,'2017-07-04 10:54:21','2017-07-04 10:54:21'),('¿A que casa pertenece este emblema?','houseStark.png','Casa Karstark','Casa Stark','Casa Tully','Casa Baratheon','Casa Stark','Banners',11,'2017-07-04 10:57:33','2017-07-04 11:02:45'),('¿A que casa pertenece este emblema?','houseTargaryen.png','Casa Targaryen','Casa Stark','Casa Hightower','Casa Baratheon','Casa Targaryen','Banners',12,'2017-07-04 11:00:14','2017-07-04 11:00:14'),('¿A que casa pertenece este emblema?','houseTarly.png','Casa Targaryen','Casa Tarly','Casa Tully','Casa Tyrell','Casa Tarly','Banners',13,'2017-07-04 11:01:20','2017-07-04 11:01:20'),('¿A que casa pertenece este emblema?','houseTully.png','Casa Targaryen','Casa Tarly','Casa Tully','Casa Tyrell','Casa Tully','Banners',14,'2017-07-04 11:01:53','2017-07-04 11:01:53'),('¿A que casa pertenece este emblema?','houseTyrell.png','Casa Targaryen','Casa Tarly','Casa Tully','Casa Tyrell','Casa Tyrell','Banners',15,'2017-07-04 11:02:10','2017-07-04 11:02:10'),('Jon Arryn',NULL,'Envenenado por su esposa Lysa, en complot con Littlefinger','Envenenado por Cersei','Envenenado por Littleginger en complot con Cersei','Casa Apuñalado por el ejercito Lannister','Envenenado por su esposa Lysa, en complot con Littlefinger','Deaths',16,'2017-07-04 11:23:03','2017-07-04 11:23:03'),('Mycah',NULL,'Asesinado por Ilyn Payne','Asesinado por Arya, con Needle','Asesinado por The Hound por ordenes de Joffrey','Asesinado por joffreycon su espada','Asesinado por The Hound por ordenes de Joffrey','Deaths',17,'2017-07-04 11:28:08','2017-07-04 11:28:08'),('Robert Baratheon',NULL,'Envenenado por Lancel Lannister','Atacado por un oso mientras cazaba','Muere por intentar cazar un jabali, estando ebrio','Envenenado por Lancel, bajo ordenes de Cersei','Muere por intentar cazar un jabali, estando ebrio','Deaths',18,'2017-07-04 11:31:06','2017-07-04 11:31:06'),('Joer Mormont',NULL,'Asesinado por Rast en el motin de Crasters Keep','Lo asesina un White Walker en Castle Black','Lo mata Jon Snow, en un intento por probar su lealtad a los salvajes','Asesinado por Craster en el motin de su hogar','Asesinado por Rast en el motin de Crasters Keep','Deaths',19,'2017-07-04 11:37:42','2017-07-04 11:37:42'),('Joffrey Baratheon',NULL,'Envenenado por Oleanna Tyrell, en complot con Peter Baelish, en su boda','Envenenado por Tyrion Lannister en su boda','Degollado por un soldado','Envenenado por Lord Varys en su boda','Envenenado por Oleanna Tyrell, en complot con Peter Baelish, en su boda','Deaths',20,'2017-07-04 11:42:15','2017-07-04 11:43:41'),('Jojen Reed',NULL,'Apuñalado por Wights','Degollado por Meera','Quemado en el motin de Crasters Keep','Por una explosion magica de los Niños del Bosque','Degollado por Meera','Deaths',21,'2017-07-04 11:52:01','2017-07-04 11:52:01'),('Selyse Baratheon',NULL,'La cuelgan los hombres de Stannis','Se cuelga por culpa','Muere en la guerra de Winterfell','Melisandre la ofrece como sacrificio','Se cuelga por culpa','Deaths',22,'2017-07-04 11:54:08','2017-07-04 11:54:08'),('Olly',NULL,'En un ataque de los salvajes a su aldea','Colgado por traicionar al Lord Commander','Apuñalado por Jon Snow','En la batalla de Castle Black contra los salvajes','Colgado por traicionar al Lord Commander','Deaths',23,'2017-07-04 11:56:30','2017-07-04 11:56:30'),('Stannis Baratheon',NULL,'Desollado por Ramsay Bolton','Brienne le corta la cabeza por haber asesinado a Renly','En la batalla de Winterfell','Asesinado por su esposa, Selyse','Brienne le corta la cabeza por haber asesinado a Renly','Deaths',24,'2017-07-04 12:00:23','2017-07-04 12:00:23'),('Jon Umber',NULL,'Apuñalado en la cabeza por Tormund','Apuñalado por Jon Snow','Lo atraviesa una flecha en la Batalla de los Bastardos','Desollado por Ramsay Snow','Apuñalado en la cabeza por Tormund','Deaths',25,'2017-07-04 12:02:48','2017-07-04 12:02:48'),('Grey Wind',NULL,'Defendiendo a Robb en la Boda Roja','Los Frey le disparan con una ballesta','The Hound lo asesina por ordenes de Joffrey','Le cortan la cabeza para ponersela al cadaver de Robb','Los Frey le disparan con una ballesta','Deaths',26,'2017-07-04 12:05:05','2017-07-04 12:05:05'),('Myrcella Baratheon',NULL,'Degollada por las Sand Snakes','Asesinada por Trystane con una lanza','Envenenada por Ellaria Sand','Envenenada por el principe de Dorne','Envenenada por Ellaria Sand','Deaths',27,'2017-07-04 12:07:30','2017-07-04 12:07:30'),('Ramsay Bolton',NULL,'Se lo comen sus sabuesos','Golpeado por Jon Snow','Se lo como una manada de lobos huargos','Sansa Stark lo apuñala','Se lo comen sus sabuesos','Deaths',28,'2017-07-04 12:09:22','2017-07-04 12:09:22'),('Khal Drogo',NULL,'Por una herida de guerra','Murio en combate','Asfixiado por Daenerys','Asesinado por la bruja Mirri Maz Duur','Asfixiado por Daenerys','Deaths',29,'2017-07-04 12:11:53','2017-07-04 12:11:53'),('Lyanna Stark',NULL,'Desangrada, despues de dar a luz','Secuestrada por Rhaegar Targaryen','Apuñalada por Arthur Dayne','Apuñalada en el vientre por un soldado Targaryen','Desangrada, despues de dar a luz','Deaths',30,'2017-07-04 12:14:19','2017-07-04 12:14:19');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-04 12:28:14
