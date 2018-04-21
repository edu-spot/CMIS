-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2018 at 10:05 PM
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
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`branchid`, `branch_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Computer Branch', 2, NULL, '2018-03-20 04:14:46', '2018-03-20 04:14:46'),
(2, 'IT Branch', 2, NULL, '2018-03-20 04:15:02', '2018-03-20 04:15:02'),
(3, 'ELEX Branch', 2, NULL, '2018-03-20 04:15:07', '2018-03-20 04:15:07'),
(4, 'EXCT Branch', 2, NULL, '2018-03-20 04:15:11', '2018-03-20 04:15:11');

--
-- Dumping data for table `marks_categories`
--

INSERT INTO `marks_categories` (`markscategoryid`, `subject_id`, `type`, `marks_category_name`, `marks_category_alias`, `min_marks`, `max_marks`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 'theory_DataWarehouse and Dataminning', 'th_DWM', 8, 20, 2, NULL, '2018-04-21 20:30:00', '2018-04-21 18:30:04'),
(2, 2, 1, 'practical_DataWarehouse and Dataminning', 'pr_DWM', 10, 25, 2, NULL, '2018-04-21 20:30:00', '2018-04-21 18:30:04'),
(3, 3, 1, 'practical_Parallel Distributed Systems', 'pr_PDS', 10, 25, 2, NULL, '2018-04-21 20:30:00', '2018-04-21 18:30:04'),
(4, 3, 0, 'theory_Parallel Distributed Systems', 'th_PDS', 8, 20, 2, NULL, '2018-04-21 20:30:00', '2018-04-21 18:30:04'),
(5, 4, 1, 'practical_Data Forensics', 'pr_DF', 10, 25, 2, NULL, '2018-04-21 20:30:00', '2018-04-21 18:30:04'),
(6, 4, 0, 'theory_Data Forensics', 'th_DF', 8, 20, 2, NULL, '2018-04-21 20:30:00', '2018-04-21 18:30:04'),
(7, 5, 1, 'practical_Human Machine Interaction', 'pr_HMI', 10, 25, 2, NULL, '2018-04-21 20:30:00', '2018-04-21 18:30:04'),
(8, 5, 0, 'theory_Human Machine Interaction', 'th_HMI', 8, 20, 2, NULL, '2018-04-21 20:30:00', '2018-04-21 18:30:04');

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
(47, '2018_03_06_145438_create_timeslots_table', 1),
(64, '2018_04_06_165153_create_attcolls_table', 2),
(65, '2018_04_20_090314_create_stu_attendences_table', 2),
(66, '2018_04_20_104432_create_marks_categories_table', 2),
(67, '2018_04_21_104442_create_marks_masters_table', 2);

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ssvds@svds.com', '$2y$10$lr6W1xSUzSfdTyDpq.LI7.TjhpnIJ4ms8FzrsQgfjbUm2yHOfxbl.', '2018-04-20 13:49:22');

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
-- Dumping data for table `stu_infos`
--

INSERT INTO `stu_infos` (`stuinfoid`, `stu_unique_id`, `stu_title`, `stu_first_name`, `stu_middle_name`, `stu_last_name`, `stu_mother_name`, `stu_gender`, `stu_dob`, `stu_email_id`, `stu_mobile_no`, `stu_bloodgroup`, `stu_birthplace`, `stu_religion`, `stu_admission_date`, `stu_languages`, `stumasterid`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'sushrut', 'vijay', 'dhadwe', 'rasika', 'male', '1996-08-30', 'svds@svds.com', 999999999, 'A', 'mumbai', 'hindu', NULL, 'english', 2, 2, NULL, '2018-04-06 05:27:27', '2018-04-06 05:27:27'),
(2, NULL, NULL, 'swapnil', 'dabade', 'dabade', 'dabade', 'male', '1996-08-30', 'swapnil@swapnil.com', 987789987, 'q', 'sdfhdsfh', 'asdasd', NULL, 'dasdas', 3, 2, NULL, '2018-04-06 05:28:46', '2018-04-06 05:28:46'),
(3, NULL, NULL, 'yash', 'ramesh', 'Patil', 'Patil', 'male', '1996-08-30', 'yash@yash.com', 78998778, 'a', 'm', 'hindu', NULL, 'english', 4, 2, NULL, '2018-04-06 05:29:59', '2018-04-06 05:29:59'),
(4, NULL, NULL, 'akshay', 'Ghangurde', 'Ghangurde', 'Ghangurde', 'male', '1996-02-01', 'akshay@akshay.com', 654456654, 's', 'Mumbai', 'hindu', NULL, 'english', 5, 2, NULL, '2018-04-06 05:31:14', '2018-04-06 05:31:14'),
(5, NULL, NULL, 'linus', 'sabestain', 'sabestain', 'sabestain', 'male', '1897-05-30', 'linus@linus.com', 321456789, 'f', 'dc', 'Christain', NULL, 'marathi', 6, 2, NULL, '2018-04-06 05:38:09', '2018-04-06 05:38:09'),
(6, NULL, NULL, 'ash', 'c4etech', 'c4etech', 'c4etech', 'male', '1988-05-02', 'ash@ash.com', 789456654, 's', 'chennai', 'hindu', NULL, 'tamil', 7, 2, NULL, '2018-04-06 05:39:30', '2018-04-06 05:39:30'),
(7, NULL, NULL, 'sushrut', 'vijay', 'dhadwe', 'rasika', 'male', '1996-08-30', 'ssvds@svds.com', 199999999, 'A', 'mumbai', 'hindu', NULL, 'english', 8, 2, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(8, NULL, NULL, 'swapnil', 'dabade', 'dabade', 'dabade', 'male', '1996-08-30', 'sswapnil@swapnil.com', 187789987, 'q', 'sdfhdsfh', 'asdasd', NULL, 'dasdas', 9, 2, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(9, NULL, NULL, 'yash', 'ramesh', 'Patil', 'Patil', 'male', '1996-08-30', 'syash@yash.com', 18998778, 'a', 'm', 'hindu', NULL, 'english', 10, 2, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(10, NULL, NULL, 'akshay', 'Ghangurde', 'Ghangurde', 'Ghangurde', 'male', '1996-02-01', 'sakshay@akshay.com', 154456654, 's', 'Mumbai', 'hindu', NULL, 'english', 11, 2, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(11, NULL, NULL, 'linus', 'sabestain', 'sabestain', 'sabestain', 'male', '1897-05-30', 'slinus@linus.com', 121456789, 'f', 'dc', 'Christain', NULL, 'marathi', 12, 2, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(12, NULL, NULL, 'ash', 'c4etech', 'c4etech', 'c4etech', 'male', '1988-05-02', 'sash@ash.com', 189456654, 's', 'chennai', 'hindu', NULL, 'tamil', 13, 2, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44');

--
-- Dumping data for table `stu_masters`
--

INSERT INTO `stu_masters` (`stuid`, `user_id`, `created_by`, `is_status`, `updated_by`, `sclass_id`, `created_at`, `updated_at`) VALUES
(2, 5, 2, 0, NULL, 4, '2018-04-06 05:27:27', '2018-04-06 05:27:27'),
(3, 6, 2, 0, NULL, 4, '2018-04-06 05:28:46', '2018-04-06 05:28:46'),
(4, 7, 2, 0, NULL, 4, '2018-04-06 05:29:59', '2018-04-06 05:29:59'),
(5, 8, 2, 0, NULL, 4, '2018-04-06 05:31:14', '2018-04-06 05:31:14'),
(6, 9, 2, 0, NULL, 4, '2018-04-06 05:38:09', '2018-04-06 05:38:09'),
(7, 10, 2, 0, NULL, 4, '2018-04-06 05:39:30', '2018-04-06 05:39:30'),
(8, 11, 2, 0, NULL, 4, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(9, 12, 2, 0, NULL, 4, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(10, 13, 2, 0, NULL, 4, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(11, 14, 2, 0, NULL, 4, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(12, 15, 2, 0, NULL, 4, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(13, 16, 2, 0, NULL, 4, '2018-04-19 12:08:44', '2018-04-19 12:08:44');

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjectid`, `sub_name`, `sub_alais`, `sub_code`, `semester_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'DataWarehouse and Dataminning', 'DWM', 120, 5, 2, NULL, '2018-04-05 08:57:28', '2018-04-05 08:57:28'),
(3, 'Parallel Distributed Systems', 'PDS', 130, 5, 2, NULL, '2018-04-05 08:57:42', '2018-04-05 08:57:42'),
(4, 'Data Forensics', 'DF', 140, 5, 2, NULL, '2018-04-05 08:58:00', '2018-04-05 08:58:00'),
(5, 'Human Machine Interaction', 'HMI', 150, 5, 2, NULL, '2018-04-05 08:58:22', '2018-04-05 08:58:22'),
(38, 'Cloud Computing', 'ccl', 160, 5, 2, NULL, '2018-04-21 14:14:29', '2018-04-21 14:14:29');

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
(1, 'test', '$2y$10$6TwI/KX73lr7JpHUl619X.3L1HvJU.XPnQlSKGiM/gajYUJp2j9xC', 'test@test.com', 'S', 0, NULL, '42lJpGzwmEUIj86wK3PdRqpOBIp41RsFwJ907axU2oqvTVbxY8J1FdirL47o', NULL, NULL),
(2, 'admin', '$2y$10$h5.bflXiH6S1gmpb..OG8uWimiMLCYM5L509FagJmRdHxRwhsfsl2', 'admin@admin.com', 'A', 0, NULL, 'xoOVMS6ewObFawzwBAMiGMeST0geoFQafPxAavY2mbCNkmN7z6OQVCCkY1Ke', NULL, NULL),
(5, 'Sushrut', '$2y$10$3270ujU5kMpJyQF9GrFkc.BxKMG9LwyWgwC9KxkluL0/kF6Zax.Ly', 'svds@svds.com', 'S', 0, NULL, NULL, '2018-04-06 05:27:27', '2018-04-06 05:27:27'),
(6, 'swapnil', '$2y$10$JWgR8zI3Ga1TXk0vZa4dLuYYSZXNRl3qjm8Eh4CaahslUsD54iZ7K', 'swapnil@swapnil.com', 'S', 0, NULL, NULL, '2018-04-06 05:28:46', '2018-04-06 05:28:46'),
(7, 'Yash', '$2y$10$6QIJk78oRrQIkIZfs9rIa.fQhMNIB3lpFwKyEGu99pms0qSqhnt.e', 'yash@yash.com', 'S', 0, NULL, NULL, '2018-04-06 05:29:59', '2018-04-06 05:29:59'),
(8, 'Akshay', '$2y$10$nNUX..RSkiB7ZhZlLwDEnOCIYED/28yQjFpJG5VX/Mb66OjKC3QYu', 'akshay@akshay.com', 'S', 0, NULL, NULL, '2018-04-06 05:31:14', '2018-04-06 05:31:14'),
(9, 'linus', '$2y$10$pPzJMh.biOPoKbsSUiB0BezowZwY0hvLq2ZNeREDXPADdu2la7FHO', 'linus@linus.com', 'S', 0, NULL, NULL, '2018-04-06 05:38:09', '2018-04-06 05:38:09'),
(10, 'ash', '$2y$10$49YWOvwyfG2nl2b6vU.RbelGHck3BfTa1dsmvhXPnKzqhHBo7DtDm', 'ash@ash.com', 'S', 0, NULL, NULL, '2018-04-06 05:39:30', '2018-04-06 05:39:30'),
(11, 'sushrut', '$2y$10$ZXslXSlm59f5GfoL2DsJWOsXRfqV46sro7voprX3qQXJnKGszGBU2', 'ssvds@svds.com', 'S', 0, NULL, 'OSNVFT4Bx0zNlpJ4UzWIpOWul1i11Bs74m503MIGH62rWFpb31K3xhzueSK0', '2018-04-19 12:08:43', '2018-04-19 12:08:43'),
(12, 'swapnil', '$2y$10$.H7Lgf.lf89TMWNuOoYaueN9oUg9GAw09XDeVeKeE4S2fzcQ7jXN2', 'sswapnil@swapnil.com', 'S', 0, NULL, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(13, 'yash', '$2y$10$/VNjyCJEuoJYgfJcG8kcRuy/eICbIUZHL89OUmCgOG8q500olrWaq', 'syash@yash.com', 'S', 0, NULL, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(14, 'akshay', '$2y$10$voIMQ02oWgFGXhFAXxvslO/D.T16ZuOIGVbK0g.thZTSiv131P3Nq', 'sakshay@akshay.com', 'S', 0, NULL, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(15, 'linus', '$2y$10$xbY4NCyT/VII0Xjg.0Aw3.vlIpDgfnppHw6U7h9v1EyQN2KbMKV2S', 'slinus@linus.com', 'S', 0, NULL, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44'),
(16, 'ash', '$2y$10$sv29oiWbeF6ffJ/Eg9BpuucIoOR3bc4kCwHll3yWbccgtXS1QefJC', 'sash@ash.com', 'S', 0, NULL, NULL, '2018-04-19 12:08:44', '2018-04-19 12:08:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
