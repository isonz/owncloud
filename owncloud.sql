-- phpMyAdmin SQL Dump
-- version 4.0.10.9
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016-03-02 02:01:00
-- 服务器版本: 5.1.73
-- PHP 版本: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `owncloud`
--

-- --------------------------------------------------------

--
-- 表的结构 `oc_activity`
--

CREATE TABLE IF NOT EXISTS `oc_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `affecteduser` varchar(64) COLLATE utf8_bin NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `subjectparams` varchar(4000) COLLATE utf8_bin NOT NULL,
  `message` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `messageparams` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `file` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `object_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`),
  KEY `activity_user_time` (`affecteduser`,`timestamp`),
  KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  KEY `activity_filter_app` (`affecteduser`,`app`,`timestamp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `oc_activity`
--

INSERT INTO `oc_activity` (`activity_id`, `timestamp`, `priority`, `type`, `user`, `affecteduser`, `app`, `subject`, `subjectparams`, `message`, `messageparams`, `file`, `link`, `object_type`, `object_id`) VALUES
(1, 1456802613, 30, 'file_created', 'root', 'root', 'files', 'created_self', '["\\/\\/1.jpg"]', '', '[]', '//1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', '', 0),
(2, 1456802613, 30, 'file_created', 'root', 'root', 'files', 'created_self', '["\\/1.jpg"]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 31),
(3, 1456802790, 30, 'file_deleted', 'root', 'root', 'files', 'deleted_self', '["\\/1.jpg"]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 31),
(4, 1456802815, 30, 'file_created', 'root', 'root', 'files', 'created_self', '["\\/\\/1.jpg"]', '', '[]', '//1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', '', 0),
(5, 1456802815, 30, 'file_created', 'root', 'root', 'files', 'created_self', '["\\/1.jpg"]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 43),
(6, 1456802839, 30, 'file_deleted', 'root', 'root', 'files', 'deleted_self', '["\\/1.jpg"]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 43),
(7, 1456802860, 30, 'file_created', 'root', 'root', 'files', 'created_self', '["\\/\\/1.jpg"]', '', '[]', '//1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', '', 0),
(8, 1456802860, 30, 'file_created', 'root', 'root', 'files', 'created_self', '["\\/1.jpg"]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(9, 1456803222, 30, 'file_created', 'root', 'root', 'files', 'created_self', '["\\/\\/\\u674e\\u8d1e\\u8d24\\u52b2\\u66b4\\u73b0\\u573a-\\u963f\\u91cc\\u963f\\u91cc&\\u6362\\u6389.1280x720.mp4"]', '', '[]', '//李贞贤劲暴现场-阿里阿里&换掉.1280x720.mp4', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', '', 0),
(10, 1456803223, 30, 'file_created', 'root', 'root', 'files', 'created_self', '["\\/\\u674e\\u8d1e\\u8d24\\u52b2\\u66b4\\u73b0\\u573a-\\u963f\\u91cc\\u963f\\u91cc&\\u6362\\u6389.1280x720.mp4"]', '', '[]', '/李贞贤劲暴现场-阿里阿里&换掉.1280x720.mp4', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 85),
(11, 1456804097, 30, 'file_deleted', 'root', 'root', 'files', 'deleted_self', '["\\/\\u674e\\u8d1e\\u8d24\\u52b2\\u66b4\\u73b0\\u573a-\\u963f\\u91cc\\u963f\\u91cc&\\u6362\\u6389.1280x720.mp4"]', '', '[]', '/李贞贤劲暴现场-阿里阿里&换掉.1280x720.mp4', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 85),
(12, 1456805133, 30, 'file_created', 'ison', 'ison', 'files', 'created_self', '[false]', '', '[]', '', 'http://192.168.75.140:81/index.php/apps/files?dir=', 'files', 88),
(13, 1456805133, 30, 'file_created', 'ison', 'ison', 'files', 'created_self', '["\\/Photos"]', '', '[]', '/Photos', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 89),
(14, 1456805134, 30, 'file_created', 'ison', 'ison', 'files', 'created_self', '["\\/Photos\\/San Francisco.jpg"]', '', '[]', '/Photos/San Francisco.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FPhotos', 'files', 90),
(15, 1456805134, 30, 'file_created', 'ison', 'ison', 'files', 'created_self', '["\\/Photos\\/Squirrel.jpg"]', '', '[]', '/Photos/Squirrel.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FPhotos', 'files', 91),
(16, 1456805134, 30, 'file_created', 'ison', 'ison', 'files', 'created_self', '["\\/Photos\\/Paris.jpg"]', '', '[]', '/Photos/Paris.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FPhotos', 'files', 92),
(17, 1456805135, 30, 'file_created', 'ison', 'ison', 'files', 'created_self', '["\\/Documents"]', '', '[]', '/Documents', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 93),
(18, 1456805135, 30, 'file_created', 'ison', 'ison', 'files', 'created_self', '["\\/Documents\\/Example.odt"]', '', '[]', '/Documents/Example.odt', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FDocuments', 'files', 94),
(19, 1456805135, 30, 'file_created', 'ison', 'ison', 'files', 'created_self', '["\\/ownCloud_User_Manual.pdf"]', '', '[]', '/ownCloud_User_Manual.pdf', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 95),
(20, 1456805196, 30, 'shared', 'root', 'root', 'files_sharing', 'shared_group_self', '["\\/1.jpg","\\u7535\\u5546\\u90e8"]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(21, 1456805196, 30, 'shared', 'root', 'ison', 'files_sharing', 'shared_with_by', '["\\/1.jpg","root"]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(22, 1456805233, 30, 'shared', 'ison', 'ison', 'files_sharing', 'shared_group_self', '["\\/1.jpg\\/","\\u670d\\u52a1\\u90e8"]', '', '[]', '/1.jpg/', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(23, 1456805233, 30, 'shared', 'ison', 'root', 'files_sharing', 'reshared_group_by', '["\\/1.jpg","ison","\\u670d\\u52a1\\u90e8"]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(24, 1456805261, 30, 'shared', 'ison', 'root', 'files_sharing', 'reshared_link_by', '["\\/1.jpg","ison",""]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(25, 1456805261, 30, 'shared', 'ison', 'ison', 'files_sharing', 'shared_link_self', '["\\/1.jpg\\/"]', '', '[]', '/1.jpg/', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(26, 1456805265, 30, 'shared', 'ison', 'root', 'files_sharing', 'reshared_link_by', '["\\/1.jpg","ison",""]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(27, 1456805265, 30, 'shared', 'ison', 'ison', 'files_sharing', 'shared_link_self', '["\\/1.jpg\\/"]', '', '[]', '/1.jpg/', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(28, 1456805268, 30, 'shared', 'ison', 'root', 'files_sharing', 'reshared_link_by', '["\\/1.jpg","ison",""]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(29, 1456805268, 30, 'shared', 'ison', 'ison', 'files_sharing', 'shared_link_self', '["\\/1.jpg\\/"]', '', '[]', '/1.jpg/', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(30, 1456805269, 30, 'shared', 'ison', 'root', 'files_sharing', 'reshared_link_by', '["\\/1.jpg","ison",""]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(31, 1456805269, 30, 'shared', 'ison', 'ison', 'files_sharing', 'shared_link_self', '["\\/1.jpg\\/"]', '', '[]', '/1.jpg/', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(32, 1456805686, 30, 'shared', 'root', 'root', 'files_sharing', 'shared_user_self', '["\\/1.jpg","ison"]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(33, 1456805686, 30, 'shared', 'root', 'ison', 'files_sharing', 'shared_with_by', '["\\/1.jpg","root"]', '', '[]', '/1.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 51),
(34, 1456806085, 30, 'file_created', 'luo', 'luo', 'files', 'created_self', '[false]', '', '[]', '', 'http://192.168.75.140:81/index.php/apps/files?dir=', 'files', 116),
(35, 1456806086, 30, 'file_created', 'luo', 'luo', 'files', 'created_self', '["\\/Photos"]', '', '[]', '/Photos', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 117),
(36, 1456806086, 30, 'file_created', 'luo', 'luo', 'files', 'created_self', '["\\/Photos\\/San Francisco.jpg"]', '', '[]', '/Photos/San Francisco.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FPhotos', 'files', 118),
(37, 1456806086, 30, 'file_created', 'luo', 'luo', 'files', 'created_self', '["\\/Photos\\/Squirrel.jpg"]', '', '[]', '/Photos/Squirrel.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FPhotos', 'files', 119),
(38, 1456806086, 30, 'file_created', 'luo', 'luo', 'files', 'created_self', '["\\/Photos\\/Paris.jpg"]', '', '[]', '/Photos/Paris.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FPhotos', 'files', 120),
(39, 1456806087, 30, 'file_created', 'luo', 'luo', 'files', 'created_self', '["\\/Documents"]', '', '[]', '/Documents', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 121),
(40, 1456806087, 30, 'file_created', 'luo', 'luo', 'files', 'created_self', '["\\/Documents\\/Example.odt"]', '', '[]', '/Documents/Example.odt', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FDocuments', 'files', 122),
(41, 1456806087, 30, 'file_created', 'luo', 'luo', 'files', 'created_self', '["\\/ownCloud_User_Manual.pdf"]', '', '[]', '/ownCloud_User_Manual.pdf', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 123),
(42, 1456806133, 30, 'shared', 'ison', 'ison', 'files_sharing', 'shared_group_self', '["\\/ownCloud_User_Manual.pdf","\\u7535\\u5546\\u90e8"]', '', '[]', '/ownCloud_User_Manual.pdf', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 95),
(43, 1456806133, 30, 'shared', 'ison', 'luo', 'files_sharing', 'shared_with_by', '["\\/ownCloud_User_Manual (2).pdf","ison"]', '', '[]', '/ownCloud_User_Manual (2).pdf', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 95),
(44, 1456806176, 30, 'shared', 'ison', 'ison', 'files_sharing', 'shared_group_self', '["\\/Photos","\\u7535\\u5546\\u90e8"]', '', '[]', '/Photos', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FPhotos', 'files', 89),
(45, 1456806176, 30, 'shared', 'ison', 'luo', 'files_sharing', 'shared_with_by', '["\\/Photos (2)","ison"]', '', '[]', '/Photos (2)', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FPhotos+%282%29', 'files', 89),
(46, 1456806399, 30, 'file_created', 'ison', 'luo', 'files', 'created_by', '["\\/Photos (2)\\/\\u8ba2\\u5355.doc","ison"]', '', '[]', '/Photos (2)/订单.doc', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FPhotos+%282%29', 'files', 140),
(47, 1456806399, 30, 'file_created', 'ison', 'ison', 'files', 'created_self', '["\\/Photos\\/\\u8ba2\\u5355.doc"]', '', '[]', '/Photos/订单.doc', 'http://192.168.75.140:81/index.php/apps/files?dir=%2FPhotos', 'files', 140),
(48, 1456806670, 30, 'file_created', 'luo', 'luo', 'files', 'created_self', '["\\/ex20101222505.jpg"]', '', '[]', '/ex20101222505.jpg', 'http://192.168.75.140:81/index.php/apps/files?dir=%2F', 'files', 141);

-- --------------------------------------------------------

--
-- 表的结构 `oc_activity_mq`
--

CREATE TABLE IF NOT EXISTS `oc_activity_mq` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `amq_timestamp` int(11) NOT NULL DEFAULT '0',
  `amq_latest_send` int(11) NOT NULL DEFAULT '0',
  `amq_type` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_affecteduser` varchar(64) COLLATE utf8_bin NOT NULL,
  `amq_appid` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_subject` varchar(255) COLLATE utf8_bin NOT NULL,
  `amq_subjectparams` varchar(4000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`mail_id`),
  KEY `amp_user` (`amq_affecteduser`),
  KEY `amp_latest_send_time` (`amq_latest_send`),
  KEY `amp_timestamp_time` (`amq_timestamp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_announcements`
--

CREATE TABLE IF NOT EXISTS `oc_announcements` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `announcement_time` int(11) NOT NULL DEFAULT '0',
  `announcement_user` varchar(64) COLLATE utf8_bin NOT NULL,
  `announcement_subject` varchar(512) COLLATE utf8_bin NOT NULL,
  `announcement_message` longtext COLLATE utf8_bin,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_appconfig`
--

CREATE TABLE IF NOT EXISTS `oc_appconfig` (
  `appid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8_bin,
  PRIMARY KEY (`appid`,`configkey`),
  KEY `appconfig_config_key_index` (`configkey`),
  KEY `appconfig_appid_key` (`appid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_appconfig`
--

INSERT INTO `oc_appconfig` (`appid`, `configkey`, `configvalue`) VALUES
('activity', 'enabled', 'yes'),
('activity', 'installed_version', '2.1.3'),
('activity', 'types', 'filesystem'),
('announcementcenter', 'enabled', 'yes'),
('announcementcenter', 'installed_version', '1.0.1'),
('announcementcenter', 'ocsid', '173921'),
('announcementcenter', 'types', ''),
('backgroundjob', 'lastjob', '2'),
('core', 'OC_Channel', 'stable'),
('core', 'installedat', '1456742707.6011'),
('core', 'lastcron', '1456819261'),
('core', 'lastupdateResult', '{"version":{},"versionstring":{},"url":{},"web":{}}'),
('core', 'lastupdatedat', '1456819188'),
('core', 'public_files', 'files_sharing/public.php'),
('core', 'public_webdav', 'files_sharing/publicwebdav.php'),
('core', 'remote_files', 'files/appinfo/remote.php'),
('core', 'remote_webdav', 'files/appinfo/remote.php'),
('core', 'shareapi_enforce_links_password', 'no'),
('core', 'umgmt_send_email', 'false'),
('core', 'umgmt_show_backend', 'false'),
('core', 'umgmt_show_email', 'false'),
('core', 'umgmt_show_last_login', 'true'),
('core', 'umgmt_show_storage_location', 'false'),
('files', 'enabled', 'yes'),
('files', 'installed_version', '1.2.0'),
('files', 'types', 'filesystem'),
('files_pdfviewer', 'enabled', 'yes'),
('files_pdfviewer', 'installed_version', '0.7'),
('files_pdfviewer', 'ocsid', '166049'),
('files_pdfviewer', 'types', ''),
('files_sharing', '1', '1456805209.2244'),
('files_sharing', '11', '1456806399.859'),
('files_sharing', '12', '1456806399.8851'),
('files_sharing', 'enabled', 'yes'),
('files_sharing', 'installed_version', '0.7.0'),
('files_sharing', 'types', 'filesystem'),
('files_texteditor', 'enabled', 'yes'),
('files_texteditor', 'installed_version', '2.0'),
('files_texteditor', 'ocsid', '166051'),
('files_texteditor', 'types', ''),
('files_trashbin', 'enabled', 'yes'),
('files_trashbin', 'installed_version', '0.7.0'),
('files_trashbin', 'types', 'filesystem'),
('files_versions', 'enabled', 'yes'),
('files_versions', 'installed_version', '1.1.0'),
('files_versions', 'types', 'filesystem'),
('files_videoviewer', 'enabled', 'yes'),
('files_videoviewer', 'installed_version', '0.1.3'),
('files_videoviewer', 'ocsid', '166054'),
('files_videoviewer', 'types', ''),
('firstrunwizard', 'enabled', 'yes'),
('firstrunwizard', 'installed_version', '1.1'),
('firstrunwizard', 'ocsid', '166055'),
('firstrunwizard', 'types', ''),
('gallery', 'enabled', 'yes'),
('gallery', 'installed_version', '14.2.0'),
('gallery', 'types', ''),
('notifications', 'enabled', 'yes'),
('notifications', 'installed_version', '0.1.0'),
('notifications', 'types', 'filesystem'),
('provisioning_api', 'enabled', 'yes'),
('provisioning_api', 'installed_version', '0.3.0'),
('provisioning_api', 'types', 'filesystem'),
('templateeditor', 'enabled', 'yes'),
('templateeditor', 'installed_version', '0.1'),
('templateeditor', 'types', ''),
('updater', 'enabled', 'yes'),
('updater', 'installed_version', '0.6'),
('updater', 'types', '');

-- --------------------------------------------------------

--
-- 表的结构 `oc_filecache`
--

CREATE TABLE IF NOT EXISTS `oc_filecache` (
  `fileid` int(11) NOT NULL AUTO_INCREMENT,
  `storage` int(11) NOT NULL DEFAULT '0',
  `path` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `path_hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  `mimetype` int(11) NOT NULL DEFAULT '0',
  `mimepart` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `storage_mtime` int(11) NOT NULL DEFAULT '0',
  `encrypted` int(11) NOT NULL DEFAULT '0',
  `unencrypted_size` bigint(20) NOT NULL DEFAULT '0',
  `etag` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `permissions` int(11) DEFAULT '0',
  PRIMARY KEY (`fileid`),
  UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  KEY `fs_parent_name_hash` (`parent`,`name`),
  KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  KEY `fs_storage_size` (`storage`,`size`,`fileid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=147 ;

--
-- 转存表中的数据 `oc_filecache`
--

INSERT INTO `oc_filecache` (`fileid`, `storage`, `path`, `path_hash`, `parent`, `name`, `mimetype`, `mimepart`, `size`, `mtime`, `storage_mtime`, `encrypted`, `unencrypted_size`, `etag`, `permissions`) VALUES
(1, 1, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 3259772, 1456805172, 1456802790, 0, 0, '56d5153447b7d', 23),
(2, 1, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 1, 'files', 2, 1, 22889338, 1456804097, 1456804097, 0, 0, '56d51101c7a60', 31),
(3, 1, 'files/Photos', 'd01bb67e7b71dd49fd06bad922f521c9', 2, 'Photos', 2, 1, 678556, 1456742708, 1456742708, 0, 0, '56d42134ca6d8', 31),
(4, 1, 'files/Photos/San Francisco.jpg', '9fc714efbeaafee22f7058e73d2b1c3b', 3, 'San Francisco.jpg', 4, 3, 216071, 1456742708, 1456742708, 0, 0, '3cc4e67560457c7734a288fdd933767b', 27),
(5, 1, 'files/Photos/Squirrel.jpg', 'de85d1da71bcd6232ad893f959063b8c', 3, 'Squirrel.jpg', 4, 3, 233724, 1456742708, 1456742708, 0, 0, '8bec16e07c88a76ece5054dd11ed3fc2', 27),
(6, 1, 'files/Photos/Paris.jpg', 'a208ddedf08367bbc56963107248dda5', 3, 'Paris.jpg', 4, 3, 228761, 1456742708, 1456742708, 0, 0, '8ded46eabd6340f9e45d782a247f7758', 27),
(7, 1, 'files/Documents', '0ad78ba05b6961d92f7970b2b3922eca', 2, 'Documents', 2, 1, 36227, 1456742709, 1456742708, 0, 0, '56d42135321ed', 31),
(8, 1, 'files/Documents/Example.odt', 'c89c560541b952a435783a7d51a27d50', 7, 'Example.odt', 6, 5, 36227, 1456742709, 1456742709, 0, 0, 'd3cb5468fbd71ad96bc7f1c5d25b8d35', 27),
(9, 1, 'files/ownCloud_User_Manual.pdf', 'fbaae4021d9c766fc309c54e81133013', 2, 'ownCloud_User_Manual.pdf', 7, 5, 2544989, 1456742709, 1456742709, 0, 0, '52bdeab154ac712cb2a28db38c42cae4', 27),
(10, 1, 'cache', '0fea6a13c52b4d4725368f24b045ca84', 1, 'cache', 2, 1, 0, 1456803222, 1456803222, 0, 0, '56d50d969429b', 31),
(11, 1, 'thumbnails', '3b8779ba05b8f0aed49650f3ff8beb4b', 1, 'thumbnails', 2, 1, 420171, 1456805172, 1456803216, 0, 0, '56d515344d464', 31),
(12, 1, 'thumbnails/5', '5a879f415920ad2c9f9ab5a8d20995d4', 11, '5', 2, 1, 88524, 1456801771, 1456801771, 0, 0, '56d507eb2ea88', 31),
(13, 1, 'thumbnails/4', 'c5fbfb67c05863e04e904228a0406831', 11, '4', 2, 1, 110807, 1456801770, 1456801770, 0, 0, '56d507eadf84d', 31),
(14, 1, 'thumbnails/6', '9f5b3849cb82c491a49d7db3c3d566d2', 11, '6', 2, 1, 96547, 1456801770, 1456801770, 0, 0, '56d507ea9c3cf', 31),
(15, 1, 'thumbnails/5/1024-768-max.png', '4d283c498c06fc136a2642e19cfa4885', 12, '1024-768-max.png', 8, 3, 73058, 1456801734, 1456801734, 0, 0, 'a4e4ba8f34030f9c7eeef73b33a8e348', 27),
(16, 1, 'thumbnails/4/1024-683-max.png', 'cbebfe15d2dc04ee39bb7f418557b93a', 13, '1024-683-max.png', 8, 3, 91662, 1456801734, 1456801734, 0, 0, 'a53984156234379ed446d76146ab66b4', 27),
(17, 1, 'thumbnails/6/1024-683-max.png', 'd22746d8ef4770f27df7a3e64c4e8f83', 14, '1024-683-max.png', 8, 3, 79994, 1456801734, 1456801734, 0, 0, 'a14a938f14cf7b40c8a342d7cb7471d2', 27),
(18, 1, 'thumbnails/6/32-32.png', '6f66bf9a944cd7e10a8007f26200ef30', 14, '32-32.png', 8, 3, 923, 1456801734, 1456801734, 0, 0, '5f9eaf413114e8b19069198732e030fd', 27),
(19, 1, 'thumbnails/5/32-32.png', '755b8a586c4e8c3828ef7da2b6927128', 12, '32-32.png', 8, 3, 986, 1456801734, 1456801734, 0, 0, '863383a1e031e8a85340902489819984', 27),
(20, 1, 'thumbnails/4/32-32.png', '556d041f5c3e8640e91ea5da02024a3c', 13, '32-32.png', 8, 3, 965, 1456801734, 1456801734, 0, 0, 'c169963278d7310feaafeab2e821ce00', 27),
(21, 1, 'thumbnails/6/300-200-with-aspect.png', '186613eca9b12e5623a7f29334bfbaea', 14, '300-200-with-aspect.png', 8, 3, 9141, 1456801737, 1456801737, 0, 0, 'a39e09b8a0eab08a1b95a1725f9e173d', 27),
(22, 1, 'thumbnails/4/300-200-with-aspect.png', '40c712e886df56795f8d6728ea02c897', 13, '300-200-with-aspect.png', 8, 3, 10831, 1456801737, 1456801737, 0, 0, 'c45e748169904f20ea9bd3be44bf5f65', 27),
(23, 1, 'thumbnails/5/267-200-with-aspect.png', 'b55255a779afc19bf6b6736e45e69afb', 12, '267-200-with-aspect.png', 8, 3, 7768, 1456801738, 1456801738, 0, 0, 'cb0b272272fa6081b89e49ab57a9053b', 27),
(24, 1, 'thumbnails/6/200-200.png', '2f233ccb99508493a6fc2b610b4fd4cb', 14, '200-200.png', 8, 3, 6489, 1456801770, 1456801770, 0, 0, '23f2a03dd4e6bf540189c667640287fb', 27),
(25, 1, 'thumbnails/4/200-200.png', '3bf7e8779c80ae3b031e72beaec601c1', 13, '200-200.png', 8, 3, 7349, 1456801770, 1456801770, 0, 0, '61888e69af74284433ed4474478dc6ab', 27),
(26, 1, 'thumbnails/5/200-200.png', 'f8e47cd9ac3da4f90b6743769ffe4d30', 12, '200-200.png', 8, 3, 6712, 1456801771, 1456801771, 0, 0, '90e7394489649cd82217b68f9bac8d23', 27),
(31, 1, 'files_trashbin/files/1.jpg.d1456802790', '7e0590d9871c528d05842e2093e75088', 36, '1.jpg.d1456802790', 11, 5, 19629566, 1442395259, 1442395259, 0, 0, '7412992bb2ae75b924ad5e78d97b3608', 27),
(35, 1, 'files_trashbin', 'fb66dca5f27af6f15c1d1d81e6f8d28b', 1, 'files_trashbin', 2, 1, 194537940, 1456804097, 1456802790, 0, 0, '56d51101b18a9', 31),
(36, 1, 'files_trashbin/files', '3014a771cbe30761f2e9ff3272110dbf', 35, 'files', 2, 1, 194537940, 1456804097, 1456804097, 0, 0, '56d51101b7aac', 31),
(37, 1, 'files_trashbin/versions', 'c639d144d3f1014051e14a98beac5705', 35, 'versions', 2, 1, 0, 1456802790, 1456802790, 0, 0, '56d50be656953', 31),
(38, 1, 'files_trashbin/keys', '9195c7cfc1b867f229ac78cc1b6a0be3', 35, 'keys', 2, 1, 0, 1456802790, 1456802790, 0, 0, '56d50be66f112', 31),
(43, 1, 'files_trashbin/files/1.jpg.d1456802839', '5ff250e8bec8fdbaaadf5b9967a27cdd', 36, '1.jpg.d1456802839', 11, 5, 19629566, 1442395259, 1442395259, 0, 0, '73c23ccf089605e0cfbdcf54c774a698', 27),
(51, 1, 'files/1.jpg', '7e2becd243552b441738ebc6f2d84297', 2, '1.jpg', 4, 3, 19629566, 1442395259, 1442395259, 0, 0, '99e84067bde0fd9632d3c5a3400c21b0', 27),
(77, 1, 'thumbnails/51', 'b28d126f605b8cc48f30369ad6393245', 11, '51', 2, 1, 124293, 1456805172, 1456805172, 0, 0, '56d5153453608', 31),
(79, 1, 'thumbnails/51/2048-1376-max.png', 'aeb7cbeef539f7d64ff75f8db95e48c3', 77, '2048-1376-max.png', 8, 3, 108708, 1456803216, 1456803216, 0, 0, 'bc57228b8fb7383a32245113a09fb18c', 27),
(81, 1, 'thumbnails/51/32-32.png', '37cd0aa72445ce0b04fdd8bef9ece565', 77, '32-32.png', 8, 3, 922, 1456803217, 1456803217, 0, 0, '94fe4810f5dd67f887f38577bbb159d3', 27),
(85, 1, 'files_trashbin/files/李贞贤劲暴现场-阿里阿里&换掉.1280x720.mp4.d1456804097', '6f2634401c93b712fbf4e27f4260b871', 36, '李贞贤劲暴现场-阿里阿里&换掉.1280x720.mp4.d1456804097', 11, 5, 155278808, 1376449935, 1376449935, 0, 0, '614d80a5cb8c17f0b0b5826b8f33a0c1', 27),
(86, 3, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 3259772, 1456806374, 1456805218, 0, 0, '56d519e6d63cb', 23),
(87, 3, 'cache', '0fea6a13c52b4d4725368f24b045ca84', 86, 'cache', 2, 1, 0, 1456805133, 1456805133, 0, 0, '56d5150d633a2', 31),
(88, 3, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 86, 'files', 2, 1, 3288444, 1456806399, 1456805135, 0, 0, '56d519ffbdde9', 31),
(89, 3, 'files/Photos', 'd01bb67e7b71dd49fd06bad922f521c9', 88, 'Photos', 2, 1, 707228, 1456806399, 1456806399, 0, 0, '56d519ffcbc78', 31),
(90, 3, 'files/Photos/San Francisco.jpg', '9fc714efbeaafee22f7058e73d2b1c3b', 89, 'San Francisco.jpg', 4, 3, 216071, 1456805134, 1456805134, 0, 0, 'f74c2cfd21186bda824752f3852b68c5', 27),
(91, 3, 'files/Photos/Squirrel.jpg', 'de85d1da71bcd6232ad893f959063b8c', 89, 'Squirrel.jpg', 4, 3, 233724, 1456805134, 1456805134, 0, 0, 'c95e1f3bd1fc47f65e4aa593ead5f05d', 27),
(92, 3, 'files/Photos/Paris.jpg', 'a208ddedf08367bbc56963107248dda5', 89, 'Paris.jpg', 4, 3, 228761, 1456805134, 1456805134, 0, 0, '6e090923751ba9fdf48febf685c4a5ac', 27),
(93, 3, 'files/Documents', '0ad78ba05b6961d92f7970b2b3922eca', 88, 'Documents', 2, 1, 36227, 1456805135, 1456805135, 0, 0, '56d5150f66470', 31),
(94, 3, 'files/Documents/Example.odt', 'c89c560541b952a435783a7d51a27d50', 93, 'Example.odt', 6, 5, 36227, 1456805135, 1456805135, 0, 0, 'd40175ca407adeda1f5a8881b641a46f', 27),
(95, 3, 'files/ownCloud_User_Manual.pdf', 'fbaae4021d9c766fc309c54e81133013', 88, 'ownCloud_User_Manual.pdf', 7, 5, 2544989, 1456805136, 1456805136, 0, 0, '2ec96c2325ba427f4cd4dfcb697d173a', 27),
(96, 1, 'thumbnails/51/537-361-with-aspect-cover.png', 'ac7b32f1a4c1149da3fa67236315fcc8', 77, '537-361-with-aspect-cover.png', 8, 3, 14663, 1456805172, 1456805172, 0, 0, '25854468d5690044975978e0330eca27', 27),
(97, 3, 'thumbnails', '3b8779ba05b8f0aed49650f3ff8beb4b', 86, 'thumbnails', 2, 1, 403563, 1456806374, 1456805762, 0, 0, '56d519e6e1d49', 31),
(98, 3, 'thumbnails/51', 'b28d126f605b8cc48f30369ad6393245', 97, '51', 2, 1, 121781, 1456805222, 1456805219, 0, 0, '56d515668386d', 31),
(99, 3, 'thumbnails/51/2048-1376-max.png', 'aeb7cbeef539f7d64ff75f8db95e48c3', 98, '2048-1376-max.png', 8, 3, 108708, 1456805218, 1456805218, 0, 0, 'de9d4eb5143d207ab549acbd358a1ae5', 27),
(100, 3, 'thumbnails/51/32-32.png', '37cd0aa72445ce0b04fdd8bef9ece565', 98, '32-32.png', 8, 3, 922, 1456805222, 1456805222, 0, 0, '44d4bb48ffcfbbe02a9374c120b22ed0', 27),
(101, 3, 'thumbnails/51/473-318-with-aspect-cover.png', '17bac1e391b2584975daccde18e4a77f', 98, '473-318-with-aspect-cover.png', 8, 3, 12151, 1456805219, 1456805219, 0, 0, '01f82a39502597e11d2fb8b5e64033de', 27),
(102, 3, 'thumbnails/90', '21537654e512a439911792dc89e18602', 97, '90', 2, 1, 104812, 1456806374, 1456806374, 0, 0, '56d519e6a294b', 31),
(103, 3, 'thumbnails/90/1024-683-max.png', '3c25b1028878878bbf3097a195783e02', 102, '1024-683-max.png', 8, 3, 91662, 1456805762, 1456805762, 0, 0, '2ea76f60d506f5b5499a63beef8b5cd4', 27),
(104, 3, 'thumbnails/92', 'ba17850972bf491474de8c49aff33e6c', 97, '92', 2, 1, 91675, 1456806374, 1456806374, 0, 0, '56d519e6cf8c5', 31),
(105, 3, 'thumbnails/92/1024-683-max.png', '9b5543e62c9da102646e40b1493fbfda', 104, '1024-683-max.png', 8, 3, 79994, 1456805762, 1456805762, 0, 0, 'aebc5c3658947391405d377b89ca8000', 27),
(106, 3, 'thumbnails/90/150-150.png', 'bcaceb96d238604b2d28ce6c31a11f49', 102, '150-150.png', 8, 3, 4843, 1456805762, 1456805762, 0, 0, 'e5403f2a78dbc42de08b87f6f76d1b99', 27),
(107, 3, 'thumbnails/91', '6d8639962f091718d8aed9f88e608105', 97, '91', 2, 1, 85295, 1456806374, 1456806374, 0, 0, '56d519e6ea0bf', 31),
(108, 3, 'thumbnails/92/150-150.png', 'c20af51f298306a6720719c428dd7de6', 104, '150-150.png', 8, 3, 4268, 1456805762, 1456805762, 0, 0, 'feaafa625d9d3105aaf389145a9dc1f2', 27),
(109, 3, 'thumbnails/91/1024-768-max.png', 'ec958566ea4d6f14adeb3cd2ace3bc87', 107, '1024-768-max.png', 8, 3, 73058, 1456805762, 1456805762, 0, 0, '74d803ed8e7f1d6c175ca561f004ea72', 27),
(110, 3, 'thumbnails/91/150-150.png', 'c00fdf38b8059bd772a713e1d5832812', 107, '150-150.png', 8, 3, 4534, 1456805763, 1456805763, 0, 0, 'e98efc9c5fc16ac9e4b496fcccb45aea', 27),
(111, 3, 'thumbnails/92/200-200.png', '66605736c3f8916a6a254197ebab8b38', 104, '200-200.png', 8, 3, 6489, 1456805769, 1456805769, 0, 0, 'a91aff27a2a272198453f4846384a88f', 27),
(112, 3, 'thumbnails/90/200-200.png', 'e64461f89a95f7f9f9b0c9f7478138c4', 102, '200-200.png', 8, 3, 7349, 1456805769, 1456805769, 0, 0, 'a165fc6e22b9bd07cbe0d9a5d49d754f', 27),
(113, 3, 'thumbnails/91/200-200.png', '3be150c453bb69c26b2a39763a92d533', 107, '200-200.png', 8, 3, 6712, 1456805769, 1456805769, 0, 0, '2ea342f83a4fb2c669fe84762203cb03', 27),
(114, 5, '', 'd41d8cd98f00b204e9800998ecf8427e', -1, '', 2, 1, 3259772, 1456819219, 1456806095, 0, 0, '56d54c137bd39', 23),
(115, 5, 'cache', '0fea6a13c52b4d4725368f24b045ca84', 114, 'cache', 2, 1, 0, 1456806085, 1456806085, 0, 0, '56d518c58780d', 31),
(116, 5, 'files', '45b963397aa40d4a0063e0d85e4fe7a1', 114, 'files', 2, 1, 3347222, 1456806670, 1456806670, 0, 0, '56d51b0e92b7e', 31),
(117, 5, 'files/Photos', 'd01bb67e7b71dd49fd06bad922f521c9', 116, 'Photos', 2, 1, 678556, 1456806086, 1456806086, 0, 0, '56d518c6dc296', 31),
(118, 5, 'files/Photos/San Francisco.jpg', '9fc714efbeaafee22f7058e73d2b1c3b', 117, 'San Francisco.jpg', 4, 3, 216071, 1456806086, 1456806086, 0, 0, '21578680fb8e6c0778d1468ea5c2a5f6', 27),
(119, 5, 'files/Photos/Squirrel.jpg', 'de85d1da71bcd6232ad893f959063b8c', 117, 'Squirrel.jpg', 4, 3, 233724, 1456806086, 1456806086, 0, 0, '5fd9b3c0da0eb302244248ab936095b7', 27),
(120, 5, 'files/Photos/Paris.jpg', 'a208ddedf08367bbc56963107248dda5', 117, 'Paris.jpg', 4, 3, 228761, 1456806087, 1456806087, 0, 0, 'cb23628729c67610f703bfa5aa4874e9', 27),
(121, 5, 'files/Documents', '0ad78ba05b6961d92f7970b2b3922eca', 116, 'Documents', 2, 1, 36227, 1456806087, 1456806087, 0, 0, '56d518c77cfe4', 31),
(122, 5, 'files/Documents/Example.odt', 'c89c560541b952a435783a7d51a27d50', 121, 'Example.odt', 6, 5, 36227, 1456806087, 1456806087, 0, 0, '97a9573c0a895a74c56698019d87d059', 27),
(123, 5, 'files/ownCloud_User_Manual.pdf', 'fbaae4021d9c766fc309c54e81133013', 116, 'ownCloud_User_Manual.pdf', 7, 5, 2544989, 1456806087, 1456806087, 0, 0, 'd3c8ea11eb3895f799be4c09670fb29c', 27),
(124, 5, 'thumbnails', '3b8779ba05b8f0aed49650f3ff8beb4b', 114, 'thumbnails', 2, 1, 498893, 1456819219, 1456806670, 0, 0, '56d54c1381650', 31),
(125, 5, 'thumbnails/51', 'b28d126f605b8cc48f30369ad6393245', 124, '51', 2, 1, 229060, 1456819219, 1456819219, 0, 0, '56d54c1387802', 31),
(126, 5, 'thumbnails/51/2048-1376-max.png', 'aeb7cbeef539f7d64ff75f8db95e48c3', 125, '2048-1376-max.png', 8, 3, 108708, 1456806095, 1456806095, 0, 0, 'c87b6f97a075733aaa94ef79586916b4', 27),
(127, 5, 'thumbnails/51/32-32.png', '37cd0aa72445ce0b04fdd8bef9ece565', 125, '32-32.png', 8, 3, 922, 1456806096, 1456806096, 0, 0, '615903f694fd2e208c577ebaa5a2fbfa', 27),
(128, 5, 'thumbnails/92', 'ba17850972bf491474de8c49aff33e6c', 124, '92', 2, 1, 80917, 1456806193, 1456806193, 0, 0, '56d519315c163', 31),
(129, 5, 'thumbnails/91', '6d8639962f091718d8aed9f88e608105', 124, '91', 2, 1, 74044, 1456806193, 1456806193, 0, 0, '56d51931685a7', 31),
(130, 5, 'thumbnails/90', '21537654e512a439911792dc89e18602', 124, '90', 2, 1, 92627, 1456806193, 1456806193, 0, 0, '56d5193174a1a', 31),
(131, 5, 'thumbnails/92/1024-683-max.png', '9b5543e62c9da102646e40b1493fbfda', 128, '1024-683-max.png', 8, 3, 79994, 1456806192, 1456806192, 0, 0, 'd477d915ebaa6763eb19f824790fb324', 27),
(132, 5, 'thumbnails/91/1024-768-max.png', 'ec958566ea4d6f14adeb3cd2ace3bc87', 129, '1024-768-max.png', 8, 3, 73058, 1456806192, 1456806192, 0, 0, '2094b4cb662db695f4d9bc105c4b6193', 27),
(133, 5, 'thumbnails/90/1024-683-max.png', '3c25b1028878878bbf3097a195783e02', 130, '1024-683-max.png', 8, 3, 91662, 1456806192, 1456806192, 0, 0, 'c742742028c612eed9c6ed7470296c40', 27),
(134, 5, 'thumbnails/92/32-32.png', '6a7f2d86d1296150510d8a85f9eb54e3', 128, '32-32.png', 8, 3, 923, 1456806193, 1456806193, 0, 0, '659eb1c2de3312d1dca4ea510c1f653d', 27),
(135, 5, 'thumbnails/91/32-32.png', 'ec02355855163756ca89b921959691a4', 129, '32-32.png', 8, 3, 986, 1456806193, 1456806193, 0, 0, '513ea49c50a87c7dc46e40500cf619b6', 27),
(136, 5, 'thumbnails/90/32-32.png', '3fdb752f0d73d16a19bf0de1892afcd1', 130, '32-32.png', 8, 3, 965, 1456806193, 1456806193, 0, 0, '62b747ef203069765d0eead0c542463a', 27),
(137, 3, 'thumbnails/90/32-32.png', '3fdb752f0d73d16a19bf0de1892afcd1', 102, '32-32.png', 8, 3, 958, 1456806374, 1456806374, 0, 0, '986a57f93d20cc47bcfdda273f7b10d5', 27),
(138, 3, 'thumbnails/92/32-32.png', '6a7f2d86d1296150510d8a85f9eb54e3', 104, '32-32.png', 8, 3, 924, 1456806374, 1456806374, 0, 0, '19ee8ffcefda96355809e0c5f40da643', 27),
(139, 3, 'thumbnails/91/32-32.png', 'ec02355855163756ca89b921959691a4', 107, '32-32.png', 8, 3, 991, 1456806374, 1456806374, 0, 0, '4c433c7bf5815a31d687c724849c56b6', 27),
(140, 3, 'files/Photos/订单.doc', '715f91f24a38f147136529de9135b402', 89, '订单.doc', 16, 5, 28672, 1456806399, 1456806399, 0, 0, '4a7bf5bb3e872eb1d8872d62f027f4ba', 27),
(141, 5, 'files/ex20101222505.jpg', '50c9f1d2e38d148d7528fbb814a27479', 116, 'ex20101222505.jpg', 4, 3, 87450, 1456806670, 1456806670, 0, 0, '74810b0aad35202dc77e20e0c952a36b', 27),
(142, 5, 'thumbnails/141', 'b8b527854eba2a1073aa16e96f26f1e5', 124, '141', 2, 1, 22245, 1456806671, 1456806671, 0, 0, '56d51b0f7074a', 31),
(143, 5, 'thumbnails/141/300-448-max.png', '80b259607285dcbeb7bb66943309ac5b', 142, '300-448-max.png', 8, 3, 21160, 1456806671, 1456806671, 0, 0, '1647c2b74f904e22e732eeeb703b0b88', 27),
(144, 5, 'thumbnails/141/32-32.png', '43559b38dc4ec1b653c2b26f24288bf3', 142, '32-32.png', 8, 3, 1085, 1456806671, 1456806671, 0, 0, '2944b561be50c3bc13a2c9d9cd5cf29e', 27),
(145, 5, 'thumbnails/51/537-361-with-aspect-cover.png', 'ac7b32f1a4c1149da3fa67236315fcc8', 125, '537-361-with-aspect-cover.png', 8, 3, 14663, 1456819216, 1456819216, 0, 0, '9deffcaea5257a315ee17ff75bf2e1c1', 27),
(146, 5, 'thumbnails/51/2000-1344-with-aspect.png', '56ed34cde3a3c7dc6226ef69c820d55c', 125, '2000-1344-with-aspect.png', 8, 3, 104767, 1456819219, 1456819219, 0, 0, 'c2b45e1c6dcc6d1b130f42be6a43edd9', 27);

-- --------------------------------------------------------

--
-- 表的结构 `oc_files_trash`
--

CREATE TABLE IF NOT EXISTS `oc_files_trash` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(250) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timestamp` varchar(12) COLLATE utf8_bin NOT NULL DEFAULT '',
  `location` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`auto_id`),
  KEY `id_index` (`id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `user_index` (`user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_files_trash`
--

INSERT INTO `oc_files_trash` (`auto_id`, `id`, `user`, `timestamp`, `location`, `type`, `mime`) VALUES
(1, '1.jpg', 'root', '1456802790', '.', NULL, NULL),
(2, '1.jpg', 'root', '1456802839', '.', NULL, NULL),
(3, '李贞贤劲暴现场-阿里阿里&换掉.1280x720.mp4', 'root', '1456804097', '.', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `oc_file_locks`
--

CREATE TABLE IF NOT EXISTS `oc_file_locks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lock` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) COLLATE utf8_bin NOT NULL,
  `ttl` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lock_key_index` (`key`),
  KEY `lock_ttl_index` (`ttl`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=78 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_file_map`
--

CREATE TABLE IF NOT EXISTS `oc_file_map` (
  `logic_path` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `logic_path_hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `physic_path` varchar(512) COLLATE utf8_bin NOT NULL DEFAULT '',
  `physic_path_hash` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`logic_path_hash`),
  UNIQUE KEY `file_map_pp_index` (`physic_path_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `oc_groups`
--

CREATE TABLE IF NOT EXISTS `oc_groups` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_groups`
--

INSERT INTO `oc_groups` (`gid`) VALUES
('admin'),
('人事行政部'),
('品牌部'),
('市场部'),
('服务部'),
('电商部');

-- --------------------------------------------------------

--
-- 表的结构 `oc_group_admin`
--

CREATE TABLE IF NOT EXISTS `oc_group_admin` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `group_admin_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_group_admin`
--

INSERT INTO `oc_group_admin` (`gid`, `uid`) VALUES
('电商部', 'ison');

-- --------------------------------------------------------

--
-- 表的结构 `oc_group_user`
--

CREATE TABLE IF NOT EXISTS `oc_group_user` (
  `gid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `gu_uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_group_user`
--

INSERT INTO `oc_group_user` (`gid`, `uid`) VALUES
('电商部', 'ison'),
('电商部', 'luo'),
('admin', 'root');

-- --------------------------------------------------------

--
-- 表的结构 `oc_jobs`
--

CREATE TABLE IF NOT EXISTS `oc_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `argument` varchar(4000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `job_class_index` (`class`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `oc_jobs`
--

INSERT INTO `oc_jobs` (`id`, `class`, `argument`, `last_run`) VALUES
(1, 'OCA\\Files_Versions\\BackgroundJob\\ExpireVersions', 'null', 1456819201),
(2, 'OCA\\Files_sharing\\Lib\\DeleteOrphanedSharesJob', 'null', 1456819261),
(3, 'OCA\\Files_Trashbin\\BackgroundJob\\ExpireTrash', 'null', 1456812354),
(4, 'OCA\\Activity\\BackgroundJob\\EmailNotification', 'null', 1456813279),
(5, 'OCA\\Activity\\BackgroundJob\\ExpireActivities', 'null', 1456801693);

-- --------------------------------------------------------

--
-- 表的结构 `oc_mimetypes`
--

CREATE TABLE IF NOT EXISTS `oc_mimetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mimetype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mimetype_id_index` (`mimetype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `oc_mimetypes`
--

INSERT INTO `oc_mimetypes` (`id`, `mimetype`) VALUES
(5, 'application'),
(16, 'application/msword'),
(11, 'application/octet-stream'),
(7, 'application/pdf'),
(6, 'application/vnd.oasis.opendocument.text'),
(1, 'httpd'),
(2, 'httpd/unix-directory'),
(3, 'image'),
(4, 'image/jpeg'),
(8, 'image/png'),
(14, 'video'),
(15, 'video/mp4');

-- --------------------------------------------------------

--
-- 表的结构 `oc_notifications`
--

CREATE TABLE IF NOT EXISTS `oc_notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(32) COLLATE utf8_bin NOT NULL,
  `user` varchar(64) COLLATE utf8_bin NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `object_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(64) COLLATE utf8_bin NOT NULL,
  `subject_parameters` longtext COLLATE utf8_bin,
  `message` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `message_parameters` longtext COLLATE utf8_bin,
  `link` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `icon` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `actions` longtext COLLATE utf8_bin,
  PRIMARY KEY (`notification_id`),
  KEY `oc_notifications_app` (`app`),
  KEY `oc_notifications_user` (`user`),
  KEY `oc_notifications_timestamp` (`timestamp`),
  KEY `oc_notifications_object` (`object_type`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_preferences`
--

CREATE TABLE IF NOT EXISTS `oc_preferences` (
  `userid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `appid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8_bin,
  PRIMARY KEY (`userid`,`appid`,`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_preferences`
--

INSERT INTO `oc_preferences` (`userid`, `appid`, `configkey`, `configvalue`) VALUES
('ison', 'core', 'lang', 'zh_CN'),
('ison', 'core', 'timezone', 'Asia/Shanghai'),
('ison', 'files_sharing', 'last_propagate', '1456805212.238'),
('ison', 'firstrunwizard', 'show', '0'),
('ison', 'login', 'lastLogin', '1456805133'),
('luo', 'core', 'lang', 'zh_CN'),
('luo', 'core', 'timezone', 'Asia/Shanghai'),
('luo', 'files_sharing', 'last_propagate', '1456806402.7215'),
('luo', 'firstrunwizard', 'show', '0'),
('luo', 'login', 'lastLogin', '1456806085'),
('root', 'core', 'lang', 'zh_CN'),
('root', 'core', 'timezone', 'Asia/Shanghai'),
('root', 'firstrunwizard', 'show', '0'),
('root', 'login', 'lastLogin', '1456804072');

-- --------------------------------------------------------

--
-- 表的结构 `oc_privatedata`
--

CREATE TABLE IF NOT EXISTS `oc_privatedata` (
  `keyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `app` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `key` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`keyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_properties`
--

CREATE TABLE IF NOT EXISTS `oc_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertypath` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertyname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `propertyvalue` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_index` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_share`
--

CREATE TABLE IF NOT EXISTS `oc_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `share_type` smallint(6) NOT NULL DEFAULT '0',
  `share_with` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `uid_owner` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent` int(11) DEFAULT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_source` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `item_target` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `file_source` int(11) DEFAULT NULL,
  `file_target` varchar(512) COLLATE utf8_bin DEFAULT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT '0',
  `stime` bigint(20) NOT NULL DEFAULT '0',
  `accepted` smallint(6) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `mail_send` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `item_share_type_index` (`item_type`,`share_type`),
  KEY `file_source_index` (`file_source`),
  KEY `token_index` (`token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `oc_share`
--

INSERT INTO `oc_share` (`id`, `share_type`, `share_with`, `uid_owner`, `parent`, `item_type`, `item_source`, `item_target`, `file_source`, `file_target`, `permissions`, `stime`, `accepted`, `expiration`, `token`, `mail_send`) VALUES
(1, 1, '电商部', 'root', NULL, 'file', '51', '/51', 51, '/1.jpg', 17, 1456805196, 0, NULL, NULL, 0),
(2, 1, '服务部', 'ison', 1, 'file', '51', '/51', 51, '/1.jpg', 17, 1456805233, 0, NULL, NULL, 0),
(7, 2, 'ison', 'root', 1, 'file', '51', '/51', 51, '/1.jpg', 0, 1456805196, 0, NULL, NULL, 0),
(9, 1, '电商部', 'ison', NULL, 'file', '95', '/95', 95, '/ownCloud_User_Manual.pdf', 19, 1456806133, 0, NULL, NULL, 0),
(10, 2, 'luo', 'ison', 9, 'file', '95', '/95', 95, '/ownCloud_User_Manual (2).pdf', 19, 1456806133, 0, NULL, NULL, 0),
(11, 1, '电商部', 'ison', NULL, 'folder', '89', '/89', 89, '/Photos', 17, 1456806176, 0, NULL, NULL, 0),
(12, 2, 'luo', 'ison', 11, 'folder', '89', '/89', 89, '/Photos (2)', 17, 1456806176, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_share_external`
--

CREATE TABLE IF NOT EXISTS `oc_share_external` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remote` varchar(512) COLLATE utf8_bin NOT NULL COMMENT 'Url of the remove owncloud instance',
  `remote_id` int(11) NOT NULL DEFAULT '-1',
  `share_token` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Public share token',
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'Optional password for the public share',
  `name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Original name on the remote server',
  `owner` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'User that owns the public share on the remote server',
  `user` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'Local user which added the external share',
  `mountpoint` varchar(4000) COLLATE utf8_bin NOT NULL COMMENT 'Full path where the share is mounted',
  `mountpoint_hash` varchar(32) COLLATE utf8_bin NOT NULL COMMENT 'md5 hash of the mountpoint',
  `accepted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`),
  KEY `sh_external_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_storages`
--

CREATE TABLE IF NOT EXISTS `oc_storages` (
  `id` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `numeric_id` int(11) NOT NULL AUTO_INCREMENT,
  `available` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`numeric_id`),
  UNIQUE KEY `storages_id_index` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `oc_storages`
--

INSERT INTO `oc_storages` (`id`, `numeric_id`, `available`, `last_checked`) VALUES
('home::root', 1, 1, NULL),
('local::E:/Site/file.placentin.com/site/data/', 2, 1, NULL),
('home::ison', 3, 1, NULL),
('shared::/1.jpg', 4, 1, NULL),
('home::luo', 5, 1, NULL),
('shared::/ownCloud_User_Manual (2).pdf', 6, 1, NULL),
('shared::/Photos (2)', 7, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `oc_users`
--

CREATE TABLE IF NOT EXISTS `oc_users` (
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `displayname` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `oc_users`
--

INSERT INTO `oc_users` (`uid`, `displayname`, `password`) VALUES
('ison', NULL, '1|$2y$10$HplwNPSZP/MtOXMkta4T0u5yZlv.fZe1qIoAyudH/RphwLII8JRiu'),
('luo', NULL, '1|$2y$10$V/.skbmETrTJMcXPnGnLV.liMRDEkcC0ih6QMCIFXe04xmvXUieRq'),
('root', NULL, '1|$2y$10$KBo1g7qxq8Wt1gAPa0IaMOaMOYALXy1Q1e6hD/Nu3BtcUFzcSTS2C');

-- --------------------------------------------------------

--
-- 表的结构 `oc_vcategory`
--

CREATE TABLE IF NOT EXISTS `oc_vcategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`),
  KEY `type_index` (`type`),
  KEY `category_index` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_vcategory_to_object`
--

CREATE TABLE IF NOT EXISTS `oc_vcategory_to_object` (
  `objid` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`,`objid`,`type`),
  KEY `vcategory_objectd_index` (`objid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
