-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2018 at 01:31 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trendb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(255) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `session`) VALUES
(1, 'admin', 'admin', 0),
(2, 'Fadil', 'overclude', 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cls_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cls_id`, `name`) VALUES
(1, 'Economy'),
(2, 'Executive'),
(3, 'Bisnis');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(64) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'F for Femel, M for Mel',
  `age` int(64) NOT NULL,
  `identification` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `name`, `gender`, `age`, `identification`) VALUES
(1, 'ABDUL SALIM', 'M', 25, '1514005442'),
(49, 'cyka', 'M', 21, '1514005442'),
(50, 'yuro', 'M', 19, '1223123'),
(51, 'Farhan', 'M', 19, '1514005442'),
(52, 'Fadil', 'M', 19, '1514005445');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `date_issue` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `ticket_id`, `cust_id`, `seat_id`, `date_issue`) VALUES
(141, 1, 1, 1, '2018-04-11 15:05:40'),
(189, 17, 51, 0, '2018-04-20 00:00:00'),
(190, 17, 1, 42, '2018-04-20 00:00:00'),
(191, 17, 52, 43, '2018-04-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `loc_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`loc_id`, `name`) VALUES
(1, 'Jawa Barat'),
(2, 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `name`) VALUES
(1, 'Koln Hbf - Hamburg Hbf'),
(2, 'Koln Hbf - Lubeck Hbf'),
(3, 'Marseillaise - Avignon'),
(4, 'Avignon - St. Charles'),
(5, 'Hamburg Hbf - Berlin Hbf'),
(6, 'Nambo - Angke');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seat_id` int(64) NOT NULL,
  `tr_id` int(11) NOT NULL,
  `cls_id` int(11) NOT NULL,
  `seatseries` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seatnum` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `occupied` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seat_id`, `tr_id`, `cls_id`, `seatseries`, `seatnum`, `occupied`) VALUES
(1, 1, 1, 'A', '1', 1),
(2, 1, 1, 'A', '2', 0),
(3, 1, 1, 'A', '3', 0),
(4, 1, 1, 'A', '4', 0),
(5, 1, 1, 'A', '5', 0),
(6, 1, 1, 'A', '6', 0),
(7, 1, 1, 'A', '7', 0),
(8, 1, 1, 'A', '8', 0),
(9, 1, 1, 'A', '9', 0),
(10, 1, 1, 'A', '10', 0),
(11, 1, 1, 'B', '11', 0),
(12, 1, 1, 'B', '12', 0),
(13, 1, 1, 'B', '13', 0),
(14, 1, 1, 'B', '14', 0),
(15, 1, 1, 'B', '15', 0),
(16, 1, 1, 'B', '16', 0),
(17, 1, 1, 'B', '17', 0),
(18, 1, 1, 'B', '18', 0),
(19, 1, 1, 'B', '19', 0),
(20, 1, 1, 'B', '20', 0),
(21, 1, 1, 'C', '21', 0),
(22, 1, 1, 'C', '22', 0),
(23, 1, 1, 'C', '23', 0),
(24, 1, 1, 'C', '24', 0),
(25, 1, 1, 'C', '25', 0),
(26, 1, 1, 'C', '26', 0),
(27, 1, 1, 'C', '27', 0),
(28, 1, 1, 'C', '28', 0),
(29, 1, 1, 'C', '29', 0),
(30, 1, 1, 'C', '30', 0),
(31, 1, 1, 'D', '31', 0),
(32, 1, 1, 'D', '32', 0),
(33, 1, 1, 'D', '33', 0),
(34, 1, 1, 'D', '34', 0),
(35, 1, 1, 'D', '35', 0),
(36, 1, 1, 'D', '36', 0),
(37, 1, 1, 'D', '37', 0),
(38, 1, 1, 'D', '38', 0),
(39, 1, 1, 'D', '39', 0),
(40, 1, 1, 'D', '40', 0),
(41, 1, 2, 'A', '1', 0),
(42, 1, 2, 'A', '2', 1),
(43, 1, 2, 'A', '3', 1),
(44, 1, 2, 'A', '4', 0),
(45, 1, 2, 'A', '5', 0),
(46, 1, 2, 'A', '6', 0),
(47, 1, 2, 'A', '7', 0),
(48, 1, 2, 'A', '8', 0),
(49, 1, 2, 'A', '9', 0),
(50, 1, 2, 'A', '10', 0),
(51, 1, 2, 'B', '11', 0),
(52, 1, 2, 'B', '12', 0),
(53, 1, 2, 'B', '13', 0),
(54, 1, 2, 'B', '14', 0),
(55, 1, 2, 'B', '15', 0),
(56, 1, 2, 'B', '16', 0),
(57, 1, 2, 'B', '17', 0),
(58, 1, 2, 'B', '18', 0),
(59, 1, 2, 'B', '19', 0),
(60, 1, 2, 'B', '20', 0),
(61, 1, 2, 'C', '21', 0),
(62, 1, 2, 'C', '22', 0),
(63, 1, 2, 'C', '23', 0),
(64, 1, 2, 'C', '24', 0),
(65, 1, 2, 'C', '25', 0),
(66, 1, 2, 'C', '26', 0),
(67, 1, 2, 'C', '27', 0),
(68, 1, 2, 'C', '28', 0),
(69, 1, 2, 'C', '29', 0),
(70, 1, 2, 'C', '30', 0),
(71, 1, 2, 'D', '31', 0),
(72, 1, 2, 'D', '32', 0),
(73, 1, 2, 'D', '33', 0),
(74, 1, 2, 'D', '34', 0),
(75, 1, 2, 'D', '35', 0),
(76, 1, 2, 'D', '36', 0),
(77, 1, 2, 'D', '37', 0),
(78, 1, 2, 'D', '38', 0),
(79, 1, 2, 'D', '39', 0),
(80, 1, 2, 'D', '40', 0),
(81, 1, 3, 'A', '1', 0),
(82, 1, 3, 'A', '2', 0),
(83, 1, 3, 'A', '3', 0),
(84, 1, 3, 'A', '4', 0),
(85, 1, 3, 'A', '5', 0),
(86, 1, 3, 'A', '6', 0),
(87, 1, 3, 'A', '7', 0),
(88, 1, 3, 'A', '8', 0),
(89, 1, 3, 'A', '9', 0),
(90, 1, 3, 'A', '10', 0),
(91, 1, 3, 'B', '11', 0),
(92, 1, 3, 'B', '12', 0),
(93, 1, 3, 'B', '13', 0),
(94, 1, 3, 'B', '14', 0),
(95, 1, 3, 'B', '15', 0),
(96, 1, 3, 'B', '16', 0),
(97, 1, 3, 'B', '17', 0),
(98, 1, 3, 'B', '18', 0),
(99, 1, 3, 'B', '19', 0),
(100, 1, 3, 'B', '20', 0),
(101, 1, 3, 'C', '21', 0),
(102, 1, 3, 'C', '22', 0),
(103, 1, 3, 'C', '23', 0),
(104, 1, 3, 'C', '24', 0),
(105, 1, 3, 'C', '25', 0),
(106, 1, 3, 'C', '26', 0),
(107, 1, 3, 'C', '27', 0),
(108, 1, 3, 'C', '28', 0),
(109, 1, 3, 'C', '29', 0),
(110, 1, 3, 'C', '30', 0),
(111, 1, 3, 'D', '31', 0),
(112, 1, 3, 'D', '32', 0),
(113, 1, 3, 'D', '33', 0),
(114, 1, 3, 'D', '34', 0),
(115, 1, 3, 'D', '35', 0),
(116, 1, 3, 'D', '36', 0),
(117, 1, 3, 'D', '37', 0),
(118, 1, 3, 'D', '38', 0),
(119, 1, 3, 'D', '39', 0),
(120, 1, 3, 'D', '40', 0),
(121, 2, 1, 'A', '1', 0),
(122, 2, 1, 'A', '2', 0),
(123, 2, 1, 'A', '3', 0),
(124, 2, 1, 'A', '4', 0),
(125, 2, 1, 'A', '5', 0),
(126, 2, 1, 'A', '6', 0),
(127, 2, 1, 'A', '7', 0),
(128, 2, 1, 'A', '8', 0),
(129, 2, 1, 'A', '9', 0),
(130, 2, 1, 'A', '10', 0),
(131, 2, 1, 'B', '11', 0),
(132, 2, 1, 'B', '12', 0),
(133, 2, 1, 'B', '13', 0),
(134, 2, 1, 'B', '14', 0),
(135, 2, 1, 'B', '15', 0),
(136, 2, 1, 'B', '16', 0),
(137, 2, 1, 'B', '17', 0),
(138, 2, 1, 'B', '18', 0),
(139, 2, 1, 'B', '19', 0),
(140, 2, 1, 'B', '20', 0),
(141, 2, 1, 'C', '21', 0),
(142, 2, 1, 'C', '22', 0),
(143, 2, 1, 'C', '23', 0),
(144, 2, 1, 'C', '24', 0),
(145, 2, 1, 'C', '25', 0),
(146, 2, 1, 'C', '26', 0),
(147, 2, 1, 'C', '27', 0),
(148, 2, 1, 'C', '28', 0),
(149, 2, 1, 'C', '29', 0),
(150, 2, 1, 'C', '30', 0),
(151, 2, 1, 'D', '31', 0),
(152, 2, 1, 'D', '32', 0),
(153, 2, 1, 'D', '33', 0),
(154, 2, 1, 'D', '34', 0),
(155, 2, 1, 'D', '35', 0),
(156, 2, 1, 'D', '36', 0),
(157, 2, 1, 'D', '37', 0),
(158, 2, 1, 'D', '38', 0),
(159, 2, 1, 'D', '39', 0),
(160, 2, 1, 'D', '40', 0),
(161, 2, 2, 'A', '1', 0),
(162, 2, 2, 'A', '2', 0),
(163, 2, 2, 'A', '3', 0),
(164, 2, 2, 'A', '4', 0),
(165, 2, 2, 'A', '5', 0),
(166, 2, 2, 'A', '6', 0),
(167, 2, 2, 'A', '7', 0),
(168, 2, 2, 'A', '8', 0),
(169, 2, 2, 'A', '9', 0),
(170, 2, 2, 'A', '10', 0),
(171, 2, 2, 'B', '11', 0),
(172, 2, 2, 'B', '12', 0),
(173, 2, 2, 'B', '13', 0),
(174, 2, 2, 'B', '14', 0),
(175, 2, 2, 'B', '15', 0),
(176, 2, 2, 'B', '16', 0),
(177, 2, 2, 'B', '17', 0),
(178, 2, 2, 'B', '18', 0),
(179, 2, 2, 'B', '19', 0),
(180, 2, 2, 'B', '20', 0),
(181, 2, 2, 'C', '21', 0),
(182, 2, 2, 'C', '22', 0),
(183, 2, 2, 'C', '23', 0),
(184, 2, 2, 'C', '24', 0),
(185, 2, 2, 'C', '25', 0),
(186, 2, 2, 'C', '26', 0),
(187, 2, 2, 'C', '27', 0),
(188, 2, 2, 'C', '28', 0),
(189, 2, 2, 'C', '29', 0),
(190, 2, 2, 'C', '30', 0),
(191, 2, 2, 'D', '31', 0),
(192, 2, 2, 'D', '32', 0),
(193, 2, 2, 'D', '33', 0),
(194, 2, 2, 'D', '34', 0),
(195, 2, 2, 'D', '35', 0),
(196, 2, 2, 'D', '36', 0),
(197, 2, 2, 'D', '37', 0),
(198, 2, 2, 'D', '38', 0),
(199, 2, 2, 'D', '39', 0),
(200, 2, 2, 'D', '40', 0),
(201, 2, 3, 'A', '1', 0),
(202, 2, 3, 'A', '2', 0),
(203, 2, 3, 'A', '3', 0),
(204, 2, 3, 'A', '4', 0),
(205, 2, 3, 'A', '5', 0),
(206, 2, 3, 'A', '6', 0),
(207, 2, 3, 'A', '7', 0),
(208, 2, 3, 'A', '8', 0),
(209, 2, 3, 'A', '9', 0),
(210, 2, 3, 'A', '10', 0),
(211, 2, 3, 'B', '11', 0),
(212, 2, 3, 'B', '12', 0),
(213, 2, 3, 'B', '13', 0),
(214, 2, 3, 'B', '14', 0),
(215, 2, 3, 'B', '15', 0),
(216, 2, 3, 'B', '16', 0),
(217, 2, 3, 'B', '17', 0),
(218, 2, 3, 'B', '18', 0),
(219, 2, 3, 'B', '19', 0),
(220, 2, 3, 'B', '20', 0),
(221, 2, 3, 'C', '21', 0),
(222, 2, 3, 'C', '22', 0),
(223, 2, 3, 'C', '23', 0),
(224, 2, 3, 'C', '24', 0),
(225, 2, 3, 'C', '25', 0),
(226, 2, 3, 'C', '26', 0),
(227, 2, 3, 'C', '27', 0),
(228, 2, 3, 'C', '28', 0),
(229, 2, 3, 'C', '29', 0),
(230, 2, 3, 'C', '30', 0),
(231, 2, 3, 'D', '31', 0),
(232, 2, 3, 'D', '32', 0),
(233, 2, 3, 'D', '33', 0),
(234, 2, 3, 'D', '34', 0),
(235, 2, 3, 'D', '35', 0),
(236, 2, 3, 'D', '36', 0),
(237, 2, 3, 'D', '37', 0),
(238, 2, 3, 'D', '38', 0),
(239, 2, 3, 'D', '39', 0),
(240, 2, 3, 'D', '40', 0),
(241, 3, 1, 'A', '1', 0),
(242, 3, 1, 'A', '2', 0),
(243, 3, 1, 'A', '3', 0),
(244, 3, 1, 'A', '4', 0),
(245, 3, 1, 'A', '5', 0),
(246, 3, 1, 'A', '6', 0),
(247, 3, 1, 'A', '7', 0),
(248, 3, 1, 'A', '8', 0),
(249, 3, 1, 'A', '9', 0),
(250, 3, 1, 'A', '10', 0),
(251, 3, 1, 'B', '11', 0),
(252, 3, 1, 'B', '12', 0),
(253, 3, 1, 'B', '13', 0),
(254, 3, 1, 'B', '14', 0),
(255, 3, 1, 'B', '15', 0),
(256, 3, 1, 'B', '16', 0),
(257, 3, 1, 'B', '17', 0),
(258, 3, 1, 'B', '18', 0),
(259, 3, 1, 'B', '19', 0),
(260, 3, 1, 'B', '20', 0),
(261, 3, 1, 'C', '21', 0),
(262, 3, 1, 'C', '22', 0),
(263, 3, 1, 'C', '23', 0),
(264, 3, 1, 'C', '24', 0),
(265, 3, 1, 'C', '25', 0),
(266, 3, 1, 'C', '26', 0),
(267, 3, 1, 'C', '27', 0),
(268, 3, 1, 'C', '28', 0),
(269, 3, 1, 'C', '29', 0),
(270, 3, 1, 'C', '30', 0),
(271, 3, 1, 'D', '31', 0),
(272, 3, 1, 'D', '32', 0),
(273, 3, 1, 'D', '33', 0),
(274, 3, 1, 'D', '34', 0),
(275, 3, 1, 'D', '35', 0),
(276, 3, 1, 'D', '36', 0),
(277, 3, 1, 'D', '37', 0),
(278, 3, 1, 'D', '38', 0),
(279, 3, 1, 'D', '39', 0),
(280, 3, 1, 'D', '40', 0),
(281, 3, 2, 'A', '1', 0),
(282, 3, 2, 'A', '2', 0),
(283, 3, 2, 'A', '3', 0),
(284, 3, 2, 'A', '4', 0),
(285, 3, 2, 'A', '5', 0),
(286, 3, 2, 'A', '6', 0),
(287, 3, 2, 'A', '7', 0),
(288, 3, 2, 'A', '8', 0),
(289, 3, 2, 'A', '9', 0),
(290, 3, 2, 'A', '10', 0),
(291, 3, 2, 'B', '11', 0),
(292, 3, 2, 'B', '12', 0),
(293, 3, 2, 'B', '13', 0),
(294, 3, 2, 'B', '14', 0),
(295, 3, 2, 'B', '15', 0),
(296, 3, 2, 'B', '16', 0),
(297, 3, 2, 'B', '17', 0),
(298, 3, 2, 'B', '18', 0),
(299, 3, 2, 'B', '19', 0),
(300, 3, 2, 'B', '20', 0),
(301, 3, 2, 'C', '21', 0),
(302, 3, 2, 'C', '22', 0),
(303, 3, 2, 'C', '23', 0),
(304, 3, 2, 'C', '24', 0),
(305, 3, 2, 'C', '25', 0),
(306, 3, 2, 'C', '26', 0),
(307, 3, 2, 'C', '27', 0),
(308, 3, 2, 'C', '28', 0),
(309, 3, 2, 'C', '29', 0),
(310, 3, 2, 'C', '30', 0),
(311, 3, 2, 'D', '31', 0),
(312, 3, 2, 'D', '32', 0),
(313, 3, 2, 'D', '33', 0),
(314, 3, 2, 'D', '34', 0),
(315, 3, 2, 'D', '35', 0),
(316, 3, 2, 'D', '36', 0),
(317, 3, 2, 'D', '37', 0),
(318, 3, 2, 'D', '38', 0),
(319, 3, 2, 'D', '39', 0),
(320, 3, 2, 'D', '40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `name`) VALUES
(1, 'Kolnzug'),
(2, 'Hamburgzug'),
(3, 'Lubeckzug'),
(4, 'Kolnzug'),
(5, 'ICE Marseillaise'),
(6, 'ICE Avignon'),
(7, 'ICE Avignon'),
(8, 'ICE St. Charles'),
(9, 'Berlinzug'),
(10, 'Hamburgzug');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loc_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `name`, `loc_id`, `route_id`) VALUES
(1, 'Hamburg Hbf', 2, 1),
(2, 'Koln Hbf', 2, 1),
(3, 'Hamburg Hbf', 2, 5),
(4, 'Berlin Hbf', 2, 5),
(5, 'Koln Hbf', 2, 2),
(6, 'Lubeck Hbf', 2, 2),
(7, 'Marseillaise', 2, 3),
(8, 'Avignon', 2, 3),
(9, 'Avignon', 2, 4),
(10, 'St. Charles', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `tkt_id` int(11) NOT NULL,
  `tr_id` int(11) NOT NULL,
  `std_id` int(11) NOT NULL,
  `sta_id` int(11) NOT NULL,
  `date_open` date NOT NULL,
  `date_depart` date NOT NULL,
  `price` int(11) NOT NULL,
  `time_depart` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`tkt_id`, `tr_id`, `std_id`, `sta_id`, `date_open`, `date_depart`, `price`, `time_depart`) VALUES
(1, 1, 1, 2, '2018-04-11', '2018-04-28', 100, '10:30:00.000000'),
(2, 2, 2, 1, '2018-04-11', '2018-04-28', 100, '17:30:00.000000'),
(3, 3, 3, 4, '2018-04-11', '2018-04-28', 70, '10:30:00.000000'),
(4, 4, 4, 3, '2018-04-11', '2018-04-28', 70, '17:30:00.000000'),
(5, 5, 5, 6, '2018-04-11', '2018-04-28', 30, '13:30:00.000000'),
(6, 2, 6, 5, '2018-04-11', '2018-04-28', 30, '20:40:00.000000'),
(7, 9, 9, 10, '2018-04-11', '2018-04-28', 150, '07:30:00.000000'),
(8, 10, 8, 7, '2018-04-11', '2018-04-28', 150, '19:30:00.000000'),
(9, 1, 1, 2, '2018-04-11', '2018-04-27', 100, '10:30:00.000000'),
(10, 2, 2, 1, '2018-04-11', '2018-04-27', 100, '17:30:00.000000'),
(11, 3, 3, 4, '2018-04-11', '2018-04-27', 70, '10:30:00.000000'),
(12, 4, 4, 3, '2018-04-11', '2018-04-27', 70, '17:30:00.000000'),
(13, 5, 5, 6, '2018-04-11', '2018-04-27', 30, '13:30:00.000000'),
(14, 2, 6, 5, '2018-04-11', '2018-04-27', 30, '20:40:00.000000'),
(15, 9, 9, 10, '2018-04-11', '2018-04-27', 150, '07:30:00.000000'),
(16, 10, 8, 7, '2018-04-11', '2018-04-27', 150, '19:30:00.000000'),
(17, 1, 1, 2, '2018-04-11', '2018-04-20', 100, '10:30:00.000000'),
(18, 2, 2, 1, '2018-04-11', '2018-04-20', 100, '17:30:00.000000'),
(19, 3, 3, 4, '2018-04-11', '2018-04-20', 70, '10:30:00.000000'),
(20, 4, 4, 3, '2018-04-11', '2018-04-20', 70, '17:30:00.000000'),
(21, 5, 5, 6, '2018-04-11', '2018-04-20', 30, '13:30:00.000000'),
(22, 2, 6, 5, '2018-04-11', '2018-04-20', 30, '20:40:00.000000'),
(23, 9, 9, 10, '2018-04-11', '2018-04-20', 150, '07:30:00.000000'),
(24, 10, 8, 7, '2018-04-11', '2018-04-20', 150, '19:30:00.000000'),
(25, 1, 1, 2, '2018-04-11', '2018-04-21', 100, '10:30:00.000000'),
(26, 2, 2, 1, '2018-04-11', '2018-04-21', 100, '17:30:00.000000'),
(27, 3, 3, 4, '2018-04-11', '2018-04-21', 70, '10:30:00.000000'),
(28, 4, 4, 3, '2018-04-11', '2018-04-21', 70, '17:30:00.000000'),
(29, 5, 5, 6, '2018-04-11', '2018-04-21', 30, '13:30:00.000000'),
(30, 2, 6, 5, '2018-04-11', '2018-04-21', 30, '20:40:00.000000'),
(31, 9, 9, 10, '2018-04-11', '2018-04-21', 150, '07:30:00.000000'),
(32, 10, 8, 7, '2018-04-11', '2018-04-21', 150, '19:30:00.000000'),
(33, 1, 1, 2, '2018-04-11', '2018-04-22', 100, '10:30:00.000000'),
(34, 2, 2, 1, '2018-04-11', '2018-04-22', 100, '17:30:00.000000'),
(35, 3, 3, 4, '2018-04-11', '2018-04-22', 70, '10:30:00.000000'),
(36, 4, 4, 3, '2018-04-11', '2018-04-22', 70, '17:30:00.000000'),
(37, 5, 5, 6, '2018-04-11', '2018-04-22', 30, '13:30:00.000000'),
(38, 2, 6, 5, '2018-04-11', '2018-04-22', 30, '20:40:00.000000'),
(39, 9, 9, 10, '2018-04-11', '2018-04-22', 150, '07:30:00.000000'),
(40, 10, 8, 7, '2018-04-11', '2018-04-22', 150, '19:30:00.000000'),
(41, 1, 1, 2, '2018-04-11', '2018-04-23', 100, '10:30:00.000000'),
(42, 2, 2, 1, '2018-04-11', '2018-04-23', 100, '17:30:00.000000'),
(43, 3, 3, 4, '2018-04-11', '2018-04-23', 70, '10:30:00.000000'),
(44, 4, 4, 3, '2018-04-11', '2018-04-23', 70, '17:30:00.000000'),
(45, 5, 5, 6, '2018-04-11', '2018-04-23', 30, '13:30:00.000000'),
(46, 2, 6, 5, '2018-04-11', '2018-04-23', 30, '20:40:00.000000'),
(47, 9, 9, 10, '2018-04-11', '2018-04-23', 150, '07:30:00.000000'),
(48, 10, 8, 7, '2018-04-11', '2018-04-23', 150, '19:30:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `tr_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `series_no` int(64) NOT NULL,
  `route_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`tr_id`, `series_id`, `series_no`, `route_id`) VALUES
(1, 1, 117, 1),
(2, 2, 150, 1),
(3, 3, 151, 2),
(4, 4, 152, 2),
(5, 5, 154, 3),
(6, 6, 153, 3),
(7, 7, 156, 4),
(8, 8, 155, 4),
(9, 9, 156, 5),
(10, 10, 157, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ident` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`, `name`, `ident`) VALUES
(1, 'akar', 'akarpohon', 'admin', 'Akar Pohon', 2141728832),
(2, 'Chillrend', 'semboyan35', 'user', 'Muhammad Farhan Hanif', 123123123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cls_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `ticket_id` (`ticket_id`,`cust_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `seat_id` (`seat_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`loc_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `cls_id` (`cls_id`),
  ADD KEY `tr_id` (`tr_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loc_id` (`loc_id`,`route_id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`tkt_id`),
  ADD KEY `tr_id` (`tr_id`,`std_id`,`sta_id`),
  ADD KEY `std_id` (`std_id`),
  ADD KEY `sta_id` (`sta_id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`tr_id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `series_id_2` (`series_id`,`route_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `seat`
--
ALTER TABLE `seat`
  MODIFY `seat_id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`tkt_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `invoice_ibfk_4` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`cls_id`) REFERENCES `class` (`cls_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `seat_ibfk_2` FOREIGN KEY (`tr_id`) REFERENCES `train` (`tr_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `station_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `station_ibfk_2` FOREIGN KEY (`loc_id`) REFERENCES `location` (`loc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`std_id`) REFERENCES `station` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`sta_id`) REFERENCES `station` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`tr_id`) REFERENCES `train` (`tr_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `train`
--
ALTER TABLE `train`
  ADD CONSTRAINT `train_ibfk_1` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `train_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `route` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
