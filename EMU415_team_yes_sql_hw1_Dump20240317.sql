CREATE DATABASE  IF NOT EXISTS `emu415_yes_sql` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `emu415_yes_sql`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: emu415_yes_sql
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_members` (
  `member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `join_year` int(11) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `website_url` varchar(512) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `graduation_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `join_year` (`join_year`),
  KEY `student_id` (`student_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
INSERT INTO `team_members` VALUES (1,'Cemil','Neşe',21948303,'cemilnese2@gmail.com','2001-04-22',2019,'Hello! I am a final year Industrial Engineering student at\n Hacettepe University. I have a keen interest in the aviation and IT industries.\n Currently, I am trying to learn the software and tools used in the fields of data analytics and\n data science. My career goal is to develop solution algorithms based on real-life problems by\n blending operations research and software fundamentals.','https://www.linkedin.com/in/cemilnese01/',22,2024),(2,'Ömer Faruk','Çiftçi',21831151,'ciftci.omerfaruk@outlook.com','1999-02-06',2018,'I am a senior student\n in the Industrial Engineering Department at Hacettepe University, Turkey. I have\n participated in one of the biggest student clubs at Hacettepe University. Thanks\n to my education and personal interests, I have been striving to improve myself in the fields\n of Data Science, Machine Learning, and Optimization. In July 2021, I completed YetGen education,\n which is a 12-week 21st-century competencies training program.\n I aim to blend the knowledge I have gained from my experiences with theoretical knowledge\n to advance my career in this field.','https://www.linkedin.com/in/omerfarukciftci/',25,2023),(3,'Emre','Gül',21948121,'emregul_57@hotmail.com','2000-03-10',2019,'Emre Gül is a fourth-year\n student of Industrial Engineering at Hacettepe University. Currently, he works as a Project Engineer Intern\n at Otokar,where he actively contributes to enhancing business processes and demonstrates a keen interest in\n data analysis and machine learning. Throughout his academic journey, Emre has garnered diverse internship\n experiences, including a stint at Otokoç Automotive\'s Used Pricing Department, where he gained insights\n into finance and car pricing methodologies. There, he developed a pricing module using Python.\n Additionally, his internship at Koçzer provided him with valuable exposure to the e-commerce sector.\n Presently, Emre is dedicated to his graduation project focusing on the machinist assignment project\n at Körfez Ulaştırma. Apart from his academic pursuits, he indulges in amateur horseback riding and\n paragliding as hobbies.','https://www.linkedin.com/in/emregul57',24,2024),(4,'Kerem','Kaplan',21948168,'keremkpln6@gmail.com','2001-10-29',2019,'Kerem Kaplan is a final year\n student at Hacettepe University, Industrial Engineering Department. He works at TÜPRAŞ\n ( Turkish Petrolium Rafinery) as a Candidate Engineer. In addition to daily operations in\n the Production Planning Department, he also learns the optimization tools used when making\n monthly production plans. He interested with developing  projects via PowerBI and R Studio.\n He wants to continue her career as an industrial engineer in production planning and data analysis areas.','https://www.linkedin.com/in/kerem--kaplan',22,2024),(5,'Beyza','Göktaş',21948102,'beyzagoktas26@gmail.com','2001-07-22',2019,'Beyza Göktaş is a final year\n student in the Industrial Engineering Department at Hacettepe University. She works as a Candidate Engineer at FNSS,\n a defense company, where she develops strategies in the business strategies unit to ensure sustainable growth and\n competitive advantage for the company. Even though she has gained all her internship experiences in the defense industry,\n she aims to work in another sector focusing on data science.','https://www.linkedin.com/in/beyza-goktas',22,2024),(6,'Ahmet Taha','Karakaya',21948192,'ahmettaha736@gmail.com','2001-06-26',2019,'Taha Karakaya is currently\n a fourth-year student pursuing a degree in Industrial Engineering at Hacettepe University.\n Alongside his academic endeavors, he works at Aselsan as a Candidate Planning Engineer.\n Additionally, after graduation, he aims to work in a position where he can actively utilize\n advanced data analysis for corporate growth and success. Apart from these, he is a billiard\n enthusiast and chess addict.','www.linkedin.com/in/taha-karakaya',22,2024),(7,'Hatice Nur','Güneş',21948135,'haticenurgunes06@gmail.com','2001-12-02',2019,'Hatice Nur Güneş is a\n final year student of Industrial Engineering at Hacettepe University. Although she is currently not employed,\n she gained significant knowledge and experience in the field of quality management during her internship at the\n defense industry. However, she was not entirely satisfied with the workings of the department during her internship\n and opted to develop herself in a different field. Therefore, she aims to gain diverse skills by exploring different\n departments.','www.linkedin.com/in/hatice-nur-gunes',22,2024);
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-17  1:52:11
