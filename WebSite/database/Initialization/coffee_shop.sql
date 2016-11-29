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
-- Current Database: `coffee_shop`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `coffee_shop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `coffee_shop`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `addr_id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`addr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'123 StreeName Dr','Portage','MI',49024),(2,'456 LongRoad St','Portage','MI',49024),(3,'1011 ADrive Ln','Pleasanton','CA',94588),(4,'465 HappyEmployee Ln','Portage','MI',49024),(5,'123 HappyEmployee Ln','Portage','MI',49024),(6,'234 HappyEmployee Ln','Portage','MI',49024),(7,'345 HappyEmployee Ln','Portage','MI',49024),(8,'456 HappyEmployee Ln','Portage','MI',49024),(9,'1212 Centre Ave','Portage','MI',49024),(10,'5133 Aaa Rd','Pleasanton','CA',94588),(11,'4539 ThisIsAPlace Ln','Pleasanton','CA',94588),(12,'5895 ThisIsAPlace Ln','Pleasanton','CA',94588),(13,'8193 Road Rd','Pleasanton','CA',94588),(14,'124 RoadLane Rd','Pleasanton','CA',94588),(15,'1234 Test Ln','Portage','MI',49024),(16,'2345 Test Ln','Portage','MI',49024),(17,'3456 Test Ln','Portage','MI',49024),(18,'4567 Test Ln','Portage','MI',49024),(19,'5678 Test Ln','Portage','MI',49024),(20,'6789 Test Ln','Portage','MI',49024),(21,'7890 Test Ln','Portage','MI',49024),(22,'9876 Test Rd','Portage','MI',49024),(23,'8765 Test Rd','Portage','MI',49024),(24,'7654 Test Rd','Portage','MI',49024),(25,'5984 Aaa Rd','Pleasanton','CA',94588),(26,'2094 Aaa Rd','Pleasanton','CA',94588),(27,'1029 Aaa Rd','Pleasanton','CA',94588),(28,'0942 Aaa Rd','Pleasanton','CA',94588),(29,'0949 Aaa Rd','Pleasanton','CA',94588),(30,'6543 Test Rd','Portage','MI',49024),(31,'5432 Test Rd','Portage','MI',49024),(32,'4321 Test Rd','Portage','MI',49024),(33,'3210 Test Rd','Portage','MI',49024),(34,'1948 Aaa Rd','Portage','MI',49024),(35,'5985 Aaa Rd','Portage','MI',49024),(36,'3509 Aaa Rd','Pleasanton','CA',94588),(37,'9085 Aaa Rd','Portage','MI',49024);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

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
  `img_dir` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bake_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baked_good`
--

LOCK TABLES `baked_good` WRITE;
/*!40000 ALTER TABLE `baked_good` DISABLE KEYS */;
INSERT INTO `baked_good` VALUES (1,'Cinnamon Roll','A coffee shop classic. A sweet flakey roll with our patented cinnamon icing. Simply melts in your mouth.',1.75,'/static/images/bakery/CinnamonRoll.jpg'),(2,'Danish','A flakey pastry with fresh, sweet fruits baked in. A great way to start your day.',2.00,'/static/images/bakery/Danish.jpg'),(3,'Croissant','Like a danish, but skip the fruits. Great for someone on the go.',1.50,'/static/images/bakery/Croissant.jpg'),(4,'Fresh Muffin','Our delectable muffins are always warm and fresh. Comes in Plain, Blueberry, Banana Nut, or Triple Chocolate.',1.10,'/static/images/bakery/Muffin.jpg'),(5,'Fresh Cookie','Baked fresh every day, you can\'t go wrong. Comes in Sugar, Snickerdoodle, Chocolate chip, and Oatmeal.',0.85,'/static/images/bakery/Cookie.jpg'),(6,'Scone','Similar to our muffins, but lighter and softer.',1.10,'/static/images/bakery/Scone.jpg'),(7,'Biscotti','Italian almond buscuits, twice-baked for a delightfully crunchy texture.',1.25,'/static/images/bakery/Biscotti.jpg');
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
  `img_dir` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`coffee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coffee`
