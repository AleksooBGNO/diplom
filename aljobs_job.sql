-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: aljobs
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `requirements` text NOT NULL,
  `company` varchar(100) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `job_type` varchar(50) DEFAULT NULL,
  `experience_level` varchar(50) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `user_id` int NOT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `job_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'Senior Python Developer','We are looking for an experienced Python developer to join our team. You will be working on cutting-edge projects using modern technologies and best practices.','• 5+ years experience with Python\n• Strong knowledge of Flask and Django frameworks\n• Experience with RESTful APIs\n• Solid understanding of databases\n• Good communication skills\n• Fluent English','TechCorp Bulgaria','София',NULL,NULL,NULL,'2025-02-23 13:12:02',1,0),(2,'Frontend React Developer','Join our dynamic team developing cutting-edge web applications using React and modern JavaScript.','• 3+ years experience with React\n• Strong JavaScript knowledge\n• Experience with Redux\n• CSS and responsive design\n• Team player\n• Good English','Digital Solutions Ltd','Пловдив',NULL,NULL,NULL,'2025-02-23 13:12:02',1,1),(3,'Data Scientist','Looking for a Data Scientist to join our AI team. You will work on machine learning models and data analysis projects.','• MSc/PhD in Computer Science, Mathematics or related field\n• Experience with Python, R, and SQL\n• Knowledge of machine learning algorithms\n• Experience with TensorFlow or PyTorch\n• Strong analytical skills\n• Excellent problem-solving abilities','AI Solutions BG','София',NULL,NULL,NULL,'2025-02-23 13:12:02',1,1),(4,'DevOps Engineer','Join our DevOps team to build and maintain cloud infrastructure and CI/CD pipelines.','• 3+ years DevOps experience\n• Strong knowledge of AWS/Azure\n• Experience with Docker and Kubernetes\n• Terraform and Infrastructure as Code\n• Linux administration skills\n• Shell scripting','Cloud Systems Ltd','Варна',NULL,NULL,NULL,'2025-02-23 13:12:02',1,1),(5,'UI/UX Designer','We are seeking a talented UI/UX Designer to create beautiful and functional interfaces for our clients.','• 3+ years UI/UX design experience\n• Proficiency in Figma and Adobe Creative Suite\n• Strong portfolio of web and mobile designs\n• Understanding of user-centered design principles\n• Experience with design systems\n• Good communication skills','Creative Studio BG','София',NULL,NULL,NULL,'2025-02-23 13:12:02',1,1),(6,'Java Backend Developer','Join our backend team to develop high-performance financial applications.','• 4+ years Java development experience\n• Spring Boot and Spring Framework\n• Experience with microservices\n• SQL and NoSQL databases\n• RESTful API design\n• Understanding of financial domain','FinTech Solutions','Бургас',NULL,NULL,NULL,'2025-02-23 13:12:02',1,1),(7,'Mobile App Developer','Looking for an experienced mobile developer to create native iOS and Android applications.','• 3+ years mobile development\n• Native iOS (Swift) or Android (Kotlin)\n• Experience with React Native\n• Understanding of mobile UI/UX principles\n• Knowledge of app store deployment\n• Experience with mobile testing','App Masters','София',NULL,NULL,NULL,'2025-02-23 13:12:02',1,1),(10,'Сладкар','Да','ДА','Куманов','Стара Загора',NULL,NULL,NULL,'2025-03-06 16:02:54',2,1),(11,'\"Стани един от нас-стани войник\"','Професионален войник','Средно образование,физически и психически здрав,придобити квалификации като шофьрска книжка категория \"С\" са предимство!','Министерство на отбраната','Военно окръжие Стара Загора',NULL,NULL,NULL,'2025-03-10 17:30:52',2,1),(12,'Sorted Sullman Call Center','Work with american idiots','Be Sullman Tanatra','Jordan Logistics','Amman, Jordan',NULL,NULL,NULL,'2025-03-17 16:50:09',2,1),(13,'Заварчик','Заварване на желязо','Да имат опит в сферата','Завари ЕООД','Стара Загора','2000','Договор за определен срок','1-3 години','2025-03-27 15:58:27',2,1);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-11 22:19:15
