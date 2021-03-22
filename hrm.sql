-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2021 at 08:00 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dhanmondi', '2021-03-07 04:51:12', '2021-03-07 04:51:12', NULL),
(2, 'Uttara', '2021-03-07 05:18:04', '2021-03-07 05:18:04', NULL),
(3, 'Mirpur', '2021-03-07 05:18:11', '2021-03-07 05:18:11', NULL),
(4, 'Gulshan', '2021-03-07 05:18:39', '2021-03-07 05:18:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `customers_id` int(10) UNSIGNED NOT NULL,
  `rents_id` int(10) UNSIGNED NOT NULL,
  `collectionNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `isDeduction` smallint(6) NOT NULL DEFAULT 0,
  `collectionType` enum('Cash','Cheque','P.O') COLLATE utf8_unicode_ci NOT NULL,
  `chequeNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bankName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branchName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `collectionDate` date NOT NULL,
  `fromAdvance` tinyint(4) NOT NULL DEFAULT 0,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `customers_id`, `rents_id`, `collectionNo`, `amount`, `isDeduction`, `collectionType`, `chequeNo`, `bankName`, `branchName`, `poNo`, `poName`, `poCode`, `note`, `collectionDate`, `fromAdvance`, `users_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'C001', '3000.00', 0, 'Cash', '', '', '', '', '', '', 'Remark', '2021-03-08', 0, 2, '2021-03-08 03:33:06', '2021-03-08 03:33:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cellNo` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `contactPerson` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactPersonCellNo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fatherName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `motherName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spouseName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nidNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passportNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailingAddress` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presentAddress` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanentAddress` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `birthCertificate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cContactPerson` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cContactPersonCellNo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cCellNo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPhoneNo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cFaxNo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cEmail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cAddress` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cNote` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL,
  `customerType` enum('Person','Company') COLLATE utf8_unicode_ci NOT NULL,
  `entryDate` date NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `cellNo`, `phoneNo`, `email`, `dob`, `contactPerson`, `contactPersonCellNo`, `fatherName`, `motherName`, `spouseName`, `nidNo`, `passportNo`, `mailingAddress`, `presentAddress`, `permanentAddress`, `birthCertificate`, `passport`, `photo`, `companyName`, `designation`, `cContactPerson`, `cContactPersonCellNo`, `cCellNo`, `cPhoneNo`, `cFaxNo`, `cEmail`, `cAddress`, `cNote`, `active`, `customerType`, `entryDate`, `users_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Shimul Hossain', '01721471287', '01538836990', 'shimul000@gmail.com', '1995-02-07', 'Mahadi ', '01865168856', 'Md', 'Mrs', 'shimul', '2348548945', '87897948', '49/Dhanmondi', 'Dhanmondi', 'Pabna', NULL, 'customers/41898ae3dda2a07f59ef370bd8afbe1a.jpeg', 'customers/d201e660033010279846bdecdcb75ce0.jpeg', '', '', '', '', '', '', '', '', '', '', 'Yes', 'Person', '2021-03-07', 2, '2021-03-07 06:48:23', '2021-03-11 06:37:11', NULL),
(2, 'shohorab', '01865168856', '', 'shohorab@gmail.com', '1995-02-08', 'shimul', '01728546948', 'Md.', 'shohorbanu', 'shohorab', '156489484', '6494894794', 'senpara, mirpur 10', 'mirpur', 'thakurgaon', NULL, NULL, 'customers/7f861ff78ee8bfc2bafa952209f5fcaf.png', '', '', '', '', '', '', '', '', '', '', 'Yes', 'Person', '2021-03-08', 2, '2021-03-08 03:28:05', '2021-03-08 03:28:05', NULL),
(3, 'shimul', '01865148845', '87897847', 'test@gmail.com', '1995-02-08', 'sujan', '', 'md', 'mrs', 'shimu', '545496485', '784781451', '281/1', 'mirpur', 'dhaka', NULL, NULL, 'customers/78a4391805842c38582144b0f215f0d8.png', '', '', '', '', '', '', '', '', '', '', 'Yes', 'Person', '2021-03-08', 2, '2021-03-08 04:08:11', '2021-03-11 06:35:45', NULL),
(4, 'milon', '84845415849', '84845415', 'dnetbd131@gmail.com', '1995-02-08', 'mimi', '84784814854', 'md', 'miss', 'dagagdf', '8484515848', '848471548', '548484', '49494626', 'dhaka', NULL, NULL, '7f861ff78ee8bfc2bafa952209f5fcaf.png', '', '', '', '', '', '', '', '', '', '', 'Yes', 'Person', '2021-03-08', 2, '2021-03-08 04:09:27', '2021-03-11 03:13:06', '2021-03-11 03:13:06'),
(5, 'arif', '58484845548', '48484848445', 'dnetbd133@gmail.com', '1995-02-08', 'usha', '01728546948', 'md fazlul haque', 'shohorbanu', 'sujan', '8484887787', '989875454541', 'khuighiug8yg', 'dhaka', 'tangail', NULL, NULL, 'public//7f861ff78ee8bfc2bafa952209f5fcaf.png', '', '', '', '', '', '', '', '', '', '', 'Yes', 'Person', '2021-03-08', 2, '2021-03-08 04:14:53', '2021-03-11 03:13:01', '2021-03-11 03:13:01'),
(6, 'fdfdfd', '01865143845', '8789447847', 'arifulsff@gmail.com', '1995-02-08', 'shimul', '84784814854', 'Md.', 'shohorbanu', 'fdfdf', '8484515848', '989875454541', 'dffdfdfd', 'fdfdfd', 'fdfdfdf', NULL, NULL, 'public/images/7f861ff78ee8bfc2bafa952209f5fcaf.png', '', '', '', '', '', '', '', '', '', '', 'Yes', 'Person', '2021-03-08', 2, '2021-03-08 04:20:19', '2021-03-11 03:12:54', '2021-03-11 03:12:54'),
(7, 'Rana', '01865418845', '848465415', 'arifulsufdfd4@gmail.com', '1995-02-08', 'mimi', '01728546944', 'md ', 'miss', 'shohorab', '84845158483', '9898754545413', 'Mirpur-10', 'Dhaka', 'Comilla', NULL, NULL, 'customers/b31ff7bf9b5e6d6de1343b15038d32d1.jpeg', '', '', '', '', '', '', '', '', '', '', 'Yes', 'Person', '2021-03-08', 2, '2021-03-08 04:25:07', '2021-03-11 06:39:44', NULL),
(8, 'mahadi', '01749947152', '01749941795', 'mahadi@gmail.com', '1995-02-08', 'shimul', '01728546945', 'Md.', 'mrs', 'mahadi', '84848854848', '15648484515', 'mirpur', 'mirpur, dhaka', 'Faridpur', NULL, NULL, 'customers/bcd9d2d43b0d944ba177ec70c4f57dbf.jpeg', '', '', '', '', '', '', '', '', '', '', 'Yes', 'Person', '2021-03-11', 2, '2021-03-11 04:22:02', '2021-03-11 04:22:02', NULL),
(9, 'ariful sujan', '01728534754', '01731141577', 'arifulsujan@gmail.com', '1997-08-08', 'shimul', '01749941534', 'Md.', 'mrs', 'arif', '47889485546', '54548451', '281/1 , ahmed nagar, Mirpur-1', 'Dhaka', 'Tangail', NULL, NULL, 'customers/045b3de6ba4da6ad4bc0c116ef4bf233.jpeg', '', '', '', '', '', '', '', '', '', '', 'Yes', 'Person', '2021-03-11', 2, '2021-03-11 06:35:15', '2021-03-11 06:35:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenseitems`
--

CREATE TABLE `expenseitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `expenses_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `projects_id` int(10) UNSIGNED NOT NULL,
  `expenseNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(18,2) NOT NULL DEFAULT 0.00,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryDate` date NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flats`
--

CREATE TABLE `flats` (
  `id` int(10) UNSIGNED NOT NULL,
  `projects_id` int(10) UNSIGNED NOT NULL,
  `entryDate` date NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `floor` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `parking` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL,
  `parkingNo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` bigint(20) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flats`
--

INSERT INTO `flats` (`id`, `projects_id`, `entryDate`, `users_id`, `floor`, `type`, `parking`, `parkingNo`, `size`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2021-03-07', 2, 3, 2, 'Yes', '02', 4000, '3rd,B,4000 Sft', 0, '2021-03-07 05:23:15', '2021-03-07 05:23:15', NULL),
(2, 1, '2021-03-07', 2, 1, 1, 'No', '', 400, '1st,A,400 Sft', 0, '2021-03-07 05:24:32', '2021-03-07 06:05:32', '2021-03-07 06:05:32'),
(3, 1, '2021-03-07', 2, 1, 1, 'No', '', 400, '1st,A,400 Sft', 0, '2021-03-07 05:49:28', '2021-03-07 06:05:36', '2021-03-07 06:05:36'),
(4, 1, '2021-03-07', 2, 1, 1, 'Yes', '05', 400, '1st,A,400 Sft', 1, '2021-03-07 05:53:25', '2021-03-08 03:30:34', NULL),
(5, 3, '2021-03-11', 2, 4, 2, 'No', '', 500, '4th,B,500 Sft', 1, '2021-03-11 06:41:37', '2021-03-11 06:57:27', NULL),
(6, 6, '2021-03-11', 2, 3, 5, 'Yes', '06', 800, '3rd,E,800 Sft', 0, '2021-03-11 06:47:46', '2021-03-11 06:47:46', NULL),
(7, 4, '2021-03-11', 2, 3, 3, 'Yes', '08', 650, '3rd,C,650 Sft', 0, '2021-03-11 06:48:46', '2021-03-11 06:48:46', NULL),
(8, 2, '2021-03-11', 2, 4, 4, 'Yes', '07', 750, '4th,D,750 Sft', 0, '2021-03-11 06:49:39', '2021-03-11 06:49:39', NULL),
(9, 5, '2021-03-11', 2, 6, 3, 'Yes', '06', 850, '6th,C,850 Sft', 0, '2021-03-11 06:50:13', '2021-03-11 06:50:13', NULL),
(10, 5, '2021-03-11', 2, 6, 3, 'Yes', '680', 800, '6th,C,800 Sft', 1, '2021-03-11 06:51:08', '2021-03-11 06:55:39', NULL),
(11, 6, '2021-03-11', 2, 7, 5, 'Yes', '10', 850, '7th,E,850 Sft', 0, '2021-03-11 06:51:55', '2021-03-11 06:51:55', NULL),
(12, 3, '2021-03-11', 2, 8, 1, 'Yes', '05', 800, '8th,A,800 Sft', 0, '2021-03-11 06:58:59', '2021-03-11 06:58:59', NULL),
(13, 5, '2021-03-11', 2, 3, 5, 'Yes', '07', 950, '3rd,E,950 Sft', 0, '2021-03-11 06:59:41', '2021-03-11 06:59:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2017_04_29_032406_create_area_table', 1),
(3, '2017_04_29_032416_create_project_table', 1),
(4, '2017_04_29_115946_create_table_flats', 1),
(5, '2017_05_01_104538_create_curstomer_table', 1),
(6, '2017_05_05_061142_create_rent_table', 1),
(7, '2017_05_05_160721_create_rentcollection_table', 1),
(8, '2017_05_05_160742_create_expense_table', 1),
(9, '2017_05_05_162344_create_expense_item_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `notiType` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `value`, `notiType`, `updated_at`, `created_at`) VALUES
(1, 'sun-shine', '1st,A,400 Sft', 'tolet', '2021-03-07 05:53:25', '2021-03-07 05:53:25'),
(2, 'sun-shine', '1st,A,400 Sft', 'tolet', '2021-03-07 06:05:54', '2021-03-07 06:05:54'),
(3, 'shohorab', '11000', 'due', '2021-03-08 03:30:36', '2021-03-08 03:30:36'),
(4, 'shohorab', '3000', 'collection', '2021-03-08 03:33:06', '2021-03-08 03:33:06'),
(5, 'Bonolota', '4th,B,500 Sft', 'tolet', '2021-03-11 06:41:37', '2021-03-11 06:41:37'),
(6, 'sun-shine', '1st,A,400 Sft', 'tolet', '2021-03-11 06:41:55', '2021-03-11 06:41:55'),
(7, 'Shapla', '3rd,E,800 Sft', 'tolet', '2021-03-11 06:47:46', '2021-03-11 06:47:46'),
(8, 'Chaya Nir', '3rd,C,650 Sft', 'tolet', '2021-03-11 06:48:46', '2021-03-11 06:48:46'),
(9, 'Sun Flower', '4th,D,750 Sft', 'tolet', '2021-03-11 06:49:39', '2021-03-11 06:49:39'),
(10, 'Green Vista', '6th,C,850 Sft', 'tolet', '2021-03-11 06:50:13', '2021-03-11 06:50:13'),
(11, 'Green Vista', '6th,C,800 Sft', 'tolet', '2021-03-11 06:51:08', '2021-03-11 06:51:08'),
(12, 'Shapla', '7th,E,850 Sft', 'tolet', '2021-03-11 06:51:55', '2021-03-11 06:51:55'),
(13, 'Bonolota', '8th,A,800 Sft', 'tolet', '2021-03-11 06:58:59', '2021-03-11 06:58:59'),
(14, 'Green Vista', '3rd,E,950 Sft', 'tolet', '2021-03-11 06:59:41', '2021-03-11 06:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'collection.store', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(2, 'collection.index', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(3, 'collection.create', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(4, 'collection.show', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(5, 'customer.index', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(6, 'customer.store', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(7, 'customer.create', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(8, 'customer.show', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(9, 'user.dashboard', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(10, 'expense.index', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(11, 'expense.store', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(12, 'expense.create', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(13, 'expense.show', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(14, 'flat.index', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(15, 'flat.store', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(16, 'flat.create', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(17, 'flat.show', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(18, 'user.lock', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(19, 'user.login', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(20, 'user.logout', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(21, 'user.profile', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(22, 'user.update', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(23, 'project.index', '2021-03-07 04:51:13', '2021-03-07 04:51:13'),
(24, 'project.create', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(25, 'project.store', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(26, 'project.show', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(27, 'rent.index', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(28, 'rent.store', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(29, 'rent.create', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(30, 'rent.show', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(31, 'collection.edit', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(32, 'collection.update', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(33, 'customer.update', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(34, 'customer.ajax', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(35, 'customer.edit', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(36, 'expense.update', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(37, 'expense.edit', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(38, 'flat.update', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(39, 'flat.edit', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(40, 'flat.byproject', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(41, 'project.bytype', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(42, 'project.update', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(43, 'project.edit', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(44, 'customer.byproject', '2021-03-07 04:51:14', '2021-03-07 04:51:14'),
(45, 'flat.bycustomer', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(46, 'rent.update', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(47, 'rent.edit', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(48, 'report.balance', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(49, 'report.collections', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(50, 'report.collectionSummary', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(51, 'report.customers', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(52, 'report.expenses', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(53, 'report.flats', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(54, 'report.projects', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(55, 'report.rents', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(56, 'report.rentalStatus', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(57, 'report.dues', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(58, 'user.index', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(59, 'user.store', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(60, 'user.create', '2021-03-07 04:51:15', '2021-03-07 04:51:15'),
(61, 'user.destroy', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(62, 'user.show', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(63, 'user.edit', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(64, 'collection.destroy', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(65, 'customer.destroy', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(66, 'expense.destroy', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(67, 'flat.destroy', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(68, 'project.destroy', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(69, 'rent.destroy', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(70, 'mail.compose', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(71, 'mail.send', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(72, 'area.index', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(73, 'area.store', '2021-03-07 04:51:16', '2021-03-07 04:51:16'),
(74, 'area.destroy', '2021-03-07 04:51:16', '2021-03-07 04:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `projectId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `projectType` enum('Commerical','Residential','Residential & Commerical') COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entryDate` date NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `areas_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `storied` text COLLATE utf8_unicode_ci NOT NULL,
  `noOfUnits` int(11) NOT NULL,
  `noOfFloor` int(11) NOT NULL,
  `noOfCarParking` int(11) NOT NULL,
  `unitSize` int(10) UNSIGNED NOT NULL,
  `lift` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL,
  `generator` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `projectId`, `projectType`, `name`, `entryDate`, `users_id`, `areas_id`, `address`, `description`, `storied`, `noOfUnits`, `noOfFloor`, `noOfCarParking`, `unitSize`, `lift`, `generator`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '101', 'Commerical', 'sun-shine', '2021-03-07', 2, 1, '49/A, North-Dhanmondi', 'This is a big project in Dhanmondi (sun-shine) . it\'s looking pretty.', '07', 21, 8, 12, 1000, 'Yes', 'Yes', '2021-03-07 05:17:24', '2021-03-07 05:17:24', NULL),
(2, '103', 'Residential', 'Sun Flower', '2021-03-11', 2, 4, 'H-3,R-2', 'This is a Sun Flower Project in Gulshan Residential Area.', '08', 15, 10, 12, 4000, 'Yes', 'Yes', '2021-03-11 04:59:52', '2021-03-11 04:59:52', NULL),
(3, '104', 'Residential & Commerical', 'Bonolota', '2021-03-11', 2, 3, '281/1 Mirpur-1,Dhaka-1216', 'Bono Lota is a very nice building for commercial ', '12', 24, 13, 10, 3500, 'Yes', 'Yes', '2021-03-11 05:24:49', '2021-03-11 05:24:49', NULL),
(4, '105', 'Residential', 'Chaya Nir', '2021-03-11', 2, 2, 'H-32, R-10, Uttara', 'Chaya Nir is a beautiful Project', '06', 16, 8, 6, 2500, 'Yes', 'Yes', '2021-03-11 05:27:50', '2021-03-11 05:27:50', NULL),
(5, '106', 'Commerical', 'Green Vista', '2021-03-11', 2, 3, 'H-10, Mirpur-11, Dhaka-1216', 'Green Vista is a big project in Commercial Area', '14', 30, 15, 14, 4500, 'Yes', 'Yes', '2021-03-11 05:30:47', '2021-03-11 05:30:47', NULL),
(6, '107', 'Residential & Commerical', 'Shapla', '2021-03-11', 2, 4, 'H-25, R-10, Gulshan', 'Residential an commercial Area project   ', '09', 18, 11, 6, 2800, 'Yes', 'Yes', '2021-03-11 05:34:45', '2021-03-11 05:34:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `id` int(10) UNSIGNED NOT NULL,
  `projects_id` int(10) UNSIGNED NOT NULL,
  `customers_id` int(10) UNSIGNED NOT NULL,
  `flats_id` int(10) UNSIGNED NOT NULL,
  `rentNo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `perSftRent` decimal(18,2) NOT NULL,
  `rent` decimal(18,2) NOT NULL,
  `serviceCharge` decimal(18,2) NOT NULL,
  `securityMoney` decimal(18,2) NOT NULL,
  `advanceMoney` decimal(18,2) NOT NULL,
  `monthlyDeduction` decimal(18,2) NOT NULL,
  `monthlyDeductionTax` decimal(18,2) NOT NULL,
  `utilityCharge` decimal(18,2) NOT NULL,
  `delayCharge` decimal(18,2) NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deepPaper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `othersPaper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `entryDate` date NOT NULL,
  `deedStart` date NOT NULL,
  `deedEnd` date NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`id`, `projects_id`, `customers_id`, `flats_id`, `rentNo`, `perSftRent`, `rent`, `serviceCharge`, `securityMoney`, `advanceMoney`, `monthlyDeduction`, `monthlyDeductionTax`, `utilityCharge`, `delayCharge`, `note`, `deepPaper`, `othersPaper`, `status`, `entryDate`, `deedStart`, `deedEnd`, `users_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 4, 'R001', '25.00', '10000.00', '1000.00', '5000.00', '3000.00', '0.00', '0.00', '0.00', '0.00', '', 'rents/7f861ff78ee8bfc2bafa952209f5fcaf.png', NULL, 1, '2021-03-08', '2021-03-08', '2021-08-08', 2, '2021-03-08 03:30:34', '2021-03-08 03:30:34', NULL),
(2, 5, 9, 10, 'R002', '15.00', '12000.00', '500.00', '2000.00', '4000.00', '2000.00', '250.00', '950.00', '23.00', '', 'rents/2403f3aac3cf8e3dda9713cb45f09975.jpeg', NULL, 1, '2021-03-11', '2021-03-11', '2021-05-11', 2, '2021-03-11 06:55:39', '2021-03-11 06:55:39', NULL),
(3, 3, 9, 5, 'R003', '300.00', '150000.00', '2000.00', '5000.00', '6000.00', '1000.00', '3000.00', '2000.00', '60.00', '', 'rents/2403f3aac3cf8e3dda9713cb45f09975.jpeg', NULL, 1, '2021-03-11', '2021-03-11', '2021-07-11', 2, '2021-03-11 06:57:27', '2021-03-11 06:57:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(2, 'supervisor', '2021-03-07 04:51:12', '2021-03-07 04:51:12'),
(3, 'operator', '2021-03-07 04:51:12', '2021-03-07 04:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 2),
(16, 3),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(18, 3),
(19, 1),
(19, 2),
(19, 3),
(20, 1),
(20, 2),
(20, 3),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(22, 2),
(22, 3),
(23, 1),
(23, 2),
(23, 3),
(24, 1),
(24, 2),
(24, 3),
(25, 1),
(25, 2),
(25, 3),
(26, 1),
(26, 2),
(26, 3),
(27, 1),
(27, 2),
(27, 3),
(28, 1),
(28, 2),
(28, 3),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 3),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `users_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `description`, `users_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@hrm.com', '$2y$10$KxW7DztkSET1MVH7eK5P9.C3FkmmTOGtc0jLu2vQ4RHZAV/04wZ1O', '', NULL, 'iVG2AvIiklOcKqtg5RI4YNMbV7zlyyUjiP43GAgtE6CXFE1VhNZqKIaMgjSs', '2021-03-07 04:51:30', '2021-03-07 05:05:35', NULL),
(2, 'arifulsujan', 'arifulsujan44@gmail.com', '$2y$10$MUxW1KOz7.QME3p7JncpMukY/uu2TiniEOqzyC4mRbkiNUj.hSBOq', '', 1, NULL, '2021-03-07 05:04:49', '2021-03-07 05:04:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permissions`
--

CREATE TABLE `user_has_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_roles`
--

CREATE TABLE `user_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_has_roles`
--

INSERT INTO `user_has_roles` (`role_id`, `user_id`) VALUES
(1, 1),
(1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collections_customers_id_foreign` (`customers_id`),
  ADD KEY `collections_rents_id_foreign` (`rents_id`),
  ADD KEY `collections_users_id_foreign` (`users_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_cellno_unique` (`cellNo`),
  ADD KEY `customers_users_id_entrydate_index` (`users_id`,`entryDate`);

--
-- Indexes for table `expenseitems`
--
ALTER TABLE `expenseitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenseitems_expenses_id_foreign` (`expenses_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_projects_id_foreign` (`projects_id`),
  ADD KEY `expenses_users_id_foreign` (`users_id`);

--
-- Indexes for table `flats`
--
ALTER TABLE `flats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flats_projects_id_foreign` (`projects_id`),
  ADD KEY `flats_users_id_foreign` (`users_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_users_id_foreign` (`users_id`),
  ADD KEY `projects_areas_id_foreign` (`areas_id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rents_customers_id_foreign` (`customers_id`),
  ADD KEY `rents_projects_id_foreign` (`projects_id`),
  ADD KEY `rents_flats_id_foreign` (`flats_id`),
  ADD KEY `rents_users_id_foreign` (`users_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD KEY `role_has_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `user_has_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD PRIMARY KEY (`role_id`,`user_id`),
  ADD KEY `user_has_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expenseitems`
--
ALTER TABLE `expenseitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flats`
--
ALTER TABLE `flats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collections`
--
ALTER TABLE `collections`
  ADD CONSTRAINT `collections_customers_id_foreign` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `collections_rents_id_foreign` FOREIGN KEY (`rents_id`) REFERENCES `rents` (`id`),
  ADD CONSTRAINT `collections_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `expenseitems`
--
ALTER TABLE `expenseitems`
  ADD CONSTRAINT `expenseitems_expenses_id_foreign` FOREIGN KEY (`expenses_id`) REFERENCES `expenses` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_projects_id_foreign` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `expenses_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `flats`
--
ALTER TABLE `flats`
  ADD CONSTRAINT `flats_projects_id_foreign` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `flats_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_areas_id_foreign` FOREIGN KEY (`areas_id`) REFERENCES `areas` (`id`),
  ADD CONSTRAINT `projects_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `rents`
--
ALTER TABLE `rents`
  ADD CONSTRAINT `rents_customers_id_foreign` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `rents_flats_id_foreign` FOREIGN KEY (`flats_id`) REFERENCES `flats` (`id`),
  ADD CONSTRAINT `rents_projects_id_foreign` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `rents_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_permissions`
--
ALTER TABLE `user_has_permissions`
  ADD CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_has_roles`
--
ALTER TABLE `user_has_roles`
  ADD CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
