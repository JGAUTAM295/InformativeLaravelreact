-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 02:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelreact`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Precious Keeling', 370050, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(2, 'Mrs. Autumn Halvorson IV', 247892, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(3, 'Meagan Walker', 169972, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(4, 'Lonnie Miller', 149226, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(5, 'Citlalli Hagenes PhD', 337651, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(6, 'Merl Steuber', 111793, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(7, 'Prof. Jeff Jenkins I', 481393, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(8, 'Afton Paucek', 194777, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(9, 'Ms. Ottilie Metz II', 154959, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(10, 'Dr. Ian Hill', 394141, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(11, 'Mrs. Maryam Bogisich PhD', 450989, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(12, 'Lydia Tillman', 354145, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(13, 'Anastasia Ankunding', 243286, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(14, 'Horacio Von', 308436, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(15, 'Fern Beier', 208834, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(16, 'Aubrey Treutel', 483088, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(17, 'Loyce Bauch', 137212, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(18, 'Dr. Flavio Stoltenberg', 192084, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(19, 'Jorge Moore', 252423, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(20, 'Mr. Charlie Tillman', 79673, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(21, 'Ulises Brakus', 267401, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(22, 'Alaina Jones', 163987, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(23, 'Aidan Ondricka', 132634, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(24, 'Christopher Grimes', 263366, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(25, 'Mr. Demarcus O\'Reilly', 356221, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(26, 'Mrs. Elvie Macejkovic', 451640, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(27, 'Brennon Bergstrom IV', 295947, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(28, 'Dallin Reilly', 422860, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(29, 'Jakayla Hill V', 273404, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(30, 'Mr. Hyman Pollich', 272040, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(31, 'Rachelle Johnston', 418295, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(32, 'Adella Koelpin Sr.', 378628, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(33, 'Virginia Hill', 406397, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(34, 'Arnoldo Morissette', 252534, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(35, 'Mrs. Stephanie O\'Hara IV', 138200, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(36, 'Reuben Ward IV', 297737, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(37, 'Alfredo Aufderhar Jr.', 402903, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(38, 'Lula Waelchi', 398905, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(39, 'Sonia Conroy', 415086, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(40, 'Alia Padberg', 108903, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(41, 'Isaias Pfannerstill', 82016, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(42, 'Matt Rempel MD', 392414, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(43, 'Trey Volkman', 486317, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(44, 'Mr. Savion Ondricka PhD', 235057, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(45, 'Erna Dietrich', 167679, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(46, 'Una Carter', 62126, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(47, 'Randy Homenick Jr.', 459877, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(48, 'Nathen Graham', 266743, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(49, 'Dr. Sheldon Braun', 95954, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(50, 'Mr. Kaden Abbott II', 57626, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(51, 'Omer Berge MD', 295943, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(52, 'Hailee Sanford', 135299, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(53, 'Prof. Aiyana Pacocha', 379967, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(54, 'Damion Cruickshank MD', 385006, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(55, 'Cassandre McClure', 260699, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(56, 'Ricardo Mayert', 421033, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(57, 'Prof. Piper Raynor', 119753, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(58, 'Rae Dickinson', 289730, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(59, 'Ms. Ofelia Fadel II', 212831, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(60, 'Virgie Schumm', 349219, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(61, 'Dr. Forrest Larson', 467733, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(62, 'Savanna O\'Connell', 469794, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(63, 'Mr. Leland Jast II', 309428, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(64, 'Araceli Pacocha', 372891, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(65, 'Zetta Koss', 127947, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(66, 'Marvin Rutherford', 70771, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(67, 'Solon Beer', 304936, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(68, 'Jessica Quigley', 317077, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(69, 'Dr. Alexandrine Quigley', 156747, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(70, 'Lea McCullough III', 74278, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(71, 'Jedediah Ziemann', 207804, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(72, 'Alfredo Bogisich', 398276, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(73, 'Cindy Moen DVM', 133874, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(74, 'Vanessa Muller', 462889, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(75, 'Mallie Stanton I', 334298, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(76, 'Maureen Pouros', 315001, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(77, 'Jared Jacobson', 381263, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(78, 'Randi Grady', 192760, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(79, 'Emerson Cummerata', 487448, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(80, 'Jeramie Marquardt', 201453, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(81, 'Macey Waters MD', 437305, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(82, 'Ms. Ruthe Gibson', 332042, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(83, 'Ms. Pearlie Hyatt', 424752, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(84, 'Miss Ana Bogisich DDS', 210653, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(85, 'Jayde Flatley I', 365689, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(86, 'Dr. Sydnie O\'Connell IV', 467819, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(87, 'Miss Maegan Bauch', 323677, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(88, 'Dexter Crona', 83301, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(89, 'Kaylee Hahn V', 309829, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(90, 'Mrs. Francisca Towne II', 291657, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(91, 'Ms. Jennyfer Marquardt', 252121, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(92, 'Prof. Llewellyn Ruecker V', 311279, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(93, 'Prof. Lily Vandervort', 342795, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(94, 'Emiliano Rowe', 355947, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(95, 'Mr. Lennie Farrell I', 448154, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(96, 'Curtis Rice', 390693, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(97, 'Mr. Edwardo Prosacco', 479945, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(98, 'Ms. Alvera Flatley', 220013, '2022-07-20 01:43:47', '2022-07-20 01:43:47'),
(99, 'Jayne', 62060, '2022-07-20 01:43:47', '2022-07-20 02:30:21'),
(101, 'Roger', 32569874, '2022-07-20 02:46:12', '2022-07-20 02:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_20_070524_create_customers_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jyoti', 'jyoti.610weblab@gmail.com', NULL, '25f9e794323b453885f5181f1b624d0b', NULL, '2022-07-21 06:05:19', '2022-07-21 06:05:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
