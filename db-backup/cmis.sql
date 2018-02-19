-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 02:31 PM
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
-- Table structure for table `emp_infos`
--

CREATE TABLE `emp_infos` (
  `empinfosid` int(10) UNSIGNED NOT NULL,
  `emp_unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `emp_bankaccount_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_qualification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_specialization` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empmasterid` int(10) UNSIGNED NOT NULL,
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
  `updated_by` int(10) UNSIGNED NOT NULL,
  `is_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(106, '2014_10_12_000000_create_users_table', 1),
(107, '2014_10_12_100000_create_password_resets_table', 1),
(108, '2017_12_30_175155_create_stu_masters_table', 1),
(109, '2018_02_18_062227_create_stu_infos_table', 1),
(110, '2018_02_18_090059_create_stu_statuses_table', 1),
(111, '2018_02_18_091230_create_stu_categories_table', 1),
(112, '2018_02_18_092550_create_emp_masters_table', 1),
(113, '2018_02_18_093229_create_emp_infos_table', 1),
(114, '2018_02_18_094519_create_emp_statuses_table', 1);

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
-- Table structure for table `stu_categories`
--

CREATE TABLE `stu_categories` (
  `stucategoriesid` int(10) UNSIGNED NOT NULL,
  `stu_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stu_infos`
--

INSERT INTO `stu_infos` (`stuinfoid`, `stu_unique_id`, `stu_title`, `stu_first_name`, `stu_middle_name`, `stu_last_name`, `stu_mother_name`, `stu_gender`, `stu_dob`, `stu_email_id`, `stu_mobile_no`, `stu_bloodgroup`, `stu_birthplace`, `stu_religion`, `stu_admission_date`, `stu_languages`, `stumasterid`, `created_at`, `updated_at`) VALUES
(7, NULL, NULL, 'sushrut', 'vijay', 'dhadwe', 'rasika', 'male', '1996-08-30', 'sushrutdhadwe@yahoo.com', 987654321, 'b+', 'karjat', 'hindu', NULL, 'english hindi marathi', 18, '2018-02-19 07:44:35', '2018-02-19 07:44:35');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stu_masters`
--

INSERT INTO `stu_masters` (`stuid`, `user_id`, `created_by`, `is_status`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 0, NULL, '2018-02-18 09:45:41', '2018-02-18 09:45:41'),
(18, 27, 1, 0, NULL, '2018-02-19 07:44:35', '2018-02-19 07:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `stu_statuses`
--

CREATE TABLE `stu_statuses` (
  `stustatusesid` int(10) UNSIGNED NOT NULL,
  `stu_status_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stu_status_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `is_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'admin', '$2y$10$Gwzmhwi1IESf.jbbqmy09.kYIMQtZP7CZkwLblmF0dNUs65VJHOmu', 'admin@admin.com', 'A', 0, NULL, NULL, '2018-02-18 08:56:15', '2018-02-18 08:56:15'),
(2, 'test', '$2y$10$R0xP6UGTx1PVG62CfmCJ4uB5GBgHEpl5Sb8iMx5bZ9I/pzc37nam.', 'test@test.com', 'S', 0, NULL, 'MwVh10WwlREZKVPeHg57qKFDAdELffeunzTzmcGR3lm01iIpUUhnJBq8fNdc', '2018-02-18 08:57:34', '2018-02-18 08:57:34'),
(3, 'svd', '$2y$10$8jtUEptttnZrq3jH53Y3jOuzDxLLj3WDgFU7R2Oq.Se7WCEd8ZIea', 'svd@svd.com', 'S', 0, NULL, NULL, '2018-02-18 09:45:41', '2018-02-18 09:45:41'),
(27, 'Sushrut', '$2y$10$2GtR5Tk5dLkKWmkkbkbhOuGF/x80ff2PkT5sc4zOYd4f1eeXMMydu', 'sushrutdhadwe@yahoo.com', 'S', 0, NULL, NULL, '2018-02-19 07:44:35', '2018-02-19 07:44:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emp_infos`
--
ALTER TABLE `emp_infos`
  ADD PRIMARY KEY (`empinfosid`),
  ADD UNIQUE KEY `emp_infos_emp_email_id_unique` (`emp_email_id`),
  ADD UNIQUE KEY `emp_infos_emp_mobile_no_unique` (`emp_mobile_no`),
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
  ADD KEY `stu_infos_stumasterid_foreign` (`stumasterid`);

--
-- Indexes for table `stu_masters`
--
ALTER TABLE `stu_masters`
  ADD PRIMARY KEY (`stuid`),
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `stu_categories`
--
ALTER TABLE `stu_categories`
  MODIFY `stucategoriesid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stu_infos`
--
ALTER TABLE `stu_infos`
  MODIFY `stuinfoid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stu_masters`
--
ALTER TABLE `stu_masters`
  MODIFY `stuid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stu_statuses`
--
ALTER TABLE `stu_statuses`
  MODIFY `stustatusesid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_infos`
--
ALTER TABLE `emp_infos`
  ADD CONSTRAINT `emp_infos_empmasterid_foreign` FOREIGN KEY (`empmasterid`) REFERENCES `emp_masters` (`empid`);

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
-- Constraints for table `stu_categories`
--
ALTER TABLE `stu_categories`
  ADD CONSTRAINT `stu_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stu_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `stu_infos`
--
ALTER TABLE `stu_infos`
  ADD CONSTRAINT `stu_infos_stumasterid_foreign` FOREIGN KEY (`stumasterid`) REFERENCES `stu_masters` (`stuid`);

--
-- Constraints for table `stu_masters`
--
ALTER TABLE `stu_masters`
  ADD CONSTRAINT `stu_masters_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stu_masters_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stu_masters_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `stu_statuses`
--
ALTER TABLE `stu_statuses`
  ADD CONSTRAINT `stu_statuses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stu_statuses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
