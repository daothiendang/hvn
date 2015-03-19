# WordPress MySQL database migration
#
# Generated: Thursday 19. March 2015 02:45 UTC
# Hostname: localhost
# Database: `hvn_mmp_project`
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_2_commentmeta`
#

DROP TABLE IF EXISTS `wp_2_commentmeta`;


#
# Table structure of table `wp_2_commentmeta`
#

CREATE TABLE `wp_2_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_commentmeta`
#

#
# End of data contents of table `wp_2_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_comments`
#

DROP TABLE IF EXISTS `wp_2_comments`;


#
# Table structure of table `wp_2_comments`
#

CREATE TABLE `wp_2_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_comments`
#
INSERT INTO `wp_2_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://localhost/hvn_mmp/', '', '2015-03-05 10:27:15', '2015-03-05 10:27:15', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_2_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_links`
#

DROP TABLE IF EXISTS `wp_2_links`;


#
# Table structure of table `wp_2_links`
#

CREATE TABLE `wp_2_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_links`
#

#
# End of data contents of table `wp_2_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_options`
#

DROP TABLE IF EXISTS `wp_2_options`;


#
# Table structure of table `wp_2_options`
#

CREATE TABLE `wp_2_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_options`
#
INSERT INTO `wp_2_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/hvn_mmp/child-site', 'yes'),
(2, 'home', 'http://localhost/hvn_mmp/child-site', 'yes'),
(3, 'blogname', 'The Second Site', 'yes'),
(4, 'blogdescription', 'Just another MMP Sites site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'daothiendang3@gmail.com', 'yes'),
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
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:47:"global-content-blocks/global-content-blocks.php";i:1;s:51:"multiple-content-blocks/multiple-content-blocks.php";i:2;s:43:"page-layout-builder/page-layout-builder.php";i:3;s:33:"post-expirator/post-expirator.php";i:4;s:39:"threewp-broadcast/ThreeWP_Broadcast.php";i:5;s:37:"wp-mobile-detect/wp-mobile-detect.php";i:6;s:21:"wp-polls/wp-polls.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'twentyfifteen', 'yes'),
(42, 'stylesheet', 'twentyfifteen', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'wp_2_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:12:"manage_polls";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(89, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(90, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'WPLANG', '', 'yes'),
(97, 'cron', 'a:3:{i:1426674443;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1426674560;a:1:{s:10:"polls_cron";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(101, 'recently_activated', 'a:0:{}', 'yes'),
(108, 'expirationdateDefaultDateFormat', 'l F jS, Y', 'yes'),
(109, 'expirationdateDefaultTimeFormat', 'g:ia', 'yes'),
(110, 'expirationdateFooterContents', 'Post expires at EXPIRATIONTIME on EXPIRATIONDATE', 'yes') ;
INSERT INTO `wp_2_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(111, 'expirationdateFooterStyle', 'font-style: italic;', 'yes'),
(112, 'expirationdateDisplayFooter', '0', 'yes'),
(113, 'expirationdateDebug', '0', 'yes'),
(114, 'expirationdateDefaultDate', 'null', 'yes'),
(115, 'postexpiratorVersion', '2.1.1', 'yes'),
(116, 'mcb-3.0-migration', '1', 'yes'),
(117, 'mcb-3.1-migration', '1', 'yes'),
(118, 'poll_template_voteheader', '<p style="text-align: center;"><strong>%POLL_QUESTION%</strong></p><div id="polls-%POLL_ID%-ans" class="wp-polls-ans"><ul class="wp-polls-ul">', 'yes'),
(119, 'poll_template_votebody', '<li><input type="%POLL_CHECKBOX_RADIO%" id="poll-answer-%POLL_ANSWER_ID%" name="poll_%POLL_ID%" value="%POLL_ANSWER_ID%" /> <label for="poll-answer-%POLL_ANSWER_ID%">%POLL_ANSWER%</label></li>', 'yes'),
(120, 'poll_template_votefooter', '</ul><p style="text-align: center;"><input type="button" name="vote" value="   Vote   " class="Buttons" onclick="poll_vote(%POLL_ID%);" /></p><p style="text-align: center;"><a href="#ViewPollResults" onclick="poll_result(%POLL_ID%); return false;" title="View Results Of This Poll">View Results</a></p></div>', 'yes'),
(121, 'poll_template_resultheader', '<p style="text-align: center;"><strong>%POLL_QUESTION%</strong></p><div id="polls-%POLL_ID%-ans" class="wp-polls-ans"><ul class="wp-polls-ul">', 'yes'),
(122, 'poll_template_resultbody', '<li>%POLL_ANSWER% <small>(%POLL_ANSWER_PERCENTAGE%%, %POLL_ANSWER_VOTES% Votes)</small><div class="pollbar" style="width: %POLL_ANSWER_IMAGEWIDTH%%;" title="%POLL_ANSWER_TEXT% (%POLL_ANSWER_PERCENTAGE%% | %POLL_ANSWER_VOTES% Votes)"></div></li>', 'yes'),
(123, 'poll_template_resultbody2', '<li><strong><i>%POLL_ANSWER% <small>(%POLL_ANSWER_PERCENTAGE%%, %POLL_ANSWER_VOTES% Votes)</small></i></strong><div class="pollbar" style="width: %POLL_ANSWER_IMAGEWIDTH%%;" title="You Have Voted For This Choice - %POLL_ANSWER_TEXT% (%POLL_ANSWER_PERCENTAGE%% | %POLL_ANSWER_VOTES% Votes)"></div></li>', 'yes'),
(124, 'poll_template_resultfooter', '</ul><p style="text-align: center;">Total Voters: <strong>%POLL_TOTALVOTERS%</strong></p></div>', 'yes'),
(125, 'poll_template_resultfooter2', '</ul><p style="text-align: center;">Total Voters: <strong>%POLL_TOTALVOTERS%</strong></p><p style="text-align: center;"><a href="#VotePoll" onclick="poll_booth(%POLL_ID%); return false;" title="Vote For This Poll">Vote</a></p></div>', 'yes'),
(126, 'poll_template_disable', 'Sorry, there are no polls available at the moment.', 'yes'),
(127, 'poll_template_error', 'An error has occurred when processing your poll.', 'yes'),
(128, 'poll_currentpoll', '0', 'yes'),
(129, 'poll_latestpoll', '1', 'yes'),
(130, 'poll_archive_perpage', '5', 'yes'),
(131, 'poll_ans_sortby', 'polla_aid', 'yes'),
(132, 'poll_ans_sortorder', 'asc', 'yes'),
(133, 'poll_ans_result_sortby', 'polla_votes', 'yes'),
(134, 'poll_ans_result_sortorder', 'desc', 'yes'),
(135, 'poll_logging_method', '3', 'yes'),
(136, 'poll_allowtovote', '2', 'yes'),
(137, 'poll_archive_url', 'http://localhost/hvn_mmp/child-site/pollsarchive', 'yes'),
(138, 'poll_bar', 'a:4:{s:5:"style";s:7:"default";s:10:"background";s:6:"d8e1eb";s:6:"border";s:6:"c8c8c8";s:6:"height";i:8;}', 'yes'),
(139, 'poll_close', '1', 'yes'),
(140, 'poll_ajax_style', 'a:2:{s:7:"loading";i:1;s:6:"fading";i:1;}', 'yes'),
(141, 'poll_template_pollarchivelink', '<ul><li><a href="%POLL_ARCHIVE_URL%">Polls Archive</a></li></ul>', 'yes'),
(142, 'poll_archive_displaypoll', '2', 'yes'),
(143, 'poll_template_pollarchiveheader', '', 'yes'),
(144, 'poll_template_pollarchivefooter', '<p>Start Date: %POLL_START_DATE%<br />End Date: %POLL_END_DATE%</p>', 'yes'),
(145, 'poll_cookielog_expiry', '0', 'yes'),
(146, 'poll_template_pollarchivepagingheader', '', 'yes'),
(147, 'poll_template_pollarchivepagingfooter', '', 'yes'),
(149, 'gcb_db_version', '2.0.1', 'yes'),
(161, 'rewrite_rules', 'a:110:{s:15:"minimax-tabs/?$";s:32:"index.php?post_type=minimax_tabs";s:45:"minimax-tabs/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=minimax_tabs&feed=$matches[1]";s:40:"minimax-tabs/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?post_type=minimax_tabs&feed=$matches[1]";s:32:"minimax-tabs/page/([0-9]{1,})/?$";s:50:"index.php?post_type=minimax_tabs&paged=$matches[1]";s:20:"minimax-accordion/?$";s:37:"index.php?post_type=minimax_accordion";s:50:"minimax-accordion/feed/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=minimax_accordion&feed=$matches[1]";s:45:"minimax-accordion/(feed|rdf|rss|rss2|atom)/?$";s:54:"index.php?post_type=minimax_accordion&feed=$matches[1]";s:37:"minimax-accordion/page/([0-9]{1,})/?$";s:55:"index.php?post_type=minimax_accordion&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:40:"minimax-tabs/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"minimax-tabs/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"minimax-tabs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"minimax-tabs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"minimax-tabs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"minimax-tabs/([^/]+)/trackback/?$";s:39:"index.php?minimax_tabs=$matches[1]&tb=1";s:53:"minimax-tabs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?minimax_tabs=$matches[1]&feed=$matches[2]";s:48:"minimax-tabs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:51:"index.php?minimax_tabs=$matches[1]&feed=$matches[2]";s:41:"minimax-tabs/([^/]+)/page/?([0-9]{1,})/?$";s:52:"index.php?minimax_tabs=$matches[1]&paged=$matches[2]";s:48:"minimax-tabs/([^/]+)/comment-page-([0-9]{1,})/?$";s:52:"index.php?minimax_tabs=$matches[1]&cpage=$matches[2]";s:33:"minimax-tabs/([^/]+)(/[0-9]+)?/?$";s:51:"index.php?minimax_tabs=$matches[1]&page=$matches[2]";s:29:"minimax-tabs/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"minimax-tabs/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"minimax-tabs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"minimax-tabs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"minimax-tabs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:45:"minimax-accordion/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"minimax-accordion/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"minimax-accordion/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"minimax-accordion/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"minimax-accordion/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:38:"minimax-accordion/([^/]+)/trackback/?$";s:44:"index.php?minimax_accordion=$matches[1]&tb=1";s:58:"minimax-accordion/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?minimax_accordion=$matches[1]&feed=$matches[2]";s:53:"minimax-accordion/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?minimax_accordion=$matches[1]&feed=$matches[2]";s:46:"minimax-accordion/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?minimax_accordion=$matches[1]&paged=$matches[2]";s:53:"minimax-accordion/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?minimax_accordion=$matches[1]&cpage=$matches[2]";s:38:"minimax-accordion/([^/]+)(/[0-9]+)?/?$";s:56:"index.php?minimax_accordion=$matches[1]&page=$matches[2]";s:34:"minimax-accordion/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"minimax-accordion/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"minimax-accordion/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"minimax-accordion/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"minimax-accordion/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes') ;

