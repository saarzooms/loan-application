-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2018 at 06:56 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loan`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
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
(1, 20, 'B', '', '', NULL, 0, 'B', 1, '2018-01-13 13:37:25', NULL, 'loan officer'),
(2, 27, 'B', '', '', NULL, 0, 'B', 1, '2018-01-20 07:19:30', NULL, 'loan officer'),
(3, 29, 'B', '', '', NULL, 0, 'B', 1, '2018-01-20 07:30:55', NULL, 'loan officer'),
(4, 36, 'B', '', '', NULL, 0, 'B', 1, '2018-01-21 12:26:17', NULL, 'loan officer'),
(5, 38, 'B', '', '', NULL, 0, 'B', 1, '2018-01-27 07:39:08', NULL, 'loan officer'),
(6, 39, 'B', '', '', NULL, 0, 'B', 1, '2018-01-27 09:03:29', NULL, 'loan officer'),
(7, 40, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 19:55:47', NULL, 'loan officer'),
(8, 42, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 19:56:11', NULL, 'loan officer'),
(9, 43, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:05:17', NULL, 'loan officer'),
(10, 44, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:05:28', NULL, 'loan officer'),
(11, 45, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:06:16', NULL, 'loan officer'),
(12, 46, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:10:46', NULL, 'loan officer'),
(13, 47, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:15:10', NULL, 'loan officer'),
(14, 51, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 21:12:04', NULL, 'loan officer'),
(15, 64, 'B', '', '', NULL, 0, 'B', 1, '2018-02-11 10:07:44', NULL, 'loan officer'),
(16, 65, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 09:05:33', NULL, 'loan officer'),
(17, 66, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 14:39:11', NULL, 'loan officer'),
(18, 69, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 16:01:33', NULL, 'loan officer'),
(19, 90, 'B', '', '', NULL, 720, 'B', 1, '2018-02-25 18:41:46', NULL, 'loan officer'),
(20, 93, 'B', '', '', NULL, 660, 'B', 1, '2018-02-26 20:27:12', NULL, 'loan officer');

-- --------------------------------------------------------

--
-- Table structure for table `borrowershistory`
--

CREATE TABLE `borrowershistory` (
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
(1, 16, 'B', 'Arzoo Shaikh', 'arzoo@gmail.com', 7574865414, 0, 'B', 1, '2017-11-14 14:34:44', NULL, 'customer'),
(1, 20, 'B', '', '', NULL, 0, 'B', 1, '2018-01-13 13:37:25', NULL, 'loan officer'),
(2, 27, 'B', '', '', NULL, 0, 'B', 1, '2018-01-20 07:19:30', NULL, 'loan officer'),
(3, 29, 'B', '', '', NULL, 0, 'B', 1, '2018-01-20 07:19:49', NULL, 'loan officer'),
(3, 29, 'B', '', '', NULL, 0, 'B', 1, '2018-01-20 07:20:13', NULL, 'loan officer'),
(3, 29, 'B', '', '', NULL, 0, 'B', 1, '2018-01-20 07:23:40', NULL, 'loan officer'),
(3, 29, 'B', '', '', NULL, 0, 'B', 1, '2018-01-20 07:28:44', NULL, 'loan officer'),
(3, 29, 'B', '', '', NULL, 0, 'B', 1, '2018-01-20 07:29:59', NULL, 'loan officer'),
(3, 29, 'B', '', '', NULL, 0, 'B', 1, '2018-01-20 07:30:11', NULL, 'loan officer'),
(3, 29, 'B', '', '', NULL, 0, 'B', 1, '2018-01-20 07:30:55', NULL, 'loan officer'),
(4, 36, 'B', '', '', NULL, 0, 'B', 1, '2018-01-21 12:26:17', NULL, 'loan officer'),
(5, 38, 'B', '', '', NULL, 0, 'B', 1, '2018-01-27 07:36:11', NULL, 'loan officer'),
(5, 38, 'B', '', '', NULL, 0, 'B', 1, '2018-01-27 07:36:35', NULL, 'loan officer'),
(5, 38, 'B', '', '', NULL, 0, 'B', 1, '2018-01-27 07:39:00', NULL, 'loan officer'),
(5, 38, 'B', '', '', NULL, 0, 'B', 1, '2018-01-27 07:39:08', NULL, 'loan officer'),
(6, 39, 'B', '', '', NULL, 0, 'B', 1, '2018-01-27 07:55:49', NULL, 'loan officer'),
(6, 39, 'B', '', '', NULL, 0, 'B', 1, '2018-01-27 09:03:29', NULL, 'loan officer'),
(7, 40, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 19:55:47', NULL, 'loan officer'),
(8, 42, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 19:56:11', NULL, 'loan officer'),
(9, 43, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:03:07', NULL, 'loan officer'),
(9, 43, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:05:17', NULL, 'loan officer'),
(10, 44, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:05:28', NULL, 'loan officer'),
(11, 45, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:06:16', NULL, 'loan officer'),
(12, 46, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:10:46', NULL, 'loan officer'),
(13, 47, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 20:15:10', NULL, 'loan officer'),
(14, 51, 'B', '', '', NULL, 0, 'B', 1, '2018-02-05 21:12:04', NULL, 'loan officer'),
(15, 64, 'B', '', '', NULL, 0, 'B', 1, '2018-02-11 10:07:44', NULL, 'loan officer'),
(16, 65, 'B', '', '', NULL, 0, 'B', 1, '2018-02-17 06:51:30', NULL, 'loan officer'),
(16, 65, 'B', '', '', NULL, 0, 'B', 1, '2018-02-17 07:06:36', NULL, 'loan officer'),
(16, 65, 'B', '', '', NULL, 0, 'B', 1, '2018-02-17 10:14:57', NULL, 'loan officer'),
(16, 65, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 09:05:33', NULL, 'loan officer'),
(17, 66, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 14:36:08', NULL, 'loan officer'),
(17, 66, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 14:36:19', NULL, 'loan officer'),
(17, 66, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 14:39:11', NULL, 'loan officer'),
(18, 69, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 15:37:33', NULL, 'loan officer'),
(18, 69, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 15:37:43', NULL, 'loan officer'),
(18, 69, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 15:37:59', NULL, 'loan officer'),
(18, 69, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 15:38:02', NULL, 'loan officer'),
(18, 69, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 15:38:02', NULL, 'loan officer'),
(18, 69, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 15:38:03', NULL, 'loan officer'),
(18, 69, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 15:38:03', NULL, 'loan officer'),
(18, 69, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 15:38:04', NULL, 'loan officer'),
(18, 69, 'B', '', '', NULL, 0, 'B', 1, '2018-02-18 16:01:33', NULL, 'loan officer'),
(19, 90, 'B', '', '', NULL, 0, 'B', 1, '2018-02-25 16:54:07', NULL, 'loan officer'),
(19, 90, 'B', '', '', NULL, 0, 'B', 1, '2018-02-25 16:54:20', NULL, 'loan officer'),
(19, 90, 'B', '', '', NULL, 0, 'B', 1, '2018-02-25 16:54:41', NULL, 'loan officer'),
(19, 90, 'B', '', '', NULL, 720, 'B', 1, '2018-02-25 16:56:20', NULL, 'loan officer'),
(19, 90, 'B', '', '', NULL, 720, 'B', 1, '2018-02-25 16:57:03', NULL, 'loan officer'),
(19, 90, 'B', '', '', NULL, 720, 'B', 1, '2018-02-25 17:15:30', NULL, 'loan officer'),
(19, 90, 'B', '', '', NULL, 720, 'B', 1, '2018-02-25 18:41:46', NULL, 'loan officer'),
(20, 93, 'B', '', '', NULL, 720, 'B', 1, '2018-02-26 19:34:52', NULL, 'loan officer'),
(20, 93, 'B', '', '', NULL, 720, 'B', 1, '2018-02-26 19:38:29', NULL, 'loan officer'),
(20, 93, 'B', '', '', NULL, 640, 'B', 1, '2018-02-26 19:40:19', NULL, 'loan officer'),
(20, 93, 'B', '', '', NULL, 640, 'B', 1, '2018-02-26 19:40:43', NULL, 'loan officer'),
(20, 93, 'B', '', '', NULL, 660, 'B', 1, '2018-02-26 19:40:54', NULL, 'loan officer'),
(20, 93, 'B', '', '', NULL, 660, 'B', 1, '2018-02-26 19:41:56', NULL, 'loan officer'),
(20, 93, 'B', '', '', NULL, 660, 'B', 1, '2018-02-26 19:42:41', NULL, 'loan officer'),
(20, 93, 'B', '', '', NULL, 660, 'B', 1, '2018-02-26 20:27:12', NULL, 'loan officer');

-- --------------------------------------------------------

--
-- Table structure for table `bpmi`
--

CREATE TABLE `bpmi` (
  `id` int(11) NOT NULL,
  `ltvTo` decimal(15,2) DEFAULT NULL,
  `ltvFrom` decimal(15,2) DEFAULT NULL,
  `creditScoreFrom` int(11) DEFAULT NULL,
  `creditScoreTo` int(11) DEFAULT NULL,
  `bpmi` decimal(15,2) NOT NULL,
  `termFrom` int(11) DEFAULT NULL,
  `termTo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `bpmi_adjustments` (
  `id` int(10) NOT NULL,
  `adjustmentName` varchar(250) NOT NULL,
  `creditScoreFrom` decimal(15,2) DEFAULT NULL,
  `creditScoreTo` decimal(15,2) DEFAULT NULL,
  `bpmi` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `businesstype_master` (
  `id` int(10) NOT NULL,
  `businesstype_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `closing_costs` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `rowNo` int(11) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `mode` int(11) DEFAULT NULL,
  `value` decimal(15,2) DEFAULT NULL,
  `percentage` decimal(15,3) DEFAULT NULL,
  `isApr` tinyint(1) NOT NULL DEFAULT '0',
  `templateId` int(11) NOT NULL,
  `isPpe` tinyint(1) NOT NULL DEFAULT '0',
  `addToLoan` tinyint(1) NOT NULL DEFAULT '0',
  `closingCostTypeId` int(11) NOT NULL,
  `calcOn` varchar(50) DEFAULT NULL,
  `category` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `closing_costs`
--

INSERT INTO `closing_costs` (`id`, `userId`, `rowNo`, `name`, `type`, `mode`, `value`, `percentage`, `isApr`, `templateId`, `isPpe`, `addToLoan`, `closingCostTypeId`, `calcOn`, `category`) VALUES
(0, 101, 1, 'UFMIP (FHA)', 1, 2, '0.00', '0.000', 0, 1, 0, 0, 82, NULL, 3),
(0, 101, 2, 'VA - (Purchase)', 1, 2, '0.00', '0.000', 0, 1, 0, 0, 83, NULL, 4),
(0, 101, 3, 'VA - (Re-Finance)', 1, 2, '0.00', '0.000', 0, 1, 0, 0, 84, NULL, 5),
(0, 101, 1, 'UFMIP (FHA)', 1, 1, '0.00', '1.750', 0, 2, 0, 0, 82, NULL, 3),
(0, 101, 2, 'VA - (Purchase)', 1, 1, '0.00', '2.150', 0, 2, 0, 0, 83, NULL, 4),
(0, 101, 3, 'VA - (Re-Finance)', 1, 1, '0.00', '0.500', 0, 2, 0, 0, 84, NULL, 5),
(0, 101, 4, '', 1, 2, '0.00', '0.000', 0, 2, 0, 0, 0, NULL, 0),
(0, 101, 1, 'UFMIP (FHA)', 1, 1, '0.00', '1.750', 0, 3, 0, 0, 82, NULL, 3),
(0, 101, 2, 'VA - (Purchase)', 1, 1, '0.00', '2.150', 0, 3, 0, 0, 83, NULL, 4),
(0, 101, 3, 'VA - (Re-Finance)', 1, 1, '0.00', '0.500', 0, 3, 0, 0, 84, NULL, 5),
(0, 101, 4, '', 1, 2, '0.00', '0.000', 0, 3, 0, 0, 0, NULL, 0),
(0, 101, 1, 'UFMIP (FHA)', 1, 1, '0.00', '1.750', 0, 4, 0, 0, 82, NULL, 3),
(0, 101, 2, 'VA - (Purchase)', 1, 1, '0.00', '2.150', 0, 4, 0, 0, 83, NULL, 4),
(0, 101, 3, 'VA - (Re-Finance)', 1, 1, '0.00', '0.500', 0, 4, 0, 0, 84, NULL, 5),
(0, 101, 4, 'Discount Points', 1, 2, '0.00', '0.000', 0, 4, 0, 0, 81, NULL, 2),
(0, 101, 5, 'Assumption Fee', 1, 2, '0.00', '0.000', 0, 4, 0, 0, 11, NULL, 0),
(0, 101, 1, 'UFMIP (FHA)', 1, 1, '0.00', '1.750', 0, 5, 0, 0, 82, NULL, 3),
(0, 101, 2, 'VA - (Purchase)', 1, 1, '0.00', '2.150', 0, 5, 0, 0, 83, NULL, 4),
(0, 101, 3, 'VA - (Re-Finance)', 1, 1, '0.00', '0.500', 0, 5, 0, 0, 84, NULL, 5),
(0, 101, 4, 'Assignment Fee', 1, 2, '3880.00', '0.000', 0, 5, 0, 0, 9, NULL, 0),
(0, 101, 5, 'Discount Points', 1, 2, '0.00', '0.000', 0, 5, 0, 0, 81, NULL, 2),
(0, 101, 6, 'Processing Fee', 1, 2, '700.00', '0.000', 0, 5, 0, 0, 59, NULL, 0),
(0, 101, 7, 'Title Insurance ', 1, 2, '0.00', '0.000', 0, 5, 0, 0, 80, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `closing_cost_template`
--

CREATE TABLE `closing_cost_template` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stateId` varchar(100) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `closing_cost_template`
--

INSERT INTO `closing_cost_template` (`id`, `name`, `stateId`, `userId`) VALUES
(1, 'Default Template', 'TX', 101),
(2, 'dsd', '', 101),
(3, 'aaa', '', 101),
(4, 'jithin', '', 101),
(5, 'Test', 'AL', 101);

-- --------------------------------------------------------

--
-- Table structure for table `closing_cost_type`
--

CREATE TABLE `closing_cost_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `calcOn` varchar(50) NOT NULL DEFAULT 'loan',
  `category` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `closing_cost_type`
--

INSERT INTO `closing_cost_type` (`id`, `name`, `calcOn`, `category`) VALUES
(1, 'Abstract or Title Search', 'loan', 0),
(2, 'Additional QM Fees', 'loan', 0),
(3, 'Admin Fee', 'loan', 0),
(4, 'Amortization Fee', 'loan', 0),
(5, 'Application Fee', 'loan', 0),
(6, 'Appraisal Desk Review', 'loan', 0),
(7, 'Appraisal Fee', 'loan', 0),
(8, 'Appraisal Inspection', 'loan', 0),
(9, 'Assignment Fee', 'loan', 0),
(10, 'Assignment Recording', 'loan', 0),
(11, 'Assumption Fee', 'loan', 0),
(12, 'Attorney Fee', 'loan', 0),
(13, 'Bond Fee', 'loan', 0),
(14, 'Bond Review', 'loan', 0),
(15, 'Borrower Closing Services Fee', 'loan', 0),
(16, 'Borrower Paid Upfront Fee', 'loan', 0),
(17, 'Certification Fee', 'loan', 0),
(18, 'City/County Deed Tax Stamp', 'loan', 0),
(19, 'City/County Mtg Tax Stamp', 'loan', 0),
(20, 'CLO Access Fee', 'loan', 0),
(21, 'Closing Protection Letter', 'loan', 0),
(22, 'Commitment Fee', 'loan', 0),
(23, 'Condo/PUD Certification', 'loan', 0),
(24, 'Contribution', 'loan', 0),
(25, 'Copy or Fax Fee', 'loan', 0),
(26, 'Credit Report', 'loan', 0),
(27, 'Debt Payoff', 'loan', 0),
(28, 'Deed Recording Fee', 'loan', 0),
(29, 'Doc Prep Fee', 'loan', 0),
(30, 'Documentary Stamp', 'loan', 0),
(31, 'Electronic Document Delivery', 'loan', 0),
(32, 'Escrow Service Fee', 'loan', 0),
(33, 'Escrow Waiver Fee', 'loan', 0),
(34, 'Express Mail/Courier Fee', 'loan', 0),
(35, 'FF9 - 10% of Lender\'s Policy', 'loan', 0),
(36, 'Field Review', 'loan', 0),
(37, 'Final Inspection', 'loan', 0),
(38, 'Flood Certification Fee', 'loan', 0),
(39, 'General Councel Fee', 'loan', 0),
(40, 'Government Recording Fee', 'loan', 0),
(41, 'Home Inspection Fee', 'loan', 0),
(42, 'Intangible Tax', 'loan', 0),
(43, 'Lender\'s Title Insurance', 'loan', 0),
(44, 'Loan Origination', 'loan', 0),
(45, 'Lock Fee', 'loan', 0),
(46, 'MERS Registration', 'loan', 0),
(47, 'MI Application Fee', 'loan', 0),
(48, 'Modification Fee', 'loan', 0),
(49, 'Mortgage Broker Fee', 'loan', 0),
(50, 'Mortgage Insurance Premium', 'loan', 0),
(51, 'Municipal Lien Certificate', 'loan', 0),
(52, 'Municipal Lien Certificate Recording', 'loan', 0),
(53, 'Notary Fee', 'loan', 0),
(54, 'Origination Fee', 'loan', 0),
(55, 'Other', 'loan', 0),
(56, 'Owners Title Insurance', 'loan', 0),
(57, 'Payoff Request Fee', 'loan', 0),
(58, 'Pest Inspection', 'loan', 0),
(59, 'Processing Fee', 'loan', 0),
(60, 'Real Estate Commission', 'loan', 0),
(61, 'Recording Fees', 'loan', 0),
(62, 'Redraw Fee', 'loan', 0),
(63, 'Reinspection Fee', 'loan', 0),
(64, 'Release Recording Fee', 'loan', 0),
(65, 'Rural Housing Fee', 'loan', 0),
(66, 'Settlement Fee', 'loan', 0),
(67, 'Signing Agent Fee', 'loan', 0),
(68, 'State Deed Tax Stamp', 'loan', 0),
(69, 'State Mortgage Tax Stamp', 'loan', 0),
(70, 'Subordination Fee', 'loan', 0),
(71, 'Survey', 'loan', 0),
(72, 'Tax Service Fee', 'loan', 0),
(73, 'Title Endorsement', 'loan', 0),
(74, 'Title Examination', 'loan', 0),
(75, 'Title Insurance Binder', 'loan', 0),
(76, 'Underwriting Fee', 'loan', 0),
(77, 'Verification of Employment', 'loan', 0),
(78, 'Warehouse Fee', 'loan', 0),
(79, 'Wire Transfer Fee', 'loan', 0),
(80, 'Title Insurance ', 'loan', 1),
(81, 'Discount Points', 'loan', 2),
(82, 'UFMIP (FHA)', 'loan', 3),
(83, 'VA - (Purchase)', 'loan', 4),
(84, 'VA - (Re-Finance)', 'loan', 5);

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
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

CREATE TABLE `customer_master` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `debits` (
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
(0, 16, 'B', '', '', NULL, 1, '2017-11-14 14:34:44', NULL, 'customer'),
(0, 20, 'B', '', 'Monthly', NULL, 1, '2018-01-13 13:37:25', NULL, 'loan officer'),
(0, 27, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:19:30', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:30:55', NULL, 'loan officer'),
(0, 36, 'B', '', 'Monthly', NULL, 1, '2018-01-21 12:26:17', NULL, 'loan officer'),
(0, 38, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:39:08', NULL, 'loan officer'),
(0, 39, 'B', '', 'Monthly', NULL, 1, '2018-01-27 09:03:29', NULL, 'loan officer'),
(0, 40, 'B', '', 'Monthly', NULL, 1, '2018-02-05 19:55:47', NULL, 'loan officer'),
(0, 42, 'B', '', 'Monthly', NULL, 1, '2018-02-05 19:56:11', NULL, 'loan officer'),
(0, 43, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:05:17', NULL, 'loan officer'),
(0, 44, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:05:28', NULL, 'loan officer'),
(0, 45, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:06:16', NULL, 'loan officer'),
(0, 46, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:10:46', NULL, 'loan officer'),
(0, 47, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:15:11', NULL, 'loan officer'),
(0, 51, 'B', '', 'Monthly', NULL, 1, '2018-02-05 21:12:04', NULL, 'loan officer'),
(0, 64, 'B', '', 'Monthly', NULL, 1, '2018-02-11 10:07:44', NULL, 'loan officer'),
(0, 65, 'B', '', 'Monthly', NULL, 1, '2018-02-18 09:05:33', NULL, 'loan officer'),
(0, 66, 'B', '', 'Monthly', NULL, 1, '2018-02-18 14:39:13', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 16:01:33', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', NULL, 1, '2018-02-25 18:41:47', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 20:27:12', NULL, 'loan officer');

-- --------------------------------------------------------

--
-- Table structure for table `debits_history`
--

CREATE TABLE `debits_history` (
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
(0, 16, 'B', '', '', NULL, 1, '2017-11-14 14:34:44', NULL, 'customer'),
(0, 20, 'B', '', 'Monthly', NULL, 1, '2018-01-13 13:37:25', NULL, 'loan officer'),
(0, 27, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:19:30', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:19:49', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:20:13', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:23:40', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:28:44', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:29:59', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:30:11', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:30:55', NULL, 'loan officer'),
(0, 36, 'B', '', 'Monthly', NULL, 1, '2018-01-21 12:26:17', NULL, 'loan officer'),
(0, 38, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:36:11', NULL, 'loan officer'),
(0, 38, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:36:35', NULL, 'loan officer'),
(0, 38, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:39:00', NULL, 'loan officer'),
(0, 38, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:39:08', NULL, 'loan officer'),
(0, 39, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:55:49', NULL, 'loan officer'),
(0, 39, 'B', '', 'Monthly', NULL, 1, '2018-01-27 09:03:29', NULL, 'loan officer'),
(0, 40, 'B', '', 'Monthly', NULL, 1, '2018-02-05 19:55:47', NULL, 'loan officer'),
(0, 42, 'B', '', 'Monthly', NULL, 1, '2018-02-05 19:56:11', NULL, 'loan officer'),
(0, 43, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:03:07', NULL, 'loan officer'),
(0, 43, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:05:17', NULL, 'loan officer'),
(0, 44, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:05:28', NULL, 'loan officer'),
(0, 45, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:06:16', NULL, 'loan officer'),
(0, 46, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:10:46', NULL, 'loan officer'),
(0, 47, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:15:11', NULL, 'loan officer'),
(0, 51, 'B', '', 'Monthly', NULL, 1, '2018-02-05 21:12:04', NULL, 'loan officer'),
(0, 64, 'B', '', 'Monthly', NULL, 1, '2018-02-11 10:07:44', NULL, 'loan officer'),
(0, 65, 'B', '', 'Monthly', NULL, 1, '2018-02-17 06:51:31', NULL, 'loan officer'),
(0, 65, 'B', '', 'Monthly', NULL, 1, '2018-02-17 07:06:36', NULL, 'loan officer'),
(0, 65, 'B', '', 'Monthly', NULL, 1, '2018-02-17 10:14:57', NULL, 'loan officer'),
(0, 65, 'B', '', 'Monthly', NULL, 1, '2018-02-18 09:05:33', NULL, 'loan officer'),
(0, 66, 'B', '', 'Monthly', NULL, 1, '2018-02-18 14:36:08', NULL, 'loan officer'),
(0, 66, 'B', '', 'Monthly', NULL, 1, '2018-02-18 14:36:19', NULL, 'loan officer'),
(0, 66, 'B', '', 'Monthly', NULL, 1, '2018-02-18 14:39:13', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:37:33', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:37:43', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:37:59', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:38:02', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:38:03', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:38:03', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:38:03', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:38:04', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 16:01:33', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', NULL, 1, '2018-02-25 16:54:07', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', NULL, 1, '2018-02-25 16:54:20', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', NULL, 1, '2018-02-25 16:54:41', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', NULL, 1, '2018-02-25 16:56:20', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', NULL, 1, '2018-02-25 16:57:03', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', NULL, 1, '2018-02-25 17:15:30', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', NULL, 1, '2018-02-25 18:41:47', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 19:34:52', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 19:38:29', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 19:40:19', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 19:40:44', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 19:40:54', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 19:41:56', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 19:42:41', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 20:27:12', NULL, 'loan officer');

-- --------------------------------------------------------

--
-- Table structure for table `email_master`
--

CREATE TABLE `email_master` (
  `id` int(10) NOT NULL,
  `loanofficer_id` int(10) NOT NULL,
  `sender_name` varchar(100) NOT NULL,
  `sender_email` varchar(100) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `email_setting` (
  `id` int(10) NOT NULL,
  `loanofficer_id` int(10) NOT NULL,
  `smtp_host` varchar(100) NOT NULL,
  `smtp_port` int(5) NOT NULL,
  `ssl_protocol` varchar(10) NOT NULL,
  `tls_protocol` varchar(10) NOT NULL,
  `smtp_username` varchar(100) NOT NULL,
  `smtp_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_setting`
--

INSERT INTO `email_setting` (`id`, `loanofficer_id`, `smtp_host`, `smtp_port`, `ssl_protocol`, `tls_protocol`, `smtp_username`, `smtp_password`) VALUES
(1, 1, 'smtp.gmail.com', 587, 'ON', 'ON', 'vishal@gmail.com', '2616');

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
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
(0, 16, 'B', '', '', NULL, 1, '2017-11-14 14:34:44', NULL, 'customer'),
(0, 20, 'B', '', 'Monthly', NULL, 1, '2018-01-13 13:37:25', NULL, 'loan officer'),
(0, 27, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:19:30', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:30:55', NULL, 'loan officer'),
(0, 36, 'B', '', 'Monthly', NULL, 1, '2018-01-21 12:26:17', NULL, 'loan officer'),
(0, 38, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:39:08', NULL, 'loan officer'),
(0, 39, 'B', 'base income', 'Monthly', '6000.00', 1, '2018-01-27 09:03:29', NULL, 'loan officer'),
(0, 40, 'B', '', 'Monthly', NULL, 1, '2018-02-05 19:55:47', NULL, 'loan officer'),
(0, 42, 'B', '', 'Monthly', NULL, 1, '2018-02-05 19:56:11', NULL, 'loan officer'),
(0, 43, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:05:17', NULL, 'loan officer'),
(0, 44, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:05:28', NULL, 'loan officer'),
(0, 45, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:06:16', NULL, 'loan officer'),
(0, 46, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:10:46', NULL, 'loan officer'),
(0, 47, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:15:10', NULL, 'loan officer'),
(0, 51, 'B', '', 'Monthly', NULL, 1, '2018-02-05 21:12:04', NULL, 'loan officer'),
(0, 64, 'B', '', 'Monthly', NULL, 1, '2018-02-11 10:07:44', NULL, 'loan officer'),
(0, 65, 'B', '', 'Monthly', NULL, 1, '2018-02-18 09:05:33', NULL, 'loan officer'),
(0, 66, 'B', '', 'Monthly', NULL, 1, '2018-02-18 14:39:13', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 16:01:33', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', '6000.00', 1, '2018-02-25 18:41:46', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', '6000.00', 1, '2018-02-26 20:27:12', NULL, 'loan officer');

-- --------------------------------------------------------

--
-- Table structure for table `incomes_history`
--

CREATE TABLE `incomes_history` (
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
(0, 16, 'B', '', '', NULL, 1, '2017-11-14 14:34:44', NULL, 'customer'),
(0, 20, 'B', '', 'Monthly', NULL, 1, '2018-01-13 13:37:25', NULL, 'loan officer'),
(0, 27, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:19:30', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:19:49', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:20:13', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:23:40', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:28:44', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:29:59', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:30:11', NULL, 'loan officer'),
(0, 29, 'B', '', 'Monthly', NULL, 1, '2018-01-20 07:30:55', NULL, 'loan officer'),
(0, 36, 'B', '', 'Monthly', NULL, 1, '2018-01-21 12:26:17', NULL, 'loan officer'),
(0, 38, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:36:11', NULL, 'loan officer'),
(0, 38, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:36:35', NULL, 'loan officer'),
(0, 38, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:39:00', NULL, 'loan officer'),
(0, 38, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:39:08', NULL, 'loan officer'),
(0, 39, 'B', '', 'Monthly', NULL, 1, '2018-01-27 07:55:49', NULL, 'loan officer'),
(0, 39, 'B', 'base income', 'Monthly', '6000.00', 1, '2018-01-27 09:03:29', NULL, 'loan officer'),
(0, 40, 'B', '', 'Monthly', NULL, 1, '2018-02-05 19:55:47', NULL, 'loan officer'),
(0, 42, 'B', '', 'Monthly', NULL, 1, '2018-02-05 19:56:11', NULL, 'loan officer'),
(0, 43, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:03:07', NULL, 'loan officer'),
(0, 43, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:05:17', NULL, 'loan officer'),
(0, 44, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:05:28', NULL, 'loan officer'),
(0, 45, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:06:16', NULL, 'loan officer'),
(0, 46, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:10:46', NULL, 'loan officer'),
(0, 47, 'B', '', 'Monthly', NULL, 1, '2018-02-05 20:15:11', NULL, 'loan officer'),
(0, 51, 'B', '', 'Monthly', NULL, 1, '2018-02-05 21:12:04', NULL, 'loan officer'),
(0, 64, 'B', '', 'Monthly', NULL, 1, '2018-02-11 10:07:44', NULL, 'loan officer'),
(0, 65, 'B', '', 'Monthly', NULL, 1, '2018-02-17 06:51:30', NULL, 'loan officer'),
(0, 65, 'B', '', 'Monthly', NULL, 1, '2018-02-17 07:06:36', NULL, 'loan officer'),
(0, 65, 'B', '', 'Monthly', NULL, 1, '2018-02-17 10:14:57', NULL, 'loan officer'),
(0, 65, 'B', '', 'Monthly', NULL, 1, '2018-02-18 09:05:33', NULL, 'loan officer'),
(0, 66, 'B', '', 'Monthly', NULL, 1, '2018-02-18 14:36:08', NULL, 'loan officer'),
(0, 66, 'B', '', 'Monthly', NULL, 1, '2018-02-18 14:36:19', NULL, 'loan officer'),
(0, 66, 'B', '', 'Monthly', NULL, 1, '2018-02-18 14:39:13', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:37:33', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:37:43', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:37:59', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:38:02', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:38:03', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:38:03', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:38:03', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 15:38:04', NULL, 'loan officer'),
(0, 69, 'B', '', 'Monthly', NULL, 1, '2018-02-18 16:01:33', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', NULL, 1, '2018-02-25 16:54:07', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', '6000.00', 1, '2018-02-25 16:54:20', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', '6000.00', 1, '2018-02-25 16:54:41', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', '6000.00', 1, '2018-02-25 16:56:20', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', '6000.00', 1, '2018-02-25 16:57:03', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', '6000.00', 1, '2018-02-25 17:15:30', NULL, 'loan officer'),
(0, 90, 'B', '', 'Monthly', '6000.00', 1, '2018-02-25 18:41:46', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 19:34:52', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', NULL, 1, '2018-02-26 19:38:29', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', '6000.00', 1, '2018-02-26 19:40:19', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', '6000.00', 1, '2018-02-26 19:40:43', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', '6000.00', 1, '2018-02-26 19:40:54', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', '6000.00', 1, '2018-02-26 19:41:56', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', '6000.00', 1, '2018-02-26 19:42:41', NULL, 'loan officer'),
(0, 93, 'B', '', 'Monthly', '6000.00', 1, '2018-02-26 20:27:12', NULL, 'loan officer');

-- --------------------------------------------------------

--
-- Table structure for table `loanofficer_master`
--

CREATE TABLE `loanofficer_master` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `loans` (
  `id` int(11) NOT NULL,
  `qualifyingCreditScore` int(11) DEFAULT NULL,
  `preApprovalCode` varchar(55) DEFAULT NULL,
  `stateId` varchar(11) DEFAULT NULL,
  `totalIncome` decimal(15,2) DEFAULT NULL,
  `totalDebts` decimal(15,2) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(18, NULL, NULL, NULL, NULL, NULL, '2017-11-11 12:45:49', NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, '2018-01-13 13:27:42', NULL, 'loan officer'),
(20, 0, NULL, 'AS', '0.00', '0.00', '2018-01-13 13:27:42', '2018-01-13 13:37:25', 'loan officer'),
(21, NULL, NULL, NULL, NULL, NULL, '2018-01-13 13:40:38', NULL, 'loan officer'),
(22, NULL, NULL, NULL, NULL, NULL, '2018-01-13 13:40:39', NULL, 'loan officer'),
(23, NULL, NULL, NULL, NULL, NULL, '2018-01-13 15:03:53', NULL, 'loan officer'),
(24, NULL, NULL, NULL, NULL, NULL, '2018-01-15 18:39:12', NULL, 'loan officer'),
(25, NULL, NULL, NULL, NULL, NULL, '2018-01-15 18:39:13', NULL, 'loan officer'),
(26, NULL, NULL, NULL, NULL, NULL, '2018-01-20 05:52:54', NULL, 'loan officer'),
(27, 0, NULL, NULL, '0.00', '0.00', '2018-01-20 05:52:54', '2018-01-20 07:19:30', 'loan officer'),
(28, NULL, NULL, NULL, NULL, NULL, '2018-01-20 07:19:44', NULL, 'loan officer'),
(29, 0, NULL, NULL, '0.00', '0.00', '2018-01-20 07:19:44', '2018-01-20 07:30:55', 'loan officer'),
(30, NULL, NULL, NULL, NULL, NULL, '2018-01-21 06:13:29', NULL, 'loan officer'),
(31, NULL, NULL, NULL, NULL, NULL, '2018-01-21 06:13:35', NULL, 'loan officer'),
(32, NULL, NULL, NULL, NULL, NULL, '2018-01-21 09:48:26', NULL, 'loan officer'),
(33, NULL, NULL, NULL, NULL, NULL, '2018-01-21 09:49:30', NULL, 'loan officer'),
(34, NULL, NULL, NULL, NULL, NULL, '2018-01-21 11:08:00', NULL, 'loan officer'),
(35, NULL, NULL, NULL, NULL, NULL, '2018-01-21 11:08:03', NULL, 'loan officer'),
(36, 0, NULL, NULL, '0.00', '0.00', '2018-01-21 11:47:31', '2018-01-21 12:26:17', 'loan officer'),
(37, NULL, NULL, NULL, NULL, NULL, '2018-01-21 15:31:10', NULL, 'loan officer'),
(38, 0, NULL, NULL, '0.00', '0.00', '2018-01-26 17:09:41', '2018-01-27 07:39:08', 'loan officer'),
(39, 0, NULL, NULL, '6000.00', '0.00', '2018-01-27 07:44:04', '2018-01-27 09:03:29', 'loan officer'),
(40, 0, NULL, NULL, '0.00', '0.00', '2018-02-05 18:49:46', '2018-02-05 19:55:47', 'loan officer'),
(41, NULL, NULL, NULL, NULL, NULL, '2018-02-05 19:55:57', NULL, 'loan officer'),
(42, NULL, NULL, NULL, '0.00', '0.00', '2018-02-05 19:56:06', '2018-02-05 19:56:11', 'loan officer'),
(43, 0, NULL, NULL, '0.00', '0.00', '2018-02-05 20:02:59', '2018-02-05 20:05:17', 'loan officer'),
(44, NULL, NULL, NULL, '0.00', '0.00', '2018-02-05 20:05:24', '2018-02-05 20:05:28', 'loan officer'),
(45, NULL, NULL, NULL, '0.00', '0.00', '2018-02-05 20:06:14', '2018-02-05 20:06:16', 'loan officer'),
(46, NULL, NULL, NULL, '0.00', '0.00', '2018-02-05 20:10:42', '2018-02-05 20:10:46', 'loan officer'),
(47, 0, NULL, NULL, '0.00', '0.00', '2018-02-05 20:15:09', '2018-02-05 20:15:10', 'loan officer'),
(48, NULL, NULL, NULL, NULL, NULL, '2018-02-05 20:52:44', NULL, 'loan officer'),
(49, NULL, NULL, NULL, NULL, NULL, '2018-02-05 20:53:18', NULL, 'loan officer'),
(50, NULL, NULL, NULL, NULL, NULL, '2018-02-05 20:54:31', NULL, 'loan officer'),
(51, 0, NULL, NULL, '0.00', '0.00', '2018-02-05 20:55:12', '2018-02-05 21:12:04', 'loan officer'),
(52, NULL, NULL, NULL, NULL, NULL, '2018-02-08 11:40:49', NULL, 'loan officer'),
(53, NULL, NULL, NULL, NULL, NULL, '2018-02-08 11:40:52', NULL, 'loan officer'),
(54, NULL, NULL, NULL, NULL, NULL, '2018-02-08 16:16:49', NULL, 'loan officer'),
(55, NULL, NULL, NULL, NULL, NULL, '2018-02-09 15:16:41', NULL, 'loan officer'),
(56, NULL, NULL, NULL, NULL, NULL, '2018-02-09 15:16:53', NULL, 'loan officer'),
(57, NULL, NULL, NULL, NULL, NULL, '2018-02-09 15:17:03', NULL, 'loan officer'),
(58, NULL, NULL, NULL, NULL, NULL, '2018-02-10 10:16:18', NULL, 'loan officer'),
(59, NULL, NULL, NULL, NULL, NULL, '2018-02-10 10:16:28', NULL, 'loan officer'),
(60, NULL, NULL, NULL, NULL, NULL, '2018-02-10 10:16:52', NULL, 'loan officer'),
(61, NULL, NULL, NULL, NULL, NULL, '2018-02-10 11:24:26', NULL, 'loan officer'),
(62, NULL, NULL, NULL, NULL, NULL, '2018-02-11 06:49:47', NULL, 'loan officer'),
(63, NULL, NULL, NULL, NULL, NULL, '2018-02-11 08:35:33', NULL, 'loan officer'),
(64, 0, NULL, NULL, '0.00', '0.00', '2018-02-11 10:07:14', '2018-02-11 10:07:44', 'loan officer'),
(65, 0, NULL, NULL, '0.00', '0.00', '2018-02-17 06:37:21', '2018-02-18 09:05:33', 'loan officer'),
(66, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 14:35:33', '2018-02-18 14:39:11', 'loan officer'),
(67, NULL, NULL, NULL, NULL, NULL, '2018-02-18 14:58:42', NULL, 'loan officer'),
(68, NULL, NULL, NULL, NULL, NULL, '2018-02-18 15:37:04', NULL, 'loan officer'),
(69, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 15:37:17', '2018-02-18 16:01:33', 'loan officer'),
(70, NULL, NULL, NULL, NULL, NULL, '2018-02-18 16:15:43', NULL, 'loan officer'),
(71, NULL, NULL, NULL, NULL, NULL, '2018-02-18 16:16:00', NULL, 'loan officer'),
(72, NULL, NULL, NULL, NULL, NULL, '2018-02-19 04:19:21', NULL, 'loan officer'),
(73, NULL, NULL, NULL, NULL, NULL, '2018-02-19 17:57:57', NULL, 'loan officer'),
(74, NULL, NULL, NULL, NULL, NULL, '2018-02-19 18:07:23', NULL, 'loan officer'),
(75, NULL, NULL, NULL, NULL, NULL, '2018-02-19 18:10:23', NULL, 'loan officer'),
(76, NULL, NULL, NULL, NULL, NULL, '2018-02-19 18:11:27', NULL, 'loan officer'),
(77, NULL, NULL, NULL, NULL, NULL, '2018-02-19 19:48:31', NULL, 'loan officer'),
(78, NULL, NULL, NULL, NULL, NULL, '2018-02-19 19:48:39', NULL, 'loan officer'),
(79, NULL, NULL, NULL, NULL, NULL, '2018-02-19 19:59:42', NULL, 'loan officer'),
(80, NULL, NULL, NULL, NULL, NULL, '2018-02-19 20:33:01', NULL, 'loan officer'),
(81, NULL, NULL, NULL, NULL, NULL, '2018-02-21 04:30:46', NULL, 'loan officer'),
(82, NULL, NULL, NULL, NULL, NULL, '2018-02-21 04:31:58', NULL, 'loan officer'),
(83, NULL, NULL, NULL, NULL, NULL, '2018-02-21 04:36:36', NULL, 'loan officer'),
(84, NULL, NULL, NULL, NULL, NULL, '2018-02-21 05:25:46', NULL, 'loan officer'),
(85, NULL, NULL, NULL, NULL, NULL, '2018-02-21 05:26:01', NULL, 'loan officer'),
(86, NULL, NULL, NULL, NULL, NULL, '2018-02-21 05:26:14', NULL, 'loan officer'),
(87, NULL, NULL, NULL, NULL, NULL, '2018-02-21 05:26:59', NULL, 'loan officer'),
(88, NULL, NULL, NULL, NULL, NULL, '2018-02-21 19:20:29', NULL, 'loan officer'),
(89, NULL, NULL, NULL, NULL, NULL, '2018-02-22 19:35:26', NULL, 'loan officer'),
(90, 720, NULL, 'TX', '6000.00', '0.00', '2018-02-25 16:51:35', '2018-02-25 18:41:46', 'loan officer'),
(91, NULL, NULL, NULL, NULL, NULL, '2018-02-26 18:15:40', NULL, 'loan officer'),
(92, NULL, NULL, NULL, NULL, NULL, '2018-02-26 18:15:45', NULL, 'loan officer'),
(93, 660, NULL, 'TX', '6000.00', '0.00', '2018-02-26 18:48:43', '2018-02-26 20:27:12', 'loan officer');

-- --------------------------------------------------------

--
-- Table structure for table `loansbackup`
--

CREATE TABLE `loansbackup` (
  `id` varchar(11) NOT NULL,
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
('0', NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-09 10:48:43', '2017-11-09 10:48:43', NULL),
('0', 1, 0, NULL, NULL, '0.00', '0.00', '2017-11-09 10:48:44', '2017-11-09 10:48:44', NULL),
('0', NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-09 10:48:53', '2017-11-09 10:48:53', NULL),
('0', 2, 0, NULL, NULL, '0.00', '0.00', '2017-11-09 10:48:53', '2017-11-09 10:48:53', NULL),
('0', NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-09 10:49:50', '2017-11-09 10:49:50', NULL),
('0', 1, 0, NULL, NULL, '0.00', '0.00', '2017-11-09 10:49:52', '2017-11-09 10:49:52', NULL),
('0', NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-09 10:50:27', '2017-11-09 10:50:27', NULL),
('0', 2, 0, NULL, NULL, '0.00', '0.00', '2017-11-09 10:50:28', '2017-11-09 10:50:28', NULL),
('0', NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-11 06:18:22', '2017-11-11 06:18:22', NULL),
('0', 7, 0, NULL, NULL, '0.00', '0.00', '2017-11-11 06:18:22', '2017-11-11 06:18:22', NULL),
('0', NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-13 16:42:05', '2017-11-13 16:42:05', NULL),
('0', 1, 0, NULL, NULL, '0.00', '0.00', '2017-11-13 16:42:06', '2017-11-13 16:42:06', 'customer'),
('0', NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-13 16:43:57', '2017-11-13 16:43:57', NULL),
('0', 1, 0, NULL, NULL, '0.00', '0.00', '2017-11-13 16:43:59', '2017-11-13 16:43:59', 'loan officer'),
('0', NULL, NULL, NULL, NULL, NULL, NULL, '2017-11-14 14:34:41', '2017-11-14 14:34:41', NULL),
('0', 16, 0, NULL, NULL, '0.00', '0.00', '2017-11-14 14:34:44', '2017-11-14 14:34:44', 'customer'),
('0', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-13 13:28:45', '2018-01-13 13:28:45', NULL),
('0', 20, 0, NULL, 0, '0.00', '0.00', '2018-01-13 13:28:45', '2018-01-13 13:28:45', 'loan officer'),
('0', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-13 13:37:25', '2018-01-13 13:37:25', NULL),
('0', 20, 0, NULL, 0, '0.00', '0.00', '2018-01-13 13:37:25', '2018-01-13 13:37:25', 'loan officer'),
('', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 07:19:30', '2018-01-20 07:19:30', NULL),
('', 27, 0, NULL, NULL, '0.00', '0.00', '2018-01-20 07:19:30', '2018-01-20 07:19:30', 'loan officer'),
('', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 07:19:49', '2018-01-20 07:19:49', NULL),
('', 29, 0, NULL, NULL, '0.00', '0.00', '2018-01-20 07:19:49', '2018-01-20 07:19:49', 'loan officer'),
('', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 07:20:13', '2018-01-20 07:20:13', NULL),
('', 29, 0, NULL, NULL, '0.00', '0.00', '2018-01-20 07:20:13', '2018-01-20 07:20:13', 'loan officer'),
('', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 07:23:39', '2018-01-20 07:23:39', NULL),
('', 29, 0, NULL, NULL, '0.00', '0.00', '2018-01-20 07:23:40', '2018-01-20 07:23:40', 'loan officer'),
('', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 07:28:44', '2018-01-20 07:28:44', NULL),
('', 29, 0, NULL, NULL, '0.00', '0.00', '2018-01-20 07:28:44', '2018-01-20 07:28:44', 'loan officer'),
('', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 07:29:59', '2018-01-20 07:29:59', NULL),
('', 29, 0, NULL, NULL, '0.00', '0.00', '2018-01-20 07:29:59', '2018-01-20 07:29:59', 'loan officer'),
('', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 07:30:11', '2018-01-20 07:30:11', NULL),
('', 29, 0, NULL, NULL, '0.00', '0.00', '2018-01-20 07:30:11', '2018-01-20 07:30:11', 'loan officer'),
('', NULL, NULL, NULL, NULL, NULL, NULL, '2018-01-20 07:30:55', '2018-01-20 07:30:55', NULL),
('', 29, 0, NULL, NULL, '0.00', '0.00', '2018-01-20 07:30:55', '2018-01-20 07:30:55', 'loan officer'),
('', 36, 0, NULL, NULL, '0.00', '0.00', '2018-01-21 12:26:17', '2018-01-21 12:26:17', 'loan officer'),
('', 38, 0, NULL, NULL, '0.00', '0.00', '2018-01-27 07:36:11', '2018-01-27 07:36:11', 'loan officer'),
('', 38, 0, NULL, NULL, '0.00', '0.00', '2018-01-27 07:36:35', '2018-01-27 07:36:35', 'loan officer'),
('', 38, 0, NULL, NULL, '0.00', '0.00', '2018-01-27 07:39:00', '2018-01-27 07:39:00', 'loan officer'),
('', 38, 0, NULL, NULL, '0.00', '0.00', '2018-01-27 07:39:08', '2018-01-27 07:39:08', 'loan officer'),
('', 39, 0, NULL, NULL, '0.00', '0.00', '2018-01-27 07:55:49', '2018-01-27 07:55:49', 'loan officer'),
('', 39, 0, NULL, NULL, '6000.00', '0.00', '2018-01-27 09:03:29', '2018-01-27 09:03:29', 'loan officer'),
('', 40, 0, NULL, NULL, '0.00', '0.00', '2018-02-05 19:55:47', '2018-02-05 19:55:47', 'loan officer'),
('', 42, NULL, NULL, NULL, '0.00', '0.00', '2018-02-05 19:56:11', '2018-02-05 19:56:11', 'loan officer'),
('', 43, NULL, NULL, NULL, '0.00', '0.00', '2018-02-05 20:03:07', '2018-02-05 20:03:07', 'loan officer'),
('', 43, 0, NULL, NULL, '0.00', '0.00', '2018-02-05 20:05:17', '2018-02-05 20:05:17', 'loan officer'),
('', 44, NULL, NULL, NULL, '0.00', '0.00', '2018-02-05 20:05:28', '2018-02-05 20:05:28', 'loan officer'),
('', 45, NULL, NULL, NULL, '0.00', '0.00', '2018-02-05 20:06:16', '2018-02-05 20:06:16', 'loan officer'),
('', 46, NULL, NULL, NULL, '0.00', '0.00', '2018-02-05 20:10:46', '2018-02-05 20:10:46', 'loan officer'),
('', 47, 0, NULL, NULL, '0.00', '0.00', '2018-02-05 20:15:10', '2018-02-05 20:15:10', 'loan officer'),
('', 51, 0, NULL, NULL, '0.00', '0.00', '2018-02-05 21:12:04', '2018-02-05 21:12:04', 'loan officer'),
('', 64, 0, NULL, NULL, '0.00', '0.00', '2018-02-11 10:07:44', '2018-02-11 10:07:44', 'loan officer'),
('', 65, 0, NULL, NULL, '0.00', '0.00', '2018-02-17 06:51:30', '2018-02-17 06:51:30', 'loan officer'),
('', 65, 0, NULL, NULL, '0.00', '0.00', '2018-02-17 07:06:36', '2018-02-17 07:06:36', 'loan officer'),
('', 65, 0, NULL, NULL, '0.00', '0.00', '2018-02-17 10:14:57', '2018-02-17 10:14:57', 'loan officer'),
('', 65, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 09:05:33', '2018-02-18 09:05:33', 'loan officer'),
('', 66, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 14:36:08', '2018-02-18 14:36:08', 'loan officer'),
('', 66, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 14:36:19', '2018-02-18 14:36:19', 'loan officer'),
('', 66, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 14:39:11', '2018-02-18 14:39:11', 'loan officer'),
('', 69, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 15:37:33', '2018-02-18 15:37:33', 'loan officer'),
('', 69, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 15:37:43', '2018-02-18 15:37:43', 'loan officer'),
('', 69, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 15:37:59', '2018-02-18 15:37:59', 'loan officer'),
('', 69, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 15:38:02', '2018-02-18 15:38:02', 'loan officer'),
('', 69, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 15:38:02', '2018-02-18 15:38:02', 'loan officer'),
('', 69, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 15:38:03', '2018-02-18 15:38:03', 'loan officer'),
('', 69, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 15:38:03', '2018-02-18 15:38:03', 'loan officer'),
('', 69, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 15:38:04', '2018-02-18 15:38:04', 'loan officer'),
('', 69, 0, NULL, NULL, '0.00', '0.00', '2018-02-18 16:01:33', '2018-02-18 16:01:33', 'loan officer'),
('', 90, 0, NULL, NULL, '0.00', '0.00', '2018-02-25 16:54:07', '2018-02-25 16:54:07', 'loan officer'),
('', 90, 0, NULL, NULL, '6000.00', '0.00', '2018-02-25 16:54:20', '2018-02-25 16:54:20', 'loan officer'),
('', 90, 0, NULL, NULL, '6000.00', '0.00', '2018-02-25 16:54:41', '2018-02-25 16:54:41', 'loan officer'),
('', 90, 720, NULL, 0, '6000.00', '0.00', '2018-02-25 16:56:20', '2018-02-25 16:56:20', 'loan officer'),
('', 90, 720, NULL, 0, '6000.00', '0.00', '2018-02-25 16:57:03', '2018-02-25 16:57:03', 'loan officer'),
('', 90, 720, NULL, 0, '6000.00', '0.00', '2018-02-25 17:15:30', '2018-02-25 17:15:30', 'loan officer'),
('', 90, 720, NULL, 0, '6000.00', '0.00', '2018-02-25 18:41:46', '2018-02-25 18:41:46', 'loan officer'),
('', 93, 720, NULL, NULL, '0.00', '0.00', '2018-02-26 19:34:52', '2018-02-26 19:34:52', 'loan officer'),
('', 93, 720, NULL, NULL, '0.00', '0.00', '2018-02-26 19:38:29', '2018-02-26 19:38:29', 'loan officer'),
('', 93, 640, NULL, 0, '6000.00', '0.00', '2018-02-26 19:40:19', '2018-02-26 19:40:19', 'loan officer'),
('', 93, 640, NULL, 0, '6000.00', '0.00', '2018-02-26 19:40:43', '2018-02-26 19:40:43', 'loan officer'),
('', 93, 660, NULL, 0, '6000.00', '0.00', '2018-02-26 19:40:54', '2018-02-26 19:40:54', 'loan officer'),
('', 93, 660, NULL, 0, '6000.00', '0.00', '2018-02-26 19:41:56', '2018-02-26 19:41:56', 'loan officer'),
('', 93, 660, NULL, 0, '6000.00', '0.00', '2018-02-26 19:42:41', '2018-02-26 19:42:41', 'loan officer'),
('', 93, 660, NULL, 0, '6000.00', '0.00', '2018-02-26 20:27:12', '2018-02-26 20:27:12', 'loan officer');

-- --------------------------------------------------------

--
-- Table structure for table `loan_options`
--

CREATE TABLE `loan_options` (
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
  `closingCostTemplateId` int(11) DEFAULT '1',
  `cashToClose` decimal(15,2) DEFAULT '0.00',
  `apr` decimal(15,2) DEFAULT '0.00',
  `taxVerified` tinyint(1) NOT NULL DEFAULT '0',
  `insVerified` tinyint(1) NOT NULL DEFAULT '0',
  `hoaVerified` tinyint(1) NOT NULL DEFAULT '0',
  `miVerified` tinyint(1) NOT NULL DEFAULT '0',
  `expiry` varchar(100) DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_options`
--

INSERT INTO `loan_options` (`id`, `loanId`, `optionNo`, `salesPrice`, `loanMode`, `loanType`, `downPayment`, `miType`, `firstMortgageRate`, `firstMortgagePoints`, `firstMortgageTerm`, `firstMortgageLoanAmount`, `firstMortgageLoanBaseAmount`, `firstMortgagePiti`, `firstMortgagePAndI`, `tax`, `ins`, `hoa`, `mi`, `other`, `front`, `back`, `dti`, `ltv`, `cltv`, `secondMortgageRate`, `secondMortgagePoints`, `secondMortgageTerm`, `secondMortgageLoanAmount`, `secondMortgageLoanBaseAmount`, `secondMortgagePiti`, `secondMortgagePAndI`, `firstAndSecondPiti`, `monthsOfTax`, `monthsOfTaxAmount`, `monthsOfInsurance`, `monthsOfInsuranceAmount`, `daysOfInterest`, `daysOfInterestAmount`, `totalPrePaids`, `credit1Name`, `credit1Amount`, `credit2Name`, `credit2Amount`, `credit3Name`, `credit3Amount`, `credit4Name`, `credit4Amount`, `totalCredits`, `totalClosingCosts`, `closingCostTemplateId`, `cashToClose`, `apr`, `taxVerified`, `insVerified`, `hoaVerified`, `miVerified`, `expiry`, `lastUpdatedBy`) VALUES
(4, 2, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(5, 7, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(7, 1, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(8, 16, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'customer'),
(9, 20, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(10, 27, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(17, 29, 1, '1111.00', 1, 1, '33.33', 1, '0.00', '0.000', 0, '1077.67', '1077.67', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '238.00', NULL, '1673.81', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(18, 36, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(22, 38, 1, '100.00', 1, 15, '0.00', 1, '0.00', '0.000', 0, '100.00', '100.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '100.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '269.46', NULL, '1671.94', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(24, 39, 1, '400000.00', 1, 2, '20000.00', 1, '4.25', '0.000', 360, '380000.00', '380000.00', '2499.78', '1869.37', '559.58', '70.83', '0.00', '0.00', '0.00', '41.66', '41.66', '0.00', '95.00', '95.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '2499.78', 2, '1119.16', 4, '283.32', 5, '224.31', '1626.79', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '16139.22', NULL, '37766.01', '4.29', 0, 0, 0, 0, NULL, 'loan officer'),
(25, 40, 1, '0.00', 1, 1, NULL, 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', NULL, '0.00', NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, NULL, 2, NULL, 1, NULL, NULL, 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(26, 42, 1, '0.00', 1, 1, NULL, 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', NULL, '0.00', NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, NULL, 2, NULL, 1, NULL, NULL, 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(28, 43, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, '0.00', 2, '0.00', 1, '0.00', '0.00', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(29, 44, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, NULL, 2, NULL, 1, NULL, NULL, 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(30, 45, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, NULL, 2, NULL, 1, NULL, NULL, 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(31, 46, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '0.00', 2, '0.00', 2, '0.00', 1, '0.00', '0.00', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(32, 47, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1260.82', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(33, 51, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '27.22', NULL, '1288.04', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(34, 64, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.22', 2, '1261.04', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(38, 65, 1, '0.00', 0, 1, '0.00', 1, '0.00', '1.250', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '1.25', 2, '1262.07', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(41, 66, 1, '1000000.00', 1, 8, '35000.00', 1, '5.00', '1.250', 360, '965000.00', '965000.00', '5875.49', '5245.08', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '96.50', '96.50', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '5875.49', 2, '1119.16', 2, '141.66', 1, '135.70', '1396.52', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '21588.75', 3, '57985.27', '5.05', 0, 0, 0, 0, NULL, 'loan officer'),
(50, 69, 1, '1000000.00', 1, 1, '30000.00', 1, '4.50', '1.250', 12, '970000.00', '970000.00', '83447.58', '82817.17', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '83447.58', 2, '1119.16', 2, '141.66', 1, '121.25', '1382.07', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '64413.00', 2, '95795.07', '20.07', 0, 0, 0, 0, NULL, 'loan officer'),
(57, 90, 1, '400000.00', 0, 2, '20000.00', 1, '4.25', '0.000', 360, '380000.00', '380000.00', '2499.78', '1869.37', '559.58', '70.83', '0.00', '231.17', '0.00', '41.66', '41.66', '0.00', '95.00', '95.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '2499.78', 2, '1119.16', 2, '141.66', 1, '44.86', '1305.68', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '2000.00', 5, '23305.68', '4.34', 0, 0, 0, 0, NULL, 'loan officer'),
(65, 93, 1, '400000.00', 1, 1, '12000.00', 1, '4.50', '1.000', 360, '388000.00', '388000.00', '3210.68', '1965.94', '559.58', '70.83', '0.00', '614.33', '0.00', '53.51', '53.51', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '3210.68', 3, '1678.74', 14, '991.62', 15, '727.50', '3397.86', 'Earnest Money', '1000.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 1000, '12215.00', 5, '26612.86', '5.51', 0, 0, 0, 0, NULL, 'loan officer');

-- --------------------------------------------------------

--
-- Table structure for table `loan_options_history`
--

CREATE TABLE `loan_options_history` (
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
  `closingCostTemplateId` int(11) DEFAULT NULL,
  `cashToClose` decimal(15,2) DEFAULT '0.00',
  `apr` decimal(15,2) DEFAULT '0.00',
  `taxVerified` tinyint(1) NOT NULL DEFAULT '0',
  `insVerified` tinyint(1) NOT NULL DEFAULT '0',
  `hoaVerified` tinyint(1) NOT NULL DEFAULT '0',
  `miVerified` tinyint(1) NOT NULL DEFAULT '0',
  `expiry` varchar(100) DEFAULT NULL,
  `lastUpdatedBy` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_options_history`
--

INSERT INTO `loan_options_history` (`id`, `loanId`, `optionNo`, `salesPrice`, `loanMode`, `loanType`, `downPayment`, `miType`, `firstMortgageRate`, `firstMortgagePoints`, `firstMortgageTerm`, `firstMortgageLoanAmount`, `firstMortgageLoanBaseAmount`, `firstMortgagePiti`, `firstMortgagePAndI`, `tax`, `ins`, `hoa`, `mi`, `other`, `front`, `back`, `dti`, `ltv`, `cltv`, `secondMortgageRate`, `secondMortgagePoints`, `secondMortgageTerm`, `secondMortgageLoanAmount`, `secondMortgageLoanBaseAmount`, `secondMortgagePiti`, `secondMortgagePAndI`, `firstAndSecondPiti`, `monthsOfTax`, `monthsOfTaxAmount`, `monthsOfInsurance`, `monthsOfInsuranceAmount`, `daysOfInterest`, `daysOfInterestAmount`, `totalPrePaids`, `credit1Name`, `credit1Amount`, `credit2Name`, `credit2Amount`, `credit3Name`, `credit3Amount`, `credit4Name`, `credit4Amount`, `totalCredits`, `totalClosingCosts`, `closingCostTemplateId`, `cashToClose`, `apr`, `taxVerified`, `insVerified`, `hoaVerified`, `miVerified`, `expiry`, `lastUpdatedBy`) VALUES
(1, 1, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(2, 2, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(3, 1, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(4, 2, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(5, 7, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, NULL),
(6, 1, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'customer'),
(7, 1, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(8, 16, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'customer'),
(9, 20, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(10, 27, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(11, 29, 1, '1111.00', 1, 1, '33.33', 1, '0.00', '0.000', 0, '1077.67', '1077.67', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '238.00', NULL, '1673.81', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(12, 29, 1, '1111.00', 1, 1, '33.33', 1, '0.00', '0.000', 0, '1077.67', '1077.67', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '238.00', NULL, '1673.81', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(13, 29, 1, '1111.00', 1, 1, '33.33', 1, '0.00', '0.000', 0, '1077.67', '1077.67', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '238.00', NULL, '1673.81', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(14, 29, 1, '1111.00', 1, 1, '33.33', 1, '0.00', '0.000', 0, '1077.67', '1077.67', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '238.00', NULL, '1673.81', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(15, 29, 1, '1111.00', 1, 1, '33.33', 1, '0.00', '0.000', 0, '1077.67', '1077.67', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '238.00', NULL, '1673.81', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(16, 29, 1, '1111.00', 1, 1, '33.33', 1, '0.00', '0.000', 0, '1077.67', '1077.67', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '238.00', NULL, '1673.81', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(17, 29, 1, '1111.00', 1, 1, '33.33', 1, '0.00', '0.000', 0, '1077.67', '1077.67', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '238.00', NULL, '1673.81', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(18, 36, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1402.48', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(19, 38, 1, '100.00', 1, 15, '0.00', 1, '0.00', '0.000', 0, '100.00', '100.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '100.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '269.46', NULL, '1671.94', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(20, 38, 1, '100.00', 1, 15, '0.00', 1, '0.00', '0.000', 0, '100.00', '100.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '100.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '269.46', NULL, '1671.94', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(21, 38, 1, '100.00', 1, 15, '0.00', 1, '0.00', '0.000', 0, '100.00', '100.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '100.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '269.46', NULL, '1671.94', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(22, 38, 1, '100.00', 1, 15, '0.00', 1, '0.00', '0.000', 0, '100.00', '100.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '100.00', '100.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '269.46', NULL, '1671.94', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(23, 39, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 4, '283.32', 5, '0.00', '1402.48', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '27.22', NULL, '1429.70', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(24, 39, 1, '400000.00', 1, 2, '20000.00', 1, '4.25', '0.000', 360, '380000.00', '380000.00', '2499.78', '1869.37', '559.58', '70.83', '0.00', '0.00', '0.00', '41.66', '41.66', '0.00', '95.00', '95.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '2499.78', 2, '1119.16', 4, '283.32', 5, '224.31', '1626.79', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '16139.22', NULL, '37766.01', '4.29', 0, 0, 0, 0, NULL, 'loan officer'),
(25, 40, 1, '0.00', 1, 1, NULL, 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', NULL, '0.00', NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, NULL, 2, NULL, 1, NULL, NULL, 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(26, 42, 1, '0.00', 1, 1, NULL, 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', NULL, '0.00', NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, NULL, 2, NULL, 1, NULL, NULL, 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(27, 43, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', NULL, '0.00', NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, NULL, 2, NULL, 1, NULL, NULL, 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(28, 43, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, '0.00', 2, '0.00', 1, '0.00', '0.00', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(29, 44, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, NULL, 2, NULL, 1, NULL, NULL, 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(30, 45, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', NULL, '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', NULL, 2, NULL, 2, NULL, 1, NULL, NULL, 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', NULL, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(31, 46, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '0.00', 2, '0.00', 2, '0.00', 1, '0.00', '0.00', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '0.00', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(32, 47, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', NULL, '1260.82', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(33, 51, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '27.22', NULL, '1288.04', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(34, 64, 1, '0.00', 1, 1, '0.00', 1, '0.00', '0.000', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.22', 2, '1261.04', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(35, 65, 1, '0.00', 0, 1, '0.00', 1, '0.00', '1.250', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '1.47', 2, '1262.29', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(36, 65, 1, '0.00', 0, 1, '0.00', 1, '0.00', '1.250', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '1.47', 2, '1262.29', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(37, 65, 1, '0.00', 0, 1, '0.00', 1, '0.00', '1.250', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '23.69', 2, '1284.51', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(38, 65, 1, '0.00', 0, 1, '0.00', 1, '0.00', '1.250', 0, '0.00', '0.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '1.25', 2, '1262.07', '0.00', 0, 0, 0, 0, NULL, 'loan officer'),
(39, 66, 1, '1000000.00', 1, 1, '30000.00', 1, '0.00', '0.000', 0, '970000.00', '970000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', 0, '31260.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(40, 66, 1, '1000000.00', 1, 8, '35000.00', 1, '0.00', '0.000', 0, '965000.00', '965000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '96.50', '96.50', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', 0, '36260.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(41, 66, 1, '1000000.00', 1, 8, '35000.00', 1, '5.00', '1.250', 360, '965000.00', '965000.00', '5875.49', '5245.08', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '96.50', '96.50', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '5875.49', 2, '1119.16', 2, '141.66', 1, '135.70', '1396.52', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '21588.75', 3, '57985.27', '5.05', 0, 0, 0, 0, NULL, 'loan officer'),
(42, 69, 1, '1000000.00', 1, 1, '30000.00', 1, '0.00', '0.000', 0, '970000.00', '970000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', 0, '31260.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(43, 69, 1, '1000000.00', 1, 1, '30000.00', 1, '0.00', '0.000', 0, '970000.00', '970000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', 0, '31260.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(44, 69, 1, '1000000.00', 1, 1, '30000.00', 1, '0.00', '0.000', 0, '970000.00', '970000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '52288.00', 2, '83548.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(45, 69, 1, '1000000.00', 1, 1, '30000.00', 1, '0.00', '0.000', 0, '970000.00', '970000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '52288.00', 2, '83548.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(46, 69, 1, '1000000.00', 1, 1, '30000.00', 1, '0.00', '0.000', 0, '970000.00', '970000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '52288.00', 2, '83548.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(47, 69, 1, '1000000.00', 1, 1, '30000.00', 1, '0.00', '0.000', 0, '970000.00', '970000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '52288.00', 2, '83548.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(48, 69, 1, '1000000.00', 1, 1, '30000.00', 1, '0.00', '0.000', 0, '970000.00', '970000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '52288.00', 2, '83548.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(49, 69, 1, '1000000.00', 1, 1, '30000.00', 1, '0.00', '0.000', 0, '970000.00', '970000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '52288.00', 2, '83548.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(50, 69, 1, '1000000.00', 1, 1, '30000.00', 1, '4.50', '1.250', 12, '970000.00', '970000.00', '83447.58', '82817.17', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '83447.58', 2, '1119.16', 2, '141.66', 1, '121.25', '1382.07', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '64413.00', 2, '95795.07', '20.07', 0, 0, 0, 0, NULL, 'loan officer'),
(51, 90, 1, '400000.00', 1, 2, '20000.00', 1, '0.00', '0.000', 0, '380000.00', '380000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '95.00', '95.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', 1, '21260.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(52, 90, 1, '400000.00', 1, 2, '20000.00', 1, '0.00', '0.000', 0, '380000.00', '380000.00', '630.41', '0.00', '559.58', '70.83', '0.00', '0.00', '0.00', '10.51', '10.51', '0.00', '95.00', '95.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '630.41', 2, '1119.16', 2, '141.66', 1, '0.00', '1260.82', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', 1, '21260.82', '12.00', 0, 0, 0, 0, NULL, 'loan officer'),
(53, 90, 1, '400000.00', 1, 2, '20000.00', 1, '4.25', '0.000', 360, '380000.00', '380000.00', '2499.78', '1869.37', '559.58', '70.83', '0.00', '0.00', '0.00', '41.66', '41.66', '0.00', '95.00', '95.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '2499.78', 2, '1119.16', 2, '141.66', 1, '44.86', '1305.68', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', 1, '21305.68', '4.29', 0, 0, 0, 0, NULL, 'loan officer'),
(54, 90, 1, '400000.00', 1, 2, '20000.00', 1, '4.25', '0.000', 360, '380000.00', '380000.00', '2775.28', '1869.37', '559.58', '70.83', '0.00', '231.17', '0.00', '46.25', '46.25', '0.00', '95.00', '95.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '2775.28', 2, '1119.16', 2, '141.66', 1, '44.86', '1305.68', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', 1, '21305.68', '4.30', 0, 0, 0, 0, NULL, 'loan officer'),
(55, 90, 1, '400000.00', 1, 2, '20000.00', 1, '4.25', '0.000', 360, '380000.00', '380000.00', '2775.28', '1869.37', '559.58', '70.83', '0.00', '231.17', '0.00', '46.25', '46.25', '0.00', '95.00', '95.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '2775.28', 2, '1119.16', 2, '141.66', 1, '44.86', '1305.68', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', 1, '21305.68', '4.30', 0, 0, 0, 0, NULL, 'loan officer'),
(56, 90, 1, '400000.00', 1, 4, '80000.00', 1, '4.25', '0.000', 360, '320000.00', '320000.00', '2204.62', '1574.21', '559.58', '70.83', '0.00', '0.00', '0.00', '36.74', '36.74', '0.00', '80.00', '80.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '2204.62', 2, '1119.16', 2, '141.66', 1, '37.78', '1298.60', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '2000.00', 5, '83298.60', '4.29', 0, 0, 0, 0, NULL, 'loan officer'),
(57, 90, 1, '400000.00', 0, 2, '20000.00', 1, '4.25', '0.000', 360, '380000.00', '380000.00', '2499.78', '1869.37', '559.58', '70.83', '0.00', '231.17', '0.00', '41.66', '41.66', '0.00', '95.00', '95.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '2499.78', 2, '1119.16', 2, '141.66', 1, '44.86', '1305.68', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '2000.00', 5, '23305.68', '4.34', 0, 0, 0, 0, NULL, 'loan officer'),
(58, 93, 1, '400000.00', 1, 1, '12000.00', 1, '4.50', '0.000', 360, '388000.00', '388000.00', '2746.35', '1965.94', '559.58', '70.83', '0.00', '307.17', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '2746.35', 2, '1119.16', 2, '141.66', 1, '48.50', '1309.32', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '0.00', 1, '13309.32', '4.75', 0, 0, 0, 0, NULL, 'loan officer'),
(59, 93, 1, '400000.00', 1, 1, '12000.00', 1, '4.50', '1.000', 360, '388000.00', '388000.00', '2903.52', '1965.94', '559.58', '70.83', '0.00', '307.17', '0.00', '0.00', '0.00', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '2903.52', 2, '1119.16', 2, '141.66', 1, '48.50', '1309.32', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '12215.00', 5, '25524.32', '5.01', 0, 0, 0, 0, NULL, 'loan officer'),
(60, 93, 1, '400000.00', 1, 1, '12000.00', 1, '4.50', '1.000', 360, '388000.00', '388000.00', '3259.18', '1965.94', '559.58', '70.83', '0.00', '662.83', '0.00', '54.32', '54.32', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '3259.18', 2, '1119.16', 2, '141.66', 1, '48.50', '1309.32', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '12215.00', 5, '25524.32', '4.74', 0, 0, 0, 0, NULL, 'loan officer'),
(61, 93, 1, '400000.00', 1, 1, '12000.00', 1, '4.50', '1.000', 360, '388000.00', '388000.00', '3259.18', '1965.94', '559.58', '70.83', '0.00', '662.83', '0.00', '54.32', '54.32', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '3259.18', 3, '1678.74', 14, '991.62', 15, '727.50', '3397.86', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '12215.00', 5, '27612.86', '4.79', 0, 0, 0, 0, NULL, 'loan officer'),
(62, 93, 1, '400000.00', 1, 1, '12000.00', 1, '4.50', '1.000', 360, '388000.00', '388000.00', '3259.18', '1965.94', '559.58', '70.83', '0.00', '614.33', '0.00', '54.32', '54.32', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '3259.18', 3, '1678.74', 14, '991.62', 15, '727.50', '3397.86', 'Earnest Money', '0.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 0, '12215.00', 5, '27612.86', '4.79', 0, 0, 0, 0, NULL, 'loan officer'),
(63, 93, 1, '400000.00', 1, 1, '12000.00', 1, '4.50', '1.000', 360, '388000.00', '388000.00', '3210.68', '1965.94', '559.58', '70.83', '0.00', '614.33', '0.00', '53.51', '53.51', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '3210.68', 3, '1678.74', 14, '991.62', 15, '727.50', '3397.86', 'Earnest Money', '1000.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 1000, '12215.00', 5, '26612.86', '4.77', 0, 0, 0, 0, NULL, 'loan officer'),
(64, 93, 1, '400000.00', 1, 1, '12000.00', 1, '4.50', '1.000', 360, '388000.00', '388000.00', '3210.68', '1965.94', '559.58', '70.83', '0.00', '614.33', '0.00', '53.51', '53.51', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '3210.68', 3, '1678.74', 14, '991.62', 15, '727.50', '3397.86', 'Earnest Money', '1000.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 1000, '12215.00', 5, '26612.86', '4.77', 0, 0, 0, 0, NULL, 'loan officer'),
(65, 93, 1, '400000.00', 1, 1, '12000.00', 1, '4.50', '1.000', 360, '388000.00', '388000.00', '3210.68', '1965.94', '559.58', '70.83', '0.00', '614.33', '0.00', '53.51', '53.51', '0.00', '97.00', '97.00', '0.00', '0.000', 0, '0.00', '0.00', '0.00', '0.00', '3210.68', 3, '1678.74', 14, '991.62', 15, '727.50', '3397.86', 'Earnest Money', '1000.00', 'Option Fee', '0.00', 'Appraisal', '0.00', '', '0.00', 1000, '12215.00', 5, '26612.86', '5.51', 0, 0, 0, 0, NULL, 'loan officer');

-- --------------------------------------------------------

--
-- Table structure for table `login_master`
--

CREATE TABLE `login_master` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(25) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `mypartner_master` (
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

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `planname` varchar(100) NOT NULL,
  `planamount` bigint(10) NOT NULL,
  `planstartdate` date NOT NULL,
  `planenddate` date NOT NULL,
  `signupamount` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `planname`, `planamount`, `planstartdate`, `planenddate`, `signupamount`) VALUES
(1, 'Monthly', 1200, '2017-11-11', '0000-00-00', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `prepaids`
--

CREATE TABLE `prepaids` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `monthsOfTax` int(11) DEFAULT NULL,
  `monthsOfInsurance` int(11) DEFAULT NULL,
  `daysOfInterest` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prepaids`
--

INSERT INTO `prepaids` (`id`, `userId`, `monthsOfTax`, `monthsOfInsurance`, `daysOfInterest`) VALUES
(1, 101, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rl_loan_option_closing_cost`
--

CREATE TABLE `rl_loan_option_closing_cost` (
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
  `isPpe` tinyint(1) NOT NULL DEFAULT '0',
  `addToLoan` tinyint(1) NOT NULL DEFAULT '0',
  `isVisible` tinyint(1) NOT NULL DEFAULT '1',
  `lastUpdatedBy` varchar(100) DEFAULT NULL,
  `percentageTotal` decimal(15,3) DEFAULT '0.000',
  `total` decimal(15,3) DEFAULT '0.000',
  `category` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rl_loan_option_closing_cost`
--

INSERT INTO `rl_loan_option_closing_cost` (`id`, `loanId`, `loanOptionId`, `rowNo`, `name`, `type`, `mode`, `value`, `percentage`, `isApr`, `isPpe`, `addToLoan`, `isVisible`, `lastUpdatedBy`, `percentageTotal`, `total`, `category`) VALUES
(0, 64, 1, 1, 'Bond Review', 1, 2, '0.220', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '0.220', 0),
(0, 64, 1, 2, 'Title Insurance ', 1, 2, '0.000', '2.220', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 64, 1, 3, 'Bond Fee', 1, 2, '0.000', '2.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 64, 1, 4, 'Discount Points', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 65, 1, 1, 'Discount Points', 1, 2, '1.250', '1.250', 0, 0, 1, 1, 'loan officer', '0.000', '1.250', 2),
(0, 65, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 4),
(0, 65, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 5),
(0, 65, 1, 4, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 3),
(0, 66, 1, 1, 'Origination Fee', 1, 2, '0.000', '1.250', 0, 0, 0, 1, 'loan officer', '12062.500', '12062.500', 0),
(0, 66, 1, 2, 'Title Insurance ', 1, 2, '9525.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '9525.000', 1),
(0, 66, 1, 3, 'Discount Points', 1, 2, '1.250', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '1.250', 2),
(0, 66, 1, 4, 'Application Fee', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 66, 1, 5, 'Appraisal Fee', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 69, 1, 1, 'Discount Points', 1, 2, '0.000', '1.250', 0, 0, 0, 1, 'loan officer', '12125.000', '12125.000', 2),
(0, 69, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 1, 'loan officer', '20855.000', '20855.000', 4),
(0, 69, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 1, 'loan officer', '4850.000', '4850.000', 5),
(0, 69, 1, 4, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 1, 'loan officer', '16975.000', '16975.000', 3),
(0, 69, 1, 5, 'Title Insurance ', 1, 2, '9575.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '9575.000', 1),
(0, 69, 1, 6, 'Admin Fee', 1, 2, '33.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '33.000', 0),
(0, 90, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 90, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 90, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 90, 1, 4, 'Bond Review', 1, 2, '2000.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '2000.000', 0),
(0, 93, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 93, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 93, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 93, 1, 4, 'Assignment Fee', 1, 2, '3880.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3880.000', 0),
(0, 93, 1, 5, 'Discount Points', 1, 2, '0.000', '1.000', 1, 0, 0, 1, 'loan officer', '3880.000', '3880.000', 2),
(0, 93, 1, 6, 'Processing Fee', 1, 2, '700.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '700.000', 0),
(0, 93, 1, 7, 'Title Insurance ', 1, 2, '3755.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3755.000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rl_loan_option_closing_cost_history`
--

CREATE TABLE `rl_loan_option_closing_cost_history` (
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
  `isPpe` tinyint(1) NOT NULL DEFAULT '0',
  `addToLoan` tinyint(1) NOT NULL DEFAULT '0',
  `isVisible` tinyint(1) NOT NULL DEFAULT '1',
  `lastUpdatedBy` varchar(100) DEFAULT NULL,
  `percentageTotal` decimal(15,3) DEFAULT '0.000',
  `total` decimal(15,3) DEFAULT '0.000',
  `category` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rl_loan_option_closing_cost_history`
--

INSERT INTO `rl_loan_option_closing_cost_history` (`id`, `loanId`, `loanOptionId`, `rowNo`, `name`, `type`, `mode`, `value`, `percentage`, `isApr`, `isPpe`, `addToLoan`, `isVisible`, `lastUpdatedBy`, `percentageTotal`, `total`, `category`) VALUES
(0, 152, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 8, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 15, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 8, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 15, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 8, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 15, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 152, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 8, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 152, 1, 15, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 155, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 155, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 155, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 155, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 2, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 2, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 2, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 7, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 7, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, NULL, '0.000', '0.000', 0),
(0, 7, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 7, 1, 15, '', 1, 2, NULL, NULL, 0, 0, 0, 1, NULL, '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 1, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 2, 'Title Insurance', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 8, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 1, 1, 15, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 16, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 2, 'Origination Fee', 1, 1, '0.000', NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 16, 1, 15, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, 'customer', '0.000', '0.000', 0),
(0, 20, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 2, 'Origination Fee', 1, 1, '0.000', NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 20, 1, 15, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 2, 'Origination Fee', 1, 1, '0.000', NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 27, 1, 15, 'Title Insurance', 1, 2, '0.000', NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 2, 'Origination Fee', 1, 1, '0.000', NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 15, 'Title Insurance', 1, 2, '238.000', NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 2, 'Origination Fee', 1, 1, '0.000', NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', NULL, 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 6, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 7, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 8, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 9, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 10, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 11, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 12, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 13, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 14, '', 1, 2, NULL, NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 15, 'Title Insurance', 1, 2, '238.000', NULL, 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 2, 'Origination Fee', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 8, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 15, 'Title Insurance', 1, 2, '238.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 2, 'Origination Fee', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 8, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 15, 'Title Insurance', 1, 2, '238.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 2, 'Origination Fee', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 8, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 15, 'Title Insurance', 1, 2, '238.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 2, 'Origination Fee', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 8, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 15, 'Title Insurance', 1, 2, '238.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 1, 'Discount Points', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 2, 'Origination Fee', 1, 1, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 3, 'UFMIP (FHA)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 4, 'VA - (Purchase)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 5, 'VA - (Re-Finance)', 1, 1, '0.000', '0.000', 0, 0, 0, 0, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 6, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 7, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 8, 'jithin', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 9, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 10, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 11, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 12, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 13, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 14, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 29, 1, 15, 'Title Insurance', 1, 2, '238.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 36, 1, 1, 'City/County Deed Tax Stamp', 1, 2, '0.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 36, 1, 1, '', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 38, 1, 1, 'Bond Review', 1, 2, '238.000', '0.020', 1, 0, 0, 1, 'loan officer', '0.020', '238.020', 0),
(0, 38, 1, 2, 'Title Insurance ', 1, 2, '22.220', '2.220', 0, 0, 0, 1, 'loan officer', '2.220', '24.440', 0),
(0, 38, 1, 3, 'Bond Fee', 1, 2, '0.000', '2.000', 0, 0, 0, 1, 'loan officer', '2.000', '2.000', 0),
(0, 38, 1, 4, 'Certification Fee', 1, 2, '5.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '5.000', 0),
(0, 38, 1, 1, 'Bond Review', 1, 2, '238.000', '0.020', 1, 0, 0, 1, 'loan officer', '0.020', '238.020', 0),
(0, 38, 1, 2, 'Title Insurance ', 1, 2, '22.220', '2.220', 0, 0, 0, 1, 'loan officer', '2.220', '24.440', 0),
(0, 38, 1, 3, 'Bond Fee', 1, 2, '0.000', '2.000', 0, 0, 0, 1, 'loan officer', '2.000', '2.000', 0),
(0, 38, 1, 4, 'Certification Fee', 1, 2, '5.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '5.000', 0),
(0, 39, 1, 1, 'Bond Review', 1, 2, '0.000', '0.020', 1, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 39, 1, 2, 'Title Insurance ', 1, 2, '22.220', '2.220', 0, 0, 0, 1, 'loan officer', '0.000', '22.220', 0),
(0, 39, 1, 3, 'Bond Fee', 1, 2, '0.000', '2.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 39, 1, 4, 'Certification Fee', 1, 2, '5.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '5.000', 0),
(0, 39, 1, 1, 'Bond Review', 1, 2, '0.000', '0.020', 1, 0, 0, 1, 'loan officer', '76.000', '76.000', 0),
(0, 39, 1, 2, 'Title Insurance ', 1, 2, '22.220', '2.220', 0, 0, 0, 1, 'loan officer', '8436.000', '8458.220', 0),
(0, 39, 1, 3, 'Bond Fee', 1, 2, '0.000', '2.000', 0, 0, 0, 1, 'loan officer', '7600.000', '7600.000', 0),
(0, 39, 1, 4, 'Certification Fee', 1, 2, '5.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '5.000', 0),
(0, 51, 1, 1, 'Bond Review', 1, 2, '0.000', '0.020', 1, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 51, 1, 2, 'Title Insurance ', 1, 2, '22.220', '2.220', 0, 0, 0, 1, 'loan officer', '0.000', '22.220', 0),
(0, 51, 1, 3, 'Bond Fee', 1, 2, '0.000', '2.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 51, 1, 4, 'Certification Fee', 1, 2, '5.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '5.000', 0),
(0, 64, 1, 1, 'Bond Review', 1, 2, '0.220', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '0.220', 0),
(0, 64, 1, 2, 'Title Insurance ', 1, 2, '0.000', '2.220', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 64, 1, 3, 'Bond Fee', 1, 2, '0.000', '2.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 64, 1, 4, 'Discount Points', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 65, 1, 1, 'Bond Review', 1, 2, '0.220', '1.250', 1, 0, 0, 1, 'loan officer', '0.000', '0.220', 0),
(0, 65, 1, 2, 'Title Insurance ', 1, 2, '0.000', '2.220', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 65, 1, 3, 'Bond Fee', 1, 2, '0.000', '2.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 65, 1, 4, 'Discount Points', 1, 2, '1.250', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '1.250', 0),
(0, 65, 1, 1, 'Bond Review', 1, 2, '0.220', '1.250', 1, 1, 1, 1, 'loan officer', '0.000', '0.220', 0),
(0, 65, 1, 2, 'Title Insurance ', 1, 2, '0.000', '2.220', 0, 0, 1, 1, 'loan officer', '0.000', '0.000', 0),
(0, 65, 1, 3, 'Bond Fee', 1, 2, '0.000', '2.000', 0, 0, 1, 1, 'loan officer', '0.000', '0.000', 0),
(0, 65, 1, 4, 'Discount Points', 1, 2, '1.250', '0.000', 0, 0, 1, 1, 'loan officer', '0.000', '1.250', 0),
(0, 65, 1, 1, 'VA - (Purchase)', 1, 2, '0.220', '1.250', 1, 1, 1, 1, 'loan officer', '0.000', '0.220', 0),
(0, 65, 1, 2, 'VA - (Re-Finance)', 1, 2, '22.220', '2.220', 0, 0, 1, 1, 'loan officer', '0.000', '22.220', 0),
(0, 65, 1, 3, 'UFMIP (FHA)', 1, 2, '0.000', '2.000', 0, 0, 1, 1, 'loan officer', '0.000', '0.000', 0),
(0, 65, 1, 4, 'Discount Points', 1, 2, '1.250', '0.000', 0, 0, 1, 1, 'loan officer', '0.000', '1.250', 0),
(0, 65, 1, 1, 'Discount Points', 1, 2, '1.250', '1.250', 0, 0, 1, 1, 'loan officer', '0.000', '1.250', 2),
(0, 65, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 4),
(0, 65, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 5),
(0, 65, 1, 4, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 3),
(0, 66, 1, 1, 'Origination Fee', 1, 2, '0.000', '1.250', 0, 0, 0, 1, 'loan officer', '12062.500', '12062.500', 0),
(0, 66, 1, 2, 'Title Insurance ', 1, 2, '9525.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '9525.000', 1),
(0, 66, 1, 3, 'Discount Points', 1, 2, '1.250', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '1.250', 2),
(0, 66, 1, 4, 'Application Fee', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 66, 1, 5, 'Appraisal Fee', 1, 2, '0.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '0.000', 0),
(0, 69, 1, 1, 'Discount Points', 1, 2, '0.000', '0.000', 0, 0, 1, 1, 'loan officer', '0.000', '0.000', 2),
(0, 69, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 1, 'loan officer', '20855.000', '20855.000', 4),
(0, 69, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 1, 'loan officer', '4850.000', '4850.000', 5),
(0, 69, 1, 4, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 1, 'loan officer', '16975.000', '16975.000', 3),
(0, 69, 1, 5, 'Title Insurance ', 1, 2, '9575.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '9575.000', 1),
(0, 69, 1, 6, 'Admin Fee', 1, 2, '33.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '33.000', 0),
(0, 69, 1, 1, 'Discount Points', 1, 2, '0.000', '0.000', 0, 0, 1, 1, 'loan officer', '0.000', '0.000', 2),
(0, 69, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 1, 'loan officer', '20855.000', '20855.000', 4),
(0, 69, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 1, 'loan officer', '4850.000', '4850.000', 5),
(0, 69, 1, 4, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 1, 'loan officer', '16975.000', '16975.000', 3);
INSERT INTO `rl_loan_option_closing_cost_history` (`id`, `loanId`, `loanOptionId`, `rowNo`, `name`, `type`, `mode`, `value`, `percentage`, `isApr`, `isPpe`, `addToLoan`, `isVisible`, `lastUpdatedBy`, `percentageTotal`, `total`, `category`) VALUES
(0, 69, 1, 5, 'Title Insurance ', 1, 2, '9575.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '9575.000', 1),
(0, 69, 1, 6, 'Admin Fee', 1, 2, '33.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '33.000', 0),
(0, 69, 1, 1, 'Discount Points', 1, 2, '0.000', '0.000', 0, 0, 1, 1, 'loan officer', '0.000', '0.000', 2),
(0, 69, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 1, 'loan officer', '20855.000', '20855.000', 4),
(0, 69, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 1, 'loan officer', '4850.000', '4850.000', 5),
(0, 69, 1, 4, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 1, 'loan officer', '16975.000', '16975.000', 3),
(0, 69, 1, 5, 'Title Insurance ', 1, 2, '9575.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '9575.000', 1),
(0, 69, 1, 6, 'Admin Fee', 1, 2, '33.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '33.000', 0),
(0, 69, 1, 1, 'Discount Points', 1, 2, '0.000', '0.000', 0, 0, 1, 1, 'loan officer', '0.000', '0.000', 2),
(0, 69, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 1, 'loan officer', '20855.000', '20855.000', 4),
(0, 69, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 1, 'loan officer', '4850.000', '4850.000', 5),
(0, 69, 1, 4, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 1, 'loan officer', '16975.000', '16975.000', 3),
(0, 69, 1, 5, 'Title Insurance ', 1, 2, '9575.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '9575.000', 1),
(0, 69, 1, 6, 'Admin Fee', 1, 2, '33.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '33.000', 0),
(0, 69, 1, 1, 'Discount Points', 1, 2, '0.000', '0.000', 0, 0, 1, 1, 'loan officer', '0.000', '0.000', 2),
(0, 69, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 1, 'loan officer', '20855.000', '20855.000', 4),
(0, 69, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 1, 'loan officer', '4850.000', '4850.000', 5),
(0, 69, 1, 4, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 1, 'loan officer', '16975.000', '16975.000', 3),
(0, 69, 1, 5, 'Title Insurance ', 1, 2, '9575.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '9575.000', 1),
(0, 69, 1, 6, 'Admin Fee', 1, 2, '33.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '33.000', 0),
(0, 69, 1, 1, 'Discount Points', 1, 2, '0.000', '0.000', 0, 0, 1, 1, 'loan officer', '0.000', '0.000', 2),
(0, 69, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 1, 'loan officer', '20855.000', '20855.000', 4),
(0, 69, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 1, 'loan officer', '4850.000', '4850.000', 5),
(0, 69, 1, 4, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 1, 'loan officer', '16975.000', '16975.000', 3),
(0, 69, 1, 5, 'Title Insurance ', 1, 2, '9575.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '9575.000', 1),
(0, 69, 1, 6, 'Admin Fee', 1, 2, '33.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '33.000', 0),
(0, 69, 1, 1, 'Discount Points', 1, 2, '0.000', '1.250', 0, 0, 0, 1, 'loan officer', '12125.000', '12125.000', 2),
(0, 69, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 1, 'loan officer', '20855.000', '20855.000', 4),
(0, 69, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 1, 'loan officer', '4850.000', '4850.000', 5),
(0, 69, 1, 4, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 1, 'loan officer', '16975.000', '16975.000', 3),
(0, 69, 1, 5, 'Title Insurance ', 1, 2, '9575.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '9575.000', 1),
(0, 69, 1, 6, 'Admin Fee', 1, 2, '33.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '33.000', 0),
(0, 90, 1, 1, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 90, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 90, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 90, 1, 1, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 90, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 90, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 90, 1, 1, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 90, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 90, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 90, 1, 1, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 90, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 90, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 90, 1, 1, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 90, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 90, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 90, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 90, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 90, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 90, 1, 4, 'Bond Review', 1, 2, '2000.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '2000.000', 0),
(0, 90, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 90, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 90, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 90, 1, 4, 'Bond Review', 1, 2, '2000.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '2000.000', 0),
(0, 93, 1, 1, 'UFMIP (FHA)', 1, 2, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 93, 1, 2, 'VA - (Purchase)', 1, 2, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 93, 1, 3, 'VA - (Re-Finance)', 1, 2, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 93, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 93, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 93, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 93, 1, 4, 'Assignment Fee', 1, 2, '3880.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '3880.000', 0),
(0, 93, 1, 5, 'Discount Points', 1, 2, '0.000', '1.000', 0, 0, 0, 1, 'loan officer', '3880.000', '3880.000', 2),
(0, 93, 1, 6, 'Processing Fee', 1, 2, '700.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '700.000', 0),
(0, 93, 1, 7, 'Title Insurance ', 1, 2, '3755.000', '0.000', 0, 0, 0, 1, 'loan officer', '0.000', '3755.000', 1),
(0, 93, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 93, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 93, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 93, 1, 4, 'Assignment Fee', 1, 2, '3880.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3880.000', 0),
(0, 93, 1, 5, 'Discount Points', 1, 2, '0.000', '1.000', 1, 0, 0, 1, 'loan officer', '3880.000', '3880.000', 2),
(0, 93, 1, 6, 'Processing Fee', 1, 2, '700.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '700.000', 0),
(0, 93, 1, 7, 'Title Insurance ', 1, 2, '3755.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3755.000', 1),
(0, 93, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 93, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 93, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 93, 1, 4, 'Assignment Fee', 1, 2, '3880.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3880.000', 0),
(0, 93, 1, 5, 'Discount Points', 1, 2, '0.000', '1.000', 1, 0, 0, 1, 'loan officer', '3880.000', '3880.000', 2),
(0, 93, 1, 6, 'Processing Fee', 1, 2, '700.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '700.000', 0),
(0, 93, 1, 7, 'Title Insurance ', 1, 2, '3755.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3755.000', 1),
(0, 93, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 93, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 93, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 93, 1, 4, 'Assignment Fee', 1, 2, '3880.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3880.000', 0),
(0, 93, 1, 5, 'Discount Points', 1, 2, '0.000', '1.000', 1, 0, 0, 1, 'loan officer', '3880.000', '3880.000', 2),
(0, 93, 1, 6, 'Processing Fee', 1, 2, '700.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '700.000', 0),
(0, 93, 1, 7, 'Title Insurance ', 1, 2, '3755.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3755.000', 1),
(0, 93, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 93, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 93, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 93, 1, 4, 'Assignment Fee', 1, 2, '3880.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3880.000', 0),
(0, 93, 1, 5, 'Discount Points', 1, 2, '0.000', '1.000', 1, 0, 0, 1, 'loan officer', '3880.000', '3880.000', 2),
(0, 93, 1, 6, 'Processing Fee', 1, 2, '700.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '700.000', 0),
(0, 93, 1, 7, 'Title Insurance ', 1, 2, '3755.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3755.000', 1),
(0, 93, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 93, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 93, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 93, 1, 4, 'Assignment Fee', 1, 2, '3880.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3880.000', 0),
(0, 93, 1, 5, 'Discount Points', 1, 2, '0.000', '1.000', 1, 0, 0, 1, 'loan officer', '3880.000', '3880.000', 2),
(0, 93, 1, 6, 'Processing Fee', 1, 2, '700.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '700.000', 0),
(0, 93, 1, 7, 'Title Insurance ', 1, 2, '3755.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3755.000', 1),
(0, 93, 1, 1, 'UFMIP (FHA)', 1, 1, '0.000', '1.750', 0, 0, 0, 0, 'loan officer', NULL, NULL, 3),
(0, 93, 1, 2, 'VA - (Purchase)', 1, 1, '0.000', '2.150', 0, 0, 0, 0, 'loan officer', NULL, NULL, 4),
(0, 93, 1, 3, 'VA - (Re-Finance)', 1, 1, '0.000', '0.500', 0, 0, 0, 0, 'loan officer', NULL, NULL, 5),
(0, 93, 1, 4, 'Assignment Fee', 1, 2, '3880.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3880.000', 0),
(0, 93, 1, 5, 'Discount Points', 1, 2, '0.000', '1.000', 1, 0, 0, 1, 'loan officer', '3880.000', '3880.000', 2),
(0, 93, 1, 6, 'Processing Fee', 1, 2, '700.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '700.000', 0),
(0, 93, 1, 7, 'Title Insurance ', 1, 2, '3755.000', '0.000', 1, 0, 0, 1, 'loan officer', '0.000', '3755.000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
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

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state_table`
--

CREATE TABLE `state_table` (
  `id` int(10) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `title_insurance_basic_premium_rates` (
  `id` int(11) NOT NULL,
  `policiesUpToAndIncluding` decimal(15,2) DEFAULT NULL,
  `basicPremium` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `title_insurance_range` (
  `id` int(11) NOT NULL,
  `policyRangeFrom` decimal(15,2) DEFAULT NULL,
  `policyRangeTo` decimal(15,2) DEFAULT NULL,
  `subtract` decimal(15,2) DEFAULT NULL,
  `multiplyBy` decimal(15,5) DEFAULT NULL,
  `add` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `trusted_partner` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `url_master` (
  `id` int(10) NOT NULL,
  `loanofficer_id` int(10) NOT NULL,
  `url` varchar(250) NOT NULL,
  `shorturl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `url_master`
--

INSERT INTO `url_master` (`id`, `loanofficer_id`, `url`, `shorturl`) VALUES
(1, 1, 'http://localhost:8080/1', 'b0x2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `closing_cost_template`
--
ALTER TABLE `closing_cost_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `closing_cost_type`
--
ALTER TABLE `closing_cost_type`
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
-- AUTO_INCREMENT for table `borrowers`
--
ALTER TABLE `borrowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `bpmi`
--
ALTER TABLE `bpmi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `bpmi_adjustments`
--
ALTER TABLE `bpmi_adjustments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `businesstype_master`
--
ALTER TABLE `businesstype_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `closing_cost_template`
--
ALTER TABLE `closing_cost_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `closing_cost_type`
--
ALTER TABLE `closing_cost_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `customer_master`
--
ALTER TABLE `customer_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `email_master`
--
ALTER TABLE `email_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `email_setting`
--
ALTER TABLE `email_setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `loanofficer_master`
--
ALTER TABLE `loanofficer_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `loan_options`
--
ALTER TABLE `loan_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `loan_options_history`
--
ALTER TABLE `loan_options_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `login_master`
--
ALTER TABLE `login_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `prepaids`
--
ALTER TABLE `prepaids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `title_insurance_basic_premium_rates`
--
ALTER TABLE `title_insurance_basic_premium_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `title_insurance_range`
--
ALTER TABLE `title_insurance_range`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `trusted_partner`
--
ALTER TABLE `trusted_partner`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `url_master`
--
ALTER TABLE `url_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
