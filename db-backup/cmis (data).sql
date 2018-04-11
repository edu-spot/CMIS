-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2018 at 07:02 AM
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

--
-- Dumping data for table `attcolls`
--

INSERT INTO `attcolls` (`id`, `attdate`, `timeslot_id`, `branch_id`, `semester_id`, `sclass_id`, `subject_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(47, '2018-04-07', 1, 1, 5, 4, 2, 2, NULL, '2018-04-07 12:13:58', '2018-04-07 12:13:58'),
(48, '2018-04-10', 1, 1, 5, 4, 2, 2, NULL, '2018-04-10 12:00:19', '2018-04-10 12:00:19'),
(49, '2018-04-10', 2, 1, 5, 4, 3, 2, NULL, '2018-04-10 12:00:40', '2018-04-10 12:00:40');

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branchid`, `branch_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Computer Branch', 2, NULL, '2018-03-20 04:14:46', '2018-03-20 04:14:46'),
(2, 'IT Branch', 2, NULL, '2018-03-20 04:15:02', '2018-03-20 04:15:02'),
(3, 'ELEX Branch', 2, NULL, '2018-03-20 04:15:07', '2018-03-20 04:15:07'),
(4, 'EXCT Branch', 2, NULL, '2018-03-20 04:15:11', '2018-03-20 04:15:11');

--
-- Dumping data for table `sclasses`
--

INSERT INTO `sclasses` (`sclassid`, `sclass_name`, `semester_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, 2, NULL, '2018-04-04 12:25:20', '2018-04-04 12:25:20'),
(2, 'B', 1, 2, NULL, '2018-04-04 12:25:25', '2018-04-04 12:25:25'),
(3, 'A', 4, 2, NULL, '2018-04-04 12:25:33', '2018-04-04 12:25:33'),
(4, 'Comps A', 5, 2, NULL, '2018-04-05 08:56:38', '2018-04-05 08:56:38');

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`semesterid`, `semester_name`, `branch_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Sem 1 Computer Branch', 1, 2, NULL, '2018-04-04 03:43:04', '2018-04-04 03:43:04'),
(2, 'Sem 2 Computer Branch', 1, 2, NULL, '2018-04-04 03:43:21', '2018-04-04 03:43:21'),
(3, 'Sem 3 Computer Branch', 1, 2, NULL, '2018-04-04 03:43:37', '2018-04-04 03:43:37'),
(4, 'Sem 3IT Branch', 2, 2, NULL, '2018-04-04 03:44:04', '2018-04-04 03:44:04'),
(5, 'Sem 8 Computer Branch', 1, 2, NULL, '2018-04-05 08:56:22', '2018-04-05 08:56:22');

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

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjectid`, `sub_name`, `sub_alais`, `sub_code`, `semester_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'DataWarehouse and Dataminning', 'DWM', 120, 5, 2, NULL, '2018-04-05 08:57:28', '2018-04-05 08:57:28'),
(3, 'Parallel Distributed Systems', 'PDS', 130, 5, 2, NULL, '2018-04-05 08:57:42', '2018-04-05 08:57:42'),
(4, 'Data Forensics', 'DF', 140, 5, 2, NULL, '2018-04-05 08:58:00', '2018-04-05 08:58:00'),
(5, 'Human Machine Interaction', 'HMI', 150, 5, 2, NULL, '2018-04-05 08:58:22', '2018-04-05 08:58:22');

--
-- Dumping data for table `timeslots`
--

INSERT INTO `timeslots` (`id`, `time`, `timetype`, `duration`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '9:00 to 10:00', 'l', 1, 2, NULL, '2018-03-18 00:53:05', '2018-03-18 00:53:05'),
(2, '10:00 to 11:00', 'l', 1, 2, NULL, '2018-03-18 00:53:05', '2018-03-18 00:53:05'),
(3, '11:20 to 12:20', 'l', 1, 2, NULL, '2018-03-18 00:53:05', '2018-03-18 00:53:05'),
(4, '12:20 to 1:20', 'l', 1, 2, NULL, '2018-03-18 00:53:05', '2018-03-18 00:53:05');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
