-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 12 2019 г., 18:50
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project03_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `project03_commentmeta`
--

CREATE TABLE `project03_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_comments`
--

CREATE TABLE `project03_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `project03_comments`
--

INSERT INTO `project03_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-03-09 08:03:55', '2019-03-09 05:03:55', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `project03_links`
--

CREATE TABLE `project03_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_options`
--

CREATE TABLE `project03_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `project03_options`
--

INSERT INTO `project03_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://project03.loftschool', 'yes'),
(2, 'home', 'http://project03.loftschool', 'yes'),
(3, 'blogname', 'Выпускной проект №3', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'zolotukhinvm@ya.ru', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:22:\"cyr2lat/cyr-to-lat.php\";i:2;s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";i:3;s:14:\"types/wpcf.php\";i:4;s:53:\"wp-custom-taxonomy-image/wp-custom-taxonomy-image.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'project03', 'yes'),
(41, 'stylesheet', 'project03', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:15:\"hicpo_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'project03_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:83:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;s:26:\"wpcf_custom_post_type_view\";b:1;s:26:\"wpcf_custom_post_type_edit\";b:1;s:33:\"wpcf_custom_post_type_edit_others\";b:1;s:25:\"wpcf_custom_taxonomy_view\";b:1;s:25:\"wpcf_custom_taxonomy_edit\";b:1;s:32:\"wpcf_custom_taxonomy_edit_others\";b:1;s:22:\"wpcf_custom_field_view\";b:1;s:22:\"wpcf_custom_field_edit\";b:1;s:29:\"wpcf_custom_field_edit_others\";b:1;s:25:\"wpcf_user_meta_field_view\";b:1;s:25:\"wpcf_user_meta_field_edit\";b:1;s:32:\"wpcf_user_meta_field_edit_others\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:44:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:15:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:23:\"edit_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:7:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:23:\"edit_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:7:{i:1552327435;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1552341837;a:1:{s:24:\"tribe_common_log_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552367035;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1552367045;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1552367047;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1554872918;a:1:{s:25:\"otgs_send_components_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1552157119;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.1\";s:7:\"version\";s:3:\"5.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1552324004;s:15:\"version_checked\";s:3:\"5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1552324006;s:7:\"checked\";a:1:{s:9:\"project03\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_timeout_browser_e0b7751b8040fb7c8de50ddf95d10645', '1552712646', 'no'),
(125, '_site_transient_browser_e0b7751b8040fb7c8de50ddf95d10645', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"64.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, '_site_transient_timeout_php_check_464f4068caea2f8f3edcc5ae59429c65', '1552712647', 'no'),
(127, '_site_transient_php_check_464f4068caea2f8f3edcc5ae59429c65', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:5:\"5.2.4\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(148, 'recently_activated', 'a:2:{s:43:\"the-events-calendar/the-events-calendar.php\";i:1552169070;s:24:\"calendar-event/index.php\";i:1552168978;}', 'yes'),
(155, 'acf_version', '5.7.12', 'yes'),
(158, 'hicpo_ver', '3.1.1', 'yes'),
(179, 'current_theme', 'Project03', 'yes'),
(180, 'theme_mods_project03', 'a:2:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(181, 'theme_switched', '', 'yes'),
(199, 'category_children', 'a:0:{}', 'yes'),
(213, 'widget_total_soft_cal', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(218, 'tribe_events_calendar_options', 'a:4:{s:14:\"schema-version\";s:3:\"3.9\";s:21:\"previous_ecp_versions\";a:1:{i:0;s:1:\"0\";}s:18:\"latest_ecp_version\";s:5:\"4.8.2\";s:27:\"recurring_events_are_hidden\";s:6:\"hidden\";}', 'yes'),
(219, 'widget_tribe-events-list-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(222, 'tribe_last_save_post', '1552169070', 'yes'),
(227, '_transient_timeout_tribe_feature_detection', '1552773850', 'no'),
(228, '_transient_tribe_feature_detection', 'a:1:{s:22:\"supports_async_process\";b:0;}', 'no'),
(229, 'rewrite_rules', 'a:113:{s:8:\"stock/?$\";s:25:\"index.php?post_type=stock\";s:38:\"stock/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=stock&feed=$matches[1]\";s:33:\"stock/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=stock&feed=$matches[1]\";s:25:\"stock/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=stock&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"stock/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"stock/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"stock/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"stock/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"stock/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"stock/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"stock/([^/]+)/embed/?$\";s:38:\"index.php?stock=$matches[1]&embed=true\";s:26:\"stock/([^/]+)/trackback/?$\";s:32:\"index.php?stock=$matches[1]&tb=1\";s:46:\"stock/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?stock=$matches[1]&feed=$matches[2]\";s:41:\"stock/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?stock=$matches[1]&feed=$matches[2]\";s:34:\"stock/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?stock=$matches[1]&paged=$matches[2]\";s:41:\"stock/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?stock=$matches[1]&cpage=$matches[2]\";s:30:\"stock/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?stock=$matches[1]&page=$matches[2]\";s:22:\"stock/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"stock/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"stock/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"stock/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"stock/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"stock/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(240, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1552324006;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.7.12\";s:19:\"akismet/akismet.php\";s:5:\"4.1.1\";s:53:\"wp-custom-taxonomy-image/wp-custom-taxonomy-image.php\";s:5:\"1.0.0\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"3.6.5\";s:9:\"hello.php\";s:5:\"1.7.1\";s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:5:\"3.1.1\";s:14:\"types/wpcf.php\";s:5:\"2.3.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.7.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"wp-custom-taxonomy-image/wp-custom-taxonomy-image.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/wp-custom-taxonomy-image\";s:4:\"slug\";s:24:\"wp-custom-taxonomy-image\";s:6:\"plugin\";s:53:\"wp-custom-taxonomy-image/wp-custom-taxonomy-image.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/wp-custom-taxonomy-image/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wp-custom-taxonomy-image.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/wp-custom-taxonomy-image/assets/icon-128x128.png?rev=1233793\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/wp-custom-taxonomy-image/assets/banner-772x250.png?rev=1228036\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"3.6.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.3.6.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2022835\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2022835\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2022835\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/intuitive-custom-post-order\";s:4:\"slug\";s:27:\"intuitive-custom-post-order\";s:6:\"plugin\";s:59:\"intuitive-custom-post-order/intuitive-custom-post-order.php\";s:11:\"new_version\";s:5:\"3.1.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/intuitive-custom-post-order/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/intuitive-custom-post-order.3.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/intuitive-custom-post-order/assets/icon-256x256.png?rev=1078797\";s:2:\"1x\";s:80:\"https://ps.w.org/intuitive-custom-post-order/assets/icon-128x128.png?rev=1078797\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/intuitive-custom-post-order/assets/banner-1544x500.png?rev=1209666\";s:2:\"1x\";s:82:\"https://ps.w.org/intuitive-custom-post-order/assets/banner-772x250.png?rev=1078755\";}s:11:\"banners_rtl\";a:0:{}}s:14:\"types/wpcf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:19:\"w.org/plugins/types\";s:4:\"slug\";s:5:\"types\";s:6:\"plugin\";s:14:\"types/wpcf.php\";s:11:\"new_version\";s:5:\"2.3.5\";s:3:\"url\";s:36:\"https://wordpress.org/plugins/types/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/types.2.3.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:58:\"https://ps.w.org/types/assets/icon-256x256.png?rev=1625832\";s:2:\"1x\";s:50:\"https://ps.w.org/types/assets/icon.svg?rev=1009056\";s:3:\"svg\";s:50:\"https://ps.w.org/types/assets/icon.svg?rev=1009056\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/types/assets/banner-1544x500.png?rev=1681816\";s:2:\"1x\";s:60:\"https://ps.w.org/types/assets/banner-772x250.png?rev=1681816\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(241, 'WPCF_VERSION', '2.3.5', 'no'),
(242, 'wpcf-version', '2.3.5', 'yes');
INSERT INTO `project03_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(243, 'wp_installer_settings', 'eJzs/elyJFl2Jgj+rhThO2hbDTPchwAcqy+IhQOHu0d40hekAx6RKSUtaIWZAtB0M1NLVTOHIygpwkfo6iG7itMsSlZPyXSxRObHSP2akRkZkcyHiP98gXmFOeu95y5qZh4ZmSS7slhkwM3UVK/e5azf+U55uHf4l93hzu7hoK1mTVfPm7auusGn5eEufrF/OLiZTcb47x3596icl/Rv+iX8sB4NPu0O9x7ypZvz62rzpmlHs7bqus3JYjyvx/X0alGON2fjxVU9xavhPtNyUtGf24eDb05evig2i7PrqvgGfnqCPy1emp8WJ+6nONZZ24wWw/mmuwffgsZxOFi0Y7rw/uHgej6fdYf37uHItpr2Cj/fhavhRavzd9Vtdz4pp+VVNamm83P53d5O+rt75XDYLKbze/jD7p6Oo1vMZk07P5+XV53MUX24bSZv6QD3HmUedNm0i0l3b97M6uEm3Je+gQf+6lfdIUzxrBy+g/HS0/bwabv7e/fv39+Dfz4I1sOtXN84duA1R1U3bOvZvG54arfh57gIw2YyG1fzqpDHbRRXTTMqYGxFOb0t7KIWOCMbRT0djhcj+Kgox10TXvFN0xw3k0nVDqtCZmwLHwevX0/g7jrx93MTfzPbHDbTOazPvcVs3JSj7t7u9s7+ve2HdM3muLlqdja3d7ZmU1rdg8MB7KCqHXyKKwE3xTlr4ef6wUO3fXQS4cVhKMFOhVFNh7e0pPFS4rXB1jySa7NTCptbRjVr62GFg9g5eITXPsDtc+EuPp/fzvjrBzs7D3Gb7mYuOJ9XH+arRhHfuZ5eNvqbn1dlO74t7Pd0Jh7mHlb9clG/L8c0eTQH9x/s7oR7+CC3Zn9ejkab82ZzWLbzz3mD7vy4nMw+vVjcnk+bm8/pJg9R5kyrG9gwONHbh3/JW3wxu2rLUWU+hBdi0cGHbPs+HzMY9n0+yhlZM5x0NJtrXbW71lV7a121v9ZVB2tddX+tqx6sddXDta56tN6srjn5NPt7ohi6eQtfb87bctqNS955cM3uGtfsrXHN/hrXHKxxzf01rnmwxjUP17jm0eprdrfXuGaNed6leX6gStp/uek1IF23t+Z1+2ted7DmdffXvO7Bmtc9XPO6R+tdt7e95nU7a1635nrs7YkuoOsm1agu46Xd2199ycHqS+6vvuTB6kserr7k0cpL9rdXX7Kz+pLd1Zesnt39fbEZb5pmKGZMIO3oIppf0PKgut7X81uwlCZdepXucbRoSrBf8bLNB+l1Kl8uFqPRbSpf6ZqHbFaUw8sJf0BWxYG8Sjkeb9YTNLVI29B87uhrlvV4eA3f4vM3b2Z0xQ7fDvU+K6jd+IO9+IP9+IOD+IP78QcP4g8exh88ij64vx1/EI/0/i4bE2Apvq+rG/5sL/PZfuazg8xn9zOfPch89jDz2aP0swfbmc92Mp9l3uOB7s9504y7ar45Act1XImMICP3wf7qSw5WX3J/9SUPVl/ycPUlj1Ze8nB79SU7qy/ZXX3J6tl9uC8WtajWevjudhOO4Tu2qQ6Wfnt/6bcPln77cOm3j5Z9+2h76bc7S7/dXfrt3tJvl87VI5orFbVgIYL3/p6+uN/3xYO+Lx72ffGo54ud7e3eb3Z6v9nt/Wav95v93m/y7/8r8oNHzc2UnFt1euDjnYeRU4q/2c37pPcjb/D45en6DumDpf7o/Qc7emSXuKN9A/g9+aLyFh/vh27/0Q/9ox/6Rz/0j37oH/3QP/qhf/RD/+iH/tEP/aMf+kc/9I9+6B/90F4/NE6OXoybqz5H9EHkBz6Ga9f3RHdXeaJrJEZ7R/DPzBU9ePTDuaL3t//oif4L8kSX2nk7q63FndXW4s5qW3xntS2+s9oW31lti++stsV3Vtviu6tt8d3Vs8vu5worelf9/CV27+5+ZPeSg9lj97JTuczu3Y0t0t3YIt2NLdK92CLdiy3Svdh23ott573Ydt6Lbee92Hbei0e6l7E/9zL2537G/tzP2J/7GftzP2NH72fs6P2MHb2fsaP3M3b0fuY99ldbiQerrcSD1VbiwWor8WC1lXiw2gY/WG2DH6y2wQ9W2+AHq23wg1Wz22eU/OpXuNRgMj1McG8YiU4l7/eNlv+3iIijGZb5vZ/O74OMNRhP8EdYgQcywRdlVw8LAoK+r9oOvjVTHEwePrD7ZzZdmY1KeNkoY3CfpnKFlVCiFgnNalQdNDW5bYtwVnjGYA0DJL/H8TzwHm9hf9Nwi/minXYGjGvvtVU8nxdgz3bF3C2cUbMFTncLBxpOxgg2/7i56fz3cB5kOXQJh9fl9KqSHbK3ffAIhvPZ9f4X+1u7W/tbO5/dg78/W4y/+JMf/avPxvUXbyrYH/OuuGkbuBesxLAaLWDgo2YK/2eBMWcaF8wBrBuPqLks2mpclV219dk9uMef/Oize3BH95T8MyrYfPWHYlguOrzpuMS3v4ITe1PPh9dVC0e8mFTTRVeM6q6czcCHwOsu22ZSdM2kgu+7Obw/jaHLPnkvfvKz+gM8Fsd/WcJvi6ptm/awOH794sXR2fPXr4q6K6bNvAD/o+azcfzV0Zuj47Onb4rTp2fZh+zyQ673vnhWlbCwVQcf7OFV9NyCHvx8AlP5Hp4t8ojuDed2+K4AO2retJ90xZ3BlwtYuYuqvRrchbebwhxc4CXhy8F/8FnwJrkH8RuWxbyeVM1iXsDy4OsyBPzHV/NPi9NqjvukA1kLs31zXfEVuLGL6xK2VXG9gC+miwmMBNd2Us1LWKpqPHIDiZ5VXoxxf8tawCR2C7kzPRcmVdaq4kmlBajbbk7DzN7U3aWeX9P1iylOBe4AGFJ3282riQxq1TuG93crgT+BY4Gnqymuqjl9APsY3uE9KiJ4LjwJ3xxeDh7xTT0d4VlrZlXLJ41HkZ+UZPxn5gi/dLF/+P7bsh3Rpuuumxu8LU3cGevs4kV5C8vYqeC4wQUa4ghzT8Xn1HD6r+Rg0sOf1N0vF9EgT5uxTgG8DcanyykoSx4ynkj48uIWXn5ctsFe4HBPMWu6eXTLN9XETesLnB9/ounI0nTrJ+O6m6+eNhJdItLgkOAxp+0D/7ysr1gWJWID9xq8QkcbEAQXPndUXZYgYf3FsCNZLo6yR3rHH+n0mMH/8wOm0XawbcoxCjTYSYvZiHcHbUeWbTgGsUhqkDpwXtzLB3f7wXdNnewWed5XoDzG/MTqw7Ca8bnlcwSr39I2ai/LoZxj0Ed09Fp4VVhnsrvcdMY3fwPTPQSZpjtyOD53avO806N5c10Pr+F2He7Fzg8DTthwuGhpdWFEJOppSPDLxaxLH9bxZi5h1WEHkCwy0h3vUdKWGdfDuR6J9zUODe6MStTr4dOnr+WkrVgg1VqjarO7nQ6vQVvCkvhDdzR6jydqFCzgU5L02R23vY4SORqNZEq/BP0EW2maLoHKuDFtFNyhRh6o7J1WN7AfW1Aw3Rz1upiE4U34aY+r6RU8zNnRwSVvOzxvYL7BTrxBk+A9P5MOvDu9uPag3tzhW0xHKEx4szlJzYL7ywoGBUs3IycgUCHhRhZV+OPpRTf7dD2VePLVCcjPdupOy7y9pdPZwDLCM2nhBucVT13Tng+7bsA6JnztJw2dPDBLZuPyFmaYh+bfUEywAmOg1mhinUf7WI5wTgiO8KTAXoY/Yd93LHZbELl30CooZtez4gGaNoHw1UNgzzMLQDTDz+WYjdCWP5/hcsNAGr6srdgcxd9OZvPbgqEFeDTRLOVjCJP3Jz+iA5XVd0/cmA/dYA+LV81UcAqw5SoQOHDq6zH4GKymWvgNviXoNL6qUxF0ucAzkDyIhkiH2uuoesrG2nswD+ns11NQFfCRHkdc6ctxeVW8fUP76KLil4Mnwn7NrgC6o/DrCzDJYTqMSH6qe4Nvi94Ii8LwF8Nx2XX0CzTB/I9EidMI/uRH/Xo8vp8ZAW7ig629rQ88ApZCMI9X5xOUfudgZPVZBpcluRjFm6enZ/D+vwTFhYY+nTEnAQNbjURnt7gY1bC48AK3JC7zGhUvddeFQ/ATcIKpiOIFbj7jJqkuxpN4BKqURlCVI9z5X9cd+kS992uKzeIphvzcoXPWxjMwa2DSRmjbofx4D1exdkAxaOQyCK/lxojRgCUJT7krjBcu8sM5g/MD9+xZ04vFFduX/KbDBQhfZ8MatYj7tQZzAvUnbpryKt6lXhEk1h4epBlVieJpvIK12LxAY+jnTelOfHizf+PLSbuq+e+Ll2DGFZ+QhfcJ+wgwWPwnCfJJOWPHczTSN6DvMF4JmmB4jYLQTO4a1vEU9iF8ePzk6OwI99HPXjx/9ozM7h5/o/dwHL0vRyXPYFe+15M5nZc1+lJ2yY1dhmcVnIB+RW0f3s1v6QyJ3VeLevqG7THcWG/OXrhTEY3/LZqGsnAni+kvyovaGMkgomKLms8TbTN0xWf4EuWHZtpMbkma8cYEB7ytQa6QZSnfYsgCNz1JST7GFVrRJZzhvM3wAmQZG1v0RqgwFu0Q1c90fKvaGqVGjftyZt/OWDI7qbefW3JQjCim8Yb8jk5S41Pw1WTZOAhCEgs/hW16WX/Q59Ltj0V2gPRphgs8iLyGmJEuygsUwDY64lxsfgV4Y3hCCQICD0c17Xiy8IxftODt0YxfBA9UR6csfvHTRQXzCfq6ApNmOrz1skd/rO9XsLAr7lyikVK8nYICu7qeF2AqwzkHS/EpRyLklhKGACkLO3d0d/UZwj18NZUdLwdflSmHctxGY0UGlok3axIz6VUzR0E9B7v2ZqqLT+ccoxX4MlU1lfCs1W9mV/UOdbSYgfFKB0FsAxjn46oEI7R4vKjHo+io/qK5WHlPMuivxs0Fxod5O4HB2fAhN8KoKC9BrrJUI0ctHO7pvJnNSP9PMULlfXwQd5MaFQVOS4cH8sLEbvTzlcN0MwXmMOgs1Ffkd0+akWiZU54RK4xkL4TWQqTa7ftzlN9ZVOxmgZe4GI/Q8BKrFXULHmzZI8FvP+mWLgBoH3yvr84wmIy2V2mEZb8zX07BRxrCQ+yZt6pYxMrIaXLUMwPctwM0ETHcOAF7sedRbBcGqhr+ms/L4fWEbXESo9c1+BeopnAkuKN7ZlQ1fD0nq5Um8aYiT2duR0wa4HH5Dk/tgH9Uo8zt6lF1UbaDrIzcWxZf6J3B03mJAnwEziVuxleyGXFAbNPKtqWlleAiazIT6ps2LN/Deziz2O2O1SLn6M3LisJCYtWSJ43G6TZOF+zAcgi3dnr2ZiaHaFZOq6yNSroa3JRK11KiV2SzGbkd+ue9u+AoOLKYY/iEoyUU6Aimx5jS1iTQyet9oDEPnb1hxJvdXmtaMJGDIcuhAxscNxP8+7RppoNiHlmbwRbbzW6xfBALTNNy+A429VCnXgR/4HHkAyJBqCV6BdwRkWCnt0KpyZNlM3WS9WFHLjQd4xhM7OLSjsbQqIQgSITW09uXx09ZJaujBgt/Vn2Yg72GBzX3ABwG7LeJ3Pnkcag/QIrxeRP1MZJtM+WoMez/KrQdg6EHcxVGIFDYgN0BDnP1AdwjlFjmwbmBslpnT6HAVBbeRtMLIs91i3Q2hFoblZ0fp9mQOKN1s+juTXHeQI7UU29f5e8V7MNlodTgSPzk1E6M3yJkdfizCTM8lONZ9YXTdj4mnFbKIYTJc2LdSxtU1Ah0iRIxwQ3giq5zAnZJ5I91uITiwBnN3i4UDbQGuJUxfkxOWvF8QoZrTio9/TBHS3RkzqB1EFEBDvHkiJ7nEAUnH2djNMZnMFuwm3LJHn1ZNI0veVLZcpYU5IJigcEs1jxSksJTBxUicc7TyVmwQELkHyq7HJ/3m1/LIYcpWFxgGPRbUlwqdl3+M38jGTk+uKvGaIVQNJBspMXFJpIWYdghcs6d9eQ1/+r7X2OMncIzuDkuRAKy28FPHDWok8TVKYIJkigkzR4lzGn13jc1mBawxnocUNi1YprLi2/Ao/AfMxIt9VyjKXlNNKm7MP06bMaLCanIZwsMCuvCYAS3vgDb6Tb35jat6YNJMNBZAzsw2krHdosfgjPExvTL1+z0uzD14MrlQwsEoMJ8odWcexGvEXzyQCSs9/1EmNCuVW2Bsg3M4GvJh7AzFazYRyRfXRj2J+X7Ujw+jpnyjTkIg0kGsTj0iW7KPumRbv0SQifrp4tmzumMk8V4/Ev6l5wyWEtvPmXvi0cYDV8jsuAQgKP7i9rFZHVg9qLczXK2IuZIyN/z2UOeArPt4Xvyg3D3isOzANly23vmdAsjZRrFuALFGiw7Luc1W2h+JiRqj1PWk2bTyH7+uf5OWXOOXYayc7kiryhMFDAyF0mCioWx3BYv9rf3jV2fC/Dw15Q6QUtcNxtl+ym4w2EijekONKFhVkRdMZjXS1gMtBNJxmdCwANevjTlGHlWLkYFEn3SUSo4t0M/InTVlzx9LEGYN9bhFAHtl2fU4OIsptMKJwmfYh1UVN7TKxjktUhueXv9MD+iNxUaZPy+n1WTL7YmzWf34L8MJsAj+/ZdC6LMpvDAZcRYwA3syNEvFhQSrecYxQBPlWw7vNHiHd2nb25VDMPhpTSh2aHvFU0ir04WI23PMBG+ZEr9tuCl854nh594vQJ7GQbC23rYVvRLupMbVw80Y9GpVYZ7k5K/1YdZ1dYYKcN7osGPUYqmQdMlGyb28Qa2VGEhNTzNC8kmQLyz1ohXe+OK7xwFB5wXvt4mdcuPMJvNi+aDmda2ugSlcI3Thmec5tBItGVzqVHKQLKRJesyDZ0eCQ1akhvlErIS5NMYsw2lULoCYzJhMCQegUvMO59KthHnoeBHcIB8HWxezKX4FI4uXCzG7zZHYCbxjLjRdSszOcapZtse0xqdGLOwiJl3Q5Ns9XLy3UTCiIIb+JENNJS36q5wYroajcBfUjBYLQgW8wxbQGdCAy+UJKbTT04gmY/luC7x45K/aaaV5AIubmmZl0QzKFgn1qNLLKgeoEF4sSIZhowPtr31sM8HKwIooAbTpxJybtRLYuiOtTYuq2pEGoiOLlKFghfeYu2OAwbSFm44hgxyrdjbeojOoI/w2RwMZYXxXkctyJuhO4qhwcf/s9qDNXtMYEe4HpvsmVudR1LXAAhEbOI35m2jsCTe/+gnRz8DuTYeW8QaWrsULKVwF+W4Bf/ksDws4cGQm2du6kAyj7Eag+123mqz2dhFnlDenFNKxVv37JTF8VM7ESgXPSrEy00YPiZbCN7Tq9sDKZBETnxw0Uq4Z7pDXC6pz7JjVCkclWwSJJHSIwQ34qa7cjCpwKvLxGrsyRpK3GXwVXODb6+jAqOJdMjSMeCrXLFUFmUKHl09IkUY7ApUlmCD1Zc+YIi7aoCm+6JLJhYRXGxcDNFwC60SvNeraobQnxexaoyMDnUhxWemyhWdJIeNEQHSdw+dmHk4MYH363JptKnRdg4SfupStfB51aFjTZEJFgkYGrtG4R6Z6lPSLaEapElhPCyt/+vp2XX1ZXNKmaBPUPe1CJhauWYmi8TJWjwOLq+JzihYagytXHv9cXzX6MS60X51dnZy/tXr0zON+eE68tHUHxAd86Id98x9HjbHJwi2z3k94uNySalKfTR+o2INLtlgN0LlHJ8vkW5llzESLJKqXfgMI7jAQaKe5LUAdXmJFWDpcpJuLuCP6XyzgoHcqbautgRANgNX57oUF0yjzLwafHfRnnMwju8mh8QoiuKiYfuFI6kln7iunoALd1kjhOG6BkWbC8hvbz3oU4dLgKUi6lxu16Bt/L4VdIY3sTF4v7i6FgQ5zRBsONyJXjg53bZGhiDn3kpA45uT4nSBsIRjsHEyOFCxAJMcgeJUv8ZKMAf6cqt3jXB/xunxU+AE4xzeXwWb5TheA6Z0PalcOqCLAxuEE4GTLCemDlDcbvDj6n0J2x1eDBSKmKHstHMcji2WNSP9MFOSJRQxedXiucLcsiZ4peoAJAIc3WHx/EnvfB4vBcBEL5aemgmfGHAFNKMYwOTlaWFgLwjs/m7ZhZw2Z/PnujSGLENYpkbwOB+NZQ3+4vmTUDaR0RdaW+k88pup2vrloh6+IwIDEp3sJNkN4xymOoKs5mYt2pEmIRVbswgiwFelA4Jh0xPF4XbFZ7DdH8CG70FtOwcBa2wX6OVyNI4dhYtqflMpcBZn6ujsaXynVz4tSkvccnzo4pYqefy+78nBwXWXNUehvSdafSgR6KIhJZk2jECXOCgQQwRRzN/R+Z+MjhVvwERpnDa5JMDFdJMM3rqDKZ0bUGogc+9/RBqIEhuCiCXDgaJCmtRgJE5RXxZtecPQB58U6EgrNlkrUCIbWLIFekdDQjDqZnr1BUFzx925HqRzrDqBMcrXmva4bpp3SSCYcF8zl9chUycSc26olHX31uq6eSeKczmjHfYnBeEFGcEppNydcLhSqEGijhM0hIqqMAjbtBqfUpQUaffcrUL9og6vTTa01RWmS1vGPzTvapdcGZaItHXFIiy58QO8VTZ9Y+/LUEIRdJqM+YhUQK9TGK2RDSOTqqZy1pLGE8Z34E5o1KKg4nchx14d9BRr4LSFz40EiO6D7W0rgh1cn20hOC4djy+opr1uZpmaKhPcDWC1cxtraWItT49lIFqwPT/pXODahBzXLauIXr6eCHAyjAcGAw1zM6t2htXf9i4wpQxWJvXcdHEu0w2JkRzixmMxBIH8isvFlONxcLrOUfCcX9zeuTtIjadjLCSdgpBv2ncK1u7DBweShkd+zknNc8zJnLMEORcwg5M8v/l16fFZznSIkqLwewJkMoAxEipY8SoZMClYHeeUIPpSpIgoDcAiFXf5RUWYDY18UmyOMwVsLLWY527jY/zP151QNYBF6yTXfCG2AB6mv1xUiypKxaI8k2mMK/gU3oc7gizTNlhs5ufwqsTkTx10Zd785tf6G1eg5X6yUprwiZyRZNYckt5u63rOEZpAmVWRqHFvqghTsNdKDqr3CZnQLe4WF5N6LjFxnAVevGMm3qMKgK54oKk/mnWfbuEwb2/VQm9NjULFvDk6o6DDhP16mIk4UC+GYxrruqcrQjdM7eZcuVF8hCRdBjtxMptrcIxxJn4EGqci6L77DebqxjDW0a2AIfpyjVYGpdW2L/xE9K8a7L+2lJh/zRU5GL7FU15cNh4cJjOCU+onWJOKy7IMdpWM2c0mHFek+WUxmWg51eRCB+H/ELLSk52wmQ1FmXmbSeyHmwhuFudHLtjTYddDM8J8xKiuINDb+KLoBnQdh/6oRr+Lbn7CExDlxjsXmNKosSsDmrcEgXLFUywLTdleTy0GmHDvMCXw9rluDFlT7xeUNiEdYXj74ZvWsCsVKc5+xVQqcSKQMjkNlzJ1Kx4QRqaZU4CFRHBcdPyItEMJmjV3QQXiC+LacP2cAPBr8q8o5diFBRMiwq/BZJecEZMaUE7eT5bbnB6p5NJLI0ZXOfhHr+sRiU2UJGPxzKxlx8eE0P3IuMKqHsVaNcfiKg41Uyh2LSmJ8ya73uQzLfY8ZwyyGFQdojvgnG/Uo5gy0tHLDQ9mShBormopWpUXNWgUnlJKcjNiWMY7OHOhBZPlHmiu1IWGwAKh8BUxMCCDwiRRL9G6kIXjd+RCRJarOhOv6z1slm9ONo9fPM86vAfs8MpEeadXPsDwns2+pcatrVDw4R08dstEmUvcI8oADdseZ/ISZoluBpf7YIc4g2EZyWYefUUBSn09dr163i3JaWaDpwJfoHnAWJOKyzh3C2tMCf6PyA1bxAA7OQoEsucVLSqF+gn0h7lOdMuZC/1pyUgT7/FwfNbj4KQAOSf1xQLWFCoMAHfRfs+dj1+/CUC6a5s5tOY95hJPanY3768TvnlMwe55wdAkeHyqRfHptZreHI4CRTRXIAk5VB/t2pvlZSS2RQ3BTMCcTkebIP3Ho7aa5lYsuQ8nzDypjap/IxufY9k0+H7F0w+gZluYyJ2dZZUJGj4jsSRL7IBcsl4uhsAahS1Ij/bw5Z2C++Awyor0jghnkcqKuuInqK2JYURFkaHwoUBAjllE9p+Fglw08/m4mlaa6xXtHYCPLiNZ0uU2Wb4WJ0jwW2oTgRwxBEGoNzgN733jZGJtlXRYSUfnZrTgGtsY6ZJLMUbb5QoLteGkwVDaOaVxLSdIurouiG2Lrpyd8fyJK5TRqISkmulc6zNWZ+iJSeFmdn5FdA6YfVzUo/0B0eg4/MC+z+fQnV7SJNPx/cQFfDfLbtOKQAmSlJK+7TnAurj5Kpj0MAf+TQAgRqoqlBYdZVB9kEZJE+AwddWGLiF4r5IlomrVkoLqiHZYtPTJsWDD2l5Ep4yhzQgVzZQYqzdNmCjgR1ddHfPgFA96Du+gR+7nEsSHsFLz64ZjGedUbHX+spouzp+D3XB4eH4+bzhGceduMYHDITPmbfn35XhRxfPAHkVQOusyGx7UwTwaLnqspwvz/rT/Kc9Adqwv+o/hJcE+WUr40x/PPSOow7CUiJUnTkAzjaq8mZ0uOOYxGc1z+VWyJ3yaJ/AyNW/1i049hkk5y4q2tapgohfLgFu6kGXA6RSLsU7Ma1AgbX2xmAsOjo5RGdhMCEpjUIbZw+5nme2BUgOhF3SSGBpXtlcLVyaR2TgfXXawVsnBsSTayz50UduMk52dhRWR9ELgZx/uk+uVpXCh7oPRhqOTgngfXCMADbkTIMHrbzE4RrFnQqcMBTLihnMsCRN+K2E2UDGCV9zz8R5wIO6xdjTmHcZp4S1iD8ExEg0QXbgJ1mg1oCefkZ+Fs5CZM8xS0GaMeV9KHq2kyKQAlk8fA0S/OcEJuxwvumue05uWGAew8Cl4EFdNiWBxCTfmzXERSQ0F7OFkyK7DObwusYQA9MJ4zFxWC83sCJPBRxuWMO6XRHt4igF2ZEBkmEDsQl9Ul42rfeRVwg0iTKqjRJrg+0ROlotzSM24LxBTyCDHwssLuSKXN2TDp5qCZQADvDeq+A9a2ighgsgEMVjIJidrcFiCBQ8m4XLb+PjjEKkrocTX9Tw0HPNRVRcAIm8hmLNckZy1FAdnQaZvUIzaZjaistrIecLMMx7wzKC1KlIxmRoOYHUeZp/KiNwic7vMvQKLGTZARJCRucliagwyAZxy9owKquBlGIvaZWSwL4CmwAxY8FdIBxJjJTgeZjBvniYl3rrCGJwbqNk+F3CDd1gtR1E5N2AsxTplVhsHsLYkgeLuX9ew1XMvwkaaI9yIiiGYtyUHExWre4njRhFQ0WNUnhKxJEjmp6snNQFTwdDITUFvobk3w/e2Hm19QIuTBUrvW6amqIPgErxR2K7SWG9GaKi08MAho/mR5pKaZ5Ai2voAYotyRxYL6n5HFWJ0OxLDeCYzzzPKqbyoxgQ85pBdI5yDRHIKWji7W3kCCE1EXptCU3Fn8l5PaCiXOeXOm8f/g1QdsF02yZonUTRBw9WNuCfRTslQOmwglzjkYYsbIrepxlpMQjszuGFptYTFk/2i/EBaVbOuaMKzNsWMhLjYLpLaFx6oL83OX/5EIavhHCDWjkrQQuNFNkcEp3ZGSRHLc6SJcUxoZh7lPTRHKpRJ6QV8I31QB9wOrrbIbwVRGZkomPNfPgIma3exCVyCAhSIlGdGTmEcCUsbW0bkIDro0GDRhaoPVsu7TVHhX1r057fWGnkBB6xyBr+uK+8aXUYsxeYCD7M4xM7Nn0pE7x4x29/rFtO27qqt2fUss1bEaRWdUomRSmTU48566+pKtKp8fjpfudBHlBTe9csFSl1XnJHuDgHl18aXldQfMqkuzccFqtIRabs7k9N0/r4EEwAjB5OGa/in5Iq5Y5y1aBZUuCpmrWGoRHYQFxSpQKqAu88cvUkGAC99gCGZ/BJZXLFYY7ZOTLSzkDi6IrsVEdWwZJHVpKhpkjSgPMrFvNkEBSOEh7kMjwU5kqoZsXu6Qnqe2nJn792h6BZpxQLDM/75Eg/wcAZH4FM4X0tjM87DR729/xEsL4mQxalkic6jcYUkwanD+oJTOnApQirGJS+xNnymcW9rb2vfPsG7k7AnnwgYo5ZTHjBTYhOLxczRUm4myI1gcvbWRdxb5zRoAfB65gPJVHcXhFnWgc/bW4PAAHmDJfv8g2AO0zikdXXhNeEe41tmX4ZPifBLz110Kw4A0Bk6fvKKlpmdf+zdQD4r/EEBZwEJaMZIyJZJxPau8QnGQpNQaTMVnqDd7HuBiFlMsYSXwv5sOLJ5HJm1/vg7R4/CmpyPw6MxoNiTGBqDoAB1sCXP7QMYG2a8jomybEDeSPdLcLk/6dXNLhri75dT3cFmXKtLwBGjeCNXdKLVWSH+TjQm0eJ7nFx160AssHMiO3oFnqolhqnZbUClOkBChnkzdVWLWhsajCaLP7zhWk5yLB1TTOH5smnjXOZvtEa4xJ4tx2ETHrI8ZgWUXKMrz3FECvC3LkGbp6ckfwu2MGJMHKx4KcmpC1sL9peCOdxjIaOliQu1iapRVoEsDCNTgBLqF8Unmyfw3FfgayyjUgtEkeGroGj/i9NzpbrtDg9hv0UI9nOuZCHGkHhnCLUBHZ9mjO4DKElkd5/fjl34OZkdOIzKHre0oQPz1DJcxlKKKh8qxZtHrkTCbZtlaUcJmswUwU83FV/NcWbnPNb8xA6e2SSKYwLFXIKQgB5pfHHHpJBo4p9OR+dIun6OS3j+fIThkstbzLZghem8XQznd+4O+qenKxHf9S2sF/IaariTcpkk+XV3swm6BhdCb5bKsZMk9CNYXNpe1HOkEnKh1NVPwr16xUkoUXuBmeJLgDIAwvUhS8nrBCrOZsWFxkmFLsWBg1Rcn30uETMsbXj6uuimNThwPnQWUREOnmSqn6goyplJg4jVOVA7yxJbLuV2QWHrisMa7FbixtQUcHN5iepkJ/uA3hxTrpBwCfHhgKxPQg6iWzIQ2RSpcreZ3z7n7jysOk7w1FMybkPtd7UfjwOdifa90axq32HZV9D6SfTfKdUiBXHQwKaQYAX7a5TKuC49pXM8dkWgkBYg2ejpZNAJIcB7G5U801ZdUoFZn5FdSsmC6IGshR1pAmFwmqsr0bpIQIdnYI6ie+4CK9xiS7cfmpvzKlR2IUnXROZZ+nCl6+VUtCWOSwusKNLqF5IJLrwv1hQxOZEunI1OZAAXl+EPRgyxIo7FaKzqhviUi29twQAxlBKIaZifT8v353jZOV9m+OrhAvdlc/ELOKQf7TNYd80hOexLsDctMNg3LDekYocgZFPsunbF1i1NcN4m95SLSMHvMKv35ojM9tpWaA2Pn2n5VW9TGZNjyNFbhjAEqi0K+C5tRNx5HRJ9mGL/CNzNGL8aV5foS1/X05FWsl7Vc5dW75MZFOYB4Q9DCWAkq94i05ms85DBUs4z1/VzLpx2T/a2tpODsM8J1cKHuQQTcX9iBJNiAVS7xDTNGa4iHt/LakLlcZL/03K37PO5zFVBSoNn43pWPG4+DDQDCKsSdlew0mhSvqsQP2ez+H3untXctOblVWfMMVSSxIxiYreZQt/o7k80+igSl0WYFNJWc2/I9IhglwhUYIXDPIA23t96JKpoXn44J79gwF+dEyl735uSNw0LNW/Ans0CTt2+QZE/z5/GgHzHmMViED9rGrTUnIw69XYxrFw5XqKeIlyiidabPSvcc+ilMU+GW6G+OAAIjxDHskd15C3oJ9EFFFOi6DRmXO9xUnuWrgpXNTO1hWLp70hJ01l5dZecb/AlEbaO2oJyPR46GN1NOdxVozrWjKp8jxTdVAhHh+Qc5EcFW59oxjOfgyiX7FB+6XlK+Zd4NM5xEs8doR8YZgRMVyBqUkAHZ23Ulpcs+OJnKE9RDg3F8ATC4UjZWKdFYngYYNzy8bl82reGkfU7CCEPA6euw9xPBB9EW3fVlhbAsUWlkOAm8pI3T589ffPm6Zse2R8FnF2wue7Oy1+UH+7c7TuYjtnI4zPB9WkdDzrJbdI+/UzTttYsiFvIUtI9WG73t8ZhmS6Mgf3l70GOGz/wlFhY3NUsYcRaQwqj2cIVDUQTVH+wZgVDtqajFMc1d+Z0fuDmCVuTxtiGyTQYtkA4mpjGGlLyVm3OHo1lo/k4/E3K1FrS+xlSrxC/oSGpyPGHfxPIQ5pXZ98wCNbRY3r9NC3u/anG+f703p/idfjFn5pixTWPl7giJtytNoR0XLEHzBSBjiprYAZfglZd8+FKHJU3IyQVYhEHcYE5Ucgt83eJuNUFIKnOiEvVy4B/Zd3ZOqGjI9GWrxpp1Yetjh2dazwAD028aKvyHe+OJA01cNE9kI5cljzAif1JNZ+td5Ror7Do5tckycaBD0wmMacHtdeg60H1tPMLkKXWE8B2vA8OB1IFI/+SprwDbow8J5FJfXsPBwf88f7hABUDdRZ+dDjY3d55tLm9u7n7sNjZx87Q2w/lemnavP8g07T5z/XMfX5/++HDH8sYPjdP34E7YLXOJsiDmxn8RtszYz9xdbk2s1fgT8GarVrYNZttNWvwftuHgwE3d8byGtd4eWVD5QfcwHhajblfuGsOLXMGLz2gytJzucw1jeaBSF/iTVinim74ENsf/17aHVM/9d29Q9Ki0vZu02z8bOvpHZiRtOdL3Hd62U2zTaf3d2CZno7VY8t0lUHphWcA2awWwxpj3yNYF/CQUbwU0v7zWwk0leTDY8+2Ef5frOfHC31yrsMSOyTQrUcldjAsFriU35atVEA2HaqHrR/9aOmgSqxDA4fqt/+xIz3PHhre8ZfoC9cumiDDHta//a9TfBpCdeERcF5++x9BrzTdFliOk4v6t/+QeVO5mGsTRg3iTNqiGoMfsijbuuFnIbX6cFER7ArGAlfic+jfI5glMHJ/+x9RMMKTTvDnv8AAeLOBcydrwYO75dkk4AZ/ggnUH+Wac+/s7h7scXPu3a2d9YsXnKkT9CHgVDeKYqxeVT7M3YMDhIjkKWBKasgNgr+adosMXYnYrVKfVhtXjl1Erj24jS5QDbL0iZqKHLg2jpO6I+hDhdtpTonDQWjSUYhiw+RJZUc9eUx0MfBnErGkeV2nu68dXlAtzMiNdYfJUZQ1RriMIYu8MqZEUzWjjs1Pnj5RkwvNaXXB1AOL7y61stTdBe7YjmJiAzXhTN6hw5YngrIqBUdJ4If85G6v3LQRFxL5HOA34X49N7vtXHMVv/l1hgbJPNTlVpe3nCPT/Pu3HgsemN9B8R4SvxY7Q7fSH2aMJFJknHQRVbbUCOOG48n2IV75JjiJylCUHd5adR8nttqMQ2QBx1FwTC3VVMVweZnArkIBH9DDKTjmI1K5/xR86cQDVUj7WEshqoQw4vxnpvihJTcOdkBagex2oSsh90FzLQ96gWOWhrWDgHjboNP9CuAZRtBeRoMGLGT8w3yEPkpKDZjlEGu3KaQ9YPq3i+bDBtxzMXUV+ytGL4PPP0QAYIjcy6SBMB65am5yS/HgIzBQOTJxTHsojbgBxqK4HrKQRouPKCBOf/pCQxmrIgbai5Uxzkycxo/ipBq3QmwWTPPdzDPdNPHl7q9pA1xihSHVn02H3DJaMcsf5pv9bVPyLW6nHBWh482vwM7gb36t9fFZjiwKvBKxEiJ7Ah//UohUtSmhFoD5VtNXzOS3ir7CiXLdnvCsq6uxnq7f/HrV/rT4gWCmvxd1Aua0QoZ9FuKu3BkN2mxdsmt4jR59g+YmTnlKz9rLddCHhKHA0Yph5YxvsJiva0LZIRYyVxIT1DZ7pgSD1wzkP78awX6YYohDbfENsovxPXGNz6UXOJEeNtOooQEuPea1HQ6Nqr7KnJX4cJ2ycMGuKuCIxrGyNNq3VMW2yyAbFki1WY6Hi7HRQVyC2brye1fZSnOIla2TXMkzDnxdryFmBqoFDUO811LJ2hnTVctOmU4bzy+HkxxikKjsJHDJGPzc8NattCVccVJSTiCYk7Z+Xw5vzyVLz2F2VlJCtSsl4cKY6OnOCqmKTYf1EQ3jLF2KA/LTTFIQqpeIx8azUXs7LDXHSfnMeNEQiIwNcUIklExrQjCyejpboLlfDqvr5iO7VSVFKWzLae2eDENpy5HrVEq4HaeiL6bIFnNX/ZQNnBSYgdZldniyxToBBVCRnEdzUYWlpyOkSOY9xt8E5bAUMXwcUj2EbFil2tJjsMADAyuq0/LRYHB56ithaaeeWOOcmRybeg40hD1WTUGKwtujFjlSLycqwce2mXtICW97kvqyNSdeqis3ATOdqjT2IWRZPf3cnPtq+r4GDYNvmMWueYYCgXkF7XSPT84YnHtdeu75FVTOveVmHFJ2XDyMRuESXgXzZTsXZeLJKqbUnAuxm8y5ExSmqMsLc+WTGlR1xsW1qQR5sEJhfDQe3G/ZDFm2Oq+dY0mrBAmxm6fLnvu1QGb0XnB3D1WsW3a2XU44BOuPX74aRgarGC1hyqQlVSYZ6rzOuKgOaSYEgpKb37UA1LEhZFdSjxeRfMOYNlEI33n59m4cLfk9Qo9DsHWmnJhZplTX5gqFI/7gWVttOms9g2IVNAtMxEzh1uyOSDIHjCExUbdmstPXoN1koRkVk5uRbVDkSDM0JE0vmhECy1sMJ48jLrSX5cjyfxGRJ4N4Hdg9Q7YVbI81gI6hrWj2NBFGrrOlO+fDJRneiII+SvYGQ/0IW4MjXwKR4al3RD+GYeMOnf2As+MuhX6lWomL8qNiqZ4AEIUt1XnzAUE9Sf1obolP4PEqYZonLE1F9KTIPHMiucekdtTThD23MJLf65STllo97x9rBEUH03RuKQPScwRBWaCo/Q68Z/Q7mzkhxMQVVytPKQzN5B37h/y+HpFznkN4VwfuUkWtXTOd7HI4r16Z4LF+uFWc9WiKGhzvV8YsFlOPf6Ql/VbzG6qquuPc+5RLoih4s6oQULeamgD5472+AYtVWWoycAGAC20QGs3r5VUlgrGt72L7YcgAD/jowlpx3jIx04QIfrKota6deh5hrIRlGoVHbDiQ46USHVllSAVGAZWpG0aFm9k51qfyPCBZloZ5aHj9RX5tlQEt5mcrlEtOuRMSHIn2JNy5gmZPYDUkqLTH2WXZYbY96PXBc8VRpCVBziVkfmzXsy2PeZmagmFs1YuYEwh5hFeMbyl+g8NDM4tB2i3O6Jn7apGuiiCJDVggQN/VvHcSmQgqkI2bqd/Tuo8uDg85QZ4HXAb0VYGXxvJ2g0TYTePYLLRZ2AaDKDAXfxNW4MUtg5ZAh2qfb6pD+rlHiTeGA3nLRDUmo569OawsMWjjIyRK4ok2vfY4Q/H9jRPtQZkBvNdW8XzZ8LhF8kjxgxxO09tdU1sVNscS8JS1UFXoxRkFYdW4bEJxggejVtC0kX/ZafAENXHTJvsmQp3vTqzT/FNNKPzYhWtzAsnUkKTREXDuMoaGeLedKXEmPYnVB6TfloGSUrC2kGEjfJqDFd5LdykkBwLiOgaENmtfhczdRQyxNFARPqnO2wbuTMTJiGlriXqGGxBwLfCkuRASh0l1N3fud5ee+6VMpjYEoS3nOIitDmaqdWqNJNxYMkIBg/nkR2lstVV6RgoVn1wEhEUoIWoqecNgg54pLGTrOC6aVR+SAXO5mMV0zpR2Hyffn0/RM+jE1i2lYbomQZEvPQ6M35E+eR/o4GP+CP++mxPxSrouKYq2blqht+xJ8V0QFDpPs1wnOGxBpk5yjvV99ZzWVBO9FAsay7JbyHOTkGjzHAC5kipfYf7VSbjuzrJUq0oWv3OkQ1Jvymojjm6AQNdC81pY27o5UV/gsgzfsUDCtiBiSb987SVVf5GDtUuC+J0TOMgCSWVtS3V9300zpqHlxNenCQ1cyNpHfb0jJrhg0bdXZ7vCde+DC9B2lKGeRFRciqWhsm879iDwoS/iEx8oPJXZdEA4y4HUN0V3flm1GBGlgL+1K1yl0lQKZzPnKC4bAFmCNvMERMvpmbcDsScCv+4SVdg7ORbjgVamVq7GuBxuRYsP/gwd9S9Q9oKw+Owe/Us6ahkfuWcPCeLEDR62AD1WG9oIaP1nL1/EecY1Mo1xOZWZDsfh/pd/aXCKv/qVj1b0wJxyOACtzf6yBUsFPsUmLoz9DYE6zGXU2w0i3oSuJZK2lndd067nkzHXJ9X5+EpPaBZJAyRKzz/pEFav2QjY7wtjy/ai/ue9Nn1nWlpvfuGNf6sMIo8d/Zl6OZCeyQjsLYTXQdNkYZGWJeulS7VaC7WxD75IWoQLi7JTr6GsoMtAbl07hJa+r8aYoyByXQx7hPZe2o1Le01IC2TL8SmjOKOKd6R8Z8MhKaXy9rQJquNbUi/RNXB6oqz8cVfJRpk6/UJzmQyG2UmF84Fmv1ccSIohjasSNc1iJinjjFxVCtm4W0qGLNTWT7mwNiezKnvMaWek0WvVc2lzNnN/v/P7GmjDHqkYUYkKFITV5puT4+wdesWNVCyl2tITp9fvuRMOGWiYYfO1br1xwZSWDm9FxQlcSVIxeboDpNn6zYy7Eaz63iqVbNEnzKRishtuuRTxBS/lFVUmpKxOU6nKkiqu6dd06MT5qDIby82y8sRgtliD/cZJD0Wf0TX92iaBV3i7afCqqkbqUg20l+SitZQJxw0YXi1s4Wnw5uKxu2w1mIyYNqe4EULezpriyBVIRpy16X16JuMalS/tNYYzU22vPXTCrD92dPuBv+q9xQyGhPRW25a35++q23MG0ty5WzCSxVAVFrsSf6SLN4op0hLzVgfhzdVFzdQ0EnGp0bodLiYCH0ufn21mm/HEpWxgKOV9Wr0O4sm9MJHeXZfIPIBp+G5O4R3DGlpnptzNLez0lFOYjyXiBx8TVdFgoxhI1vGrioKpUuSpTRd5sQfFsBqPM28bBraJcotMDPixSyJy2TkF9YZez3/g9IkcMpJg1c3yqp/7hwNG+3+Pop+DYufB4cHO4f5BVPTzaGnRz97uzoP7B/dd3Y9//h+o7Gd5PcsPXvOzt/sIyyr+WEfxg9RRcJ3TA1lC816bE8eAn611wj2UJ8yP651W3Txf8/QAfvbd//LdP3z319/93Xf/23d/892/g//9LwV88Hff/V+K7/4WPvu38OffFN/9j/jxX+N/vvvP+Md//u7fbsI3/wDX//q7v8VP/t13/+fv/oF/+tff/YcN/Oh/hV//DXz81+6O/+W7/wj/+7fwP/+hwEfB//w7+MffZa6Gm2zhx/8FPvyP3/1f+xoH3MHnw2V/wzeB4X33P8E//sPdAm74N9/9zzjcv/vu7+EqfMe/LfgVeAB/x5/K2+nz/4Zf1d0pHM5/KOhx/wmmDabl7+G7/0L/l26Iv/hbfAzf/e/lJn+PH2wU9N54r3+HP/07vlnw1L+BC/5XmnSa8n+HA8WH4mj+N7jo793yFDAn/x7+B+YmHaxbqa1s0dT+o0fbWjTlYJsJCD811L3jKHoMbWKiJESslbgY1Sh2tZffNLgZp7VBdl1RGFw6saeEud8Lvhl3ls6Zz6Sk7E471W67Q21djlB8gWQ43vL1ANg9O9i2rKrnhjRQPA3HuKgWkiihvpZPAVNHFy6ds3mZhSfqwB5Vg7tWw6vhLZOamp2guTEexX5Tn8RXWoIE+z5Em2pMtxI6JbxLgKvkXII8d8UCUBh005MRVMuaYsujiMr75Lnmk1hJU6SaEyQETF0DsBSSEnS+DKiLJvs3v75xtPkOv0h6BhPYLXnBBGLMQpg/qkBPMO1pA+bP2EVBnq3PB/UUS6828aPBF510Rq00vkZcRHhksRr4lhz+Ddy9NDmbdHm0udYp/6iRky+mHDNHJdcXUx3G+P65bQYG7sw2WPeBVJyKi4q7ljYFw0V8/MHxlWeAxlTM3leUiCELWX4/YkaRIRk/CdMgys9m2zrv8oMdGR9RJbawgZHAGkSmhbFc3QQmZkZ9keK4FzAcxD84LAY3Jb+g3QZNO8hu3/XK7xwRFrNASCzhuiIOONqQP3vx/NmzDJFkpiaPGYZc6FSqDaWHCaV/0tYmMVm5BuaThwX2K51lR8zusIl+rHFrUEZ3IuMp5k7R+VoirkyYBPbpJ0U1KWvuPeAa+8YwzR9PL7rZp8tBXi+QVnBYtch2xPHUvsZNFbfU6hR4QOVedVtlW25mZSQxMzPbhkWnY5aq5Gwl72AMBRCHhaCxg0iB6SCCEZm+bqsSxlCGP9m82gHBcDR3bmvQ2ytVzZKlWMaxKnFvTPa56EeQxTFhcBY+Uyb/8ZHyLDAyMd7yTJ3K0ltGNSyuRDG/tk/K7vqiKdtRsMt7bRxPyP4xtzUcJPke5F3F5PMYeptSQMsuPGbN4UXhxGiQxdNJZadsXXMRfMBxQE7GSDrmfT97utrkA4HP7ije7LZDOJ/n1PQkxB+BzY01+hl31mRfmzF1Ua9KmqGye1clKkVTMplwvOaOGehsBZUDJ1qr7uORuo7X0xR0dYvJpGxvcwHxx+ELWInuE1NS8c5QA66eM3FVmXiutzpGA6ceLjnC/0zrr43czBwZHIksWRNweGoJD3sCpPdcjlPnwmqZVPP1B1B8FYh9Hp11ZikdVZtEfYlggTLnXeAruPa2/EaXsB0rIQ/lUNwS2ZruFLW4pBppgMw0jpM9Q9hk7+Bl0x0DHC0twNvwyt3NnIH7ttI9Jvi19bDBW1CM11eTRSbwmwYP36guwYXP5KHXqKnvKuoznrQMuZAZw1DaHSoCxd00F4DqBXJH0Xd/xq7j5sWtNpPhEmzNLOZn4mMKzXXRrLuKAq6jzONts1jpUZyVLaYpRRJMmhFYQGwRcNaamThY7WaHu27peCjnl1lnSYJT+tBpZBItd18+wc7idDOulgh3v0pu7sjAN/UsGZiW98urSaMP4/rycnNa3eCFv/m1Sx+Rr/ebX0vLYlp/Tev32qdH2Bi7YrpILUVKIglwaMSk9qhGT5jL5hQ8qI/q3tfgE50q9tpBJK3HLVoHjBLepGlXByrsWoTckkFzONzzy03XOXdqELmGqzZbXIxRkqYibo3yINnwmELEprfkvJEpv6Ye8N3K++0uaUxqqvIomeWLLH3RjoeXo0i+ZABzfhsO+AnW3ekWFy7ODD6kujHarWp+Y+YkOIBrMAqkFT/X9dX1GP7XeZv9+j9jHeUUnEUCLyEFwGexwoXr7HEpXoG0wZ5gGi+gBhYyKsJLaCxvbEe5QdZAADSpwQS9IBW5OWtmiwDJ3X9AaVqu2mYx0ynJhjTrpAQC25bCyc3vn49gWkj1T5TnZlrNWu3AzLpgPKGtrmDDjlF2MIMc8xAxViu7gT6GBSFlNvH5HMqhO+M0H935Sfm+PKVt7qribOcDchtn2n3g+dNiJ20HYGoOltEmhHXwUgo2HKNYJKCMhoUCD817gsVxXwsBtrt22RRkv1MRsBe3wpRbK4NBj1RRGl1y/2UhAwKJjN9oQ35CQMG7WYq4paiO8uzOi3XM/2v44Dl09/LiVDbF0KS1qgyhkj8/ff7Nz79UEaIJesR12Q6jzXQJiCcDHv5nQOfgnvY7tU032NjlXt9TTEAPzQlGcdN5qGWQ6TS5SymVbaSad6Cba5CPvdGOt8akVfmuVe8nXUG9zNfWCac3JYG8LCcPWsjwSu+qeXIbpPOV5sVpdJD72dfSmFLseo1FXWDqmcu9GXmd9ZpCVcxVYtJ5YUYBeHGoMu60Obsj5+0Ixim47Uskrzd1qoMnDe4mNfkyalbFes+MDlxLVc9FXhAN5k3UQi1Rw2XK0MNOpqTPwoE7aRnYiZrOKgac/ZpVXIY9MGFhXt4Sqxypr3jY87Z/fNJ/XoJ8lCdSTmru/JBTwXECDyH2LmBIwRl2ZZYvonNZg9tpT3v8oWMBdbb58+NyKvUbZFRT7zaCDGH+ttZ1J42Qsx2ikVM9qjC0YEVjW02QER5Mxl90FmOB9Y/DFoQNtSoV1YFzdudnp6d3i/eLMRKMkp6qo4fYyU7U0YnWfzhosCQ+yqm3OhthEkMfTK9HOgAKPBt+KT13aa0gj+TMr2kunGFaznI2jDaGpn3eI2uI2umBxNPdOUCx+NGcNLHCev47KawgDirTIiXG7JqQExaklTgBpSn0+PxnHaGTsJmi1AKenRScSu4Mf3yGHIhH198d6RQcwnevF/P/rniKflRxQsw55JAIfDNckM7aLKHohxkg2T8swbrDORBWH3rVnAeQq1jyQ/NhltuAlV36s1J26nZy0YxzB/8nOP3JEN9U5B+PJJpw7hKFjgTJ9AOop0sayxqnlJzge+oSKwQLyTYUHeXZnhczLcLmcBlPRt8RyoVRCMxPykPxtr2eiG/Z7LtPD4dgrpugXk+T8bXq6BSUZ/a6507nhOiAMhHnAq3NgZPzVudHs9sE99xZK7qeqE22Gp+++vr5m9evXj59dTYoqPldKVl6X2itxV1wrCaLqeQPcUpDadt8uHV4ldq3FkUg5iDSkerilZwtJj/O1QqYOhDZ6pnT9IckmdG42eD1rJrGfLNqxEgkWZJcYr0Jzn95I+vc4yjKY2rTnANkVJCyzdHPl7azvpFT4KKJDD0h2DqFyLS6wVkmWZtg9bBtrVEXgP19aY2E83I38yB1IlyRIUvyOvP6GcfuYM1kU3AcRnWHbg2cbUeHqfCqZoadkmU5PVoDxsHJSNrwuQx8EC7TKl6JfqKP7hs2UUIh67Bwb65N+OVmN6ywcYTjBRXARmizuS5wcyGvFFCY7sOcZcK6wBEjSp6ecUnEHGTmu9f2CmIQXK5MtZSj6mVNfqrGA1Cw+NivDI+L9KltSnUTSeOzTARIG16hXyPmcVQ0nJnNqGStw4wYSXLwOp4/KajTSjmikPmIalhTLftT7AWUU7PGRh+gZeUKushyM3SheQ8oNNEl8p/6Ni5ERwG5pdZ/Msa4gSBbPwEexB2wjD/ViQErin2yQV08YaJqRHeAu1VV78bE3lh3G34PUDxZ959FFJbduy6zRgElZAQXdMvzsUawjWxh6MjnM1isaivwMCygnC+KAWWoRFhElTO17dEicH3YZppbmrCwNd5hPY/VCqfgVkIkR1LxikdtUls0+rGrUY1qmnH3+LKZWXyn01vwCD+E8XPiCGTuGwmDcikbMWjm3IP+9ApcTyX6aJUGmRbTRI2R7hTFxPKbgvqIrdQ9qeJIthBrktyd+l2Gx4sxbGKwbmAPn6rREDZVXW40EDH/fHKOSx8Q8w8vB9yCzJj7YG/pVvSkx6XNu63YEuSC4Vp1nGuwHF+MI90gSUut2Qs8rfCpID35IYoWSARMV/wyLwCjV8/uZAuwZFAKiVp6U1e7pdWv5Jn0sVHF8CLaPa47HNeeBaVlHEIzj1H2K5cMxgkpFWvezTG/YvCO+TFE3oF3dfjtLD4G8/YvHdwKvSypIcuY8/trEmB+D9YY20FP+xS2zeJqKQ49iSNZChnJu/py+KjDbd1pJTXs5gkoO9BsCJAn8ccEOtkkillfO4+m8xnxy7Md1m8eLiH0Wlo9sL+mm5bZC5OSG44mzjkFWlyGdTEj0EkQ91mCHYzww8Hu7pGzUlhnSEQN7zG5rBy8R+6k3AwsZzNZqmVjBSud5RbTGyZEH4ubCJ/fSoyDql+5Sj9MrNSrEig+4ajCuWeYR6DKb1Z60/sfz+jhzUs70mcKJuUq+mglNXc3quDQgkwe3ipXT8TAsYEbR0zdCbN0EBnHSh4OUFjvGZDBKCJfUYqZfrIxSeyRV1q68n+sFuMzvPVhMkYu+7hrNZkXzG5fUSqan4n/z5U6E6Oda32gITQm15RMout6vSVjTgFMH8WkU5qyZC8zBO01QQqEkst0e+ko9D7zpilA7lejW+9tgfKCWZiiO+SBpHKmqMtrf3Q4g/1/xf53xh9gBUunw+NmweSSMGsPWnMZxYApCNba5kg/dp+wi75OKUbsiaGNIklCCyC5qChpzvB7ZmL511oj8vbNiyVT40ITrWPzUhRMTNqLFl32ToosER/EhKxcQo1mpiHDltW1Irm1sbtYw3kGEDcnFmdJTeYrMiQCsEa24CG67WOMsFHo1FsxjCORkGOODmSp5eogQOzP4wh2yfnoBKO0wMAeByrjXZh9ThI+4IinJzlhdcKRLlCH7WwJcdtXklPKtnRwt7SPm1F0UdRX+R40vuGTMvJ7b00ariDQawfhSCXPqLUzKhxmofMtTuNEuiK+LPvH8z4Gjw3dNCTJh+OFxmc+4RDJJxvw1/x2XH2y4fBwGygCYD8MGdantLbcrs9RhnhcKirRn7tkjxmVnI+GoTMoEa7acnbd5VIKFquomjpUzsmNU4YL1lLebjOZJhZy/QQl+Sr/A6zyf7i197FF/nub2zsF/HPvweF2XOT/cHWR/86BKfKXx/+BavxX13D/4HX+Ow8eBc09/6XU/nJF/a5MGPkbqxuHwuy9xCuX9Q1dcstsCf3OffjM1ah/9z9j9frff/c/fvefvvsHrjz/a60QL777t5989z/BJ1h8/tefcKG2d96++7fwwX/S+m4q9N4q6Mb/CxZ0/x0Vjv/Nd/8eK8apYv1v+WH/ha79Nf/wb+E//zcsBMfb0e/wnn+dLQO//2j7gVaBH6yNSgqNBO8K1xPCoEThPFrS06+/LDglviqIvzzDfc3leVSL+AkqNyp+0ehFsrJ9fav20+aHzA1kMCml4emiN+O6Q3y7ljOtCSAy8qbW9ietPpR8Kmkdfp/FDMT2qL/7RBidCHrxzZh/VV0u5n4zt0aPnfzk7GuslVr5w9bAOJBeaAaBekvXngu2rOlLOHLiCsFioXKIPy7JgCVeUEeXE5d+opb1Le4yc7W3br3HG9hcQ58+IJpLHrlUz7PxAxZ9XLDZV+axpH8ns/ZidIsPJiXlnO8SAtXQSMEo4W2zcITzDOfEUAqmDaiVefbdP6bCwxTOmCBWb8EXL2K6tpKhYzMD4yp9dKMMfcJNAJ5IL1U/p5Qk/5p9x+9XFsJBan6+Y7s1ojHOk88rrsu2Z3Qeb2lPA8g35pBDNlvLJqMRV3BuxuO6c569Ts6wnKXoGul7C1sfvaaiXQi3qxkQu8xY6IHFD+QNSKcn5l7eCHPEd8MH6IpW/ckBHCKsHBu6ZrlIN2dX6mAtjyACf4TixItTrf/F0dcjyphwshu7QKCY8AuVLIDTTkpwNUnWE9VYDryqv8z+iERanDPDKWubseAS3MbKg3raSpnW5e6Nj5YLMe4QPNN35mgOThH8kgxGgRDZldjvl4kRAEbQpNxgh8o3TEfRTOBEW12k5QgrhJDAFAf+/ucYPxCis6tqft6VGNU4p1YZ/JVCkXz8R1GvMLLjfEPBvfU7IZYwhcz07M980FvLpfkRYmOtEsk0j+QM6151S2nVWDUK2xzlY7ksr6yMZodQN0NgZ8FwFjPBWEkgB4EP18yU71oQGHgWReTlTZfv0KgtCucvZCOYeRJkrqJsuTdJ0KsrR1TmTpVjgvSOfoY5nNrlcHxo3WMVCyo1IJuEjizYM+uWpcdlAZ8oQx/WNnOjXA/+w3wkbmxaqHNeqO7O3U+WRDeWRVr+WdUs7G/vFYNXcJOjxfwapvZbZGl7So/1ARxnDfNS4B4d8jPo+fu51pZ7a+OKElZnVFWM30eCCnGBqDOkVDzw1u1BcJ1eU+ifxOz1YnIxReBGku6RC0hcZnMmkSKn7KpX94JnRFGmoAiBjl42bahnvaCMqaYkpWFimM4KR8HDjeqqiSAhHJZqs+w2/f3DmyoYBmO/LFdSXacTGA8HfHIm/zDiARs/SHNmuifdLZWrbjg6O1gU4MQW3IQzuZE7mC24y0Ja3Jr3x904IM3p2RwI6F/mevKc8D1Oyalg6duTfE5XZnjdNJ3Gt8UcRorHG2RzVy6tyBT6WMAQal9N1q+oBnbNPTD1hU0159XUQz/GyMoqjN+B3HGYUBo7M0yRVOthbyv7Gq7zIPF2XyJypL21RKn2nd5O4Y2urufGkv1EujwftVcLnO2n+s0nQRdzl4OQjVV2SxyWxH6Q7eJb7JmmrLdUrsdgAFaHGNaD7e93jRHAux8FjPi9vW9uYB+DFrAUAe7kYeCKRHcyO7ivKAGpWUc5PblhRJmP1Znr318Wev2+68Hk9Ndt8D56UV+0SAdz1HU1AdUHGofmU9gD7ycY+hEYRK552iBIOvv54P5RBBWdEAENltRSmyLXnMjE1DTMOTErkgYbtGDSDcsZp+RYFM6xIOZlSjjR2w7C9jnBUq8EKdg4JsncYzTASsf5nw0lreYSfyv2FwEp3bapq25DtICu4Ngg4DBM5Nod4N7aJIuOQFej0Wb2UO1s7a7H3t8LOiQAmTeNNME7eN1eldMadMjkVpaw4808ARv0epMuvK3KdvOCuhQJy8HA4IbAkGYwpLX9se9JX37Uq1hyHdxRzr62SLnZF59d6EtffPHZvVkSqsii4Rwh+RScriufSe6LVsJ/6Emm80rvA49G5UzB3mzPjkEVzmUfiDcoPp3pmUywC9ebTf2185dPnzw/On98dHb81fmL5y+fn/nqE/SKPGs+TBnp0IxOgOlS2Sv/3DFRfD9JkQ0Tucmek/NyXF4Vgye6QPGFIcAD9gQm2MHGbNoqzbK6t4keztsxYHu0+XOfJQvfc9u9Z/5E0NeZQ+GljlSNKkQzlKhdFXAFBM/eeUQ3P7umwkXKFWpArmNJgBYTAao2CiELrcophgKmEaGC6emzhdvrtOKJdzmorclI2+mxlcRFeXwKN5zovEQ+fi0d4h/DvtbxPnSbILCiKIWH/DSbeOqrdmt2PZMyQ3rtZSlnyS1/L1757cODne+Rct4zKWd5zh8o5bw03fnDZ5u3H67JKv8D5Rg5TQzDvGmaoXCsbtpewdlE8R68uCVl/aybldMvbB9KOIv4UZw8XvqgbPp47z4lYWd85H78rx/u7tz/9ApEIP354FM9FZPyHaKL54UFYbWLKR2P27D9MXL2ysiZ24ddh8/K4rqtLj/327FpR8i91tGeFLTePfMC9wZfmGn47F75BR3z4EZmWw9QZHw+mDZwhMGZgx+fYNesEtN4sy9+hGf2L8AHMiGV/S9o9X8U5gMwnpXhxO2KOx0Vsm8UytS/wSQ3yJyjG56bBdIdn5bdbaCoPZaCqx7lvhsxMVWEG6Sb/UVVzUyvRidrLa6abAXkKZMsnv/1KWhNrUkg33ZcU3ibDaNJPdUAZ92GCIofufQ0XvGeUj/0UhyTVZpUYv6ipK/OFdk5YZdmnhTCUnQuoVNiPvYKM8NmxrnXH3OAKOBQ4Ia1u9k9WjlYw+O0paK92VNYmWnHDhWt+AxeaELpIqKOTh8MBmSn3C/6263guqAnLCJU6RTEFikzJrXmLhtCXgG/PORNqdsvPR0qrEfNcOG4E+zx2PT33QzcmXsm+rNpf3DRNLhK3WaflLiXniHz1o/l53im/Ir+QUZOPR03MT+52V3Xs1n8/fovcUaJtDd40E/lTv8E7xMwlH3PNzm19/gneAc565viWX3PtzjhuxRH6p/9U+wtgbm1339PafmiGT8LqNkXL/jYkMxnRhM/RB88ZWOPJHIsR1CP/XnhDFiFPv+gk5O8n5q89j1z484NNlS6b6la9zl2EVhoL00RxM+I9qSaYaCb/lubq4rGh1vQwg+tjO66mW2AeUI+wlVDyJ0ewyCaD+Fxw/37C+zFde/7LXqgA2D1ySwDE0VgXzPWNBxyRP+MClLQryCwF1M5oE4X9DzCjjirqYRCCGQKMgT8G9RQROu24cu+mZzaxD5hdqRdiI+PbwiQkUNFxKYqSvUWcRwcJuENqoUU7j3OrrGaD12xesrkk3gTsRflCHdqM5JVgUw7zqzZ4CKd0LjhPYSgH1C47knfoLuKHyLBRXFdjWGVVywvHKzFpLs3b2b1EE7zVWhDrr2GJn+ymIRb+In4S37nkr1sat5774q87l1qlfz4av5psce5Pn7xn8M7E99iOe4afvuPtnQxNnZV0RK6mFgmq6wRqp5ciHTj3DCoA2TocDu1bx1mixYcsS4z58GMHL88lYNCQAo/yy/raT1ZTHytPpXwK/u96xEqK9A741KT6vrL8yAIrKU3xgUzrPo19+VupmwUt4oXiGw0zu5FryIFSbT3dz51GV3/g8z82x/sInwv+EHPqvgf3I8UzDdihQv6gfLx1xWIRTGyN5bsTtxwwqBUereO1ySH2n14sLsrzZv2EcoqqQA/SZgaV4g1Rlc8HpSlRGy97ztArJlof36dfQBWBm0JuL2l18aGI1fj5gIhJ3SFn0wzEpdqOMu7Yz8ez2kltrbRD4JnXwg5voYARh4ZN5Q+5HscHLdP4waHyCzm/CDX5oCwn4Y5KZqCzDRiZA9D6Y2gDNm/cX1/taLVPT0BPqTDWfGD3LwfRbOqmRxhpJNSyuOXL+450k08tg7PqsohDFkTBpcCrgixwWQP5nURsuPkFmYtN11epTasEopX2k9XIIH4Xyyov7ZMAPlqIF+raJdQYdYQZZyZDeUK9MQFFGzk6yIue1WkwX3DHBy8Px07KhQrpdaABnUlCVWds9z+2I72R745dtc1Q6x8Lh4fHZ8SJ9UCJRo9P3Gg5eVRBrZRBh7+hKluhYXddQOn33yFsXIsKK5uGNRM6sZH4TG/tIFw3jljgAnuan8QCgKX6qFNVLxorhoTeUiADahsYGwj6uib2Za6bbGmCg7AeDGZ+i1aYNCSCuc4IZTkAd3m++Y4eydDxuDmD3TLOVhlw3fnksjDE2qafY3iYH74c0n7O7NIWlwsJhdcP0m5f2kUTvRJUY+0CNJgaF7cI0ybcWQeHKJiEHz8Cs+YkMkMbMvu8KB1sMEvMJgPAdxEQhIP+dIH9Zl2A/vSMADaRoqYeXncNLMAgtA2CwwhXTcNZ2I9Q4nLphAPaHwWw7CuRzKfvHnt5TWRsnrOQtCOJjgXoUEr25fGPOhnSHZPPEdTMYnn/oUpdsg4ch+K7ZLFiJz78AG9yetnMCoKXFHBc7hU5jJZKpU/fu9xs6MIBckB8BQLHhGFBGqrJTRKTeea8GcK5Ad1tIiPge1yHbMfK+sjhn6Sn5AWcCpC4McggDjRhHciY6c4VjcHCXNZBMRnmCP8P/nlgrrJNeS/MOW/CEDJLkq7r3TwzNvsV1cnF3fA7vanF3CKJhRV3wUbDqy1zeZyk8RGirDjfS4EXiYzHwg6fI+bso03gwKGaRqJDTcisUxOhVt8TCMYxOz4prx11HpP4TTX3bWxVAmtCw9GBm0XGYwGM8TuDskDAyVNdeQaSi4o9xaa6eZM3EF/6eBuehqIy5iywtqM1wVJHBsof2WY8TY8E9mogk/IEDRIXo/toFX65dyIPtUNIhtumXBXp8zLfo5hIHo9Q4uGG8qQoRFtCG9p0yUO7qWksrHmpoMWY28n4P01fDLO3755cf6M98PhIav4c7aVz5EMqDN2MRnAe8ykvUzW0IqyTiJtPPRCJLW+cTgUF5HJ59ZzKPnit5bLSDnFFjzRhyWIlnSlDeOSGYC3gZ0hGr6RulUnpBhpUAgKrj2T5xRbaCGND5bIVG3yigK6SRR50MOkuEdlGzF+yb3mUzFptCDPcxbvb+87LvoheNfpgRoiugz/ELiZOf3nsGALa+6u6M8W99MWjUcCXQdBUap0pWEa0FYLpQ3ue4kSgcxrLuksaZzIeDU4WFdEoFuq32i6aBsQ4lIBRLs4Z7yQYNWbUVKHty/9QOUy9awhe/ACbEwV0O3CarXjaGk7Ea3cJncmTX5GtTOeg2NOIUDhPyB4idQCMhjfOv/Fs7LDODA18a56NuolH0tVaU79CXV+rJksEWE196qf6P0YGo7iDhWm9xDIxToOYvOv7RqIxT6RgI0wOdLeS50XLdKLnduYP8KR6lrWN3fwRYDSUWbnS6Id4lr7wT3misqc4ML3fQF3OJ1VBFTDWaY4UWisKTNlMCJlE8l7d4Zsjpv0TnlPgzwui7ljkHA7mO1w/inyEqBB3mEFKnfDxZQ7mi6p1Y38/eu+WsZdCUet7RZqlMkc4iwvxpVN45r94RmeuL2gQtKlUVKAXI/K5qMNcT/aEGrUUMEI9V+r2vNFOyYw6JzxoAVBl6kJ8Sh+pWfWojDoZz1kG0oEpuhNU+IFB0NkwagJCzNFGBg5IJz2/vApTyYRpDrFgUzXXOjIsDV4xH2Yr6t6nohNlO487sjw9XqEerK9r2zoyP0cnqSIOEyISMkxl9Fdo7CeiRRHOTcatuBWZk/oQSaKR0ovcjXdxlBdnmwu7U4eIR+kvTm2AspIavI7rHlFpEUsYNmF9D3PkcBDFuynixosM8SxqtwG1zKRZ7dMEe3qihm6mJqlPcD30qkQ6qIE25Ai4c7S7xL/zzsBUn3bZ4G/aG5IcPtmAKIrTQLjHHXvOTaMOEezS3UnsTnidMpU5FKq4EPSxOrkuPwObXpMTCTbKZ4CMmD1/cdCszVzMuCivjLw5Rxuhe+bRhrJzCVrH+TvFEzPR6F8tHWAONjhZGy6hdTE3aE+JVpFrn78Xe0zaOEg2I63aFlJWKiEpyIKFymcZp2BiMNY1LrclDK8qV7PLM1jDktGO6NTgdxpUd+ma9ccBTLjohPznvC84mu3O+W89bZgsuUk7uYUBkDZ79z2IUhz2KdR7KrpQL/B1+Z+k8V8bBOL3pDUu1M5SuzWqvQALwY1PAd9mJa/vfKvzXExziTG6KJAoO1nTQ7agYegHafsfYDjN8YApT1vN7NzrJA4r6ezRSIlTGTZr4zm94kHkeoCFBflrolMFLdQLtz+5BZON8ykir60u6PzNdl08JG5FLDlPHun5CwymK0nt/NweBKBDlfXhWri7spgGRpTeMiZbUrhv1tEsWVnYbhc75DnnklXw7mDPW1DDGwmsRM0JpsutYsIYzWjgychU+x+A5t2Uo7jODe5ScIrQe0t6HZyMUwmklTNRRHTQzIxzyyRl6gJnkTTYFv0RUWxpQ2fAGC6tbbkTEAuSoeLi8WYtD2kDh1dfR9l1xrbclzPk6yDIcCNSC5lj45q/q3jSISRCg7PsX1FmyHuRs0OONabesti1aZ0/DZkGnO5mhEMXm+acK+8iy2OwulnEGeEUTTFezxxVntpPviWe2lcIGxyvkEluWkWI3NUj3NHVfI5RrRuUmY/oFRsm3EVBOGzbldo4y+p57RjYT+UQUNTXtVk7PMGtqrhn6mlU4SxaqxXuDLmH9ArU++IxQUCaXjV8IzTBO9Rf/UWKS3oqoACvsc1cTuhxorZ1vTjTWw6eob3QVq0zKX1lTq2JelL7XPVv5XVlk0CjhLWTMPGgarZy6oa+xT2pl2QlKtAONMwJIJo3X/WA89av3HqTiTQSBrCKp2D0DZxgCTW2T2GQOjvEyn9lLsr+V4U1CMn7xRaGUnNiYiS1uodjtYY5LOYx/iYrAIS6uoeJ1QMPhip89tpT2DkHuOSyTEWhokglBhE61xUV+OUOY9LZtjZ2NQyu/imHmHrZ9qslKL00WMkzuiISllYUZcZx76DZxDyi4p6uV1mECtPw7ahaYa/v0ZbT0uIlwCqcVOnwA40wYcuxqjBbiHJJoG1Mif+UkKlUkjRpOk0NRGzKIm9BCgSkWvY4lrvtqE60PjlsjTUU4NakZvEt4B3w3Mi0fL9NFoexlb8JpfDLGnFiInJ4PS/cRuL7f0uwNJov5wcRGAvWbCnSjiCqe9zzYGdn0rA8PysmszGyi6cu7uXMpbU6xWIZom+k60b6gA8zNds8TDVlfoX2uOZDyHGyBI9ZSpYDRBBCcQyncx5qrZyk5HHS5hgqNfQzsi6yEmzt50jHAjpBlJJxhIzRHVkkja5ytHSBCumxWl5CaZQ/ncaqk8NULd8jHVwDFE9pdMmouUy2/igdqtuiqOT50kgmZKcvAdcKsC5CNaioEQiEmcpB7wBCaSK7GsppnE/VzAKSbkc2MbHhE12IpTVLwMngcx8sjwlZl+Oh4toQJFTZxNXad7vsRxOjcl3rAVcdIz781WCg5Cov7/NmdnGUS7eeXlYJke+gzSwDO5MthctPcYPGejUYDyGlIXDGrhyIQZXmAFkYnD6Lu5RUZSXwsxVJ98TqEdLMTTr2Exza/H7ERixgeU2H0d5wL21FsnlQlA/GNTEC/RtcTtgJEyk/axqdSu09CONDZmY3hIfpz/U04lj4AiyzGvaSOkdIRQMEC8Yjrln4CKuZvluKvpAcceyr8fsk/nlVow7vWCR4FSbUXm6d1hZSQEIMi9FK9h+yGgRZVMG8Y9ztUeHRegcBQB5jSbEqWCXXhCDUqMNEWqqMOPLeZ2xRIyQF3CDxdQzEQduGvUfSAfEFh5LAJLVPtVvexiIgdtFLVJSPyBYMB+hlqilCb+AfcOMOrUcWbCml3ra2kQuvzpplv0QdUnxRPx9ATQQmsFsIQe61gtU+uWfEmCi+AGn9dUUu+ZdVohJVLnOpITdPNVTVgjjmoBybLA5FkhMvuExm3lkzfs0D3dDJROOrSclk1lm7Z7WSKlJDGOvYcyT+tuq5YeESLQklZugbLwjzGppfJsxUDURauom3Z3DVFzP0Sp4cI+9XxrO6LK4QALhamAknLX45aKkVrM9cS6H5fSH7+VtccTQVdyLmMaa9UrZKBjDr/BaeHbRQsJMPpl26d56A9bXe9joXd2TasdTohYpR1pidFofpn1361FGCLMq++X81h07xzFGatphaRAZ5BRvPpQmVAQMHDzGUhIf4fF37VNUT2y2l/ApCOXq1KvzvYBpUSTH9GRZxleTTMPrposC+6KqHQEiEiNgg+phT4Cp8o5L8aZCccqRWh93wtCOXdSarB615Mixt9HS3Po8XFa5EOOiHmXvEP3+67pDk/Fx+Q4xhCwSExwC73tnNzbOOOv0/TpjrlrlKE0XptxkJ+QfWmJNcxIF2a1t0N49C+fJKArBpwjqT9a9nN7q6lroDLZdiWC9rl0GxriVJUI6nwfvo/dTjL2th0/NbcbfoPx01mcAU+rW0Bdif0mC9RkoV/xzb/vTLUd1YLPOQTdsBaOk2/VLV3qy2WgjnWpkxY1ba5czRHNzqRX5bxjOQP77f9+PCpY3elNJMfGFYsebuLovEf9fexByLAi6FL/OZqK6BSo6QNKOeavMNabh287GMPTnDhbg5oUFfDoPayymQRm0lQbMfJh7WWj9pSpQ3OK84nd2jUq7K7Oa6leneofCFMmyFhwK8ivJBamHDqh0WbedMSE4TmYsqECUPOip/wmd/KCcinhJ4Zdp5Y44HNnn9JFeBHWZqH6cyM/YhHp4qWjUnlyZOwxzEWJnPaeJe1R1DpnBOge2NZpgqCSNCarygoIbZndoJSY+//OCCPzC25OpgeBfXjUh76W2ZFz8IwmjUjiwDcj0Dv8HWWTuBnvTuXa6S3xMyWHBAzTV+iKg/9CrOOGZNuavHECVtG7nBQ81IkAbArL7UbWb4+YKc9ZqkPUhIBwVTFttait1ZemUkAMHnMpOd5EtUKG+9YKbSABW6i+YzZifSceiHwiq0AQwdlpyg63YxpaRyve6w8nnDbox+EAD7aZ+w/Tp2+LrozO3XPh3pxmC6gOR2jMAfEEbeplxbW8rrgm+X5BjNPVDZEY7MFjd8am65+BgJuJNfilY/CXI0x4bGCX3FDkQPWkjwj7xYMb+bPHz8rppXE9izjU7i8Bh5bRlG0wfwj654R3VlRsNdYquokfDcHvcAAHDPq2LdWHtoJPWNw0RcZNUFuAM+iJhdZG4HQhPu9VaOZ6zIAJJyCDkTPQA0ECmxljGHmKIgOQHFthUBimA2GzYeXmRGWxobvkwMhgAk1qQjdTLiCA2TS5t1hX/5psT7BOq4/rvjRNHLm0Aep2Vt1wSTgG+Dab9nTLTlXAUUlMPp5DHtyo3KAizjkRT4rUQw+lFTz7L+EwqbvpANEG8M+D4CcUpitHAKAhkalCmEDnQy80yN41OEHP4UalfLrx5gZE44+gbzL2JVpAzy36Pyj11z/DfVMxMrhGGN8NKKTEXSJd+iRSg09A7SCoXjE1DPHoz6qE7BX1hmmn7y6kchOMhVJA61K2htRn5hQgK0dMaRplHzRkKBv8ZlRdSHnp52FX4ZJwcO+LYMwptWy+ulgDbLAg3qpuF+EEMK4KXc7HXCM5vd6ORxabEL1D4NmHEUinGPHYzlLXvq2nFffNabwTBD0Fn5ARQjN3lWIwiSYeT8Tn23WYcKewf+L/cwUb9HonaYIGABFXxen4qXW+iXPxLkz/icKLAIE+EAIJspeIOZuIV1+BrQ+/C6eaQqLZd021ijlc2Z9Bxgn8xtVk4zR2QBWKBKBFDL3VS0PgFgcTI1EidTQ3NcJhUWkQRpIg9DgMFzWalPsIZPbGnELkUQcDDBBMkB8znUPga3SgBA4rwmDQKwzbLqL+QmqOSBIlj4ydpF0VjqBp6eouE5o4JmGVMcP7jEABzNcb5cY5p+EokYei9A3nE4DiXXMJQZE9GmnuCl8T4a/UHxo7s3BNpzlPqNo8xhCz2iEUwWMCzxdwGqT0DXVAI7GB+a1XncjDrZUXo1et6ZlNbrkKpNSLtLW3y7to6oSqWSTAwPJpyg6jsFZst6f4YhomoFUeIwmomCO1q0IO3eI4DwwKYyPs6Lp5UFPRP5vNl+YFnHCve2MRMUyVoREY6To+DxLvRNhTrWBOLuYEpSAsHlSWtCIRljAtm3KA9K2aZlUnar7XpQkuMFJiwKbhoOEmQnCai4Z6zBdrUu7VLCsMZmaQw944gxeN/GG87rk/uhXcRq0Hqn7xi1Kxj9srmHnqiKiJnZ7OxNFfHXvOZel+3+XBJTSNjibG4A+a8OzVWytQgpSSTL1LmjK6EoFKryRf+909MPsvI9QC36BBLQAfLjJ3dy9qYHQSvAhwYAV+UaxSNo3nqS8SiXg9ECm3bwXlj2rddWMt0emrjbsHGj1GKRxncmRqUo8qCSTAOnsxUMAIBgfn2PdGzY9jWS+9vOZlCfHO00V1sWukqE/SzEZMaDos9fFtjDBqmM2nRsOrU3Ow4TsQlZYFMhGCgLjNBIv5rPP4zasvtAieZgsEy6VDkzoVH/hnd0zvjIc3XKZzdyuCFzjw3m/KK+yC3hqqIpqPMhHvLYYttm5dX4X4TABKDvmwbwQwFtD8EIcCXNUUnMHsO/KLOfNg50/SAjl+PxeGs7DpkE3YWLZxTqRFKcaPkSbNJV/ryO3/3MBJ070/lD7Cf53+qcSG3/K6hQrhTYnO/8xUhGv6GIXPPoDQMiFMio8DmIqyOvvVxV9PrOmwimaEaY9Y0s27HkSUaysVoLp7P3RaxxM/SjyeEjTs4f7aguHTs0tsySyuf4m3PkKOiUwS7iRISWkpvkkNspGebWp+bSCIxtY/s6aNSkdIUdCzJ1J+56cCqCOaaIJwTDkqlQpLVc9aEZ1JE4mZ4uG5lJjXh+mjshMfGEPdFGL7bzELSU+xuli3KlIObheIaNjp3muh4z62PijdPT89CZCC7vejzZhpSODmunf3Eep32izV3XJw2sNYhWSJB5FfXy8H2yqzcwRdIB6+RBRtBmvlmtfr2mXUzE5AkaHRGSyHWky4Vab3+XOC3JvqtYHmFKNl54unj8YybEIFFFeeeGUMQZgnP1jEZaBLzUTmEgDiYWZonjXsuwVtm8H2o0mgGtMvvNfaSll3KXriv3JSAlW6x6kPtaG9tXYncDlWFMUlDm+UOs54gnxf2GJQk7TkHdO5GStXB6V2ZjI7wmxMZZFdbmjMLBOLgUOitYVwoY+uy14tFRcwrAE53abMxuurwtiOvL8iuCCKo2DJOaGMjyG4f9kyo6PNcf5Whv+IN5LWmz/gErULqeSTdSoLb4fxHqtVIjyHRznKBVcVgfK6tlsDa+NZtMuffgwtlNlMTFZ3fmPoOYtKhQcbgSokhu57iOZ/cGv0jiRQbGoY4XcSbxJaXhFm7fFiatg1bJSK6JXLfROUnvXhLjuYyyMyMiUKePnmCjGlYzEB8p2ULbw3HqXfJ+UAjV2YN2/99PeJwd5RQ9fExMwHKu2HwSeHQ+7WKYgsEVxCTTGSyehxoAH/DJtmapGImgv5K6aYAmbQbcfZxlporFyNheLupniaJNsFaquBmLtpdt5bHjYSOsIUaz+9YGzNw9Fr6LsbEXR/i17T71cvGkMEFybfkDJwkBx+5QgwmL0MuECRDztXUpXsnZloU3fo08qPJ/e+COsdAopVB5iVdBJQxn6GZRZVG5215w+MQWsXP7tF3+j4saIS5luI0FKIl0A6b9ga57oQvUg1YdhmCUkUJ18CQWot20xuq7IhhQKhjEKqsFQm121nKYNd7p643WFAz5Vq+maeN69pIq8SGTTWfKEUJrL/E1uxVIT9yeGMN187YLo03rYltYLVyqUF3QXvjnqum72uQe66KmbO2YcjE2xd+MVQ7MyIENNSGLDnuqcVs7mMtQ27oa/14GzBydcoBir8zqecp0kzw1ROX8q3bZY4vs4m4kI+MGWskyeUDAStHzkMdqw+M2CSqGHaRwRot/uLpz3VLq/siFQDhyYgQXR45TbIpZ2mRD63Ehgt8SwTLtTWmOcfNTQYM1uXTgV142ExpVq5h5crgkvhWYwTwtKMTbADkGf/uCHcNUd7edck7NFKpkfSiHYNUqC6pDNkYUGRHhjPG82Fol2mCdUJwCpR8RKfG4pnTVtJ9MRpayRHGNDGKe9YsyKxNwqlHIVMe3S8AG9FmnjTcH27KSbIl8W6r7LOg5C6Mw3j1R5YrKzZf2SsSBZeFo5xuKawTsgeLEs6yV0Nhwj7yKJcTSkXXIKFA4nTygF1o1Jz201Pn+6Relq657r5M7wM9dylKkgG9DsnLMTOOc/is5yjONoWBujSvHRDCZehiyEwcKqlOFOVxk7TMjT5lB3xeXqQOyi/K9yVr4QhroYihlXEZwv1ec+u9NsxhBLzZFDg++kWJxUewZQnhN+6BNUX2/KH8MWLYTgh1MjQRZQiGsGZ8KJBcmHkCwxFMEmtdaZps+ed4gSQ7gUHoILCsyYlL8NAIZGRRrrZmm2qb8Uw5Nk/NGlBjbKEtFZLACzQP01RG7IoH6lJfX+rXwoOZO+8bNDwa9EZ69qPyeJUIJEA3VkeddtLcGok33jpR3a3BhbnI3GkcGemkKMEwfpFpOOzOOVVGWbrzeQM+fznV6Cg/II0Ww6+PmxmT+5J7PWphofVXFMSlWJ3UaHsMWVTdmsH9kQD2lVvSh4HWv2on5zXFNmBdh5Ixok/lB7fw9UbMDZtxpIdDMCqmc/LbTPg8s/lchGMj4tpVA2qCMOLQ2S9Te9zdr27RIqB+rbRrYNUCXJOTtQYcSfpW0E0R5a+NycaGRj1NZ4LkPnvUfDBtL9P+YNep3+k9JAOeUMkH/Xx5bTY30CMRZU872XyhJE2xbO1J5zHpkwRTOeaUO1959gP2mUwgEvmtltECf3NyDvr08FC+E8cq1hR5deq7hnvxEZVQ+1f0tXUZPvJ1R65ER8XN8Jwtk3OhbLpzt2fo7MonnLbCoYHMKCtyaw5ODrOepj5hv1GMyTj4S2Zs2ClJhjVDpk2PreKmNbcB8kUCFF0je/Vgaz+HPsnPO+PiD4u3bqpr+OvDoRsPCKaeCc4tHJGQ/uNf/XvaYlga8o9/9be0XS6xAlK9d7NDsF4RzSnTQ+nkZZIxFcn9nHuiF8R14/yP07946wqJ/BILMWzT2vxkADCC3/1ue/GbY7f5JGPuxGIA1qaMgOKkpBtPbmHjMMPT6TWTviUN5q21wS2OR95Eth3XfXo8qkXGmhG3SUDkJFWcvTEJZwFRKWQdqMUuY+laALO8T8yBjlAmDAgg4VgU6Fh9fxthW94DNA4X3xHTfUN2aBvP0N2ltz46fkbYpjvIxdwtvzZbabvWD0+KU8YYnS7a99Vt+iPYuYc2BsRuVM59p7S6iuXFZFxiJlrDxialJraPjb2ArbcVPRJVq2tao/Qs2YKMSCGQpkCMK7dwn2lJBe+KsK1H2lnjsDBVZOgewdMJepyaCwrc8gGgwNrmzGzdxcXh2Rc1Bcr6jkgl2KU0DfAwEIBPksJdqV51FitKRm3dRw+On/va1ih5RQs394V7/xrPzolJRuFdXZXoZYHA1cBuxWviB/mstTry7h1z+j2Oydm3h8Ft4BCI6yohVUxX0tC3ooE5cRamHbMz0d6+ebHMQotvj/BhJDI07yNlFr3Gynpyxg3eWcZ+4LIrTI7QQAkV/1F6Gkh4SHddXFXTqiUhjRqcI6fJRjy7riL62hxwJyx/WlbzRDd9LLk4UcZOYGww8EHdFyeJU/QCr0dUK4PJaIRjxI/7Jpxv7xUr7wQ9NcwFJbmO3iCTtjT02NHtjXBd30dJHRNqTTZ2bv5NUw5MCWvOKUpyUcy7HF6HOczQUV+1UKmFsJ341o/Bwr3EoXH5ogdLc4cDcWSddPVM2c4QTgBm2c7ILoCiz8vnHUyImJK0nnkIIV8Bg+XKpKJ7lKvy9wBoJgOQUGDTOrC/BIiuppbEC3eMdNtGmYSnzSu9Wvudh93N3MNLGqV3BLa3dqN9i3Ew2aCdbX0XvGm0PXQnCM9CErnxj88GoHlNGX3f29Kx1CQ4wRACe1SfHuXI3VO1MsbbDgHTeSJNnXmoNDPBEZdacITbtZfYSgku5+jJUmihG02d97aJlUMxwxYj6oJm5ZzKAdH9L+707Ha1xe5mHiyrihRmjrXRvDzhPNsMUCZMZvXGVT1LPJYahdBk1RURLVMgC/KEo0Gkh0sikJL5dooQdf8Q7dOM93dpF6KgB/fxIPe4OOygdHCxxeZPxmVA/SwZSy/00ljMOSZHRdsgPrwc8+i9tw539emifSxkTwead4/dPDPnVY3oAA5LYSzZnO+EzDFir47Q6263keaT+n7xt6gyh+JsSEh8KFFsTvc0rerM/ucFPE7GivDhl0Dx28KyQPoEJKK5KevPb5uul67LdE82s3P5l0xXaf+SSoLE948bBUmKOW4C5DR7lJANXP0U8pR7D44hrhNZ70wmuk6T9mGIhddcO/ilW9R66otOHeuSKkpxt0vBb0NU5uPSp9jHtuH6+mNYzOC7WNrt2uHobustifh5g50QTp9iX8RqUi8mh8UbqU7pPDdCGHkNQZO5+vssOfWSUfQUUh8WX51hRQKqQ1BTM8S8NVqy1ZnQexhmKMN0mJP1+b439DJ8Xp2q4WyAzdbeMf6W0lwJMVNOrZAnujkrbz3iTqDc+DKGToHhd101vuSZKIsL2JrvOFcVH+O9rUe59i0uDmoEXk2NNrb2WZ6JLDMws1whRSI26A59PLy5JpNku99Jy4fuKo2hd8FM+XPCY5EiOPvhbvH2OVqA94UY+q1XIAKOnr8svoR9CSZYcY1tVaeZlP6wJVOFISaC3+oxhwl5Ge0dEJBgeVq/yLGIeBL0fMu6JUfiTfW+GS/ot6fjOqAm1d5Ec6rQxxpGTleHXSmDnqO4lUHClHBmbeZl3OWDeNEkG8nFSoCqxJPGsZGf9jv7HhlPJwxX1D5R6UIU6z+VufQVTm5jET31JN9ToJ20ePyfT983ScvDRLpbts641Mdz8zqYn2tDxdR3EQe8/sCsiXRAY0wD0h2H/TOCk5+3PaMaP0295DMi88ZBidyiWSZfWgFFTM40fjasWgxiLjn+Jn5is9VRnIrs6nzGaFK+c65L0kzE2TiJYGKDTGTZqJpmd2AP7sQhhIJJji1udwDedlryRfk1dC2UXoSaTNDkO0+cA1L9nuKkmi5WnTJ0HpzbmMA6bTony8fEjgWRpCTPSSLXJKbqeSymfGi5rxeCu6WnDRBcI1XekM84qacaD6hGfe5I0oTa3floJRjMuSpJ6UYw6UjUeAdhN1jbZqwEDeUKlRzhNRV+LIUqTPvvGB47oa8yOiTYRWm+0L1NLk8a8a9we4HAS1RE2MHW/YR4mB64RDYYbTF3wUzLJKPRzDA+JrWIKwIFWvrMuQHP3eHBUlzGK/2WJZCiQmKUkuoGZ4GgIRq6iKLlUWAvULa5Rcm6W8PlWSNM2N1RGI4UWRfVfCj8hWYPPdftPfdxfYNLAX3ZDGtaButgutjJmoLC+1YRtMdnCufXSdFe/Pvot3Iy2cQjA39emqhOf+FdztOj1XX6xNWsrLgTeGkNFTeFFBWB10lHcNJINI/KqbRUugkYEKa3xtmr2f+bhDDll+QSLp14JHaCuacUdJtcml2Wm4bATYi1r4beziM4BqUO5OPD0MMOdVPuJDhbqdNalCRvCFZwTMlvqEJ8YLLnoHnsN8s4rBmCV9FD5oO5pKGrG6ZBrkZZV93d2atyTBl6hi0KNpEsUKSQIOBkp8h0oXWci00GUL8yb2KLCY7Tg87/DFbHeDjL0Puhz9jpLYJz1Wk1rHdCo6I0d5dsKbJ6ZkjLosQ9XLN0NwNIc6V9stC+oPdZW7m2lHdYsES3+542smdj+IgcZcha2M9U/cEgr3va6fYEIFa9TRDEw/vDyKioSmyib/bOjmN9uEQsrfIIlpBfpQroYUJXR/zMlmpHqmg6zzHnMrUwWIYZ5cy50tKyhncMgE1Z29w7yBRlHZcSrsiUGeaEE/d9W2YYu9R9UlyeBg99HsAhgpVZO0bH6kuMaja5JSoaJAKCPlNOpcVNq+1Rrd4jsqLaJJhCqU1Qm3cRZlMHxXBWsXs3w6pz2V9k/+a2Qz5yRGUIjn3R7FWpsKIItF3iPENMpvkN5mWWHJeAtQm1+GlNXQm/zgQQ3ZRlQ9+rGEKFTr99pxjBD9rdVg3xLqS1oCDilPnM4C0y44gh12lcomkwlujcUxXuDPQIt1QK4iKM9mwy3uSA/NaHyTiEkZBVcoi5uVsVlb51TDg74NA2MgWhUypMUNaYeU2vzDWXBEFyrjCX2Lj8Xm5/9eato97xI+0jrNo+26Ont1/9HW8g+BCQZ/NjcZZxWh6mvDikH6zFpmcok/WOWzOGCLZA66KRlQuDSzyGXXV7PyZ3Y2JvbmrpZZbUvH0/JSFlLY7Q+9jtISyqZxtIFkO48L6vAg/puLBgPyloTm693jscu4YjfeXuZJ2hXFzvhmlVldupuZ43qKQ0M+ywJ2IPjdpmhlkFtYkaUxrcaW4kBTlx5hex3xs2JLForaXdDxiIxHEfpi9XfJXLEvaHXcPb9x5Tczhl7nCDu2iaK8WNw2k5yyLT0S+IFs5N3786gnCBzJWQGDbT4uqPbDWCn8ml+fzIs9EmtWFnDD7JaQsPdjgIsmNTyJlB/KDiMeu/OChl1OUma6ypqe/4Xk5MiXhPyQJK195IJk2j0k2mZckOLToMemD0Z4CMMdBLWFdb30FT9QmmMUM6J30CeLmG15VxSQmWjjfKJfzCXEUvSjbfVMacS4szzJ1P/9sIrBpEDufVNWwn6jkmqQFTieheVRmtcg9KIIjedV5laYUkfnQfbaiwXOQGMiJojhecTk/ZJpY4x4AiORovdt7I4pwfLTR4sdeaQyHOulbRKKharALpSbPgZZybOQwoeR2rGFkMzHTQJZQL0utMsYYSugk2jDTucAYHQgZak5fPF1Xlc3vrqcpc1mxva/vPVpv6PWZC0sOJ1hxr863EC/CMKB43c1yPmVhq5BQfOrHjTmNCGBbIsHxYe+23owpYpIURoSdAgVQY1VHj1Y95iA+VeMHuoHGGlSmbmmqurgiQrNCbkDl5DRcuohmNq+HnueKv1XdZtItJ/rf9+xR/6G1DZ+LGDLXetFjMm00PweaAWljwmUOE+5Uj+oXFtP7lIucRevmooSsic1EjiBdmcTEnTOqo2N7aNn0YXxKzg3m2MNt45iqzAdxglUKTa7BBUydE1x6HhW+vhAhYTfDVidNUKEpgP1BZI3h3mKaZZj28hFaUSmsrJDfcEPk3xtAF2mmXVTUWtu+JQdGRKMVi8T10F53so88zcx/Zz2Z/Uvpv5hOK1jVzbr2LxJhHYRs6qVAiIiR40lBsK+tfi6NO9MU98fKnZVdXbRw3wPIFm2iYwAOE2BDnIcTZlb69g1tqCUZH9fkKK1Pedp0ZuzFS3rtTrEC4up7D1TdIFNJVcywHrr/FfyCaY9GPLrZ7nAv0nzNJGbyzawxTXcKt52TvC1xXxI4zZvk8duGeFMWWB2RRVgepzSXzQgkRAton+HGOV7DNRqQ72PQS4QaGmkr6nK02mG2rXjsp0sRWNAmFU65QSVHFllGsrxZwPcYgLlgmaNaWt5vNCJlD9WBrJw7Trqgs2926D667IXaiEnMQPiUnbjrFnH5fVz6n9O9EWJzI3UxdzZyNbFpQ5c3l0Mb0nkm4dhlt5R6RUZTFj8vJ7NPiaEbWMod5CDTdFab5GutHG/fhoPIkiL245zBsMsPt7M2X1BYLTbFwE/TB+oKQ6eOj41OXtLwSWJv1rBifEjLFZorichh1cbfWtAqjBEn4Lj2QQfcuIUwxF747VJaqOENrM/CR5yAm98uA3irJ7jhyZGsmhMOPw4R+c5nYQ5kUUMC7YB2acoOmNKU9qDJJwMEhZkyP5yKlKHA/k2DfiV6+YodpO/l5eyuejuHhzVLnkdKUPh8f/2DmkHfzcU09Lol3V+YS5FdC4QCfhfxP5O359HNvi1avNf1GULCAnJ3OS3Uqb2NIbuSmB9l+9R3ZSyQIngHyUoDKaBEnPr9tpqINdCMHDqY2eI3YhTyWKtygeXIIA8xzRGGuIkW7yfs6SqEV8iD2g3ilpYV2Z0pMOJNuplxgQkuRDTnURFZgB7+iPqaJ3jbRtYjMOcaKhVPWC48i/7MfF24oh2auZbx4H728cSHSwQreS2pYQlZUbGWE2BOx7rIvrk5yGdSVeC0b4GOEVOGUQVCrqy5zJpLrCBtBoG4qTBMtKWsM/COG60fp/YjRGd0Ax+pvD33Y0FB7qqNvS3btCliVg7Ux0o0C0rtbxv86pYxXeJcw/2VKLZYcmUhfk2rDXl2lLX9Pma97QD8hPogDQtndHZf26GAseaofUC5JKP7WHdRu+AlxozTji7JVM+9jrMmX1YRiahRy9b3RD+M8CIj+dniNhYNZXh6QVT2HSrl8ibJZt2VEPqDwwM50SQ/rlYqsRKoTZi/Og+BOeD6liJvMkBPvy1MkSS3zUgPWGzVo4JfCIJZU2W9YAgg+Taw6aaarkXt3B6DB/NWEuE2WwWoDXrONjHZNakS9me5xQhaE6XJjSwuvq4g6KsbchjScFEKIun6JsIOnH9kGItHjg/aAWsob2sN5/+sMo1Nd8ZJ6Uo3AqMFeVykPr9XFtv+NgVk36qBSgspQ3Ck6Jqm+lxpqV34lG/7p9ApEyHX+4Q6hbwNTQUWjzBam0rdgGEoFW3SLS6zq5HEG6SHeZx8hCL5sQerDR88atBtsdPZ1DrL0IEHNRoUo8gbBIRc+cG9l9CU543s1FJDhPs8CjAZBPBQ+buWl9+eRGUQUIBW5Ydm3iSNmNvPgLUg1P5ZbBJTW0dO4hWTuWJvcbTXt1aqtm5LS7Gw9wp59Co5rSD5ldKA161l3qir9vsGFoCOJ5JtNF06X8/TtyfCS3Sy+73d5cJmA/METuLoi63+0aJ0mccUpUrO6IlH3zM3nuh5SNC6X1duwEDuYId/6eRlM7uMwG7KFpUCuO5QtbnMm3im6N5SysxvmrF1WKmd0hPqzzKY0vU3hCmReYbULy/jKNCjX9o4Rd25Oa+cJBHjM1OfEtbJRk7iaG7tXm1e67LGmLNX4bXzYsvTEZL1ecsi71ZvLWYzfIXfe8J0JN3H2eYkmvRyXVxEhai7cBi/33qIeeeaVBwWVD5x3hlPCi/X3lAgsLywSIjiPIC1cW/A8s6hXPg680bNSpv3kfKmFAgYQSm0WHaYlpnYHVYu9tU0wcwlANSwYOim40uuG4hICSxXUXp7JOCfxHyzXX0nZXCiGyNet5w5Hg6/xDMZKxzKbHgvrYG3sAUXTiML8sGKUUkak4vLf98KU4p+Z36StHbSr6h324S0gNloABiVkus+Y7awgblfzeI668pw/6DxPX53gGym0bHy8KrBdDaE5D1+J+3PLmkFSU7IetCGn303v8hBaEUcpmQkq5qYhlMOKImcpB9KoAtcGebCzFOwFcSVNnyO6SEBF2uFQWmx6QHoOlrVm+nbFFo1t4SAw5UquLoJQninZEw4Cks8+ChJwvXBCcW9r588yuM8H/SXzy8IHeM+INGVva7e4k6mhywlftRM89Rm5k1mCHdGQ/p2VC1/9GdCaf4qn909VA5g6EAocW7YAO4oMK+Ylt68C5wXOJTvplKIksUf8w6OKOjRr2K/UQGBxJ6BGxT1wWDy6/3AntQWjjUs9n6kit7w9wQOjwfke8I85Pgq4tHDM0gAyZQ8j5Gf5KFxNvsflazsoB9cp27a8dUi3ABxnZ/yaGp9jUAZvl9txqzIgJhgTJj4K2+a4TEP1rvQ099Q8vjnIGKcAZiOd74Q1jXcdMT8M+xL57jgulIuLL3+UT+2WF0El6J2eXMEP+GiYVxL33D62WbRUCJWlh/rh35dbv3PTtuCZEUvpxz+a6GLSilJuje5H1Xe7pOgpRdKsb2QTX3curoiHlajXbeWPcMlQ8c/iAgMY2TB2GobLWCfXNSjgdnh9y94socjuGtN4OK1GaxYWsybkOlpurk7oEF/gR8QysqBMMpPGxpjchYPTGcRlP4V5zEcmKWWmaxCYIzHEY7WpnWHskILA46EUPpH9fbmgoAYTt633+j2NMjTU75Ifln/KKjPb3fKHyjcYNL09AF66UxVviabLanqjO6ksJb3jr0BgY06VcyMCdHbPm+m5c/0U19md19Nz1wrasg0Y+mpnBjA9mGGwywnyPA1bTKOljk5P+1/yEu+AGwDSNCxPWbYhPrp0y8MRQxAisS2Tkc6pwxhcnwHmfvSzM/C/O3nPihYcS4z5q2FcU7LMhDOJgFV9EfngmDOo0XhjPtiwR0S/EsijDErc0xKq4HS1HkTAidbcImUqvlwQQlN+lK8pcfaqY0gOgji2K5Ql/irTbty0Sim7JBs2TE+tB6Kno6E/edwfx86t0j27ikgneYLLfKwKwRjozXsZPJI6HjrS8DExihF6uLydhbg3oxuoMhIn47qesfxPgkDerAu0HHXgzCvAqH9gmNVbCgvz2clsgBffb131rsYpOL8N72vnVPdao5kBrzQ+Na5IDNlJucxWAA8zsAxu7C5oQnYU4Q6S+yjuvOGvOucF/tnvXoPe243eYt4QnoCHv7jTuiHkY+0Pf4AhkVPGwospSYWBQGwD9tnClAGWQ32/sYmb5oLfprNoxk6wfUWNUPO5SilR5n5KlNTkS8HvgT+6/IWjZllQdf1SRFNTJkQBqII9wsLwEmugGUVm3XaevLa8KrmkNwcrT0I6+BJajYP3qn2vnAvsdzZsF5MLLxCsoKeQKdIokymBTYDqIbcpIdExTSjzUmBYruwLBZC+MJgFc44Huoxk7Ol6Aq58ksOBkTNxk96MXw6o7XQqOkgpvAPT3mDfsgV1jcjyoKhyBegjSKzkLG148DmHN7d+0RE3tG0hh6uGQWDRXOz6eEDKtKpGfX5LGUZ9lJxc+EB6zYY+mgtKB/gq3UCJBDdwP84SHXMdsV6IXIilSa+7GKxWhuBj3nP5MJ1W7NrBKJGkTdaydiC5Oq/YKmCzBtHTMGOCWygLSsRyyVNfpi7VQvdTqJe3KteKwXPGaRqmO1m5OPvjzt7WztYj3zokHECMxnFTcBw4P2GwJaY+Y2QU2BeOp07M/FP0AgUwqKY+c69kJv3Eg49y/FWlB+JEjcxA+BSgObzsqU3oi4u1Znmxo8O8bmY2kub3m++2prFvJxTTaDmGiakC8M/8UHnkuvkW7ZiuyAwlXvn+fLgGXEVV4BBdJZ4zBmwpspD0kGdasUaxEcKbnKY4s9gv4nryNCgGZ5ha4h+hB3GAJ9VohOTCPdH4bn5L4EP+lZY6B1vTFh+mzn6Mhu3WlchR0MvzpSqEg6hbMzN36rKIPREoNkEkwbK4SiJdZdCeeV1S/dzpjgEq/qhFpzqPJRVSlUC+mz3vCIhtuwvtPx5hg/fFe8jMl2nzmydKcUl5gzZLwsG0ft0M2fy9lyaHdtIHXZtfJ+xsv1OzDw7+YPOmaDbj7mnjkBeXj5brQh3gLss2w0faux/cz1i1IVUQuKUN4Xfg6ydPT49zGyWplpMqYez2zc0W+uCm0TJvfSjuJIuz4YEiOWXvuydZHi2DTsTnZOt8MFen1sX4VvBBMI2qCPHVDnKPXCpXaZ/dNguXWypVrHohIIWqGyJkxblKavbV4+nd/EsHErcm8eNgyeDRkjzO1G2fOZYrvuRjR+Cep74FKcYqIR+3TS5WsXasnvsyea6tNUnXwA1m5jlATGXK0tGoBUCwlp/OXUKNGfJUfI/h28qVuWQJ5Psxz/eTcIM3spyEXYcewjtJqdrdKqqtqy30ZIqvXz0RevYp/n349O2bsC8C7qW97Y3t7e3DndwCUSDL87skFNYZdgOrfJ3tY7s/lFc27RnMTh6v0EPdzP1nNMkb8vyaLLhPgueeGOfYn0pQIBatbnuG0i9pZ5jlrw3DURwdlOLPCKyquLGkAsudKd7zN00uFpUZxhE3is76PBQEAeXgl9OBb/Ry1h0byXTEgj2jrzF8uNyatEfmsqzHHCdDc9JEGaQ7Mbt/+saOmiduU+xMOq74oRnH6A2JAPYNl9G0ocG2hKtNo2jTxpCxKQuEO7k5s3cx4+zbetjK2OC8QweaLusDWGWiYQyMNRSvMSd+TNTup4FEoGsXke+ZyBmhoJehwM6iUsCELc64eSEWOaW9iGrbpBdFNr/s7volx/CPjEWYAdHlCIVhD64qLUh+lOm9mMMD5Y4mbiK41qE4VOHMBSbp8KMxT0qGWsSwgLtSOUnrYlmKtxeXdZm2VS19p8NF37QiMFEMSTPGLB/Veu0UwrlXN89kojj3IWZzt5hMUFs6lj1HY4EgrqLWcgRvWpL87lyAXtNexPYMk5JP79h6Wi+TjDAjA01mFxkm8IXHtt+9X12isSTLKfOgt6h4+8twEs41U+sXA5RKjrsGMu2O41xSuui7QTTARjyra8ljrnUEw2WjP5mNIOgtsuS0rwodBKnVhJwnimViBPEDLASGW+gclKJ9kWKKdRta6L4vo1iRNWeAMc42pCg/PowJHXAzgyRtymwsr5dR8qRsu0qbN0vfM/rXRrGYVh9mDCM/Oz85Onp59PPnL89fPf2Lt09en+Hf2MonbJNzf2sn70TFHGR94Qfq+qdSwLWxiCGLMQ/eVq+1s6IWP1JruZlb1rtjtd0XRz+lYTfoM9qzZ8meDZ7dSwR35CUl5ZPZ9Vnm+Bj4fz5rmFOGMfuLcpj3cMbmGyGvzchm1GPuOZlHKKpz5PaMKiyuaJuV0yqnP884e3MV9H7OCDF9XKI/okiGcNz0PCnfsz5kmYtUuDDXuCYLWqB5J4ofZE8bPpMomsoR9TOuRx7cXXKEhJptaCA+KETGU3EzPIeHObY1Mlx7niMr0JkYNcGQk0ZjEvI2aTtv7ij/SnDwc2faWurORACjb0bVDv0NY5dWHeRcpECYd+UUhNa31Tmj2aJsA9z7CVzQXVNy50vE29qeBq5dAWIyJ8Ku7col5yY6jurO7AYk/2dyI3+3J4qT4I3LaGPO7N8IY4lYuhtoWsgW2+DDn6c09tGIfiEapnWc1xvVlTIO2OwpJYuEl/R7dleAJO7qkhOabLX7XzBSGd7UUcB3GWzH/QTbYQsD1QsLXMwY+8VmlqoIbfQpEIjdzJzgnbljEk8FConO0GgwMdo4rIldUpJaByWoHqNYjyp1azTViAuaXygObTs3nSh8VewwYFfrIkl8ObKU4EJ8ylUzrbaKI6RmIiskCM04SJY8r602Nc9TXbv7ZMdnee6DB/K2nSF3kVv4mJiH9y/znFISwnHxZP263ACMmV0HiZoczalJHJZBmM+hxXKPYNcJx0A4Br0hK12hh+kHjVNRkUE4dLlHuGh/gt/tlYIYUREzbllZgydjcBtzhm+Saogk0cH8IpT2Z+IVODt9qZQgl+McQRYsWSmtMNiz67rz0adOS21QJds2RbjXF9PyPVj2+KwtAcD26RKH40PcRBVKLrUzbHjKkbJ67zWKiLno9hI8yVGUGeIgEPZfkpfdVtwuf5pp3dEP/XRPedmAlYcOA7Ya8U6yLTkUGGLC5Jm4lto9IatDRD4FOHYGWGuf9fHiKie8e9voanxI+0dpNtL1QO8h/s2YZjHa//tk1fon+8SzPAbs94fFZXWDvLoXxS8XlKbaIG5cmMOt4u0MH72//aegVqngs0Huhfaq4opFc+5PI4pCsbZwazn2LVu/k6MwxASQhcW+di9PGsaqJG+oUvlw08Z7vCcKo1YCE1iG6XAZMhzraeVwnX73uNdoZpusQpeJvyMi/HeQBipBcXCcVf24cvFm/a0SlMYeqSu6zY1GXu35VAqB3bsE2VX1IRAPRXVYYTrKxTbIVKcWGH2Wbx/MqhxTpJLRVrkfnzID52sh+WQWv2OEJBZI8GGlexNuotccPl0SfZP+vjC85yevMDzkyoAlDuZtBu8t+3igT8mrzudujFTnlnumgba6fsCG8sZXSa8iv/nGZmcSoywK7ItxthGeBq2tY1yNpzfXyzMy7yBJ78iAqpFDNZVRmDjAmEW1MElGxq4e4pXe+/HGAvEMjOs89NAyMxkT+LQCCYEXSY8xpb2w7dmUL+1ddavazDJsDlFUjsfV6JwMuHM1klXh2UJif9enFKnTsnSuzOJyddpsPCcKTfd49r5CdV71f/yrf38s++wf/+pvBflFTRyXbHpcJo3zlBdoemhVMD9TQMK0k+VcqgBIifjDDCFoh/EogBoF+6Yngkf7pvRoSumJkspGcihzMjCa63Q/nmCe/ow4YbEbRMfaa78Pvn6QhMzMLbUjuiHrpR0nW+XnMGx1+yhfrvuCalVZAfeuC9cfoRs9MrxusV7MI1L6JyEjcFS4iGtH9TkYpl82iVKGVlIaUvP1Pvzem58/SIKAK5hpdrf2tj5kR7Ji7hVniNM9k/rgFTP+QsXlsBkvJtN8XCslacveS4ON1MHSibx89V9CS+3iUPW3qoazD3kmlV1grBHRlStPJFCuExgoKclVWWVTWJbbs94t9HpK+B/Ewc+v0RiPJbzzV/rpMu2OvDbmfEj1sxQSR3m6lLut9xmJWRhybd/R6gS2J7QIwdcgcPkoWIRNa/E/mbqHngaXOBDEnoNMRSGGshUFg2nPpd0umf/AtapB6ZSPIeItnd3WwWSRURaif9V0Fcy22IYhc1gUmxaO88hXzj9eiy5z1Ea99Xl6OmCTpXFLvOtRpnys9MoniL84AL3aob1boKfEwaY7LXZEs6u2D3lQBRH3oAkEXQ+zKAkH62d5jK74VtKtNHPPlZVUjjHTupG5xCY6iWY9pXTcEJJbHvnhGsqmuHPp+gIlQYMNdfVNQ8RxeXU3GYFxZT0cIsJoTn1GzfQ1Jnslv0PV2UjjIaYNRw6eK1wiVF7NaWQ0nhHX7a40u+7uiqdzeWgyBiPRMEtBXhFdeucuvav7EHtEyOea/jDZRGHTLxqBd2fcLhzNN2Z7M9sCPYStPRlhCDeQQ+C7S+op4JB30FUyc+JCDaWVYFfULeCWPxWt0YCwb2vYBlNltFAVuaxA3Ysg457/RVW5/I1uKYxtw1MxuP0OvnZeN4YpfdPhKYV+XWhkIy6C4Tg+7+Gl8rD4BWhBLjOKEw0qbsKeSCZwm28L6vUY6ynpadyfJtITvLK7mh32DyfAmYlIazwo12+hK0IzFse7fHYX/iWccPACVBpMACVHs5hA3Hp2vPUgm7niJJwgiogFV96jrVDaRtGQpOI3PynGSfc+KRfWUl59I9Q3Wksy1X1dfZhRsWvHzB26xXl/wZnvwl0Z6gefQGmvFhNxo9ryhvtOCW9WqnT2l/k/Hk6e1nYyTFUjjv59+wUGuLDGijFebBTSSYwWirZLA9L8Ljh1J9hPg80xIYRRVYSmnRiCJJS+CMbrcUPIZBPPn+NtXIgrwjPsAhPrmJ6J+LuvhY0vztCj9P3Hv/oPlnUwcR+kLxuo6rHEPp0xnvGYe9SWzTFy+r4eylKYtnm5pej1iVwxgcu++Qp4ylDWnbK1ZmL38UGE3dLhvr64xZ3CwcirRhbzYtzoWiw5jz54zNPkNwfVxCuQTH3AWnv2jN3uSTOOlB/LHaOEu2OIdlUj+d1cbtey//skVHDTXvr6PgO6mXA8EZELroIQ8Q60MGk3NYXRLe9yy9oVLSRwPOG/ZcYijiM+R/5wWRM28Iz7WG8TIZeCUnJ9kLRrIaNPXH1PIJk8SsU85K3D+PpqHJu4kcOdlkr1hzHZD0teRHpJWhqXDtOR2vozSVfapmKhL5o/2M97m366PS/VusbeW/tWYWseQ8SRNCxfleOmYBObECLrRAk+/UDYU54WwkjbclLf7EaNDmdybBWn7icmOMK36xtBCnYKueXVAvBE/T76wZdKpGid9z27Doteu3kLBxcpWrCf8EyMXE+RuGa9Yh4Ogw98KVy22fa6fqmEn5MFRhnsvOJOWrR+F9E6oBDzz3ya6y+DDcJM0TF9C1owIGxHtcc8EMIGLFMa0b3rSmXSFakQYrMXwY8Gto9rtLmiZNUxQP54PP+02N3a3fo/5p4X204ro527Ntp5hLA3ZQFf3hSEY07kYFG7vRQVduJChF3686CNIINSy3fY5o6gdX07bEthzeYpSmhB/AYJug3T3hvGf7/islzr1PsoKHGfwiTBJpDkA7niCScoUuSlCFTuB6/W9lL2dAzjKUA7FsiaHhHzmpuaJVComXntOEkjnk5fL83D4jH+yIlQccs10BhCobzO7CFlNVaWNGTDHGzs1HOUa1Xng5zzGx625OHpPkog9N4FzHRZ7qcvyTxANKkz/YtRUxkmjmEzu40qksICouCkZnsnuejqC+8u0nZwwFwK63ehjsvCSnzQWoYd1LjkWvGacm3sXijoFlezUpoSqShiID9/SYDKI2JzJYfPNQ8NaN/EvLVnmCh5sbyDeojSEy5NcG7RKYAlC74Obp/uT0GTkfZUTG0Abl2HPiRcnmNcaskORtHvvO/YE1R6wj1T+1SKnhgVcp//+AqEv8E/xcDpIww4uZ7PJnHMPrccyHNurOGqk2L5RmqiF2K/7DEU6zhHIXeOcsDtWhC3y6+GXYYm8fcfktuCjs2iDsgsjCErCbtRW7IiQFtHM3ewCo7Bj2f7FB2FHq4yzE2FB8srEykybrx8cK/Tf+5CG09DVL096fMVAdJr12jbdYA9nQP9C2oQS7YFYSVQTkZZSRwQDqjHiqFcyOCsUxowupNGr9i6y3QUTqXwMdNaFM846J9mUFL1dORRcCg/kK/UO85hu6/lPkIgtmMH+DRpVBGtXtSHwFbQOe4/TfZspXaNs2SoZlvXZSUnrVyPrcv+f//f/w9LJDIl6gA2uSZwJx1XF4fUY1y4jtQhijS07a4L0kZyJsObOvQCzpPD6kp3qarDgatb5GJESa3JWdsssBntddOwssx0r5R0vjHJcVO+zreKD/CFzSzDuhxa2Dt/5pEP/rdOkSAV/QJLJjkkEmkT+pn4LH43wdoGK2KKLa4bCWcmVcu0YSxwob9g0+74aL/3QzYb1+IbSdTIMJUEY4rIpLJMiswttLXiMKJLMKCohmDg77lX9pdvn9P1L8M8eBPTq+l1SaSmwzIg9MG5YAdd5sQIz+cFkzOmWUbs1uDy+CAep0Hdcc+UsR90/PLF+RlWCB0eOv1wrg84p1m8U75v6pHtTsEdKc2oT7FQjOW3LciUXtgUZeo1dJ9UMyTw5lQQH6Ml3TDbiOVyx/YexM4WRkt5enV8VWc8eoAnlWeYLpSIsSKoMIM9QGwYyfOk4f4SZHt4Q5F6RflcFpMspW+pVH4gDYfjqsR0X0E4KbHi4HOSM/DfDifTNIKBF8Bv0UxA3zgIQwu6IRQqL8V1Y4Qb5hlv2hq7rnt3B/mAZpPxJmNCuE8qpXyrD6gba6MCXyAwHwbwRFbQeRc4KIkjs7GRN2Vtz3nvACV138wk6uq6K/aDuypxL0XZxeIlimn4vtoYclfCnzrbHyWE0XxDDWCuZzAp2JjslwvqlIDUS3nwiEAZ6Cry100JSRgQMsOLAqlxz6GC5pb6qrspDaJvhLXOINqZaKGUbHmjRQ0ujz1qjD5Wwy5AdZtRmCmGPSZgYq4NCCK+iRYnq1Zl0zXoBoVlumR6n1vtfIviBRU6eOTsYhpyLYiRFLuCL+Gcta5KOPRfuO0CnXrYX8wi32tU+lvChMmHmyoYcXny9A/xXGwF9yFxq6OhQ92IZyijkbOAa+RuzXAIDOOSUwPfGVtbepozENY1eeok3dmfCncOvjQ5ZEaQ/1M1vavlawhM6Em39VdU/HRRw/6jaHpYsyoLQjHR+OjCGx2jGEVLearJb5mJb47PTzn7e/5ViVXe7eEhaMw7d4NpeJa2Bwm6DRCXAydD4CEog2XGgru44HcdA/IcbRcrQb/TYVfWY/qmrS5BLblWt9HCg+EBQzjCXa97p3RNIypfMopsiGZAapybLIm0Y8wdO1OOQG3k8kElNXeSwKwpcSVQMgkK340M/mlSWM+9dsUXwoNFsdZA4h1SOwGGabJ5AqtaBs0ktBwLJkJhVNEtEA0IF8JTKPE8ueX1xKc22ZIz9rLhe/cJ1eZxICnsmhMsPz3txFUFEOntNeEUlLWzB4q+phez/jKoWaxK7NCoMwxyiswYVVhEEgWTVkFED8nEwMIpC0fB2aS3bkKouQRGBTcdOAH0BW/m/qyz73QsDBeCYWaP4hpcgrC81l2tTchyLNB5BgQ1n7wWyi+4cmunyZrAA3tGfPnl/Dquvpf2NdVE3KutD3fjPeReuSVooQkDOVLhgDYlVv/xDb+MzQM+UggvylTaHBZPLmzWSRqOrwBmhKVzXthHt85lFqpMMsOyZgZRpXiolUvZGVeJoBwaa64vScCCZqOeCfmat0tFnNk2yLDaCI2D/2xFj/WpXHeyuFjTIFiqUQrtQPwL46GCkLJ36MJqxKixnBvbnchFT/fQDz3PJ9qaz0WdkpyYy7NqeN85TD6xAT/qaVOUqODIQRadajnyYV0yMQA8osKDW6fYcm/sEyA5q8Skd1ZmkMdEWSzRsktx+5BjP7Fgw6qF4XXT4UkKXZbMA3R3cCWZbgqXwZXlu+fZL1I/yQQ/dpNwX9bXycfe5Nb1PG0Z9D3yv7tb21u725khrk74LmZw70xcyhjt4VYReMyhq1gIaIBnlktojXskXONed/i7piGimDmZkoFBqra449vzxcf3KdvhdB5NdWsSShcrAgFK2AGXHTdTxZYvujlkZ0ya+DHAEz36MNS7un8Bm2iRH84JVAQ3Ma7EMOZlQ8pLBFcQuSGi7zBjqT6iDWA2bTzAty5rgpXIsscdl6oVw0Pk80B7ATfOuHZKjblb83eI5SSXvbYV1id2pkEj3sexvzVmauM9ZA5HEqw3uK/ITrtTg+fDgTDiQ9DZvVs8fnp2lG7P3k57CA54Dtb7CwzSYdTwzqyn9Z3Zs6+XxhvtUSCec+OhLLVf3dYizD3h9qldXxdB26s5Sttr9O9q4QiRvq45yX+Y04K+YNAdnuxPbbHlFTdYcfkQdlGCjEgnHH+3dCCov18npZ6zDLaBn3E6vyVCDd2DxDGkVFD4ckdteVEP49+iRYYdMG2MPKC3Y+c++8iUnUNVGuseLhoUr5a64YVBKIswNLc1sPexo7rRIJR++YQaGxJlaXoEtpNDACqSe0qbnia/+OkC0y6u3dIYdP6dhIGUhhQ4dY5Bmbb6aHVotGcn4MJKCujY8OOjA+JKm5veBCrfz0JxBCaKg9M245qQet4jlSUC01XImXk3QVvKHUmBdLNmajsbG/swYkFLoA5S9jCur6YuBwAGF9Mu3cOWGmh+SfInpuRYiU/giXiS7Lxw2y0rHgj2Xp1CXDh0bIhc8plNg+bxK/ucQ8oc4nCMQpIqJRZG7zXfwuAvE/aZN1XXjFnGLOkEDRqwA2f1omwDpAUpfqPlHFtS//QSDxwGWYYEWrwT9d715Mq0WZOf5w/Q84Tfu7hjTCKSbUHfc8nVUuUQHrq7Nu1tLqxEQlINp2n5KC9oJMxTX3h3iC2RCGqfuFTrb743YqJE4Gc28+9oRLFUiAGCtt0DMA0ihiYh4u5Gk44iRbpysKMawD4oC3Xnz5gF7a475AhJdIhJ7dlmJmA85BRTzZWJBkMLxxVxCNezggrx9QfPKfhxeatyAEb1borJIK2Do9JdjOrAO9WgSxewzR0nFZbl93IHFHcsHN2jwzF0h5/AYzLtfZLePq1CMTHxiX9jiuFy3NzkbZeq7G6zVQD+coNKibL7KUwhjwKIh72bQajCyQAFQr0PKQBm8VPZYtLgUBFhw8xj0jqbmhgL4wUTLoRpyspyYiipi9BidEXp93tYlo4/5XB26EJgztANQrMABPaMyo9OkQzd4FE7f7aRqo3Y8PVIh28qPnf5i/KDuwFrqyKopYoWOuC8b6nNnbMBizvX8/ns8N69m5ubrZumkUpOkKz39Nzfu6Df3DOy7DnyOUZVFFb5Pk1VEw2e41ulLQ1bSN8e3K85HnfaHMaf4uoXNBDE+wrT3bn9FjvItAAlEvSphSbQAUtm6g1bIzSEhhwOJ97izgiVEEmPBkTGXVUKtANoT/lklnFctatYAGnRTrgBbDexCJk0F3+JZZPtFBNP6AaHTBjhCUwwTLsZDJOAYKaZEAQS8x6kjRZ2k2P8phJO5aDr9tQEFTmbozS+HvlDJy9kBA3Lgo58WShmDUeKdBHfxps5zI4uJkLEW1LP0aIwm1hbB8bAJcwG80KnXg5hmMiNcv3/LEk4bUmbzgrYBo2zZFz60nDkEzZOlGUf1f4TAygUglof4fS1NdHbBzBrfzMEngRYeNPeQyCUQZuAcmIDDxZY4BNTLItSlH/eeUJ4OE7DtHzvylfqIATsoqKhDFUfWRXQcSw1zV6NRcCJEjg42n3NHmpeyWHE80pHRPHEhlcM+9tcMp8UDWG8MVztI25maPFRRGPM43g0Yua6zoq1EUx8IIclxiJFohSlyoBwX6C9elJ2HSha16Y79ac9TEtcYh9uscc5ZzEcFjNMRNuqBOnfYWJJsO/d06/A40Q20zkToyK4r8vfmKRvXOPgMlgIFWstfcJubr8+9zCsQyZN/8npvePTU5bndK+gr6ZZsdjwwnkKxS8OLqRvyO8iW9LIPyRzD03XHlXo1gP7EVCBHq0Jd8m1m4LkgjMSCJOiI/vmuAhrfnDHqcWN3RWjPJXYZuEJ1Ce4ZK2UKXS5Jxwr3mroc6FuQncSlhEWDBOtFNPjZNhnU6SM0ZVn5TtBC87JK2XGeNlmHU1v2pmPWSOS4khygIjMkFVi1ENhmbFgdlhncwQrNbWbgczy5Xv6hb+kcy4wQ46ldQwvoxYYhqjZL15ATBTZHegjCOlpQuXKxw2URLjb2RCaWCJOBxSK4Imi5XzO0KFFqA4ahm3uohC+rnpPDNFuzxFrreB/TVALt9tWtA1hF7qHhXxMxB9OxhUcCK3AFtWcWFE7aXUxwRLjnsIi6AjgqcSRjsTHCt7gNcWZThqzuMRZaGZlfytzBKu3qZmm1T8nGUO3aN35j8mkpaKPIGYeRxLQrkZUOmpneyOY2qkk9eJiBNcRwM+eSppkyacb4+Leqdo3zI6unIDTZrq5BBCGrzvTvKyDQPhyV0x/snl1TW2kIrYLGkzMrqGP86fLF9WW3U01HsfHlQutlfYzy93d25MzuheubFpEhF60Ty3fudROiigX76Y36Gy7asSvLMbaNNpGn3vv86ZCtGumJxjJsEOO9PkP6wD1ES/+Bgu+iwoEF6bayq6u2lgkuN1u2ojwDhUjKi+KBJDGkkN99vUlkhEGPU1OCJlsaQtiXyOHRonVAAcaUQVwiDM6vdnrhW+Ja2WkgNzlvKKurqL7+rSPq9Xh9JTrXZ+aNEnvLw7zYW+Fsq164iniI6ksSHqW3HDM+ILLalxIPM7jpkuSsF+QQr+uxrPLxbgYNUOipJFloHB7F2v/CVgSbDDYPuHmNcJIZfzzWTIfS1bN7sgqJHCsDYg4duBko6XDU+1qwsA9RiV8k3Tfkepf65TT3YhAMBPX28n5MdUozrH2bLWMB27eaEloqEqM1Rxsii/8yamnyU9I9uKLpYvzFfEluivvTBvXc1w9srt8KuMbvJ1tdiDqu3vHqNL4bw3W3VGapfE4Z8omSQPfx/wmTTRY+sW2mgm0yI7JLFLGdfH3f0OcrJSCnoM5pzd9++ZFPCCvYZTnPKYnUbedUBrZPK3FGrYsxOFJujiZhFruBm5lPuKnbItTvXFA6chDMTcKX8AgJJ1il3Rs2sMnnvntpFn3M8o+gN6rfMN4unzwaXf44HAgnrX8ax/ZfLZ28F/3Dwdz4p3Gf+wdDg744/3DASox/HN353Cwu73zaHN7d3Nnrzg43N2fTYovX57JLxbtmG57cDjA4G93eO+eMj50WxgPQDapbqtpr+5xtOGeKdndtCGPLRnX1rf1DG+5A3e/bKtqE6yumxncYPBpfbiDQ9qFL2C7E84puWJbfopR6XZajjeR8Qzvt304wP88PBzgMmAuhd4P3rVvRDJfGL2ZVvSvHbiJLK7M584+Paotz+WybvBpCc/6y1/xMGRRNgnbgz84gB+E7r6C7MjUVIhaWLoqiwn33IWJvmrBZJ3fImK7iwZcHu4cHP4lraC+4d6jw8GX/Avs+Qu26WfdrJx+YdE8n92jj2Tt0aGluVn+LHhB2BzGaqePHsAEHzFRoXVfghFsFT9vFk4VK3JemrCWRCGB5+aW+adNFYqHr9dk3mZww1vFq4aiLRQ3UZCpmnT0HhvkV1rg2RYO/REv9VU1bvj1H27DcktUQaTdZ9d7DPeGf+198Se0kH/yo+JfGe2pLRfo8e+wIqOV3kTkIWoNm9qTDg4iDB2M1VL/0yB+2VD8E94M4jXaUbE2zA1MWrT7AmY/jSw4KywZ4cCRyt7BK9w+xZHWST7Db4MhwH+WTIYh6qbbnZZC7zLUElX8sh2Ek6I+pessp1SsnOfQ5/Mj3tAh5vt/Vk2+2Jo0n92D/0rvLniRt+9aWPy6tFwIlJC9qSTajQYRUhxx0xyYGrzR4h3dJzPhe1s7D9bcBziqJ4+LDrTKpDRcaLZFY3gsMZcSvaC43+HWZx4TIjj4hFlCJAvEmaf8sLm9y2cwwc30ymwW+eBPfuTeAf6fDY8ojG2oKFJMkRMZz+NFzayPZcfK6wb2cHtFr4bdg/P0Cm730CN1PDyVvYMxJcf97SNPF+376hYBCJuvp9lJOAgnIXooP1Jmnqt/pJkp9l4S3uEYNiA/0EZnNMSRKYHd6GlpRjb4tOpcb2Sc181jqk3mqNGm2qfxW+wvfYvgPaw3QN2lsezOoQ7qBBzf5TfPnux5+Sc7Q5/NvvjsQh9/8cVn92Z24ejxxGZAIrcANSjIy+sarNakGwQpgQ3aRMNyGtF1MJYqlCOu1P0FyxH2uu6GJ0gznZcxml1TZiYqx+vydlpTKxc4sC0sNRhO+SnZWXcreYi2w676vBjLXBsj27K76jUlByf1FIZ9oVUt2eFsByv0KPjXQ/ev/HDp68yYBQPFZB1SEtyJeT0SNAKt7qFQKIRxQe2EKD+w74UMPYSNZJDJh7n6zO5H4FWPb1MnP3ptlsXUjEzsLFIvJSJo6CS6SeO0ZA/ZwBbuW2qy5xpDZ3LX+I4/XdTfytmkH51KsZ+zG7YmI1Y/indirJHy46p2xddjMDieStYNW/pWIqrxPccGpEYF3tRJlHoLtVuIKmL5R3MTzAxLum+a9l1nxDYzjsgl+8Em4SNukR7IcCKsM3gDsI2aGhRXNyjuSENY9qVR9dzV2+z2PBezprpXey/ZseGvt0pFghGTExbAAS5EZCb9UoI08viUWD5UtDtbj7Y+bOHqSQcd2iLuJjs9N6G0hNyJbyRyFL+UYIS7y/r3CH/Y93CCYgVvwfEwWQMtJ1UjckscRZlMb5J4fCXjSz7BPMs7NLU/4Yh06jKCF0AG8HoO484j7zBu3y/ABzp4eLi3F7qL+8ZdxH1N/uGfq+P4+cOHD3d/LCP43D076xBu/+AO4Sqn5wf3CHf27qOb8c/DsWAnE98RBelwvomTsPlgtZu5DxNxzL+hDVo8WN/PXPW4vKd5sJ31NKNBXLLD+dxjbV3JnPce2UZhIKOpB99Qn5S/b6aM8zh+9iA1ySdemGW9yZ3tR+pMbq/hTLIEIAEX6iJVIdFrsqKJljJ7kre/70nePwR/+GA/OskPl57kvZ2D+/cfPTKHefsPephX76wf/Dg/Olh+mn+QlcVDCg+/WIxGtxRhWyMOBCv+GK/nzOLah3PZY7IH88F9dy7bxZSbs4Xgpq4ZIuJzWs2JuARZxDb4+JgB4gnrPU37O9u7epzynUut8nzVLN5X5cK15U1yM/ZiGsKTFjkuqVA7QYChQoqfKYH+blhyHyiym5inIMxsr/lkXvTck9MWZC/VP/DuQfKbPEaTfFluIeibkeFIMIXjAO+ztsad2RQHlpxJPV7ayOTVCOpdicZz/Rh2Mi0XgxtlWqT2D9VWIHAZ8hj8GUp8kWPHJUX4Pj87aRuOCpHFlhtWjMB4myJA+kb4ddVeNOB7MPsYc0mhz3er6ft40elGP4P/PfaFCunLWKXG+PIcOnnsaD/DX0wqosDhyaLa5KZg5q9J3S26bJYzbRYYeILOWM8yi85kiqMEjb7NYqY9z4keAWTfewQTMNCfnElmHzVNgTJIO10VbeuOrGC598jS4dK+IAgUF9p0Lk2pe54OdrjxwDmvBMlAbK8WxsnjvpidgxsR/45FALiunZ2cmGHVZcfpW0JZEkITZqrxhI4XDRGMsLex8se2qQHxEEl4EF675Z5NVIrIFEnx1jRRYiHHaS4vURaYHZ6b8FjAOEC0OzR2z7nHPT7xZ9PuXgo3s/zVCuYIIbTsTgYQrdGIIcO14snr385yfsJ8rgmKWliYDA6jDc1iPlskhZMpLFE87Q7HHcAb3RcejIqZilGDuQx/mSM5OfSfvUjew/FRKWGn0a/xOTVZKE9lKodVgj29YI1XlgCJt828yeKlHHLSYaDMkjTNvMpBjrSxYO2bmZD/Yt4mqE3PEE3YEUo+nhcMGXVQ5DjMF9H0PvYNS+D/2NrSYdvMUNXBYUolVZFgmB8706nQ3UlZ4Z6uTS9513FCWPoDqOZTEBmV6hntgzOjP+Df82nR53m2n9Jw/YRIxlYKQqZ04BXolMEppgUwYsDAPgZTLNfsdPkWrTuxFbi0CnzbxdBwK/3klGc8LBzV7VwuLeg6BbvyBtuquykU8BJ1jxGM3mPp3CNMJiuGiotmWY8cV1O8hJ0S9NlhkzR2e8WxGBm0ccRS4QYOYqwqJ9wZyRsYFTbxplwoeCF15brdwRWaZgMh2jRXRrpWKIy3im8qjrPTtNdzqgyRCHVZJz/CwHSBPZ3mvWcOhruYSKtaLpYjBjxKrE/n9EBN+I6bhltxEBqSgrYTTg5wx9JKqvQZDQwvPmaS/Er7kNRZCG0vP0O6NY8CsMw9W93K8H+KToIGA9Fr1/aEv+VdFK6tNGKxaYseYWuRfgmIJhjzgR3ziwQnEw5AOM1kCzjxqgF8lR6OvKbsDOtfVBEzQTQRJoVREWL+fFq+r680nOQ47SxArm/2O36VpOZrZytFEAlM3vbuMu7RSiM+JSfwY/BLgWN9KN5l8Upc0JBXjceRnoEg6kN0d9yRwHtv4rrysc1UD/ngz8pBZmA/ifB93OP04bWZ3lp912bhRLPFBRwKTaxsFflhJhxC25l1fVK9B8d9hlJRFOSGSFI++dqhy0dehFncEcdX1YglVDVG6O5/txzktIdxrvsfBXB6uLmzDf+/eHi4+6jMAZy21wY49URLtlAG/WGxTctDNz98IBtjMn+YOAxFwA4OB+XwctITj0YckqJXBBf8TDyoNUNf/v75ADSmCij5+I9/9e+vwMXCRn6S8GOwL6hLhpiHoBvvSAtbNG789/WIgQBKDUKRZ0m+5V8kGxnb29s70MjYjsskSuIVYVeo9pHXQRxUI80QCITx8CFFMULee+uQER8se7JBuvrE1DYhHSSaXkfHz+A9+VnUBEYQwBe+FAvJIsAjn/O15189f/L0/Nnzpy+enB+9evX67Ojs+etXpwSjaBqq/Zq3iyqTld/WlKZ/X6EiIieaDJ1LfIj3D4gfs57Cge6CN8migfGXr6WO4cQVbwS/sDgDXcqiHLnXzo56Lx4130tjE0z7DSeCUxNNM8veZTd/l95Xz94k2TDpa5E5gXeSna7WaO5++bupC8cA40oCFjFVI3F8ceZZecW4VVVDRBtbW1ufOMIxDEtkVoNIVV3TqLB2opE7mb3M90eiLVpxjnWAwT39ZO7tfFcRHjyPpRe/x3Wt/cdxlsBmCa78ipg8sEke+aB4iQ8WU+wrsKqPRUCAdwoHD7yFi+ZDcD+NSGD0ytX4oreOhZj20GbO61HAjOJlgpUDUsIjs7YZSOjLcfWBEE2XFhz4ryQkSSvzzc9Pn3/z8y8N4iildojuGs2a209qp5j9xMPlEIXdC5zqNJ26pJeiLXZxe2wqnCZyzzKZlD4RyaXUsof9HKEGpt3sviMLmr61D9IBO4wjvw3zlo4WrRb9cTCGRVA0eHs7qftlwh5EBW5yurIz8+BKI7rKc9eGUVZ3NzxAboiuN6jj0WJfzXSwx27MlZSKXNczbSXAoUt3culn93AZ/C9LTzTkjrphTAHbzY7Mkcy4LYXsTLEwCddfyKoQWCQTS+9hipGCYwEbsHRdx1zc9Q7HqjekVQ1h+6jnHoiiu+Da2xETMTb2LenhtJ6Z+TYb3CO1tgXbFAhPGoYipLrb4dStJROQLATOZmmk3O6hJcBRDrDb2MA3uAxGcD9+6nMPWLWHdDhGCLVxxIK7HPQpknrC9c8YfTOVYLC/zFHO3bDndj4vYUWBtsggqu1LO22aIPIOf6o1Pozry0sGcXGWgQ++x46lP5mUH+rJYlJMK2bYHaO/Y/WlbVEV7tT0XRMjxoX5fV+elqprKu2ESDuN6LWlJ6HnRrkD67SJzQZgBlosG3M/9VQhdzOGDM+aKxwjzJw0PfVR+syi/au8Mf+ldGLqeefEBCqTO4haUHin/D+8Vnj979x1lKeEOsTX7Lx0bYiLCRkJ6stApNdhC8FAAFr2qFXrlhhgLxkniUW5ZMLxxnLvRK1J0QmwGpG5jidSvYuRLs3/F8+ZNxsDfn6LdtxyANMPUoPYRVSQG8IBQ886h1k8/9mL58+enZ++PTl5/ebM9cZbVNxFRnrIELoQn5AREsnhVgonW4FktpPjwLTCNyj/9ycYlRyql8PiBK96Tau2wYDzF/X03UbxxmiZjeJM1AF+zuuzHAJDoYE1a58sAGZ3u9h+dAiu1e5BBIC5vxQAs7P96MHBQwuA2fnDwV+sA/uDe/u7uwhb+9+9b0mRhh2YScbfjsebqMTaeW+t1TcnBYaXn9NVa8cask/Iw2vgV3LzkDFIXAVqNyf8AVtwKlyDLTusHzO05k9+lIeq7UgIYTc965qBb8tZrXUKIMxgAiiQCk9X1UMR3kR8IPP4QwNKDX1Lgk7TEMlnJYtLf/VAyw7U2/rApq6z8qQrFPZeCexL0om40fjOxR2c6LLefPBwo9A/d+5iAYM+KjGDUo3mR0m0e54S2T8545IaNy07M9bQCYtfmHucd7X+9/xmOBmfO2PmvLk890wIaIK+q24jWrHsU3tMDkq6tIvZXCy3dp7vNJHlVUysuN3+UAfOCjcc4Cw0ElODuJE9QFHn/FS+Eo+XO8mjMr2pv0XbV1J1oPhq1+Ag2sBvp/UvQen9RUUCRf4lxJy1cyQI6p57lV2zh/O7lymquN4lKKQnh4ewYQx2URPFc4rIM3Z6nqE1SJoHD892eYHsH3oPDsKccLBm3szJrW0r10KO6uH8kd3Oqsy1y4UDlXm/2H54uPPwcG/no9DfD3a3d3d3nMbc/UNqzB4x/IMrzwc7ge78XYQqg0F3ZNyIExtew8gR7wrTkFdT8JYv4cJjvHB9JGj/M/LxcXzzHz4+7gceEtyKndyj0FifbedkEOMnL10Tp0Crcq43YwQ7g1/+xWc1i7mmp37U+Xm4uf1QTM79/cPdhx+Fud7Z39/d3fUmp3v8HwhzvWyb/PDl9I+Cg/Sxa6l5JPI56Kzcj84KbWIwDtGsPeOr4iTRXD/OHILd/R2qi5DGJ/ManB9QbkWF/Q9HZbcBZgsGRQpHn/zb/3uJ0YaOGlR9W46ajpAimBGt4W/3Rr/9f2Ox+xHB7IZUUzYd1lRSCkOYl0O8OyIrGnDQF/JUeRa6snO43fsGnq8jofAd3oH+AcY5NgfCr4sFUoyPG9fGB87kFfwEKW+LccOpqlHT0pOXFkA8lBIILNnKxLeCKpcbwn/YfJcEGhToMDKtpsSRGJsOR5bqKgcTyuV78BYNdgmlvjIIzUFKT9Ky9TCIMVGJ+mKMUVSTYuBusTOEWaIl2pKnGzzoKXIlOy5AzrAjOFJbJVBbc9xr57BTz+mB5/zAO3c54pr/Wr6lPoFktl2WGqIORo0X8QcUFWDmuK3i+ZyJlRi1j32Wbx1Sl/ypEryvq2k18gHgRCTioiZ2syo2Ip9d1OP5Jmyg59yjl7nEuDiZGguPBPdfLGa4vyqtd0Iga3l5SVTaXAM+rqluM13CkszCB1t7UfpsoHioARyz9qoSdCNDu3L3mRYD37wSm7l8GLhbym4bYIrlFVYnwpwMkk23JLaTHXgLh4r7unBsCOfzQI7B0XBIKg43JF/iKHgJU4a27gUG8xWy5FIeMLF2A2RXLYmuvsTyMuYBNpyipoOiAF61gzBmLIJCbuxaQ++fkgBs5WzxsDXGOOs6/YBLa/ZV9QEsHTyQb559KU0PpFnqRXVdYyX+lN06dKfi5FssslwYS3JwdE9Nd7pIB59ChG1iKKQEiSMN2ka1jF2zfmeCk+A7C4brgmkX0oEcFq95Y9oIGUPPNjhgInlOZShnqYbeCKpVpDhlwlotRML0XHCzXGBGHv2ShCCmCbxFdjFupHssc1kjixyvmc7JT8r35SmpS54wN/pq5Cahd+IPi6/wpQLR8hgf2Zl+k7TIdecZtpGOisO5C0pcF18u4DEXVXvF4+38SAbf0OEjnhntfgy3MuGqgSzgym0mHFHVSCFj4zh+rg2CppsUXDcEBAIErlsuKAJpzOKg94wcwBnJ0GRkz751/YvgTHopLZ1NCLEzV08ke7e95G46LrPSlfr4eFM1rU4tpTifh3F1VQ5vg6yi+M5zBpLiFC46r/4RM5blfwhtilLFWpScplsxX7fHvxNfn/7AN7hApnPE4rLgpZhMaUAB9un9hCWM02zrb7Hgb8wFHM2lBLJpb5qt1mXfzGoNd8+eExTwbbp+LMLEsGxVd5NVfY59Sie8oemkYInCjNSgHHeC1ROmz2eMuVUPFUZRCxNNbMzV8MD8BuUzOHUsCWp/QKkgBjvmgtXEz2FKFlSMm/QgcETqTuww5ACfpgZLvqYaD2kzJG5B2QQ+kEO3cPFrl1GcjgxHnj3KG0pyUgaEP2591Jcn5oLsoAJuwb7lFPGtxI4mBlY6fBO3dwh0s5eNeB1vXmfCZte/L5lrlF5LYxsxdVe3uFAzhWfSdc4s2YWyvBKevCAjz8wj4kIoXjLBw+PgOTCKrpJyCGI1A/zIpTMzL7fTh5sKOWMa13aXZi80qdU0xrp8ZUT1uz7zVoMZM2KeD8GragfUyciRGXNsmXDeIBvmVF5k0pDZd9hJDuiJcBJetHCuqLMHeOKeeb9ZurNyz+gBhnHOjtsNDrj26fO2vBnAyQCrigqw9C1yM8EvGt5l0Y4/xywM6lafgRXtDbKOWkdwZiC445mP+LuT5qd1gILvfFEPFGpyWYLe4ZIEjwuITkOspFzbv6zzCNtxsE2rKa/ChrGqiVlbk7xk78BOVnC3nzclbJ0jcP5vO6JJJWfbVYScwo/H1eYL8Es2pCcv//18Qnbe2zcvNjh1+sYJrGeSIRuFGq93f9KrgO1aIG4AXa527jiLEQxHjJ68HnwFzjeBFNmzhIMTYdS6GQp0nUbxZpwLI7McwIdIVgV38UznqCStZhQsOT2EY4S6sU8IcvTl2+fBnSzLDb6mhwS+ZHpq6TiMzgFed090QXATnUrluXZaKgvPw/ezbi93CeTSamoFgMWw7Gikl2XX6BZETPQ5WzF47tDK5Mmi2YB3jAwVqbAppG+ZjkdIYfAHrnRwUlI5H9Eky00z4yHJd3E7t8xZhTY6FFwO935HEwy2JbW6l5VXjVZHqEomwW8I8yDJNewKgMJ1kzTY0O+JKNTBMgBf5F5x8uZZZsRq08cWmc1Gm/tnDH0VsomucM6TvZd6IgwtY30BL/P85AzZr3i+r7loinBHYOPMFu0My24NVovRlRVaqF0kQFnkkqtZT3LWvgOYGeSGluly7EsanNUIRY0tUaw4k/MmrxgDaONJZo3f21hRxYGyH+5kh/ygx6X4DHfQFyTCzvnNzwWYQ1/YBxEhO5WWvcNNExoD9p5NO8P9hbsm9DrCLj74Pe7l3C3Q9sHOyCwYPXBSKLMuiakBHHh0Vo1pnOXDy93fmKvUhqOeW1Ad5sO5j6aX8P4UarXSzIQ/e+7dYjif1m/qRaQ0Yy7JUSLM2Rg7LJC1DWrUvTILFgMJDqxbh6yUHK9aiWUghlyIulKOAM89l7ttCAJ2gEK6M8x8wysH80N6bd0ZYSVddLNyaASbNz1ZojJYDbyaKTaz/CBBaNL+uZvqIK/GVCjNKV09exFKHdQCuYXLl4w7mHGozYbSLLHghqV8IsfRb/Dwzk4m0LkRnW7iVD7AozgEoc3rmACFqg5i9sRk0J2T0EJV4I6AVFIKxSDTnK94dxYGrC/IRKy5qxFumLnuIJUMYp1xQy02ZTAbv8kl9mJiOiGHtUpNi5kDtaEdpcaKQYW2avSStPfVa2NCfkEBsEgnx4aviUlhhX/RxBnDzYxZEHVBR43R4TxLXYlh/2+r83fVrU4JQVtpLbPvZJSMzK11zHjH8s2/OTk/fv3q7Omrs/Mnz9/I7bNykn183V18IoSowspB9ZvJsRWH2Hmb0itzLMXYpRSHTDO80Fndcj/RLSnORyYNvQcMv+mMueJt7mJmDu2KXaF+bOzFzq9bjsw4959Cpb/5tU7syxfnx189Pf6Lx69/dn769MXT47OnT2Q0v/m14txWPJy9b++SRZsSXsqE06RZYHbmegDZLp5Sa/lD6epD1F8OH6noWm217Br8hb24lgTcKTkTdgOah6/JxG6SvV7l+4Q1X8E2JW0a7dXoVMdxlLAaidqoYHtTsXyC5ki0mSn+fubqKzhJMMb+Nxj4DCu3eiKcSeSKVSPa2OJ74uKGnk52jdPQ8JomCHoYYW3AingoLyTbgboBciPqgY+Z0JCot2aa8SaLzS+KXy5qSUmkngaxJgWtx4Tn4T3t544c+EsiAASbHZfHhBzYvsssjYSkzDCdVSGhWB+mamzzqzDVgY9Ei1xcOW1Db/H+c7VNYQkQ9T9vNidI4prT9MF6BD7UlAAqpJezCYbe5fvFTzFtXDyBd8VmjUpbviSAeQc+mOLxeqo2E5sZd4MHI8bv8lZzvsWk1nCIYPy4syKjPYTuXzd5JoOw7PBwbsp1x3xDJEziVjtSpRbz5C4FSafA2bs6JHKxNwr0DtHRrsnvkw8pIquWDkx8Euf4/vmX7UykPicf5JCYY8MGpHaEx+OTS74sz62wyWO9plA2Om5l0eIcXKlGQZXBureecTMt0Z1WkbgMeINAA5T5FW6w2RhOdlvs7Kx+Ugc2N6Uz2nkSZObhi0WHRD4m4X96+iJ3c9bf1/PJWG0HjgvCaeavlDKKv/SKDIslQ0XWf3t8a5T5CBr63e7UljfZG6zytxXBkl8Vmtgcxt4OwNl1PpJB9Ni6TTcML5pVzLp/ZxXRSi53PrSbe88zVtxRbKO6jWV1/3aaLiYUzKFOh3GpW5/9sCrE0k9vX8dRzA3vXssBDFQjrpRmAce3eZ/D7o+bmQKPGiVikw3A/eGWH0qGG/Nm3PNA1mKlitFkYN6qpC2RRGAjd1aaRFHsmaYEHCn1hbM3ZeDRGNFtt1Q6SeAjDnNI+KZb91kOz+7+6Husum7SUoNACcZRlI7EiynHcR15fHYYtHOIGywKxQZIOe4eT00X8ImwVNIynNPfMMKsskmzTrCAhwLk79mM8WtEYTY6LyVZXGkGzTzjOW9lKSkWhXJScTdj6VYt/RjZo8f+z+QZGPicNCw4p5tk4HX2e/ja03mKEqdoA0FKUExcUgISmwqiZY+ug3bfIwgWnY2LNGRwWByBrXnRDREdSl0iaG4C4JUCRNCj/SRI4ZduIanNfYfB4wE/bODRChSS6paiJGBKTVDmsqRor+/jTORoIisnuxPbYpOmofI1sLyf2SnD+EfmUadif/A7BtJoWLYjjILgwR/XE+zN4+A4q+BI5gmP2+YdCQsj4ymYk3EM59q1nsCTIv7VdGMQXEuhBGndMeVUSkIEYapDdrXfThYOTujX71FOcVDs3Ed88vbHwcH3dnce3N/3cHD3+O8JB9/pg4PDi8rxyZciOpg0XFh3m+jV6hN/cFj4/sFBgAv/I7j4Xy64mDD6D7GoYBMFex6mv//Iw/Q5akJlLQwX+nxwXV9dj+F/54MvXsC+yxe4BM/Io/mxex/fHm9T/PY/gyIu1SXDRN1kNmaK5hI1PWGcMNWDJg3o/YbHtoEGJ/64HivHAMYdRjXPTjGrf/v/hMlAZxn8JBDHQ0wRjMpigdD/b79FzYmIK1PnaQb1vqayV/ox3BJThZhyHVfT4XVNn5CZDfcydQbYLLWg69/X3YI/acd10bxfTLEwDjQoao4mC+1/8PDgkRaMPuirJgywapPynTrpNy2eubZ48vxrl1DQyAFxm0q4RIBlWhKUhpw2NDV1ccvVngY6IfK/I/QEB6i45RAqTpq7VZjsCMYpPrTcsJ6OscQ+xu3GiUMDqZa34eR2RoU8SINdQtBMNhnTE5SjCRX1YWdRSjzL7krHQeAPl7c5amEnvMd8DYPogncPbFgXHEIGBRe2Eu2JddYcKafQWTm9zcacfofbXzB/FwEHpZxbY1UXt32Vts/Vz+Gp8jeEyWaLIFDrtMeQVouNlv7B8mxbNcDSazTSRPd4MTEwzDECeSbNCMtJNZmmHUakHVp20zmmD9w7V3Ii7Ih9D5+p95mPfnL0MxxUPZUd30rqrAdMH/CJsPRghIKY1qW3H6XTsDYApxCSbZ/tLixlX/UE2aYolpCY2zUTZPDHqC4FG9q6dnjpFs7t1Zy/zR3Ob8fG7DMOAFxLMyXvJLQummwUMqGSJmTDJ+doe8jNvhYmanyGZqcykH3QHKzUuK8F0uG22jLxX+Y7fE2KAQP0CEpJcwYotHbJrMsrAO3BGgNurJwWBmJf5hDJdDzQIjrDVppeuB34sELv/Kp75QwjmTQjj+Q4YA097Osr4VahX2OCupRuS5OyfZcrqn+wtbNkKtLV5hMoFQiMZ3NoHoo3KQc6xejBHmdphDZZz5HA8oYgSE9RIDK1eqpMiCE8Kp2QfnpVwMhXmgQrDSe9l9p0uanJTkyaeeXdh2NNhQGb3nnMnepJNQdlUl3TRZFaUd0HboGqnXO8jOIvIgh125HdN9goBvFoBqRdB5S+GsjTsgOaVGgJ1N0EZ5ofpxrbp/w4C2ZStNRMNRzwEK3FYwHCC4ne7/DcDUVkftTzT8q2hGM7u1726K91y5JVXZC7rWsoEz5KFyTE+PP9c7dHnTIyJGKUVuDfkNDAyh3aRLndTn0nsRsA6uPkW3H6ks+t+s8M6eP274vyFqye3MzZ+1jGLSq2wCTlIMp44+c3s/dUBbEJAqpqZ/OBtX2uwd26ul6rKi8dQqn5UXrOjwcGCyWLx3mjy4+1QDPPJd3nt59EUbnGYkwxeNmP3TXVPWDJx9AgWJyHwJev1AWhalbPviKCtMy24f21EapZVq4kMLXBHoauVGfzaqPOXkvzq+B6ykYi0n5Q5XoncQtahLdSIwuTcfLm9YAgtYtWycOk5x8C9OY0FGdNTDO5xPDsLBujhuF71peqT9wYne1LoZvi+PSUrvrJqQtlCjGjLGhAkoJ2TqYQkvAN866I+4pQykEfuNYsLz0uvoDH1YLBEKgJh0i9TsdCV3HtGLHVThuMm84GsiX9RolfZgWOAybRjVCahI4248oQzEgwXJdG8OXb50+IVYYue/vmRfCMt1NeDoKbkf52kAMnQyjyqL3g2eB3LeFP2d6k3iLO0Rg4Z33AAIBnEn6OUfcWCq8QvIYRz3SEXK7CRarVt+m9Detc0oCwQgP5ta/fjMttB7hDyvGG9D7oAkFDSTi5N+/HQYBQlh9nDJr72BZlmbVHVZkErpK8iImfsxucdBt2Z18a43Fd5wfXla1nGOsbnUa40F4bfFVhV2FnzDScQ3DnO/QFKMJozXSwp2eI/OwrU6LhLTH8yqnZFJxakZgZ7BatJpNNShEjPJJfnYG8EVcajPRmMVWbI2uMoBX3grwgCTWg96MKjCS4sEfhjheXWAdDu9b8TNQD9XAW1ICUnnW929X01pKjJdoDowhiAiZlbiplqHUHGSyEWS2+rVqE+Rj0ECUmV4q+1OpnMx/jzZLZMNwBbPSHa+92zlpi9mJcDt+p1WTcz85YA9JQBV09DqrNOW02bqSjd0+oJHkYY0rkSfwU5//STGuA8QI7TzBFMPObKVMrSc6RC0PwPXyBGKXSVgtuMh29usvqsg1aT/VrOenZa21QSacsC+WmbFcXPYNOESGfIX6WNWHXG/1AFOxAjyW9g/jNLiCE4nXD5CiQRYYgGtLPfcMhAbQe8Pf8dIGFuBZ6wTgYpx8SfKtyo+QpZjfL6YK+qKbcQO7Ss3KvPlwXnHe0YU1MA1cSPHCmpdgEdvVW3/zZgoSgGKobojkw5kgnaE6du8RwoZn0TrqabRy0xF2ZGHAbxUWDb4BMCub0fkTA6psTOS7PTKDQGUZIzpBY2rLcFHPoFldXyJ8ctdVhTg/ty8QFiEzuS6LC/agnyulpm3PxH2m10TjUIFV6OJLyUTM37AuEoEVGRRUpt4zEEFHBqRvxUdaaMDZXQ/dVFIO1S4IUAhk3ySZVMHKjf4F0c1djpQ6mYtcaE7kvRlQbBEleiDndoNlQu6k3FGgzEnxE1qd2WPp+SgsLKrnGfJFkTgO0c1l8W8/savYldqJIZGSN8SZ2t73nlYrJ+la11CM62a3BRAYv0O4hYMbc+d79uOvVCFthrmBnU7Tp4Ckmo8Aw9RbvGeIk6NPiuBxXmJUeKG/XTdmZkzNt1D0Nq2wprzdyaAlCx9njCJ/HqYZRhYB4PlP1t6ZTlvp0XIk6WrRBrCGwDfeytqE3UoNJOURRLrPhrAdYvbxl0nuTatot2spjeNXcN54I0S869FpkODvjOGvxmR6hZddVc2tGcOS2ByUAQ7x2c61+bgcG71ScsXj+g/B3HFkJZjlxDxgzQySNtfSDo4pgAVSoFAgz65RlNuwdaEpJZFiCMeyuIkQATXKxsJ09H95NbwRWuujM8e0GQ+1KbXvkbjiu31WRHYA7zUwGimRCDmlgsda0eAY3ncXnUA77d8Dn7G5/PD7nYNfwncrjf2i6xqX4nAj7EEJ0dn4fEJ09/PSPKIHviRJg1tddt6SbE1Ism5JHzWJk8HI9e6Eeiplel9w3i4uhtTxBRNNcnbASnCVRovDn5Lf/FW7TEPyHMyu3aEP1sWFuSL7gloNodI2OPOTG3AJ5TJKlmRLgJYKbEnSmxkplXCaGz8BHv/2vqLXQdah++/9ogttX1NJqjlmPTjk3EWowuah/+w9TpuDj1OgQLFP7aqiWlaxz0RGIDB/7GHZfDZt+iIig4qVe7R+Zh9Ts7WkXt4e91XZLauu5qpyshhiBi17iVHshC693AN4QvqMMgsM093oY4HxwUKfaXehbUWTcoELLPSYXFflfGnN2Jidxlmpp52I8jqPSoiB0CJGRookHf+UnPjqclOoGL5AgbAK4hzQToRNN3R5FiRHdvNpUFP8hIC4RYFhsbfCohGUo+6iGwz/CdCNlSPwkCYjzacw+IqHocWEvLjwkIYO29FDYaMV4czwfVTUXpAE9eZJQbOoNpRgcBeo1VUPRLFC5dTRmh3fJjDure2m3f6zu3dvcBt27c3hw//Bg93tgY++b7hzy+D+o7l0ubv8AaNmdvftZVfxPIl644cYDIZEGSTx8d7tJ1niWy3wHJu+ULqL+MDE9c8+N8ujO+/uH5EHZ++lJf1dVM6Zjoipik2pAZ5JbimPgm+jsghATLATiD/AXlTaYhhveIgdeVws1Cd+eaDSm4rzzIxYznDjc9FvFN3iEkSRPSD5QGZXknHfzFtYfTGRk+gTfFgzjW7ovBQvJJccZAcWafQSB0+oJQbHm1fh2K98YZHdn+5FqpQNt73i9R/ulg3/t4Roav+KF2OEcX2eCCxATPzkl8PyiHRLNwvhWPe9g3hngYvPsRtztq05c8vQ3dMD46Z9Vky+2Js1n9+C/3NsLRdPbdy1GCkrfBE8KlG7Q9/jFotNE7riBpaQNjTdavKP7ZIe1nx2WG5i09HgDYgOMB27exrGzly8KJo6xlMicB7GGoWo2RzLjrGD+lWjCIBcQDHBvjXnjwoaosCyKkuBEHF3AlYt5RQvGc0vQjaQayZFFOoK8rhouiPmKuNqzIxWdCVsbnOYvnokL+Nk9+SA3q87zxmizQxnS5FIHKRc7LTutr5pU7RW5ivBeKS4iN66dcFw8i25QGfJr8mXdoKhxIHfdUvk6riJrSGOKOPLNY0z3UMUR9YVIGqvgmLbXHRPSlZn2cJROokNHYoRa+wVcp7XEi5P+j4FhAIYfcnFqXTOhDtip8ZXpgr+qOU4Jng+ZT7Rx4uBJKAjCwBpz+FLfusgXCyGtb85eeIqvqZEm2o1SyOy7wld6TKUb/E09ipuYOUQFF4lLd4pWqbcpJEhaTws1nD3ItEbjpInMztbe1s4j10OC/vkw/KfnvgrOJTcoAR2ziUK1aqlXG8cy6SHhI7gS6Rt4r84chz34as9dc9B7za67Zj8cG8uRJ/6osenK9osWwo+JJQhWCyxmpgxHYCU9AYtfsF7M2YwuPqNP2O0Z1K4Z1E7vNTvumu2+a/QKXgQff5L+EdgV6M0LQ8z8FLz4urs25cB6B163U5VprFD1ywc9z2cfSi7qWyW8SK/pW6WdrQfuGl4lljzcIEWvuS8RusWVvB8Fzmx+hF0Ssfvlfnvmfl3UcQVmjsEghE04cL/pWzgUVD1W/wE3Hvq4iNv2/QLM2YOHh9v7H9Vg6P72o21j8suz/0ANhvrs0R/eqEfL+A9tnbHxvivvOJx0m9Pyfd5uh7+PX54Wr8r39VWpb2kt9+QueaMdP3s6Vnke3rIor9rqqlSMCIdd4F5IbkFBIAxHzRbViHikWqmvop4rmK3AgNK45CaCYF9r3GjMcaGt4mlHgFqKZlEhWLugui/7iA001X77/yIQxQxZNS4wKHKLFTtt2REQry3HVTyybFBod3d372Ps75jkuvEpj8os8p3j09N7Pzm9y7FzVCkjXnhSlCqg8zZa3t79JzfDd/Nm7j8jO3x314/QmbbZQWYQwZjqe5Jtla2pEvtIuuWKmVCXXxAM6M6Ohu1icuEKDgIScaQjItF+XXbnUvZD3YLRAsq/784/U3N+d23b+Q9ozweG4X5oGO47w7B32PR1MPb/4f9AQNIviE8YUWr/A5m+Ba7zJnf9cCzRUn0saLCumqdJD7QimC7f5cVpU5JViomTAZnVjWSdF1PMOW8I04SgvHAWQVxvvjr6molEiVLU9giWjijp400oikz6T+TUeWPc0UFnZ5etLUp7aqZTYAPaYQjBtUNkq1nMtnBrnlbSEUfl8daEmYtcJwXWP5cN70g9phTQ1vioI+vQcfjA/kcZ+BwF56ngDuALztW+vH1+evQSpPwVJprCXhYkjobjc1Cn56BozpHOsmK6hthr2Fdrf4nXsK8uwBKvYV+NePfPnd+v17C/xNr3g3rU7zS4+zxc7jTsi1WfNfn3l1rz++4Zq+35/R/Ynt//Hvb8/lJ7Xq7JXrG79Qj2wu/B4n90eBC3FF0nzn/wT2b0Z0zZ34O9/3C5vf/7swbB6v8VDgsG0C0unHnenSNkjqx/NP7xHasPs7oVa58+rg/vP9h5CH/v0iW7uO633bnw65kppc6s/Om5xGLct/x0+C0ZiAJBMtMF32CdJvEunQ9n4TdKNLo5Kemb3W0dLG3ilxgT1yXivpb6CbZRPVKIiiUT6QrbTVW2vOvEjn3Tv2zBRwGxwQUM8dWw9Fd6MfxtaVEzl2ITaJ0hGrLvBewmLtNZfFeuFo+pb59iO0+eCNtKE34kDgpfjxVp4t1KhVmYkXFeL7/UnrssttCCi2mgu3rPfC89+4P5hJZlzy7UpqkquiepZFCn+RXFHUzrdI9nbHip19oFxGzZFS8gClvYOWZqomeYpcSoxE3TDGUpw1/R88y35ve6vnvpQt6L/u3eLL/mu3vh+sbzkVn+fZgjjGLOUEMEQ8ar7rmv9B7xjth9mIl3RM8NN8fevvsFbo4l6xfukz19kvmB5FFxn/T8FrfMr2iawZO5pvug5N/e2x5d7uzt7R7c39nZ39t58KisdkaPdg92dx5tH+yjyAmTuiLjWG+xzNvDD+BmNek27AOrSV5Jj3NfXFC/PLmj6j0YljPd1JbcxvSg3SxOTHLdK+/o10aybeptHri7hMoTNawqTxniFuxDFT+4xkgWDuLczea5/BQXK/PTe+Vw2Cxg0qmU454OSHzY83l51YXacgZqFg15nLgHqBX2Dh7t3N/mf5lZ3Hno9pdmlcr2NpquXZXdm0RWEFyWiSDJKGASqPhDX+3+Xv7Vbmabgi67t5gRMOQemCe797b38a1xIcE7aHa2ZlPtD0y+CeHodtjimZUtLVN9uHuwfR/UH8+BKCKvMHteVveWjaY9lFdO5iXXmBsFGKfw/0xLv9HEKWTVvJ2pjVaLnzcL7pWE5UHaaQI9CwdVkz4WHh0gDhG5fAIgLl0bU8+UJXM0A2vfARxQjVhD4hxvjl/Cabwvxlny/fkczKVo+dPZiO9cTy8b1TKn5guN+hdksdyqKEufivbQe4Raz81e8mfroGcX/Tk6/+DgDct2/vnewc79g4Mfl5PZpxeL2/Npc/P5jhwM2CjVTWmNP/hQ+uOaD2H0IlQGbEvxRHrWNeFt25UPNnkpSPbBxldD2dwRDfNrmLrwhrtGinUwqWD+bg6v6/HIPeEguYDss1/BXn+48+jhQXKkYehjroOPjjF88cJ/kdnHeEKfcH0/TH/dVlI5ppUIlHyc1tRqpC2vNmErbo5aIvoRErOt7MHvkWlLDr68wJKTv7fuycfZx8k62NnfTuXffTRDeOWCuYLPj9znmanCbXgsp/AGEW2+NogoRIj/U45nY7Ap+Qn6PUjG7Y+fn71Hj5L5gSkBsTSKZgeexCW8+cl5gKAWIoSjgCJhTlm9+kag05Hrz+v4Baj1BtYob1ZTAfZsGWa5ZNp2Pnra8F2WTNru95m0B8mkwT0d8Ducta+XcOE92Henbx6wAGjW3WGwp8XluPrAYVFw7ly7uJuWJ/Tkq5P8Ptv9mAnbuQdzRu/xQyhgN2Pb93fTY2jZLMMZO9OPc3r3ProyHBimyKPp/oCorrYaVtS0k88hJx6oVSppZ+eib5iOmp44hq5hkW30NaiOxiptrJS5rsYzym8sqCRmspiiK2oSDIvJD7UerGx61+Ph91gOihYkKsSgK0MVYize3JLswyV86kWF3FQXrEVcUZW3sTnpmdu+BcWSZ7A81xhMdg2RhF9HWFFICCnbzkaMnMRFVEaY313sPri3fV8vowXY6t4n879/EC/Adjr3lLnFcJTeDcY0HfbYofveUzmSy5YZ3dby2wV5vsT2e3Cw+3Cl7dfz/D6rDz2fn1clMZOb79e19uBhBw/2HkQWX4/5EFh8O9sPH4E99MOZfDu9Nl9Q2QOzHJlc4GqJzUzKRjk3Nrn0hDZJ1nAEY1xm1sY03GPuf8phSrqpfk3LqHdTwHM561QULANC14e4OzCC4bahhN42ueDEmRHos3KXkGpTNdOmeV9SArjyl1h2ioCvzVp7bfzBDGIegX5BBil398kfK8Nu+9xeu+7Z2tlfdbYerD5bSwbxez1gj773Adv+4wH7b/eA4ZS7iBvob4wCuMxDfMLwYt3cJ8HF6x6x+6tO2HqRi95B/J6OWBqxWPt4PXj0wx2vg9/tdC3d1/v/PLbjHplVmNe/btrNcK1yMh9W5qRtiiO6/iPMqOWi/uD+ozXMqPTZf7Dtt07A7MHO/sPtP1pP/w0LdxzBuicJg2MfeYh2lvsicIhW20vhY3+fFtL+9vc7QzuP9r7fGaL0xAqB9mAteYYlcrvlMFqKdRaJXnjn4YPs7EbS7gcSL/gYF3o5p8xANWKv+Vd/lCn/wmUKgUjiBxEqJV1Xu6Y5bLvJ156ZOKFC2234MBesZ+j+zIE7g3sV42r+SUcBQ2TBSQqzNiJ2K1O9ZWq6BNMfxba2iqMga1J21xcNMiKOkb+GKk8liYBFr7fza0cyhd1PYF2HWA7gQKgzBAiN6vfahYU4AGBHTqpmwDSKnw9QWm6W4/pqelgMic/q08EXn9W0E4quHX7ujiuxvLVb9HM6s+/rUdXcQ2TX7sODBzsDZkH7fHAf5GFxXWG7l88He/e3kSAJ7nZBYa/PB/Dvm+riXT0nWDcCNLmPVDFpvo0/iv4N78Qjgz/gvfD1rve/OH798uTF07OnxZPXx29fPn11dnT2/PWrjeLk9TdP3zx7+wKb8GwUp8/xKqRFLZ69flO8ev1q8/j1k6dvThWsO/vi+SXO8Y//9cPdnQefEkgY049VC4uBECPE5UmaHyGm/lKM886QbQird5VIspnAJ9fVtMOQ8mdlcd1Wl58P7v055inO69Hn93cHCH79fDBtLht8zcEXsmNguJ/dKxFYP+NxuWjyZU1wzDn3B7ta1CNulJ65/f7Og+2dB8kjpFtGZtea7eoaSsgudUkWHJaJfh/KCB0FRW4cB4/2d/aScRw7WKzLXVBlITO1mOF1+EyDuu17xM66j4hf3XXNWO9B2/f7HyS3pkZNoJmJf2PNuz7K39U09+A+aZmxcokBbBNcuvV3ArKYh9vMiLtishhewyOH11Osogdhsbi8JEpQMJWmf+5kTHGmGGv34BySJX62CFR8fCHQEy/imDrTsVV5EWnyAsJoSKyulBRwolJfB+XC29Oz1y+LZ8+fvnhySof++PWrM5APG8XZ0c9ev3r98ufF2dM3L0+Lo1dPirengSxwsj4R9XJQcC8xPeudSVUyvt6Plb7ZMISP8mNNytGhu7sRLm/n+nxJComywki1NtX6AIZ5ILF+kEB22828/tHx8dPTU3rnN69f0PvzVPiXfEuZ+syeOdje3364/6/FtImXjxMoLAxuc8gUm+mW6colvInoDV8ZjSTJ4dyUt3xTvGCC3T+oICBodGaKJvBAVy1WDvB9ucYBd+TtprZ3pqsa4gvUfh2y459RY/oSd5pQJfoNiH0bQF+23OmwRq5FJqeaVy4RFb02s0KYn41RWwgNCyps1NJuifn3HWcNid/S/U5lsXlVs7Bvnr54fvQYdNnp25OT12/OzKblBKOtVZIM2IyrLH7RSN5x2XG9RynI7l6y7kYe2GQlSRGf8tQ0ql7DJEC4WGSoLFqvRGFgmAzFTYgTP6rGNZJ5XKHok+OORfL1RJqkMvlPMBnBIY+Pr8sDBs0UqL7cF4XYU72VaDQRdKekmDaJQAxNJmNledkuHxFSd71Lv/n56fNvfv6ll6d3vAiRfj/cX+Ru5sfHwlW9eizc8frYcVsv+wW3XaeTtuyyJ20z20RbvTglzt9l1z7DOh3OjS677DlmW81URGtYFm1zsUC+J7xuE+ao/lab5w6vmQEA625yU/WknNs7m3v+5JRag23O6uG7KjvNTydgbi0b96sFHtxlV5xcw8lfdsHpO3jXZRe8ffNi2ddHYI81yy74Gm31ZRc8VX4wAmMvu/K4GTctT9fSd2aaIRL6Qzv5DA/jxT2hxHdxD/YmytywHbGHu95NbB0xsgONjEVYJKLnJRKvjiJ1vEkEwqQRNpTaEPTPsG26bjMuHUSNS84tMsnmKTJLMsiZwZi7N+urc2NpbpmC37uXT+XWyevTs+Ls5ydP2QgRu+T5035LBOR4jcGqar6YpXa8td/rypgRghZFDn5zdT2V7qnO9BCbSqoqhOqRLA4lmK1Yl4F2wgq/RGI+Q2tQLYAGxTlfHhXGYmFt1zXsMhnH2PJDJ2wn3F6QCSOrUfiUcC8oCIoaATnTI72hbCiY68dvn794UoBuJe/x6AU4jGdLloFarBJ3Mm/gYbKBHet37vm0MN59DBYVZIUj68JV6e/sSF+zuTJrbqr2kruEBmbgy7cvzp6/eP7qy7fwTm+eHj35eaIlO6mUHd9mYhdmtwikGCn5ZOidEJYHhQnUsJ2IuHAJCG98yRYALW5geph6scTcQBCxsy38XBmLyxVem3iIRWeh+uW3GJcXaImJzxBDitQm23TYQuytS16vUCzMzC45I1v69OzoMczrWW46sUswEwZelhNcWPhbQlh2eISSxmeLP7ThLKORLHyt3d8ubtN5u7nZghFeV1dNd9tRoXvO13o9BR/ty+aUL+H5fL1oHUcgbRw+Qgfb2xvb29uFRCfrUnbThkB6zbR1Qk9HLtrxy1MkR0Mtf4M1a8jGLfXlG/jJuyl18ECbbi5NODZsqeSGaZZHBdBa1YklcEOEeYHNuUV1VY0Z+VXjqL3DaAtWNNJO+OlRdD8Q3bcdLNBFdYlV4CyZpJRPVlmgXwHxw87B7sE2Mz9Q++5VDV7+2N76X057a13U+/GiKt2A9mFAmFDxXOPiIUHFaMTHAlZN+oJJkSdu+vISxZ9WtktJRx/T/oOtvULqLIXraoBCqZ4uqoE0Y5BtAcJ0eJ1vKjBYTFk/jbip7sDdUnbbAEyZ4hXYAmilDZJNt6TebxUDMzl5OJ8HcgyOXNGJthFyRgU1n2LOAGQEU5p30//GboDsqiXUvC8xZGAonPkOFBq/Jm4AKWln+hB2jAJqjfd1uVaXPrc9zDRpCOb3uLRmX1UfZiUdyDfPvpT+Wdf1CLl0LqprjBSXU456oOELft/KBhQa2cIlpHvSigl3QdzMS2loadsoNj/XMo47ltq2FOlADovXvDHfBOYN/ggZNbHTGicEtF8aSzXUDyi9wVqdFy4ghPdBrzm4mdwg9+iXJATR3PUKjnuSCv+3MPjymumc/KR8X55S2shDld8IR6NOQu/EHxZf1dLb1ImWx9wnNWoAWwt7CfPuNS2TayyI6SXuoWp7r33D3V0aZwkT5p2V0Zd4ngaygCu3madTF3t77DwblbKOoo3aZBqCNt+9hXiiQRqzOOg9IwdwRjK0t9mzbwmwi+BMeiktGYyw32L2bnvJ3XRcZqWZilOEqKYFT1WeeTGKRFPDxFjHCqk5Bw1rJg1x6t8yV2fpArQDiYg1CRwZ13cU8Y1wv7Uyyj1KHkHbQvFAkDBmlHt6ZiVM4+hr2I3fIm3LmAK4aOS+Ic+X9qbZal32zazWcPfsOUE0WGS7JqddGF+wI3Oz6Jau6m6yqpYOlU4KlkPOSA3KcZ8g+YyG98X14VgE2eHeBGWyYTY80CdENk9ugKWunz+gFKcK+upSbJNaJFGTSerd0YkddlUTb3BssOSJJPCQMhmQbgLfk2cWRGGsXxcFKeQoa/dl3CCmw7dbHyUuxbnND4qPSD1dupwivska1kFz99JSCEGFoinUzV424nW8eZ0Jm13/hJU9ITBSfAeVnSEGSM0UnknnrGmHQGkLiD8F66EepZZB8oikqSAtGb6CDJ4OoTYwpC3g2wq6wHTycr2c9rZTtDnAGTJ507jFdWJrplPcwtRqjyeY9LwwqikN8XCJiuN7o/gxPSUDTu5RRY4jmfsUcGxvJZlGXrOVmzkKfN/IUc6b4zWmm0nnAzwWuOmbqdnseoGdVNv9GHMNd2oYxPuyHuOmu1tQenGuOSjTEDJofcet4Jxwwp3a26zarVQwAeYcsiqhbYLOzTW11qP9oS1RJF9eykHhxlI4I71z5x5KY0sexgrG2eaUysFngyYFmTfDl77Egmz+Ya3t/ETB0o3yj3MGjj+9Eo0JG7mhVFRRQ0ctc6j44a6/n2tVm1FFvFmdOjLv23tYbR6ZJ9+vcOBOiNlj30n0YldPavSeydxxUtO5oM0057yvfnrSCo7aVoglqvx/rDrAzmtHm+jI3yZx1OViirsWGwm1UFpG6mscdQXm1eMcjGuFfl0yqR1WVlJnPP6+Y0er9/HcAkw9Bre8LAyS7YqCkyiuy0vqgM5ULIx5W1sQS78i4/RK6mBu34eiR3jGtlWU4cOFaXr5s3yT6KtqWrFkd3IfzRl0c11TPs1muSfTwN6+YY3IUo7lDA888+xMr8Vr7qajKsZLQbPUtI2x0zWyoVCzEGzFm7k/5ajUn0bbC86ZngAK76Bh2SvygvkJDVVJA7BfR+xlhnDJhMzT2znKjUy/vql2f7LdQOWN/b5yCZBcfM0o251U3aoZa0n6G/fUeNd2XgjMG6+vlr7eYMZwrfMhptwGFHV1GwRPe9yOHLdVXwdofIedxBo+YecOeUdvMACnqVSx9ZulZlzuGckTvqqvrjd/uWD2+J83Jbzv6dPXtu9XaEgGTjtZf9zInbbHpnDB4ssj1SgM9Te/Ju4AxTNeYtD+hsCHhwVSOAy+mN80QU4l9MroTFIkigQAym3O5Xh1RWympYLTetMxpqNqfIcS438lBQgTm0clMxEXBFNxrJghjH9Ma7CWHbYjnLMTjsYGg8HQbEhBmJrrvD9Fsg1YsnzeljcD1y/YdELN3cCqDL3Noh1/Pm8xpjWqR25LSgiD5Zz8MLrlWZQFJM3p9vsA3b/zRT3QPtyXJXjfaqdoZ8fIJ4hd9ScGJpa8DO0EhKeilOWX4figSuxZW5PbyPrCzld4O97lR5pssC3ucA4ES/KinlYbTOsmfxMAYgOl/gYFZuHcqeP2zLHDBp5/KDqSl3nz7EumQC46WEUOV0sPX+pizmvCV2hZvYTYQajF55LyvW4qJa7rDEaZ6WAPkukV3ubY2G6XQZBA+lQLbyxKZhU7J+QZgBES3urUgHrwTVW4T+PKfjYNintiKoR30fnEJhN4J+c8xa/vG8nbJACCDVBNtXVDKSZKpHHYNb0sv1K3IAXiLziqg2fQmEM4JfCeUeAG7XLfOdSNSIxE/IHvMVbOh9fq5fFNcyMi7XRxO69sJI/C294IQyw9x5xhfzYjf9TUxa+jM3ZEgptbKcoEwR5l+2GThKQx66Pkj7QUgVe5V5y8eZYbs+s1EgWpzA6zDwhjn6EuTFS6Cyjbm2l0FiQUMvmSWofXeX5yhh4azzmplZINQJDPs0ULb0tOVvjkJxVaQ10kUFkGk4UIXmlG2W4LTW5fXzvtKoA/75LwHELI5eQ1xmklNyMfLFdap76uZCIZmFST2HwzQ37QE2f9DHfRFyTPzvnNOUn42T36wj6IvHEyzb1Jmj1aTTvDLYYbJ1T6YcdP/B73c+4WGBBSjvnO4AXFhcWNSlmNzcgZrKQ3jY1fZTWod4AmlDeMm6YKqtSLe38SFf9ije2ee7dIhstMSl5W8iGWfqzE/k084ORHYpsyfWWWLvCDbMiP9v+E6lUwquNCZ2Ugi9D3mNcU2GPdXxAFDwnV3G353OuphhuY6AvMfCOtABrWcevOiHh91GbeCzfvl7FY5cjGxS2mNHwcLHBhc6LnaoxpO4xtjv3ZCwE1qB3IcVq+ZOxAcv7R5hctZdFG4OTkY2ZFKBNMFMsm7wzCXjr7OnwkdllFNIrXA72D7pyQFpvaHYHqA91txNkpbhu94t1ZGLDKIJNRmqPghpnrDlLJoEFGBpiQWYNm/OaoQQCNmJxOyGGYoWnR+FZfJ+lS2jOo0HaNXpIjmiPPxQ/mAMZWxyLSKdrL1+QNC5t8DTcz+tQalx81RpHzLHUlYiG+JY5QnRJ2mebGD+yz2mVubZCEdyzf/JuTcymaOH/y/I3cPisnORCru4tPBB2ZLpCDGuEj173OhpToTryp1Uf3ELolPvp2gOEoTFTXwr9l0tCZwCCdzhgGVyfVnIEdMSZ82a7QmFIc2kdo0o1IXLYkKH8M7qpM7MsX58dfPT3+i8evf3Z++vTF0+Ozp09kNL/5NfW8KafzFQ/nlIT30aJNCS9lcozIpQ6znJ25vhbHUx+czAdT40dK+CETyBFKq5UoBEKsGMcPFVD4mlxQIdzvOUfIWtdGfMKdgm1K2jTaq9GpjpNL5s6CCqAiC7F8Ako52swESvAkcYycGFMNSVtJpmvpjGTSeawaCc3sI5ehy5Nd4zRfvqYJQhFQhTIn27HXHmQ7UDdAbkRJB2i5ow/Tinoj3Rc7lsXmF8Xgl4tagBqDYB5Jd1DCp6GYTDmlGlmW9WSFgKQhh/4S/8SGOoTE9DEItvAyi6OZGD9QZ1dIhtpn7wSvkkOA4CPRJheP7n3N881BbdO4ES+Y90ewMgOMHKkpNXggzZzFXfQu4C9+imi6AosnGO/vmiz15XXvIMsppQ+fitmkMJO7waNfwdm5vFUwXMHF6eTisraYVtVIohMKgtWNnoFWLDtADNpx/Uq4ukX8a1G5JKmxLEiwWZyNUJtXh0S+9gY39AWPmzOA8iGlqtXakaqzLFjs44Ep2xkIQ05GaLDbHx02IjGeyT3a86iU5aATNnuScKmTj2IojlyXeYq0VNya52Nv7XOeGnBTZeKggc2Uqc+mFe6w2RjOdlvs7Kx+Ugd2N+E82nmSfefhi1VHKRefFDo9fZG7Oevw6/lkrPYDRwrhPPNXLBD0S6/M4EGRzu6/Pb41yn3MXPxud2rLm+wNVvncCu3Nrwr3vwHVV8FcY8Q3G2JW285HM6gTk27TjaKlI8k4ba+cdf/OKsKhL3dAxLLpe8aKO4p9VLextO7fTtPFhCI64NGOK++dZi2iJBjdF2YJ0VE2BlXHIc0N72LLAQwTEbBSCo9yaIusm8074GamiGyZAbcB6nHgH2cPJTcL5M2IAiv7OjkloyipvGVJW6InGhuEueBPCkXTlIAzpf5w9qaMyB5TjQrjKhCVzaEOCeGk/bN7nsXxDvQg9Y++x6r7Jl3yCK1pnMWWzcHFlAO6rk9ZdhgGBxCGZIMSAq6LpLI0fCICOFjOMS4QRphVNmn+DhbwsHi2bDPGrxGF2ui8lGRzpdlO84znvJUFByQK5QRONBlBnG/G/PyiY2+kW4wZL2TrCgSedE43ydQd2O/h64tbhYKLEnfZRRITl5Q2xyJXtO7RfaDncwW+nI2LNGxwWByBtXnRDbG7EzYI48RgDkKCUoLSMR7bWLqFRE8Uq7bLYsAPG3gYJ4WluqXwUZhSE5i5ZNIQh8NiFIPIysnuxDaYp2nARED5gdq98X5mxwxjIJlHnYr9we8YSKNh2Y5qaR8+xqa3Bqe8CqdtnvCYW2MGMp4COhnnkMkytKpExL+ablwd0PqKPDgn0myxlRaAubMR+yrHUv40RosKyajnCtkMDsBh0AfyuWAqyTOxieT0h6EBSdYInlyH56VGtpxTNdOHvGaSLseVlAywBYeEbhJLtNGCweLCErX0ljh9IkLG5KFd4hTgZDfTzVEFzwi9ZSwzSWH9h0V2/pCeh46fRCJBrPVPyvI7XGv4JWgdMOXsYiDn6WaP4YlagYSKTUGGLlqVvFRc/KRTwVjhSAzCWUZ8u7XTeHNZyJzZHCuQ1Mn1pd0cPrxxGCWSo02lL2mBAhjFoBN7FZawfZkomXA0LxoWx5N6SkmRK98WcZF9UPDrN6VrAozzpDhjcdwovQAzfLC1lxzNXdea3aotbijh2uqOS9CXWkMSmWG5sju2ZmQU8FpUOURRBHzcPkO3iQtEmqtSFJ0aScEgt4s7iOGVAj4Px2XY+N0I7BG8SQIzOvI1ZXL4vBOJRlUzlbmROg0+n+hf10Npwk0uMAVTOcRg7uesNtdn2PL4Ob6UdJwJsPoxyWS0xGkE8oxRT8UcLunoNqyWk2xag0a6HQTuoGRkUR2dHVsSVMLODMGCKshdCVwU64vL6hqCYU1yIdQrRmAyAhmtesRf0q+C+qAbyQtfNRK4MoFa0yQs3PxZcIFvvLxVHEuk5Oa6gaN16yKO9AqMXmoKpc7zq/pnKIwWBLl2HXEJJmAzyiIL0BNyrYc9nqYou3dsFeBzy3Bp7JLqWt7pmhbpAWg20Ny+m1mkXdcivCccGWSUbVw1uJk0mQibm1KJrjCAfkRz092DYuc+cgfuPwzpPLFHRZaz0vU3xe5R2tvUPf179jbd+fSjeptaLsMfvKfp/gHc/o91zv+7qHMmIs+A+nQFc+bXpieRMmcGv893dHl4P7oFjbUmSkTTuAknFyEHF+Tg+LZFHUVWpyRGsTwfCcGYD+y6abpqi/rUV5Mv4jrT7rN78KnL5ji0pnOG8Uc0nvDCcS1VJ2zQ5Kr/9/b2sacpC64HQRolCHGYejahl8GXvGnxMLTFk+dfO6tWw+hfU60C5w6k+Mx1bUoyMBuK1LggapoAViiukLwz5Wu4TASnkt46G/k3I45KPSWcLDesp8Rmlcx5hKMxZdfyNgz3ysj/B6maVs2KduwlD5DIOebNDMwKAmJJH590HASMdDCGI2FJ1EK7fF1KAIMrxyaHI47khWvKlHhr/T7JR93+gn0OchgCqDodaEPjE1r9EvLjqfI3JLNqyoaq93BpjyGkn/33/sHybAf2PYmV0UhxX1Tg5JB1YwS5TpoRGJoOW4J5WSwhqMb9ZAHwSNjVE947V3Ii7IhV/BdMJ8Dh46OfHP3MlquRj4hIkp6Ce/cUHC7LIUbsSZSp9KEUvo/Gczibco1BH4lBuQuVfbMn3zTFpD0WvoDF5qeJC86EtZlLajDfmGzh3F7NhZ65TOV2bCIgJhYG19JMyTuJ26/YmxrGR++OE7LhsSq0PeRmtF8wtYV4+pGW7ydl/aNKtA1d8LgqUVY/7qvv/5fwDsK3h0EFUDRpCh2FVk8RyP+/vXfdcePI1kR/nwb6HTjEcVuaJkvFukmqbntD1s3VW7I0KsnunsGgkCSzqtIiM9mZpErlhoH9GgfYB/Cz9KPsJ5lY11gRGUmy7JL3mTke7GmryGREZFxWrMu3vtXATQVQnwh8akU0fmhZECJxDmeZpaZJvC0sPOvQO9c7p1Y8AKqs8HwZUcQnYQlMGVl9sSKrH38NUK2MXT1Qsj1lX93vSqptrzGdO+YmIHi3Qlox4CJ5RGJ8kgwKrM6wA+NJ8LFP0nw6+CcwdSMiVYBLlniVyNnMG8SjjHA47bZExUrNSvo6s8gj2m7oV2mdflKCW9GO4GIUrYrn01n3+UXl1GUWUxEZBCx8DuTqGntgySebDatL9ge9fjyaPl6nXLKTe0sOaJ7D1e8MYfQ0YndyRXvIC6FADEQJs2nCAUO1cmfiUnY8EV7+kn6lxN/N+n+d1Zk7rIvLdV1/K7sVdeAeupplDXnCp+0FCRP/qf1U83CJTMVtw7KMf0O5mBVvotRGL51pB0/gBdz6ls2v1uedCXs/Z/9K+cT17Sgki+/9PkB0+hHiCz6HrERMD3BiKa8Xy75Vdpj5axuqnvYQMkEHYT9/6BssMC8eYSbOb6pyJvrFy85vP44gEvHCDOPPvB+bSyRDAB6IiUFwersJH994A4R3sdjY+ZRI21obgPbXILxX6TalJGCGrhToGaZLmlYbLumtrnoRXE9JK3Tzf1VML3J0Z0nGXP+dd0q+fvOqj2klq5pZp9yRbxpkCUdA6LLx6kOZwNGEZ2fdGCUE3bG+SEmhY1RlF50ovcenp/jUX041jDepFsxchYqj34+cc9pmRyI2gUYZqVT5hXC7dLjVLK89Lp7VQ/Nu3RDcNboQqdcoswE8RYQy0HS/rCBmuOjzlvQbJX6ZDThGKO4qI2R6wOkwzmCFaDylq+AIMPEcqEjwsXdvwiDMu5KWA+HWeHUr4E5lCHr62J/CGr54QvunpGDCGr5Wy6Kv1nmf4G/POPRq8s9aTlvPc4G+WDxCGqfXKK0YM53N0J2LNyBC5+jXntQp5uDqww7JZoMe4o3zJhA0CEDhtmk/9oMMHf5xQpc52jnoTneG6AziihkOYMLGZPJanAfuID32A/qbeJ4+anSlYwRbaZlGpOAO63+dZ1BcV1SYiqLmeqpDlR89fFYld7rzAvIdupKocWQdjovSsp0gjkAJMivhlOFdiT4hOINfv3UCho1lp4tXq1KUjKT2AWrbC7Rz2JkA9o3cWCiyr4ofgD4CtjgbvTIY3KbmZ3wfIA06Q+SYgKbp3J+GeIXPEl8X4CeQwicx2Y0hTOHMXUzS6P2Q14BqNWBZROFslHVtDZ9UegpcYBjfMAiSgh8uu26areTqeJZN3ouaZAzMxlz/dJ+hRUdusyVhRGaQ7sf391adEYCSe6Je1MLFmRYX4jifIJ1kVderBfrXawGLI1GVOBqoDR/QQdzIZkmNuqK/35KX1wDXU8xXQvh0qhdI7MTLgkAMBrAFx09vHow2FbNpUmfdbvR9vlH7cizxHdg8VpcPyNNBSORDeERm2Rko7E0y4j9x74yBBMHaHgclpoVUSsrbBI50CL9LwA+LOeUSS6D0ho17cEwgG+u4RE4U9hGoLslKgF29zY0/W6EQZM10wPcFeBUbqh0F42dNBWfSG+Sip/mCKi2NbUChYyKk9qf3Bi6p717zcXlmXIGqCQFFY0u15uVG/0KzurgA5uGq1NQtXBxk9uSRc/Y90TWhqNAfdfgx26wu1s3D/POVQuQxtRFn6B6YbNXScDBiysj7/DoiXhJRgTElMUq2mjDST0N7lS8Gq4gEQQLUZlqbVLJvKvmXk276tMSJthoT2itGVAe0SSkhpneDBCLtph4IqnTKYMCkEa3JY93ElhZBeQkRIQ5aBuk9We+HYmFXsyt0EzkcIx2MNrE2e89fKibgmhecg6+yW3yGhNTD3YMoxKUa292JRpsTSpi/kqxLvk37TyHc1PSNivsWQIH4ae8xVNmcZk5/Y+L5KyyIIyenrMQeDUFhGLqbKjQQoeD2OLrP42DCNIdQoBQ4yBR1okYc8S9MVwkIgqiFrXiWV02D+Timik5yuZPi4BYurZR0NpKXzaoW5ixjYxurA5RYj9KO1GVViZPK3jSHcnYZUU41YKl7DYIctB2xeTfES51msWkbp+uWbHjFUx84uGMvSjDBbWSUuleMXuouU6oOkA6//TdIF1tmFxIexY0Hye7CyVmIUtIdKItTCtV4VQ8We9jF41SkFK4OYymKQjhD6fCP2/96YxzGbhUyNu2GCe47JDrNZohCQflgrPRrJ6E+bqsEJAKz6O+nVm3tD+/MJ2HWqgOS3BgtQ1FXC7H9Aj+IhKQ430z4ZcsQ72YHDExn6H0RRYEj6WS4wSKgEZbYQqIpsM68cQBA8EMbn4BstN2VypYFr8/ZkruMNQimswA/Av7+Es3o9HUGhDU9ps0iylckuAdbru1Gsz6wjv24Qs8eX9e8OXcuq8rtyO+zDxnBS9wWHUPWfuoyhFV2SoQznoEHHG1q9rgwzYEPE2RrY/Kp7ZWWOomzhwpRAOmuq+95XuA7q17BrmshvikFoVBuUHS0Zp3crT9jCBpND0LeTcdoSNEUHwag1a6yetpEHWPilnGtO0UPI2vd5+dnD9/olLEzjtpEtBTkdrXbXhdaa18hCA1CRhS8IJIsypsbQt9KV9q8ByZ03zQ+2hn4HTgktP6Wav22C3KwoR1KhAH2IiF6RAQb2amVUryvW5ygPbl9oPBfD3KGURY2JhWHiV3sw5BEDtyKFCGpykhtCSB7kgBAJx7Ts3QhM70F6E5JLbZ9wjtfi7rN3DfoMVuz2/BxTxL+D6n+1JcTJliAs9bpIFyzI3i1127mivZ5Oa/q0Ej3s0/qPef6kk8O+hbjT3QTIkpZk3HCcZ9pNUGEAOk7pCigX60g2LlBxHbI9zUij1zjEb4mkVvQdeXqjTuuptfhhRswn3btgK06oTLwTlkaShQq6sh9X9S57Fs2ICmPH/nEl1Ib483TJxhF2d5qQtAIgXjbOKSgZIuh2mA4wxLr1xE5zWSWYYjUmYKzYlKENUKT+umaySbimHAOlgRH9Ri0TNLnMWuM+IyFhy5wQprL9rAz7ND2sJ1idmMIchSlCXDBEwNjY58SVkihVA5zXtTRShWzRDEKsHUNB78S86RUriFlasMWN5ue4gWp5uNC/dDeDNoOMTUhAMyFgjuNm18ydNugoiAzLv0OSQgR6whI3uPhrC2QHpGjTibVqgPv17mvobmnZVbTRt1uCkwcHV1ufAsZj9YF8N5Ui5XhGuIifaHgMeYAII+U5quDkTe4w9wNw0GbRo3dFtbLEnF3m0gRXjSpE4XBbSLOjFypkWeSgtdfZe9B5XwNncs3MFxvkN1BZB24ByK7M5Wzcdi2tFwrC7yS0S5GeaOEoDHt6aMP2VSEkkalqBKyqRlN3/vZBZlttZ6twJdw1WS+dJFT8zFYIjFhpjoACE8/gPYTe6fYcmd0cZ3BP+HZM919Z2Q49LshGeKg666gshluyEltlyPMNpSKetZIwDlyT43gh5f7X74NV4BlvHtgHx7QUrAwm9g8fwK1TCshdJDHGMsDPI4DX711QepIWFGZ1kwi7xSOo9RzqRiUM3hzaxgNFQOHwuqNVgMPt4h0B/VTlDoeH8VKpwMngU38IKi7jq3xfFrQH7M/QIqBlE09L9gNSFP7ijttctov7HwbV0uQmB2Kdvodg9RD6vQZziUUgcEcLU7HGfD+5xmnYp3BXeXUEs0y5uzHdeW9A43uXp1juUdQn4fU1j3UKIb8kyHsimEG6Vf0/b3+l4/gLyglGWRp/7JOpTs3WcMMRAV9MZzRPsTP6WbS5W6GTFo8dIcSHN1uZPDLWx5ZYjqY0j/HREGdluf8Ka7zJ5qeafGhGBrR6rp94j665d5k0uE9nVSNOnxOn376aa4mTgBcLXSCX8Hf3702HXMB30jwQVTrfb5gewuEApXU48Oy0zs555wi5Fa9Bk/nnCrmaSkVymStVI8mDZarKorwIddaG2wJn7ZOPJWMxs5U2wjrrRADAVlmSEfBzj+S7mrlBtpEJOVJVgjBicoM9JGFvwOoKPh+WzL5WCUug01hAtjMiN3T7k0jn7OVnpCwxoWnJQ2/EzvqOgEqf64YH6g3dHfw0ZabyDXon4cjIE/7ats0bXB58jzAxUyua2YIYGWS5+7JqiY2F83SxfK1lN7bSl0h6DpGGld1SnWDQbmtVtLk4xDnGDxrBj6rxmvngkv2PEQwuxwO9RT0kvDPaBGiM+CiINSJEII2EgTB+YZIxQph4Au41rkCLud54Qqzz0WireSOVE1sVrx3j/99BWdrXAPh0tK9xwUiI7h8IhkdbvwEayqB7xdO21eAaKWi6Xi9UdiOgs5jtz3QuICzYV0+pvAAbCnUB8BRcnkNawKjKFr0B8Y8oHWmosF8f/ovRXxP/d5TvSfG2Pkdp0YXoLSIm11+pKUAzZaSn7l58CB9SGajJIdxhng4OvXtAQFTELwRvQbMQDCLuflWFqCJl0ccARJGMUVQKd0PYnu0S+zGIYu0d1oF2xPXn+ii/vEPdQUgAdaPPwpfFKGSml77CTyMe19+xbQQ7sTtfRnqLC+l2Gj+ccnUvQWfHaJC1lyWpYeyYeJm00DSPudYIZSuq2qF9PE1OB/dNt9UvTT89SlywyTMUnTsIJXNa6r7pdE07xZB4Uc+RXaG4IFmivg+lvBoLvNpn0mGBkgjb03uFRVoofHSkQUSuzo7h5O4YKYkcEmuULNNcFkluczyC4rElav5GC4GC/Cho2OTh9JToqLRmNVtSb8uaWwgvmXtuwVFh1x7n0bcBqGHjGOzyp0WiebL8Ng40cpWfKaphnOXR9UXXAiYIp7ngMshlvNZFOJKb5goBPmGSte6LWmNZUHzGjgpu2KE5tzPgdaS0nFRDFVuF6phn2N1po/LMOyzeWfg1jZwTm1M4kae4jYw/uiS8jl9Pg/fj1Nr9yUM3wT2N5lK4QOuQnbHkVcE/+qXkBjDX3hoLqLgKYCPHp/SXYQXxsediO48A6vs3gtIezUABnXwAedeVi/FCjSPdDWIQVe5kMWPNIbrJcOItfgrGPx2j/Yh/rtPCkddNJXmqZ5uCo8FFwDsB95h0jV+hsMxpcHYN4orbiDRCafYX5mdfzV77xnx2kIAcoQh9aATTeVsy+ayux9/V6KaAWmKq4WnN9FynrxHeXIY0pfICAkaB8zMOWyQIODWkV6um4hIBUHkUoUPAmCHflSnHNXu0pK3RmEOfi9Wj9NnMwFngPDWtK4WQD6CUbPGp1AXPLVhfXPcmoyLCYNLNoHCFLRoBxoSGcvMpmTZLgX8XF4gswYIRmeF4BGbrcAb1hX7EIb0jngGXISw9xlgrh5uqaYF4lrDigB/98w5xJafbxfg+G7/ce9bqumKu6k2DGI4vulKclf9PuP952vBsqefFh8w1FRLV3MD7d3m2rwRulnLYk19hUSnQ06BYg9iTaQ3mRxHoCTj+NQElfgGdAUmwWSSPw1gSJUipZOAHDhSXwGQnetbbDXGWJEWMIach+qjj1q8z/MFYQ31bmO+PgqjGSwHBjkAV792FJ7DrMQasLh+fGH1n7168/jp2enpi7NHT16efKMYbc5QQAIWWV7RDZEvGBjE3VH4+u3b11tNwVdVtQRX2UKAd40qHFzfMyyBvLzMFYjGFNgy8QhsQIq07AJUYz8vaNWD03AFgFrQkbZcIN6iqwX9xt5YgthrlZpah9a7jc4Ei2yP2Mb2dbFifL3RUoifmaG1TbJY/Vbv0SYRWEFEVZWJ9n1n4LzmwhqYkB1xvdNih6bzphElLiXLkVFyJgqLVMxmhJ8BybUG8DaAlw1HjOXj0DtCZpn6CIidvbaL9RBr2OE5YA4ZWyueAndEVhMwWW6c+xPUYD6nhCQdGWVN1+10qk4AHwhEovljHdJ/gGoLlLFMaV4BtMtq4Az1AC1f8netEdutlDwO0b6F1VFagpVlCrEooZB043peO43WqQIe5VklqfzaVSFIWfSyS1xbHlYI+V+xnhVIzYR+HJobvkR4GGO3oI1WFwEnziAsZt9JaR+od21skPoluxTHICMkXKleZJp4g82zzJCOL9opB60t3wwo3YKUcHM7iKrjFsstXod3G/lKdD4HMGGINtMvLUK5usiXl4TnVrasZmLRCN3vJ6gp1WSdYbfMauNOIw8Quy6G8MyPPw6sXyhbLd1If/wRV4A+p6c6nTdhqNwYcI1TvXJBQgCOzO8hePQFcA5jN6/Oz9G1yNG7mP3ZaNKknpltDPbqpbMLvndXDFYSwaUEYq92Ka9goIxFoZEWJTK6UbJmgN8xMwNYpmAavBkmiRMq40iesqRLO3tCKiQY0g9DAuVoPZw9o/slskkjJxlODSWPYpioN8lnsy27hptHXcqsZn5F4suTmXLQP4w0mDRScZagqoAhmvV+u87RfPbZN49ePv3ss8AyRkK+WBhg76qg6NnBlj777PGrd9+8/eyz7TwqUrbdWAyMK/PF9lBme0OX0Ty0R9yXF9VyKG5PRKa57cIShp5xN3befmR9Ld8tdJ3+KXorZ+4S5DtHeQWQxFyDCZ4qgSok+Kpo4CzisNsV+7msMQMnC4q+QGwig9PgLN3LbcZr6G3/6myub1ez0nA4R1XevQVSWSGf4kLp7lHWEYaLAgdCINZsldRbT8W75bwn8vyt2aBOv+nU+xKjiJny71WzcZYClySYhn9VeZEaUXciR2Bxt6B1TaWfiR8SsRsVrEKm33Htpwhtdxt9tHpIFY/aviN8ACEg3jDNZldIjllC0GdiadQwWswhLm5MospbosM7vJll9oFDGeNrBv6oIuHevSohHEXcRsCWozw2W+n0AV5LqgehkyUihkMiHuOUjPSjFKcKyQP8YVDug2om3GBAfOowA5r1enFVVROn2zRc7NOMBlRa2vClMDa0jLTtUsipV54FQcvnkV66hviSHAPkKpEb5K+9YlKVKkHQqN/ONHqKfkV0zfYN7DbRt8goAuKyG7jzOSyMgT7QaU/STBPYCaaWClSN1IBt/IHAp2VTzWRrkYmIPsOM8MG8V2jFUJ5Or6FSLuXWK5p7Y5da45SAFlhVYkbhVU0HMCoefmdvZLGscJNxzreEt3pYjqAzRTzcORRhDCrkZlqcNM6noyKE8yrMQ8d1jVPhKU81LN7aPYpMiARCJhzmhW4MbSNdKCzBQNDhFsuRzyKqW5Tqrgq5CuKELlbccvD+yAmVe9vwInhWaKkJ0pnH/R0XiYtUClpbyJpznwQLyxA18ywJdTdan+xHBMwd+RMc5b8sLi5n7v/THVR6eg5ne51Sjhxb+Wj4wc2kLgj4mff4zNOpbm1CdjL9uu8qjz9fz4YWG5KTbGGuH1+SJrCVSPgTqwhnZnt6Nt6c4LnCNGcTP+3q1CRmwYtoPgoeBLWw0i8yiHDTCsU+2NnFn8DixCHVdNc5BfWlFjySEkgsICX4wusOo/6stErI44k7MOPKKV6p7i2EwwggqGk+ROp+t1kjgx7rnROtP0dHkwtJl5vfw+eBBUI0X3DEgtOgAVigkOJbnry/XcaJkj5KKitHmVJZ15KKRvp9ks9i/VZ01/kyFzNAK8xKVIVSHSXIMmDf/ErifRJmQbdNeSNcSpuhkN2pAc0HJzCR54FkVXAc2pJwiw1pKKPr7IqrohCBnE4o3EZEyg7WnvCGsOrJz3jYWCwVLSed3QypwaX0DFUs8dOIodrGaW9O0xh0/VU2EezAY9CaWv13RLQ2u8sWELKkiVdZZ31LnmICnAEVPHwJqQiplol7MFGTKavr7JqjNYjswqXhAgaUTu2evGD5o8BTnx0e9mZ5vyTG4S4qNwg89//Vz44qOLe/MulBSBqe0zGy6SSTvEpBEEoaIfvYUB8xpAI36tOXvg3gRFDelF/cN3ewcyTYnWsuB3vV0wKNOktINsux8TV+wy28/FCwC0ic8VIIoDVB+LKKpd/6frhxRBYgI1xEFYAuN2auvwiKUt2sdW9RcmNiV7NAIZgk7SUTShK/go8kJVyf247BGG5kcAuBKGYFYfXhssBcskLYeNqptl4BW+evNtYln4wU4b4aXKz5+N0F22ZN+1uke6uZVSEBIZ8PL63Ze1OtV4XWjMFcdFASVfYgM8gAYMMmWJqzRSnglzkx4WAJI3QUktcVA+Fruh3nl9mHokJtJfbRwIYhphy7AIQOmMFr0WwVbgzVqp50zXCU7ZSYXNq0c0pkV7QUPgxmg+djX5VySAEPN5nkC2LZUUwfE82BGg8rkDop0xyqSorXeM3UMHhLVoJ+B05BU9mBeKIgQEkKk71azLm70U7gmkBMsKp3jS0nIRAlWqk1bUV1TiBgENGwpSPDY6jv+sHMWiAUhXqeoor1qlExh8uIi9biSEqMzs3IQivK60BxXyVyMltBjc6ha3VOPtzEkBJmcCBCuqMyS8j/iEc9HRS5mGFmTFDA+x7tCUu0jk4Op3+JTUq6H+bVoxLJODaMt4Er+DsSJmre8+VRCd0ZHKqiNbXe6GXz3lkH0y/6/zfHEc/g/ftW47cFiVVw4axGRFNrPe/4djXf+8pNR/4giFh5iARd42nACes0vs8t3f2t+ymqZSqxPkboGTyJxm3/vqrSQS+6etYkYD+RmnFSzJe51jTSAHoo1NaE/vRhbzi3dl56l3WOQdJMyW9UnMNEN8BGDnDb/Lz6CPyYROza5JSkQuzDRAvUMOAJ7B2FVRB50Q0H0sntaInaWJ3UpJXAlZ8CB2yxClHHHrmmjSPm2pbKILsK/gzi52FcfctoX8AcwKqQ4Sok8FTRFCofkxSvVn3JfEJ9j+t6oGjM22DH3smTjsE5XfuiRFUi2rAnTzTkdOvmRtcJlSiwzQpvllm9lD/gxvSwc/nULVv4gIfTOW1TQH9BTRQ0tYeo/BDdb9pYjuUk06XmTjDMdCqoaiJxwKqjTMvS0zguCyfklIwXS2/5R5FuUdpYe3sEiQ1FPe0R7YFR4ePqZRJI9ExogSvD76m1K8S/6Xv6dlyEUwSENE7/IMWjb5l5H00/QORyKsncfcWDuBuAuKtgv4OS5omKO34pUXA3UzST6/eTHwS95YnXGPqUjpQ1vDBCN8yAbmIhlZtJVoWO6zLIh9f1S+6Yq6pVpKgrCyVKVkGHoInLaS0IdB9N8houpd6kqCerOceGt5gMsdkDBF3g0WPcNG8bzXFA7BNuZkgOQ9L26vzcZKTIXlK4FfiwLBR7u6PvyVmDjABRaQf8Hon4lmq9Bg8WkmkRGYGeSFWMhLNzuxGi3gIeP84WeVlRNdi3QaxO3Q9y4UIk7aYe/E5aFppi2RJevCAOxXOQ8nEVquqglLuvrTNnSB8XBGOfbuYTmJne2TM3rL/qjJikWt69xy9OencgAR06QgUackmhHuddu+2zkoCXNHgiUXLfXMyqcZYGPHUkerW9+iFSGXetNxpFRMIrOy0HPs16yvQq6YCWLQvx3926hyrTuEHewKLoxoDFIuj4ZJZneg+B2kuhh1mB5PxY8dpX0Jjf5P1bvF8xwMpQj2I/7QmzHjwEGVTz/N5X4Max87B+Alwb1aTwvEC88Zk6kPIyynBeJVi4VEgGvwtwBIhYypY3GEQ0NejT5iNgwU9JD8MK3OvkhM9mTdWbpdsRoaosA2iRrdXQW7vEVuAj9/9FWenuAKOghvkK3Mh6RawWgJoA6jMEjm9xD9ggJqVqIMBClSRWTVPec82oKbHWs0df2MOCH16KXwnxm2tWqs15p4fntQ++9MNbSxXpGUWBKfSuqjBGljcBy0L4Al39BMFxqw/aiRCJAX/GB681aqwpTiSPXZablsLjtlACOVuwFaF8/Yhlo8Bq8NjiozzrlE9LHy25HDqiHW/w7mG0nZQM+OT+zmgQ142W/Dq6VBFwuDbFFXvS/WXefWP40haokEgKIwgoNkegAtl99BVWbigpPrOdhK5dA8AnJOcpdCv0A0whCnAV3aSxgnDDCWc1u8sXEfQcXkktL7f1NDTqQ/bhX0415A1IS3PFy0e14D3wIhGRTakWKIPCYYmRmsoNSLBLLiumPBa4P/l66dx6VgGWoVLqzNSZSg4utGQiOnADJfZ7RcLrqv+h46wo47djYMWA2BaQU69jpiKlJoh148jyeo6Un8I7uKANgtljQOTae/Lo7VNate09JVKGA81vYhglCfMyW+BNOlTmfLACSTQhAR56lchbI9LleVVdYCUB99NHr0+2HwWnPnmkbZzVL4yZAaGobAZZCyid486GV7MNFGavjY5Vr2+C6cXGAO+nQZepX0E+1v7OUVTVNZnhAc8ORXVoi/POI/SHGZKB/OlqMZ8NacP/oaaP7BH3Fys9wxam0BliSWTypWfGQN+igNKW/RuGhaC4jTV0/XHlsEDS873twKCJ75szrHeODH9evp4J53WQx4RP8iDdSC4u0DpfVlBw09hq3QD1lO5CzXmP84zcNSTj1iRRmV4QcMhoO2XnDRSYrebCL1Q6w6C9arQt7DEEmDKGQjb32O3T5gtGkCfrIRdrXsl7oUT20Kw+rmZVDdD/8TV7lSnph6y6zScKjVe4UBCy8cEDX3rN5NKpaFrvJp+8Z6Dg8tJXSmMP6UUBFzVClLdCJxui/wQCHxVgfTEs69cYR7Lg9ynM+vN7iIM72BGDan2FHMrSt1RMKTS6yHepNMKaTDHJY2il3Zljt/YQn8RcrC/6kDt3pqD7fnuPbnxXy/4prjcQPXC9E0MW5GslbwjOVqC/zL9HQR4D3maEBf6ivxj1v/xzswAuS/qgcR8Q0faaCwKIOt1vvmwPgjrq/6k5vn/cZ+gC/HV43Ic63Qfw76Pj/hINI/hj/7h/uDOCfx0cU2lM98/RQ/f47ujhcHdvuHfYGx0dj/aP9x/w86t6hs+7HlK0fv8y5ZjQF/u7D/7AY/hCe3ct9c/rPHd6wfBq4eRK/0/F8a77Ym/PfeEmGmj2hskn4KcCwXNX36KC9naP+/CfB8d9OHKImqU/rxYYD2l4MiBuWeY48pH7DSsEPD2jA2y5zs74MferzDX9jx+pVybeHJYgiXAa4NNEpozJjZ77gBBWd3RH4snJtypdxCIgO4pQypyjI3F/cP9xBhPgRDMgDAw1zSgSjhYaaeXwdEyGvSmbm+0tvNfgHqH7nRvsjCuHxbzIxEYVVjOObHUg3Kv9P/2Ia8KkkjDXo8Pjf+AelBV0H2h10hfyHD4BViQv6sx/MRq5/ZtTDJBX9b776BHQYdFsA0eKVh/0hBeNKaKttS28/kYxaWjuIW2ii9yJHPh7b//BkTtL3UTlxCd7DIxzyKvhyV1kFsX1irairw5uyjAQ4sMzdlAz8ruUaiO9PkWUyzTqS9oGXwHovFQ5vtU1Lmr0y8JbLyabhJ/B5Bb/nhmVWw/HSXBZILyTizdo3y+DbTl4ua9WF84G/3jcCzmVuWAEp6mR60m7ltxSyIBPzXBClB9GIpv6rgnpvo6QG+Uzi7x0u61Wkf5OXsjcQ5eFezWwViCl6jVhe3miwASA6478IEr5yIq6IdkRe4FzVXuPgXRBWnkMBSYKmLW8McBh+jaedTNGAAwBSo3ttiZ3liYQqiDogwq5vs3GpKE9mjibaor6KgYXDO0+aFocqc/Ka/RwjvOJwmLVhQbFCYmmv3pPrweeBlM7lG9lwliS53bd8Kns3lMfyvaEfKSx6M55wngkz3vwGEtTOmVnurxMKzFhX+ysog3pLqSzvHSTtcrPSExpfPjMjfuMBKx+xToHZKF1W6WH8XaKWCJeCzl3dNTWlcOhfMNs6Z3FEQ5tGoKUNHxEBN8E+UOkUcmZPpR22h79QbtEnkov4Gg1kD3PDU9iYlKQuYGKtIyA81+gzOVfTg3HHG8zkOTDK/ghyD9FE5JL4iLn12sCFEqwuK995c3j3gncFHO6KYnGixwKTgi5G3nuLVbwxJXD1cJN0ATSmEwRXQMaJhoczhetoqpWkdizmjlc85xE6z3vWN25kqscXcPAgeV5abZsHcXZa6ePobcEixdx1qmIH6HZkzGgF0sgs04xuRSyFPGkVWW+Zef9gP7AFk9LcY+BfLHoCSyiJlAzCoi1LjTc1x/TfINrbnMlKvFwfjR4S46hImKVXcG4Y3m74ooUSD3PTxuKQS6+ycJMMxMZJySEu1Ea2juB+MqoQA9fspsTCrtkkorBgdGJd9ip6gHpqs21uzPmjPUT1XSe++3IXzVhSdD1gznP8ylyZiuZwbnI3ICX28P/Vqg1YOyx++C9QdRTTj71eQYhpxXjBoB2WVBgpGugXlAwS1EPsce1CgQvA+DqBBHrlhVGANWZ7oCucze9V19m77HgQc3xe0h6VtIoBvovQxYnIXCi/sKQO7Isil/D/dhpsdkinw44l9gJ4dmMQQ14U2UX/HrIztt4NlzksM4nqzpem9TIZQy6Fjt/OX31De0Hpxa4QzudUfSVsZ8YYCRTXDi7qFYhGQj4w4oYeLPeDtStxY+iU3aD8XzfpEYTAlI/xaBAFDUa9rLomGe4jZ4qtI9ROMKXNwOe8IZguaCwOZ2FNlykYyl04biX71zsiDx6BK4VtE74A1L79E9S3/LlZEsJqjFAdyctWRJSCTNEvsAjhjiFweoegqGvtSzmkZPoifUmHvekMhjmpJPLEbZiUFY0KWVb6nCkv7yE4y0bQ0ptgIfGMFDhe7yEscIFH0kFvnM5FFXn524hLv29P0ZqrIaLAUSJxevGwiYunV8q6FdIBrHMIaz2/zBu7uZ/MmVN10WEeTpIH2EjSBjAK8699qXugYZfb92oSRTb8JabjLrAjIP+vzj59MW3T9+cnrz6BqlwpbImHSSc2a8hKen7xuoTMql8zYslQJnqBBam676lG8uhl+VB9UVMUeSBJ8T1kGCiS7ow4Uyjse4+L87Z3tLk/3u103amFRVR//uqqAmz8T3SoA95KTSQLa/lL4SEDR0dqStR47EV9jmQOgQRzBzEU9P75t2LF870yIl9if5hcKn4KPnmJdGBgETLguHNL0zDgmKVOYe/IRtxDPrTS6cEzTzuGcX2OivhoFOXeZMP2eROdu4WI1DyGBYpAVKw8ihZkPMp8OyR/nIBWQL5VCx6jFfbwvW+XNG63dsSaTJMT27IIGgJPUw6Qw/riWWijsV5IjerHEjZPn1zrlk17VHucS0pE6yhqHbDBhEKKV0tuhlqYUmCrCPkeoenT+m4vjWygKqGEhhOxDQA4wUTfqO5dOfmHuqrqLTfAbVioBwVOPTpXQ3RIwOEswZiq6+zmm/HhD4hMo3eqdOIx277ag4aGRxEKvHIfSYeA8rlp86hs1mTiVVYbdNhsqJ2vVxxWs/PbML7B0HLbXr3em+cWZcuod59QVMA63ldTFv2C8y5ZJk43bSNgoxVCTqTe7bCFU5gytW2rf6AygJDTXLMGWr8Ri1KqDw05TilgPHUIOOrTa7aok64E5FtBmXfefYBlHcp+Rw1EkH9gNTaiUTmNkHQ7JZvJBoJIgzMqS2rpZl3fzo9CBE5ETlZ6ym76XOuEi+7V4/hFneKGVT8s2g0fD02SkwpLhkl3PhZi1uUhAcipb/ViqBEFuBiuweqpEBgUYq1GFGijiq0Zps5XNqTqnGb2O1h1qSL0vqD47dPSOtYVhtL8ylXL3VrBSy6+VQ0g/dQvAmpjZAdupi8V9HpkyfZwdRhxSrswmfS4m23WlZDJscJzWFSejN32liISn26Irb4KGbd0a+km6vnWsnkYWN4C1Vz+UiIhxngeA03i2ySr7XRYS3ZaWB9BuJ8vvbWGMzlTW4XFNh8hXnXjWi6sA4U605n7vkZW9Mn5/F6/yz6nQmUC7kTBbXJG8Ptgz5pBH3a3OSlru3pp8iarBWeeflDHwBZeLMjFt+ZeOQQEevO1zWdLX+0KlMMDI7ZlpItVY1QausuMqoE4wUboHEhJWYIwdrteoByKH4hObTI2UJSlgfKrC6a7dqjQp+kTZGAl7PLxT8RUKtsLAXvEMmVXpVD/lWm1wS6zBg1xFfGthexFewYGfECeF9xI2J5zSngABzQ5aR7MzQBSgSW2gmiBRLz0A7EjQDnIQOFh7crYnzTdhOKBRCpBfIc8Zlvege7i49UeXth7TReo3FWc3I5r9Y4vwTp6KYMnJMkN87dIcrrZLdvMtTk84/5ZMWlc4qqZrIY8mhaZgaRQHg2UXTJvqfvyR/CZh2uGBRL2m4SPz/10UOsiEVNf06IbLmtqSYSevd4i9Bj255agYZOgGSBRbkKJJLgWwQlCbsSMFWIK8nDWQjA/HFNcwH3Jr0OAvj1qGRSS7AgsLnQoM1YVcUu/hjeAnmNCZiY4AIXDojiKRWtgjwh67dJxpaZnUjYkStKTs/vcU0RUNLO5LBIhgiGuN+dJNuDaI+9IcFq0ujKkAb2JsgWQZdS7wTVSEVJlBT3oBVM/ApeiH3abnZwRNIrLQfIX8NFGg6Sg2kB6EKNAaz7KURModsN6WG4tixoCCfe54ZSu2mrPK3oQ/d2lUIZlVLXAYi40Zg7/AVYNKrE42w+OB/oaqkWeenjp8JKxz6yLbVIC8eEBCHGhZ3MscJ09ZFkKSate0NxXdvBdhfjkwuZNbmzHKuZlNkkVlHjf+/1/wBYwf6WYxdzZhYZGRbc+gRqqa1rj3GWqO0onR67E4UksStM8hjRJCBZM9juPdhdFYkyt2p/q1ZvV+O8TXAZqqh6TJCKOeIFhsABbBCs31l5v+MswIKQFOY3NvABS18mxU+JDaxt3sQy5RkoltfuaXf+P0YuStJVkgpksPxc3DVIZ4UxXGKeETkQmIbPQ04F6d0B7Rh9mhLaydrY//wpUUW7XWxbvvmtqPaNimqH2KJBmKs0U7GeExXfMpgKKWO181uR7d+KbP9WZPsXFNlu/g8vst0qUDvsCXI21MwVU1+vZkLTc8EQlMrX+CnK65ePnyoKs4zEGF1b0It4gcg/BiFntk61zgJE23zJaeHS3+keYmQ8cM5eZRBeTIdNoXVTXyP3bjYwDPpPMNwGWD3qtG97DetRvf62q4iqd64qjBJzab+qoE6558Euu+/3rl45+v8WXE0cUwgKJQh8STYUvTcGLd3H//zJbyJOBGR8p0A7u/p96VYx4x6pXDPAL9lVzwNBfW7rRYIBHOwesO18btlzbNi+uz1iIsNY3SIDZLtw6JFDFz5XZn4MKVM8xo/QaTFRk//8KdjrgmRHffyU2Vt02+tmazvPg1kIedln1cWFqOIeoKmlMSOPN7TTqjusxq/knFpUME0zsglJFcHAKL8fjM07gJk2gN+Yl0hikMhVLnlg3gCn1MjzJfO4ojNaSCzkp3SoO/fV1QK8zot//nTH70z0Q0OEyG2ExWXzz59Y1brLERv5wniyiNsjXgbo1IfkI4QDoBUFhMPo1amUI54B0SrR9fAWvzTAY7l5aHUYlWSVbLCoyVHFsAMQmIZBmUWmwt/IcYyeshL3gMHc/dJOEm8tRg6aDbshF7r7f4RL87C0V7De8DsbQT15QmggKeWtaqgqqMIK20wg72RKKGqslTx3F0B9LUx/4BytoUROPg5Z8ngokVlq9xZkcuON2xAwpoU/aQI001LIatXjjdMdx+QiBFVrHHJ/ZZQAXkx6fQD2AQB3edn3M4WX/YeqQFzLuTsbUqV+v5Wup7jErd6+IgLlwhP19Bmp0u89P3lmwRwUigDwHHIW1DmH9RL24+4aZCgeInVGwWGbBeKGA2ha7qKi6DacJp9NA69eVmUbmZXO8mj32c6qGIdrGa8kABO279C6HLgBUJ1gk4qtJx5geXtzv6BmcY9xps7MKvK1VQ5pORMZ300Lxwqbg2uqVsJZeJtNZ81170lxUUD2gLAeNql+kt4NO2tO5S3mmRjY4Qi0RAhEEq/c89e90+Lj0o1moH9TfhZ8whbBoIf216AHJon7A8xE+hKWs8fXBVS7A0XeqWRrPTevNQFM/MCMUq0EwSPgKncbNEsqYVB/IGS+yByK0ovYAWzJAI98MR1YIXk3xOZu4Vd6Ad4xVsrIX7Z092BdQH4r5UsxeQ+BEZtEfaeWq4p3AkepA/3hXTmt7r3Jp5Vymxexyh5tMmqlkWbPAfKTDIO3dP+uhsRNKA5Bem1xGjqNZSKfaR0wZf7m1Jqg6UevT1yjDLuRPJtKDDDEqjFlEAFAUHNeYTybOd0SQIOgUUBogp8OQbsBKsuYAlhRSmbAu9AjLpANASHbtnA7YADBavmmhjQ7d7FgFW9OjEfRxqaNcxNoYAf9hAyFqGdC64KhPqgZ4tfe1DFMJjeHkVjdg0s5cSQdO5wjaBD9nCUFgptFRX71J69eCtjAZHP+osmYOHPbXWfXysyvYUa5FEPk3gLCegtcizGkJLIlrtxMRl+nrHgl3hY+p9lNwC8Xl2BoKkbTQ8+92aKObhQr7F7kCKa9zWOVro0ARP4jhQFKnMWgWH2SmxNkwPAQIKqWFbhpoTIMjZqyeSSOKrJaqpFyh6LBkQ6mVH/KTJABFJXAMfA5tSxsaFxgjmrvECSC8jkFkuDnZdvtwDhpj7AC2fVRK1+7a7SxiVFNCQSOBMHw0O5UUuol8mNKQRwaLFjIzQo81hSXhpDwWnwv+kDwviA5aqhmWx36IDNy2EOZH/AeVbPV+tBWg4mTTrC+SOiECme1GBhFqQMHKUO4p8UUPC+XWHVzCcRipvjsQLHiZnNhmXpf/paAWRtza2m0uHZEnUpCBK1QwGqHHO2BftziOkhD0hXFHkdTYeygyLB+RCmjiI0wtTOIQIvqBMmEOgm3muXKLxbyxgiknXwfDKEKCYaiYcq1iwn87pUxnPyukamg/RbQWpjNAvv4bWTrcbSFX2UKq+Y5LVCvQvPDZs3BzYWXhPyWDNtGKfcyipUbpTrQJ8MXfP7O3dFvgV9cb5jIp5g1bZkROTmcGZ3HrLbReTI80UFslcmbfRfssPVX+OmluwcU9w6Y89m10rqFEj7Zc+T98VStiJ38KH/NjGJPh98PsAnJ4P75k1Z5jCCnlIQshxjzsUCtAIJ6EFx4t0imc9egIdljSvOBYpGvbwMZYUTFVIu9oC6hv9CvTdUtWDh6Ot3rt1lNaP5QLUUnd+pEt85zrEDTgQZPJyO3IHxoq8VD1jQwKfyAmlaIxlnXJOE3S81rhPb/viom72dSAiPnK4T89pYl2JesIK45C9tJ9ykeiynyXFHYWzGYXIEaIoIMvkJiBg62EzuHEGEFv0HhHeA9e10KvpW0mnOBSEnwfKkBMvElluBz1JE8VrSCmaeJnxXjGoGiEzZcMstFt072pYzj4GQFejfGlv3fDEplXr6gwHmMcLcgdrlfbdYvnVD3yVVVDfkWG6LP2tBYIoS72fw6HWaDBBQEDpJEsHP68rpOfJkvdscwQo6CV77WsSH/y+hSgajHPbxZ8BZwG2qaAxHxjV4Jr0wuBKLkCpS947mWMb4idxTuM5jloB805DiBl8kD3YiV3vUme1TEGUgFCvktsVhhzW7Wgrge5l39+7nU2nQ6jniVmEFHCsYCFim7QP9zj1lizorpFydP+utfttefTmdDpujna+JsfH0G73sGUh/T5PjZIBMMlOQSIKLzsXC0geMVpM7nkul1fY8QWousqNddY4aA1J8VZoRU92GQD3UH80hT25p+dnddd2A43ENQDQJbOe3DqKczydhghv1UstgW72MiGfHLJTIrWqp3fDWNdh62cwNiJW5NuhLytSpKsUZ6VTK/6JKPFH+fLW5zPhD4ZVO0ntoshnXXJbLLIc0xRyY0e3Y9VpMuKcadgc10yuWxk7+PVqLl5Up5jNErAScNiCRSs97tArd+TnGw+IwFzE8nPA0M+GUhij+5UTc76aQSuB19K6RirXgPfVwx7hH9Y4aQiQVT2EhyBk+ZBU+u1TrH21ToUMBELzkFnwbAZ1TzqOnzTRZz45O34VXdbpHYucUjx7oFslDAZaL0/VQ5h9QUAFXcCb2Nd9eMI+beNqxjoU4gnvLA91VyWknkF5FZWQf+zGsmCA+YGzsaGtCRNHkE5vd+aY1bRnIH6lUZ+LDX5usFeo80tgLXjzFqWjsNn+awWl1JRXi23DakdcguN3MAobMehs4gbdNtDq7Uto2MTHFOddHJtNksRFdxXb2prgaQNRNRO0HwbNuMRwZmoImn6+onkt1s5u65IIofms7IAtu2U/SRSeWaWjjiW65NTaegkiGEjsZzdgXUKZdohWzZJWsIE+YzDPumNDGnxEKSEgVBKQDJyk3LCHOr2FGJexIAei2VnS8sgj5L0v5Nsbig5neyuLdgKbXOsvgxEj+i+vZWsQTVPpbMXFWN+HnkaQ7OtpnwhUWGgooQuOR4lK2jMrmswDXagpfSgFkF9rYoy+6wI030g6M1R1eOrxIpVTaimLhq1bDcUsWEOGtjlnltPigHSMeBLsNWyDX64SyQ3CaBcU58pLGta/3iISK2owMywj6Ip0R8PVrtrxmYTpXXR0jSQd5Rx5y8TpJ3TV9dIp3cKFRkVg4fRfXUtO9otZUJOdD0lP4zEJ6M7GBx1qddDb5RJmOwWcStdfMTLPEMel9UJkRY0bvYmcqMg4CxS6xjSfSiK485GkH/CR1qm8Tc56wrAMFDgfaBMI4WSy1XFbCcEb6rbNUCFvBRuusWUmoAagC7n3wOOIsZYBvmbcFobXTMcInPMjWVa7ZJys4YhJXpmeEf6lUtfdojTvki3XAHre5ARhlA7lmxR8XB0I1zRBwh+HToewEYJuwRWfffOwmCUt7C0HzRKCVQxT3/H//279Op2p/y1H/82/8Lk+u+PEt/m+4+AvnALeb2zCDkbIUDDbWbGY2LqkbH64jf2fB5BA/GADa80WluhTbHOwY0vbbiilM4tTtrGyS+8BrMN01yImJqnFzreZwvqpIyNiE2sLlZqqW+QrZezJ4e+DAM3A7k8+0hi6D7r+2KZT+FWKG6sZ9RIC0uiZ/NaHKp0aALmc0AT9etlR5T5GvdL8MYT1Q1tpxWSK+quQazIKgo0Rzt89yANzeuuU+kZD+X6AWZikoDuuTinmC/nGbnWV1sHqyX+XwWlVjUpJFzu5tbA6io5GziIIkrygMucZOlXzwJI9JWD3f2tvyRceVR9IuuGVF8WEFN6IcPdka7yjgOfz7s5i8MOFkFolDnhiWBmACAStPth1m2YE5W/gNvFohvpHVhJX/NpKOGoT+NMtZNtepIwuLwSxlUVTWeEk1F3spuC/ci7sRnwqbi//KRPSLlCLfNJuyFNhOgGkS4odQgIHZWTgPX2mU1z9uRdEGyHmsuN1V+Yh4zLhXOlI8evMrw6AidRejKv7ol+LCaASZMysKXUkoS7UrkLkturQedBmTAxXhOhwq4CtlTkk8vqLZfENLKjEeDLwLiNg/iAobwxn4qNtu6cD7jvd3jfs/cgy0454rG2G3qTY/WmspN6sWIAdBZqRVjMpi4F6sXlENfOsG9s5PbmElPLrJ0sj1GCxo9F4ihYgwrpPgW5QKWGlQwOhpkpNBtWDSc9c4DJV9MRQYBJ/9TOSS3E8NRBNPQohWmt4c6Dja4S6n27NcAlw/ekIivwWIWEvgD5m3hOLLddZQpcOLypmUKRsO9B73R3vHe4fHBflim4HB3U5mCvd2jh0f7plIBD+DXqVQQstjfeqGCAyjT8Bsp/f/WpPRYLmHP7QW3UNOhWG9DejxdPGHfF09AFoeodEJ3Y8lCCkfu8adZUwCbNaf94mRjVYUcCyYEcRRToxwLNqeqJ4we7h0cSvWEBCFfYAhSZi4Vmjcsguw6AtEDVR7+YCo8BCt0IrChoOKod9NHpYXwXh1fe9dAtV03vP7kR6lbdBUSN3K9Pf0I4cDey3RBGpsvBxbEQsuoezdXuZq7PYMhRnkaWSS1LM+Wo40QM12/hFjZkl4L9hShaDG5k/R7dGC4x1YaxcaNgLtFKEIMdVl8hJJjkbwRXhYZAUHLWRPiIosKwtp6Ctbxi5HjMdPfx9VD8CjjsTq2v/JRaqBKmmMqIDK8h7jueG3Db+nGhAuCcjXcTIAjWQ1N+zQm3Im8olkK83MDgDZRthjnhlQaJJ8dT2jFyNdzy9nbPpDkerJ+GdRJxNHDV7+tj9Esqb4C8MlheSMYQp5NLkUYdnfmJSRig/30W0+UHlMMijENLWyJMSbz4411baOP0fYqgoS81O4MrEX5NQb3WNvilujGpnkw+YeJnQelodpUL7+8zkhccsq8BUkiX4nXegdBeyV8KD0VU0wmJgWPuvKEKD7NtF+cYw4xSeAG63vNss3F8eT8QrI0lnHCVadxqUfGIucVLie+QRgXk94LeYMbK5m7UY0UuBaT8siZpCZngTrGC69D6qXXIl6JN1wmhQ6SigMBz1Rs/IT+OifdczYKuJa9XPDkBokLK6QmFZvlAnu+wCJVp0JxQ1ENi2mVUpOd/D0t0e1dOlp8kJSF8EpklDKQIdUoK+trgiehlcGBekycnLj3RfQz+Ca22jji10ZpwSeaXoWDxZeVEv+hJKPYXFWn8I+tA8qRN5KetCPHpLFCDyqsdtrSN/MRFcNTRaIswBGzKPOCDy1WJ26MzqoZvtx7sj9yG1b+RDe5kBGv7QCbTLZIEdwhC3hUigVpbglYsD8G9mfsGgAlWyh7ogOp8NksrE3cvgy6quKNEY0AeTaGo9YUkV3jSebKk/4iyPwdaNy/EmXQH5RVD/h98npNpcbwXOj92NIOifYJE0q67p84sV8yMrjsbljneKXJGhh9CKsaGiHNxejY3eK0ywkrWRBVDZoMhvRG+DJw0aA2U+DiseWorUMPwdZYxRVRTCl+pq7zlmk8T7YPkS1whA1YIv52evLd357zFsaFVMGcPh22xcuCKTI5q7ySbB/vf8q2aFBCl7ZpoWdCdCkLbRX2kDiZGHlXH8gomgkTFgwH4Rfhyw5CoiLjwwbChvTQfSIgRStI3eBkwFBH9FHriJ+B5TweHtqA+AneA4kdLTFzRDHTdSDhVctuxXd6Pu3atwPKQSU3V11cXC65dmtwQW++HSUsauaYDJ01ByUjejuvLUncvUNhIg0V3JBzA34QS9OdmPwCsv5ZB2i8BQXaMsvWkhx4iNPc+FbhUazsNjE6AFYnsfF83KPXJns/cA9v2VvUPk4m9Qy3r+VfaMQNLvCUbV7MI0JYdK+w1gPdp5KHgHf8YjHDPSrzTBt5my6GW3QBDNNQ3BeC3/yYF3lcMEuBI/Jwh/RLyL9Y/GPbkiWpm/Z7Hx7x+3fzNcKXhz+nxnzxm2RZLVHtFC/2D52j7zA7IH/GO451U9uLlk35gAa0qn0ekizEk6y5RA7d9PKZbkzaW6Y/1zdVgWVPbZegiLIfWF7zYtuIo+KCSFZlfoEe/eXRXwmKlp66th0ISPZl8O5mmYy+KGCcwOMHtFdKPkja0PN3J916FVJ/l3xwKexI6+9BlWx5STePyJ1aUL0TmgaOkUaEj0FHCFO+RNZg7IUuClt6HnJTVzX59yycC4VEaLaveR/cB3KfGKuERTgIu/ra31oWtwl/lP6WA/zm5k2hmoOH2pki5hmbaeIyMZYsJALyPcAeQkLgX1LmJuV3SeupvRPvnG+YoB+1au+RY+1COQv1WfxWHLjia0d42rUb/0fMcZ3BtWq8GLRFqexLM3H3IQSnmJ+PDRQuChOYPOAZA7NexGTFy5Fq1lyT5+iB7Fz49A/abtTUj4xLD5MqF/wL1URMuk5a/Ui1GtyDA5rNse1QE9gLbPF7idZBPk6wxqEX7wRuHKAHmgZyge4jT3+S4J1tz5Hbc9tdcGlfOm4s0fmphMyseJ+rTjro5fOsmA2gYNld0Y4+++zZqzcvz548evvos89sNppa5/7W8RO4+fAB728u5dpBpyakwQ/e1CVkz19OQVghVYLEiJZLKmeV3oudXvJpvoArvZxcC5fXfHzGJf/OEAwu9hZd2HPUS4mPP67jKJ14p75GjZhl2VqLtE7nSB+YD5fV0P1nIP+eQxIS1UArr/nLNXZc8vWC7tDVQCg7KSHpDWVaK6+gU9Bb1SwhREa9E2mrWAaDxb55HKEyiQo+Ah9EWYXbHraY5IISUwELO/wCR6rBEx6V9xqiGvhrjCOqEHfTLs8LrkxB5AsfF4WgiEW7VuWd0pnrfFIsiq4oy5q8ToIr7ScT+xOuMGPHoUpHSW8UOSFYMIpMLqsu5qgIDZs14izUvA7wYLi15PuOAXVomxyCW/pa9ObQwKeF9TripOKl3fbKUFkx8C+tqyeWIAVTZIyUlGenbXgvh8usN2Vi1eI9yDvP6cg+cKP7sGO7ddI0GEcAa/jrK0SPwRJYqp3Qvona7sMQaq6gGIJt+gisKMvja5/jrtN28gScuefFx7WaP6UMwTmBuRDOzMgI7ohx+f2cCN/aMEfIlIeqIkcgLirDYQv/kjB4R0e8V5FuvdUlOkfXuE5aYWIdFl1PuCt6dTYtqlB/EinjayR3yUKcfX9P03xSeVO69VHmB9IKMi8SPskN3AIUAAUg3RhYigFvlKofGrofcQZNTFMKFwHrR+QRDVZ9wIwQ4umax7mJjRJHnLNrzHuVxSYBKb9aXsaMZSUFOVEaFz9kNcudyOh1Q8BgxAAUknCkLSWkHbvl4Q0YeCfj0xER6bE/X+wgy1T2tgp4ST5R69grHKgS33pio2LNXame0a7IdoPGNU8euUjYECzKVKdtv6LPG898NF49g+bVIz+Eca5l5j7w+lXPa1uoYdnRbB6BSA65pBdsknIMkEvWzIm7Y5BwOrZefnOfDOqiqwBRvXTwLaAET1uHKLQgCKQ7cRKKhZI2ztOmumZralqCPdEFFsUMA47e5Y6au4ClULXYZirgqQ/ZHIKaCdv0PDpwa16ecEfNMl9obSDksuQClHjIkme8q0l7htNa9ZYADOrVRBFTh7KcJlQach9hjJFN0e5ewsp3ehF75JSCODDHVQC6earjNd3wdRK0LRPRCGShwgJHVf1eSFJzYjtbd9WEXYVvgyMOMGCtWkG4Gui384CG495kBiyaq4W/O7nqLz9LzHqSDYy38SQD1q5xrhRrqLEgNePAVKsGc5zA4Zlg7H2FOvAckYnFcBNwN7u3rjIooemzmyLiPWZxdzfcJbJDCscDGL+g6BnSt5sGE9omeyKaQPEY0kslqFAG5pmIiA7Te80AVA2eTiG6lZNxRskb6FImVUciuPxnRhW7nW5ltHnTI3UXRjOhK8oOAx8kvrQoP6Hmi2kE9HbfbHJhyJuhf8BT+bFrEF93NUedjfRAYShm2BvNtTqcLcVvp8hN98weJUGuoiJtbHaqwVAQlHy1QJJgC4qc780RtdFsdDTEROqq42czkGFYPlA855yijwvpj1/neuF8mchd4P+NfBQgtpngC7UjiHByah7S7yChXlpl16mrSgYcg9AimUryNnnfpnCiQaqXbraEHNeEW3kt6qpZoQN++6aNSpHohS84rhEJe03Kb8FO39ZMIlp6KdRinL/EvBe9n7I3iihN5J883DnqhFAldUqCsMmxFPJwBkQIZRGD5xrxvEMeCnAIcoZIc5lh64CKSY+pM86l26MFLDn3cDp1uWdIbB64KbyPER/tAqdJTwFXaQiQY0wfDwQqaIqSUcu/xI25FC+mxq9jAyHtPTKH7w0BZMqmEMJ7zL5GJfOR2xVTqKXWcPFVTuuHqltaFXK1IJbGjbcAJsHIG+AaEQjCFnH9H4BvP8Nn/qfRL9e2jTP2mpSR9s6mxZlWTNMpUQHLr+WLI5NuvfFOC/ETdT6kM4pXpEoXileZZOMGNdy/rwqdwC3C84g/wiiUbSbcOpQxwaEw/XTjevBUz/IzWsIzDludubm5gJv5DGuQYhljRE64Fp4VM9V56VfrPdOd6CIbZENfPhkL5tZ3HZ08cUcbavIhUBIr15w8udn2xgVVf6UVq6wa2GHBaXqFLs0kJUJqJjka6hRHgskzosAf2qLUbbFpVagtT39ptDQzXckYSyDlWolgodpuUjGAGiiTbIA691KE9UzgKPzoRE0DyBXismXIEuLTEkG9LbzVWPPSCPLXX79OvsZBF6RCbjijN4jeXJW0rd07zaZncMGfeY8wGSxncHjOnF50mQmPKH7Scn+kzgwx/5GsQdzrqRg+QmCLAFinEdFGi4rS21+6zQ1VUOEKU+0PCPAAizbv3fmXcLRf3N04NmG6ChQ/MV3pqj7TMt48dzl/0iLqCPcNLb3dOZTVZWZDJ4Ko69gn8BptwfF1wGHIvhIZL5pfnBG2WdD7pF15RUpugeT918JnQzn9rzhAK5ppZBN2Ok6sy5i8hoNe/3lFzmHP0ANX7c5Of6AkXmhF4NBOmd1h45q5bhkRKYw57kDgucdVBE2LhTPmpFiurDEzmRDJ5RlZ3dvgyf1YH5P+8oyvZF+PcszEycFWArx5VstWDTTGaYBG2Pza5DC2NU+z4HqmE4H1Magc2Etkgkg13D9FamNx7/bdfrwQKke7b9iDJ19p0QWqGid6lJ8bOCS4n3B2cOsCaiwkUg5ZDTthVO04NPZj/GdAwyuUxZ4UmHgnya0uOVNRECY9khbv1BvxrGnnwkwMSVLKRWdrMHtvFKnm0ZClY8v6tMaBWl6bekoUTmvjMlRvChsPri9cE5Y56nUi3AtPTaxHVxW6OsGdM0WZlxx7hnThhgoZOjsNUoQkFP0f//bvw+GQHQzLnvs3cLwQ0UzYtHAER+FEml/cV3S6obh75kwccaczVtRURQTRBTnqXUxKisz3xjrkQqJGJy5Z1lI99hpb5XWmGoJ4hSGlhJfFve6tTEKHXBoY4M4F7ksxFx/0Vmj1lcVHcfIuTAdy3jECaVZdbdG5OjZNL8vC2V40Hs1bs5WhfZxA6HOMryXs6zxbilcl9rubDo1GCS1i/z8wNuxlPnMaXV1yIhsdo0cryFqZFe6gg5IZb8au5Ji+W6a+EQ3g+MQAIQnvAUs5T01P3C0m2AgTD3t0QYXHz8+13Xk/itB2DwVgnEQTbMmKK+O7wgTiFncnVwYsyvRcd6rv0KypD2WgxpvHischtDqKc6pZ6CeFQCbPOcpKsj4HuStlKfpf9HHqrHbSxZ4jyUkQ38eSFKguCYWexpwJhE8wY0pzr4CrB38QaNTd7/bYV7zD4hue+hMhMkwyclWEmtrXr8VlYcHymZxgLYOYXiRPtUNuODzNmD1U+kAr77sAvzEzyKlu4qEQ9xt4YYiCy235tsa/zVy1bDIqUoMvdH9n1P22dPjTuzvztyTnSdLI6VR6pzVNrfg4uvsS/pMA80r+WSy4IFv09D2E9bpoXx6m4DVxcOhCkavu2C9wW4Ik8pWEmKmHnYhYegYsgCKpgFFZppS51whtu9xiBzsPPEqpNQPf3GhvaRSjvcfWsx6/I1J4QhRNMGUDVAkCzVJ2jlPiy+Wjqxxf7eCPG9VZm04cJShblHlVGs1qY6PiCn2ZLRqJlfyiVsm9kDeTDG8AJnVlDGbB9bWwqTXHrLvhdJAHZvkDGI8UlDXwMiVYjq7UG9gvFLxhH9tqNjX2kAKszmXD2N0SmjpvW6y0276gvgPc+1s0AbPhtMcTUrOxZPJjUKZBf1xUi+Fqga8wmVVNECUKkjSzYCS/ZGG4igrvLQJXIBN+PvX63ZZLk+rL19VlkUliUQqVnWcFMSafm0Bf4cmWuYhO6lR34OAiA4T7TwDJ6godjLRXgtd6QpHDcyjyIjgPEZcctA6pCr3YExUXsFUAjyhif4pYGlxI4Qcu9jcNGSstmx/NSfs8/oxmxUUmmAC63LjMirqpPAiRDOamcXJmmnBU//JOvQcdppj913jTk7o0q/Nsep3K0n0JdUo9zy8A4gAMLiXcW3jbojFRf47nUCAKNHWNDaCvGVJ5YbqjYlmd0qjOH2cL97uMx5LnzO82Ric2kooBLgqY8+QYkOfdCa8zccPduUtJRjBUxA3fzMuNUzt0EgRsjDnV59gu6X5hLWnkgSW/E3Q3XUH9eLwsiXKOpsQ6U9mcajSwsRkk7aMyTQ/QibAHfsjrCnFJ2I1QtnqeX01i9WgF8vqpscmKWCMOha1mUMYlhPhsl7dCHFQsB/DERjvzrD7Tao5xmQVWFyHw/Mb4PeBR0Fz2LMcmGXBcYHSiCW53xVTdAJZgIBsBAKHCwU+pjLCJgDRbeC6jLmKT2PSihv450r162uGtkmDf5/kiwfnCW0FT9XA/ubcEXXQd4iBs3OahNzYRvZ0LivEpdCngb4LLU9wJqDw1k7yEMl1hWKaDMG+fmPFuQpi3N9w77I2OgChsfxQS5h083ESYN3r4cO/I8OVx/78OX9466rJbZ8872tsP2PN+IyX7jZTsU5OSIdvfyB0ZLHExJJ6PNMvfgWf5e8SPBTR/7VbS9H7uxL8BNCQTJIrfOsqn9OvsK3CQnsYuljTP3+7D/T3h+TvqzG4PJOrB7oHcZKTmBZEdCbRAuXEYCO5GZhpMRHXI8yHcXD6Zud8jxdIaFA03hroj4SXLIRyZ0mnsS1uX2iQxJOBJt8Dh1QIYqbyANjj3mh3wLCrY1//8neTpRBRBQiWVjsxaPq0GCWNwxMjtkhjfYYK5jFJMufo3U36hMvaR/tkeOaPoOkHIHVNI5rpYSenOWkwr8cWcfKl29dqUF1/3Y2SXejyj7F9EGevjlvkZsz9SY0ifEHcoz50OvaRJ+NurR6dv4yJqUibEHp3UkQib+lf3U6iaVjWSgCfOeGYwhbPPqyaxyy5wZNS08bcTH1804EzZC7Wcnx37Zm8ZalGe0aFFVZDO3Ot0HDd6n2TToLFzT5fYrj5k1u6gDTV5g5qL7kYKhkdcDUgD++4k1d5+sB9oR/65WWRld07NGAA1FhZDzANYkhjHjTWA4SnsGHnCifWBg9tVGeJG5drihIUgVYmwBjAXOKj0Kxy0XuGdBwLTUTegLVKBglNEp27ma6dAcJsKISYKB8lmDOtoWQbyXv8x6GqzvpGgE6f8gGXNW52daF2U+/Ri7fC4XZtEHpIv/h2eUnwp797WIo+UvFgOpXRQbioFrZnwvS4pFha7YL5hs9F9bo8seCLAXQr0R9G0BgSNSyhzaFrG+mt0cyeanGbNpWW+E+IpCWs11/OxOzC4TlxDJFvQ3BZR7dcAFE6EjUyuZPcSTWx80sm/0+JEp0nt8BSaFV5xQdPcl6gqtAa2wLrQ2dAkBV3YYWsNwwQgZLnMlIZFe4SJRtb4aKLTv3ZLSAVqp8GMUogRPVsbo2J66c2cHT8LmyGF21+FqaXKFDkYLNpSqehCUq3eyZONEUDmfDRmQAyfha9Ts94+OXii6S78og8RnuFVDjktx05N3f1T31A7KmEIDBmvHtImGRUjCHirPdfCBoa23SMB9Nujvd0oOr1yWq48oFajEH6B4WUq6BEVFm8lTOKr3NrQ5Ez64W2+u2+n50zRgmCADcGpody/3pqgJbu1TrFl+4ZCrUs1fZ3MR9ckuw78PcA7h3xeUsFEaVW5UK/SrPe+gQKNUZtXsMgkTqE0hNCe0HkwrFdo7oQFNLPb3Y6xQoWgEbhL+vgOfblN+s6Q+VBckAtQcnxvZwjmULb2W2vHw7b8nEszquTAVVsgLbBUrFl3FXeaE+HMeHEVQtuSesfPlFCStb4MJJBdcTSH77yM5dGg9zVIC5iG+LrMGsllf9cwy7KcbMM5GWnTd3/WcobVIH151/C6wWp2xWw5hIxxuG+Ed/UD6HtTqvrnhEqOGZbT2xmJ1Pxpa3R+ogdGujD7gN+MtyvyNX/e25okKYJ6dR+Cil4yVlvCU4qxlgQ30yLgosFksQ5ze69Q5ksAJYTkzFzl8OqycOINLjC5upBwogLGB3wepSsBKYplLpR0muVwO6Nkn31KiBB/Jvoh86mGcRj888+fJGLMdsvtDCdp+pOlJKZEmH5jRAAFLG9RCfFeAGNzIecWl3uSKBmrrh7SGCXt3dr0KOBBCpYkRK0mhZNjG/Y6P2GX+faVM7qOIAtGg6aMbPX4dePo+IXbJs7ALUqbHuhLDiJmGeuHN4aVllMYdKurjPF6XPEJNlSY/KdZTWryUDIQqDfIdkZ0jb+4N8IWtJRC8OYzXRWSJZO30ZwnhWh+2nkAt8ALdE2b2nl87Xk6rttTZG88HY0CL+xVZM05bOe25iMUfbRLwjJ8hceL38oqUGKAULpTATQIKBBzDfsSowwIikZwAM2EyG9peQgV50v2gqfR9Hh7HZEs6rLZfol6lexO7cXIhgi8sR1a+P6WWnjS63sB3tFWrcC9tndmzRtt6UHwfqS8BqBsy7FTTgNXiqdGFmxtar5/8bjCgI0bHbqTBy3XPWNbfKKJKB4c4PkUY8usGr7Rv8o4VaL1Tw/2UwzSMuuTdHSDGVM1RtY8YCH9YEDP/SQjqbMrk/ghiSakc51x8NezY2JE4hOsma9443at0sTgrWVtOfZ9OKVIdH7wYgBBrXsFKqcc+oBvf6iWrQklqyrzfChvt9PAQ/sosRymxBbVu4oqud/yJNx8PEvDBGmCyZ57i/1ej6Ry/e0OmKR6cqQM4hCblku96yOi8QNKGgZ6u+MC1oCMRA6D5CWe4UvIwPFbMHGMsFOB6+lTzBAlbEQIm1Z8UyNslrlfa8ZXvc+/qdRyWpXTz9k8+NQDPs8mEm7PP4opgLmczwNY0h94kv9TxoNF4NVQCa8iZotnP6wEvt0MU5mq7JNcRS2qJBVlsU+PAigb7blPNa2RhTNLWDioZfJia3L1cy6m+MlHFXtMiShrjnWvKYEcaCtnWJ/8E4/HbD0WeuQU9QnGrHGcgYZxxpEBpIXAUlkpWMMt65DJKQzdei2dvi4+wIlA2fKJT4Gxzrha9UAKaxMSgvOsCevJRc+aZTF5fx1nh8+ppB9QtCDlHbf3SebTmr3AT8JBoBCclwo4Ud1OUDBveVxPBJ+NM+oRl+a02FIeYlZ1mGydVOOJvIVEbuD9BNKndeehFPEKHflria0BBQ/lGQcorbX5D1eLyTkr0WcXTp9mJ8cZxqypQLwxkhkQBS6JHCOcWYr9zJSPtLUIbdkPw6P8XT4Dhge4m1kcuG8GvUf/+kj+fl5nJfaDyU97Ow+Mabw5ucFPGybXjyW8oz5eAY5RvnZJOcsUTHTGT1bPuLSFScByY8ARvL0s0EEDnDwl+PozgLyUiKhmWLYBoolFcF58xJqim8Yb6+3srriA6cDrmqYH6LthY/Kqd8Dtj25en35vOHrYGx0e7+8eHzy4Mdx+9OC+hdsf/Zrl6VMQ4luH2Y8ePgyL1P9vjAkm+LaboquqmjBb2BA1uySGe+/QY7htPYRv6RchnDvdamfJ9kcAnmqI5gB5NYbyUyb2ZMHpe4VzjT13QLl3YQgkcu7zwd2Go+Zq8WHoTC6giJ5k9XIoUBS1v9K4e5NUEVTRHGN2nftIKmDy9msiYO/6QQU1tRTApg4lwrdhu1H5Q/bW6KwlpPb9nfvdaaV2wiPBRZfCpdPIwWGUXQyAZtjt6X0nJ8OqB53oTzTlWAssSsZ+OqFhYjsdbIiSzj6tJitwHhsABp2rgvN9vZRKvnoLud7J8z0GFPAapPwpANDQx9F7zUtx6iwBMbASXxvKJrfhYt7dtlcnXo/T1ViPUUNNBC08LTGdt72QNM/sYUQWRYGnysi+fq3GHvon0eojAAWGsbku15bX8N8qqKh++vRVDNSFzYPRRNg/Dfhl3Ft4EbVd60iRkM3ycupm+4f8ZPlfeG9ubifSitzChDmktFVumpL6V8ZVBkS5AiMHwjY+M1gOoaqWG8p9SvwSBJOTqENepCFxaQpJi1Hpq5KqECwvW/XQOzvIsHmQLEOo6mW9TdIB5wVlukvCKmzJ49WRHxABndpb0x89ogSXUtCtAou2FJ/46YA9o75OjsfikWA43+RXx73wpLnVIt6/7/ztRTFDvoPozjF7CxsJa8ZwW9U5tLK8XM3HDYGUSWgK4H2nd8dZAIc7u70/9u6aFhVxftzDpO/0AWZfPd34fP2Dg2QIluBOurknFZC7Cx0s2Q7VQreqmc5K5DEi2K+Xl2RnZvprrQ8I/3ifJwIUW41hTf8SIIEqaHHuRTgStH0lZMIX7Fa9t8s6pYcStY1nV19/nE8ygFMXy89Jw7OsScH+229bMMe9V2XjxJfbudMLLCBMjIMoLIhXPJ8OmcMv9/d8OPlutAtzzoNO91Kb/lUp6G80JrHAC+gOIEWnic2mqZx6LSDQc45oj2WkHLROh+uNtz7bjwjNADJFMLomSLnq/neyootmNgtGwBs9yoSStk9tmQqeHERbkXDmlR4gHwGWh4bsMll/8NBZnVLigN+vUMd6j4LUwwTbepQKEdJffXmbjuHY3pR0W3Sf1o113Pvu8bfh+ytaY8UqEBF7kO6XfcgTbaT0ryqhmjrR9+yEXcE/eywIZoNUFkDsBWQgpqXHMyxBhXqrWxbTsFShkg4gafkK3GxVzQFnTsLx6KBE+28oaZYKoICGDEYTWd/CwM2+Y9Lb4WHa50AOmGjwmU+oa1KwfV4AvCC+yjMolP5VyNgWHMk0ZWbQTW9KfFCtc+M1AncpQkfK5HHp+u1NgE0Xi0WhI8ujGyINw10tTCjMrOZgI4pMMYQP3z3W/e+1GHeWFlx0N0skIh/3vqqr95gZoYUnDaVgaFQAu+3paaoROxthzlsQG4ZUGNKFMOkZSvqmSbvkJHBSa0KRdy+7v7O7s4+X9fdNjzjene6fk591beOvTYVQGlBT/MBinBpOcGodI9380N2bTnfl9q9lSSq/JKlfqi3++hETeH+lbCXja97QBagtJZKsQa3R0IIAuTnmA/R/ceMtoSqykrQZ/TFMynRSO93GaIt2EwUejWD777YwLpaI+M/u2FblxZdXE3QanLmtfibXzhmHGekJporyIiDKHkqtsHkDHMof01k+XQp+6/cC+rE8frKMifVbB6wnGaJbJw/dRlCqJ6g7sbmpD06NYE7gebuyiOSuoZTpSkxsuY7h7PHx98EZbk1XLmWq+FXT7fIf//b/NNzY5s79yxj3jEB9+MWSrQh9IyppGBVMjXW8uh5W9ZASOhNjXTdO6YG2wnePz9jEPz6G+T3zPOPiC0ZXurtBiGbIydlJLkYB7arEsTnaedhxawQK5F9OOaOuxgIprQMgVzVbWp3EN8dQP6AjfvFVVaE4/EPv0QJdLYjfe003FWWHrvM4HXW444573/83NL2YzA6FD1Qu+vsKfN9uEEQNbWERkFwB+8ALnoQnNXiT43T4JRjf/RZiDvWGL/qLkYSX+INm1Ff5z6fusUCQ+VYKDA7hiJ1SCY7Wb1gD7UYIHonPiv86TGn34h5ba1r7bSn5oCE5ImVyATq3SctSsc8iB4AMItw/vC3ekjE87AnRpMzACUxWfd3lu1m3HSnL2GOZSXFRJC2nI8PZihq3s9pKhsd3eItREwo+tydALuC9ndEf1yhY5JY0tMlqRupqpEa03+2sCPyT7p0vVoKgTXuJqDA8hgucIV9j/FV9uM09nsBLPtZVaBRhE8kFocwJ1SFZh2f1cVwB0B2zBOe8LP7eifxSdtfMnJzXoqRMQzheYY6wn7jQbksuaJAd27NmjHHs0KFgVq9Y/QKc5qWzPiTlMrS8GZtZnAszmliJj72RrLeF7f+Nkg2aOAh0ckrHT07EQnXa9jGWHpIdnGhhLPtDq56eqI7RWENVKrlVooTky7CDlm64ZjcxnS6V2VZqdz+ez0146Gycu9byM3BjnIFH6AyqAH6OO/JXHgGuwRlPyFmzms+z+rpzJCfAcD8nRjjyLBTlB6QRuVZqImOgh1sHU56mU73DWJfBNdArT0i2kns8jIh7R4SKATJSyV8ln/FVNFxm44YpG1dcEHpZXeSAEmmdyjeQa50IJUj7gI7FU5/sxNgHjfRFHXGCWjTaVqxtO/FXdXTPRgzXBJBOMJto3PYnkdHhGnGbAJS6AkmmPpADWnMUmKFbah4iOzXWF22umWyaLFZG1ekBG0P0wjXbtBx1R+0K063NLhfOius2AzgGHCK0B9tstVvcYaFBc7hz+Mebt+DVqcOUIvnGJuo/MTLvrds1WHYrm3s/4Dx7b+ppG31lVcZ84gEb0sPgLBiP7zPyLJmWwqynPKOrU84B1a7yiljKi/wz2gSx1uWUZsg7Y0cQa4BaQ8oJ1xUHkHId4hMvqHZkzAEUzNkDo0oeGq23oz8MDaHii/AXHDTcnFTorByG3nQIG7CkI2+9+KnQ5Z9y09v94sQzP/K5W3m4tNpJHCtl2fVAsiwRfBAFXan8GQYsPjbi5CM8tWU4myUjROT4ZrzsPY+jTSjbQdKfJoxmk/eg696TD04o6zchdm/eMfrTfnG/NxMZ7EMJdhYZKf/VzPx3RPXfCGdKhtKYUl6RAJdJfFV3+v3v5Odv6T4njrfi4hKCPVCQyjXxA9nP7s4WlXdncbnQgyisuZPqosRns6b3uShYGkyCHOedz02Hrw2cgy0N3irnBSSDBDMOhRacpWF+fpIyvJ9U751YISP5uPcUkRxW0yt8dREn4cxYzK6FQm8V1kAyGYvMiQM/SdhdLRF9wOlEdg0PdkbOguGlSwdtj3vPZxApArlyVWdUT8W28pgTpt33baa0fDZL3QxMOw7V2FYQvLe3ero4W/hDsapjtUS1J6q+qRWTnLKubjYo040VnYWf1wdN/c0XzqUTc/G8PfijByL1Rm4aW03I/Y1lh6y6d74qJ5RcpOuk4yb1gp33nRpke7xeP7IcqNLTcQ/UGlSyeebOiuaMU6aLvLlzt9Xgy0JLKJNz5t1JbB+yn5nY/f0CUk5UxwhNtF2o1Asi5dfpwRJ9sVsn9i4RlN41+Dq6Tj5Zh08Zi9jqMRB/5E0Y9oKjQwfYNtZy0JrAC/svdnq//52288RzkxvVQ4iYaSHYGwO/6trCXhjsd+BG7+88+Bm40YPe6OB4D/7vxrjRo/3DQ4Mb5f5/JdxoF1bx1sGje/dHKfDo/69RiARC3WembFmENAB1zwNQiYzysT4eok/bzSWRpweAPJ2C++AaLcgJVEeZMAxc35dqzKRQpnv7sLUJHf5gTeXvrDemgCjwzYIrgeMAFxjXgddDIT+KsgH091L7NaOxUS2yAuuWMEZWNL7zql5XE4eCqT4SIiWXTDQCNUi5MVrCbdT23Yuzuc6RcnkiC56kD70JinMdeHPURq3eKHaHvJOJCeoq62KqJL/mzcJ7/HFQLdkMMMG13ImE1WKAB4l2tgHROYE+L1ZzqhD0Jr+gjCUsTGDqCpqf+9pTx73eu1KIFZ06lH88JizUmZOp4DBM/HrL+OihBUFiogkry2fuZkCBgR86CYcftGJie96hYCakk3V4q3Uf+ejaZnSyKdL4jS0YQcRjbafcKEF55kZHh2y8Ynun/9btmfe9v1Wr3ksS7H2rzhZxQc2XmGYCP8ckkkSvbQLO6MgXXFED7Q4tI8UpxhILdVu5vshVGvIsFChV5hoT/edPUhEla2J8ic2WiVcpYZfw9D5AYhbw4RYAAasjbh986tH32cegSqrpis7ZVzI/jE4OkL+tODbm2kjVHvYRY2e8Q4kBBdZp6PSwVkUw0zu57cKS6+5TQow3gfXOM9vECX077shm096fs96lk6Jf9O/9y+KL/aP7Rwd7/S95jg5D99Cf72VuIaBNBP7aBCYMsRQEOOW72WmDv/8dpi1JlDmbNcpE3pD6GLAbIzg5mEy+kcgP/GfQQb78xz+wpg+gjt+7STrjSfrxxz/fw++tOVdO2WEUQtrhHJj5JSVckrM75bPfH7Iu9EMp83YjzLaNBzFXfLjEu+78kxBObGGY5ZAKzPNZh7wdB5QYwQ2SEDvN3cNgoVFyWLnuctjX3x7Ifnc/k22hX5IoEEANKhsYaAAmM/ATov8O3ccN4vPkd3vmdxEbNNt2ISaT6sVUYSEdLLzT6FjoYD7DhFQeZ9LgQO3pRgbHg+Eu/B8kqjkVbPfGiWoPHh4+9Ilq2v+vZHCk1NPbNzZGDwJj4/8wbdTXHqEFHs6zRUftEWM2vMSH2pVHgjaStsKh+8nTrClmiilGBzc6nd3dEUng51UFsVzoLmk5PHh4sC+Ww/32XanVuS+RWwPiXTnCl4XEHk6ea7z3fCUFNLBsRjDPQU4C5yM+KaiCukQNlO8ZNkBZXWHWYCYJ0NALxGPgjelnEyxNyv4pKX/WQ4LyZEWaIMtE1ndBDncdC0dTiKQMwNJLZslUNUMKd2G0oTjvEVtmw9XIa3hJRDd+/fbt6wSWNCZCQzpfwhq5befnhBjADdGwDKLvszcbxEicnr4IKeORLwUaVDJjKnV8BbGY/jdV72QJtWGfQdyhn7S33aUG94QWE3MbgyFb7rSD4Z5R6+S5cnvh9TfP3erUUDERz+DG1G8uu46UnqiJCzpV7yi9ug6dlkyFycHhjosDOwQFR+8vp6++ofz6HheUxIJxQf9P/BkG1pjhqsRT3i7pjk9/CwXEnDFF3BT+Ngx0Es4a44xtt2OAUyJo5l9LpMiGNz7G44GHouE6AVzeE0vLwuS6TQaHb0S801JdltnFEYPGCDM8oju9r6sruK6d0pyD71hOVl1B8dJMK2ZicjhakSX3KEoXtsN5X/WV02AG9Lj2fwm5HyXKFVDrUlZvl1E5q4iU+yYC4k3uZpBkev9NDmvY94BKlAsiEUpnJ9a9dycb7PAQzBt1jbcBCsQ0Wvf02+cJzBhtcNaYWaq6e4toiXMOA83o2RPYFKWTLE8/uh1ZuxGPRh2dFWWxxPiRGBlO8is5clFqeVjmHKYajrgtARUE6nI+RUbnhneq9b2ZXZvGi5qjTgIpKXSEHv0OnT2Wtg0JubtJuYjYKpCNJGrhyfXIWuwd3n0aXQys4KEUAxRUyYXV6XTIeJPCGuohQE5F0izsyLgNrpw6d1u49FTzqyWmHrKFVmfTYoUBhyUYTXj34vdu2aIrJWHom1pnHN/0cRK518cZQ9Xi19vQngDGkOdQRgKVQcqwlDXVdbkoPiB7URHVcqN2IUlUkocXGHgL8Zpup2HMyrWMyUrOOM/zJaJXUqP0yjylubE6EBHwj6/NPoA7SNeVAqn0eJROoqXFvTHdUSHr3ckxKQL/8W///s6Jy/m1dgC1oAFpM4MKwE4uylGErQlYgyBVjDHMifvu3QkuKr4jDNi+0BASjLlSbUYx1xqFXrBu/UcN1gmkH/WjgrjWC9WGjHbqGn5r0+zbYeExhvzF7IOznTJf38KMMPGm0XklOLa+N1VEcLoG2dm+vnFYUj3RLso24jWx3hGKgneo8SIJuV5GJEm46IPxanUqiFz6MUM0CZZAtmPG1h/9ALEGdwOEu9zUcyQdAnYCyOuBvSQKKfXNwkobTG7o9/k1qUmCIAtei9A9mO42BEMqcxd6nt735m44xr0wRyzCX05xboBtnNlokttsP95m2i7NBeozMAIJxCyyWn0Hxg6BZ45NM6AdmMR0o2kdB04aZwVVs5lbn3z2Rd9dOP0BXDc1pwS7Ke1DSz9UUEgSHBhoIfSdrJhQmme+nATT8pJvdOmDRRGZkWXkrKaHocIVMKiBOiI/+/rtyxfJWpiPeLuAzABvyiynJLHWDSeElGZfhWW4YAOFZ89XiZOCVCyn8NGuDfVsBUptuDqRglF4IGm4CVLhEp9VZ0GBBExEBo7dSM0jpx3sEdjTuEAIZgERz6BZEjd3JJf5ymexkyqxBz/HFbibbDz0W+n1SjHpPwOrx07vjmf4wBJbIGeK+Wouqo2W78Tt6rRgZzzdXSs0Anmj0g9LtLxwp4y8uK/Oz938iChvZdtuMMIOjZIkq+1zsgiQCNsLKcSocJa4VeN7P3m8t6oymnbIYYkA1llET2ZQsRHysDS62iVcQ3XxoYDs3GpVT5Iu7cOODNX1owKwq5tCmNzghou1HcmCMmxi2BT+cKGsKNtEftoAuVPSg9orzI9aZS0vGziRgTRDTRINMkynlXxkz7rFOmGzTinUnVig0X+HC88gVZe7pjXxG/Tk5q6drO1CU+GRd+e9d8fdLtcAF4D/hoUP7ybaNCIEcLhS8LGazzEAO67B14CaOAiDCX3ewh3YYj1uP+25efIWGooaA4GVzCew5Rgd6zap24uTJT7OMyz1UIZUXx6smVVCp6SunaJeTILltyWe9WIc9l4W7hJrqvOluTPTd3WWuj1gB0PAhA2TMYhEeAg8jF3VYMW/0hbRRNu3JOMNHomdcs6Qe6s119Dp1K4Jqh35KyncKMP4iiJh1YAgazhzNoK8yQUTKQ3qv5A0AUmgJiNwwJcfao5Jop4mujHU62BUH9GnEL/KPBQouhazArYLqhazPCuTdDnx3U7qahi7OqVcDooUkQRi9xwo/6DvzQEeuiqLUJ94HJhKnp9Z2Hu/zyK6K+XvCFyphS8D+oFY6eleKQgZDUmC4H6KXg7fxiNZhTvOpxGGmRRv8ln+wWntTcHjDYQo/CeeObjW3HXVYOIW3P3QjbPPnlVOL+thqHsBxpmiMs7lC8QpYWkhb/0rZyRWEA52rY2RJ0oXsqyDU0OXWLwJXdeX+QxLeVyUVZP7ZTAYA2MXJCpJMgAKjYRMMxLIe5lrwQK5ScX3jQlsIGA83Z5SS5OQApneuKHPsy7fVkKGXxKr/ldVtQSsxgINtnqq3mSbnJJ4lxQuGyce2SHEcvOEzrDrfS07lAGcrremE3RH5R8XwHlQMufepOWiC9wd54HjpRefeLyemGEUpSfdAwj4t35uJ7QI66DghBNEvjtRcOyzs52ghOAx3dRQS03eNsTWoum9GDhVFwPoZNO1J7HC1uqesqyTd/YOOmxXoLzfVVHonrUhpZSTDdOw2VXPATe+XPLk823dKiADggtpqDcSI+tMWCW+RKiVq8oiRe9AzSEJyuFqygfsAbq7fmDq0NATTwBr8mrBmZ9VDV16LCROs3M3/KQM2FyjlmJNsSAAvWJaQH4jFlEKDRhynQhbSuRyoA76keupH+0WPPeLOK3ZNHC6cDpifX6tihLJ+WyGwd8lV6ytOA8fA1MzWMepiJad3uOsNLlB6siEwxTIc5bMSU+mKSmP3iucIEgjdUOYzQriaQfTHAsJVlQrPXF3Lq+dego/1JgKCovkLYsFpnkHuRUeiAcNthJ4AIaAnJEq9nBtcWqt4KnZmZBoO15loxZwqWJROxoSxHIS7+zv7O/ufLyb2mMdt4z4+y/ySjeymOdDCalNgEMa5rXT131nukLV0B3uKxCU9WqGFA/uFm+kxBezl9IRPT19ER0wP55YgxlC9Jf2EX8CI5a7iUksOk2srl6IwNFbbPB+7j3vgDNliBG96V3F4jgdaZbrZBVN7KVa3/g/f0LTQe7UBQUMceh048r966OJTaplz2Vk9qdxNeN5BYvBCUYlT04LWHYNwoaXpO4wmBhs/PWyGcUx0iN45Ko7wXDe/tBjr9XJk01YvZuYeUCwff9G5qG4W/YBoxb/Dl7CHjoyVTnG+ozptzS1JTj64jjDEz0mnqvUm3ZQozce+1GVVhNLSXq84ZTKCEQKF8mEKEH2oSqQ9fB7LsDtrsUCCZ6c1cioM4g+0190Zw5sYLnp0qVwOBA1dlNR51ewbdzqPr4syiz5op7hfGSYz0c7o+CbUcx9bnUISB8iBvSv6pVTEmaNovaQbJxIbQUFGCkgA/Y6YdBDgJADsskMEJCWtGHUmfX57lgwY4DY4uAn+DClx2DCBj7QLe5TMtbw6kIFiDhq0yTlGBS/abLJaLj3oDfaA0rq/aMQ+3W4uwn7tX94dP9w34C/7v/qLOUR3Oj2Wcp3Aa70G6DoN0DRb4Ci3wBFaUARAij3rDRyImeWD6l8Ur0xA+slPi6pEBGocl27SXjl3uF9rQKA5QfRpetrU/WoFU+hRkGWdimwAYc9Bqw1II4/yOSCfPJo9Mw6USyJwUM93/JDN9jiovTVoL2TmfR7hLeDh1guGWRiRoc8NMNjb/NXv+QvXpAlmU4yOzrc80lmXZTa3fh20h5JTkVvjeTeJfFCVTrRNpKA8xqEE1IpYS1i7dPrcnLp1ESMc1NRolmulX3y+TjH+0j2sapcVemfQo3D+FvQxGixg1H6FXWCvK7Bk5975mJyGVQJZnB4ge4gO9o/5LDC6B5KJlYbiWWJYf+QN0ysblrQPdlVSydOdlUZ6IFei+LqAEwRb6pkF12uFSEqxMsTMsCg+nlxseJUMWXomEMIDUWRD8ym4i+ZXPdqS9IsuPG1xkz0OO7kdo87MTHKrgSgdQycONUlMtrEB8mbW85SIuoV5BlSgfV55V3bcFXwUU38Oo7B0mnBFiIYQides9uk9AX4gnTJhD3Mu81ZOLNcr7CFEKF4VmJ6ETLrEs3QSyOwpTUrMwhS4Itx89wW+7s6zH9UKjGk7N3Mqd+ty+FMmbTQGLT9cu9lKIkS4MKAI9MOcGN51GQC54P02iWJmmOG5oiImXVLQ+ngKZwTHodj5S+EGJlYvrhJJPwDrluBROYcy4cnOT0j2ehfTgMSa9af507xbNzC0z1WofuRQVNROUNe0CDuSR0g18C3YH6DB9Q+x2C0fLFknNvwB2fmDv/7oLc7fDjoXV4v3FDIiGwWGTKqSJeJLl44BXpW/MBOu6LlNArH4TR7HgofUYqpkptAKlqUfmJ/KBbEBpPaDW2ks0ru6F4dVx8FXNo4eQhx9o4oC48un+UmMTCDa+8a1VyVp3iOteBfsaRIqWgr0xyiAuv7gBawOduKa6AgMJubinJZnF8btWlNSQc7L0fGw9FBSGpJzGzGXOOWOp9KkT+91G9CjWVHchCMZD/4ay/4iz0x6Kr1ZT1AobYw5e7v6S0lYI4xflSzcBQE65OsvYMd642mnzQGHEWDM67Bd57+1j8xsh6kVCP7YQLgKbtiCCu7NiWvyy/jlM2b+mX2h7uHPafdH+4fH9yYBOT+/sPRQZCTd/jruWXWGyy376DZP0oygfynaPFkCe77CcimH8B/MR2SGZY2Bfe9KfiIn4fEC3w+tAXXtZw2Bh+61UHPp5Q/IMMQgr1J4/CDmPuSeUiRaqKhEs7t3/8OLtEJ+HVy5QH3Mu6vL19wy2QhLlb1oiIbvKtYMhjbv/8dclQXokFWV4xyknAyT9KQsgqY5QwMzEkOehb4wj9mWE9p4WPQYD38/ndS6vuSfeQVee245JekACStxsOR2IwtWskTyn3xmcPBVohFwT6Igt0bCYL76KA96O3twtrvHUaC4MEmQXBw/3B/NDKSYPdXlAPrN+utC4L9sJzk+rWBY+o6mBMp11C48oYz0hU3Vm0UnZJYvYQEx5zUtY0nj+r+wYiP6moZVAYkDCUgdjC/n3nEuDEypeEL8aQh0pwIkJF4ayC2B6gLQiinnFhAnYHKJORzkM9LqtQSJITQIBn5dQO2crhXPvbQGK1nBecnwE+Qo9o46cjJzbFf74aQdtgVATEay9vgxn5WTL843B3t3R/1v/wa0koqfX1KqqEWhk7rHi6Ynjt6Q6B3SJ3qg90Hncf6GXnyqaKIT5Yhf4VU+2vAj+WmTPsxDt7072mBGpWmsoIEHgd70wleUOulaXpgi5YJH9GE0dy5bM1kA48BAdhApcmMPZyc0EMyWENgwOxH44hShzLya0D0UhxFBApLdvcKczWanD3xHt5WCLrtU8jO/eHoqLf7EI5yi0lto+x0G+9o/+g/SXZuEB+fQHhGWtRvR+A/+wj8SDv5HErDQPRjKOH6joDCfUPpJr/xzLQxVUNXy8mr6b67+V7kS1Ib1TGvEDrlKzM+fG6SMJ9O3pMuRk6alDw+2n3IehYQS7WcyEkqPX05upze59dts3rfAwfWOA7RGKDIJbXJXhHgYOGVsnUcOhG5+0FfaadZOFthh1L2DelkvBWfitgWZXGGkRiG3GEpHCpNgSzZLaf0pvbEc8NbHY4oInKJULP9prvhvPaIzL+XLIqqKMLU1qTTT2ZZi0lZ2mW/c9ZcjisorLh0J7F2+h0z8jMQRABXFCiUULTiXBLr1br8PfHrc5+l31NHkHGjwzOFuoY02iA7PzoV7aZ8qOKKioJp4Lfl8od31Fqn8Uvs7YyUBsluciyvE3YkJi0Ntr0bI/Z18mraMBv6YjR21FFZZ6TMSkkXn9aTsYPpeKs2HduG9/FW6FUxvciTrLIjJWkK924qnPDuzYtG/JsCAEfD05TaC3+forRmYmpyDBbJWoYjdSmFg2oLEOv2w4g5K+wCQEkPi9m3DcSfNyptuHAXAN4YYBS10w8mxCLIRbeQYyGvQTRw5APRFIi/wPz5nIsLA94DeglwHzIkG2uM5CHXYjRoVWwBx1JNqpmErc873kquJ9m5HccwnPnuXZYh8gCoH0PW+HXlOW3TD5KLmtppzaJwmloNO85K5EIqaqab32rHSKky2TXbzMl94+elv1MvIu7oFiIEbs8YDM6n1aloRZnYdclRJPo8SchcbpkK8bLrKtpzJ354IGzRk8clWlM9HyUvci9eaqaVEB8SDwGm+7EhhlND21y/1JSqX3o/YQSRqIA5ck9RZl0fM7wYJ5AWE8Qc2zHfOy2NoF35sDEpU0U5bK7LCVj8webPPV3ZxmYfcfan8NnPgruAfhosQ/sCSL9pUA5YXpilllw4fIOmsNFxcy8BWVGDgzeetQ3NiaIK0NGoJjILz6ConRGfPMmshq1tFZdV9zyXtsw/isGCX0v+TkBP0R0298UReCBOL7+QAOk6qffPn3AEIKyh37CnDTSPbIY2Pp/9YGeXeA7uBu3okbepQKqxohUFCbDgr0YfUYnEEByhXZOWRVcWSSx67Xk2zROFNXBK2frLxXGtikHsVdt27PDHG91ep3j1QqYuXoFaQ6wcLlbjWTHpPfnmVL5buz0oYRFcDFCpLHjJc1MCnkbrQ94dw9aS0W7YptYnoBrO3NnATXDmnnAqyBmYlz6pjGkNkRgRIYbMoOJGBW+OqhVp6nGpbCsButL6iQUYK0hntXcmeOzpMmg8TmHq2WbcqwkXo5xu4BQxP09NuMUuVInC7L+owPQ66eQE3Ie808Kg12NcUbRlg6aeQsz7WVZOriHMzsP3JW8osRekE7lFzonJhntOorL2Ims7vV5+82d0DVPtGqCcdQ9+3wCAClwwq4aImVCfTJ6tNWV94kMZeoaKqL56rACHlSM29Bl5hfC4qdp2r1VtaWD4ilFxQhgN/bmNQFlvEYhhHN2Cqf2rnFUkJ0J9DVFmvCTWCILlUW1m8yp4hen06avuzdV6i42DZ80fkulLKbwCGEm9X8mHqEwoyBzBzMnja3dn9CgPNkc+8NROjjQs4WeRIT4V7OVrNtJlAtzeSng5Ej3stjncwCdJ9b4AWo7Hju1YgOmhTkbjf3uKkIiHWAjlcc+exvYk4fnizFmWA1W5xoKxewQJrctENF1KfwWJXFbWILRQpwvs2wTuUY5OsH18jUHSC0zQaJ3MU2B7T+6nseSEn+VQZCDneyqbnUmTWDhmPEtNHqhEFuNlxVZr7jbSjWCgmtDP+bQlb+CtfVwtnCmT9A2beEjjGMK12mCNLq6XiAF2yKJ3oqODAQWCE4Buv8cod9kNraHas+jGY5LrI6032M4tSHWMVupWqxODTdxYXpo8ES+0YDdAkH6TfXBdlKvemwpiASHGueNYmAsDpPI7L4uRP8kPuLXKqfJgoInuQwXK3h83PmuLZwdVjwUM5T2kmEgPASLkzTE5C6P9P6YWokWo1z3Ww539Xrvmsky+nSlr1gb7P+mZTEKh0Ld/UyiU1EPaPzre37spFGp0tH/wQIN42v+vlKHWHWW59Qje0cHmgkibAib9P/34I60N1gmEHvcgzDQ69FAO1wKIdoxBPYj5wQ1C4lSe60hScfP8iHho8OhCan1tSDwCkI+KTaEugTjURY4Z7LVmD4XFA5qdHoEOwZVyVWEHzbG/rUL0Qc8TaN0pK1AThMrUVj0Xv/xdTSACg0NdPCf8KFr1s5kpkWG8ACyUkpiEI4UaHQQoy4Mg99ViM/fFd8l/PQj+uh/8dRT8dRj8Fba5H/y1F/xlR2Kfo6ew+gbmm2ANkplUAIJZwLU8jmpz7I52Hz7ofxntmuPeI6i55vSoPKeilbD0z/WBaMVZAwOshwV3bh7MP3/6tKPpwIMecJrsCE495hmciUAbkUBz8sxpV/Xy2sm+o/3d4Xg53NtxahFi7pw8QikncsKdrNwZkZfVUpo5OkrLxavFkEPv9zgz8J6TsYf3dg/uRed7Z1FesKB2OtplVUtnr0o3A8+r0+sGcNTyKU7nGWJ2ojeJh3DpFMq4s3udCI5DQL/tPjjePzjee3jT9OS9hw8f7t83CI6DXzU9OSU0wyB8+olbvxpwfIB4G7X6G04ui9k0Kczh6eggQNr+bNoh0kf7KNJnxcXl8iqH/+1h4yzDLXubNIff7AimvUEchvjTNcOPvTvUCibV5MvPCYogBSiR+wsRBldZGsS5D4gaKxv+fLnn7IUlBvhJKtDz7ti6b37/O4pQweVBFXrEOEaNm6vy/P53TgPKgRvNnWL3V3Heu0NVYc6Qcre50/v8u9dPnpzxDfF5727vD9l88Sf8n95/kTb905yLeTadzs5m/kd3e/+AG5p6mUjsrIp65spjd7DPF2ffPn1zevLqm89/eZ8WJtcBzRp9Wnl2vwOttb08o40+pB33/wHZdjTcPRiORr3REZzwg1iv3YhO298/2Htgkb2/YtWdNXIkBMGue+72IWy7u3DEfzvW2/YJ2j5MplvdZjVWWd6czd0E4pWAuv8urMOiEJgzflwcHx49fKDmwR5s7+vm7Ioqk5udA1ccfypFzfyN9CPXHZqZTDSzyO4b5FAA4/xssgi/kfgkMH/goO7jSA5MKgWGGuWc6x+2hhFY/LxnoYqUnKAgcTT+vg0C591s4Jnrk/thkIlMftMxYqFYW1zKv+0D30phXfeAFtntqM4k1ChbAASdaAqM1L2H3P+Q5u+e/QNOTGt290dckEuojYZE/naPzR7+jZlQmCueunvTqYBc5cFwXvf3u1KLovY7pviAX8fdG5NzedbOMUgsd6fglN6Tf5gHda4h6chyz9yzfwyRBrM2LytrcLCfdAjcS3wmvw7X5Eds7jJrLkmrcWdz72h6uH80fpDvTY/unx88GO3f358cjo/y8f402xvxOQP9x4mw5RmIdqRxKfLmjIAhcAWMDg/3Rg8PDkcP/kR1nM+ciDgbne2eoY3unuz/aXw8+tOP/wvjk4hu', 'yes');
INSERT INTO `project03_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(244, 'toolset_executed_upgrade_commands', 'a:3:{i:0;s:55:\"Toolset_Upgrade_Command_Delete_Obsolete_Upgrade_Options\";i:1;s:57:\"Toolset_Upgrade_Command_M2M_V1_Database_Structure_Upgrade\";i:2;s:57:\"Toolset_Upgrade_Command_M2M_V2_Database_Structure_Upgrade\";}', 'no'),
(245, 'toolset_data_structure_version', '3', 'yes'),
(246, 'wpcf-messages', 'a:1:{i:1;a:0:{}}', 'yes'),
(247, 'wpcf_users_options', '1', 'yes'),
(248, 'wpcf-custom-taxonomies', 'a:2:{s:8:\"category\";a:26:{s:4:\"name\";s:8:\"category\";s:5:\"label\";s:14:\"Рубрики\";s:6:\"labels\";a:23:{s:4:\"name\";s:14:\"Рубрики\";s:13:\"singular_name\";s:14:\"Рубрика\";s:12:\"search_items\";s:23:\"Поиск рубрик\";s:13:\"popular_items\";N;s:9:\"all_items\";s:21:\"Все рубрики\";s:11:\"parent_item\";s:39:\"Родительская рубрика\";s:17:\"parent_item_colon\";s:40:\"Родительская рубрика:\";s:9:\"edit_item\";s:31:\"Изменить рубрику\";s:9:\"view_item\";s:37:\"Просмотреть рубрику\";s:11:\"update_item\";s:31:\"Обновить рубрику\";s:12:\"add_new_item\";s:42:\"Добавить новую рубрику\";s:13:\"new_item_name\";s:42:\"Название новой рубрики\";s:26:\"separate_items_with_commas\";N;s:19:\"add_or_remove_items\";N;s:21:\"choose_from_most_used\";N;s:9:\"not_found\";s:33:\"Рубрик не найдено.\";s:8:\"no_terms\";s:19:\"Рубрик нет\";s:21:\"items_list_navigation\";s:49:\"Навигация по списку рубрик\";s:10:\"items_list\";s:25:\"Список рубрик\";s:9:\"most_used\";s:35:\"Часто используемые\";s:13:\"back_to_items\";s:37:\"&larr; Назад к рубрикам\";s:9:\"menu_name\";s:14:\"Рубрики\";s:14:\"name_admin_bar\";s:8:\"category\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:24:\"post_categories_meta_box\";s:20:\"meta_box_sanitize_cb\";s:40:\"taxonomy_meta_box_sanitize_cb_checkboxes\";s:11:\"object_type\";a:2:{i:0;s:4:\"post\";i:1;s:5:\"stock\";}s:3:\"cap\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:15:\"edit_categories\";s:12:\"delete_terms\";s:17:\"delete_categories\";s:12:\"assign_terms\";s:17:\"assign_categories\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:1;s:7:\"ep_mask\";i:512;s:4:\"slug\";s:8:\"category\";}s:9:\"query_var\";s:13:\"category_name\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:10:\"categories\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;s:4:\"slug\";s:8:\"category\";s:8:\"supports\";a:2:{s:4:\"post\";i:1;s:5:\"stock\";i:1;}}s:8:\"post_tag\";a:26:{s:4:\"name\";s:8:\"post_tag\";s:5:\"label\";s:10:\"Метки\";s:6:\"labels\";a:23:{s:4:\"name\";s:10:\"Метки\";s:13:\"singular_name\";s:10:\"Метка\";s:12:\"search_items\";s:21:\"Поиск меток\";s:13:\"popular_items\";s:31:\"Популярные метки\";s:9:\"all_items\";s:17:\"Все метки\";s:11:\"parent_item\";N;s:17:\"parent_item_colon\";N;s:9:\"edit_item\";s:27:\"Изменить метку\";s:9:\"view_item\";s:33:\"Просмотреть метку\";s:11:\"update_item\";s:27:\"Обновить метку\";s:12:\"add_new_item\";s:38:\"Добавить новую метку\";s:13:\"new_item_name\";s:38:\"Название новой метки\";s:26:\"separate_items_with_commas\";s:50:\"Метки разделяются запятыми\";s:19:\"add_or_remove_items\";s:49:\"Добавить или удалить метки\";s:21:\"choose_from_most_used\";s:66:\"Выбрать из часто используемых меток\";s:9:\"not_found\";s:31:\"Меток не найдено.\";s:8:\"no_terms\";s:17:\"Меток нет\";s:21:\"items_list_navigation\";s:47:\"Навигация по списку меток\";s:10:\"items_list\";s:23:\"Список меток\";s:9:\"most_used\";s:35:\"Часто используемые\";s:13:\"back_to_items\";s:33:\"&larr; Назад к меткам\";s:9:\"menu_name\";s:10:\"Метки\";s:14:\"name_admin_bar\";s:8:\"post_tag\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:18:\"publicly_queryable\";b:1;s:12:\"hierarchical\";b:0;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"show_in_nav_menus\";b:1;s:13:\"show_tagcloud\";b:1;s:18:\"show_in_quick_edit\";b:1;s:17:\"show_admin_column\";b:1;s:11:\"meta_box_cb\";s:18:\"post_tags_meta_box\";s:20:\"meta_box_sanitize_cb\";s:35:\"taxonomy_meta_box_sanitize_cb_input\";s:11:\"object_type\";a:2:{i:0;s:4:\"post\";i:1;s:5:\"stock\";}s:3:\"cap\";a:4:{s:12:\"manage_terms\";s:16:\"manage_post_tags\";s:10:\"edit_terms\";s:14:\"edit_post_tags\";s:12:\"delete_terms\";s:16:\"delete_post_tags\";s:12:\"assign_terms\";s:16:\"assign_post_tags\";}s:7:\"rewrite\";a:4:{s:10:\"with_front\";b:1;s:12:\"hierarchical\";b:0;s:7:\"ep_mask\";i:1024;s:4:\"slug\";s:3:\"tag\";}s:9:\"query_var\";s:3:\"tag\";s:21:\"update_count_callback\";s:0:\"\";s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:4:\"tags\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:8:\"_builtin\";b:1;s:4:\"slug\";s:8:\"post_tag\";s:8:\"supports\";a:2:{s:4:\"post\";i:1;s:5:\"stock\";i:1;}}}', 'yes'),
(249, 'wpcf-fields', 'a:1:{s:5:\"image\";a:8:{s:2:\"id\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:4:\"type\";s:5:\"image\";s:4:\"name\";s:5:\"Image\";s:11:\"description\";s:0:\"\";s:4:\"data\";a:7:{s:11:\"placeholder\";s:0:\"\";s:18:\"user_default_value\";s:0:\"\";s:10:\"repetitive\";s:1:\"0\";s:19:\"conditional_display\";a:0:{}s:10:\"submit-key\";s:15:\"image-949354446\";s:16:\"disabled_by_type\";i:0;s:8:\"validate\";a:1:{s:4:\"url2\";a:3:{s:6:\"active\";s:1:\"1\";s:7:\"message\";s:112:\"Введите допустимый URL-адрес, указывающий на файл изображения.\";s:17:\"suppress_for_cred\";b:1;}}}s:8:\"meta_key\";s:10:\"wpcf-image\";s:9:\"meta_type\";s:8:\"postmeta\";}}', 'yes'),
(266, '_site_transient_timeout_theme_roots', '1552325805', 'no'),
(267, '_site_transient_theme_roots', 'a:1:{s:9:\"project03\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_postmeta`
--

CREATE TABLE `project03_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `project03_postmeta`
--

INSERT INTO `project03_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(8, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80__trashed'),
(9, 2, '_edit_lock', '1552163423:1'),
(10, 7, '_edit_lock', '1552166986:1'),
(13, 10, '_wp_attached_file', '2019/03/thumb_1.jpg'),
(14, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:190;s:4:\"file\";s:19:\"2019/03/thumb_1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"thumb_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(16, 7, '_thumbnail_id', '10'),
(17, 1, '_edit_lock', '1552164335:1'),
(18, 11, '_wp_attached_file', '2019/03/thumb_2.jpg'),
(19, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:187;s:4:\"file\";s:19:\"2019/03/thumb_2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"thumb_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(21, 1, '_wp_old_slug', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80'),
(22, 1, '_thumbnail_id', '11'),
(23, 2, '_thumbnail_id', '10'),
(29, 16, '_edit_last', '1'),
(30, 16, '_edit_lock', '1552194066:1'),
(31, 18, '_edit_last', '1'),
(32, 18, '_edit_lock', '1552206481:1'),
(33, 18, 'stock_description', 'Ура! Первая акция!'),
(34, 18, '_stock_description', 'field_5c842d4d4fe4b'),
(35, 19, '_edit_last', '1'),
(36, 19, '_edit_lock', '1552206693:1'),
(37, 19, 'stock_description', 'Ура! Вторая акция!'),
(38, 19, '_stock_description', 'field_5c842d4d4fe4b'),
(39, 23, '_edit_last', '1'),
(40, 23, '_edit_lock', '1552206440:1'),
(41, 23, 'stock_description', 'Ура! Третья акция!'),
(42, 23, '_stock_description', 'field_5c842d4d4fe4b'),
(45, 25, '_edit_lock', '1552168002:1'),
(47, 25, '_thumbnail_id', '11'),
(48, 25, '_wp_trash_meta_status', 'publish'),
(49, 25, '_wp_trash_meta_time', '1552168149'),
(50, 25, '_wp_desired_post_slug', 'ura-eshhe-novost'),
(51, 27, '_edit_lock', '1552168027:1'),
(52, 28, '_edit_lock', '1552168054:1'),
(53, 29, '_edit_lock', '1552205180:1'),
(55, 29, '_thumbnail_id', '10'),
(57, 32, '_EventOrigin', 'events-calendar'),
(58, 32, '_tribe_modified_fields', 'a:1:{s:12:\"_EventOrigin\";i:1552179858;}'),
(59, 33, '_wp_types_group_fields', ',image,'),
(60, 33, '_wp_types_group_post_types', ',,stock,'),
(61, 33, '_toolset_edit_last', '1552194595'),
(62, 33, '_wp_types_group_filters_association', 'any'),
(63, 33, '_wp_types_group_templates', ',,'),
(64, 33, '_wp_types_group_terms', 'all'),
(65, 34, '_wp_types_group_fields', ''),
(66, 34, '_wp_types_group_post_types', 'stock'),
(68, 23, '_thumbnail_id', '10'),
(69, 19, '_thumbnail_id', '10'),
(70, 19, 'wpcf-image', 'http://project03.loftschool/wp-content/uploads/2019/03/thumb_1.jpg'),
(71, 18, '_thumbnail_id', '10');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_posts`
--

CREATE TABLE `project03_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `project03_posts`
--

INSERT INTO `project03_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-03-09 08:03:55', '2019-03-09 05:03:55', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', 'privet-mir', '', '', '2019-03-09 23:47:57', '2019-03-09 20:47:57', '', 0, 'http://project03.loftschool/?p=1', 0, 'post', '', 1),
(2, 1, '2019-03-09 08:03:55', '2019-03-09 05:03:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam\n officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut!\n Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam\n officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut!\n Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam  officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut!  Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus. <br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'О сервисе', '', 'publish', 'closed', 'open', '', 'about', '', '', '2019-03-09 23:27:58', '2019-03-09 20:27:58', '', 0, 'http://project03.loftschool/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-03-09 08:03:55', '2019-03-09 05:03:55', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://project03.loftschool.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-03-09 08:03:55', '2019-03-09 05:03:55', '', 0, 'http://project03.loftschool/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-03-09 08:04:07', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-09 08:04:07', '0000-00-00 00:00:00', '', 0, 'http://project03.loftschool/?p=4', 0, 'post', '', 0),
(5, 1, '2019-03-09 21:53:28', '2019-03-09 18:53:28', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-03-09 21:53:28', '2019-03-09 18:53:28', '', 1, 'http://project03.loftschool/2019/03/09/1-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2019-03-09 22:20:24', '2019-03-09 19:20:24', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'О сервисе', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-03-09 22:20:24', '2019-03-09 19:20:24', '', 2, 'http://project03.loftschool/2019/03/09/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-03-09 22:32:47', '2019-03-09 19:32:47', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.<br></p>\n<!-- /wp:paragraph -->', 'Новая запись', '', 'publish', 'open', 'open', '', 'novaya-zapis', '', '', '2019-03-09 23:48:18', '2019-03-09 20:48:18', '', 0, 'http://project03.loftschool/?p=7', 0, 'post', '', 0),
(8, 1, '2019-03-09 22:32:47', '2019-03-09 19:32:47', '<!-- wp:paragraph -->\n<p>Новый текст<br></p>\n<!-- /wp:paragraph -->', 'Новая запись', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-03-09 22:32:47', '2019-03-09 19:32:47', '', 7, 'http://project03.loftschool/2019/03/09/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-03-09 22:35:47', '2019-03-09 19:35:47', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.<br></p>\n<!-- /wp:paragraph -->', 'Новая запись', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-03-09 22:35:47', '2019-03-09 19:35:47', '', 7, 'http://project03.loftschool/2019/03/09/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-03-09 23:09:31', '2019-03-09 20:09:31', '', 'thumb_1', '', 'inherit', 'open', 'closed', '', 'thumb_1', '', '', '2019-03-09 23:09:31', '2019-03-09 20:09:31', '', 7, 'http://project03.loftschool/wp-content/uploads/2019/03/thumb_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2019-03-09 23:09:55', '2019-03-09 20:09:55', '', 'thumb_2', '', 'inherit', 'open', 'closed', '', 'thumb_2', '', '', '2019-03-09 23:09:55', '2019-03-09 20:09:55', '', 1, 'http://project03.loftschool/wp-content/uploads/2019/03/thumb_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2019-03-09 23:27:58', '2019-03-09 20:27:58', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam\n officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut!\n Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam\n officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut!\n Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam  officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut!  Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus. <br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'О сервисе', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-03-09 23:27:58', '2019-03-09 20:27:58', '', 2, 'http://project03.loftschool/2019/03/09/2-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-03-10 00:10:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-10 00:10:27', '0000-00-00 00:00:00', '', 0, 'http://project03.loftschool/?post_type=acf-field-group&p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2019-03-10 00:15:25', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-10 00:15:25', '0000-00-00 00:00:00', '', 0, 'http://project03.loftschool/?post_type=stock&p=15', 0, 'stock', '', 0),
(16, 1, '2019-03-10 00:17:35', '2019-03-09 21:17:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"stock\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Детали акции', 'detali-aktsii', 'publish', 'closed', 'closed', '', 'group_5c842d3a930fe', '', '', '2019-03-10 00:17:35', '2019-03-09 21:17:35', '', 0, 'http://project03.loftschool/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
(17, 1, '2019-03-10 00:17:35', '2019-03-09 21:17:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Описание для акции', 'stock_description', 'publish', 'closed', 'closed', '', 'field_5c842d4d4fe4b', '', '', '2019-03-10 00:17:35', '2019-03-09 21:17:35', '', 16, 'http://project03.loftschool/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2019-03-10 00:18:31', '2019-03-09 21:18:31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.', 'Первая акция на сайте', '', 'publish', 'closed', 'closed', '', 'pervaya-aktsiya-na-sajte', '', '', '2019-03-10 11:30:18', '2019-03-10 08:30:18', '', 0, 'http://project03.loftschool/?post_type=stock&#038;p=18', 0, 'stock', '', 0),
(19, 1, '2019-03-10 00:18:45', '2019-03-09 21:18:45', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.', 'Вторая акция', '', 'publish', 'closed', 'closed', '', 'vtoraya-aktsiya', '', '', '2019-03-10 11:30:06', '2019-03-10 08:30:06', '', 0, 'http://project03.loftschool/?post_type=stock&#038;p=19', 0, 'stock', '', 0),
(20, 1, '2019-03-10 00:22:28', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-10 00:22:28', '0000-00-00 00:00:00', '', 0, 'http://project03.loftschool/?post_type=stock&p=20', 0, 'stock', '', 0),
(21, 1, '2019-03-10 00:22:52', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-10 00:22:52', '0000-00-00 00:00:00', '', 0, 'http://project03.loftschool/?post_type=stock&p=21', 0, 'stock', '', 0),
(22, 1, '2019-03-10 00:22:54', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-03-10 00:22:54', '0000-00-00 00:00:00', '', 0, 'http://project03.loftschool/?post_type=stock&p=22', 0, 'stock', '', 0),
(23, 1, '2019-03-10 00:35:24', '2019-03-09 21:35:24', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.', 'Третья акция', '', 'publish', 'closed', 'closed', '', 'tretya-aktsiya', '', '', '2019-03-10 11:29:42', '2019-03-10 08:29:42', '', 0, 'http://project03.loftschool/?post_type=stock&#038;p=23', 0, 'stock', '', 0),
(25, 1, '2019-03-10 00:48:20', '2019-03-09 21:48:20', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</pre>\n<!-- /wp:preformatted -->', 'Ура еще новость', '', 'trash', 'open', 'open', '', 'ura-eshhe-novost__trashed', '', '', '2019-03-10 00:49:09', '2019-03-09 21:49:09', '', 0, 'http://project03.loftschool/?p=25', 0, 'post', '', 0),
(26, 1, '2019-03-10 00:48:20', '2019-03-09 21:48:20', '<!-- wp:preformatted -->\n<pre class=\"wp-block-preformatted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</pre>\n<!-- /wp:preformatted -->', 'Ура еще новость', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-03-10 00:48:20', '2019-03-09 21:48:20', '', 25, 'http://project03.loftschool/2019/03/10/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-03-10 00:49:18', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-10 00:49:18', '0000-00-00 00:00:00', '', 0, 'http://project03.loftschool/?p=27', 0, 'post', '', 0),
(28, 1, '2019-03-10 00:49:37', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-03-10 00:49:37', '0000-00-00 00:00:00', '', 0, 'http://project03.loftschool/?p=28', 0, 'post', '', 0),
(29, 1, '2019-03-10 00:50:33', '2019-03-09 21:50:33', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</p>\n<!-- /wp:paragraph -->', 'Новая новость', '', 'publish', 'open', 'open', '', 'novaya-novost', '', '', '2019-03-10 00:51:22', '2019-03-09 21:51:22', '', 0, 'http://project03.loftschool/?p=29', 0, 'post', '', 0),
(30, 1, '2019-03-10 00:50:33', '2019-03-09 21:50:33', '<!-- wp:paragraph -->\n<p>Ура еще новость.</p>\n<!-- /wp:paragraph -->', 'Новая новость', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-03-10 00:50:33', '2019-03-09 21:50:33', '', 29, 'http://project03.loftschool/2019/03/10/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-03-10 00:51:22', '2019-03-09 21:51:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat totam officiis cum culpa, rerum, labore unde, quisquam, qui tempora eaque ut! Quia, ipsa amet aliquid hic odio quasi expedita? Accusamus.</p>\n<!-- /wp:paragraph -->', 'Новая новость', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-03-10 00:51:22', '2019-03-09 21:51:22', '', 29, 'http://project03.loftschool/2019/03/10/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-03-10 01:04:18', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-03-10 01:04:18', '0000-00-00 00:00:00', '', 0, 'http://project03.loftschool/?post_type=tribe_events&p=32', 0, 'tribe_events', '', 0),
(33, 1, '2019-03-10 08:09:27', '2019-03-10 05:09:27', '', 'Группа полей для stock', '', 'publish', 'closed', 'closed', '', 'gruppa-polej-dlya-stock', '', '', '2019-03-10 08:09:55', '2019-03-10 05:09:55', '', 0, 'http://project03.loftschool/wp-types-group/gruppa-polej-dlya-stock/', 0, 'wp-types-group', '', 0),
(34, 1, '2019-03-10 08:10:15', '2019-03-10 05:10:15', '', 'Группа полей для stock', '', 'publish', 'closed', 'closed', '', 'gruppa-polej-dlya-stock-2', '', '', '2019-03-10 08:10:15', '2019-03-10 05:10:15', '', 0, 'http://project03.loftschool/wp-types-group/gruppa-polej-dlya-stock-2/', 0, 'wp-types-group', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `project03_termmeta`
--

CREATE TABLE `project03_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_terms`
--

CREATE TABLE `project03_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `project03_terms`
--

INSERT INTO `project03_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0, 0),
(2, 'Привет', 'privet', 0, 0),
(3, 'Мир', 'mir', 0, 0),
(4, 'Первая статья', 'pervaya-statya', 0, 0),
(5, 'Новости', 'novosti', 0, 0),
(6, 'Вторая статья', 'vtoraya-statya', 0, 0),
(7, 'Новая', 'novaya', 0, 0),
(9, 'Путешествия', 'puteshestviya', 0, 0),
(10, 'Горячие туры', 'goryachie-tury', 0, 0),
(11, 'Итоги недели', 'itogi-nedeli', 0, 0),
(12, 'Новость', 'novost', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `project03_term_relationships`
--

CREATE TABLE `project03_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `project03_term_relationships`
--

INSERT INTO `project03_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 11, 0),
(7, 1, 0),
(7, 2, 0),
(7, 5, 0),
(7, 6, 0),
(7, 7, 0),
(7, 9, 0),
(7, 10, 0),
(25, 1, 0),
(25, 12, 0),
(29, 10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `project03_term_taxonomy`
--

CREATE TABLE `project03_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `project03_term_taxonomy`
--

INSERT INTO `project03_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'post_tag', '', 0, 2),
(3, 3, 'post_tag', '', 0, 1),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 2),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 2),
(11, 11, 'category', '', 0, 1),
(12, 12, 'post_tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `project03_toolset_post_guid_id`
--

CREATE TABLE `project03_toolset_post_guid_id` (
  `guid` varchar(190) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_1`
--

CREATE TABLE `project03_totalsoft_cal_1` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_BgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_GrCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_GW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_BStyle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_BCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_BSCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_MW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_WBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_WCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_WFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_WFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_LAW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_LAWS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_LAWC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_DBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_DCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_TBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_TCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_TNBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HovBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HovCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_NumPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_WDStart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_RefIcCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_RefIcSize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowLeft` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowRight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowSize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project03_totalsoft_cal_1`
--

INSERT INTO `project03_totalsoft_cal_1` (`id`, `TotalSoftCal_ID`, `TotalSoftCal_Name`, `TotalSoftCal_Type`, `TotalSoftCal_BgCol`, `TotalSoftCal_GrCol`, `TotalSoftCal_GW`, `TotalSoftCal_BW`, `TotalSoftCal_BStyle`, `TotalSoftCal_BCol`, `TotalSoftCal_BSCol`, `TotalSoftCal_MW`, `TotalSoftCal_HBgCol`, `TotalSoftCal_HCol`, `TotalSoftCal_HFS`, `TotalSoftCal_HFF`, `TotalSoftCal_WBgCol`, `TotalSoftCal_WCol`, `TotalSoftCal_WFS`, `TotalSoftCal_WFF`, `TotalSoftCal_LAW`, `TotalSoftCal_LAWS`, `TotalSoftCal_LAWC`, `TotalSoftCal_DBgCol`, `TotalSoftCal_DCol`, `TotalSoftCal_DFS`, `TotalSoftCal_TBgCol`, `TotalSoftCal_TCol`, `TotalSoftCal_TFS`, `TotalSoftCal_TNBgCol`, `TotalSoftCal_HovBgCol`, `TotalSoftCal_HovCol`, `TotalSoftCal_NumPos`, `TotalSoftCal_WDStart`, `TotalSoftCal_RefIcCol`, `TotalSoftCal_RefIcSize`, `TotalSoftCal_ArrowType`, `TotalSoftCal_ArrowLeft`, `TotalSoftCal_ArrowRight`, `TotalSoftCal_ArrowCol`, `TotalSoftCal_ArrowSize`) VALUES
(1, '1', 'Total Soft Calendar', 'Event Calendar', '#efefef', '#009491', '1', '2', 'solid', '#009491', '#009491', '700', '#ffffff', '#009491', '14', 'Arial', '#009491', '#ffffff', '10', 'Arial', '0', 'none', '#ffffff', '#ffffff', '#009491', '14', '#009491', '#009491', '15', '#ffffff', '#009491', '#ffffff', 'left', 'Mon', '#009491', '20', '7', 'totalsoft totalsoft-caret-square-o-left', 'totalsoft totalsoft-caret-square-o-right', '#009491', '17'),
(2, '2', 'Total Soft Calendar 1', 'Event Calendar', '#efefef', '#ffffff', '1', '2', 'solid', '#ffffff', '#ffffff', '700', '#009491', '#ffffff', '14', 'Arial', '#ffffff', '#009491', '10', 'Arial', '0', 'none', '#009491', '#009491', '#ffffff', '14', '#ffffff', '#ffffff', '15', '#009491', '#ffffff', '#009491', 'left', 'Mon', '#ffffff', '20', '7', 'totalsoft totalsoft-caret-square-o-left', 'totalsoft totalsoft-caret-square-o-right', '#ffffff', '17'),
(3, '3', 'Total Soft Calendar 2', 'Event Calendar', '#efefef', '#ffffff', '1', '2', 'solid', '#ffffff', '#ffffff', '700', '#00c603', '#ffffff', '14', 'Arial', '#ffffff', '#00c603', '10', 'Arial', '0', 'none', '#00c603', '#00c603', '#ffffff', '14', '#ffffff', '#ffffff', '15', '#00c603', '#ffffff', '#00c603', 'left', 'Mon', '#ffffff', '20', '7', 'totalsoft totalsoft-caret-square-o-left', 'totalsoft totalsoft-caret-square-o-right', '#ffffff', '17'),
(4, '4', 'Total Soft Calendar 3', 'Event Calendar', '#efefef', '#00c603', '1', '2', 'solid', '#00c603', '#00c603', '700', '#ffffff', '#00c603', '14', 'Arial', '#00c603', '#ffffff', '10', 'Arial', '0', 'none', '#ffffff', '#ffffff', '#00c603', '14', '#00c603', '#00c603', '15', '#ffffff', '#00c603', '#ffffff', 'left', 'Mon', '#00c603', '20', '7', 'totalsoft totalsoft-caret-square-o-left', 'totalsoft totalsoft-caret-square-o-right', '#00c603', '17');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_2`
--

CREATE TABLE `project03_totalsoft_cal_2` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_WDStart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_MBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_MC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_MFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_MFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_WBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_WC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_WFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_WFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_LAW_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_LAW_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_LAW_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_DBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_TdBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_TdC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_TdFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_EdBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_EdC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_EdFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_ArrType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_ArrFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_ArrC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_OmBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_OmC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_OmFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_BBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project03_totalsoft_cal_2`
--

INSERT INTO `project03_totalsoft_cal_2` (`id`, `TotalSoftCal_ID`, `TotalSoftCal_Name`, `TotalSoftCal_Type`, `TotalSoftCal2_WDStart`, `TotalSoftCal2_BW`, `TotalSoftCal2_BS`, `TotalSoftCal2_BC`, `TotalSoftCal2_W`, `TotalSoftCal2_H`, `TotalSoftCal2_BxShShow`, `TotalSoftCal2_BxShType`, `TotalSoftCal2_BxSh`, `TotalSoftCal2_BxShC`, `TotalSoftCal2_MBgC`, `TotalSoftCal2_MC`, `TotalSoftCal2_MFS`, `TotalSoftCal2_MFF`, `TotalSoftCal2_WBgC`, `TotalSoftCal2_WC`, `TotalSoftCal2_WFS`, `TotalSoftCal2_WFF`, `TotalSoftCal2_LAW_W`, `TotalSoftCal2_LAW_S`, `TotalSoftCal2_LAW_C`, `TotalSoftCal2_DBgC`, `TotalSoftCal2_DC`, `TotalSoftCal2_DFS`, `TotalSoftCal2_TdBgC`, `TotalSoftCal2_TdC`, `TotalSoftCal2_TdFS`, `TotalSoftCal2_EdBgC`, `TotalSoftCal2_EdC`, `TotalSoftCal2_EdFS`, `TotalSoftCal2_HBgC`, `TotalSoftCal2_HC`, `TotalSoftCal2_ArrType`, `TotalSoftCal2_ArrFS`, `TotalSoftCal2_ArrC`, `TotalSoftCal2_OmBgC`, `TotalSoftCal2_OmC`, `TotalSoftCal2_OmFS`, `TotalSoftCal2_Ev_HBgC`, `TotalSoftCal2_Ev_HC`, `TotalSoftCal2_Ev_HFS`, `TotalSoftCal2_Ev_HFF`, `TotalSoftCal2_Ev_HText`, `TotalSoftCal2_Ev_BBgC`, `TotalSoftCal2_Ev_TC`, `TotalSoftCal2_Ev_TFF`, `TotalSoftCal2_Ev_TFS`) VALUES
(1, '5', 'Simple Calendar', 'Simple Calendar', '0', '5', 'solid', '#ffffff', '600', '600', 'Yes', '2', '25', '#009491', '#009491', '#ffffff', '27', 'Gabriola', '#ffffff', '#009491', '19', 'Gabriola', '1', 'solid', '#009491', '#ffffff', '#009491', '17', '#009491', '#ffffff', '18', '#e2e2e2', '#ffffff', '18', '#ffffff', '#009491', 'angle', '21', '#ffffff', '#ffffff', '#a0a0a0', '10', '#009491', '#ffffff', '27', 'Gabriola', 'Events', '#ffffff', '#009491', 'Gabriola', '23'),
(2, '6', 'Simple Calendar 2', 'Simple Calendar', '0', '5', 'solid', '#ffffff', '600', '600', 'Yes', '1', '25', '#000000', '#ffffff', '#009491', '25', 'Gabriola', '#009491', '#ffffff', '21', 'Gabriola', '1', 'solid', '#009491', '#ffffff', '#009491', '17', '#009491', '#ffffff', '18', '#e2e2e2', '#ffffff', '18', '#ffffff', '#009491', 'angle', '21', '#009491', '#ffffff', '#a0a0a0', '14', '#ffffff', '#009491', '25', 'Gabriola', 'Events', '#009491', '#ffffff', 'Gabriola', '23');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_3`
--

CREATE TABLE `project03_totalsoft_cal_3` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_MW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_WDStart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_GrC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_BTW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_BTC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_MFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_MC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_YFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_YC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_Format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Arr_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_LAH_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_LAH_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_WD_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_WD_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_WD_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_WD_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_D_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_D_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_TD_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_TD_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_HD_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_HD_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_ED_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_ED_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_Format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_BTW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_BTC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project03_totalsoft_cal_3`
--

INSERT INTO `project03_totalsoft_cal_3` (`id`, `TotalSoftCal_ID`, `TotalSoftCal_Name`, `TotalSoftCal_Type`, `TotalSoftCal3_MW`, `TotalSoftCal3_WDStart`, `TotalSoftCal3_BgC`, `TotalSoftCal3_GrC`, `TotalSoftCal3_BBC`, `TotalSoftCal3_BoxShShow`, `TotalSoftCal3_BoxShType`, `TotalSoftCal3_BoxSh`, `TotalSoftCal3_BoxShC`, `TotalSoftCal3_H_BgC`, `TotalSoftCal3_H_BTW`, `TotalSoftCal3_H_BTC`, `TotalSoftCal3_H_FF`, `TotalSoftCal3_H_MFS`, `TotalSoftCal3_H_MC`, `TotalSoftCal3_H_YFS`, `TotalSoftCal3_H_YC`, `TotalSoftCal3_H_Format`, `TotalSoftCal3_Arr_Type`, `TotalSoftCal3_Arr_C`, `TotalSoftCal3_Arr_S`, `TotalSoftCal3_Arr_HC`, `TotalSoftCal3_LAH_W`, `TotalSoftCal3_LAH_C`, `TotalSoftCal3_WD_BgC`, `TotalSoftCal3_WD_C`, `TotalSoftCal3_WD_FS`, `TotalSoftCal3_WD_FF`, `TotalSoftCal3_D_BgC`, `TotalSoftCal3_D_C`, `TotalSoftCal3_TD_BgC`, `TotalSoftCal3_TD_C`, `TotalSoftCal3_HD_BgC`, `TotalSoftCal3_HD_C`, `TotalSoftCal3_ED_C`, `TotalSoftCal3_ED_HC`, `TotalSoftCal3_Ev_Format`, `TotalSoftCal3_Ev_BTW`, `TotalSoftCal3_Ev_BTC`, `TotalSoftCal3_Ev_BgC`, `TotalSoftCal3_Ev_C`, `TotalSoftCal3_Ev_FS`, `TotalSoftCal3_Ev_FF`) VALUES
(1, '7', 'Flexible Calendar', 'Flexible Calendar', '700', '1', '#ffffff', '#000000', '#000000', 'No', '1', '22', '#000000', '#ffffff', '3', '#dd3333', 'Gabriola', '22', '#000000', '24', '#dd3333', '1', 'caret', '#000000', '20', '#606060', '2', '#dd3333', '#000000', '#ffffff', '17', 'Gabriola', '#ffffff', '#dd3333', '#dd3333', '#ffffff', '#ffffff', '#000000', '#dd3333', '#000000', '3', '3', '#dd3333', '#dd3333', '#ffffff', '26', 'Gabriola'),
(2, '8', 'Flexible Calendar 2', 'Flexible Calendar', '700', '1', '#ffffff', '#009491', '#009491', 'No', '1', '22', '#000000', '#009491', '3', '#ffffff', 'Gabriola', '22', '#d3d3d3', '24', '#ffffff', '2', 'caret', '#ffffff', '20', '#606060', '2', '#ffffff', '#009491', '#ffffff', '17', 'Gabriola', '#ffffff', '#000000', '#009491', '#ffffff', '#ffffff', '#000000', '#000000', '#aaaaaa', '3', '0', '#ffffff', '#009491', '#ffffff', '26', 'Gabriola');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_4`
--

CREATE TABLE `project03_totalsoft_cal_4` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_32` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_33` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_34` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_35` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_36` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_37` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_38` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_39` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project03_totalsoft_cal_4`
--

INSERT INTO `project03_totalsoft_cal_4` (`id`, `TotalSoftCal_ID`, `TotalSoftCal_Name`, `TotalSoftCal_Type`, `TotalSoftCal4_01`, `TotalSoftCal4_02`, `TotalSoftCal4_03`, `TotalSoftCal4_04`, `TotalSoftCal4_05`, `TotalSoftCal4_06`, `TotalSoftCal4_07`, `TotalSoftCal4_08`, `TotalSoftCal4_09`, `TotalSoftCal4_10`, `TotalSoftCal4_11`, `TotalSoftCal4_12`, `TotalSoftCal4_13`, `TotalSoftCal4_14`, `TotalSoftCal4_15`, `TotalSoftCal4_16`, `TotalSoftCal4_17`, `TotalSoftCal4_18`, `TotalSoftCal4_19`, `TotalSoftCal4_20`, `TotalSoftCal4_21`, `TotalSoftCal4_22`, `TotalSoftCal4_23`, `TotalSoftCal4_24`, `TotalSoftCal4_25`, `TotalSoftCal4_26`, `TotalSoftCal4_27`, `TotalSoftCal4_28`, `TotalSoftCal4_29`, `TotalSoftCal4_30`, `TotalSoftCal4_31`, `TotalSoftCal4_32`, `TotalSoftCal4_33`, `TotalSoftCal4_34`, `TotalSoftCal4_35`, `TotalSoftCal4_36`, `TotalSoftCal4_37`, `TotalSoftCal4_38`, `TotalSoftCal4_39`) VALUES
(1, '9', 'TimeLine Calendar', 'TimeLine Calendar', '800', 'type8', '#000000', 'none', '0', '#dd3333', 'color', '#dd0000', '#ffffff', '18', 'Abadi MT Condensed Light', 'format1', '#ffffff', 'long-arrow', '23', '#ffffff', '#e5e5e5', '#ffffff', '#ffffff', '75', '0', 'color', '#ffffff', '#dd0000', '#c9c9c9', '21', '#000000', '14', '#dd0000', '#000000', '#000000', 'caret', '20', '#5e5e5e', '#000000', '#c9c9c9', '100', '1', 'color'),
(2, '10', 'TimeLine Calendar 2', 'TimeLine Calendar', '800', 'type1', '#606060', 'none', '0', '#dd3333', 'color', '#ffffff', '#1ea5ce', '18', 'Abadi MT Condensed Light', 'format1', '#000000', 'caret', '23', '#000000', '#000000', '#000000', '#ffffff', '75', '0', 'gradient5', '#ffffff', '#1ea5ce', '#ffffff', '21', '#008eba', '14', '#008eba', '#ffffff', '#008eba', 'caret', '20', '#5e5e5e', '#000000', '#c9c9c9', '100', '1', 'color');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_events`
--

CREATE TABLE `project03_totalsoft_cal_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_EvName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvCal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvStartDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvEndDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvURLNewTab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvStartTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvEndTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvColor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_events_p2`
--

CREATE TABLE `project03_totalsoft_cal_events_p2` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_EvDesc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvImg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvVid_Src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvVid_Iframe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvCal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_events_p3`
--

CREATE TABLE `project03_totalsoft_cal_events_p3` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_EvCal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_EvRec` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Ev_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_ids`
--

CREATE TABLE `project03_totalsoft_cal_ids` (
  `id` int(10) UNSIGNED NOT NULL,
  `Cal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project03_totalsoft_cal_ids`
--

INSERT INTO `project03_totalsoft_cal_ids` (`id`, `Cal_ID`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9'),
(10, '10');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_p1`
--

CREATE TABLE `project03_totalsoft_cal_p1` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_BgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_GrCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_GW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_BStyle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_BCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_BSCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_MW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_WBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_WCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_WFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_WFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_LAW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_LAWS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_LAWC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_DBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_DCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_TBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_TCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_TNBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HovBgCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_HovCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_NumPos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_WDStart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_RefIcCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_RefIcSize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowLeft` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowRight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowCol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_ArrowSize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_p2`
--

CREATE TABLE `project03_totalsoft_cal_p2` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_WDStart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_H` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_BxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_MBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_MC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_MFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_MFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_WBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_WC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_WFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_WFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_LAW_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_LAW_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_LAW_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_DBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_DC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_DFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_TdBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_TdC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_TdFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_EdBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_EdC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_EdFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_ArrType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_ArrFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_ArrC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_OmBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_OmC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_OmFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_HText` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_BBgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_TC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_TFF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal2_Ev_TFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_p3`
--

CREATE TABLE `project03_totalsoft_cal_p3` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_MW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_WDStart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_GrC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BBC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BoxShShow` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BoxShType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BoxSh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_BoxShC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_BTW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_BTC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_MFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_MC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_YFS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_YC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_H_Format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Arr_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Arr_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Arr_S` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Arr_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_LAH_W` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_LAH_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_WD_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_WD_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_WD_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_WD_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_D_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_D_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_TD_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_TD_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_HD_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_HD_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_ED_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_ED_HC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_Format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_BTW` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_BTC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_BgC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_C` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_FS` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal3_Ev_FF` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_p4`
--

CREATE TABLE `project03_totalsoft_cal_p4` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_32` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_33` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_34` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_35` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_36` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_37` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_38` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal4_39` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_part`
--

CREATE TABLE `project03_totalsoft_cal_part` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project03_totalsoft_cal_part`
--

INSERT INTO `project03_totalsoft_cal_part` (`id`, `TotalSoftCal_ID`, `TotalSoftCal_Name`, `TotalSoftCal_Type`, `TotalSoftCal_01`, `TotalSoftCal_02`, `TotalSoftCal_03`, `TotalSoftCal_04`, `TotalSoftCal_05`, `TotalSoftCal_06`, `TotalSoftCal_07`, `TotalSoftCal_08`, `TotalSoftCal_09`, `TotalSoftCal_10`, `TotalSoftCal_11`, `TotalSoftCal_12`, `TotalSoftCal_13`, `TotalSoftCal_14`, `TotalSoftCal_15`, `TotalSoftCal_16`, `TotalSoftCal_17`, `TotalSoftCal_18`, `TotalSoftCal_19`, `TotalSoftCal_20`, `TotalSoftCal_21`, `TotalSoftCal_22`, `TotalSoftCal_23`, `TotalSoftCal_24`, `TotalSoftCal_25`, `TotalSoftCal_26`, `TotalSoftCal_27`, `TotalSoftCal_28`, `TotalSoftCal_29`, `TotalSoftCal_30`) VALUES
(1, '1', 'Total Soft Calendar', 'Event Calendar', '14', 'Arial', '#ffffff', 'left', '24', '', '', '', '70', 'after', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, '2', 'Total Soft Calendar 1', 'Event Calendar', '14', 'Arial', '#ffffff', 'left', '24', '', '', '', '70', 'after', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '3', 'Total Soft Calendar 2', 'Event Calendar', '14', 'Arial', '#ffffff', 'left', '24', '', '', '', '70', 'after', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '4', 'Total Soft Calendar 3', 'Event Calendar', '14', 'Arial', '#ffffff', 'left', '24', '', '', '', '70', 'after', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '5', 'Simple Calendar', 'Simple Calendar', 'left', '70', 'after', '24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '6', 'Simple Calendar 2', 'Simple Calendar', 'left', '70', 'after', '24', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '7', 'Flexible Calendar', 'Flexible Calendar', '24', 'times-circle', '#ffffff', '#d6d6d6', '21', '3', '#000000', '#ffffff', '#dd3333', '20', 'Gabriola', '#000000', '#ffffff', 'center', '48', '3', '#000000', '#4f4f4f', '4', 'View More', '2', '#000000', '17', 'Abadi MT Condensed Light', '1', '#000000', '25', '', '', ''),
(8, '8', 'Flexible Calendar 2', 'Flexible Calendar', '24', 'times', '#ffffff', '#d6d6d6', '21', '3', '#000000', '#ffffff', '#009491', '20', 'Gabriola', '#009491', '#ffffff', 'center', '80', '3', '#919191', '#4f4f4f', '5', 'View More', '2', '#878787', '17', 'Abadi MT Condensed Light', '1', '#919191', '25', '', '', ''),
(9, '9', 'TimeLine Calendar', 'TimeLine Calendar', '#ffffff', '#000000', 'yy-mm-dd', '12', '19', 'Abadi MT Condensed Light', '#dd3333', '#ffffff', 'center', '80', '1', '#dd0000', '#dd0000', '4', 'View More', '14', 'Abadi MT Condensed Light', '#dd0000', '1', '1', '#c1c1c1', '75', '1', '#ffffff', '16', 'Abadi MT Condensed Light', 'calendar', '22', '#ffffff', ''),
(10, '10', 'TimeLine Calendar 2', 'TimeLine Calendar', '#ffffff', '#1ea5ce', 'yy-mm-dd', '12', '19', 'Abadi MT Condensed Light', '#1ea5ce', '#ffffff', 'center', '80', '1', '#1ea5ce', '#1ea5ce', '4', 'View More', '14', 'Abadi MT Condensed Light', '#1ea5ce', '1', '6', '#c1c1c1', '75', '1', '#ffffff', '16', 'Abadi MT Condensed Light', 'calendar', '22', '#ffffff', '');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_part1`
--

CREATE TABLE `project03_totalsoft_cal_part1` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_01` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_02` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_03` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_04` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_05` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_06` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_07` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_08` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_09` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_cal_types`
--

CREATE TABLE `project03_totalsoft_cal_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `TotalSoftCal_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TotalSoftCal_Type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `project03_totalsoft_cal_types`
--

INSERT INTO `project03_totalsoft_cal_types` (`id`, `TotalSoftCal_Name`, `TotalSoftCal_Type`) VALUES
(1, 'Total Soft Calendar', 'Event Calendar'),
(2, 'Total Soft Calendar 1', 'Event Calendar'),
(3, 'Total Soft Calendar 2', 'Event Calendar'),
(4, 'Total Soft Calendar 3', 'Event Calendar'),
(5, 'Simple Calendar', 'Simple Calendar'),
(6, 'Simple Calendar 2', 'Simple Calendar'),
(7, 'Flexible Calendar', 'Flexible Calendar'),
(8, 'Flexible Calendar 2', 'Flexible Calendar'),
(9, 'TimeLine Calendar', 'TimeLine Calendar'),
(10, 'TimeLine Calendar 2', 'TimeLine Calendar');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_totalsoft_new_plugin`
--

CREATE TABLE `project03_totalsoft_new_plugin` (
  `id` int(10) UNSIGNED NOT NULL,
  `New_Plugin_Name` varchar(255) NOT NULL,
  `Our_Plugin_Name` varchar(255) NOT NULL,
  `Dismiss` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `project03_totalsoft_new_plugin`
--

INSERT INTO `project03_totalsoft_new_plugin` (`id`, `New_Plugin_Name`, `Our_Plugin_Name`, `Dismiss`) VALUES
(1, 'Pricing Table', 'Calendar Event', '0'),
(2, 'Calendar Question', 'Calendar Event', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_usermeta`
--

CREATE TABLE `project03_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `project03_usermeta`
--

INSERT INTO `project03_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'project03_capabilities', 'a:13:{s:13:\"administrator\";b:1;s:26:\"wpcf_custom_post_type_view\";b:1;s:26:\"wpcf_custom_post_type_edit\";b:1;s:33:\"wpcf_custom_post_type_edit_others\";b:1;s:25:\"wpcf_custom_taxonomy_view\";b:1;s:25:\"wpcf_custom_taxonomy_edit\";b:1;s:32:\"wpcf_custom_taxonomy_edit_others\";b:1;s:22:\"wpcf_custom_field_view\";b:1;s:22:\"wpcf_custom_field_edit\";b:1;s:29:\"wpcf_custom_field_edit_others\";b:1;s:25:\"wpcf_user_meta_field_view\";b:1;s:25:\"wpcf_user_meta_field_edit\";b:1;s:32:\"wpcf_user_meta_field_edit_others\";b:1;}'),
(13, 1, 'project03_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"31166133443c22e20f79c1caf586ccb8128e5e004c2e9de265f2eb466c0c7ec5\";a:4:{s:10:\"expiration\";i:1552280645;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1552107845;}}'),
(17, 1, 'project03_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'project03_user-settings', 'mfold=o&libraryContent=browse&editor=tinymce'),
(20, 1, 'project03_user-settings-time', '1552166438'),
(21, 1, 'closedpostboxes_stock', 'a:1:{i:0;s:13:\"pageparentdiv\";}'),
(22, 1, 'metaboxhidden_stock', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `project03_users`
--

CREATE TABLE `project03_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `project03_users`
--

INSERT INTO `project03_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BD7GAMqn0UJ8pQYGql5DmBOrhsd3sE.', 'admin', 'zolotukhinvm@ya.ru', '', '2019-03-09 05:03:55', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `project03_commentmeta`
--
ALTER TABLE `project03_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `project03_comments`
--
ALTER TABLE `project03_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `project03_links`
--
ALTER TABLE `project03_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `project03_options`
--
ALTER TABLE `project03_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `project03_postmeta`
--
ALTER TABLE `project03_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `project03_posts`
--
ALTER TABLE `project03_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `project03_termmeta`
--
ALTER TABLE `project03_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `project03_terms`
--
ALTER TABLE `project03_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `project03_term_relationships`
--
ALTER TABLE `project03_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `project03_term_taxonomy`
--
ALTER TABLE `project03_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `project03_toolset_post_guid_id`
--
ALTER TABLE `project03_toolset_post_guid_id`
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `guid` (`guid`);

--
-- Индексы таблицы `project03_totalsoft_cal_1`
--
ALTER TABLE `project03_totalsoft_cal_1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_2`
--
ALTER TABLE `project03_totalsoft_cal_2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_3`
--
ALTER TABLE `project03_totalsoft_cal_3`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_4`
--
ALTER TABLE `project03_totalsoft_cal_4`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_events`
--
ALTER TABLE `project03_totalsoft_cal_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_events_p2`
--
ALTER TABLE `project03_totalsoft_cal_events_p2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_events_p3`
--
ALTER TABLE `project03_totalsoft_cal_events_p3`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_ids`
--
ALTER TABLE `project03_totalsoft_cal_ids`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_p1`
--
ALTER TABLE `project03_totalsoft_cal_p1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_p2`
--
ALTER TABLE `project03_totalsoft_cal_p2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_p3`
--
ALTER TABLE `project03_totalsoft_cal_p3`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_p4`
--
ALTER TABLE `project03_totalsoft_cal_p4`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_part`
--
ALTER TABLE `project03_totalsoft_cal_part`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_part1`
--
ALTER TABLE `project03_totalsoft_cal_part1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_cal_types`
--
ALTER TABLE `project03_totalsoft_cal_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_totalsoft_new_plugin`
--
ALTER TABLE `project03_totalsoft_new_plugin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `project03_usermeta`
--
ALTER TABLE `project03_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `project03_users`
--
ALTER TABLE `project03_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `project03_commentmeta`
--
ALTER TABLE `project03_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_comments`
--
ALTER TABLE `project03_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `project03_links`
--
ALTER TABLE `project03_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_options`
--
ALTER TABLE `project03_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT для таблицы `project03_postmeta`
--
ALTER TABLE `project03_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT для таблицы `project03_posts`
--
ALTER TABLE `project03_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `project03_termmeta`
--
ALTER TABLE `project03_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_terms`
--
ALTER TABLE `project03_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `project03_term_taxonomy`
--
ALTER TABLE `project03_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_1`
--
ALTER TABLE `project03_totalsoft_cal_1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_2`
--
ALTER TABLE `project03_totalsoft_cal_2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_3`
--
ALTER TABLE `project03_totalsoft_cal_3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_4`
--
ALTER TABLE `project03_totalsoft_cal_4`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_events`
--
ALTER TABLE `project03_totalsoft_cal_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_events_p2`
--
ALTER TABLE `project03_totalsoft_cal_events_p2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_events_p3`
--
ALTER TABLE `project03_totalsoft_cal_events_p3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_ids`
--
ALTER TABLE `project03_totalsoft_cal_ids`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_p1`
--
ALTER TABLE `project03_totalsoft_cal_p1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_p2`
--
ALTER TABLE `project03_totalsoft_cal_p2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_p3`
--
ALTER TABLE `project03_totalsoft_cal_p3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_p4`
--
ALTER TABLE `project03_totalsoft_cal_p4`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_part`
--
ALTER TABLE `project03_totalsoft_cal_part`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_part1`
--
ALTER TABLE `project03_totalsoft_cal_part1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_cal_types`
--
ALTER TABLE `project03_totalsoft_cal_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `project03_totalsoft_new_plugin`
--
ALTER TABLE `project03_totalsoft_new_plugin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `project03_usermeta`
--
ALTER TABLE `project03_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `project03_users`
--
ALTER TABLE `project03_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
