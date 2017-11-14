-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2017 at 04:05 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `loan`
--
CREATE DATABASE IF NOT EXISTS `loan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `loan`;

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE IF NOT EXISTS `borrowers` (
  `id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT NULL,
  `borrowerId` varchar(10) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `creditScore` int(11) DEFAULT NULL,
  `type` enum('B','C') DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrowers`
--

INSERT INTO `borrowers` (`id`, `loanId`, `borrowerId`, `name`, `email`, `phone`, `creditScore`, `type`, `isActive`, `createdAt`, `updatedAt`, `lastUpdatedBy`) VALUES
(2, 2, 'B', 'Hitesh Patel', 'hitesh@gmail.com', 7698903070, 0, 'B', 1, '2017-11-09 10:50:28', NULL, NULL),
(2, 2, 'C1', 'Subhash Patel', 'subhash@gmail.com', 9865856595, 0, 'C', 1, '2017-11-09 10:50:28', NULL, NULL),
(1, 3, 'B', 'Arzoo Shaikh', 'arzoo@gmail.com', 7574865414, 0, 'B', 1, '2017-11-11 06:01:06', '0000-00-00 00:00:00', NULL),
(2, 4, 'B', 'Hitesh Patel', 'hitesh@gmail.com', 7698903070, 0, 'B', 1, '2017-11-11 06:03:03', '0000-00-00 00:00:00', NULL),
(2, 7, 'B', 'Hitesh Patel', 'hitesh@gmail.com', 7698903070, 0, 'B', 1, '2017-11-11 06:18:22', NULL, NULL),
(1, 8, 'B', 'Arzoo Shaikh', 'arzoo@gmail.com', 7574865414, 0, 'B', 1, '2017-11-11 07:47:17', '0000-00-00 00:00:00', NULL),
(1, 1, 'B', 'Arzoo Shaikh', 'arzoo@gmail.com', 7574865414, 0, 'B', 1, '2017-11-13 16:44:00', NULL, 'loan officer'),
(1, 1, 'C1', 'Vishal Patel', 'vishal@gmail.com', 7698903010, 0, 'C', 1, '2017-11-13 16:44:00', NULL, 'loan officer'),
(1, 16, 'B', 'Arzoo Shaikh', 'arzoo@gmail.com', 7574865414, 0, 'B', 1, '2017-11-14 14:34:44', NULL, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `borrowershistory`
--

CREATE TABLE IF NOT EXISTS `borrowershistory` (
  `id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT NULL,
  `borrowerId` varchar(10) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `creditScore` int(11) DEFAULT NULL,
  `type` enum('B','C') DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrowershistory`
--

INSERT INTO `borrowershistory` (`id`, `loanId`, `borrowerId`, `name`, `email`, `phone`, `creditScore`, `type`, `isActive`, `createdAt`, `updatedAt`, `lastUpdatedBy`) VALUES
(2, 2, 'B', 'Hitesh Patel', 'hitesh@gmail.com', 7698903070, 0, 'B', 1, '2017-11-09 10:50:28', NULL, NULL),
(2, 2, 'C1', 'Subhash Patel', 'subhash@gmail.com', 9865856595, 0, 'C', 1, '2017-11-09 10:50:28', NULL, NULL),
(2, 7, 'B', 'Hitesh Patel', 'hitesh@gmail.com', 7698903070, 0, 'B', 1, '2017-11-11 06:18:22', NULL, NULL),
(1, 1, 'B', 'Arzoo Shaikh', 'arzoo@gmail.com', 7574865414, 0, 'B', 1, '2017-11-13 16:44:00', NULL, 'loan officer'),
(1, 1, 'C1', 'Vishal Patel', 'vishal@gmail.com', 7698903010, 0, 'C', 1, '2017-11-13 16:44:00', NULL, 'loan officer'),
(1, 16, 'B', 'Arzoo Shaikh', 'arzoo@gmail.com', 7574865414, 0, 'B', 1, '2017-11-14 14:34:44', NULL, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `bpmi`
--

CREATE TABLE IF NOT EXISTS `bpmi` (
`id` int(11) NOT NULL,
  `ltvTo` decimal(15,2) DEFAULT NULL,
  `ltvFrom` decimal(15,2) DEFAULT NULL,
  `creditScoreFrom` int(11) DEFAULT NULL,
  `creditScoreTo` int(11) DEFAULT NULL,
  `bpmi` decimal(15,2) NOT NULL,
  `termFrom` int(11) DEFAULT NULL,
  `termTo` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bpmi`
--

INSERT INTO `bpmi` (`id`, `ltvTo`, `ltvFrom`, `creditScoreFrom`, `creditScoreTo`, `bpmi`, `termFrom`, `termTo`) VALUES
(1, '97.00', '95.01', 760, 0, '0.55', 241, 0),
(2, '97.00', '95.01', 740, 759, '0.75', 241, NULL),
(3, '97.00', '95.01', 720, 739, '0.95', 241, NULL),
(4, '97.00', '95.01', 700, 719, '1.15', 241, NULL),
(5, '97.00', '95.01', 680, 699, '1.40', 241, NULL),
(6, '97.00', '95.01', 660, 679, '1.90', 241, NULL),
(7, '97.00', '95.01', 640, 659, '2.05', 241, NULL),
(8, '97.00', '95.01', 620, 639, '2.25', 241, NULL),
(9, '95.00', '90.01', 760, 0, '0.41', 241, 0),
(10, '95.00', '90.01', 740, 759, '0.59', 241, NULL),
(11, '95.00', '90.01', 720, 739, '0.73', 241, NULL),
(12, '95.00', '90.01', 700, 719, '0.87', 241, NULL),
(13, '95.00', '90.01', 680, 699, '1.08', 241, NULL),
(14, '95.00', '90.01', 660, 679, '1.42', 241, NULL),
(15, '95.00', '90.01', 640, 659, '1.50', 241, NULL),
(16, '95.00', '90.01', 620, 639, '1.61', 241, NULL),
(17, '90.00', '85.01', 760, NULL, '0.30', 241, NULL),
(18, '90.00', '85.01', 740, 759, '0.41', 241, NULL),
(19, '90.00', '85.01', 720, 739, '0.50', 241, NULL),
(20, '90.00', '85.01', 700, 719, '0.60', 241, NULL),
(21, '90.00', '85.01', 680, 699, '0.73', 241, NULL),
(22, '90.00', '85.01', 660, 679, '1.00', 241, NULL),
(23, '90.00', '85.01', 640, 659, '1.05', 241, NULL),
(24, '90.00', '85.01', 620, 639, '1.10', 241, NULL),
(25, '85.00', '0.00', 760, 0, '0.19', 241, 0),
(26, '85.00', '0.00', 740, 759, '0.20', 241, NULL),
(27, '85.00', '0.00', 720, 739, '0.23', 241, NULL),
(28, '85.00', '0.00', 700, 719, '0.27', 241, NULL),
(29, '85.00', '0.00', 680, 699, '0.32', 241, NULL),
(30, '85.00', '0.00', 660, 679, '0.41', 241, NULL),
(31, '85.00', '0.00', 640, 659, '0.43', 241, NULL),
(32, '85.00', '0.00', 620, 639, '0.45', 241, NULL),
(33, '97.00', '95.01', 760, NULL, '0.37', 0, 240),
(34, '97.00', '95.01', 740, 759, '0.50', 0, 240),
(35, '97.00', '95.01', 720, 739, '0.65', 0, 240),
(36, '97.00', '95.01', 700, 719, '0.77', 0, 240),
(37, '97.00', '95.01', 680, 699, '0.97', 0, 240),
(38, '97.00', '95.01', 660, 679, '1.30', 0, 240),
(39, '97.00', '95.01', 640, 659, '1.45', 0, 240),
(40, '97.00', '95.01', 620, 639, '1.65', 0, 240),
(41, '95.00', '90.01', 760, NULL, '0.30', 0, 240),
(42, '95.00', '90.01', 740, 759, '0.41', 0, 240),
(43, '95.00', '90.01', 720, 739, '0.50', 0, 240),
(44, '95.00', '90.01', 700, 719, '0.60', 0, 240),
(45, '95.00', '90.01', 680, 699, '0.75', 0, 240),
(46, '95.00', '90.01', 660, 679, '0.92', 0, 240),
(47, '95.00', '90.01', 640, 659, '1.04', 0, 240),
(48, '95.00', '90.01', 620, 639, '1.22', 0, 240),
(49, '90.00', '85.01', 760, NULL, '0.24', 0, 240),
(50, '90.00', '85.01', 740, 759, '0.30', 0, 240),
(51, '90.00', '85.01', 720, 739, '0.36', 0, 240),
(52, '90.00', '85.01', 700, 719, '0.43', 0, 240),
(53, '90.00', '85.01', 680, 699, '0.50', 0, 240),
(54, '90.00', '85.01', 660, 679, '0.65', 0, 240),
(55, '90.00', '85.01', 640, 659, '0.73', 0, 240),
(56, '90.00', '85.01', 620, 639, '0.87', 0, 240),
(57, '85.00', '0.00', 760, NULL, '0.18', 0, 240),
(58, '85.00', '0.00', 740, 759, '0.19', 0, 240),
(59, '85.00', '0.00', 720, 739, '0.22', 0, 240),
(60, '85.00', '0.00', 700, 719, '0.22', 0, 240),
(61, '85.00', '0.00', 680, 699, '0.25', 0, 240),
(62, '85.00', '0.00', 660, 679, '0.31', 0, 240),
(63, '85.00', '0.00', 640, 659, '0.33', 0, 240),
(64, '85.00', '0.00', 620, 639, '0.39', 0, 240);

