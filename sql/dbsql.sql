-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2022 at 11:40 AM
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
-- Database: `tempqewr`
--

-- --------------------------------------------------------

--
-- Table structure for table `allbook`
--

CREATE TABLE `allbook` (
  `id` int(11) NOT NULL,
  `Book_Id` varchar(12) NOT NULL,
  `Room_Id` varchar(12) NOT NULL,
  `Book_Night` int(11) NOT NULL,
  `Book_Price` int(11) NOT NULL,
  `Transaction_Id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allbook`
--

INSERT INTO `allbook` (`id`, `Book_Id`, `Room_Id`, `Book_Night`, `Book_Price`, `Transaction_Id`) VALUES
(1, 'B000001', 'RO00001', 1, 80000, 'T0000001'),
(2, 'B000002', 'RO00002', 1, 40000, 'T0000002'),
(3, 'B000003', 'RO00006', 1, 25000, 'T0000003'),
(4, 'B000004', 'RO00004', 2, 40000, 'T0000004'),
(5, 'B000005', 'RO00008', 2, 80000, 'T0000005'),
(6, 'B000006', 'RO00002', 1, 40000, 'T0000006'),
(7, 'B000007', 'RO00005', 1, 30000, 'T0000007'),
(8, 'B000008', 'RO00003', 1, 35000, 'T0000008'),
(9, 'B000009', 'RO00009', 1, 25000, 'T0000009'),
(10, 'B000010', 'RO00006', 1, 25000, 'T0000010'),
(11, 'B000011', 'RO00004', 1, 20000, 'T0000011'),
(12, 'B000012', 'RO00008', 1, 40000, 'T0000012'),
(13, 'B000013', 'RO00002', 3, 120000, 'T0000013'),
(14, 'B000014', 'RO00005', 2, 60000, 'T0000014'),
(15, 'B000015', 'RO00003', 2, 70000, 'T0000015'),
(16, 'B000016', 'RO00009', 2, 50000, 'T0000016');

-- --------------------------------------------------------

--
-- Table structure for table `getnews`
--

CREATE TABLE `getnews` (
  `id` int(11) NOT NULL,
  `GetNews_Id` varchar(12) NOT NULL,
  `Member_Id` varchar(12) NOT NULL,
  `News_Id` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `getnews`
--

INSERT INTO `getnews` (`id`, `GetNews_Id`, `Member_Id`, `News_Id`) VALUES
(1, 'GN00000001', 'M00000001', 'N000001'),
(2, 'GN00000002', 'M00000002', 'N000002'),
(3, 'GN00000003', 'M00000004', 'N000003'),
(4, 'GN00000004', 'M00000006', 'N000004'),
(5, 'GN00000005', 'M00000001', 'N000005'),
(6, 'GN00000006', 'M00000003', 'N000006'),
(7, 'GN00000007', 'M00000006', 'N000007'),
(8, 'GN00000008', 'M00000007', 'N000008'),
(9, 'GN00000009', 'M00000008', 'N000009'),
(10, 'GN00000010', 'M00000002', 'N000010'),
(11, 'GN00000011', 'M00000003', 'N000011'),
(12, 'GN00000012', 'M00000005', 'N000012'),
(13, 'GN00000013', 'M00000006', 'N000013'),
(14, 'GN00000014', 'M00000007', 'N000014'),
(15, 'GN00000015', 'M00000008', 'N000015'),
(16, 'GN00000016', 'M00000001', 'N000016'),
(17, 'GN00000017', 'M00000003', 'N000017'),
(18, 'GN00000018', 'M00000004', 'N000018'),
(19, 'GN00000019', 'M00000006', 'N000019'),
(20, 'GN00000020', 'M00000007', 'N000020'),
(21, 'GN00000021', 'M00000005', 'N000021'),
(22, 'GN00000022', 'M00000006', 'N000022');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `Hotel_Id` varchar(12) NOT NULL,
  `Hotel_Name` varchar(50) NOT NULL,
  `Hotel_Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `Hotel_Id`, `Hotel_Name`, `Hotel_Address`) VALUES
(1, 'H01', 'The Poonveh Bangkok', '125/56 Charoen Nakhon Rd, Khlong Ton Sai, Khlong San, Bangkok 10600'),
(2, 'H02', 'The Poonveh Phuket', '97/8 Ko Kaeo, Mueang Phuket District, Phuket 83000'),
(3, 'H03', 'The Poonveh Chiang Mai', '75/9 Chiang Mai, Mueang Chiang Mai District, Chiang Mai 50300'),
(4, 'H04', 'The Poonveh Pattaya', '78-459 Pattaya City, Bang Lamung District, Chon Buri 20170'),
(5, 'H05', 'The Poonveh Kon Kaen', '99-99 Prachasumran Road Nai Muang, Khon Kaen 40000');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `Member_Id` varchar(12) NOT NULL,
  `fName` varchar(50) NOT NULL,
  `lName` varchar(50) NOT NULL,
  `IDCard_Number` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` text NOT NULL,
  `Tel` varchar(50) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `Member_Id`, `fName`, `lName`, `IDCard_Number`, `Email`, `Address`, `Tel`, `UserName`, `Password`) VALUES
(1, 'M00000001', 'Somchai', 'Jaidee', '1208920000000', 'somchai.cve@gmail.com', '312 Rama II Rd, Bang Mot, Chom Thong, Bangkok 10150', '062-7539546', 'Somchai', 'Somchai_356'),
(2, 'M00000002', 'Somsak', 'Jaimaidee', '1300900000000', 'som.sakk_24@gmail.com', '123 Bang Bua Thong, Bang Bua Thong District, Nonthaburi 11110', '086-9536542', 'Somsak', 'som_Sak.24'),
(3, 'M00000003', 'Sompong', 'Monkol', '1212550000000', 'ssssompong.44@gmail.com', '3892 Sap Sombun, Khok Pho Chai District, Khon Kaen 40160', '087-4521478', 'Somp.m', 'sss.p_44'),
(4, 'M00000004', 'Poonyavee', 'Wongwisetsuk', '1285400000000', 'pup.lnw.zaaa@gmail.co.th', '88/9, Bang Pit, Laem Ngop District, Trat 23120', '062-9561245', 'Poon.pup', 'pPup_1125'),
(5, 'M00000005', 'Phoramin', 'Taweeros', '1400200000000', 'phor.tr.gmm@gmail.com', '85/76, Nong Phlap, Hua Hin District, Prachuap Khiri Khan 77110', '084-8529652', 'Phor.TWS', 'PP_789'),
(6, 'M00000006', 'Kantawat', 'Samarntrakulchai', '1500010000000', 'map.lov_thailand@gmail.com', '900/1 Moo 4 Sangarun, Huay yang, Thap Sakae, Prachuap Khiri Khan 77130', '085-7521685', 'Kan.Sam', 'love_150'),
(7, 'M00000007', 'Panithi', 'Suwanno', '1100520000000', 'so_big.cpe@gmail.com', '96/231, Ban Bueng, Ban Kha District, Ratchaburi 70180', '083-3455265', 'PaniS', 'CPE.big_452'),
(8, 'M00000008', 'Manutsawin', 'Jeamsaksiri', '1206860000000', 'www.sern.io@gmail.com', '745/9 Nong Ya Soi 5 Ban Wanglan, Nong Ya, Mueang Kanchanaburi District, Kanchanaburi 71000', '097-8524956', 'Sernny', 'ManJe_685');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `News_Id` varchar(12) NOT NULL,
  `News_Name` varchar(50) NOT NULL,
  `News_Detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `News_Id`, `News_Name`, `News_Detail`) VALUES
(1, 'N000001', 'Super sales spa', '90 minutes Tonic Massage ( THB 1,299 From THB 2,800 net )'),
(2, 'N000002', 'Super sales spa', '120 minutes Tonic Massage ( THB 1,499 From THB 3,600 net )'),
(3, 'N000003', 'Super sales spa', '120 minutes Tonic Massage ( THB 1,499 From THB 3,600 net )'),
(4, 'N000004', 'Super sales spa', '90 minutes Tonic Massage ( THB 1,299 From THB 2,800 net )'),
(5, 'N000005', 'Free breakfast', 'Free 120THB in breakfast on 20/03/2570'),
(6, 'N000006', 'Free breakfast', 'Free 200THB in breakfast on 20/03/2570'),
(7, 'N000007', 'Free breakfast', 'Free 180THB in breakfast on 20/03/2570'),
(8, 'N000008', 'Free breakfast', 'Free 120THB in breakfast on 20/03/2570'),
(9, 'N000009', 'Free breakfast', 'Free 120THB in breakfast on 20/03/2570'),
(10, 'N000010', 'Special karaoke', 'Use karaoke room in price 150THB from 300THB'),
(11, 'N000011', 'Special karaoke', 'Use karaoke room in price 100THB from 300THB'),
(12, 'N000012', 'Special karaoke', 'Use karaoke room in price 100THB from 300THB'),
(13, 'N000013', 'Special karaoke', 'Use karaoke room in price 150THB from 300THB'),
(14, 'N000014', 'Special karaoke', 'Use karaoke room in price 100THB from 300THB'),
(15, 'N000015', 'Special karaoke', 'Use karaoke room in price 100THB from 300THB'),
(16, 'N000016', 'Free night drink', 'Free night drink 3 piece in list except alcohol.'),
(17, 'N000017', 'Free night drink', 'Free night drink 5 piece in list except alcohol.'),
(18, 'N000018', 'Free night drink', 'Free night drink 3 piece in list except alcohol.'),
(19, 'N000019', 'Free night drink', 'Free night drink 5 piece in list except alcohol.'),
(20, 'N000020', 'Free night drink', 'Free night drink 3 piece in list except alcohol.'),
(21, 'N000021', 'Premium swim', 'Private swimming pool in price 1000THB From 3000THB per night'),
(22, 'N000022', 'Premium swim', 'Private swimming pool in price 1000THB From 3000THB per night');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `Payment_Id` varchar(12) NOT NULL,
  `Promotion_Id` varchar(12) NOT NULL,
  `Pay_Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `All_Price` int(11) NOT NULL,
  `Vat10` int(11) NOT NULL,
  `Banking` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `Payment_Id`, `Promotion_Id`, `Pay_Date`, `All_Price`, `Vat10`, `Banking`) VALUES
