CREATE DATABASE  IF NOT EXISTS `gwizards` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gwizards`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gwizards
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `company_no` int(11) NOT NULL AUTO_INCREMENT,
  `company_type_no` int(11) NOT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `company_address` varchar(100) DEFAULT NULL,
  `company_contact1` varchar(45) DEFAULT NULL,
  `company_email` varchar(55) DEFAULT NULL,
  `company_phone_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`company_no`),
  KEY `company_fk1` (`company_type_no`),
  CONSTRAINT `company_fk1` FOREIGN KEY (`company_type_no`) REFERENCES `company_type` (`company_type_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,1,'Roo rules??','test','test','test',909090900),(2,1,'My Company','sf','sdf','df',NULL),(3,1,'my comp11','sf','adf','adf',NULL),(4,1,'my comp33','adf','afd','af',NULL),(5,1,'Format Ltd','','','',NULL),(6,1,'test222','','','',NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_type`
--

DROP TABLE IF EXISTS `company_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_type` (
  `company_type_no` int(11) NOT NULL AUTO_INCREMENT,
  `company_type_desc` text,
  PRIMARY KEY (`company_type_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_type`
--

LOCK TABLES `company_type` WRITE;
/*!40000 ALTER TABLE `company_type` DISABLE KEYS */;
INSERT INTO `company_type` VALUES (1,'Social');
/*!40000 ALTER TABLE `company_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_permission`
--

DROP TABLE IF EXISTS `document_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_permission` (
  `document_permission_no` int(11) NOT NULL,
  `document_permission_type` varchar(45) NOT NULL,
  PRIMARY KEY (`document_permission_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_permission`
--

LOCK TABLES `document_permission` WRITE;
/*!40000 ALTER TABLE `document_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_version`
--

DROP TABLE IF EXISTS `document_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_version` (
  `document_version_no` int(11) NOT NULL,
  `document_version_creation_date` datetime NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`document_version_no`),
  KEY `fk_author_id_idx` (`author_id`),
  CONSTRAINT `fk_author_id` FOREIGN KEY (`author_id`) REFERENCES `staff` (`staff_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_version`
--

LOCK TABLES `document_version` WRITE;
/*!40000 ALTER TABLE `document_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `invoice_no` int(11) NOT NULL AUTO_INCREMENT,
  `live_project_no` int(11) NOT NULL,
  `invoice_amt` float DEFAULT NULL,
  `date_issued` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_paid` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`invoice_no`),
  KEY `invoice_fk1` (`live_project_no`),
  CONSTRAINT `invoice_fk1` FOREIGN KEY (`live_project_no`) REFERENCES `live_project` (`live_project_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead`
--

DROP TABLE IF EXISTS `lead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead` (
  `lead_no` int(11) NOT NULL AUTO_INCREMENT,
  `lead_type_no` int(11) NOT NULL,
  `lead_date` timestamp NULL DEFAULT NULL,
  `staff_no` int(11) NOT NULL,
  `company_no` int(11) NOT NULL,
  `company_initial_contact` varchar(100) DEFAULT NULL,
  `company_initial_email` varchar(100) DEFAULT NULL,
  `company_initial_phone_no` varchar(11) DEFAULT NULL,
  `lead_description` text,
  PRIMARY KEY (`lead_no`),
  KEY `lead_fk1` (`staff_no`),
  KEY `lead_fk2` (`lead_type_no`),
  KEY `lead_fk3` (`company_no`),
  CONSTRAINT `lead_fk1` FOREIGN KEY (`staff_no`) REFERENCES `staff` (`staff_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lead_fk2` FOREIGN KEY (`lead_type_no`) REFERENCES `lead_type` (`lead_type_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lead_fk3` FOREIGN KEY (`company_no`) REFERENCES `company` (`company_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead`
--

LOCK TABLES `lead` WRITE;
/*!40000 ALTER TABLE `lead` DISABLE KEYS */;
INSERT INTO `lead` VALUES (1,1,'2012-09-08 19:50:43',2,1,'af','dfa','faf','afa'),(2,1,'2012-09-08 20:25:56',2,1,'pradeep','p','999','p'),(3,1,'2012-09-09 14:58:57',2,1,'Hugh','grant@gg.com','444',''),(4,1,'2012-09-12 17:01:11',2,1,'Razmy','afa','af','affs'),(5,2,'2012-09-14 12:51:21',2,1,'dfa','afda','','afa'),(6,1,'2012-09-14 15:05:08',2,1,'adf','adf','af','af'),(7,1,'2012-09-14 15:05:51',2,1,'adf','adf','af','af'),(8,1,'2012-09-14 15:15:37',2,1,'adf','adf','af','af'),(9,1,'2012-09-19 14:07:09',2,1,'afa','afa','',''),(10,1,'2012-09-19 14:08:31',2,1,'afa','afa','',''),(11,1,'2012-09-22 18:40:18',2,1,'test','test@test.com','',''),(12,1,'2012-09-22 18:51:37',2,5,'sfa','sfa@hotmail.com','','just a test'),(13,1,'2012-10-10 11:16:34',2,6,'test','test@gmail.com','','');
/*!40000 ALTER TABLE `lead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_followup`
--

DROP TABLE IF EXISTS `lead_followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_followup` (
  `lead_followup_no` int(11) NOT NULL AUTO_INCREMENT,
  `lead_no` int(11) NOT NULL,
  `lead_date_followup` timestamp NULL DEFAULT NULL,
  `lead_followup_desc` mediumtext,
  `lead_status` varchar(45) DEFAULT NULL,
  `lead_followup_status_no` int(11) NOT NULL,
  `staff_no` int(11) NOT NULL,
  PRIMARY KEY (`lead_followup_no`),
  KEY `lead_followup_fk1` (`lead_no`),
  KEY `lead_followup_fk2` (`lead_followup_status_no`),
  KEY `lead_followup_fk3` (`staff_no`),
  CONSTRAINT `lead_followup_fk1` FOREIGN KEY (`lead_no`) REFERENCES `lead` (`lead_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lead_followup_fk2` FOREIGN KEY (`lead_followup_status_no`) REFERENCES `lead_followup_status` (`lead_followup_status_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lead_followup_fk3` FOREIGN KEY (`staff_no`) REFERENCES `staff` (`staff_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_followup`
--

LOCK TABLES `lead_followup` WRITE;
/*!40000 ALTER TABLE `lead_followup` DISABLE KEYS */;
INSERT INTO `lead_followup` VALUES (1,1,'2012-12-01 00:00:00','sdfa',NULL,1,2),(2,2,'2012-12-01 00:00:00','hello testing',NULL,1,2),(3,4,'2012-12-01 00:00:00','dfaf',NULL,1,2),(4,1,'2012-12-01 00:00:00','few',NULL,1,2),(5,2,'2012-12-01 00:00:00','',NULL,1,2),(6,2,'2012-12-01 00:00:00','',NULL,1,2),(7,1,'2013-08-08 23:00:00','',NULL,1,2),(8,7,'2013-07-08 23:00:00','df',NULL,1,2),(9,8,'2013-12-09 00:00:00','sdfa',NULL,1,2),(10,11,'2012-12-09 00:00:00','sfafaf',NULL,1,2),(11,11,'2012-12-09 00:00:00','sfafaf',NULL,1,2),(12,12,'2013-08-08 23:00:00','Spoke to the directors',NULL,1,2),(13,12,'2012-12-09 00:00:00','',NULL,1,2),(14,2,'2012-10-09 23:00:00','',NULL,1,2),(15,13,'2012-11-10 00:00:00','test',NULL,1,2),(16,12,'2012-11-10 00:00:00','No further action',NULL,2,2),(17,13,'2012-10-09 23:00:00','No further action',NULL,2,2),(18,12,'2014-04-10 23:00:00','test',NULL,1,2),(19,12,'2014-03-11 00:00:00','just testing',NULL,2,2),(20,12,'2012-01-12 00:00:00','test',NULL,2,2);
/*!40000 ALTER TABLE `lead_followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_followup_status`
--

DROP TABLE IF EXISTS `lead_followup_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_followup_status` (
  `lead_followup_status_no` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(100) NOT NULL,
  PRIMARY KEY (`lead_followup_status_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_followup_status`
--

LOCK TABLES `lead_followup_status` WRITE;
/*!40000 ALTER TABLE `lead_followup_status` DISABLE KEYS */;
INSERT INTO `lead_followup_status` VALUES (1,'Pending'),(2,'Completed');
/*!40000 ALTER TABLE `lead_followup_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lead_type`
--

DROP TABLE IF EXISTS `lead_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lead_type` (
  `lead_type_no` int(11) NOT NULL AUTO_INCREMENT,
  `lead_type_description` varchar(45) NOT NULL,
  PRIMARY KEY (`lead_type_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lead_type`
--

LOCK TABLES `lead_type` WRITE;
/*!40000 ALTER TABLE `lead_type` DISABLE KEYS */;
INSERT INTO `lead_type` VALUES (1,'Company Contact'),(2,'Student Contact');
/*!40000 ALTER TABLE `lead_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_project`
--

DROP TABLE IF EXISTS `live_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_project` (
  `live_project_no` int(11) NOT NULL AUTO_INCREMENT,
  `project_short_name` varchar(255) NOT NULL,
  `project_type_no` int(11) NOT NULL,
  `project_status_no` int(11) NOT NULL,
  `project_fin_no` int(11) NOT NULL,
  `project_total_cost` decimal(9,2) DEFAULT NULL,
  `project_total_outstanding` varchar(45) DEFAULT NULL,
  `lead_followup_no` int(11) NOT NULL,
  `project_start` date DEFAULT NULL,
  `project_end` date DEFAULT NULL,
  PRIMARY KEY (`live_project_no`),
  KEY `live_project_fk2` (`project_type_no`),
  KEY `live_project_fk3` (`project_status_no`),
  KEY `live_project_fk4` (`project_fin_no`),
  KEY `live_project_fk5` (`live_project_no`),
  KEY `live_project_fk6` (`live_project_no`),
  KEY `live_project_fk1` (`lead_followup_no`),
  CONSTRAINT `live_project_fk1` FOREIGN KEY (`lead_followup_no`) REFERENCES `lead_followup` (`lead_followup_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `live_project_fk2` FOREIGN KEY (`project_type_no`) REFERENCES `project_type` (`project_type_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `live_project_fk3` FOREIGN KEY (`project_status_no`) REFERENCES `project_status_type` (`project_status_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `live_project_fk4` FOREIGN KEY (`project_fin_no`) REFERENCES `project_finance` (`project_finance_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_project`
--

LOCK TABLES `live_project` WRITE;
/*!40000 ALTER TABLE `live_project` DISABLE KEYS */;
INSERT INTO `live_project` VALUES (1,'Project Alpha',1,2,1,NULL,NULL,1,'2012-08-23',NULL),(2,'Project Bravo',1,1,1,NULL,NULL,3,'2012-08-02',NULL),(3,'Project Charlie',1,1,1,NULL,NULL,1,'2012-07-23',NULL),(4,'Project Delta',1,1,1,NULL,NULL,6,'2012-08-04',NULL),(5,'Project Echo',1,1,1,NULL,NULL,9,'2012-06-23',NULL),(6,'Project Foxtrot',1,1,1,NULL,NULL,1,'2012-05-23',NULL),(7,'Project Golf',1,1,1,NULL,NULL,1,'2012-08-23',NULL),(8,'Project Hotel',1,1,1,NULL,NULL,19,NULL,NULL),(9,'Project India',1,1,1,NULL,NULL,16,NULL,NULL);
/*!40000 ALTER TABLE `live_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_project_document`
--

DROP TABLE IF EXISTS `live_project_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_project_document` (
  `live_project_document_no` int(11) NOT NULL,
  `live_project_document_name` varchar(45) NOT NULL,
  `live_project_document_type` varchar(45) DEFAULT NULL,
  `live_project_no` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `document_permission_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`live_project_document_no`),
  KEY `fk_live_project_no_idx` (`live_project_no`),
  KEY `fk_author_id_idx` (`author_id`),
  KEY `fk_document_permission_no_idx` (`document_permission_no`),
  KEY `fk_lpd_lpn_idx` (`live_project_no`),
  KEY `fk_lpd_author_idx` (`author_id`),
  KEY `fk_lpd_dpn_idx` (`document_permission_no`),
  CONSTRAINT `fk_lpd_author` FOREIGN KEY (`author_id`) REFERENCES `staff` (`staff_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpd_dpn` FOREIGN KEY (`document_permission_no`) REFERENCES `document_permission` (`document_permission_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpd_lpn` FOREIGN KEY (`live_project_no`) REFERENCES `live_project` (`live_project_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_project_document`
--

LOCK TABLES `live_project_document` WRITE;
/*!40000 ALTER TABLE `live_project_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_project_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_project_document_version`
--

DROP TABLE IF EXISTS `live_project_document_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_project_document_version` (
  `live_project_document_version_no` int(11) NOT NULL,
  `live_project_document_no` int(11) NOT NULL,
  `document_version_no` int(11) NOT NULL,
  PRIMARY KEY (`live_project_document_version_no`),
  KEY `fk_lpdv_lpd_idx` (`live_project_document_no`),
  KEY `fk_lpdv_dv_idx` (`document_version_no`),
  CONSTRAINT `fk_lpdv_dv` FOREIGN KEY (`document_version_no`) REFERENCES `live_project_document_version` (`live_project_document_version_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpdv_lpd` FOREIGN KEY (`live_project_document_no`) REFERENCES `live_project_document` (`live_project_document_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_project_document_version`
--

LOCK TABLES `live_project_document_version` WRITE;
/*!40000 ALTER TABLE `live_project_document_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_project_document_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_project_review`
--

DROP TABLE IF EXISTS `live_project_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_project_review` (
  `live_project_review_no` int(11) NOT NULL,
  `live_project_no` int(11) NOT NULL,
  `review_no` int(11) NOT NULL,
  PRIMARY KEY (`live_project_review_no`),
  KEY `fk_lpr_lp_idx` (`live_project_no`),
  KEY `fk_lpr_review_idx` (`review_no`),
  CONSTRAINT `fk_lpr_lp` FOREIGN KEY (`live_project_no`) REFERENCES `live_project` (`live_project_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpr_review` FOREIGN KEY (`review_no`) REFERENCES `review` (`review_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_project_review`
--

LOCK TABLES `live_project_review` WRITE;
/*!40000 ALTER TABLE `live_project_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_project_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_project_stage`
--

DROP TABLE IF EXISTS `live_project_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_project_stage` (
  `live_project_stage_no` int(11) NOT NULL AUTO_INCREMENT,
  `live_project_no` int(11) NOT NULL,
  `stage_no` int(11) NOT NULL,
  PRIMARY KEY (`live_project_stage_no`),
  KEY `fk_lps_lp_idx` (`live_project_no`),
  KEY `fk_lps_stage_idx` (`stage_no`),
  CONSTRAINT `fk_lps_lp` FOREIGN KEY (`live_project_no`) REFERENCES `live_project` (`live_project_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lps_stage` FOREIGN KEY (`stage_no`) REFERENCES `stage` (`stage_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_project_stage`
--

LOCK TABLES `live_project_stage` WRITE;
/*!40000 ALTER TABLE `live_project_stage` DISABLE KEYS */;
INSERT INTO `live_project_stage` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,3),(9,2,4),(10,2,5),(11,3,1),(12,3,2),(13,3,3),(14,3,4),(15,3,5),(16,4,1),(17,4,2),(18,4,3),(19,4,4),(20,4,5),(21,5,1),(22,5,2),(23,5,3),(24,5,4),(25,5,5),(26,6,1),(27,6,2),(28,6,3),(29,6,4),(30,6,5),(31,7,1),(32,7,2),(33,7,3),(34,7,4),(35,7,5),(36,8,1),(37,8,2),(38,8,3),(39,8,4),(40,8,5),(41,9,1),(42,9,2),(43,9,3),(44,9,4),(45,9,5);
/*!40000 ALTER TABLE `live_project_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_project_stage_document`
--

DROP TABLE IF EXISTS `live_project_stage_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_project_stage_document` (
  `live_project_stage_document_no` int(11) NOT NULL,
  `live_project_stage_document_name` varchar(45) NOT NULL,
  `live_project_stage_document_type` varchar(45) NOT NULL,
  `live_project_stage_no` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `document_permission_no` int(11) NOT NULL,
  PRIMARY KEY (`live_project_stage_document_no`),
  KEY `fk_lpsd_lps_idx` (`live_project_stage_no`),
  KEY `fk_lpsd_author_idx` (`author_id`),
  KEY `fk_lpsd_dp_idx` (`document_permission_no`),
  CONSTRAINT `fk_lpsd_lps` FOREIGN KEY (`live_project_stage_no`) REFERENCES `live_project_stage` (`live_project_stage_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpsd_author` FOREIGN KEY (`author_id`) REFERENCES `staff` (`staff_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpsd_dp` FOREIGN KEY (`document_permission_no`) REFERENCES `document_permission` (`document_permission_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_project_stage_document`
--

LOCK TABLES `live_project_stage_document` WRITE;
/*!40000 ALTER TABLE `live_project_stage_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_project_stage_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_project_stage_document_version`
--

DROP TABLE IF EXISTS `live_project_stage_document_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_project_stage_document_version` (
  `live_project_stage_document_version_no` int(11) NOT NULL,
  `live_project_stage_document_no` int(11) NOT NULL,
  `document_version_no` int(11) NOT NULL,
  PRIMARY KEY (`live_project_stage_document_version_no`),
  KEY `fk_lpsdv_lpsd_idx` (`live_project_stage_document_no`),
  KEY `fk_lpsdv_dv_idx` (`document_version_no`),
  CONSTRAINT `fk_lpsdv_dv` FOREIGN KEY (`document_version_no`) REFERENCES `document_version` (`document_version_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpsdv_lpsd` FOREIGN KEY (`live_project_stage_document_no`) REFERENCES `live_project_stage_document` (`live_project_stage_document_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_project_stage_document_version`
--

LOCK TABLES `live_project_stage_document_version` WRITE;
/*!40000 ALTER TABLE `live_project_stage_document_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_project_stage_document_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_project_stage_task`
--

DROP TABLE IF EXISTS `live_project_stage_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_project_stage_task` (
  `live_project_stage_task_no` int(11) NOT NULL AUTO_INCREMENT,
  `live_project_stage_no` int(11) NOT NULL,
  `task_no` int(11) NOT NULL,
  PRIMARY KEY (`live_project_stage_task_no`),
  KEY `fk_lpst_lps_idx` (`live_project_stage_no`),
  KEY `fk_lpst_task_idx` (`task_no`),
  CONSTRAINT `fk_lpst_lps` FOREIGN KEY (`live_project_stage_no`) REFERENCES `live_project_stage` (`live_project_stage_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpst_task` FOREIGN KEY (`task_no`) REFERENCES `task` (`task_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_project_stage_task`
--

LOCK TABLES `live_project_stage_task` WRITE;
/*!40000 ALTER TABLE `live_project_stage_task` DISABLE KEYS */;
INSERT INTO `live_project_stage_task` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,13),(5,3,4),(6,3,5),(7,3,6),(8,3,7),(9,3,8),(10,3,9),(11,4,10),(12,4,11),(13,4,12),(14,5,14),(15,5,15),(16,6,1),(17,7,2),(18,7,3),(19,7,13),(20,8,4),(21,8,5),(22,8,6),(23,8,7),(24,8,8),(25,8,9),(26,9,10),(27,9,11),(28,9,12),(29,10,14),(30,10,15);
/*!40000 ALTER TABLE `live_project_stage_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_project_stage_task_document`
--

DROP TABLE IF EXISTS `live_project_stage_task_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_project_stage_task_document` (
  `live_project_stage_task_document_no` int(11) NOT NULL,
  `live_project_stage_task_document_name` varchar(45) NOT NULL,
  `live_project_stage_task_document_type` varchar(45) NOT NULL,
  `live_project_stage_task_no` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `document_permission_no` int(11) NOT NULL,
  PRIMARY KEY (`live_project_stage_task_document_no`),
  KEY `fk_lpstd_lpst_idx` (`live_project_stage_task_no`),
  KEY `fk_lpstd_author_idx` (`author_id`),
  KEY `fk_lpstd_dp_idx` (`document_permission_no`),
  CONSTRAINT `fk_lpstd_lpst` FOREIGN KEY (`live_project_stage_task_no`) REFERENCES `live_project_stage_task` (`live_project_stage_task_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpstd_author` FOREIGN KEY (`author_id`) REFERENCES `staff` (`staff_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpstd_dp` FOREIGN KEY (`document_permission_no`) REFERENCES `document_permission` (`document_permission_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_project_stage_task_document`
--

LOCK TABLES `live_project_stage_task_document` WRITE;
/*!40000 ALTER TABLE `live_project_stage_task_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_project_stage_task_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_project_stage_task_document_version`
--

DROP TABLE IF EXISTS `live_project_stage_task_document_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_project_stage_task_document_version` (
  `live_project_stage_task_document_version_no` int(11) NOT NULL,
  `live_project_stage_task_document_no` int(11) NOT NULL,
  `document_version_no` int(11) NOT NULL,
  PRIMARY KEY (`live_project_stage_task_document_version_no`),
  KEY `fk_lpstdv_lpstd_idx` (`live_project_stage_task_document_no`),
  KEY `fk_lpstdv_dv_idx` (`document_version_no`),
  CONSTRAINT `fk_lpstdv_dv` FOREIGN KEY (`document_version_no`) REFERENCES `document_version` (`document_version_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lpstdv_lpstd` FOREIGN KEY (`live_project_stage_task_document_no`) REFERENCES `live_project_stage_task_document` (`live_project_stage_task_document_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_project_stage_task_document_version`
--

LOCK TABLES `live_project_stage_task_document_version` WRITE;
/*!40000 ALTER TABLE `live_project_stage_task_document_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_project_stage_task_document_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_finance`
--

DROP TABLE IF EXISTS `project_finance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_finance` (
  `project_finance_no` int(11) NOT NULL AUTO_INCREMENT,
  `project_finance_desc` text,
  `project_finance_status` varchar(45) DEFAULT NULL,
  `project_finance_status_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`project_finance_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_finance`
--

LOCK TABLES `project_finance` WRITE;
/*!40000 ALTER TABLE `project_finance` DISABLE KEYS */;
INSERT INTO `project_finance` VALUES (1,'Good ',NULL,NULL),(2,'Bad',NULL,NULL);
/*!40000 ALTER TABLE `project_finance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_review`
--

DROP TABLE IF EXISTS `project_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_review` (
  `live_project_no` int(11) NOT NULL AUTO_INCREMENT,
  `project_review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `project_review_notes` text,
  `project_review_status_no` int(11) NOT NULL,
  PRIMARY KEY (`live_project_no`),
  KEY `project_review_fk1` (`project_review_status_no`),
  KEY `project_review_fk2` (`live_project_no`),
  CONSTRAINT `project_review_fk1` FOREIGN KEY (`project_review_status_no`) REFERENCES `project_review_status` (`project_review_status_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `project_review_fk2` FOREIGN KEY (`live_project_no`) REFERENCES `live_project` (`live_project_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_review`
--

LOCK TABLES `project_review` WRITE;
/*!40000 ALTER TABLE `project_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_review_status`
--

DROP TABLE IF EXISTS `project_review_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_review_status` (
  `project_review_status_no` int(11) NOT NULL,
  `project_review_status_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`project_review_status_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_review_status`
--

LOCK TABLES `project_review_status` WRITE;
/*!40000 ALTER TABLE `project_review_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_review_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_status_type`
--

DROP TABLE IF EXISTS `project_status_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_status_type` (
  `project_status_no` int(11) NOT NULL AUTO_INCREMENT,
  `project_status_desc` text,
  PRIMARY KEY (`project_status_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_status_type`
--

LOCK TABLES `project_status_type` WRITE;
/*!40000 ALTER TABLE `project_status_type` DISABLE KEYS */;
INSERT INTO `project_status_type` VALUES (1,'Pending'),(2,'Approved'),(3,'Running'),(4,'Completed');
/*!40000 ALTER TABLE `project_status_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_type`
--

DROP TABLE IF EXISTS `project_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_type` (
  `project_type_no` int(11) NOT NULL AUTO_INCREMENT,
  `project_type_desc` text,
  PRIMARY KEY (`project_type_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_type`
--

LOCK TABLES `project_type` WRITE;
/*!40000 ALTER TABLE `project_type` DISABLE KEYS */;
INSERT INTO `project_type` VALUES (1,'Good project'),(2,'Bad project');
/*!40000 ALTER TABLE `project_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `review_no` int(11) NOT NULL,
  `author_no` int(11) NOT NULL,
  `last_modification_date` datetime NOT NULL,
  `review_contents` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`review_no`),
  KEY `fk_review_author_idx` (`author_no`),
  CONSTRAINT `fk_review_author` FOREIGN KEY (`author_no`) REFERENCES `staff` (`staff_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staff_no` int(11) NOT NULL AUTO_INCREMENT,
  `staff_family_name` varchar(100) DEFAULT NULL,
  `staff_firstname` varchar(100) DEFAULT NULL,
  `staff_dept` varchar(100) DEFAULT NULL,
  `staff_tel` varchar(11) DEFAULT NULL,
  `staff_email` varchar(100) DEFAULT NULL,
  `staff_role_no` int(11) NOT NULL,
  `staffcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staff_no`),
  KEY `staff_fk1` (`staff_role_no`),
  CONSTRAINT `staff_fk1` FOREIGN KEY (`staff_role_no`) REFERENCES `staff_role` (`staff_role_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (2,'Major','Elaine','CMS','999','staff@email.com',1,NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_project`
--

DROP TABLE IF EXISTS `staff_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_project` (
  `live_project_no` int(11) NOT NULL AUTO_INCREMENT,
  `staff_no` int(11) NOT NULL,
  `staff_project_role_no` int(11) NOT NULL,
  `date_started` timestamp NULL DEFAULT NULL,
  `date_finished` timestamp NULL DEFAULT NULL,
  `project_review_notes` text,
  `staff_projectcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`live_project_no`,`staff_no`),
  KEY `staff_project_fk1` (`staff_project_role_no`),
  KEY `staff_project_fk3` (`staff_no`),
  KEY `staff_project_fk4` (`live_project_no`),
  CONSTRAINT `staff_project_fk1` FOREIGN KEY (`staff_project_role_no`) REFERENCES `staff_project_role` (`staff_project_role_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `staff_project_fk3` FOREIGN KEY (`staff_no`) REFERENCES `staff` (`staff_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `staff_project_fk4` FOREIGN KEY (`live_project_no`) REFERENCES `live_project` (`live_project_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_project`
--

LOCK TABLES `staff_project` WRITE;
/*!40000 ALTER TABLE `staff_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_project_role`
--

DROP TABLE IF EXISTS `staff_project_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_project_role` (
  `staff_project_role_no` int(11) NOT NULL,
  `staff_project_role_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staff_project_role_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_project_role`
--

LOCK TABLES `staff_project_role` WRITE;
/*!40000 ALTER TABLE `staff_project_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_project_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_role`
--

DROP TABLE IF EXISTS `staff_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_role` (
  `staff_role_no` int(11) NOT NULL AUTO_INCREMENT,
  `staff_role_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`staff_role_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_role`
--

LOCK TABLES `staff_role` WRITE;
/*!40000 ALTER TABLE `staff_role` DISABLE KEYS */;
INSERT INTO `staff_role` VALUES (1,'support');
/*!40000 ALTER TABLE `staff_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_skill`
--

DROP TABLE IF EXISTS `staff_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_skill` (
  `staff_skill_no` int(11) NOT NULL AUTO_INCREMENT,
  `staff_skill_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`staff_skill_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_skill`
--

LOCK TABLES `staff_skill` WRITE;
/*!40000 ALTER TABLE `staff_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_skill_set`
--

DROP TABLE IF EXISTS `staff_skill_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_skill_set` (
  `staff_no` int(11) NOT NULL,
  `staff_skill_no` int(11) NOT NULL,
  PRIMARY KEY (`staff_no`,`staff_skill_no`),
  KEY `staff_skill_set_fk1` (`staff_no`),
  KEY `staff_skill_set_fk2` (`staff_skill_no`),
  CONSTRAINT `staff_skill_set_fk1` FOREIGN KEY (`staff_no`) REFERENCES `staff` (`staff_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `staff_skill_set_fk2` FOREIGN KEY (`staff_skill_no`) REFERENCES `staff_skill` (`staff_skill_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_skill_set`
--

LOCK TABLES `staff_skill_set` WRITE;
/*!40000 ALTER TABLE `staff_skill_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_skill_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage`
--

DROP TABLE IF EXISTS `stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stage` (
  `stage_no` int(11) NOT NULL AUTO_INCREMENT,
  `stage_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stage_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage`
--

LOCK TABLES `stage` WRITE;
/*!40000 ALTER TABLE `stage` DISABLE KEYS */;
INSERT INTO `stage` VALUES (1,'Initial'),(2,'Requirements Analysis'),(3,'Design'),(4,'Implementation'),(5,'Testing'),(6,'Integration'),(7,'Deployment'),(8,'Maintenance');
/*!40000 ALTER TABLE `stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stage_review`
--

DROP TABLE IF EXISTS `stage_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stage_review` (
  `stage_review_no` int(11) NOT NULL,
  `stage_no` int(11) NOT NULL,
  `review_no` int(11) NOT NULL,
  PRIMARY KEY (`stage_review_no`),
  KEY `fk_sr_stage_idx` (`stage_no`),
  KEY `fk_sr_review_idx` (`review_no`),
  CONSTRAINT `fk_sr_review` FOREIGN KEY (`review_no`) REFERENCES `review` (`review_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sr_stage` FOREIGN KEY (`stage_no`) REFERENCES `stage` (`stage_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stage_review`
--

LOCK TABLES `stage_review` WRITE;
/*!40000 ALTER TABLE `stage_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `stage_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `student_no` int(11) NOT NULL AUTO_INCREMENT,
  `date_commenced` timestamp NULL DEFAULT NULL,
  `date_finished` timestamp NULL DEFAULT NULL,
  `student_status_no` int(11) NOT NULL,
  `student_family_name` varchar(45) DEFAULT NULL,
  `student_first_name` varchar(45) DEFAULT NULL,
  `student_uni_email` varchar(60) DEFAULT NULL,
  `student_pers_email` varchar(60) DEFAULT NULL,
  `student_mobile` int(11) DEFAULT NULL,
  `student_visa_status_no` int(11) NOT NULL,
  `student_cv` varchar(45) DEFAULT NULL,
  `student_agreement` varchar(45) DEFAULT NULL,
  `student_visa` varchar(45) DEFAULT NULL,
  `student_reference` varchar(45) DEFAULT NULL,
  `student_type_no` int(11) NOT NULL,
  PRIMARY KEY (`student_no`),
  KEY `student_fk3` (`student_no`),
  KEY `student_fk1` (`student_status_no`),
  KEY `student_fk2` (`student_visa_status_no`),
  KEY `student_fk5` (`student_type_no`),
  CONSTRAINT `student_fk1` FOREIGN KEY (`student_status_no`) REFERENCES `student_status` (`student_status_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `student_fk2` FOREIGN KEY (`student_visa_status_no`) REFERENCES `student_visa_status` (`student_visa_status_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `student_fk5` FOREIGN KEY (`student_type_no`) REFERENCES `student_type` (`student_type_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_project`
--

DROP TABLE IF EXISTS `student_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_project` (
  `live_project_no` int(11) NOT NULL,
  `student_no` int(11) NOT NULL,
  `student_proj_status` varchar(45) DEFAULT NULL,
  `staff_no` int(11) NOT NULL,
  `student_project_no` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`student_project_no`),
  KEY `student_project_fk1` (`student_no`),
  KEY `student_project_fk2` (`staff_no`),
  KEY `student_project_fk3` (`live_project_no`),
  CONSTRAINT `student_project_fk1` FOREIGN KEY (`student_no`) REFERENCES `student` (`student_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `student_project_fk2` FOREIGN KEY (`staff_no`) REFERENCES `staff` (`staff_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `student_project_fk3` FOREIGN KEY (`live_project_no`) REFERENCES `live_project` (`live_project_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_project`
--

LOCK TABLES `student_project` WRITE;
/*!40000 ALTER TABLE `student_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_project_review`
--

DROP TABLE IF EXISTS `student_project_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_project_review` (
  `live_project_no` int(11) NOT NULL AUTO_INCREMENT,
  `student_no` int(11) NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `review_notes` text,
  `review_status_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`live_project_no`,`review_date`),
  KEY `student_project_review_fk1` (`student_no`),
  KEY `student_project_review_fk2` (`live_project_no`),
  CONSTRAINT `student_project_review_fk1` FOREIGN KEY (`student_no`) REFERENCES `student` (`student_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `student_project_review_fk2` FOREIGN KEY (`live_project_no`) REFERENCES `live_project` (`live_project_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_project_review`
--

LOCK TABLES `student_project_review` WRITE;
/*!40000 ALTER TABLE `student_project_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_project_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_review`
--

DROP TABLE IF EXISTS `student_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_review` (
  `student_review_no` int(11) NOT NULL AUTO_INCREMENT,
  `student_no` int(11) NOT NULL,
  `review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `review_notes` varchar(45) DEFAULT NULL,
  `review_status_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_review_no`),
  KEY `student_review_fk1` (`student_no`),
  CONSTRAINT `student_review_fk1` FOREIGN KEY (`student_no`) REFERENCES `student` (`student_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_review`
--

LOCK TABLES `student_review` WRITE;
/*!40000 ALTER TABLE `student_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_skill`
--

DROP TABLE IF EXISTS `student_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_skill` (
  `student_skill_no` int(11) NOT NULL AUTO_INCREMENT,
  `student_skill_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_skill_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_skill`
--

LOCK TABLES `student_skill` WRITE;
/*!40000 ALTER TABLE `student_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_skill_link`
--

DROP TABLE IF EXISTS `student_skill_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_skill_link` (
  `student_skill_link_no` int(11) NOT NULL AUTO_INCREMENT,
  `student_no` int(11) NOT NULL,
  `date_recorded` timestamp NULL DEFAULT NULL,
  `date_changed` timestamp NULL DEFAULT NULL,
  `student_skill_notes` text,
  PRIMARY KEY (`student_skill_link_no`),
  KEY `student_skill_link_fk1` (`student_no`),
  CONSTRAINT `student_skill_link_fk1` FOREIGN KEY (`student_no`) REFERENCES `student` (`student_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_skill_link`
--

LOCK TABLES `student_skill_link` WRITE;
/*!40000 ALTER TABLE `student_skill_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_skill_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_skill_set`
--

DROP TABLE IF EXISTS `student_skill_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_skill_set` (
  `student_skill_no` int(11) NOT NULL,
  `student_no` int(11) NOT NULL,
  PRIMARY KEY (`student_skill_no`,`student_no`),
  KEY `student_skill_set_fk1` (`student_no`),
  KEY `student_skill_set_fk2` (`student_skill_no`),
  CONSTRAINT `student_skill_set_fk1` FOREIGN KEY (`student_no`) REFERENCES `student` (`student_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `student_skill_set_fk2` FOREIGN KEY (`student_skill_no`) REFERENCES `student_skill` (`student_skill_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_skill_set`
--

LOCK TABLES `student_skill_set` WRITE;
/*!40000 ALTER TABLE `student_skill_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_skill_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_status`
--

DROP TABLE IF EXISTS `student_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_status` (
  `student_status_no` int(11) NOT NULL AUTO_INCREMENT,
  `student_status_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_status_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_status`
--

LOCK TABLES `student_status` WRITE;
/*!40000 ALTER TABLE `student_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_type`
--

DROP TABLE IF EXISTS `student_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_type` (
  `student_type_no` int(11) NOT NULL AUTO_INCREMENT,
  `student_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_type_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_type`
--

LOCK TABLES `student_type` WRITE;
/*!40000 ALTER TABLE `student_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_type_link`
--

DROP TABLE IF EXISTS `student_type_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_type_link` (
  `student_type_no` int(11) NOT NULL AUTO_INCREMENT,
  `student_no` int(11) NOT NULL,
  `date_started` timestamp NULL DEFAULT NULL,
  `date_completed` timestamp NULL DEFAULT NULL,
  `student_type_notes` text,
  PRIMARY KEY (`student_type_no`),
  KEY `student_type_link_fk1` (`student_no`),
  CONSTRAINT `student_type_link_fk1` FOREIGN KEY (`student_no`) REFERENCES `student` (`student_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_type_link`
--

LOCK TABLES `student_type_link` WRITE;
/*!40000 ALTER TABLE `student_type_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_type_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_visa_status`
--

DROP TABLE IF EXISTS `student_visa_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_visa_status` (
  `student_visa_status_no` int(11) NOT NULL AUTO_INCREMENT,
  `student_visa_status_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_visa_status_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_visa_status`
--

LOCK TABLES `student_visa_status` WRITE;
/*!40000 ALTER TABLE `student_visa_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_visa_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `task_no` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`task_no`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Interview Client'),(2,'Identify Functional Requirements'),(3,'Identify Non Functional Requirements'),(4,'Produce Entity Relationship Diagrams'),(5,'Produce System Architecture Diagram'),(6,'Produce UML Use Case Diagrams'),(7,'Produce UML Sequence Diagrams'),(8,'Produce UML Class Diagrams'),(9,'Produce UML State Machine Diagrams'),(10,'Produce Database'),(11,'Produce User Interfaces'),(12,'Implement Business Logic'),(13,'Design Test Cases'),(14,'Black Box Testing'),(15,'White Box Testing'),(16,'Integration Testing'),(17,'Acceptance Testing');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_review`
--

DROP TABLE IF EXISTS `task_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_review` (
  `task_review_no` int(11) NOT NULL,
  `task_no` int(11) NOT NULL,
  `review_no` int(11) NOT NULL,
  PRIMARY KEY (`task_review_no`),
  KEY `fk_tr_task_idx` (`task_no`),
  KEY `fk_tr_review_idx` (`review_no`),
  CONSTRAINT `fk_tr_task` FOREIGN KEY (`task_no`) REFERENCES `task` (`task_no`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tr_review` FOREIGN KEY (`review_no`) REFERENCES `review` (`review_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_review`
--

LOCK TABLES `task_review` WRITE;
/*!40000 ALTER TABLE `task_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-06 15:12:24
