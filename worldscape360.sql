-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2018 at 04:18 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `worldscape360`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-05 01:03:20', '2017-12-05 01:03:20', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/worldscape360', 'yes'),
(2, 'home', 'http://localhost/worldscape360', 'yes'),
(3, 'blogname', 'Worldscape 360', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aluk618@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:47:\"show-current-template/show-current-template.php\";i:1;s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:70:\"D:\\xampp\\htdocs\\worldscape360/wp-content/themes/pt-magazine/single.php\";i:1;s:69:\"D:\\xampp\\htdocs\\worldscape360/wp-content/themes/pt-magazine/style.css\";i:2;s:68:\"D:\\xampp\\htdocs\\worldscape360/wp-content/themes/worldscape/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'pt-magazine', 'yes'),
(41, 'stylesheet', 'worldscape', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:20:\"pt-magazine-social-3\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";}s:21:\"home-page-widget-area\";a:4:{i:0;s:34:\"pt-magazine-featured-column-news-2\";i:1;s:29:\"pt-magazine-two-column-news-2\";i:2;s:29:\"pt-magazine-mix-column-news-2\";i:3;s:31:\"pt-magazine-three-column-news-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:15:\"advertisement-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1518483801;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1518483845;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1518484436;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1512436209;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'current_theme', 'Worldscape', 'yes'),
(145, 'theme_mods_worldscape', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"social\";i:0;s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:13;s:13:\"theme_options\";a:1:{s:13:\"site_identity\";s:9:\"logo-only\";}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(147, 'widget_pt-magazine-social', 'a:2:{i:3;a:1:{s:5:\"title\";s:17:\"Follow Worldscape\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'widget_pt-magazine-two-column-news', 'a:2:{i:2;a:7:{s:11:\"first_title\";s:6:\"Sports\";s:14:\"first_category\";i:3;s:12:\"second_title\";s:13:\"Entertainment\";s:15:\"second_category\";i:4;s:13:\"view_all_text\";s:8:\"View All\";s:14:\"excerpt_length\";i:12;s:11:\"post_number\";i:3;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(149, 'widget_pt-magazine-mix-column-news', 'a:2:{i:2;a:6:{s:5:\"title\";s:14:\"Featured stuff\";s:12:\"mix_category\";i:5;s:13:\"view_all_text\";s:0:\"\";s:14:\"excerpt_length\";i:20;s:20:\"excerpt_length_small\";i:12;s:11:\"post_number\";i:3;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(150, 'widget_pt-magazine-three-column-news', 'a:2:{i:2;a:4:{s:5:\"title\";s:13:\"Three columns\";s:14:\"three_category\";i:0;s:13:\"view_all_text\";s:8:\"View All\";s:11:\"post_number\";i:6;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, 'widget_pt-magazine-featured-column-news', 'a:2:{i:2;a:5:{s:5:\"title\";s:8:\"Featured\";s:12:\"mix_category\";i:5;s:13:\"view_all_text\";s:8:\"View All\";s:14:\"excerpt_length\";i:20;s:11:\"post_number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'widget_pt-magazine-tabbed-content', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(153, 'widget_pt-magazine-extended-recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(154, 'widget_pt-magazine-popular-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(166, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(279, 'category_children', 'a:0:{}', 'yes'),
(354, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:17:\"aluk618@gmail.com\";s:7:\"version\";s:5:\"4.9.4\";s:9:\"timestamp\";i:1518200212;}', 'no'),
(360, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1518440645;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}', 'no'),
(363, '_site_transient_timeout_browser_b876c8fd7fc402e60530b64622320f7a', '1518805013', 'no'),
(364, '_site_transient_browser_b876c8fd7fc402e60530b64622320f7a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(377, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1518440646;s:7:\"checked\";a:5:{s:11:\"pt-magazine\";s:5:\"1.0.7\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";s:10:\"worldscape\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(378, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1518440646;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.0.2\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.3.0\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:5:\"1.3.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.3.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.3.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:7:\"default\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/wp-slick-slider-and-image-carousel\";s:4:\"slug\";s:34:\"wp-slick-slider-and-image-carousel\";s:6:\"plugin\";s:60:\"wp-slick-slider-and-image-carousel/wp-slick-image-slider.php\";s:11:\"new_version\";s:5:\"1.3.4\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/wp-slick-slider-and-image-carousel/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/wp-slick-slider-and-image-carousel.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:87:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/icon-128x128.png?rev=1443298\";s:7:\"default\";s:87:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/icon-128x128.png?rev=1443298\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:89:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/banner-772x250.png?rev=1711327\";s:7:\"default\";s:89:\"https://ps.w.org/wp-slick-slider-and-image-carousel/assets/banner-772x250.png?rev=1711327\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(379, '_transient_is_multi_author', '0', 'yes'),
(406, '_site_transient_timeout_theme_roots', '1518442445', 'no'),
(407, '_site_transient_theme_roots', 'a:5:{s:11:\"pt-magazine\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:10:\"worldscape\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1515203718:1'),
(7, 5, '_wp_page_template', 'templates/home.php'),
(8, 8, '_menu_item_type', 'post_type'),
(9, 8, '_menu_item_menu_item_parent', '0'),
(10, 8, '_menu_item_object_id', '5'),
(11, 8, '_menu_item_object', 'page'),
(12, 8, '_menu_item_target', ''),
(13, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(14, 8, '_menu_item_xfn', ''),
(15, 8, '_menu_item_url', ''),
(32, 12, '_wp_attached_file', '2017/12/lHcwDgk_-e1512439419400.jpg'),
(33, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:35:\"2017/12/lHcwDgk_-e1512439419400.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"lHcwDgk_-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"lHcwDgk_-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"pt-magazine-slider\";a:4:{s:4:\"file\";s:20:\"lHcwDgk_-512x455.jpg\";s:5:\"width\";i:512;s:6:\"height\";i:455;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"pt-magazine-featured-full\";a:4:{s:4:\"file\";s:20:\"lHcwDgk_-453x213.jpg\";s:5:\"width\";i:453;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pt-magazine-tall\";a:4:{s:4:\"file\";s:20:\"lHcwDgk_-400x245.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"pt-magazine-thumbnail\";a:4:{s:4:\"file\";s:19:\"lHcwDgk_-105x80.jpg\";s:5:\"width\";i:105;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 12, '_edit_lock', '1512439297:1'),
(35, 12, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:12:\"lHcwDgk_.jpg\";}}'),
(36, 12, '_edit_last', '1'),
(38, 13, '_wp_attached_file', '2017/12/cropped-lHcwDgk_-e1512439419400.jpg'),
(39, 13, '_wp_attachment_context', 'custom-logo'),
(40, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:150;s:4:\"file\";s:43:\"2017/12/cropped-lHcwDgk_-e1512439419400.jpg\";s:5:\"sizes\";a:1:{s:21:\"pt-magazine-thumbnail\";a:4:{s:4:\"file\";s:42:\"cropped-lHcwDgk_-e1512439419400-105x80.jpg\";s:5:\"width\";i:105;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 15, '_edit_last', '1'),
(44, 15, '_edit_lock', '1515114664:1'),
(47, 17, '_edit_last', '1'),
(48, 17, '_edit_lock', '1515114640:1'),
(51, 19, '_edit_last', '1'),
(52, 19, '_edit_lock', '1515114626:1'),
(53, 22, '_edit_last', '1'),
(54, 22, 'wpsisac_slide_link', ''),
(55, 22, '_edit_lock', '1514841190:1'),
(56, 2, '_edit_lock', '1515121998:1'),
(57, 19, '_oembed_7be384802be992af58e957715b0a4234', '{{unknown}}'),
(64, 33, '_wp_attached_file', '2018/01/IMG_4829.png'),
(65, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:20:\"2018/01/IMG_4829.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_4829-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_4829-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_4829-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_4829-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"pt-magazine-slider\";a:4:{s:4:\"file\";s:20:\"IMG_4829-687x455.png\";s:5:\"width\";i:687;s:6:\"height\";i:455;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"pt-magazine-full-slider\";a:4:{s:4:\"file\";s:21:\"IMG_4829-1170x600.png\";s:5:\"width\";i:1170;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"pt-magazine-featured-full\";a:4:{s:4:\"file\";s:20:\"IMG_4829-453x213.png\";s:5:\"width\";i:453;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"pt-magazine-tall\";a:4:{s:4:\"file\";s:20:\"IMG_4829-400x245.png\";s:5:\"width\";i:400;s:6:\"height\";i:245;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"pt-magazine-thumbnail\";a:4:{s:4:\"file\";s:19:\"IMG_4829-105x80.png\";s:5:\"width\";i:105;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 19, '_thumbnail_id', '33'),
(69, 34, '_wp_attached_file', '2017/12/1450x800.png'),
(70, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1450;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2017/12/1450x800.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"1450x800-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"1450x800-300x166.png\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"1450x800-768x424.png\";s:5:\"width\";i:768;s:6:\"height\";i:424;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"1450x800-1024x565.png\";s:5:\"width\";i:1024;s:6:\"height\";i:565;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"pt-magazine-slider\";a:4:{s:4:\"file\";s:20:\"1450x800-687x455.png\";s:5:\"width\";i:687;s:6:\"height\";i:455;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"pt-magazine-full-slider\";a:4:{s:4:\"file\";s:21:\"1450x800-1170x600.png\";s:5:\"width\";i:1170;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"pt-magazine-featured-full\";a:4:{s:4:\"file\";s:20:\"1450x800-453x213.png\";s:5:\"width\";i:453;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"pt-magazine-tall\";a:4:{s:4:\"file\";s:20:\"1450x800-400x245.png\";s:5:\"width\";i:400;s:6:\"height\";i:245;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"pt-magazine-thumbnail\";a:4:{s:4:\"file\";s:19:\"1450x800-105x80.png\";s:5:\"width\";i:105;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 17, '_thumbnail_id', '34'),
(74, 35, '_wp_attached_file', '2017/12/1280x720.png'),
(75, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2017/12/1280x720.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"1280x720-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"1280x720-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"1280x720-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"1280x720-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"pt-magazine-slider\";a:4:{s:4:\"file\";s:20:\"1280x720-687x455.png\";s:5:\"width\";i:687;s:6:\"height\";i:455;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"pt-magazine-full-slider\";a:4:{s:4:\"file\";s:21:\"1280x720-1170x600.png\";s:5:\"width\";i:1170;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"pt-magazine-featured-full\";a:4:{s:4:\"file\";s:20:\"1280x720-453x213.png\";s:5:\"width\";i:453;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"pt-magazine-tall\";a:4:{s:4:\"file\";s:20:\"1280x720-400x245.png\";s:5:\"width\";i:400;s:6:\"height\";i:245;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"pt-magazine-thumbnail\";a:4:{s:4:\"file\";s:19:\"1280x720-105x80.png\";s:5:\"width\";i:105;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 15, '_thumbnail_id', '35'),
(79, 1, '_edit_lock', '1515114675:1'),
(80, 36, '_wp_attached_file', '2017/12/1440x720.png'),
(81, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1440;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2017/12/1440x720.png\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"1440x720-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"1440x720-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"1440x720-768x384.png\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"1440x720-1024x512.png\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"pt-magazine-slider\";a:4:{s:4:\"file\";s:20:\"1440x720-687x455.png\";s:5:\"width\";i:687;s:6:\"height\";i:455;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"pt-magazine-full-slider\";a:4:{s:4:\"file\";s:21:\"1440x720-1170x600.png\";s:5:\"width\";i:1170;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"pt-magazine-featured-full\";a:4:{s:4:\"file\";s:20:\"1440x720-453x213.png\";s:5:\"width\";i:453;s:6:\"height\";i:213;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"pt-magazine-tall\";a:4:{s:4:\"file\";s:20:\"1440x720-400x245.png\";s:5:\"width\";i:400;s:6:\"height\";i:245;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"pt-magazine-thumbnail\";a:4:{s:4:\"file\";s:19:\"1440x720-105x80.png\";s:5:\"width\";i:105;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 1, '_edit_last', '1'),
(83, 1, '_thumbnail_id', '36'),
(86, 38, '_edit_last', '1'),
(87, 38, '_edit_lock', '1515114615:1'),
(88, 39, '_wp_attached_file', '2018/01/1050.jpg'),
(89, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1050;s:4:\"file\";s:16:\"2018/01/1050.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"1050-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"1050-300x164.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:164;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"1050-768x420.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"1050-1024x560.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:560;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"pt-magazine-slider\";a:4:{s:4:\"file\";s:16:\"1050-687x455.jpg\";s:5:\"width\";i:687;s:6:\"height\";i:455;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"pt-magazine-full-slider\";a:4:{s:4:\"file\";s:17:\"1050-1170x600.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"pt-magazine-featured-full\";a:4:{s:4:\"file\";s:16:\"1050-453x213.jpg\";s:5:\"width\";i:453;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"pt-magazine-tall\";a:4:{s:4:\"file\";s:16:\"1050-400x245.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:245;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"pt-magazine-thumbnail\";a:4:{s:4:\"file\";s:15:\"1050-105x80.jpg\";s:5:\"width\";i:105;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 38, '_thumbnail_id', '39'),
(108, 45, '_edit_last', '1'),
(109, 45, '_edit_lock', '1515197874:1'),
(110, 45, '_wp_page_template', 'default'),
(111, 46, '_menu_item_type', 'post_type'),
(112, 46, '_menu_item_menu_item_parent', '0'),
(113, 46, '_menu_item_object_id', '45'),
(114, 46, '_menu_item_object', 'page'),
(115, 46, '_menu_item_target', ''),
(116, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(117, 46, '_menu_item_xfn', ''),
(118, 46, '_menu_item_url', ''),
(119, 48, '_edit_last', '1'),
(120, 48, '_edit_lock', '1515199063:1'),
(121, 48, '_wp_page_template', 'templates/categories.php'),
(122, 49, '_menu_item_type', 'post_type'),
(123, 49, '_menu_item_menu_item_parent', '0'),
(124, 49, '_menu_item_object_id', '48'),
(125, 49, '_menu_item_object', 'page'),
(126, 49, '_menu_item_target', ''),
(127, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 49, '_menu_item_xfn', ''),
(129, 49, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-05 01:03:20', '2017-12-05 01:03:20', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-01-05 01:11:14', '2018-01-05 01:11:14', '', 0, 'http://localhost/worldscape360/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-05 01:03:20', '2017-12-05 01:03:20', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/worldscape360/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-12-05 01:03:20', '2017-12-05 01:03:20', '', 0, 'http://localhost/worldscape360/?page_id=2', 0, 'page', '', 0),
(5, 1, '2017-12-05 01:14:23', '2017-12-05 01:14:23', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-01-05 04:01:43', '2018-01-05 04:01:43', '', 0, 'http://localhost/worldscape360/?page_id=5', 0, 'page', '', 0),
(6, 1, '2017-12-05 01:14:23', '2017-12-05 01:14:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-12-05 01:14:23', '2017-12-05 01:14:23', '', 5, 'http://localhost/worldscape360/2017/12/05/5-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-12-05 01:17:02', '2017-12-05 01:17:02', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2018-01-06 00:41:24', '2018-01-06 00:41:24', '', 0, 'http://localhost/worldscape360/2017/12/05/8/', 1, 'nav_menu_item', '', 0),
(12, 1, '2017-12-05 02:03:29', '2017-12-05 02:03:29', '', 'lHcwDgk_', '', 'inherit', 'open', 'closed', '', 'lhcwdgk_', '', '', '2017-12-05 02:04:00', '2017-12-05 02:04:00', '', 0, 'http://localhost/worldscape360/wp-content/uploads/2017/12/lHcwDgk_.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2017-12-05 02:04:27', '2017-12-05 02:04:27', 'http://localhost/worldscape360/wp-content/uploads/2017/12/cropped-lHcwDgk_-e1512439419400.jpg', 'cropped-lHcwDgk_-e1512439419400.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-lhcwdgk_-e1512439419400-jpg', '', '', '2017-12-05 02:04:27', '2017-12-05 02:04:27', '', 0, 'http://localhost/worldscape360/wp-content/uploads/2017/12/cropped-lHcwDgk_-e1512439419400.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2017-12-05 02:06:57', '2017-12-05 02:06:57', 'Hi i am sample example post text', 'Second example post', '', 'publish', 'open', 'open', '', 'second-example-post', '', '', '2018-01-05 01:11:04', '2018-01-05 01:11:04', '', 0, 'http://localhost/worldscape360/?p=15', 0, 'post', '', 0),
(16, 1, '2017-12-05 02:06:57', '2017-12-05 02:06:57', 'Hi i am sample example post text', 'Second example post', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-12-05 02:06:57', '2017-12-05 02:06:57', '', 15, 'http://localhost/worldscape360/2017/12/05/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-12-05 02:07:28', '2017-12-05 02:07:28', 'More categories of stuff', 'Third post', '', 'publish', 'open', 'open', '', 'third-post', '', '', '2018-01-05 01:10:39', '2018-01-05 01:10:39', '', 0, 'http://localhost/worldscape360/?p=17', 0, 'post', '', 0),
(18, 1, '2017-12-05 02:07:28', '2017-12-05 02:07:28', 'More categories of stuff', 'Third post', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-12-05 02:07:28', '2017-12-05 02:07:28', '', 17, 'http://localhost/worldscape360/2017/12/05/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-12-05 02:08:54', '2017-12-05 02:08:54', '<a href=\"http://placekitten.com/1920/1050\"><img src=\"http://placekitten.com/1920/1050\" width=\"1920\" height=\"1050\" class=\"alignnone size-medium\" /></a>fourth page of content', 'Moar stuff', '', 'publish', 'open', 'open', '', 'moar-stuff', '', '', '2018-01-05 01:10:26', '2018-01-05 01:10:26', '', 0, 'http://localhost/worldscape360/?p=19', 0, 'post', '', 0),
(20, 1, '2017-12-05 02:08:54', '2017-12-05 02:08:54', 'fourth page of content', 'Moar stuff', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-12-05 02:08:54', '2017-12-05 02:08:54', '', 19, 'http://localhost/worldscape360/2017/12/05/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-01-01 21:14:19', '2018-01-01 21:14:19', 'asdfasdfasdf', 'Sample main slide', '', 'publish', 'closed', 'closed', '', 'sample-main-slide', '', '', '2018-01-01 21:15:32', '2018-01-01 21:15:32', '', 0, 'http://localhost/worldscape360/?post_type=slick_slider&#038;p=22', 0, 'slick_slider', '', 0),
(24, 1, '2018-01-01 21:16:56', '2018-01-01 21:16:56', '<div>\r\n<div>[slick-slider]</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-01-01 21:16:56', '2018-01-01 21:16:56', '', 5, 'http://localhost/worldscape360/2018/01/01/5-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-01-01 21:17:40', '2018-01-01 21:17:40', '<div>\r\n<div>[slick-carousel-slider variablewidth=\"true\"]</div>\r\n</div>', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-01-01 21:17:40', '2018-01-01 21:17:40', '', 5, 'http://localhost/worldscape360/2018/01/01/5-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-01-01 21:18:18', '2018-01-01 21:18:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-01-01 21:18:18', '2018-01-01 21:18:18', '', 5, 'http://localhost/worldscape360/2018/01/01/5-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-01-01 21:18:30', '2018-01-01 21:18:30', '[slick-carousel-slider variablewidth=\"true\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-01-01 21:18:30', '2018-01-01 21:18:30', '', 5, 'http://localhost/worldscape360/2018/01/01/5-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-01-01 21:18:45', '2018-01-01 21:18:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-01-01 21:18:45', '2018-01-01 21:18:45', '', 5, 'http://localhost/worldscape360/2018/01/01/5-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-01-01 22:33:48', '2018-01-01 22:33:48', '<a href=\"http://placekitten.com\">http://placekitten.com</a>fourth page of content', 'Moar stuff', '', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2018-01-01 22:33:48', '2018-01-01 22:33:48', '', 19, 'http://localhost/worldscape360/2018/01/01/19-autosave-v1/', 0, 'revision', '', 0),
(30, 1, '2018-01-01 22:33:57', '2018-01-01 22:33:57', '', 'Moar stuff', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-01-01 22:33:57', '2018-01-01 22:33:57', '', 19, 'http://localhost/worldscape360/2018/01/01/19-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-01-01 22:34:12', '2018-01-01 22:34:12', 'fourth page of content', 'Moar stuff', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-01-01 22:34:12', '2018-01-01 22:34:12', '', 19, 'http://localhost/worldscape360/2018/01/01/19-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-01-05 00:24:58', '2018-01-05 00:24:58', '<a href=\"http://placekitten.com/1920/1050\"><img src=\"http://placekitten.com/1920/1050\" width=\"1920\" height=\"1050\" class=\"alignnone size-medium\" /></a>fourth page of content', 'Moar stuff', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-01-05 00:24:58', '2018-01-05 00:24:58', '', 19, 'http://localhost/worldscape360/2018/01/05/19-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-01-05 00:35:22', '2018-01-05 00:35:22', '', 'IMG_4829', '', 'inherit', 'open', 'closed', '', 'img_4829', '', '', '2018-01-05 00:35:22', '2018-01-05 00:35:22', '', 0, 'http://localhost/worldscape360/wp-content/uploads/2018/01/IMG_4829.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-01-05 00:36:29', '2018-01-05 00:36:29', '', '1450x800', '', 'inherit', 'open', 'closed', '', '1450x800', '', '', '2018-01-05 00:36:29', '2018-01-05 00:36:29', '', 17, 'http://localhost/worldscape360/wp-content/uploads/2017/12/1450x800.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-01-05 00:37:48', '2018-01-05 00:37:48', '', '1280x720', '', 'inherit', 'open', 'closed', '', '1280x720', '', '', '2018-01-05 00:37:48', '2018-01-05 00:37:48', '', 15, 'http://localhost/worldscape360/wp-content/uploads/2017/12/1280x720.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2018-01-05 00:38:35', '2018-01-05 00:38:35', '', '1440x720', '', 'inherit', 'open', 'closed', '', '1440x720', '', '', '2018-01-05 00:38:35', '2018-01-05 00:38:35', '', 1, 'http://localhost/worldscape360/wp-content/uploads/2017/12/1440x720.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2018-01-05 00:38:38', '2018-01-05 00:38:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-01-05 00:38:38', '2018-01-05 00:38:38', '', 1, 'http://localhost/worldscape360/2018/01/05/1-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-01-05 00:49:27', '2018-01-05 00:49:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'New Kitten Post', '', 'publish', 'open', 'open', '', 'new-kitten-post', '', '', '2018-01-05 01:10:14', '2018-01-05 01:10:14', '', 0, 'http://localhost/worldscape360/?p=38', 0, 'post', '', 0),
(39, 1, '2018-01-05 00:49:18', '2018-01-05 00:49:18', '', '1050', '', 'inherit', 'open', 'closed', '', '1050', '', '', '2018-01-05 00:49:18', '2018-01-05 00:49:18', '', 38, 'http://localhost/worldscape360/wp-content/uploads/2018/01/1050.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-01-05 00:49:27', '2018-01-05 00:49:27', '<img src=\"http://localhost/worldscape360/wp-content/uploads/2018/01/1050-300x164.jpg\" alt=\"\" width=\"300\" height=\"164\" class=\"alignnone size-medium wp-image-39\" />', 'New Kitten Post', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-01-05 00:49:27', '2018-01-05 00:49:27', '', 38, 'http://localhost/worldscape360/2018/01/05/38-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-01-05 00:49:56', '2018-01-05 00:49:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'New Kitten Post', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-01-05 00:49:56', '2018-01-05 00:49:56', '', 38, 'http://localhost/worldscape360/2018/01/05/38-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-01-05 03:15:34', '2018-01-05 03:15:34', '', 'Sports', '', 'publish', 'closed', 'closed', '', 'sports', '', '', '2018-01-05 03:34:39', '2018-01-05 03:34:39', '', 0, 'http://localhost/worldscape360/?page_id=45', 0, 'page', '', 0),
(46, 1, '2018-01-05 03:15:34', '2018-01-05 03:15:34', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-01-06 00:41:24', '2018-01-06 00:41:24', '', 0, 'http://localhost/worldscape360/2018/01/05/46/', 2, 'nav_menu_item', '', 0),
(47, 1, '2018-01-05 03:15:34', '2018-01-05 03:15:34', '', 'Sports', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-01-05 03:15:34', '2018-01-05 03:15:34', '', 45, 'http://localhost/worldscape360/2018/01/05/45-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-01-05 23:59:17', '2018-01-05 23:59:17', '', 'Entertainment', '', 'publish', 'closed', 'closed', '', 'entertainment', '', '', '2018-01-06 00:39:54', '2018-01-06 00:39:54', '', 0, 'http://localhost/worldscape360/?page_id=48', 0, 'page', '', 0),
(49, 1, '2018-01-05 23:59:17', '2018-01-05 23:59:17', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2018-01-06 00:41:24', '2018-01-06 00:41:24', '', 0, 'http://localhost/worldscape360/2018/01/05/49/', 3, 'nav_menu_item', '', 0),
(50, 1, '2018-01-05 23:59:17', '2018-01-05 23:59:17', '', 'Entertainment', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-01-05 23:59:17', '2018-01-05 23:59:17', '', 48, 'http://localhost/worldscape360/2018/01/05/48-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-02-09 18:17:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-09 18:17:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/worldscape360/?p=54', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main navigation', 'main-navigation', 0),
(3, 'Sports', 'sports', 0),
(4, 'Entertainment', 'entertainment', 0),
(5, 'Featured', 'featured', 0),
(6, 'Highlighted', 'highlighted', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(8, 2, 0),
(15, 3, 0),
(15, 5, 0),
(17, 3, 0),
(19, 4, 0),
(19, 5, 0),
(38, 5, 0),
(46, 2, 0),
(49, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 4),
(6, 6, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"440d15329b905767b68b91c7f36e72f8fb228c58a11f8d963ace0761bf04824b\";a:4:{s:10:\"expiration\";i:1519409812;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36\";s:5:\"login\";i:1518200212;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '54'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1514841506'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:7:\"slugdiv\";i:2;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BWrdoFdjtPi1mVJlZqLt2XwmRJM3y1.', 'admin', 'aluk618@gmail.com', '', '2017-12-05 01:03:19', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