#
# End of data contents of table `wp_2_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_pollsa`
#

DROP TABLE IF EXISTS `wp_2_pollsa`;


#
# Table structure of table `wp_2_pollsa`
#

CREATE TABLE `wp_2_pollsa` (
  `polla_aid` int(10) NOT NULL AUTO_INCREMENT,
  `polla_qid` int(10) NOT NULL DEFAULT '0',
  `polla_answers` varchar(200) NOT NULL DEFAULT '',
  `polla_votes` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`polla_aid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_pollsa`
#
INSERT INTO `wp_2_pollsa` ( `polla_aid`, `polla_qid`, `polla_answers`, `polla_votes`) VALUES
(1, 1, 'Good', 0),
(2, 1, 'Excellent', 0),
(3, 1, 'Bad', 0),
(4, 1, 'Can Be Improved', 0),
(5, 1, 'No Comments', 0) ;

#
# End of data contents of table `wp_2_pollsa`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_pollsip`
#

DROP TABLE IF EXISTS `wp_2_pollsip`;


#
# Table structure of table `wp_2_pollsip`
#

CREATE TABLE `wp_2_pollsip` (
  `pollip_id` int(10) NOT NULL AUTO_INCREMENT,
  `pollip_qid` varchar(10) NOT NULL DEFAULT '',
  `pollip_aid` varchar(10) NOT NULL DEFAULT '',
  `pollip_ip` varchar(100) NOT NULL DEFAULT '',
  `pollip_host` varchar(200) NOT NULL DEFAULT '',
  `pollip_timestamp` varchar(20) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollip_user` tinytext NOT NULL,
  `pollip_userid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollip_id`),
  KEY `pollip_ip` (`pollip_ip`),
  KEY `pollip_qid` (`pollip_qid`),
  KEY `pollip_ip_qid` (`pollip_ip`,`pollip_qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_pollsip`
#

#
# End of data contents of table `wp_2_pollsip`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_pollsq`
#

DROP TABLE IF EXISTS `wp_2_pollsq`;


#
# Table structure of table `wp_2_pollsq`
#

CREATE TABLE `wp_2_pollsq` (
  `pollq_id` int(10) NOT NULL AUTO_INCREMENT,
  `pollq_question` varchar(200) NOT NULL DEFAULT '',
  `pollq_timestamp` varchar(20) NOT NULL DEFAULT '',
  `pollq_totalvotes` int(10) NOT NULL DEFAULT '0',
  `pollq_active` tinyint(1) NOT NULL DEFAULT '1',
  `pollq_expiry` varchar(20) NOT NULL DEFAULT '',
  `pollq_multiple` tinyint(3) NOT NULL DEFAULT '0',
  `pollq_totalvoters` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_pollsq`
#
INSERT INTO `wp_2_pollsq` ( `pollq_id`, `pollq_question`, `pollq_timestamp`, `pollq_totalvotes`, `pollq_active`, `pollq_expiry`, `pollq_multiple`, `pollq_totalvoters`) VALUES
(1, 'How Is My Site?', '1425551359', 0, 1, '', 0, 0) ;

#
# End of data contents of table `wp_2_pollsq`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_postmeta`
#

DROP TABLE IF EXISTS `wp_2_postmeta`;


#
# Table structure of table `wp_2_postmeta`
#

CREATE TABLE `wp_2_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_postmeta`
#
INSERT INTO `wp_2_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default') ;

#
# End of data contents of table `wp_2_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_posts`
#

DROP TABLE IF EXISTS `wp_2_posts`;


#
# Table structure of table `wp_2_posts`
#

CREATE TABLE `wp_2_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_posts`
#
INSERT INTO `wp_2_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-03-05 10:27:15', '2015-03-05 10:27:15', 'Welcome to <a href="http://localhost/hvn_mmp/">MMP Sites</a>. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-03-05 10:27:15', '2015-03-05 10:27:15', '', 0, 'http://localhost/hvn_mmp/child-site/?p=1', 0, 'post', '', 1),
(2, 1, '2015-03-05 10:27:15', '2015-03-05 10:27:15', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/hvn_mmp/child-site/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-03-05 10:27:15', '2015-03-05 10:27:15', '', 0, 'http://localhost/hvn_mmp/child-site/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-03-05 10:27:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-05 10:27:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/hvn_mmp/child-site/?p=3', 0, 'post', '', 0) ;

#
# End of data contents of table `wp_2_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_term_relationships`
#

DROP TABLE IF EXISTS `wp_2_term_relationships`;


#
# Table structure of table `wp_2_term_relationships`
#

CREATE TABLE `wp_2_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_term_relationships`
#
INSERT INTO `wp_2_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wp_2_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_2_term_taxonomy`;


#
# Table structure of table `wp_2_term_taxonomy`
#

CREATE TABLE `wp_2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_term_taxonomy`
#
INSERT INTO `wp_2_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wp_2_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_2_terms`
#

DROP TABLE IF EXISTS `wp_2_terms`;


#
# Table structure of table `wp_2_terms`
#

CREATE TABLE `wp_2_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_2_terms`
#
INSERT INTO `wp_2_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0) ;

#
# End of data contents of table `wp_2_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp__3wp_broadcast_broadcastdata`
#

DROP TABLE IF EXISTS `wp__3wp_broadcast_broadcastdata`;


#
# Table structure of table `wp__3wp_broadcast_broadcastdata`
#

CREATE TABLE `wp__3wp_broadcast_broadcastdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of row',
  `blog_id` int(11) NOT NULL COMMENT 'Blog ID',
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `data` text NOT NULL COMMENT 'Serialized BroadcastData',
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`,`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


#
# Data contents of table `wp__3wp_broadcast_broadcastdata`
#

#
# End of data contents of table `wp__3wp_broadcast_broadcastdata`
# --------------------------------------------------------



#
# Delete any existing table `wp_blog_versions`
#

DROP TABLE IF EXISTS `wp_blog_versions`;


#
# Table structure of table `wp_blog_versions`
#

CREATE TABLE `wp_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `db_version` varchar(20) NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`blog_id`),
  KEY `db_version` (`db_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_blog_versions`
#

#
# End of data contents of table `wp_blog_versions`
# --------------------------------------------------------



#
# Delete any existing table `wp_blogs`
#

DROP TABLE IF EXISTS `wp_blogs`;


#
# Table structure of table `wp_blogs`
#

CREATE TABLE `wp_blogs` (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT '1',
  `archived` tinyint(2) NOT NULL DEFAULT '0',
  `mature` tinyint(2) NOT NULL DEFAULT '0',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`),
  KEY `domain` (`domain`(50),`path`(5)),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_blogs`
#
INSERT INTO `wp_blogs` ( `blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'localhost', '/hvn_mmp/', '2015-03-05 10:24:18', '2015-03-18 10:03:54', 1, 0, 0, 0, 0, 0),
(2, 1, 'localhost', '/hvn_mmp/child-site/', '2015-03-05 10:27:11', '2015-03-05 10:27:16', 1, 0, 0, 0, 0, 0) ;

#
# End of data contents of table `wp_blogs`
# --------------------------------------------------------



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-03-05 10:18:46', '2015-03-05 10:18:46', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/hvn_mmp', 'yes'),
(2, 'home', 'http://localhost/hvn_mmp', 'yes'),
(3, 'blogname', 'MMP', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'daothiendang3@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:63:"category-posts-in-custom-menu/category-posts-in-custom-menu.php";i:1;s:51:"links-with-icons-widget/links-with-icons-widget.php";i:2;s:23:"ml-slider/ml-slider.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'alizee', 'yes'),
(42, 'stylesheet', 'alizee', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:2;a:3:{s:5:"title";s:17:"The Weekly Review";s:4:"text";s:581:"The Weekly Review is a free premium lifestyle magazine that celebrates the best of Melbourne and all it has to offer.\r\n\r\nNow with 9 editions across Melbourne the weekly magazine features a stable of some of Australia’s most talented and best-known writers who will cover topics ranging from culture and design to food and wine, as well as interviews with personalities who make Melbourne tick.\r\n\r\nThe high-end editorial focus will be supported by Melbourne’s most comprehensive display of glossy real estate advertising. \r\n\r\nThe magazine is distributed in print, online mobile.";s:6:"filter";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:1:{s:63:"category-posts-in-custom-menu/category-posts-in-custom-menu.php";a:2:{i:0;s:12:"CPCM_Manager";i:1;s:14:"cpmp_uninstall";}}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:26:"total_slider_manage_slides";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-0";a:3:{i:0;s:17:"widget_sp_image-3";i:1;s:17:"widget_sp_image-2";i:2;s:17:"widget_sp_image-4";}s:9:"sidebar-1";a:5:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";}s:9:"sidebar-3";a:2:{i:0;s:6:"text-2";i:1;s:6:"wlwi-2";}s:9:"sidebar-4";a:1:{i:0;s:11:"tag_cloud-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:6:{i:1426734852;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1426749900;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1426760330;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1426760346;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1426760736;a:1:{s:21:"update_network_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(107, 'can_compress_scripts', '1', 'yes'),
(114, 'recently_activated', 'a:1:{s:37:"remove-blog-slug/remove-blog-slug.php";i:1426674187;}', 'yes'),
(138, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1426475525;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(139, 'current_theme', 'Alizee', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(140, 'theme_mods_clearsky', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1426478322;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:24:"first-footer-widget-area";N;s:25:"second-footer-widget-area";N;s:24:"third-footer-widget-area";N;s:25:"fourth-footer-widget-area";N;}}}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'optionsframework', 'a:1:{s:2:"id";s:8:"clearsky";}', 'yes'),
(147, 'post_count', '6', 'yes'),
(151, 'total_slider_slide_groups', 'a:1:{i:0;O:17:"Total_Slide_Group":5:{s:4:"slug";s:14:"homepage-slide";s:12:"originalSlug";s:14:"homepage-slide";s:4:"name";s:14:"Homepage slide";s:16:"templateLocation";s:7:"builtin";s:8:"template";s:12:"twentytwelve";}}', 'yes'),
(152, 'total_slider_general_options', 'a:2:{s:23:"should_enqueue_template";s:1:"1";s:26:"should_show_tinymce_button";s:1:"1";}', 'yes'),
(153, 'total_slider_dataformat_version', '1.1', 'yes'),
(154, 'total_slider_slides_homepage-slide', 'a:2:{i:0;a:7:{s:2:"id";s:22:"55064d154770f450227002";s:5:"title";s:7:"Slide 1";s:11:"description";s:0:"";s:10:"background";s:1:"5";s:4:"link";s:0:"";s:11:"title_pos_x";i:0;s:11:"title_pos_y";i:0;}i:1;a:7:{s:2:"id";s:22:"55064d375da73874996694";s:5:"title";s:7:"Slide 2";s:11:"description";s:0:"";s:10:"background";s:1:"9";s:4:"link";s:0:"";s:11:"title_pos_x";i:0;s:11:"title_pos_y";i:0;}}', 'yes'),
(158, 'ml-slider_children', 'a:0:{}', 'yes'),
(163, 'theme_mods_alizee', 'a:10:{i:0;b:0;s:12:"header_image";s:13:"remove-header";s:11:"home_layout";s:7:"two_col";s:9:"site_logo";s:73:"http://localhost/hvn_mmp/wp-content/uploads/2015/03/logo_leader_board.jpg";s:15:"alizee_scroller";s:0:"";s:10:"menu_color";s:7:"#ffffff";s:12:"header_color";s:7:"#ffffff";s:13:"primary_color";s:7:"#000000";s:18:"nav_menu_locations";a:3:{s:7:"primary";i:3;s:6:"social";i:4;s:6:"footer";i:5;}s:12:"footer_color";s:7:"#f3f3f3";}', 'yes'),
(164, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(177, 'widget_tag_cloud', 'a:2:{i:2;a:2:{s:5:"title";s:4:"TAGS";s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(180, 'widget_widget_sp_image', 'a:4:{i:2;a:12:{s:5:"title";s:19:"Love where you live";s:11:"description";s:0:"";s:4:"link";s:0:"";s:10:"linktarget";s:5:"_self";s:5:"width";i:440;s:6:"height";i:81;s:4:"size";s:25:"tribe_image_widget_custom";s:5:"align";s:4:"left";s:3:"alt";s:0:"";s:8:"imageurl";s:67:"http://localhost/hvn_mmp/wp-content/uploads/2015/03/header_text.png";s:12:"aspect_ratio";d:1.3333333333333332593184650249895639717578887939453125;s:13:"attachment_id";i:27;}i:3;a:12:{s:5:"title";s:13:"Weekly Review";s:11:"description";s:0:"";s:4:"link";s:0:"";s:10:"linktarget";s:5:"_self";s:5:"width";i:178;s:6:"height";i:178;s:4:"size";s:25:"tribe_image_widget_custom";s:5:"align";s:4:"left";s:3:"alt";s:0:"";s:8:"imageurl";s:81:"http://localhost/hvn_mmp/wp-content/uploads/2015/03/header_logo_weekly_review.png";s:12:"aspect_ratio";d:1.3333333333333332593184650249895639717578887939453125;s:13:"attachment_id";i:26;}i:4;a:12:{s:5:"title";s:8:"Magazine";s:11:"description";s:0:"";s:4:"link";s:22:"https://www.google.com";s:10:"linktarget";s:6:"_blank";s:5:"width";i:133;s:6:"height";i:149;s:4:"size";s:25:"tribe_image_widget_custom";s:5:"align";s:5:"right";s:3:"alt";s:0:"";s:8:"imageurl";s:77:"http://localhost/hvn_mmp/wp-content/uploads/2015/03/header_magazine_cover.jpg";s:12:"aspect_ratio";d:0.89261744966442957416319359253975562751293182373046875;s:13:"attachment_id";i:28;}s:12:"_multiwidget";i:1;}', 'yes'),
(212, 'widget_metaslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(217, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(218, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(220, 'widget_alizee_video_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(233, 'widget_wlwi', 'a:2:{i:2;a:11:{s:5:"title";s:12:"Social Links";s:4:"numB";s:1:"3";s:6:"iLink1";s:19:"http://facebook.com";s:6:"iName1";s:8:"Facebook";s:6:"iIcon1";s:69:"http://localhost/hvn_mmp/wp-content/uploads/2015/03/icon_facebook.png";s:6:"iLink2";s:18:"http://twitter.com";s:6:"iName2";s:7:"Twitter";s:6:"iIcon2";s:68:"http://localhost/hvn_mmp/wp-content/uploads/2015/03/icon_twitter.png";s:6:"iLink3";s:18:"http://youtube.com";s:6:"iName3";s:7:"Youtube";s:6:"iIcon3";s:68:"http://localhost/hvn_mmp/wp-content/uploads/2015/03/icon_youtube.png";}s:12:"_multiwidget";i:1;}', 'yes'),
(242, 'category_children', 'a:0:{}', 'yes'),
(264, 'blog_upload_space', '', 'yes'),
(268, 'rewrite_rules', 'a:69:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:16:".*wp-signup.php$";s:21:"index.php?signup=true";s:18:".*wp-activate.php$";s:23:"index.php?activate=true";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_lock', '1426475566:1'),
(3, 5, '_wp_attached_file', '2015/03/1.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:13:"2015/03/1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(5, 4, '_thumbnail_id', '5'),
(6, 4, '_edit_last', '1'),
(7, 6, '_thumbnail_id', '5'),
(8, 6, '_edit_lock', '1426677239:1'),
(9, 6, '_edit_last', '1'),
(12, 9, '_wp_attached_file', '2015/03/2.jpg'),
(13, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:480;s:6:"height";i:360;s:4:"file";s:13:"2015/03/2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(14, 10, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"762";s:6:"height";s:3:"990";s:3:"spw";s:1:"7";s:3:"sph";s:1:"5";s:5:"delay";s:4:"5000";s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:4:"true";s:5:"links";s:5:"false";s:10:"hoverPause";s:5:"false";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";s:2:"15";s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:4:"true";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(15, 9, 'ml-slider_type', 'image'),
(16, 9, '_wp_attachment_backup_sizes', 'a:4:{s:15:"resized-700x300";a:5:{s:4:"path";s:61:"D:xampphtdocshvn_mmp/wp-content/uploads/2015/03/2-700x300.jpg";s:4:"file";s:13:"2-700x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-480x205";a:5:{s:4:"path";s:61:"D:xampphtdocshvn_mmp/wp-content/uploads/2015/03/2-480x205.jpg";s:4:"file";s:13:"2-480x205.jpg";s:5:"width";i:480;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-480x240";a:5:{s:4:"path";s:61:"D:xampphtdocshvn_mmp/wp-content/uploads/2015/03/2-480x240.jpg";s:4:"file";s:13:"2-480x240.jpg";s:5:"width";i:480;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-277x360";a:5:{s:4:"path";s:61:"D:xampphtdocshvn_mmp/wp-content/uploads/2015/03/2-277x360.jpg";s:4:"file";s:13:"2-277x360.jpg";s:5:"width";i:277;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}'),
(17, 5, 'ml-slider_type', 'image'),
(18, 5, '_wp_attachment_backup_sizes', 'a:4:{s:15:"resized-700x300";a:5:{s:4:"path";s:61:"D:xampphtdocshvn_mmp/wp-content/uploads/2015/03/1-700x300.jpg";s:4:"file";s:13:"1-700x300.jpg";s:5:"width";i:480;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-480x205";a:5:{s:4:"path";s:61:"D:xampphtdocshvn_mmp/wp-content/uploads/2015/03/1-480x205.jpg";s:4:"file";s:13:"1-480x205.jpg";s:5:"width";i:480;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-480x240";a:5:{s:4:"path";s:61:"D:xampphtdocshvn_mmp/wp-content/uploads/2015/03/1-480x240.jpg";s:4:"file";s:13:"1-480x240.jpg";s:5:"width";i:480;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-277x360";a:5:{s:4:"path";s:61:"D:xampphtdocshvn_mmp/wp-content/uploads/2015/03/1-277x360.jpg";s:4:"file";s:13:"1-277x360.jpg";s:5:"width";i:277;s:6:"height";i:360;s:9:"mime-type";s:10:"image/jpeg";}}'),
(19, 9, 'ml-slider_crop_position', 'center-center'),
(20, 9, '_wp_attachment_image_alt', ''),
(21, 5, 'ml-slider_crop_position', 'center-center'),
(22, 5, '_wp_attachment_image_alt', ''),
(23, 11, '_wp_attached_file', '2015/03/logo_leader_board.jpg'),
(24, 11, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:728;s:6:"height";i:90;s:4:"file";s:29:"2015/03/logo_leader_board.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"logo_leader_board-150x90.jpg";s:5:"width";i:150;s:6:"height";i:90;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"logo_leader_board-300x37.jpg";s:5:"width";i:300;s:6:"height";i:37;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(25, 11, '_wp_attachment_custom_header_last_used_alizee', '1426478836'),
(26, 11, '_wp_attachment_is_custom_header', 'alizee'),
(27, 12, '_menu_item_type', 'custom'),
(28, 12, '_menu_item_menu_item_parent', '0'),
(29, 12, '_menu_item_object_id', '12'),
(30, 12, '_menu_item_object', 'custom'),
(31, 12, '_menu_item_target', ''),
(32, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 12, '_menu_item_xfn', ''),
(34, 12, '_menu_item_url', '#'),
(36, 13, '_menu_item_type', 'custom'),
(37, 13, '_menu_item_menu_item_parent', '0'),
(38, 13, '_menu_item_object_id', '13'),
(39, 13, '_menu_item_object', 'custom'),
(40, 13, '_menu_item_target', ''),
(41, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 13, '_menu_item_xfn', ''),
(43, 13, '_menu_item_url', '#'),
(45, 14, '_menu_item_type', 'custom'),
(46, 14, '_menu_item_menu_item_parent', '0'),
(47, 14, '_menu_item_object_id', '14'),
(48, 14, '_menu_item_object', 'custom'),
(49, 14, '_menu_item_target', ''),
(50, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 14, '_menu_item_xfn', ''),
(52, 14, '_menu_item_url', '#'),
(54, 15, '_menu_item_type', 'custom'),
(55, 15, '_menu_item_menu_item_parent', '0'),
(56, 15, '_menu_item_object_id', '15'),
(57, 15, '_menu_item_object', 'custom'),
(58, 15, '_menu_item_target', ''),
(59, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 15, '_menu_item_xfn', ''),
(61, 15, '_menu_item_url', '#'),
(63, 16, '_menu_item_type', 'custom'),
(64, 16, '_menu_item_menu_item_parent', '0'),
(65, 16, '_menu_item_object_id', '16'),
(66, 16, '_menu_item_object', 'custom'),
(67, 16, '_menu_item_target', ''),
(68, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 16, '_menu_item_xfn', ''),
(70, 16, '_menu_item_url', '#'),
(72, 17, '_menu_item_type', 'custom'),
(73, 17, '_menu_item_menu_item_parent', '0'),
(74, 17, '_menu_item_object_id', '17'),
(75, 17, '_menu_item_object', 'custom'),
(76, 17, '_menu_item_target', ''),
(77, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 17, '_menu_item_xfn', ''),
(79, 17, '_menu_item_url', '#'),
(81, 18, '_menu_item_type', 'custom'),
(82, 18, '_menu_item_menu_item_parent', '0'),
(83, 18, '_menu_item_object_id', '18'),
(84, 18, '_menu_item_object', 'custom'),
(85, 18, '_menu_item_target', ''),
(86, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 18, '_menu_item_xfn', ''),
(88, 18, '_menu_item_url', '#'),
(90, 19, '_menu_item_type', 'custom'),
(91, 19, '_menu_item_menu_item_parent', '0'),
(92, 19, '_menu_item_object_id', '19'),
(93, 19, '_menu_item_object', 'custom'),
(94, 19, '_menu_item_target', ''),
(95, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 19, '_menu_item_xfn', ''),
(97, 19, '_menu_item_url', '#'),
(99, 20, '_menu_item_type', 'custom'),
(100, 20, '_menu_item_menu_item_parent', '0'),
(101, 20, '_menu_item_object_id', '20'),
(102, 20, '_menu_item_object', 'custom'),
(103, 20, '_menu_item_target', ''),
(104, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 20, '_menu_item_xfn', ''),
(106, 20, '_menu_item_url', '#'),
(108, 21, '_menu_item_type', 'custom'),
(109, 21, '_menu_item_menu_item_parent', '0'),
(110, 21, '_menu_item_object_id', '21'),
(111, 21, '_menu_item_object', 'custom') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(112, 21, '_menu_item_target', ''),
(113, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 21, '_menu_item_xfn', ''),
(115, 21, '_menu_item_url', '#'),
(117, 22, '_menu_item_type', 'custom'),
(118, 22, '_menu_item_menu_item_parent', '0'),
(119, 22, '_menu_item_object_id', '22'),
(120, 22, '_menu_item_object', 'custom'),
(121, 22, '_menu_item_target', ''),
(122, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 22, '_menu_item_xfn', ''),
(124, 22, '_menu_item_url', 'http://pinterest.com'),
(126, 23, '_menu_item_type', 'custom'),
(127, 23, '_menu_item_menu_item_parent', '0'),
(128, 23, '_menu_item_object_id', '23'),
(129, 23, '_menu_item_object', 'custom'),
(130, 23, '_menu_item_target', ''),
(131, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(132, 23, '_menu_item_xfn', ''),
(133, 23, '_menu_item_url', 'http://facebook.com'),
(135, 24, '_menu_item_type', 'custom'),
(136, 24, '_menu_item_menu_item_parent', '0'),
(137, 24, '_menu_item_object_id', '24'),
(138, 24, '_menu_item_object', 'custom'),
(139, 24, '_menu_item_target', ''),
(140, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(141, 24, '_menu_item_xfn', ''),
(142, 24, '_menu_item_url', 'http://twitter.com'),
(144, 25, '_menu_item_type', 'custom'),
(145, 25, '_menu_item_menu_item_parent', '0'),
(146, 25, '_menu_item_object_id', '25'),
(147, 25, '_menu_item_object', 'custom'),
(148, 25, '_menu_item_target', ''),
(149, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(150, 25, '_menu_item_xfn', ''),
(151, 25, '_menu_item_url', 'http://youtube.com'),
(153, 26, '_wp_attached_file', '2015/03/header_logo_weekly_review.png'),
(154, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:178;s:6:"height";i:178;s:4:"file";s:37:"2015/03/header_logo_weekly_review.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"header_logo_weekly_review-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(155, 27, '_wp_attached_file', '2015/03/header_text.png'),
(156, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:440;s:6:"height";i:81;s:4:"file";s:23:"2015/03/header_text.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"header_text-150x81.png";s:5:"width";i:150;s:6:"height";i:81;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"header_text-300x55.png";s:5:"width";i:300;s:6:"height";i:55;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(157, 28, '_wp_attached_file', '2015/03/header_magazine_cover.jpg'),
(158, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:133;s:6:"height";i:149;s:4:"file";s:33:"2015/03/header_magazine_cover.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(159, 29, '_wp_attached_file', '2015/03/home_slide_1.jpg'),
(160, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:762;s:6:"height";i:990;s:4:"file";s:24:"2015/03/home_slide_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"home_slide_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"home_slide_1-231x300.jpg";s:5:"width";i:231;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"alizee-thumb";a:4:{s:4:"file";s:24:"home_slide_1-750x974.jpg";s:5:"width";i:750;s:6:"height";i:974;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(161, 29, 'ml-slider_type', 'image'),
(162, 29, 'ml-slider_crop_position', 'center-center'),
(163, 29, '_wp_attachment_image_alt', ''),
(164, 30, '_menu_item_type', 'custom'),
(165, 30, '_menu_item_menu_item_parent', '0'),
(166, 30, '_menu_item_object_id', '30'),
(167, 30, '_menu_item_object', 'custom'),
(168, 30, '_menu_item_target', ''),
(169, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 30, '_menu_item_xfn', ''),
(171, 30, '_menu_item_url', '#'),
(173, 31, '_menu_item_type', 'custom'),
(174, 31, '_menu_item_menu_item_parent', '0'),
(175, 31, '_menu_item_object_id', '31'),
(176, 31, '_menu_item_object', 'custom'),
(177, 31, '_menu_item_target', ''),
(178, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(179, 31, '_menu_item_xfn', ''),
(180, 31, '_menu_item_url', '#'),
(182, 32, '_menu_item_type', 'custom'),
(183, 32, '_menu_item_menu_item_parent', '0'),
(184, 32, '_menu_item_object_id', '32'),
(185, 32, '_menu_item_object', 'custom'),
(186, 32, '_menu_item_target', ''),
(187, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(188, 32, '_menu_item_xfn', ''),
(189, 32, '_menu_item_url', '#'),
(191, 33, '_menu_item_type', 'custom'),
(192, 33, '_menu_item_menu_item_parent', '0'),
(193, 33, '_menu_item_object_id', '33'),
(194, 33, '_menu_item_object', 'custom'),
(195, 33, '_menu_item_target', ''),
(196, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(197, 33, '_menu_item_xfn', ''),
(198, 33, '_menu_item_url', '#'),
(200, 34, '_menu_item_type', 'custom'),
(201, 34, '_menu_item_menu_item_parent', '0'),
(202, 34, '_menu_item_object_id', '34'),
(203, 34, '_menu_item_object', 'custom'),
(204, 34, '_menu_item_target', ''),
(205, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(206, 34, '_menu_item_xfn', ''),
(207, 34, '_menu_item_url', '#'),
(209, 35, '_menu_item_type', 'custom'),
(210, 35, '_menu_item_menu_item_parent', '0'),
(211, 35, '_menu_item_object_id', '35'),
(212, 35, '_menu_item_object', 'custom'),
(213, 35, '_menu_item_target', ''),
(214, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(215, 35, '_menu_item_xfn', ''),
(216, 35, '_menu_item_url', '#'),
(218, 36, '_menu_item_type', 'custom'),
(219, 36, '_menu_item_menu_item_parent', '0'),
(220, 36, '_menu_item_object_id', '36'),
(221, 36, '_menu_item_object', 'custom'),
(222, 36, '_menu_item_target', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(223, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(224, 36, '_menu_item_xfn', ''),
(225, 36, '_menu_item_url', '#'),
(227, 1, '_edit_lock', '1426591269:1'),
(228, 1, '_edit_last', '1'),
(231, 38, '_edit_lock', '1426589265:1'),
(232, 38, '_edit_last', '1'),
(233, 40, '_wp_attached_file', '2015/03/icon_facebook.png'),
(234, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:28;s:6:"height";i:28;s:4:"file";s:25:"2015/03/icon_facebook.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(235, 41, '_wp_attached_file', '2015/03/icon_twitter.png'),
(236, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:28;s:6:"height";i:28;s:4:"file";s:24:"2015/03/icon_twitter.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(237, 42, '_wp_attached_file', '2015/03/icon_youtube.png'),
(238, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:28;s:6:"height";i:28;s:4:"file";s:24:"2015/03/icon_youtube.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(248, 12, 'cpcm-unfold', ''),
(249, 12, 'cpcm-orderby', 'none'),
(250, 12, 'cpcm-order', 'DESC'),
(251, 12, 'cpcm-item-count', '-1'),
(252, 12, 'cpcm-item-skip', '-1'),
(253, 12, 'cpcm-item-titles', '%post_title'),
(254, 12, 'cpcm-remove-original-item', 'always'),
(255, 12, 'cpcm-subcategories', 'flatten'),
(264, 13, 'cpcm-unfold', ''),
(265, 13, 'cpcm-orderby', 'none'),
(266, 13, 'cpcm-order', 'DESC'),
(267, 13, 'cpcm-item-count', '-1'),
(268, 13, 'cpcm-item-skip', '-1'),
(269, 13, 'cpcm-item-titles', '%post_title'),
(270, 13, 'cpcm-remove-original-item', 'always'),
(271, 13, 'cpcm-subcategories', 'flatten'),
(272, 14, 'cpcm-unfold', ''),
(273, 14, 'cpcm-orderby', 'none'),
(274, 14, 'cpcm-order', 'DESC'),
(275, 14, 'cpcm-item-count', '-1'),
(276, 14, 'cpcm-item-skip', '-1'),
(277, 14, 'cpcm-item-titles', '%post_title'),
(278, 14, 'cpcm-remove-original-item', 'always'),
(279, 14, 'cpcm-subcategories', 'flatten'),
(280, 15, 'cpcm-unfold', ''),
(281, 15, 'cpcm-orderby', 'none'),
(282, 15, 'cpcm-order', 'DESC'),
(283, 15, 'cpcm-item-count', '-1'),
(284, 15, 'cpcm-item-skip', '-1'),
(285, 15, 'cpcm-item-titles', '%post_title'),
(286, 15, 'cpcm-remove-original-item', 'always'),
(287, 15, 'cpcm-subcategories', 'flatten'),
(288, 16, 'cpcm-unfold', ''),
(289, 16, 'cpcm-orderby', 'none'),
(290, 16, 'cpcm-order', 'DESC'),
(291, 16, 'cpcm-item-count', '-1'),
(292, 16, 'cpcm-item-skip', '-1'),
(293, 16, 'cpcm-item-titles', '%post_title'),
(294, 16, 'cpcm-remove-original-item', 'always'),
(295, 16, 'cpcm-subcategories', 'flatten'),
(296, 17, 'cpcm-unfold', ''),
(297, 17, 'cpcm-orderby', 'none'),
(298, 17, 'cpcm-order', 'DESC'),
(299, 17, 'cpcm-item-count', '-1'),
(300, 17, 'cpcm-item-skip', '-1'),
(301, 17, 'cpcm-item-titles', '%post_title'),
(302, 17, 'cpcm-remove-original-item', 'always'),
(303, 17, 'cpcm-subcategories', 'flatten'),
(304, 18, 'cpcm-unfold', ''),
(305, 18, 'cpcm-orderby', 'none'),
(306, 18, 'cpcm-order', 'DESC'),
(307, 18, 'cpcm-item-count', '-1'),
(308, 18, 'cpcm-item-skip', '-1'),
(309, 18, 'cpcm-item-titles', '%post_title'),
(310, 18, 'cpcm-remove-original-item', 'always'),
(311, 18, 'cpcm-subcategories', 'flatten'),
(312, 19, 'cpcm-unfold', ''),
(313, 19, 'cpcm-orderby', 'none'),
(314, 19, 'cpcm-order', 'DESC'),
(315, 19, 'cpcm-item-count', '-1'),
(316, 19, 'cpcm-item-skip', '-1'),
(317, 19, 'cpcm-item-titles', '%post_title'),
(318, 19, 'cpcm-remove-original-item', 'always'),
(319, 19, 'cpcm-subcategories', 'flatten'),
(320, 20, 'cpcm-unfold', ''),
(321, 20, 'cpcm-orderby', 'none'),
(322, 20, 'cpcm-order', 'DESC'),
(323, 20, 'cpcm-item-count', '-1'),
(324, 20, 'cpcm-item-skip', '-1'),
(325, 20, 'cpcm-item-titles', '%post_title'),
(326, 20, 'cpcm-remove-original-item', 'always'),
(327, 20, 'cpcm-subcategories', 'flatten'),
(328, 21, 'cpcm-unfold', ''),
(329, 21, 'cpcm-orderby', 'none'),
(330, 21, 'cpcm-order', 'DESC'),
(331, 21, 'cpcm-item-count', '-1'),
(332, 21, 'cpcm-item-skip', '-1'),
(333, 21, 'cpcm-item-titles', '%post_title'),
(334, 21, 'cpcm-remove-original-item', 'always'),
(335, 21, 'cpcm-subcategories', 'flatten'),
(336, 44, '_edit_lock', '1426670218:1'),
(337, 44, '_edit_last', '1'),
(338, 45, '_wp_attached_file', '2015/03/eat_1.jpg'),
(339, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:267;s:6:"height";i:267;s:4:"file";s:17:"2015/03/eat_1.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"eat_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(340, 46, '_wp_attached_file', '2015/03/eat_2.jpg'),
(341, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:267;s:6:"height";i:267;s:4:"file";s:17:"2015/03/eat_2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"eat_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(342, 47, '_wp_attached_file', '2015/03/eat_3.jpg') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(343, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:267;s:6:"height";i:267;s:4:"file";s:17:"2015/03/eat_3.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"eat_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(344, 48, '_wp_attached_file', '2015/03/eat_4.jpg'),
(345, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:267;s:6:"height";i:267;s:4:"file";s:17:"2015/03/eat_4.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"eat_4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(346, 44, '_thumbnail_id', '45'),
(349, 50, '_edit_lock', '1426670361:1'),
(350, 50, '_edit_last', '1'),
(354, 52, '_edit_lock', '1426670331:1'),
(355, 52, '_edit_last', '1'),
(357, 52, '_thumbnail_id', '47'),
(360, 50, '_thumbnail_id', '46'),
(363, 54, '_edit_lock', '1426676995:1'),
(364, 54, '_edit_last', '1'),
(365, 54, '_thumbnail_id', '48'),
(368, 56, '_menu_item_type', 'taxonomy'),
(369, 56, '_menu_item_menu_item_parent', '15'),
(370, 56, '_menu_item_object_id', '9'),
(371, 56, '_menu_item_object', 'category'),
(372, 56, '_menu_item_target', ''),
(373, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(374, 56, '_menu_item_xfn', ''),
(375, 56, '_menu_item_url', ''),
(377, 56, 'cpcm-unfold', '1'),
(378, 56, 'cpcm-orderby', 'none'),
(379, 56, 'cpcm-order', 'DESC'),
(380, 56, 'cpcm-item-count', '4'),
(381, 56, 'cpcm-item-skip', '0'),
(382, 56, 'cpcm-item-titles', '%post_featured_image %post_title'),
(383, 56, 'cpcm-remove-original-item', 'always'),
(384, 56, 'cpcm-subcategories', 'flatten') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-03-05 10:18:46', '2015-03-05 10:18:46', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-03-17 10:42:50', '2015-03-17 10:42:50', '', 0, 'http://localhost/hvn_mmp/?p=1', 0, 'post', '', 1),
(2, 1, '2015-03-05 10:18:46', '2015-03-05 10:18:46', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/hvn_mmp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-03-05 10:18:46', '2015-03-05 10:18:46', '', 0, 'http://localhost/hvn_mmp/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-03-16 03:14:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-16 03:14:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/hvn_mmp/?p=4', 0, 'post', '', 0),
(5, 1, '2015-03-16 03:14:54', '2015-03-16 03:14:54', '', '1', '<p>Slide 3</p>', 'inherit', 'open', 'open', '', '1', '', '', '2015-03-17 10:40:06', '2015-03-17 10:40:06', '', 4, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/1.jpg', 2, 'attachment', 'image/jpeg', 0),
(6, 1, '2015-03-16 03:16:31', '2015-03-16 03:16:31', '', 'Slide 1', '', 'publish', 'open', 'open', '', 'slide-1', '', '', '2015-03-16 03:16:31', '2015-03-16 03:16:31', '', 0, 'http://localhost/hvn_mmp/?p=6', 0, 'post', '', 0),
(7, 1, '2015-03-16 03:16:31', '2015-03-16 03:16:31', '', 'Slide 1', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-03-16 03:16:31', '2015-03-16 03:16:31', '', 6, 'http://localhost/hvn_mmp/blog/2015/03/16/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2015-03-16 03:22:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-03-16 03:22:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/hvn_mmp/?p=8', 0, 'post', '', 0),
(9, 1, '2015-03-16 03:25:33', '2015-03-16 03:25:33', '', '2', '<p>Slide 2</p>', 'inherit', 'open', 'open', '', '2', '', '', '2015-03-17 10:40:06', '2015-03-17 10:40:06', '', 0, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/2.jpg', 1, 'attachment', 'image/jpeg', 0),
(10, 1, '2015-03-16 03:33:52', '2015-03-16 03:33:52', '', 'Homepage Slider', '', 'publish', 'open', 'open', '', 'new-slider', '', '', '2015-03-17 10:40:06', '2015-03-17 10:40:06', '', 0, 'http://localhost/hvn_mmp/?post_type=ml-slider&#038;p=10', 0, 'ml-slider', '', 0),
(11, 1, '2015-03-16 04:06:37', '2015-03-16 04:06:37', '', 'logo_leader_board', '', 'inherit', 'open', 'open', '', 'logo_leader_board', '', '', '2015-03-16 04:06:37', '2015-03-16 04:06:37', '', 0, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/logo_leader_board.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2015-03-16 04:23:03', '2015-03-16 04:23:03', '', 'MEET', '', 'publish', 'open', 'open', '', 'meet', '', '', '2015-03-18 09:40:13', '2015-03-18 09:40:13', '', 0, 'http://localhost/hvn_mmp/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2015-03-16 04:23:03', '2015-03-16 04:23:03', '', 'TALK', '', 'publish', 'open', 'open', '', 'talk', '', '', '2015-03-18 09:40:13', '2015-03-18 09:40:13', '', 0, 'http://localhost/hvn_mmp/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2015-03-16 04:24:02', '2015-03-16 04:24:02', '', 'PLAY', '', 'publish', 'open', 'open', '', 'play', '', '', '2015-03-18 09:40:13', '2015-03-18 09:40:13', '', 0, 'http://localhost/hvn_mmp/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2015-03-16 04:24:02', '2015-03-16 04:24:02', '', 'EAT', '', 'publish', 'open', 'open', '', 'eat', '', '', '2015-03-18 09:40:14', '2015-03-18 09:40:14', '', 0, 'http://localhost/hvn_mmp/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2015-03-16 04:24:56', '2015-03-16 04:24:56', '', 'DRINK', '', 'publish', 'open', 'open', '', 'menu-item', '', '', '2015-03-18 09:40:14', '2015-03-18 09:40:14', '', 0, 'http://localhost/hvn_mmp/?p=16', 6, 'nav_menu_item', '', 0),
(17, 1, '2015-03-16 04:24:56', '2015-03-16 04:24:56', '', 'LIVE', '', 'publish', 'open', 'open', '', 'live', '', '', '2015-03-18 09:40:14', '2015-03-18 09:40:14', '', 0, 'http://localhost/hvn_mmp/?p=17', 7, 'nav_menu_item', '', 0),
(18, 1, '2015-03-16 04:24:56', '2015-03-16 04:24:56', '', 'SPACES', '', 'publish', 'open', 'open', '', 'spaces', '', '', '2015-03-18 09:40:14', '2015-03-18 09:40:14', '', 0, 'http://localhost/hvn_mmp/?p=18', 8, 'nav_menu_item', '', 0),
(19, 1, '2015-03-16 04:24:57', '2015-03-16 04:24:57', '', 'LEARN', '', 'publish', 'open', 'open', '', 'learn', '', '', '2015-03-18 09:40:15', '2015-03-18 09:40:15', '', 0, 'http://localhost/hvn_mmp/?p=19', 9, 'nav_menu_item', '', 0),
(20, 1, '2015-03-16 04:24:57', '2015-03-16 04:24:57', '', 'STAY', '', 'publish', 'open', 'open', '', 'stay', '', '', '2015-03-18 09:40:15', '2015-03-18 09:40:15', '', 0, 'http://localhost/hvn_mmp/?p=20', 10, 'nav_menu_item', '', 0),
(21, 1, '2015-03-16 04:24:57', '2015-03-16 04:24:57', '', 'WIN', '', 'publish', 'open', 'open', '', 'win', '', '', '2015-03-18 09:40:15', '2015-03-18 09:40:15', '', 0, 'http://localhost/hvn_mmp/?p=21', 11, 'nav_menu_item', '', 0),
(22, 1, '2015-03-16 04:38:17', '2015-03-16 04:38:17', '', 'Pinterest', '', 'publish', 'open', 'open', '', 'pinterest', '', '', '2015-03-16 04:38:45', '2015-03-16 04:38:45', '', 0, 'http://localhost/hvn_mmp/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2015-03-16 04:38:18', '2015-03-16 04:38:18', '', 'Facebook', '', 'publish', 'open', 'open', '', 'facebook', '', '', '2015-03-16 04:38:45', '2015-03-16 04:38:45', '', 0, 'http://localhost/hvn_mmp/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2015-03-16 04:38:18', '2015-03-16 04:38:18', '', 'Twitter', '', 'publish', 'open', 'open', '', 'twitter', '', '', '2015-03-16 04:38:45', '2015-03-16 04:38:45', '', 0, 'http://localhost/hvn_mmp/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2015-03-16 04:38:18', '2015-03-16 04:38:18', '', 'Youtube', '', 'publish', 'open', 'open', '', 'youtube', '', '', '2015-03-16 04:38:45', '2015-03-16 04:38:45', '', 0, 'http://localhost/hvn_mmp/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2015-03-16 08:07:04', '2015-03-16 08:07:04', '', 'header_logo_weekly_review', '', 'inherit', 'open', 'open', '', 'header_logo_weekly_review', '', '', '2015-03-16 08:07:04', '2015-03-16 08:07:04', '', 0, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/header_logo_weekly_review.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2015-03-16 08:07:22', '2015-03-16 08:07:22', '', 'header_text', '', 'inherit', 'open', 'open', '', 'header_text', '', '', '2015-03-16 08:07:22', '2015-03-16 08:07:22', '', 0, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/header_text.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2015-03-16 08:15:13', '2015-03-16 08:15:13', '', 'header_magazine_cover', '', 'inherit', 'open', 'open', '', 'header_magazine_cover', '', '', '2015-03-16 08:15:13', '2015-03-16 08:15:13', '', 0, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/header_magazine_cover.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2015-03-17 04:19:32', '2015-03-17 04:19:32', '', 'home_slide_1', '<p>Karen Martini:</p>\r\n<p>The Divine Ms M</p>\r\n<span>David Aidone</span>', 'inherit', 'open', 'open', '', 'home_slide_1', '', '', '2015-03-17 10:40:06', '2015-03-17 10:40:06', '', 0, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/home_slide_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2015-03-17 08:57:55', '2015-03-17 08:57:55', '', 'About us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2015-03-17 08:57:55', '2015-03-17 08:57:55', '', 0, 'http://localhost/hvn_mmp/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2015-03-17 08:57:55', '2015-03-17 08:57:55', '', 'Advertising', '', 'publish', 'open', 'open', '', 'advertising', '', '', '2015-03-17 08:57:55', '2015-03-17 08:57:55', '', 0, 'http://localhost/hvn_mmp/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2015-03-17 08:57:55', '2015-03-17 08:57:55', '', 'Distribution', '', 'publish', 'open', 'open', '', 'distribution', '', '', '2015-03-17 08:57:55', '2015-03-17 08:57:55', '', 0, 'http://localhost/hvn_mmp/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2015-03-17 08:57:56', '2015-03-17 08:57:56', '', 'Feedback', '', 'publish', 'open', 'open', '', 'feedback', '', '', '2015-03-17 08:57:56', '2015-03-17 08:57:56', '', 0, 'http://localhost/hvn_mmp/?p=33', 4, 'nav_menu_item', '', 0),
(34, 1, '2015-03-17 08:57:56', '2015-03-17 08:57:56', '', 'Editorial Team', '', 'publish', 'open', 'open', '', 'editorial-team', '', '', '2015-03-17 08:57:56', '2015-03-17 08:57:56', '', 0, 'http://localhost/hvn_mmp/?p=34', 5, 'nav_menu_item', '', 0),
(35, 1, '2015-03-17 08:57:56', '2015-03-17 08:57:56', '', 'Privacy Policy', '', 'publish', 'open', 'open', '', 'privacy-policy', '', '', '2015-03-17 08:57:56', '2015-03-17 08:57:56', '', 0, 'http://localhost/hvn_mmp/?p=35', 6, 'nav_menu_item', '', 0),
(36, 1, '2015-03-17 08:57:56', '2015-03-17 08:57:56', '', 'Contact Us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2015-03-17 08:57:56', '2015-03-17 08:57:56', '', 0, 'http://localhost/hvn_mmp/?p=36', 7, 'nav_menu_item', '', 0),
(37, 1, '2015-03-17 10:42:50', '2015-03-17 10:42:50', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-03-17 10:42:50', '2015-03-17 10:42:50', '', 1, 'http://localhost/hvn_mmp/blog/2015/03/17/1-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-03-17 10:49:57', '2015-03-17 10:49:57', 'The Weekly Review is a free premium lifestyle magazine that celebrates the best of Melbourne and all it has to offer.\r\n\r\nNow with 9 editions across Melbourne the weekly magazine features a stable of some of Australia’s most talented and best-known writers who will cover topics ranging from culture and design to food and wine, as well as interviews with personalities who make Melbourne tick.\r\n\r\nThe high-end editorial focus will be supported by Melbourne’s most comprehensive display of glossy real estate advertising.', 'The Weekly Review', '', 'publish', 'open', 'open', '', 'the-weekly-review', '', '', '2015-03-17 10:49:57', '2015-03-17 10:49:57', '', 0, 'http://localhost/hvn_mmp/?page_id=38', 0, 'page', '', 0),
(39, 1, '2015-03-17 10:49:57', '2015-03-17 10:49:57', 'The Weekly Review is a free premium lifestyle magazine that celebrates the best of Melbourne and all it has to offer.\r\n\r\nNow with 9 editions across Melbourne the weekly magazine features a stable of some of Australia’s most talented and best-known writers who will cover topics ranging from culture and design to food and wine, as well as interviews with personalities who make Melbourne tick.\r\n\r\nThe high-end editorial focus will be supported by Melbourne’s most comprehensive display of glossy real estate advertising.', 'The Weekly Review', '', 'inherit', 'open', 'open', '', '38-revision-v1', '', '', '2015-03-17 10:49:57', '2015-03-17 10:49:57', '', 38, 'http://localhost/hvn_mmp/blog/2015/03/17/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2015-03-18 02:40:30', '2015-03-18 02:40:30', '', 'icon_facebook', '', 'inherit', 'open', 'open', '', 'icon_facebook', '', '', '2015-03-18 02:40:30', '2015-03-18 02:40:30', '', 0, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/icon_facebook.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2015-03-18 02:40:47', '2015-03-18 02:40:47', '', 'icon_twitter', '', 'inherit', 'open', 'open', '', 'icon_twitter', '', '', '2015-03-18 02:40:47', '2015-03-18 02:40:47', '', 0, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/icon_twitter.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2015-03-18 02:40:47', '2015-03-18 02:40:47', '', 'icon_youtube', '', 'inherit', 'open', 'open', '', 'icon_youtube', '', '', '2015-03-18 02:40:47', '2015-03-18 02:40:47', '', 0, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/icon_youtube.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2015-03-18 09:18:56', '2015-03-18 09:18:56', '', 'Lawrence Leung and Co celebrate', '', 'publish', 'open', 'open', '', 'lawrence-leung-and-co-celebrate', '', '', '2015-03-18 09:18:56', '2015-03-18 09:18:56', '', 0, 'http://localhost/hvn_mmp/?p=44', 0, 'post', '', 0),
(45, 1, '2015-03-18 09:18:43', '2015-03-18 09:18:43', '', 'eat_1', '', 'inherit', 'open', 'open', '', 'eat_1', '', '', '2015-03-18 09:18:43', '2015-03-18 09:18:43', '', 44, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/eat_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2015-03-18 09:18:44', '2015-03-18 09:18:44', '', 'eat_2', '', 'inherit', 'open', 'open', '', 'eat_2', '', '', '2015-03-18 09:18:44', '2015-03-18 09:18:44', '', 44, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/eat_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2015-03-18 09:18:44', '2015-03-18 09:18:44', '', 'eat_3', '', 'inherit', 'open', 'open', '', 'eat_3', '', '', '2015-03-18 09:18:44', '2015-03-18 09:18:44', '', 44, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/eat_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2015-03-18 09:18:45', '2015-03-18 09:18:45', '', 'eat_4', '', 'inherit', 'open', 'open', '', 'eat_4', '', '', '2015-03-18 09:18:45', '2015-03-18 09:18:45', '', 44, 'http://localhost/hvn_mmp/wp-content/uploads/2015/03/eat_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2015-03-18 09:18:56', '2015-03-18 09:18:56', '', 'Lawrence Leung and Co celebrate', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-03-18 09:18:56', '2015-03-18 09:18:56', '', 44, 'http://localhost/hvn_mmp/blog/2015/03/18/44-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-03-18 09:19:39', '2015-03-18 09:19:39', '', 'Guy Pearce changes his tune', '', 'publish', 'open', 'open', '', 'guy-pearce-changes-his-tune', '', '', '2015-03-18 09:21:42', '2015-03-18 09:21:42', '', 0, 'http://localhost/hvn_mmp/?p=50', 0, 'post', '', 0),
(51, 1, '2015-03-18 09:19:39', '2015-03-18 09:19:39', '', 'Guy Pearce changes his tune', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2015-03-18 09:19:39', '2015-03-18 09:19:39', '', 50, 'http://localhost/hvn_mmp/blog/2015/03/18/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2015-03-18 09:21:06', '2015-03-18 09:21:06', '', 'Smokin’ hot', '', 'publish', 'open', 'open', '', 'smokin-hot', '', '', '2015-03-18 09:21:06', '2015-03-18 09:21:06', '', 0, 'http://localhost/hvn_mmp/?p=52', 0, 'post', '', 0),
(53, 1, '2015-03-18 09:21:06', '2015-03-18 09:21:06', '', 'Smokin’ hot', '', 'inherit', 'open', 'open', '', '52-revision-v1', '', '', '2015-03-18 09:21:06', '2015-03-18 09:21:06', '', 52, 'http://localhost/hvn_mmp/blog/2015/03/18/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2015-03-18 09:22:02', '2015-03-18 09:22:02', '', 'Game on', '', 'publish', 'open', 'open', '', 'game-on', '', '', '2015-03-18 09:22:02', '2015-03-18 09:22:02', '', 0, 'http://localhost/hvn_mmp/?p=54', 0, 'post', '', 0),
(55, 1, '2015-03-18 09:22:02', '2015-03-18 09:22:02', '', 'Game on', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2015-03-18 09:22:02', '2015-03-18 09:22:02', '', 54, 'http://localhost/hvn_mmp/blog/2015/03/18/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-03-18 09:34:35', '2015-03-18 09:34:35', ' ', '', '', 'publish', 'open', 'open', '', '56', '', '', '2015-03-18 09:40:14', '2015-03-18 09:40:14', '', 0, 'http://localhost/hvn_mmp/?p=56', 5, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_registration_log`
#

DROP TABLE IF EXISTS `wp_registration_log`;


#
# Table structure of table `wp_registration_log`
#

CREATE TABLE `wp_registration_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `IP` varchar(30) NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_registration_log`
#
INSERT INTO `wp_registration_log` ( `ID`, `email`, `IP`, `blog_id`, `date_registered`) VALUES
(1, 'daothiendang3@gmail.com', 'localhost', 2, '2015-03-05 10:27:16') ;

#
# End of data contents of table `wp_registration_log`
# --------------------------------------------------------



#
# Delete any existing table `wp_signups`
#

DROP TABLE IF EXISTS `wp_signups`;


#
# Table structure of table `wp_signups`
#

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  `title` longtext NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) NOT NULL DEFAULT '',
  `meta` longtext,
  PRIMARY KEY (`signup_id`),
  KEY `activation_key` (`activation_key`),
  KEY `user_email` (`user_email`),
  KEY `user_login_email` (`user_login`,`user_email`),
  KEY `domain_path` (`domain`,`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_signups`
#

#
# End of data contents of table `wp_signups`
# --------------------------------------------------------



#
# Delete any existing table `wp_site`
#

DROP TABLE IF EXISTS `wp_site`;


#
# Table structure of table `wp_site`
#

CREATE TABLE `wp_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`,`path`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_site`
#
INSERT INTO `wp_site` ( `id`, `domain`, `path`) VALUES
(1, 'localhost', '/hvn_mmp/') ;

#
# End of data contents of table `wp_site`
# --------------------------------------------------------



#
# Delete any existing table `wp_sitemeta`
#

DROP TABLE IF EXISTS `wp_sitemeta`;


#
# Table structure of table `wp_sitemeta`
#

CREATE TABLE `wp_sitemeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_sitemeta`
#
INSERT INTO `wp_sitemeta` ( `meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'site_name', 'MMP Sites'),
(2, 1, 'admin_email', 'daothiendang3@gmail.com'),
(3, 1, 'admin_user_id', '1'),
(4, 1, 'registration', 'none'),
(5, 1, 'upload_filetypes', 'jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg wma m4a wav mp4 m4v webm ogv wmv flv'),
(6, 1, 'blog_upload_space', '100'),
(7, 1, 'fileupload_maxk', '1500'),
(8, 1, 'site_admins', 'a:1:{i:0;s:5:"admin";}'),
(9, 1, 'allowedthemes', 'a:2:{s:13:"twentyfifteen";b:1;s:6:"alizee";b:1;}'),
(10, 1, 'illegal_names', 'a:9:{i:0;s:3:"www";i:1;s:3:"web";i:2;s:4:"root";i:3;s:5:"admin";i:4;s:4:"main";i:5;s:6:"invite";i:6;s:13:"administrator";i:7;s:5:"files";i:8;s:4:"blog";}'),
(11, 1, 'wpmu_upgrade_site', '30133'),
(12, 1, 'welcome_email', 'Dear User,\n\nYour new SITE_NAME site has been successfully set up at:\nBLOG_URL\n\nYou can log in to the administrator account with the following information:\n\nUsername: USERNAME\nPassword: PASSWORD\nLog in here: BLOG_URLwp-login.php\n\nWe hope you enjoy your new site. Thanks!\n\n--The Team @ SITE_NAME'),
(13, 1, 'first_post', 'Welcome to <a href="SITE_URL">SITE_NAME</a>. This is your first post. Edit or delete it, then start blogging!'),
(14, 1, 'siteurl', 'http://localhost/hvn_mmp/'),
(15, 1, 'add_new_users', '0'),
(16, 1, 'upload_space_check_disabled', '1'),
(17, 1, 'subdomain_install', '0'),
(18, 1, 'global_terms_enabled', '0'),
(19, 1, 'ms_files_rewriting', '0'),
(20, 1, 'initial_db_version', '30133'),
(21, 1, 'active_sitewide_plugins', 'a:2:{s:29:"image-widget/image-widget.php";i:1426491617;s:31:"wp-migrate-db/wp-migrate-db.php";i:1426733087;}'),
(22, 1, 'WPLANG', 'en_US'),
(30, 1, 'user_count', '1'),
(31, 1, 'blog_count', '2'),
(32, 1, 'can_compress_scripts', '1'),
(33, 1, 'threewp_broadcast\\ThreeWP_Broadcast_blogs_to_hide', '5'),
(34, 1, 'threewp_broadcast\\ThreeWP_Broadcast_blogs_hide_overview', '5'),
(35, 1, 'threewp_broadcast\\ThreeWP_Broadcast_broadcast_internal_custom_fields', '1'),
(36, 1, 'threewp_broadcast\\ThreeWP_Broadcast_canonical_url', '1'),
(37, 1, 'threewp_broadcast\\ThreeWP_Broadcast_clear_post', '1'),
(38, 1, 'threewp_broadcast\\ThreeWP_Broadcast_custom_field_whitelist', '_wp_page_template _wplp_ _aioseop_'),
(39, 1, 'threewp_broadcast\\ThreeWP_Broadcast_custom_field_blacklist', ''),
(40, 1, 'threewp_broadcast\\ThreeWP_Broadcast_custom_field_protectlist', ''),
(41, 1, 'threewp_broadcast\\ThreeWP_Broadcast_database_version', '6'),
(42, 1, 'threewp_broadcast\\ThreeWP_Broadcast_debug_ips', ''),
(43, 1, 'threewp_broadcast\\ThreeWP_Broadcast_save_post_priority', '640'),
(44, 1, 'threewp_broadcast\\ThreeWP_Broadcast_post_types', 'post page'),
(45, 1, 'threewp_broadcast\\ThreeWP_Broadcast_existing_attachments', 'use'),
(46, 1, 'threewp_broadcast\\ThreeWP_Broadcast_role_broadcast', 'super_admin'),
(47, 1, 'threewp_broadcast\\ThreeWP_Broadcast_role_link', 'super_admin'),
(48, 1, 'threewp_broadcast\\ThreeWP_Broadcast_role_broadcast_as_draft', 'super_admin'),
(49, 1, 'threewp_broadcast\\ThreeWP_Broadcast_role_broadcast_scheduled_posts', 'super_admin'),
(50, 1, 'threewp_broadcast\\ThreeWP_Broadcast_role_taxonomies', 'super_admin'),
(51, 1, 'threewp_broadcast\\ThreeWP_Broadcast_role_custom_fields', 'super_admin'),
(59, 1, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}'),
(70, 1, '_image_widget_version', '4.1'),
(90, 1, 'registrationnotification', 'yes'),
(91, 1, 'welcome_user_email', 'Dear User,\n\nYour new account is set up.\n\nYou can log in with the following information:\nUsername: USERNAME\nPassword: PASSWORD\nLOGINLINK\n\nThanks!\n\n--The Team @ SITE_NAME') ;

#
# End of data contents of table `wp_sitemeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(5, 2, 0),
(6, 1, 0),
(9, 2, 0),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(22, 4, 0),
(23, 4, 0),
(24, 4, 0),
(25, 4, 0),
(29, 2, 0),
(30, 5, 0),
(31, 5, 0),
(32, 5, 0),
(33, 5, 0),
(34, 5, 0),
(35, 5, 0),
(36, 5, 0),
(44, 9, 0),
(50, 9, 0),
(52, 9, 0),
(54, 9, 0),
(56, 3, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'ml-slider', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 11),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'nav_menu', '', 0, 7),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'category', '', 0, 4) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, '10', '10', 0),
(3, 'Main Menu', 'main-menu', 0),
(4, 'Social links', 'social-links', 0),
(5, 'Footer Menu', 'footer-menu', 0),
(6, 'melbourine', 'melbourine', 0),
(7, 'play', 'play', 0),
(8, 'competition', 'competition', 0),
(9, 'eat', 'eat', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:2:{s:13:"administrator";b:1;s:26:"total_slider_manage_slides";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw,total-slider-help-pointer'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"040efde27223fa232647844808611751b36b6be706a60e6846c957abaa323566";a:4:{s:10:"expiration";i:1426648116;s:2:"ip";s:12:"localhost";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0";s:5:"login";i:1426475316;}s:64:"ca392c809a470572a1dc58f64300bca46f043cc2de3fdca6e1241b4c445126f2";a:4:{s:10:"expiration";i:1426736987;s:2:"ip";s:12:"localhost";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0";s:5:"login";i:1426564187;}s:64:"74c625849e8a96d33bbd708643cf2d0d6feda7e666b512aaac81285647c67ab7";a:4:{s:10:"expiration";i:1427855218;s:2:"ip";s:12:"localhost";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0";s:5:"login";i:1426645618;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '8'),
(16, 1, 'source_domain', 'localhost'),
(17, 1, 'primary_blog', '1'),
(18, 1, 'wp_2_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(19, 1, 'wp_2_user_level', '10'),
(20, 1, 'wp_2_dashboard_quick_press_last_post_id', '3'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1426475693'),
(23, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(25, 1, 'nav_menu_recently_edited', '3'),
(26, 1, 'wp_2_user-settings', 'libraryContent=browse'),
(27, 1, 'wp_2_user-settings-time', '1426672377') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, 'admin', '$P$BnBT0CGRr8Ddud6T66.h8I5TpVhdsx1', 'admin', 'daothiendang3@gmail.com', '', '2015-03-05 10:18:45', '', 0, 'admin', 0, 0) ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in
#

