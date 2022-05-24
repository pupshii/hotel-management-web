-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 06:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poonveh`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add hotel', 7, 'add_hotel'),
(26, 'Can change hotel', 7, 'change_hotel'),
(27, 'Can delete hotel', 7, 'delete_hotel'),
(28, 'Can view hotel', 7, 'view_hotel'),
(29, 'Can add member', 8, 'add_member'),
(30, 'Can change member', 8, 'change_member'),
(31, 'Can delete member', 8, 'delete_member'),
(32, 'Can view member', 8, 'view_member'),
(33, 'Can add news', 9, 'add_news'),
(34, 'Can change news', 9, 'change_news'),
(35, 'Can delete news', 9, 'delete_news'),
(36, 'Can view news', 9, 'view_news'),
(37, 'Can add payment', 10, 'add_payment'),
(38, 'Can change payment', 10, 'change_payment'),
(39, 'Can delete payment', 10, 'delete_payment'),
(40, 'Can view payment', 10, 'view_payment'),
(41, 'Can add promotion', 11, 'add_promotion'),
(42, 'Can change promotion', 11, 'change_promotion'),
(43, 'Can delete promotion', 11, 'delete_promotion'),
(44, 'Can view promotion', 11, 'view_promotion'),
(45, 'Can add room', 12, 'add_room'),
(46, 'Can change room', 12, 'change_room'),
(47, 'Can delete room', 12, 'delete_room'),
(48, 'Can view room', 12, 'view_room'),
(49, 'Can add room type', 13, 'add_roomtype'),
(50, 'Can change room type', 13, 'change_roomtype'),
(51, 'Can delete room type', 13, 'delete_roomtype'),
(52, 'Can view room type', 13, 'view_roomtype'),
(53, 'Can add transaction', 14, 'add_transaction'),
(54, 'Can change transaction', 14, 'change_transaction'),
(55, 'Can delete transaction', 14, 'delete_transaction'),
(56, 'Can view transaction', 14, 'view_transaction'),
(57, 'Can add staff', 15, 'add_staff'),
(58, 'Can change staff', 15, 'change_staff'),
(59, 'Can delete staff', 15, 'delete_staff'),
(60, 'Can view staff', 15, 'view_staff'),
(61, 'Can add get news', 16, 'add_getnews'),
(62, 'Can change get news', 16, 'change_getnews'),
(63, 'Can delete get news', 16, 'delete_getnews'),
(64, 'Can view get news', 16, 'view_getnews');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'Somchai_356', NULL, 0, 'Somchai', 'Somchai', 'Jaidee', 'somchai.cve@gmail.com', 0, 1, '0000-00-00 00:00:00.000000'),
(2, 'som_rak96', NULL, 0, 'Somrak', 'Somrak', 'Jaikaere', '', 0, 1, '0000-00-00 00:00:00.000000'),
(3, 'sssp_44', NULL, 0, 'SompM', 'Sompong', 'Monkol', 'ssssompong.44@gmail.com', 0, 1, '0000-00-00 00:00:00.000000'),
(4, 'iloveyou3000', NULL, 0, 'CuicuitGOAT', 'Sanan', 'Saraburi', '', 1, 1, '0000-00-00 00:00:00.000000'),
(5, 'pPup_1125', NULL, 0, 'PoonPupVeh', 'Poonyavee', 'Wongwisetsuk', 'pup.lnw.zaaa@gmail.co.th', 0, 1, '0000-00-00 00:00:00.000000'),
(6, 'PP_789', NULL, 0, 'Phor.TWS', 'Phoramin', 'Taweeros', 'phor.tr.gmm@gmail.com', 0, 1, '0000-00-00 00:00:00.000000'),
(7, 'like_133', NULL, 0, 'kSam3', 'Kantawat', 'Samarntrakulchai', 'map.lov_thailand@gmail.com', 0, 1, '0000-00-00 00:00:00.000000'),
(8, 'CPEbig_452', NULL, 0, 'PaniS', 'Panithi', 'Suwanno', 'so_big.cpe@gmail.com', 0, 1, '0000-00-00 00:00:00.000000'),
(9, 'ManJe685', NULL, 0, 'sernny', 'Manutsawin', 'Jeamsaksiri', 'www.sern.io@gmail.com', 0, 1, '0000-00-00 00:00:00.000000'),
(10, 'someweedeverdayeveryweekeverytime', NULL, 0, 'snoopcat', 'Snoop', 'Cat', 'snoopcat@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(11, '1234', NULL, 0, 'thewrok', 'The', 'Wok', 'thewrok@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(12, '1234', NULL, 0, 'leonmusk', 'Yi Long', 'Musk', 'leonmusk@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(13, '1234', NULL, 0, 'putting', 'Pu', 'Ting', 'putting@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(14, '1234', NULL, 0, 'dnrho', 'Di Nhi', 'Rho', 'dnrho@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(15, '1234', NULL, 0, 'yuanyidieph', 'Yuan Yi', 'Dieph', 'yuanyidieph@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(16, '1234', NULL, 0, 'ZhelYed', 'Yin di', 'Zhel', 'zhelyed@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(17, '1234', NULL, 0, 'BradPitth', 'Bhra Di', 'Pitth', 'bradpitth@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(18, 'proteinaddict', NULL, 0, 'Chad', 'Gigga', 'Chad', 'chad@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(19, 'SocialcreditLover4', NULL, 0, 'JCN', 'Zhong', 'Xina', 'jcn@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(20, '1234', NULL, 0, 'Pw.Music', 'Praewa', 'Music', 'pw.music@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(21, '1234', NULL, 0, 'Kakiri', 'Kazuto', 'Kirigaya', 'kakiri@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(22, '1234', NULL, 0, 'KuMaKi', 'Kurisu', 'Makise', 'kumaki@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(23, '1234', NULL, 0, 'UchinaNaruto', 'Itachi', 'Uchiha', 'uchinanaruto@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(24, '1234', NULL, 0, 'Solddick', 'Killua', 'Zoldyck', 'solddick@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(25, '1234', NULL, 0, 'Hokage2020', 'Uzmaki', 'Naruto', 'hokage2020@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(26, '1234', NULL, 0, 'EE6021023', 'Edward', 'Elric', 'ee6021023@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(27, '1234', NULL, 0, 'FooFigther', 'Kenshin', 'Himura', 'foofigther@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(28, '1234', NULL, 0, 'sHinJi', 'Ikari', 'Shinji', 'shinji@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(29, '1234', NULL, 0, 'Asuka888', 'Asuka', 'Langley-Soryu', 'asuka888@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(30, '1234', NULL, 0, 'ritsugi', 'Ritsuko ', 'Akagi', 'ritsugi@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(31, '1234', NULL, 0, 'AOC15', 'Alex', 'Oxlade-Chamberlain', 'aoc15@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(32, '1234', NULL, 0, 'gEndo', 'Gendo', 'Ikari', 'gendo@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(33, '1234', NULL, 0, 'Jbham', 'Jude', 'Bellingham', 'jbham@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(34, '1234', NULL, 0, 'PMalone', 'Pre', 'Malone', 'pmalone@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(35, '1234', NULL, 0, 'AyanamiRei', 'Rei', 'Ayanami', 'ayanamirei@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(36, 'winner1234', NULL, 0, 'RoSS', 'Ronnie', 'O\'sullivan', 'ross@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(37, '1234', NULL, 0, 'E869120', 'Masataka', 'Yoneda', 'e869120@mail.pv.com', 1, 1, '0000-00-00 00:00:00.000000'),
(38, 'loveyoutoo3000', NULL, 0, 'Sun-of-Anarchy', 'Alexsandre', 'Saraburi', 'circuitanarchy@mail.cpe.com', 1, 1, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(16, 'HotelApp', 'getnews'),
(7, 'HotelApp', 'hotel'),
(8, 'HotelApp', 'member'),
(9, 'HotelApp', 'news'),
(10, 'HotelApp', 'payment'),
(11, 'HotelApp', 'promotion'),
(12, 'HotelApp', 'room'),
(13, 'HotelApp', 'roomtype'),
(15, 'HotelApp', 'staff'),
(14, 'HotelApp', 'transaction'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-13 06:22:57.260592'),
(2, 'auth', '0001_initial', '2022-05-13 06:22:58.170783'),
(3, 'HotelApp', '0001_initial', '2022-05-13 06:22:59.235901'),
(4, 'admin', '0001_initial', '2022-05-13 06:22:59.395903'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-05-13 06:22:59.410899'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-13 06:22:59.424899'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-05-13 06:22:59.504816'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-05-13 06:22:59.692170'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-05-13 06:22:59.724234'),
(10, 'auth', '0004_alter_user_username_opts', '2022-05-13 06:22:59.742095'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-05-13 06:22:59.795409'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-05-13 06:22:59.801451'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-05-13 06:22:59.814452'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-05-13 06:22:59.838406'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-05-13 06:22:59.862163'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-05-13 06:22:59.896162'),
(17, 'auth', '0011_update_proxy_permissions', '2022-05-13 06:22:59.917075'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-05-13 06:22:59.940212'),
(19, 'sessions', '0001_initial', '2022-05-13 06:23:00.020425');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `getnews`
--

CREATE TABLE `getnews` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `news_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `getnews`
--

