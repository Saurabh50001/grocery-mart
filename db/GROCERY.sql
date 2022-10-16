CREATE DATABASE  IF NOT EXISTS `cakebake` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cakebake`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: cakebake
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.37-MariaDB

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `slno` int(11) NOT NULL AUTO_INCREMENT,
  `productId` varchar(45) DEFAULT NULL,
  `catId` varchar(45) DEFAULT NULL,
  `catName` varchar(45) DEFAULT NULL,
  `disc` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`slno`),
  UNIQUE KEY `slno_UNIQUE` (`slno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
INSERT INTO `contact_us` VALUES ('mukesh kumar','8327799828','mkproin1@gmail.com','Testing','Testing'),('Kanhaiyaji','78945632569','Kj@gmail.com','Testing','Testing');
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery` (
  `slno` int(11) NOT NULL DEFAULT '0',
  `pName` varchar(45) DEFAULT NULL,
  `pBrand` varchar(45) DEFAULT NULL,
  `pEmailId` varchar(45) DEFAULT NULL,
  `pTotal` varchar(45) DEFAULT NULL,
  `pCustomer` varchar(45) DEFAULT NULL,
  `pMobile` varchar(45) DEFAULT NULL,
  `pAddress` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empattendence`
--

DROP TABLE IF EXISTS `empattendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empattendence` (
  `slno` int(11) NOT NULL DEFAULT '0',
  `userId` varchar(45) DEFAULT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `currentDate` varchar(45) DEFAULT NULL,
  `attendence` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empattendence`
--

LOCK TABLES `empattendence` WRITE;
/*!40000 ALTER TABLE `empattendence` DISABLE KEYS */;
INSERT INTO `empattendence` VALUES (1,'supAdmin','Mukesh Kumar','2019-03-31 23:07:16','Present'),(2,'supAdmin','Mukesh Kumar','2019-04-02 21:20:55','Absent');
/*!40000 ALTER TABLE `empattendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleave`
--

DROP TABLE IF EXISTS `empleave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleave` (
  `slno` int(11) NOT NULL DEFAULT '0',
  `userId` varchar(45) DEFAULT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `fromDate` varchar(45) DEFAULT NULL,
  `toDate` varchar(45) DEFAULT NULL,
  `leaveFor` varchar(500) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleave`
--

LOCK TABLES `empleave` WRITE;
/*!40000 ALTER TABLE `empleave` DISABLE KEYS */;
INSERT INTO `empleave` VALUES (1,'supAdmin','Mukesh Kumar','2019-03-31','2019-04-09','Testing',''),(2,'supAdmin','Mukesh Kumar','2019-04-01','2019-04-20','Testing','Testing');
/*!40000 ALTER TABLE `empleave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeemaster`
--

DROP TABLE IF EXISTS `employeemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeemaster` (
  `seqid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `mobileNo` varchar(45) DEFAULT NULL,
  `photo` blob,
  `fName` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `qulification` varchar(45) DEFAULT NULL,
  `dataOfJoin` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`seqid`),
  UNIQUE KEY `seqid_UNIQUE` (`seqid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeemaster`
--

LOCK TABLES `employeemaster` WRITE;
/*!40000 ALTER TABLE `employeemaster` DISABLE KEYS */;
INSERT INTO `employeemaster` VALUES (1,'mk@gmail.com','admin@123','mukesh kumar','mkproin1@gmail.com','8327799828','','mukesh','30000','MBA','2019-04-01','FA & CAO Office,3rd Floor,North Block,Rail Sadan, C S Pur ,Bhubnaswar'),(2,'mkmca.in@gmail.com','admin@123','Kanhaiyaji','mkmca.in@gmail.com','8877938229','','Ramesh Prasad Singh','30000','MBA','2019-04-01','FA & CAO Office,3rd Floor,North Block,Rail Sadan, C S Pur ,Bhubnaswar');
/*!40000 ALTER TABLE `employeemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empsalary`
--

DROP TABLE IF EXISTS `empsalary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empsalary` (
  `slno` int(11) NOT NULL DEFAULT '0',
  `userId` varchar(45) DEFAULT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `forMonth` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `currentDate` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empsalary`
--

LOCK TABLES `empsalary` WRITE;
/*!40000 ALTER TABLE `empsalary` DISABLE KEYS */;
INSERT INTO `empsalary` VALUES (1,'supAdmin','Mukesh Kumar','Jan','40000','2019-03-31 23:35:23','OKK'),(2,'supAdmin','Mukesh Kumar','Jan','50000','2019-04-02 21:21:31','Testing');
/*!40000 ALTER TABLE `empsalary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `name` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('mukesh kumar','8327799828','mkproin1@gmail.com','Testing','Testing'),('mukesh kumar','8327799828','mkproin1@gmail.com','Testing','Testing');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `intOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `vchOrderName` varchar(100) DEFAULT NULL,
  `vchUserName` varchar(100) DEFAULT NULL,
  `vchProductId` varchar(100) DEFAULT NULL,
  `vchOrderDate` varchar(100) DEFAULT NULL,
  `vchOrderAddress` varchar(500) DEFAULT NULL,
  `vchOrderRemarks` varchar(500) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`intOrderId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (5,'Cake','supAdmin','Cake','2019-04-02','FA & CAO Office,3rd Floor,North Block,Rail Sadan, C S Pur ,Bhubnaswar','Testing','5'),(6,'Pineapple Cake.','supAdmin','Pineapple Cake.','2019-04-03','FA & CAO Office,3rd Floor,North Block,Rail Sadan, C S Pur ,Bhubnaswar','Testing','10');
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_details`
--

DROP TABLE IF EXISTS `payment_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_details` (
  `intPaymentId` int(11) NOT NULL AUTO_INCREMENT,
  `vchOrderId` varchar(100) DEFAULT NULL,
  `vchProductId` varchar(100) DEFAULT NULL,
  `vchPaymentMode` varchar(100) DEFAULT NULL,
  `vchPaymentDate` varchar(45) DEFAULT NULL,
  `vchPaymentAmount` varchar(45) DEFAULT NULL,
  `vchDueAmount` varchar(45) DEFAULT NULL,
  `vchAuthExperiance` varchar(100) DEFAULT NULL,
  `vchReceivedBy` varchar(100) DEFAULT NULL,
  `vchPaidBy` varchar(100) DEFAULT NULL,
  `vchRemarks` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`intPaymentId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_details`
--

LOCK TABLES `payment_details` WRITE;
/*!40000 ALTER TABLE `payment_details` DISABLE KEYS */;
INSERT INTO `payment_details` VALUES (5,'Cake','Cake','Cash','2019-04-01','5000','0','Good','Mukesh','supAdmin','Testing'),(6,'Pineapple Cake.','Pineapple Cake.','Check','2019-04-03','1000','200','N/A','Mukesh','supAdmin','Testing');
/*!40000 ALTER TABLE `payment_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_master`
--

DROP TABLE IF EXISTS `product_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_master` (
  `intProductId` int(11) NOT NULL AUTO_INCREMENT,
  `vchProductCode` varchar(45) DEFAULT NULL,
  `vchProductName` varchar(100) DEFAULT NULL,
  `vchProductCategory` varchar(100) DEFAULT NULL,
  `vchProductSubCategory` varchar(100) DEFAULT NULL,
  `vchSize` varchar(45) DEFAULT NULL,
  `vchPrices` varchar(45) DEFAULT NULL,
  `vchDescription` varchar(500) DEFAULT NULL,
  `vchQuentity` varchar(45) DEFAULT NULL,
  `vchRemarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`intProductId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_master`
--

LOCK TABLES `product_master` WRITE;
/*!40000 ALTER TABLE `product_master` DISABLE KEYS */;
INSERT INTO `product_master` VALUES (19,'CK_1','Cake','Special_Cake','Home_made','500','5000','Testing','100','Testing'),(20,'CK_2','Pineapple Cake.','Mango Meringue Cake.','Coffee Cake','200','500','Testing','100','Testing');
/*!40000 ALTER TABLE `product_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `seqid` int(11) NOT NULL DEFAULT '0',
  `userid` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `mobileNo` varchar(45) DEFAULT NULL,
  `photo` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES (0,'supAdmin','admin','mukesh kumar','mkproin1@gmail.com','8327799828',''),(0,'Nk','admin@123','Niranjan kumar','nk@gamil.com','78945613',''),(0,'Nk','admin@123','Niranjan kumar','nk@gamil.com','7894561320','');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cakebake'
--

--
-- Dumping routines for database 'cakebake'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-04 20:41:03
