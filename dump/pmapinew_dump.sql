CREATE DATABASE  IF NOT EXISTS `pmapinew` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `pmapinew`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: pmapinew
-- ------------------------------------------------------
-- Server version	5.7.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidate` (
  `cdt_id` int(6) NOT NULL,
  `cdt_first_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cdt_last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_passport` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_last_designation` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_date_of_birth` date DEFAULT NULL,
  `cdt_gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_marital_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdt_created_date` timestamp NULL DEFAULT NULL,
  `cdt_updated_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cdt_id`),
  UNIQUE KEY `cdt_id` (`cdt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Narayan','Pandit','narayana.pandit@gmail.com','J19876','Project Manager','1986-10-10','male','Married','2018-11-02 04:51:28','2018-12-06 01:15:45');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateeducation`
--

DROP TABLE IF EXISTS `candidateeducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidateeducation` (
  `ce_id` int(6) NOT NULL,
  `ce_cdt_id` int(6) NOT NULL,
  `ce_qualification_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ce_start_date` date DEFAULT NULL,
  `ce_end_date` date DEFAULT NULL,
  `ce_score` float DEFAULT NULL,
  `ce_score_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ce_institution` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ce_specialization` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ce_id`),
  UNIQUE KEY `ce_id` (`ce_id`),
  KEY `fk_ce_cdt_id_ref_cdt_id` (`ce_cdt_id`),
  CONSTRAINT `fk_ce_cdt_id_ref_cdt_id` FOREIGN KEY (`ce_cdt_id`) REFERENCES `candidate` (`cdt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateeducation`
--

LOCK TABLES `candidateeducation` WRITE;
/*!40000 ALTER TABLE `candidateeducation` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidateeducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidateemploymenthistory`
--

DROP TABLE IF EXISTS `candidateemploymenthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidateemploymenthistory` (
  `ceh_id` int(6) NOT NULL,
  `ceh_cdt_id` int(6) NOT NULL,
  `ceh_company_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_total_experience_in_months` int(11) DEFAULT NULL,
  `ceh_start_date` date DEFAULT NULL,
  `ceh_end_date` date DEFAULT NULL,
  `ceh_relevant_experience_in_months` int(11) DEFAULT NULL,
  `ceh_designation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_remuneration` decimal(10,2) DEFAULT NULL,
  `ceh_nature_of_employment` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_reason_for_leaving` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_employee_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_supervisor_designation` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_supervisor_email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ceh_supervisor_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ceh_id`),
  UNIQUE KEY `ceh_id` (`ceh_id`),
  KEY `fk_ceh_cdt_id_ref_cdt_id` (`ceh_cdt_id`),
  CONSTRAINT `fk_ceh_cdt_id_ref_cdt_id` FOREIGN KEY (`ceh_cdt_id`) REFERENCES `candidate` (`cdt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidateemploymenthistory`
--

LOCK TABLES `candidateemploymenthistory` WRITE;
/*!40000 ALTER TABLE `candidateemploymenthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `candidateemploymenthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company` (
  `comp_id` int(6) NOT NULL,
  `comp_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`comp_id`),
  UNIQUE KEY `comp_id` (`comp_id`),
  UNIQUE KEY `comp_name` (`comp_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (112244,'Infosys'),(112233,'Wipro');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `cust_id` int(6) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_customer_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cust_service_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_planned_start_date` date DEFAULT NULL,
  `cust_planned_end_date` date DEFAULT NULL,
  `cust_actual_start_date` date DEFAULT NULL,
  `cust_actual_end_date` date DEFAULT NULL,
  `cust_created_date` timestamp NULL DEFAULT NULL,
  `cust_updated_date` timestamp NULL DEFAULT NULL,
  `cust_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Huntback','Hunt001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `dept_id` int(6) NOT NULL,
  `dept_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`dept_id`),
  UNIQUE KEY `dept_id` (`dept_id`),
  UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (3,'HR'),(1,'ITS'),(2,'RMG');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `emp_id` int(6) NOT NULL,
  `emp_firstname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_lastname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_gender` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_dob` date DEFAULT NULL,
  `emp_maritalstatus` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_createddate` timestamp NULL DEFAULT NULL,
  `emp_updateddate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `emp_id` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (112234,'Veersh','Varma','Male','1986-11-02','Married','2018-11-02 04:51:28','2018-11-02 04:51:28'),(123121,'Suneel','Varma','Male','1986-11-02','Married','2018-11-02 04:51:28','2018-11-02 04:51:28'),(123456,'Satish','Varma','Male','1986-11-02','Married','2018-11-02 04:51:28','2018-11-02 04:51:28');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeaddress`
--

DROP TABLE IF EXISTS `employeeaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeeaddress` (
  `empaddr_id` int(6) NOT NULL AUTO_INCREMENT,
  `empaddr_ia_id` int(6) NOT NULL,
  `empaddr_emp_id` int(6) NOT NULL,
  PRIMARY KEY (`empaddr_id`),
  UNIQUE KEY `empaddr_id` (`empaddr_id`),
  KEY `fk_empaddr_paddr_id_ref_paddr_id` (`empaddr_ia_id`),
  KEY `fk_empaddr_emp_id_ref_emp_id` (`empaddr_emp_id`),
  CONSTRAINT `fk_empaddr_emp_id_ref_emp_id` FOREIGN KEY (`empaddr_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_empaddr_paddr_id_ref_paddr_id` FOREIGN KEY (`empaddr_ia_id`) REFERENCES `individualaddress` (`ia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeaddress`
--

LOCK TABLES `employeeaddress` WRITE;
/*!40000 ALTER TABLE `employeeaddress` DISABLE KEYS */;
INSERT INTO `employeeaddress` VALUES (2,2,123456),(3,2,112234);
/*!40000 ALTER TABLE `employeeaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeecontact`
--

DROP TABLE IF EXISTS `employeecontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeecontact` (
  `ec_id` int(6) NOT NULL AUTO_INCREMENT,
  `ec_emp_id` int(6) DEFAULT NULL,
  `ec_home_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_home_phone_country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_primary_mobile_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_primary_mobile_phone_country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_secondary_mobile_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_secondary_mobile_phone_country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_office_phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ec_office_phone_country_code` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ec_id`),
  UNIQUE KEY `ec_emp_id_UNIQUE` (`ec_emp_id`),
  CONSTRAINT `fk_ec_emp_id_ref_emp_id` FOREIGN KEY (`ec_emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeecontact`
--

LOCK TABLES `employeecontact` WRITE;
/*!40000 ALTER TABLE `employeecontact` DISABLE KEYS */;
INSERT INTO `employeecontact` VALUES (1,112234,'4044998161','91','7788994413','91','7382109811','91',NULL,NULL);
/*!40000 ALTER TABLE `employeecontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeeducation`
--

DROP TABLE IF EXISTS `employeeeducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeeeducation` (
  `ee_id` int(6) NOT NULL,
  `ee_emp_id` int(6) DEFAULT NULL,
  `ee_qualname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ee_start_date` date DEFAULT NULL,
  `ee_end_date` date DEFAULT NULL,
  `ee_score` float DEFAULT NULL,
  `ee_score_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ee_institution` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ee_specialization` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ee_id`),
  UNIQUE KEY `ee_id` (`ee_id`),
  KEY `fk_ee_emp_id_ref_emp_id` (`ee_emp_id`),
  CONSTRAINT `fk_ee_emp_id_ref_emp_id` FOREIGN KEY (`ee_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeeducation`
--

LOCK TABLES `employeeeducation` WRITE;
/*!40000 ALTER TABLE `employeeeducation` DISABLE KEYS */;
INSERT INTO `employeeeducation` VALUES (112233,123456,'BE','1926-11-02','1986-11-02',8.6,'GPA','gitam1','Bachelors');
/*!40000 ALTER TABLE `employeeeducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeepassport`
--

DROP TABLE IF EXISTS `employeepassport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeepassport` (
  `epp_id` int(6) NOT NULL,
  `epp_number` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epp_date_of_issue` date DEFAULT NULL,
  `epp_date_of_expiry` date DEFAULT NULL,
  `epp_emp_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`epp_id`),
  UNIQUE KEY `epp_id` (`epp_id`),
  KEY `fk_epp_emp_id_ref_emp_id` (`epp_emp_id`),
  CONSTRAINT `fk_epp_emp_id_ref_emp_id` FOREIGN KEY (`epp_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeepassport`
--

LOCK TABLES `employeepassport` WRITE;
/*!40000 ALTER TABLE `employeepassport` DISABLE KEYS */;
INSERT INTO `employeepassport` VALUES (113432,'J2940222','1970-01-01','1970-01-01',123456);
/*!40000 ALTER TABLE `employeepassport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeprevemployment`
--

DROP TABLE IF EXISTS `employeeprevemployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeeprevemployment` (
  `epe_id` int(6) NOT NULL,
  `epe_company_name` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_emp_id` int(6) DEFAULT NULL,
  `epe_total_experience_in_months` int(11) DEFAULT NULL,
  `epe_start_date` date DEFAULT NULL,
  `epe_end_date` date DEFAULT NULL,
  `epe_relevant_experience_in_months` int(11) DEFAULT NULL,
  `epe_designation` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_remuneration` decimal(20,2) DEFAULT NULL,
  `epe_nature_of_employment` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_supervisor_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_supervisor_designation` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_reason_for_leaving` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_supervisor_emailid` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epe_employee_code` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`epe_id`),
  UNIQUE KEY `epe_id` (`epe_id`),
  KEY `fk_epe_emp_id_ref_emp_id` (`epe_emp_id`),
  KEY `fk_epe_company_name_ref_comp_name` (`epe_company_name`),
  CONSTRAINT `fk_epe_company_name_ref_comp_name` FOREIGN KEY (`epe_company_name`) REFERENCES `company` (`comp_name`),
  CONSTRAINT `fk_epe_emp_id_ref_emp_id` FOREIGN KEY (`epe_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeprevemployment`
--

LOCK TABLES `employeeprevemployment` WRITE;
/*!40000 ALTER TABLE `employeeprevemployment` DISABLE KEYS */;
INSERT INTO `employeeprevemployment` VALUES (113322,'Infosys',123456,84,'2018-01-01','2018-01-01',80,'Senior Software Engineer',1000000.34,'Permanent','Lloyd Thompson','Project Manager','Family Reunion','lloyd.thompson@cuscal.com','CUS001');
/*!40000 ALTER TABLE `employeeprevemployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeeskill`
--

DROP TABLE IF EXISTS `employeeskill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeeskill` (
  `es_id` int(6) NOT NULL,
  `es_emp_id` int(6) DEFAULT NULL,
  `es_skl_id` int(45) DEFAULT NULL,
  `es_experience_in_months` int(11) DEFAULT NULL,
  PRIMARY KEY (`es_id`),
  UNIQUE KEY `es_id` (`es_id`),
  KEY `fk_es_emp_id_ref_emp_id` (`es_emp_id`),
  KEY `fk_es_skl_id_ref_skl_id` (`es_skl_id`),
  CONSTRAINT `fk_es_emp_id_ref_emp_id` FOREIGN KEY (`es_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_es_skl_id_ref_skl_id` FOREIGN KEY (`es_skl_id`) REFERENCES `skill` (`skl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeskill`
--

LOCK TABLES `employeeskill` WRITE;
/*!40000 ALTER TABLE `employeeskill` DISABLE KEYS */;
INSERT INTO `employeeskill` VALUES (123,123456,11223,2),(1243,123456,11224,4);
/*!40000 ALTER TABLE `employeeskill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeevisa`
--

DROP TABLE IF EXISTS `employeevisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employeevisa` (
  `empvsa_id` int(6) NOT NULL,
  `empvsa_country` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empvsa_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `empvsa_valid_till` date DEFAULT NULL,
  `empvsa_emp_id` int(6) DEFAULT NULL,
  `empvsa_valid_from` date DEFAULT NULL,
  PRIMARY KEY (`empvsa_id`),
  UNIQUE KEY `empvsa_id` (`empvsa_id`),
  KEY `fk_empvsa_emp_id_ref_emp_id` (`empvsa_emp_id`),
  CONSTRAINT `fk_empvsa_emp_id_ref_emp_id` FOREIGN KEY (`empvsa_emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeevisa`
--

LOCK TABLES `employeevisa` WRITE;
/*!40000 ALTER TABLE `employeevisa` DISABLE KEYS */;
INSERT INTO `employeevisa` VALUES (1123,'Indonesia','Visitor-Work','2018-01-01',123456,'2019-01-01');
/*!40000 ALTER TABLE `employeevisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individualaddress`
--

DROP TABLE IF EXISTS `individualaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `individualaddress` (
  `ia_id` int(6) NOT NULL AUTO_INCREMENT,
  `ia_street_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ia_building_number` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_city` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_state` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_country` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_postal_code` int(10) DEFAULT NULL,
  `ia_addr_line_1` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_addr_line_2` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_addr_line_3` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ia_addr_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ia_id`),
  UNIQUE KEY `ia_id` (`ia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individualaddress`
--

LOCK TABLES `individualaddress` WRITE;
/*!40000 ALTER TABLE `individualaddress` DISABLE KEYS */;
INSERT INTO `individualaddress` VALUES (2,'George','14','Melbourne','Victoria','Australia',2008,'Naveen Kumar','','','Permanent');
/*!40000 ALTER TABLE `individualaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `interview` (
  `intvw_id` int(6) NOT NULL,
  `intvw_jc_id` int(6) NOT NULL,
  `intvw_starttime_of_interview` timestamp NULL DEFAULT NULL,
  `intvw_endtime_of_interview` timestamp NULL DEFAULT NULL,
  `intvw_level_of_interview` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intvw_type_of_inteview` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intvw_interview_status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intvw_notes` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`intvw_id`),
  UNIQUE KEY `intvw_id` (`intvw_id`),
  KEY `fk_intvw_jc_id_ref_jc_id` (`intvw_jc_id`),
  CONSTRAINT `fk_intvw_jc_id_ref_jc_id` FOREIGN KEY (`intvw_jc_id`) REFERENCES `jobcandidate` (`jc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itshelpdeskattachment`
--

DROP TABLE IF EXISTS `itshelpdeskattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `itshelpdeskattachment` (
  `ihda_id` int(6) NOT NULL AUTO_INCREMENT,
  `ihda_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ihda_id`),
  UNIQUE KEY `ihda_id` (`ihda_id`),
  UNIQUE KEY `ihda_name` (`ihda_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itshelpdeskattachment`
--

LOCK TABLES `itshelpdeskattachment` WRITE;
/*!40000 ALTER TABLE `itshelpdeskattachment` DISABLE KEYS */;
INSERT INTO `itshelpdeskattachment` VALUES (11,'80C-House_Princ_HL-Provisional-2018-2019.pdf'),(12,'HL-Provisional-2018-2019.pdf'),(15,'hlintcertificate_navarum.pdf'),(16,'homeloancertificate_96154558.pdf'),(13,'Huntington_Issues.txt'),(14,'IT_Report.pdf');
/*!40000 ALTER TABLE `itshelpdeskattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobcandidate`
--

DROP TABLE IF EXISTS `jobcandidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jobcandidate` (
  `jc_id` int(6) NOT NULL,
  `jc_jp_id` int(6) NOT NULL,
  `jc_cdt_id` int(6) NOT NULL,
  `jc_stage` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jc_notes` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`jc_id`),
  UNIQUE KEY `jc_id` (`jc_id`),
  KEY `fk_jc_jp_id_ref_jp_id` (`jc_jp_id`),
  KEY `fk_jc_cdt_id_ref_cdt_id` (`jc_cdt_id`),
  CONSTRAINT `fk_jc_cdt_id_ref_cdt_id` FOREIGN KEY (`jc_cdt_id`) REFERENCES `candidate` (`cdt_id`),
  CONSTRAINT `fk_jc_jp_id_ref_jp_id` FOREIGN KEY (`jc_jp_id`) REFERENCES `jobpost` (`jp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobcandidate`
--

LOCK TABLES `jobcandidate` WRITE;
/*!40000 ALTER TABLE `jobcandidate` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobcandidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobpost`
--

DROP TABLE IF EXISTS `jobpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jobpost` (
  `jp_id` int(6) NOT NULL,
  `jp_job_title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jp_location` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jp_roles` text COLLATE utf8mb4_unicode_ci,
  `jp_number_of_vacancies` int(3) DEFAULT NULL,
  `jp_hiring_manager_employee_id` int(6) NOT NULL,
  `jp_department_id` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jp_overview` text COLLATE utf8mb4_unicode_ci,
  `jp_responsibilities` text COLLATE utf8mb4_unicode_ci,
  `jp_must_have_experience` text COLLATE utf8mb4_unicode_ci,
  `jp_nice_to_have_experience` text COLLATE utf8mb4_unicode_ci,
  `jp_key_skills` text COLLATE utf8mb4_unicode_ci,
  `jp_desired_education` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`jp_id`),
  UNIQUE KEY `jp_id` (`jp_id`),
  KEY `fk_jp_hiring_manager_employee_id_ref_employee_id` (`jp_hiring_manager_employee_id`),
  CONSTRAINT `fk_jp_hiring_manager_employee_id_ref_employee_id` FOREIGN KEY (`jp_hiring_manager_employee_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobpost`
--

LOCK TABLES `jobpost` WRITE;
/*!40000 ALTER TABLE `jobpost` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `priority` (
  `pty_id` int(6) NOT NULL,
  `pty_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pty_category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`pty_id`),
  UNIQUE KEY `pty_id` (`pty_id`),
  UNIQUE KEY `pty_name` (`pty_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,'High','All'),(2,'Medium','All'),(3,'Normal','All'),(4,'Low','All');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `project` (
  `prj_id` int(6) NOT NULL AUTO_INCREMENT,
  `prj_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prj_project_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prj_service_type` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prj_description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prj_planned_start_date` date DEFAULT NULL,
  `prj_planned_end_date` date DEFAULT NULL,
  `prj_actual_start_date` date DEFAULT NULL,
  `prj_actual_end_date` date DEFAULT NULL,
  `prj_created_date` timestamp NULL DEFAULT NULL,
  `prj_updated_date` timestamp NULL DEFAULT NULL,
  `prj_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prj_cust_id` int(6) DEFAULT NULL,
  `prj_notes` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`prj_id`),
  UNIQUE KEY `prj_id` (`prj_id`),
  KEY `fk_prj_cust_id_ref_cust_id_idx` (`prj_cust_id`),
  CONSTRAINT `fk_prj_cust_id_ref_cust_id` FOREIGN KEY (`prj_cust_id`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'HuntingtonBankUpdated','HuntBegin001UPdated','Time and Metarial','Banking application','2019-01-11','2019-05-25','2019-02-01','2019-05-01','2018-11-26 18:30:00','2018-11-26 18:30:00','New',1,'The project deal has be signed and yet to allocate resources updated'),(2,'Global','Global','NA','Global','2018-01-01','2018-12-31','2018-01-01','2018-12-31','2018-11-26 18:30:00','2018-11-26 18:30:00','Open',1,'Test notes2'),(3,'Cuscal','Cus001','TimeAndMoney','Finance','2018-03-01','2018-04-01','2018-03-01','2018-04-01','2018-11-26 18:30:00','2018-11-26 18:30:00','Open',1,'Notes 3'),(4,'HuntingtonBank','HuntBegin001','Time and Metarial','Banking application','2019-01-11','2019-05-25','2019-02-01','2019-05-01','2018-11-26 18:30:00','2018-11-26 18:30:00','New',1,'The project deal has be signed and yet to allocate resources');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceallocation`
--

DROP TABLE IF EXISTS `resourceallocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resourceallocation` (
  `ra_id` int(6) NOT NULL AUTO_INCREMENT,
  `ra_emp_id` int(6) NOT NULL,
  `ra_tsk_id` int(6) NOT NULL,
  `ra_notes` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ra_id`),
  UNIQUE KEY `ra_id` (`ra_id`),
  KEY `fk_ra_emp_id_ref_emp_id` (`ra_emp_id`),
  KEY `fk_ra_tsk_id_ref_tsk_id` (`ra_tsk_id`),
  CONSTRAINT `fk_ra_emp_id_ref_emp_id` FOREIGN KEY (`ra_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_ra_tsk_id_ref_tsk_id` FOREIGN KEY (`ra_tsk_id`) REFERENCES `task` (`tsk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceallocation`
--

LOCK TABLES `resourceallocation` WRITE;
/*!40000 ALTER TABLE `resourceallocation` DISABLE KEYS */;
INSERT INTO `resourceallocation` VALUES (4,123456,2,'Testing notes'),(6,123456,2,NULL),(8,123456,2,NULL),(9,123456,1,'Testing resource allocations to task'),(10,112234,1,'Testing resource allocations to task');
/*!40000 ALTER TABLE `resourceallocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `role_id` int(6) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_EMPLOYEE','ItsHelpDesk'),(2,'ROLE_MANAGER','ItsHelpDesk'),(3,'ROLE_ENGINEER','ItsHelpDesk'),(4,'ROLE_CANDIDATE','ROB');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicetype`
--

DROP TABLE IF EXISTS `servicetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `servicetype` (
  `svctype_id` int(6) NOT NULL,
  `svctype_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`svctype_id`),
  UNIQUE KEY `svctype_id` (`svctype_id`),
  UNIQUE KEY `svctype_name` (`svctype_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicetype`
--

LOCK TABLES `servicetype` WRITE;
/*!40000 ALTER TABLE `servicetype` DISABLE KEYS */;
INSERT INTO `servicetype` VALUES (3,'Desktop/Laptop'),(1,'Network'),(2,'Printer'),(4,'Software/OS');
/*!40000 ALTER TABLE `servicetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `skill` (
  `skl_id` int(6) NOT NULL,
  `skl_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skl_desc` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skl_category` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skl_createddate` date DEFAULT NULL,
  `skl_modifieddate` date DEFAULT NULL,
  `skl_deleted` binary(1) DEFAULT NULL,
  PRIMARY KEY (`skl_id`),
  UNIQUE KEY `skl_id` (`skl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (11223,'Pure Payments','Finanical domains core skill','Financial',NULL,NULL,NULL),(11224,'Java','Programming language','Language',NULL,NULL,NULL);
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `status` (
  `sts_id` int(6) NOT NULL,
  `sts_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sts_category` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sts_id`),
  UNIQUE KEY `sts_id` (`sts_id`),
  UNIQUE KEY `sts_name` (`sts_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'New','All'),(2,'Open','All'),(3,'Processing','All'),(4,'Hold','All'),(5,'Closed','All'),(6,'AwaitingResponse','All');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `task` (
  `tsk_id` int(6) NOT NULL AUTO_INCREMENT,
  `tsk_prj_id` int(6) NOT NULL,
  `tsk_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tsk_description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tsk_start_date` date NOT NULL,
  `tsk_end_date` date NOT NULL,
  PRIMARY KEY (`tsk_id`),
  UNIQUE KEY `tsk_id` (`tsk_id`),
  KEY `fk_tsk_prj_id_ref_prj_id` (`tsk_prj_id`),
  CONSTRAINT `fk_tsk_prj_id_ref_prj_id` FOREIGN KEY (`tsk_prj_id`) REFERENCES `project` (`prj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,1,'HeadsUpUpdated','HeadsUpPhase2','2018-10-10','2018-12-10'),(2,1,'Personetics','Personetics Phase 3','2018-02-10','2018-03-10'),(3,2,'Leave','Personal Leave','2018-03-10','2018-04-10'),(4,3,'OnlineBanking','Desktop version','2018-04-10','2018-05-10');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticket` (
  `tkt_id` int(6) NOT NULL AUTO_INCREMENT,
  `tkt_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tkt_description` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tkt_dept_id` int(6) DEFAULT NULL,
  `tkt_pty_id` int(6) NOT NULL,
  `tkt_tkttype_id` int(6) NOT NULL,
  `tkt_svctype_id` int(6) NOT NULL,
  `tkt_created_by` int(6) NOT NULL,
  `tkt_sts_id` int(6) NOT NULL,
  `tkt_created_date` timestamp NULL DEFAULT NULL,
  `tkt_updated_date` timestamp NULL DEFAULT NULL,
  `tkt_updated_by` int(6) DEFAULT NULL,
  PRIMARY KEY (`tkt_id`),
  UNIQUE KEY `tkt_id` (`tkt_id`),
  KEY `fk_tkt_dept_id_ref_dept_id` (`tkt_dept_id`),
  KEY `fk_tkt_svctype_id_ref_svctype_id` (`tkt_svctype_id`),
  KEY `fk_tkt_pty_id_ref_pty_id` (`tkt_pty_id`),
  KEY `fk_tkt_tkttype_id_ref_tkttype_id` (`tkt_tkttype_id`),
  KEY `fk_tkt_sts_id_ref_sts_id` (`tkt_sts_id`),
  KEY `fk_tkt_created_by_ref_u_id` (`tkt_created_by`),
  KEY `fk_tkt_updated_by_ref_u_id_idx` (`tkt_updated_by`),
  CONSTRAINT `fk_tkt_created_by_ref_u_id` FOREIGN KEY (`tkt_created_by`) REFERENCES `user` (`u_id`),
  CONSTRAINT `fk_tkt_dept_id_ref_dept_id` FOREIGN KEY (`tkt_dept_id`) REFERENCES `department` (`dept_id`),
  CONSTRAINT `fk_tkt_pty_id_ref_pty_id` FOREIGN KEY (`tkt_pty_id`) REFERENCES `priority` (`pty_id`),
  CONSTRAINT `fk_tkt_sts_id_ref_sts_id` FOREIGN KEY (`tkt_sts_id`) REFERENCES `status` (`sts_id`),
  CONSTRAINT `fk_tkt_svctype_id_ref_svctype_id` FOREIGN KEY (`tkt_svctype_id`) REFERENCES `servicetype` (`svctype_id`),
  CONSTRAINT `fk_tkt_tkttype_id_ref_tkttype_id` FOREIGN KEY (`tkt_tkttype_id`) REFERENCES `tickettype` (`tkttype_id`),
  CONSTRAINT `fk_tkt_updated_by_ref_u_id` FOREIGN KEY (`tkt_updated_by`) REFERENCES `user` (`u_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (3,'Need internet conneciton to Personal device','Need internet conneciton to Personal device as per project demand.',1,1,1,1,1,6,'2018-11-02 04:51:28','2019-03-01 12:12:43',1),(4,'Unable to connect to VDI','Unable to Connect to clients VDI on wifi.',1,1,2,1,1,3,'2018-11-02 04:51:28','2019-03-02 10:57:59',4),(5,'sdfsd','dfs',3,3,1,3,1,5,'2019-02-27 07:47:39','2019-04-03 12:26:55',3),(6,'Need extra monitor','Need extra monitor to extend the display from laptop',1,2,1,2,1,4,'2019-02-27 09:28:30','2019-02-27 09:28:30',1),(7,'System is performing at the slowest best','Its not working now...',1,2,2,3,1,2,'2019-03-03 11:04:58','2019-03-03 11:04:58',4),(8,'Just a sample','klsdjflksdjflsdk',1,3,2,4,1,5,'2019-03-25 12:48:59','2019-03-25 12:48:59',3),(9,'Testing the flow','Testing the flow',1,1,1,1,1,5,'2019-03-27 08:30:00','2019-03-26 03:02:53',1),(10,'jlkdfsd','',2,4,2,3,3,5,'2019-04-03 12:45:41','2019-06-01 12:00:16',4),(11,'Need additional seats for new resources','Need additional seats for new resources due to recruitment',2,1,1,3,4,2,'2019-04-25 02:50:33','2019-04-25 02:50:33',3),(12,'Manager Create Ticket Test','Manager Create Ticket Test',1,1,1,1,4,2,'2019-04-25 07:27:06','2019-05-26 23:50:08',1),(13,'Create Ticket Form UI In Progress','Create Ticket Form UI In Progress',1,1,1,1,3,2,'2019-05-03 06:20:21','2019-05-27 00:04:08',4),(14,'Toggle testing New Ticket','The test is to check if the Success or Failure alert not displaying during Fresh New Ticket Form.',2,4,1,2,3,2,'2019-05-03 12:43:50','2019-05-27 00:39:39',3),(15,'Test for dismiss alert to navigate to MyTickets','Test for dismiss alert to navigate to MyTickets',1,1,2,2,3,5,'2019-05-03 12:47:18','2019-05-05 01:15:27',1),(16,'Create Ticket Form UI In Progresssss','Create Ticket Form UI In Progresssss',1,2,1,2,3,5,'2019-05-05 02:51:06','2019-06-01 22:42:02',1),(17,'Testing the reaload','Testing the reaload',2,1,2,1,3,2,'2019-05-05 02:52:38','2019-05-30 03:34:51',4),(18,'Trying reload','Trying reload',2,4,1,2,3,2,'2019-05-05 02:56:25','2019-05-30 23:16:44',3),(19,'Fixed reload my tickets','Fixed reload my tickets',1,4,2,4,3,2,'2019-05-05 02:58:21','2019-05-31 00:12:47',1),(20,'Create Ticket Form UI In Progress','New ticket for mousenot working',1,1,1,3,3,1,'2019-05-17 00:00:33','2019-05-30 00:25:23',4),(21,'Need new laptop','Need new laptop',2,4,2,2,4,1,'2019-05-20 04:20:36','2019-05-30 00:34:44',3),(22,'Ticket to check if On and Off Success Alert','Testing to see if Success alert is visible',2,2,2,3,4,2,'2019-05-30 07:49:57','2019-05-30 07:50:37',1),(23,'Verify the changes from Manager role','Verify the changes from Manager role as well. To ensure that the changes done in manager section are reflected in here.',3,4,2,3,3,1,'2019-05-31 22:31:43','2019-05-31 22:31:43',NULL);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketassignment`
--

DROP TABLE IF EXISTS `ticketassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticketassignment` (
  `ta_id` int(6) NOT NULL AUTO_INCREMENT,
  `ta_tkt_id` int(6) NOT NULL,
  `ta_assigned_to` int(6) NOT NULL,
  `ta_created_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ta_id`),
  UNIQUE KEY `ta_id` (`ta_id`),
  KEY `fk_ta_tkt_id_ref_tkt_id` (`ta_tkt_id`),
  KEY `fk_ta_assigned_to_ref_u_id` (`ta_assigned_to`),
  CONSTRAINT `fk_ta_assigned_to_ref_u_id` FOREIGN KEY (`ta_assigned_to`) REFERENCES `user` (`u_id`),
  CONSTRAINT `fk_ta_tkt_id_ref_tkt_id` FOREIGN KEY (`ta_tkt_id`) REFERENCES `ticket` (`tkt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketassignment`
--

LOCK TABLES `ticketassignment` WRITE;
/*!40000 ALTER TABLE `ticketassignment` DISABLE KEYS */;
INSERT INTO `ticketassignment` VALUES (2,6,2,'2019-02-27 09:28:30'),(3,6,2,'2019-03-27 09:28:30'),(4,7,2,'2019-03-27 09:28:30'),(5,6,2,'2019-02-28 09:28:30'),(6,6,2,'2018-02-27 09:18:30'),(7,7,2,'2019-04-27 09:28:30'),(8,6,2,'2019-02-27 09:20:30'),(9,6,2,'2018-03-27 09:28:30'),(10,6,2,'2019-04-27 09:28:30'),(11,7,2,'2019-05-27 09:28:30'),(12,6,2,'2019-04-27 08:28:30'),(13,7,2,'2019-06-27 09:28:30'),(14,3,1,'2019-06-27 09:28:30'),(15,5,2,'2019-07-27 09:28:30'),(16,11,2,'2019-08-27 09:28:30'),(17,14,1,'2019-08-27 09:28:30'),(21,10,1,NULL),(22,12,1,NULL),(23,13,1,NULL),(24,14,1,NULL),(25,16,1,NULL),(26,17,1,NULL),(27,18,1,NULL),(28,20,1,NULL),(29,19,1,NULL),(30,21,1,NULL),(31,19,1,NULL),(32,17,1,NULL),(33,18,1,NULL),(34,19,1,NULL),(35,21,1,NULL),(36,20,1,NULL),(37,16,1,NULL),(38,17,1,NULL),(39,18,1,NULL),(40,19,1,NULL),(41,20,1,NULL),(42,21,1,NULL),(43,16,1,NULL),(44,18,1,NULL),(45,17,1,NULL),(46,20,1,NULL),(47,19,1,NULL),(48,21,1,NULL),(49,18,1,NULL),(50,19,1,NULL),(51,20,1,NULL),(52,21,1,NULL),(53,17,1,NULL),(54,22,1,NULL),(55,18,1,NULL),(56,19,1,NULL);
/*!40000 ALTER TABLE `ticketassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticketconversation`
--

DROP TABLE IF EXISTS `ticketconversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticketconversation` (
  `tktconv_id` int(6) NOT NULL AUTO_INCREMENT,
  `tktconv_tkt_id` int(6) NOT NULL,
  `tktconv_author` int(6) NOT NULL,
  `tktconv_message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tktconv_commented_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`tktconv_id`),
  UNIQUE KEY `tktconv_id` (`tktconv_id`),
  KEY `fk_tktconv_tkt_id_ref_tkt_id` (`tktconv_tkt_id`),
  KEY `fk_tktconv_author_ref_u_id` (`tktconv_author`),
  CONSTRAINT `fk_tktconv_author_ref_u_id` FOREIGN KEY (`tktconv_author`) REFERENCES `user` (`u_id`),
  CONSTRAINT `fk_tktconv_tkt_id_ref_tkt_id` FOREIGN KEY (`tktconv_tkt_id`) REFERENCES `ticket` (`tkt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticketconversation`
--

LOCK TABLES `ticketconversation` WRITE;
/*!40000 ALTER TABLE `ticketconversation` DISABLE KEYS */;
INSERT INTO `ticketconversation` VALUES (1,3,1,'Pls provide the RMG and DM approval.Pls provide the RMG and DM approvalPls provide the RMG and DM approvalPls provide the RMG and DM approval.','2018-11-02 04:51:28'),(2,3,2,'Approval provided in the attachment.','2018-11-02 04:51:28'),(3,3,1,'Provided the internet and closed the ticket.','2018-11-02 04:51:28'),(4,3,1,'Updated and closed....','2019-02-13 12:37:17'),(5,3,1,'kljsflksdjflsd','2019-02-15 01:36:39'),(6,3,1,'This is the final test to close','2019-02-24 06:09:26'),(7,3,1,'temporary','2019-02-24 06:25:52'),(8,3,1,'temporary','2019-02-24 06:25:52'),(9,3,1,'dfsdfsd','2019-02-24 06:35:50'),(10,3,1,'kjsdflsjflkd','2019-02-24 06:40:50'),(11,3,1,'jkmkfgf9898fdgldfmgdfl','2019-02-24 06:43:00'),(12,3,1,'Lets see if 3 are down','2019-02-25 11:09:38'),(13,3,1,'Test multiple...','2019-02-25 11:18:31'),(19,3,1,'Fingers crossed','2019-02-25 12:05:39'),(20,3,1,'Test timestamp','2019-02-25 12:22:34'),(21,3,1,'Not yet resolved mate...','2019-03-01 17:42:43'),(22,4,1,'See whats happening...','2019-03-02 16:26:43'),(23,4,1,'Okay. Alright it seems working as expected but need to fix the same at Add Message box as it is hardcoded in the HTTP request.','2019-03-02 16:27:59'),(24,5,1,'The sdsdf is now on the fly..with add message test..','2019-03-02 16:47:15'),(25,6,1,'This is the success message test for adding the message at first time when there is no history.','2019-03-02 16:54:14'),(26,6,1,'This is the add message with attachment. Fingers crossed.','2019-03-02 17:03:30'),(27,5,1,'What is the ETA?','2019-03-03 11:28:19'),(28,7,1,'Yet another mssage','2019-03-15 11:43:34'),(29,5,1,'ALright...','2019-03-15 11:44:18'),(30,3,1,'Yet antoher mesage...','2019-03-15 11:44:48'),(31,9,1,'jsdklfsd','2019-04-03 16:53:03'),(32,5,1,'CLosing now','2019-04-03 17:56:55'),(33,3,1,'Updating to check if modified updateTicket code is working fine','2019-04-25 06:30:01'),(34,3,1,'Testing for ticketid10','2019-04-25 07:06:36'),(35,10,1,'Testing for ticket id in state','2019-04-25 07:11:13'),(36,10,1,'Yet another time to test the change of id properly...','2019-04-25 07:16:20'),(37,4,1,'Now it should update for Ticket id 4','2019-04-25 07:16:56'),(38,10,3,'Han is updating it now...','2019-04-25 08:12:56'),(39,11,4,'Pls see if this can be done at the earliset','2019-04-25 08:20:50'),(40,11,4,'Now it should still show the success alert.','2019-04-25 09:22:33'),(41,11,4,'Testing the loading screen','2019-04-25 10:05:13'),(42,11,4,'The refactored code is now does not show the success alert.','2019-04-25 10:41:50'),(43,11,4,'Exclusive switches are in place. This should fix the ON and OFF issue.','2019-04-25 10:54:57'),(44,11,4,'Random fix...','2019-04-25 10:59:40'),(45,11,4,'Testing back if as usual.','2019-04-25 12:09:30'),(46,12,4,'Test','2019-04-29 16:08:21'),(47,12,4,'Test','2019-04-29 16:08:24'),(48,14,3,'Test adding message.','2019-05-05 04:25:00'),(49,14,3,'Adding yet another message...','2019-05-05 04:25:20'),(50,14,3,'Now checking if access is denied.','2019-05-05 05:58:41'),(51,13,3,'Checking the add','2019-05-05 06:04:53'),(52,15,3,'Closing the ticket now.','2019-05-05 06:45:27'),(53,15,3,'Is it still working, the add message.','2019-06-01 04:06:08'),(54,10,3,'Test now','2019-06-01 17:00:25'),(55,10,3,'Another test','2019-06-01 17:30:16'),(56,19,3,'Adding a message to fix the reload my tickets. This should result in Success.','2019-06-02 03:44:17'),(57,16,3,'Closing now.','2019-06-02 04:12:02'),(58,14,3,'Attaching further documentation.','2019-06-02 09:21:05');
/*!40000 ALTER TABLE `ticketconversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickettype`
--

DROP TABLE IF EXISTS `tickettype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tickettype` (
  `tkttype_id` int(6) NOT NULL,
  `tkttype_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tkttype_id`),
  UNIQUE KEY `tkttype_id` (`tkttype_id`),
  UNIQUE KEY `tkttype_name` (`tkttype_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickettype`
--

LOCK TABLES `tickettype` WRITE;
/*!40000 ALTER TABLE `tickettype` DISABLE KEYS */;
INSERT INTO `tickettype` VALUES (2,'Issue'),(1,'Task');
/*!40000 ALTER TABLE `tickettype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timesheet` (
  `tmesht_id` int(6) NOT NULL AUTO_INCREMENT,
  `tmesht_tsk_id` int(6) NOT NULL,
  `tmesht_emp_id` int(6) NOT NULL,
  `tmesht_date` date NOT NULL,
  `tmesht_start_time` time NOT NULL,
  `tmesht_end_time` time NOT NULL,
  `tmesht_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tmesht_id`),
  UNIQUE KEY `tmesht_id` (`tmesht_id`),
  KEY `fk_tmesht_emp_id_ref_emp_id` (`tmesht_emp_id`),
  KEY `fk_tmesht_tsk_id_ref_tsk_id` (`tmesht_tsk_id`),
  CONSTRAINT `fk_tmesht_emp_id_ref_emp_id` FOREIGN KEY (`tmesht_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_tmesht_tsk_id_ref_tsk_id` FOREIGN KEY (`tmesht_tsk_id`) REFERENCES `task` (`tsk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
INSERT INTO `timesheet` VALUES (1,1,123456,'2018-01-01','10:00:00','18:00:00','Pending'),(2,2,123456,'2018-01-02','10:00:00','18:00:00','Pending'),(3,3,123456,'2018-01-01','12:00:00','18:00:00',NULL),(4,4,123456,'2018-01-01','14:00:00','18:00:00',NULL),(5,1,123456,'2018-01-02','10:00:00','18:00:00',''),(6,2,123456,'2018-01-03','10:00:00','18:00:00',NULL),(7,2,123456,'2018-01-04','10:00:00','18:00:00',NULL),(8,3,123456,'2018-02-01','10:00:00','18:00:00',NULL),(9,4,123456,'2018-02-01','10:00:00','18:00:00',NULL),(10,3,123456,'2018-02-01','10:00:00','18:00:00',NULL),(11,4,123456,'2018-02-01','10:00:00','18:00:00',NULL),(12,3,123456,'2018-02-01','10:00:00','18:00:00',NULL),(13,4,123456,'2018-02-01','10:00:00','18:00:00',NULL);
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheetapproval`
--

DROP TABLE IF EXISTS `timesheetapproval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timesheetapproval` (
  `tsa_id` int(6) NOT NULL AUTO_INCREMENT,
  `tsa_tmesht_id` int(6) NOT NULL,
  `tsa_approver_emp_id` int(6) NOT NULL,
  `tsa_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tsa_id`),
  UNIQUE KEY `tsa_id` (`tsa_id`),
  KEY `fk_tsa_tmesht_id_ref_tmesht_id` (`tsa_tmesht_id`),
  KEY `fk_tsa_approver_emp_id_ref_emp_id` (`tsa_approver_emp_id`),
  CONSTRAINT `fk_tsa_approver_emp_id_ref_emp_id` FOREIGN KEY (`tsa_approver_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_tsa_tmesht_id_ref_tmesht_id` FOREIGN KEY (`tsa_tmesht_id`) REFERENCES `timesheet` (`tmesht_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheetapproval`
--

LOCK TABLES `timesheetapproval` WRITE;
/*!40000 ALTER TABLE `timesheetapproval` DISABLE KEYS */;
INSERT INTO `timesheetapproval` VALUES (79,11,112234,'Pending'),(80,11,112234,'Pending'),(81,11,112234,'Pending'),(82,12,112234,'Pending'),(83,12,112234,'Pending'),(84,12,112234,'Pending'),(85,13,112234,'Pending'),(86,13,112234,'Pending'),(87,13,112234,'Pending');
/*!40000 ALTER TABLE `timesheetapproval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheetstatuscodes`
--

DROP TABLE IF EXISTS `timesheetstatuscodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timesheetstatuscodes` (
  `tssc_code` int(2) NOT NULL,
  `tssc_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tssc_desc` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tssc_code`),
  UNIQUE KEY `tssc_code` (`tssc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheetstatuscodes`
--

LOCK TABLES `timesheetstatuscodes` WRITE;
/*!40000 ALTER TABLE `timesheetstatuscodes` DISABLE KEYS */;
INSERT INTO `timesheetstatuscodes` VALUES (0,'Pending','Newly created'),(1,'Submitted','Submitted for approval'),(2,'Approved','Approved by manager'),(3,'Reverted','Rejected for correction'),(4,'Saved','Saved by employee for further submission');
/*!40000 ALTER TABLE `timesheetstatuscodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tktconvattachment`
--

DROP TABLE IF EXISTS `tktconvattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tktconvattachment` (
  `tca_id` int(6) NOT NULL AUTO_INCREMENT,
  `tca_tktconv_id` int(6) NOT NULL,
  `tca_ihda_id` int(6) NOT NULL,
  PRIMARY KEY (`tca_id`),
  UNIQUE KEY `tca_id` (`tca_id`),
  KEY `fk_tca_tktconv_id_ref_tktconv_id` (`tca_tktconv_id`),
  KEY `fk_tca_ihda_id_ref_ihda_id` (`tca_ihda_id`),
  CONSTRAINT `fk_tca_ihda_id_ref_ihda_id` FOREIGN KEY (`tca_ihda_id`) REFERENCES `itshelpdeskattachment` (`ihda_id`),
  CONSTRAINT `fk_tca_tktconv_id_ref_tktconv_id` FOREIGN KEY (`tca_tktconv_id`) REFERENCES `ticketconversation` (`tktconv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tktconvattachment`
--

LOCK TABLES `tktconvattachment` WRITE;
/*!40000 ALTER TABLE `tktconvattachment` DISABLE KEYS */;
INSERT INTO `tktconvattachment` VALUES (1,19,11),(2,19,12),(3,21,13),(4,26,14),(5,58,15),(6,58,16);
/*!40000 ALTER TABLE `tktconvattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `u_id` int(6) NOT NULL AUTO_INCREMENT,
  `u_username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_id` (`u_id`),
  UNIQUE KEY `u_username` (`u_username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'ablakey'),(7,'ejones'),(2,'erin'),(3,'han'),(6,'jcobb'),(1,'mike'),(8,'mroach'),(4,'sandra'),(9,'twilliams');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useremployee`
--

DROP TABLE IF EXISTS `useremployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `useremployee` (
  `ue_id` int(6) NOT NULL AUTO_INCREMENT,
  `ue_u_id` int(6) NOT NULL,
  `ue_emp_id` int(6) NOT NULL,
  `ue_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ue_updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ue_id`),
  UNIQUE KEY `ue_id` (`ue_id`),
  UNIQUE KEY `ue_u_id` (`ue_u_id`),
  UNIQUE KEY `ue_emp_id` (`ue_emp_id`),
  CONSTRAINT `fk_ue_emp_id_ref_emp_id` FOREIGN KEY (`ue_emp_id`) REFERENCES `employee` (`emp_id`),
  CONSTRAINT `fk_ue_u_id_ref_u_id` FOREIGN KEY (`ue_u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useremployee`
--

LOCK TABLES `useremployee` WRITE;
/*!40000 ALTER TABLE `useremployee` DISABLE KEYS */;
INSERT INTO `useremployee` VALUES (1,3,112234,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(2,4,123121,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(3,1,123456,'2018-11-02 04:51:28','2018-11-02 04:51:28');
/*!40000 ALTER TABLE `useremployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `userrole` (
  `ur_id` int(6) NOT NULL AUTO_INCREMENT,
  `ur_u_id` int(6) NOT NULL,
  `ur_role_id` int(6) NOT NULL,
  `ur_created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ur_updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ur_id`),
  UNIQUE KEY `ur_id` (`ur_id`),
  KEY `fk_ur_u_id_ref_u_id` (`ur_u_id`),
  KEY `fk_ur_role_id_ref_role_id` (`ur_role_id`),
  CONSTRAINT `fk_ur_role_id_ref_role_id` FOREIGN KEY (`ur_role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fk_ur_u_id_ref_u_id` FOREIGN KEY (`ur_u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES (1,1,3,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(2,3,1,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(4,5,1,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(5,7,1,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(6,2,1,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(7,6,3,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(8,8,3,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(9,4,2,'2018-11-02 04:51:28','2018-11-02 04:51:28'),(10,9,2,'2018-11-02 04:51:28','2018-11-02 04:51:28');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `viewclosedticketsinlasthour`
--

DROP TABLE IF EXISTS `viewclosedticketsinlasthour`;
/*!50001 DROP VIEW IF EXISTS `viewclosedticketsinlasthour`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewclosedticketsinlasthour` AS SELECT 
 1 AS `closed_ticket_count_last_hour`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdepartmentwiseworkload`
--

DROP TABLE IF EXISTS `viewdepartmentwiseworkload`;
/*!50001 DROP VIEW IF EXISTS `viewdepartmentwiseworkload`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewdepartmentwiseworkload` AS SELECT 
 1 AS `ticket_count`,
 1 AS `dept_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewnewticketsinlasthour`
--

DROP TABLE IF EXISTS `viewnewticketsinlasthour`;
/*!50001 DROP VIEW IF EXISTS `viewnewticketsinlasthour`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewnewticketsinlasthour` AS SELECT 
 1 AS `new_ticket_count_last_hour`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewticketsassignedtouser`
--

DROP TABLE IF EXISTS `viewticketsassignedtouser`;
/*!50001 DROP VIEW IF EXISTS `viewticketsassignedtouser`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewticketsassignedtouser` AS SELECT 
 1 AS `tatu_tkt_id`,
 1 AS `tatu_assigned_to`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewticketsbymonthandstatus`
--

DROP TABLE IF EXISTS `viewticketsbymonthandstatus`;
/*!50001 DROP VIEW IF EXISTS `viewticketsbymonthandstatus`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewticketsbymonthandstatus` AS SELECT 
 1 AS `sts_name`,
 1 AS `last_day_of_month`,
 1 AS `tkt_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'pmapinew'
--

--
-- Dumping routines for database 'pmapinew'
--
/*!50003 DROP FUNCTION IF EXISTS `fnStrSplit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fnStrSplit`(x VARCHAR(255), delim VARCHAR(12), pos int) RETURNS varchar(255) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
   RETURN 
   CAST(replace(substring(substring_index(x, delim, pos), 
      length(substring_index(x, delim, pos - 1)) + 1), delim, '') AS UNSIGNED);
	
-- end the stored function code block
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spInsertTimesheetApprovals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertTimesheetApprovals`(
IN in_tmsht_id_list VARCHAR(1000), 
IN in_mgr_emp_id_list VARCHAR(1000),
IN in_tmsht_id_count INT,
IN in_mgr_emp_id_count INT,
OUT out_result BOOLEAN
)
BLOCK1: BEGIN
-- Temporary variables for outer loop: tmsht_id_loop
DECLARE tmp_tmsht_id INT(6);
DECLARE tmp_result TEXT;
DECLARE tmsht_id_counter INT DEFAULT 0;

-- The following loops runs through all the timesheetids
tmsht_id_loop: LOOP
-- split the tmshtids list
SET tmsht_id_counter = tmsht_id_counter + 1;
SELECT fnStrSplit(in_tmsht_id_list, ',', tmsht_id_counter) INTO tmp_tmsht_id;
	
    BLOCK2 :BEGIN
    DECLARE mgr_emp_id_counter INT DEFAULT 0;
    DECLARE tmp_mgr_emp_id INT(6);
	
	-- The following loops runs through all the managerids for each timesheetid
	mgr_emp_id_loop: LOOP	
	SET mgr_emp_id_counter = mgr_emp_id_counter +1;
	SELECT fnStrSplit(in_mgr_emp_id_list, ',', mgr_emp_id_counter) INTO tmp_mgr_emp_id;
	INSERT INTO timesheetapproval (tsa_tmesht_id, tsa_approver_emp_id, tsa_status) VALUES (tmp_tmsht_id, tmp_mgr_emp_id, 'Pending');
    
	IF mgr_emp_id_counter = in_mgr_emp_id_count THEN
      LEAVE mgr_emp_id_loop;
	END IF;
	
	END LOOP mgr_emp_id_loop;
	END BLOCK2;


IF tmsht_id_counter = in_tmsht_id_count THEN
      LEAVE tmsht_id_loop;
   END IF;

END LOOP tmsht_id_loop;
SET out_result = 1;
END BLOCK1 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `viewclosedticketsinlasthour`
--

/*!50001 DROP VIEW IF EXISTS `viewclosedticketsinlasthour`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewclosedticketsinlasthour` AS select count(0) AS `closed_ticket_count_last_hour` from `ticket` where ((`ticket`.`tkt_sts_id` = 3) and (`ticket`.`tkt_updated_date` between (utc_timestamp() - interval 60 minute) and utc_timestamp())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdepartmentwiseworkload`
--

/*!50001 DROP VIEW IF EXISTS `viewdepartmentwiseworkload`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdepartmentwiseworkload` AS select count(0) AS `ticket_count`,`department`.`dept_name` AS `dept_name` from (`ticket` join `department` on((`ticket`.`tkt_dept_id` = `department`.`dept_id`))) group by `department`.`dept_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewnewticketsinlasthour`
--

/*!50001 DROP VIEW IF EXISTS `viewnewticketsinlasthour`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewnewticketsinlasthour` AS select count(0) AS `new_ticket_count_last_hour` from `ticket` where ((`ticket`.`tkt_sts_id` = 5) and (`ticket`.`tkt_created_date` between (utc_timestamp() - interval 60 minute) and utc_timestamp())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewticketsassignedtouser`
--

/*!50001 DROP VIEW IF EXISTS `viewticketsassignedtouser`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewticketsassignedtouser` AS select `a`.`ta_tkt_id` AS `tatu_tkt_id`,`a`.`ta_assigned_to` AS `tatu_assigned_to` from (`pmapinew`.`ticketassignment` `a` join (select `pmapinew`.`ticketassignment`.`ta_tkt_id` AS `ticketId`,max(`pmapinew`.`ticketassignment`.`ta_created_date`) AS `latest_assigned_date` from `pmapinew`.`ticketassignment` group by `pmapinew`.`ticketassignment`.`ta_tkt_id`) `b` on((`a`.`ta_tkt_id` = `b`.`ticketId`))) where (`a`.`ta_created_date` = `b`.`latest_assigned_date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewticketsbymonthandstatus`
--

/*!50001 DROP VIEW IF EXISTS `viewticketsbymonthandstatus`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewticketsbymonthandstatus` AS select `status`.`sts_name` AS `sts_name`,last_day(`ticket`.`tkt_created_date`) AS `last_day_of_month`,count(0) AS `tkt_count` from (`ticket` join `status` on((`status`.`sts_id` = `ticket`.`tkt_sts_id`))) group by `status`.`sts_name`,`last_day_of_month` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-10 13:38:15
