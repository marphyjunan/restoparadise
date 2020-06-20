-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 10:34 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Table structure for table `makanans`
--

CREATE TABLE `makanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_makanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(255) NOT NULL,
  `stok` int(255) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `makanans`
--

INSERT INTO `makanans` (`id`, `nama_makanan`, `gambar`, `harga`, `stok`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Bakso', 'bakso.jpg', 30000, 8, 'Bakso Ayam Tanta Titin', '2019-11-13 17:00:00', '2020-06-18 06:41:36'),
(2, 'Soto', 'soto.jpg', 25000, 3, 'Soto Mama Yulietha', '2019-11-13 17:00:00', '2020-06-18 06:29:29'),
(3, 'Sate', 'sate.jpg', 35000, 11, 'Sate Mama Ita', '2019-11-13 17:00:00', '2020-06-18 01:08:29'),
(4, 'Nasi Kuning', 'nasi-kuning.jpg', 20000, 17, 'Nasi Kuning Urimesing', '2019-11-13 17:00:00', '2020-06-18 01:09:47'),
(5, 'Mie Ayam', 'mie-ayam.jpg', 25000, 20, 'Mie Ayam Bernadi', '2019-11-13 17:00:00', '2020-06-18 01:09:47'),
(6, 'Coto Makassar', 'coto-makassar.jpg', 35000, 24, 'Coto Anda', '2019-11-13 17:00:00', '2020-06-18 06:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_06_17_040002_create_makanans_table', 1),
(5, '2020_06_17_040336_create_pesanan_details_table', 1),
(7, '2020_06_17_040226_create_pesanans_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `status`, `kode`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(5, 1, '2020-06-18', '1', 910, 85000, '2020-06-18 01:00:27', '2020-06-18 01:00:39'),
(6, 1, '2020-06-18', '1', 963, 35000, '2020-06-18 01:08:24', '2020-06-18 01:08:29'),
(7, 1, '2020-06-18', '1', 659, 60000, '2020-06-18 01:09:42', '2020-06-18 01:09:47'),
(8, 2, '2020-06-18', '0', 580, 660000, '2020-06-18 05:36:43', '2020-06-18 05:48:55'),
(9, 3, '2020-06-18', '1', 141, 115000, '2020-06-18 06:28:06', '2020-06-18 06:29:29'),
(10, 4, '2020-06-18', '1', 510, 60000, '2020-06-18 06:40:31', '2020-06-18 06:41:36'),
(11, 5, '2020-06-19', '0', 882, 35000, '2020-06-19 01:14:55', '2020-06-19 01:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `makanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `pesanan_id`, `makanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(21, 5, 2, 2, 50000, '2020-06-18 01:00:27', '2020-06-18 01:00:27'),
(22, 5, 3, 1, 35000, '2020-06-18 01:00:34', '2020-06-18 01:00:34'),
(23, 6, 3, 1, 35000, '2020-06-18 01:08:24', '2020-06-18 01:08:24'),
(24, 7, 1, 2, 60000, '2020-06-18 01:09:42', '2020-06-18 01:09:42'),
(26, 8, 1, 22, 660000, '2020-06-18 05:37:49', '2020-06-18 05:48:55'),
(27, 9, 1, 1, 30000, '2020-06-18 06:28:06', '2020-06-18 06:28:06'),
(28, 9, 2, 2, 50000, '2020-06-18 06:28:21', '2020-06-18 06:28:21'),
(29, 9, 6, 1, 35000, '2020-06-18 06:28:37', '2020-06-18 06:28:37'),
(30, 10, 1, 2, 60000, '2020-06-18 06:40:31', '2020-06-18 06:40:31'),
(31, 11, 3, 1, 35000, '2020-06-19 01:14:56', '2020-06-19 01:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sergio Marphy Junan Lawalata', 'sergio.lawalata@gmail.com', NULL, '$2y$10$yqIy0va2GRH.6RI87dVPkOI9e3Z4Y82DBsXCjrgWtKql7kgp4n9py', 'Benteng Ambon', '085243050320', NULL, '2020-06-16 21:35:56', '2020-06-17 22:11:50'),
(2, 'Beat', 'r.beatnuhamara@gmail.com', NULL, '$2y$10$Q6JoemXrt.s807fVjrL7Oe/qG6O6Yt48SQXGsg3k/QIOGgxozSh76', 'Jsjsjsj', 'xxxxxx', NULL, '2020-06-17 07:53:04', '2020-06-18 05:49:38'),
(3, 'Shalsa Lawalata', 'shalsamargaret@gmail.com', NULL, '$2y$10$cJeBPWzWId/7EvTNG7G3tedpSZv/OgoEGFSsm6qjRWL46gq.E.pSy', 'Karpan kompleks', '081381189863', NULL, '2020-06-18 06:27:21', '2020-06-18 06:29:07'),
(4, 'abang ganteng', 'abanggantengskali@gmail.com', NULL, '$2y$10$DKck95tznBHTMG7juGOuK.5mGR1fiplY25awqKATbh43mrUqVuFXq', 'batu capeu', '0123456789', NULL, '2020-06-18 06:39:55', '2020-06-18 06:41:25'),
(5, 'Gerbot', 'coba@coba.com', NULL, '$2y$10$VKx0ey3rngH7YGHiyck11OIVHd6UJgvbMUHK6PngchpVHn9qFJQ36', NULL, NULL, NULL, '2020-06-19 01:14:11', '2020-06-19 01:14:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `makanans`
--
ALTER TABLE `makanans`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `makanans`
--
ALTER TABLE `makanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
