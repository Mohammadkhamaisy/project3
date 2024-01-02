-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: cems
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `idQuestion` varchar(50) NOT NULL,
  `Answer1` varchar(60) DEFAULT NULL,
  `Answer2` varchar(60) DEFAULT NULL,
  `Answer3` varchar(60) DEFAULT NULL,
  `AnswerCorrect` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`idQuestion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkingcopies`
--

DROP TABLE IF EXISTS `checkingcopies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkingcopies` (
  `autoincrement` int NOT NULL AUTO_INCREMENT,
  `ExamResultID` int DEFAULT NULL,
  `startnum` int DEFAULT NULL,
  `ExamID` varchar(45) DEFAULT NULL,
  `Student1ID` varchar(45) DEFAULT NULL,
  `Student2ID` varchar(45) DEFAULT NULL,
  `SimilarPrecent` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`autoincrement`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkingcopies`
--

LOCK TABLES `checkingcopies` WRITE;
/*!40000 ALTER TABLE `checkingcopies` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkingcopies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `ID` varchar(50) NOT NULL,
  `CourseName` varchar(45) DEFAULT NULL,
  `ID_Subject` varchar(45) DEFAULT NULL,
  `Department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('11','Algebra','02','mathmatic'),('12','aotomat','02','mathmatic'),('21','Combinatorics','02','mathmatic'),('22','hedav','02','mathmatic'),('31','probability','02','mathmatic'),('33','DataStructure','07','Software'),('44','Algorithm','07','Software'),('55','c++','07','Software'),('66','c#','07','Software'),('73','Factorisation','02','mathmatic'),('77','Java','07','Software'),('87','Calculus','02','mathmatic'),('88','Advanced1','05','English'),('99','Advanced2','05','English');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currentexam`
--

DROP TABLE IF EXISTS `currentexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currentexam` (
  `examid` varchar(45) NOT NULL,
  `count` int DEFAULT '0',
  PRIMARY KEY (`examid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currentexam`
--

LOCK TABLES `currentexam` WRITE;
/*!40000 ALTER TABLE `currentexam` DISABLE KEYS */;
INSERT INTO `currentexam` VALUES ('021151',1);
/*!40000 ALTER TABLE `currentexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department_head`
--

DROP TABLE IF EXISTS `department_head`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department_head` (
  `ID` varchar(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`,`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department_head`
--

LOCK TABLES `department_head` WRITE;
/*!40000 ALTER TABLE `department_head` DISABLE KEYS */;
INSERT INTO `department_head` VALUES ('123','abd','123','abd@hotmai.com','213','abd','maria','mathmatic');
/*!40000 ALTER TABLE `department_head` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `ID` varchar(50) NOT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `Course` varchar(45) DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `DescriptionForLecturers` varchar(45) DEFAULT NULL,
  `DescriptionForStudents` varchar(45) DEFAULT NULL,
  `Question` varchar(200) DEFAULT NULL,
  `TotalPoint` varchar(45) DEFAULT NULL,
  `PointPerQuestion` varchar(200) DEFAULT NULL,
  `Lecturer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES ('021151','mathmatic','Algebra',2,NULL,NULL,'02033;02032;02046','100','02033;45;02032;23;02046;32','eiad'),('021152','mathmatic','Algebra',2,NULL,NULL,'02032','100','02032;100','eiad');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examresult`
--

DROP TABLE IF EXISTS `examresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examresult` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ExamID` varchar(45) DEFAULT NULL,
  `ExamResult` varchar(45) DEFAULT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `Course` varchar(45) DEFAULT NULL,
  `ExamAnswer` varchar(300) DEFAULT NULL,
  `pointperquestion` varchar(300) DEFAULT NULL,
  `rightanswer` varchar(300) DEFAULT NULL,
  `lecturerID` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `noteforstudent` varchar(100) DEFAULT NULL,
  `StudentID` varchar(45) DEFAULT NULL,
  `startexamNum` int DEFAULT NULL,
  `DurationTake` varchar(45) DEFAULT NULL,
  `FormSubmission` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examresult`
--

LOCK TABLES `examresult` WRITE;
/*!40000 ALTER TABLE `examresult` DISABLE KEYS */;
INSERT INTO `examresult` VALUES (211,'021151','30','mathmatic','Algebra','8;3.14;noo','0;0;0','16;3.12;noooo','1111','2023-06-18','00:11:09','1','hek','great joob','123',32,'0:5','in Time'),(212,'021151','68','mathmatic','Algebra','16;3.12;no','45;23;0','16;3.12;noooo','1111','2023-06-18','19:28:16','0','',NULL,'123',32,'0:3','in Time');
/*!40000 ALTER TABLE `examresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examstatistic`
--

DROP TABLE IF EXISTS `examstatistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examstatistic` (
  `ExamID` varchar(50) NOT NULL,
  `LecturerID` varchar(45) NOT NULL,
  `Average` double DEFAULT NULL,
  `Median` double DEFAULT NULL,
  `Lowest Grade` int DEFAULT NULL,
  `Highest Grade` int DEFAULT NULL,
  `0-9` int DEFAULT NULL,
  `10-19` int DEFAULT NULL,
  `20-29` int DEFAULT NULL,
  `30-39` int DEFAULT NULL,
  `40-49` int DEFAULT NULL,
  `50-59` int DEFAULT NULL,
  `60-69` int DEFAULT NULL,
  `70-79` int DEFAULT NULL,
  `80-89` int DEFAULT NULL,
  `90-100` int DEFAULT NULL,
  PRIMARY KEY (`ExamID`,`LecturerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examstatistic`
--

LOCK TABLES `examstatistic` WRITE;
/*!40000 ALTER TABLE `examstatistic` DISABLE KEYS */;
/*!40000 ALTER TABLE `examstatistic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finished_exam`
--

DROP TABLE IF EXISTS `finished_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finished_exam` (
  `ExamID` int NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  `Duration` varchar(50) DEFAULT NULL,
  `NumberOfStudentsStartedExam` varchar(50) DEFAULT NULL,
  `NumberOfStudentsFinishedExam` varchar(50) DEFAULT NULL,
  `NumberOfStudentsDidn'tFinish` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ExamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finished_exam`
--

LOCK TABLES `finished_exam` WRITE;
/*!40000 ALTER TABLE `finished_exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `finished_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecdurationrequest`
--

DROP TABLE IF EXISTS `lecdurationrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecdurationrequest` (
  `RequestNum` int NOT NULL AUTO_INCREMENT,
  `ExamCode` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `additionalDuration` int DEFAULT NULL,
  `LecDurationRequest` varchar(45) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`RequestNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecdurationrequest`
--

LOCK TABLES `lecdurationrequest` WRITE;
/*!40000 ALTER TABLE `lecdurationrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `lecdurationrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer` (
  `ID` varchar(50) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `SubjectID` varchar(45) DEFAULT NULL,
  `Department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`,`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer`
--

LOCK TABLES `lecturer` WRITE;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
INSERT INTO `lecturer` VALUES ('1111','eiad','123','eiad@','0546599222','eiad','mhamed','02','mathmatic'),('32323','sam','123','asd@','0546599222','sam','mhamed','05','English');
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manger`
--

DROP TABLE IF EXISTS `manger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manger` (
  `ID` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manger`
--

LOCK TABLES `manger` WRITE;
/*!40000 ALTER TABLE `manger` DISABLE KEYS */;
INSERT INTO `manger` VALUES ('123');
/*!40000 ALTER TABLE `manger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manual_exam`
--

DROP TABLE IF EXISTS `manual_exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manual_exam` (
  `exam_id` varchar(45) NOT NULL,
  `subject` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manual_exam`
--

LOCK TABLES `manual_exam` WRITE;
/*!40000 ALTER TABLE `manual_exam` DISABLE KEYS */;
INSERT INTO `manual_exam` VALUES ('',''),('021148','mathmatic'),('022246',NULL);
/*!40000 ALTER TABLE `manual_exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `QuestionNumber` varchar(50) NOT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `CourseName` varchar(45) DEFAULT NULL,
  `QuestionText` varchar(100) DEFAULT NULL,
  `LecturerID` varchar(45) DEFAULT NULL,
  `Answer1` varchar(100) DEFAULT NULL,
  `Answer2` varchar(100) DEFAULT NULL,
  `Answer3` varchar(100) DEFAULT NULL,
  `AnswerCorrect` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`QuestionNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES ('02032','mathmatic','Algebra','What is the value of π (pi) to two decimal places?','1111','3.14','3.16','3.18','3.12'),('02033','mathmatic','Algebra','What is the square root of 16?','1111','2','4','8','16'),('02040','mathmatic','Algebra','how are you?','1111','asd','af','xcv','SDv'),('02041','mathmatic','Algebra','same?','1111','yes','no ','ye','y'),('02042','mathmatic','Algebra','sadasd','1111','asFD','safs','dFSD','FsAF'),('02043','mathmatic','Algebra','asfasdfasdfgs','1111','fasd','gfasdg','adsg','adsfg'),('02046','mathmatic','Algebra','how?','1111','no','noo','nooo','noooo'),('02047','mathmatic','hedav','how?','1111','no','noo','nooo','noooo'),('02048','mathmatic','probability','hi','1111','asd','asd','sdf','sdfg'),('02049','mathmatic','hedav','asdf','1111','sdf','sdf','dsf','DSF'),('02050','mathmatic','Calculus','asfsad','1111','gadsf','gadsg','asdfg','adsfg'),('02051','mathmatic','Factorisation','23','1111','sawf','dsdf','asdf','asdg'),('02052','mathmatic','Calculus','23','1111','sawf','dsdf','asdf','asdg'),('02053','mathmatic','Factorisation','fasdf','1111','dsag','adsfg','adfsg','asdgf'),('02054','mathmatic','probability','f','1111','dsf','asdfg','gads','fa'),('02055','mathmatic','Factorisation','sadf','1111','sdf','asdf','asdfs','asdf'),('02056','mathmatic','Calculus','asf','1111','sadf','asdf','asdg','dsafg');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seesms`
--

DROP TABLE IF EXISTS `seesms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seesms` (
  `Department` varchar(45) DEFAULT NULL,
  `lecturer` varchar(45) DEFAULT NULL,
  `exam_id` varchar(45) DEFAULT NULL,
  `new duration` int NOT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `response` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seesms`
--

LOCK TABLES `seesms` WRITE;
/*!40000 ALTER TABLE `seesms` DISABLE KEYS */;
INSERT INTO `seesms` VALUES (NULL,NULL,NULL,0,NULL,'Accept'),(NULL,NULL,NULL,0,NULL,'Reject'),(NULL,NULL,NULL,0,NULL,'Accept');
/*!40000 ALTER TABLE `seesms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms` (
  `autoID` int NOT NULL AUTO_INCREMENT,
  `Department` varchar(45) DEFAULT NULL,
  `lecturer` varchar(45) DEFAULT NULL,
  `exam_id` varchar(45) DEFAULT NULL,
  `new duration` int DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  `response` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`autoID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
INSERT INTO `sms` VALUES (11,'mathmatic','eiad','021151',44,'gg','Accept');
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `startexam`
--

DROP TABLE IF EXISTS `startexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `startexam` (
  `Startnum` int NOT NULL AUTO_INCREMENT,
  `ExamID` varchar(50) NOT NULL,
  `LecturerName` varchar(45) DEFAULT NULL,
  `ExamCode` varchar(45) DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `IsLocked` int DEFAULT NULL,
  `Subject` varchar(45) DEFAULT NULL,
  `Course` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `AddDuration` int DEFAULT NULL,
  PRIMARY KEY (`Startnum`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `startexam`
--

LOCK TABLES `startexam` WRITE;
/*!40000 ALTER TABLE `startexam` DISABLE KEYS */;
INSERT INTO `startexam` VALUES (32,'021151','1111','1234','20:06:44',2,0,'mathmatic','Algebra','2023-06-17',NULL);
/*!40000 ALTER TABLE `startexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `ID` varchar(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Course` varchar(45) DEFAULT NULL,
  `Department` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`,`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('123','qotiba','123','qotib','012312','qotiba','mhamed','hedva;algebra','mathmatic'),('321','ans','123','asd@','2313','ans','mhamed','hedva;algebra','mathmatic');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_grad`
--

DROP TABLE IF EXISTS `student_grad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_grad` (
  `StudentId` varchar(45) NOT NULL,
  `tmp` int DEFAULT '0',
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_grad`
--

LOCK TABLES `student_grad` WRITE;
/*!40000 ALTER TABLE `student_grad` DISABLE KEYS */;
INSERT INTO `student_grad` VALUES ('123',0),('321',0);
/*!40000 ALTER TABLE `student_grad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `ID` varchar(50) NOT NULL,
  `SubjectName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('02','mathmatic'),('05','English'),('07','Software');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19 19:26:21
