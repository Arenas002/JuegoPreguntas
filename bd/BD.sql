-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: pregunta
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `difficultyId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `difficultyId` (`difficultyId`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`difficultyId`) REFERENCES `difficulty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Cultura',1),(2,'Geografia',2),(3,'Deportes',3),(4,'Ciencia',4),(5,'Historia',5);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `difficulty`
--

DROP TABLE IF EXISTS `difficulty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `difficulty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `difficultylevel` int NOT NULL,
  `roundId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roundId` (`roundId`),
  CONSTRAINT `difficulty_ibfk_1` FOREIGN KEY (`roundId`) REFERENCES `round` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `difficulty`
--

LOCK TABLES `difficulty` WRITE;
/*!40000 ALTER TABLE `difficulty` DISABLE KEYS */;
INSERT INTO `difficulty` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5);
/*!40000 ALTER TABLE `difficulty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option`
--

DROP TABLE IF EXISTS `option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `option` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) NOT NULL,
  `isTrue` tinyint NOT NULL,
  `questionId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questionId` (`questionId`),
  CONSTRAINT `option_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option`
--

LOCK TABLES `option` WRITE;
/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` VALUES (1,'Medellin',0,1),(2,'CALI',1,1),(3,'bucaramanga',0,1),(4,'barranquilla',0,1),(5,'Ciudad de mexico',1,2),(6,'Cancún',0,2),(7,'Puebla ',0,2),(8,'Tijuana',0,2),(9,'El padre Gregorio Magno',0,3),(10,'El presidente Duque ',0,3),(11,'El papa Benedicto XVI',0,3),(12,'El papa Fransisco',1,3),(13,'amarillo, azul y rojo',1,4),(14,'verde, amarillo y azul',0,4),(15,'negro, blanco y rojo',0,4),(16,'morado, naranja y marron',0,4),(17,'residuo',0,5),(18,'suma',0,5),(19,'producto',1,5),(20,'potencia',0,5),(21,'Uruguay',0,6),(22,'Chile',0,6),(23,'Brazil',0,6),(24,'Colombia',1,6),(25,'El océano índico',0,7),(26,'El océano atlántico',0,7),(27,'El océano Pacífico',1,7),(28,'El océano ártico',0,7),(29,'Barranquilla',0,8),(30,'Santa Marta',1,8),(31,'Cartagena',0,8),(32,'San Andres Islas',0,8),(33,'Colombia',1,9),(34,'Brasil',0,9),(35,'Peru',0,9),(36,'Argentina',0,9),(37,'pico Bolívar',0,10),(38,'Everest',1,10),(39,'Nevado del tolima',0,10),(40,'Makalu',0,10),(41,'Alemania',0,11),(42,'Colombia',0,11),(43,'España',1,11),(44,'Brasil',0,11),(45,'Real Madrid',1,12),(46,'Atlético de Madrid',0,12),(47,'Inter de milan',0,12),(48,'FC Barcelona',0,12),(49,'Alemania',0,13),(50,'Brasil',1,13),(51,'España',0,13),(52,'Italia',0,13),(53,'james rodríguez',0,14),(54,'ronaldinho',0,14),(55,'Cristiano ronaldo',0,14),(56,'Lionel Messi',1,14),(57,'Cuatro',0,15),(58,'Tres',0,15),(59,'Cinco',1,15),(60,'Dos',0,15),(61,'206 huesos',1,16),(62,'310 huesos',0,16),(63,'189 huesos',0,16),(64,'108 huesos',0,16),(65,'Euclides',0,17),(66,'Issac Newton',0,17),(67,'Blaise Pascal',1,17),(68,'Cristóbal Colón',0,17),(69,'A disminiur',0,18),(70,'A anularse',0,18),(71,'A aumentar',1,18),(72,'A permanecer constante',0,18),(73,'Nitrogeno',0,19),(74,'Fosforo',0,19),(75,'Carbono',0,19),(76,'hidrógeno',1,19),(77,'La glándula pineal',0,20),(78,'La glándula tiroides',1,20),(79,'La glándula pituitaria',0,20),(80,'páncreas',0,20),(81,'Español',0,21),(82,'Aleman',0,21),(83,'Vasco',1,21),(84,'Mandarin',0,21),(85,'policarpa salavarrieta',0,22),(86,'Antonia Teresa Santos',0,22),(87,'María de la Concepción Palacios',0,22),(88,'Mara Teresa Del Toro y Alayza',1,22),(89,'Socrates',1,23),(90,'platon',0,23),(91,'Enstein',0,23),(92,'Aristoteles ',0,23),(93,'Amosis I',0,24),(94,'Ramsés III',1,24),(95,'Ptolomeo III',0,24),(96,'Jesus de Nasaret',0,24),(97,'1997',0,25),(98,'1876',0,25),(99,'1965',0,25),(100,'1989',1,25);
/*!40000 ALTER TABLE `option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerprize`
--

DROP TABLE IF EXISTS `playerprize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerprize` (
  `id` int NOT NULL AUTO_INCREMENT,
  `totalmoney` float NOT NULL,
  `totalpoint` float NOT NULL,
  `playerId` int NOT NULL,
  `roundId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `playerId` (`playerId`),
  KEY `roundId` (`roundId`),
  CONSTRAINT `playerprize_ibfk_1` FOREIGN KEY (`playerId`) REFERENCES `player` (`id`),
  CONSTRAINT `playerprize_ibfk_2` FOREIGN KEY (`roundId`) REFERENCES `round` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerprize`
--

LOCK TABLES `playerprize` WRITE;
/*!40000 ALTER TABLE `playerprize` DISABLE KEYS */;
/*!40000 ALTER TABLE `playerprize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premio`
--

DROP TABLE IF EXISTS `premio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `quantity` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premio`
--

LOCK TABLES `premio` WRITE;
/*!40000 ALTER TABLE `premio` DISABLE KEYS */;
INSERT INTO `premio` VALUES (1,'Dinero',5200),(2,'Puntos',300);
/*!40000 ALTER TABLE `premio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) NOT NULL,
  `categoryId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'¿ En qué ciudad dicen la frase \"Las caleñas son como las flores?',1),(2,'¿Cuál es la capital de México?',1),(3,'¿Quién es ahora mismo el máximo representante de la Iglesia?',1),(4,'¿Cuáles son los tres colores primarios?',1),(5,'¿Cómo se llama al resultado de una multiplicación?',1),(6,'¿Qué país cuenta con el 60% de los paramos del mundo?',2),(7,'C¿Cuál es el océano más grande del mundo?',2),(8,'¿Dónde está ubicada la perla de América?',2),(9,'¿Dónde se ubica el paramo de oceta?',2),(10,'¿Cuál es la montaña más alta del mundo?',2),(11,'¿Quién ganó el mundial de fútbol de 2010?',3),(12,'¿Cuál es el club de fútbol con más Champions?',3),(13,'¿Qué selección de fútbol tiene más mundiales?',3),(14,'¿Cuál es el futbolista con más balones de oro?',3),(15,'¿Cuántos anillos hay en la bandera olímpica?',3),(16,'¿Cuántos huesos tiene el cuerpo humano?',4),(17,'¿Quién invento la presion hidráulica?',4),(18,'¿Qué tiende a hacer la entropia en el universo?',4),(19,'¿Cuál es el primer elemento de la tabla periódica?',4),(20,'¿Qué órgano tenemos en el cuello y se encarga de producir hormonas?',4),(21,'¿Cuál es el idioma más antiguo en Europa?',5),(22,'¿cómo se llamaba la esposa de Simón bolivar?',5),(23,'¿Quién dijo: \"El hombre que es capaz de perder una hora de tiempo no ha descubierto el valor de la vida\".?',5),(24,'¿Quién fue el último faraón de Egipto?',5),(25,'¿En qué año cayó el muro de Berlín?',5);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `round`
--

DROP TABLE IF EXISTS `round`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `round` (
  `id` int NOT NULL AUTO_INCREMENT,
  `round` int NOT NULL,
  `premioId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `premioId` (`premioId`),
  CONSTRAINT `round_ibfk_1` FOREIGN KEY (`premioId`) REFERENCES `premio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `round`
--

LOCK TABLES `round` WRITE;
/*!40000 ALTER TABLE `round` DISABLE KEYS */;
INSERT INTO `round` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1);
/*!40000 ALTER TABLE `round` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-25 10:43:16