INSERT INTO `getnews` (`id`, `member_id`, `news_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 4),
(4, 4, 3),
(5, 5, 1),
(6, 6, 3),
(7, 7, 2),
(8, 8, 2),
(9, 9, 1),
(10, 10, 2),
(11, 11, 3),
(12, 12, 4),
(13, 13, 4),
(14, 14, 2),
(15, 15, 1),
(16, 16, 2),
(17, 17, 3),
(18, 18, 4),
(19, 19, 3),
(20, 20, 3),
(21, 21, 1),
(22, 22, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` bigint(20) NOT NULL,
  `Hotel_Name` varchar(50) NOT NULL,
  `Hotel_Address` longtext NOT NULL,
  `Hotel_Detail` longtext NOT NULL,
  `Hotel_Pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `Hotel_Name`, `Hotel_Address`, `Hotel_Detail`, `Hotel_Pic`) VALUES
(1, 'The Poonveh Bangkok', '125/56 Charoen Nakhon Rd, Khlong Ton Sai, Khlong San, Bangkok 10600', '', ''),
(2, 'The Poonveh Phuket', '97/8 Ko Kaeo, Mueang Phuket District, Phuket 83000', '', ''),
(3, 'The Poonveh Chiang Mai', '75/9 Chiang Mai, Mueang Chiang Mai District, Chiang Mai 50300', '', ''),
(4, 'The Poonveh Pattaya', '78-459 Pattaya City, Bang Lamung District, Chon Buri 20170', '', ''),
(5, 'The Poonveh Kon Kaen', '99-99 Prachasumran Road Nai Muang, Khon Kaen 40000', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` bigint(20) NOT NULL,
  `Member_NIC` varchar(25) DEFAULT NULL,
  `Member_Tel` varchar(25) DEFAULT NULL,
  `Member_Point` int(11) NOT NULL,
  `Member_Address` longtext DEFAULT NULL,
  `Member_Pic` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `Member_NIC`, `Member_Tel`, `Member_Point`, `Member_Address`, `Member_Pic`, `user_id`) VALUES
