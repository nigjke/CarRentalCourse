-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: carrental
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `car_id` int NOT NULL AUTO_INCREMENT,
  `make` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `year` year NOT NULL,
  `license_plate` varchar(20) NOT NULL,
  `status` enum('Свободна','Занята') NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'Toyota','Camry',2018,'AAA001','Занята',2000),(2,'Honda','Civic',2019,'AAA002','Занята',1800),(3,'Ford','Focus',2017,'AAA003','Занята',1700),(4,'Chevrolet','Malibu',2020,'AAA004','Занята',2200),(5,'Nissan','Altima',2016,'AAA005','Свободна',1600),(6,'Hyundai','Sonata',2018,'AAA006','Свободна',1900),(7,'Kia','Optima',2019,'AAA007','Свободна',1850),(8,'Volkswagen','Passat',2017,'AAA008','Занята',1750),(9,'Subaru','Impreza',2020,'AAA009','Занята',2100),(10,'Mazda','6',2016,'AAA010','Свободна',1650),(11,'BMW','3 Series',2018,'AAA011','Свободна',2500),(12,'Mercedes-Benz','C-Class',2019,'AAA012','Свободна',2700),(13,'Audi','A4',2017,'AAA013','Свободна',2600),(14,'Lexus','ES',2020,'AAA014','Занята',2800),(15,'Infiniti','Q50',2016,'AAA015','Свободна',2400),(16,'Acura','TLX',2018,'AAA016','Занята',2300),(17,'Cadillac','ATS',2019,'AAA017','Свободна',2500),(18,'Jaguar','XE',2017,'AAA018','Свободна',2700),(19,'Alfa Romeo','Giulia',2020,'AAA019','Свободна',2900),(20,'Genesis','G70',2016,'AAA020','Свободна',2200),(21,'Volvo','S60',2018,'AAA021','Свободна',2400),(22,'Tesla','Model 3',2019,'AAA022','Свободна',3000),(23,'Porsche','Panamera',2017,'AAA023','Занята',3500),(24,'Maserati','Ghibli',2020,'AAA024','Свободна',3700),(25,'Aston Martin','Rapide',2016,'AAA025','Занята',4000),(26,'Bentley','Flying Spur',2018,'AAA026','Занята',4500),(27,'Rolls-Royce','Ghost',2019,'AAA027','Свободна',5000),(28,'Ferrari','GTC4Lusso',2017,'AAA028','Свободна',5500),(29,'Lamborghini','Urus',2020,'AAA029','Занята',6000),(30,'McLaren','GT',2016,'AAA030','Занята',6500),(31,'Bugatti','Chiron',2018,'AAA031','Свободна',7000),(32,'Pagani','Huayra',2019,'AAA032','Свободна',7500),(33,'Koenigsegg','Regera',2017,'AAA033','Свободна',8000),(34,'Rimac','C_Two',2020,'AAA034','Занята',8500),(35,'Lotus','Evora',2016,'AAA035','Занята',9000),(36,'Morgan','Plus 6',2018,'AAA036','Свободна',9500),(37,'Caterham','Seven',2019,'AAA037','Свободна',10000),(38,'Ariel','Atom',2017,'AAA038','Свободна',10500),(39,'BAC','Mono',2020,'AAA039','Свободна',11000),(40,'Ginetta','Akula',2016,'AAA040','Свободна',11500),(41,'TVR','Griffith',2018,'AAA041','Свободна',12000),(42,'Wiesmann','MF5',2019,'AAA042','Свободна',12500),(43,'Spyker','C8',2017,'AAA043','Занята',13000),(44,'Zenvo','TS1',2020,'AAA044','Свободна',13500),(45,'Gumpert','Apollo',2016,'AAA045','Свободна',14000),(46,'Hennessey','Venom',2018,'AAA046','Занята',14500),(47,'SSC','Tuatara',2019,'AAA047','Свободна',15000),(48,'Saleen','S7',2017,'AAA048','Свободна',15500),(49,'Vector','W8',2020,'AAA049','Свободна',16000),(50,'Devel','Sixteen',2016,'AAA050','Занята',16500);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `driver_license` varchar(20) NOT NULL,
  `passport` varchar(20) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id_UNIQUE` (`customer_id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `driver_license_UNIQUE` (`driver_license`),
  UNIQUE KEY `passport_UNIQUE` (`passport`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (7,'Ольга','Кузнецова','+7(929)1234567','2182 789012','6182 210987'),(8,'Андрей','Попов','+7(930)2345678','2182 890123','6182 321098'),(9,'Елена','Лебедева','+7(931)3456789','2182 901234','6182 432109'),(10,'Сергей','Козлов','+7(932)4567890','2182 012345','6182 543210'),(11,'Анна','Новикова','+7(933)5678901','2182 123456','6182 654321'),(12,'Михаил','Морозов','+7(934)6789012','2182 234567','6182 765432'),(13,'Татьяна','Павлова','+7(935)7890123','2182 345678','6182 876543'),(14,'Алексей','Семенов','+7(936)8901234','2182 456789','6182 987654'),(15,'Юлия','Голубева','+7(937)9012345','2182 567890','6182 098765'),(16,'Владимир','Виноградов','+7(938)0123456','2182 678901','6182 109876'),(17,'Евгения','Федорова','+7(939)1234567','2182 781012','6182 210087'),(18,'Николай','Михайлов','+7(940)2345678','2182 891113','1182 321098'),(19,'Светлана','Беляева','+7(941)3456789','2181 901234','6145 432109'),(20,'Игорь','Тихонов','+7(942)4567890','2183 012345','6144 543210'),(21,'Марина','Зайцева','+7(943)5678901','2184 123456','6143 654321'),(22,'Виктор','Соловьев','+7(944)6789012','2185 234567','6142 765432'),(23,'Алина','Васильева','+7(945)7890123','2186 345678','6141 876543'),(24,'Роман','Жуков','+7(946)8901234','2187 456789','6140 987654'),(25,'Екатерина','Сергеевна','+7(947)9012345','2188 567890','6139 098765'),(26,'Павел','Медведев','+7(948)0123456','2189 678901','6138 109876'),(27,'Людмила','Гусева','+7(949)1234567','2112 789012','6137 210987'),(28,'Виталий','Киселев','+7(950)2345678','2122 890123','6136 321098'),(29,'Анастасия','Ильина','+7(951)3456789','2132 901234','6135 432109'),(30,'Григорий','Макаров','+7(952)4567890','2142 012345','6134 543210'),(31,'Вера','Афанасьева','+7(953)5678901','2152 123456','6133 654321'),(32,'Денис','Романов','+7(954)6789012','2162 234567','6132 765432'),(33,'Елизавета','Королева','+7(955)7890123','2172 345678','6131 876543'),(34,'Вячеслав','Герасимов','+7(956)8901234','2192 456789','6130 987654'),(35,'Наталья','Гаврилова','+7(957)9012345','2282 567890','6129 098765'),(36,'Максим','Фролов','+7(958)0123456','2382 678901','6128 109876'),(37,'Дарья','Мельникова','+7(959)1234567','2482 789012','6127 210987'),(38,'Юрий','Давыдов','+7(960)2345678','2582 890123','6126 321098'),(39,'Ксения','Борисова','+7(961)3456789','2682 901234','6125 432109'),(40,'Артем','Калинин','+7(962)4567890','2782 012345','6124 543210'),(41,'София','Анисимова','+7(963)5678901','2882 123456','6123 654321'),(42,'Вадим','Трофимов','+7(964)6789012','2982 234567','6122 765432'),(43,'Полина','Маслова','+7(965)7890123','0182 345678','6121 876543'),(44,'Геннадий','Ефимов','+7(966)8901234','3182 456789','6120 987654'),(45,'Алёна','Денисова','+7(967)9012345','4182 567890','6119 098765'),(46,'Виктория','Филиппова','+7(968)0123456','5182 678901','6118 109876'),(47,'Константин','Марков','+7(969)1234567','6182 789012','6117 210987'),(48,'Лариса','Большакова','+7(970)2345678','7182 890123','6116 321098'),(49,'Галина','Савельева','+7(971)3456789','8182 901234','6115 432109'),(50,'Валерий','Горбунов','+7(972)4567890','9182 012345','61814 543210'),(54,'Вячеслав','Котов','+7(976)8901234','3282 456789','6113 987654'),(55,'Евгений','Тарасов','+7(977)9012345','3382 567890','6112 098765'),(56,'Александра','Миронова','+7(978)0123456','2155 678901','6111 109876');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `Role_id` int NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `employeeLogin` varchar(45) NOT NULL,
  `employeePass` varchar(100) NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employeePass_UNIQUE` (`employeePass`),
  UNIQUE KEY `employeeLogin_UNIQUE` (`employeeLogin`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`),
  KEY `Role_id` (`Role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,'Админ','Админов','+7 (945) 274-3627','admin','admin'),(2,2,'Мария','Петрова','+7(901)2345678','maria','maria'),(3,1,'Дмитрий','Сидоров','+7(902)3456789','dmitriy','dmitriy'),(4,2,'Екатерина','Смирнова','+7(903)4567890','ekaterina','ekaterina'),(5,1,'Василий','Камоцкий','+7(904)5678901','vasiliy','vasiliy'),(6,2,'Ольга','Кузнецова','+7(905)6789012','olga','olga'),(7,1,'Андрей','Попов','+7(906)7890123','andrey','andrey'),(8,2,'Елена','Лебедева','+7(907)8901234','elena','elena'),(9,2,'Менеджер','Менеджеров','+7 (238) 942-3483','manager','manager'),(10,1,'Геннадий','Генов ','+7 (239) 493-2482','gena','gena'),(11,1,'Михаил','Морозов','+7(910)1234567','mikhail','mikhail'),(12,2,'Татьяна','Павлова','+7(911)2345678','tatyana','tatyana'),(13,1,'Николай','Валуев','+7 (123) 123-1211','kolya','ed0c7a8da649c5e2ef785ea6649eccbce6a233730f21374fd7948bd9cb5d5773'),(14,2,'Короткий','Манагер','+7 (123) 123-1231','m','62c66a7a5dd70c3146618063c344e531e6d4b59e379808443ce962b3abd63c5a'),(15,1,'Владимир','Виноградов','+7(914)5678901','vladimir','vladimir'),(16,2,'Евгения','Федорова','+7(915)6789012','evgeniya','evgeniya'),(17,1,'Николай','Михайлов','+7(916)7890123','nikolay','nikolay'),(18,2,'Светлана','Беляева','+7(917)8901234','svetlana','svetlana'),(19,1,'Игорь','Тихонов','+7(918)9012345','igor','igor'),(20,2,'Марина','Зайцева','+7(919)0123456','marina','marina'),(21,1,'Виктор','Соловьев','+7(920)1234567','viktor','viktor'),(22,2,'Алина','Васильева','+7(921)2345678','alina','alina'),(23,1,'Роман','Жуков','+7(922)3456789','roman','roman'),(24,2,'Екатерина','Сергеевна','+7(923)4567890','ekaterina_s','ekaterina_s'),(25,1,'Павел','Медведев','+7(924)5678901','pavel','pavel'),(26,2,'Людмила','Гусева','+7(925)6789012','lyudmila','lyudmila'),(27,1,'Виталий','Киселев','+7(926)7890123','vitaliy','vitaliy'),(28,2,'Анастасия','Ильина','+7(927)8901234','anastasiya','anastasiya'),(29,1,'Григорий','Макаров','+7(928)9012345','grigoriy','grigoriy'),(30,2,'Вера','Афанасьева','+7(929)0123456','vera','vera'),(31,1,'Денис','Романов','+7(930)1234567','denis','denis'),(32,2,'Елизавета','Королева','+7(931)2345678','elizaveta','elizaveta'),(33,1,'Вячеслав','Герасимов','+7(932)3456789','vyacheslav','vyacheslav'),(34,2,'Наталья','Гаврилова','+7(933)4567890','natalya','natalya'),(35,1,'Максим','Фролов','+7(934)5678901','maksim','maksim'),(36,2,'Дарья','Мельникова','+7(935)6789012','darya','darya'),(37,1,'Юрий','Давыдов','+7(936)7890123','yuriy','yuriy'),(38,2,'Ксения','Борисова','+7(937)8901234','kseniya','kseniya'),(39,1,'Артем','Калинин','+7(938)9012345','artem','artem'),(40,2,'София','Анисимова','+7(939)0123456','sofiya','sofiya'),(41,1,'Вадим','Трофимов','+7(940)1234567','vadim','vadim'),(42,2,'Полина','Маслова','+7(941)2345678','polina','polina'),(43,1,'Геннадий','Ефимов','+7(942)3456789','gennadiy','gennadiy'),(44,2,'Алёна','Денисова','+7(943)4567890','alyona','alyona'),(45,1,'Виктория','Филиппова','+7(944)5678901','viktoriya','viktoriya'),(46,2,'Константин','Марков','+7(945)6789012','konstantin','konstantin'),(47,1,'Лариса','Большакова','+7(946)7890123','larisa','larisa'),(48,2,'Галина','Савельева','+7(947)8901234','galina','galina'),(49,1,'Валерий','Горбунов','+7(948)9012345','valeriy','valeriy'),(50,2,'Лидия','Мартынова','+7(949)0123456','lidiya','lidiya');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentals`
--

DROP TABLE IF EXISTS `rentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentals` (
  `rental_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `car_id` int DEFAULT NULL,
  `rental_date` date DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`rental_id`),
  KEY `customer_id` (`customer_id`),
  KEY `car_id` (`car_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentals`
--

LOCK TABLES `rentals` WRITE;
/*!40000 ALTER TABLE `rentals` DISABLE KEYS */;
INSERT INTO `rentals` VALUES (22,8,1,'2024-12-05',NULL,'2024-12-07',2000.00),(23,7,23,'2024-12-05',NULL,'2024-12-28',77000.00),(24,18,14,'2024-12-05',NULL,'2025-02-26',229600.00),(25,12,30,'2024-12-05',NULL,'2024-12-18',78000.00),(26,7,9,'2024-12-05',NULL,'2024-12-20',29400.00),(27,36,29,'2024-12-05',NULL,'2024-12-27',126000.00),(28,7,2,'2024-12-05',NULL,'2024-12-06',0.00),(29,15,25,'2024-12-05',NULL,'2024-12-27',84000.00),(30,12,26,'2024-12-05',NULL,'2025-01-05',135000.00),(31,49,8,'2024-12-05',NULL,'2024-12-14',14000.00),(32,27,16,'2024-12-05',NULL,'2025-08-09',565800.00),(33,44,35,'2024-12-05',NULL,'2024-12-27',189000.00),(34,11,46,'2024-12-05',NULL,'2024-12-29',333500.00),(35,19,43,'2024-12-05',NULL,'2024-12-29',299000.00),(36,13,50,'2024-12-05',NULL,'2024-12-21',247500.00),(37,11,34,'2024-12-05',NULL,'2024-12-21',127500.00),(38,54,3,'2024-12-05',NULL,'2024-12-14',13600.00),(39,46,4,'2024-12-05',NULL,'2024-12-14',17600.00);
/*!40000 ALTER TABLE `rentals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `Role_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`Role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Администратор'),(2,'Менеджер');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-06  6:52:07
