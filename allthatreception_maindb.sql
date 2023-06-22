-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2023 at 07:47 AM
-- Server version: 8.0.33
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allthatreception_maindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '구직자 뉴스', 'job -seeker-news', '2023-06-09 12:23:52', '2023-06-16 06:09:11'),
(2, NULL, 1, '기업 뉴스', ' employer-news', '2023-06-09 12:23:52', '2023-06-16 06:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', '이름', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 3),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\"}}', 5),
(4, 1, 'password', 'password', '비밀번호', 1, 0, 0, 1, 1, 0, '{\"display\":{\"width\":\"3\"}}', 6),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 7),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 34),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 2),
(9, 1, 'user_belongsto_role_relationship', 'relationship', '역할', 0, 1, 1, 1, 1, 0, '{\"display\":{\"width\":\"12\"},\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 0, 0, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 13),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 10),
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
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{}', 8),
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
(69, 10, 'title', 'text', '공고제목', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 3),
(70, 10, 'areas_of_recruitment', 'text', 'Areas Of Recruitment', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"2\"}}', 5),
(71, 10, 'type_of_employment', 'select_dropdown', '고용형태', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"default\":\"1\",\"options\":{\"1\":\"\\ud30c\\uacac\",\"2\":\"\\ub3c4\\uae09\"}}', 6),
(72, 10, 'number_of_recruits', 'text', '모집인원', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"default\":1,\"step\":1}', 7),
(73, 10, 'gender', 'select_dropdown', '성별', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"default\":\"1\",\"options\":{\"1\":\"\\uc5ec\\uc131\",\"2\":\"\\ub0a8\\uc131\",\"3\":\"\\uc120\\ud0dd\\ub418\\uc9c0 \\uc54a\\uc74c\"}}', 8),
(74, 10, 'age', 'select_dropdown', '연령', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"default\":\"1\",\"options\":{\"1\":\"20\\uc138~29\\uc138\",\"2\":\"30\\uc138~39\\uc138\"}}', 9),
(75, 10, 'education', 'select_dropdown', '학력', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"default\":\"1\",\"options\":{\"1\":\"\\uace0\\ub4f1\\ud559\\uad50 \\uc878\\uc5c5 \\uc774\\uc0c1\",\"2\":\"\\ub300\\ud559 (2,3)\\ub144\\uc81c \\uc878\\uc5c5 \\uc774\\uc0c1\",\"3\":\"\\ub300\\ud559\\uad50 (4\\ub144)\\uc81c \\uc878\\uc5c5 \\uc774\\uc0c1\",\"4\":\"\\ub300\\ud559\\uc6d0 \\uc878\\uc5c5 \\uc774\\uc0c1\"}}', 10),
(76, 10, 'day_of_the_week', 'select_dropdown', '요일', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"default\":\"1\",\"options\":{\"1\":\"\\uc8fc 1\\uc77c\",\"2\":\"\\uc8fc 2\\uc77c\",\"3\":\"\\uc8fc 3\\uc77c\",\"4\":\"\\uc8fc 4\\uc77c\",\"5\":\"\\uc8fc 5\\uc77c\",\"6\":\"\\uc8fc 6\\uc77c\",\"7\":\"\\uc8fc 7\\uc77c\",\"8\":\"\\uc8fc\\ub9d0\\uadfc\\ubb34\"}}', 11),
(77, 10, 'working_time', 'time', '출근시간', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 12),
(78, 10, 'closing_time', 'time', '퇴근시간', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 13),
(79, 10, 'break_time', 'select_dropdown', '휴게시간', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"default\":\"1\",\"options\":{\"1\":\"\\uc5c6\\uc74c\",\"2\":\"30\\ubd84\",\"3\":\"1\\uc2dc\\uac04\",\"4\":\"1\\uc2dc\\uac04 30\\ubd84\"}}', 14),
(80, 10, 'preferential_conditions', 'select_dropdown', '우대조건', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"default\":\"1\",\"options\":{\"1\":\"\\uacbd\\ub825\\uc790\",\"2\":\"\\uc7a5\\uae30\\uadfc\\ubb34 \\uac00\\ub2a5\\uc790\",\"3\":\"\\uc0ac\\ubb34\\uc5c5\\ubb34 \\uac00\\ub2a5\\uc790\"}}', 15),
(81, 10, 'salary', 'text', '급여', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 16),
(82, 10, 'damdam_place_name', 'text', '담담지명', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 17),
(83, 10, 'meal_included', 'checkbox', '식대포함', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 18),
(84, 10, 'negotiable', 'checkbox', '협의가능', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 19),
(85, 10, 'probation_period', 'checkbox', '수습기간 있음', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 20),
(86, 10, 'performance_pay', 'checkbox', '성과급', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 21),
(87, 10, 'contact', 'text', '연락처', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 22),
(88, 10, 'fax_number', 'text', '팩스번호', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 23),
(89, 10, 'email', 'text', 'E-mail 주소', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 24),
(90, 10, 'address', 'text', '근무지 주소', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 25),
(91, 10, 'description', 'text_area', '자세한 내용', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 26),
(92, 10, 'agreed', 'checkbox', 'Agreed', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 37),
(93, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 27),
(94, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 28),
(95, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(96, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(97, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(98, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(99, 12, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(100, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(101, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(102, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(103, 5, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 16),
(104, 5, 'customer', 'text', 'Customer', 0, 1, 1, 1, 1, 1, '{}', 17),
(105, 13, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(106, 13, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(107, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(108, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(109, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 14, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(111, 14, 'question_id', 'text', 'Question Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(112, 14, 'value', 'text', 'Value', 0, 1, 1, 1, 1, 1, '{}', 4),
(113, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(114, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(115, 10, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 29),
(116, 10, 'slug', 'text', 'Slug', 0, 0, 0, 0, 0, 0, '{}', 4),
(117, 10, 'job_belongsto_user_relationship', 'relationship', '고용주', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(118, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 0, 0, 0, 0, 0, '{}', 8),
(119, 1, 'birth_date', 'timestamp', '생일', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 12),
(120, 1, 'gender', 'select_dropdown', '성별', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"default\":\"1\",\"options\":{\"1\":\"\\uc5ec\\uc131\",\"2\":\"\\ub0a8\\uc131\",\"3\":\"\\uc120\\ud0dd\\ub418\\uc9c0 \\uc54a\\uc74c\"}}', 14),
(121, 1, 'phone', 'text', '휴대폰번호', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 15),
(122, 1, 'address', 'text_area', '주소', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 16),
(134, 1, 'language', 'text', '언어', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 17),
(135, 1, 'o_a', 'text', 'O/A', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 18),
(136, 1, 'support_areas', 'text', '지원분야', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 19),
(137, 1, 'establishment_date', 'text', '설립일', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 21),
(138, 1, 'representative_name', 'text', '대표자명', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 22),
(139, 1, 'business_number', 'text', '사업자번호', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 23),
(140, 1, 'contact_person_number', 'text', '담당자번호', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 24),
(141, 1, 'contact_person_name', 'text', '담당자명', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 25),
(142, 1, 'number_of_employees', 'text', '직원수', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 26),
(143, 1, 'business_information', 'text', '사업내용', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 27),
(144, 1, 'sectors', 'text', '업종', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 28),
(145, 1, 'company_website_address', 'text', '기업 홈페이지 주소', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 29),
(146, 1, 'company_type', 'text', '기업형태', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 30),
(147, 1, 'take', 'text', '매출액', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 31),
(148, 1, 'capital', 'text', '자본금', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"}}', 32),
(149, 1, 'Listed_or_not', 'select_dropdown', '상장여부', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\"},\"default\":\"1\",\"options\":{\"1\":\"\\uc0c1\\uc7a5\",\"2\":\"\\ube44\\uc0c1\\uc7a5\"}}', 33),
(150, 1, 'self_introduction', 'text_area', '자기소개서', 0, 1, 1, 1, 1, 1, '{}', 20),
(151, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(152, 15, 'job_id', 'text', 'Job Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(153, 15, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(154, 15, 'status', 'select_dropdown', 'Status', 0, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"pending\":\"pending\",\"confirmation_for_interview\":\"Confirmation for interview\",\"complete\":\"Complete\"}}', 8),
(155, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(156, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(157, 15, 'resume_belongsto_job_relationship', 'relationship', 'job', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Job\",\"table\":\"jobs\",\"type\":\"belongsTo\",\"column\":\"job_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(158, 15, 'resume_belongsto_user_relationship', 'relationship', 'user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(159, 15, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 7),
(160, 15, 'employer_id', 'text', 'Employer Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(161, 10, 'job_belongsto_job_category_relationship', 'relationship', '모집분야', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"model\":\"App\\\\Models\\\\JobCategory\",\"table\":\"job_category\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 31),
(162, 10, 'job_belongsto_job_type_relationship', 'relationship', '선택', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"model\":\"App\\\\Models\\\\JobType\",\"table\":\"job_type\",\"type\":\"belongsTo\",\"column\":\"jobtype_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 33),
(163, 10, 'job_belongsto_region_relationship', 'relationship', '선택', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"model\":\"App\\\\Models\\\\Region\",\"table\":\"regions\",\"type\":\"belongsTo\",\"column\":\"area_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 35),
(164, 10, 'category_id', 'text', '모집분야', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 30),
(165, 10, 'jobtype_id', 'text', '선택', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 32),
(166, 10, 'area_id', 'text', '선택', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 34),
(167, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(168, 16, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(169, 16, 'self_care', 'text', '자기관리 .이미지', 0, 1, 1, 1, 1, 1, '{}', 3),
(170, 16, 'communicative_power', 'text', '전달력 의사', 0, 1, 1, 1, 1, 1, '{}', 4),
(171, 16, 'reduced_ability_to_cope', 'text', '대처능력 .소', 0, 1, 1, 1, 1, 1, '{}', 5),
(172, 16, 'ability_job', 'text', '능력 직무', 0, 1, 1, 1, 1, 1, '{}', 6),
(173, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 7),
(174, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(175, 16, 'exam_result_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 9),
(176, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(177, 17, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(178, 17, 'education', 'text', 'Education', 0, 1, 1, 1, 1, 1, '{}', 4),
(179, 17, 'school', 'text', 'School', 0, 1, 1, 1, 1, 1, '{}', 5),
(180, 17, 'school_department', 'text', 'School Department', 0, 1, 1, 1, 1, 1, '{}', 6),
(181, 17, 'admission_date', 'date', 'Admission Date', 0, 1, 1, 1, 1, 1, '{}', 7),
(182, 17, 'graduation_date', 'date', 'Graduation Date', 0, 1, 1, 1, 1, 1, '{}', 8),
(183, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(184, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(185, 17, 'education_history_belongsto_user_relationship', 'relationship', 'user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(186, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(187, 18, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(188, 18, 'company_name', 'text', 'Company Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(189, 18, 'company_department', 'text', 'Company Department', 0, 1, 1, 1, 1, 1, '{}', 5),
(190, 18, 'salary', 'text', 'Salary', 0, 1, 1, 1, 1, 1, '{}', 6),
(191, 18, 'rank', 'text', 'Rank', 0, 1, 1, 1, 1, 1, '{}', 7),
(192, 18, 'employment_start', 'date', 'Employment Start', 0, 1, 1, 1, 1, 1, '{}', 8),
(193, 18, 'employment_end', 'date', 'Employment End', 0, 1, 1, 1, 1, 1, '{}', 9),
(194, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(195, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(196, 18, 'work_history_belongsto_user_relationship', 'relationship', 'user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"email\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(197, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 36);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-06-09 12:23:51', '2023-06-21 01:38:09'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'App\\Models\\Post', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-06-09 12:23:52', '2023-06-21 00:23:08'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2023-06-09 12:23:52', '2023-06-09 12:23:52'),
(9, 'job_category', 'job-category', 'Job Category', 'Job Categories', NULL, 'App\\Models\\JobCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-09 13:14:26', '2023-06-09 13:15:58'),
(10, 'jobs', 'jobs', 'Job', 'Jobs', NULL, 'App\\Models\\Job', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-12 01:58:24', '2023-06-21 02:10:33'),
(11, 'job_type', 'job-type', 'Job Type', 'Job Types', NULL, 'App\\Models\\JobType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-12 16:24:53', '2023-06-12 16:26:52'),
(12, 'regions', 'regions', 'Region', 'Regions', NULL, 'App\\Models\\Region', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-12 16:31:15', '2023-06-12 16:32:38'),
(13, 'questions', 'questions', 'Question', 'Questions', NULL, 'App\\Models\\Question', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-14 14:46:52', '2023-06-14 14:47:15'),
(14, 'exams', 'exams', 'Exam', 'Exams', NULL, 'App\\Models\\Exam', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-06-14 15:15:40', '2023-06-14 15:15:40'),
(15, 'resumes', 'resumes', 'Resume', 'Resumes', NULL, 'App\\Models\\Resume', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-15 13:55:48', '2023-06-16 06:54:27'),
(16, 'exam_results', 'exam-results', 'Exam Result', 'Exam Results', NULL, 'App\\Models\\ExamResult', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-16 09:52:18', '2023-06-16 09:52:52'),
(17, 'education_histories', 'education-histories', 'Education History', 'Education Histories', NULL, 'App\\Models\\EducationHistory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-16 16:42:48', '2023-06-16 16:43:26'),
(18, 'work_histories', 'work-histories', 'Work History', 'Work Histories', NULL, 'App\\Models\\WorkHistory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-06-16 16:44:08', '2023-06-16 16:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `education_histories`
--

CREATE TABLE `education_histories` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `graduation_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education_histories`
--

INSERT INTO `education_histories` (`id`, `user_id`, `education`, `school`, `school_department`, `admission_date`, `graduation_date`, `created_at`, `updated_at`) VALUES
(5, 3, '3', 'df', 'dsdf', '2023-06-17', '2023-06-17', '2023-06-16 17:37:33', '2023-06-16 17:37:47'),
(6, 6, '2', 'shiraz', 'it', '2023-06-01', '2023-06-29', '2023-06-18 20:03:05', '2023-06-18 20:03:05'),
(7, 8, '1', '서울빌딩 ', '서빌', '2018-06-15', '2022-10-19', '2023-06-19 01:13:14', '2023-06-19 01:13:14'),
(8, 9, '1', '서울빌딩 ', '서빌', '2018-06-15', '2022-10-19', '2023-06-19 01:14:17', '2023-06-19 01:14:17'),
(9, 9, NULL, NULL, NULL, NULL, NULL, '2023-06-19 01:14:21', '2023-06-19 01:14:21'),
(10, 10, '1', '서울빌딩 ', '서빌', '2023-06-15', '2023-06-26', '2023-06-19 01:20:53', '2023-06-19 01:20:53'),
(11, 10, '2', '서울빌딩 ', '서빌', '2023-06-22', '2023-06-30', '2023-06-19 01:20:53', '2023-06-19 01:20:53'),
(12, 12, '3', 'adasd', 'asdas', '2023-06-01', '2023-06-19', '2023-06-20 03:26:19', '2023-06-20 03:26:19'),
(13, 14, '0', '', '', NULL, NULL, '2023-06-21 12:20:19', '2023-06-21 12:20:19'),
(14, 15, '0', '', '', NULL, NULL, '2023-06-21 12:52:37', '2023-06-21 12:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `value` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `user_id`, `question_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 2, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(2, 3, 2, 4, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(3, 3, 3, 4, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(4, 3, 4, 2, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(5, 3, 5, 5, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(6, 3, 6, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(7, 3, 7, 3, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(8, 3, 8, 3, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(9, 3, 9, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(10, 3, 10, 0, '2023-06-14 15:36:12', '2023-06-14 15:36:12'),
(11, 3, 11, 3, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(12, 3, 12, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(13, 3, 13, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(14, 3, 14, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(15, 3, 15, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(16, 3, 16, 2, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(17, 3, 17, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(18, 3, 18, 5, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(19, 3, 19, 4, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(20, 3, 20, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(21, 3, 21, 3, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(22, 3, 22, 3, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(23, 3, 23, 2, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(24, 3, 24, 3, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(25, 3, 25, 0, '2023-06-14 15:36:12', '2023-06-14 15:36:12'),
(26, 3, 26, 4, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(27, 3, 27, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(28, 3, 28, 2, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(29, 3, 29, 3, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(30, 3, 30, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(31, 3, 31, 5, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(32, 3, 32, 2, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(33, 3, 33, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(34, 3, 34, 2, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(35, 3, 35, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(36, 3, 36, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(37, 3, 37, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(38, 3, 38, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(39, 3, 39, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(40, 3, 40, 1, '2023-06-14 15:36:12', '2023-06-19 00:58:16'),
(41, 6, 1, 5, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(42, 6, 2, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(43, 6, 3, 3, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(44, 6, 4, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(45, 6, 5, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(46, 6, 6, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(47, 6, 7, 3, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(48, 6, 8, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(49, 6, 9, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(50, 6, 10, 3, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(51, 6, 11, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(52, 6, 12, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(53, 6, 13, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(54, 6, 14, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(55, 6, 15, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(56, 6, 16, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(57, 6, 17, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(58, 6, 18, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(59, 6, 19, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(60, 6, 20, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(61, 6, 21, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(62, 6, 22, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(63, 6, 23, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(64, 6, 24, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(65, 6, 25, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(66, 6, 26, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(67, 6, 27, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(68, 6, 28, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(69, 6, 29, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(70, 6, 30, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(71, 6, 31, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(72, 6, 32, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(73, 6, 33, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(74, 6, 34, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(75, 6, 35, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(76, 6, 36, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(77, 6, 37, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(78, 6, 38, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(79, 6, 39, 0, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(80, 6, 40, 5, '2023-06-18 20:03:47', '2023-06-18 20:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `self_care` int DEFAULT NULL,
  `communicative_power` int DEFAULT NULL,
  `reduced_ability_to_cope` int DEFAULT NULL,
  `ability_job` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `user_id`, `self_care`, `communicative_power`, `reduced_ability_to_cope`, `ability_job`, `created_at`, `updated_at`) VALUES
(2, 6, 96, 94, 96, 88, '2023-06-18 20:03:47', '2023-06-18 20:03:47'),
(3, 3, 81, 80, 95, 82, '2023-06-19 00:58:16', '2023-06-19 00:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `areas_of_recruitment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_employment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_recruits` int DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_of_the_week` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `break_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferential_conditions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `damdam_place_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meal_included` tinyint DEFAULT '0',
  `negotiable` tinyint DEFAULT '0',
  `probation_period` tinyint DEFAULT '0',
  `performance_pay` tinyint DEFAULT '0',
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `agreed` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `jobtype_id` int DEFAULT NULL,
  `area_id` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `areas_of_recruitment`, `type_of_employment`, `number_of_recruits`, `gender`, `age`, `education`, `day_of_the_week`, `working_time`, `closing_time`, `break_time`, `preferential_conditions`, `salary`, `damdam_place_name`, `meal_included`, `negotiable`, `probation_period`, `performance_pay`, `contact`, `fax_number`, `email`, `address`, `description`, `agreed`, `created_at`, `updated_at`, `user_id`, `slug`, `category_id`, `jobtype_id`, `area_id`, `deleted_at`) VALUES
(1, '공고제목', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1500', NULL, 1, 1, 1, 1, 'Contact  info', '+1555244', 'contact@test.com', 'seoul', '창업 후 올댓모델은 인재를 원하는 기업과 인재를 연결하는 징검다리가 되어 보다 정교한 취업 모델을 완성하여, 국내 유일의 리셉셔니스트 전문 에이전시로 업계에 명성을 쌓으며 영향력을 넓혀 나가고 있습니다.\r\n\r\n모집분야 : text\r\n우대조건 : text\r\n사전질문 : text', 1, '2023-06-15 01:38:00', '2023-06-17 15:36:09', 4, '공고제목', 4, 8, 5, NULL),
(2, 'test job', NULL, '2', 3, '2', '1', '2', '6', '11:42:00', '23:42:00', '2', '2', '2500', 'place', 1, NULL, NULL, 1, '+98123', '+98123', 'hajipour.robin@gmail.com', 'Jian Guo Lu Jin Di Guo Ji Hua Yuan D1-16a City Area - ChaoYang District, Beijing, 100022', 'Jian Guo Lu Jin Di Guo Ji Hua Yuan D1-16a City Area - ChaoYang District, Beijing, 100022\nJian Guo Lu Jin Di Guo Ji Hua Yuan D1-16a City Area - ChaoYang District, Beijing, 100022\nJian Guo Lu Jin Di Guo Ji Hua Yuan D1-16a City Area - ChaoYang District, Beijing, 100022\n', 1, '2023-06-18 20:13:36', '2023-06-18 20:13:36', 7, 'test_job', 4, 8, 9, NULL),
(3, 'fghfhgfj', 'bvnc호ㅓㅎ러ㅗ허', 'ㅗ하ㅓ츄프ㅜ호', 1, 'ㅗ허ㅗ허', '24', 'ㅗ허ㅗ허', '3', '00:00:04', '00:00:12', '1h', '호ㅓㅎ초ㅓ', '7581000', '허ㅗㅗㅎ오ㅓ', 1, 0, 1, 1, '21656465413', '213215616', 'habibi1994habibi@gmail.com', 'ㅗ휴처ㅜㅗ퓨ㅓㅜ', 'ㅗ허효ㅗㅓㅛ호ㅓ화ㅓㅗ하ㅕ야ㅛㅁ넡오추ㅠ', 1, '2023-06-19 02:21:00', '2023-06-19 02:23:47', 4, 'fghfhgfj', 6, 7, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_category`
--

CREATE TABLE `job_category` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_category`
--

INSERT INTO `job_category` (`id`, `title`, `icon`, `created_at`, `updated_at`) VALUES
(4, '리셉션', NULL, '2023-06-16 08:02:26', '2023-06-16 08:02:26'),
(5, '프리랜서', NULL, '2023-06-16 08:02:39', '2023-06-16 08:02:39'),
(6, '비서', NULL, '2023-06-16 08:02:52', '2023-06-16 08:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE `job_type` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`id`, `title`, `created_at`, `updated_at`) VALUES
(7, '취업', '2023-06-16 08:04:36', '2023-06-16 08:04:36'),
(8, '아르바이트', '2023-06-16 08:05:00', '2023-06-16 08:05:00'),
(9, '프리랜서', '2023-06-16 08:05:14', '2023-06-16 08:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, '대시보드', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2023-06-09 12:23:51', '2023-06-21 01:12:22', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, 17, 1, '2023-06-09 12:23:51', '2023-06-12 16:13:05', 'voyager.media.index', NULL),
(3, 1, '사용자', '', '_self', 'voyager-person', '#000000', 18, 1, '2023-06-09 12:23:51', '2023-06-21 01:12:45', 'voyager.users.index', 'null'),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 18, 2, '2023-06-09 12:23:51', '2023-06-12 16:13:53', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 4, '2023-06-09 12:23:51', '2023-06-12 16:13:53', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-06-09 12:23:51', '2023-06-12 16:13:04', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-06-09 12:23:51', '2023-06-12 16:13:04', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-06-09 12:23:51', '2023-06-12 16:13:04', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-06-09 12:23:51', '2023-06-12 16:13:04', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 5, '2023-06-09 12:23:51', '2023-06-12 16:13:53', 'voyager.settings.index', NULL),
(11, 1, '카테고리', '', '_self', 'voyager-categories', '#000000', 17, 4, '2023-06-09 12:23:52', '2023-06-21 01:15:04', 'voyager.categories.index', 'null'),
(12, 1, '게시물', '', '_self', 'voyager-news', '#000000', 17, 2, '2023-06-09 12:23:52', '2023-06-21 01:14:36', 'voyager.posts.index', 'null'),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, 17, 3, '2023-06-09 12:23:52', '2023-06-12 16:13:49', 'voyager.pages.index', NULL),
(15, 1, '직업 분류', '', '_self', NULL, '#000000', 24, 1, '2023-06-09 13:14:26', '2023-06-21 01:15:55', 'voyager.job-category.index', 'null'),
(16, 1, '일자리', '', '_self', 'voyager-hammer', '#000000', NULL, 7, '2023-06-12 01:58:24', '2023-06-21 01:49:03', 'voyager.jobs.index', 'null'),
(17, 1, '블로그 관리', '', '_self', 'voyager-window-list', '#000000', NULL, 3, '2023-06-12 16:12:56', '2023-06-21 01:14:10', NULL, ''),
(18, 1, '사용자 관리', '', '_self', 'voyager-people', '#000000', NULL, 2, '2023-06-12 16:13:40', '2023-06-21 01:13:06', NULL, ''),
(19, 1, '직업 유형', '', '_self', NULL, '#000000', 24, 2, '2023-06-12 16:24:53', '2023-06-21 01:16:21', 'voyager.job-type.index', 'null'),
(20, 1, '지역', '', '_self', NULL, '#000000', 24, 3, '2023-06-12 16:31:15', '2023-06-21 01:16:48', 'voyager.regions.index', 'null'),
(21, 1, '질문들', '', '_self', 'voyager-question', '#000000', NULL, 8, '2023-06-14 14:46:52', '2023-06-21 01:49:25', 'voyager.questions.index', 'null'),
(22, 1, '시험', '', '_self', 'voyager-harddrive', '#000000', NULL, 9, '2023-06-14 15:15:40', '2023-06-21 01:49:48', 'voyager.exams.index', 'null'),
(23, 1, '이력서', '', '_self', 'voyager-bookmark', '#000000', NULL, 10, '2023-06-15 13:55:48', '2023-06-21 01:50:06', 'voyager.resumes.index', 'null'),
(24, 1, '직업 필터', '', '_self', 'voyager-params', '#000000', NULL, 6, '2023-06-16 07:59:31', '2023-06-21 01:51:23', NULL, ''),
(25, 1, '시험 결과', '', '_self', 'voyager-eye', '#000000', NULL, 11, '2023-06-16 09:52:18', '2023-06-21 01:50:34', 'voyager.exam-results.index', 'null'),
(26, 1, '교육 이력', '', '_self', NULL, '#000000', 18, 4, '2023-06-16 16:42:49', '2023-06-21 01:13:49', 'voyager.education-histories.index', 'null'),
(27, 1, '경력', '', '_self', NULL, '#000000', 18, 3, '2023-06-16 16:44:08', '2023-06-21 01:13:24', 'voyager.work-histories.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(5, 2, '기업-policy', '기업 가입:\r\n제1조: 목적\r\n본 약관은 ㈜올댓모델(이하 \"회사\"라 합니다)이 운영하는 웹사이트(이하 \"사이트\"라 합니다) 및 모\r\n바일 어플리케이션(이하 \"어플리케이션\"이라 하며, 사이트와 어플리케이션을 총칭하여 \"사이트 등\"\r\n이라 합니다)을 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요\r\n한 사항을 규정함을 목적으로 합니다.', '<p>기업 가입:<br>제1조: 목적<br>본 약관은 ㈜올댓모델(이하 \"회사\"라 합니다)이 운영하는 웹사이트(이하 \"사이트\"라 합니다) 및 모<br>바일 어플리케이션(이하 \"어플리케이션\"이라 하며, 사이트와 어플리케이션을 총칭하여 \"사이트 등\"<br>이라 합니다)을 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요<br>한 사항을 규정함을 목적으로 합니다.<br>제2조: 용어의 정의<br>본 약관에서 사용하는 용어의 정의는 아래와 같습니다.<br>1. 1) &ldquo;사이트&rdquo;라 함은 회사가 서비스를 이용자에게 제공하기 하여 제작, 운영하는 사이트를 말합<br>니다. 현재 회사가 운영하는 사이트의 접속 주소는 아래와 같습니다.<br>1. (페이지 주소)<br>2.<br>2. 2) &ldquo;서비스&rdquo;라 함은 채용정보, 이력서 및 기업정보 제공 기타의 서비스를 통하여 구직,<br>채용시장에서 구직자와 기업의 연결을 돕는 플랫폼 서비스입니다. 구책적으로는<br>회사가 기업 또는 구직자가 구인, 구직과 교육을 목적으로 등록하는 각종 자료를<br>DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사<br>이트에서 제공하는 모든 부대 서비스를 말한다. 화사가 제공하는 서비스는 유형에<br>따라 무료 또는 유료로 제공합니다. 서비스의 자세한 내용은 제**조에서 정하는 바<br>에 따릅니다.<br>3) &ldquo;이용자&rdquo;라 함은 사이트 등에 접속하여 본 약관에 따라 회사가 제공하는 서비스를 이<br>용하는 회원(기업회원 및 개인회원을 포함) 및 비회원을 말합니다.<br>4) &ldquo;기업회원&rdquo;이라는 함은 채용을 희망하는 기업으로서 본 서비스를 이용하기 위하여 본<br>약관에 동의하고 회사와 이용계약을 체결하여 기업회원 ID를 부여받은 이용자를<br>말합니다. 기업회원은 고용 목적 및 형태에 따라 \"일반 기업회원\", \"파견 및 도급<br>기업회원\", \"헤드헌팅(서칭펌) 기업회원\" 및 \"교육 기업회원\"으로 구분됩니다. 회사<br>는 유료 서비스 구매계약 등에 있어서 기업회원의 분류에 따라 권리의무를 다르게<br>설정할 수 있습니다.<br>5) &ldquo;비회원&rdquo;이라 함은 회사와 서비스 이용계약을 체결하지 않은 채 사이트 등을 통하여<br>회사가 제공하는 서비스를 이용하는 이용자를 말합니다.<br>6) \"ID\" 또는 \"기업회원 ID\"라 함은 기업회원의 식별 및 서비스 이용을 위하여 기업회원<br>이 선정하고 회사가 부여하는 문자와 숫자의 조합을 말합니다.<br>7) \"비밀번호\"라 함은 회사의 서비스를 이용하려는 사람이 기업회원 ID를 부여 받은 자와<br>동일인임을 확인하고 기업회원의 권익을 보호하기 위하여 기업회원이 선정한 문자<br>와 숫자의 조합을 말합니다.<br>제3조 약관의 명시와 개정<br>1. 1) 회사는 이 약관의 내용과 상호, 영업소 소재지, 사업자등록번호, 연락처 등을 이용자가 알 수<br>있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다.<br>2) 회사는 약관의 규제 등에 관한 법률, 정보통신망 이용 촉진 및 정보 보호 등에 관한 법률, 개<br>인정보 보호법, 전기통신기본법, 전기통신사업법 등 관련 법령을 위배하지 않는 범위에서<br>본 약관을 개정할 수 있습니다.<br>3) 회사가 약관을 개정할 경우에는 개정 약관 적용일 최소 7일전(약관의 변경이 개인회<br>원에게 적용일자 7일 전부터 적용일자 전일까지) 공지한다. 단 &ldquo;회원&rdquo;의 권리, 의<br>무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.<br>4) 기업회원은 변경된 약관의 적용을 거부할 권리가 있으며, 변경된 약관이 공지된 지<br>15일 이내에 변경 약관 적용에 대한 거부 의사를 표시할 수 있습니다. 만약, 기업<br>회원이 변경 약관 적용에 대한 거부 의사를 표시하지 않고 서비스를 계속 이용하<br>는 경우, 회사는 기업회원이 변경 약관 적용에 동의하는 것으로 간주합니다.<br>5) 기업회원이 제4항에 따라 변경 약관 적용을 거부할 의사를 표시한 경우, 회사는 기업<br>회원에게 15일의 기간을 정하여 사전 통지 후 해당 기업회원과의 서비스 이용계약<br>또는 별도로 체결된 계약을 해지할 수 있습니다.<br>제4조 약관 외 준칙<br>1. 1) 본 약관에서 규정하지 않는 사항에 관해서는 약관 법률, 정보통신기본법, 전기통신사업법, 정<br>보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.<br>2) 기업회원이 회사와 개별 계약을 체결하여 서비스를 이용할 경우, 기업회원의 서비스 이용과 관<br>련된 권리 의무는 순차적으로 개별 계약, 판매약관, 본 약관에서 정한 내용에 따라 규율됩<br>니다.<br>제5조 기업 회원에 대한 고지, 통지 및 공지<br>① 회사는 기업회원이 회원 가입 신청시 등록한 이메일, 휴대전화 문자메시지 또는 어플리<br>케이션 푸쉬 알림 중 기업회원이 수신에 동의한 수단을 활용하여 기업회원에 대한 각종 고<br>지나 통지를 이행할 수 있습니다.<br>② 기업회원에게 공통적으로 적용되는 내용을 고지 또는 통지할 경우, 회사는 1주일 이상<br>사이트 등의 게시판이나 화면에 일정한 사항을 게시하여 공지함으로써 각 기업회원에 대한<br>개별 고지나 통지를 갈음할 수 있습니다. 다만, 기업회원의 권리&middot;의무에 중대한 영향을 미<br>치는 사항에 대해서는 게시기간을 연장하여 공지합니다.<br>③ 회사는 기업회원에게 서비스 정책, 이용약관, 판매약관, 개인정보 취급방침 등 일체의<br>약관, 서비스 이용 관련 일정한 사항이나 정보를 알리거나 안내할 목적으로 사이트 등의<br>게시판이나 서비스 화면에 그 내용을 게시하거나 제1항에 기재된 수단을 활용하여 공지할<br>수 있습니다.<br>제6조 이용계약의 성립<br>1. 1) 서비스 이용계약은 기업회원 서비스를 이용하고자 하는 자(이하 &ldquo;이용희망자&rdquo;라 합니다)의<br>본 약관과 개인정보 처리방침의 내용에 대한 동의 및 회원 가입 신청에 대하여 회사가 승<br>낙함으로써 성립합니다.<br>2. 2) 회사의 서비스 이용계약(이하: &lsquo;이용약관&rsquo;)은 서비스를 이용하고자 하는 자가 본 약관과 개인<br>정보처리방침을 읽고 &ldquo;동의&rdquo; 또는 &ldquo;획인&rdquo; 버튼을 누른 경우 본 약관에 동의한 것으로 간주<br>한다.<br>3. 3) 제1항의 승낙은 회사가 기업회원 가입 신청자의 본 약관에 대한 동의를 확인하고 승낙의 의<br>사가 담긴 이메일 또는 서면으로 통지함으로써 이루어지고, 이러한 승낙의 통지가 회원 가<br>입 신청자에게 도달하면 서비스 이용계약이 성립합니다.<br>제7조 이용신청 승낙과 제한<br>① 회사는 기업회원 가입 신청을 한 이용희망자에 대하여 다음 각호의 사유를 모두 충족할<br>경우 원칙적으로 접수 순으로 기업회원 가입을 승낙합니다.<br>1. 회사의 업무수행 및 서비스 제공을 위한 설비의 여유&middot;기술상 지장이 없는 경우<br>2. 본 약관에서 정하는 승낙 제한 또는 거절, 보류 사유에 해당하지 않는 경우<br>② 다음 각호 중 어느 사유에 해당하는 경우, 회사는 이용자의 기업회원 가입 신청을 승낙<br>하지 아니합니다. 기업회원 가입 후 해당 사실이 밝혀진 경우, 회사는 해당 기업회원 ID를<br>삭제하거나 기업회원을 강제탈퇴 조치하며, 필요할 경우 관계법령에 따른 형사처벌이나 행<br>정제재를 위한 법률절차를 진행할 수 있습니다.<br>1. 기업회원 가입 신청 시에 타인의 명의를 도용한 경우<br>2. 기업회원 가입 신청 시에 회사명 또는 사업자등록번호를 실제와 다르게 기재하거<br>나 기타 기업회원 정보를 허위로 기재한 경우<br>3. 회사가 제9조에 의거하여 증빙 자료 제출을 요구하였음에도 불구하고 합리적 이<br>유 없이 이에 응하지 아니한 경우<br>4. 증빙 자료를 제출함에 있어 허위의 내용이 기재된 자료, 위조 또는 변조된 자료를<br>제출한 경우<br>5. 회사가 서비스 부정이용 행위에 대한 제재조치를 취하기 전 이를 회피하기 위해<br>탈퇴하였던 경우<br>③ 다음 각 호 중 어느 사유에 해당하는 경우, 회사는 그 사유가 해소될 때까지 이용자의<br>기업회원 가입 신청에 대한 승낙을 유보할 수 있습니다. 다만, 회사는 기업회원 가입 신청<br>을 한 이용자에 대해 그 사유를 회사가 정한 방식으로 통지할 수 있습니다.<br>1. 업무수행 및 서비스 제공을 위한 설비의 여유가 없는 경우<br>2. 업무수행 및 서비스 제공을 위한 기술상 지장이 있는 경우<br>3. 기타 회사의 사정(회사의 귀책사유 있는 경우를 포함)으로 이용 승낙이 곤란한 경<br>우<br>제8조 서비스의 내용<br>1, 1) 회사가 제공하는 서비스의 내용은 다은 각호와 같습니다.<br>1.1. 체용정보 등록과 채용정조 게재 서비스<br>2.2. 온라인 채용관리/ 입사지원 서비스<br>3.3.구인과 관련된 제반 서비스<br>4.4.교육정보 등록과 교육정보 게재 서비스<br>5.5.이용자간의 교류와 소통에 관련한 서비스<br>6.6.학원 임대.매매 정보 게재 서비스 및 관련 서비스<br>7.7.&ldquo;회사&rdquo;가 제휴 계약 등을 통해 &ldquo;회원&rdquo;에게 제공하는 일체의 서비스<br>8.8.리워드 광고 서비스<br>2. 2) 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다. 다만, 서비스의 내용의 추<br>가 또는 변경으로 인하여 회원에게 중요한 영행을 미치는 경우, 회사는 추가 또는 변경된<br>서비스 내용을 그 적용일로부터 30일 전에 공지합니다.<br>제9조 기업 회원 정보, 채용공고등록, 이력서 검색<br>① 기업회원은 구직을 원하는 이용자가 채용공고를 열람한 후 해당 기업에 대하여 정확히<br>판단할 수 있도록 기업정보를 사실과 다름없이 정확하게 기재하여야 합니다. 기업정보를<br>사실과 다르게 기재한 기업회원은 이로 인하여 발생한 모든 문제에 대하여 전적인 책임을<br>부담하여야 합니다.<br>② 기업회원은 채용절차 공정화에 관한 법률 제4조, 직업안정법 제34조 및 동법 시행령 제<br>34조에 의하여 금지되는 거짓 구인광고 또는 거짓 채용공고(이하 &ldquo;거짓 채용공고&rdquo;라 합니<br>다)를 등록하여서는 아니됩니다. 거짓 채용공고를 등록하거나 거짓 구인 조건을 제시한 기<br>업회원은 채용절차의 공정화에 관한 법률 제16조에 의해 5년 이하의 징역 또는 2천만원<br>이하의 벌금형을 받거나 직업안정법 제47조에 의해 5년 이하의 징역 또는 5천만 원 이하<br>의 벌금형을 받을 수 있습니다. 회사는 거짓 채용공고를 등록한 기업회원을 직권으로 고발<br>할 수 있습니다.<br>③ 제2항에 따라 금지되는 거짓 채용공고는 다음 각 호와 같습니다.<br>1. 구인 또는 채용을 가장하여 아이디어 수집, 사업장 홍보, 물품 판매, 유학 알선,<br>수강생 모집, 직업소개, 부업알선, 자금 모집 등을 행하는 공고<br>2. 작성자가 제시한 직종, 업무내용, 근로조건 등이 실제와 현저히 다른 공고<br>3. 회사명, 담당자 성명, 사무실 연락처 등 구인업체의 중요 정보를 정확하게 기입하<br>지 않았을 경우<br>4. 기타 채용공고의 중요 내용이 사실과 다른 공고<br>④ 기업회원은 남녀 고용 평등과 일, 가정 양립 지원에 관한 법률 제7조에 의거하여 근로<br>자의 모집 및 채용에 있어서 남녀를 차별하여서는 아니됩니다.<br>⑤ 기업회원은 채용공고 등록시 제24조 제2항에서 규정하는 서비스 부정이용행위를 하여<br>서는 아니됩니다.<br>⑥ 기업회원이 등록한 기업정보 및 채용공고가 제2항 내지 제5항을 위반한 것으로 인정될<br>경우, 회사는 제25조 제1항에 따라 해당 공고의 게시를 중단하거나 삭제하는 등의 조치를<br>취할 수 있습니다. 또한, 기업회원은 회사 및 이용자에 대한 관계에서 제2항 내지 제5항의<br>위반으로 발생할 수 있는 민&middot;형사상 책임을 전적으로 부담합니다.<br>⑦ 회사는 기업회원이 등록한 기업정보 및 채용공고를 회사가 정한 방법에 따라 노출시킬<br>수 있으며, 지정된 마감기간이 지난 채용공고를 임의로 마감시킬 수 있습니다.<br>⑧ 기업회원은 유&middot;무료로 사람인 개인회원이 등록한 이력서를 검색할 수 있으며, 회사가 제<br>시하는 별도의 커뮤니케이션 수단을 통하여 개인회원에게 연락을 취할 수 있습니다. 이 때,<br>이력서상 기재된 개인회원의 연락처의 열람 및 연락의 목적은 채용활동에 국한되어야 하며,<br>기업의 영업&middot;마케팅을 위하여 활용하거나 제3자에 대한 개인정보 제공 시에는 정보통신망<br>이용 촉진 및 정보 보호 등 관련 법률, 개인정보 보호법, 직업안정법 위반에 따른 법적 책<br>임을 전적으로 부담합니다.<br>⑨ 회사는 기업회원이 등록된 개인회원의 이력서를 검색하고, 개인회원에게 연락할 수 있<br>는 권한에 적정한 제한을 둘 수 있으며, 기업회원이 적절하지 않은 방법이나 채용활동 이<br>외의 목적으로 개인회원에게 연락하거나 서비스 이용에 불편을 끼친 경우, 기업회원의 채<br>용공고 및 기업정보를 임의로 수정/삭제 등의 조치를 취할 수 있습니다.<br>제10조 제휴를 통한 서비스<br>1. ① 회사는 제휴 관계를 체결한 여타 인터넷 웹 사이트 및 채용박람회 또는 신문, 잡지 등의 오<br>프라인 매체를 통해 사이트에 등록한 회원의 이력서 정보가 열람될 수 있도록 서비스를 제<br>공할 수 있다. 단, 제휴 서비스를 통해 노출되는 이력서의 연락처 정보는 회원이 이력서 등<br>록 시 선택한 연락처 공개 여부에 따라 제공된다.<br>2. 2) 회사는 본 조의 ①항과 관련하여 제휴를 통해 타사이트 및 매체에 등록될 수 있음을 고지하<br>고 \"기업회원\"이 채용공고 등록시에 각 제휴 사이트별로 제휴 등록에 대한 \"동의\",혹은 \"비<br>동의\"할 수 있도록 선택권을 부여해야 하며, 제휴사이트 전체 목록을 \"사이트\" 내에서 상시<br>열람할 수 있도록 할 의무가 있습니다.<br>3. 3) 회사는 제휴사 정보를 가급적 본 약관에 병시하여야 하며, 본 약관에서 명시하지 못한 제휴<br>사 정보는 각 &ldquo;사이트&rdquo; 별 별도의 제휴사 안내 페이지를 통하여 회원에게 안내하여야 합니<br>다.<br>제11조 서비스의 요금 및 결제<br>1. 1) 기업회원 가입과 이력서 등록은 원칙적으로 무료입니다. 다만, 개인회원 또는 사이트에 방문<br>한 자에게 등록한 채용공고 정보를 보다 효과적으로 노출시키기 위한 방편으로 초기화면<br>노출 및 서브페이지 상위노출, 자중노출 등 별도의 서비스는 유료로 제공될 수 있습니다.<br>2. 2) 회사는 유료서비스의 요금 및 상세내용을 사이트에 공지 하여야 합니다.<br>3. 3) 회사는 유료서비스 이용금액을 변경할 수 있으며, 이용요금 변경시 변경된 이용요금 내용 및<br>변경 내용 적용일을 명시하여 변경 내용 적용일 7일전 또는 관련 법률에서 정한 기한 전까<br>지 개인회원에게 사전 공지합니다.<br>4. 4) 제3항에 따라 공지된 이용요금 변경 내용은 변경 내용 적용일부터 모든 개인회원에게 적용<br>됩니다. 다만, 이용요금 변경 내용 적용일 이전에 체결된 계약금액에 영향을 미치지 않도록<br>합니다.<br>제12조 서비스 요금 환불 및 오류의 조정<br>1. 1) 회사는 원칙적으로 회원이 회사의 서비스 이용규정을 위반하거나 등록제한 광고를 등록하고<br>유료서비스를 신청한 경우 이용료를 환불하지 않으며, 서비스 니용제한 등의 추가적인 제<br>재조치가 있을 수 있습니다.<br>2. 2) 회사는 다음 각호에 해당하는 경우 이용료를 환불합니다. 단, 본 조제1항에 해당하는 경우<br>회사는 환불에 대한 책임을지지 않습니다.<br>1.1. 유료서비스 이용이 제시죄지 않은 경우<br>2.2. 네트원크 또는 시스템 장애로 의해 서비스 이용이 불가능한 경우<br>3.3. 유료 서비스 신청 후 회원 사정에 의해 서비스가 취소될 경우<br>3. 3) 이용료를 환불받고자 하는 회원은 전화로 환불요청을 해야 합니다.<br>4. 4) 회사는 개인회원으로부터 환불 요청을 받은 날로부터 3영업일 이내에 개인회원의 환불 요청<br>이 회사가 정한 환불 요건을 갖추었는지 여부를 판단하여 개인회원에게 그 내용을 통지합<br>니다.<br>5. 5) 본 제 4항에 따른 환불은 영업일기준 3일 이내에 처리합니다. 단, 카드결재, 무통장 입금, 가<br>상계촤 결제 환불의 경우 회사는 영업일 기준 3일 이내 해당 결제 대행사에 환불 요청을<br>하며, 실제 환불은 해장 결제 대행사의 처리일 기분에 따라 처리됩니다.<br>6. 6) 기타 이용요금의 환불 관련 상세 사항은 판매약관에서 정하는 바에 따릅니다.<br>제13조 서비스 이용시간 및 제한<br>1. 1) 회사는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공합니다. 다만, 일부 서비<br>스의 경우 그 종류나 성질을 고려하려 별도로 이용시간을 정할 수 있으며, 회사는 그 이용<br>시간을 개인회원에게 사전 공지합니다.<br>2. 2) 회사는 서비스 업데이트나 정보 가공, 자료의 갱신을 위한 시스템 유지&middot;보수 작업, 시스템<br>장애 해결을 위한 보수작업, 정기 PM 작업, 시스템 교체 작업이 필요하거나 회선 장애 등<br>서비스를 중단할 합리적인 사유가 발생한 경우, 일시적으로 서비스를 중단할 수 있습니다.<br>계획된 작업의 경우 서비스 중단 시간과 작업 내용을 사전에 공지하되, 우발적 장애 발생<br>등 부득이한 사유가 있는 경우에 한하여 그 내용을 사후에 공지할 수 있습니다.<br>3. 3) 회사는 다음 각 호에 해당하는 경우 서비스의 제공을 중지할 수 있습니다<br>1. 1. 설비의 보수 등 회사의 필요에 의해 사전에 기업회원들에게 공지한 경우<br>2. 2. 기간통신사업자가 전기통신서비스 제공을 중지하는 경우<br>3. 3. 기타 불가항력적인 사유에 의해 서비스 제공이 객관적으로 불가능한 경우<br>제14조 정보의 제공 및 광고의 게재<br>1. 1) 회사는 회원에게 서비스 이용에 필요가 있다고 인정되거나 서비스 개선 및 회원 대상에 서<br>비스 소개 등의 목적으로 하는 각종 전보에 대해사 전자우편이나 서신우편을 이용한 방법<br>으로 정보를 제공할 수 있습니다.<br>2. 2) 회사는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지 등에 게재할<br>수 있으며, 회원의 메일을 통해 알릴 수 있습니다.<br>3. 3) 회사는 사이트 등에 게재되어 있는 광고주의 홍보활동에 개인회원이 참여하거나 교신 또는<br>거래를 함으로써 발생하는 모든 손실과 손해에 대해 일체의 책임을지지 않습니다.<br>4. 4) 서비스를 이용하는 회원은 서비스 이용시 노출되는 광고 게재에 대해 동의 하는 것으로 간<br>주합니다.<br>제15조 자료내용의 책임과 회사의 정보 수정 권한<br>1. 1) 자료라 함은 회원이 서비스를 이용하면서 등록한 채용공고와 이력서 및 사이트에 게시한 게<br>시물 등을 말합니다.<br>2. 2) 회원은 자료 및 게시물을 사실에 근거하여 성실하게 작성해야 하며, 만일 자료의 내용이 사<br>실이 아니거나 부정확하게 작성되어 발생하는 모든 책임은 회원에게 있습니다.<br>3. 3) 모든 자료의 관리와 작성은 회원 본인이 하는 것이 원칙이나 사정상 위탁 또는 대행관리를<br>하더라도 그 내용에 대한 책임은 회원에게 있으며, 회원은 주기적으로 자신의 자료를 확인<br>하여 언제나 항상 정확하게 관리가 되도록 노력해야 합니다.<br>4. 4) 회사는 회원이 등록한 자료에 오자, 탈자 또는 사회적 통념에 어긋나는 문구가 있을 경우 이<br>를 언제든지 수정할 수 있는 권한이 있습니다.<br>5. 5) 회사는 회원이 등록한 자료를 &ldquo;회사&rdquo;가 운영하는 같은 목적의 타 사이트에도 게재할 수 있<br>습니다.<br>6. 6) 회원이 등록한 자료로 인하여 타인(또는 타법인)으로부터 허위사실 및 명예훼손 등으로 삭제<br>요청이 접수된 경우 회사는 회원에게 사전 통지 없이 본 자료를 삭제할 수 있으며, 자료<br>삭제 후 메일 등의 방법으로 회원에게 통지할 수 있습니다.<br>제16조 자료의 저작권 및 활용<br>1. 1) 회사가 작성한 게시물 또는 저작물에 대한 저작권 및 기타 지적재산권은 회사에 귀속합니다.<br>2. 2) 회원이 사이트 내에 게시한 게시물의 저작권은 회원에게 귀속됩니다. 단, 회원은 자신이 창<br>작, 등록한 게시물에 대해 무상의 비독점적 사용권을 회사에 부여하고, 이 사용권은 회사가 사이<br>트를 운영하는 동안 계속 유효하며, 회원 탈퇴한 후에도 이와 같습니다.<br>3. 3) 게시물에 대한 권리와 책임은 게시물을 게시한 회원에게 있으며, 회사는 회원의 동의 없이<br>이를 회사가 운영하는 사이트 이외에 영리적 목적으로 사용할 수 없습니다. 단, 비영리적인 경우<br>에는 해당되지 않습니다.<br>4. 4) 회원이 입력한 정보는 취업 및 관련 동향의 통계 자료로 활용될 수 있으며, 그 자료 내용은<br>매체를 통해 언론에 배포될 수 있습니다. 단, 활용되는 정보 중 개인을 식별할 수 있는 개인정보<br>는 제외합니다.<br>5. 5) 사이트에서 정당한 절차를 거쳐 기업회원이 열람한 개인 회원의 이력서 정보는 해당 기업의<br>인사 자료이며, 이에 대한 관리 권한은 해당 기업의 정책에 의합니다.<br>제17조 회사의 의무<br>1. 1) 회사는 본 약관에서 정한 내용에 따라 안정적 및 계속적으로 서비스를 제공할 수 있도록 최<br>선을 다하여 노력하고록 하겠습니다.<br>2. 2) 회사는 특별한 사정이 없는 한 회원이 서비스 이용신청 후, 48시간 이내에 서비스를 이용할<br>수 있도록 합니다.<br>3. 3) 회사는 서비스에 관련된 서비를 항상 운용할 수 있는 상태로 유지, 보수하고, 장애가 발생하<br>는 경우 지체 없이 이를 수리 및 복구할 수 있도록 최선의 노력을 다하여야 합니다. 다만,<br>천재지변 등 예측하지 못한 손해는 회사가 책임을지지 않으며, 이 경우 자료의 복구나 정<br>상적인 서비스 지원이 되도록 최선을 다할 의무가 있습니다.<br>4. 4) 서비스의 이용이나 운영과 관된 개인회원의 불만사항이 접수되는 경우, 회사는 이응 지체없<br>이 처리하여 그 결과를 회신할 수 있도록 노력합니다. 다만, 불만사항 내용 확인 및 경위<br>파악, 접수 내용 처리 등에 상당한 시간이 소요될 경우, 회사는 그 사유와 처리일정을 개인<br>회원에게 통지합니다.<br>5. 5) 기업회원이 사이트에 등록한 기업정보, 채용공고 등의 내용은 사이트 방문자에게 공개를 원<br>칙으로 하며, 회사는 공개 기간을 지정할 수 있습니다. 단, 일부 비공게 항목은 사이트에서<br>제시하는 별도의 옵션을 통해 지정할 수 있습니다.<br>6. 6) 회원이 등록한 자료로 인하며 사이트의 원활한 운영에 영향을 미친다고 판단될 시, 등록된<br>모든 자료를 회원의 사전 동의 없이 삭제할 수 있습니다.<br>7. 7) 회사는 유료 결제와 관한 결제 정보를 5년간 보존합니다. 다만, 회원 자격이 없는 회원은 예<br>외로 합니다.<br>제18조 회원의 의무<br>1. 1) 기업회원은 관계법령과 본 약관의 규정, 회사의 서비스 운영정책 기타 고지된 서비스 이용상<br>의 유의 사항을 준수하여야 하며, 기타 회사의 업무에 지장을 초래하는 행위를 하여서는<br>아니됩니다.<br>2. 2) 기업회원이 신청한 유료서비스는 등록 또는 신청과 동시에 회사와 채권, 채무 관계가 발생하<br>며, 기업회원은 이용요금을 회사가 지정한 기일 내에 납부하여야 합니다.<br>3. 3) 기업회원이 결제 수단으로 신용카드를 사용할 경우 비밀번호 등의 관리책임은 기업회원에게<br>있습니다. 단, 사이트의 결함에 따른 정보유실의 발생에 대한 책임은 기업회원이 부담하지<br>않습니다.<br>4. 4) 회원은 회사의 사전승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의<br>결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지<br>않습니다. 회원은 이와 같은 영업활동으로 회사에 손해를 입힌 경우 회원은 회사에 대하여<br>손해배상 의무를 부담하여야 합니다.<br>5. 5) 회원은 본 서비스를 건전한 구인 구직 이외의 목적으로 사용해서는 안되면 이용 중 다음 각<br>호의 행위를 해서는 안 됩니다.<br>1.1. 범죄 행위를 목적으로 하거나 기타 범죄행위와 관련된 행위<br>2.2. 회사의 직원이나 관리자를 가장하거나 사칭하여 내용물을 게시, 등록하거나 스팸 또는 불법<br>스팸전송을 위해 메일이나 문자메시지를 발송하는 행위<br>3.3. 타인의 명예 훼손하거나 모욕하는 행위<br>4.4. 타인의 지적재산권 등의 권리를 침해하는 행위<br>5.5. 해킹행위 또는 바이러스의 유포 행위<br>6.6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위<br>7.7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위<br>8.8. 그 밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위<br>6. 6) 회원은 회사를 통해 전달되는 수신거부 요청에 대해서는 즉각적으로 처리하고 24시간 이내<br>에 처리결과를 회사에 회신하여야 하며 본 항의 위반으로 발생하는 모든 민&middot;형사상 책임은 회원<br>이 직접 부담하여야 합니다.<br>7. 7) 회원은 전기통신사업법 제 84조의 2(전화번호의 거짓표시 금지 및 이용자 보호)에 의거 이<br>용자는 회원의 발신번호를 사전에 등록하고 등록된 번호로만 발송해야 합니다.<br>8. 8) 회원은 이용신청서의 기재내용 중 변경된 내용이 있을 경우 해당 절차를 거쳐 그 내용을 회<br>사에 통지하여야 합니다. 만약, 변경된 내용을 통지하지 않아 발생하는 피해에 대하여 회사는 책<br>임지지 않습니다.<br>제19조 회원의 계약 해지/ 서비스 중지/ 자료 삭제<br>1. 1) 기업회원이 서비스 이용계약을 해지하고자 할 경우, 고객센터 또는 &ldquo;기업회원 탈퇴&rdquo; 메뉴를<br>이용해 회사에 대한 해지 신청을 합니다.<br>2. 2) 다음의 각 사항에 해당하는 경우 회사는 회원의 사전 동의 없이 계약 해지하거나 서비스 중<br>지, 자료 삭제 조치를 취할 수 있습니다.<br>1.1. 기업사항이 명확하게 가입되지 않거나 사실과 다르게 조작되어 허위로 등록된 경우<br>2.2. 회원 가입 또는 자료 등록 시 본 서비스에서 안애하는 방법으로 가임하지 않았거나 등록하지<br>않았을 때<br>3. 3) 구인을 가장하여 물품판매, 수강생 모집, 직업소개, 부업알선, 자금 보집 등을 행하는 광고<br>4. 4) 메일이나 문자메시지 수신자가 스챔으로 신고하거나 회원이 발송하는 메시지가 물법스팸임<br>이 판명될 경우<br>5. 5) 회사의 수신거부 요청 처리에 불성실하여 수신거부 요청 건수가 감소되지 않거나 발송금지<br>를 요청한 메시지 내용이 중복적으로 발송될 경우<br>6. 6) 방송통신위원회 또는 한국정보보호진흥원이 불법스팸 전송사실을 확인하여 이용정지를 요청<br>하는 경우<br>7. 7) 미래창조과학부(거짓으로 표시된 전화번호로 인한 이용자 피해 예방에 관한) 고시 제 2015-<br>32호 제10조 제1항에 따라 미래창조과학부 또는 중앙전파관리소,한국인터넷진흥원(KISA)에서 번<br>호 변작등으로 판명되어 이용정지를 요청한 경우<br>8. 8) 회사의 사업이나 사이트, 혹은 서비스의 폐지나 휴지 등으로 서비스 제공이 불가능 할 때.<br>단, 전기통신사업법 제26조 근거하여 예정일 30일 전까지 회원에게 통보하며, 환불 등이 필요한<br>경우에는 본 약관의 제12조에 따라 처리됩니다.<br>제 20 조 손해배상 및 면책<br>1. 1) 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우 서<br>비스 제공에 관한 책임이 면제됩니다.<br>2. 2) 회사는 서비스 이용과 관련하여 회원에게 발생한 손해 가운데 회원의 고의, 과실 및 회원의<br>귀책사유로 인한 서비스 이용의 장애 및 손해에 대하여 책임을 지지 않습니다.<br>3. 3) 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임<br>을 지지 않습니다.<br>4. 4) 회사가 귀책으로 본 약관의 제17조 의 규정에 위반한 행위로 기업회원에게 손해를 입히거나<br>기타 회사가 제공하는 모든 서비스와 관련하여 회사의 책임 있는 사유로 인해 기업회원에게 손해<br>가 발생한 경우, 회사는 그 손해를 배상하여야 합니다.<br>제21조 회원의 개인정보보호<br>화사는 이용자의 개인정보를 보호하기 위하여 노력하도록 하겠습니다. 회사는 정보통신망 이용<br>촉진 및 정보 보호 동에 관한 법률, 개인정보 보호법을 준수하고, 개인전보 보호를 위하려 사이트<br>등에 개인정보 처리방침을 고지합니다.<br>제22조 분재해결<br>1. 1) 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해경하기 위하려 필요한 노력을<br>하여야 합니다.<br>2. 2) 정항의 노력에도 불구하고, 분쟁에 대해 소송이 제기될 경우 민사소송법 등 법령에 정한 절<br>차에 따른 법원을 관할 법원으로 합니다.&nbsp;</p>', NULL, 'em-policy', 'em-policy', 'em-policy', 'ACTIVE', '2023-06-15 01:25:08', '2023-06-19 01:54:45'),
(6, 2, '구직자-policy', '개인 가입 회원 약관 :\r\n제1조: 목적\r\n본 약관은 ***(이하: “회사”라 합니다)이 운영하는 웹사이트(이하“사이트”라 합니다) 및 모바일 애\r\n플리케이션(이하 “애플리케이션”이라 하며, 사이트와 애플리케이션을 총칭하여 “사이트 등”이라\r\n합니다)을 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요한 사\r\n항의 규정을 목적으로 합니다.', '<p>개인 가입 회원 약관 :<br>제1조: 목적<br>본 약관은 ***(이하: &ldquo;회사&rdquo;라 합니다)이 운영하는 웹사이트(이하&ldquo;사이트&rdquo;라 합니다) 및 모바일 애<br>플리케이션(이하 &ldquo;애플리케이션&rdquo;이라 하며, 사이트와 애플리케이션을 총칭하여 &ldquo;사이트 등&rdquo;이라<br>합니다)을 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요한 사<br>항의 규정을 목적으로 합니다.<br>제2조 용어의 정의<br>본 약관에서 사용하는 용어의 정의는 아래와 같습니다.<br>1. 1) &ldquo;사이트&rdquo;라 함은 회사가 서비스를 이용자에게 제공하기 하여 제작, 운영하는 사이트를 말합<br>니다. 현재 회사가 운영하는 사이트의 접속 주소는 아래와 같습니다.<br>1. (페이지 주소)<br>2.<br>2. 2) &ldquo;서비스&rdquo;라 함은 채용정보, 이력서 및 기업정보 제공 기타의 서비스를 통하여 구직,<br>채용시장에서 구직자와 기업의 연결을 돕는 플랫폼 서비스입니다. 구책적으로는<br>회사가 기업 또는 구직자가 구인, 구직과 교육을 목적으로 등록하는 각종 자료를<br>DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사<br>이트에서 제공하는 모든 부대 서비스를 말한다. 화사가 제공하는 서비스는 유형에<br>따라 무료 또는 유료로 제공합니다. 서비스의 자세한 내용은 제**조에서 정하는 바<br>에 따릅니다.<br>3. 3) &ldquo;이용자&rdquo;라 함은 사이트 등에 접속하여 본 약관에 따라 회사가 제공하는 서비스를<br>이용하는 회원(기업회원 및 개인회원을 포함) 및 비회원을 말합니다.<br>4. 4) \"개인회원\"이라 함은 본 서비스를 이용하기 위하여 본 약관에 동의하고 회사와 서비<br>스 이용계약을 체결하여 개인회원ID를 부여받은 이용자를 말합니다.<br>5. 5) &ldquo;비회원&rdquo;이라 함은 회사와 서비스 이용계약을 체결하지 않은 채 사이트 등을 통하<br>여 회사가 제공하는 서비스를 이용하는 이용자를 말합니다.<br>6. 6) \"이용자ID\" 또는 \"개인회원ID\"라 함은 개인회원의 식별 및 서비스 이용을 위하여 개<br>인회원이 선정하거나 회사가 부여하는 문자와 숫자의 조합을 말합니다.<br>7. 7) \"비밀번호\"라 함은 회사의 서비스를 이용하려는 사람이 개인회원ID를 부여 받은 자<br>와 동일인임을 확인하고 개인회원의 권익을 보호하기 위하여 개인회원이 선정하거<br>나 회사가 부여하는 문자와 숫자의 조합을 말합니다.<br>8. 8) &ldquo;계정&rdquo;이라 함은 개인회원의 개인정보, 이력서 등을 등록, 관리할 수 있도록 회사가<br>개인회원에게 제공하는 공간을 말합니다.<br>제3조 약관의 명시와 개정<br>1. 1) 회사는 이 약관의 내용과 상호, 영업소 소재지, 사업자등록번호, 연락처 등을 이용자가 알 수<br>있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다.<br>2) 회사는 약관의 규제 등에 관한법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용<br>촉진 및 정보보호 등에 관한 법률등 관연법을 위배하지 않는 범위에서 이약관을<br>개정할 수 있다.<br>3) 회사가 약관을 개정할 경우에는 개정 약관 적용일 최소 7일전(약관의 변경이 개인회<br>원에게 적용일자 7일 전부터 적용일자 전일까지) 공지한다. 단 &ldquo;회원&rdquo;의 권리, 의<br>무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.<br>4) 회원은 변경괸 약관에 대해 거부할 권리가 있다. 회원은 변경된 시접으로부터 15일<br>이내에 거부의사를 표명할 수 있다. 만약, 회원이 거부의사를 표시하지 않거나, 전<br>항에 따라 시행일 이후에 서비스를 이용하는 경우에는 동의한 것으로 간주한다.<br>제4조 약관의 외 준칙<br>1. 1) 본 약관에서 규정하지 않는 사항에 관해서는 약관 법률, 정보통신기본법, 전기통신사업법, 정<br>보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.<br>2) 회원이 회사와 개별 계약을 체결하여 서비스를 이용하는 경우, 개인회원의 서비스 이용과 관련<br>된권리 의무는 순차적으로 개발 걔역, 개별 서비스 이용약관, 본 약관에서 정한 내용에 따<br>라 규율됩니다.<br>3) 각 사이트 및 서비스 이용약관이 있는 경우에는 서비스 이용약관이 우선한다.<br>제5조 개인회원에 대한 고지, 통지 및 공지<br>회사는 개인회원에게 서비스 정책, 이용약관, 판매약관, 개인정보 처리방침 등 일체의 약과느 서<br>비스 이용 관련 일정한 사항이나 정보를 알리거나 난내할 목적으로 개인회원에게 각종 고지나 통<br>지를 이행할 수 있으며, 사이트 등의 게시판이나 화면에 일정한 사항을 게시하여 공지함으로써<br>각 개인회원에 대한 각종 고지나 통지를 갈음할 수 있습니다. 이와 관련하여 고지 통지 수단, 고<br>이 방법, 공비 기간 등의 상세한 내용은 개인정보 처리방침을 확인 바랍니다.<br>제6조 이용계약의 성립<br>1. 1) 회사의 서비스 이용계약(이하: &lsquo;이용약관&rsquo;)은 서비스를 이용하고자 하는 자가 본 약관과 개인<br>정보처리방침을 읽고 &ldquo;동의&rdquo; 또는 &ldquo;획인&rdquo; 버튼을 누른 경우 본 약관에 동의한 것으로 간주<br>한다.<br>2) 사이트 등을 통한 회원가입 시 이용희망자는 본 약관 및 개인정보 처리방침에 대한<br>동의 표시 및 회원가입 신청을 하여야 하며, 회사는 이용희망자가 본 약관 및 개<br>인정보 처리방침의 내용을 읽고 동의한 것으로 봅니다.<br>3) 페이스북 등 외부 서비스와의 연동을 통한 회원가입 시 이용희망자는 본 약관, 개인정<br>보 처리방침 및 서비스 제공을 위한 회사의 외부 서비스 계정 정보 접근 및 활용<br>에 대한 등의 표시 및 회원가입 신청을 하여야 하며, 회사는 이용희망자가 본 약<br>관 및 개인정보 처리방침의 내용을 읽고 동의한 것으로 봅니다.<br>4) 회사는 본인 확인을 위하여 필요 시 이용자에게 본인인증을 요구할 수 있습니다. 이<br>경우 이용자는 휴대폰인증 등 회사가 제공하는 본인인증 방식 중 하나를 선택하여<br>본인인증 절차를 거쳐야 하며, 이용자가 자신의 실명으로 본인 인증정차를 거치지<br>않는 경우, 회사에 대하여 일체의 권리를 주장할 수 없습니다.<br>5) 이용희망자가 제2항 또는 제3항에 따라 회원가입 신청한 후. 회사가 이용희망자에게<br>승낙의 의사가 담긴 이메일 또는 서면 기타 회사가 정한 수단으로 통지함으로써<br>서비스 이용계약이 성립합니다.<br>6) 이용자는 본 약관 및 회사의 개인정보 처리방침에서 정한 항목을 제공해야 합니다.<br>제7조 이용신청의 승낙과 제한<br>1. 1) 화사는 전조의 규정에 의한 이용희망자에 대하여 다음 각호의 사유를 모두 충족할<br>경우 회사가 제공하는 절차에 따라 개인회원 가입을 승낙합니다.<br>1. 회사의 업무수행 및 서비스 제공을 위한 설비의 여유&bull;기술상 지장이 없는 경우<br>2. 본 약관에서 정하는 승낙 제한 또는 거절, 보류 사유에 해당하지 않는 경우<br>2) 다음 각 호 중 어느 하나에 해당할 경우, 회사는 이용희망자의 개인회원 가입 신청을 승<br>낙하지 아니하며, 개인회원이 제2호 또는 제3호에 해당하는 행위를 한 경우, 회사는 이에<br>대한 민사상 손해 배상 청구, 관계법령에 따른 형사처벌이나 행정제재를 위한 법적 절차를<br>진행할 수 있습니다.<br>1. 이용희망자가 만 15세 미만인 경우<br>2. 개인회원 가입 신청 및/또는 실명인증 시에 실명이 아닌 이름을 이용하였거나 타<br>인의 명의를 도용한 경우<br>3. 개인회원 가입 신청 시에 개인회원 정보를 허위로 기재한 경우<br>제8조 서비스의 내용<br>1. 1)회사가 제공하는 서비스의 내용은 다음 각호와 같습니다.<br>1.1. 이력서 및 인제 정보 등록 서비스<br>2.2. 온라인 입사지원 서비스<br>3.3. 헤드헌팅/아웃소싱 서비스<br>4.4. 구인/구직과 관연된 제반 서비스<br>5.5. 이용자 간의 교류와 소통에 관련한 서비스<br>6.6. 인적성 검사 서비스(자기진단표)<br>7.7. 이용자 간의 교류와 소통(콘텐츠 공유를 포함)<br>8.8. 자료거래에 관련된 서비스<br>2) 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다. 다만, 서비스의 내용의 추가<br>또는 변경으로 인하여 개인회원의 권리&bull;의무에 중요한 영향을 미치는 경우, 회사는 추가 또<br>는 변경된 서비스 내용을 그 적용일로부터 30일 전에 공지합니다.<br>제9조 개인회원 정보, 이력서의 등록 및 제공<br>1. 1) 개인회원의 이력서는 개인회원이 회원가입 또는 이력서 작성 및 수정 시 의망한 형태로 등<br>록 및 제공됩니다.<br>2. 2) 개인회원은 이력서의 인재정보 등록/미등록 지정, 이력서상의 연락처 공개/비공개를 자유롭<br>게 선택할 수 있습니다.<br>3. 3) 개인회원이 이력서의 인재정보 등록 및 제공을 희망하였을 경우, 회사는 개인회원이 다음 각<br>호의 사항에 대하여 동의한 것으로 보며, 기업회원에게 유료 또는 무료로 이력서 열람 서비스 및/<br>또는 이력서 추천 서비스를 제공할 수 있습니다. 다만, 개인회원이 이력서의 연락처 각 항목을 비<br>공개로 지정하였을 경우, 회사는 비공개로 지정된 항목의 연락처 정보를 제공할 수 없습니다. 이<br>력서 열람 또는 이력서 추천 등에 관한 세부 내용은 개인정보 처리방침 이력서 노출 청책을 확인<br>바랍니다.<br>1. 기업회원의 개인회원 이력서 열람<br>2. 회사가 개인회원 이력서를 기업회원에게 추천<br>4. 4) 회사는 안정적인 서비스를 제공하기 위해 테스트 및 모니터링 용도로 사이트 운영자가 이력<br>서 정보를 열람하도록 할 수 있다.<br>5. 5) 회사는 &ldquo;회원&rdquo;의 자류로운 선택에 의하여 등록 및 제공되는 이력서의 정보를 기준(바탕)으로<br>구직활 데에 보다 유익한 서비스를 제공하기 위하여 이를 개발, 편집, 제구성한 통계 자료로 활<br>용할 수 있다.<br>제10조 제휴를 통한 서비스<br>1. ① 회사는 제휴 관계를 체결한 여타 인터넷 웹 사이트 및 채용박람회 또는 신문, 잡지 등의 오<br>프라인 매체를 통해 사이트에 등록한 회원의 이력서 정보가 열람될 수 있도록 서비스를 제<br>공할 수 있다. 단, 제휴 서비스를 통해 노출되는 이력서의 연락처 정보는 회원이 이력서 등<br>록 시 선택한 연락처 공개 여부에 따라 제공된다.<br>3. ③ 회사는 회원이 공개를 요청한 이력서에 한해 제휴를 맺은 타 사이트에 이력서 정보를 제공<br>한다.<br>제11조 서비스의 요금<br>1. 1) 개인회원 가입과 이력서 등록은 원칙적으로 무료입니다. 다만 기업회원 또는 사이트에 방문<br>한 기업체에게 자신에게 자신의 이력서 정보를 보다 효과적으로 노출시키기 위하여 회사가<br>제공하는 별도의 서비스는 유료로 제공될 수 있습니다.<br>2. 2) 체용공고 및 기업정보 열람은 원칙적으로 무료이나. 일부 정보 또는 서비스는 이용자에게 유<br>료로 제공될 수 있습니다.<br>3. 3) 화사는 유료서비스를 제공할 경우 사이트에 요금에 대해서 공지를 하도록 합니다.<br>4. 4) 회사는 유료서비스 이용금액을 변경할 수 있으며, 이용요금 변경시 변경된 이용요금5내용<br>및 변경 내용 적용일을 명시하여 변경 내용 적용일 7일전 또는 관련 법률에서 정한 기한<br>전까지 개인회원에게 사전 공지합니다.<br>5. 5) 제2항에 따라 공지된 이용요금 변경 내용은 변경 내용 적용일부터 모든 개인회원에게 적용<br>됩니다. 다만, 이용요금 변경 내용 적용일 이전에 체결된 계약금액에 영향을 미치지 않도록<br>합니다.<br>제12조 서비스의 요금 및 결제<br>1 회원 가입은 무료입니다.<br>2. 개인 회원의 이력서 동록은 무료입니다. 다만, 기업회원 또는 사이트에 방문한 기업체에게 자<br>신의 이력서 정보를 보다 효과적으로 노출시키기 위한 방편으로 페이지 사위 노출 등 별도<br>의 서비스는 유로로 제공될 수 있습니다.<br>3. 회사는 유료서비스의 요금 민 상세내용을 사이트에 공지 하여야 합니다.<br>4. 회사는 유료서비스의 요금을 서비스의 종류 및 기간에 따라 회사가 변경할 수 있습니다. 다만,<br>변경 이전에 적용 또는 계약한 금액은 소급하여 적용하지 아니합니다.<br>5. 회원은 유료서비스 이용요금의 지급방법으로 회사가 정한 결제방법 중 하나를 선택할 수 있으<br>면, 결제의 이행을 위하여 필요한 개인정보를 정확하게 입력하여야 합니다.<br>6. 회사는 회원이 결제에 필요한 개인정보를 허위 또는 부정확하게 입력함으로 인하려 발생한 회<br>원의 손해에 대한 책임을 부담하지 않습니다. 단 회사의 고의 또는 중과실에 의한 경우에<br>는 그러하지 아니합니다.<br>제13조 이용요금의 환불<br>1. 1) 화사는 원치적으로 회원이 회사의 서비스 이용규정을 위반한 경우 이용료를 환불하지 않으<br>며, 서비스 이용제한 등의 추가적인 제재조치가 있을 수 있습니다.<br>2. 2) 회사는 다음 각호에 해당하는 경우 이용료를 환불합니다. 단, 본 조제1항에 해당하는 경우<br>회사는 환불에 대한 책임을지지 않습니다.<br>1.1. 유료서비스 이용이 제시죄지 않은 경우<br>2.2. 네트원크 또는 시스템 장애로 의해 서비스 이용이 불가능한 경우<br>3.3. 유료 서비스 신청 후 회원 사정에 의해 서비스가 취소될 경우<br>3) 이용요급을 환불받고자 하는 개인회원은 환불 사유를 명시한 서면으로 회사에 이용요금의 환<br>불을 요청(이하 &ldquo;환불 요청&rdquo;이라 합니다)하여야 합니다.<br>4) 회사는 개인회원으로부터 환불 요청을 받은 날로부터 3영업일 이내에 개인회원의 환불 요청이<br>회사가 정한 환불 요건을 갖추었는지 여부를 판단하여 개인회원에게 그 내용을 통지합니다.<br>5) 개인회원의 환불 요청이 환불 요건에 부합하는 것으로 판단될 경우, 회사는 제4항의 통지일로<br>부터 3영업일 이내에 판매약관에서 정한 금액을 환불합니다.<br>6) 기타 이용요금의 환불 관련 상세 사항은 판매약관에서 정하는 바에 따릅니다.<br>제14조 서비스 이용시간 및 제한<br>1. 1) 회사는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공합니다. 다만, 일부 서비<br>스의 경우 그 종류나 성질을 고려하려 별도로 이용시간을 정할 수 있으며, 회사는 그 이용<br>시간을 개인회원에게 사전 공지합니다.<br>2. 2) 회사는 서비스 개선을 위한 시스템을 업데이트 기타 유지보수 작업 등을 진행하고자 하는<br>경우, 사전에 서비스 중단 시간과 작업 내용을 공지하여 일시적 서비스 중단을 시행할 수<br>있습니다.<br>3. 3) 회사의 성실한 의무 이행에도 불구하고 다음 각 호의 사유로 서비스 중지 등 회원의 손해가<br>발생한 경유, 회사는 그로 인한 책임을 부담하지 않습니다.<br>1.1. 천재지변 또는 이를 비롯한 불가함력으로 인한 손해<br>2.2. 회원의 귀책으로 발생한 손해<br>3.3. 제3자의 고의 또는 과실로 발생한 손해<br>4.4. 기타 회사의 고의 또는 과실 없이 발생한 손해<br>4. 4) 제2항 내지 제3항에 해당하지 않는 사유로 인하여 유료 회원이 입은 손해는 본 약관 및 법<br>령에 따라 배상합니다.<br>제15조 정보의 제동 또는 기타 광도의 게재<br>1. 1) 회사는 회원에게 서비스 이용에 필요가 있다고 인정되거나 서비스 개선 및 회원 대상에 서<br>비스 소개 등의 목적으로 하는 각종 전보에 대해서 전자우편이나 서신우편을 이용한 방법<br>으로 정보를 제공할 수 있습니다.<br>2. 2) 회사는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지 등에 게재할<br>수 있으며, 회원의 메일을 통해 알릴 수 있습니다.<br>3. 3) 회사는 사이트 등에 게재되어 있는 광고주의 홍보활동에 개인회원이 참여하거나 교신 또는<br>거래를 함으로써 발생하는 모든 손실과 손해에 대해 일체의 책임을지지 않습니다.<br>4. 4) 서비스를 이용하는 회원은 서비스 이용시 노출되는 광고 게재에 대해 동의하는 것으로 간주<br>합니다.<br>제16조 자료내용의 책임과 회사의 정보 수정 권한<br>1. 1) 자료라 함은 회원이 서비스를 이용하면서 등록한 채용공고와 이력서 및 사이트에 게시한 게<br>시물 등을 말합니다.<br>2. 2) 회원은 자료 및 게시물을 사실에 근거하여 성실하게 작성해야 하며, 만일 자료의 내용이 사<br>실이 아니거나 부정확하게 작성되어 발생하는 모든 책임은 회원에게 있습니다.<br>3. 3) 모든 자료의 관리와 작성은 회원 본인이 하는 것이 원칙이나 사정상 위탁 또는 대행관리를<br>하더라도 그 내용에 대한 책임은 회원에게 있으며, 회원은 주기적으로 자신의 자료를 확인<br>하여 언제나 항상 정확하게 관리가 되도록 노력해야 합니다.<br>4. 4) 회사는 회원이 등록한 자료에 오자, 탈자 또는 사회적 통념에 어긋나는 문구가 있을 경우 이<br>를 언제든지 수정할 수 있는 권한이 있습니다.<br>5. 5) 회사는 회원이 등록한 자료를 &ldquo;회사&rdquo;가 운영하는 같은 목적의 타 사이트에도 게재할 수 있<br>습니다.<br>6. 6) 회원이 등록한 자료로 인하여 타인(또는 타법인)으로부터 허위사실 및 명예훼손 등으로 삭제<br>요청이 접수된 경우 회사는 회원에게 사전 통지 없이 본 자료를 삭제할 수 있으며, 자료<br>삭제 후 메일 등의 방법으로 회원에게 통지할 수 있습니다.<br>제 17 조 (자료의 저작권 및 활용)<br>1. 1) 회사가 작성한 게시물 또는 저작물에 대한 저작권 및 기타 지적재산권은 회사에 귀속합니다.<br>2. 2) 회원이 사이트 내에 게시한 게시물의 저작권은 회원에게 귀속됩니다. 단, 회원은 자신이 창<br>작, 등록한 게시물에 대해 무상의 비독점적 사용권을 회사에 부여하고, 이 사용권은 회사가 사이<br>트를 운영하는 동안 계속 유효하며, 회원 탈퇴한 후에도 이와 같습니다.<br>3. 3) 게시물에 대한 권리와 책임은 게시물을 게시한 회원에게 있으며, 회사는 회원의 동의 없이<br>이를 회사가 운영하는 사이트 이외에 영리적 목적으로 사용할 수 없습니다. 단, 비영리적인 경우<br>에는 해당되지 않습니다.<br>4. 4) 회원이 입력한 정보는 취업 및 관련 동향의 통계 자료로 활용될 수 있으며, 그 자료 내용은<br>매체를 통해 언론에 배포될 수 있습니다. 단, 활용되는 정보 중 개인을 식별할 수 있는 개인정보<br>는 제외합니다.<br>5. 5) 사이트에서 정당한 절차를 거쳐 기업회원이 열람한 개인 회원의 이력서 정보는 해당 기업의<br>인사 자료이며, 이에 대한 관리 권한은 해당 기업의 정책에 의합니다.<br>제18조 화사의 의무<br>1. 1) 회사는 본 약관에서 정한 내용에 따라 안정적 및 계속적으로 서비스를 제공할 수 있도록 최<br>선을 다하여 노력하고록 하겠습니다.<br>2. 2) 회사는 특별한 사정이 없는 한 회원이 서비스 이용신청 후, 48시간 이내에 서비스를 이용할<br>수 있도록 합니다.<br>3. 3) 회사는 서비스에 관련된 서비를 항상 운용할 수 있는 상태로 유지, 보수하고, 장애가 발생하<br>는 경우 지체 없이 이를 수리 및 복구할 수 있도록 최선의 노력을 다하여야 합니다. 다만,<br>천재지변 등 예측하지 못한 손해는 회사가 책임을지지 않으며, 이 경우 자료의 복구나 정<br>상적인 서비스 지원이 되도록 최선을 다할 의무가 있습니다.<br>4. 4) 서비스의 이용이나 운영과 관된 개인회원의 불만사항이 접수되는 경우, 회사는 이응 지체없<br>이 처리하여 그 결과를 회신할 수 있도록 노력합니다. 다만, 불만사항 내용 확인 및 경위<br>파악, 접수 내용 처리 등에 상당한 시간이 소요될 경우, 회사는 그 사유와 처리일정을 개인<br>회원에게 통지합니다.<br>5. 5) 회사는 유료 결제와 관한 결제 정보를 5년간 본존합니다. 다만, 회원 자격이 없는 회원은 예<br>외로 합니다.<br>제 19조 회원의 의무<br>1. 1) 개인회원은 관계법령과 본 약관의 규정, 회사의 서비스 운영정책 기타 고지된 서비스 이용상<br>의 유의 사항을 준수하여야 하며, 기타 회사의 업무에 지장을 초래하는 행위를 하여서는 아니됩<br>니다.<br>2. 2) 개인회원이 신청한 유료서비스는 등록 또는 신청과 동시에 회사와 채권, 채무 관계가 발생하<br>며, 개인회원은 이용요금을 회사가 지정한 기일 내에 납부하여야 합니다.<br>3. 3) 개인회원이 결데 수단으로 신용카드를 사용할 경우 비밀번호 등의 관리책임은 개인회원에게<br>있습니다. 단, 사이트의 결함에 따른 정보유실의 발생에 대한 책임은 개인회원이 부담하지 않습니<br>다.<br>4. 4) 회원은 회사의 사전승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의<br>결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지 않습니<br>다. 회원은 이와 같은 영업활동으로 회사에 손해를 입힌 경우 회원은 회사에 대하여 손해배상 의<br>무를 부담하여야 합니다.<br>5. 5) 개인회원은 서비스를 이용하여 얻은 정보를 회사의 사전동의 없이 복사, 복제, 번역, 출판,<br>방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없습니다.<br>6. 6) 화원은 본 서비스를 구직 이외의 목적으로 사용할 수 없으며, 다은 각 호의 행위를 하여서는<br>안 됩니다.<br>1.1. 다른 회원의 아이디를 부정 사용하는 행위<br>2.2. 범죄행위를 목적으로 하거나 기타 법죄행위와 관련된 행위<br>3.3. 타인의 명예 훼손하거나 모욕하는 행위<br>4.4. 타인의 지적재산권 등의 권리를 침해하는 행위<br>5.5. 해킹행위 또는 바이러스의 유포 행위<br>6.6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위<br>7.7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위<br>8.8. 그 밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위<br>제20조 회원의 계약 해지/ 서비스 중지/ 자료 삭제<br>1. 1) 개인회원이 서비스 이용계약을 해지하고자 할 경우, 고객센터 또는 &ldquo;개인회원 탈퇴&rdquo; 메뉴를<br>이용해 회사에 대한 해지 신청을 합니다. 회사는 즉시 가입해지(회원탈퇴)에 필요한 조치를 취합<br>니다.<br>2. 2) 개인회원이 서비스 이용계약을 해지한 경우, 회사는 해지 즉시 개인회원의 모든 정보를 파기<br>합니다. 다만, 관련 법령 및 개인정보 처리방침에 따라 회사가 개인회원 정보를 보유할 수 있는<br>경우는 보유 목적에 필요한 최소한의 정보를 보관할 수 있습니다.<br>3. 3) 다음의 사항에 해당하는 경우 회사는 개인회원의 사전 동의를 얻지 않고 서비스 이용 제한,<br>이력서 삭제 조치 또는 개인회원의 자격박탈 등의 조치(이하 &ldquo;회사의 제재조치&rdquo;)를 취할 수 있습<br>니다.<br>1.1. 유료서비스 이용 요금을 납부하지 않았을 때<br>2.2. 제7조 제2항의 각 호 중 어느 하나에 해당하는 행위를 하였을 때<br>3.3. 본 서비스에서 제공되는 정보를 유용하였을 때<br>4.4. 회원이 등록한 게시물 등의 내용이 사실과 다르거나 조작되었을 때<br>5.5. 관련 법규에 위반하거나 선량한 풍속 기타 사회통념상 허용되지 않는 행위를 하였을 때<br>6.6. 기타 본 서비스의 명예를 훼손하였거나 회사가 판단하기에 적합하지 않은 목적으로 회원가입<br>을 하였을 때<br>제21조 손해배상 및 면책<br>1. 1) 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우 서<br>비스 제공에 관한 책임이 면제됩니다.<br>2. 2) 회사는 서비스 이용과 관련하여 회원에게 발생한 손해 가운데 회원의 고의, 과실 및 회원의<br>귀책사유로 인한 서비스 이용의 장애 및 손해에 대하여 책임을 지지 않습니다.<br>3. 3) 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임<br>을 지지 않습니다.<br>4. 4) 회사가 본 약관의 제 18조의 규정에 위반한 행위로 개인회원에게 손해를 입히거나 기타 회<br>사가 제공하는 모든 서비스와 관련하여 회사의 책임 있는 사유로 인해 개인회원에게 손해가 발생<br>한 경우, 회사는 그 손해를 배상하여야 합니다.<br>제22조 회원의 개인정보보호<br>화사는 이용자의 개인정보를 보호하기 위하여 노력하도록 하겠습니다. 회사는 정보통신망 이용<br>촉진 및 정보 보호 동에 관한 법률, 개인정보 보호법을 준수하고, 개인전보 보호를 위하려 사이트<br>등에 개인정보 처리방침을 고지합니다.<br>제23조 분쟁의 해결<br>1. 1) 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해경하기 위하려 필요한 노력을<br>하여야 합니다.<br>2. 2) 정항의 노력에도 불구하고, 분쟁에 대해 소송이 제기될 경우 민사소송법 등 법령에 정한 절<br>차에 따른 법원을 관할 법원으로 합니다.&nbsp;</p>', NULL, 'js-policy', 'js-policy', 'js-policy', 'ACTIVE', '2023-06-15 01:25:47', '2023-06-19 01:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('habibi1994habibi@gmail.com', '$2y$10$FDnYgUtWMFGOwtV84DOKWOcXC/HI1b4T9Libj0aHP9s9kwmqbqkI.', '2023-06-19 01:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(65, 'delete_regions', 'regions', '2023-06-12 16:31:15', '2023-06-12 16:31:15'),
(66, 'browse_questions', 'questions', '2023-06-14 14:46:52', '2023-06-14 14:46:52'),
(67, 'read_questions', 'questions', '2023-06-14 14:46:52', '2023-06-14 14:46:52'),
(68, 'edit_questions', 'questions', '2023-06-14 14:46:52', '2023-06-14 14:46:52'),
(69, 'add_questions', 'questions', '2023-06-14 14:46:52', '2023-06-14 14:46:52'),
(70, 'delete_questions', 'questions', '2023-06-14 14:46:52', '2023-06-14 14:46:52'),
(71, 'browse_exams', 'exams', '2023-06-14 15:15:40', '2023-06-14 15:15:40'),
(72, 'read_exams', 'exams', '2023-06-14 15:15:40', '2023-06-14 15:15:40'),
(73, 'edit_exams', 'exams', '2023-06-14 15:15:40', '2023-06-14 15:15:40'),
(74, 'add_exams', 'exams', '2023-06-14 15:15:40', '2023-06-14 15:15:40'),
(75, 'delete_exams', 'exams', '2023-06-14 15:15:40', '2023-06-14 15:15:40'),
(76, 'browse_resumes', 'resumes', '2023-06-15 13:55:48', '2023-06-15 13:55:48'),
(77, 'read_resumes', 'resumes', '2023-06-15 13:55:48', '2023-06-15 13:55:48'),
(78, 'edit_resumes', 'resumes', '2023-06-15 13:55:48', '2023-06-15 13:55:48'),
(79, 'add_resumes', 'resumes', '2023-06-15 13:55:48', '2023-06-15 13:55:48'),
(80, 'delete_resumes', 'resumes', '2023-06-15 13:55:48', '2023-06-15 13:55:48'),
(81, 'browse_exam_results', 'exam_results', '2023-06-16 09:52:18', '2023-06-16 09:52:18'),
(82, 'read_exam_results', 'exam_results', '2023-06-16 09:52:18', '2023-06-16 09:52:18'),
(83, 'edit_exam_results', 'exam_results', '2023-06-16 09:52:18', '2023-06-16 09:52:18'),
(84, 'add_exam_results', 'exam_results', '2023-06-16 09:52:18', '2023-06-16 09:52:18'),
(85, 'delete_exam_results', 'exam_results', '2023-06-16 09:52:18', '2023-06-16 09:52:18'),
(86, 'browse_education_histories', 'education_histories', '2023-06-16 16:42:48', '2023-06-16 16:42:48'),
(87, 'read_education_histories', 'education_histories', '2023-06-16 16:42:48', '2023-06-16 16:42:48'),
(88, 'edit_education_histories', 'education_histories', '2023-06-16 16:42:48', '2023-06-16 16:42:48'),
(89, 'add_education_histories', 'education_histories', '2023-06-16 16:42:49', '2023-06-16 16:42:49'),
(90, 'delete_education_histories', 'education_histories', '2023-06-16 16:42:49', '2023-06-16 16:42:49'),
(91, 'browse_work_histories', 'work_histories', '2023-06-16 16:44:08', '2023-06-16 16:44:08'),
(92, 'read_work_histories', 'work_histories', '2023-06-16 16:44:08', '2023-06-16 16:44:08'),
(93, 'edit_work_histories', 'work_histories', '2023-06-16 16:44:08', '2023-06-16 16:44:08'),
(94, 'add_work_histories', 'work_histories', '2023-06-16 16:44:08', '2023-06-16 16:44:08'),
(95, 'delete_work_histories', 'work_histories', '2023-06-16 16:44:08', '2023-06-16 16:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 5),
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
(16, 5),
(17, 1),
(17, 5),
(18, 1),
(18, 5),
(19, 1),
(19, 5),
(20, 1),
(20, 5),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 5),
(27, 1),
(27, 5),
(28, 1),
(28, 5),
(29, 1),
(29, 5),
(30, 1),
(30, 5),
(31, 1),
(31, 5),
(32, 1),
(32, 5),
(33, 1),
(33, 5),
(34, 1),
(34, 5),
(35, 1),
(35, 5),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(46, 5),
(47, 1),
(47, 5),
(48, 1),
(48, 5),
(49, 1),
(49, 5),
(50, 1),
(50, 5),
(51, 1),
(51, 5),
(52, 1),
(52, 5),
(53, 1),
(53, 5),
(54, 1),
(54, 5),
(55, 1),
(55, 5),
(56, 1),
(56, 5),
(57, 1),
(57, 5),
(58, 1),
(58, 5),
(59, 1),
(59, 5),
(60, 1),
(60, 5),
(61, 1),
(61, 5),
(62, 1),
(62, 5),
(63, 1),
(63, 5),
(64, 1),
(64, 5),
(65, 1),
(65, 5),
(66, 1),
(66, 5),
(67, 1),
(67, 5),
(68, 1),
(68, 5),
(69, 1),
(69, 5),
(70, 1),
(70, 5),
(71, 1),
(71, 5),
(72, 1),
(72, 5),
(73, 1),
(73, 5),
(74, 1),
(74, 5),
(75, 1),
(75, 5),
(76, 1),
(76, 5),
(77, 1),
(77, 5),
(78, 1),
(78, 5),
(79, 1),
(79, 5),
(80, 1),
(80, 5),
(81, 1),
(81, 5),
(82, 1),
(82, 5),
(83, 1),
(83, 5),
(84, 1),
(84, 5),
(85, 1),
(85, 5),
(86, 1),
(86, 5),
(87, 1),
(87, 5),
(88, 1),
(88, 5),
(89, 1),
(89, 5),
(90, 1),
(90, 5),
(91, 1),
(91, 5),
(92, 1),
(92, 5),
(93, 1),
(93, 5),
(94, 1),
(94, 5),
(95, 1),
(95, 5);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `url`, `customer`) VALUES
(5, 2, 2, '올해 정부 청년인턴 채용규모 2천명 증가한 2만 1천명 채용...내년 대폭 확대 예상', '', '예측 가능하고 구조화된 질문에 의존하기 보다 다음 단계의 생각이 필요한 답변을 들었을 때, 지원자에게 특히 적합한 인터뷰 질문을 할 수 있습니다.\n실제 사람을 보고있다는 만족감이 들때까지 들은 내용을 명확하게 하여 단순한 질문 및 답변이 아닌 진정한 대화형 대화를 나누는 시간을 갖도록 합니다.', '<p dir=\"ltr\">[아웃소싱타임스 김민수 기자] 정부는 내년 중앙행정기관 청년인턴 규모를 대폭 확대하는 한편, 대학 재학생을 위한 2~3개월 단기 프로그램 신설, 지방자치단체의 청년인턴제도 확산 방안 등을 검토하고 있다.<br><br>중앙행정기관 등 공공부문의 청년인턴을 대폭 확대하고 내실 있는 운영방안을 논의하기 위해 국무조정실과 고용노동부는 3일 정부세종청사에서 2023년 \"제2차 일경험 정책협의회\"를 개최하고 이같은 내용을 발표했다.<br><br>발표내용에 따르면 공공기관 청년인턴은 고물가&middot;고금리 등 공공기관의 경영 여건 악화에도 불구, 미래투자 차원에서 올해 전년 대비 2천 명 증가한 2.1만 명 채용을 추진한다.&nbsp;<br><br>특히, 청년들이 충분한 경험을 쌓을 수 있도록 올해부터 3개월에서 6개월로 인턴 채용기간을 확대하고 인턴 프로그램의 내실화를 위해 참여 청년들의 만족도 조사를 의무화하는 등 평가.환류 체계를 개선해 나가고 있다.<br><br>향후에도 정부는 공공기관의 청년인턴 채용 규모 지속 확대를 위해 노력하는 한편, 공공기관 내 청년인턴 교육전담자 지정, 청년인턴 직무학습 기회 확대 등 인턴 프로그램의 고도화를 추진해 나갈 예정이다.<br><br>한편, 청년들에게 해외 일경험과 국제교류 기회를 제공하는 해외인턴은 파견대상국 및 파견국가를 다양화하는 가운데, 외교부는 코이카(KOICA) 커리어센터 중심 취&middot;창업 지원 내실화 등을 통해 인턴십 프로그램이 일자리 창출로 연계되는 선순환 구조를 마련할 계획이다.<br><br>아울러 다양한 홍보 플랫폼과 행사를 계기로 외교부 해외 인턴 사업에 대한 대국민 홍보를 강화해 나갈 예정이다.<br><br>이와 함께 정부는 청년이 궁금해하는 공공&middot;민간부문의 일경험 정보를 한눈에 확인할 수 있도록 일경험 통합 플랫폼을 추진할 계획이다. 주관부처인 고용노동부는 올해부터 추진하는 정보화기본계획(ISP) 수립에서부터 관계부처와 긴밀하게 협력하고, 그 결과를 토대로 내년에 플랫폼을 구축할 예정이다.<br><br>정부는 진로를 탐색하는 청년들에게 내실 있는 일경험 기회를 제공할 수 있도록 \"일경험 정책협의회\"를 통해 부처 협력을 지속 강화해 나갈 예정이다.<br><br>출처 :&nbsp;<a href=\"http://www.outsourcing.co.kr/news/articleView.html?idxno=96498\">아웃소싱타임스(http://www.outsourcing.co.kr)</a></p>\n<p>&nbsp;</p>', 'posts/June2023/0H2R7B59ObA4jjQqdm4f.jpg', '2-2-1', '', '', 'PUBLISHED', 0, '2023-06-16 06:10:56', '2023-06-19 02:09:45', 'http://www.outsourcing.co.kr', '기업'),
(6, 2, 1, ' 4월 취업자 35만4000명↑…고용률은 동월기준 역대 최고', '', '인간은 진화적으로 불확실성을 싫어한다고 합니다. 그래서 \"내가 원하는 걸 나도 모르겠다.\" \"지금 하는 일이 내가 원하는 것인지 확실하지 않다.\" \"나만의 커리어를 찾고 싶다.\" 등의 이야기를 하게 됩니다. 불확실성은 스트레스를 유발하고 재생산과 자손 양육이라는 생명체의 본래 활동을 위축시키기 때문인데요.', '<p dir=\"ltr\">&nbsp;4월 취업자 수가 지난해 같은 기간보다 35만 4000명&nbsp;늘어 동월 기준 역대 최고 고용률을 기록했다.&nbsp;</p>\n<p dir=\"ltr\">통계청이 10일 발표한 &lsquo;2023년 4월 고용동향&rsquo;에 따르면 지난달 취업자 수는 2843만 2000명으로 1년 전보다 35만 4000명 증가한 것으로 나타났다. 취업자수는 2021년 3월 이후 26개월 연속 증가세를 보이고 있지만 전월 46만 9000명 보다는 11만 5000명 줄었다.&nbsp;</p>\n<p dir=\"ltr\">취업자수 증가폭은 지난해 5월(93만 5000명) 이후 올해 2월(31만 2000명)까지 9개월 연속 감소했고, 3월 46만 9000명으로 반등했지만, 4월 다시 증가폭이 줄었다.</p>\n<p dir=\"ltr\">15세 이상 고용률은 지난해 같은 달보다 0.6%p 상승한 62.7%로, 1982년 7월 월간 통계작성 이래 4월 기준으로 가장 높았다.&nbsp;</p>\n<p dir=\"ltr\">경제협력개발기구(OECD) 기준인 15~64세 고용률도 0.6%p 오른 69.0%로, 4월 기준으로 역대 가장 높은 수치다.</p>\n<p dir=\"ltr\">연령별로 보면 60세 이상(44만 2000명), 50대(5만 5000명), 30대(1만 5000명)에서 증가한 반면 20대(-11만 6000명), 40대(-2만 2000명)는 감소했다.</p>\n<p dir=\"ltr\">산업별 취업자는 숙박 및 음식점업(17만 1000명, 8.1%), 보건업 및 사회복지서비스업(14만 8000명, 5.5%), 전문과학 및 기술서비스업(10만 명, 7.9%) 등이 증가했다.</p>\n<p dir=\"ltr\">제조업(-9만 7000명, -2.1%), 도매 및 소매업(-6만 2000명, -1.8%), 건설업(-3만 1000명, -1.5%) 등은 줄었으며, 특히 제조업은 4개월 잇달아 줄어 2020년 12월(11만 명 감소) 이후 최대 감소폭을 기록했다.</p>\n<p dir=\"ltr\">직업별로 보면 전문가 및 관련종사자(27만 7000명, 4.7%), 서비스종사자(25만 2000명, 7.9%), 사무종사자(10만 2000명, 2.1%) 등에서 늘었으나, 장치&middot;기계조작 및 조립종사자(-14만 5000명, -4.7%), 단순노무종사자(-11만 1000명, -2.7%), 기능원 및 관련기능 종사자(-10만 3000명, -4.2%) 등에서 줄었다.</p>\n<p dir=\"ltr\">종사상 지위별로 보면, 임금근로자 중 상용근로자는 46만 4000명(3.0%) 증가했으나, 임시근로자는 10만 명(-2.1%), 일용근로자는 7만 6000명(-6.6%)이 감소했다.</p>\n<p dir=\"ltr\">비임금근로자 중 고용원 없는 자영업자는 5만 6000명(1.3%), 고용원 있는 자영업자는 5만 5000명(4.0%) 증가했으나, 무급가족종사자는 4만 5000명(-4.7%) 감소했다.</p>\n<p dir=\"ltr\">실업자 수는 5만 9000명 감소한 80만 4000명이고, 실업률은 0.2%p 감소한 2.8%로, 4월 기준으로 역대 최저치다.</p>\n<p dir=\"ltr\">비경제활동인구는 전년보다 15만 6000명 줄어든 1613만 5000명으로, 2021년 3월부터 2년 2개월째 잇달아 감소했다.</p>\n<p dir=\"ltr\">활동상태별 비경제활동인구를 보면 쉬었음(13만 3000명, 6.0%) 등에서 늘었고, 연로(-14만 1000명, -5.5%), 육아(-13만 9000명, -13.8%) 등은 줄었다.</p>\n<p dir=\"ltr\">비경제활동인구 중 취업준비자는 67만 1000명으로 9만 5000명(-12.4%) 감소했으며, 구직단념자는 32만 4000명으로 10만 7000명 줄었다.</p>\n<p dir=\"ltr\">정부는 고용시장이 예상보다 선방하고 있다는 평가를 내놓고 있다.</p>\n<p dir=\"ltr\">기획재정부 관계자는 &ldquo;4월은 고용시장은 1분기의 양호한 흐름이 지속되고 있다&rdquo;면서 &ldquo;소비&middot;관광 회복 등 양호한 내수 흐름에 따라 숙박음식업 등 대면서비스업 고용이 강한 회복세를 보였고 보건복지&middot;정보통신업 등 고용도 꾸준히 증가하며 서비스업 중심으로 취업자 수 증가를 견인하고 있다&rdquo;고 분석했다.</p>\n<p><strong>&nbsp;</strong></p>\n<p dir=\"ltr\">문의 : 통계청 사회통계국 고용통계과(042-481-2265), 기재부 경제구조개혁국 인력정책과(044-215-8530)</p>\n<p><strong>&nbsp;</strong></p>\n<p dir=\"ltr\">[출처] 대한민국 정책브리핑(www.korea.kr)</p>\n<p dir=\"ltr\">[출처] 대한민국 정책브리핑(www.korea.kr)</p>\n<p>&nbsp;</p>', 'posts/June2023/5YNDT2SMa1kyFDuRknQq.jpg', '4-35-4000', '', '', 'PUBLISHED', 0, '2023-06-16 06:12:51', '2023-06-19 02:09:32', 'https://www.korea.kr', '구직자');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, '평상시 인상이 좋고 잘 웃는다는 이야기를 자주 듣는다.', '2023-06-14 14:47:43', '2023-06-14 14:47:43'),
(2, '상대에게 친근하고 편한 인상이라는 이야기를 자주 듣는다.', '2023-06-14 14:47:55', '2023-06-14 14:47:55'),
(3, '웃는 얼굴이 어색하지 않다.', '2023-06-14 14:48:06', '2023-06-14 14:48:06'),
(4, '피부톤이 밝아 보이며 생기가 느껴진다.', '2023-06-14 14:48:22', '2023-06-14 14:48:22'),
(5, '꾸준하게 운동을 하고있다.', '2023-06-14 14:49:02', '2023-06-14 14:49:02'),
(6, '서있는 자세와 앉아있는 자세가 바르고 꼿꼿하다.', '2023-06-14 14:49:23', '2023-06-14 14:49:23'),
(7, '공수자세를 하고 섰을 때 자세가 삐뚤거나 불편하지 않다.', '2023-06-14 14:49:32', '2023-06-14 14:49:32'),
(8, '자신의 이미지, 피부톤 등을 고려한 나에게 어울리는 색상을 알고 있다.', '2023-06-14 14:49:42', '2023-06-14 14:49:42'),
(9, '자신의 체형을 잘 알고 장점을 부각시키며 단점을 보완할 수 있다.', '2023-06-14 14:49:52', '2023-06-14 14:49:52'),
(10, '활짝 미소 짓는 것이 어색하거나 불편하지 않다.', '2023-06-14 14:50:03', '2023-06-14 14:50:03'),
(11, '목소리가 밝고 활기차다는 이야기를 자주 듣는다.', '2023-06-14 14:50:12', '2023-06-14 14:50:12'),
(12, '말투가 친근하고 친절하다는 이야기를 자주 듣는다.', '2023-06-14 14:50:23', '2023-06-14 14:50:23'),
(13, '내 의사를 말 할 때 음성이 떨리거나 말을 더듬지 않는다.', '2023-06-14 14:50:33', '2023-06-14 14:50:33'),
(14, '비교적 발음이 명확한 편이다.', '2023-06-14 14:50:42', '2023-06-14 14:50:42'),
(15, '웅얼거리거나 말끝을 흐리지 않는다.', '2023-06-14 14:50:52', '2023-06-14 14:50:52'),
(16, '너무 빠르거나 너무 느리게 말하지 않는다.', '2023-06-14 14:51:03', '2023-06-14 14:51:03'),
(17, '목소리가 하이톤이다.', '2023-06-14 14:51:12', '2023-06-14 14:51:12'),
(18, '목소리가 크고 전달력이 좋다는 이야기를 자주 듣는다.', '2023-06-14 14:52:09', '2023-06-14 14:52:09'),
(19, '비속어나 줄임말을 사용하지 않는다.', '2023-06-14 14:52:30', '2023-06-14 14:52:30'),
(20, '고객응대 멘트를 사용해 본 경험이 있다.', '2023-06-14 14:52:45', '2023-06-14 14:52:45'),
(21, '상대방의 눈을 피하지 않고 응시할 수 있다.', '2023-06-14 14:52:56', '2023-06-14 14:52:56'),
(22, '주변사람들에게 예의가 바르다는 이야기를 듣는다.', '2023-06-14 14:53:11', '2023-06-14 14:53:11'),
(23, '대인관계에서 어떻게 예의를 지키고 행동해야하는지 알고 있다.', '2023-06-14 14:53:22', '2023-06-14 14:53:22'),
(24, '\"안녕하세요.\", \"감사합니다.\"라는 말이 언제나 자연스럽게 나온다.', '2023-06-14 14:53:33', '2023-06-14 14:53:33'),
(25, '처음 만난 사람에게 먼저 다가가 자연스럽게 말을 건넬 수 있다.', '2023-06-14 14:53:48', '2023-06-14 14:53:48'),
(26, '항상 자신감과 소신을 가지고 행동한다.', '2023-06-14 14:53:59', '2023-06-14 14:53:59'),
(27, '감정을 스스로 잘 통제하여 얼굴에 드러나게 하지 않는다.', '2023-06-14 14:54:17', '2023-06-14 14:54:17'),
(28, '당황스러운 상황에서도 침착하게 대응하고 처리하는 성격을 가지고 있다.', '2023-06-14 14:54:30', '2023-06-14 14:54:30'),
(29, '항상 주변에 무슨일이 있는지, 주변 상황과 사람들에게 관심을 가진다.', '2023-06-14 14:54:43', '2023-06-14 14:54:43'),
(30, '상대방과 대화를 할 때, 상대방의 이야기를 먼저 들으려고한다.', '2023-06-14 14:54:58', '2023-06-14 14:54:58'),
(31, '상대방과의 대화 시, 상대방의 의도를 센스있게 파악할 수 있다.', '2023-06-14 14:55:13', '2023-06-14 14:55:13'),
(32, '나의 의사를 간결하고 논리적으로 명확하게 전달할 수 있다.', '2023-06-14 14:55:24', '2023-06-14 14:55:24'),
(33, '자신의 경험을 바탕으로 서비스와 고객만족에 대한 자신만의 철학이 있다.', '2023-06-14 14:55:35', '2023-06-14 14:55:35'),
(34, '서비스전공자라면, 서비스 전공 수업이 70% 이상 잘 맞았다.', '2023-06-14 14:55:46', '2023-06-14 14:55:46'),
(35, '서비스인의 자질에 대해서 정확히 파악하고 있다.', '2023-06-14 15:03:35', '2023-06-14 15:03:35'),
(36, '다양한 서비스 현장에서 다양한 고객을 응대해 본 경험이 있다.', '2023-06-14 15:03:51', '2023-06-14 15:03:51'),
(37, '지원하려는 회사에 대한 정보를 확인하여 면접을 준비한 적이 있다.', '2023-06-14 15:04:03', '2023-06-14 15:04:03'),
(38, '컴플레인 고객을 원활히 응대해 본 경험이 있다.', '2023-06-14 15:04:16', '2023-06-14 15:04:16'),
(39, '서비스 마인드를 충분히 잘 갖추고 있다.', '2023-06-14 15:04:27', '2023-06-14 15:04:27'),
(40, '서비스 관련 교육을 받은 적이 있다.', '2023-06-14 15:04:37', '2023-06-14 15:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, ' 서울', '2023-06-12 16:32:08', '2023-06-18 18:09:18'),
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
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` int UNSIGNED NOT NULL,
  `job_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `employer_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `job_id`, `user_id`, `status`, `created_at`, `updated_at`, `description`, `employer_id`) VALUES
(1, 1, 3, 'pending', '2023-06-15 14:01:00', '2023-06-16 06:55:00', 'asdas', 4),
(2, 1, 4, 'pending', '2023-06-18 08:55:28', '2023-06-18 08:55:28', NULL, 4),
(3, 1, 6, 'pending', '2023-06-18 20:04:19', '2023-06-19 00:56:48', NULL, 4),
(4, 2, 3, 'complete', '2023-06-18 20:17:41', '2023-06-18 20:19:18', NULL, 7),
(5, 2, 4, 'pending', '2023-06-19 01:01:36', '2023-06-19 01:01:36', NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-06-09 12:23:51', '2023-06-09 12:23:51'),
(3, 'employer', 'employer', '2023-06-10 15:35:40', '2023-06-10 15:35:40'),
(4, 'job-seeker', 'job seeker', '2023-06-10 15:37:10', '2023-06-10 15:47:17'),
(5, 'operator', 'Operator', '2023-06-21 01:10:42', '2023-06-21 01:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(14, 'policy.employer', 'employer', '기업 가입:\r\n제1조: 목적\r\n본 약관은 ㈜올댓모델(이하 \"회사\"라 합니다)이 운영하는 웹사이트(이하 \"사이트\"라 합니다) 및 모\r\n바일 어플리케이션(이하 \"어플리케이션\"이라 하며, 사이트와 어플리케이션을 총칭하여 \"사이트 등\"\r\n이라 합니다)을 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요\r\n한 사항을 규정함을 목적으로 합니다.\r\n제2조: 용어의 정의\r\n본 약관에서 사용하는 용어의 정의는 아래와 같습니다.\r\n1. 1) “사이트”라 함은 회사가 서비스를 이용자에게 제공하기 하여 제작, 운영하는 사이트를 말합\r\n니다. 현재 회사가 운영하는 사이트의 접속 주소는 아래와 같습니다.\r\n1. (페이지 주소)\r\n2.\r\n2. 2) “서비스”라 함은 채용정보, 이력서 및 기업정보 제공 기타의 서비스를 통하여 구직,\r\n채용시장에서 구직자와 기업의 연결을 돕는 플랫폼 서비스입니다. 구책적으로는\r\n회사가 기업 또는 구직자가 구인, 구직과 교육을 목적으로 등록하는 각종 자료를\r\nDB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사\r\n이트에서 제공하는 모든 부대 서비스를 말한다. 화사가 제공하는 서비스는 유형에\r\n따라 무료 또는 유료로 제공합니다. 서비스의 자세한 내용은 제**조에서 정하는 바\r\n에 따릅니다.\r\n3) “이용자”라 함은 사이트 등에 접속하여 본 약관에 따라 회사가 제공하는 서비스를 이\r\n용하는 회원(기업회원 및 개인회원을 포함) 및 비회원을 말합니다.\r\n4) “기업회원”이라는 함은 채용을 희망하는 기업으로서 본 서비스를 이용하기 위하여 본\r\n약관에 동의하고 회사와 이용계약을 체결하여 기업회원 ID를 부여받은 이용자를\r\n말합니다. 기업회원은 고용 목적 및 형태에 따라 \"일반 기업회원\", \"파견 및 도급\r\n기업회원\", \"헤드헌팅(서칭펌) 기업회원\" 및 \"교육 기업회원\"으로 구분됩니다. 회사\r\n는 유료 서비스 구매계약 등에 있어서 기업회원의 분류에 따라 권리의무를 다르게\r\n설정할 수 있습니다.\r\n5) “비회원”이라 함은 회사와 서비스 이용계약을 체결하지 않은 채 사이트 등을 통하여\r\n회사가 제공하는 서비스를 이용하는 이용자를 말합니다.\r\n6) \"ID\" 또는 \"기업회원 ID\"라 함은 기업회원의 식별 및 서비스 이용을 위하여 기업회원\r\n이 선정하고 회사가 부여하는 문자와 숫자의 조합을 말합니다.\r\n7) \"비밀번호\"라 함은 회사의 서비스를 이용하려는 사람이 기업회원 ID를 부여 받은 자와\r\n동일인임을 확인하고 기업회원의 권익을 보호하기 위하여 기업회원이 선정한 문자\r\n와 숫자의 조합을 말합니다.\r\n제3조 약관의 명시와 개정\r\n1. 1) 회사는 이 약관의 내용과 상호, 영업소 소재지, 사업자등록번호, 연락처 등을 이용자가 알 수\r\n있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다.\r\n2) 회사는 약관의 규제 등에 관한 법률, 정보통신망 이용 촉진 및 정보 보호 등에 관한 법률, 개\r\n인정보 보호법, 전기통신기본법, 전기통신사업법 등 관련 법령을 위배하지 않는 범위에서\r\n본 약관을 개정할 수 있습니다.\r\n3) 회사가 약관을 개정할 경우에는 개정 약관 적용일 최소 7일전(약관의 변경이 개인회\r\n원에게 적용일자 7일 전부터 적용일자 전일까지) 공지한다. 단 “회원”의 권리, 의\r\n무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.\r\n4) 기업회원은 변경된 약관의 적용을 거부할 권리가 있으며, 변경된 약관이 공지된 지\r\n15일 이내에 변경 약관 적용에 대한 거부 의사를 표시할 수 있습니다. 만약, 기업\r\n회원이 변경 약관 적용에 대한 거부 의사를 표시하지 않고 서비스를 계속 이용하\r\n는 경우, 회사는 기업회원이 변경 약관 적용에 동의하는 것으로 간주합니다.\r\n5) 기업회원이 제4항에 따라 변경 약관 적용을 거부할 의사를 표시한 경우, 회사는 기업\r\n회원에게 15일의 기간을 정하여 사전 통지 후 해당 기업회원과의 서비스 이용계약\r\n또는 별도로 체결된 계약을 해지할 수 있습니다.\r\n제4조 약관 외 준칙\r\n1. 1) 본 약관에서 규정하지 않는 사항에 관해서는 약관 법률, 정보통신기본법, 전기통신사업법, 정\r\n보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.\r\n2) 기업회원이 회사와 개별 계약을 체결하여 서비스를 이용할 경우, 기업회원의 서비스 이용과 관\r\n련된 권리 의무는 순차적으로 개별 계약, 판매약관, 본 약관에서 정한 내용에 따라 규율됩\r\n니다.\r\n제5조 기업 회원에 대한 고지, 통지 및 공지\r\n① 회사는 기업회원이 회원 가입 신청시 등록한 이메일, 휴대전화 문자메시지 또는 어플리\r\n케이션 푸쉬 알림 중 기업회원이 수신에 동의한 수단을 활용하여 기업회원에 대한 각종 고\r\n지나 통지를 이행할 수 있습니다.\r\n② 기업회원에게 공통적으로 적용되는 내용을 고지 또는 통지할 경우, 회사는 1주일 이상\r\n사이트 등의 게시판이나 화면에 일정한 사항을 게시하여 공지함으로써 각 기업회원에 대한\r\n개별 고지나 통지를 갈음할 수 있습니다. 다만, 기업회원의 권리·의무에 중대한 영향을 미\r\n치는 사항에 대해서는 게시기간을 연장하여 공지합니다.\r\n③ 회사는 기업회원에게 서비스 정책, 이용약관, 판매약관, 개인정보 취급방침 등 일체의\r\n약관, 서비스 이용 관련 일정한 사항이나 정보를 알리거나 안내할 목적으로 사이트 등의\r\n게시판이나 서비스 화면에 그 내용을 게시하거나 제1항에 기재된 수단을 활용하여 공지할\r\n수 있습니다.\r\n제6조 이용계약의 성립\r\n1. 1) 서비스 이용계약은 기업회원 서비스를 이용하고자 하는 자(이하 “이용희망자”라 합니다)의\r\n본 약관과 개인정보 처리방침의 내용에 대한 동의 및 회원 가입 신청에 대하여 회사가 승\r\n낙함으로써 성립합니다.\r\n2. 2) 회사의 서비스 이용계약(이하: ‘이용약관’)은 서비스를 이용하고자 하는 자가 본 약관과 개인\r\n정보처리방침을 읽고 “동의” 또는 “획인” 버튼을 누른 경우 본 약관에 동의한 것으로 간주\r\n한다.\r\n3. 3) 제1항의 승낙은 회사가 기업회원 가입 신청자의 본 약관에 대한 동의를 확인하고 승낙의 의\r\n사가 담긴 이메일 또는 서면으로 통지함으로써 이루어지고, 이러한 승낙의 통지가 회원 가\r\n입 신청자에게 도달하면 서비스 이용계약이 성립합니다.\r\n제7조 이용신청 승낙과 제한\r\n① 회사는 기업회원 가입 신청을 한 이용희망자에 대하여 다음 각호의 사유를 모두 충족할\r\n경우 원칙적으로 접수 순으로 기업회원 가입을 승낙합니다.\r\n1. 회사의 업무수행 및 서비스 제공을 위한 설비의 여유·기술상 지장이 없는 경우\r\n2. 본 약관에서 정하는 승낙 제한 또는 거절, 보류 사유에 해당하지 않는 경우\r\n② 다음 각호 중 어느 사유에 해당하는 경우, 회사는 이용자의 기업회원 가입 신청을 승낙\r\n하지 아니합니다. 기업회원 가입 후 해당 사실이 밝혀진 경우, 회사는 해당 기업회원 ID를\r\n삭제하거나 기업회원을 강제탈퇴 조치하며, 필요할 경우 관계법령에 따른 형사처벌이나 행\r\n정제재를 위한 법률절차를 진행할 수 있습니다.\r\n1. 기업회원 가입 신청 시에 타인의 명의를 도용한 경우\r\n2. 기업회원 가입 신청 시에 회사명 또는 사업자등록번호를 실제와 다르게 기재하거\r\n나 기타 기업회원 정보를 허위로 기재한 경우\r\n3. 회사가 제9조에 의거하여 증빙 자료 제출을 요구하였음에도 불구하고 합리적 이\r\n유 없이 이에 응하지 아니한 경우\r\n4. 증빙 자료를 제출함에 있어 허위의 내용이 기재된 자료, 위조 또는 변조된 자료를\r\n제출한 경우\r\n5. 회사가 서비스 부정이용 행위에 대한 제재조치를 취하기 전 이를 회피하기 위해\r\n탈퇴하였던 경우\r\n③ 다음 각 호 중 어느 사유에 해당하는 경우, 회사는 그 사유가 해소될 때까지 이용자의\r\n기업회원 가입 신청에 대한 승낙을 유보할 수 있습니다. 다만, 회사는 기업회원 가입 신청\r\n을 한 이용자에 대해 그 사유를 회사가 정한 방식으로 통지할 수 있습니다.\r\n1. 업무수행 및 서비스 제공을 위한 설비의 여유가 없는 경우\r\n2. 업무수행 및 서비스 제공을 위한 기술상 지장이 있는 경우\r\n3. 기타 회사의 사정(회사의 귀책사유 있는 경우를 포함)으로 이용 승낙이 곤란한 경\r\n우\r\n제8조 서비스의 내용\r\n1, 1) 회사가 제공하는 서비스의 내용은 다은 각호와 같습니다.\r\n1.1. 체용정보 등록과 채용정조 게재 서비스\r\n2.2. 온라인 채용관리/ 입사지원 서비스\r\n3.3.구인과 관련된 제반 서비스\r\n4.4.교육정보 등록과 교육정보 게재 서비스\r\n5.5.이용자간의 교류와 소통에 관련한 서비스\r\n6.6.학원 임대.매매 정보 게재 서비스 및 관련 서비스\r\n7.7.“회사”가 제휴 계약 등을 통해 “회원”에게 제공하는 일체의 서비스\r\n8.8.리워드 광고 서비스\r\n2. 2) 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다. 다만, 서비스의 내용의 추\r\n가 또는 변경으로 인하여 회원에게 중요한 영행을 미치는 경우, 회사는 추가 또는 변경된\r\n서비스 내용을 그 적용일로부터 30일 전에 공지합니다.\r\n제9조 기업 회원 정보, 채용공고등록, 이력서 검색\r\n① 기업회원은 구직을 원하는 이용자가 채용공고를 열람한 후 해당 기업에 대하여 정확히\r\n판단할 수 있도록 기업정보를 사실과 다름없이 정확하게 기재하여야 합니다. 기업정보를\r\n사실과 다르게 기재한 기업회원은 이로 인하여 발생한 모든 문제에 대하여 전적인 책임을\r\n부담하여야 합니다.\r\n② 기업회원은 채용절차 공정화에 관한 법률 제4조, 직업안정법 제34조 및 동법 시행령 제\r\n34조에 의하여 금지되는 거짓 구인광고 또는 거짓 채용공고(이하 “거짓 채용공고”라 합니\r\n다)를 등록하여서는 아니됩니다. 거짓 채용공고를 등록하거나 거짓 구인 조건을 제시한 기\r\n업회원은 채용절차의 공정화에 관한 법률 제16조에 의해 5년 이하의 징역 또는 2천만원\r\n이하의 벌금형을 받거나 직업안정법 제47조에 의해 5년 이하의 징역 또는 5천만 원 이하\r\n의 벌금형을 받을 수 있습니다. 회사는 거짓 채용공고를 등록한 기업회원을 직권으로 고발\r\n할 수 있습니다.\r\n③ 제2항에 따라 금지되는 거짓 채용공고는 다음 각 호와 같습니다.\r\n1. 구인 또는 채용을 가장하여 아이디어 수집, 사업장 홍보, 물품 판매, 유학 알선,\r\n수강생 모집, 직업소개, 부업알선, 자금 모집 등을 행하는 공고\r\n2. 작성자가 제시한 직종, 업무내용, 근로조건 등이 실제와 현저히 다른 공고\r\n3. 회사명, 담당자 성명, 사무실 연락처 등 구인업체의 중요 정보를 정확하게 기입하\r\n지 않았을 경우\r\n4. 기타 채용공고의 중요 내용이 사실과 다른 공고\r\n④ 기업회원은 남녀 고용 평등과 일, 가정 양립 지원에 관한 법률 제7조에 의거하여 근로\r\n자의 모집 및 채용에 있어서 남녀를 차별하여서는 아니됩니다.\r\n⑤ 기업회원은 채용공고 등록시 제24조 제2항에서 규정하는 서비스 부정이용행위를 하여\r\n서는 아니됩니다.\r\n⑥ 기업회원이 등록한 기업정보 및 채용공고가 제2항 내지 제5항을 위반한 것으로 인정될\r\n경우, 회사는 제25조 제1항에 따라 해당 공고의 게시를 중단하거나 삭제하는 등의 조치를\r\n취할 수 있습니다. 또한, 기업회원은 회사 및 이용자에 대한 관계에서 제2항 내지 제5항의\r\n위반으로 발생할 수 있는 민·형사상 책임을 전적으로 부담합니다.\r\n⑦ 회사는 기업회원이 등록한 기업정보 및 채용공고를 회사가 정한 방법에 따라 노출시킬\r\n수 있으며, 지정된 마감기간이 지난 채용공고를 임의로 마감시킬 수 있습니다.\r\n⑧ 기업회원은 유·무료로 사람인 개인회원이 등록한 이력서를 검색할 수 있으며, 회사가 제\r\n시하는 별도의 커뮤니케이션 수단을 통하여 개인회원에게 연락을 취할 수 있습니다. 이 때,\r\n이력서상 기재된 개인회원의 연락처의 열람 및 연락의 목적은 채용활동에 국한되어야 하며,\r\n기업의 영업·마케팅을 위하여 활용하거나 제3자에 대한 개인정보 제공 시에는 정보통신망\r\n이용 촉진 및 정보 보호 등 관련 법률, 개인정보 보호법, 직업안정법 위반에 따른 법적 책\r\n임을 전적으로 부담합니다.\r\n⑨ 회사는 기업회원이 등록된 개인회원의 이력서를 검색하고, 개인회원에게 연락할 수 있\r\n는 권한에 적정한 제한을 둘 수 있으며, 기업회원이 적절하지 않은 방법이나 채용활동 이\r\n외의 목적으로 개인회원에게 연락하거나 서비스 이용에 불편을 끼친 경우, 기업회원의 채\r\n용공고 및 기업정보를 임의로 수정/삭제 등의 조치를 취할 수 있습니다.\r\n제10조 제휴를 통한 서비스\r\n1. ① 회사는 제휴 관계를 체결한 여타 인터넷 웹 사이트 및 채용박람회 또는 신문, 잡지 등의 오\r\n프라인 매체를 통해 사이트에 등록한 회원의 이력서 정보가 열람될 수 있도록 서비스를 제\r\n공할 수 있다. 단, 제휴 서비스를 통해 노출되는 이력서의 연락처 정보는 회원이 이력서 등\r\n록 시 선택한 연락처 공개 여부에 따라 제공된다.\r\n2. 2) 회사는 본 조의 ①항과 관련하여 제휴를 통해 타사이트 및 매체에 등록될 수 있음을 고지하\r\n고 \"기업회원\"이 채용공고 등록시에 각 제휴 사이트별로 제휴 등록에 대한 \"동의\",혹은 \"비\r\n동의\"할 수 있도록 선택권을 부여해야 하며, 제휴사이트 전체 목록을 \"사이트\" 내에서 상시\r\n열람할 수 있도록 할 의무가 있습니다.\r\n3. 3) 회사는 제휴사 정보를 가급적 본 약관에 병시하여야 하며, 본 약관에서 명시하지 못한 제휴\r\n사 정보는 각 “사이트” 별 별도의 제휴사 안내 페이지를 통하여 회원에게 안내하여야 합니\r\n다.\r\n제11조 서비스의 요금 및 결제\r\n1. 1) 기업회원 가입과 이력서 등록은 원칙적으로 무료입니다. 다만, 개인회원 또는 사이트에 방문\r\n한 자에게 등록한 채용공고 정보를 보다 효과적으로 노출시키기 위한 방편으로 초기화면\r\n노출 및 서브페이지 상위노출, 자중노출 등 별도의 서비스는 유료로 제공될 수 있습니다.\r\n2. 2) 회사는 유료서비스의 요금 및 상세내용을 사이트에 공지 하여야 합니다.\r\n3. 3) 회사는 유료서비스 이용금액을 변경할 수 있으며, 이용요금 변경시 변경된 이용요금 내용 및\r\n변경 내용 적용일을 명시하여 변경 내용 적용일 7일전 또는 관련 법률에서 정한 기한 전까\r\n지 개인회원에게 사전 공지합니다.\r\n4. 4) 제3항에 따라 공지된 이용요금 변경 내용은 변경 내용 적용일부터 모든 개인회원에게 적용\r\n됩니다. 다만, 이용요금 변경 내용 적용일 이전에 체결된 계약금액에 영향을 미치지 않도록\r\n합니다.\r\n제12조 서비스 요금 환불 및 오류의 조정\r\n1. 1) 회사는 원칙적으로 회원이 회사의 서비스 이용규정을 위반하거나 등록제한 광고를 등록하고\r\n유료서비스를 신청한 경우 이용료를 환불하지 않으며, 서비스 니용제한 등의 추가적인 제\r\n재조치가 있을 수 있습니다.\r\n2. 2) 회사는 다음 각호에 해당하는 경우 이용료를 환불합니다. 단, 본 조제1항에 해당하는 경우\r\n회사는 환불에 대한 책임을지지 않습니다.\r\n1.1. 유료서비스 이용이 제시죄지 않은 경우\r\n2.2. 네트원크 또는 시스템 장애로 의해 서비스 이용이 불가능한 경우\r\n3.3. 유료 서비스 신청 후 회원 사정에 의해 서비스가 취소될 경우\r\n3. 3) 이용료를 환불받고자 하는 회원은 전화로 환불요청을 해야 합니다.\r\n4. 4) 회사는 개인회원으로부터 환불 요청을 받은 날로부터 3영업일 이내에 개인회원의 환불 요청\r\n이 회사가 정한 환불 요건을 갖추었는지 여부를 판단하여 개인회원에게 그 내용을 통지합\r\n니다.\r\n5. 5) 본 제 4항에 따른 환불은 영업일기준 3일 이내에 처리합니다. 단, 카드결재, 무통장 입금, 가\r\n상계촤 결제 환불의 경우 회사는 영업일 기준 3일 이내 해당 결제 대행사에 환불 요청을\r\n하며, 실제 환불은 해장 결제 대행사의 처리일 기분에 따라 처리됩니다.\r\n6. 6) 기타 이용요금의 환불 관련 상세 사항은 판매약관에서 정하는 바에 따릅니다.\r\n제13조 서비스 이용시간 및 제한\r\n1. 1) 회사는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공합니다. 다만, 일부 서비\r\n스의 경우 그 종류나 성질을 고려하려 별도로 이용시간을 정할 수 있으며, 회사는 그 이용\r\n시간을 개인회원에게 사전 공지합니다.\r\n2. 2) 회사는 서비스 업데이트나 정보 가공, 자료의 갱신을 위한 시스템 유지·보수 작업, 시스템\r\n장애 해결을 위한 보수작업, 정기 PM 작업, 시스템 교체 작업이 필요하거나 회선 장애 등\r\n서비스를 중단할 합리적인 사유가 발생한 경우, 일시적으로 서비스를 중단할 수 있습니다.\r\n계획된 작업의 경우 서비스 중단 시간과 작업 내용을 사전에 공지하되, 우발적 장애 발생\r\n등 부득이한 사유가 있는 경우에 한하여 그 내용을 사후에 공지할 수 있습니다.\r\n3. 3) 회사는 다음 각 호에 해당하는 경우 서비스의 제공을 중지할 수 있습니다\r\n1. 1. 설비의 보수 등 회사의 필요에 의해 사전에 기업회원들에게 공지한 경우\r\n2. 2. 기간통신사업자가 전기통신서비스 제공을 중지하는 경우\r\n3. 3. 기타 불가항력적인 사유에 의해 서비스 제공이 객관적으로 불가능한 경우\r\n제14조 정보의 제공 및 광고의 게재\r\n1. 1) 회사는 회원에게 서비스 이용에 필요가 있다고 인정되거나 서비스 개선 및 회원 대상에 서\r\n비스 소개 등의 목적으로 하는 각종 전보에 대해사 전자우편이나 서신우편을 이용한 방법\r\n으로 정보를 제공할 수 있습니다.\r\n2. 2) 회사는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지 등에 게재할\r\n수 있으며, 회원의 메일을 통해 알릴 수 있습니다.\r\n3. 3) 회사는 사이트 등에 게재되어 있는 광고주의 홍보활동에 개인회원이 참여하거나 교신 또는\r\n거래를 함으로써 발생하는 모든 손실과 손해에 대해 일체의 책임을지지 않습니다.\r\n4. 4) 서비스를 이용하는 회원은 서비스 이용시 노출되는 광고 게재에 대해 동의 하는 것으로 간\r\n주합니다.\r\n제15조 자료내용의 책임과 회사의 정보 수정 권한\r\n1. 1) 자료라 함은 회원이 서비스를 이용하면서 등록한 채용공고와 이력서 및 사이트에 게시한 게\r\n시물 등을 말합니다.\r\n2. 2) 회원은 자료 및 게시물을 사실에 근거하여 성실하게 작성해야 하며, 만일 자료의 내용이 사\r\n실이 아니거나 부정확하게 작성되어 발생하는 모든 책임은 회원에게 있습니다.\r\n3. 3) 모든 자료의 관리와 작성은 회원 본인이 하는 것이 원칙이나 사정상 위탁 또는 대행관리를\r\n하더라도 그 내용에 대한 책임은 회원에게 있으며, 회원은 주기적으로 자신의 자료를 확인\r\n하여 언제나 항상 정확하게 관리가 되도록 노력해야 합니다.\r\n4. 4) 회사는 회원이 등록한 자료에 오자, 탈자 또는 사회적 통념에 어긋나는 문구가 있을 경우 이\r\n를 언제든지 수정할 수 있는 권한이 있습니다.\r\n5. 5) 회사는 회원이 등록한 자료를 “회사”가 운영하는 같은 목적의 타 사이트에도 게재할 수 있\r\n습니다.\r\n6. 6) 회원이 등록한 자료로 인하여 타인(또는 타법인)으로부터 허위사실 및 명예훼손 등으로 삭제\r\n요청이 접수된 경우 회사는 회원에게 사전 통지 없이 본 자료를 삭제할 수 있으며, 자료\r\n삭제 후 메일 등의 방법으로 회원에게 통지할 수 있습니다.\r\n제16조 자료의 저작권 및 활용\r\n1. 1) 회사가 작성한 게시물 또는 저작물에 대한 저작권 및 기타 지적재산권은 회사에 귀속합니다.\r\n2. 2) 회원이 사이트 내에 게시한 게시물의 저작권은 회원에게 귀속됩니다. 단, 회원은 자신이 창\r\n작, 등록한 게시물에 대해 무상의 비독점적 사용권을 회사에 부여하고, 이 사용권은 회사가 사이\r\n트를 운영하는 동안 계속 유효하며, 회원 탈퇴한 후에도 이와 같습니다.\r\n3. 3) 게시물에 대한 권리와 책임은 게시물을 게시한 회원에게 있으며, 회사는 회원의 동의 없이\r\n이를 회사가 운영하는 사이트 이외에 영리적 목적으로 사용할 수 없습니다. 단, 비영리적인 경우\r\n에는 해당되지 않습니다.\r\n4. 4) 회원이 입력한 정보는 취업 및 관련 동향의 통계 자료로 활용될 수 있으며, 그 자료 내용은\r\n매체를 통해 언론에 배포될 수 있습니다. 단, 활용되는 정보 중 개인을 식별할 수 있는 개인정보\r\n는 제외합니다.\r\n5. 5) 사이트에서 정당한 절차를 거쳐 기업회원이 열람한 개인 회원의 이력서 정보는 해당 기업의\r\n인사 자료이며, 이에 대한 관리 권한은 해당 기업의 정책에 의합니다.\r\n제17조 회사의 의무\r\n1. 1) 회사는 본 약관에서 정한 내용에 따라 안정적 및 계속적으로 서비스를 제공할 수 있도록 최\r\n선을 다하여 노력하고록 하겠습니다.\r\n2. 2) 회사는 특별한 사정이 없는 한 회원이 서비스 이용신청 후, 48시간 이내에 서비스를 이용할\r\n수 있도록 합니다.\r\n3. 3) 회사는 서비스에 관련된 서비를 항상 운용할 수 있는 상태로 유지, 보수하고, 장애가 발생하\r\n는 경우 지체 없이 이를 수리 및 복구할 수 있도록 최선의 노력을 다하여야 합니다. 다만,\r\n천재지변 등 예측하지 못한 손해는 회사가 책임을지지 않으며, 이 경우 자료의 복구나 정\r\n상적인 서비스 지원이 되도록 최선을 다할 의무가 있습니다.\r\n4. 4) 서비스의 이용이나 운영과 관된 개인회원의 불만사항이 접수되는 경우, 회사는 이응 지체없\r\n이 처리하여 그 결과를 회신할 수 있도록 노력합니다. 다만, 불만사항 내용 확인 및 경위\r\n파악, 접수 내용 처리 등에 상당한 시간이 소요될 경우, 회사는 그 사유와 처리일정을 개인\r\n회원에게 통지합니다.\r\n5. 5) 기업회원이 사이트에 등록한 기업정보, 채용공고 등의 내용은 사이트 방문자에게 공개를 원\r\n칙으로 하며, 회사는 공개 기간을 지정할 수 있습니다. 단, 일부 비공게 항목은 사이트에서\r\n제시하는 별도의 옵션을 통해 지정할 수 있습니다.\r\n6. 6) 회원이 등록한 자료로 인하며 사이트의 원활한 운영에 영향을 미친다고 판단될 시, 등록된\r\n모든 자료를 회원의 사전 동의 없이 삭제할 수 있습니다.\r\n7. 7) 회사는 유료 결제와 관한 결제 정보를 5년간 보존합니다. 다만, 회원 자격이 없는 회원은 예\r\n외로 합니다.\r\n제18조 회원의 의무\r\n1. 1) 기업회원은 관계법령과 본 약관의 규정, 회사의 서비스 운영정책 기타 고지된 서비스 이용상\r\n의 유의 사항을 준수하여야 하며, 기타 회사의 업무에 지장을 초래하는 행위를 하여서는\r\n아니됩니다.\r\n2. 2) 기업회원이 신청한 유료서비스는 등록 또는 신청과 동시에 회사와 채권, 채무 관계가 발생하\r\n며, 기업회원은 이용요금을 회사가 지정한 기일 내에 납부하여야 합니다.\r\n3. 3) 기업회원이 결제 수단으로 신용카드를 사용할 경우 비밀번호 등의 관리책임은 기업회원에게\r\n있습니다. 단, 사이트의 결함에 따른 정보유실의 발생에 대한 책임은 기업회원이 부담하지\r\n않습니다.\r\n4. 4) 회원은 회사의 사전승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의\r\n결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지\r\n않습니다. 회원은 이와 같은 영업활동으로 회사에 손해를 입힌 경우 회원은 회사에 대하여\r\n손해배상 의무를 부담하여야 합니다.\r\n5. 5) 회원은 본 서비스를 건전한 구인 구직 이외의 목적으로 사용해서는 안되면 이용 중 다음 각\r\n호의 행위를 해서는 안 됩니다.\r\n1.1. 범죄 행위를 목적으로 하거나 기타 범죄행위와 관련된 행위\r\n2.2. 회사의 직원이나 관리자를 가장하거나 사칭하여 내용물을 게시, 등록하거나 스팸 또는 불법\r\n스팸전송을 위해 메일이나 문자메시지를 발송하는 행위\r\n3.3. 타인의 명예 훼손하거나 모욕하는 행위\r\n4.4. 타인의 지적재산권 등의 권리를 침해하는 행위\r\n5.5. 해킹행위 또는 바이러스의 유포 행위\r\n6.6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위\r\n7.7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위\r\n8.8. 그 밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위\r\n6. 6) 회원은 회사를 통해 전달되는 수신거부 요청에 대해서는 즉각적으로 처리하고 24시간 이내\r\n에 처리결과를 회사에 회신하여야 하며 본 항의 위반으로 발생하는 모든 민·형사상 책임은 회원\r\n이 직접 부담하여야 합니다.\r\n7. 7) 회원은 전기통신사업법 제 84조의 2(전화번호의 거짓표시 금지 및 이용자 보호)에 의거 이\r\n용자는 회원의 발신번호를 사전에 등록하고 등록된 번호로만 발송해야 합니다.\r\n8. 8) 회원은 이용신청서의 기재내용 중 변경된 내용이 있을 경우 해당 절차를 거쳐 그 내용을 회\r\n사에 통지하여야 합니다. 만약, 변경된 내용을 통지하지 않아 발생하는 피해에 대하여 회사는 책\r\n임지지 않습니다.\r\n제19조 회원의 계약 해지/ 서비스 중지/ 자료 삭제\r\n1. 1) 기업회원이 서비스 이용계약을 해지하고자 할 경우, 고객센터 또는 “기업회원 탈퇴” 메뉴를\r\n이용해 회사에 대한 해지 신청을 합니다.\r\n2. 2) 다음의 각 사항에 해당하는 경우 회사는 회원의 사전 동의 없이 계약 해지하거나 서비스 중\r\n지, 자료 삭제 조치를 취할 수 있습니다.\r\n1.1. 기업사항이 명확하게 가입되지 않거나 사실과 다르게 조작되어 허위로 등록된 경우\r\n2.2. 회원 가입 또는 자료 등록 시 본 서비스에서 안애하는 방법으로 가임하지 않았거나 등록하지\r\n않았을 때\r\n3. 3) 구인을 가장하여 물품판매, 수강생 모집, 직업소개, 부업알선, 자금 보집 등을 행하는 광고\r\n4. 4) 메일이나 문자메시지 수신자가 스챔으로 신고하거나 회원이 발송하는 메시지가 물법스팸임\r\n이 판명될 경우\r\n5. 5) 회사의 수신거부 요청 처리에 불성실하여 수신거부 요청 건수가 감소되지 않거나 발송금지\r\n를 요청한 메시지 내용이 중복적으로 발송될 경우\r\n6. 6) 방송통신위원회 또는 한국정보보호진흥원이 불법스팸 전송사실을 확인하여 이용정지를 요청\r\n하는 경우\r\n7. 7) 미래창조과학부(거짓으로 표시된 전화번호로 인한 이용자 피해 예방에 관한) 고시 제 2015-\r\n32호 제10조 제1항에 따라 미래창조과학부 또는 중앙전파관리소,한국인터넷진흥원(KISA)에서 번\r\n호 변작등으로 판명되어 이용정지를 요청한 경우\r\n8. 8) 회사의 사업이나 사이트, 혹은 서비스의 폐지나 휴지 등으로 서비스 제공이 불가능 할 때.\r\n단, 전기통신사업법 제26조 근거하여 예정일 30일 전까지 회원에게 통보하며, 환불 등이 필요한\r\n경우에는 본 약관의 제12조에 따라 처리됩니다.\r\n제 20 조 손해배상 및 면책\r\n1. 1) 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우 서\r\n비스 제공에 관한 책임이 면제됩니다.\r\n2. 2) 회사는 서비스 이용과 관련하여 회원에게 발생한 손해 가운데 회원의 고의, 과실 및 회원의\r\n귀책사유로 인한 서비스 이용의 장애 및 손해에 대하여 책임을 지지 않습니다.\r\n3. 3) 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임\r\n을 지지 않습니다.\r\n4. 4) 회사가 귀책으로 본 약관의 제17조 의 규정에 위반한 행위로 기업회원에게 손해를 입히거나\r\n기타 회사가 제공하는 모든 서비스와 관련하여 회사의 책임 있는 사유로 인해 기업회원에게 손해\r\n가 발생한 경우, 회사는 그 손해를 배상하여야 합니다.\r\n제21조 회원의 개인정보보호\r\n화사는 이용자의 개인정보를 보호하기 위하여 노력하도록 하겠습니다. 회사는 정보통신망 이용\r\n촉진 및 정보 보호 동에 관한 법률, 개인정보 보호법을 준수하고, 개인전보 보호를 위하려 사이트\r\n등에 개인정보 처리방침을 고지합니다.\r\n제22조 분재해결\r\n1. 1) 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해경하기 위하려 필요한 노력을\r\n하여야 합니다.\r\n2. 2) 정항의 노력에도 불구하고, 분쟁에 대해 소송이 제기될 경우 민사소송법 등 법령에 정한 절\r\n차에 따른 법원을 관할 법원으로 합니다.', NULL, 'text_area', 8, 'policy'),
(15, 'site.favicon', 'favicon', '', NULL, 'image', 9, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `spammers`
--

CREATE TABLE `spammers` (
  `id` bigint UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` int NOT NULL,
  `blocked_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(56, 'data_rows', 'display_name', 105, 'en', 'Id', '2023-06-14 14:47:15', '2023-06-14 14:47:15'),
(57, 'data_rows', 'display_name', 106, 'en', 'Title', '2023-06-14 14:47:15', '2023-06-14 14:47:15'),
(58, 'data_rows', 'display_name', 107, 'en', 'Created At', '2023-06-14 14:47:15', '2023-06-14 14:47:15'),
(59, 'data_rows', 'display_name', 108, 'en', 'Updated At', '2023-06-14 14:47:15', '2023-06-14 14:47:15'),
(60, 'data_types', 'display_name_singular', 13, 'en', 'Question', '2023-06-14 14:47:15', '2023-06-14 14:47:15'),
(61, 'data_types', 'display_name_plural', 13, 'en', 'Questions', '2023-06-14 14:47:15', '2023-06-14 14:47:15'),
(62, 'data_rows', 'display_name', 68, 'en', 'Id', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(63, 'data_rows', 'display_name', 69, 'en', 'Title', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(64, 'data_rows', 'display_name', 70, 'en', 'Areas Of Recruitment', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(65, 'data_rows', 'display_name', 71, 'en', 'Type Of Employment', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(66, 'data_rows', 'display_name', 72, 'en', 'Number Of Recruits', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(67, 'data_rows', 'display_name', 73, 'en', 'Gender', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(68, 'data_rows', 'display_name', 74, 'en', 'Age', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(69, 'data_rows', 'display_name', 75, 'en', 'Education', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(70, 'data_rows', 'display_name', 76, 'en', 'Day Of The Week', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(71, 'data_rows', 'display_name', 77, 'en', 'Working Time', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(72, 'data_rows', 'display_name', 78, 'en', 'Closing Time', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(73, 'data_rows', 'display_name', 79, 'en', 'Break Time', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(74, 'data_rows', 'display_name', 80, 'en', 'Preferential Conditions', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(75, 'data_rows', 'display_name', 81, 'en', 'Salary', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(76, 'data_rows', 'display_name', 82, 'en', 'Damdam Place Name', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(77, 'data_rows', 'display_name', 83, 'en', 'Meal Included', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(78, 'data_rows', 'display_name', 84, 'en', 'Negotiable', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(79, 'data_rows', 'display_name', 85, 'en', 'Probation Period', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(80, 'data_rows', 'display_name', 86, 'en', 'Performance Pay', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(81, 'data_rows', 'display_name', 87, 'en', 'Contact', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(82, 'data_rows', 'display_name', 88, 'en', 'Fax Number', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(83, 'data_rows', 'display_name', 89, 'en', 'Email', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(84, 'data_rows', 'display_name', 90, 'en', 'Address', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(85, 'data_rows', 'display_name', 91, 'en', 'Description', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(86, 'data_rows', 'display_name', 92, 'en', 'Agreed', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(87, 'data_rows', 'display_name', 93, 'en', 'Created At', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(88, 'data_rows', 'display_name', 94, 'en', 'Updated At', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(89, 'data_types', 'display_name_singular', 10, 'en', 'Job', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(90, 'data_types', 'display_name_plural', 10, 'en', 'Jobs', '2023-06-15 01:42:19', '2023-06-15 01:42:19'),
(91, 'data_rows', 'display_name', 115, 'en', 'User Id', '2023-06-15 01:48:00', '2023-06-15 01:48:00'),
(92, 'data_rows', 'display_name', 116, 'en', 'Slug', '2023-06-15 01:48:01', '2023-06-15 01:48:01'),
(93, 'data_rows', 'display_name', 1, 'en', 'ID', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(94, 'data_rows', 'display_name', 21, 'en', 'Role', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(95, 'data_rows', 'display_name', 2, 'en', 'Name', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(96, 'data_rows', 'display_name', 3, 'en', 'Email', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(97, 'data_rows', 'display_name', 8, 'en', 'Avatar', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(98, 'data_rows', 'display_name', 4, 'en', 'Password', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(99, 'data_rows', 'display_name', 5, 'en', 'Remember Token', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(100, 'data_rows', 'display_name', 11, 'en', 'Settings', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(101, 'data_rows', 'display_name', 6, 'en', 'Created At', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(102, 'data_rows', 'display_name', 7, 'en', 'Updated At', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(103, 'data_rows', 'display_name', 9, 'en', 'Role', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(104, 'data_rows', 'display_name', 10, 'en', 'Roles', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(105, 'data_types', 'display_name_singular', 1, 'en', 'User', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(106, 'data_types', 'display_name_plural', 1, 'en', 'Users', '2023-06-15 02:16:52', '2023-06-15 02:16:52'),
(107, 'data_rows', 'display_name', 151, 'en', 'Id', '2023-06-15 13:57:00', '2023-06-15 13:57:00'),
(108, 'data_rows', 'display_name', 152, 'en', 'Job Id', '2023-06-15 13:57:00', '2023-06-15 13:57:00'),
(109, 'data_rows', 'display_name', 153, 'en', 'User Id', '2023-06-15 13:57:00', '2023-06-15 13:57:00'),
(110, 'data_rows', 'display_name', 154, 'en', 'Status', '2023-06-15 13:57:00', '2023-06-15 13:57:00'),
(111, 'data_rows', 'display_name', 155, 'en', 'Created At', '2023-06-15 13:57:01', '2023-06-15 13:57:01'),
(112, 'data_rows', 'display_name', 156, 'en', 'Updated At', '2023-06-15 13:57:01', '2023-06-15 13:57:01'),
(113, 'data_rows', 'display_name', 157, 'en', 'jobs', '2023-06-15 13:57:01', '2023-06-15 13:57:01'),
(114, 'data_rows', 'display_name', 158, 'en', 'users', '2023-06-15 13:57:01', '2023-06-15 13:57:01'),
(115, 'data_types', 'display_name_singular', 15, 'en', 'Resume', '2023-06-15 13:57:01', '2023-06-15 13:57:01'),
(116, 'data_types', 'display_name_plural', 15, 'en', 'Resumes', '2023-06-15 13:57:01', '2023-06-15 13:57:01'),
(117, 'categories', 'name', 1, 'en', 'Category 1', '2023-06-16 06:09:11', '2023-06-16 06:09:11'),
(118, 'categories', 'slug', 1, 'en', 'category-1', '2023-06-16 06:09:11', '2023-06-16 06:09:11'),
(119, 'categories', 'name', 2, 'en', 'Category 2', '2023-06-16 06:09:46', '2023-06-16 06:09:46'),
(120, 'categories', 'slug', 2, 'en', 'category-2', '2023-06-16 06:09:46', '2023-06-16 06:09:46'),
(121, 'posts', 'title', 5, 'en', '면접관을 위한 면접 진행', '2023-06-16 06:11:46', '2023-06-16 06:11:46'),
(122, 'posts', 'excerpt', 5, 'en', '예측 가능하고 구조화된 질문에 의존하기 보다 다음 단계의 생각이 필요한 답변을 들었을 때, 지원자에게 특히 적합한 인터뷰 질문을 할 수 있습니다.\n실제 사람을 보고있다는 만족감이 들때까지 들은 내용을 명확하게 하여 단순한 질문 및 답변이 아닌 진정한 대화형 대화를 나누는 시간을 갖도록 합니다.', '2023-06-16 06:11:46', '2023-06-16 06:11:46'),
(123, 'posts', 'body', 5, 'en', '<p>예측 가능하고 구조화된 질문에 의존하기 보다 다음 단계의 생각이 필요한 답변을 들었을 때, 지원자에게 특히 적합한 인터뷰 질문을 할 수 있습니다.<br>실제 사람을 보고있다는 만족감이 들때까지 들은 내용을 명확하게 하여 단순한 질문 및 답변이 아닌 진정한 대화형 대화를 나누는 시간을 갖도록 합니다.</p>', '2023-06-16 06:11:46', '2023-06-16 06:11:46'),
(124, 'data_rows', 'display_name', 159, 'en', 'Description', '2023-06-16 06:54:27', '2023-06-16 06:54:27'),
(125, 'data_rows', 'display_name', 117, 'en', 'users', '2023-06-16 08:21:51', '2023-06-16 08:21:51'),
(126, 'data_rows', 'display_name', 161, 'en', 'job_category', '2023-06-16 08:21:51', '2023-06-16 08:21:51'),
(127, 'data_rows', 'display_name', 162, 'en', 'job_type', '2023-06-16 08:21:51', '2023-06-16 08:21:51'),
(128, 'data_rows', 'display_name', 163, 'en', 'regions', '2023-06-16 08:21:51', '2023-06-16 08:21:51'),
(129, 'data_rows', 'display_name', 167, 'en', 'Id', '2023-06-16 09:52:52', '2023-06-16 09:52:52'),
(130, 'data_rows', 'display_name', 168, 'en', 'User Id', '2023-06-16 09:52:52', '2023-06-16 09:52:52'),
(131, 'data_rows', 'display_name', 169, 'en', 'Self Care', '2023-06-16 09:52:52', '2023-06-16 09:52:52'),
(132, 'data_rows', 'display_name', 170, 'en', 'Communicative Power', '2023-06-16 09:52:52', '2023-06-16 09:52:52'),
(133, 'data_rows', 'display_name', 171, 'en', 'Reduced Ability To Cope', '2023-06-16 09:52:52', '2023-06-16 09:52:52'),
(134, 'data_rows', 'display_name', 172, 'en', 'Ability Job', '2023-06-16 09:52:52', '2023-06-16 09:52:52'),
(135, 'data_rows', 'display_name', 173, 'en', 'Created At', '2023-06-16 09:52:52', '2023-06-16 09:52:52'),
(136, 'data_rows', 'display_name', 174, 'en', 'Updated At', '2023-06-16 09:52:52', '2023-06-16 09:52:52'),
(137, 'data_types', 'display_name_singular', 16, 'en', 'Exam Result', '2023-06-16 09:52:52', '2023-06-16 09:52:52'),
(138, 'data_types', 'display_name_plural', 16, 'en', 'Exam Results', '2023-06-16 09:52:52', '2023-06-16 09:52:52'),
(139, 'data_rows', 'display_name', 176, 'en', 'Id', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(140, 'data_rows', 'display_name', 177, 'en', 'User Id', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(141, 'data_rows', 'display_name', 178, 'en', 'Education', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(142, 'data_rows', 'display_name', 179, 'en', 'School', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(143, 'data_rows', 'display_name', 180, 'en', 'School Department', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(144, 'data_rows', 'display_name', 181, 'en', 'Admission Date', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(145, 'data_rows', 'display_name', 182, 'en', 'Graduation Date', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(146, 'data_rows', 'display_name', 183, 'en', 'Created At', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(147, 'data_rows', 'display_name', 184, 'en', 'Updated At', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(148, 'data_rows', 'display_name', 185, 'en', 'users', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(149, 'data_types', 'display_name_singular', 17, 'en', 'Education History', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(150, 'data_types', 'display_name_plural', 17, 'en', 'Education Histories', '2023-06-16 16:43:26', '2023-06-16 16:43:26'),
(151, 'data_rows', 'display_name', 186, 'en', 'Id', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(152, 'data_rows', 'display_name', 187, 'en', 'User Id', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(153, 'data_rows', 'display_name', 188, 'en', 'Company Name', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(154, 'data_rows', 'display_name', 189, 'en', 'Company Department', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(155, 'data_rows', 'display_name', 190, 'en', 'Salary', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(156, 'data_rows', 'display_name', 191, 'en', 'Rank', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(157, 'data_rows', 'display_name', 192, 'en', 'Employment Start', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(158, 'data_rows', 'display_name', 193, 'en', 'Employment End', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(159, 'data_rows', 'display_name', 194, 'en', 'Created At', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(160, 'data_rows', 'display_name', 195, 'en', 'Updated At', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(161, 'data_rows', 'display_name', 196, 'en', 'users', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(162, 'data_types', 'display_name_singular', 18, 'en', 'Work History', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(163, 'data_types', 'display_name_plural', 18, 'en', 'Work Histories', '2023-06-16 16:45:01', '2023-06-16 16:45:01'),
(164, 'data_rows', 'display_name', 118, 'en', 'Email Verified At', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(165, 'data_rows', 'display_name', 119, 'en', 'Birth Date', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(166, 'data_rows', 'display_name', 120, 'en', 'Gender', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(167, 'data_rows', 'display_name', 121, 'en', 'Phone', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(168, 'data_rows', 'display_name', 122, 'en', 'Address', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(169, 'data_rows', 'display_name', 134, 'en', 'Language', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(170, 'data_rows', 'display_name', 135, 'en', 'O A', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(171, 'data_rows', 'display_name', 136, 'en', 'Support Areas', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(172, 'data_rows', 'display_name', 137, 'en', 'Establishment Date', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(173, 'data_rows', 'display_name', 138, 'en', 'Representative Name', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(174, 'data_rows', 'display_name', 139, 'en', 'Business Number', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(175, 'data_rows', 'display_name', 140, 'en', 'Contact Person Number', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(176, 'data_rows', 'display_name', 141, 'en', 'Contact Person Name', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(177, 'data_rows', 'display_name', 142, 'en', 'Number Of Employees', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(178, 'data_rows', 'display_name', 143, 'en', 'Business Information', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(179, 'data_rows', 'display_name', 144, 'en', 'Sectors', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(180, 'data_rows', 'display_name', 145, 'en', 'Company Website Address', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(181, 'data_rows', 'display_name', 146, 'en', 'Company Type', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(182, 'data_rows', 'display_name', 147, 'en', 'Take', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(183, 'data_rows', 'display_name', 148, 'en', 'Capital', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(184, 'data_rows', 'display_name', 149, 'en', 'Listed Or Not', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(185, 'data_rows', 'display_name', 150, 'en', 'Self Introduction', '2023-06-18 20:55:54', '2023-06-18 20:55:54'),
(186, 'posts', 'title', 6, 'en', '내가 하고싶은 일 찾는 방법', '2023-06-19 01:50:53', '2023-06-19 01:50:53'),
(187, 'posts', 'excerpt', 6, 'en', '인간은 진화적으로 불확실성을 싫어한다고 합니다. 그래서 \"내가 원하는 걸 나도 모르겠다.\" \"지금 하는 일이 내가 원하는 것인지 확실하지 않다.\" \"나만의 커리어를 찾고 싶다.\" 등의 이야기를 하게 됩니다. 불확실성은 스트레스를 유발하고 재생산과 자손 양육이라는 생명체의 본래 활동을 위축시키기 때문인데요.', '2023-06-19 01:50:53', '2023-06-19 01:50:53'),
(188, 'posts', 'body', 6, 'en', '<p>인간은 진화적으로 불확실성을 싫어한다고 합니다. 그래서 \"내가 원하는 걸 나도 모르겠다.\" \"지금 하는 일이 내가 원하는 것인지 확실하지 않다.\" \"나만의 커리어를 찾고 싶다.\" 등의 이야기를 하게 됩니다. 불확실성은 스트레스를 유발하고 재생산과 자손 양육이라는 생명체의 본래 활동을 위축시키기 때문인데요.</p>', '2023-06-19 01:50:53', '2023-06-19 01:50:53'),
(189, 'posts', 'slug', 6, 'en', '내가 하고싶은 일 찾는 방법', '2023-06-19 01:50:53', '2023-06-19 01:50:53'),
(190, 'posts', 'slug', 5, 'en', '면접관을 위한 면접 진행', '2023-06-19 01:52:32', '2023-06-19 01:52:32'),
(191, 'pages', 'title', 6, 'en', 'js-policy', '2023-06-19 01:54:30', '2023-06-19 01:54:30'),
(192, 'pages', 'body', 6, 'en', '<p>개인 가입 회원 약관 :<br>제1조: 목적<br>본 약관은 ***(이하: &ldquo;회사&rdquo;라 합니다)이 운영하는 웹사이트(이하&ldquo;사이트&rdquo;라 합니다) 및 모바일 애<br>플리케이션(이하 &ldquo;애플리케이션&rdquo;이라 하며, 사이트와 애플리케이션을 총칭하여 &ldquo;사이트 등&rdquo;이라<br>합니다)을 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요한 사<br>항의 규정을 목적으로 합니다.<br>제2조 용어의 정의<br>본 약관에서 사용하는 용어의 정의는 아래와 같습니다.<br>1. 1) &ldquo;사이트&rdquo;라 함은 회사가 서비스를 이용자에게 제공하기 하여 제작, 운영하는 사이트를 말합<br>니다. 현재 회사가 운영하는 사이트의 접속 주소는 아래와 같습니다.<br>1. (페이지 주소)<br>2.<br>2. 2) &ldquo;서비스&rdquo;라 함은 채용정보, 이력서 및 기업정보 제공 기타의 서비스를 통하여 구직,<br>채용시장에서 구직자와 기업의 연결을 돕는 플랫폼 서비스입니다. 구책적으로는<br>회사가 기업 또는 구직자가 구인, 구직과 교육을 목적으로 등록하는 각종 자료를<br>DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사<br>이트에서 제공하는 모든 부대 서비스를 말한다. 화사가 제공하는 서비스는 유형에<br>따라 무료 또는 유료로 제공합니다. 서비스의 자세한 내용은 제**조에서 정하는 바<br>에 따릅니다.<br>3. 3) &ldquo;이용자&rdquo;라 함은 사이트 등에 접속하여 본 약관에 따라 회사가 제공하는 서비스를<br>이용하는 회원(기업회원 및 개인회원을 포함) 및 비회원을 말합니다.<br>4. 4) \"개인회원\"이라 함은 본 서비스를 이용하기 위하여 본 약관에 동의하고 회사와 서비<br>스 이용계약을 체결하여 개인회원ID를 부여받은 이용자를 말합니다.<br>5. 5) &ldquo;비회원&rdquo;이라 함은 회사와 서비스 이용계약을 체결하지 않은 채 사이트 등을 통하<br>여 회사가 제공하는 서비스를 이용하는 이용자를 말합니다.<br>6. 6) \"이용자ID\" 또는 \"개인회원ID\"라 함은 개인회원의 식별 및 서비스 이용을 위하여 개<br>인회원이 선정하거나 회사가 부여하는 문자와 숫자의 조합을 말합니다.<br>7. 7) \"비밀번호\"라 함은 회사의 서비스를 이용하려는 사람이 개인회원ID를 부여 받은 자<br>와 동일인임을 확인하고 개인회원의 권익을 보호하기 위하여 개인회원이 선정하거<br>나 회사가 부여하는 문자와 숫자의 조합을 말합니다.<br>8. 8) &ldquo;계정&rdquo;이라 함은 개인회원의 개인정보, 이력서 등을 등록, 관리할 수 있도록 회사가<br>개인회원에게 제공하는 공간을 말합니다.<br>제3조 약관의 명시와 개정<br>1. 1) 회사는 이 약관의 내용과 상호, 영업소 소재지, 사업자등록번호, 연락처 등을 이용자가 알 수<br>있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다.<br>2) 회사는 약관의 규제 등에 관한법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용<br>촉진 및 정보보호 등에 관한 법률등 관연법을 위배하지 않는 범위에서 이약관을<br>개정할 수 있다.<br>3) 회사가 약관을 개정할 경우에는 개정 약관 적용일 최소 7일전(약관의 변경이 개인회<br>원에게 적용일자 7일 전부터 적용일자 전일까지) 공지한다. 단 &ldquo;회원&rdquo;의 권리, 의<br>무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.<br>4) 회원은 변경괸 약관에 대해 거부할 권리가 있다. 회원은 변경된 시접으로부터 15일<br>이내에 거부의사를 표명할 수 있다. 만약, 회원이 거부의사를 표시하지 않거나, 전<br>항에 따라 시행일 이후에 서비스를 이용하는 경우에는 동의한 것으로 간주한다.<br>제4조 약관의 외 준칙<br>1. 1) 본 약관에서 규정하지 않는 사항에 관해서는 약관 법률, 정보통신기본법, 전기통신사업법, 정<br>보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.<br>2) 회원이 회사와 개별 계약을 체결하여 서비스를 이용하는 경우, 개인회원의 서비스 이용과 관련<br>된권리 의무는 순차적으로 개발 걔역, 개별 서비스 이용약관, 본 약관에서 정한 내용에 따<br>라 규율됩니다.<br>3) 각 사이트 및 서비스 이용약관이 있는 경우에는 서비스 이용약관이 우선한다.<br>제5조 개인회원에 대한 고지, 통지 및 공지<br>회사는 개인회원에게 서비스 정책, 이용약관, 판매약관, 개인정보 처리방침 등 일체의 약과느 서<br>비스 이용 관련 일정한 사항이나 정보를 알리거나 난내할 목적으로 개인회원에게 각종 고지나 통<br>지를 이행할 수 있으며, 사이트 등의 게시판이나 화면에 일정한 사항을 게시하여 공지함으로써<br>각 개인회원에 대한 각종 고지나 통지를 갈음할 수 있습니다. 이와 관련하여 고지 통지 수단, 고<br>이 방법, 공비 기간 등의 상세한 내용은 개인정보 처리방침을 확인 바랍니다.<br>제6조 이용계약의 성립<br>1. 1) 회사의 서비스 이용계약(이하: &lsquo;이용약관&rsquo;)은 서비스를 이용하고자 하는 자가 본 약관과 개인<br>정보처리방침을 읽고 &ldquo;동의&rdquo; 또는 &ldquo;획인&rdquo; 버튼을 누른 경우 본 약관에 동의한 것으로 간주<br>한다.<br>2) 사이트 등을 통한 회원가입 시 이용희망자는 본 약관 및 개인정보 처리방침에 대한<br>동의 표시 및 회원가입 신청을 하여야 하며, 회사는 이용희망자가 본 약관 및 개<br>인정보 처리방침의 내용을 읽고 동의한 것으로 봅니다.<br>3) 페이스북 등 외부 서비스와의 연동을 통한 회원가입 시 이용희망자는 본 약관, 개인정<br>보 처리방침 및 서비스 제공을 위한 회사의 외부 서비스 계정 정보 접근 및 활용<br>에 대한 등의 표시 및 회원가입 신청을 하여야 하며, 회사는 이용희망자가 본 약<br>관 및 개인정보 처리방침의 내용을 읽고 동의한 것으로 봅니다.<br>4) 회사는 본인 확인을 위하여 필요 시 이용자에게 본인인증을 요구할 수 있습니다. 이<br>경우 이용자는 휴대폰인증 등 회사가 제공하는 본인인증 방식 중 하나를 선택하여<br>본인인증 절차를 거쳐야 하며, 이용자가 자신의 실명으로 본인 인증정차를 거치지<br>않는 경우, 회사에 대하여 일체의 권리를 주장할 수 없습니다.<br>5) 이용희망자가 제2항 또는 제3항에 따라 회원가입 신청한 후. 회사가 이용희망자에게<br>승낙의 의사가 담긴 이메일 또는 서면 기타 회사가 정한 수단으로 통지함으로써<br>서비스 이용계약이 성립합니다.<br>6) 이용자는 본 약관 및 회사의 개인정보 처리방침에서 정한 항목을 제공해야 합니다.<br>제7조 이용신청의 승낙과 제한<br>1. 1) 화사는 전조의 규정에 의한 이용희망자에 대하여 다음 각호의 사유를 모두 충족할<br>경우 회사가 제공하는 절차에 따라 개인회원 가입을 승낙합니다.<br>1. 회사의 업무수행 및 서비스 제공을 위한 설비의 여유&bull;기술상 지장이 없는 경우<br>2. 본 약관에서 정하는 승낙 제한 또는 거절, 보류 사유에 해당하지 않는 경우<br>2) 다음 각 호 중 어느 하나에 해당할 경우, 회사는 이용희망자의 개인회원 가입 신청을 승<br>낙하지 아니하며, 개인회원이 제2호 또는 제3호에 해당하는 행위를 한 경우, 회사는 이에<br>대한 민사상 손해 배상 청구, 관계법령에 따른 형사처벌이나 행정제재를 위한 법적 절차를<br>진행할 수 있습니다.<br>1. 이용희망자가 만 15세 미만인 경우<br>2. 개인회원 가입 신청 및/또는 실명인증 시에 실명이 아닌 이름을 이용하였거나 타<br>인의 명의를 도용한 경우<br>3. 개인회원 가입 신청 시에 개인회원 정보를 허위로 기재한 경우<br>제8조 서비스의 내용<br>1. 1)회사가 제공하는 서비스의 내용은 다음 각호와 같습니다.<br>1.1. 이력서 및 인제 정보 등록 서비스<br>2.2. 온라인 입사지원 서비스<br>3.3. 헤드헌팅/아웃소싱 서비스<br>4.4. 구인/구직과 관연된 제반 서비스<br>5.5. 이용자 간의 교류와 소통에 관련한 서비스<br>6.6. 인적성 검사 서비스(자기진단표)<br>7.7. 이용자 간의 교류와 소통(콘텐츠 공유를 포함)<br>8.8. 자료거래에 관련된 서비스<br>2) 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다. 다만, 서비스의 내용의 추가<br>또는 변경으로 인하여 개인회원의 권리&bull;의무에 중요한 영향을 미치는 경우, 회사는 추가 또<br>는 변경된 서비스 내용을 그 적용일로부터 30일 전에 공지합니다.<br>제9조 개인회원 정보, 이력서의 등록 및 제공<br>1. 1) 개인회원의 이력서는 개인회원이 회원가입 또는 이력서 작성 및 수정 시 의망한 형태로 등<br>록 및 제공됩니다.<br>2. 2) 개인회원은 이력서의 인재정보 등록/미등록 지정, 이력서상의 연락처 공개/비공개를 자유롭<br>게 선택할 수 있습니다.<br>3. 3) 개인회원이 이력서의 인재정보 등록 및 제공을 희망하였을 경우, 회사는 개인회원이 다음 각<br>호의 사항에 대하여 동의한 것으로 보며, 기업회원에게 유료 또는 무료로 이력서 열람 서비스 및/<br>또는 이력서 추천 서비스를 제공할 수 있습니다. 다만, 개인회원이 이력서의 연락처 각 항목을 비<br>공개로 지정하였을 경우, 회사는 비공개로 지정된 항목의 연락처 정보를 제공할 수 없습니다. 이<br>력서 열람 또는 이력서 추천 등에 관한 세부 내용은 개인정보 처리방침 이력서 노출 청책을 확인<br>바랍니다.<br>1. 기업회원의 개인회원 이력서 열람<br>2. 회사가 개인회원 이력서를 기업회원에게 추천<br>4. 4) 회사는 안정적인 서비스를 제공하기 위해 테스트 및 모니터링 용도로 사이트 운영자가 이력<br>서 정보를 열람하도록 할 수 있다.<br>5. 5) 회사는 &ldquo;회원&rdquo;의 자류로운 선택에 의하여 등록 및 제공되는 이력서의 정보를 기준(바탕)으로<br>구직활 데에 보다 유익한 서비스를 제공하기 위하여 이를 개발, 편집, 제구성한 통계 자료로 활<br>용할 수 있다.<br>제10조 제휴를 통한 서비스<br>1. ① 회사는 제휴 관계를 체결한 여타 인터넷 웹 사이트 및 채용박람회 또는 신문, 잡지 등의 오<br>프라인 매체를 통해 사이트에 등록한 회원의 이력서 정보가 열람될 수 있도록 서비스를 제<br>공할 수 있다. 단, 제휴 서비스를 통해 노출되는 이력서의 연락처 정보는 회원이 이력서 등<br>록 시 선택한 연락처 공개 여부에 따라 제공된다.<br>3. ③ 회사는 회원이 공개를 요청한 이력서에 한해 제휴를 맺은 타 사이트에 이력서 정보를 제공<br>한다.<br>제11조 서비스의 요금<br>1. 1) 개인회원 가입과 이력서 등록은 원칙적으로 무료입니다. 다만 기업회원 또는 사이트에 방문<br>한 기업체에게 자신에게 자신의 이력서 정보를 보다 효과적으로 노출시키기 위하여 회사가<br>제공하는 별도의 서비스는 유료로 제공될 수 있습니다.<br>2. 2) 체용공고 및 기업정보 열람은 원칙적으로 무료이나. 일부 정보 또는 서비스는 이용자에게 유<br>료로 제공될 수 있습니다.<br>3. 3) 화사는 유료서비스를 제공할 경우 사이트에 요금에 대해서 공지를 하도록 합니다.<br>4. 4) 회사는 유료서비스 이용금액을 변경할 수 있으며, 이용요금 변경시 변경된 이용요금5내용<br>및 변경 내용 적용일을 명시하여 변경 내용 적용일 7일전 또는 관련 법률에서 정한 기한<br>전까지 개인회원에게 사전 공지합니다.<br>5. 5) 제2항에 따라 공지된 이용요금 변경 내용은 변경 내용 적용일부터 모든 개인회원에게 적용<br>됩니다. 다만, 이용요금 변경 내용 적용일 이전에 체결된 계약금액에 영향을 미치지 않도록<br>합니다.<br>제12조 서비스의 요금 및 결제<br>1 회원 가입은 무료입니다.<br>2. 개인 회원의 이력서 동록은 무료입니다. 다만, 기업회원 또는 사이트에 방문한 기업체에게 자<br>신의 이력서 정보를 보다 효과적으로 노출시키기 위한 방편으로 페이지 사위 노출 등 별도<br>의 서비스는 유로로 제공될 수 있습니다.<br>3. 회사는 유료서비스의 요금 민 상세내용을 사이트에 공지 하여야 합니다.<br>4. 회사는 유료서비스의 요금을 서비스의 종류 및 기간에 따라 회사가 변경할 수 있습니다. 다만,<br>변경 이전에 적용 또는 계약한 금액은 소급하여 적용하지 아니합니다.<br>5. 회원은 유료서비스 이용요금의 지급방법으로 회사가 정한 결제방법 중 하나를 선택할 수 있으<br>면, 결제의 이행을 위하여 필요한 개인정보를 정확하게 입력하여야 합니다.<br>6. 회사는 회원이 결제에 필요한 개인정보를 허위 또는 부정확하게 입력함으로 인하려 발생한 회<br>원의 손해에 대한 책임을 부담하지 않습니다. 단 회사의 고의 또는 중과실에 의한 경우에<br>는 그러하지 아니합니다.<br>제13조 이용요금의 환불<br>1. 1) 화사는 원치적으로 회원이 회사의 서비스 이용규정을 위반한 경우 이용료를 환불하지 않으<br>며, 서비스 이용제한 등의 추가적인 제재조치가 있을 수 있습니다.<br>2. 2) 회사는 다음 각호에 해당하는 경우 이용료를 환불합니다. 단, 본 조제1항에 해당하는 경우<br>회사는 환불에 대한 책임을지지 않습니다.<br>1.1. 유료서비스 이용이 제시죄지 않은 경우<br>2.2. 네트원크 또는 시스템 장애로 의해 서비스 이용이 불가능한 경우<br>3.3. 유료 서비스 신청 후 회원 사정에 의해 서비스가 취소될 경우<br>3) 이용요급을 환불받고자 하는 개인회원은 환불 사유를 명시한 서면으로 회사에 이용요금의 환<br>불을 요청(이하 &ldquo;환불 요청&rdquo;이라 합니다)하여야 합니다.<br>4) 회사는 개인회원으로부터 환불 요청을 받은 날로부터 3영업일 이내에 개인회원의 환불 요청이<br>회사가 정한 환불 요건을 갖추었는지 여부를 판단하여 개인회원에게 그 내용을 통지합니다.<br>5) 개인회원의 환불 요청이 환불 요건에 부합하는 것으로 판단될 경우, 회사는 제4항의 통지일로<br>부터 3영업일 이내에 판매약관에서 정한 금액을 환불합니다.<br>6) 기타 이용요금의 환불 관련 상세 사항은 판매약관에서 정하는 바에 따릅니다.<br>제14조 서비스 이용시간 및 제한<br>1. 1) 회사는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공합니다. 다만, 일부 서비<br>스의 경우 그 종류나 성질을 고려하려 별도로 이용시간을 정할 수 있으며, 회사는 그 이용<br>시간을 개인회원에게 사전 공지합니다.<br>2. 2) 회사는 서비스 개선을 위한 시스템을 업데이트 기타 유지보수 작업 등을 진행하고자 하는<br>경우, 사전에 서비스 중단 시간과 작업 내용을 공지하여 일시적 서비스 중단을 시행할 수<br>있습니다.<br>3. 3) 회사의 성실한 의무 이행에도 불구하고 다음 각 호의 사유로 서비스 중지 등 회원의 손해가<br>발생한 경유, 회사는 그로 인한 책임을 부담하지 않습니다.<br>1.1. 천재지변 또는 이를 비롯한 불가함력으로 인한 손해<br>2.2. 회원의 귀책으로 발생한 손해<br>3.3. 제3자의 고의 또는 과실로 발생한 손해<br>4.4. 기타 회사의 고의 또는 과실 없이 발생한 손해<br>4. 4) 제2항 내지 제3항에 해당하지 않는 사유로 인하여 유료 회원이 입은 손해는 본 약관 및 법<br>령에 따라 배상합니다.<br>제15조 정보의 제동 또는 기타 광도의 게재<br>1. 1) 회사는 회원에게 서비스 이용에 필요가 있다고 인정되거나 서비스 개선 및 회원 대상에 서<br>비스 소개 등의 목적으로 하는 각종 전보에 대해서 전자우편이나 서신우편을 이용한 방법<br>으로 정보를 제공할 수 있습니다.<br>2. 2) 회사는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지 등에 게재할<br>수 있으며, 회원의 메일을 통해 알릴 수 있습니다.<br>3. 3) 회사는 사이트 등에 게재되어 있는 광고주의 홍보활동에 개인회원이 참여하거나 교신 또는<br>거래를 함으로써 발생하는 모든 손실과 손해에 대해 일체의 책임을지지 않습니다.<br>4. 4) 서비스를 이용하는 회원은 서비스 이용시 노출되는 광고 게재에 대해 동의하는 것으로 간주<br>합니다.<br>제16조 자료내용의 책임과 회사의 정보 수정 권한<br>1. 1) 자료라 함은 회원이 서비스를 이용하면서 등록한 채용공고와 이력서 및 사이트에 게시한 게<br>시물 등을 말합니다.<br>2. 2) 회원은 자료 및 게시물을 사실에 근거하여 성실하게 작성해야 하며, 만일 자료의 내용이 사<br>실이 아니거나 부정확하게 작성되어 발생하는 모든 책임은 회원에게 있습니다.<br>3. 3) 모든 자료의 관리와 작성은 회원 본인이 하는 것이 원칙이나 사정상 위탁 또는 대행관리를<br>하더라도 그 내용에 대한 책임은 회원에게 있으며, 회원은 주기적으로 자신의 자료를 확인<br>하여 언제나 항상 정확하게 관리가 되도록 노력해야 합니다.<br>4. 4) 회사는 회원이 등록한 자료에 오자, 탈자 또는 사회적 통념에 어긋나는 문구가 있을 경우 이<br>를 언제든지 수정할 수 있는 권한이 있습니다.<br>5. 5) 회사는 회원이 등록한 자료를 &ldquo;회사&rdquo;가 운영하는 같은 목적의 타 사이트에도 게재할 수 있<br>습니다.<br>6. 6) 회원이 등록한 자료로 인하여 타인(또는 타법인)으로부터 허위사실 및 명예훼손 등으로 삭제<br>요청이 접수된 경우 회사는 회원에게 사전 통지 없이 본 자료를 삭제할 수 있으며, 자료<br>삭제 후 메일 등의 방법으로 회원에게 통지할 수 있습니다.<br>제 17 조 (자료의 저작권 및 활용)<br>1. 1) 회사가 작성한 게시물 또는 저작물에 대한 저작권 및 기타 지적재산권은 회사에 귀속합니다.<br>2. 2) 회원이 사이트 내에 게시한 게시물의 저작권은 회원에게 귀속됩니다. 단, 회원은 자신이 창<br>작, 등록한 게시물에 대해 무상의 비독점적 사용권을 회사에 부여하고, 이 사용권은 회사가 사이<br>트를 운영하는 동안 계속 유효하며, 회원 탈퇴한 후에도 이와 같습니다.<br>3. 3) 게시물에 대한 권리와 책임은 게시물을 게시한 회원에게 있으며, 회사는 회원의 동의 없이<br>이를 회사가 운영하는 사이트 이외에 영리적 목적으로 사용할 수 없습니다. 단, 비영리적인 경우<br>에는 해당되지 않습니다.<br>4. 4) 회원이 입력한 정보는 취업 및 관련 동향의 통계 자료로 활용될 수 있으며, 그 자료 내용은<br>매체를 통해 언론에 배포될 수 있습니다. 단, 활용되는 정보 중 개인을 식별할 수 있는 개인정보<br>는 제외합니다.<br>5. 5) 사이트에서 정당한 절차를 거쳐 기업회원이 열람한 개인 회원의 이력서 정보는 해당 기업의<br>인사 자료이며, 이에 대한 관리 권한은 해당 기업의 정책에 의합니다.<br>제18조 화사의 의무<br>1. 1) 회사는 본 약관에서 정한 내용에 따라 안정적 및 계속적으로 서비스를 제공할 수 있도록 최<br>선을 다하여 노력하고록 하겠습니다.<br>2. 2) 회사는 특별한 사정이 없는 한 회원이 서비스 이용신청 후, 48시간 이내에 서비스를 이용할<br>수 있도록 합니다.<br>3. 3) 회사는 서비스에 관련된 서비를 항상 운용할 수 있는 상태로 유지, 보수하고, 장애가 발생하<br>는 경우 지체 없이 이를 수리 및 복구할 수 있도록 최선의 노력을 다하여야 합니다. 다만,<br>천재지변 등 예측하지 못한 손해는 회사가 책임을지지 않으며, 이 경우 자료의 복구나 정<br>상적인 서비스 지원이 되도록 최선을 다할 의무가 있습니다.<br>4. 4) 서비스의 이용이나 운영과 관된 개인회원의 불만사항이 접수되는 경우, 회사는 이응 지체없<br>이 처리하여 그 결과를 회신할 수 있도록 노력합니다. 다만, 불만사항 내용 확인 및 경위<br>파악, 접수 내용 처리 등에 상당한 시간이 소요될 경우, 회사는 그 사유와 처리일정을 개인<br>회원에게 통지합니다.<br>5. 5) 회사는 유료 결제와 관한 결제 정보를 5년간 본존합니다. 다만, 회원 자격이 없는 회원은 예<br>외로 합니다.<br>제 19조 회원의 의무<br>1. 1) 개인회원은 관계법령과 본 약관의 규정, 회사의 서비스 운영정책 기타 고지된 서비스 이용상<br>의 유의 사항을 준수하여야 하며, 기타 회사의 업무에 지장을 초래하는 행위를 하여서는 아니됩<br>니다.<br>2. 2) 개인회원이 신청한 유료서비스는 등록 또는 신청과 동시에 회사와 채권, 채무 관계가 발생하<br>며, 개인회원은 이용요금을 회사가 지정한 기일 내에 납부하여야 합니다.<br>3. 3) 개인회원이 결데 수단으로 신용카드를 사용할 경우 비밀번호 등의 관리책임은 개인회원에게<br>있습니다. 단, 사이트의 결함에 따른 정보유실의 발생에 대한 책임은 개인회원이 부담하지 않습니<br>다.<br>4. 4) 회원은 회사의 사전승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의<br>결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지 않습니<br>다. 회원은 이와 같은 영업활동으로 회사에 손해를 입힌 경우 회원은 회사에 대하여 손해배상 의<br>무를 부담하여야 합니다.<br>5. 5) 개인회원은 서비스를 이용하여 얻은 정보를 회사의 사전동의 없이 복사, 복제, 번역, 출판,<br>방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없습니다.<br>6. 6) 화원은 본 서비스를 구직 이외의 목적으로 사용할 수 없으며, 다은 각 호의 행위를 하여서는<br>안 됩니다.<br>1.1. 다른 회원의 아이디를 부정 사용하는 행위<br>2.2. 범죄행위를 목적으로 하거나 기타 법죄행위와 관련된 행위<br>3.3. 타인의 명예 훼손하거나 모욕하는 행위<br>4.4. 타인의 지적재산권 등의 권리를 침해하는 행위<br>5.5. 해킹행위 또는 바이러스의 유포 행위<br>6.6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위<br>7.7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위<br>8.8. 그 밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위<br>제20조 회원의 계약 해지/ 서비스 중지/ 자료 삭제<br>1. 1) 개인회원이 서비스 이용계약을 해지하고자 할 경우, 고객센터 또는 &ldquo;개인회원 탈퇴&rdquo; 메뉴를<br>이용해 회사에 대한 해지 신청을 합니다. 회사는 즉시 가입해지(회원탈퇴)에 필요한 조치를 취합<br>니다.<br>2. 2) 개인회원이 서비스 이용계약을 해지한 경우, 회사는 해지 즉시 개인회원의 모든 정보를 파기<br>합니다. 다만, 관련 법령 및 개인정보 처리방침에 따라 회사가 개인회원 정보를 보유할 수 있는<br>경우는 보유 목적에 필요한 최소한의 정보를 보관할 수 있습니다.<br>3. 3) 다음의 사항에 해당하는 경우 회사는 개인회원의 사전 동의를 얻지 않고 서비스 이용 제한,<br>이력서 삭제 조치 또는 개인회원의 자격박탈 등의 조치(이하 &ldquo;회사의 제재조치&rdquo;)를 취할 수 있습<br>니다.<br>1.1. 유료서비스 이용 요금을 납부하지 않았을 때<br>2.2. 제7조 제2항의 각 호 중 어느 하나에 해당하는 행위를 하였을 때<br>3.3. 본 서비스에서 제공되는 정보를 유용하였을 때<br>4.4. 회원이 등록한 게시물 등의 내용이 사실과 다르거나 조작되었을 때<br>5.5. 관련 법규에 위반하거나 선량한 풍속 기타 사회통념상 허용되지 않는 행위를 하였을 때<br>6.6. 기타 본 서비스의 명예를 훼손하였거나 회사가 판단하기에 적합하지 않은 목적으로 회원가입<br>을 하였을 때<br>제21조 손해배상 및 면책<br>1. 1) 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우 서<br>비스 제공에 관한 책임이 면제됩니다.<br>2. 2) 회사는 서비스 이용과 관련하여 회원에게 발생한 손해 가운데 회원의 고의, 과실 및 회원의<br>귀책사유로 인한 서비스 이용의 장애 및 손해에 대하여 책임을 지지 않습니다.<br>3. 3) 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임<br>을 지지 않습니다.<br>4. 4) 회사가 본 약관의 제 18조의 규정에 위반한 행위로 개인회원에게 손해를 입히거나 기타 회<br>사가 제공하는 모든 서비스와 관련하여 회사의 책임 있는 사유로 인해 개인회원에게 손해가 발생<br>한 경우, 회사는 그 손해를 배상하여야 합니다.<br>제22조 회원의 개인정보보호<br>화사는 이용자의 개인정보를 보호하기 위하여 노력하도록 하겠습니다. 회사는 정보통신망 이용<br>촉진 및 정보 보호 동에 관한 법률, 개인정보 보호법을 준수하고, 개인전보 보호를 위하려 사이트<br>등에 개인정보 처리방침을 고지합니다.<br>제23조 분쟁의 해결<br>1. 1) 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해경하기 위하려 필요한 노력을<br>하여야 합니다.<br>2. 2) 정항의 노력에도 불구하고, 분쟁에 대해 소송이 제기될 경우 민사소송법 등 법령에 정한 절<br>차에 따른 법원을 관할 법원으로 합니다.&nbsp;</p>', '2023-06-19 01:54:30', '2023-06-19 01:54:30'),
(193, 'pages', 'slug', 6, 'en', 'js-policy', '2023-06-19 01:54:30', '2023-06-19 01:54:30'),
(194, 'pages', 'title', 5, 'en', 'em-policy', '2023-06-19 01:54:45', '2023-06-19 01:54:45'),
(195, 'pages', 'body', 5, 'en', '<p>기업 가입:<br>제1조: 목적<br>본 약관은 ㈜올댓모델(이하 \"회사\"라 합니다)이 운영하는 웹사이트(이하 \"사이트\"라 합니다) 및 모<br>바일 어플리케이션(이하 \"어플리케이션\"이라 하며, 사이트와 어플리케이션을 총칭하여 \"사이트 등\"<br>이라 합니다)을 통해 서비스를 제공함에 있어 회사와 이용자의 이용조건 및 제반 절차, 기타 필요<br>한 사항을 규정함을 목적으로 합니다.<br>제2조: 용어의 정의<br>본 약관에서 사용하는 용어의 정의는 아래와 같습니다.<br>1. 1) &ldquo;사이트&rdquo;라 함은 회사가 서비스를 이용자에게 제공하기 하여 제작, 운영하는 사이트를 말합<br>니다. 현재 회사가 운영하는 사이트의 접속 주소는 아래와 같습니다.<br>1. (페이지 주소)<br>2.<br>2. 2) &ldquo;서비스&rdquo;라 함은 채용정보, 이력서 및 기업정보 제공 기타의 서비스를 통하여 구직,<br>채용시장에서 구직자와 기업의 연결을 돕는 플랫폼 서비스입니다. 구책적으로는<br>회사가 기업 또는 구직자가 구인, 구직과 교육을 목적으로 등록하는 각종 자료를<br>DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사<br>이트에서 제공하는 모든 부대 서비스를 말한다. 화사가 제공하는 서비스는 유형에<br>따라 무료 또는 유료로 제공합니다. 서비스의 자세한 내용은 제**조에서 정하는 바<br>에 따릅니다.<br>3) &ldquo;이용자&rdquo;라 함은 사이트 등에 접속하여 본 약관에 따라 회사가 제공하는 서비스를 이<br>용하는 회원(기업회원 및 개인회원을 포함) 및 비회원을 말합니다.<br>4) &ldquo;기업회원&rdquo;이라는 함은 채용을 희망하는 기업으로서 본 서비스를 이용하기 위하여 본<br>약관에 동의하고 회사와 이용계약을 체결하여 기업회원 ID를 부여받은 이용자를<br>말합니다. 기업회원은 고용 목적 및 형태에 따라 \"일반 기업회원\", \"파견 및 도급<br>기업회원\", \"헤드헌팅(서칭펌) 기업회원\" 및 \"교육 기업회원\"으로 구분됩니다. 회사<br>는 유료 서비스 구매계약 등에 있어서 기업회원의 분류에 따라 권리의무를 다르게<br>설정할 수 있습니다.<br>5) &ldquo;비회원&rdquo;이라 함은 회사와 서비스 이용계약을 체결하지 않은 채 사이트 등을 통하여<br>회사가 제공하는 서비스를 이용하는 이용자를 말합니다.<br>6) \"ID\" 또는 \"기업회원 ID\"라 함은 기업회원의 식별 및 서비스 이용을 위하여 기업회원<br>이 선정하고 회사가 부여하는 문자와 숫자의 조합을 말합니다.<br>7) \"비밀번호\"라 함은 회사의 서비스를 이용하려는 사람이 기업회원 ID를 부여 받은 자와<br>동일인임을 확인하고 기업회원의 권익을 보호하기 위하여 기업회원이 선정한 문자<br>와 숫자의 조합을 말합니다.<br>제3조 약관의 명시와 개정<br>1. 1) 회사는 이 약관의 내용과 상호, 영업소 소재지, 사업자등록번호, 연락처 등을 이용자가 알 수<br>있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다.<br>2) 회사는 약관의 규제 등에 관한 법률, 정보통신망 이용 촉진 및 정보 보호 등에 관한 법률, 개<br>인정보 보호법, 전기통신기본법, 전기통신사업법 등 관련 법령을 위배하지 않는 범위에서<br>본 약관을 개정할 수 있습니다.<br>3) 회사가 약관을 개정할 경우에는 개정 약관 적용일 최소 7일전(약관의 변경이 개인회<br>원에게 적용일자 7일 전부터 적용일자 전일까지) 공지한다. 단 &ldquo;회원&rdquo;의 권리, 의<br>무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.<br>4) 기업회원은 변경된 약관의 적용을 거부할 권리가 있으며, 변경된 약관이 공지된 지<br>15일 이내에 변경 약관 적용에 대한 거부 의사를 표시할 수 있습니다. 만약, 기업<br>회원이 변경 약관 적용에 대한 거부 의사를 표시하지 않고 서비스를 계속 이용하<br>는 경우, 회사는 기업회원이 변경 약관 적용에 동의하는 것으로 간주합니다.<br>5) 기업회원이 제4항에 따라 변경 약관 적용을 거부할 의사를 표시한 경우, 회사는 기업<br>회원에게 15일의 기간을 정하여 사전 통지 후 해당 기업회원과의 서비스 이용계약<br>또는 별도로 체결된 계약을 해지할 수 있습니다.<br>제4조 약관 외 준칙<br>1. 1) 본 약관에서 규정하지 않는 사항에 관해서는 약관 법률, 정보통신기본법, 전기통신사업법, 정<br>보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.<br>2) 기업회원이 회사와 개별 계약을 체결하여 서비스를 이용할 경우, 기업회원의 서비스 이용과 관<br>련된 권리 의무는 순차적으로 개별 계약, 판매약관, 본 약관에서 정한 내용에 따라 규율됩<br>니다.<br>제5조 기업 회원에 대한 고지, 통지 및 공지<br>① 회사는 기업회원이 회원 가입 신청시 등록한 이메일, 휴대전화 문자메시지 또는 어플리<br>케이션 푸쉬 알림 중 기업회원이 수신에 동의한 수단을 활용하여 기업회원에 대한 각종 고<br>지나 통지를 이행할 수 있습니다.<br>② 기업회원에게 공통적으로 적용되는 내용을 고지 또는 통지할 경우, 회사는 1주일 이상<br>사이트 등의 게시판이나 화면에 일정한 사항을 게시하여 공지함으로써 각 기업회원에 대한<br>개별 고지나 통지를 갈음할 수 있습니다. 다만, 기업회원의 권리&middot;의무에 중대한 영향을 미<br>치는 사항에 대해서는 게시기간을 연장하여 공지합니다.<br>③ 회사는 기업회원에게 서비스 정책, 이용약관, 판매약관, 개인정보 취급방침 등 일체의<br>약관, 서비스 이용 관련 일정한 사항이나 정보를 알리거나 안내할 목적으로 사이트 등의<br>게시판이나 서비스 화면에 그 내용을 게시하거나 제1항에 기재된 수단을 활용하여 공지할<br>수 있습니다.<br>제6조 이용계약의 성립<br>1. 1) 서비스 이용계약은 기업회원 서비스를 이용하고자 하는 자(이하 &ldquo;이용희망자&rdquo;라 합니다)의<br>본 약관과 개인정보 처리방침의 내용에 대한 동의 및 회원 가입 신청에 대하여 회사가 승<br>낙함으로써 성립합니다.<br>2. 2) 회사의 서비스 이용계약(이하: &lsquo;이용약관&rsquo;)은 서비스를 이용하고자 하는 자가 본 약관과 개인<br>정보처리방침을 읽고 &ldquo;동의&rdquo; 또는 &ldquo;획인&rdquo; 버튼을 누른 경우 본 약관에 동의한 것으로 간주<br>한다.<br>3. 3) 제1항의 승낙은 회사가 기업회원 가입 신청자의 본 약관에 대한 동의를 확인하고 승낙의 의<br>사가 담긴 이메일 또는 서면으로 통지함으로써 이루어지고, 이러한 승낙의 통지가 회원 가<br>입 신청자에게 도달하면 서비스 이용계약이 성립합니다.<br>제7조 이용신청 승낙과 제한<br>① 회사는 기업회원 가입 신청을 한 이용희망자에 대하여 다음 각호의 사유를 모두 충족할<br>경우 원칙적으로 접수 순으로 기업회원 가입을 승낙합니다.<br>1. 회사의 업무수행 및 서비스 제공을 위한 설비의 여유&middot;기술상 지장이 없는 경우<br>2. 본 약관에서 정하는 승낙 제한 또는 거절, 보류 사유에 해당하지 않는 경우<br>② 다음 각호 중 어느 사유에 해당하는 경우, 회사는 이용자의 기업회원 가입 신청을 승낙<br>하지 아니합니다. 기업회원 가입 후 해당 사실이 밝혀진 경우, 회사는 해당 기업회원 ID를<br>삭제하거나 기업회원을 강제탈퇴 조치하며, 필요할 경우 관계법령에 따른 형사처벌이나 행<br>정제재를 위한 법률절차를 진행할 수 있습니다.<br>1. 기업회원 가입 신청 시에 타인의 명의를 도용한 경우<br>2. 기업회원 가입 신청 시에 회사명 또는 사업자등록번호를 실제와 다르게 기재하거<br>나 기타 기업회원 정보를 허위로 기재한 경우<br>3. 회사가 제9조에 의거하여 증빙 자료 제출을 요구하였음에도 불구하고 합리적 이<br>유 없이 이에 응하지 아니한 경우<br>4. 증빙 자료를 제출함에 있어 허위의 내용이 기재된 자료, 위조 또는 변조된 자료를<br>제출한 경우<br>5. 회사가 서비스 부정이용 행위에 대한 제재조치를 취하기 전 이를 회피하기 위해<br>탈퇴하였던 경우<br>③ 다음 각 호 중 어느 사유에 해당하는 경우, 회사는 그 사유가 해소될 때까지 이용자의<br>기업회원 가입 신청에 대한 승낙을 유보할 수 있습니다. 다만, 회사는 기업회원 가입 신청<br>을 한 이용자에 대해 그 사유를 회사가 정한 방식으로 통지할 수 있습니다.<br>1. 업무수행 및 서비스 제공을 위한 설비의 여유가 없는 경우<br>2. 업무수행 및 서비스 제공을 위한 기술상 지장이 있는 경우<br>3. 기타 회사의 사정(회사의 귀책사유 있는 경우를 포함)으로 이용 승낙이 곤란한 경<br>우<br>제8조 서비스의 내용<br>1, 1) 회사가 제공하는 서비스의 내용은 다은 각호와 같습니다.<br>1.1. 체용정보 등록과 채용정조 게재 서비스<br>2.2. 온라인 채용관리/ 입사지원 서비스<br>3.3.구인과 관련된 제반 서비스<br>4.4.교육정보 등록과 교육정보 게재 서비스<br>5.5.이용자간의 교류와 소통에 관련한 서비스<br>6.6.학원 임대.매매 정보 게재 서비스 및 관련 서비스<br>7.7.&ldquo;회사&rdquo;가 제휴 계약 등을 통해 &ldquo;회원&rdquo;에게 제공하는 일체의 서비스<br>8.8.리워드 광고 서비스<br>2. 2) 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있습니다. 다만, 서비스의 내용의 추<br>가 또는 변경으로 인하여 회원에게 중요한 영행을 미치는 경우, 회사는 추가 또는 변경된<br>서비스 내용을 그 적용일로부터 30일 전에 공지합니다.<br>제9조 기업 회원 정보, 채용공고등록, 이력서 검색<br>① 기업회원은 구직을 원하는 이용자가 채용공고를 열람한 후 해당 기업에 대하여 정확히<br>판단할 수 있도록 기업정보를 사실과 다름없이 정확하게 기재하여야 합니다. 기업정보를<br>사실과 다르게 기재한 기업회원은 이로 인하여 발생한 모든 문제에 대하여 전적인 책임을<br>부담하여야 합니다.<br>② 기업회원은 채용절차 공정화에 관한 법률 제4조, 직업안정법 제34조 및 동법 시행령 제<br>34조에 의하여 금지되는 거짓 구인광고 또는 거짓 채용공고(이하 &ldquo;거짓 채용공고&rdquo;라 합니<br>다)를 등록하여서는 아니됩니다. 거짓 채용공고를 등록하거나 거짓 구인 조건을 제시한 기<br>업회원은 채용절차의 공정화에 관한 법률 제16조에 의해 5년 이하의 징역 또는 2천만원<br>이하의 벌금형을 받거나 직업안정법 제47조에 의해 5년 이하의 징역 또는 5천만 원 이하<br>의 벌금형을 받을 수 있습니다. 회사는 거짓 채용공고를 등록한 기업회원을 직권으로 고발<br>할 수 있습니다.<br>③ 제2항에 따라 금지되는 거짓 채용공고는 다음 각 호와 같습니다.<br>1. 구인 또는 채용을 가장하여 아이디어 수집, 사업장 홍보, 물품 판매, 유학 알선,<br>수강생 모집, 직업소개, 부업알선, 자금 모집 등을 행하는 공고<br>2. 작성자가 제시한 직종, 업무내용, 근로조건 등이 실제와 현저히 다른 공고<br>3. 회사명, 담당자 성명, 사무실 연락처 등 구인업체의 중요 정보를 정확하게 기입하<br>지 않았을 경우<br>4. 기타 채용공고의 중요 내용이 사실과 다른 공고<br>④ 기업회원은 남녀 고용 평등과 일, 가정 양립 지원에 관한 법률 제7조에 의거하여 근로<br>자의 모집 및 채용에 있어서 남녀를 차별하여서는 아니됩니다.<br>⑤ 기업회원은 채용공고 등록시 제24조 제2항에서 규정하는 서비스 부정이용행위를 하여<br>서는 아니됩니다.<br>⑥ 기업회원이 등록한 기업정보 및 채용공고가 제2항 내지 제5항을 위반한 것으로 인정될<br>경우, 회사는 제25조 제1항에 따라 해당 공고의 게시를 중단하거나 삭제하는 등의 조치를<br>취할 수 있습니다. 또한, 기업회원은 회사 및 이용자에 대한 관계에서 제2항 내지 제5항의<br>위반으로 발생할 수 있는 민&middot;형사상 책임을 전적으로 부담합니다.<br>⑦ 회사는 기업회원이 등록한 기업정보 및 채용공고를 회사가 정한 방법에 따라 노출시킬<br>수 있으며, 지정된 마감기간이 지난 채용공고를 임의로 마감시킬 수 있습니다.<br>⑧ 기업회원은 유&middot;무료로 사람인 개인회원이 등록한 이력서를 검색할 수 있으며, 회사가 제<br>시하는 별도의 커뮤니케이션 수단을 통하여 개인회원에게 연락을 취할 수 있습니다. 이 때,<br>이력서상 기재된 개인회원의 연락처의 열람 및 연락의 목적은 채용활동에 국한되어야 하며,<br>기업의 영업&middot;마케팅을 위하여 활용하거나 제3자에 대한 개인정보 제공 시에는 정보통신망<br>이용 촉진 및 정보 보호 등 관련 법률, 개인정보 보호법, 직업안정법 위반에 따른 법적 책<br>임을 전적으로 부담합니다.<br>⑨ 회사는 기업회원이 등록된 개인회원의 이력서를 검색하고, 개인회원에게 연락할 수 있<br>는 권한에 적정한 제한을 둘 수 있으며, 기업회원이 적절하지 않은 방법이나 채용활동 이<br>외의 목적으로 개인회원에게 연락하거나 서비스 이용에 불편을 끼친 경우, 기업회원의 채<br>용공고 및 기업정보를 임의로 수정/삭제 등의 조치를 취할 수 있습니다.<br>제10조 제휴를 통한 서비스<br>1. ① 회사는 제휴 관계를 체결한 여타 인터넷 웹 사이트 및 채용박람회 또는 신문, 잡지 등의 오<br>프라인 매체를 통해 사이트에 등록한 회원의 이력서 정보가 열람될 수 있도록 서비스를 제<br>공할 수 있다. 단, 제휴 서비스를 통해 노출되는 이력서의 연락처 정보는 회원이 이력서 등<br>록 시 선택한 연락처 공개 여부에 따라 제공된다.<br>2. 2) 회사는 본 조의 ①항과 관련하여 제휴를 통해 타사이트 및 매체에 등록될 수 있음을 고지하<br>고 \"기업회원\"이 채용공고 등록시에 각 제휴 사이트별로 제휴 등록에 대한 \"동의\",혹은 \"비<br>동의\"할 수 있도록 선택권을 부여해야 하며, 제휴사이트 전체 목록을 \"사이트\" 내에서 상시<br>열람할 수 있도록 할 의무가 있습니다.<br>3. 3) 회사는 제휴사 정보를 가급적 본 약관에 병시하여야 하며, 본 약관에서 명시하지 못한 제휴<br>사 정보는 각 &ldquo;사이트&rdquo; 별 별도의 제휴사 안내 페이지를 통하여 회원에게 안내하여야 합니<br>다.<br>제11조 서비스의 요금 및 결제<br>1. 1) 기업회원 가입과 이력서 등록은 원칙적으로 무료입니다. 다만, 개인회원 또는 사이트에 방문<br>한 자에게 등록한 채용공고 정보를 보다 효과적으로 노출시키기 위한 방편으로 초기화면<br>노출 및 서브페이지 상위노출, 자중노출 등 별도의 서비스는 유료로 제공될 수 있습니다.<br>2. 2) 회사는 유료서비스의 요금 및 상세내용을 사이트에 공지 하여야 합니다.<br>3. 3) 회사는 유료서비스 이용금액을 변경할 수 있으며, 이용요금 변경시 변경된 이용요금 내용 및<br>변경 내용 적용일을 명시하여 변경 내용 적용일 7일전 또는 관련 법률에서 정한 기한 전까<br>지 개인회원에게 사전 공지합니다.<br>4. 4) 제3항에 따라 공지된 이용요금 변경 내용은 변경 내용 적용일부터 모든 개인회원에게 적용<br>됩니다. 다만, 이용요금 변경 내용 적용일 이전에 체결된 계약금액에 영향을 미치지 않도록<br>합니다.<br>제12조 서비스 요금 환불 및 오류의 조정<br>1. 1) 회사는 원칙적으로 회원이 회사의 서비스 이용규정을 위반하거나 등록제한 광고를 등록하고<br>유료서비스를 신청한 경우 이용료를 환불하지 않으며, 서비스 니용제한 등의 추가적인 제<br>재조치가 있을 수 있습니다.<br>2. 2) 회사는 다음 각호에 해당하는 경우 이용료를 환불합니다. 단, 본 조제1항에 해당하는 경우<br>회사는 환불에 대한 책임을지지 않습니다.<br>1.1. 유료서비스 이용이 제시죄지 않은 경우<br>2.2. 네트원크 또는 시스템 장애로 의해 서비스 이용이 불가능한 경우<br>3.3. 유료 서비스 신청 후 회원 사정에 의해 서비스가 취소될 경우<br>3. 3) 이용료를 환불받고자 하는 회원은 전화로 환불요청을 해야 합니다.<br>4. 4) 회사는 개인회원으로부터 환불 요청을 받은 날로부터 3영업일 이내에 개인회원의 환불 요청<br>이 회사가 정한 환불 요건을 갖추었는지 여부를 판단하여 개인회원에게 그 내용을 통지합<br>니다.<br>5. 5) 본 제 4항에 따른 환불은 영업일기준 3일 이내에 처리합니다. 단, 카드결재, 무통장 입금, 가<br>상계촤 결제 환불의 경우 회사는 영업일 기준 3일 이내 해당 결제 대행사에 환불 요청을<br>하며, 실제 환불은 해장 결제 대행사의 처리일 기분에 따라 처리됩니다.<br>6. 6) 기타 이용요금의 환불 관련 상세 사항은 판매약관에서 정하는 바에 따릅니다.<br>제13조 서비스 이용시간 및 제한<br>1. 1) 회사는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공합니다. 다만, 일부 서비<br>스의 경우 그 종류나 성질을 고려하려 별도로 이용시간을 정할 수 있으며, 회사는 그 이용<br>시간을 개인회원에게 사전 공지합니다.<br>2. 2) 회사는 서비스 업데이트나 정보 가공, 자료의 갱신을 위한 시스템 유지&middot;보수 작업, 시스템<br>장애 해결을 위한 보수작업, 정기 PM 작업, 시스템 교체 작업이 필요하거나 회선 장애 등<br>서비스를 중단할 합리적인 사유가 발생한 경우, 일시적으로 서비스를 중단할 수 있습니다.<br>계획된 작업의 경우 서비스 중단 시간과 작업 내용을 사전에 공지하되, 우발적 장애 발생<br>등 부득이한 사유가 있는 경우에 한하여 그 내용을 사후에 공지할 수 있습니다.<br>3. 3) 회사는 다음 각 호에 해당하는 경우 서비스의 제공을 중지할 수 있습니다<br>1. 1. 설비의 보수 등 회사의 필요에 의해 사전에 기업회원들에게 공지한 경우<br>2. 2. 기간통신사업자가 전기통신서비스 제공을 중지하는 경우<br>3. 3. 기타 불가항력적인 사유에 의해 서비스 제공이 객관적으로 불가능한 경우<br>제14조 정보의 제공 및 광고의 게재<br>1. 1) 회사는 회원에게 서비스 이용에 필요가 있다고 인정되거나 서비스 개선 및 회원 대상에 서<br>비스 소개 등의 목적으로 하는 각종 전보에 대해사 전자우편이나 서신우편을 이용한 방법<br>으로 정보를 제공할 수 있습니다.<br>2. 2) 회사는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지 등에 게재할<br>수 있으며, 회원의 메일을 통해 알릴 수 있습니다.<br>3. 3) 회사는 사이트 등에 게재되어 있는 광고주의 홍보활동에 개인회원이 참여하거나 교신 또는<br>거래를 함으로써 발생하는 모든 손실과 손해에 대해 일체의 책임을지지 않습니다.<br>4. 4) 서비스를 이용하는 회원은 서비스 이용시 노출되는 광고 게재에 대해 동의 하는 것으로 간<br>주합니다.<br>제15조 자료내용의 책임과 회사의 정보 수정 권한<br>1. 1) 자료라 함은 회원이 서비스를 이용하면서 등록한 채용공고와 이력서 및 사이트에 게시한 게<br>시물 등을 말합니다.<br>2. 2) 회원은 자료 및 게시물을 사실에 근거하여 성실하게 작성해야 하며, 만일 자료의 내용이 사<br>실이 아니거나 부정확하게 작성되어 발생하는 모든 책임은 회원에게 있습니다.<br>3. 3) 모든 자료의 관리와 작성은 회원 본인이 하는 것이 원칙이나 사정상 위탁 또는 대행관리를<br>하더라도 그 내용에 대한 책임은 회원에게 있으며, 회원은 주기적으로 자신의 자료를 확인<br>하여 언제나 항상 정확하게 관리가 되도록 노력해야 합니다.<br>4. 4) 회사는 회원이 등록한 자료에 오자, 탈자 또는 사회적 통념에 어긋나는 문구가 있을 경우 이<br>를 언제든지 수정할 수 있는 권한이 있습니다.<br>5. 5) 회사는 회원이 등록한 자료를 &ldquo;회사&rdquo;가 운영하는 같은 목적의 타 사이트에도 게재할 수 있<br>습니다.<br>6. 6) 회원이 등록한 자료로 인하여 타인(또는 타법인)으로부터 허위사실 및 명예훼손 등으로 삭제<br>요청이 접수된 경우 회사는 회원에게 사전 통지 없이 본 자료를 삭제할 수 있으며, 자료<br>삭제 후 메일 등의 방법으로 회원에게 통지할 수 있습니다.<br>제16조 자료의 저작권 및 활용<br>1. 1) 회사가 작성한 게시물 또는 저작물에 대한 저작권 및 기타 지적재산권은 회사에 귀속합니다.<br>2. 2) 회원이 사이트 내에 게시한 게시물의 저작권은 회원에게 귀속됩니다. 단, 회원은 자신이 창<br>작, 등록한 게시물에 대해 무상의 비독점적 사용권을 회사에 부여하고, 이 사용권은 회사가 사이<br>트를 운영하는 동안 계속 유효하며, 회원 탈퇴한 후에도 이와 같습니다.<br>3. 3) 게시물에 대한 권리와 책임은 게시물을 게시한 회원에게 있으며, 회사는 회원의 동의 없이<br>이를 회사가 운영하는 사이트 이외에 영리적 목적으로 사용할 수 없습니다. 단, 비영리적인 경우<br>에는 해당되지 않습니다.<br>4. 4) 회원이 입력한 정보는 취업 및 관련 동향의 통계 자료로 활용될 수 있으며, 그 자료 내용은<br>매체를 통해 언론에 배포될 수 있습니다. 단, 활용되는 정보 중 개인을 식별할 수 있는 개인정보<br>는 제외합니다.<br>5. 5) 사이트에서 정당한 절차를 거쳐 기업회원이 열람한 개인 회원의 이력서 정보는 해당 기업의<br>인사 자료이며, 이에 대한 관리 권한은 해당 기업의 정책에 의합니다.<br>제17조 회사의 의무<br>1. 1) 회사는 본 약관에서 정한 내용에 따라 안정적 및 계속적으로 서비스를 제공할 수 있도록 최<br>선을 다하여 노력하고록 하겠습니다.<br>2. 2) 회사는 특별한 사정이 없는 한 회원이 서비스 이용신청 후, 48시간 이내에 서비스를 이용할<br>수 있도록 합니다.<br>3. 3) 회사는 서비스에 관련된 서비를 항상 운용할 수 있는 상태로 유지, 보수하고, 장애가 발생하<br>는 경우 지체 없이 이를 수리 및 복구할 수 있도록 최선의 노력을 다하여야 합니다. 다만,<br>천재지변 등 예측하지 못한 손해는 회사가 책임을지지 않으며, 이 경우 자료의 복구나 정<br>상적인 서비스 지원이 되도록 최선을 다할 의무가 있습니다.<br>4. 4) 서비스의 이용이나 운영과 관된 개인회원의 불만사항이 접수되는 경우, 회사는 이응 지체없<br>이 처리하여 그 결과를 회신할 수 있도록 노력합니다. 다만, 불만사항 내용 확인 및 경위<br>파악, 접수 내용 처리 등에 상당한 시간이 소요될 경우, 회사는 그 사유와 처리일정을 개인<br>회원에게 통지합니다.<br>5. 5) 기업회원이 사이트에 등록한 기업정보, 채용공고 등의 내용은 사이트 방문자에게 공개를 원<br>칙으로 하며, 회사는 공개 기간을 지정할 수 있습니다. 단, 일부 비공게 항목은 사이트에서<br>제시하는 별도의 옵션을 통해 지정할 수 있습니다.<br>6. 6) 회원이 등록한 자료로 인하며 사이트의 원활한 운영에 영향을 미친다고 판단될 시, 등록된<br>모든 자료를 회원의 사전 동의 없이 삭제할 수 있습니다.<br>7. 7) 회사는 유료 결제와 관한 결제 정보를 5년간 보존합니다. 다만, 회원 자격이 없는 회원은 예<br>외로 합니다.<br>제18조 회원의 의무<br>1. 1) 기업회원은 관계법령과 본 약관의 규정, 회사의 서비스 운영정책 기타 고지된 서비스 이용상<br>의 유의 사항을 준수하여야 하며, 기타 회사의 업무에 지장을 초래하는 행위를 하여서는<br>아니됩니다.<br>2. 2) 기업회원이 신청한 유료서비스는 등록 또는 신청과 동시에 회사와 채권, 채무 관계가 발생하<br>며, 기업회원은 이용요금을 회사가 지정한 기일 내에 납부하여야 합니다.<br>3. 3) 기업회원이 결제 수단으로 신용카드를 사용할 경우 비밀번호 등의 관리책임은 기업회원에게<br>있습니다. 단, 사이트의 결함에 따른 정보유실의 발생에 대한 책임은 기업회원이 부담하지<br>않습니다.<br>4. 4) 회원은 회사의 사전승낙 없이는 서비스를 이용하여 영업활동을 할 수 없으며, 그 영업활동의<br>결과와 회원이 약관에 위반한 영업활동을 하여 발생한 결과에 대하여 회사는 책임을 지지<br>않습니다. 회원은 이와 같은 영업활동으로 회사에 손해를 입힌 경우 회원은 회사에 대하여<br>손해배상 의무를 부담하여야 합니다.<br>5. 5) 회원은 본 서비스를 건전한 구인 구직 이외의 목적으로 사용해서는 안되면 이용 중 다음 각<br>호의 행위를 해서는 안 됩니다.<br>1.1. 범죄 행위를 목적으로 하거나 기타 범죄행위와 관련된 행위<br>2.2. 회사의 직원이나 관리자를 가장하거나 사칭하여 내용물을 게시, 등록하거나 스팸 또는 불법<br>스팸전송을 위해 메일이나 문자메시지를 발송하는 행위<br>3.3. 타인의 명예 훼손하거나 모욕하는 행위<br>4.4. 타인의 지적재산권 등의 권리를 침해하는 행위<br>5.5. 해킹행위 또는 바이러스의 유포 행위<br>6.6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위<br>7.7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위<br>8.8. 그 밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위<br>6. 6) 회원은 회사를 통해 전달되는 수신거부 요청에 대해서는 즉각적으로 처리하고 24시간 이내<br>에 처리결과를 회사에 회신하여야 하며 본 항의 위반으로 발생하는 모든 민&middot;형사상 책임은 회원<br>이 직접 부담하여야 합니다.<br>7. 7) 회원은 전기통신사업법 제 84조의 2(전화번호의 거짓표시 금지 및 이용자 보호)에 의거 이<br>용자는 회원의 발신번호를 사전에 등록하고 등록된 번호로만 발송해야 합니다.<br>8. 8) 회원은 이용신청서의 기재내용 중 변경된 내용이 있을 경우 해당 절차를 거쳐 그 내용을 회<br>사에 통지하여야 합니다. 만약, 변경된 내용을 통지하지 않아 발생하는 피해에 대하여 회사는 책<br>임지지 않습니다.<br>제19조 회원의 계약 해지/ 서비스 중지/ 자료 삭제<br>1. 1) 기업회원이 서비스 이용계약을 해지하고자 할 경우, 고객센터 또는 &ldquo;기업회원 탈퇴&rdquo; 메뉴를<br>이용해 회사에 대한 해지 신청을 합니다.<br>2. 2) 다음의 각 사항에 해당하는 경우 회사는 회원의 사전 동의 없이 계약 해지하거나 서비스 중<br>지, 자료 삭제 조치를 취할 수 있습니다.<br>1.1. 기업사항이 명확하게 가입되지 않거나 사실과 다르게 조작되어 허위로 등록된 경우<br>2.2. 회원 가입 또는 자료 등록 시 본 서비스에서 안애하는 방법으로 가임하지 않았거나 등록하지<br>않았을 때<br>3. 3) 구인을 가장하여 물품판매, 수강생 모집, 직업소개, 부업알선, 자금 보집 등을 행하는 광고<br>4. 4) 메일이나 문자메시지 수신자가 스챔으로 신고하거나 회원이 발송하는 메시지가 물법스팸임<br>이 판명될 경우<br>5. 5) 회사의 수신거부 요청 처리에 불성실하여 수신거부 요청 건수가 감소되지 않거나 발송금지<br>를 요청한 메시지 내용이 중복적으로 발송될 경우<br>6. 6) 방송통신위원회 또는 한국정보보호진흥원이 불법스팸 전송사실을 확인하여 이용정지를 요청<br>하는 경우<br>7. 7) 미래창조과학부(거짓으로 표시된 전화번호로 인한 이용자 피해 예방에 관한) 고시 제 2015-<br>32호 제10조 제1항에 따라 미래창조과학부 또는 중앙전파관리소,한국인터넷진흥원(KISA)에서 번<br>호 변작등으로 판명되어 이용정지를 요청한 경우<br>8. 8) 회사의 사업이나 사이트, 혹은 서비스의 폐지나 휴지 등으로 서비스 제공이 불가능 할 때.<br>단, 전기통신사업법 제26조 근거하여 예정일 30일 전까지 회원에게 통보하며, 환불 등이 필요한<br>경우에는 본 약관의 제12조에 따라 처리됩니다.<br>제 20 조 손해배상 및 면책<br>1. 1) 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우 서<br>비스 제공에 관한 책임이 면제됩니다.<br>2. 2) 회사는 서비스 이용과 관련하여 회원에게 발생한 손해 가운데 회원의 고의, 과실 및 회원의<br>귀책사유로 인한 서비스 이용의 장애 및 손해에 대하여 책임을 지지 않습니다.<br>3. 3) 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임<br>을 지지 않습니다.<br>4. 4) 회사가 귀책으로 본 약관의 제17조 의 규정에 위반한 행위로 기업회원에게 손해를 입히거나<br>기타 회사가 제공하는 모든 서비스와 관련하여 회사의 책임 있는 사유로 인해 기업회원에게 손해<br>가 발생한 경우, 회사는 그 손해를 배상하여야 합니다.<br>제21조 회원의 개인정보보호<br>화사는 이용자의 개인정보를 보호하기 위하여 노력하도록 하겠습니다. 회사는 정보통신망 이용<br>촉진 및 정보 보호 동에 관한 법률, 개인정보 보호법을 준수하고, 개인전보 보호를 위하려 사이트<br>등에 개인정보 처리방침을 고지합니다.<br>제22조 분재해결<br>1. 1) 회사와 회원은 서비스와 관련하여 발생한 분쟁을 원만하게 해경하기 위하려 필요한 노력을<br>하여야 합니다.<br>2. 2) 정항의 노력에도 불구하고, 분쟁에 대해 소송이 제기될 경우 민사소송법 등 법령에 정한 절<br>차에 따른 법원을 관할 법원으로 합니다.&nbsp;</p>', '2023-06-19 01:54:45', '2023-06-19 01:54:45'),
(196, 'pages', 'slug', 5, 'en', 'em-policy', '2023-06-19 01:54:46', '2023-06-19 01:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `o_a` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_areas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establishment_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representative_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_employees` int DEFAULT NULL,
  `business_information` longtext COLLATE utf8mb4_unicode_ci,
  `sectors` text COLLATE utf8mb4_unicode_ci,
  `company_website_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `take` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Listed_or_not` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `self_introduction` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `birth_date`, `gender`, `phone`, `address`, `language`, `o_a`, `support_areas`, `establishment_date`, `representative_name`, `business_number`, `contact_person_number`, `contact_person_name`, `number_of_employees`, `business_information`, `sectors`, `company_website_address`, `company_type`, `take`, `capital`, `Listed_or_not`, `self_introduction`) VALUES
(2, 1, 'admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$61F5TGcqzyzKIRCadPEhyupTuVVEE2fEmbNXKFJ8OFjQc5dUGzghy', '8FBdQnohHpkVtCicWPRIKwAThS1k35H1k5YYFTTjnTzL6VlYTWhgZHnRZ3GO', NULL, '2023-06-09 12:24:16', '2023-06-09 12:24:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 4, 'js', 'js@test.com', 'avatars/34btC2QNFJ0zkhYwmwAWPZZq5Y78eh4mETxQgGmJ.jpg', NULL, '$2y$10$c48lDfnqmjonM2VSKathYen2f45uRStQTPRFNOTsCrJuzRF3H4jk.', NULL, '{\"locale\":\"en\"}', '2023-06-10 15:49:28', '2023-06-20 09:53:26', NULL, NULL, '+911233', 'r34534', NULL, NULL, 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rtfgsd\nasd\nas\nd\nas'),
(4, 3, 'em', 'em@test.com', 'avatars/1nURwps0SWVKoLDA4O0xIg5nwXz7tlgEXT3fBYcl.webp', NULL, '$2y$10$L0iIYizSI7Jz5VzxaVDJq.XQM6lt0fnOEjiKiAHCAfmDtulHmwTQ6', NULL, '{\"locale\":\"en\"}', '2023-06-10 15:49:45', '2023-06-20 03:11:59', NULL, NULL, NULL, 'address  test', NULL, NULL, NULL, '2023-06-16', 'asdas', '34234', '12312', 'Contact person name ', 12, 'Contact person name ', '3', 'Company.com', 'free', '1', '1', '1', NULL),
(6, 4, 'hosein', 'hajipour.robin@gmail.com', 'users/default.png', NULL, '$2y$10$fjzOZ3c085bzSaQcr.7fJufac.rwOc4Y/FcKmZM/830jgENkFExxS', '4owKmD6vqBzL9OlBnzVPOsDbcXuo65qk9XwAH0TPyNnSf3qpjiALhf9LItNw', NULL, '2023-06-18 20:03:05', '2023-06-18 20:03:05', '2023-06-30 00:00:00', '2', '+98122', 'Jian Guo Lu Jin Di Guo Ji Hua Yuan D1-16a City Area - ChaoYang District, Beijing, 100022', 'en', NULL, 'iran', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self-Introduction \nSelf-Introduction \nSelf-Introduction \nSelf-Introduction '),
(7, 3, 'testcompany', 'testcompany@test.com', 'avatars/fC0vSrFZpVBYZo3TlM5T0J4q8mobNy1KT7VDleiL.jpg', NULL, '$2y$10$DNCfILxatajrl1rVkrZh..4HhstWUcvnK9Dlvp06Vp0.24bWjK7Pu', 'mNkyRsiqS8J9mCla5RGvdKYRDHLGE57U9pMefDsU19ZvIjhVXjGPVEszlx5x', NULL, '2023-06-18 20:07:03', '2023-06-18 20:11:57', NULL, NULL, NULL, 'testcompany', NULL, NULL, NULL, '2023-06-29', 'test', 'test123', 'testcompany1333', 'testcompany1333', 12, 'business information', '12', 'Company.com', 'free', '1', '1', '2', NULL),
(11, 3, 'inflact', 'info@test.com', 'avatars/p7mibpPG2fO3UoLpFy9ua2wBj1idQ8zeJDvQOfxz.webp', NULL, '$2y$10$97k0GK7Hz7cxykrJSnOzA..bbd/27PDYfITS3KXy24sXZP.0p1Ed6', 'XpmnFIN0u1QDl5xI3gIiLDrf5dDaFDNDepAFHUBmadoxJ4eOGIhiH60zNeyh', NULL, '2023-06-20 03:20:34', '2023-06-20 03:20:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'inflact.com', NULL, NULL, NULL, NULL, NULL),
(12, 4, 'new js', 'newjs@test.com', 'avatars/CUnK2rxL1tf0zJjehSNxTJdyN8MkUrL2ZHkADUY3.jpg', NULL, '$2y$10$tzrW/j9tpw2TkZXcgG4V2..NidYR21ow.tsm0inIaLIbpvKjiYwaS', 'EW776xJLmJcArrAniQJlt6QPPbolc26PLFDcf9akmjbANzqIFmgi9sGFRGlx', NULL, '2023-06-20 03:26:19', '2023-06-20 03:26:19', '2023-06-13 00:00:00', '2', NULL, NULL, 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdas'),
(13, 5, 'Operator', 'op@allthatreception.com', 'users/default.png', NULL, '$2y$10$PENmKbfGMTxVC8CaCCQbiOTij.w733Vd0zQa9rA4PNLQ88RMVIvA6', NULL, NULL, '2023-06-21 01:18:34', '2023-06-21 01:18:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 4, 'habibi', 'habibizeinab9@gmail.com', 'avatars/oyFBrtSW8uwDtbAMp0hmuhRyzmLsYFvYazoVd7O8.png', NULL, '$2y$10$So6VDJdfvS6N8xDH5cf8U.D/p/.hKSBs75DYYGX1TaGYoNDAgAK0i', 'tzGA0HZBVIwfCGOkQfZ2BW22Jn494HDSdqXLms8GfktZRa26XSwnYDLtLCxe', NULL, '2023-06-21 12:20:19', '2023-06-21 12:20:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 4, 'asds', 'allthatmodel8@gmail.com', 'avatars/AlxZ38Lb3bNNnma6CboCukbGfcBOwFP9GAT5fbxm.png', NULL, '$2y$10$Ybgv66Rf30zZQkHwURZfQeC/Dor8cbS6l7ZHbpyHbxF7lMEgrUATK', 'OMywTkuets3MKVW6tbyUNFAJMYr9gGrxc9NUqSKO2hGj4w1c2GNg276mbhJZ', NULL, '2023-06-21 12:52:37', '2023-06-21 12:52:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_histories`
--

CREATE TABLE `work_histories` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_start` date DEFAULT NULL,
  `employment_end` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_histories`
--

INSERT INTO `work_histories` (`id`, `user_id`, `company_name`, `company_department`, `salary`, `rank`, `employment_start`, `employment_end`, `created_at`, `updated_at`) VALUES
(1, 3, 'fsdf', 'sdfsdf', 'sdfds', 'sdfsd', '1986-06-06', '2010-06-29', '2023-06-16 17:08:40', '2023-06-16 17:36:31'),
(2, 6, 'sepinod', 'it', '1500', '1', '2023-06-01', '2023-06-23', '2023-06-18 20:03:05', '2023-06-18 20:03:05'),
(3, 9, 'allthatmodel', NULL, NULL, NULL, NULL, NULL, '2023-06-19 01:14:17', '2023-06-19 01:14:17'),
(4, 9, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-19 01:15:04', '2023-06-19 01:15:04'),
(5, 10, 'allthatmodel', 'ㅎ로로ㅗㅌ', '1231345', 'ㅎ로롷ㄹ', '2023-06-21', '2023-06-24', '2023-06-19 01:20:53', '2023-06-19 01:20:53'),
(6, 10, 'ㄹ홓ㅌ롷롵', '쇼ㅗㅅㄱㄴ톯ㅌㅎ츄', '57678657854', 'ㅎㅇ콣토ㅓㅎ로', '2023-06-04', '2023-06-10', '2023-06-19 01:20:53', '2023-06-19 01:20:53'),
(7, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-19 01:26:18', '2023-06-19 01:26:18'),
(8, 12, 'asdas', 'asdas', '4234', 'asdas', '2023-06-21', '2023-06-29', '2023-06-20 03:26:19', '2023-06-20 03:26:19'),
(9, 14, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 12:20:19', '2023-06-21 12:20:19'),
(10, 15, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 12:52:37', '2023-06-21 12:52:37');

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
-- Indexes for table `education_histories`
--
ALTER TABLE `education_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
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
-- Indexes for table `work_histories`
--
ALTER TABLE `work_histories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `education_histories`
--
ALTER TABLE `education_histories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_category`
--
ALTER TABLE `job_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_type`
--
ALTER TABLE `job_type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `spammers`
--
ALTER TABLE `spammers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `work_histories`
--
ALTER TABLE `work_histories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