(1, '1208921518356', '062-7539546', 100, '312 Rama II Rd, Bang Mot, Chom Thong, Bangkok 10150', '', 1),
(2, '1300901516876', '086-9536542', 200, '123 Bang Bua Thong, Bang Bua Thong District, Nonthaburi 11110', '', 2),
(3, '1212546985367', '087-4521478', 300, '3892 Sap Sombun, Khok Pho Chai District, Khon Kaen 40160', '', 3),
(4, '1236969696969', '099-5556969', 400, '411 Thung Life Village, Pa La Mor Distict, Saraburi, 18000', '', 4),
(5, '1285399901125', '062-9561245', 500, '88/9, Bang Pit, Laem Ngop District, Trat 23120', '', 5),
(6, '1400201316958', '084-8529652', 400, '85/76, Nong Phlap, Hua Hin District, Prachuap Khiri Khan 77110', '', 6),
(7, '1500010203586', '085-7521685', 300, '900/1 Moo 4 Sangarun, Huay yang, Thap Sakae, Prachuap Khiri Khan 77130', '', 7),
(8, '1100523698452', '083-3455265', 200, '96/231, Ban Bueng, Ban Kha District, Ratchaburi 70180', '', 8),
(9, '1206859431285', '097-8524956', 100, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 9),
(10, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 10),
(11, '1206859431285', '097-8524956', 150, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 11),
(12, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 12),
(13, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 13),
(14, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 14),
(15, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 15),
(16, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 16),
(17, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 17),
(18, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 18),
(19, '1206859431285', '097-8524956', 4545, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 19),
(20, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 20),
(21, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 21),
(22, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 22),
(23, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 23),
(24, '1206859431285', '', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 24),
(25, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 25),
(26, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 26),
(27, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 27),
(28, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 28),
(29, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 29),
(30, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 30),
(31, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 31),
(32, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 32),
(33, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 33),
(34, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 34),
(35, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 35),
(36, '1206859431285', '097-8524956', 0, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 36),
(37, '1206859431285', '097-8524956', 600, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 37),
(38, '1206859431285', '097-8524956', 1900, '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '', 38);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL,
  `News_Name` varchar(50) NOT NULL,
  `News_Detail` longtext NOT NULL,
  `News_Pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `News_Name`, `News_Detail`, `News_Pic`) VALUES
(1, 'Super sales spa', '90 minutes of Tonic Massage ( THB 1,299 From THB 2,800 net )', ''),
(2, 'Free breakfast', 'Free 180THB in breakfast on 20/03/2570', ''),
(3, 'Free night drink', 'Free night drink 3 piece in list except alcohol.', ''),
(4, 'Premium swim', 'Private swimming pool in price 1000THB From 3000THB per night', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `Promotion_Id` int(11) NOT NULL,
  `Payment_Date` datetime(6) NOT NULL,
  `Payment_Allprice` int(11) NOT NULL,
  `Payment_Vat10` int(11) NOT NULL,
  `Payment_Banking` varchar(20) NOT NULL,
  `Payment_Slip` varchar(100) NOT NULL,
  `Payment_Status` tinyint(1) NOT NULL,
  `Payment_Confirm` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `Promotion_Id`, `Payment_Date`, `Payment_Allprice`, `Payment_Vat10`, `Payment_Banking`, `Payment_Slip`, `Payment_Status`, `Payment_Confirm`) VALUES
(1, 1, '2023-03-19 18:50:00.000000', 125400, 11400, 'KTB', '', 1, '2023-03-19 18:50:00.000000'),
(2, 1, '2023-03-20 15:30:31.000000', 26125, 2375, 'GSB', '', 0, NULL),
(3, 1, '2023-03-20 09:12:25.000000', 125400, 11400, 'SCB', '', 0, NULL),
(4, 1, '2023-03-20 11:15:29.000000', 41800, 3800, 'KBank', '', 0, NULL),
(5, 1, '2023-03-22 18:45:27.000000', 31350, 2850, 'BBL', '', 0, NULL),
(6, 1, '2023-03-23 09:30:12.000000', 36575, 3325, 'KTB', '', 0, NULL),
(7, 1, '2023-03-23 10:11:12.000000', 26125, 2375, 'KTB', '', 0, NULL),
(8, 1, '2023-03-24 08:15:39.000000', 26125, 2375, 'BBL', '', 0, NULL),
(9, 1, '2023-03-25 12:00:02.000000', 62700, 5700, 'GSB', '', 0, NULL),
(10, 2, '2023-04-10 15:52:10.000000', 118800, 10800, 'KTB', '', 0, NULL),
(11, 3, '2023-05-17 16:01:04.000000', 59400, 5400, 'BBL', '', 0, NULL),
(12, 4, '2023-06-12 08:32:55.000000', 112200, 10200, 'KTB', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` bigint(20) NOT NULL,
  `Promotion_Name` varchar(50) NOT NULL,
  `Promotion_Detail` longtext NOT NULL,
  `Promotion_Discount` double NOT NULL,
  `Promotion_Start` datetime(6) NOT NULL,
  `Promotion_End` datetime(6) NOT NULL,
  `Promotion_Pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `Promotion_Name`, `Promotion_Detail`, `Promotion_Discount`, `Promotion_Start`, `Promotion_End`, `Promotion_Pic`) VALUES
(1, 'Occasional offers', 'Occasional Offer. For everyone who like to celebrate special moments in a special way. Our sweets in an elegant, minimalist setting as an effective gift.', 0.05, '2023-03-01 00:00:00.000000', '2023-03-31 23:59:59.000000', ''),
(2, 'Pandemic offers', 'To help hotels meet these new traveller demands, PoonVeh recently introduced a new feature, Pandemic offers, so hotels can offer value-added benefits such as F&B credits and experiences with their rooms on PoonVeh’s platform and reach its customers.', 0.1, '2023-04-01 00:00:00.000000', '2023-04-30 23:59:59.000000', ''),
(3, 'Summer festival', 'Celebrated another milestone season full of incredible sales, Summer offers. Stay tuned for more live entertainment, and amazing deals at the PoonVeh.', 0.1, '2023-05-01 00:00:00.000000', '2023-05-31 23:59:59.000000', ''),
(4, 'Special for you', 'A limited-time offer is any kind of discount, deal, special gift, or reward a buyer can get if they make a purchase from you during a certain time period.', 0.15, '2023-06-01 00:00:00.000000', '2023-06-30 23:59:59.000000', '');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` bigint(20) NOT NULL,
  `Room_Number` varchar(20) NOT NULL,
  `Room_Status` tinyint(1) NOT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `roomtype_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `Room_Number`, `Room_Status`, `hotel_id`, `roomtype_id`) VALUES
(1, '101', 1, 1, 1),
(2, '103', 1, 1, 2),
(3, '207', 1, 2, 3),
(4, '404', 1, 4, 6),
(5, '505', 1, 5, 4),
(6, '306', 1, 4, 5),
(7, '107', 1, 1, 6),
(8, '405', 1, 4, 2),
(9, '208', 1, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `roomtype`
--

CREATE TABLE `roomtype` (
  `id` bigint(20) NOT NULL,
  `Type_Name` varchar(50) NOT NULL,
  `Type_Pernight` int(11) NOT NULL,
  `Type_Capacity` smallint(5) UNSIGNED NOT NULL CHECK (`Type_Capacity` >= 0),
  `Type_Detail` longtext NOT NULL,
  `Type_Pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomtype`
--

INSERT INTO `roomtype` (`id`, `Type_Name`, `Type_Pernight`, `Type_Capacity`, `Type_Detail`, `Type_Pic`) VALUES
(1, 'Royal Suit', 80000, 5, 'richly decorated, Include all facility ,butler', ''),
(2, 'Villa', 40000, 8, 'huge space inside and outside as well as garden, Include swimming pool and fitness', ''),
(3, 'Terrace Suit', 35000, 6, 'large outdoor terrace with garden furniture, while offering spacious luxury interior as well.', ''),
(4, 'Executive Suite', 30000, 4, 'medium size, and luxury interior very quiet suit for meeting and work ', ''),
(5, 'Deluxe Suite', 25000, 5, 'suit for small family, large communal pool and public fitness', ''),
(6, 'Junior Suite', 20000, 2, 'suit for 1 to 2 person, medium size, modern interior ', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) NOT NULL,
  `Staff_Position` varchar(10) NOT NULL,
  `Staff_Start` date NOT NULL,
  `Staff_Level` smallint(5) UNSIGNED NOT NULL CHECK (`Staff_Level` >= 0),
  `Staff_Status` tinyint(1) NOT NULL,
  `hotel_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `Staff_Position`, `Staff_Start`, `Staff_Level`, `Staff_Status`, `hotel_id`, `member_id`) VALUES
