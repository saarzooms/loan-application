CREATE DATABASE  IF NOT EXISTS `loan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `loan`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: loan
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `bpmi`
--

DROP TABLE IF EXISTS `bpmi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bpmi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ltvTo` decimal(15,2) DEFAULT NULL,
  `ltvFrom` decimal(15,2) DEFAULT NULL,
  `creditScoreFrom` int(11) DEFAULT NULL,
  `creditScoreTo` int(11) DEFAULT NULL,
  `bpmi` decimal(15,2) NOT NULL,
  `termFrom` int(11) DEFAULT NULL,
  `termTo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpmi`
--

LOCK TABLES `bpmi` WRITE;
/*!40000 ALTER TABLE `bpmi` DISABLE KEYS */;
INSERT INTO `bpmi` VALUES (1,97.00,95.01,760,0,0.55,241,0),(2,97.00,95.01,740,759,0.75,241,NULL),(3,97.00,95.01,720,739,0.95,241,NULL),(4,97.00,95.01,700,719,1.15,241,NULL),(5,97.00,95.01,680,699,1.40,241,NULL),(6,97.00,95.01,660,679,1.90,241,NULL),(7,97.00,95.01,640,659,2.05,241,NULL),(8,97.00,95.01,620,639,2.25,241,NULL),(9,95.00,90.01,760,0,0.41,241,0),(10,95.00,90.01,740,759,0.59,241,NULL),(11,95.00,90.01,720,739,0.73,241,NULL),(12,95.00,90.01,700,719,0.87,241,NULL),(13,95.00,90.01,680,699,1.08,241,NULL),(14,95.00,90.01,660,679,1.42,241,NULL),(15,95.00,90.01,640,659,1.50,241,NULL),(16,95.00,90.01,620,639,1.61,241,NULL),(17,90.00,85.01,760,NULL,0.30,241,NULL),(18,90.00,85.01,740,759,0.41,241,NULL),(19,90.00,85.01,720,739,0.50,241,NULL),(20,90.00,85.01,700,719,0.60,241,NULL),(21,90.00,85.01,680,699,0.73,241,NULL),(22,90.00,85.01,660,679,1.00,241,NULL),(23,90.00,85.01,640,659,1.05,241,NULL),(24,90.00,85.01,620,639,1.10,241,NULL),(25,85.00,0.00,760,0,0.19,241,0),(26,85.00,0.00,740,759,0.20,241,NULL),(27,85.00,0.00,720,739,0.23,241,NULL),(28,85.00,0.00,700,719,0.27,241,NULL),(29,85.00,0.00,680,699,0.32,241,NULL),(30,85.00,0.00,660,679,0.41,241,NULL),(31,85.00,0.00,640,659,0.43,241,NULL),(32,85.00,0.00,620,639,0.45,241,NULL),(33,97.00,95.01,760,NULL,0.37,0,240),(34,97.00,95.01,740,759,0.50,0,240),(35,97.00,95.01,720,739,0.65,0,240),(36,97.00,95.01,700,719,0.77,0,240),(37,97.00,95.01,680,699,0.97,0,240),(38,97.00,95.01,660,679,1.30,0,240),(39,97.00,95.01,640,659,1.45,0,240),(40,97.00,95.01,620,639,1.65,0,240),(41,95.00,90.01,760,NULL,0.30,0,240),(42,95.00,90.01,740,759,0.41,0,240),(43,95.00,90.01,720,739,0.50,0,240),(44,95.00,90.01,700,719,0.60,0,240),(45,95.00,90.01,680,699,0.75,0,240),(46,95.00,90.01,660,679,0.92,0,240),(47,95.00,90.01,640,659,1.04,0,240),(48,95.00,90.01,620,639,1.22,0,240),(49,90.00,85.01,760,NULL,0.24,0,240),(50,90.00,85.01,740,759,0.30,0,240),(51,90.00,85.01,720,739,0.36,0,240),(52,90.00,85.01,700,719,0.43,0,240),(53,90.00,85.01,680,699,0.50,0,240),(54,90.00,85.01,660,679,0.65,0,240),(55,90.00,85.01,640,659,0.73,0,240),(56,90.00,85.01,620,639,0.87,0,240),(57,85.00,0.00,760,NULL,0.18,0,240),(58,85.00,0.00,740,759,0.19,0,240),(59,85.00,0.00,720,739,0.22,0,240),(60,85.00,0.00,700,719,0.22,0,240),(61,85.00,0.00,680,699,0.25,0,240),(62,85.00,0.00,660,679,0.31,0,240),(63,85.00,0.00,640,659,0.33,0,240),(64,85.00,0.00,620,639,0.39,0,240);
/*!40000 ALTER TABLE `bpmi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bpmi_adjustments`
--

DROP TABLE IF EXISTS `bpmi_adjustments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bpmi_adjustments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `adjustmentName` varchar(250) NOT NULL,
  `creditScoreFrom` decimal(15,2) DEFAULT NULL,
  `creditScoreTo` decimal(15,2) DEFAULT NULL,
  `bpmi` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bpmi_adjustments`
--

LOCK TABLES `bpmi_adjustments` WRITE;
/*!40000 ALTER TABLE `bpmi_adjustments` DISABLE KEYS */;
INSERT INTO `bpmi_adjustments` VALUES (1,'Loan Amounts',760.00,0.00,0.20),(2,'Loan Amounts',740.00,759.00,0.22),(3,'Loan Amounts',720.00,739.00,0.25),(4,'Loan Amounts',700.00,719.00,0.30),(5,'Loan Amounts',680.00,699.00,0.40),(6,'Loan Amounts',660.00,679.00,0.50),(7,'Loan Amounts',640.00,659.00,0.60),(8,'Loan Amounts',620.00,639.00,0.70);
/*!40000 ALTER TABLE `bpmi_adjustments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `businesstype_master`
--

