-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2018 at 07:01 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmis`
--

-- --------------------------------------------------------

--
-- Table structure for table `attcolls`
--

CREATE TABLE `attcolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `attdate` date NOT NULL,
  `timeslot_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `sclass_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attcolls`
--

INSERT INTO `attcolls` (`id`, `attdate`, `timeslot_id`, `branch_id`, `semester_id`, `sclass_id`, `subject_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(47, '2018-04-07', 1, 1, 5, 4, 2, 2, NULL, '2018-04-07 12:13:58', '2018-04-07 12:13:58'),
(48, '2018-04-10', 1, 1, 5, 4, 2, 2, NULL, '2018-04-10 12:00:19', '2018-04-10 12:00:19'),
(49, '2018-04-10', 2, 1, 5, 4, 3, 2, NULL, '2018-04-10 12:00:40', '2018-04-10 12:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `branchid` int(10) UNSIGNED NOT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branchid`, `branch_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Computer Branch', 2, NULL, '2018-03-20 04:14:46', '2018-03-20 04:14:46'),
(2, 'IT Branch', 2, NULL, '2018-03-20 04:15:02', '2018-03-20 04:15:02'),
(3, 'ELEX Branch', 2, NULL, '2018-03-20 04:15:07', '2018-03-20 04:15:07'),
(4, 'EXCT Branch', 2, NULL, '2018-03-20 04:15:11', '2018-03-20 04:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `emp_infos`
--

CREATE TABLE `emp_infos` (
  `empinfosid` int(10) UNSIGNED NOT NULL,
  `emp_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_middle_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_name_alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_email_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_mobile_no` bigint(20) NOT NULL,
  `emp_bloodgroup` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_birthplace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_religion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_maritalstatus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_joining_date` date NOT NULL,
  `emp_languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_bankaccount_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_qualification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_specialization` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empmasterid` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_masters`
--

CREATE TABLE `emp_masters` (
  `empid` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `is_status` tinyint(4) NOT NULL DEFAULT '0',
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emp_statuses`
--

CREATE TABLE `emp_statuses` (
  `empstatusesid` int(10) UNSIGNED NOT NULL,
  `emp_status_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_status_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `is_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks_categories`
--

CREATE TABLE `marks_categories` (
  `markscategoryid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks_masters`
--

CREATE TABLE `marks_masters` (
  `marks_master_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2000_10_12_000000_create_users_table', 1),
(33, '2001_02_19_053051_create_branches_table', 1),
(34, '2001_02_20_054241_create_semesters_table', 1),
(35, '2002_03_20_045246_create_sclasses_table', 1),
(36, '2002_04_20_043044_create_subjects_table', 1),
(37, '2014_10_12_100000_create_password_resets_table', 1),
(38, '2017_12_30_175155_create_stu_masters_table', 1),
(39, '2018_02_18_062227_create_stu_infos_table', 1),
(40, '2018_02_18_090059_create_stu_statuses_table', 1),
(41, '2018_02_18_091230_create_stu_categories_table', 1),
(42, '2018_02_18_092550_create_emp_masters_table', 1),
(43, '2018_02_18_093229_create_emp_infos_table', 1),
(44, '2018_02_18_094519_create_emp_statuses_table', 1),
(45, '2018_02_20_104432_create_marks_categories_table', 1),
(46, '2018_02_20_104442_create_marks_masters_table', 1),
(47, '2018_03_06_145438_create_timeslots_table', 1),
(54, '2018_04_06_165153_create_attcolls_table', 2),
(55, '2018_04_20_090314_create_stu_attendences_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sclasses`
--

CREATE TABLE `sclasses` (
  `sclassid` int(10) UNSIGNED NOT NULL,
  `sclass_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sclasses`
--

INSERT INTO `sclasses` (`sclassid`, `sclass_name`, `semester_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, 2, NULL, '2018-04-04 12:25:20', '2018-04-04 12:25:20'),
(2, 'B', 1, 2, NULL, '2018-04-04 12:25:25', '2018-04-04 12:25:25'),
(3, 'A', 4, 2, NULL, '2018-04-04 12:25:33', '2018-04-04 12:25:33'),
(4, 'Comps A', 5, 2, NULL, '2018-04-05 08:56:38', '2018-04-05 08:56:38');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

CREATE TABLE `semesters` (
  `semesterid` int(10) UNSIGNED NOT NULL,
  `semester_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`semesterid`, `semester_name`, `branch_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Sem 1 Computer Branch', 1, 2, NULL, '2018-04-04 03:43:04', '2018-04-04 03:43:04'),
(2, 'Sem 2 Computer Branch', 1, 2, NULL, '2018-04-04 03:43:21', '2018-04-04 03:43:21'),
(3, 'Sem 3 Computer Branch', 1, 2, NULL, '2018-04-04 03:43:37', '2018-04-04 03:43:37'),
(4, 'Sem 3IT Branch', 2, 2, NULL, '2018-04-04 03:44:04', '2018-04-04 03:44:04'),
(5, 'Sem 8 Computer Branch', 1, 2, NULL, '2018-04-05 08:56:22', '2018-04-05 08:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `stu_attendences`
--

CREATE TABLE `stu_attendences` (
  `id` int(10) UNSIGNED NOT NULL,
  `attcoll_id` int(10) UNSIGNED NOT NULL,
  `attdate` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `timeslot_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `sclass_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `stumaster_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stu_attendences`
--

INSERT INTO `stu_attendences` (`id`, `attcoll_id`, `attdate`, `status`, `timeslot_id`, `branch_id`, `semester_id`, `sclass_id`, `subject_id`, `stumaster_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(118, 47, '2018-04-07', 1, 1, 1, 5, 4, 2, 2, 2, NULL, '2018-04-07 12:13:58', '2018-04-07 12:13:58'),
(119, 47, '2018-04-07', 0, 1, 1, 5, 4, 2, 3, 2, NULL, '2018-04-07 12:13:58', '2018-04-07 12:13:58'),
(120, 47, '2018-04-07', 1, 1, 1, 5, 4, 2, 4, 2, NULL, '2018-04-07 12:13:58', '2018-04-07 12:13:58'),
(121, 47, '2018-04-07', 1, 1, 1, 5, 4, 2, 5, 2, NULL, '2018-04-07 12:13:58', '2018-04-07 12:13:58'),
(122, 47, '2018-04-07', 1, 1, 1, 5, 4, 2, 6, 2, NULL, '2018-04-07 12:13:58', '2018-04-07 12:13:58'),
(123, 47, '2018-04-07', 0, 1, 1, 5, 4, 2, 7, 2, NULL, '2018-04-07 12:13:58', '2018-04-07 12:13:58'),
(124, 48, '2018-04-10', 1, 1, 1, 5, 4, 2, 2, 2, NULL, '2018-04-10 12:00:19', '2018-04-10 12:00:19'),
(125, 48, '2018-04-10', 1, 1, 1, 5, 4, 2, 3, 2, NULL, '2018-04-10 12:00:19', '2018-04-10 12:00:19'),
(126, 48, '2018-04-10', 1, 1, 1, 5, 4, 2, 4, 2, NULL, '2018-04-10 12:00:19', '2018-04-10 12:00:19'),
(127, 48, '2018-04-10', 1, 1, 1, 5, 4, 2, 5, 2, NULL, '2018-04-10 12:00:19', '2018-04-10 12:00:19'),
(128, 48, '2018-04-10', 1, 1, 1, 5, 4, 2, 6, 2, NULL, '2018-04-10 12:00:19', '2018-04-10 12:00:19'),
(129, 48, '2018-04-10', 1, 1, 1, 5, 4, 2, 7, 2, NULL, '2018-04-10 12:00:19', '2018-04-10 12:00:19'),
(130, 49, '2018-04-10', 1, 2, 1, 5, 4, 3, 2, 2, NULL, '2018-04-10 12:00:40', '2018-04-10 12:00:40'),
(131, 49, '2018-04-10', 0, 2, 1, 5, 4, 3, 3, 2, NULL, '2018-04-10 12:00:40', '2018-04-10 12:00:40'),
(132, 49, '2018-04-10', 1, 2, 1, 5, 4, 3, 4, 2, NULL, '2018-04-10 12:00:40', '2018-04-10 12:00:40'),
(133, 49, '2018-04-10', 0, 2, 1, 5, 4, 3, 5, 2, NULL, '2018-04-10 12:00:40', '2018-04-10 12:00:40'),
(134, 49, '2018-04-10', 1, 2, 1, 5, 4, 3, 6, 2, NULL, '2018-04-10 12:00:40', '2018-04-10 12:00:40'),
(135, 49, '2018-04-10', 0, 2, 1, 5, 4, 3, 7, 2, NULL, '2018-04-10 12:00:40', '2018-04-10 12:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `stu_categories`
--

CREATE TABLE `stu_categories` (
  `stucategoriesid` int(10) UNSIGNED NOT NULL,
  `stu_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `is_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stu_infos`
--

CREATE TABLE `stu_infos` (
  `stuinfoid` int(10) UNSIGNED NOT NULL,
  `stu_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stu_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stu_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_middle_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_dob` date NOT NULL,
  `stu_email_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_mobile_no` bigint(20) NOT NULL,
  `stu_bloodgroup` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_birthplace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_religion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_admission_date` date DEFAULT NULL,
  `stu_languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stumasterid` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stu_infos`
--

INSERT INTO `stu_infos` (`stuinfoid`, `stu_unique_id`, `stu_title`, `stu_first_name`, `stu_middle_name`, `stu_last_name`, `stu_mother_name`, `stu_gender`, `stu_dob`, `stu_email_id`, `stu_mobile_no`, `stu_bloodgroup`, `stu_birthplace`, `stu_religion`, `stu_admission_date`, `stu_languages`, `stumasterid`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'sushrut', 'vijay', 'dhadwe', 'rasika', 'male', '1996-08-30', 'svds@svds.com', 999999999, 'A', 'mumbai', 'hindu', NULL, 'english', 2, 2, NULL, '2018-04-06 05:27:27', '2018-04-06 05:27:27'),
(2, NULL, NULL, 'swapnil', 'dabade', 'dabade', 'dabade', 'male', '1996-08-30', 'swapnil@swapnil.com', 987789987, 'q', 'sdfhdsfh', 'asdasd', NULL, 'dasdas', 3, 2, NULL, '2018-04-06 05:28:46', '2018-04-06 05:28:46'),
(3, NULL, NULL, 'yash', 'ramesh', 'Patil', 'Patil', 'male', '1996-08-30', 'yash@yash.com', 78998778, 'a', 'm', 'hindu', NULL, 'english', 4, 2, NULL, '2018-04-06 05:29:59', '2018-04-06 05:29:59'),
(4, NULL, NULL, 'akshay', 'Ghangurde', 'Ghangurde', 'Ghangurde', 'male', '1996-02-01', 'akshay@akshay.com', 654456654, 's', 'Mumbai', 'hindu', NULL, 'english', 5, 2, NULL, '2018-04-06 05:31:14', '2018-04-06 05:31:14'),
(5, NULL, NULL, 'linus', 'sabestain', 'sabestain', 'sabestain', 'male', '1897-05-30', 'linus@linus.com', 321456789, 'f', 'dc', 'Christain', NULL, 'marathi', 6, 2, NULL, '2018-04-06 05:38:09', '2018-04-06 05:38:09'),
(6, NULL, NULL, 'ash', 'c4etech', 'c4etech', 'c4etech', 'male', '1988-05-02', 'ash@ash.com', 789456654, 's', 'chennai', 'hindu', NULL, 'tamil', 7, 2, NULL, '2018-04-06 05:39:30', '2018-04-06 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `stu_masters`
--

CREATE TABLE `stu_masters` (
  `stuid` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `is_status` tinyint(4) NOT NULL DEFAULT '0',
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `sclass_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stu_masters`
--

INSERT INTO `stu_masters` (`stuid`, `user_id`, `created_by`, `is_status`, `updated_by`, `sclass_id`, `created_at`, `updated_at`) VALUES
(2, 5, 2, 0, NULL, 4, '2018-04-06 05:27:27', '2018-04-06 05:27:27'),
(3, 6, 2, 0, NULL, 4, '2018-04-06 05:28:46', '2018-04-06 05:28:46'),
(4, 7, 2, 0, NULL, 4, '2018-04-06 05:29:59', '2018-04-06 05:29:59'),
(5, 8, 2, 0, NULL, 4, '2018-04-06 05:31:14', '2018-04-06 05:31:14'),
(6, 9, 2, 0, NULL, 4, '2018-04-06 05:38:09', '2018-04-06 05:38:09'),
(7, 10, 2, 0, NULL, 4, '2018-04-06 05:39:30', '2018-04-06 05:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `stu_statuses`
--

CREATE TABLE `stu_statuses` (
  `stustatusesid` int(10) UNSIGNED NOT NULL,
  `stu_status_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_status_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `is_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subjectid` int(10) UNSIGNED NOT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_alais` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_code` int(11) NOT NULL,
  `semester_id` int(10) UNSIGNED NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjectid`, `sub_name`, `sub_alais`, `sub_code`, `semester_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'DataWarehouse and Dataminning', 'DWM', 120, 5, 2, NULL, '2018-04-05 08:57:28', '2018-04-05 08:57:28'),
(3, 'Parallel Distributed Systems', 'PDS', 130, 5, 2, NULL, '2018-04-05 08:57:42', '2018-04-05 08:57:42'),
(4, 'Data Forensics', 'DF', 140, 5, 2, NULL, '2018-04-05 08:58:00', '2018-04-05 08:58:00'),
(5, 'Human Machine Interaction', 'HMI', 150, 5, 2, NULL, '2018-04-05 08:58:22', '2018-04-05 08:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `timeslots`
--

CREATE TABLE `timeslots` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timetype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timeslots`
--

INSERT INTO `timeslots` (`id`, `time`, `timetype`, `duration`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '9:00 to 10:00', 'l', 1, 2, NULL, '2018-03-18 00:53:05', '2018-03-18 00:53:05'),
(2, '10:00 to 11:00', 'l', 1, 2, NULL, '2018-03-18 00:53:05', '2018-03-18 00:53:05'),
(3, '11:20 to 12:20', 'l', 1, 2, NULL, '2018-03-18 00:53:05', '2018-03-18 00:53:05'),
(4, '12:20 to 1:20', 'l', 1, 2, NULL, '2018-03-18 00:53:05', '2018-03-18 00:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` char(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S',
  `is_block` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `user_type`, `is_block`, `created_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', '$2y$10$6TwI/KX73lr7JpHUl619X.3L1HvJU.XPnQlSKGiM/gajYUJp2j9xC', 'test@test.com', 'S', 0, NULL, NULL, NULL, NULL),
(2, 'admin', '$2y$10$h5.bflXiH6S1gmpb..OG8uWimiMLCYM5L509FagJmRdHxRwhsfsl2', 'admin@admin.com', 'A', 0, NULL, 'NEqQxBqI7v5VGgEUzLqKnS5QzyDZQ2yNUpB3UK5RwaOd4gqi7jSgPUas7WHJ', NULL, NULL),
(5, 'Sushrut', '$2y$10$3270ujU5kMpJyQF9GrFkc.BxKMG9LwyWgwC9KxkluL0/kF6Zax.Ly', 'svds@svds.com', 'S', 0, NULL, NULL, '2018-04-06 05:27:27', '2018-04-06 05:27:27'),
(6, 'swapnil', '$2y$10$JWgR8zI3Ga1TXk0vZa4dLuYYSZXNRl3qjm8Eh4CaahslUsD54iZ7K', 'swapnil@swapnil.com', 'S', 0, NULL, NULL, '2018-04-06 05:28:46', '2018-04-06 05:28:46'),
(7, 'Yash', '$2y$10$6QIJk78oRrQIkIZfs9rIa.fQhMNIB3lpFwKyEGu99pms0qSqhnt.e', 'yash@yash.com', 'S', 0, NULL, NULL, '2018-04-06 05:29:59', '2018-04-06 05:29:59'),
(8, 'Akshay', '$2y$10$nNUX..RSkiB7ZhZlLwDEnOCIYED/28yQjFpJG5VX/Mb66OjKC3QYu', 'akshay@akshay.com', 'S', 0, NULL, NULL, '2018-04-06 05:31:14', '2018-04-06 05:31:14'),
(9, 'linus', '$2y$10$pPzJMh.biOPoKbsSUiB0BezowZwY0hvLq2ZNeREDXPADdu2la7FHO', 'linus@linus.com', 'S', 0, NULL, NULL, '2018-04-06 05:38:09', '2018-04-06 05:38:09'),
(10, 'ash', '$2y$10$49YWOvwyfG2nl2b6vU.RbelGHck3BfTa1dsmvhXPnKzqhHBo7DtDm', 'ash@ash.com', 'S', 0, NULL, NULL, '2018-04-06 05:39:30', '2018-04-06 05:39:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attcolls`
--
ALTER TABLE `attcolls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attcolls_timeslot_id_foreign` (`timeslot_id`),
  ADD KEY `attcolls_branch_id_foreign` (`branch_id`),
  ADD KEY `attcolls_semester_id_foreign` (`semester_id`),
  ADD KEY `attcolls_sclass_id_foreign` (`sclass_id`),
  ADD KEY `attcolls_subject_id_foreign` (`subject_id`),
  ADD KEY `attcolls_created_by_foreign` (`created_by`),
  ADD KEY `attcolls_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`branchid`),
  ADD KEY `branches_created_by_foreign` (`created_by`),
  ADD KEY `branches_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `emp_infos`
--
ALTER TABLE `emp_infos`
  ADD PRIMARY KEY (`empinfosid`),
  ADD UNIQUE KEY `emp_infos_emp_email_id_unique` (`emp_email_id`),
  ADD UNIQUE KEY `emp_infos_emp_mobile_no_unique` (`emp_mobile_no`),
  ADD KEY `emp_infos_created_by_foreign` (`created_by`),
  ADD KEY `emp_infos_updated_by_foreign` (`updated_by`),
  ADD KEY `emp_infos_empmasterid_foreign` (`empmasterid`);

--
-- Indexes for table `emp_masters`
--
ALTER TABLE `emp_masters`
  ADD PRIMARY KEY (`empid`),
  ADD KEY `emp_masters_user_id_foreign` (`user_id`),
  ADD KEY `emp_masters_created_by_foreign` (`created_by`),
  ADD KEY `emp_masters_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `emp_statuses`
--
ALTER TABLE `emp_statuses`
  ADD PRIMARY KEY (`empstatusesid`),
  ADD KEY `emp_statuses_created_by_foreign` (`created_by`),
  ADD KEY `emp_statuses_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `marks_categories`
--
ALTER TABLE `marks_categories`
  ADD PRIMARY KEY (`markscategoryid`);

--
-- Indexes for table `marks_masters`
--
ALTER TABLE `marks_masters`
  ADD PRIMARY KEY (`marks_master_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sclasses`
--
ALTER TABLE `sclasses`
  ADD PRIMARY KEY (`sclassid`),
  ADD KEY `sclasses_semester_id_foreign` (`semester_id`),
  ADD KEY `sclasses_created_by_foreign` (`created_by`),
  ADD KEY `sclasses_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `semesters`
--
ALTER TABLE `semesters`
  ADD PRIMARY KEY (`semesterid`),
  ADD KEY `semesters_branch_id_foreign` (`branch_id`),
  ADD KEY `semesters_created_by_foreign` (`created_by`),
  ADD KEY `semesters_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `stu_attendences`
--
ALTER TABLE `stu_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stu_attendences_attcoll_id_foreign` (`attcoll_id`),
  ADD KEY `stu_attendences_timeslot_id_foreign` (`timeslot_id`),
  ADD KEY `stu_attendences_branch_id_foreign` (`branch_id`),
  ADD KEY `stu_attendences_semester_id_foreign` (`semester_id`),
  ADD KEY `stu_attendences_sclass_id_foreign` (`sclass_id`),
  ADD KEY `stu_attendences_subject_id_foreign` (`subject_id`),
  ADD KEY `stu_attendences_stumaster_id_foreign` (`stumaster_id`),
  ADD KEY `stu_attendences_created_by_foreign` (`created_by`),
  ADD KEY `stu_attendences_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `stu_categories`
--
ALTER TABLE `stu_categories`
  ADD PRIMARY KEY (`stucategoriesid`),
  ADD KEY `stu_categories_created_by_foreign` (`created_by`),
  ADD KEY `stu_categories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `stu_infos`
--
ALTER TABLE `stu_infos`
  ADD PRIMARY KEY (`stuinfoid`),
  ADD UNIQUE KEY `stu_infos_stu_email_id_unique` (`stu_email_id`),
  ADD UNIQUE KEY `stu_infos_stu_mobile_no_unique` (`stu_mobile_no`),
  ADD UNIQUE KEY `stu_infos_stu_unique_id_unique` (`stu_unique_id`),
  ADD KEY `stu_infos_created_by_foreign` (`created_by`),
  ADD KEY `stu_infos_updated_by_foreign` (`updated_by`),
  ADD KEY `stu_infos_stumasterid_foreign` (`stumasterid`);

--
-- Indexes for table `stu_masters`
--
ALTER TABLE `stu_masters`
  ADD PRIMARY KEY (`stuid`),
  ADD KEY `stu_masters_sclass_id_foreign` (`sclass_id`),
  ADD KEY `stu_masters_user_id_foreign` (`user_id`),
  ADD KEY `stu_masters_created_by_foreign` (`created_by`),
  ADD KEY `stu_masters_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `stu_statuses`
--
ALTER TABLE `stu_statuses`
  ADD PRIMARY KEY (`stustatusesid`),
  ADD KEY `stu_statuses_created_by_foreign` (`created_by`),
  ADD KEY `stu_statuses_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subjectid`),
  ADD KEY `subjects_semester_id_foreign` (`semester_id`),
  ADD KEY `subjects_created_by_foreign` (`created_by`),
  ADD KEY `subjects_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timeslots_created_by_foreign` (`created_by`),
  ADD KEY `timeslots_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attcolls`
--
ALTER TABLE `attcolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `branchid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `emp_infos`
--
ALTER TABLE `emp_infos`
  MODIFY `empinfosid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_masters`
--
ALTER TABLE `emp_masters`
  MODIFY `empid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_statuses`
--
ALTER TABLE `emp_statuses`
  MODIFY `empstatusesid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks_categories`
--
ALTER TABLE `marks_categories`
  MODIFY `markscategoryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks_masters`
--
ALTER TABLE `marks_masters`
  MODIFY `marks_master_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `sclasses`
--
ALTER TABLE `sclasses`
  MODIFY `sclassid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `semesters`
--
ALTER TABLE `semesters`
  MODIFY `semesterid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stu_attendences`
--
ALTER TABLE `stu_attendences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `stu_categories`
--
ALTER TABLE `stu_categories`
  MODIFY `stucategoriesid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stu_infos`
--
ALTER TABLE `stu_infos`
  MODIFY `stuinfoid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stu_masters`
--
ALTER TABLE `stu_masters`
  MODIFY `stuid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stu_statuses`
--
ALTER TABLE `stu_statuses`
  MODIFY `stustatusesid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subjectid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timeslots`
--
ALTER TABLE `timeslots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attcolls`
--
ALTER TABLE `attcolls`
  ADD CONSTRAINT `attcolls_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branchid`),
  ADD CONSTRAINT `attcolls_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `attcolls_sclass_id_foreign` FOREIGN KEY (`sclass_id`) REFERENCES `sclasses` (`sclassid`),
  ADD CONSTRAINT `attcolls_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semesterid`),
  ADD CONSTRAINT `attcolls_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subjectid`),
  ADD CONSTRAINT `attcolls_timeslot_id_foreign` FOREIGN KEY (`timeslot_id`) REFERENCES `timeslots` (`id`),
  ADD CONSTRAINT `attcolls_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `branches`
--
ALTER TABLE `branches`
  ADD CONSTRAINT `branches_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `branches_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `emp_infos`
--
ALTER TABLE `emp_infos`
  ADD CONSTRAINT `emp_infos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `emp_infos_empmasterid_foreign` FOREIGN KEY (`empmasterid`) REFERENCES `emp_masters` (`empid`),
  ADD CONSTRAINT `emp_infos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `emp_masters`
--
ALTER TABLE `emp_masters`
  ADD CONSTRAINT `emp_masters_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `emp_masters_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `emp_masters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `emp_statuses`
--
ALTER TABLE `emp_statuses`
  ADD CONSTRAINT `emp_statuses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `emp_statuses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sclasses`
--
ALTER TABLE `sclasses`
  ADD CONSTRAINT `sclasses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sclasses_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semesterid`),
  ADD CONSTRAINT `sclasses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `semesters`
--
ALTER TABLE `semesters`
  ADD CONSTRAINT `semesters_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branchid`),
  ADD CONSTRAINT `semesters_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `semesters_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `stu_attendences`
--
ALTER TABLE `stu_attendences`
  ADD CONSTRAINT `stu_attendences_attcoll_id_foreign` FOREIGN KEY (`attcoll_id`) REFERENCES `attcolls` (`id`),
  ADD CONSTRAINT `stu_attendences_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`branchid`),
  ADD CONSTRAINT `stu_attendences_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stu_attendences_sclass_id_foreign` FOREIGN KEY (`sclass_id`) REFERENCES `sclasses` (`sclassid`),
  ADD CONSTRAINT `stu_attendences_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semesterid`),
  ADD CONSTRAINT `stu_attendences_stumaster_id_foreign` FOREIGN KEY (`stumaster_id`) REFERENCES `stu_masters` (`stuid`),
  ADD CONSTRAINT `stu_attendences_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subjectid`),
  ADD CONSTRAINT `stu_attendences_timeslot_id_foreign` FOREIGN KEY (`timeslot_id`) REFERENCES `timeslots` (`id`),
  ADD CONSTRAINT `stu_attendences_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `stu_categories`
--
ALTER TABLE `stu_categories`
  ADD CONSTRAINT `stu_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stu_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `stu_infos`
--
ALTER TABLE `stu_infos`
  ADD CONSTRAINT `stu_infos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stu_infos_stumasterid_foreign` FOREIGN KEY (`stumasterid`) REFERENCES `stu_masters` (`stuid`),
  ADD CONSTRAINT `stu_infos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `stu_masters`
--
ALTER TABLE `stu_masters`
  ADD CONSTRAINT `stu_masters_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stu_masters_sclass_id_foreign` FOREIGN KEY (`sclass_id`) REFERENCES `sclasses` (`sclassid`),
  ADD CONSTRAINT `stu_masters_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stu_masters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `stu_statuses`
--
ALTER TABLE `stu_statuses`
  ADD CONSTRAINT `stu_statuses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stu_statuses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `subjects_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`semesterid`),
  ADD CONSTRAINT `subjects_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD CONSTRAINT `timeslots_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `timeslots_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