(1, 'Manager', '2020-05-01', 3, 0, 1, 4),
(2, 'Cleaner', '2017-05-01', 1, 1, 1, 10),
(3, 'Staff', '2014-12-02', 1, 1, 1, 11),
(4, 'Staff', '2016-03-20', 3, 1, 1, 12),
(5, 'Manager', '2015-09-17', 1, 1, 1, 13),
(6, 'Staff', '2021-02-23', 3, 1, 1, 14),
(7, 'Cleaner', '2019-05-22', 2, 1, 1, 15),
(8, 'Cleaner', '2021-05-03', 2, 1, 1, 16),
(9, 'Staff', '2017-03-14', 3, 1, 2, 17),
(10, 'Cleaner', '2021-03-20', 1, 1, 2, 18),
(11, 'Staff', '2018-03-20', 1, 1, 2, 19),
(12, 'Manager', '2014-03-22', 2, 1, 2, 20),
(13, 'Staff', '2019-03-11', 1, 1, 3, 21),
(14, 'Staff', '2014-04-19', 3, 1, 3, 22),
(15, 'Manager', '2015-08-20', 2, 1, 3, 23),
(16, 'Cleaner', '2020-04-01', 3, 1, 3, 24),
(17, 'Cleaner', '2018-05-17', 1, 1, 3, 25),
(18, 'Cleaner', '2018-12-04', 2, 1, 4, 26),
(19, 'Manager', '2012-07-19', 1, 1, 4, 27),
(20, 'Cleaner', '2017-05-12', 1, 1, 4, 28),
(21, 'Staff', '2017-03-18', 1, 1, 4, 29),
(22, 'Staff', '2017-01-09', 2, 1, 4, 30),
(23, 'Cleaner', '2017-03-17', 1, 1, 5, 31),
(24, 'Manager', '2016-11-28', 1, 1, 5, 32),
(25, 'Staff', '2017-01-19', 1, 1, 5, 33),
(26, 'Staff', '2017-03-08', 3, 1, 5, 34),
(27, 'Cleaner', '2019-02-11', 3, 1, 5, 35),
(28, 'Cleaner', '2019-02-11', 3, 1, 2, 36),
(29, 'Manager', '2019-02-11', 3, 0, 1, 37),
(30, 'Cleaner', '2019-02-11', 3, 1, 5, 38);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `Transaction_Checkin` datetime(6) NOT NULL,
  `Transaction_Checkout` datetime(6) NOT NULL,
  `Transaction_Detail` longtext NOT NULL,
  `Transaction_Rating` smallint(5) UNSIGNED DEFAULT NULL CHECK (`Transaction_Rating` >= 0),
  `Transaction_Comment` longtext DEFAULT NULL,
  `Transaction_Night` int(11) NOT NULL,
  `Transaction_Price` int(11) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `room_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `Transaction_Checkin`, `Transaction_Checkout`, `Transaction_Detail`, `Transaction_Rating`, `Transaction_Comment`, `Transaction_Night`, `Transaction_Price`, `member_id`, `payment_id`, `room_id`) VALUES
(1, '2023-03-20 07:00:00.000000', '2023-03-21 12:00:00.000000', 'Reserved', 5, 'Very friendly staff, good location and a free boat service to the main pier', 1, 80000, 1, 1, 1),
(2, '2023-03-20 07:00:00.000000', '2023-03-21 12:00:00.000000', 'Reserved', NULL, NULL, 1, 40000, 1, 1, 2),
(3, '2023-03-20 12:00:00.000000', '2023-03-20 11:45:22.000000', 'Reserved', 4, 'Great place to recharge your exhausting day!', 1, 25000, 2, 2, 6),
(4, '2023-03-21 18:31:25.000000', '2023-03-23 06:00:12.000000', 'Reserved', 4, 'The room was very nice, the staff very friendly and helpful, and the food fantastic.', 2, 40000, 3, 3, 4),
(5, '2023-03-21 18:31:25.000000', '2023-03-23 06:00:12.000000', 'Reserved', NULL, NULL, 2, 80000, 3, 3, 8),
(6, '2023-03-20 18:00:12.000000', '2023-03-21 11:31:10.000000', 'Reserved', 4, 'Excellent food and river proximity give a wonderful experience of Bangkok.', 1, 40000, 4, 4, 2),
(7, '2023-03-23 12:17:07.000000', '2023-03-24 09:15:07.000000', 'Reserved', 5, 'Amazing place, rooms, riverside views, service and food', 1, 30000, 5, 5, 5),
(8, '2023-03-23 12:40:28.000000', '2023-03-24 12:40:28.000000', 'Reserved', 4, 'Very convenience location. ', 1, 35000, 6, 6, 3),
(9, '2023-03-23 12:40:28.000000', '2023-03-24 12:40:28.000000', 'Reserved', NULL, NULL, 1, 25000, 6, 7, 9),
(10, '2023-03-24 12:01:37.000000', '2023-03-25 09:05:35.000000', 'Reserved', 3, 'Very good tasty foods little bit high price', 1, 25000, 7, 8, 6),
(11, '2023-03-25 15:15:37.000000', '2023-03-26 08:10:32.000000', 'Reserved', 5, 'Great hotel that is very well managed and where the staff make you feel welcome.', 1, 20000, 8, 9, 4),
(12, '2023-03-25 15:15:37.000000', '2023-03-26 08:10:32.000000', 'Reserved', NULL, NULL, 1, 40000, 8, 9, 8),
(13, '2023-04-11 10:57:12.000000', '2023-04-14 12:25:57.000000', 'Reserved', 4, 'Nice hotel and good location in river view. ', 3, 120000, 1, 10, 2),
(14, '2023-05-18 12:01:04.000000', '2023-05-20 12:01:04.000000', 'Reserved', 5, 'Had an amazing stay in this hotel. The food was delicious, staff absolutely amazing and friendly. The hotel was very clean and beautiful.', 2, 60000, 5, 11, 5),
(15, '2023-06-12 14:45:22.000000', '2023-06-14 12:32:04.000000', 'Reserved', 3, 'reservation get wrong info and also gave us wrong detail, but finally staff here provided us private room , some food items are pretty well', 2, 70000, 6, 12, 3),
(16, '2023-06-12 14:45:22.000000', '2023-06-14 12:32:04.000000', 'Reserved', NULL, NULL, 2, 50000, 6, 12, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `getnews`
--
ALTER TABLE `getnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `getnews_member_id_6c20974c_fk_member_id` (`member_id`),
  ADD KEY `getnews_news_id_d4c572d2_fk_news_id` (`news_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_roomtype_id_9b1dde32_fk_roomtype_id` (`roomtype_id`),
  ADD KEY `room_hotel_id_9bc4d861_fk_hotel_id` (`hotel_id`);

--
-- Indexes for table `roomtype`
--
ALTER TABLE `roomtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `member_id` (`member_id`),
  ADD KEY `staff_hotel_id_fca5c726_fk_hotel_id` (`hotel_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_member_id_457ccc92_fk_member_id` (`member_id`),
  ADD KEY `transaction_payment_id_4734dcf7_fk_payment_id` (`payment_id`),
  ADD KEY `transaction_room_id_a913e28f_fk_room_id` (`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `getnews`
--
ALTER TABLE `getnews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roomtype`
--
ALTER TABLE `roomtype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `getnews`
--
ALTER TABLE `getnews`
  ADD CONSTRAINT `getnews_member_id_6c20974c_fk_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `getnews_news_id_d4c572d2_fk_news_id` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_user_id_4d954c77_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_hotel_id_9bc4d861_fk_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`),
  ADD CONSTRAINT `room_roomtype_id_9b1dde32_fk_roomtype_id` FOREIGN KEY (`roomtype_id`) REFERENCES `roomtype` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_hotel_id_fca5c726_fk_hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`),
  ADD CONSTRAINT `staff_member_id_1717025a_fk_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_member_id_457ccc92_fk_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  ADD CONSTRAINT `transaction_payment_id_4734dcf7_fk_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `transaction_room_id_a913e28f_fk_room_id` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