(1, 'PAY000001', 'PRO00001', '2023-03-19 11:50:00', 125400, 11400, 'KTB'),
(2, 'PAY000002', 'PRO00001', '2023-03-20 08:30:31', 26125, 2375, 'GSB'),
(3, 'PAY000003', 'PRO00001', '2023-03-20 02:12:25', 125400, 11400, 'SCB'),
(4, 'PAY000004', 'PRO00001', '2023-03-20 04:15:29', 41800, 3800, 'KBank'),
(5, 'PAY000005', 'PRO00001', '2023-03-22 11:45:27', 31350, 2850, 'BBL'),
(6, 'PAY000006', 'PRO00001', '2023-03-23 02:30:12', 36575, 3325, 'KTB'),
(7, 'PAY000007', 'PRO00001', '2023-03-23 03:11:12', 26125, 2375, 'KTB'),
(8, 'PAY000008', 'PRO00001', '2023-03-24 01:15:39', 26125, 2375, 'BBL'),
(9, 'PAY000009', 'PRO00001', '2023-03-25 05:00:02', 62700, 5700, 'GSB'),
(10, 'PAY000010', 'PRO00002', '2023-04-10 08:52:10', 118800, 10800, 'KTB'),
(11, 'PAY000011', 'PRO00003', '2023-05-17 09:01:04', 59400, 5400, 'BBL'),
(12, 'PAY000012', 'PRO00004', '2023-06-12 01:32:55', 112200, 10200, 'KTB');

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `Promotion_Id` varchar(12) NOT NULL,
  `Percent_Sales` float NOT NULL,
  `Start_PromDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `End_PromDate` timestamp NULL DEFAULT NULL,
  `Sales_Detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `Promotion_Id`, `Percent_Sales`, `Start_PromDate`, `End_PromDate`, `Sales_Detail`) VALUES
