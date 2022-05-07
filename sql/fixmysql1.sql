-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2022 at 01:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpe231_mysql`
--

-- --------------------------------------------------------

--
-- Table structure for table `allbook`
--

CREATE TABLE `allbook` (
  `id` int(11) NOT NULL,
  `Room_id` int(11) NOT NULL,
  `Transaction_id` int(11) NOT NULL,
  `Book_Night` smallint(6) NOT NULL,
  `Book_Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allbook`
--

INSERT INTO `allbook` (`id`, `Room_id`, `Transaction_id`, `Book_Night`, `Book_Price`) VALUES
(1, 1, 1, 1, 80000),
(2, 2, 2, 1, 40000),
(3, 6, 3, 1, 25000),
(4, 4, 4, 2, 40000),
(5, 8, 5, 2, 80000),
(6, 2, 6, 1, 40000),
(7, 5, 7, 1, 30000),
(8, 3, 8, 1, 35000),
(9, 9, 9, 1, 25000),
(10, 6, 10, 1, 25000),
(11, 4, 11, 1, 20000),
(12, 8, 12, 1, 40000),
(13, 2, 13, 3, 120000),
(14, 5, 14, 2, 60000),
(15, 3, 15, 2, 70000),
(16, 9, 16, 2, 50000);

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

-- --------------------------------------------------------

--
-- Table structure for table `getnews`
--

CREATE TABLE `getnews` (
  `id` int(11) NOT NULL,
  `Member_id` int(11) NOT NULL,
  `News_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `getnews`
--

INSERT INTO `getnews` (`id`, `Member_id`, `News_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 4, 3),
(4, 6, 4),
(5, 1, 5),
(6, 3, 6),
(7, 6, 7),
(8, 7, 8),
(9, 8, 9),
(10, 2, 10),
(11, 3, 11),
(12, 5, 12),
(13, 6, 13),
(14, 7, 14),
(15, 8, 15),
(16, 2, 16),
(17, 3, 17),
(18, 4, 18),
(19, 6, 19),
(20, 7, 20),
(21, 5, 21),
(22, 6, 22);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `Hotel_Name` varchar(50) NOT NULL,
  `Hotel_Address` text NOT NULL,
  `Hotel_Detail` text DEFAULT NULL,
  `Hotel_Pic` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `Hotel_Name`, `Hotel_Address`, `Hotel_Detail`, `Hotel_Pic`) VALUES
(1, 'The Poonveh Bangkok', '125/56 Charoen Nakhon Rd, Khlong Ton Sai, Khlong San, Bangkok 10600', NULL, NULL),
(2, 'The Poonveh Phuket', '97/8 Ko Kaeo, Mueang Phuket District, Phuket 83000', NULL, NULL),
(3, 'The Poonveh Chiang Mai', '75/9 Chiang Mai, Mueang Chiang Mai District, Chiang Mai 50300', NULL, NULL),
(4, 'The Poonveh Pattaya', '78-459 Pattaya City, Bang Lamung District, Chon Buri 20170', NULL, NULL),
(5, 'The Poonveh Kon Kaen', '99-99 Prachasumran Road Nai Muang, Khon Kaen 40000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `Member_fName` varchar(100) NOT NULL,
  `Member_lName` varchar(100) NOT NULL,
  `Member_Email` varchar(100) NOT NULL,
  `Member_Username` varchar(100) NOT NULL,
  `Member_Password` varchar(100) NOT NULL,
  `Member_NIC` varchar(25) NOT NULL,
  `Member_Address` text NOT NULL,
  `Member_Tel` int(25) NOT NULL,
  `Member_Pic` int(11) DEFAULT NULL,
  `Member_Point` int(11) NOT NULL DEFAULT 0,
  `Staff_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `Member_fName`, `Member_lName`, `Member_Email`, `Member_Username`, `Member_Password`, `Member_NIC`, `Member_Address`, `Member_Tel`, `Member_Pic`, `Member_Point`, `Staff_id`) VALUES
