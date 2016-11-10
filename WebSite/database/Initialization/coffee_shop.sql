-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: coffee_shop
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `baked_good`
--

DROP TABLE IF EXISTS `baked_good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baked_good` (
  `bake_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`bake_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baked_good`
--

LOCK TABLES `baked_good` WRITE;
/*!40000 ALTER TABLE `baked_good` DISABLE KEYS */;
INSERT INTO `baked_good` VALUES (1,'Cinnamon Roll','A coffee shop classic. A sweet flakey roll with our patented cinnamon icing. Simply melts in your mouth.',1.75),(2,'Danish','A flakey pastry with fresh, sweet fruits baked in. A great way to start your day.',2.00),(3,'Croissant','Like a danish, but skip the fruits. Great for someone on the go.',1.50),(4,'Fresh Muffin','Our delectable muffins are always warm and fresh. Comes in Plain, Blueberry, Banana Nut, or Triple Chocolate.',1.10),(5,'Fresh Cookie','Baked fresh every day, you can\'t go wrong. Comes in Sugar, Snickerdoodle, Chocolate chip, and Oatmeal.',0.85),(6,'Scone','Similar to our muffins, but lighter and softer.',1.10),(7,'Biscotti','Italian almond buscuits, twice-baked for a delightfully crunchy texture.',1.25);
/*!40000 ALTER TABLE `baked_good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coffee`
--

DROP TABLE IF EXISTS `coffee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coffee` (
  `coffee_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`coffee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coffee`
--

LOCK TABLES `coffee` WRITE;
/*!40000 ALTER TABLE `coffee` DISABLE KEYS */;
INSERT INTO `coffee` VALUES (1,'Espresso','A small shot of caffeine, but more than enough to get the job done.',3.45),(2,'Macchiato','A shot of caffeine with a heavenly touch of foamed milk.',3.60),(3,'Latte','Some espresso mixed with rich steamed milk and a dallop of foamed milk.',3.75),(4,'Mocha','Our patented blend of espresso, chocolate, and milk. Prefect if you want something sweet.',3.75),(5,'Cappuccino','Equal parts espresso, foamed milk, and steamed milk.',3.65),(6,'Americano','Like espresso, but with double the standard amount of water. Perfect if you want something that lasts.',3.00),(7,'Ristretto','A concentrated shot of espresso. Straight and to the point.',3.00),(8,'Doppio','An espresso with double the caffeine. Great for those extra early mornings.',3.75),(9,'Cafe Au Lait','For those that just want straight coffee with milk. No espresso. No complications.',2.50);
/*!40000 ALTER TABLE `coffee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `cust_login_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,'Customer_1','kljsd','Timmy','Evans','1231112222','1234 Test Ln','Portage','MI',49024),(2,1,'Customer_2','asdg','Jeanette','McGalliger','1232223333','2345 Test Ln','Portage','MI',49024),(3,1,'Customer_3','etrhg','Jason','Smith','1233334444','3456 Test Ln','Portage','MI',49024),(4,1,'Customer_4','dgare','Pedro','Smith','1234445555','4567 Test Ln','Portage','MI',49024),(5,1,'Customer_5','wtjf','Francisco','Jane','1235556666','5678 Test Ln','Portage','MI',49024),(6,2,'Customer_6','hjetjsdf','Carroll','Tethers','1236667777','6789 Test Ln','Portage','MI',49024),(7,2,'Customer_7','rewyh','Bert','Jennings','1237778888','7890 Test Ln','Portage','MI',49024),(8,2,'Customer_8','adhjtw','Jane','Loh','1239990000','9876 Test Rd','Portage','MI',49024),(9,2,'Customer_9','jwrta','Jenny','Cardozo','2341112222','8765 Test Rd','Portage','MI',49024),(10,2,'Customer_10','aaa','Shirley','Beeson','2342223333','7654 Test Rd','Portage','MI',49024),(11,3,'Customer_11','aherh','Ricky','Caldwell','2343334444','5984 Aaa Rd','Pleasanton','CA',94588),(12,3,'Customer_12','1234','Norman','Mattiacci','2344445555','2094 Aaa Rd','Pleasanton','CA',94588),(13,3,'Customer_13','4236','Emilio','Vessot','2345556666','1029 Aaa Rd','Pleasanton','CA',94588),(14,3,'Customer_14','sfhsd','Ben','Hayman','2346667777','0942 Aaa Rd','Pleasanton','CA',94588),(15,3,'Customer_15','wrhsf','Iris','Samuel','2347778888','0949 Aaa Rd','Pleasanton','CA',94588),(16,2,'Customer_16','hjsrt','Evelyn','Savett','2348889999','6543 Test Rd','Portage','MI',49024),(17,2,'Customer_17','rehe','Deborah','Ames','2349990000','5432 Test Rd','Portage','MI',49024),(18,1,'Customer_18','herhe','Pam','Battson','3451112222','4321 Test Rd','Portage','MI',49024),(19,1,'Customer_19','erewh','Annie','Decker','3452223333','3210 Test Rd','Portage','MI',49024),(20,1,'Customer_20','wthsf','Aubry','Wheatly','3453334444','1948 Aaa Rd','Portage','MI',49024),(21,1,'Customer_21','htrhjs','Kenny','Cantor','3454445555','5985 Aaa Rd','Portage','MI',49024),(22,3,'Customer_22','erhwg','Alicia','Boggs','3455556666','3509 Aaa Rd','Pleasanton','CA',94588),(23,2,'Customer_23','wrhss','Jimmy','Lovison','3456667777','9085 Aaa Rd','Portage','MI',49024);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `emp_login_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,'Employee_1','password','Bob','Hardings','2695554444','465 HappyEmployee Ln','Portage','MI',49024),(2,1,'Employee_2','1234','Chompy','Evans','2691112222','123 HappyEmployee Ln','Portage','MI',49024),(3,2,'Employee_3','asdgw34','Kevin','Carols','2691234567','234 HappyEmployee Ln','Portage','MI',49024),(4,2,'Employee_4','dsgaasd','Sasha','Smith','2691231234','345 HappyEmployee Ln','Portage','MI',49024),(5,2,'Employee_5','aaa','Sarah','Smithers','2695555555','456 HappyEmployee Ln','Portage','MI',49024),(6,1,'Employee_6','87cmk489','Ellen','Pantaleo','5555555555','1212 Centre Ave','Portage','MI',49024),(7,3,'Employee_7','caeaf','Sally','Barnes','9259991210','5133 Aaa Rd','Pleasanton','CA',94588),(8,3,'Employee_8','i43gd','Bob','Jones','9254565522','4539 ThisIsAPlace Ln','Pleasanton','CA',94588),(9,3,'Employee_9','123gadf','Jimmy','Jones','9255291234','5895 ThisIsAPlace Ln','Pleasanton','CA',94588),(10,3,'Employee_10','a4tdg','Jimmy','Brown','5554443333','8193 Road Rd','Pleasanton','CA',94588),(11,3,'Employee_11','ghwrh','Steve','Johnson','1234567890','124 RoadLane Rd','Pleasanton','CA',94588);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `ingr_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `flavor` tinyint(1) NOT NULL,
  `bake_id` int(11) DEFAULT NULL,
  `coffee_id` int(11) DEFAULT NULL,
  `tea_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ingr_id`),
  KEY `coffee_id` (`coffee_id`),
  KEY `tea_id` (`tea_id`),
  KEY `bake_id` (`bake_id`),
  CONSTRAINT `ingredient_ibfk_1` FOREIGN KEY (`coffee_id`) REFERENCES `coffee` (`coffee_id`) ON DELETE CASCADE,
  CONSTRAINT `ingredient_ibfk_2` FOREIGN KEY (`tea_id`) REFERENCES `tea` (`tea_id`) ON DELETE CASCADE,
  CONSTRAINT `ingredient_ibfk_3` FOREIGN KEY (`bake_id`) REFERENCES `baked_good` (`bake_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Flour',0,1,NULL,NULL),(2,'Eggs',0,1,NULL,NULL),(3,'Sugar',0,1,NULL,NULL),(4,'Milk',0,1,NULL,NULL),(5,'Butter',0,1,NULL,NULL),(6,'Salt',0,1,NULL,NULL),(7,'Yeast',0,1,NULL,NULL),(8,'Cinnamon',0,1,NULL,NULL),(9,'Flour',0,2,NULL,NULL),(10,'Eggs',0,2,NULL,NULL),(11,'Sugar',0,2,NULL,NULL),(12,'Milk',0,2,NULL,NULL),(13,'Butter',0,2,NULL,NULL),(14,'Salt',0,2,NULL,NULL),(15,'Vanilla Extract',0,2,NULL,NULL),(16,'Flour',0,3,NULL,NULL),(17,'Eggs',0,3,NULL,NULL),(18,'Sugar',0,3,NULL,NULL),(19,'Butter',0,3,NULL,NULL),(20,'Vegetable Oil',0,3,NULL,NULL),(21,'Salt',0,3,NULL,NULL),(22,'Yeast',0,3,NULL,NULL),(23,'Flour',0,4,NULL,NULL),(24,'Eggs',0,4,NULL,NULL),(25,'Brown Sugar',0,4,NULL,NULL),(26,'Butter',0,4,NULL,NULL),(27,'Baking Powder',0,4,NULL,NULL),(28,'Baking Soda',0,4,NULL,NULL),(29,'Salt',0,4,NULL,NULL),(30,'Blueberries',1,4,NULL,NULL),(31,'Bananas',1,4,NULL,NULL),(32,'Various Nuts',1,4,NULL,NULL),(33,'Chocolate',1,4,NULL,NULL),(34,'Eggs',0,5,NULL,NULL),(35,'Flour',0,5,NULL,NULL),(36,'Sugar',0,5,NULL,NULL),(37,'Butter',0,5,NULL,NULL),(38,'Cinnamon',1,5,NULL,NULL),(39,'Chocolate',1,5,NULL,NULL),(40,'Oatmeal',1,5,NULL,NULL),(41,'Eggs',0,6,NULL,NULL),(42,'Flour',0,6,NULL,NULL),(43,'Milk',0,6,NULL,NULL),(44,'Sugar',0,6,NULL,NULL),(45,'Butter',0,6,NULL,NULL),(46,'Baking Powder',0,6,NULL,NULL),(47,'Eggs',0,7,NULL,NULL),(48,'Flour',0,7,NULL,NULL),(49,'Sugar',0,7,NULL,NULL),(50,'Baking Powder',0,7,NULL,NULL),(51,'Salt',0,7,NULL,NULL),(52,'Vanillia Extract',0,7,NULL,NULL),(53,'Almond Extract',0,7,NULL,NULL),(54,'Water',0,NULL,1,NULL),(55,'Our Signature Blend of Coffe Beans',0,NULL,1,NULL),(56,'Caffeine Shot',0,NULL,1,NULL),(57,'Cream',1,NULL,1,NULL),(58,'Sugar',1,NULL,1,NULL),(59,'Water',0,NULL,2,NULL),(60,'Our Signature Blend of Coffe Beans',0,NULL,2,NULL),(61,'Caffeine Shot',0,NULL,2,NULL),(62,'Foamed Milk',0,NULL,2,NULL),(63,'Cream',1,NULL,2,NULL),(64,'Sugar',1,NULL,2,NULL),(65,'Water',0,NULL,3,NULL),(66,'Our Signature Blend of Coffe Beans',0,NULL,3,NULL),(67,'Caffeine Shot',0,NULL,3,NULL),(68,'Steamed Milk',0,NULL,3,NULL),(69,'Foamed Milk',0,NULL,3,NULL),(70,'Cream',1,NULL,3,NULL),(71,'Sugar',1,NULL,3,NULL),(72,'Water',0,NULL,4,NULL),(73,'Our Signature Blend of Coffe Beans',0,NULL,4,NULL),(74,'Caffeine Shot',0,NULL,4,NULL),(75,'Steamed Milk',0,NULL,4,NULL),(76,'Chocolate',0,NULL,4,NULL),(77,'Cream',1,NULL,4,NULL),(78,'Sugar',1,NULL,4,NULL),(79,'Water',0,NULL,5,NULL),(80,'Our Signature Blend of Coffe Beans',0,NULL,5,NULL),(81,'Caffeine Shot',0,NULL,5,NULL),(82,'Foamed Milk',0,NULL,5,NULL),(83,'Steamed Milk',0,NULL,5,NULL),(84,'Cream',1,NULL,5,NULL),(85,'Sugar',1,NULL,5,NULL),(86,'Water',0,NULL,6,NULL),(87,'Our Signature Blend of Coffe Beans',0,NULL,6,NULL),(88,'Caffeine Shot',0,NULL,6,NULL),(89,'Cream',1,NULL,6,NULL),(90,'Sugar',1,NULL,6,NULL),(91,'Water',0,NULL,7,NULL),(92,'Our Signature Blend of Coffe Beans',0,NULL,7,NULL),(93,'Caffeine Shot',0,NULL,7,NULL),(94,'Cream',1,NULL,7,NULL),(95,'Sugar',1,NULL,7,NULL),(96,'Water',0,NULL,8,NULL),(97,'Our Signature Blend of Coffe Beans',0,NULL,8,NULL),(98,'Caffeine Shot',0,NULL,8,NULL),(99,'Cream',1,NULL,8,NULL),(100,'Sugar',1,NULL,8,NULL),(101,'Water',0,NULL,9,NULL),(102,'Our Signature Blend of Coffe Beans',0,NULL,9,NULL),(103,'Steamed Milk',0,NULL,9,NULL),(104,'Cream',1,NULL,9,NULL),(105,'Sugar',1,NULL,9,NULL),(106,'Black Tea Leaves',0,NULL,NULL,1),(107,'Water',0,NULL,NULL,1),(108,'Sugar',1,NULL,NULL,1),(109,'Milk',1,NULL,NULL,1),(110,'Honey',1,NULL,NULL,1),(111,'Oolong Tea Leaves',0,NULL,NULL,2),(112,'Water',0,NULL,NULL,2),(113,'Sugar',1,NULL,NULL,2),(114,'Milk',1,NULL,NULL,2),(115,'Honey',1,NULL,NULL,2),(116,'Jasmine Tea Leaves',0,NULL,NULL,3),(117,'Water',0,NULL,NULL,3),(118,'Sugar',1,NULL,NULL,3),(119,'Milk',1,NULL,NULL,3),(120,'Honey',1,NULL,NULL,3),(121,'Peppermint Tea Leaves',0,NULL,NULL,4),(122,'Water',0,NULL,NULL,4),(123,'Sugar',1,NULL,NULL,4),(124,'Milk',1,NULL,NULL,4),(125,'Honey',1,NULL,NULL,4),(126,'White Tea Leaves',0,NULL,NULL,5),(127,'Water',0,NULL,NULL,5),(128,'Sugar',1,NULL,NULL,5),(129,'Milk',1,NULL,NULL,5),(130,'Honey',1,NULL,NULL,5),(131,'Green Tea Leaves',0,NULL,NULL,6),(132,'Water',0,NULL,NULL,6),(133,'Sugar',1,NULL,NULL,6),(134,'Milk',1,NULL,NULL,6),(135,'Honey',1,NULL,NULL,6),(136,'Earl Grey Tea Leaves',0,NULL,NULL,7),(137,'Water',0,NULL,NULL,7),(138,'Sugar',1,NULL,NULL,7),(139,'Milk',1,NULL,NULL,7),(140,'Honey',1,NULL,NULL,7),(141,'Jasmine Tea Leaves',0,NULL,NULL,8),(142,'Water',0,NULL,NULL,8),(143,'Sugar',1,NULL,NULL,8),(144,'Milk',1,NULL,NULL,8),(145,'Honey',1,NULL,NULL,8);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'123 StreeName Dr','Portage','MI',49024),(2,'456 LongRoad St','Portage','MI',49024),(3,'1011 ADrive Ln','Pleasanton','CA',94588);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tea`
--

DROP TABLE IF EXISTS `tea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tea` (
  `tea_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea`
--

LOCK TABLES `tea` WRITE;
/*!40000 ALTER TABLE `tea` DISABLE KEYS */;
INSERT INTO `tea` VALUES (1,'Black Tea','Very powerful taste and kick, designed to kickstart your day like nothing else.',1.50),(2,'Oolong Tea','As simple as they come, our Oolong tea is a reminder to sit back once in a while and let your mind relax.',2.50),(3,'Jasmine Tea','Sweet and refreshing. Perfect to rejuvinate your mind body and mind throughout the day.',3.00),(4,'Peppermint Tea','Warm and powerful, this Peppermint is a true minty treat.',2.75),(5,'White Tea','Delicate and elegant, with hints of earthier elements, such as almonds.',1.50),(6,'Green Tea','Has a more \'vegative\' or \'leafy\' taste. Has many health benefits, and tastes great to boot.',2.50),(7,'Earl Grey Tea','Smokey and fragrant, with hints of citrus. A subcategory of our fine black teas.',2.00),(8,'Jasmine Tea','One of the most fragrant and flavorful tea blends around. Perfect for the end of a long day.',2.25);
/*!40000 ALTER TABLE `tea` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-10  3:11:28
