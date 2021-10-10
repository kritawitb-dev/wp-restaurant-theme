-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-10-02 07:29:17','2021-10-02 07:29:17','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://restaurantwebsite.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://restaurantwebsite.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','restaurant-website','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','kritawit.b@hotmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','lagoonpizza','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','lagoonpizza','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','11','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','5','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1648711757','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:7:{i:1633631358;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1633634958;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1633678158;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633679715;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633679718;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633850958;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key',',VNQ~<e,W!&CH>]aL^a#oy7d}tGxuUrVN<E3Hvt,vs-BtTBaGH8@n4c;XTM9bDND','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','mO| M:M.x)X/?s9+wsU!,LX;& e;tUtKqyR [5GHoB@NCXaW5%|Z-L<)h/G{31dy','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (121,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1633164196;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (122,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1633604245;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (125,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1633604245;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633604247;s:7:\"checked\";a:4:{s:11:\"lagoonpizza\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (129,'_site_transient_timeout_browser_8d0140d53e63fb1adef89d4becc4ff87','1633766117','no');
INSERT INTO `wp_options` VALUES (130,'_site_transient_browser_8d0140d53e63fb1adef89d4becc4ff87','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"94.0.4606.61\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (131,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1633766118','no');
INSERT INTO `wp_options` VALUES (132,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (136,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (149,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (153,'current_theme','Lagoon Pizza','yes');
INSERT INTO `wp_options` VALUES (154,'theme_mods_lagoonpizza','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:3;s:11:\"social-menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (155,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (161,'recovery_mode_email_last_sent','1633170078','yes');
INSERT INTO `wp_options` VALUES (165,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (181,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":4,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (186,'_site_transient_timeout_theme_roots','1633606046','no');
INSERT INTO `wp_options` VALUES (187,'_site_transient_theme_roots','a:4:{s:11:\"lagoonpizza\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1633164864:1');
INSERT INTO `wp_postmeta` VALUES (4,7,'_edit_lock','1633164886:1');
INSERT INTO `wp_postmeta` VALUES (5,9,'_edit_lock','1633164896:1');
INSERT INTO `wp_postmeta` VALUES (6,11,'_edit_lock','1633164910:1');
INSERT INTO `wp_postmeta` VALUES (7,13,'_edit_lock','1633164920:1');
INSERT INTO `wp_postmeta` VALUES (8,15,'_edit_lock','1633164934:1');
INSERT INTO `wp_postmeta` VALUES (9,17,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (10,17,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (11,17,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (12,17,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (13,17,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (14,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (15,17,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (16,17,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (17,17,'_menu_item_orphaned','1633171454');
INSERT INTO `wp_postmeta` VALUES (18,18,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (19,18,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (20,18,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (21,18,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (22,18,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (23,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (24,18,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (25,18,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (26,18,'_menu_item_orphaned','1633171455');
INSERT INTO `wp_postmeta` VALUES (27,19,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (28,19,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (29,19,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (30,19,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (31,19,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (32,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (33,19,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (34,19,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (35,19,'_menu_item_orphaned','1633171455');
INSERT INTO `wp_postmeta` VALUES (36,20,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (37,20,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (38,20,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (39,20,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (40,20,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (41,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (42,20,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (43,20,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (44,20,'_menu_item_orphaned','1633171455');
INSERT INTO `wp_postmeta` VALUES (45,21,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (46,21,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (47,21,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (48,21,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (49,21,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (50,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (51,21,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (52,21,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (53,21,'_menu_item_orphaned','1633171455');
INSERT INTO `wp_postmeta` VALUES (54,22,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (55,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (56,22,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (57,22,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (58,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (59,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (60,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (61,22,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (62,22,'_menu_item_orphaned','1633171455');
INSERT INTO `wp_postmeta` VALUES (63,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (64,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (65,23,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (66,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (67,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (68,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (69,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (70,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (71,23,'_menu_item_orphaned','1633171455');
INSERT INTO `wp_postmeta` VALUES (72,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (73,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (74,24,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (75,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (76,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (77,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (78,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (79,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (81,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (82,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (83,25,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (84,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (85,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (86,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (87,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (88,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (90,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (91,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (92,26,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (93,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (94,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (95,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (96,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (97,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (99,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (100,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (101,27,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (102,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (103,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (104,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (105,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (106,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (108,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (109,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (110,28,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (111,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (112,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (113,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (114,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (115,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (117,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (118,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (119,29,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (120,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (121,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (122,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (123,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (124,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (126,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (127,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (128,30,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (129,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (130,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (131,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (132,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (133,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (135,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (136,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (137,31,'_menu_item_object_id','5');
INSERT INTO `wp_postmeta` VALUES (138,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (139,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (140,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (141,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (142,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (144,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (145,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (146,32,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (147,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (148,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (149,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (150,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (151,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (153,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (154,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (155,33,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (156,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (157,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (158,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (159,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (160,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (162,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (163,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (164,34,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (165,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (166,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (167,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (168,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (169,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (171,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (172,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (173,35,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (174,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (175,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (176,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (177,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (178,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (180,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (181,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (182,36,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (183,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (184,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (185,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (186,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (187,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (189,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (190,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (191,37,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (192,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (193,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (194,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (195,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (196,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (207,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (208,39,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (209,39,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (210,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (211,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (212,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (213,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (214,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (216,40,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (217,40,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (218,40,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (219,40,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (220,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (221,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (222,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (223,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (225,41,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (226,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (227,41,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (228,41,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (229,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (230,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (231,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (232,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (234,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (235,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (236,42,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (237,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (238,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (239,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (240,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (241,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (243,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (244,43,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (245,43,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (246,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (247,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (248,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (249,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (250,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (252,44,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (253,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (254,44,'_menu_item_object_id','44');
INSERT INTO `wp_postmeta` VALUES (255,44,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (256,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (257,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (258,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (259,44,'_menu_item_url','http://www.facebook.com');
INSERT INTO `wp_postmeta` VALUES (261,45,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (262,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (263,45,'_menu_item_object_id','45');
INSERT INTO `wp_postmeta` VALUES (264,45,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (265,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (266,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (267,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (268,45,'_menu_item_url','https://twitter.com/home');
INSERT INTO `wp_postmeta` VALUES (270,46,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (271,46,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (272,46,'_menu_item_object_id','46');
INSERT INTO `wp_postmeta` VALUES (273,46,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (274,46,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (275,46,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (276,46,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (277,46,'_menu_item_url','https://www.youtube.com/');
INSERT INTO `wp_postmeta` VALUES (279,47,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (280,47,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (281,47,'_menu_item_object_id','47');
INSERT INTO `wp_postmeta` VALUES (282,47,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (283,47,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (284,47,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (285,47,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (286,47,'_menu_item_url','https://www.pinterest.com/');
INSERT INTO `wp_postmeta` VALUES (288,48,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (289,48,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (290,48,'_menu_item_object_id','48');
INSERT INTO `wp_postmeta` VALUES (291,48,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (292,48,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (293,48,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (294,48,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (295,48,'_menu_item_url','https://www.instagram.com/');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-10-02 07:29:17','2021-10-02 07:29:17','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-10-02 07:29:17','2021-10-02 07:29:17','',0,'http://restaurantwebsite.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-10-02 07:29:17','2021-10-02 07:29:17','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://restaurantwebsite.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-10-02 07:29:17','2021-10-02 07:29:17','',0,'http://restaurantwebsite.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-10-02 07:29:17','2021-10-02 07:29:17','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://restaurantwebsite.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-10-02 07:29:17','2021-10-02 07:29:17','',0,'http://restaurantwebsite.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2021-10-02 07:55:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-10-02 07:55:18','0000-00-00 00:00:00','',0,'http://restaurantwebsite.local/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-10-02 08:56:45','2021-10-02 08:56:45','','Home','','publish','closed','closed','','home','','','2021-10-02 08:56:45','2021-10-02 08:56:45','',0,'http://restaurantwebsite.local/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-10-02 08:56:45','2021-10-02 08:56:45','','Home','','inherit','closed','closed','','5-revision-v1','','','2021-10-02 08:56:45','2021-10-02 08:56:45','',5,'http://restaurantwebsite.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-10-02 08:57:06','2021-10-02 08:57:06','','About Us','','publish','closed','closed','','about-us','','','2021-10-02 08:57:06','2021-10-02 08:57:06','',0,'http://restaurantwebsite.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-10-02 08:57:06','2021-10-02 08:57:06','','About Us','','inherit','closed','closed','','7-revision-v1','','','2021-10-02 08:57:06','2021-10-02 08:57:06','',7,'http://restaurantwebsite.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-10-02 08:57:18','2021-10-02 08:57:18','','Menu','','publish','closed','closed','','menu','','','2021-10-02 08:57:18','2021-10-02 08:57:18','',0,'http://restaurantwebsite.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-10-02 08:57:18','2021-10-02 08:57:18','','Menu','','inherit','closed','closed','','9-revision-v1','','','2021-10-02 08:57:18','2021-10-02 08:57:18','',9,'http://restaurantwebsite.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-10-02 08:57:34','2021-10-02 08:57:34','','Blog','','publish','closed','closed','','blog','','','2021-10-02 08:57:34','2021-10-02 08:57:34','',0,'http://restaurantwebsite.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-10-02 08:57:34','2021-10-02 08:57:34','','Blog','','inherit','closed','closed','','11-revision-v1','','','2021-10-02 08:57:34','2021-10-02 08:57:34','',11,'http://restaurantwebsite.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-10-02 08:57:43','2021-10-02 08:57:43','','Gallery','','publish','closed','closed','','gallery','','','2021-10-02 08:57:43','2021-10-02 08:57:43','',0,'http://restaurantwebsite.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-10-02 08:57:43','2021-10-02 08:57:43','','Gallery','','inherit','closed','closed','','13-revision-v1','','','2021-10-02 08:57:43','2021-10-02 08:57:43','',13,'http://restaurantwebsite.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-10-02 08:57:55','2021-10-02 08:57:55','','Contact US','','publish','closed','closed','','contact-us','','','2021-10-02 08:57:55','2021-10-02 08:57:55','',0,'http://restaurantwebsite.local/?page_id=15',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-10-02 08:57:55','2021-10-02 08:57:55','','Contact US','','inherit','closed','closed','','15-revision-v1','','','2021-10-02 08:57:55','2021-10-02 08:57:55','',15,'http://restaurantwebsite.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-10-02 10:44:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-10-02 10:44:14','0000-00-00 00:00:00','',0,'http://restaurantwebsite.local/?p=17',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-10-02 10:44:14','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-10-02 10:44:14','0000-00-00 00:00:00','',0,'http://restaurantwebsite.local/?p=18',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-10-02 10:44:15','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-10-02 10:44:15','0000-00-00 00:00:00','',0,'http://restaurantwebsite.local/?p=19',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-10-02 10:44:15','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-10-02 10:44:15','0000-00-00 00:00:00','',0,'http://restaurantwebsite.local/?p=20',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2021-10-02 10:44:15','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-10-02 10:44:15','0000-00-00 00:00:00','',0,'http://restaurantwebsite.local/?p=21',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-10-02 10:44:15','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-10-02 10:44:15','0000-00-00 00:00:00','',0,'http://restaurantwebsite.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-10-02 10:44:15','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2021-10-02 10:44:15','0000-00-00 00:00:00','',0,'http://restaurantwebsite.local/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','24','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=24',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','25','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=25',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','26','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=26',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','27','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=27',11,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','28','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=28',12,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','29','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=29',13,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','30','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=30',14,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','31','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','32','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=32',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','33','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=33',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','34','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=34',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','35','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=35',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','36','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=36',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-10-02 10:44:55','2021-10-02 10:44:55',' ','','','publish','closed','closed','','37','','','2021-10-02 10:44:55','2021-10-02 10:44:55','',0,'http://restaurantwebsite.local/?p=37',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-10-02 10:47:04','2021-10-02 10:46:35',' ','','','publish','closed','closed','','39','','','2021-10-02 10:47:04','2021-10-02 10:47:04','',0,'http://restaurantwebsite.local/?p=39',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-10-02 10:47:04','2021-10-02 10:46:35',' ','','','publish','closed','closed','','40','','','2021-10-02 10:47:04','2021-10-02 10:47:04','',0,'http://restaurantwebsite.local/?p=40',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-10-02 10:47:04','2021-10-02 10:46:35',' ','','','publish','closed','closed','','41','','','2021-10-02 10:47:04','2021-10-02 10:47:04','',0,'http://restaurantwebsite.local/?p=41',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-10-02 10:47:04','2021-10-02 10:46:35',' ','','','publish','closed','closed','','42','','','2021-10-02 10:47:04','2021-10-02 10:47:04','',0,'http://restaurantwebsite.local/?p=42',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2021-10-02 10:47:04','2021-10-02 10:46:35',' ','','','publish','closed','closed','','43','','','2021-10-02 10:47:04','2021-10-02 10:47:04','',0,'http://restaurantwebsite.local/?p=43',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2021-10-02 14:27:39','2021-10-02 11:27:01','','Fackbook','','publish','closed','closed','','fackbook','','','2021-10-02 14:27:39','2021-10-02 14:27:39','',0,'http://restaurantwebsite.local/?p=44',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2021-10-02 14:27:39','2021-10-02 11:27:01','','Twitter','','publish','closed','closed','','twitter','','','2021-10-02 14:27:39','2021-10-02 14:27:39','',0,'http://restaurantwebsite.local/?p=45',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2021-10-02 14:27:39','2021-10-02 11:27:01','','Youtube','','publish','closed','closed','','youtube','','','2021-10-02 14:27:39','2021-10-02 14:27:39','',0,'http://restaurantwebsite.local/?p=46',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2021-10-02 14:27:39','2021-10-02 11:27:01','','Pinterest','','publish','closed','closed','','pinterest','','','2021-10-02 14:27:39','2021-10-02 14:27:39','',0,'http://restaurantwebsite.local/?p=47',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2021-10-02 14:27:39','2021-10-02 11:27:01','','Instagram','','publish','closed','closed','','instagram','','','2021-10-02 14:27:39','2021-10-02 14:27:39','',0,'http://restaurantwebsite.local/?p=48',5,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (24,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (28,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,2,0);
INSERT INTO `wp_term_relationships` VALUES (30,2,0);
INSERT INTO `wp_term_relationships` VALUES (31,2,0);
INSERT INTO `wp_term_relationships` VALUES (32,2,0);
INSERT INTO `wp_term_relationships` VALUES (33,2,0);
INSERT INTO `wp_term_relationships` VALUES (34,2,0);
INSERT INTO `wp_term_relationships` VALUES (35,2,0);
INSERT INTO `wp_term_relationships` VALUES (36,2,0);
INSERT INTO `wp_term_relationships` VALUES (37,2,0);
INSERT INTO `wp_term_relationships` VALUES (39,3,0);
INSERT INTO `wp_term_relationships` VALUES (40,3,0);
INSERT INTO `wp_term_relationships` VALUES (41,3,0);
INSERT INTO `wp_term_relationships` VALUES (42,3,0);
INSERT INTO `wp_term_relationships` VALUES (43,3,0);
INSERT INTO `wp_term_relationships` VALUES (44,4,0);
INSERT INTO `wp_term_relationships` VALUES (45,4,0);
INSERT INTO `wp_term_relationships` VALUES (46,4,0);
INSERT INTO `wp_term_relationships` VALUES (47,4,0);
INSERT INTO `wp_term_relationships` VALUES (48,4,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,14);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Menu 1','menu-1',0);
INSERT INTO `wp_terms` VALUES (3,'Header Menu','header-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Social Menu','social-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"362adc9139897e68318bd17c60b2799c64981a58fd515823623b1a79cfb00f44\";a:4:{s:10:\"expiration\";i:1633334115;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36\";s:5:\"login\";i:1633161315;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','4');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BBKQP4MDonXlyCVOnHQn8nXpiXN8xO/','admin','kritawit.b@hotmail.com','http://restaurantwebsite.local','2021-10-02 07:29:17','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-08  0:58:49