(1, 'Somchai', 'Jaidee', 'somchai.cve@gmail.com', 'Somchai', 'Somchai_356', '1208920000000', '312 Rama II Rd, Bang Mot, Chom Thong, Bangkok 10150', 62, NULL, 100, NULL),
(2, 'Somrak', 'Jaikaere', 'som.rak96@gmail.com', 'Somrak', 'som_rak96', '1300900000000', '123 Bang Bua Thong, Bang Bua Thong District, Nonthaburi 11110', 86, NULL, 200, NULL),
(3, 'Sompong', 'Monkol', 'ssssompong.44@gmail.com', 'SompM', 'sssp_44', '1212550000000', '3892 Sap Sombun, Khok Pho Chai District, Khon Kaen 40160', 87, NULL, 300, NULL),
(4, 'Sanan', 'Saraburi', 'kingofcurcuit@sanook.com', 'CuicuitGOAT', 'iloveyou3000', '1236969696969', '411 Thung Life Village, Pa La Mor Distict, Saraburi, 18000', 99, NULL, 400, 1),
(5, 'Poonyavee', 'Wongwisetsuk', 'pup.lnw.zaaa@gmail.co.th', 'PoonPupVeh', 'pPup_1125', '1285400000000', '88/9, Bang Pit, Laem Ngop District, Trat 23120', 62, NULL, 500, NULL),
(6, 'Phoramin', 'Taweeros', 'phor.tr.gmm@gmail.com', 'Phor.TWS', 'PP_789', '1400200000000', '85/76, Nong Phlap, Hua Hin District, Prachuap Khiri Khan 77110', 84, NULL, 400, NULL),
(7, 'Kantawat', 'Samarntrakulchai', 'map.lov_thailand@gmail.com', 'kSam3', 'like_133', '1500010000000', '900/1 Moo 4 Sangarun, Huay yang, Thap Sakae, Prachuap Khiri Khan 77130', 85, NULL, 300, NULL),
(8, 'Panithi', 'Suwanno', 'so_big.cpe@gmail.com', 'PaniS', 'CPEbig_452', '1100520000000', '96/231, Ban Bueng, Ban Kha District, Ratchaburi 70180', 83, NULL, 200, NULL),
(9, 'Manutsawin', 'Jeamsaksiri', 'www.sern.io@gmail.com', 'sernny', 'ManJe685', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 100, NULL),
(10, 'Snoop', 'Cat', 'snoopcat@mail.pv.com', 'snoopcat', 'someweedeverdayeveryweekeverytime', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 2),
(11, 'The', 'Wok', 'thewrok@mail.pv.com', 'thewrok', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 150, 3),
(12, 'Yi Long', 'Musk', 'leonmusk@mail.pv.com', 'leonmusk', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 4),
(13, 'Pu', 'Ting', 'putting@mail.pv.com', 'putting', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 5),
(14, 'Di Nhi', 'Rho', 'dnrho@mail.pv.com', 'dnrho', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 6),
(15, 'Yuan Yi', 'Dieph', 'yuanyidieph@mail.pv.com', 'yuanyidieph', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 7),
(16, 'Yin di', 'Zhel', 'zhelyed@mail.pv.com', 'ZhelYed', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 8),
(17, 'Bhra Di', 'Pitth', 'bradpitth@mail.pv.com', 'BradPitth', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 9),
(18, 'Gigga', 'Chad', 'chad@mail.pv.com', 'Chad', 'proteinaddict', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 10),
(19, 'Zhong', 'Xina', 'jcn@mail.pv.com', 'JCN', 'SocialcreditLover4', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 4545, 11),
(20, 'Praewa', 'Music', 'pw.music@mail.pv.com', 'Pw.Music', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 12),
(21, 'Kazuto', 'Kirigaya', 'kakiri@mail.pv.com', 'Kakiri', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 13),
(22, 'Kurisu', 'Makise', 'kumaki@mail.pv.com', 'KuMaKi', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 14),
(23, 'Itachi', 'Uchiha', 'uchinanaruto@mail.pv.com', 'UchinaNaruto', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 15),
(24, 'Killua', 'Zoldyck', 'solddick@mail.pv.com', 'Solddick', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 16),
(25, 'Uzmaki', 'Naruto', 'hokage2020@mail.pv.com', 'Hokage2020', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 17),
(26, 'Edward', 'Elric', 'ee6021023@mail.pv.com', 'EE6021023', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 18),
(27, 'Kenshin', 'Himura', 'foofigther@mail.pv.com', 'FooFigther', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 19),
(28, 'Ikari', 'Shinji', 'shinji@mail.pv.com', 'sHinJi', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 20),
(29, 'Asuka', 'Langley-Soryu', 'asuka888@mail.pv.com', 'Asuka888', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 21),
(30, 'Ritsuko', 'Akagi', 'ritsugi@mail.pv.com', 'ritsugi', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 22),
(31, 'Alex', 'Oxlade-Chamberlain', 'aoc15@mail.pv.com', 'AOC15', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 23),
(32, 'Gendo', 'Ikari', 'gendo@mail.pv.com', 'gEndo', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 24),
(33, 'Jude', 'Bellingham', 'jbham@mail.pv.com', 'Jbham', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 25),
(34, 'Pre', 'Malone', 'pmalone@mail.pv.com', 'PMalone', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 26),
(35, 'Rei', 'Ayanami', 'ayanamirei@mail.pv.com', 'AyanamiRei', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 27),
(36, 'Ronnie', 'O\'sullivan', 'ross@mail.pv.com', 'RoSS', 'winner1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 0, 28),
(37, 'Masataka', 'Yoneda', 'e869120@mail.pv.com', 'E869120', '1234', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 600, 29),
(38, 'Alexsandre', 'Saraburi', 'circuitanarchy@mail.cpe.com', 'Sun-of-Anarchy', 'loveyoutoo3000', '1206860000000', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', 97, NULL, 1900, 30);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `News_Name` varchar(50) NOT NULL,
  `News_Detail` text NOT NULL,
  `News_Pic` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `News_Name`, `News_Detail`, `News_Pic`) VALUES
(1, 'Super sales spa', '90 minutes Tonic Massage ( THB 1,299 From THB 2,800 net )', NULL),
(2, 'Super sales spa', '120 minutes Tonic Massage ( THB 1,499 From THB 3,600 net )', NULL),
(3, 'Super sales spa', '120 minutes Tonic Massage ( THB 1,499 From THB 3,600 net )', NULL),
(4, 'Super sales spa', '90 minutes Tonic Massage ( THB 1,299 From THB 2,800 net )', NULL),
(5, 'Free breakfast', 'Free 120THB in breakfast on 20/03/2570', NULL),
(6, 'Free breakfast', 'Free 200THB in breakfast on 20/03/2570', NULL),
(7, 'Free breakfast', 'Free 180THB in breakfast on 20/03/2570', NULL),
(8, 'Free breakfast', 'Free 120THB in breakfast on 20/03/2570', NULL),
(9, 'Free breakfast', 'Free 120THB in breakfast on 20/03/2570', NULL),
(10, 'Special karaoke', 'Use karaoke room in price 150THB from 300THB', NULL),
(11, 'Special karaoke', 'Use karaoke room in price 100THB from 300THB', NULL),
(12, 'Special karaoke', 'Use karaoke room in price 100THB from 300THB', NULL),
(13, 'Special karaoke', 'Use karaoke room in price 150THB from 300THB', NULL),
(14, 'Special karaoke', 'Use karaoke room in price 100THB from 300THB', NULL),
(15, 'Special karaoke', 'Use karaoke room in price 100THB from 300THB', NULL),
(16, 'Free night drink', 'Free night drink 3 piece in list except alcohol.', NULL),
(17, 'Free night drink', 'Free night drink 5 piece in list except alcohol.', NULL),
(18, 'Free night drink', 'Free night drink 3 piece in list except alcohol.', NULL),
(19, 'Free night drink', 'Free night drink 5 piece in list except alcohol.', NULL),
(20, 'Free night drink', 'Free night drink 3 piece in list except alcohol.', NULL),
(21, 'Premium swim', 'Private swimming pool in price 1000THB From 3000THB per night', NULL),
(22, 'Premium swim', 'Private swimming pool in price 1000THB From 3000THB per night', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `Promotion_id` int(11) NOT NULL,
  `Payment_Date` datetime NOT NULL,
  `Payment_Allprice` int(11) NOT NULL,
  `Payment_Vat10` int(11) NOT NULL,
  `Payment_Banking` varchar(20) NOT NULL,
  `Payment_Slip` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `Promotion_id`, `Payment_Date`, `Payment_Allprice`, `Payment_Vat10`, `Payment_Banking`, `Payment_Slip`) VALUES
(1, 1, '2023-03-19 18:50:00', 125400, 11400, 'KTB', NULL),
(2, 1, '2023-03-20 15:30:31', 26125, 2375, 'GSB', NULL),
(3, 1, '2023-03-20 09:12:25', 125400, 11400, 'SCB', NULL),
(4, 1, '2023-03-20 11:15:29', 41800, 3800, 'KBank', NULL),
(5, 1, '2023-03-22 18:45:27', 31350, 2850, 'BBL', NULL),
(6, 1, '2023-03-23 09:30:12', 36575, 3325, 'KTB', NULL),
(7, 1, '2023-03-23 10:11:12', 26125, 2375, 'KTB', NULL),
(8, 1, '2023-03-24 08:15:39', 26125, 2375, 'BBL', NULL),
(9, 1, '2023-03-25 12:00:02', 62700, 5700, 'GSB', NULL),
(10, 2, '2023-04-10 15:52:10', 118800, 10800, 'KTB', NULL),
(11, 3, '2023-05-17 16:01:04', 59400, 5400, 'BBL', NULL),
(12, 4, '2023-06-12 08:32:55', 112200, 10200, 'KTB', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `Promotion_Discount` float NOT NULL,
  `Promotion_Start` datetime NOT NULL,
  `Promotion_End` datetime NOT NULL,
  `Promotion_Name` varchar(50) NOT NULL,
  `Promotion_Detail` text NOT NULL,
  `Promotion_Pic` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `Promotion_Discount`, `Promotion_Start`, `Promotion_End`, `Promotion_Name`, `Promotion_Detail`, `Promotion_Pic`) VALUES
(1, 0.05, '2023-03-01 00:00:00', '2023-03-31 23:59:59', 'Occasional offers', 'Occasional Offer. For everyone who like to celebrate special moments in a special way. Our sweets in an elegant, minimalist setting as an effective gift.', NULL),
(2, 0.1, '2023-04-01 00:00:00', '2023-04-30 23:59:59', 'Pandemic offers', 'To help hotels meet these new traveller demands, PoonVeh recently introduced a new feature, Pandemic offers, so hotels can offer value-added benefits such as F&B credits and experiences with their rooms on PoonVeh’s platform and reach its customers.', NULL),
(3, 0.1, '2023-05-01 00:00:00', '2023-05-31 23:59:59', 'Summer festival', 'Celebrated another milestone season full of incredible sales, Summer offers. Stay tuned for more live entertainment, and amazing deals at the PoonVeh.', NULL),
(4, 0.15, '2023-06-01 00:00:00', '2023-06-30 23:59:59', 'Special for you', 'A limited-time offer is any kind of discount, deal, special gift, or reward a buyer can get if they make a purchase from you during a certain time period.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `Hotel_id` int(11) NOT NULL,
  `Type_id` int(11) NOT NULL,
  `Room_Number` varchar(20) NOT NULL,
  `Room_Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `Hotel_id`, `Type_id`, `Room_Number`, `Room_Status`) VALUES
(1, 1, 1, '101', 1),
(2, 1, 2, '103', 1),
(3, 2, 3, '207', 1),
(4, 4, 6, '404', 1),
(5, 5, 4, '505', 1),
(6, 4, 5, '306', 1),
(7, 1, 6, '107', 1),
(8, 4, 2, '405', 1),
(9, 2, 5, '208', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roomtype`
--

CREATE TABLE `roomtype` (
  `id` int(11) NOT NULL,
  `Type_Name` varchar(50) NOT NULL,
  `Type_Pernight` int(11) NOT NULL,
  `Type_Capacity` tinyint(4) NOT NULL DEFAULT 1,
  `Type_Detail` text NOT NULL,
  `Type_Pic` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomtype`
--

INSERT INTO `roomtype` (`id`, `Type_Name`, `Type_Pernight`, `Type_Capacity`, `Type_Detail`, `Type_Pic`) VALUES
(1, 'Royal Suit', 80000, 5, 'richly decorated, Include all facility ,butler', NULL),
(2, 'Villa', 40000, 8, 'huge space inside and outside as well as garden, Include swimming pool and fitness', NULL),
(3, 'Terrace Suit', 35000, 6, 'large outdoor terrace with garden furniture, while offering spacious luxury interior as well.', NULL),
(4, 'Executive Suite', 30000, 4, 'medium size, and luxury interior very quiet suit for meeting and work', NULL),
(5, 'Deluxe Suite', 25000, 5, 'suit for small family, large communal pool and public fitness', NULL),
(6, 'Junior Suite', 20000, 2, 'suit for 1 to 2 person, medium size, modern interior', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `Member_id` int(11) NOT NULL,
  `Hotel_id` int(11) NOT NULL,
  `Staff_Position` varchar(50) NOT NULL,
  `Staff_Start` date NOT NULL DEFAULT current_timestamp(),
  `Staff_End` date DEFAULT NULL,
  `Staff_Level` tinyint(4) NOT NULL DEFAULT 1,
  `Staff_Status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `Member_id`, `Hotel_id`, `Staff_Position`, `Staff_Start`, `Staff_End`, `Staff_Level`, `Staff_Status`) VALUES
(1, 4, 1, 'Manaber', '2020-05-01', '2021-01-15', 3, 0),
(2, 10, 1, 'Cleaner', '2017-05-01', NULL, 1, 1),
(3, 11, 1, 'Staff', '2014-12-02', NULL, 1, 1),
(4, 12, 1, 'Staff', '2016-03-20', NULL, 3, 1),
(5, 13, 1, 'Manager', '2015-09-17', NULL, 1, 1),
(6, 14, 1, 'Staff', '2021-02-23', NULL, 3, 1),
(7, 15, 1, 'Cleaner', '2019-05-22', NULL, 2, 1),
(8, 16, 1, 'Cleaner', '2021-05-03', NULL, 2, 1),
(9, 17, 2, 'Staff', '2017-03-14', NULL, 3, 1),
(10, 18, 2, 'Cleaner', '2021-03-20', NULL, 1, 1),
(11, 19, 2, 'Staff', '2018-03-20', NULL, 1, 1),
(12, 20, 2, 'Manager', '2014-03-22', NULL, 2, 1),
(13, 21, 3, 'Staff', '2019-03-11', NULL, 1, 1),
(14, 22, 3, 'Staff', '2014-04-19', NULL, 3, 1),
(15, 23, 3, 'Manager', '2015-08-20', NULL, 2, 1),
(16, 24, 3, 'Cleaner', '2020-04-01', NULL, 3, 1),
(17, 25, 3, 'Cleaner', '2018-05-17', NULL, 1, 1),
(18, 26, 4, 'Cleaner', '2018-12-04', NULL, 2, 1),
(19, 27, 4, 'Manager', '2012-07-19', NULL, 1, 1),
(20, 28, 4, 'Cleaner', '2017-05-12', NULL, 1, 1),
(21, 29, 4, 'Staff', '2017-03-18', NULL, 1, 1),
(22, 30, 4, 'Staff', '2017-01-09', NULL, 2, 1),
(23, 31, 5, 'Cleaner', '2017-03-17', NULL, 1, 1),
(24, 32, 5, 'Manager', '2016-11-28', NULL, 1, 1),
(25, 33, 5, 'Staff', '2017-01-19', NULL, 1, 1),
(26, 34, 5, 'Staff', '2017-03-08', NULL, 3, 1),
(27, 35, 5, 'Cleaner', '2019-02-11', NULL, 3, 1),
(28, 36, 2, 'Cleaner', '2019-02-11', NULL, 3, 1),
(29, 37, 1, 'Manager', '2019-02-11', '2020-02-12', 3, 0),
(30, 38, 5, 'Cleaner', '2019-02-11', NULL, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `Member_id` int(11) NOT NULL,
  `Payment_id` int(11) NOT NULL,
  `Transaction_Checkin` datetime NOT NULL,
  `Transacton_Checkout` datetime NOT NULL,
  `Transaction_Date` datetime NOT NULL,
  `Transaction_Detail` text NOT NULL DEFAULT 'Reserved',
  `Transaction_Comment` text DEFAULT NULL,
  `Transaction_Rating` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `Member_id`, `Payment_id`, `Transaction_Checkin`, `Transacton_Checkout`, `Transaction_Date`, `Transaction_Detail`, `Transaction_Comment`, `Transaction_Rating`) VALUES
(1, 1, 1, '2023-03-20 07:00:00', '2023-03-21 12:00:00', '2023-03-19 18:50:01', 'Reserved', 'Very friendly staff, good location and a free boat service to the main pier', 5),
(2, 1, 1, '2023-03-20 07:00:00', '2023-03-21 12:00:00', '2023-03-19 18:50:01', 'Reserved', NULL, NULL),
(3, 2, 2, '2023-03-20 12:00:00', '2023-03-20 11:45:22', '2023-03-20 15:30:32', 'Reserved', 'Great place to recharge your exhausting day!', 4),
(4, 3, 3, '2023-03-21 18:31:25', '2023-03-23 06:00:12', '2023-03-20 09:12:26', 'Reserved', 'The room was very nice, the staff very friendly and helpful, and the food fantastic.', 4),
(5, 3, 3, '2023-03-21 18:31:25', '2023-03-23 06:00:12', '2023-03-20 09:12:26', 'Reserved', NULL, NULL),
(6, 4, 4, '2023-03-20 18:00:12', '2023-03-21 11:31:10', '2023-03-20 11:15:30', 'Reserved', 'Excellent food and river proximity give a wonderful experience of Bangkok.', 4),
(7, 5, 5, '2023-03-23 12:17:07', '2023-03-24 09:15:07', '2023-03-22 18:45:28', 'Reserved', 'Amazing place, rooms, riverside views, service and food', 5),
(8, 6, 6, '2023-03-23 12:40:28', '2023-03-24 12:40:28', '2023-03-23 09:30:13', 'Reserved', 'Very convenience location.', 4),
(9, 6, 7, '2023-03-23 12:40:28', '2023-03-24 12:40:28', '2023-03-23 10:11:13', 'Reserved', NULL, NULL),
(10, 7, 8, '2023-03-24 12:01:37', '2023-03-25 09:05:35', '2023-03-24 08:15:40', 'Reserved', 'Very good tasty foods little bit high price', 3),
(11, 8, 9, '2023-03-25 15:15:37', '2023-03-26 08:10:32', '2023-03-25 12:00:03', 'Reserved', 'Great hotel that is very well managed and where the staff make you feel welcome.', 5),
(12, 8, 9, '2023-03-25 15:15:37', '2023-03-26 08:10:32', '2023-03-25 12:00:03', 'Reserved', NULL, NULL),
(13, 1, 10, '2023-04-11 10:57:12', '2023-04-14 12:25:57', '2023-04-10 15:52:09', 'Reserved', 'Nice hotel and good location in river view.', 4),
(14, 5, 11, '2023-05-18 12:01:04', '2023-05-20 12:01:04', '2023-05-17 16:02:04', 'Reserved', 'Had an amazing stay in this hotel. The food was delicious, staff absolutely amazing and friendly. The hotel was very clean and beautiful.', 5),
(15, 6, 12, '2023-06-12 14:45:22', '2023-06-14 12:32:04', '2023-06-12 08:32:56', 'Reserved', 'reservation get wrong info and also gave us wrong detail, but finally staff here provided us private room , some food items are pretty well', 3),
(16, 6, 12, '2023-06-12 14:45:22', '2023-06-14 12:32:04', '2023-06-12 08:32:56', 'Reserved', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allbook`
--
ALTER TABLE `allbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `getnews`
--
ALTER TABLE `getnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomtype`
--
ALTER TABLE `roomtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allbook`
--
ALTER TABLE `allbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `getnews`
--
ALTER TABLE `getnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roomtype`
--
ALTER TABLE `roomtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
