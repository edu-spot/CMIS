-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2017 at 04:22 PM
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

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
(1, 'svd', '$2y$10$GKSzYUN64yBJAesxm0F2a.dZwIt3jlSvOyd3eVSwn9.M3zjrkix82', 'svd@abc.com', 'S', 0, NULL, 'P1ZNeQ5ifCwYm0Hnhu9qwdaV2RSIYxfaTri2GSaagCLbKpnVIFRlmstz4K1e', '2017-12-24 14:13:22', '2017-12-24 14:13:22'),
(2, 'admin', '$2y$10$X7H.36zdpjZaLcqNPdul/uJv4pQ9WG7fU6mykl3e7fmDCsYr6yG8W', 'admin@admin.com', 'A', 0, NULL, 'IIhKTQGDVKdKOomyh45HNdmmFpechr2yQr70uiB7KCNINV8K91IPJVAxxSSH', '2017-12-24 14:43:40', '2017-12-24 14:43:40'),
(3, 'employee', '$2y$10$M9cbLv8TiLlQOt4GjMYlYOvhumwKBf.xWfsR6X70R6uHcEtEaFDR6', 'employee@employee.com', 'S', 0, NULL, 'dDZ1I1nb19oJCl3XzDOgT38zaQqf6zqek5tkGkC3okxDIRfZbDdYvWf0Gkpf', '2017-12-24 14:44:34', '2017-12-24 14:44:34'),
(5, 'test', '$2y$10$jyY4u2kdwEpNbbf/Zo2HXutQsY3oiZw1yVJEGoRXh415Cj2AQltGe', 'test@test.com', 'S', 0, NULL, 'NgXUYSOp6wGthWByJ1EjoEuE2YKosRHRalSVmNBvCacgkZRtZ3YN8sxDMGdE', '2017-12-24 15:09:30', '2017-12-24 15:09:30'),
(6, 'test2', '$2y$10$sh3j2SIJPFn1mK0UmsJqeuoqb8Vxk8bScbIphKDmzFmIoUrJ0tXRi', 'test2@test.com', 'S', 0, NULL, '9YmG5okdujEc9PIOfBB4NUxSjO8RK7FYmJ4x0LX9Y0sYH000dKZUlb2wYJPa', '2017-12-24 15:11:40', '2017-12-24 15:11:40');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
