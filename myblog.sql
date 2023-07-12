-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 07:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `detail`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Who is DigiMedia Agency', 'We hope this DigiMedia template is useful for your work. You can use this template for any purpose. You may contribute a little amount via PayPal to support TemplateMo in creating new templates regularly.', 'https://ibb.co/JcrnJGn', '2023-07-01 10:49:39', '2023-07-01 10:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `admincontacts`
--

CREATE TABLE `admincontacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contactinfo` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admincontacts`
--

INSERT INTO `admincontacts` (`id`, `img`, `contactinfo`, `created_at`, `updated_at`) VALUES
(1, 'https://ibb.co/3hHjDch', '010-020-0340', '2023-07-01 10:53:49', '2023-07-01 10:53:49'),
(2, 'https://ibb.co/3hHjDch', '010-020-0340', '2023-07-01 10:53:49', '2023-07-01 10:53:49'),
(3, 'https://ibb.co/3hHjDch', '010-020-0340', '2023-07-01 10:53:49', '2023-07-01 10:53:49'),
(4, 'https://ibb.co/3hHjDch', '010-020-0340', '2023-07-01 10:53:49', '2023-07-01 10:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyline` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `keyline`, `title`, `description`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Digital Media Agency', 'We Boost Your Website Traffic', 'This template is brought to you by TemplateMo website. Feel free to use this for a commercial purpose. You are not allowed to redistribute the template ZIP file on any other template website. Thank you.', 'https://ibb.co/6v3vNjd', '2023-07-01 10:51:48', '2023-07-01 10:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blogimg` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category`, `title`, `description`, `author_img`, `author_name`, `created_at`, `updated_at`, `blogimg`) VALUES
(1, 'SEO Analysis', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adelore Eiusmod Tempor Incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.', 'https://ibb.co/yqtwsGC', 'Sujon Ekka', '2023-07-01 10:57:52', '2023-07-01 11:05:00', 'https://ibb.co/jyX5zJC'),
(2, 'traffic worth', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adelore Eiusmod Tempor Incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.', 'https://ibb.co/yqtwsGC', 'Sujon Ekka', '2023-07-01 10:57:52', '2023-07-03 17:26:44', 'https://ibb.co/jyX5zJC'),
(3, 'Digital marketing', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adelore Eiusmod Tempor Incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.', 'https://ibb.co/yqtwsGC', 'Sujon Ekka', '2023-07-01 10:57:52', '2023-07-03 17:37:32', 'https://ibb.co/jyX5zJC'),
(4, 'Web Design', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adelore Eiusmod Tempor Incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.', 'https://ibb.co/yqtwsGC', 'Sujon Ekka', '2023-07-01 10:57:52', '2023-07-03 17:37:45', 'https://ibb.co/jyX5zJC'),
(5, 'laravel', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adelore Eiusmod Tempor Incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.', 'https://ibb.co/yqtwsGC', 'Sujon Ekka', '2023-07-01 10:57:52', '2023-07-03 17:37:53', 'https://ibb.co/jyX5zJC'),
(6, 'Why PHP', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adelore Eiusmod Tempor Incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.', 'https://ibb.co/yqtwsGC', 'Sujon Ekka', '2023-07-01 10:57:52', '2023-07-03 17:38:03', 'https://ibb.co/jyX5zJC'),
(7, 'Wocommerce website', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adelore Eiusmod Tempor Incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.', 'https://ibb.co/yqtwsGC', 'Sujon Ekka', '2023-07-01 10:57:52', '2023-07-03 17:38:23', 'https://ibb.co/jyX5zJC'),
(8, 'what is Freelancing', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adelore Eiusmod Tempor Incididunt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doers itii eiumod deis tempor incididunt ut labore.', 'https://ibb.co/yqtwsGC', 'Sujon Ekka', '2023-07-01 10:57:52', '2023-07-03 17:38:38', 'https://ibb.co/jyX5zJC');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `img`, `created_at`, `updated_at`) VALUES
(1, 'সুজন এক্কা', 'sujonekka100@gmail.com', 'fd', 'fdf', '2023-07-03 02:20:15', '2023-07-03 02:20:15'),
(4, 'Sujon Ekka', 'ekka.stu2016@juniv.edu', 'demo data sent', 'welcome to larvel blade with axios js', '2023-07-03 02:22:22', '2023-07-03 02:22:22'),
(12, 'Sathi Ekka', 'sati@gmail.com', 'controller', 'laravel Blade template', '2023-07-03 02:25:23', '2023-07-03 02:25:23'),
(34, 'mithhi', 'sujonfdfekka100@gmail.com', 'controllerfdf', 'fdfdffdf', '2023-07-03 02:26:56', '2023-07-03 02:26:56'),
(37, 'sjui', 'fsujonekka100@gmail.com', 'controllefdrr', 'fdfv', '2023-07-03 02:31:06', '2023-07-03 02:31:06'),
(38, 'sf', 'fd@gmail.com', 'fdf', 'dfdg', '2023-07-03 02:33:04', '2023-07-03 02:33:04'),
(42, 'Sujonfdf Ekka', 'sujofdfnekka100@gmail.com', 'fdfdf', 'fdfdf', '2023-07-03 02:34:33', '2023-07-03 02:34:33'),
(49, 'Sujonfdf Efdfkka', 'sujofdffdfnekka100@gmail.com', 'fdfdffdf', 'fdfdffdf', '2023-07-03 02:43:30', '2023-07-03 02:43:30'),
(51, 'Sujonfdff Efdfkka', 'sujofdffdffnekka100@gmail.com', 'fdfdffdff', 'ffdfdffdf', '2023-07-03 02:44:33', '2023-07-03 02:44:33'),
(56, 'Sujon Ekka', 'sujonekka100f@gmail.com', 'sdf', 'f', '2023-07-03 02:48:11', '2023-07-03 02:48:11');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_07_01_063052_create_abouts_table', 2),
(3, '2023_07_01_063216_create_banners_table', 2),
(4, '2023_07_01_063252_create_skils_table', 2),
(5, '2023_07_01_063324_create_services_table', 2),
(6, '2023_07_01_063349_create_reports_table', 2),
(7, '2023_07_01_063408_create_quotes_table', 2),
(8, '2023_07_01_063525_create_blogs_table', 2),
(9, '2023_07_01_063548_create_contacts_table', 2),
(10, '2023_07_01_064110_create_admincontacts_table', 2),
(11, '2023_07_01_064154_create_sociallinks_table', 2),
(12, '2023_07_01_064228_create_seoproperties_table', 2),
(13, '2023_07_01_074622_create_projects_table', 2),
(14, '2023_07_01_110031_add_blogimg_to_blogs', 3),
(15, '2023_07_01_110913_add_img_to_projects', 4),
(16, '2023_07_01_111923_create_reportitems_table', 5),
(17, '2023_07_01_112824_drop_report_item_from_reports_table', 6),
(18, '2023_07_01_113621_drop_name_from_services_table', 7),
(19, '2023_07_03_044731_drop_quotes_table', 8),
(20, '2023_07_03_060816_create_quotes_table', 9);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keynote` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `keynote`, `created_at`, `updated_at`, `img`) VALUES
(1, 'Web development', 'sale', '2023-07-01 11:12:15', '2023-07-01 11:12:15', 'https://ibb.co/yFZ96jD'),
(2, 'Affiliate Marketing', 'SEO', '2023-07-01 11:12:15', '2023-07-01 11:12:15', 'https://ibb.co/yFZ96jD'),
(3, 'Web Design', 'reqular', '2023-07-01 11:12:15', '2023-07-01 11:13:26', 'https://ibb.co/yFZ96jD'),
(4, 'Javascript expert', 'Ready to hire', '2023-07-01 11:12:15', '2023-07-01 11:14:09', 'https://ibb.co/yFZ96jD');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url_name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `url_name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'https://corephp.net/', 'sujonekka1@gmail.com', '2023-07-03 06:11:31', '2023-07-03 06:11:31'),
(9, 'https://corephp.net/', 'suj@Gmail.com', '2023-07-03 06:12:18', '2023-07-03 06:12:18'),
(10, 'w3Schools.com', 'w3a@Gmail.com', '2023-07-03 06:13:01', '2023-07-03 06:13:01'),
(11, 'https://corephp.net/', 'hasanaliju4646@gmail.com', '2023-07-03 06:18:38', '2023-07-03 06:18:38'),
(12, 'https://corephp.net/', 'ekka.stu2016@juniv.edu', '2023-07-03 07:06:57', '2023-07-03 07:06:57'),
(13, 'https://corephp.net/', 'sujonekka100@gmail.com', '2023-07-03 07:08:46', '2023-07-03 07:08:46'),
(14, 'https://corephp.net/', 'hasanalijfu4646@gmail.com', '2023-07-03 08:55:17', '2023-07-03 08:55:17'),
(15, 'https://corephp.net/', 'sujonekkaff1@gmail.com', '2023-07-03 09:06:50', '2023-07-03 09:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `reportitems`
--

CREATE TABLE `reportitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reportname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reportitems`
--

INSERT INTO `reportitems` (`id`, `reportname`, `created_at`, `updated_at`) VALUES
(1, 'Optimized Template', '2023-07-01 11:31:13', '2023-07-01 11:31:13'),
(2, 'Data Info', '2023-07-01 11:31:13', '2023-07-01 11:31:13'),
(3, 'SEO Analysis', '2023-07-01 11:31:13', '2023-07-01 11:31:43'),
(4, 'trafic visit', '2023-07-01 11:31:13', '2023-07-01 11:32:06'),
(5, 'Optimized Template', '2023-07-01 11:31:13', '2023-07-01 11:31:13'),
(6, 'Data Info', '2023-07-01 11:31:13', '2023-07-01 11:31:13'),
(7, 'SEO Analysis', '2023-07-01 11:31:13', '2023-07-01 11:31:43'),
(8, 'trafic visit', '2023-07-01 11:31:13', '2023-07-01 11:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_note` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `title`, `description`, `text_note`, `img`, `created_at`, `updated_at`) VALUES
(1, 'SEO Analysis & Daily Reports', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedr do eiusmod deis tempor incididunt ut labore et dolore kengan darwin doerski token. dover lipsum lorem and the others.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedr do eiusmod deis tempor incididunt.', 'https://ibb.co/LhQS5ST', '2023-07-01 11:22:53', '2023-07-01 11:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `seoproperties`
--

CREATE TABLE `seoproperties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pagename` enum('home','about','service','project','blog','contact') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ogsitename` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ogurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ogtitle` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ogdescription` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ogimg` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Apartments ', 'https://ibb.co/b2D5HLR', '2023-07-01 11:34:54', '2023-07-01 11:35:24'),
(2, 'Food & Life ', 'https://ibb.co/b2D5HLR', '2023-07-01 11:34:54', '2023-07-01 11:37:37'),
(3, 'Cars ', 'https://ibb.co/b2D5HLR', '2023-07-01 11:34:54', '2023-07-01 11:37:48'),
(4, 'Shopping ', 'https://ibb.co/b2D5HLR', '2023-07-01 11:34:54', '2023-07-01 11:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `skils`
--

CREATE TABLE `skils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skils`
--

INSERT INTO `skils` (`id`, `name`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 'html', '95', '2023-07-01 11:38:54', '2023-07-01 11:38:54'),
(2, 'css', '90', '2023-07-01 11:38:54', '2023-07-01 11:38:54'),
(3, 'javascript', '90', '2023-07-01 11:38:54', '2023-07-01 11:38:54'),
(4, 'php', '95', '2023-07-01 11:38:54', '2023-07-01 11:38:54'),
(5, 'laravel', '90', '2023-07-01 11:38:54', '2023-07-01 11:38:54');

-- --------------------------------------------------------

--
-- Table structure for table `sociallinks`
--

CREATE TABLE `sociallinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebooklink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `githublink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitterlink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribblelink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sociallinks`
--

INSERT INTO `sociallinks` (`id`, `facebooklink`, `githublink`, `twitterlink`, `dribblelink`, `created_at`, `updated_at`) VALUES
(1, 'https://web.facebook.com/creativecodee', 'https://github.com/sujonekka', 'https://github.com/sujonekka', 'https://github.com/sujonekka', '2023-07-01 11:51:17', '2023-07-01 11:51:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admincontacts`
--
ALTER TABLE `admincontacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `quotes_email_unique` (`email`);

--
-- Indexes for table `reportitems`
--
ALTER TABLE `reportitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seoproperties`
--
ALTER TABLE `seoproperties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skils`
--
ALTER TABLE `skils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sociallinks`
--
ALTER TABLE `sociallinks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admincontacts`
--
ALTER TABLE `admincontacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `reportitems`
--
ALTER TABLE `reportitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seoproperties`
--
ALTER TABLE `seoproperties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skils`
--
ALTER TABLE `skils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sociallinks`
--
ALTER TABLE `sociallinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