(1, 'PRO00001', 0.05, '2022-04-23 15:11:00', '2023-03-31 16:59:59', 'Occasional offers'),
(2, 'PRO00002', 0.1, '2022-04-23 15:11:07', '2023-04-30 16:59:59', 'Pandemic offers'),
(3, 'PRO00003', 0.1, '2022-04-23 15:11:15', '2023-05-31 16:59:59', 'Summer festival'),
(4, 'PRO00004', 0.15, '2022-04-23 15:11:20', '2023-06-30 16:59:59', 'Special for you');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `Room_Id` varchar(12) NOT NULL,
  `Hotel_Id` varchar(12) NOT NULL,
  `Room_Number` varchar(12) NOT NULL,
  `Type_Id` varchar(12) NOT NULL,
  `Available_Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `Room_Id`, `Hotel_Id`, `Room_Number`, `Type_Id`, `Available_Status`) VALUES
(1, 'RO00001', 'H01', '101', 'TY01', 1),
(2, 'RO00002', 'H01', '103', 'TY02', 1),
(3, 'RO00003', 'H02', '207', 'TY03', 1),
(4, 'RO00004', 'H04', '404', 'TY06', 1),
(5, 'RO00005', 'H05', '505', 'TY04', 1),
(6, 'RO00006', 'H03', '306', 'TY05', 1),
(7, 'RO00007', 'H01', '107', 'TY06', 1),
(8, 'RO00008', 'H04', '405', 'TY02', 1),
(9, 'RO00009', 'H02', '208', 'TY05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roomtype`
--

