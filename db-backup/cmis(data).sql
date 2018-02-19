-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 02:34 PM
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

--
-- Dumping data for table `stu_infos`
--

INSERT INTO `stu_infos` (`stuinfoid`, `stu_unique_id`, `stu_title`, `stu_first_name`, `stu_middle_name`, `stu_last_name`, `stu_mother_name`, `stu_gender`, `stu_dob`, `stu_email_id`, `stu_mobile_no`, `stu_bloodgroup`, `stu_birthplace`, `stu_religion`, `stu_admission_date`, `stu_languages`, `stumasterid`, `created_at`, `updated_at`) VALUES
(7, NULL, NULL, 'sushrut', 'vijay', 'dhadwe', 'rasika', 'male', '1996-08-30', 'sushrutdhadwe@yahoo.com', 987654321, 'b+', 'karjat', 'hindu', NULL, 'english hindi marathi', 18, '2018-02-19 07:44:35', '2018-02-19 07:44:35');

--
-- Dumping data for table `stu_masters`
--

INSERT INTO `stu_masters` (`stuid`, `user_id`, `created_by`, `is_status`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 0, NULL, '2018-02-18 09:45:41', '2018-02-18 09:45:41'),
(18, 27, 1, 0, NULL, '2018-02-19 07:44:35', '2018-02-19 07:44:35');

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `user_type`, `is_block`, `created_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$Gwzmhwi1IESf.jbbqmy09.kYIMQtZP7CZkwLblmF0dNUs65VJHOmu', 'admin@admin.com', 'A', 0, NULL, NULL, '2018-02-18 08:56:15', '2018-02-18 08:56:15'),
(2, 'test', '$2y$10$R0xP6UGTx1PVG62CfmCJ4uB5GBgHEpl5Sb8iMx5bZ9I/pzc37nam.', 'test@test.com', 'S', 0, NULL, 'MwVh10WwlREZKVPeHg57qKFDAdELffeunzTzmcGR3lm01iIpUUhnJBq8fNdc', '2018-02-18 08:57:34', '2018-02-18 08:57:34'),
(3, 'svd', '$2y$10$8jtUEptttnZrq3jH53Y3jOuzDxLLj3WDgFU7R2Oq.Se7WCEd8ZIea', 'svd@svd.com', 'S', 0, NULL, NULL, '2018-02-18 09:45:41', '2018-02-18 09:45:41'),
(27, 'Sushrut', '$2y$10$2GtR5Tk5dLkKWmkkbkbhOuGF/x80ff2PkT5sc4zOYd4f1eeXMMydu', 'sushrutdhadwe@yahoo.com', 'S', 0, NULL, NULL, '2018-02-19 07:44:35', '2018-02-19 07:44:35');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