-- --------------------------------------------------------

--
-- Table structure for table `bpmi_adjustments`
--

CREATE TABLE IF NOT EXISTS `bpmi_adjustments` (
`id` int(10) NOT NULL,
  `adjustmentName` varchar(250) NOT NULL,
  `creditScoreFrom` decimal(15,2) DEFAULT NULL,
  `creditScoreTo` decimal(15,2) DEFAULT NULL,
  `bpmi` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bpmi_adjustments`
--

INSERT INTO `bpmi_adjustments` (`id`, `adjustmentName`, `creditScoreFrom`, `creditScoreTo`, `bpmi`) VALUES
(1, 'Loan Amounts', '760.00', '0.00', '0.20'),
(2, 'Loan Amounts', '740.00', '759.00', '0.22'),
(3, 'Loan Amounts', '720.00', '739.00', '0.25'),
(4, 'Loan Amounts', '700.00', '719.00', '0.30'),
(5, 'Loan Amounts', '680.00', '699.00', '0.40'),
(6, 'Loan Amounts', '660.00', '679.00', '0.50'),
(7, 'Loan Amounts', '640.00', '659.00', '0.60'),
(8, 'Loan Amounts', '620.00', '639.00', '0.70');

-- --------------------------------------------------------

--
-- Table structure for table `businesstype_master`
--

CREATE TABLE IF NOT EXISTS `businesstype_master` (
`id` int(10) NOT NULL,
  `businesstype_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `businesstype_master`
--

INSERT INTO `businesstype_master` (`id`, `businesstype_name`) VALUES
(1, 'Carpenter'),
(3, 'Plumber'),
(4, 'Moving Company');

-- --------------------------------------------------------

--
-- Table structure for table `closing_costs`
--

CREATE TABLE IF NOT EXISTS `closing_costs` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `rowNo` int(11) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  `value` decimal(15,2) DEFAULT NULL,
  `percentage` decimal(15,3) DEFAULT NULL,
  `isApr` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE IF NOT EXISTS `credits` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `credit1Name` varchar(65) DEFAULT NULL,
  `credit1Amount` decimal(15,2) DEFAULT NULL,
  `credit2Name` varchar(65) DEFAULT NULL,
  `credit2Amount` decimal(15,2) DEFAULT NULL,
  `credit3Name` varchar(65) DEFAULT NULL,
  `credit3Amount` decimal(15,2) DEFAULT NULL,
  `credit4Name` varchar(65) DEFAULT NULL,
  `credit4Amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `userId`, `credit1Name`, `credit1Amount`, `credit2Name`, `credit2Amount`, `credit3Name`, `credit3Amount`, `credit4Name`, `credit4Amount`) VALUES
(1, 101, 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `customer_master`
--

CREATE TABLE IF NOT EXISTS `customer_master` (
`id` int(10) NOT NULL,
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
  `zipcode` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_master`
--

INSERT INTO `customer_master` (`id`, `loanofficer_id`, `salutation`, `name`, `marital_status`, `spouse_name`, `email`, `phone`, `credit_score`, `address`, `facebookid`, `state`, `zipcode`) VALUES
(1, 1, '', 'Arzoo Shaikh', '', '', 'arzoo@gmail.com', 7574865414, 0, 'Rajkot', '', 'GUJRAT', 360002),
(2, 1, '', 'Hitesh Patel', '', '', 'hitesh@gmail.com', 7698903070, 0, 'Rajkot', '', 'GUJRAT', 360002);

-- --------------------------------------------------------

--
-- Table structure for table `debits`
--

CREATE TABLE IF NOT EXISTS `debits` (
  `id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT NULL,
  `borrowerId` varchar(10) DEFAULT NULL,
  `description` varchar(55) DEFAULT NULL,
  `frequency` varchar(55) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debits`
--

INSERT INTO `debits` (`id`, `loanId`, `borrowerId`, `description`, `frequency`, `amount`, `isActive`, `createdAt`, `updateAt`, `lastUpdatedBy`) VALUES
(13, 11, 'B', '', '', NULL, 1, '2017-09-08 14:58:55', NULL, NULL),
(14, 13, 'B', '', '', NULL, 1, '2017-09-08 15:20:32', NULL, NULL),
(15, 10, 'B', '', '', NULL, 1, '2017-09-08 15:56:21', NULL, NULL),
(19, 37, 'B', '', '', NULL, 1, '2017-09-18 13:13:16', NULL, NULL),
(21, 55, 'B', '', '', NULL, 1, '2017-09-30 07:19:55', NULL, NULL),
(23, 74, 'B', '', '', NULL, 1, '2017-10-12 04:31:19', NULL, NULL),
(24, 75, 'B', '', '', NULL, 1, '2017-10-13 15:46:20', NULL, NULL),
(26, 76, 'B', '', '', NULL, 1, '2017-10-15 10:47:30', NULL, NULL),
(28, 77, 'B', '', '', NULL, 1, '2017-10-15 10:53:10', NULL, NULL),
(29, 78, 'B', '', '', NULL, 1, '2017-10-15 10:54:10', NULL, NULL),
(35, 80, 'B', '', '', NULL, 1, '2017-10-15 11:06:17', NULL, NULL),
(36, 81, 'B', '', '', NULL, 1, '2017-10-15 11:06:51', NULL, NULL),
(37, 85, 'B', '', '', NULL, 1, '2017-10-18 16:29:36', NULL, NULL),
(38, 85, 'B', '', '', NULL, 1, '2017-10-18 16:29:36', NULL, NULL),
(39, 85, 'B', '', '', NULL, 1, '2017-10-18 16:29:36', NULL, NULL),
(40, 85, 'B', '', '', NULL, 1, '2017-10-18 16:29:36', NULL, NULL),
(41, 85, 'B', '', '', NULL, 1, '2017-10-18 16:29:36', NULL, NULL),
(42, 85, 'B', '', '', NULL, 1, '2017-10-18 16:29:36', NULL, NULL),
(43, 86, 'B', '', '', NULL, 1, '2017-10-21 00:19:38', NULL, NULL),
(59, 4, 'B', '', '', NULL, 1, '2017-10-31 14:22:08', NULL, NULL),
(60, 3, 'B', '', '', NULL, 1, '2017-10-31 14:24:35', NULL, NULL),
(61, 5, 'B', '', '', NULL, 1, '2017-10-31 14:26:06', NULL, NULL),
(62, 141, 'B', '', '', NULL, 1, '2017-11-01 05:49:54', NULL, NULL),
(63, 143, 'B', '', '', NULL, 1, '2017-11-01 05:52:04', NULL, NULL),
(64, 145, 'B', '', '', NULL, 1, '2017-11-01 10:43:11', NULL, NULL),
(71, 147, 'B', '', '', NULL, 1, '2017-11-01 11:17:25', NULL, NULL),
(82, 152, 'B', '', '', NULL, 1, '2017-11-01 12:08:03', NULL, NULL),
(83, 155, 'B', '', '', NULL, 1, '2017-11-06 15:58:15', NULL, NULL),
(0, 2, 'B', '', '', NULL, 1, '2017-11-09 10:50:29', NULL, NULL),
(0, 7, 'B', '', '', NULL, 1, '2017-11-11 06:18:22', NULL, NULL),
(0, 1, 'B', 'sdfs', 'Twice a Month', '5.55', 1, '2017-11-13 16:44:00', NULL, 'loan officer'),
(0, 16, 'B', '', '', NULL, 1, '2017-11-14 14:34:44', NULL, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `debits_history`
--

CREATE TABLE IF NOT EXISTS `debits_history` (
  `id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT NULL,
  `borrowerId` varchar(10) DEFAULT NULL,
  `description` varchar(55) DEFAULT NULL,
  `frequency` varchar(55) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `debits_history`
--

INSERT INTO `debits_history` (`id`, `loanId`, `borrowerId`, `description`, `frequency`, `amount`, `isActive`, `createdAt`, `updateAt`, `lastUpdatedBy`) VALUES
(0, 1, 'B', 'sdfs', 'Twice a Month', '5.55', 1, '2017-11-13 16:44:00', NULL, 'loan officer'),
(0, 16, 'B', '', '', NULL, 1, '2017-11-14 14:34:44', NULL, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `email_master`
--

CREATE TABLE IF NOT EXISTS `email_master` (
`id` int(10) NOT NULL,
  `loanofficer_id` int(10) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_master`
--

INSERT INTO `email_master` (`id`, `loanofficer_id`, `sender_name`, `sender_email`, `subject`, `message`) VALUES
(1, 1, 'vishal patel', 'vishalpatel16@gmail.com', 'snksdnvlkdnlkn', 'odjvdmvlkdmvlkdvnkldnmvkldmvoejfiohdiuvhuerigudbvkjdbnvklnsd;lvms;lvmslknvjc mdcbkjd,n v .kdnvl/dsmvjlsdn vkdsnv'),
(2, 1, 'vishal', 'vishalpatel16@gmail.com', 'lkdfnbldkfmn', 'PLZ access below linkloancalculator'),
(3, 1, 'vishal', 'vishalpatel16@gmail.com', 'klldsnvksdnvkds', 'djdklfnvkdfnkdfnbkdfnbkdfnbkdfnbkldfnlbkmdflkbmdflbmflkblfkblkdfmbkdfnbndfbndfbndfbfb');

-- --------------------------------------------------------

--
-- Table structure for table `email_setting`
--

CREATE TABLE IF NOT EXISTS `email_setting` (
`id` int(10) NOT NULL,
  `loanofficer_id` int(10) NOT NULL,
  `smtp_host` varchar(100) NOT NULL,
  `smtp_port` int(5) NOT NULL,
  `ssl_protocol` varchar(10) NOT NULL,
  `tls_protocol` varchar(10) NOT NULL,
  `smtp_username` varchar(100) NOT NULL,
  `smtp_password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_setting`
--

INSERT INTO `email_setting` (`id`, `loanofficer_id`, `smtp_host`, `smtp_port`, `ssl_protocol`, `tls_protocol`, `smtp_username`, `smtp_password`) VALUES
(1, 1, 'smtp.gmail.com', 587, 'ON', 'ON', 'vishal@gmail.com', '2616');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE IF NOT EXISTS `incomes` (
  `id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT NULL,
  `borrowerId` varchar(10) DEFAULT NULL,
  `incomeSource` varchar(55) DEFAULT NULL,
  `frequency` varchar(55) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `loanId`, `borrowerId`, `incomeSource`, `frequency`, `amount`, `isActive`, `createdAt`, `updateAt`, `lastUpdatedBy`) VALUES
(15, 11, 'B', '', '', NULL, 1, '2017-09-08 14:58:55', NULL, NULL),
(16, 13, 'B', '', '', NULL, 1, '2017-09-08 15:20:32', NULL, NULL),
(17, 10, 'B', '', '', NULL, 1, '2017-09-08 15:56:21', NULL, NULL),
(21, 37, 'B', '', '', NULL, 1, '2017-09-18 13:13:16', NULL, NULL),
(23, 55, 'B', '', '', NULL, 1, '2017-09-30 07:19:55', NULL, NULL),
(25, 74, 'B', '', '', NULL, 1, '2017-10-12 04:31:19', NULL, NULL),
(26, 75, 'B', '', '', NULL, 1, '2017-10-13 15:46:20', NULL, NULL),
(28, 76, 'B', '', '', NULL, 1, '2017-10-15 10:47:30', NULL, NULL),
(30, 77, 'B', '', '', NULL, 1, '2017-10-15 10:53:10', NULL, NULL),
(31, 78, 'B', '', '', NULL, 1, '2017-10-15 10:54:10', NULL, NULL),
(37, 80, 'B', '', '', NULL, 1, '2017-10-15 11:06:17', NULL, NULL),
(38, 81, 'B', '', '', NULL, 1, '2017-10-15 11:06:51', NULL, NULL),
(39, 85, 'B', '', 'Annual', '100000.00', 1, '2017-10-18 16:29:36', NULL, NULL),
(40, 85, 'B', '', '', NULL, 1, '2017-10-18 16:29:36', NULL, NULL),
(41, 86, 'B', '', '', NULL, 1, '2017-10-21 00:19:38', NULL, NULL),
(57, 4, 'B', '', '', NULL, 1, '2017-10-31 14:22:08', NULL, NULL),
(58, 3, 'B', '', '', NULL, 1, '2017-10-31 14:24:35', NULL, NULL),
(59, 5, 'B', '', '', NULL, 1, '2017-10-31 14:26:06', NULL, NULL),
(60, 141, 'B', '', '', NULL, 1, '2017-11-01 05:49:54', NULL, NULL),
(61, 143, 'B', '', '', NULL, 1, '2017-11-01 05:52:04', NULL, NULL),
(62, 145, 'B', '', '', NULL, 1, '2017-11-01 10:43:11', NULL, NULL),
(70, 147, 'B', '', '', NULL, 1, '2017-11-01 11:17:25', NULL, NULL),
(81, 152, 'B', '', '', NULL, 1, '2017-11-01 12:08:03', NULL, NULL),
(82, 155, 'B', '', '', NULL, 1, '2017-11-06 15:58:15', NULL, NULL),
(0, 2, 'B', 'abc', 'Weekly', '5.00', 1, '2017-11-09 10:50:29', NULL, NULL),
(0, 2, 'B', 'agcd', 'Monthly', '463.63', 1, '2017-11-09 10:50:29', NULL, NULL),
(0, 7, 'B', '', '', NULL, 1, '2017-11-11 06:18:22', NULL, NULL),
(0, 1, 'B', 'bussiness', 'Monthly', '1000.00', 1, '2017-11-13 16:44:00', NULL, 'loan officer'),
(0, 16, 'B', '', '', NULL, 1, '2017-11-14 14:34:44', NULL, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `incomes_history`
--

CREATE TABLE IF NOT EXISTS `incomes_history` (
  `id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT NULL,
  `borrowerId` varchar(10) DEFAULT NULL,
  `incomeSource` varchar(55) DEFAULT NULL,
  `frequency` varchar(55) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  `createdAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incomes_history`
--

INSERT INTO `incomes_history` (`id`, `loanId`, `borrowerId`, `incomeSource`, `frequency`, `amount`, `isActive`, `createdAt`, `updateAt`, `lastUpdatedBy`) VALUES
(0, 1, 'B', 'bussiness', 'Monthly', '1000.00', 1, '2017-11-13 16:44:00', NULL, 'loan officer'),
(0, 16, 'B', '', '', NULL, 1, '2017-11-14 14:34:44', NULL, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `loanofficer_master`
--

CREATE TABLE IF NOT EXISTS `loanofficer_master` (
`id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipcode` int(10) NOT NULL,
  `lender` varchar(250) NOT NULL,
  `password` varchar(50) NOT NULL,
  `knowus` varchar(100) NOT NULL,
  `planid` int(11) NOT NULL DEFAULT '0',
  `stripeid` varchar(100) NOT NULL DEFAULT '-',
  `startdate` date NOT NULL DEFAULT '0000-00-00',
  `enddate` date NOT NULL DEFAULT '0000-00-00',
  `status` varchar(10) NOT NULL DEFAULT '-'
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loanofficer_master`
--

INSERT INTO `loanofficer_master` (`id`, `name`, `email`, `photo`, `phone`, `address`, `state`, `zipcode`, `lender`, `password`, `knowus`, `planid`, `stripeid`, `startdate`, `enddate`, `status`) VALUES
(1, 'vishal patel', 'vishal@gmail.com', 'images/photo/CB-4566.png', 7574865414, 'Rajkot', 'GUJRAT', 360002, '', '123', '', 1, 'cus_BkS7r6UpAi2y4F', '2017-11-11', '2017-12-11', ''),
(17, 'Naimish PAtel', 'naimish@gmail.com', '', 7674865414, 'Rajkot', 'GUJRAT', 360002, '', '123', 'From a friend', 0, '-', '0000-00-00', '0000-00-00', ''),
(18, 'Vimal PAtel', 'vimal@gmail.com', '', 7574865414, '', '', 0, '', '123', 'On the internet', 0, '-', '0000-00-00', '0000-00-00', ''),
(19, 'Ajay Patel', 'ajay@gmail.com', '', 8899665522, '', '', 0, '', '123', 'From a colleague', 0, '-', '0000-00-00', '0000-00-00', ''),
(20, 'Vinay Harsora', 'vinay@gmail.com', '', 7598658565, '', '', 0, '', '123', 'From a friend', 0, '-', '0000-00-00', '0000-00-00', ''),
(21, 'vikas patel', 'vikas@gmail.com', '', 8569564758, '', '', 0, '', '123', 'From a friend', 0, '-', '0000-00-00', '0000-00-00', ''),
(22, 'sailesh patel', 'sailesh@gmail.com', '', 9865254552, '', '', 0, '', '123', 'Flyer', 0, '-', '0000-00-00', '0000-00-00', ''),
(23, 'Bharat Patel', 'bharat@gmail.com', '', 9988774455, '', '', 0, '', '123', 'On the internet', 1, 'cus_BkS7r6UpAi2y4F', '2017-11-11', '2017-12-11', 'Active'),
(24, 'Suresh patel', 'suresh@gmail.com', '', 9896585654, '', '', 0, '', '123', 'From a friend', 1, 'cus_BkSBAEhyeLHmSv', '2017-11-11', '2017-12-11', 'Active'),
(25, 'Ranjit Patel', 'ranjit@gmail.com', '', 8956265445, '', '', 0, '', '123', 'Email', 1, 'cus_BkSDAtv0GKTszK', '2017-11-11', '2017-12-11', 'Active'),
(26, 'Suresh patel', 'suresh@gmail.com', '', 9896585654, '', '', 0, '', '1234', 'From a friend', 1, 'cus_BkY1YHqFhTrf6Y', '2017-11-11', '2017-10-11', 'Active'),
(27, 'Manish patel', 'manish@gmail.com', '', 9865256525, '', '', 0, '', '123', 'SMS', 1, 'cus_BkkECq4QtJSkHg', '2017-11-11', '2017-12-11', 'Active'),
(35, 'vishal patel', 'vishal.rkcet@gmail.com', '', 7574865414, '', '', 0, '', '123', 'On the internet', 1, 'cus_BlANKT1yuQtXa3', '2017-11-11', '2017-12-11', 'Active'),
(36, 'Vishal Akbari', 'vishal.rkcet@gmail.com', '', 9898656525, '', '', 0, '', '123', 'From a friend', 1, 'cus_BlAOEIoqa9DVRS', '2017-11-11', '2017-12-11', 'Active'),
(37, 'Sanjay Patel', 'vishalpatel16@gmail.com', '', 9865256525, '', '', 0, '', '123', 'From a friend', 1, 'cus_BlAYdIThZCAjB6', '2017-11-11', '2017-12-11', 'Active'),
(38, 'Manish Bhatt', 'vishal.rkcet@gmail.com', '', 7856985654, '', '', 0, '', '123', 'On the internet', 1, 'cus_BlAfnPnwMpdJJH', '2017-11-11', '2017-12-11', 'Active'),
(39, 'Ram Patel', 'rampatel@gmail.com', '', 9875456525, '', '', 0, '', '123456', 'Email', 1, 'cus_BlApBqzq8ujoqq', '2017-11-11', '2017-12-11', 'Active'),
(40, 'Vijay Patel', 'vishal.rkcet@gmail.com', '', 7894561452, '', '', 0, '', '123', 'From a friend', 1, 'cus_BlAyLwogTeDVFe', '2017-11-11', '2017-12-11', 'Active'),
(41, 'Sanu Shaikh', 'sanu@gmail.com', '', 9874569856, '', '', 0, '', '123', 'On the internet', 1, 'cus_BlCHa45nGvDmT7', '2017-11-11', '2017-12-11', 'Active'),
(42, 'Sanu Patel', 'sanupatel@gmail.com', '', 7698903070, '', '', 0, '', '123', 'From a colleague', 1, 'cus_BlCJwj7b6broBL', '2017-11-11', '2017-12-11', 'Active'),
(43, 'ankur patel', 'ankur@gmail.com', '', 9865256525, '', '', 0, '', '123', 'On the internet', 1, 'cus_BlS1LqGEKf9I9j', '2017-11-11', '2017-12-11', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE IF NOT EXISTS `loans` (
`id` int(11) NOT NULL,
  `qualifyingCreditScore` int(11) DEFAULT NULL,
  `preApprovalCode` varchar(55) DEFAULT NULL,
  `stateId` int(11) DEFAULT NULL,
  `totalIncome` decimal(15,2) DEFAULT NULL,
  `totalDebts` decimal(15,2) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `qualifyingCreditScore`, `preApprovalCode`, `stateId`, `totalIncome`, `totalDebts`, `createAt`, `updateAt`, `lastUpdatedBy`) VALUES
(1, 0, NULL, NULL, '0.00', '0.00', '2017-11-09 10:48:37', '2017-11-13 16:43:59', 'loan officer'),
(2, 0, NULL, NULL, '0.00', '0.00', '2017-11-09 10:48:48', '2017-11-09 10:50:28', NULL),
(3, NULL, NULL, NULL, NULL, NULL, '2017-11-11 06:01:06', NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, '2017-11-11 06:03:03', NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, '2017-11-11 06:13:29', NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, '2017-11-11 06:13:29', NULL, NULL),
(7, 0, NULL, NULL, '0.00', '0.00', '2017-11-11 06:18:14', '2017-11-11 06:18:22', NULL),
(8, NULL, NULL, NULL, NULL, NULL, '2017-11-11 07:47:17', NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, '2017-11-11 12:44:31', NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, '2017-11-11 12:44:51', NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, '2017-11-11 12:44:54', NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, '2017-11-11 12:44:58', NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, '2017-11-11 12:45:00', NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, '2017-11-11 12:45:00', NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, '2017-11-11 12:45:00', NULL, NULL),
(16, 0, NULL, NULL, '0.00', '0.00', '2017-11-11 12:45:31', '2017-11-14 14:34:44', 'customer'),
(17, NULL, NULL, NULL, NULL, NULL, '2017-11-11 12:45:49', NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, '2017-11-11 12:45:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loansbackup`
--

CREATE TABLE IF NOT EXISTS `loansbackup` (
  `id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT NULL,
  `qualifyingCreditScore` int(11) DEFAULT NULL,
  `preApprovalCode` varchar(55) DEFAULT NULL,
  `stateId` int(11) DEFAULT NULL,
  `totalIncome` decimal(15,2) DEFAULT NULL,
  `totalDebts` decimal(15,2) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loansbackup`
--

INSERT INTO `loansbackup` (`id`, `loanId`, `qualifyingCreditScore`, `preApprovalCode`, `stateId`, `totalIncome`, `totalDebts`, `createAt`, `updateAt`, `lastUpdatedBy`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-09 10:48:43', '2017-11-09 10:48:43', NULL),
(0, 1, 0, NULL, NULL, '0.00', '0.00', '2017-11-09 10:48:44', '2017-11-09 10:48:44', NULL),
(0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-09 10:48:53', '2017-11-09 10:48:53', NULL),
(0, 2, 0, NULL, NULL, '0.00', '0.00', '2017-11-09 10:48:53', '2017-11-09 10:48:53', NULL),
(0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-09 10:49:50', '2017-11-09 10:49:50', NULL),
(0, 1, 0, NULL, NULL, '0.00', '0.00', '2017-11-09 10:49:52', '2017-11-09 10:49:52', NULL),
(0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-09 10:50:27', '2017-11-09 10:50:27', NULL),
(0, 2, 0, NULL, NULL, '0.00', '0.00', '2017-11-09 10:50:28', '2017-11-09 10:50:28', NULL),
(0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-11 06:18:22', '2017-11-11 06:18:22', NULL),
(0, 7, 0, NULL, NULL, '0.00', '0.00', '2017-11-11 06:18:22', '2017-11-11 06:18:22', NULL),
(0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-13 16:42:05', '2017-11-13 16:42:05', NULL),
(0, 1, 0, NULL, NULL, '0.00', '0.00', '2017-11-13 16:42:06', '2017-11-13 16:42:06', 'customer'),
(0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-13 16:43:57', '2017-11-13 16:43:57', NULL),
(0, 1, 0, NULL, NULL, '0.00', '0.00', '2017-11-13 16:43:59', '2017-11-13 16:43:59', 'loan officer'),
(0, NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-14 14:34:41', '2017-11-14 14:34:41', NULL),
(0, 16, 0, NULL, NULL, '0.00', '0.00', '2017-11-14 14:34:44', '2017-11-14 14:34:44', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `loan_options`
--

CREATE TABLE IF NOT EXISTS `loan_options` (
`id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT '0',
  `optionNo` int(11) DEFAULT '0',
  `salesPrice` decimal(15,2) DEFAULT '0.00',
  `loanMode` int(11) DEFAULT '0',
  `loanType` int(11) DEFAULT '0',
  `downPayment` decimal(15,2) DEFAULT '0.00',
  `miType` int(11) DEFAULT '0',
  `firstMortgageRate` decimal(15,2) DEFAULT '0.00',
  `firstMortgagePoints` decimal(15,3) DEFAULT '0.000',
  `firstMortgageTerm` int(11) DEFAULT '0',
  `firstMortgageLoanAmount` decimal(15,2) DEFAULT '0.00',
  `firstMortgageLoanBaseAmount` decimal(15,2) DEFAULT '0.00',
  `firstMortgagePiti` decimal(15,2) DEFAULT '0.00',
  `firstMortgagePAndI` decimal(15,2) DEFAULT '0.00',
  `tax` decimal(15,2) DEFAULT '0.00',
  `ins` decimal(15,2) DEFAULT '0.00',
  `hoa` decimal(15,2) DEFAULT '0.00',
  `mi` decimal(15,2) DEFAULT '0.00',
  `other` decimal(15,2) DEFAULT '0.00',
  `front` decimal(15,2) DEFAULT '0.00',
  `back` decimal(15,2) DEFAULT '0.00',
  `dti` decimal(15,2) DEFAULT '0.00',
  `ltv` decimal(15,2) DEFAULT '0.00',
  `cltv` decimal(15,2) DEFAULT '0.00',
  `secondMortgageRate` decimal(15,2) DEFAULT '0.00',
  `secondMortgagePoints` decimal(15,3) DEFAULT '0.000',
  `secondMortgageTerm` int(11) DEFAULT '0',
  `secondMortgageLoanAmount` decimal(15,2) DEFAULT '0.00',
  `secondMortgageLoanBaseAmount` decimal(15,2) DEFAULT '0.00',
  `secondMortgagePiti` decimal(15,2) DEFAULT '0.00',
  `secondMortgagePAndI` decimal(15,2) DEFAULT '0.00',
  `firstAndSecondPiti` decimal(15,2) DEFAULT '0.00',
  `monthsOfTax` int(11) DEFAULT '0',
  `monthsOfTaxAmount` decimal(15,2) DEFAULT '0.00',
  `monthsOfInsurance` int(11) DEFAULT '0',
  `monthsOfInsuranceAmount` decimal(15,2) DEFAULT '0.00',
  `daysOfInterest` int(11) DEFAULT '0',
  `daysOfInterestAmount` decimal(15,2) DEFAULT '0.00',
  `totalPrePaids` decimal(15,2) DEFAULT '0.00',
  `credit1Name` varchar(250) DEFAULT '0',
  `credit1Amount` decimal(15,2) DEFAULT '0.00',
  `credit2Name` varchar(250) DEFAULT '0',
  `credit2Amount` decimal(15,2) DEFAULT '0.00',
  `credit3Name` varchar(250) DEFAULT '0',
  `credit3Amount` decimal(15,2) DEFAULT '0.00',
  `credit4Name` varchar(250) DEFAULT '0',
  `credit4Amount` decimal(15,2) DEFAULT '0.00',
  `totalCredits` int(11) DEFAULT '0',
  `totalClosingCosts` decimal(15,2) DEFAULT '0.00',
  `cashToClose` decimal(15,2) DEFAULT '0.00',
  `apr` decimal(15,2) DEFAULT '0.00',
  `taxVerified` tinyint(1) NOT NULL DEFAULT '0',
  `insVerified` tinyint(1) NOT NULL DEFAULT '0',
  `hoaVerified` tinyint(1) NOT NULL DEFAULT '0',
  `miVerified` tinyint(1) NOT NULL DEFAULT '0',
  `expiry` varchar(100) DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_options`
--

INSERT INTO `loan_options` (`id`, `loanId`, `optionNo`, `salesPrice`, `loanMode`, `loanType`, `downPayment`, `miType`, `firstMortgageRate`, `firstMortgagePoints`, `firstMortgageTerm`, `firstMortgageLoanAmount`, `firstMortgageLoanBaseAmount`, `firstMortgagePiti`, `firstMortgagePAndI`, `tax`, `ins`, `hoa`, `mi`, `other`, `front`, `back`, `dti`, `ltv`, `cltv`, `secondMortgageRate`, `secondMortgagePoints`, `secondMortgageTerm`, `secondMortgageLoanAmount`, `secondMortgageLoanBaseAmount`, `secondMortgagePiti`, `secondMortgagePAndI`, `firstAndSecondPiti`, `monthsOfTax`, `monthsOfTaxAmount`, `monthsOfInsurance`, `monthsOfInsuranceAmount`, `daysOfInterest`, `daysOfInterestAmount`, `totalPrePaids`, `credit1Name`, `credit1Amount`, `credit2Name`, `credit2Amount`, `credit3Name`, `credit3Amount`, `credit4Name`, `credit4Amount`, `totalCredits`, `totalClosingCosts`, `cashToClose`, `apr`, `taxVerified`, `insVerified`, `hoaVerified`, `miVerified`, `expiry`, `lastUpdatedBy`) VALUES
(4, 2, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(5, 7, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(7, 1, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(8, 16, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `loan_options_history`
--

CREATE TABLE IF NOT EXISTS `loan_options_history` (
`id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT '0',
  `optionNo` int(11) DEFAULT '0',
  `salesPrice` decimal(15,2) DEFAULT '0.00',
  `loanMode` int(11) DEFAULT '0',
  `loanType` int(11) DEFAULT '0',
  `downPayment` decimal(15,2) DEFAULT '0.00',
  `miType` int(11) DEFAULT '0',
  `firstMortgageRate` decimal(15,2) DEFAULT '0.00',
  `firstMortgagePoints` decimal(15,3) DEFAULT '0.000',
  `firstMortgageTerm` int(11) DEFAULT '0',
  `firstMortgageLoanAmount` decimal(15,2) DEFAULT '0.00',
  `firstMortgageLoanBaseAmount` decimal(15,2) DEFAULT '0.00',
  `firstMortgagePiti` decimal(15,2) DEFAULT '0.00',
  `firstMortgagePAndI` decimal(15,2) DEFAULT '0.00',
  `tax` decimal(15,2) DEFAULT '0.00',
  `ins` decimal(15,2) DEFAULT '0.00',
  `hoa` decimal(15,2) DEFAULT '0.00',
  `mi` decimal(15,2) DEFAULT '0.00',
  `other` decimal(15,2) DEFAULT '0.00',
  `front` decimal(15,2) DEFAULT '0.00',
  `back` decimal(15,2) DEFAULT '0.00',
  `dti` decimal(15,2) DEFAULT '0.00',
  `ltv` decimal(15,2) DEFAULT '0.00',
  `cltv` decimal(15,2) DEFAULT '0.00',
  `secondMortgageRate` decimal(15,2) DEFAULT '0.00',
  `secondMortgagePoints` decimal(15,3) DEFAULT '0.000',
  `secondMortgageTerm` int(11) DEFAULT '0',
  `secondMortgageLoanAmount` decimal(15,2) DEFAULT '0.00',
  `secondMortgageLoanBaseAmount` decimal(15,2) DEFAULT '0.00',
  `secondMortgagePiti` decimal(15,2) DEFAULT '0.00',
  `secondMortgagePAndI` decimal(15,2) DEFAULT '0.00',
  `firstAndSecondPiti` decimal(15,2) DEFAULT '0.00',
  `monthsOfTax` int(11) DEFAULT '0',
  `monthsOfTaxAmount` decimal(15,2) DEFAULT '0.00',
  `monthsOfInsurance` int(11) DEFAULT '0',
  `monthsOfInsuranceAmount` decimal(15,2) DEFAULT '0.00',
  `daysOfInterest` int(11) DEFAULT '0',
  `daysOfInterestAmount` decimal(15,2) DEFAULT '0.00',
  `totalPrePaids` decimal(15,2) DEFAULT '0.00',
  `credit1Name` varchar(250) DEFAULT '0',
  `credit1Amount` decimal(15,2) DEFAULT '0.00',
  `credit2Name` varchar(250) DEFAULT '0',
  `credit2Amount` decimal(15,2) DEFAULT '0.00',
  `credit3Name` varchar(250) DEFAULT '0',
  `credit3Amount` decimal(15,2) DEFAULT '0.00',
  `credit4Name` varchar(250) DEFAULT '0',
  `credit4Amount` decimal(15,2) DEFAULT '0.00',
  `totalCredits` int(11) DEFAULT '0',
  `totalClosingCosts` decimal(15,2) DEFAULT '0.00',
  `cashToClose` decimal(15,2) DEFAULT '0.00',
  `apr` decimal(15,2) DEFAULT '0.00',
  `taxVerified` tinyint(1) NOT NULL DEFAULT '0',
  `insVerified` tinyint(1) NOT NULL DEFAULT '0',
  `hoaVerified` tinyint(1) NOT NULL DEFAULT '0',
  `miVerified` tinyint(1) NOT NULL DEFAULT '0',
  `expiry` varchar(100) DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_options_history`
--

INSERT INTO `loan_options_history` (`id`, `loanId`, `optionNo`, `salesPrice`, `loanMode`, `loanType`, `downPayment`, `miType`, `firstMortgageRate`, `firstMortgagePoints`, `firstMortgageTerm`, `firstMortgageLoanAmount`, `firstMortgageLoanBaseAmount`, `firstMortgagePiti`, `firstMortgagePAndI`, `tax`, `ins`, `hoa`, `mi`, `other`, `front`, `back`, `dti`, `ltv`, `cltv`, `secondMortgageRate`, `secondMortgagePoints`, `secondMortgageTerm`, `secondMortgageLoanAmount`, `secondMortgageLoanBaseAmount`, `secondMortgagePiti`, `secondMortgagePAndI`, `firstAndSecondPiti`, `monthsOfTax`, `monthsOfTaxAmount`, `monthsOfInsurance`, `monthsOfInsuranceAmount`, `daysOfInterest`, `daysOfInterestAmount`, `totalPrePaids`, `credit1Name`, `credit1Amount`, `credit2Name`, `credit2Amount`, `credit3Name`, `credit3Amount`, `credit4Name`, `credit4Amount`, `totalCredits`, `totalClosingCosts`, `cashToClose`, `apr`, `taxVerified`, `insVerified`, `hoaVerified`, `miVerified`, `expiry`, `lastUpdatedBy`) VALUES
(1, 1, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(2, 2, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(3, 1, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(4, 2, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(5, 7, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(6, 1, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, 'customer'),
(7, 1, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(8, 16, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', '1402.48', '0.00', 0, 0, 0, 0, NULL, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

CREATE TABLE IF NOT EXISTS `login_master` (
`id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(25) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_master`
--

INSERT INTO `login_master` (`id`, `user_id`, `email`, `password`, `user_type`, `status`) VALUES
(1, 0, 'admin@gmail.com', 'admin', 'Admin', 1),
(25, 1, 'vishal@gmail.com', '123', 'Loanofficer', 1),
(27, 1, 'arzoo@gmail.com', '123', 'Customer', 1),
(43, 17, 'naimish@gmail.com', '123', 'Loanofficer', 0),
(44, 18, 'vimal@gmail.com', '123', 'Loanofficer', 0),
(45, 19, 'ajay@gmail.com', '123', 'Loanofficer', 0),
(46, 20, 'vinay@gmail.com', '123', 'Loanofficer', 0),
(47, 2, 'hitesh@gmail.com', '123', 'Customer', 1),
(48, 21, 'vikas@gmail.com', '123', 'Loanofficer', 0),
(49, 22, 'sailesh@gmail.com', '123', 'Loanofficer', 1),
(50, 24, 'suresh@gmail.com', '123', 'Loanofficer', 1),
(51, 25, 'ranjit@gmail.com', '123', 'Loanofficer', 1),
(52, 27, 'manish@gmail.com', '123', 'Loanofficer', 0),
(60, 35, 'vishal.rkcet@gmail.com', '123', 'Loanofficer', 0),
(61, 36, 'vishal.rkcet@gmail.com', '123', 'Loanofficer', 0),
(62, 37, 'vishalpatel16@gmail.com', '123', 'Loanofficer', 0),
(63, 38, 'vishal.rkcet@gmail.com', '123', 'Loanofficer', 0),
(64, 39, 'rampatel@gmail.com', '123456', 'Loanofficer', 0),
(65, 40, 'vishal.rkcet@gmail.com', '123', 'Loanofficer', 0),
(66, 41, 'sanu@gmail.com', '123', 'Loanofficer', 0),
(67, 42, 'sanupatel@gmail.com', '123', 'Loanofficer', 0),
(68, 43, 'ankur@gmail.com', '123', 'Loanofficer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mypartner_master`
--

CREATE TABLE IF NOT EXISTS `mypartner_master` (
  `partner_id` int(10) NOT NULL,
  `loanofficer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mypartner_master`
--

INSERT INTO `mypartner_master` (`partner_id`, `loanofficer_id`) VALUES
(4, 1),
(1, 1),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE IF NOT EXISTS `plan` (
`id` int(11) NOT NULL,
  `planname` varchar(100) NOT NULL,
  `planamount` bigint(10) NOT NULL,
  `planstartdate` date NOT NULL,
  `planenddate` date NOT NULL,
  `signupamount` bigint(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `planname`, `planamount`, `planstartdate`, `planenddate`, `signupamount`) VALUES
(1, 'Monthly', 1200, '2017-11-11', '0000-00-00', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `prepaids`
--

CREATE TABLE IF NOT EXISTS `prepaids` (
`id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `monthsOfTax` int(11) DEFAULT NULL,
  `monthsOfInsurance` int(11) DEFAULT NULL,
  `daysOfInterest` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prepaids`
--

INSERT INTO `prepaids` (`id`, `userId`, `monthsOfTax`, `monthsOfInsurance`, `daysOfInterest`) VALUES
(1, 101, 2, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rl_loan_option_closing_cost`
--

CREATE TABLE IF NOT EXISTS `rl_loan_option_closing_cost` (
  `id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT '0',
  `loanOptionId` int(11) DEFAULT '0',
  `rowNo` int(11) DEFAULT '0',
  `name` varchar(250) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `mode` int(11) DEFAULT '0',
  `value` decimal(15,3) DEFAULT '0.000',
  `percentage` decimal(15,3) DEFAULT '0.000',
  `isApr` tinyint(1) NOT NULL DEFAULT '0',
  `isVisible` tinyint(1) NOT NULL DEFAULT '1',
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rl_loan_option_closing_cost`
--

INSERT INTO `rl_loan_option_closing_cost` (`id`, `loanId`, `loanOptionId`, `rowNo`, `name`, `type`, `mode`, `value`, `percentage`, `isApr`, `isVisible`, `lastUpdatedBy`) VALUES
(0, 2, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 2, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 2, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 2, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 2, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 2, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 7, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 7, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 7, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 7, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 7, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 'loan officer'),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 'loan officer'),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 'loan officer'),
(0, 1, 1, 6, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 7, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 8, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 9, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 10, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 11, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 12, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 13, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 14, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 15, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 16, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, 'customer'),
(0, 16, 1, 2, 'Origination Fee', 1, 1, '0.000', NULL, 0, 1, 'customer'),
(0, 16, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', NULL, 0, 0, 'customer'),
(0, 16, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', NULL, 0, 0, 'customer'),
(0, 16, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', NULL, 0, 0, 'customer'),
(0, 16, 1, 6, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 7, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 8, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 9, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 10, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 11, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 12, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 13, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 14, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 15, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `rl_loan_option_closing_cost_history`
--

CREATE TABLE IF NOT EXISTS `rl_loan_option_closing_cost_history` (
  `id` int(11) NOT NULL,
  `loanId` int(11) DEFAULT '0',
  `loanOptionId` int(11) DEFAULT '0',
  `rowNo` int(11) DEFAULT '0',
  `name` varchar(250) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `mode` int(11) DEFAULT '0',
  `value` decimal(15,3) DEFAULT '0.000',
  `percentage` decimal(15,3) DEFAULT '0.000',
  `isApr` tinyint(1) NOT NULL DEFAULT '0',
  `isVisible` tinyint(1) NOT NULL DEFAULT '1',
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rl_loan_option_closing_cost_history`
--

INSERT INTO `rl_loan_option_closing_cost_history` (`id`, `loanId`, `loanOptionId`, `rowNo`, `name`, `type`, `mode`, `value`, `percentage`, `isApr`, `isVisible`, `lastUpdatedBy`) VALUES
(0, 152, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 152, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 152, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 152, 1, 6, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 7, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 8, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 9, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 10, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 11, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 12, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 13, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 14, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 15, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 152, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 152, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 152, 1, 6, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 7, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 8, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 9, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 10, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 11, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 12, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 13, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 14, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 15, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 152, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 152, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 152, 1, 6, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 7, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 8, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 9, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 10, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 11, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 12, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 13, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 14, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 15, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 152, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 152, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 152, 1, 6, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 7, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 8, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 9, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 10, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 11, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 12, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 13, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 14, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 152, 1, 15, '', 1, 2, '0.000', '0.000', 0, 1, NULL),
(0, 155, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 155, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 155, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 155, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 155, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 155, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 155, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 155, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 155, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 155, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 155, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 155, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 155, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 155, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 155, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 2, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 2, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 2, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 2, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 2, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 2, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 2, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 2, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 2, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 2, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 2, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 2, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 2, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 2, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 2, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 2, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 2, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 2, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 2, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 2, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 2, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, NULL),
(0, 7, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, NULL),
(0, 7, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, NULL),
(0, 7, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, NULL),
(0, 7, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, NULL),
(0, 7, 1, 6, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 7, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 8, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 9, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 10, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 11, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 12, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 13, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 14, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 7, 1, 15, '', 1, 2, NULL, NULL, 0, 1, NULL),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 'customer'),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 'customer'),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 'customer'),
(0, 1, 1, 6, '', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 7, '', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 8, '', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 9, '', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 10, '', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 11, '', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 12, '', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 13, '', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 14, '', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 15, '', 1, 2, '0.000', '0.000', 0, 1, 'customer'),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 'loan officer'),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 'loan officer'),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 'loan officer'),
(0, 1, 1, 6, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 7, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 8, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 9, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 10, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 11, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 12, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 13, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 14, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 1, 1, 15, '', 1, 2, '0.000', '0.000', 0, 1, 'loan officer'),
(0, 16, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 1, 'customer'),
(0, 16, 1, 2, 'Origination Fee', 1, 1, '0.000', NULL, 0, 1, 'customer'),
(0, 16, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', NULL, 0, 0, 'customer'),
(0, 16, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', NULL, 0, 0, 'customer'),
(0, 16, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', NULL, 0, 0, 'customer'),
(0, 16, 1, 6, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 7, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 8, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 9, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 10, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 11, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 12, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 13, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 14, '', 1, 2, NULL, NULL, 0, 1, 'customer'),
(0, 16, 1, 15, 'Title Insurance', 1, 2, '0.000', NULL, 0, 1, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `monthsOfTax` int(11) DEFAULT NULL,
  `monthsOfInsurance` int(11) DEFAULT NULL,
  `daysOfInterest` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
`id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
`id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state_table`
--

CREATE TABLE IF NOT EXISTS `state_table` (
`id` int(10) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_table`
--

INSERT INTO `state_table` (`id`, `state_name`) VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'District of Columbia'),
(10, 'Florida'),
(11, 'Georgia'),
(12, 'Hawaii'),
(13, 'Idaho'),
(14, 'Illinois'),
(15, 'Indiana'),
(16, 'Iowa'),
(17, 'Kansas'),
(18, 'Kentucky'),
(19, 'Louisiana'),
(20, 'Maine'),
(21, 'Maryland'),
(22, 'Massachusetts'),
(23, 'Michigan'),
(24, 'Minnesota'),
(25, 'Mississippi'),
(26, 'Missouri'),
(27, 'Montana'),
(28, 'Nebraska'),
(29, 'Nevada'),
(30, 'New Hampshire'),
(31, 'New Jersey'),
(32, 'New Mexico'),
(33, 'New York'),
(34, 'North Carolina'),
(35, 'North Dakota'),
(36, 'Ohio'),
(37, 'Oklahoma'),
(38, 'Oregon'),
(39, 'Pennsylvania'),
(40, 'Rhode Island'),
(41, 'South Carolina'),
(42, 'South Dakota'),
(43, 'Tennessee'),
(44, 'Texas'),
(45, 'Utah'),
(46, 'Vermont'),
(47, 'Virginia'),
(48, 'Washington'),
(49, 'West Virginia'),
(50, 'Wisconsin'),
(51, 'Wyoming');

-- --------------------------------------------------------

--
-- Table structure for table `title_insurance_basic_premium_rates`
--

CREATE TABLE IF NOT EXISTS `title_insurance_basic_premium_rates` (
`id` int(11) NOT NULL,
  `policiesUpToAndIncluding` decimal(15,2) DEFAULT NULL,
  `basicPremium` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_insurance_basic_premium_rates`
--

INSERT INTO `title_insurance_basic_premium_rates` (`id`, `policiesUpToAndIncluding`, `basicPremium`) VALUES
(1, '10000.00', '238.00'),
(2, '10500.00', '242.00'),
(3, '11000.00', '244.00'),
(4, '11500.00', '248.00'),
(5, '12000.00', '252.00'),
(6, '12500.00', '255.00'),
(7, '13000.00', '260.00'),
(8, '13500.00', '264.00'),
(9, '14000.00', '267.00'),
(10, '14500.00', '270.00'),
(11, '15000.00', '272.00'),
(12, '15500.00', '276.00'),
(13, '16000.00', '280.00'),
(14, '16500.00', '284.00'),
(15, '17000.00', '288.00'),
(16, '17500.00', '292.00'),
(17, '18000.00', '296.00'),
(18, '18500.00', '298.00'),
(19, '19000.00', '301.00'),
(20, '19500.00', '304.00'),
(21, '20000.00', '309.00'),
(22, '20500.00', '312.00'),
(23, '21000.00', '317.00'),
(24, '21500.00', '320.00'),
(25, '22000.00', '324.00'),
(26, '22500.00', '327.00'),
(27, '23000.00', '330.00'),
(28, '23500.00', '333.00'),
(29, '24000.00', '337.00'),
(30, '24500.00', '340.00'),
(31, '25000.00', '345.00'),
(32, '25500.00', '348.00'),
(33, '26000.00', '352.00'),
(34, '26500.00', '355.00'),
(35, '27000.00', '358.00'),
(36, '27500.00', '361.00'),
(37, '28000.00', '365.00'),
(38, '28500.00', '368.00'),
(39, '29000.00', '373.00'),
(40, '29500.00', '376.00'),
(41, '30000.00', '380.00'),
(42, '30500.00', '383.00'),
(43, '31000.00', '387.00'),
(44, '31500.00', '390.00'),
(45, '32000.00', '393.00'),
(46, '32500.00', '398.00'),
(47, '33000.00', '401.00'),
(48, '33500.00', '405.00'),
(49, '34000.00', '408.00'),
(50, '34500.00', '412.00'),
(51, '35000.00', '415.00'),
(52, '35500.00', '419.00'),
(53, '36000.00', '422.00'),
(54, '36500.00', '426.00'),
(55, '37000.00', '429.00'),
(56, '37500.00', '433.00'),
(57, '38000.00', '437.00'),
(58, '38500.00', '441.00'),
(59, '39000.00', '443.00'),
(60, '39500.00', '447.00'),
(61, '40000.00', '450.00'),
(62, '40500.00', '455.00'),
(63, '41000.00', '457.00'),
(64, '41500.00', '462.00'),
(65, '42000.00', '465.00'),
(66, '42500.00', '469.00'),
(67, '43000.00', '471.00'),
(68, '43500.00', '475.00'),
(69, '44000.00', '479.00'),
(70, '44500.00', '483.00'),
(71, '45000.00', '487.00'),
(72, '45500.00', '490.00'),
(73, '46000.00', '493.00'),
(74, '46500.00', '497.00'),
(75, '47000.00', '499.00'),
(76, '47500.00', '503.00'),
(77, '48000.00', '508.00'),
(78, '48500.00', '512.00'),
(79, '49000.00', '515.00'),
(80, '49500.00', '518.00'),
(81, '50000.00', '522.00'),
(82, '50500.00', '525.00'),
(83, '51000.00', '527.00'),
(84, '51500.00', '531.00'),
(85, '52000.00', '536.00'),
(86, '52500.00', '540.00'),
(87, '53000.00', '543.00'),
(88, '53500.00', '547.00'),
(89, '54000.00', '550.00'),
(90, '54500.00', '553.00'),
(91, '55000.00', '556.00'),
(92, '55500.00', '559.00'),
(93, '56000.00', '565.00'),
(94, '56500.00', '568.00'),
(95, '57000.00', '571.00'),
(96, '57500.00', '575.00'),
(97, '58000.00', '579.00'),
(98, '58500.00', '581.00'),
(99, '59000.00', '585.00'),
(100, '59500.00', '589.00'),
(101, '60000.00', '593.00'),
(102, '60500.00', '597.00'),
(103, '61000.00', '600.00'),
(104, '61500.00', '603.00'),
(105, '62000.00', '607.00'),
(106, '62500.00', '611.00'),
(107, '63000.00', '613.00'),
(108, '63500.00', '617.00'),
(109, '64000.00', '621.00'),
(110, '64500.00', '625.00'),
(111, '65000.00', '628.00'),
(112, '65500.00', '631.00'),
(113, '66000.00', '635.00'),
(114, '66500.00', '640.00'),
(115, '67000.00', '644.00'),
(116, '67500.00', '645.00'),
(117, '68000.00', '649.00'),
(118, '68500.00', '653.00'),
(119, '69000.00', '656.00'),
(120, '69500.00', '659.00'),
(121, '70000.00', '664.00'),
(122, '70500.00', '668.00'),
(123, '71000.00', '672.00'),
(124, '71500.00', '674.00'),
(125, '72000.00', '677.00'),
(126, '72500.00', '681.00'),
(127, '73000.00', '685.00'),
(128, '73500.00', '688.00'),
(129, '74000.00', '692.00'),
(130, '74500.00', '696.00'),
(131, '75000.00', '700.00'),
(132, '75500.00', '702.00'),
(133, '76000.00', '706.00'),
(134, '76500.00', '709.00'),
(135, '77000.00', '713.00'),
(136, '77500.00', '716.00'),
(137, '78000.00', '720.00'),
(138, '78500.00', '725.00'),
(139, '79000.00', '729.00'),
(140, '79500.00', '730.00'),
(141, '80000.00', '734.00'),
(142, '80500.00', '738.00'),
(143, '81000.00', '742.00'),
(144, '81500.00', '744.00'),
(145, '82000.00', '748.00'),
(146, '82500.00', '753.00'),
(147, '83000.00', '757.00'),
(148, '83500.00', '759.00'),
(149, '84000.00', '762.00'),
(150, '84500.00', '767.00'),
(151, '85000.00', '770.00'),
(152, '85500.00', '773.00'),
(153, '86000.00', '776.00'),
(154, '86500.00', '781.00'),
(155, '87000.00', '785.00'),
(156, '87500.00', '788.00'),
(157, '88000.00', '791.00'),
(158, '88500.00', '795.00'),
(159, '89000.00', '799.00'),
(160, '89500.00', '801.00'),
(161, '90000.00', '804.00'),
(162, '90500.00', '809.00'),
(163, '91000.00', '813.00'),
(164, '91500.00', '817.00'),
(165, '92000.00', '819.00'),
(166, '92500.00', '823.00'),
(167, '93000.00', '827.00'),
(168, '93500.00', '831.00'),
(169, '94000.00', '832.00'),
(170, '94500.00', '837.00'),
(171, '95000.00', '842.00'),
(172, '95500.00', '845.00'),
(173, '96000.00', '847.00'),
(174, '96500.00', '851.00'),
(175, '97000.00', '855.00'),
(176, '97500.00', '859.00'),
(177, '98000.00', '862.00'),
(178, '98500.00', '866.00'),
(179, '99000.00', '870.00'),
(180, '99500.00', '873.00'),
(181, '100000.00', '875.00');

-- --------------------------------------------------------

--
-- Table structure for table `title_insurance_range`
--

CREATE TABLE IF NOT EXISTS `title_insurance_range` (
`id` int(11) NOT NULL,
  `policyRangeFrom` decimal(15,2) DEFAULT NULL,
  `policyRangeTo` decimal(15,2) DEFAULT NULL,
  `subtract` decimal(15,2) DEFAULT NULL,
  `multiplyBy` decimal(15,5) DEFAULT NULL,
  `add` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_insurance_range`
--

INSERT INTO `title_insurance_range` (`id`, `policyRangeFrom`, `policyRangeTo`, `subtract`, `multiplyBy`, `add`) VALUES
(1, '100001.00', '1000000.00', '100000.00', '0.00554', '875.00'),
(2, '1000001.00', '5000000.00', '1000000.00', '0.00456', '5861.00'),
(3, '5000001.00', '15000000.00', '5000000.00', '0.00376', '24101.00'),
(4, '15000001.00', '25000000.00', '15000000.00', '0.00267', '61701.00'),
(5, '25000001.00', NULL, '25000000.00', '0.00160', '88401.00');

-- --------------------------------------------------------

--
-- Table structure for table `trusted_partner`
--

CREATE TABLE IF NOT EXISTS `trusted_partner` (
`id` int(10) NOT NULL,
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
  `display_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trusted_partner`
--

INSERT INTO `trusted_partner` (`id`, `photo`, `email`, `phone`, `business_name`, `contact_name`, `address`, `facebook_profile`, `linkedin_profile`, `business_hours`, `note`, `business_type`, `twitter_handle`, `user`, `forcedisplay`, `display_date`) VALUES
(1, 'images/photo/CB-8080.png', 'vishalpatel16@gmail.com', 7574865414, 'Ally trading', 'Vishal PAtel', 'Rajkot', 'www.facebook.com', 'www.linkedin.com', '9:00 Am To 8:00 PM', '', 1, 'www.twitter.com', 'Admin', 'Yes', '2017-10-07'),
(2, 'images/photo/CB-7979.png', 'rohit.bhalara123@gmail.com', 9909131543, 'Ally trading', 'Raj Kotadiya', 'bhole pan street', 'www.facebook.com', 'www.linkedin.com', '9:00 Am To 8:00 PM', '', 4, 'www.twitter.com', 'Admin', 'Yes', '2017-10-07'),
(3, 'images/photo/CB-7676.png', 'arzoo@gmail.com', 8866152292, 'Ally trading', 'Arzoo', 'Rajkot', 'www.facebook.com', 'www.linkedin.com', '9:00 Am To 8:00 PM', '', 3, 'www.twitter.com', 'Admin', 'Yes', '2017-09-26'),
(4, 'images/photo/CB-7578.png', 'vivek@gmail.com', 9909131543, 'Ally trading', 'Vivel Patel', 'Rajkot', 'www.facebook.com', 'www.linkedin.com', '9:00 Am To 8:00 PM', '', 4, 'www.twitter.com', 'Admin', 'No', '0000-00-00'),
(5, 'images/photo/CB-7475.png', 'hitesh@gmail.com', 9909131543, 'Ally trading', 'HItesh Patel', 'Rajkot', 'www.facebook.com', 'www.linkedin.com', 'Ally trading', '', 1, 'www.twitter.com', 'Vishal AKbari', 'No', '0000-00-00'),
(6, 'images/photo/CB-7874.png', 'Subhash@gmail.com', 9727257906, 'Ally trading', 'Subhsh Patel', 'Rajkot', 'www.facebook.com', 'www.linkedin.com', '9:00 Am To 8:00 PM', 'Nothing', 4, 'www.twitter.com', 'Vishal AKbari', 'Yes', '2017-09-18'),
(7, 'images/photo/CB-7777.png', 'hardik@gmail.com', 9988556622, 'Ally trading', 'Hardik Patel', 'Rajkot', 'www.facebook.com', 'www.linkedin.com', 'Ally trading', '', 3, 'www.twitter.com', 'Admin', 'Yes', '2017-09-18'),
(8, 'images/photo/CB-7373.png', 'manish@gmail.com', 9909131543, 'Ally trading', 'Manish Patel', 'Rajkot', 'www.facebook.com', 'www.linkedin.com', 'Ally trading', '', 4, 'www.twitter.com', 'Admin', 'Yes', '2017-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `url_master`
--

CREATE TABLE IF NOT EXISTS `url_master` (
`id` int(10) NOT NULL,
  `loanofficer_id` int(10) NOT NULL,
  `url` varchar(250) NOT NULL,
  `shorturl` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `url_master`
--

INSERT INTO `url_master` (`id`, `loanofficer_id`, `url`, `shorturl`) VALUES
(1, 1, 'http://localhost:8080/1', 'b0x2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bpmi`
--
ALTER TABLE `bpmi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bpmi_adjustments`
--
ALTER TABLE `bpmi_adjustments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesstype_master`
--
ALTER TABLE `businesstype_master`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_master`
--
ALTER TABLE `customer_master`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_master`
--
ALTER TABLE `email_master`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_setting`
--
ALTER TABLE `email_setting`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loanofficer_master`
--
ALTER TABLE `loanofficer_master`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_options`
--
ALTER TABLE `loan_options`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_options_history`
--
ALTER TABLE `loan_options_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_master`
--
ALTER TABLE `login_master`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prepaids`
--
ALTER TABLE `prepaids`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_table`
--
ALTER TABLE `state_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_insurance_basic_premium_rates`
--
ALTER TABLE `title_insurance_basic_premium_rates`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_insurance_range`
--
ALTER TABLE `title_insurance_range`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trusted_partner`
--
ALTER TABLE `trusted_partner`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url_master`
--
ALTER TABLE `url_master`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bpmi`
--
ALTER TABLE `bpmi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `bpmi_adjustments`
--
ALTER TABLE `bpmi_adjustments`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `businesstype_master`
--
ALTER TABLE `businesstype_master`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `email_master`
--
ALTER TABLE `email_master`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `email_setting`
--
ALTER TABLE `email_setting`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `loanofficer_master`
--
ALTER TABLE `loanofficer_master`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `loan_options`
--
ALTER TABLE `loan_options`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `loan_options_history`
--
ALTER TABLE `loan_options_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `login_master`
--
ALTER TABLE `login_master`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `prepaids`
--
ALTER TABLE `prepaids`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state_table`
--
ALTER TABLE `state_table`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `title_insurance_basic_premium_rates`
--
ALTER TABLE `title_insurance_basic_premium_rates`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `title_insurance_range`
--
ALTER TABLE `title_insurance_range`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `trusted_partner`
--
ALTER TABLE `trusted_partner`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `url_master`
--
ALTER TABLE `url_master`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