CREATE TABLE `roomtype` (
  `id` int(11) NOT NULL,
  `Type_Id` varchar(12) NOT NULL,
  `Room_Name` varchar(50) NOT NULL,
  `PricePerNight` int(11) NOT NULL,
  `Capacity` int(2) NOT NULL,
  `Room_Detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomtype`
--

INSERT INTO `roomtype` (`id`, `Type_Id`, `Room_Name`, `PricePerNight`, `Capacity`, `Room_Detail`) VALUES
(1, 'TY01', 'Royal Suit', 80000, 5, 'richly decorated, Include all facility ,butler'),
(2, 'TY02', 'Villa', 40000, 8, 'huge space inside and outside as well as garden, Include swimming pool and fitness'),
(3, 'TY03', 'Terrace Suit', 35000, 6, 'large outdoor terrace with garden furniture, while offering spacious luxury interior as well.'),
(4, 'TY04', 'Executive Su', 30000, 4, 'medium size, and luxury interior very quiet suit for meeting and work'),
(5, 'TY05', 'Deluxe Suite', 25000, 5, 'suit for small family, large communal pool and public fitness'),
(6, 'TY06', 'Junior Suite', 20000, 2, 'suit for 1 to 2 person, medium size, modern interior');

-- --------------------------------------------------------

--
-- Table structure for table `staffmanager`
--

CREATE TABLE `staffmanager` (
  `id` int(11) NOT NULL,
  `Staff_Id` varchar(12) NOT NULL,
  `Hotel_Id` varchar(12) NOT NULL,
  `Staff_Name` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Degree` int(1) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffmanager`
--

INSERT INTO `staffmanager` (`id`, `Staff_Id`, `Hotel_Id`, `Staff_Name`, `Position`, `Start_Date`, `End_Date`, `Degree`, `Status`) VALUES
(1, 'S00001', 'H01', 'Snoop Cat', 'Cleaner', '2017-05-01', NULL, 1, 1),
(2, 'S00002', 'H01', 'The Wok', 'Staff', '2014-12-02', NULL, 1, 1),
(3, 'S00003', 'H01', 'Yi Long Musk', 'Staff', '2016-03-20', NULL, 3, 1),
(4, 'S00004', 'H01', 'Pu Ting', 'Manager', '2015-09-17', NULL, 1, 1),
(5, 'S00005', 'H01', 'Di Nhi Rho', 'Staff', '2021-02-23', NULL, 3, 1),
(6, 'S00006', 'H01', 'Yuan Yi Dieph', 'Cleaner', '2019-05-22', NULL, 2, 1),
(7, 'S00007', 'H01', 'Yin Di Zhel', 'Cleaner', '2021-05-03', NULL, 2, 1),
(8, 'S00008', 'H02', 'Bhra Di Pitth', 'Staff', '2017-03-14', NULL, 3, 1),
(9, 'S00009', 'H02', 'Gigga Chad', 'Cleaner', '2021-03-20', NULL, 1, 1),
(10, 'S00010', 'H02', 'Zhong Xina', 'Staff', '2018-03-20', NULL, 1, 1),
(11, 'S00011', 'H02', 'Praewa Music', 'Manager', '2014-03-22', NULL, 2, 1),
(12, 'S00012', 'H03', 'Kazuto Kirigaya', 'Staff', '2019-03-11', NULL, 1, 1),
(13, 'S00013', 'H03', 'Kurisu Makise', 'Staff', '2014-04-19', NULL, 3, 1),
(14, 'S00014', 'H03', 'Itachi Uchiha', 'Manager', '2015-08-20', NULL, 2, 1),
(15, 'S00015', 'H03', 'Killua Zoldyck', 'Cleaner', '2020-04-01', NULL, 3, 1),
(16, 'S00016', 'H03', 'Uzamaki Naruto', 'Cleaner', '2018-05-17', NULL, 1, 1),
(17, 'S00017', 'H04', 'Edward Elric', 'Cleaner', '2018-12-04', NULL, 2, 1),
(18, 'S00018', 'H04', 'Kenshin Himura', 'Manager', '2012-07-19', NULL, 1, 1),
(19, 'S00019', 'H04', 'Ikari Shinji', 'Cleaner', '2017-05-12', NULL, 1, 1),
(20, 'S00020', 'H04', 'Asuka Langley Soryu', 'Staff', '2017-03-18', NULL, 1, 1),
(21, 'S00021', 'H04', 'Ritsuko Akagi', 'Staff', '2017-01-09', NULL, 2, 1),
(22, 'S00022', 'H05', 'Misato Katsuragi', 'Cleaner', '2017-03-17', NULL, 1, 1),
(23, 'S00023', 'H05', 'Gendo Ikari', 'Manager', '2016-11-28', NULL, 1, 1),
(24, 'S00024', 'H05', 'Mari Illustrious Makinami', 'Staff', '2017-01-19', NULL, 1, 1),
(25, 'S00025', 'H05', 'Pre Malone', 'Staff', '2017-03-08', NULL, 3, 1),
(26, 'S00026', 'H05', 'Rei Ayanami', 'Cleaner', '2019-02-11', NULL, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `Transaction_Id` varchar(12) NOT NULL,
  `Member_Id` varchar(12) NOT NULL,
  `Payment_Id` varchar(12) NOT NULL,
  `Check_in` timestamp NOT NULL DEFAULT current_timestamp(),
  `Check_out` timestamp NULL DEFAULT NULL,
  `Rating_Score` int(1) DEFAULT NULL,
  `Rating_Comment` text DEFAULT NULL,
  `Transaction_Date` timestamp NULL DEFAULT NULL,
  `Transaction_Detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `Transaction_Id`, `Member_Id`, `Payment_Id`, `Check_in`, `Check_out`, `Rating_Score`, `Rating_Comment`, `Transaction_Date`, `Transaction_Detail`) VALUES
(1, 'T0000001', 'M00000001', 'PAY000001', '2023-03-20 00:00:00', '2023-03-21 05:00:00', 5, 'Very friendly staff, good location and a free boat service to the main pier', '2023-03-19 11:50:01', 'Reserved'),
(2, 'T0000002', 'M00000001', 'PAY000001', '2023-03-20 00:00:00', '2023-03-21 05:00:00', NULL, NULL, '2023-03-19 11:50:01', 'Reserved'),
(3, 'T0000003', 'M00000002', 'PAY000002', '2023-03-20 05:00:00', '2023-03-20 04:45:22', 4, 'Great place to recharge your exhausting day!', '2023-03-20 08:30:32', 'Reserved'),
(4, 'T0000004', 'M00000003', 'PAY000003', '2023-03-21 11:31:25', '2023-03-22 23:00:12', 4, 'The room was very nice, the staff very friendly and helpful, and the food fantastic.', '2023-03-20 02:12:26', 'Reserved'),
(5, 'T0000005', 'M00000003', 'PAY000003', '2023-03-21 11:31:25', '2023-03-22 23:00:12', NULL, NULL, '2023-03-20 02:12:26', 'Reserved'),
(6, 'T0000006', 'M00000004', 'PAY000004', '2023-03-20 11:00:12', '2023-03-21 04:31:10', 4, 'Excellent food and river proximity give a wonderful experience of Bangkok.', '2023-03-20 04:15:30', 'Reserved'),
(7, 'T0000007', 'M00000005', 'PAY000005', '2023-03-23 05:17:07', '2023-03-24 02:15:07', 5, 'Amazing place, rooms, riverside views, service and food', '2023-03-22 11:45:28', 'Reserved'),
(8, 'T0000008', 'M00000006', 'PAY000006', '2023-03-23 05:40:28', '2023-03-24 05:40:28', 4, 'Very convenience location.', '2023-03-23 02:30:13', 'Reserved'),
(9, 'T0000009', 'M00000006', 'PAY000007', '2023-03-23 05:40:28', '2023-03-24 05:40:28', NULL, NULL, '2023-03-23 03:11:13', 'Reserved'),
(10, 'T0000010', 'M00000007', 'PAY000008', '2023-03-24 05:01:37', '2023-03-25 02:05:35', 3, 'Very good tasty foods little bit high price', '2023-03-24 01:15:40', 'Reserved'),
(11, 'T0000011', 'M00000008', 'PAY000009', '2023-03-25 08:15:37', '2023-03-26 01:10:32', 5, 'Great hotel that is very well managed and where the staff make you feel welcome.', '2023-03-25 05:00:03', 'Reserved'),
(12, 'T0000012', 'M00000008', 'PAY000009', '2023-03-25 08:15:37', '2023-03-26 01:10:32', NULL, NULL, '2023-03-25 05:00:03', 'Reserved'),
(13, 'T0000013', 'M00000001', 'PAY000010', '2023-04-11 03:57:12', '2023-04-14 05:25:57', 4, 'Nice hotel and good location in river view.', '2023-04-10 08:52:09', 'Reserved'),
(14, 'T0000014', 'M00000005', 'PAY000011', '2023-05-18 05:01:04', '2023-05-20 05:01:04', 5, 'Had an amazing stay in this hotel. The food was delicious, staff absolutely amazing and friendly. The hotel was very clean and beautiful.', '2023-05-17 09:02:04', 'Reserved'),
(15, 'T0000015', 'M00000006', 'PAY000012', '2023-06-12 07:45:22', '2023-06-14 05:32:04', 3, 'reservation get wrong info and also gave us wrong detail, but finally staff here provided us private room , some food items are pretty well', '2023-06-12 01:32:56', 'Reserved'),
(16, 'T0000016', 'M00000006', 'PAY000012', '2023-06-12 07:45:22', '2023-06-14 05:32:04', NULL, NULL, '2023-06-12 01:32:56', 'Reserved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allbook`
--
ALTER TABLE `allbook`
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
-- Indexes for table `staffmanager`
--
ALTER TABLE `staffmanager`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `staffmanager`
--
ALTER TABLE `staffmanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
