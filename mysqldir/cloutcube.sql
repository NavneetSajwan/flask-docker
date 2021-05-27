-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: cloutcubetest
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AdminLogin`
--

DROP TABLE IF EXISTS `AdminLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AdminLogin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `password` varchar(400) DEFAULT NULL,
  `Type` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AdminLogin`
--

LOCK TABLES `AdminLogin` WRITE;
/*!40000 ALTER TABLE `AdminLogin` DISABLE KEYS */;
INSERT INTO `AdminLogin` VALUES (1,'cloutcube','metaorigins','cloutcube123@gmail.com','cloutcube@123','Admin');
/*!40000 ALTER TABLE `AdminLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BillingInfo`
--

DROP TABLE IF EXISTS `BillingInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BillingInfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `vatNo` varchar(255) NOT NULL,
  `TotalCreditScore` int NOT NULL,
  `amount` int NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `FullAddr` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BillingInfo`
--

LOCK TABLES `BillingInfo` WRITE;
/*!40000 ALTER TABLE `BillingInfo` DISABLE KEYS */;
INSERT INTO `BillingInfo` VALUES (45,1,'JHS2332',60,15,'Rahul','gurgaon','803 metaorigins lab','USD');
/*!40000 ALTER TABLE `BillingInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CreateNewFolder`
--

DROP TABLE IF EXISTS `CreateNewFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CreateNewFolder` (
  `CreateNewFolderID` int NOT NULL AUTO_INCREMENT,
  `WorkSpaceID` int NOT NULL,
  `FolderType` int NOT NULL,
  `FolderName` varchar(255) NOT NULL,
  `Level` varchar(255) NOT NULL,
  `Folderpath` text,
  `ParentId` varchar(255) NOT NULL,
  PRIMARY KEY (`CreateNewFolderID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CreateNewFolder`
--

LOCK TABLES `CreateNewFolder` WRITE;
/*!40000 ALTER TABLE `CreateNewFolder` DISABLE KEYS */;
INSERT INTO `CreateNewFolder` VALUES (1,1,0,'Rahul000000000000001','0','CLOUT_000000000000001/YourWorkSpace000000000000001/Rahul000000000000001','0'),(2,1,1,'subtitles','0','CLOUT_000000000000001/YourWorkSpace000000000000001/subtitles','0'),(3,2,0,'rahul000000000000002','0','CLOUT_000000000000002/YourWorkSpace000000000000002/rahul000000000000002','0'),(4,1,1,'jjjjjjjjj','1','CLOUT_000000000000001/YourWorkSpace000000000000001/subtitles/jjjjjjjjj','2'),(6,1,1,'k2','1','CLOUT_000000000000001/YourWorkSpace000000000000001/k1/k2','5'),(7,1,1,'k3','2','CLOUT_000000000000001/YourWorkSpace000000000000001/k1/k2/k3','6'),(8,1,1,'k4','3','CLOUT_000000000000001/YourWorkSpace000000000000001/k1/k2/k3/k4','7'),(9,3,0,'Ritika000000000000003','0','CLOUT_000000000000003/YourWorkSpace000000000000003/Ritika000000000000003','0'),(10,4,0,'metaorigin000000000000004','0','CLOUT_000000000000004/YourWorkSpace000000000000004/metaorigin000000000000004','0'),(14,2,1,'a1','1','CLOUT_000000000000002/YourWorkSpace000000000000002/a2/a1','13'),(26,2,1,'ds1','0','CLOUT_000000000000002/YourWorkSpace000000000000002/ds1','0'),(28,2,1,'a1','1','CLOUT_000000000000002/YourWorkSpace000000000000002/ds1/a1','26'),(29,1,1,'ssss','0','CLOUT_000000000000001/YourWorkSpace000000000000001/ssss','0');
/*!40000 ALTER TABLE `CreateNewFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MyVocab`
--

DROP TABLE IF EXISTS `MyVocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MyVocab` (
  `MyVocabID` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `vocab` text NOT NULL,
  PRIMARY KEY (`MyVocabID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MyVocab`
--

LOCK TABLES `MyVocab` WRITE;
/*!40000 ALTER TABLE `MyVocab` DISABLE KEYS */;
INSERT INTO `MyVocab` VALUES (1,2,'power bi data\r\napache spark'),(2,3,''),(3,4,''),(4,5,'rahul,sharma\r\nkumar'),(5,6,''),(6,1,''),(7,2,''),(8,3,''),(9,4,'');
/*!40000 ALTER TABLE `MyVocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Social_Facebook`
--

DROP TABLE IF EXISTS `Social_Facebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Social_Facebook` (
  `Social_id` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `FacebookId` varchar(255) NOT NULL,
  PRIMARY KEY (`Social_id`),
  UNIQUE KEY `UserId` (`UserId`,`FacebookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Social_Facebook`
--

LOCK TABLES `Social_Facebook` WRITE;
/*!40000 ALTER TABLE `Social_Facebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `Social_Facebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubtitleFileDescription`
--