DROP TABLE IF EXISTS `businesstype_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `businesstype_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `businesstype_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `businesstype_master`
--

LOCK TABLES `businesstype_master` WRITE;
/*!40000 ALTER TABLE `businesstype_master` DISABLE KEYS */;
INSERT INTO `businesstype_master` VALUES (1,'Carpenter'),(3,'Plumber'),(4,'Moving Company');
/*!40000 ALTER TABLE `businesstype_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_master`
--

DROP TABLE IF EXISTS `customer_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `loanofficer_id` int(10) NOT NULL,
  `salutation` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `spouse_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `credit_score` int(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `facebookid` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_master`
--

LOCK TABLES `customer_master` WRITE;
/*!40000 ALTER TABLE `customer_master` DISABLE KEYS */;
INSERT INTO `customer_master` VALUES (1,1,'','Arzoo Shaikh','','','arzoo@gmail.com',7574865414,0,'Rajkot','','GUJRAT',360002);
/*!40000 ALTER TABLE `customer_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_master`
--

DROP TABLE IF EXISTS `email_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `loanofficer_id` int(10) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_master`
--

LOCK TABLES `email_master` WRITE;
/*!40000 ALTER TABLE `email_master` DISABLE KEYS */;
INSERT INTO `email_master` VALUES (1,1,'vishal patel','vishalpatel16@gmail.com','snksdnvlkdnlkn','odjvdmvlkdmvlkdvnkldnmvkldmvoejfiohdiuvhuerigudbvkjdbnvklnsd;lvms;lvmslknvjc mdcbkjd,n v .kdnvl/dsmvjlsdn vkdsnv'),(2,1,'vishal','vishalpatel16@gmail.com','lkdfnbldkfmn','PLZ access below linkloancalculator'),(3,1,'vishal','vishalpatel16@gmail.com','klldsnvksdnvkds','djdklfnvkdfnkdfnbkdfnbkdfnbkdfnbkldfnlbkmdflkbmdflbmflkblfkblkdfmbkdfnbndfbndfbndfbfb');
/*!40000 ALTER TABLE `email_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_setting`
--

DROP TABLE IF EXISTS `email_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `loanofficer_id` int(10) NOT NULL,
  `smtp_host` varchar(100) NOT NULL,
  `smtp_port` int(5) NOT NULL,
  `ssl_protocol` varchar(10) NOT NULL,
  `tls_protocol` varchar(10) NOT NULL,
  `smtp_username` varchar(100) NOT NULL,
  `smtp_password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_setting`
--

LOCK TABLES `email_setting` WRITE;
/*!40000 ALTER TABLE `email_setting` DISABLE KEYS */;
INSERT INTO `email_setting` VALUES (1,1,'smtp.gmail.com',587,'ON','ON','vishal@gmail.com','2616');
/*!40000 ALTER TABLE `email_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loanofficer_master`
--

DROP TABLE IF EXISTS `loanofficer_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loanofficer_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipcode` int(10) NOT NULL,
  `lender` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loanofficer_master`
--

LOCK TABLES `loanofficer_master` WRITE;
/*!40000 ALTER TABLE `loanofficer_master` DISABLE KEYS */;
INSERT INTO `loanofficer_master` VALUES (1,'vishal patel','vishal@gmail.com','images/photo/CB-4566.png',7574865414,'Rajkot','GUJRAT',360002,'','123');
/*!40000 ALTER TABLE `loanofficer_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_master`
--

DROP TABLE IF EXISTS `login_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(25) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_master`
--

LOCK TABLES `login_master` WRITE;
/*!40000 ALTER TABLE `login_master` DISABLE KEYS */;
INSERT INTO `login_master` VALUES (1,0,'admin@gmail.com','admin','Admin',1),(25,1,'vishal@gmail.com','123','Loanofficer',1),(27,1,'arzoo@gmail.com','123','Customer',1);
/*!40000 ALTER TABLE `login_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mypartner_master`
--

DROP TABLE IF EXISTS `mypartner_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mypartner_master` (
  `partner_id` int(10) NOT NULL,
  `loanofficer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mypartner_master`
--

LOCK TABLES `mypartner_master` WRITE;
/*!40000 ALTER TABLE `mypartner_master` DISABLE KEYS */;
INSERT INTO `mypartner_master` VALUES (4,1),(1,1),(6,2);
/*!40000 ALTER TABLE `mypartner_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_table`
--

DROP TABLE IF EXISTS `state_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_table` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_table`
--

LOCK TABLES `state_table` WRITE;
/*!40000 ALTER TABLE `state_table` DISABLE KEYS */;
INSERT INTO `state_table` VALUES (1,'ANDHRA PRADESH'),(2,'ASSAM'),(3,'ARUNACHAL PRADESH'),(4,'BIHAR'),(5,'GUJRAT'),(6,'HARYANA'),(7,'HIMACHAL PRADESH'),(8,'JAMMU & KASHMIR'),(9,'KARNATAKA'),(10,'KERALA'),(11,'MADHYA PRADESH'),(12,'MAHARASHTRA'),(13,'MANIPUR'),(14,'MEGHALAYA'),(15,'MIZORAM'),(16,'NAGALAND'),(17,'ORISSA'),(18,'PUNJAB'),(19,'RAJASTHAN'),(20,'SIKKIM'),(21,'TAMIL NADU'),(22,'UTTAR PRADESH'),(23,'WEST BENGAL'),(24,'DELHI'),(25,'GOA'),(26,'PONDICHERY'),(27,'LAKSHDWEEP'),(28,'DAMAN & DIU'),(29,'DADRA & NAGAR'),(30,'CHANDIGARH'),(31,'ANDAMAN & NICOBAR'),(32,'UTTARANCHAL'),(33,'JHARKHAND'),(34,'CHATTISGARH');
/*!40000 ALTER TABLE `state_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_insurance_basic_premium_rates`
--

DROP TABLE IF EXISTS `title_insurance_basic_premium_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_insurance_basic_premium_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policiesUpToAndIncluding` decimal(15,2) DEFAULT NULL,
  `basicPremium` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_insurance_basic_premium_rates`
--

LOCK TABLES `title_insurance_basic_premium_rates` WRITE;
/*!40000 ALTER TABLE `title_insurance_basic_premium_rates` DISABLE KEYS */;
INSERT INTO `title_insurance_basic_premium_rates` VALUES (1,10000.00,238.00),(2,10500.00,242.00),(3,11000.00,244.00),(4,11500.00,248.00),(5,12000.00,252.00),(6,12500.00,255.00),(7,13000.00,260.00),(8,13500.00,264.00),(9,14000.00,267.00),(10,14500.00,270.00),(11,15000.00,272.00),(12,15500.00,276.00),(13,16000.00,280.00),(14,16500.00,284.00),(15,17000.00,288.00),(16,17500.00,292.00),(17,18000.00,296.00),(18,18500.00,298.00),(19,19000.00,301.00),(20,19500.00,304.00),(21,20000.00,309.00),(22,20500.00,312.00),(23,21000.00,317.00),(24,21500.00,320.00),(25,22000.00,324.00),(26,22500.00,327.00),(27,23000.00,330.00),(28,23500.00,333.00),(29,24000.00,337.00),(30,24500.00,340.00),(31,25000.00,345.00),(32,25500.00,348.00),(33,26000.00,352.00),(34,26500.00,355.00),(35,27000.00,358.00),(36,27500.00,361.00),(37,28000.00,365.00),(38,28500.00,368.00),(39,29000.00,373.00),(40,29500.00,376.00),(41,30000.00,380.00),(42,30500.00,383.00),(43,31000.00,387.00),(44,31500.00,390.00),(45,32000.00,393.00),(46,32500.00,398.00),(47,33000.00,401.00),(48,33500.00,405.00),(49,34000.00,408.00),(50,34500.00,412.00),(51,35000.00,415.00),(52,35500.00,419.00),(53,36000.00,422.00),(54,36500.00,426.00),(55,37000.00,429.00),(56,37500.00,433.00),(57,38000.00,437.00),(58,38500.00,441.00),(59,39000.00,443.00),(60,39500.00,447.00),(61,40000.00,450.00),(62,40500.00,455.00),(63,41000.00,457.00),(64,41500.00,462.00),(65,42000.00,465.00),(66,42500.00,469.00),(67,43000.00,471.00),(68,43500.00,475.00),(69,44000.00,479.00),(70,44500.00,483.00),(71,45000.00,487.00),(72,45500.00,490.00),(73,46000.00,493.00),(74,46500.00,497.00),(75,47000.00,499.00),(76,47500.00,503.00),(77,48000.00,508.00),(78,48500.00,512.00),(79,49000.00,515.00),(80,49500.00,518.00),(81,50000.00,522.00),(82,50500.00,525.00),(83,51000.00,527.00),(84,51500.00,531.00),(85,52000.00,536.00),(86,52500.00,540.00),(87,53000.00,543.00),(88,53500.00,547.00),(89,54000.00,550.00),(90,54500.00,553.00),(91,55000.00,556.00),(92,55500.00,559.00),(93,56000.00,565.00),(94,56500.00,568.00),(95,57000.00,571.00),(96,57500.00,575.00),(97,58000.00,579.00),(98,58500.00,581.00),(99,59000.00,585.00),(100,59500.00,589.00),(101,60000.00,593.00),(102,60500.00,597.00),(103,61000.00,600.00),(104,61500.00,603.00),(105,62000.00,607.00),(106,62500.00,611.00),(107,63000.00,613.00),(108,63500.00,617.00),(109,64000.00,621.00),(110,64500.00,625.00),(111,65000.00,628.00),(112,65500.00,631.00),(113,66000.00,635.00),(114,66500.00,640.00),(115,67000.00,644.00),(116,67500.00,645.00),(117,68000.00,649.00),(118,68500.00,653.00),(119,69000.00,656.00),(120,69500.00,659.00),(121,70000.00,664.00),(122,70500.00,668.00),(123,71000.00,672.00),(124,71500.00,674.00),(125,72000.00,677.00),(126,72500.00,681.00),(127,73000.00,685.00),(128,73500.00,688.00),(129,74000.00,692.00),(130,74500.00,696.00),(131,75000.00,700.00),(132,75500.00,702.00),(133,76000.00,706.00),(134,76500.00,709.00),(135,77000.00,713.00),(136,77500.00,716.00),(137,78000.00,720.00),(138,78500.00,725.00),(139,79000.00,729.00),(140,79500.00,730.00),(141,80000.00,734.00),(142,80500.00,738.00),(143,81000.00,742.00),(144,81500.00,744.00),(145,82000.00,748.00),(146,82500.00,753.00),(147,83000.00,757.00),(148,83500.00,759.00),(149,84000.00,762.00),(150,84500.00,767.00),(151,85000.00,770.00),(152,85500.00,773.00),(153,86000.00,776.00),(154,86500.00,781.00),(155,87000.00,785.00),(156,87500.00,788.00),(157,88000.00,791.00),(158,88500.00,795.00),(159,89000.00,799.00),(160,89500.00,801.00),(161,90000.00,804.00),(162,90500.00,809.00),(163,91000.00,813.00),(164,91500.00,817.00),(165,92000.00,819.00),(166,92500.00,823.00),(167,93000.00,827.00),(168,93500.00,831.00),(169,94000.00,832.00),(170,94500.00,837.00),(171,95000.00,842.00),(172,95500.00,845.00),(173,96000.00,847.00),(174,96500.00,851.00),(175,97000.00,855.00),(176,97500.00,859.00),(177,98000.00,862.00),(178,98500.00,866.00),(179,99000.00,870.00),(180,99500.00,873.00),(181,100000.00,875.00);
/*!40000 ALTER TABLE `title_insurance_basic_premium_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title_insurance_range`
--

DROP TABLE IF EXISTS `title_insurance_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `title_insurance_range` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `policyRangeFrom` decimal(15,2) DEFAULT NULL,
  `policyRangeTo` decimal(15,2) DEFAULT NULL,
  `subtract` decimal(15,2) DEFAULT NULL,
  `multiplyBy` decimal(15,5) DEFAULT NULL,
  `add` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title_insurance_range`
--

LOCK TABLES `title_insurance_range` WRITE;
/*!40000 ALTER TABLE `title_insurance_range` DISABLE KEYS */;
INSERT INTO `title_insurance_range` VALUES (1,100001.00,1000000.00,100000.00,0.00554,875.00),(2,1000001.00,5000000.00,1000000.00,0.00456,5861.00),(3,5000001.00,15000000.00,5000000.00,0.00376,24101.00),(4,15000001.00,25000000.00,15000000.00,0.00267,61701.00),(5,25000001.00,NULL,25000000.00,0.00160,88401.00);
/*!40000 ALTER TABLE `title_insurance_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trusted_partner`
--

DROP TABLE IF EXISTS `trusted_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trusted_partner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `photo` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `business_name` varchar(200) NOT NULL,
  `contact_name` varchar(200) NOT NULL,
  `address` varchar(250) NOT NULL,
  `facebook_profile` varchar(250) NOT NULL,
  `linkedin_profile` varchar(250) NOT NULL,
  `business_hours` varchar(100) NOT NULL,
  `note` varchar(250) NOT NULL,
  `business_type` int(10) NOT NULL,
  `twitter_handle` varchar(100) NOT NULL,
  `user` varchar(50) NOT NULL,
  `forcedisplay` varchar(10) NOT NULL,
  `display_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trusted_partner`
--

LOCK TABLES `trusted_partner` WRITE;
/*!40000 ALTER TABLE `trusted_partner` DISABLE KEYS */;
INSERT INTO `trusted_partner` VALUES (1,'images/photo/CB-8080.png','vishalpatel16@gmail.com',7574865414,'Ally trading','Vishal PAtel','Rajkot','www.facebook.com','www.linkedin.com','9:00 Am To 8:00 PM','',1,'www.twitter.com','Admin','Yes','2017-10-07'),(2,'images/photo/CB-7979.png','rohit.bhalara123@gmail.com',9909131543,'Ally trading','Raj Kotadiya','bhole pan street','www.facebook.com','www.linkedin.com','9:00 Am To 8:00 PM','',4,'www.twitter.com','Admin','Yes','2017-10-07'),(3,'images/photo/CB-7676.png','arzoo@gmail.com',8866152292,'Ally trading','Arzoo','Rajkot','www.facebook.com','www.linkedin.com','9:00 Am To 8:00 PM','',3,'www.twitter.com','Admin','Yes','2017-09-26'),(4,'images/photo/CB-7578.png','vivek@gmail.com',9909131543,'Ally trading','Vivel Patel','Rajkot','www.facebook.com','www.linkedin.com','9:00 Am To 8:00 PM','',4,'www.twitter.com','Admin','No','0000-00-00'),(5,'images/photo/CB-7475.png','hitesh@gmail.com',9909131543,'Ally trading','HItesh Patel','Rajkot','www.facebook.com','www.linkedin.com','Ally trading','',1,'www.twitter.com','Vishal AKbari','No','0000-00-00'),(6,'images/photo/CB-7874.png','Subhash@gmail.com',9727257906,'Ally trading','Subhsh Patel','Rajkot','www.facebook.com','www.linkedin.com','9:00 Am To 8:00 PM','Nothing',4,'www.twitter.com','Vishal AKbari','Yes','2017-09-18'),(7,'images/photo/CB-7777.png','hardik@gmail.com',9988556622,'Ally trading','Hardik Patel','Rajkot','www.facebook.com','www.linkedin.com','Ally trading','',3,'www.twitter.com','Admin','Yes','2017-09-18'),(8,'images/photo/CB-7373.png','manish@gmail.com',9909131543,'Ally trading','Manish Patel','Rajkot','www.facebook.com','www.linkedin.com','Ally trading','',4,'www.twitter.com','Admin','Yes','2017-09-20');
/*!40000 ALTER TABLE `trusted_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_master`
--

DROP TABLE IF EXISTS `url_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `loanofficer_id` int(10) NOT NULL,
  `url` varchar(250) NOT NULL,
  `shorturl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_master`
--

LOCK TABLES `url_master` WRITE;
/*!40000 ALTER TABLE `url_master` DISABLE KEYS */;
INSERT INTO `url_master` VALUES (1,1,'http://localhost:8080/1','b0x2');
/*!40000 ALTER TABLE `url_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-10  9:41:08