--

LOCK TABLES `coffee` WRITE;
/*!40000 ALTER TABLE `coffee` DISABLE KEYS */;
INSERT INTO `coffee` VALUES (1,'Espresso','A small shot of caffeine, but more than enough to get the job done.',3.45,'/static/images/coffee/Espresso.jpg'),(2,'Macchiato','A shot of caffeine with a heavenly touch of foamed milk.',3.60,'/static/images/coffee/Macchiato.jpg'),(3,'Latte','Some espresso mixed with rich steamed milk and a dallop of foamed milk.',3.75,'/static/images/coffee/Latte.jpg'),(4,'Mocha','Our patented blend of espresso, chocolate, and milk. Prefect if you want something sweet.',3.75,'/static/images/coffee/Mocha.jpg'),(5,'Cappuccino','Equal parts espresso, foamed milk, and steamed milk.',3.65,'/static/images/coffee/Cappuccino.jpg'),(6,'Americano','Like espresso, but with double the standard amount of water. Perfect if you want something that lasts.',3.00,'/static/images/coffee/Americano.jpg'),(7,'Ristretto','A concentrated shot of espresso. Straight and to the point.',3.00,'/static/images/coffee/Ristretto.jpg'),(8,'Doppio','An espresso with double the caffeine. Great for those extra early mornings.',3.75,'/static/images/coffee/Doppio.jpg'),(9,'Cafe Au Lait','For those that just want straight coffee with milk. No espresso. No complications.',2.50,'/static/images/coffee/CafeAuLait.jpg');
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
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`cust_id`),
  KEY `store_id` (`store_id`),
  KEY `user_id` (`user_id`),
  KEY `addr_id` (`addr_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`addr_id`) REFERENCES `address` (`addr_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,1,1,'Timmy','Evans',15,'1231112222','a@aaa.com'),(2,1,2,'Jeanette','McGalliger',16,'1232223333','aa@aaa.com'),(3,1,3,'Jason','Smith',17,'1233334444','aaa@aaa.com'),(4,1,4,'Pedro','Smith',18,'1234445555','sdf@a.com'),(5,1,5,'Francisco','Jane',19,'1235556666','lk@lask.com'),(6,2,6,'Carroll','Tethers',20,'1236667777','2398@skd.com'),(7,2,7,'Bert','Jennings',21,'1237778888','abc@abc.com'),(8,2,8,'Jane','Loh',22,'1239990000','klsad@lkal.com'),(9,2,9,'Jenny','Cardozo',23,'2341112222','9e0@092.com'),(10,2,10,'Shirley','Beeson',24,'2342223333','029@sakdh.com'),(11,3,11,'Ricky','Caldwell',25,'2343334444','09238@sklh.com'),(12,3,12,'Norman','Mattiacci',26,'2344445555','lkjla@coiu.com'),(13,3,13,'Emilio','Vessot',27,'2345556666','23o0jf@gmail.com'),(14,3,14,'Ben','Hayman',28,'2346667777','gmail@gmail.com'),(15,3,15,'Iris','Samuel',29,'2347778888','cat@gmail.com'),(16,2,16,'Evelyn','Savett',30,'2348889999','aaa@gmail.com'),(17,2,17,'Deborah','Ames',31,'2349990000','alsogmail@gmail.com'),(18,1,18,'Pam','Battson',32,'3451112222','nope@nope.com'),(19,1,19,'Annie','Decker',33,'3452223333','nope@nope.nope'),(20,1,20,'Aubry','Wheatly',34,'3453334444','abcde@gmail.com'),(21,1,21,'Kenny','Cantor',35,'3454445555','abc@gmail.com'),(22,3,22,'Alicia','Boggs',36,'3455556666','qwerty@gmail.com'),(23,2,23,'Jimmy','Lovison',37,'3456667777','12345@gmail.com'),(24,2,24,'Jenny','Lovison',37,'2456667778','qwerty@qwerty.com');
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
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `addr_id` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `store_id` (`store_id`),
  KEY `user_id` (`user_id`),
  KEY `addr_id` (`addr_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`addr_id`) REFERENCES `address` (`addr_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,25,'Bob','Hardings',4,'2695554444','bob@coffee.com'),(2,1,26,'Chompy','Evans',5,'2691112222','emp_2@coffee.com'),(3,2,27,'Kevin','Carols',6,'2691234567','carolscoffee@gmail.com'),(4,2,28,'Sasha','Smith',7,'2691231234','sasha@smith.com'),(5,2,29,'Sarah','Smithers',8,'2695555555','9688@12345.com'),(6,1,30,'Ellen','Pantaleo',9,'5555555555','anemail@email.com'),(7,3,31,'Sally','Barnes',10,'9259991210','anemail@send.com'),(8,3,32,'Bob','Jones',11,'9254565522','employee@coffee.com'),(9,3,33,'Jimmy','Jones',12,'9255291234','jimmyjangles@coffee.com'),(10,3,34,'Jimmy','Brown',13,'5554443333','a@coffee.com'),(11,3,35,'Steve','Johnson',14,'1234567890','steven@steven.com');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Flour',0,1,NULL,NULL),(2,'Eggs',0,1,NULL,NULL),(3,'Sugar',0,1,NULL,NULL),(4,'Milk',0,1,NULL,NULL),(5,'Butter',0,1,NULL,NULL),(6,'Salt',0,1,NULL,NULL),(7,'Yeast',0,1,NULL,NULL),(8,'Cinnamon',0,1,NULL,NULL),(9,'Flour',0,2,NULL,NULL),(10,'Eggs',0,2,NULL,NULL),(11,'Sugar',0,2,NULL,NULL),(12,'Milk',0,2,NULL,NULL),(13,'Butter',0,2,NULL,NULL),(14,'Salt',0,2,NULL,NULL),(15,'Vanilla Extract',0,2,NULL,NULL),(16,'Flour',0,3,NULL,NULL),(17,'Eggs',0,3,NULL,NULL),(18,'Sugar',0,3,NULL,NULL),(19,'Butter',0,3,NULL,NULL),(20,'Vegetable Oil',0,3,NULL,NULL),(21,'Salt',0,3,NULL,NULL),(22,'Yeast',0,3,NULL,NULL),(23,'Flour',0,4,NULL,NULL),(24,'Eggs',0,4,NULL,NULL),(25,'Brown Sugar',0,4,NULL,NULL),(26,'Butter',0,4,NULL,NULL),(27,'Baking Powder',0,4,NULL,NULL),(28,'Baking Soda',0,4,NULL,NULL),(29,'Salt',0,4,NULL,NULL),(30,'Blueberries',1,4,NULL,NULL),(31,'Bananas',1,4,NULL,NULL),(32,'Various Nuts',1,4,NULL,NULL),(33,'Chocolate',1,4,NULL,NULL),(34,'Eggs',0,5,NULL,NULL),(35,'Flour',0,5,NULL,NULL),(36,'Sugar',0,5,NULL,NULL),(37,'Butter',0,5,NULL,NULL),(38,'Cinnamon',1,5,NULL,NULL),(39,'Chocolate',1,5,NULL,NULL),(40,'Oatmeal',1,5,NULL,NULL),(41,'Eggs',0,6,NULL,NULL),(42,'Flour',0,6,NULL,NULL),(43,'Milk',0,6,NULL,NULL),(44,'Sugar',0,6,NULL,NULL),(45,'Butter',0,6,NULL,NULL),(46,'Baking Powder',0,6,NULL,NULL),(47,'Eggs',0,7,NULL,NULL),(48,'Flour',0,7,NULL,NULL),(49,'Sugar',0,7,NULL,NULL),(50,'Baking Powder',0,7,NULL,NULL),(51,'Salt',0,7,NULL,NULL),(52,'Vanillia Extract',0,7,NULL,NULL),(53,'Almond Extract',0,7,NULL,NULL),(54,'Water',0,NULL,1,NULL),(55,'Our Signature Blend of Coffee Beans',0,NULL,1,NULL),(56,'Caffeine Shot',0,NULL,1,NULL),(57,'Cream',1,NULL,1,NULL),(58,'Sugar',1,NULL,1,NULL),(59,'Water',0,NULL,2,NULL),(60,'Our Signature Blend of Coffee Beans',0,NULL,2,NULL),(61,'Caffeine Shot',0,NULL,2,NULL),(62,'Foamed Milk',0,NULL,2,NULL),(63,'Cream',1,NULL,2,NULL),(64,'Sugar',1,NULL,2,NULL),(65,'Water',0,NULL,3,NULL),(66,'Our Signature Blend of Coffee Beans',0,NULL,3,NULL),(67,'Caffeine Shot',0,NULL,3,NULL),(68,'Steamed Milk',0,NULL,3,NULL),(69,'Foamed Milk',0,NULL,3,NULL),(70,'Cream',1,NULL,3,NULL),(71,'Sugar',1,NULL,3,NULL),(72,'Water',0,NULL,4,NULL),(73,'Our Signature Blend of Coffee Beans',0,NULL,4,NULL),(74,'Caffeine Shot',0,NULL,4,NULL),(75,'Steamed Milk',0,NULL,4,NULL),(76,'Chocolate',0,NULL,4,NULL),(77,'Cream',1,NULL,4,NULL),(78,'Sugar',1,NULL,4,NULL),(79,'Water',0,NULL,5,NULL),(80,'Our Signature Blend of Coffee Beans',0,NULL,5,NULL),(81,'Caffeine Shot',0,NULL,5,NULL),(82,'Foamed Milk',0,NULL,5,NULL),(83,'Steamed Milk',0,NULL,5,NULL),(84,'Cream',1,NULL,5,NULL),(85,'Sugar',1,NULL,5,NULL),(86,'Water',0,NULL,6,NULL),(87,'Our Signature Blend of Coffee Beans',0,NULL,6,NULL),(88,'Caffeine Shot',0,NULL,6,NULL),(89,'Cream',1,NULL,6,NULL),(90,'Sugar',1,NULL,6,NULL),(91,'Water',0,NULL,7,NULL),(92,'Our Signature Blend of Coffee Beans',0,NULL,7,NULL),(93,'Caffeine Shot',0,NULL,7,NULL),(94,'Cream',1,NULL,7,NULL),(95,'Sugar',1,NULL,7,NULL),(96,'Water',0,NULL,8,NULL),(97,'Our Signature Blend of Coffee Beans',0,NULL,8,NULL),(98,'Caffeine Shot',0,NULL,8,NULL),(99,'Cream',1,NULL,8,NULL),(100,'Sugar',1,NULL,8,NULL),(101,'Water',0,NULL,9,NULL),(102,'Our Signature Blend of Coffee Beans',0,NULL,9,NULL),(103,'Steamed Milk',0,NULL,9,NULL),(104,'Cream',1,NULL,9,NULL),(105,'Sugar',1,NULL,9,NULL),(106,'Black Tea Leaves',0,NULL,NULL,1),(107,'Water',0,NULL,NULL,1),(108,'Sugar',1,NULL,NULL,1),(109,'Milk',1,NULL,NULL,1),(110,'Honey',1,NULL,NULL,1),(111,'Oolong Tea Leaves',0,NULL,NULL,2),(112,'Water',0,NULL,NULL,2),(113,'Sugar',1,NULL,NULL,2),(114,'Milk',1,NULL,NULL,2),(115,'Honey',1,NULL,NULL,2),(116,'Jasmine Tea Leaves',0,NULL,NULL,3),(117,'Water',0,NULL,NULL,3),(118,'Sugar',1,NULL,NULL,3),(119,'Milk',1,NULL,NULL,3),(120,'Honey',1,NULL,NULL,3),(121,'Peppermint Tea Leaves',0,NULL,NULL,4),(122,'Water',0,NULL,NULL,4),(123,'Sugar',1,NULL,NULL,4),(124,'Milk',1,NULL,NULL,4),(125,'Honey',1,NULL,NULL,4),(126,'White Tea Leaves',0,NULL,NULL,5),(127,'Water',0,NULL,NULL,5),(128,'Sugar',1,NULL,NULL,5),(129,'Milk',1,NULL,NULL,5),(130,'Honey',1,NULL,NULL,5),(131,'Green Tea Leaves',0,NULL,NULL,6),(132,'Water',0,NULL,NULL,6),(133,'Sugar',1,NULL,NULL,6),(134,'Milk',1,NULL,NULL,6),(135,'Honey',1,NULL,NULL,6),(136,'Earl Grey Tea Leaves',0,NULL,NULL,7),(137,'Water',0,NULL,NULL,7),(138,'Sugar',1,NULL,NULL,7),(139,'Milk',1,NULL,NULL,7),(140,'Honey',1,NULL,NULL,7);
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
  `name` varchar(100) DEFAULT NULL,
  `addr_id` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hours` varchar(100) NOT NULL,
  PRIMARY KEY (`store_id`),
  KEY `addr_id` (`addr_id`),
  CONSTRAINT `store_ibfk_1` FOREIGN KEY (`addr_id`) REFERENCES `address` (`addr_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'',1,'1234567890','coffee_shop@coffee.com','6AM - 7PM'),(2,'',2,'3216540987','coffee-shop@coffee.com','6AM - 7PM'),(3,'Cali CoffeeShop',3,'9259998888','cali_shop@coffee.com','6AM - 7PM');
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
  `img_dir` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea`
--

LOCK TABLES `tea` WRITE;
/*!40000 ALTER TABLE `tea` DISABLE KEYS */;
INSERT INTO `tea` VALUES (1,'Black Tea','Very powerful taste and kick, designed to kickstart your day like nothing else.',1.50,'/static/images/tea/Black.jpg'),(2,'Oolong Tea','As simple as they come, our Oolong tea is a reminder to sit back once in a while and let your mind relax.',2.50,'/static/images/tea/Oolong.jpg'),(3,'Jasmine Tea','Sweet and refreshing. Perfect to rejuvinate your mind body and mind throughout the day.',2.25,'/static/images/tea/Jasmine.jpg'),(4,'Peppermint Tea','Warm and powerful, this Peppermint is a true minty treat.',2.75,'/static/images/tea/Peppermint.jpg'),(5,'White Tea','Delicate and elegant, with hints of earthier elements, such as almonds.',1.50,'/static/images/tea/White.jpg'),(6,'Green Tea','Has a more \'vegative\' or \'leafy\' taste. Has many health benefits, and tastes great to boot.',2.50,'/static/images/tea/Green.jpg'),(7,'Earl Grey Tea','Smokey and fragrant, with hints of citrus. A subcategory of our fine black teas.',2.00,'/static/images/tea/EarlGrey.jpg');
/*!40000 ALTER TABLE `tea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `login_id` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Customer_1','kljsd'),(2,'Customer_2','asdg'),(3,'Customer_3','etrhg'),(4,'Customer_4','dgare'),(5,'Customer_5','wtjf'),(6,'Customer_6','hjetjsdf'),(7,'Customer_7','rewyh'),(8,'Customer_8','adhjtw'),(9,'Customer_9','jwrta'),(10,'Customer_10','aaa'),(11,'Customer_11','aherh'),(12,'Customer_12','1234'),(13,'Customer_13','4236'),(14,'Customer_14','sfhsd'),(15,'Customer_15','wrhsf'),(16,'Customer_16','hjsrt'),(17,'Customer_17','rehe'),(18,'Customer_18','herhe'),(19,'Customer_19','erewh'),(20,'Customer_20','wthsf'),(21,'Customer_21','htrhjs'),(22,'Customer_22','erhwg'),(23,'Customer_23','wrhss'),(24,'Customer_24','wrhsh'),(25,'Employee_1','password'),(26,'Employee_2','1234'),(27,'Employee_3','asdgw34'),(28,'Employee_4','dsgaasd'),(29,'Employee_5','aaa'),(30,'Employee_6','87cmk489'),(31,'Employee_7','caeaf'),(32,'Employee_8','i43gd'),(33,'Employee_9','123gadf'),(34,'Employee_10','a4tdg'),(35,'Employee_11','ghwrh');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-29  0:14:01
