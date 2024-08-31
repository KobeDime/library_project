-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2024 at 04:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `auther_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `book_img` varchar(255) DEFAULT NULL,
  `auther_img` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `auther_name`, `price`, `description`, `quantity`, `book_img`, `auther_img`, `category_id`, `created_at`, `updated_at`) VALUES
(8, 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', '$10.99', 'The first book in the Harry Potter series introduces a young wizard, Harry Potter, who discovers his magical heritage and attends Hogwarts School of Witchcraft and Wizardry.', '10', '1722949377.png', '1722949377.png', 12, '2024-08-06 05:02:57', '2024-08-06 05:02:57'),
(9, 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', '$12.99', 'In the second installment, Harry returns to Hogwarts for his second year and uncovers the mystery behind the attacks on students by a legendary monster.', '29', '1722949433.png', '1722949433.png', 12, '2024-08-06 05:03:53', '2024-08-06 05:20:35'),
(10, 'Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', '$14.99', 'The third book follows Harry\'s third year at Hogwarts, where he learns about the escape of Sirius Black from the wizarding prison Azkaban and the truth about his parents\' death.', '19', '1722949476.png', '1722949476.png', 12, '2024-08-06 05:04:36', '2024-08-06 05:20:44'),
(11, 'Harry Potter and the Goblet of Fire', 'J.K. Rowling', '$16.99', 'In the fourth book, Harry competes in the Triwizard Tournament, a magical competition between three wizarding schools, while dark forces are on the rise.', '38', '1722949526.png', '1722949526.png', 12, '2024-08-06 05:05:26', '2024-08-06 21:40:43'),
(12, 'Harry Potter and the Order of the Phoenix', 'J.K. Rowling', '$18.99', 'The fifth book sees Harry and his friends forming Dumbledore\'s Army to fight against the return of Voldemort and the Ministry of Magic\'s denial of his return.', '24', '1722949571.png', '1722949571.png', 12, '2024-08-06 05:06:11', '2024-08-06 05:20:57'),
(13, 'Harry Potter and the Half-Blood Prince', 'J.K. Rowling', '$20.99', 'The sixth book reveals more about Voldemort\'s past and his Horcruxes, magical objects that contain pieces of his soul, which are key to his immortality.', '49', '1722949609.png', '1722949609.png', 12, '2024-08-06 05:06:49', '2024-08-06 05:20:23'),
(14, 'Harry Potter and the Deathly Hallows', 'J.K. Rowling', '$22.99', 'The final book follows Harry, Ron, and Hermione on their quest to find and destroy Voldemort\'s Horcruxes, leading to the ultimate battle between good and evil.', '34', '1722949668.png', '1722949668.png', 12, '2024-08-06 05:07:48', '2024-08-06 05:21:14'),
(15, 'Fantastic Beasts and Where to Find Them: The Original Screenplay', 'J.K. Rowling', '$24.99', 'The screenplay of the film \"Fantastic Beasts and Where to Find Them,\" which follows the adventures of Newt Scamander in 1920s New York and his encounters with magical creatures.', '43', '1722950252.png', '1722949861.png', 12, '2024-08-06 05:11:01', '2024-08-06 05:21:48'),
(16, 'Fantastic Beasts: The Crimes of Grindelwald – The Original Screenplay', 'J.K. Rowling', '$26.99', 'The screenplay for \"Fantastic Beasts: The Crimes of Grindelwald,\" continuing Newt Scamander’s adventures and delving deeper into the dark wizard Gellert Grindelwald\'s rise to power.', '49', '1722950340.png', '1722950340.png', 12, '2024-08-06 05:19:00', '2024-08-06 05:22:01'),
(18, 'Fantastic Beasts: The Secrets of Dumbledore', 'J.K Rowling', '$30.99', 'The screenplay of \"Fantastic Beasts: The Secrets of Dumbledore,\" exploring the complex history of Albus Dumbledore and his conflict with Grindelwald.', '17', '1723009203.png', '1723009203.png', 12, '2024-08-06 21:40:03', '2024-08-06 21:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrows`
--

INSERT INTO `borrows` (`id`, `book_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(53, 11, 6, 'Approved', '2024-08-06 21:35:35', '2024-08-06 21:40:43'),
(54, 12, 6, 'Rejected', '2024-08-06 21:35:48', '2024-08-06 21:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_title`, `created_at`, `updated_at`) VALUES
(2, 'Drama', '2024-02-12 03:48:49', '2024-08-06 03:35:23'),
(4, 'Comedy', '2024-02-12 04:17:30', '2024-08-06 03:35:31'),
(12, 'Sci-Fi', '2024-08-06 03:35:46', '2024-08-06 03:35:46'),
(13, 'Horror', '2024-08-06 03:35:58', '2024-08-06 03:35:58'),
(15, 'Action', '2024-08-06 21:37:55', '2024-08-06 21:37:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_02_05_094534_create_sessions_table', 1),
(7, '2024_02_12_092947_create_categories_table', 2),
(8, '2024_02_13_115226_create_books_table', 3),
(9, '2024_02_15_160840_modify_books_table', 4),
(10, '2024_02_19_132943_create_borrows_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('yaminshakil7@gmail.com', '$2y$12$SVfpNMIrAtwcjhCwsWp66Owz0fTHxJ31LLKtDCyOtfarIf8qcbYLO', '2024-02-27 01:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('YISLo5kvdA7rpeS4nlry67ZmFTzD6i0CRGvK9HIs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0dGcTZVOFZ4YmtUdE5KM0hxaXRjVzVEMDNNcWVCOXpPZ1NjUVJJZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1723009432);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(5, 'Kobe Dime', 'kobe24.dime@gmail.com', '09679217171', 'Quezon City, Philippines, 1116', 'admin', NULL, '$2y$12$VmFc5BthZaB4FoV5grAN5en8vnvqpJ73CtfWjwr57ZvRlfaHGKgJu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-04 22:33:49', '2024-08-04 22:33:49'),
(6, 'Kaye Del Rosario', 'kaye.delrosario@gmail.com', '09679216161', 'Olongapo, Philippines, 2200', 'user', NULL, '$2y$12$g.cX2L2TivhC91S3GdllyONfl.T.h.7DFX3LyBI6xqUHRkvw0.z2K', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-04 22:37:28', '2024-08-04 22:37:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Indexes for table `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `borrows_book_id_foreign` (`book_id`),
  ADD KEY `borrows_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `borrows`
--
ALTER TABLE `borrows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `borrows`
--
ALTER TABLE `borrows`
  ADD CONSTRAINT `borrows_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `borrows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
