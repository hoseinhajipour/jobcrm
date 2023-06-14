-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2023 at 07:47 PM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cgworkir_jobdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-06-09 12:23:52', '2023-06-09 12:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(63, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(65, 9, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(67, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(68, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(69, 10, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(70, 10, 'areas_of_recruitment', 'text', 'Areas Of Recruitment', 1, 1, 1, 1, 1, 1, '{}', 3),
(71, 10, 'type_of_employment', 'text', 'Type Of Employment', 1, 1, 1, 1, 1, 1, '{}', 4),
(72, 10, 'number_of_recruits', 'text', 'Number Of Recruits', 1, 1, 1, 1, 1, 1, '{}', 5),
(73, 10, 'gender', 'text', 'Gender', 1, 1, 1, 1, 1, 1, '{}', 6),
(74, 10, 'age', 'text', 'Age', 1, 1, 1, 1, 1, 1, '{}', 7),
(75, 10, 'education', 'text', 'Education', 1, 1, 1, 1, 1, 1, '{}', 8),
(76, 10, 'day_of_the_week', 'text', 'Day Of The Week', 1, 1, 1, 1, 1, 1, '{}', 9),
(77, 10, 'working_time', 'text', 'Working Time', 1, 1, 1, 1, 1, 1, '{}', 10),
(78, 10, 'closing_time', 'text', 'Closing Time', 1, 1, 1, 1, 1, 1, '{}', 11),
(79, 10, 'break_time', 'text', 'Break Time', 0, 1, 1, 1, 1, 1, '{}', 12),
(80, 10, 'preferential_conditions', 'text', 'Preferential Conditions', 0, 1, 1, 1, 1, 1, '{}', 13),
(81, 10, 'salary', 'text', 'Salary', 1, 1, 1, 1, 1, 1, '{}', 14),
(82, 10, 'damdam_place_name', 'text', 'Damdam Place Name', 1, 1, 1, 1, 1, 1, '{}', 15),
(83, 10, 'meal_included', 'text', 'Meal Included', 1, 1, 1, 1, 1, 1, '{}', 16),
(84, 10, 'negotiable', 'text', 'Negotiable', 1, 1, 1, 1, 1, 1, '{}', 17),
(85, 10, 'probation_period', 'text', 'Probation Period', 1, 1, 1, 1, 1, 1, '{}', 18),
(86, 10, 'performance_pay', 'text', 'Performance Pay', 1, 1, 1, 1, 1, 1, '{}', 19),
(87, 10, 'contact', 'text', 'Contact', 1, 1, 1, 1, 1, 1, '{}', 20),
(88, 10, 'fax_number', 'text', 'Fax Number', 0, 1, 1, 1, 1, 1, '{}', 21),
(89, 10, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 22),
(90, 10, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 23),
(91, 10, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 24),
(92, 10, 'agreed', 'text', 'Agreed', 1, 1, 1, 1, 1, 1, '{}', 25),
(93, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 26),
(94, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 27),
(95, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(96, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(97, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(98, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(99, 12, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(100, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(101, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(102, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(103, 5, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{}', 16),
(104, 5, 'customer', 'text', 'Customer', 1, 1, 1, 1, 1, 1, '{}', 17);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `display_name_singular` varchar(191) NOT NULL,
  `display_name_plural` varchar(191) NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `model_name` varchar(191) DEFAULT NULL,
  `policy_name` varchar(191) DEFAULT NULL,
  `controller` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-06-09 12:23:52', '2023-06-13 16:36:28'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(9, 'job_category', 'job-category', 'Job Category', 'Job Categories', NULL, 'App\\Models\\JobCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-09 13:14:26', '2023-06-09 13:15:58'),
(10, 'jobs', 'jobs', 'Job', 'Jobs', NULL, 'App\\Models\\Job', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-06-12 01:58:24', '2023-06-12 01:58:24'),
(11, 'job_type', 'job-type', 'Job Type', 'Job Types', NULL, 'App\\Models\\JobType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-12 16:24:53', '2023-06-12 16:26:52'),
(12, 'regions', 'regions', 'Region', 'Regions', NULL, 'App\\Models\\Region', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-12 16:31:15', '2023-06-12 16:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `areas_of_recruitment` varchar(191) NOT NULL,
  `type_of_employment` varchar(191) NOT NULL,
  `number_of_recruits` int(11) NOT NULL,
  `gender` varchar(191) NOT NULL,
  `age` varchar(191) NOT NULL,
  `education` varchar(191) NOT NULL,
  `day_of_the_week` varchar(191) NOT NULL,
  `working_time` time NOT NULL,
  `closing_time` time NOT NULL,
  `break_time` varchar(191) DEFAULT NULL,
  `preferential_conditions` varchar(191) DEFAULT NULL,
  `salary` varchar(191) NOT NULL,
  `damdam_place_name` varchar(191) NOT NULL,
  `meal_included` tinyint(1) NOT NULL DEFAULT 0,
  `negotiable` tinyint(1) NOT NULL DEFAULT 0,
  `probation_period` tinyint(1) NOT NULL DEFAULT 0,
  `performance_pay` tinyint(1) NOT NULL DEFAULT 0,
  `contact` varchar(191) NOT NULL,
  `fax_number` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `address` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE `job_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`id`, `title`, `icon`, `created_at`, `updated_at`) VALUES
(1, '모두', NULL, '2023-06-09 13:16:42', '2023-06-09 13:16:42'),
(2, '리셉션', NULL, '2023-06-09 13:16:51', '2023-06-09 13:16:51'),
(3, '비서', NULL, '2023-06-09 13:16:58', '2023-06-09 13:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE `job_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, '취업', '2023-06-12 16:27:43', '2023-06-12 16:27:43'),
(2, '아르바이트', '2023-06-12 16:27:52', '2023-06-12 16:27:52'),
(3, '프리랜서', '2023-06-12 16:28:02', '2023-06-12 16:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-06-09 12:23:51', '2023-06-09 12:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `target` varchar(191) NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-06-09 12:23:51', '2023-06-09 12:23:51', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 17, 1, '2023-06-09 12:23:51', '2023-06-12 16:13:05', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 18, 1, '2023-06-09 12:23:51', '2023-06-12 16:13:53', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 18, 2, '2023-06-09 12:23:51', '2023-06-12 16:13:53', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 4, '2023-06-09 12:23:51', '2023-06-12 16:13:53', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-06-09 12:23:51', '2023-06-12 16:13:04', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-06-09 12:23:51', '2023-06-12 16:13:04', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-06-09 12:23:51', '2023-06-12 16:13:04', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-06-09 12:23:51', '2023-06-12 16:13:04', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 5, '2023-06-09 12:23:51', '2023-06-12 16:13:53', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 17, 4, '2023-06-09 12:23:52', '2023-06-12 16:13:49', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 17, 2, '2023-06-09 12:23:52', '2023-06-12 16:13:49', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 17, 3, '2023-06-09 12:23:52', '2023-06-12 16:13:49', 'voyager.pages.index', NULL),
(15, 1, 'Job Categories', '', '_self', NULL, NULL, NULL, 6, '2023-06-09 13:14:26', '2023-06-12 16:13:53', 'voyager.job-category.index', NULL),
(16, 1, 'Jobs', '', '_self', NULL, NULL, NULL, 7, '2023-06-12 01:58:24', '2023-06-12 16:13:53', 'voyager.jobs.index', NULL),
(17, 1, 'Blog Management', '', '_self', 'voyager-window-list', '#000000', NULL, 3, '2023-06-12 16:12:56', '2023-06-12 16:14:35', NULL, ''),
(18, 1, 'User Management', '', '_self', 'voyager-people', '#000000', NULL, 2, '2023-06-12 16:13:40', '2023-06-12 16:14:16', NULL, ''),
(19, 1, 'Job Types', '', '_self', NULL, NULL, NULL, 8, '2023-06-12 16:24:53', '2023-06-12 16:24:53', 'voyager.job-type.index', NULL),
(20, 1, 'Regions', '', '_self', NULL, NULL, NULL, 9, '2023-06-12 16:31:15', '2023-06-12 16:31:15', 'voyager.regions.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2020_11_26_000000_create_spammers_table', 1),
(5, '2016_01_01_000000_add_voyager_user_fields', 2),
(6, '2016_01_01_000000_create_data_types_table', 2),
(7, '2016_05_19_173453_create_menu_table', 2),
(8, '2016_10_21_190000_create_roles_table', 2),
(9, '2016_10_21_190000_create_settings_table', 2),
(10, '2016_11_30_135954_create_permission_table', 2),
(11, '2016_11_30_141208_create_permission_role_table', 2),
(12, '2016_12_26_201236_data_types__add__server_side', 2),
(13, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(14, '2017_01_14_005015_create_translations_table', 2),
(15, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(16, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(17, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(18, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(19, '2017_08_05_000000_add_group_to_settings_table', 2),
(20, '2017_11_26_013050_add_user_role_relationship', 2),
(21, '2017_11_26_015000_create_user_roles_table', 2),
(22, '2018_03_11_000000_add_user_settings', 2),
(23, '2018_03_14_000000_add_details_to_data_types_table', 2),
(24, '2018_03_16_000000_make_settings_value_nullable', 2),
(25, '2016_01_01_000000_create_pages_table', 3),
(26, '2016_01_01_000000_create_posts_table', 3),
(27, '2016_02_15_204651_create_categories_table', 3),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 3),
(29, '2023_06_12_052536_create_jobs_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'service', 'service', '<p>service</p>', NULL, 'service', 'service', 'service', 'ACTIVE', '2023-06-10 16:04:48', '2023-06-10 16:04:48'),
(3, 2, 'mobile', 'mobile', '<pre>mobile</pre>', NULL, 'mobile', 'mobile', 'mobile', 'ACTIVE', '2023-06-10 16:05:11', '2023-06-10 16:05:11'),
(4, 2, 'groups', 'groups', '<pre>groups</pre>', NULL, 'groups', 'groups', 'groups', 'ACTIVE', '2023-06-10 16:05:47', '2023-06-10 16:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(2, 'browse_bread', NULL, '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(3, 'browse_database', NULL, '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(4, 'browse_media', NULL, '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(5, 'browse_compass', NULL, '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(6, 'browse_menus', 'menus', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(7, 'read_menus', 'menus', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(8, 'edit_menus', 'menus', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(9, 'add_menus', 'menus', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(10, 'delete_menus', 'menus', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(11, 'browse_roles', 'roles', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(12, 'read_roles', 'roles', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(13, 'edit_roles', 'roles', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(14, 'add_roles', 'roles', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(15, 'delete_roles', 'roles', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(16, 'browse_users', 'users', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(17, 'read_users', 'users', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(18, 'edit_users', 'users', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(19, 'add_users', 'users', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(20, 'delete_users', 'users', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(21, 'browse_settings', 'settings', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(22, 'read_settings', 'settings', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(23, 'edit_settings', 'settings', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(24, 'add_settings', 'settings', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(25, 'delete_settings', 'settings', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(26, 'browse_categories', 'categories', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(27, 'read_categories', 'categories', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(28, 'edit_categories', 'categories', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(29, 'add_categories', 'categories', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(30, 'delete_categories', 'categories', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(31, 'browse_posts', 'posts', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(32, 'read_posts', 'posts', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(33, 'edit_posts', 'posts', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(34, 'add_posts', 'posts', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(35, 'delete_posts', 'posts', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(36, 'browse_pages', 'pages', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(37, 'read_pages', 'pages', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(38, 'edit_pages', 'pages', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(39, 'add_pages', 'pages', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(40, 'delete_pages', 'pages', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(46, 'browse_job_category', 'job_category', '2023-06-09 13:14:26', '2023-06-09 13:14:26'),
(47, 'read_job_category', 'job_category', '2023-06-09 13:14:26', '2023-06-09 13:14:26'),
(48, 'edit_job_category', 'job_category', '2023-06-09 13:14:26', '2023-06-09 13:14:26'),
(49, 'add_job_category', 'job_category', '2023-06-09 13:14:26', '2023-06-09 13:14:26'),
(50, 'delete_job_category', 'job_category', '2023-06-09 13:14:26', '2023-06-09 13:14:26'),
(51, 'browse_jobs', 'jobs', '2023-06-12 01:58:24', '2023-06-12 01:58:24'),
(52, 'read_jobs', 'jobs', '2023-06-12 01:58:24', '2023-06-12 01:58:24'),
(53, 'edit_jobs', 'jobs', '2023-06-12 01:58:24', '2023-06-12 01:58:24'),
(54, 'add_jobs', 'jobs', '2023-06-12 01:58:24', '2023-06-12 01:58:24'),
(55, 'delete_jobs', 'jobs', '2023-06-12 01:58:24', '2023-06-12 01:58:24'),
(56, 'browse_job_type', 'job_type', '2023-06-12 16:24:53', '2023-06-12 16:24:53'),
(57, 'read_job_type', 'job_type', '2023-06-12 16:24:53', '2023-06-12 16:24:53'),
(58, 'edit_job_type', 'job_type', '2023-06-12 16:24:53', '2023-06-12 16:24:53'),
(59, 'add_job_type', 'job_type', '2023-06-12 16:24:53', '2023-06-12 16:24:53'),
(60, 'delete_job_type', 'job_type', '2023-06-12 16:24:53', '2023-06-12 16:24:53'),
(61, 'browse_regions', 'regions', '2023-06-12 16:31:15', '2023-06-12 16:31:15'),
(62, 'read_regions', 'regions', '2023-06-12 16:31:15', '2023-06-12 16:31:15'),
(63, 'edit_regions', 'regions', '2023-06-12 16:31:15', '2023-06-12 16:31:15'),
(64, 'add_regions', 'regions', '2023-06-12 16:31:15', '2023-06-12 16:31:15'),
(65, 'delete_regions', 'regions', '2023-06-12 16:31:15', '2023-06-12 16:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `seo_title` varchar(191) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `customer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `url`, `customer`) VALUES
(1, 2, 2, 'Lorem Ipsum Post', '', 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-06-09 12:23:52', '2023-06-13 16:40:20', 'aa.com', 'test'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-06-09 12:23:52', '2023-06-09 12:23:52', '', ''),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-06-09 12:23:52', '2023-06-09 12:23:52', '', ''),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2023-06-09 12:23:52', '2023-06-09 12:23:52', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'seoul', '2023-06-12 16:32:08', '2023-06-12 16:46:49'),
(2, '경기', '2023-06-12 16:32:18', '2023-06-12 16:32:18'),
(3, '인천', '2023-06-12 16:32:51', '2023-06-12 16:32:51'),
(4, '대전', '2023-06-12 16:33:01', '2023-06-12 16:33:01'),
(5, '세종', '2023-06-12 16:33:14', '2023-06-12 16:33:14'),
(6, '충남', '2023-06-12 16:33:51', '2023-06-12 16:33:51'),
(7, '충북', '2023-06-12 16:33:58', '2023-06-12 16:33:58'),
(8, '광주', '2023-06-12 16:34:07', '2023-06-12 16:34:07'),
(9, '전남', '2023-06-12 16:34:15', '2023-06-12 16:34:15'),
(10, '전북', '2023-06-12 16:34:26', '2023-06-12 16:34:26'),
(11, '대구', '2023-06-12 16:34:35', '2023-06-12 16:34:35'),
(12, '경북', '2023-06-12 16:34:48', '2023-06-12 16:34:48'),
(13, '부산', '2023-06-12 16:34:57', '2023-06-12 16:34:57'),
(14, '울산', '2023-06-12 16:35:12', '2023-06-12 16:35:12'),
(15, '경남', '2023-06-12 16:35:20', '2023-06-12 16:35:20'),
(16, '강원', '2023-06-12 16:35:28', '2023-06-12 16:35:28'),
(17, '제주', '2023-06-12 16:35:39', '2023-06-12 16:35:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(3, 'employer', 'employer', '2023-06-10 15:35:40', '2023-06-10 15:35:40'),
(4, 'job-seeker', 'job seeker', '2023-06-10 15:37:10', '2023-06-10 15:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'All That Reception', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Job Crm', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(13, 'policy.job-seeker', 'job seeker', '개인 가입 회원 약관 :\r\n제1조: 목적\r\n본 약관은 ***(이하: “회사”라 합니다)이 운영하는 웹사이트(이하“사이트”라 합니다) 및 모바일 애\r\n플리케이션(이하 “애플리케이션”이라 하며, 사이트와 애플리케이션을 총칭하여 “사이트 등”이라\r\n합니다)을 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요한 사\r\n항의 규정을 목적으로 합니다.\r\n제2조 용어의 정의\r\n본 약관에서 사용하는 용어의 정의는 아래와 같습니다.\r\n1. 1) “사이트”라 함은 회사가 서비스를 이용자에게 제공하기 하여 제작, 운영하는 사이트를 말합\r\n니다. 현재 회사가 운영하는 사이트의 접속 주소는 아래와 같습니다.\r\n1. (페이지 주소)\r\n2.\r\n2. 2) “서비스”라 함은 채용정보, 이력서 및 기업정보 제공 기타의 서비스를 통하여 구직,\r\n채용시장에서 구직자와 기업의 연결을 돕는 플랫폼 서비스입니다. 구책적으로는\r\n회사가 기업 또는 구직자가 구인, 구직과 교육을 목적으로 등록하는 각종 자료를\r\nDB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사\r\n이트에서 제공하는 모든 부대 서비스를 말한다. 화사가 제공하는 서비스는 유형에\r\n따라 무료 또는 유료로 제공합니다. 서비스의 자세한 내용은 제**조에서 정하는 바\r\n에 따릅니다.\r\n3. 3) “이용자”라 함은 사이트 등에 접속하여 본 약관에 따라 회사가 제공하는 서비스를\r\n이용하는 회원(기업회원 및 개인회원을 포함) 및 비회원을 말합니다.\r\n4. 4) \"개인회원\"이라 함은 본 서비스를 이용하기 위하여 본 약관에 동의하고 회사와 서비\r\n스 이용계약을 체결하여 개인회원ID를 부여받은 이용자를 말합니다.\r\n5. 5) “비회원”이라 함은 회사와 서비스 이용계약을 체결하지 않은 채 사이트 등을 통하\r\n여 회사가 제공하는 서비스를 이용하는 이용자를 말합니다.\r\n6. 6) \"이용자ID\" 또는 \"개인회원ID\"라 함은 개인회원의 식별 및 서비스 이용을 위하여 개\r\n인회원이 선정하거나 회사가 부여하는 문자와 숫자의 조합을 말합니다.\r\n7. 7) \"비밀번호\"라 함은 회사의 서비스를 이용하려는 사람이 개인회원ID를 부여 받은 자\r\n와 동일인임을 확인하고 개인회원의 권익을 보호하기 위하여 개인회원이 선정하거\r\n나 회사가 부여하는 문자와 숫자의 조합을 말합니다.\r\n8. 8) “계정”이라 함은 개인회원의 개인정보, 이력서 등을 등록, 관리할 수 있도록 회사가\r\n개인회원에게 제공하는 공간을 말합니다.\r\n제3조 약관의 명시와 개정\r\n1. 1) 회사는 이 약관의 내용과 상호, 영업소 소재지, 사업자등록번호, 연락처 등을 이용자가 알 수\r\n있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다.\r\n2) 회사는 약관의 규제 등에 관한법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용\r\n촉진 및 정보보호 등에 관한 법률등 관연법을 위배하지 않는 범위에서 이약관을\r\n개정할 수 있다.\r\n3) 회사가 약관을 개정할 경우에는 개정 약관 적용일 최소 7일전(약관의 변경이 개인회\r\n원에게 적용일자 7일 전부터 적용일자 전일까지) 공지한다. 단 “회원”의 권리, 의\r\n무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.\r\n4) 회원은 변경괸 약관에 대해 거부할 권리가 있다. 회원은 변경된 시접으로부터 15일\r\n이내에 거부의사를 표명할 수 있다. 만약, 회원이 거부의사를 표시하지 않거나, 전\r\n항에 따라 시행일 이후에 서비스를 이용하는 경우에는 동의한 것으로 간주한다.\r\n제4조 약관의 외 준칙\r\n1. 1) 본 약관에서 규정하지 않는 사항에 관해서는 약관 법률, 정보통신기본법, 전기통신사업법, 정\r\n보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.\r\n2) 회원이 회사와 개별 계약을 체결하여 서비스를 이용하는 경우, 개인회원의 서비스 이용과 관련\r\n된권리 의무는 순차적으로 개발 걔역, 개별 서비스 이용약관, 본 약관에서 정한 내용에 따\r\n라 규율됩니다.\r\n3) 각 사이트 및 서비스 이용약관이 있는 경우에는 서비스 이용약관이 우선한다.\r\n제5조 개인회원에 대한 고지, 통지 및 공지\r\n회사는 개인회원에게 서비스 정책, 이용약관, 판매약관, 개인정보 처리방침 등 일체의 약과느 서\r\n비스 이용 관련 일정한 사항이나 정보를 알리거나 난내할 목적으로 개인회원에게 각종 고지나 통\r\n지를 이행할 수 있으며, 사이트 등의 게시판이나 화면에 일정한 사항을 게시하여 공지함으로써\r\n각 개인회원에 대한 각종 고지나 통지를 갈음할 수 있습니다. 이와 관련하여 고지 통지 수단, 고\r\n이 방법, 공비 기간 등의 상세한 내용은 개인정보 처리방침을 확인 바랍니다.\r\n제6조 이용계약의 성립\r\n1. 1) 회사의 서비스 이용계약(이하: ‘이용약관’)은 서비스를 이용하고자 하는 자가 본 약관과 개인\r\n정보처리방침을 읽고 “동의” 또는 “획인” 버튼을 누른 경우 본 약관에 동의한 것으로 간주\r\n한다.\r\n2) 사이트 등을 통한 회원가입 시 이용희망자는 본 약관 및 개인정보 처리방침에 대한\r\n동의 표시 및 회원가입 신청을 하여야 하며, 회사는 이용희망자가 본 약관 및 개\r\n인정보 처리방침의 내용을 읽고 동의한 것으로 봅니다.\r\n3) 페이스북 등 외부 서비스와의 연동을 통한 회원가입 시 이용희망자는 본 약관, 개인정\r\n보 처리방침 및 서비스 제공을 위한 회사의 외부 서비스 계정 정보 접근 및 활용\r\n에 대한 등의 표시 및 회원가입 신청을 하여야 하며, 회사는 이용희망자가 본 약\r\n관 및 개인정보 처리방침의 내용을 읽고 동의한 것으로 봅니다.\r\n4) 회사는 본인 확인을 위하여 필요 시 이용자에게 본인인증을 요구할 수 있습니다. 이\r\n경우 이용자는 휴대폰인증 등 회사가 제공하는 본인인증 방식 중 하나를 선택하여\r\n본인인증 절차를 거쳐야 하며, 이용자가 자신의 실명으로 본인 인증정차를 거치지\r\n않는 경우, 회사에 대하여 일체의 권리를 주장할 수 없습니다.\r\n5) 이용희망자가 제2항 또는 제3항에 따라 회원가입 신청한 후. 회사가 이용희망자에게\r\n승낙의 의사가 담긴 이메일 또는 서면 기타 회사가 정한 수단으로 통지함으로써\r\n서비스 이용계약이 성립합니다.\r\n6) 이용자는 본 약관 및 회사의 개인정보 처리방침에서 정한 항목을 제공해야 합니다.\r\n제7조 이용신청의 승낙과 제한\r\n1. 1) 화사는 전조의 규정에 의한 이용희망자에 대하여 다음 각호의 사유를 모두 충족할\r\n경우 회사가 제공하는 절차에 따라 개인회원 가입을 승낙합니다.\r\n1. 회사의 업무수행 및 서비스 제공을 위한 설비의 여유•기술상 지장이 없는 경우\r\n2. 본 약관에서 정하는 승낙 제한 또는 거절, 보류 사유에 해당하지 않는 경우\r\n2) 다음 각 호 중 어느 하나에 해당할 경우, 회사는 이용희망자의 개인회원 가입 신청을 승\r\n낙하지 아니하며, 개인회원이 제2호 또는 제3호에 해당하는 행위를 한 경우, 회사는 이에\r\n대한 민사상 손해 배상 청구, 관계법령에 따른 형사처벌이나 행정제재를 위한 법적 절차를\r\n진행할 수 있습니다.\r\n1. 이용희망자가 만 15세 미만인 경우\r\n2. 개인회원 가입 신청 및/또는 실명인증 시에 실명이 아닌 이름을 이용하였거나 타\r\n인의 명의를 도용한 경우\r\n3. 개인회원 가입 신청 시에 개인회원 정보를 허위로 기재한 경우\r\n제8조 서비스의 내용\r\n1. 1)회사가 제공하는 서비스의 내용은 다음 각호와 같습니다.\r\n1.1. 이력서 및 인제 정보 등록 서비스\r\n2.2. 온라인 입사지원 서비스\r\n3.3. 헤드헌팅/아웃소싱 서비스\r\n4.4. 구인/구직과 관연된 제반 서비스\r\n5.5. 이용자 간의 교류와 소통에 관련한 서비스\r\n6.6. 인적성 검사 서비스(자기진단표)\r\n7.7. 이용자 간의 교류와 소통(콘텐츠 공유를 포함)\r\n8.8. 자료거래에 관련된 서비스\r\n2) 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다. 다만, 서비스의 내용의 추가\r\n또는 변경으로 인하여 개인회원의 권리•의무에 중요한 영향을 미치는 경우, 회사는 추가 또\r\n는 변경된 서비스 내용을 그 적용일로부터 30일 전에 공지합니다.\r\n제9조 개인회원 정보, 이력서의 등록 및 제공\r\n1. 1) 개인회원의 이력서는 개인회원이 회원가입 또는 이력서 작성 및 수정 시 의망한 형태로 등\r\n록 및 제공됩니다.\r\n2. 2) 개인회원은 이력서의 인재정보 등록/미등록 지정, 이력서상의 연락처 공개/비공개를 자유롭\r\n게 선택할 수 있습니다.\r\n3. 3) 개인회원이 이력서의 인재정보 등록 및 제공을 희망하였을 경우, 회사는 개인회원이 다음 각\r\n호의 사항에 대하여 동의한 것으로 보며, 기업회원에게 유료 또는 무료로 이력서 열람 서비스 및/\r\n또는 이력서 추천 서비스를 제공할 수 있습니다. 다만, 개인회원이 이력서의 연락처 각 항목을 비\r\n공개로 지정하였을 경우, 회사는 비공개로 지정된 항목의 연락처 정보를 제공할 수 없습니다. 이\r\n력서 열람 또는 이력서 추천 등에 관한 세부 내용은 개인정보 처리방침 이력서 노출 청책을 확인\r\n바랍니다.\r\n1. 기업회원의 개인회원 이력서 열람\r\n2. 회사가 개인회원 이력서를 기업회원에게 추천\r\n4. 4) 회사는 안정적인 서비스를 제공하기 위해 테스트 및 모니터링 용도로 사이트 운영자가 이력\r\n서 정보를 열람하도록 할 수 있다.\r\n5. 5) 회사는 “회원”의 자류로운 선택에 의하여 등록 및 제공되는 이력서의 정보를 기준(바탕)으로\r\n구직활 데에 보다 유익한 서비스를 제공하기 위하여 이를 개발, 편집, 제구성한 통계 자료로 활\r\n용할 수 있다.\r\n제10조 제휴를 통한 서비스\r\n1. ① 회사는 제휴 관계를 체결한 여타 인터넷 웹 사이트 및 채용박람회 또는 신문, 잡지 등의 오\r\n프라인 매체를 통해 사이트에 등록한 회원의 이력서 정보가 열람될 수 있도록 서비스를 제\r\n공할 수 있다. 단, 제휴 서비스를 통해 노출되는 이력서의 연락처 정보는 회원이 이력서 등\r\n록 시 선택한 연락처 공개 여부에 따라 제공된다.\r\n3. ③ 회사는 회원이 공개를 요청한 이력서에 한해 제휴를 맺은 타 사이트에 이력서 정보를 제공\r\n한다.\r\n제11조 서비스의 요금\r\n1. 1) 개인회원 가입과 이력서 등록은 원칙적으로 무료입니다. 다만 기업회원 또는 사이트에 방문\r\n한 기업체에게 자신에게 자신의 이력서 정보를 보다 효과적으로 노출시키기 위하여 회사가\r\n제공하는 별도의 서비스는 유료로 제공될 수 있습니다.\r\n2. 2) 체용공고 및 기업정보 열람은 원칙적으로 무료이나. 일부 정보 또는 서비스는 이용자에게 유\r\n료로 제공될 수 있습니다.\r\n3. 3) 화사는 유료서비스를 제공할 경우 사이트에 요금에 대해서 공지를 하도록 합니다.\r\n4. 4) 회사는 유료서비스 이용금액을 변경할 수 있으며, 이용요금 변경시 변경된 이용요금5내용\r\n및 변경 내용 적용일을 명시하여 변경 내용 적용일 7일전 또는 관련 법률에서 정한 기한\r\n전까지 개인회원에게 사전 공지합니다.\r\n5. 5) 제2항에 따라 공지된 이용요금 변경 내용은 변경 내용 적용일부터 모든 개인회원에게 적용\r\n됩니다. 다만, 이용요금 변경 내용 적용일 이전에 체결된 계약금액에 영향을 미치지 않도록\r\n합니다.\r\n제12조 서비스의 요금 및 결제\r\n1 회원 가입은 무료입니다.\r\n2. 개인 회원의 이력서 동록은 무료입니다. 다만, 기업회원 또는 사이트에 방문한 기업체에게 자\r\n신의 이력서 정보를 보다 효과적으로 노출시키기 위한 방편으로 페이지 사위 노출 등 별도\r\n의 서비스는 유로로 제공될 수 있습니다.\r\n3. 회사는 유료서비스의 요금 민 상세내용을 사이트에 공지 하여야 합니다.\r\n4. 회사는 유료서비스의 요금을 서비스의 종류 및 기간에 따라 회사가 변경할 수 있습니다. 다만,\r\n변경 이전에 적용 또는 계약한 금액은 소급하여 적용하지 아니합니다.\r\n5. 회원은 유료서비스 이용요금의 지급방법으로 회사가 정한 결제방법 중 하나를 선택할 수 있으\r\n면, 결제의 이행을 위하여 필요한 개인정보를 정확하게 입력하여야 합니다.\r\n6. 회사는 회원이 결제에 필요한 개인정보를 허위 또는 부정확하게 입력함으로 인하려 발생한 회\r\n원의 손해에 대한 책임을 부담하지 않습니다. 단 회사의 고의 또는 중과실에 의한 경우에\r\n는 그러하지 아니합니다.\r\n제13조 이용요금의 환불\r\n1. 1) 화사는 원치적으로 회원이 회사의 서비스 이용규정을 위반한 경우 이용료를 환불하지 않으\r\n며, 서비스 이용제한 등의 추가적인 제재조치가 있을 수 있습니다.\r\n2. 2) 회사는 다음 각호에 해당하는 경우 이용료를 환불합니다. 단, 본 조제1항에 해당하는 경우\r\n회사는 환불에 대한 책임을지지 않습니다.\r\n1.1. 유료서비스 이용이 제시죄지 않은 경우\r\n2.2. 네트원크 또는 시스템 장애로 의해 서비스 이용이 불가능한 경우\r\n3.3. 유료 서비스 신청 후 회원 사정에 의해 서비스가 취소될 경우\r\n3) 이용요급을 환불받고자 하는 개인회원은 환불 사유를 명시한 서면으로 회사에 이용요금의 환\r\n불을 요청(이하 “환불 요청”이라 합니다)하여야 합니다.\r\n4) 회사는 개인회원으로부터 환불 요청을 받은 날로부터 3영업일 이내에 개인회원의 환불 요청이\r\n회사가 정한 환불 요건을 갖추었는지 여부를 판단하여 개인회원에게 그 내용을 통지합니다.\r\n5) 개인회원의 환불 요청이 환불 요건에 부합하는 것으로 판단될 경우, 회사는 제4항의 통지일로\r\n부터 3영업일 이내에 판매약관에서 정한 금액을 환불합니다.\r\n6) 기타 이용요금의 환불 관련 상세 사항은 판매약관에서 정하는 바에 따릅니다.\r\n제14조 서비스 이용시간 및 제한\r\n1. 1) 회사는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공합니다. 다만, 일부 서비\r\n스의 경우 그 종류나 성질을 고려하려 별도로 이용시간을 정할 수 있으며, 회사는 그 이용\r\n시간을 개인회원에게 사전 공지합니다.\r\n2. 2) 회사는 서비스 개선을 위한 시스템을 업데이트 기타 유지보수 작업 등을 진행하고자 하는\r\n경우, 사전에 서비스 중단 시간과 작업 내용을 공지하여 일시적 서비스 중단을 시행할 수\r\n있습니다.\r\n3. 3) 회사의 성실한 의무 이행에도 불구하고 다음 각 호의 사유로 서비스 중지 등 회원의 손해가\r\n발생한 경유, 회사는 그로 인한 책임을 부담하지 않습니다.\r\n1.1. 천재지변 또는 이를 비롯한 불가함력으로 인한 손해\r\n2.2. 회원의 귀책으로 발생한 손해\r\n3.3. 제3자의 고의 또는 과실로 발생한 손해\r\n4.4. 기타 회사의 고의 또는 과실 없이 발생한 손해\r\n4. 4) 제2항 내지 제3항에 해당하지 않는 사유로 인하여 유료 회원이 입은 손해는 본 약관 및 법\r\n령에 따라 배상합니다.\r\n제15조 정보의 제동 또는 기타 광도의 게재\r\n1. 1) 회사는 회원에게 서비스 이용에 필요가 있다고 인정되거나 서비스 개선 및 회원 대상에 서\r\n비스 소개 등의 목적으로 하는 각종 전보에 대해서 전자우편이나 서신우편을 이용한 방법\r\n으로 정보를 제공할 수 있습니다.\r\n2. 2) 회사는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지 등에 게재할\r\n수 있으며, 회원의 메일을 통해 알릴 수 있습니다.\r\n3. 3) 회사는 사이트 등에 게재되어 있는 광고주의 홍보활동에 개인회원이 참여하거나 교신 또는\r\n거래를 함으로써 발생하는 모든 손실과 손해에 대해 일체의 책임을지지 않습니다.\r\n4. 4) 서비스를 이용하는 회원은 서비스 이용시 노출되는 광고 게재에 대해 동의하는 것으로 간주\r\n합니다.\r\n제16조 자료내용의 책임과 회사의 정보 수정 권한\r\n1. 1) 자료라 함은 회원이 서비스를 이용하면서 등록한 채용공고와 이력서 및 사이트에 게시한 게\r\n시물 등을 말합니다.\r\n2. 2) 회원은 자료 및 게시물을 사실에 근거하여 성실하게 작성해야 하며, 만일 자료의 내용이 사\r\n실이 아니거나 부정확하게 작성되어 발생하는 모든 책임은 회원에게 있습니다.\r\n3. 3) 모든 자료의 관리와 작성은 회원 본인이 하는 것이 원칙이나 사정상 위탁 또는 대행관리를\r\n하더라도 그 내용에 대한 책임은 회원에게 있으며, 회원은 주기적으로 자신의 자료를 확인\r\n하여 언제나 항상 정확하게 관리가 되도록 노력해야 합니다.\r\n4. 4) 회사는 회원이 등록한 자료에 오자, 탈자 또는 사회적 통념에 어긋나는 문구가 있을 경우 이\r\n를 언제든지 수정할 수 있는 권한이 있습니다.\r\n5. 5) 회사는 회원이 등록한 자료를 “회사”가 운영하는 같은 목적의 타 사이트에도 게재할 수 있\r\n습니다.\r\n6. 6) 회원이 등록한 자료로 인하여 타인(또는 타법인)으로부터 허위사실 및 명예훼손 등으로 삭제\r\n요청이 접수된 경우 회사는 회원에게 사전 통지 없이 본 자료를 삭제할 수 있으며, 자료\r\n삭제 후 메일 등의 방법으로 회원에게 통지할 수 있습니다.\r\n제 17 조 (자료의 저작권 및 활용)\r\n1. 1) 회사가 작성한 게시물 또는 저작물에 대한 저작권 및 기타 지적재산권은 회사에 귀속합니다.\r\n2. 2) 회원이 사이트 내에 게시한 게시물의 저작권은 회원에게 귀속됩니다. 단, 회원은 자신이 창\r\n작, 등록한 게시물에 대해 무상의 비독점적 사용권을 회사에 부여하고, 이 사용권은 회사가 사이\r\n트를 운영하는 동안 계속 유효하며, 회원 탈퇴한 후에도 이와 같습니다.\r\n3. 3) 게시물에 대한 권리와 책임은 게시물을 게시한 회원에게 있으며, 회사는 회원의 동의 없이\r\n이를 회사가 운영하는 사이트 이외에 영리적 목적으로 사용할 수 없습니다. 단, 비영리적인 경우\r\n에는 해당되지 않습니다.\r\n4. 4) 회원이 입력한 정보는 취업 및 관련 동향의 통계 자료로 활용될 수 있으며, 그 자료 내용은\r\n매체를 통해 언론에 배포될 수 있습니다. 단, 활용되는 정보 중 개인을 식별할 수 있는 개인정보\r\n는 제외합니다.\r\n5. 5) 사이트에서 정당한 절차를 거쳐 기업회원이 열람한 개인 회원의 이력서 정보는 해당 기업의\r\n인사 자료이며, 이에 대한 관리 권한은 해당 기업의 정책에 의합니다.\r\n제18조 화사의 의무\r\n1. 1) 회사는 본 약관에서 정한 내용에 따라 안정적 및 계속적으로 서비스를 제공할 수 있도록 최\r\n선을 다하여 노력하고록 하겠습니다.\r\n2. 2) 회사는 특별한 사정이 없는 한 회원이 서비스 이용신청 후, 48시간 이내에 서비스를 이용할\r\n수 있도록 합니다.\r\n3. 3) 회사는 서비스에 관련된 서비를 항상 운용할 수 있는 상태로 유지, 보수하고, 장애가 발생하\r\n는 경우 지체 없이 이를 수리 및 복구할 수 있도록 최선의 노력을 다하여야 합니다. 다만,\r\n천재지변 등 예측하지 못한 손해는 회사가 책임을지지 않으며, 이 경우 자료의 복구나 정\r\n상적인 서비스 지원이 되도록 최선을 다할 의무가 있습니다.\r\n4. 4) 서비스의 이용이나 운영과 관된 개인회원의 불만사항이 접수되는 경우, 회사는 이응 지체없\r\n이 처리하여 그 결과를 회신할 수 있도록 노력합니다. 다만, 불만사항 내용 확인 및 경위\r\n파악, 접수 내용 처리 등에 상당한 시간이 소요될 경우, 회사는 그 사유와 처리일정을 개인\r\n회원에게 통지합니다.\r\n5. 5) 회사는 유료 결제와 관한 결제 정보를 5년간 본존합니다. 다만, 회원 자격이 없는 회원은 예\r\n외로 합니다.\r\n제 19조 회원의 의무\r\n1. 1) 개인회원은 관계법령과 본 약관의 규정, 회사의 서비스 운영정책 기타 고지된 서비스 이용상\r\n의 유의 사항을 준수하여야 하며, 기타 회사의 업무에 지장을 초래하는 행위를 하여서는 아니됩\r\n니다.\r\n2. 2) 개인회원이 신청한 유료서비스는 등록 또는 신청과 동시에 회사와 채권, 채무 관계가 발생하\r\n며, 개인회원은 이용요금을 회사가 지정한 기일 내에 납부하여야 합니다.\r\n3. 3) 개인회원이 결데 수단으로 신용카드를 사용할 경우 비밀번호 등의 관리책임은 개인회원에게\r\n있습니다. 단, 사이트의 결함에 따른 정보유실의 발생에 대한 책임은 개인회원이 부담하지 않습니\r\n다.\r\n4. 4) 회원은 회사의 사전승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의\r\n결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지 않습니\r\n다. 회원은 이와 같은 영업활동으로 회사에 손해를 입힌 경우 회원은 회사에 대하여 손해배상 의\r\n무를 부담하여야 합니다.\r\n5. 5) 개인회원은 서비스를 이용하여 얻은 정보를 회사의 사전동의 없이 복사, 복제, 번역, 출판,\r\n방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없습니다.\r\n6. 6) 화원은 본 서비스를 구직 이외의 목적으로 사용할 수 없으며, 다은 각 호의 행위를 하여서는\r\n안 됩니다.\r\n1.1. 다른 회원의 아이디를 부정 사용하는 행위\r\n2.2. 범죄행위를 목적으로 하거나 기타 법죄행위와 관련된 행위\r\n3.3. 타인의 명예 훼손하거나 모욕하는 행위\r\n4.4. 타인의 지적재산권 등의 권리를 침해하는 행위\r\n5.5. 해킹행위 또는 바이러스의 유포 행위\r\n6.6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위\r\n7.7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위\r\n8.8. 그 밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위\r\n제20조 회원의 계약 해지/ 서비스 중지/ 자료 삭제\r\n1. 1) 개인회원이 서비스 이용계약을 해지하고자 할 경우, 고객센터 또는 “개인회원 탈퇴” 메뉴를\r\n이용해 회사에 대한 해지 신청을 합니다. 회사는 즉시 가입해지(회원탈퇴)에 필요한 조치를 취합\r\n니다.\r\n2. 2) 개인회원이 서비스 이용계약을 해지한 경우, 회사는 해지 즉시 개인회원의 모든 정보를 파기\r\n합니다. 다만, 관련 법령 및 개인정보 처리방침에 따라 회사가 개인회원 정보를 보유할 수 있는\r\n경우는 보유 목적에 필요한 최소한의 정보를 보관할 수 있습니다.\r\n3. 3) 다음의 사항에 해당하는 경우 회사는 개인회원의 사전 동의를 얻지 않고 서비스 이용 제한,\r\n이력서 삭제 조치 또는 개인회원의 자격박탈 등의 조치(이하 “회사의 제재조치”)를 취할 수 있습\r\n니다.\r\n1.1. 유료서비스 이용 요금을 납부하지 않았을 때\r\n2.2. 제7조 제2항의 각 호 중 어느 하나에 해당하는 행위를 하였을 때\r\n3.3. 본 서비스에서 제공되는 정보를 유용하였을 때\r\n4.4. 회원이 등록한 게시물 등의 내용이 사실과 다르거나 조작되었을 때\r\n5.5. 관련 법규에 위반하거나 선량한 풍속 기타 사회통념상 허용되지 않는 행위를 하였을 때\r\n6.6. 기타 본 서비스의 명예를 훼손하였거나 회사가 판단하기에 적합하지 않은 목적으로 회원가입\r\n을 하였을 때\r\n제21조 손해배상 및 면책\r\n1. 1) 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우 서\r\n비스 제공에 관한 책임이 면제됩니다.\r\n2. 2) 회사는 서비스 이용과 관련하여 회원에게 발생한 손해 가운데 회원의 고의, 과실 및 회원의\r\n귀책사유로 인한 서비스 이용의 장애 및 손해에 대하여 책임을 지지 않습니다.\r\n3. 3) 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임\r\n을 지지 않습니다.\r\n4. 4) 회사가 본 약관의 제 18조의 규정에 위반한 행위로 개인회원에게 손해를 입히거나 기타 회\r\n사가 제공하는 모든 서비스와 관련하여 회사의 책임 있는 사유로 인해 개인회원에게 손해가 발생\r\n한 경우, 회사는 그 손해를 배상하여야 합니다.\r\n제22조 회원의 개인정보보호\r\n화사는 이용자의 개인정보를 보호하기 위하여 노력하도록 하겠습니다. 회사는 정보통신망 이용\r\n촉진 및 정보 보호 동에 관한 법률, 개인정보 보호법을 준수하고, 개인전보 보호를 위하려 사이트\r\n등에 개인정보 처리방침을 고지합니다.\r\n제23조 분쟁의 해결\r\n1. 1) 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해경하기 위하려 필요한 노력을\r\n하여야 합니다.\r\n2. 2) 정항의 노력에도 불구하고, 분쟁에 대해 소송이 제기될 경우 민사소송법 등 법령에 정한 절\r\n차에 따른 법원을 관할 법원으로 합니다.', NULL, 'text_area', 7, 'policy'),
(14, 'policy.employer', 'employer', '기업 가입:\r\n제1조: 목적\r\n본 약관은 ㈜올댓모델(이하 \"회사\"라 합니다)이 운영하는 웹사이트(이하 \"사이트\"라 합니다) 및 모\r\n바일 어플리케이션(이하 \"어플리케이션\"이라 하며, 사이트와 어플리케이션을 총칭하여 \"사이트 등\"\r\n이라 합니다)을 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요\r\n한 사항을 규정함을 목적으로 합니다.\r\n제2조: 용어의 정의\r\n본 약관에서 사용하는 용어의 정의는 아래와 같습니다.\r\n1. 1) “사이트”라 함은 회사가 서비스를 이용자에게 제공하기 하여 제작, 운영하는 사이트를 말합\r\n니다. 현재 회사가 운영하는 사이트의 접속 주소는 아래와 같습니다.\r\n1. (페이지 주소)\r\n2.\r\n2. 2) “서비스”라 함은 채용정보, 이력서 및 기업정보 제공 기타의 서비스를 통하여 구직,\r\n채용시장에서 구직자와 기업의 연결을 돕는 플랫폼 서비스입니다. 구책적으로는\r\n회사가 기업 또는 구직자가 구인, 구직과 교육을 목적으로 등록하는 각종 자료를\r\nDB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사\r\n이트에서 제공하는 모든 부대 서비스를 말한다. 화사가 제공하는 서비스는 유형에\r\n따라 무료 또는 유료로 제공합니다. 서비스의 자세한 내용은 제**조에서 정하는 바\r\n에 따릅니다.\r\n3) “이용자”라 함은 사이트 등에 접속하여 본 약관에 따라 회사가 제공하는 서비스를 이\r\n용하는 회원(기업회원 및 개인회원을 포함) 및 비회원을 말합니다.\r\n4) “기업회원”이라는 함은 채용을 희망하는 기업으로서 본 서비스를 이용하기 위하여 본\r\n약관에 동의하고 회사와 이용계약을 체결하여 기업회원 ID를 부여받은 이용자를\r\n말합니다. 기업회원은 고용 목적 및 형태에 따라 \"일반 기업회원\", \"파견 및 도급\r\n기업회원\", \"헤드헌팅(서칭펌) 기업회원\" 및 \"교육 기업회원\"으로 구분됩니다. 회사\r\n는 유료 서비스 구매계약 등에 있어서 기업회원의 분류에 따라 권리의무를 다르게\r\n설정할 수 있습니다.\r\n5) “비회원”이라 함은 회사와 서비스 이용계약을 체결하지 않은 채 사이트 등을 통하여\r\n회사가 제공하는 서비스를 이용하는 이용자를 말합니다.\r\n6) \"ID\" 또는 \"기업회원 ID\"라 함은 기업회원의 식별 및 서비스 이용을 위하여 기업회원\r\n이 선정하고 회사가 부여하는 문자와 숫자의 조합을 말합니다.\r\n7) \"비밀번호\"라 함은 회사의 서비스를 이용하려는 사람이 기업회원 ID를 부여 받은 자와\r\n동일인임을 확인하고 기업회원의 권익을 보호하기 위하여 기업회원이 선정한 문자\r\n와 숫자의 조합을 말합니다.\r\n제3조 약관의 명시와 개정\r\n1. 1) 회사는 이 약관의 내용과 상호, 영업소 소재지, 사업자등록번호, 연락처 등을 이용자가 알 수\r\n있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다.\r\n2) 회사는 약관의 규제 등에 관한 법률, 정보통신망 이용 촉진 및 정보 보호 등에 관한 법률, 개\r\n인정보 보호법, 전기통신기본법, 전기통신사업법 등 관련 법령을 위배하지 않는 범위에서\r\n본 약관을 개정할 수 있습니다.\r\n3) 회사가 약관을 개정할 경우에는 개정 약관 적용일 최소 7일전(약관의 변경이 개인회\r\n원에게 적용일자 7일 전부터 적용일자 전일까지) 공지한다. 단 “회원”의 권리, 의\r\n무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.\r\n4) 기업회원은 변경된 약관의 적용을 거부할 권리가 있으며, 변경된 약관이 공지된 지\r\n15일 이내에 변경 약관 적용에 대한 거부 의사를 표시할 수 있습니다. 만약, 기업\r\n회원이 변경 약관 적용에 대한 거부 의사를 표시하지 않고 서비스를 계속 이용하\r\n는 경우, 회사는 기업회원이 변경 약관 적용에 동의하는 것으로 간주합니다.\r\n5) 기업회원이 제4항에 따라 변경 약관 적용을 거부할 의사를 표시한 경우, 회사는 기업\r\n회원에게 15일의 기간을 정하여 사전 통지 후 해당 기업회원과의 서비스 이용계약\r\n또는 별도로 체결된 계약을 해지할 수 있습니다.\r\n제4조 약관 외 준칙\r\n1. 1) 본 약관에서 규정하지 않는 사항에 관해서는 약관 법률, 정보통신기본법, 전기통신사업법, 정\r\n보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.\r\n2) 기업회원이 회사와 개별 계약을 체결하여 서비스를 이용할 경우, 기업회원의 서비스 이용과 관\r\n련된 권리 의무는 순차적으로 개별 계약, 판매약관, 본 약관에서 정한 내용에 따라 규율됩\r\n니다.\r\n제5조 기업 회원에 대한 고지, 통지 및 공지\r\n① 회사는 기업회원이 회원 가입 신청시 등록한 이메일, 휴대전화 문자메시지 또는 어플리\r\n케이션 푸쉬 알림 중 기업회원이 수신에 동의한 수단을 활용하여 기업회원에 대한 각종 고\r\n지나 통지를 이행할 수 있습니다.\r\n② 기업회원에게 공통적으로 적용되는 내용을 고지 또는 통지할 경우, 회사는 1주일 이상\r\n사이트 등의 게시판이나 화면에 일정한 사항을 게시하여 공지함으로써 각 기업회원에 대한\r\n개별 고지나 통지를 갈음할 수 있습니다. 다만, 기업회원의 권리·의무에 중대한 영향을 미\r\n치는 사항에 대해서는 게시기간을 연장하여 공지합니다.\r\n③ 회사는 기업회원에게 서비스 정책, 이용약관, 판매약관, 개인정보 취급방침 등 일체의\r\n약관, 서비스 이용 관련 일정한 사항이나 정보를 알리거나 안내할 목적으로 사이트 등의\r\n게시판이나 서비스 화면에 그 내용을 게시하거나 제1항에 기재된 수단을 활용하여 공지할\r\n수 있습니다.\r\n제6조 이용계약의 성립\r\n1. 1) 서비스 이용계약은 기업회원 서비스를 이용하고자 하는 자(이하 “이용희망자”라 합니다)의\r\n본 약관과 개인정보 처리방침의 내용에 대한 동의 및 회원 가입 신청에 대하여 회사가 승\r\n낙함으로써 성립합니다.\r\n2. 2) 회사의 서비스 이용계약(이하: ‘이용약관’)은 서비스를 이용하고자 하는 자가 본 약관과 개인\r\n정보처리방침을 읽고 “동의” 또는 “획인” 버튼을 누른 경우 본 약관에 동의한 것으로 간주\r\n한다.\r\n3. 3) 제1항의 승낙은 회사가 기업회원 가입 신청자의 본 약관에 대한 동의를 확인하고 승낙의 의\r\n사가 담긴 이메일 또는 서면으로 통지함으로써 이루어지고, 이러한 승낙의 통지가 회원 가\r\n입 신청자에게 도달하면 서비스 이용계약이 성립합니다.\r\n제7조 이용신청 승낙과 제한\r\n① 회사는 기업회원 가입 신청을 한 이용희망자에 대하여 다음 각호의 사유를 모두 충족할\r\n경우 원칙적으로 접수 순으로 기업회원 가입을 승낙합니다.\r\n1. 회사의 업무수행 및 서비스 제공을 위한 설비의 여유·기술상 지장이 없는 경우\r\n2. 본 약관에서 정하는 승낙 제한 또는 거절, 보류 사유에 해당하지 않는 경우\r\n② 다음 각호 중 어느 사유에 해당하는 경우, 회사는 이용자의 기업회원 가입 신청을 승낙\r\n하지 아니합니다. 기업회원 가입 후 해당 사실이 밝혀진 경우, 회사는 해당 기업회원 ID를\r\n삭제하거나 기업회원을 강제탈퇴 조치하며, 필요할 경우 관계법령에 따른 형사처벌이나 행\r\n정제재를 위한 법률절차를 진행할 수 있습니다.\r\n1. 기업회원 가입 신청 시에 타인의 명의를 도용한 경우\r\n2. 기업회원 가입 신청 시에 회사명 또는 사업자등록번호를 실제와 다르게 기재하거\r\n나 기타 기업회원 정보를 허위로 기재한 경우\r\n3. 회사가 제9조에 의거하여 증빙 자료 제출을 요구하였음에도 불구하고 합리적 이\r\n유 없이 이에 응하지 아니한 경우\r\n4. 증빙 자료를 제출함에 있어 허위의 내용이 기재된 자료, 위조 또는 변조된 자료를\r\n제출한 경우\r\n5. 회사가 서비스 부정이용 행위에 대한 제재조치를 취하기 전 이를 회피하기 위해\r\n탈퇴하였던 경우\r\n③ 다음 각 호 중 어느 사유에 해당하는 경우, 회사는 그 사유가 해소될 때까지 이용자의\r\n기업회원 가입 신청에 대한 승낙을 유보할 수 있습니다. 다만, 회사는 기업회원 가입 신청\r\n을 한 이용자에 대해 그 사유를 회사가 정한 방식으로 통지할 수 있습니다.\r\n1. 업무수행 및 서비스 제공을 위한 설비의 여유가 없는 경우\r\n2. 업무수행 및 서비스 제공을 위한 기술상 지장이 있는 경우\r\n3. 기타 회사의 사정(회사의 귀책사유 있는 경우를 포함)으로 이용 승낙이 곤란한 경\r\n우\r\n제8조 서비스의 내용\r\n1, 1) 회사가 제공하는 서비스의 내용은 다은 각호와 같습니다.\r\n1.1. 체용정보 등록과 채용정조 게재 서비스\r\n2.2. 온라인 채용관리/ 입사지원 서비스\r\n3.3.구인과 관련된 제반 서비스\r\n4.4.교육정보 등록과 교육정보 게재 서비스\r\n5.5.이용자간의 교류와 소통에 관련한 서비스\r\n6.6.학원 임대.매매 정보 게재 서비스 및 관련 서비스\r\n7.7.“회사”가 제휴 계약 등을 통해 “회원”에게 제공하는 일체의 서비스\r\n8.8.리워드 광고 서비스\r\n2. 2) 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다. 다만, 서비스의 내용의 추\r\n가 또는 변경으로 인하여 회원에게 중요한 영행을 미치는 경우, 회사는 추가 또는 변경된\r\n서비스 내용을 그 적용일로부터 30일 전에 공지합니다.\r\n제9조 기업 회원 정보, 채용공고등록, 이력서 검색\r\n① 기업회원은 구직을 원하는 이용자가 채용공고를 열람한 후 해당 기업에 대하여 정확히\r\n판단할 수 있도록 기업정보를 사실과 다름없이 정확하게 기재하여야 합니다. 기업정보를\r\n사실과 다르게 기재한 기업회원은 이로 인하여 발생한 모든 문제에 대하여 전적인 책임을\r\n부담하여야 합니다.\r\n② 기업회원은 채용절차 공정화에 관한 법률 제4조, 직업안정법 제34조 및 동법 시행령 제\r\n34조에 의하여 금지되는 거짓 구인광고 또는 거짓 채용공고(이하 “거짓 채용공고”라 합니\r\n다)를 등록하여서는 아니됩니다. 거짓 채용공고를 등록하거나 거짓 구인 조건을 제시한 기\r\n업회원은 채용절차의 공정화에 관한 법률 제16조에 의해 5년 이하의 징역 또는 2천만원\r\n이하의 벌금형을 받거나 직업안정법 제47조에 의해 5년 이하의 징역 또는 5천만 원 이하\r\n의 벌금형을 받을 수 있습니다. 회사는 거짓 채용공고를 등록한 기업회원을 직권으로 고발\r\n할 수 있습니다.\r\n③ 제2항에 따라 금지되는 거짓 채용공고는 다음 각 호와 같습니다.\r\n1. 구인 또는 채용을 가장하여 아이디어 수집, 사업장 홍보, 물품 판매, 유학 알선,\r\n수강생 모집, 직업소개, 부업알선, 자금 모집 등을 행하는 공고\r\n2. 작성자가 제시한 직종, 업무내용, 근로조건 등이 실제와 현저히 다른 공고\r\n3. 회사명, 담당자 성명, 사무실 연락처 등 구인업체의 중요 정보를 정확하게 기입하\r\n지 않았을 경우\r\n4. 기타 채용공고의 중요 내용이 사실과 다른 공고\r\n④ 기업회원은 남녀 고용 평등과 일, 가정 양립 지원에 관한 법률 제7조에 의거하여 근로\r\n자의 모집 및 채용에 있어서 남녀를 차별하여서는 아니됩니다.\r\n⑤ 기업회원은 채용공고 등록시 제24조 제2항에서 규정하는 서비스 부정이용행위를 하여\r\n서는 아니됩니다.\r\n⑥ 기업회원이 등록한 기업정보 및 채용공고가 제2항 내지 제5항을 위반한 것으로 인정될\r\n경우, 회사는 제25조 제1항에 따라 해당 공고의 게시를 중단하거나 삭제하는 등의 조치를\r\n취할 수 있습니다. 또한, 기업회원은 회사 및 이용자에 대한 관계에서 제2항 내지 제5항의\r\n위반으로 발생할 수 있는 민·형사상 책임을 전적으로 부담합니다.\r\n⑦ 회사는 기업회원이 등록한 기업정보 및 채용공고를 회사가 정한 방법에 따라 노출시킬\r\n수 있으며, 지정된 마감기간이 지난 채용공고를 임의로 마감시킬 수 있습니다.\r\n⑧ 기업회원은 유·무료로 사람인 개인회원이 등록한 이력서를 검색할 수 있으며, 회사가 제\r\n시하는 별도의 커뮤니케이션 수단을 통하여 개인회원에게 연락을 취할 수 있습니다. 이 때,\r\n이력서상 기재된 개인회원의 연락처의 열람 및 연락의 목적은 채용활동에 국한되어야 하며,\r\n기업의 영업·마케팅을 위하여 활용하거나 제3자에 대한 개인정보 제공 시에는 정보통신망\r\n이용 촉진 및 정보 보호 등 관련 법률, 개인정보 보호법, 직업안정법 위반에 따른 법적 책\r\n임을 전적으로 부담합니다.\r\n⑨ 회사는 기업회원이 등록된 개인회원의 이력서를 검색하고, 개인회원에게 연락할 수 있\r\n는 권한에 적정한 제한을 둘 수 있으며, 기업회원이 적절하지 않은 방법이나 채용활동 이\r\n외의 목적으로 개인회원에게 연락하거나 서비스 이용에 불편을 끼친 경우, 기업회원의 채\r\n용공고 및 기업정보를 임의로 수정/삭제 등의 조치를 취할 수 있습니다.\r\n제10조 제휴를 통한 서비스\r\n1. ① 회사는 제휴 관계를 체결한 여타 인터넷 웹 사이트 및 채용박람회 또는 신문, 잡지 등의 오\r\n프라인 매체를 통해 사이트에 등록한 회원의 이력서 정보가 열람될 수 있도록 서비스를 제\r\n공할 수 있다. 단, 제휴 서비스를 통해 노출되는 이력서의 연락처 정보는 회원이 이력서 등\r\n록 시 선택한 연락처 공개 여부에 따라 제공된다.\r\n2. 2) 회사는 본 조의 ①항과 관련하여 제휴를 통해 타사이트 및 매체에 등록될 수 있음을 고지하\r\n고 \"기업회원\"이 채용공고 등록시에 각 제휴 사이트별로 제휴 등록에 대한 \"동의\",혹은 \"비\r\n동의\"할 수 있도록 선택권을 부여해야 하며, 제휴사이트 전체 목록을 \"사이트\" 내에서 상시\r\n열람할 수 있도록 할 의무가 있습니다.\r\n3. 3) 회사는 제휴사 정보를 가급적 본 약관에 병시하여야 하며, 본 약관에서 명시하지 못한 제휴\r\n사 정보는 각 “사이트” 별 별도의 제휴사 안내 페이지를 통하여 회원에게 안내하여야 합니\r\n다.\r\n제11조 서비스의 요금 및 결제\r\n1. 1) 기업회원 가입과 이력서 등록은 원칙적으로 무료입니다. 다만, 개인회원 또는 사이트에 방문\r\n한 자에게 등록한 채용공고 정보를 보다 효과적으로 노출시키기 위한 방편으로 초기화면\r\n노출 및 서브페이지 상위노출, 자중노출 등 별도의 서비스는 유료로 제공될 수 있습니다.\r\n2. 2) 회사는 유료서비스의 요금 및 상세내용을 사이트에 공지 하여야 합니다.\r\n3. 3) 회사는 유료서비스 이용금액을 변경할 수 있으며, 이용요금 변경시 변경된 이용요금 내용 및\r\n변경 내용 적용일을 명시하여 변경 내용 적용일 7일전 또는 관련 법률에서 정한 기한 전까\r\n지 개인회원에게 사전 공지합니다.\r\n4. 4) 제3항에 따라 공지된 이용요금 변경 내용은 변경 내용 적용일부터 모든 개인회원에게 적용\r\n됩니다. 다만, 이용요금 변경 내용 적용일 이전에 체결된 계약금액에 영향을 미치지 않도록\r\n합니다.\r\n제12조 서비스 요금 환불 및 오류의 조정\r\n1. 1) 회사는 원칙적으로 회원이 회사의 서비스 이용규정을 위반하거나 등록제한 광고를 등록하고\r\n유료서비스를 신청한 경우 이용료를 환불하지 않으며, 서비스 니용제한 등의 추가적인 제\r\n재조치가 있을 수 있습니다.\r\n2. 2) 회사는 다음 각호에 해당하는 경우 이용료를 환불합니다. 단, 본 조제1항에 해당하는 경우\r\n회사는 환불에 대한 책임을지지 않습니다.\r\n1.1. 유료서비스 이용이 제시죄지 않은 경우\r\n2.2. 네트원크 또는 시스템 장애로 의해 서비스 이용이 불가능한 경우\r\n3.3. 유료 서비스 신청 후 회원 사정에 의해 서비스가 취소될 경우\r\n3. 3) 이용료를 환불받고자 하는 회원은 전화로 환불요청을 해야 합니다.\r\n4. 4) 회사는 개인회원으로부터 환불 요청을 받은 날로부터 3영업일 이내에 개인회원의 환불 요청\r\n이 회사가 정한 환불 요건을 갖추었는지 여부를 판단하여 개인회원에게 그 내용을 통지합\r\n니다.\r\n5. 5) 본 제 4항에 따른 환불은 영업일기준 3일 이내에 처리합니다. 단, 카드결재, 무통장 입금, 가\r\n상계촤 결제 환불의 경우 회사는 영업일 기준 3일 이내 해당 결제 대행사에 환불 요청을\r\n하며, 실제 환불은 해장 결제 대행사의 처리일 기분에 따라 처리됩니다.\r\n6. 6) 기타 이용요금의 환불 관련 상세 사항은 판매약관에서 정하는 바에 따릅니다.\r\n제13조 서비스 이용시간 및 제한\r\n1. 1) 회사는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공합니다. 다만, 일부 서비\r\n스의 경우 그 종류나 성질을 고려하려 별도로 이용시간을 정할 수 있으며, 회사는 그 이용\r\n시간을 개인회원에게 사전 공지합니다.\r\n2. 2) 회사는 서비스 업데이트나 정보 가공, 자료의 갱신을 위한 시스템 유지·보수 작업, 시스템\r\n장애 해결을 위한 보수작업, 정기 PM 작업, 시스템 교체 작업이 필요하거나 회선 장애 등\r\n서비스를 중단할 합리적인 사유가 발생한 경우, 일시적으로 서비스를 중단할 수 있습니다.\r\n계획된 작업의 경우 서비스 중단 시간과 작업 내용을 사전에 공지하되, 우발적 장애 발생\r\n등 부득이한 사유가 있는 경우에 한하여 그 내용을 사후에 공지할 수 있습니다.\r\n3. 3) 회사는 다음 각 호에 해당하는 경우 서비스의 제공을 중지할 수 있습니다\r\n1. 1. 설비의 보수 등 회사의 필요에 의해 사전에 기업회원들에게 공지한 경우\r\n2. 2. 기간통신사업자가 전기통신서비스 제공을 중지하는 경우\r\n3. 3. 기타 불가항력적인 사유에 의해 서비스 제공이 객관적으로 불가능한 경우\r\n제14조 정보의 제공 및 광고의 게재\r\n1. 1) 회사는 회원에게 서비스 이용에 필요가 있다고 인정되거나 서비스 개선 및 회원 대상에 서\r\n비스 소개 등의 목적으로 하는 각종 전보에 대해사 전자우편이나 서신우편을 이용한 방법\r\n으로 정보를 제공할 수 있습니다.\r\n2. 2) 회사는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지 등에 게재할\r\n수 있으며, 회원의 메일을 통해 알릴 수 있습니다.\r\n3. 3) 회사는 사이트 등에 게재되어 있는 광고주의 홍보활동에 개인회원이 참여하거나 교신 또는\r\n거래를 함으로써 발생하는 모든 손실과 손해에 대해 일체의 책임을지지 않습니다.\r\n4. 4) 서비스를 이용하는 회원은 서비스 이용시 노출되는 광고 게재에 대해 동의 하는 것으로 간\r\n주합니다.\r\n제15조 자료내용의 책임과 회사의 정보 수정 권한\r\n1. 1) 자료라 함은 회원이 서비스를 이용하면서 등록한 채용공고와 이력서 및 사이트에 게시한 게\r\n시물 등을 말합니다.\r\n2. 2) 회원은 자료 및 게시물을 사실에 근거하여 성실하게 작성해야 하며, 만일 자료의 내용이 사\r\n실이 아니거나 부정확하게 작성되어 발생하는 모든 책임은 회원에게 있습니다.\r\n3. 3) 모든 자료의 관리와 작성은 회원 본인이 하는 것이 원칙이나 사정상 위탁 또는 대행관리를\r\n하더라도 그 내용에 대한 책임은 회원에게 있으며, 회원은 주기적으로 자신의 자료를 확인\r\n하여 언제나 항상 정확하게 관리가 되도록 노력해야 합니다.\r\n4. 4) 회사는 회원이 등록한 자료에 오자, 탈자 또는 사회적 통념에 어긋나는 문구가 있을 경우 이\r\n를 언제든지 수정할 수 있는 권한이 있습니다.\r\n5. 5) 회사는 회원이 등록한 자료를 “회사”가 운영하는 같은 목적의 타 사이트에도 게재할 수 있\r\n습니다.\r\n6. 6) 회원이 등록한 자료로 인하여 타인(또는 타법인)으로부터 허위사실 및 명예훼손 등으로 삭제\r\n요청이 접수된 경우 회사는 회원에게 사전 통지 없이 본 자료를 삭제할 수 있으며, 자료\r\n삭제 후 메일 등의 방법으로 회원에게 통지할 수 있습니다.\r\n제16조 자료의 저작권 및 활용\r\n1. 1) 회사가 작성한 게시물 또는 저작물에 대한 저작권 및 기타 지적재산권은 회사에 귀속합니다.\r\n2. 2) 회원이 사이트 내에 게시한 게시물의 저작권은 회원에게 귀속됩니다. 단, 회원은 자신이 창\r\n작, 등록한 게시물에 대해 무상의 비독점적 사용권을 회사에 부여하고, 이 사용권은 회사가 사이\r\n트를 운영하는 동안 계속 유효하며, 회원 탈퇴한 후에도 이와 같습니다.\r\n3. 3) 게시물에 대한 권리와 책임은 게시물을 게시한 회원에게 있으며, 회사는 회원의 동의 없이\r\n이를 회사가 운영하는 사이트 이외에 영리적 목적으로 사용할 수 없습니다. 단, 비영리적인 경우\r\n에는 해당되지 않습니다.\r\n4. 4) 회원이 입력한 정보는 취업 및 관련 동향의 통계 자료로 활용될 수 있으며, 그 자료 내용은\r\n매체를 통해 언론에 배포될 수 있습니다. 단, 활용되는 정보 중 개인을 식별할 수 있는 개인정보\r\n는 제외합니다.\r\n5. 5) 사이트에서 정당한 절차를 거쳐 기업회원이 열람한 개인 회원의 이력서 정보는 해당 기업의\r\n인사 자료이며, 이에 대한 관리 권한은 해당 기업의 정책에 의합니다.\r\n제17조 회사의 의무\r\n1. 1) 회사는 본 약관에서 정한 내용에 따라 안정적 및 계속적으로 서비스를 제공할 수 있도록 최\r\n선을 다하여 노력하고록 하겠습니다.\r\n2. 2) 회사는 특별한 사정이 없는 한 회원이 서비스 이용신청 후, 48시간 이내에 서비스를 이용할\r\n수 있도록 합니다.\r\n3. 3) 회사는 서비스에 관련된 서비를 항상 운용할 수 있는 상태로 유지, 보수하고, 장애가 발생하\r\n는 경우 지체 없이 이를 수리 및 복구할 수 있도록 최선의 노력을 다하여야 합니다. 다만,\r\n천재지변 등 예측하지 못한 손해는 회사가 책임을지지 않으며, 이 경우 자료의 복구나 정\r\n상적인 서비스 지원이 되도록 최선을 다할 의무가 있습니다.\r\n4. 4) 서비스의 이용이나 운영과 관된 개인회원의 불만사항이 접수되는 경우, 회사는 이응 지체없\r\n이 처리하여 그 결과를 회신할 수 있도록 노력합니다. 다만, 불만사항 내용 확인 및 경위\r\n파악, 접수 내용 처리 등에 상당한 시간이 소요될 경우, 회사는 그 사유와 처리일정을 개인\r\n회원에게 통지합니다.\r\n5. 5) 기업회원이 사이트에 등록한 기업정보, 채용공고 등의 내용은 사이트 방문자에게 공개를 원\r\n칙으로 하며, 회사는 공개 기간을 지정할 수 있습니다. 단, 일부 비공게 항목은 사이트에서\r\n제시하는 별도의 옵션을 통해 지정할 수 있습니다.\r\n6. 6) 회원이 등록한 자료로 인하며 사이트의 원활한 운영에 영향을 미친다고 판단될 시, 등록된\r\n모든 자료를 회원의 사전 동의 없이 삭제할 수 있습니다.\r\n7. 7) 회사는 유료 결제와 관한 결제 정보를 5년간 보존합니다. 다만, 회원 자격이 없는 회원은 예\r\n외로 합니다.\r\n제18조 회원의 의무\r\n1. 1) 기업회원은 관계법령과 본 약관의 규정, 회사의 서비스 운영정책 기타 고지된 서비스 이용상\r\n의 유의 사항을 준수하여야 하며, 기타 회사의 업무에 지장을 초래하는 행위를 하여서는\r\n아니됩니다.\r\n2. 2) 기업회원이 신청한 유료서비스는 등록 또는 신청과 동시에 회사와 채권, 채무 관계가 발생하\r\n며, 기업회원은 이용요금을 회사가 지정한 기일 내에 납부하여야 합니다.\r\n3. 3) 기업회원이 결제 수단으로 신용카드를 사용할 경우 비밀번호 등의 관리책임은 기업회원에게\r\n있습니다. 단, 사이트의 결함에 따른 정보유실의 발생에 대한 책임은 기업회원이 부담하지\r\n않습니다.\r\n4. 4) 회원은 회사의 사전승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의\r\n결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지\r\n않습니다. 회원은 이와 같은 영업활동으로 회사에 손해를 입힌 경우 회원은 회사에 대하여\r\n손해배상 의무를 부담하여야 합니다.\r\n5. 5) 회원은 본 서비스를 건전한 구인 구직 이외의 목적으로 사용해서는 안되면 이용 중 다음 각\r\n호의 행위를 해서는 안 됩니다.\r\n1.1. 범죄 행위를 목적으로 하거나 기타 범죄행위와 관련된 행위\r\n2.2. 회사의 직원이나 관리자를 가장하거나 사칭하여 내용물을 게시, 등록하거나 스팸 또는 불법\r\n스팸전송을 위해 메일이나 문자메시지를 발송하는 행위\r\n3.3. 타인의 명예 훼손하거나 모욕하는 행위\r\n4.4. 타인의 지적재산권 등의 권리를 침해하는 행위\r\n5.5. 해킹행위 또는 바이러스의 유포 행위\r\n6.6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위\r\n7.7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위\r\n8.8. 그 밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위\r\n6. 6) 회원은 회사를 통해 전달되는 수신거부 요청에 대해서는 즉각적으로 처리하고 24시간 이내\r\n에 처리결과를 회사에 회신하여야 하며 본 항의 위반으로 발생하는 모든 민·형사상 책임은 회원\r\n이 직접 부담하여야 합니다.\r\n7. 7) 회원은 전기통신사업법 제 84조의 2(전화번호의 거짓표시 금지 및 이용자 보호)에 의거 이\r\n용자는 회원의 발신번호를 사전에 등록하고 등록된 번호로만 발송해야 합니다.\r\n8. 8) 회원은 이용신청서의 기재내용 중 변경된 내용이 있을 경우 해당 절차를 거쳐 그 내용을 회\r\n사에 통지하여야 합니다. 만약, 변경된 내용을 통지하지 않아 발생하는 피해에 대하여 회사는 책\r\n임지지 않습니다.\r\n제19조 회원의 계약 해지/ 서비스 중지/ 자료 삭제\r\n1. 1) 기업회원이 서비스 이용계약을 해지하고자 할 경우, 고객센터 또는 “기업회원 탈퇴” 메뉴를\r\n이용해 회사에 대한 해지 신청을 합니다.\r\n2. 2) 다음의 각 사항에 해당하는 경우 회사는 회원의 사전 동의 없이 계약 해지하거나 서비스 중\r\n지, 자료 삭제 조치를 취할 수 있습니다.\r\n1.1. 기업사항이 명확하게 가입되지 않거나 사실과 다르게 조작되어 허위로 등록된 경우\r\n2.2. 회원 가입 또는 자료 등록 시 본 서비스에서 안애하는 방법으로 가임하지 않았거나 등록하지\r\n않았을 때\r\n3. 3) 구인을 가장하여 물품판매, 수강생 모집, 직업소개, 부업알선, 자금 보집 등을 행하는 광고\r\n4. 4) 메일이나 문자메시지 수신자가 스챔으로 신고하거나 회원이 발송하는 메시지가 물법스팸임\r\n이 판명될 경우\r\n5. 5) 회사의 수신거부 요청 처리에 불성실하여 수신거부 요청 건수가 감소되지 않거나 발송금지\r\n를 요청한 메시지 내용이 중복적으로 발송될 경우\r\n6. 6) 방송통신위원회 또는 한국정보보호진흥원이 불법스팸 전송사실을 확인하여 이용정지를 요청\r\n하는 경우\r\n7. 7) 미래창조과학부(거짓으로 표시된 전화번호로 인한 이용자 피해 예방에 관한) 고시 제 2015-\r\n32호 제10조 제1항에 따라 미래창조과학부 또는 중앙전파관리소,한국인터넷진흥원(KISA)에서 번\r\n호 변작등으로 판명되어 이용정지를 요청한 경우\r\n8. 8) 회사의 사업이나 사이트, 혹은 서비스의 폐지나 휴지 등으로 서비스 제공이 불가능 할 때.\r\n단, 전기통신사업법 제26조 근거하여 예정일 30일 전까지 회원에게 통보하며, 환불 등이 필요한\r\n경우에는 본 약관의 제12조에 따라 처리됩니다.\r\n제 20 조 손해배상 및 면책\r\n1. 1) 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우 서\r\n비스 제공에 관한 책임이 면제됩니다.\r\n2. 2) 회사는 서비스 이용과 관련하여 회원에게 발생한 손해 가운데 회원의 고의, 과실 및 회원의\r\n귀책사유로 인한 서비스 이용의 장애 및 손해에 대하여 책임을 지지 않습니다.\r\n3. 3) 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임\r\n을 지지 않습니다.\r\n4. 4) 회사가 귀책으로 본 약관의 제17조 의 규정에 위반한 행위로 기업회원에게 손해를 입히거나\r\n기타 회사가 제공하는 모든 서비스와 관련하여 회사의 책임 있는 사유로 인해 기업회원에게 손해\r\n가 발생한 경우, 회사는 그 손해를 배상하여야 합니다.\r\n제21조 회원의 개인정보보호\r\n화사는 이용자의 개인정보를 보호하기 위하여 노력하도록 하겠습니다. 회사는 정보통신망 이용\r\n촉진 및 정보 보호 동에 관한 법률, 개인정보 보호법을 준수하고, 개인전보 보호를 위하려 사이트\r\n등에 개인정보 처리방침을 고지합니다.\r\n제22조 분재해결\r\n1. 1) 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해경하기 위하려 필요한 노력을\r\n하여야 합니다.\r\n2. 2) 정항의 노력에도 불구하고, 분쟁에 대해 소송이 제기될 경우 민사소송법 등 법령에 정한 절\r\n차에 따른 법원을 관할 법원으로 합니다.', NULL, 'text_area', 8, 'policy');

-- --------------------------------------------------------

--
-- Table structure for table `spammers`
--

CREATE TABLE `spammers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(191) NOT NULL,
  `attempts` int(11) NOT NULL,
  `blocked_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) NOT NULL,
  `column_name` varchar(191) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(31, 'regions', 'title', 17, 'en', 'Jeju', '2023-06-12 16:46:09', '2023-06-12 16:46:09'),
(32, 'regions', 'title', 1, 'en', '서울', '2023-06-12 16:46:49', '2023-06-12 16:46:49'),
(33, 'data_rows', 'display_name', 29, 'en', 'ID', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(34, 'data_rows', 'display_name', 30, 'en', 'Author', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(35, 'data_rows', 'display_name', 31, 'en', 'Category', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(36, 'data_rows', 'display_name', 32, 'en', 'Title', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(37, 'data_rows', 'display_name', 42, 'en', 'SEO Title', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(38, 'data_rows', 'display_name', 33, 'en', 'Excerpt', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(39, 'data_rows', 'display_name', 34, 'en', 'Body', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(40, 'data_rows', 'display_name', 35, 'en', 'Post Image', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(41, 'data_rows', 'display_name', 36, 'en', 'Slug', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(42, 'data_rows', 'display_name', 37, 'en', 'Meta Description', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(43, 'data_rows', 'display_name', 38, 'en', 'Meta Keywords', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(44, 'data_rows', 'display_name', 39, 'en', 'Status', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(45, 'data_rows', 'display_name', 43, 'en', 'Featured', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(46, 'data_rows', 'display_name', 40, 'en', 'Created At', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(47, 'data_rows', 'display_name', 41, 'en', 'Updated At', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(48, 'data_types', 'display_name_singular', 5, 'en', 'Post', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(49, 'data_types', 'display_name_plural', 5, 'en', 'Posts', '2023-06-13 16:36:28', '2023-06-13 16:36:28'),
(50, 'posts', 'title', 1, 'en', 'Lorem Ipsum Post', '2023-06-13 16:40:20', '2023-06-13 16:40:20'),
(51, 'posts', 'excerpt', 1, 'en', 'This is the excerpt for the Lorem Ipsum Post', '2023-06-13 16:40:20', '2023-06-13 16:40:20'),
(52, 'posts', 'body', 1, 'en', '<p>This is the body of the lorem ipsum post</p>', '2023-06-13 16:40:20', '2023-06-13 16:40:20'),
(53, 'posts', 'slug', 1, 'en', 'lorem-ipsum-post', '2023-06-13 16:40:20', '2023-06-13 16:40:20'),
(54, 'posts', 'meta_description', 1, 'en', 'This is the meta description', '2023-06-13 16:40:20', '2023-06-13 16:40:20'),
(55, 'posts', 'meta_keywords', 1, 'en', 'keyword1, keyword2, keyword3', '2023-06-13 16:40:20', '2023-06-13 16:40:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `school_department` varchar(255) DEFAULT NULL,
  `admission_date` timestamp NULL DEFAULT NULL,
  `graduation_date` timestamp NULL DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_department` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `employment_start` varchar(255) DEFAULT NULL,
  `employment_end` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `o_a` varchar(255) DEFAULT NULL,
  `support_areas` varchar(255) DEFAULT NULL,
  `establishment_date` varchar(255) DEFAULT NULL,
  `representative_name` varchar(255) DEFAULT NULL,
  `business_number` varchar(255) DEFAULT NULL,
  `contact_person_number` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  `number_of_employees` int(11) DEFAULT NULL,
  `business_information` longtext DEFAULT NULL,
  `sectors` text DEFAULT NULL,
  `company_website_address` varchar(255) DEFAULT NULL,
  `company_type` varchar(255) DEFAULT NULL,
  `take` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `Listed_or_not` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `birth_date`, `gender`, `phone`, `address`, `education`, `school`, `school_department`, `admission_date`, `graduation_date`, `salary`, `company_name`, `company_department`, `rank`, `employment_start`, `employment_end`, `language`, `o_a`, `support_areas`, `establishment_date`, `representative_name`, `business_number`, `contact_person_number`, `contact_person_name`, `number_of_employees`, `business_information`, `sectors`, `company_website_address`, `company_type`, `take`, `capital`, `Listed_or_not`) VALUES
(2, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$61F5TGcqzyzKIRCadPEhyupTuVVEE2fEmbNXKFJ8OFjQc5dUGzghy', NULL, NULL, '2023-06-09 12:24:16', '2023-06-09 12:24:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 4, 'js', 'js@test.com', 'users/default.png', NULL, '$2y$10$Ik4rv5hBS9wkgWJmglSMyOh8ckYZCDqUZ/Vk1HbXxTZoPkvHw0LAW', NULL, '{\"locale\":\"en\"}', '2023-06-10 15:49:28', '2023-06-10 15:49:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 'em', 'em@test.com', 'users/default.png', NULL, '$2y$10$KgZD03HmQBGzxjncEo6yGuw.lI5lthCjICl4ENrZnTL.3UE8oAfKu', NULL, '{\"locale\":\"en\"}', '2023-06-10 15:49:45', '2023-06-10 15:49:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_category`
--
ALTER TABLE `job_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_type`
--
ALTER TABLE `job_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `spammers`
--
ALTER TABLE `spammers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `table_users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_type`
--
ALTER TABLE `job_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `spammers`
--
ALTER TABLE `spammers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
