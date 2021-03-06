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
INSERT INTO `option` VALUES (1,'Medellin',0,1),(2,'CALI',1,1),(3,'bucaramanga',0,1),(4,'barranquilla',0,1),(5,'Ciudad de mexico',1,2),(6,'Canc??n',0,2),(7,'Puebla ',0,2),(8,'Tijuana',0,2),(9,'El padre Gregorio Magno',0,3),(10,'El presidente Duque ',0,3),(11,'El papa Benedicto XVI',0,3),(12,'El papa Fransisco',1,3),(13,'amarillo, azul y rojo',1,4),(14,'verde, amarillo y azul',0,4),(15,'negro, blanco y rojo',0,4),(16,'morado, naranja y marron',0,4),(17,'residuo',0,5),(18,'suma',0,5),(19,'producto',1,5),(20,'potencia',0,5),(21,'Uruguay',0,6),(22,'Chile',0,6),(23,'Brazil',0,6),(24,'Colombia',1,6),(25,'El oc??ano ??ndico',0,7),(26,'El oc??ano atl??ntico',0,7),(27,'El oc??ano Pac??fico',1,7),(28,'El oc??ano ??rtico',0,7),(29,'Barranquilla',0,8),(30,'Santa Marta',1,8),(31,'Cartagena',0,8),(32,'San Andres Islas',0,8),(33,'Colombia',1,9),(34,'Brasil',0,9),(35,'Peru',0,9),(36,'Argentina',0,9),(37,'pico Bol??var',0,10),(38,'Everest',1,10),(39,'Nevado del tolima',0,10),(40,'Makalu',0,10),(41,'Alemania',0,11),(42,'Colombia',0,11),(43,'Espa??a',1,11),(44,'Brasil',0,11),(45,'Real Madrid',1,12),(46,'Atl??tico de Madrid',0,12),(47,'Inter de milan',0,12),(48,'FC Barcelona',0,12),(49,'Alemania',0,13),(50,'Brasil',1,13),(51,'Espa??a',0,13),(52,'Italia',0,13),(53,'james rodr??guez',0,14),(54,'ronaldinho',0,14),(55,'Cristiano ronaldo',0,14),(56,'Lionel Messi',1,14),(57,'Cuatro',0,15),(58,'Tres',0,15),(59,'Cinco',1,15),(60,'Dos',0,15),(61,'206 huesos',1,16),(62,'310 huesos',0,16),(63,'189 huesos',0,16),(64,'108 huesos',0,16),(65,'Euclides',0,17),(66,'Issac Newton',0,17),(67,'Blaise Pascal',1,17),(68,'Crist??bal Col??n',0,17),(69,'A disminiur',0,18),(70,'A anularse',0,18),(71,'A aumentar',1,18),(72,'A permanecer constante',0,18),(73,'Nitrogeno',0,19),(74,'Fosforo',0,19),(75,'Carbono',0,19),(76,'hidr??geno',1,19),(77,'La gl??ndula pineal',0,20),(78,'La gl??ndula tiroides',1,20),(79,'La gl??ndula pituitaria',0,20),(80,'p??ncreas',0,20),(81,'Espa??ol',0,21),(82,'Aleman',0,21),(83,'Vasco',1,21),(84,'Mandarin',0,21),(85,'policarpa salavarrieta',0,22),(86,'Antonia Teresa Santos',0,22),(87,'Mar??a de la Concepci??n Palacios',0,22),(88,'Mara Teresa Del Toro y Alayza',1,22),(89,'Socrates',1,23),(90,'platon',0,23),(91,'Enstein',0,23),(92,'Aristoteles ',0,23),(93,'Amosis I',0,24),(94,'Rams??s III',1,24),(95,'Ptolomeo III',0,24),(96,'Jesus de Nasaret',0,24),(97,'1997',0,25),(98,'1876',0,25),(99,'1965',0,25),(100,'1989',1,25);
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
INSERT INTO `question` VALUES (1,'?? En qu?? ciudad dicen la frase \"Las cale??as son como las flores?',1),(2,'??Cu??l es la capital de M??xico?',1),(3,'??Qui??n es ahora mismo el m??ximo representante de la Iglesia?',1),(4,'??Cu??les son los tres colores primarios?',1),(5,'??C??mo se llama al resultado de una multiplicaci??n?',1),(6,'??Qu?? pa??s cuenta con el 60% de los paramos del mundo?',2),(7,'C??Cu??l es el oc??ano m??s grande del mundo?',2),(8,'??D??nde est?? ubicada la perla de Am??rica?',2),(9,'??D??nde se ubica el paramo de oceta?',2),(10,'??Cu??l es la monta??a m??s alta del mundo?',2),(11,'??Qui??n gan?? el mundial de f??tbol de 2010?',3),(12,'??Cu??l es el club de f??tbol con m??s Champions?',3),(13,'??Qu?? selecci??n de f??tbol tiene m??s mundiales?',3),(14,'??Cu??l es el futbolista con m??s balones de oro?',3),(15,'??Cu??ntos anillos hay en la bandera ol??mpica?',3),(16,'??Cu??ntos huesos tiene el cuerpo humano?',4),(17,'??Qui??n invento la presion hidr??ulica?',4),(18,'??Qu?? tiende a hacer la entropia en el universo?',4),(19,'??Cu??l es el primer elemento de la tabla peri??dica?',4),(20,'??Qu?? ??rgano tenemos en el cuello y se encarga de producir hormonas?',4),(21,'??Cu??l es el idioma m??s antiguo en Europa?',5),(22,'??c??mo se llamaba la esposa de Sim??n bolivar?',5),(23,'??Qui??n dijo: \"El hombre que es capaz de perder una hora de tiempo no ha descubierto el valor de la vida\".?',5),(24,'??Qui??n fue el ??ltimo fara??n de Egipto?',5),(25,'??En qu?? a??o cay?? el muro de Berl??n?',5);
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