DROP TABLE IF EXISTS `SubtitleFileDescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SubtitleFileDescription` (
  `SubtitleFileDescriptionId` int NOT NULL AUTO_INCREMENT,
  `SubtitlesDashboardId` int NOT NULL,
  `FilePath` varchar(255) NOT NULL,
  `JsonFilePath` varchar(255) NOT NULL,
  `TextFilePath` varchar(255) NOT NULL,
  `SrtFilePath` varchar(255) NOT NULL,
  `FileFormat` varchar(255) NOT NULL,
  `WorkSpaceID` int NOT NULL,
  `ParentId` int NOT NULL,
  PRIMARY KEY (`SubtitleFileDescriptionId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubtitleFileDescription`
--

LOCK TABLES `SubtitleFileDescription` WRITE;
/*!40000 ALTER TABLE `SubtitleFileDescription` DISABLE KEYS */;
INSERT INTO `SubtitleFileDescription` VALUES (5,5,'XpkytPuYgaPlGfcRdgOt.mp3','XpkytPuYgaPlGfcRdgOt.mp3.json','XpkytPuYgaPlGfcRdgOt.mp3.txt','XpkytPuYgaPlGfcRdgOt.mp3.srt','mp3',1,2),(6,6,'UNUkqjhnLlpGUiZoFZtR.mp3','UNUkqjhnLlpGUiZoFZtR.mp3.json','UNUkqjhnLlpGUiZoFZtR.mp3.txt','UNUkqjhnLlpGUiZoFZtR.mp3.srt','mp3',1,1);
/*!40000 ALTER TABLE `SubtitleFileDescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubtitleFileRating`
--

DROP TABLE IF EXISTS `SubtitleFileRating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SubtitleFileRating` (
  `RateId` int NOT NULL AUTO_INCREMENT,
  `FileId` int NOT NULL,
  `Rating` int NOT NULL,
  PRIMARY KEY (`RateId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubtitleFileRating`
--

LOCK TABLES `SubtitleFileRating` WRITE;
/*!40000 ALTER TABLE `SubtitleFileRating` DISABLE KEYS */;
INSERT INTO `SubtitleFileRating` VALUES (5,5,4),(21,21,1),(27,27,3),(28,28,3),(29,29,3),(30,30,3),(33,33,3),(39,5,4),(40,6,3);
/*!40000 ALTER TABLE `SubtitleFileRating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubtitlesDashboard`
--

DROP TABLE IF EXISTS `SubtitlesDashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SubtitlesDashboard` (
  `SubtitlesDashboardId` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `UrlId` varchar(255) NOT NULL,
  `ServiceType` varchar(255) NOT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileLength` int NOT NULL,
  `Language` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `WorkSpaceID` int NOT NULL,
  `ParentId` int NOT NULL,
  `created_at` datetime NOT NULL,
  `displayFileName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`SubtitlesDashboardId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubtitlesDashboard`
--

LOCK TABLES `SubtitlesDashboard` WRITE;
/*!40000 ALTER TABLE `SubtitlesDashboard` DISABLE KEYS */;
INSERT INTO `SubtitlesDashboard` VALUES (5,1,'dnudnurk5ozl3qby0ji3a4jhutvcye','Subtitles','XpkytPuYgaPlGfcRdgOt.mp3',3,'hi-IN','Done',1,2,'2021-01-22 10:38:40','Corona Virus_ कोरोना के मामले 1 करोड़ के पार, रफ्तार में आई कमी_.mp3'),(6,1,'ypjeuyd8pqzl1xs05nivr9lnewcfxu','Subtitles','UNUkqjhnLlpGUiZoFZtR.mp3',1,'en-GB','Done',1,1,'2021-01-26 13:57:11','Free Course _ Apache Spark 3 - Real time Stream Processing using Scala.mp3');
/*!40000 ALTER TABLE `SubtitlesDashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TranscriptDashboard`
--

DROP TABLE IF EXISTS `TranscriptDashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TranscriptDashboard` (
  `TranscriptDashboardId` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `UrlId` varchar(255) NOT NULL,
  `ServiceType` varchar(255) NOT NULL,
  `FileName` varchar(255) NOT NULL,
  `FileLength` int NOT NULL,
  `Language` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `WorkSpaceID` int NOT NULL,
  `ParentId` int NOT NULL,
  `created_at` datetime NOT NULL,
  `displayFileName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`TranscriptDashboardId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TranscriptDashboard`
--

LOCK TABLES `TranscriptDashboard` WRITE;
/*!40000 ALTER TABLE `TranscriptDashboard` DISABLE KEYS */;
INSERT INTO `TranscriptDashboard` VALUES (2,1,'c6k8fpobv4flaqthcb51nlkxk9tt0y','Transcript','tbFcvXUWUkfUBsRyLtzb.mp4',4,'af-ZA','Done',1,1,'2021-01-21 11:57:02','PySpark Tutorial _ Intro to data cleaning with Apache Spark.mp4'),(4,1,'pgxkwz8nz9bso4wl26a0042fowtpyv','Transcript','HlpfkcBllQSLhZVRvPeE.mp3',3,'hi-IN','Done',1,1,'2021-01-28 19:34:40','1___.mp3');
/*!40000 ALTER TABLE `TranscriptDashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TranscriptFileDescription`
--

DROP TABLE IF EXISTS `TranscriptFileDescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TranscriptFileDescription` (
  `TranscriptFileDescriptionId` int NOT NULL AUTO_INCREMENT,
  `TranscriptDashboardId` int NOT NULL,
  `FilePath` varchar(255) NOT NULL,
  `JsonFilePath` varchar(255) NOT NULL,
  `TextFilePath` varchar(255) NOT NULL,
  `FileFormat` varchar(255) NOT NULL,
  `WorkSpaceID` int NOT NULL,
  `ParentId` int NOT NULL,
  PRIMARY KEY (`TranscriptFileDescriptionId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TranscriptFileDescription`
--

LOCK TABLES `TranscriptFileDescription` WRITE;
/*!40000 ALTER TABLE `TranscriptFileDescription` DISABLE KEYS */;
INSERT INTO `TranscriptFileDescription` VALUES (2,2,'tbFcvXUWUkfUBsRyLtzb.mp4','tbFcvXUWUkfUBsRyLtzb.mp4.json','tbFcvXUWUkfUBsRyLtzb.mp4.txt','mp4',1,1),(4,4,'HlpfkcBllQSLhZVRvPeE.mp3','HlpfkcBllQSLhZVRvPeE.mp3.json','HlpfkcBllQSLhZVRvPeE.mp3.txt','mp3',1,1);
/*!40000 ALTER TABLE `TranscriptFileDescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TranscriptFileRating`
--

DROP TABLE IF EXISTS `TranscriptFileRating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TranscriptFileRating` (
  `RateId` int NOT NULL AUTO_INCREMENT,
  `FileId` int NOT NULL,
  `Rating` int NOT NULL,
  PRIMARY KEY (`RateId`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TranscriptFileRating`
--

LOCK TABLES `TranscriptFileRating` WRITE;
/*!40000 ALTER TABLE `TranscriptFileRating` DISABLE KEYS */;
INSERT INTO `TranscriptFileRating` VALUES (2,2,2),(5,5,5),(10,10,1),(11,11,3),(20,20,4),(33,33,4),(34,34,4),(35,35,4),(37,2,3),(39,4,1);
/*!40000 ALTER TABLE `TranscriptFileRating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserAdministration`
--

DROP TABLE IF EXISTS `UserAdministration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserAdministration` (
  `UserAdministrationId` int NOT NULL AUTO_INCREMENT,
  `UserType` varchar(255) NOT NULL,
  PRIMARY KEY (`UserAdministrationId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserAdministration`
--

LOCK TABLES `UserAdministration` WRITE;
/*!40000 ALTER TABLE `UserAdministration` DISABLE KEYS */;
INSERT INTO `UserAdministration` VALUES (1,'Admin'),(2,'SubAdmin'),(3,'User');
/*!40000 ALTER TABLE `UserAdministration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserCreditAccount`
--

DROP TABLE IF EXISTS `UserCreditAccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserCreditAccount` (
  `CreditId` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `TotalCreditScore` int NOT NULL,
  PRIMARY KEY (`CreditId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserCreditAccount`
--

LOCK TABLES `UserCreditAccount` WRITE;
/*!40000 ALTER TABLE `UserCreditAccount` DISABLE KEYS */;
INSERT INTO `UserCreditAccount` VALUES (1,1,703),(2,2,10),(3,3,10),(4,4,10),(5,1,703),(6,2,10),(7,3,10),(8,4,10),(9,1,703),(10,2,10),(11,3,10),(12,4,10),(13,1,703),(14,2,10),(15,3,10),(16,4,10),(17,1,703),(18,2,10),(19,3,10),(20,4,10);
/*!40000 ALTER TABLE `UserCreditAccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserRegisterLogin`
--

DROP TABLE IF EXISTS `UserRegisterLogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserRegisterLogin` (
  `UserId` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `password` varchar(400) DEFAULT NULL,
  `GmailToken` varchar(400) DEFAULT NULL,
  `Type` varchar(400) NOT NULL,
  `created_at` datetime NOT NULL,
  `BillingAddress` varchar(45) NOT NULL DEFAULT '',
  `VatNo` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserRegisterLogin`
--

LOCK TABLES `UserRegisterLogin` WRITE;
/*!40000 ALTER TABLE `UserRegisterLogin` DISABLE KEYS */;
INSERT INTO `UserRegisterLogin` VALUES (1,'Rahul','Sharma','rahul@metaorigins.com','pbkdf2:sha256:150000$E6MZMGl1$a7da0de1f4027cbb8d46cc635f6b0ed9bf1055ca5b08fd5476daffbe3723da3d','pbkdf2:sha256:150000$E8uHdPMA$6d07a05cd132f90806587eae33d29ed738328e02d3eab6bd55696df7a20865a5','User','2021-01-19 13:03:53','803 metaorigins lab','JHS2332'),(2,'rahul','panditgggggggg','rahulpandit151197@gmail.com','pbkdf2:sha256:150000$WkuLHkqM$25d1c247d30ae1c5f1fc5966580963c63f2197dd6537d9b1be320d18a256956d','pbkdf2:sha256:150000$roXUKPkc$8c9cac57b0171c1180894fe134e097d3204d2e40d82b41b56d19ff6dc0be2589','User','2021-02-05 18:27:42','',''),(3,'Ritikadssd','fffff','ritika@metaorigins.com','pbkdf2:sha256:150000$9okqctqF$6cbd4bdc1f4c73f49aed484f7956614db85e0fec24e931095f9196709509ba2a','pbkdf2:sha256:150000$WjfoT6YP$aeab5d5b4158c36fad6f12460e370e32ba9f70b2df7247e5c062125d21bb39d4','User','2021-02-09 16:23:03','',''),(4,'metaorigin','Labs','cloutcube123@gmail.com','pbkdf2:sha256:150000$Ntvz4Zxs$d504c7643562512708c4031ba75d2879ba2e13f211d97d0d619a8b1b214159cc','pbkdf2:sha256:150000$BI3CLy1e$4947af937a1a9ad7e0eac0eff155eef7b3ffb1cfe885a89b5bf756bd041a4e32','User','2021-02-09 17:19:47','','');
/*!40000 ALTER TABLE `UserRegisterLogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkSpace`
--

DROP TABLE IF EXISTS `WorkSpace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WorkSpace` (
  `WorkSpaceID` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `WorkSpaceType` int NOT NULL,
  `WorkSpaceName` varchar(255) NOT NULL,
  `RootDirectoryPath` varchar(255) NOT NULL,
  PRIMARY KEY (`WorkSpaceID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkSpace`
--

LOCK TABLES `WorkSpace` WRITE;
/*!40000 ALTER TABLE `WorkSpace` DISABLE KEYS */;
INSERT INTO `WorkSpace` VALUES (1,1,0,'YourWorkSpace000000000000001','CLOUT_000000000000001'),(2,2,0,'YourWorkSpace000000000000002','CLOUT_000000000000002'),(3,3,0,'YourWorkSpace000000000000003','CLOUT_000000000000003'),(4,4,0,'YourWorkSpace000000000000004','CLOUT_000000000000004');
/*!40000 ALTER TABLE `WorkSpace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workspace_subscriptions`
--

DROP TABLE IF EXISTS `Workspace_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Workspace_subscriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `payment_method` enum('stripe') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'stripe',
  `stripe_subscription_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stripe_customer_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stripe_plan_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `plan_amount` float(10,2) NOT NULL,
  `plan_amount_currency` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `plan_interval` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `plan_interval_count` tinyint NOT NULL,
  `payer_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `plan_period_start` datetime NOT NULL,
  `plan_period_end` datetime NOT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workspace_subscriptions`
--

LOCK TABLES `Workspace_subscriptions` WRITE;
/*!40000 ALTER TABLE `Workspace_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Workspace_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartID` int NOT NULL AUTO_INCREMENT,
  `UserId` int NOT NULL,
  `hour` int NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`cartID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (4,3,31,465),(18,5,1,15),(24,2,15,225),(26,1,1,15);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-14 17:25:21
