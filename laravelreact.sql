-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 03:25 PM
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
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `user_id`, `content`, `url`, `image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, '<span>We Provide</span> Web Services', '#contact', '/uploads/banner/2022/07/22/banner_1658477444.jpg', 'enable', NULL, NULL, '2022-07-22 02:40:44', '2022-07-22 02:40:44'),
(2, NULL, '<span>We Provide</span> Web Services', '#contact', '/uploads/banner/2022/07/22/banner(2)_1658489625.jpg', 'enable', NULL, NULL, '2022-07-22 02:43:12', '2022-07-22 06:03:45');

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `phone`, `email`, `message`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'test', '123456789', 'test@gmail.com', 'Testing', NULL, NULL, '2022-07-22 06:11:49', '2022-07-22 06:11:49'),
(2, NULL, 'Abc', '123456789', 'abc@gmail.com', 'Hello Friends....', NULL, NULL, '2022-07-22 06:13:36', '2022-07-22 06:13:36'),
(3, NULL, 'Abcd', '1234567890', 'abcd@gmail.com', 'Hello Abcd....', NULL, NULL, '2022-07-22 06:15:50', '2022-07-22 06:15:50'),
(4, NULL, 'Abcd', '1234567890', 'abcd@gmail.com', 'Hello Abcd....', NULL, NULL, '2022-07-22 06:16:16', '2022-07-22 06:16:16'),
(5, NULL, 'gddgdf', '123423423424', 'sadd@gmail.com', 'werwrwe', NULL, NULL, '2022-07-22 06:16:58', '2022-07-22 06:16:58'),
(6, NULL, 'fgfdg', '345345345', 'dfg@gmail.com', 'gtet', NULL, NULL, '2022-07-22 06:18:17', '2022-07-22 06:18:17'),
(7, NULL, 'dfsf', '34234234', 'werwe@gmail.com', 'ddfd', NULL, NULL, '2022-07-22 06:19:51', '2022-07-22 06:19:51'),
(8, NULL, 'dfsf', '34234234', 'werwe@gmail.com', 'ddfd', NULL, NULL, '2022-07-22 06:21:06', '2022-07-22 06:21:06'),
(9, NULL, 'ewewe', '4244234234', 'fdf@gmail.com', 'dsfsdfsd', NULL, NULL, '2022-07-22 06:21:26', '2022-07-22 06:21:26');

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
(5, '2022_07_20_070524_create_customers_table', 2),
(6, '2022_07_22_075709_create_banners_table', 3),
(7, '2022_07_22_113535_create_messages_table', 4),
(8, '2022_07_22_115504_create_subscribes_table', 5);

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
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `user_id`, `email`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'xyz@gmail.com', NULL, NULL, '2022-07-22 06:38:26', '2022-07-22 06:38:26'),
(2, NULL, 'abc@gmail.com', NULL, NULL, '2022-07-22 06:38:43', '2022-07-22 06:38:43'),
(3, NULL, 'mno@gmail.com', NULL, NULL, '2022-07-22 06:39:40', '2022-07-22 06:39:40'),
(4, NULL, 'dsfjk@gmail.com', NULL, NULL, '2022-07-22 06:40:42', '2022-07-22 06:40:42'),
(5, NULL, 'jfskd@gmail.com', NULL, NULL, '2022-07-22 06:42:00', '2022-07-22 06:42:00'),
(6, NULL, 'sdsd@gmail.com', NULL, NULL, '2022-07-22 06:42:53', '2022-07-22 06:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `user_id` bigint(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_id`, `name`, `description`, `image`, `subtitle`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Jone due', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', '/uploads/2022/07/22/cross_img_1658475416.png', 'sure there isn\'t', 'enable', NULL, NULL, '2022-07-22 02:06:56', '2022-07-22 02:06:56');

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
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_user_id_foreign` (`user_id`);

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
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

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
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribes_user_id_foreign` (`user_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD CONSTRAINT `subscribes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
