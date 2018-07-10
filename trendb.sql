-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2018 at 06:23 AM
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
  `user_id` int(11) NOT NULL,
  `seat_id` int(11) NOT NULL,
  `date_issue` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `ticket_id`, `user_id`, `seat_id`, `date_issue`) VALUES
(141, 1, 2, 1, '2018-04-11 15:05:40'),
(189, 17, 1, 0, '2018-04-20 00:00:00'),
(190, 17, 2, 42, '2018-04-20 00:00:00'),
(191, 17, 1, 43, '2018-04-20 00:00:00');

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
  `user_id` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(15) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `city` varchar(25) NOT NULL,
  `zip` varchar(25) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ident` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `email`, `role`, `name`, `gender`, `city`, `zip`, `address`, `ident`) VALUES
(1, 'akar', 'akarpohon', '', 'admin', 'Akar Pohon', '', '', '', '', 2141728832),
(2, 'Chillrend', 'semboyan35', '', 'user', 'Muhammad Farhan Hanif', '', '', '', '', 123123123),
(3, 'JohnDoe21', 'Semboyan35', 'cv2lex@gmail.com', 'user', 'Freyalise Llanowars Fury', 'Male', 'Wyoming', '16914', '123 Roadsz', 3201244213),
(4, 'JohnDoe22', 'Semboyan35', 'cv4rangers@gmail.com', 'user', 'Freyalise Llanowars Furys', 'Male', 'Wyoming', '16914', '123 Road', 3201244213);

-- --------------------------------------------------------

--
-- Table structure for table `userimage`
--

CREATE TABLE `userimage` (
  `username` varchar(12) NOT NULL,
  `image` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userimage`
--

INSERT INTO `userimage` (`username`, `image`) VALUES
('akar', NULL);
INSERT INTO `userimage` (`username`, `image`) VALUES
INSERT INTO `userimage` (`username`, `image`) VALUES
('JohnDoe21', 0xffd8ffe000104a46494600010201004800480000ffe11e774578696600004d4d002a000000080007011200030000000100010000011a00050000000100000062011b0005000000010000006a012800030000000100020000013100020000001c0000007201320002000000140000008e8769000400000001000000a4000000d0000afc8000002710000afc800000271041646f62652050686f746f73686f70204353332057696e646f777300323031303a30353a32312031303a34373a33360000000003a001000300000001ffff0000a002000400000001000000c8a003000400000001000000bf0000000000000006010300030000000100060000011a0005000000010000011e011b0005000000010000012601280003000000010002000002010004000000010000012e020200040000000100001d410000000000000048000000010000004800000001ffd8ffe000104a46494600010200004800480000ffed000c41646f62655f434d0002ffee000e41646f626500648000000001ffdb0084000c08080809080c09090c110b0a0b11150f0c0c0f1518131315131318110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c010d0b0b0d0e0d100e0e10140e0e0e14140e0e0e0e14110c0c0c0c0c11110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc0001108009900a003012200021101031101ffdd0004000affc4013f0000010501010101010100000000000000030001020405060708090a0b0100010501010101010100000000000000010002030405060708090a0b1000010401030204020507060805030c33010002110304211231054151611322718132061491a1b14223241552c16233347282d14307259253f0e1f163733516a2b283264493546445c2a3743617d255e265f2b384c3d375e3f3462794a485b495c4d4e4f4a5b5c5d5e5f55666768696a6b6c6d6e6f637475767778797a7b7c7d7e7f711000202010204040304050607070605350100021103213112044151617122130532819114a1b14223c152d1f0332462e1728292435315637334f1250616a2b283072635c2d2449354a317644555367465e2f2b384c3d375e3f34694a485b495c4d4e4f4a5b5c5d5e5f55666768696a6b6c6d6e6f62737475767778797a7b7c7ffda000c03010002110311003f00f554924925292492494a4932492949922876daca985ef30d1ca6ca4220991a03af448f04892cb7f5776efd1d72cec4982512bead59816b1ccf3e42a31f8b72729707b9c3ad59d227fc25e70e4abe174124119349afd40f1b077ec99b978eefa36b1d3d810adfbd8b4fd6445edea0b384f64e94a8ccea350ab67f51c1e9f8eecacebd98d43343658607f55bfe93faad528d6ab5bdab546dbb6890877e4518f51b722d65350e6cb1c1ad1fda7fb571577d7aeafd6ed7627d4de9cfc90096bba8e48d95348fdd6ba1bff6fbd967fc12547f8bbcbea560cbfad9d4edea16ff00dc7a5c5b5344ced6ba1bbbfaada98a51880d724847faa3d53fb16f11e82db7d4ff00c67fd57c23e9e3d8fea179d03319a4b777eefaafdbff0043d459167f8c1fae19867a57407d6cfdebabb6d3f16b9bf6662ed3a6fd5de89d2da5b81854e38e7706cbbe6f7ee7ad1d51e3c31f971f178e43ff00731418c8fe95793e5599f5d3fc63e28f532711d8cc1a92715c5807f29fefdbfe72274cff001b5d4db634753c4a7231dda1b318b9960fe56db1cf659fd4fd1af5022743af883c195e69fe337eab6261d6cebb8158a45960ab36a668d25e3f4590d6fd167bbd8ffeba9f0e4c196431cf108716d28ac9467116244f9bffd0f5449284a125292492494b129a522b3737a83b71aa9311a3dfe1e4d55b9be6f172d0e3ca773e903e694974206668379f7d60905dac491e41636564bb26c9fcc98637cbb29b9bb3067f3f21d2f3dc81d94315a1f915b4f77123e42560fc439dcbcccb0f2c47b7ee18ca55feb7485b6714046e7bd5a22239e54eba5f635ce6192ce5bde14f359b329e3b1823e614fa6bc37263f7da47cc7b96762e5a239c3cb643a71cb15f8fe8b2199f6f8876b415dafa9db98768ee0f07c77235f4b5f58c9a9ba13fa4ac0982a39b50ab21e1a21aef70f9feeacfcae91d47aa65621a739d87d3b0de6fcba19abadb416be8669fe0dcd6bbd4f72b3cae132cd9b91c87a4f8252ff279310f4c964cd46390787e2ddab26fabf9ab08d0804ea35f163bf7562e1fd4cc7cec93d5beb57507f58b98f8ae970f4e8ac4fb1aea847fe07e9d1fe91962d6264c9104ea7e251e807d1bc7e6868e75d7e69ff0af89f33cbce58a12e28ca32f49fd1e11c7e992b36184a89d0d875f1eba29a5956335b5d0c115d7580d6003f75adf6a280b1b0724d36861fe6acd08f02b585ac2f2c065cdfa43c16f723f108735884cfa257c32893fa67e5afef35f26330956e3a24492d13abc0b1ad0b97ff194eadbf53b39ae89b1d4b583c5dead6fff00a962ea579e7f8dcea21b8d81d29a7dd6d8ecab7c9958f4ab07faefbbff000252f2f032cd003bdff8ab721a81f27fffd1f5549324929694a5241cab7d2a1f60e5a34f8a664988425396d10647e8aab200479d906ac67961977d11e44ac5204c2b14975acb6a2e97d87d4693e3e081ac9d20cea3c21725f14e625cc9c5987f34626311fbb38cbd5c5fd66ee0888583bb71ec36f4eaec60935eb1f83955aac35dacb07e6b87ddf9c8d8997e812c7eb5b8ea3c0a9dd841d366290f6933b7b827f7423922798862e6301bcd8a311971fe9feabe59c3f7a2a0780ca321e996c7cd5d476b9d5dcdd5ae6c4fc0caa8d7bea22caa3d464b981da3498f68b3f90e516decb03abaec6d8297163c35c1db1fdea7b99edde89e9586bf5434ec060b957e6273c9cd1cd1c728cb4cb3891b4a1f3cff00bbc4ba31021c24e8746a608ea831c3fab5ccc8cf7b9cfb8d422a6c9f663d1fc8a99eddeb5dbfa9e0c3a3d5b7b1f3ff00c835071994b586fb0eed861a0e83729331f2739deb3a0309f693afc9ad57317ba653ce23c7ccf360fb7187f93c73f4cb2cd8e554224d423bf896a318496b583738f00727ccab975631b0c544fe92d3afe5576ac4663b0baa6efb63927fe8ee59d7d79965ae758c3bb8001d004e97239393c04984b2f319c187a07143140fcdf2fe92bdc1925bd446baf54035708e49103e6ad6658faf34beb30f601a8eff0014aba5b8dfa7c83ef1f42b1aaaaf7b9ef73ddf49c655390972dcbf013c39b24e390441f562862e2d65fbb29712f1539ede9029dcc6c8191536c1a48f70f03e08d2b2fa5dbb5d634fd180e5a5ba75e41e1753f0fe64f31cbc321a1395f10f189e16a648f0cc853ac0d05cf76d68692e71e001f9cbc2beb3f59775debb93d4449a5ee15630f0a99eda7fb56ff3dff5c5dfff008cdfac5f62e9e3a3633e32ba8349b88e598fc3bfabf6a77e859ff5c5c97f8bfe81fb63af32fb5b385d30b6fb4f636ffda5a3fcf6fa967f22bfe5adce4e23163973131d3d0d5cc4ca4203ccbfffd2f54493a6494c492a865dc3229c8a59cd71f38f72bd6bb6b1cef004fdcb068c87d368b390efa7e73ff91595f15e706138f14b48e61319243f4615c1e9ff0019970c0cb8a5fbb54c1ae7348734c3870af37ec99825ff00a3be04c687f1427e18b65f8c439a4ced2608f14cdc0c8718734340fce77fb162f2f8b9ac3238fd8fbc6199d63fe4ff00bf19fe8b62461217c5c32094f4b7cfe8de083a6a0cacce9b983a965df4f4d0eb71b17db6750698c7758443f1f19df4b21ccfcfb99fa3ad52befbfaf58fe9f43edc2fabd53b6e6e61059766bb8389820fbebc4ff4f7ff0084fe6bf7d7458b97d3b0e96626353e863d2dd95d75b406347ee8dab50f25f0cc42267318b34b5e1864e2f67fc260f7329d371e237685189474ec41d3a8c666256d3bd8c60e49fa4e7bff003ec77ef2d6c06b5d84d69e082084f77a5958ee730ee0012d3e0421749b41a9d513ee6ea3e051c388e2f88478f27bd8f3e130c7397aa5e9fd097ef2646f1ed4625a6cc72727eca7e86f320f7685ab6db563d5b9e76b46802a194ff47a8fa8351edffc8a25ecfb4e68acff003753773be2543ca4872f1e6238871731eefb11bfd112f965fece29c9eae127489167cd5fb432adfe6282479f8205d7e7f366e60f26e9f7ab6dcb33e9e2d26d6b742676b67c1a54fd7c8026cc7747f20877f16a9278e5981079ccb7d658e12f67ed8fe8ad1203680fdae44971992e3dccc94d078efdbbfe45aa7ec17c96b18fb07e69d0cfeeaaa32aaa49f4f1c31e34209d44f8acacbf0e8e3225939981848fcf1139cff97f84cf1cb62844db3aebfb362bedb07bac6ed0cee572791d728ea1d730ba55b93e9f4fc4b8585c0968bb22bfe628377f83c76dbf9eb47ade5e7e6d6fc5c1b59f692e6b6f24eb4d560f75bb3f94b8cebbd0b23a3dedaec05f8d73775361ee07d2659fbb6315fe4b2404e271d88628f04212f9e71278a5972ff7ff0041d2f877278b2994734c4736512f6a3fbba7cee4f55fdb5d47eb0e4b336977ed8c8bfd27637838fb71e9affeebd757d0b3fd1fe997b1fd56fabf4f40e8d4e05643adfe7326d1f9f73bf9c7ff0057fc1d7ff06b96fa97d4fa767f50a1bd4ab6bface2d4ea70735d3baca7f3e97bbfd2d3f98ffe7367fd757a033501751939cf7f142301c3088008feb070f3f259395cf931e4d657bfef47f7a2ff00ffd3f554c9d324a4768dd5b9be208fbd73d05b20e9b7423e0b5fa95afaa9059a12f1f70556cab1f2a6eade2bb07b9e1c401a7d22ff00e4b7f79607c6317de728c78c819b08078247878e193f71b1824600923d27ab4c120cb4c7c1225cf2265d3a01c92555e91d4b0facdd935f4f73aca311db2dcc802873bf768b09df6ff98b731abc4a43edddb8d721d61edfc96acdc1f0de68cf832c8f2f1038cf14bf43af0c59679615e91c456c7e9e1a3d4c932e0346ce807fafeea4ec9e9d1b40968d25ad2469fca456d6ecb8b2e05b5735d5c4ff002ecffc828d97ba9bbd2f462804377e807bbf92b67dac78714782308623e9f73247dec992ff004a7fbb160e224ea4df61a210198c45f8eedf8cefe71a3b7f282a95d8fa2e2eacfd1247911cabb9358c57faac1fa17fb6d6761e0e1fda5418c73ced6892353f00b27e21c78a70c701ede4c72338c31dfa3faf8bfa93fdd66c5a8913a8eb6bdd63ae7bac768e7011e1a230b9de86438696585add0eb110a0eb4643eb66d0ced3f143b58ea9e58ee5a67e30a0e39e39cb2891cb8e771393e5fd6e4875ff009cbe84808d57674ef0fc6c6aeba086025ac2ef09fce56690f158163b73c72e1dd675f79757707bdaf6bc0f4da3907cd2e9d96e6582971963be8cf2d3fbab6b17c430c39a84092213888c35f4e33f2f0f0ff5dae71c8c09ea0eadec9c4ab207b843c70f1a11f358dd41f7e356ea5de95994f6b8620b4c073c0fd1ff002dcdfde567eb27d60a3a174f390f6fab7be5b8d47efbfc5dff0004cff08b87ff009b7d7fad756c7c8ccb45accbadb90eea0c717555d64ff334feedecfa15d6dffccd59e779486490302464bb9d7cb28f6c916d725cbf144e4cd9062c22f84cbfca4a1fa38dc6c5cfea1d3ba9fdba48cd638fac2c9879ff00095da3f72c5dcd4fc1fad38603e5ccbb4701f4e977f27fe29df9dfe1164fd66e9dd2b3b22e6f4ebe7aae1341c8c67eaeb18342c6bdbec75f57f250fea2e3e663df6f5325d5e3bda6a65646963a76ef7feefa2a8e61131c72c93f6c42425e9ebfd5ff00bd75f9a9e1cfca8e661fa9e6318000ae091fdde1feafeec9e83ea97d4f7746badcacc2db32f73abc77b750dabfd20ddf46cb9abab6f0875ee35b777d281bbb6a8a385bb884440708a075f1f53ce7319f267c872653733a7f8aff00ffd4f544924d212535b32a17d2e60fa40823e3e0b09ae63e4b1ecb0025a76383a0fd17b0ed50fae5f59ade98717a5f4c6fadd63a858c6d35801db2bdc3d4b5ed77fa46fa95d7ff005cb3fc12262e3e2f4d7dedc4c6ab1cdf61b2f635bcbcfd2923fef8b07e39cbe313c397271e33922631c911c63d1fbdf2f0b6397913711ad6b4ca9a8b9be9d0c6b58d3f41ad0dadbfd66b36fb95ac6ac5f6b281ad149dce1e27f9484fcabac6c121adfdd6880b4ba7639ab1c170f7bf9f8760a9fc3f1433f3023094f2463eacb93269c407cb8a11e297a57643c31d80bf9406d00b37aadc4b9b40e00deef91962d3599d4b16d377ab5b4bda5b0e8ed0b63e2e32fdd2430449362c437e1f261c35c638915f922c0f797922c647a51a0778ca8e0103244ebb811283e9387d2860f177f724e6bea7033ee8243870b9d3cc66f7f1f3196047b72d77bfaf136b8622328c4eea78f4ed706f0c798f9146ce7d76bd8f6992e6fb828e3d4dbdd63ac74000127cc9e50eeacd763aa77e698f92133923cbe4908fea399c9e93fa509425c41228ca22fd510b0adef12d6c8ee7e08195d53a6748db91d42e1bc6b5e3d7eeb1d1df621f57ea74f4fe9aecab017babf65358d439ef3fa305723d371e8fac595751999069eab7b83f1721deeadc1bf4f1bd3fccdacf751fbeacfc3f958ca71cb5c422018f11bbc9db83fa8dce5f95f7213cb978a3831e993db173ff00d17f7dbbf5b725bd7a8c7ebb82e2fc6c767d9f2319fa594585c5fbec6feed9f4503eaafd64774e2fe9b9373a9e9f97b836f6eaec7b5e36b721932df4f77d3fdcfa6b4f37a9f4cfab540e938f8cccab676e4b1c61c18e1eff005ac1fe1ed6ff0036d55d9f52b1f31f5f51c2c9ff002264016346d3ebb1874b29daef6fb5dedf556bc33cc9967ae1ad083bfeefaa2dd864e5c728797e6232872f232972b9643d5fbc3fc3fddfdf41f557a25d91d72db85ccb69e9ef74e40276dd63a5a3d377f2fe9bd76f5e35543daec878001d2b6fe71fdddaa4303a6636263e363b5b8f4b0451a489f17ff2d3e3518f4decf7fab6cc303471e2e2a9f31881e6604c21300c7866727a787e6fe65c9e6f9c9731232b20002318d57a63ff007ceb01a79a90e1440525d00735ffd5f53547ac755c4e91d3afea398629c76c9039713a57533f956bfdaae6ee3cd79ffd61b1df5bfeb7d1f566971fd97d30fafd49cd261ee6c6eaff00b1bbecff00d7b1ff00b8a4c58f8a5ae9188e291feaad91a1e7b36fea2749cbcdbeefae3d61b3d43a913f6461e2ac7221ae66eff48df655ff0075ff00e39749995e23ae21ce355b132072168b18d634318d0d63400d6810001c35b081978b5e433dda16ea1ddc2a5f13c72e67110231998eb184fe5e18f8fe8b2623c046b5dc8733762d5eeaa6eb0090e7703f951fbcb4ba7971c60e7924bc9749ef3ff52b3becd5335b6f6b980cc37923c15ec3c83739e18ddb4b000cf3591f0c328731fac10c6643831e1c5ff3a73ff17f499b2eb1d2cff58b6adb195b0bde435ad1249595979973c4ff003559d5adfcf70f19fcc562f70bf24b5e7f418c373c78bfb7f9a802b36beab6dfe72fb047931bee8ff354df10cd973138b14b8617c160d75e09ce5fd5e2f4456e3888eb2d506ca59a5c5deab87d16eb00f99fde437b838b401b5a0435be5e6b5eec1a6f76e74b4c412dd24769feaaabd429c3c3c6175f7b313168d6dbac3b74feb155337c1b99d618b838450891fcee6fef32473401b3a774348db8b7d8472368f38f05286e635a640c960e0e81e3f79711f587eb9f54cde9f6bfeae63bf1fa2e23c5791d4a017ee3fbb5fb9f8acd7f9dfa7ff16aafd49facb98eea4de91d42eb2d6e6171a321e4bdf5d8017bb73ddb9efa9ed6ff00d6d5f97c0f99872a4d432e2c3011cd838b867c5f364cb197e84a0c3f7981c95444a47d327b3cfe9b8b93897637546fa58bb0becb890d6d5b7dff0068f55ded6b6b5e79d47a7e574acdf45eedc61b76364d66058c3eeab26978fcd5db6474beafd6329ceebbb1dd2f1ad9c5e974bb732ddbfcde4751b1befbff007d98df41686763d1d46baa9cdc1aeeae883531cc2030f0d0dda7e839bfe095684f93e5717b7194e53bf7348f1f0717e871c3e6753e1df10cb82678e3c7865f3c2ebfc28dbc8d78d93f5aaec6cbc8c7143691e9f51ea0c11ebed30cd95c7f48d9f4ff00f49fa6bbafd0606dab15a3ecee6068a81d1a1a36b36ff276a08a6ff4dac6b4554b35ada00ad8df2dbf4936cc7ae4bddeabb80c66827f9567d25066e7b24c9300211970fb79727eae50af9e5c3fa5c4c7cce7f78c62018e2c77ede189e38c6fc5b589536dc22dbbdacdc4b4f8046c0c7c563cbebb05af1a48ec3e0a839f6e53db50d349158e07f58ab78189915dc6cb1bb1a0444ccf9a7f279464cb83dbe5ce68631edcb9990f57145a93142572abd785d309c261c270ba36b3ffd6ef3eb475a6743e8795d4b43654ddb434fe75aff654dfecbbdfff0016b13fc59f47761742fda3912733ab38df63ddf4b64bbd1ff3f73eeffae2c9ff001a394fceea5d2beae564c5cf6db701ddd6bfecb47fdb6df5ec5e894d2ca2a652c10cada18df8346cfe0a797a304475ca6cff00721f28583591feae8120e1344a904957217b999d8d8b51f55cd7b438c135a8e3de0df5d38eddb5092ff13a2d2786b810448e082b3afbabc3b0d7454d0489713a0f87b7dcb279ac11e5b20cfc50c380c81c951fd6ca5fb80feecd9a04c8708167f06bd977a6ccaa883ea3dce323c3844bf2584d069971a88968ee236ec599d6beb4f41e9bff002a3836f23db4d277dc7feb5f9bff005d72e72efacd85f58a9b7a3f4a391d27a85c0bb0ed7bc16da5a097e25ae1fa4afd562831f25ce64819e394472b223f5b28ce32862193dde2dbf4527263890083ee5691e922f4bd63ebc6060ddf61c3a5fd4baa9fe6f0a8d4877fc3d837369637f3d607d66e8bf58baff43ab2f3456dea385bdc712827ecf631c676b1aeddea66d4dfe6ff0031eb87e9f9dd47a1f526e4e3038f998ae2cb2bb01833fced590d77b9ecb1abd0beaa319d563eb6757ea2ec8b71cbdb5e2822aa3149f6fa4fabdbb9db3e85967f38b7f98c1cc72a31658661384489cb281fce4bf73fab89ab19c7271448a3fbbd9f3ee95d6f3ba49c87e2ed7d7955ba9c8c7b5bbab7882cfd255fbf56ef67fe08bd0fea6742e85d2b06aea0d78ea595955e994d135b1bc3a9c6693ecd9f42eddef587d73a3607d67cfb3a9fd59b6b363ac15f510e6baba43c8ddf6da4edfd2ffa3caf4bfc27e9bf3d757f57ba0749e8781f67af2acbb7bbd5b4d86017c438d357f8267fd3fdf51fc57e238a5808e5f24317333e1f7f1651c2251ff59c49c18889fae2658c7ca43b0c1d3ed915b3d3b2261bed77f66109f439d3f67b8bc379617190836bb73c3eb61654cd1863593e0ac595d7901ae043720b43881f9d3c7e45cd898cb19c3db80c98a88f6cfddfdfe3ff0037fd66e5189dcebdfd55e6d57537077b98e9f1e429331322c30dacfc5da0536d19a5db1a1e08f386ff009cb4b0f19d4b497bcbdeed4924903fa8a3e53e1a398cb53865c7104f17b9a7f8aba794c46847d16c2c218ed25c66c77d23e1fc956e124eba6c3cbe3c3018f18e18c5a86449b2a48249d4a87fffd7aff583301ff1a2cb2f77e8b1f2b12b6cf01bb6b9ff00c16c5eb6bc63fc63615b8bf5bb2ec32d665b6ac8a5c2470d6d2f735ffbecb6a5d67d5aff00197d3afc566375db3ec7995b769c83269b6346bf78dceaaefdfa9eaf67c529e1c3380b11808903bb0c2404e60e9abde049660fac9d00b3d41d4b176c4cfaccfef59d99fe303eaa61b4eecf65ef6ff83c706c71f847b7fe9aa831e4268449fa329947bbd118585f5ba8ea9fb1b2b2ba2b49ea2c6035edfa45a0fe97d39ff0ccab7fa3ff0008b93eabfe369e496746c18e7f4f947f263d4777f9d62e3f3feb2fd60ea3974e4e567dcec8a9e1f8ed67b5ac78fa0fab16af6b9ffd8f7b14d1f86cb251cb18f0c4f1d64d76dbd2b0e703489367b31e8bd52ac1cef5f2ab1998992d3566b2c02cb1d53be9595b9feffb453fe0d7679167d59faa1d371b37a6d0738f5069762e4fd32e0dfa4db731eddb46c6ff0081abf4cb3faa7d51eafd67129ebf81d39f8d99947fca1d39d0c9b3be7e26f733f4591f4df4d8ae744fa83f59aee9cfe99d5729b81d2aeb1b73f119b6ebb783bb756f8d98bfcbd8eb13b9ce5b94e60094a4600f08cd86123019383c20b7199c6c55f58c8b93757ff3c30afcfa28f4baf60c0c8a993e95f438fe822cfcdcbaff009bf7ad1fab5fe2fecb48b7addae6e3be2cb3069710c735bf4066d8d3b6c737e87a752f40e91d0ba6748c31838540652d76f25dabdeff00cebae79fa763bf795cb31aa7b36110d9986e9afc950cd3e6444e1e5a51872f120e2811fac8c63fe4f8ff00778d96308589487afa91b38fe9502b651855b69ab146daa860dacf4ff35cc6a355998ad6cba9879d341e1fbd2ae33a66331c1cc0e696f0438a39c6a1c65f5b5cef1224ac887c3f9b392594ce11cb33ebe28fbb097f587f5db07242b868d0da8d172dcebb3ec15b1bb6b69d4787cd1074eb2db497fe8e910180730345a8d635a0340803b052da1588fc2a12f567c92cb3241991e88fa7e587f7561cbd222822aaa6d4c0c6f03c4ca22784968c622204622801418d492509d394a49249253fffd0ed7eb67d54c4fac982daac71a72e8dcec5c90276177d2aec6fe7d166dfd235796f52fa93f5a7a6bcb6cc0b322be05d883d669fec57fa6aff00b6c5eddd9267d377c168723f7ae1f470fb7feb18337b77eabbf07c05bd07acbdd0de9396e71f0c77cffd4ad1c2fa8bf5b3323d3e9cfa18797e416d207c58e3eaff00d05ee2a167015b97deba0c5f69621ed75e2fabe6bd33fc525ce21dd5f3c344eb4e182491ff00862f6b767f66a5da746faabd07a280703118cb7be43fdf69f3373fddfe62d6f0482cee67ef57fade2af0f919f1fb7fa2ada0f3aa780904954d59540249d324a5270924125293a4922a5249249294924924a524924929ffd9ffed239450686f746f73686f7020332e30003842494d04040000000000071c020000020000003842494d0425000000000010e8f15cf32fc118a1a27b67adc564d5ba3842494d042f00000000004a50b5010048000000480000000000000000000000d002000040020000000000000000000018030000640200000001c0030000b004000001000f2701005c004400650073006b0074006f003842494d03ed000000000010004800000001000100480000000100013842494d042600000000000e000000000000000000003f8000003842494d040d0000000000040000001e3842494d04190000000000040000001e3842494d03f3000000000009000000000000000001003842494d040a00000000000100003842494d271000000000000a000100000000000000023842494d03f5000000000048002f66660001006c66660006000000000001002f6666000100a1999a0006000000000001003200000001005a00000006000000000001003500000001002d000000060000000000013842494d03f80000000000700000ffffffffffffffffffffffffffffffffffffffffffff03e800000000ffffffffffffffffffffffffffffffffffffffffffff03e800000000ffffffffffffffffffffffffffffffffffffffffffff03e800000000ffffffffffffffffffffffffffffffffffffffffffff03e800003842494d0408000000000010000000010000024000000240000000003842494d041e000000000004000000003842494d041a00000000034f000000060000000000000000000000bf000000c80000000d00360032003300380039003600330035003700320036003700730000000100000000000000000000000000000000000000010000000000000000000000c8000000bf00000000000000000000000000000000010000000000000000000000000000000000000010000000010000000000006e756c6c0000000200000006626f756e64734f626a6300000001000000000000526374310000000400000000546f70206c6f6e6700000000000000004c6566746c6f6e67000000000000000042746f6d6c6f6e67000000bf00000000526768746c6f6e67000000c800000006736c69636573566c4c73000000014f626a6300000001000000000005736c6963650000001200000007736c69636549446c6f6e67000000000000000767726f757049446c6f6e6700000000000000066f726967696e656e756d0000000c45536c6963654f726967696e0000000d6175746f47656e6572617465640000000054797065656e756d0000000a45536c6963655479706500000000496d672000000006626f756e64734f626a6300000001000000000000526374310000000400000000546f70206c6f6e6700000000000000004c6566746c6f6e67000000000000000042746f6d6c6f6e67000000bf00000000526768746c6f6e67000000c80000000375726c54455854000000010000000000006e756c6c54455854000000010000000000004d7367655445585400000001000000000006616c74546167544558540000000100000000000e63656c6c54657874497348544d4c626f6f6c010000000863656c6c546578745445585400000001000000000009686f727a416c69676e656e756d0000000f45536c696365486f727a416c69676e0000000764656661756c740000000976657274416c69676e656e756d0000000f45536c69636556657274416c69676e0000000764656661756c740000000b6267436f6c6f7254797065656e756d0000001145536c6963654247436f6c6f7254797065000000004e6f6e6500000009746f704f75747365746c6f6e67000000000000000a6c6566744f75747365746c6f6e67000000000000000c626f74746f6d4f75747365746c6f6e67000000000000000b72696768744f75747365746c6f6e6700000000003842494d042800000000000c000000013ff00000000000003842494d041100000000000101003842494d0414000000000004000000043842494d040c000000001d5d00000001000000a000000099000001e000011ee000001d4100180001ffd8ffe000104a46494600010200004800480000ffed000c41646f62655f434d0002ffee000e41646f626500648000000001ffdb0084000c08080809080c09090c110b0a0b11150f0c0c0f1518131315131318110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c010d0b0b0d0e0d100e0e10140e0e0e14140e0e0e0e14110c0c0c0c0c11110c0c0c0c0c0c110c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc0001108009900a003012200021101031101ffdd0004000affc4013f0000010501010101010100000000000000030001020405060708090a0b0100010501010101010100000000000000010002030405060708090a0b1000010401030204020507060805030c33010002110304211231054151611322718132061491a1b14223241552c16233347282d14307259253f0e1f163733516a2b283264493546445c2a3743617d255e265f2b384c3d375e3f3462794a485b495c4d4e4f4a5b5c5d5e5f55666768696a6b6c6d6e6f637475767778797a7b7c7d7e7f711000202010204040304050607070605350100021103213112044151617122130532819114a1b14223c152d1f0332462e1728292435315637334f1250616a2b283072635c2d2449354a317644555367465e2f2b384c3d375e3f34694a485b495c4d4e4f4a5b5c5d5e5f55666768696a6b6c6d6e6f62737475767778797a7b7c7ffda000c03010002110311003f00f554924925292492494a4932492949922876daca985ef30d1ca6ca4220991a03af448f04892cb7f5776efd1d72cec4982512bead59816b1ccf3e42a31f8b72729707b9c3ad59d227fc25e70e4abe174124119349afd40f1b077ec99b978eefa36b1d3d810adfbd8b4fd6445edea0b384f64e94a8ccea350ab67f51c1e9f8eecacebd98d43343658607f55bfe93faad528d6ab5bdab546dbb6890877e4518f51b722d65350e6cb1c1ad1fda7fb571577d7aeafd6ed7627d4de9cfc90096bba8e48d95348fdd6ba1bff6fbd967fc12547f8bbcbea560cbfad9d4edea16ff00dc7a5c5b5344ced6ba1bbbfaada98a51880d724847faa3d53fb16f11e82db7d4ff00c67fd57c23e9e3d8fea179d03319a4b777eefaafdbff0043d459167f8c1fae19867a57407d6cfdebabb6d3f16b9bf6662ed3a6fd5de89d2da5b81854e38e7706cbbe6f7ee7ad1d51e3c31f971f178e43ff00731418c8fe95793e5599f5d3fc63e28f532711d8cc1a92715c5807f29fefdbfe72274cff001b5d4db634753c4a7231dda1b318b9960fe56db1cf659fd4fd1af5022743af883c195e69fe337eab6261d6cebb8158a45960ab36a668d25e3f4590d6fd167bbd8ffeba9f0e4c196431cf108716d28ac9467116244f9bffd0f5449284a125292492494b129a522b3737a83b71aa9311a3dfe1e4d55b9be6f172d0e3ca773e903e694974206668379f7d60905dac491e41636564bb26c9fcc98637cbb29b9bb3067f3f21d2f3dc81d94315a1f915b4f77123e42560fc439dcbcccb0f2c47b7ee18ca55feb7485b6714046e7bd5a22239e54eba5f635ce6192ce5bde14f359b329e3b1823e614fa6bc37263f7da47cc7b96762e5a239c3cb643a71cb15f8fe8b2199f6f8876b415dafa9db98768ee0f07c77235f4b5f58c9a9ba13fa4ac0982a39b50ab21e1a21aef70f9feeacfcae91d47aa65621a739d87d3b0de6fcba19abadb416be8669fe0dcd6bbd4f72b3cae132cd9b91c87a4f8252ff279310f4c964cd46390787e2ddab26fabf9ab08d0804ea35f163bf7562e1fd4cc7cec93d5beb57507f58b98f8ae970f4e8ac4fb1aea847fe07e9d1fe91962d6264c9104ea7e251e807d1bc7e6868e75d7e69ff0af89f33cbce58a12e28ca32f49fd1e11c7e992b36184a89d0d875f1eba29a5956335b5d0c115d7580d6003f75adf6a280b1b0724d36861fe6acd08f02b585ac2f2c065cdfa43c16f723f108735884cfa257c32893fa67e5afef35f26330956e3a24492d13abc0b1ad0b97ff194eadbf53b39ae89b1d4b583c5dead6fff00a962ea579e7f8dcea21b8d81d29a7dd6d8ecab7c9958f4ab07faefbbff000252f2f032cd003bdff8ab721a81f27fffd1f5549324929694a5241cab7d2a1f60e5a34f8a664988425396d10647e8aab200479d906ac67961977d11e44ac5204c2b14975acb6a2e97d87d4693e3e081ac9d20cea3c21725f14e625cc9c5987f34626311fbb38cbd5c5fd66ee0888583bb71ec36f4eaec60935eb1f83955aac35dacb07e6b87ddf9c8d8997e812c7eb5b8ea3c0a9dd841d366290f6933b7b827f7423922798862e6301bcd8a311971fe9feabe59c3f7a2a0780ca321e996c7cd5d476b9d5dcdd5ae6c4fc0caa8d7bea22caa3d464b981da3498f68b3f90e516decb03abaec6d8297163c35c1db1fdea7b99edde89e9586bf5434ec060b957e6273c9cd1cd1c728cb4cb3891b4a1f3cff00bbc4ba31021c24e8746a608ea831c3fab5ccc8cf7b9cfb8d422a6c9f663d1fc8a99eddeb5dbfa9e0c3a3d5b7b1f3ff00c835071994b586fb0eed861a0e83729331f2739deb3a0309f693afc9ad57317ba653ce23c7ccf360fb7187f93c73f4cb2cd8e554224d423bf896a318496b583738f00727ccab975631b0c544fe92d3afe5576ac4663b0baa6efb63927fe8ee59d7d79965ae758c3bb8001d004e97239393c04984b2f319c187a07143140fcdf2fe92bdc1925bd446baf54035708e49103e6ad6658faf34beb30f601a8eff0014aba5b8dfa7c83ef1f42b1aaaaf7b9ef73ddf49c655390972dcbf013c39b24e390441f562862e2d65fbb29712f1539ede9029dcc6c8191536c1a48f70f03e08d2b2fa5dbb5d634fd180e5a5ba75e41e1753f0fe64f31cbc321a1395f10f189e16a648f0cc853ac0d05cf76d68692e71e001f9cbc2beb3f59775debb93d4449a5ee15630f0a99eda7fb56ff3dff5c5dfff008cdfac5f62e9e3a3633e32ba8349b88e598fc3bfabf6a77e859ff5c5c97f8bfe81fb63af32fb5b385d30b6fb4f636ffda5a3fcf6fa967f22bfe5adce4e23163973131d3d0d5cc4ca4203ccbfffd2f54493a6494c492a865dc3229c8a59cd71f38f72bd6bb6b1cef004fdcb068c87d368b390efa7e73ff91595f15e706138f14b48e61319243f4615c1e9ff0019970c0cb8a5fbb54c1ae7348734c3870af37ec99825ff00a3be04c687f1427e18b65f8c439a4ced2608f14cdc0c8718734340fce77fb162f2f8b9ac3238fd8fbc6199d63fe4ff00bf19fe8b62461217c5c32094f4b7cfe8de083a6a0cacce9b983a965df4f4d0eb71b17db6750698c7758443f1f19df4b21ccfcfb99fa3ad52befbfaf58fe9f43edc2fabd53b6e6e61059766bb8389820fbebc4ff4f7ff0084fe6bf7d7458b97d3b0e96626353e863d2dd95d75b406347ee8dab50f25f0cc42267318b34b5e1864e2f67fc260f7329d371e237685189474ec41d3a8c666256d3bd8c60e49fa4e7bff003ec77ef2d6c06b5d84d69e082084f77a5958ee730ee0012d3e0421749b41a9d513ee6ea3e051c388e2f88478f27bd8f3e130c7397aa5e9fd097ef2646f1ed4625a6cc72727eca7e86f320f7685ab6db563d5b9e76b46802a194ff47a8fa8351edffc8a25ecfb4e68acff003753773be2543ca4872f1e6238871731eefb11bfd112f965fece29c9eae127489167cd5fb432adfe6282479f8205d7e7f366e60f26e9f7ab6dcb33e9e2d26d6b742676b67c1a54fd7c8026cc7747f20877f16a9278e5981079ccb7d658e12f67ed8fe8ad1203680fdae44971992e3dccc94d078efdbbfe45aa7ec17c96b18fb07e69d0cfeeaaa32aaa49f4f1c31e34209d44f8acacbf0e8e3225939981848fcf1139cff97f84cf1cb62844db3aebfb362bedb07bac6ed0cee572791d728ea1d730ba55b93e9f4fc4b8585c0968bb22bfe628377f83c76dbf9eb47ade5e7e6d6fc5c1b59f692e6b6f24eb4d560f75bb3f94b8cebbd0b23a3dedaec05f8d73775361ee07d2659fbb6315fe4b2404e271d88628f04212f9e71278a5972ff7ff0041d2f877278b2994734c4736512f6a3fbba7cee4f55fdb5d47eb0e4b336977ed8c8bfd27637838fb71e9affeebd757d0b3fd1fe997b1fd56fabf4f40e8d4e05643adfe7326d1f9f73bf9c7ff0057fc1d7ff06b96fa97d4fa767f50a1bd4ab6bface2d4ea70735d3baca7f3e97bbfd2d3f98ffe7367fd757a033501751939cf7f142301c3088008feb070f3f259395cf931e4d657bfef47f7a2ff00ffd3f554c9d324a4768dd5b9be208fbd73d05b20e9b7423e0b5fa95afaa9059a12f1f70556cab1f2a6eade2bb07b9e1c401a7d22ff00e4b7f79607c6317de728c78c819b08078247878e193f71b1824600923d27ab4c120cb4c7c1225cf2265d3a01c92555e91d4b0facdd935f4f73aca311db2dcc802873bf768b09df6ff98b731abc4a43edddb8d721d61edfc96acdc1f0de68cf832c8f2f1038cf14bf43af0c59679615e91c456c7e9e1a3d4c932e0346ce807fafeea4ec9e9d1b40968d25ad2469fca456d6ecb8b2e05b5735d5c4ff002ecffc828d97ba9bbd2f462804377e807bbf92b67dac78714782308623e9f73247dec992ff004a7fbb160e224ea4df61a210198c45f8eedf8cefe71a3b7f282a95d8fa2e2eacfd1247911cabb9358c57faac1fa17fb6d6761e0e1fda5418c73ced6892353f00b27e21c78a70c701ede4c72338c31dfa3faf8bfa93fdd66c5a8913a8eb6bdd63ae7bac768e7011e1a230b9de86438696585add0eb110a0eb4643eb66d0ced3f143b58ea9e58ee5a67e30a0e39e39cb2891cb8e771393e5fd6e4875ff009cbe84808d57674ef0fc6c6aeba086025ac2ef09fce56690f158163b73c72e1dd675f79757707bdaf6bc0f4da3907cd2e9d96e6582971963be8cf2d3fbab6b17c430c39a84092213888c35f4e33f2f0f0ff5dae71c8c09ea0eadec9c4ab207b843c70f1a11f358dd41f7e356ea5de95994f6b8620b4c073c0fd1ff002dcdfde567eb27d60a3a174f390f6fab7be5b8d47efbfc5dff0004cff08b87ff009b7d7fad756c7c8ccb45accbadb90eea0c717555d64ff334feedecfa15d6dffccd59e779486490302464bb9d7cb28f6c916d725cbf144e4cd9062c22f84cbfca4a1fa38dc6c5cfea1d3ba9fdba48cd638fac2c9879ff00095da3f72c5dcd4fc1fad38603e5ccbb4701f4e977f27fe29df9dfe1164fd66e9dd2b3b22e6f4ebe7aae1341c8c67eaeb18342c6bdbec75f57f250fea2e3e663df6f5325d5e3bda6a65646963a76ef7feefa2a8e61131c72c93f6c42425e9ebfd5ff00bd75f9a9e1cfca8e661fa9e6318000ae091fdde1feafeec9e83ea97d4f7746badcacc2db32f73abc77b750dabfd20ddf46cb9abab6f0875ee35b777d281bbb6a8a385bb884440708a075f1f53ce7319f267c872653733a7f8aff00ffd4f544924d212535b32a17d2e60fa40823e3e0b09ae63e4b1ecb0025a76383a0fd17b0ed50fae5f59ade98717a5f4c6fadd63a858c6d35801db2bdc3d4b5ed77fa46fa95d7ff005cb3fc12262e3e2f4d7dedc4c6ab1cdf61b2f635bcbcfd2923fef8b07e39cbe313c397271e33922631c911c63d1fbdf2f0b6397913711ad6b4ca9a8b9be9d0c6b58d3f41ad0dadbfd66b36fb95ac6ac5f6b281ad149dce1e27f9484fcabac6c121adfdd6880b4ba7639ab1c170f7bf9f8760a9fc3f1433f3023094f2463eacb93269c407cb8a11e297a57643c31d80bf9406d00b37aadc4b9b40e00deef91962d3599d4b16d377ab5b4bda5b0e8ed0b63e2e32fdd2430449362c437e1f261c35c638915f922c0f797922c647a51a0778ca8e0103244ebb811283e9387d2860f177f724e6bea7033ee8243870b9d3cc66f7f1f3196047b72d77bfaf136b8622328c4eea78f4ed706f0c798f9146ce7d76bd8f6992e6fb828e3d4dbdd63ac74000127cc9e50eeacd763aa77e698f92133923cbe4908fea399c9e93fa509425c41228ca22fd510b0adef12d6c8ee7e08195d53a6748db91d42e1bc6b5e3d7eeb1d1df621f57ea74f4fe9aecab017babf65358d439ef3fa305723d371e8fac595751999069eab7b83f1721deeadc1bf4f1bd3fccdacf751fbeacfc3f958ca71cb5c422018f11bbc9db83fa8dce5f95f7213cb978a3831e993db173ff00d17f7dbbf5b725bd7a8c7ebb82e2fc6c767d9f2319fa594585c5fbec6feed9f4503eaafd64774e2fe9b9373a9e9f97b836f6eaec7b5e36b721932df4f77d3fdcfa6b4f37a9f4cfab540e938f8cccab676e4b1c61c18e1eff005ac1fe1ed6ff0036d55d9f52b1f31f5f51c2c9ff002264016346d3ebb1874b29daef6fb5dedf556bc33cc9967ae1ad083bfeefaa2dd864e5c728797e6232872f232972b9643d5fbc3fc3fddfdf41f557a25d91d72db85ccb69e9ef74e40276dd63a5a3d377f2fe9bd76f5e35543daec878001d2b6fe71fdddaa4303a6636263e363b5b8f4b0451a489f17ff2d3e3518f4decf7fab6cc303471e2e2a9f31881e6604c21300c7866727a787e6fe65c9e6f9c9731232b20002318d57a63ff007ceb01a79a90e1440525d00735ffd5f53547ac755c4e91d3afea398629c76c9039713a57533f956bfdaae6ee3cd79ffd61b1df5bfeb7d1f566971fd97d30fafd49cd261ee6c6eaff00b1bbecff00d7b1ff00b8a4c58f8a5ae9188e291feaad91a1e7b36fea2749cbcdbeefae3d61b3d43a913f6461e2ac7221ae66eff48df655ff0075ff00e39749995e23ae21ce355b132072168b18d634318d0d63400d6810001c35b081978b5e433dda16ea1ddc2a5f13c72e67110231998eb184fe5e18f8fe8b2623c046b5dc8733762d5eeaa6eb0090e7703f951fbcb4ba7971c60e7924bc9749ef3ff52b3becd5335b6f6b980cc37923c15ec3c83739e18ddb4b000cf3591f0c328731fac10c6643831e1c5ff3a73ff17f499b2eb1d2cff58b6adb195b0bde435ad1249595979973c4ff003559d5adfcf70f19fcc562f70bf24b5e7f418c373c78bfb7f9a802b36beab6dfe72fb047931bee8ff354df10cd973138b14b8617c160d75e09ce5fd5e2f4456e3888eb2d506ca59a5c5deab87d16eb00f99fde437b838b401b5a0435be5e6b5eec1a6f76e74b4c412dd24769feaaabd429c3c3c6175f7b313168d6dbac3b74feb155337c1b99d618b838450891fcee6fef32473401b3a774348db8b7d8472368f38f05286e635a640c960e0e81e3f79711f587eb9f54cde9f6bfeae63bf1fa2e23c5791d4a017ee3fbb5fb9f8acd7f9dfa7ff16aafd49facb98eea4de91d42eb2d6e6171a321e4bdf5d8017bb73ddb9efa9ed6ff00d6d5f97c0f99872a4d432e2c3011cd838b867c5f364cb197e84a0c3f7981c95444a47d327b3cfe9b8b93897637546fa58bb0becb890d6d5b7dff0068f55ded6b6b5e79d47a7e574acdf45eedc61b76364d66058c3eeab26978fcd5db6474beafd6329ceebbb1dd2f1ad9c5e974bb732ddbfcde4751b1befbff007d98df41686763d1d46baa9cdc1aeeae883531cc2030f0d0dda7e839bfe095684f93e5717b7194e53bf7348f1f0717e871c3e6753e1df10cb82678e3c7865f3c2ebfc28dbc8d78d93f5aaec6cbc8c7143691e9f51ea0c11ebed30cd95c7f48d9f4ff00f49fa6bbafd0606dab15a3ecee6068a81d1a1a36b36ff276a08a6ff4dac6b4554b35ada00ad8df2dbf4936cc7ae4bddeabb80c66827f9567d25066e7b24c9300211970fb79727eae50af9e5c3fa5c4c7cce7f78c62018e2c77ede189e38c6fc5b589536dc22dbbdacdc4b4f8046c0c7c563cbebb05af1a48ec3e0a839f6e53db50d349158e07f58ab78189915dc6cb1bb1a0444ccf9a7f279464cb83dbe5ce68631edcb9990f57145a93142572abd785d309c261c270ba36b3ffd6ef3eb475a6743e8795d4b43654ddb434fe75aff654dfecbbdfff0016b13fc59f47761742fda3912733ab38df63ddf4b64bbd1ff3f73eeffae2c9ff001a394fceea5d2beae564c5cf6db701ddd6bfecb47fdb6df5ec5e894d2ca2a652c10cada18df8346cfe0a797a304475ca6cff00721f28583591feae8120e1344a904957217b999d8d8b51f55cd7b438c135a8e3de0df5d38eddb5092ff13a2d2786b810448e082b3afbabc3b0d7454d0489713a0f87b7dcb279ac11e5b20cfc50c380c81c951fd6ca5fb80feecd9a04c8708167f06bd977a6ccaa883ea3dce323c3844bf2584d069971a88968ee236ec599d6beb4f41e9bff002a3836f23db4d277dc7feb5f9bff005d72e72efacd85f58a9b7a3f4a391d27a85c0bb0ed7bc16da5a097e25ae1fa4afd562831f25ce64819e394472b223f5b28ce32862193dde2dbf4527263890083ee5691e922f4bd63ebc6060ddf61c3a5fd4baa9fe6f0a8d4877fc3d837369637f3d607d66e8bf58baff43ab2f3456dea385bdc712827ecf631c676b1aeddea66d4dfe6ff0031eb87e9f9dd47a1f526e4e3038f998ae2cb2bb01833fced590d77b9ecb1abd0beaa319d563eb6757ea2ec8b71cbdb5e2822aa3149f6fa4fabdbb9db3e85967f38b7f98c1cc72a31658661384489cb281fce4bf73fab89ab19c7271448a3fbbd9f3ee95d6f3ba49c87e2ed7d7955ba9c8c7b5bbab7882cfd255fbf56ef67fe08bd0fea6742e85d2b06aea0d78ea595955e994d135b1bc3a9c6693ecd9f42eddef587d73a3607d67cfb3a9fd59b6b363ac15f510e6baba43c8ddf6da4edfd2ffa3caf4bfc27e9bf3d757f57ba0749e8781f67af2acbb7bbd5b4d86017c438d357f8267fd3fdf51fc57e238a5808e5f24317333e1f7f1651c2251ff59c49c18889fae2658c7ca43b0c1d3ed915b3d3b2261bed77f66109f439d3f67b8bc379617190836bb73c3eb61654cd1863593e0ac595d7901ae043720b43881f9d3c7e45cd898cb19c3db80c98a88f6cfddfdfe3ff0037fd66e5189dcebdfd55e6d57537077b98e9f1e429331322c30dacfc5da0536d19a5db1a1e08f386ff009cb4b0f19d4b497bcbdeed4924903fa8a3e53e1a398cb53865c7104f17b9a7f8aba794c46847d16c2c218ed25c66c77d23e1fc956e124eba6c3cbe3c3018f18e18c5a86449b2a48249d4a87fffd7aff583301ff1a2cb2f77e8b1f2b12b6cf01bb6b9ff00c16c5eb6bc63fc63615b8bf5bb2ec32d665b6ac8a5c2470d6d2f735ffbecb6a5d67d5aff00197d3afc566375db3ec7995b769c83269b6346bf78dceaaefdfa9eaf67c529e1c3380b11808903bb0c2404e60e9abde049660fac9d00b3d41d4b176c4cfaccfef59d99fe303eaa61b4eecf65ef6ff83c706c71f847b7fe9aa831e4268449fa329947bbd118585f5ba8ea9fb1b2b2ba2b49ea2c6035edfa45a0fe97d39ff0ccab7fa3ff0008b93eabfe369e496746c18e7f4f947f263d4777f9d62e3f3feb2fd60ea3974e4e567dcec8a9e1f8ed67b5ac78fa0fab16af6b9ffd8f7b14d1f86cb251cb18f0c4f1d64d76dbd2b0e703489367b31e8bd52ac1cef5f2ab1998992d3566b2c02cb1d53be9595b9feffb453fe0d7679167d59faa1d371b37a6d0738f5069762e4fd32e0dfa4db731eddb46c6ff0081abf4cb3faa7d51eafd67129ebf81d39f8d99947fca1d39d0c9b3be7e26f733f4591f4df4d8ae744fa83f59aee9cfe99d5729b81d2aeb1b73f119b6ebb783bb756f8d98bfcbd8eb13b9ce5b94e60094a4600f08cd86123019383c20b7199c6c55f58c8b93757ff3c30afcfa28f4baf60c0c8a993e95f438fe822cfcdcbaff009bf7ad1fab5fe2fecb48b7addae6e3be2cb3069710c735bf4066d8d3b6c737e87a752f40e91d0ba6748c31838540652d76f25dabdeff00cebae79fa763bf795cb31aa7b36110d9986e9afc950cd3e6444e1e5a51872f120e2811fac8c63fe4f8ff00778d96308589487afa91b38fe9502b651855b69ab146daa860dacf4ff35cc6a355998ad6cba9879d341e1fbd2ae33a66331c1cc0e696f0438a39c6a1c65f5b5cef1224ac887c3f9b392594ce11cb33ebe28fbb097f587f5db07242b868d0da8d172dcebb3ec15b1bb6b69d4787cd1074eb2db497fe8e910180730345a8d635a0340803b052da1588fc2a12f567c92cb3241991e88fa7e587f7561cbd222822aaa6d4c0c6f03c4ca22784968c622204622801418d492509d394a49249253fffd0ed7eb67d54c4fac982daac71a72e8dcec5c90276177d2aec6fe7d166dfd235796f52fa93f5a7a6bcb6cc0b322be05d883d669fec57fa6aff00b6c5eddd9267d377c168723f7ae1f470fb7feb18337b77eabbf07c05bd07acbdd0de9396e71f0c77cffd4ad1c2fa8bf5b3323d3e9cfa18797e416d207c58e3eaff00d05ee2a167015b97deba0c5f69621ed75e2fabe6bd33fc525ce21dd5f3c344eb4e182491ff00862f6b767f66a5da746faabd07a280703118cb7be43fdf69f3373fddfe62d6f0482cee67ef57fade2af0f919f1fb7fa2ada0f3aa780904954d59540249d324a5270924125293a4922a5249249294924924a524924929ffd9003842494d042100000000005500000001010000000f00410064006f00620065002000500068006f0074006f00730068006f00700000001300410064006f00620065002000500068006f0074006f00730068006f0070002000430053003300000001003842494d04060000000000070006000000010100ffe10e97687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f003c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e203c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d2241646f626520584d5020436f726520342e312d633033362034362e3237363732302c204d6f6e2046656220313920323030372032323a34303a30382020202020202020223e203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e203c7264663a4465736372697074696f6e207264663a61626f75743d222220786d6c6e733a7861703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f2220786d6c6e733a64633d22687474703a2f2f7075726c2e6f72672f64632f656c656d656e74732f312e312f2220786d6c6e733a70686f746f73686f703d22687474703a2f2f6e732e61646f62652e636f6d2f70686f746f73686f702f312e302f2220786d6c6e733a7861704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f2220786d6c6e733a746966663d22687474703a2f2f6e732e61646f62652e636f6d2f746966662f312e302f2220786d6c6e733a657869663d22687474703a2f2f6e732e61646f62652e636f6d2f657869662f312e302f22207861703a437265617465446174653d22323031302d30352d32315431303a34353a33392b30373a303022207861703a4d6f64696679446174653d22323031302d30352d32315431303a34373a33362b30373a303022207861703a4d65746164617461446174653d22323031302d30352d32315431303a34373a33362b30373a303022207861703a43726561746f72546f6f6c3d2241646f62652050686f746f73686f70204353332057696e646f7773222064633a666f726d61743d22696d6167652f6a706567222070686f746f73686f703a436f6c6f724d6f64653d2233222070686f746f73686f703a486973746f72793d2222207861704d4d3a496e7374616e636549443d22757569643a46464439464437323842363444463131384632394534384335384536304634362220746966663a4f7269656e746174696f6e3d22312220746966663a585265736f6c7574696f6e3d223732303030302f31303030302220746966663a595265736f6c7574696f6e3d223732303030302f31303030302220746966663a5265736f6c7574696f6e556e69743d22322220746966663a4e61746976654469676573743d223235362c3235372c3235382c3235392c3236322c3237342c3237372c3238342c3533302c3533312c3238322c3238332c3239362c3330312c3331382c3331392c3532392c3533322c3330362c3237302c3237312c3237322c3330352c3331352c33333433323b39314136363236323935383937314539433939394430323834353841324441462220657869663a506978656c5844696d656e73696f6e3d223230302220657869663a506978656c5944696d656e73696f6e3d223139312220657869663a436f6c6f7253706163653d222d312220657869663a4e61746976654469676573743d2233363836342c34303936302c34303936312c33373132312c33373132322c34303936322c34303936332c33373531302c34303936342c33363836372c33363836382c33333433342c33333433372c33343835302c33343835322c33343835352c33343835362c33373337372c33373337382c33373337392c33373338302c33373338312c33373338322c33373338332c33373338342c33373338352c33373338362c33373339362c34313438332c34313438342c34313438362c34313438372c34313438382c34313439322c34313439332c34313439352c34313732382c34313732392c34313733302c34313938352c34313938362c34313938372c34313938382c34313938392c34313939302c34313939312c34313939322c34313939332c34313939342c34313939352c34313939362c34323031362c302c322c342c352c362c372c382c392c31302c31312c31322c31332c31342c31352c31362c31372c31382c32302c32322c32332c32342c32352c32362c32372c32382c33303b4643373741334641453637413842324236424230353434413436323044414131222f3e203c2f7264663a5244463e203c2f783a786d706d6574613e2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020203c3f787061636b657420656e643d2277223f3effee000e41646f626500644000000001ffdb0084000202020202020202020203020202030403020203040504040404040506050505050505060607070807070609090a0a09090c0c0c0c0c0c0c0c0c0c0c0c0c0c0c01030303050405090606090d0a090a0d0f0e0e0e0e0f0f0c0c0c0c0c0f0f0c0c0c0c0c0c0f0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0c0cffc000110800bf00c803011100021101031101ffdd00040019ffc401a20000000701010101010000000000000000040503020601000708090a0b0100020203010101010100000000000000010002030405060708090a0b1000020103030204020607030402060273010203110400052112314151061361227181143291a10715b14223c152d1e1331662f0247282f12543345392a2b26373c235442793a3b33617546474c3d2e2082683090a181984944546a4b456d355281af2e3f3c4d4e4f465758595a5b5c5d5e5f566768696a6b6c6d6e6f637475767778797a7b7c7d7e7f738485868788898a8b8c8d8e8f82939495969798999a9b9c9d9e9f92a3a4a5a6a7a8a9aaabacadaeafa110002020102030505040506040803036d0100021103042112314105511361220671819132a1b1f014c1d1e1234215526272f1332434438216925325a263b2c20773d235e2448317549308090a18192636451a2764745537f2a3b3c32829d3e3f38494a4b4c4d4e4f465758595a5b5c5d5e5f5465666768696a6b6c6d6e6f6475767778797a7b7c7d7e7f738485868788898a8b8c8d8e8f839495969798999a9b9c9d9e9f92a3a4a5a6a7a8a9aaabacadaeafaffda000c03010002110311003f00fbf98abb15762aec55d8abb15762ab5ba602aa44e408be49014cd2bbe4b8ab9a789a35236df20620f35126f7229dfbe46448fa58c85b9453ed638e533cd88880bab923220b3689fa7242611c21ba8f963cd1c2ee5911680016aa3b65809eacb86949d89d948ae2262d22414dd8f8d477a8ae037d189c803c8fcfbf9f1f94bf95f6c2ebcfbe7dd1bcb4a41fdddcdd29734ecaa9c989fa333f4bd9b9f53f446fe43ef21c3c9ad8c0d3e13f3cff00cfd4bf25b457b9b4f25e81aef9d2f9188b791912d2ce515a0659aaedc4ff00a99bfc3ec5669ef94f091f1fd2e0e4ed7313b0dbf1e4f9bb5dff009fb17e62dc3d343fcaed2f468f6e3eadecd7adf36260419b9d37b1b8a22a52e2f857dd2fd2e24fb6a64ec2bf1ee63167ff003f56fcea86eb95e7947cbf7f6c4fc56e9ca06a7873dcfe199c3d8bc2473fbffe29a0f6ce5fc57ea7d27f95bff3f56f247982fe1d2bf34fc9379e433390bfa6ec27fd216895db94d548da31df60d9a3d6fb179b182719e2f2343edb73b176c8dac7e3e4ff00ffd0fbf98abb15762aec55d8abb15762aa6f913ba421d88a6fd328331886e953675037fbf1998c8711e48116337fe6dd1b4d97d1b9be8a392bf649dff56721da1edde83433e099b3fe77e88972a1a39c858089b3f3468f7c3f717d13fc9bfb332fb3fdafd06b8fa655f097fc48633d2e48f44e127e746e402ff28dff001ce9a1961217136e31895deaefbd6bd80c3e28068b1a92f1282684fde326616cc44b6ef4a6d5f7c81918f461234a5233706018293d180afde32c3311dd61b20a6be8ace196e2e1d6386152cf2b32a2f11deae401ef539287ef392cf287c0df9d7ff3f10fc91fcb392eb48f2ade7fcacef36c65a35d2f4572f6d14ca69c2e2e1558a1aff2ab6747a0f643364fde4fd11efd8fd9c4eaf51aa31e5bbe576f307fcfc0ff00e72c78cda258ff00ca92f20ea0795a4ee5ac5fd26db94376034b36de28b9bfc32ecaecc3531c531fd6fda1c784f265dde95e42ff009f59f91d2e9f53fcdbf3feb3e7fd52501e582dddac373b9e528772d53ed98daef6d679470e18f0f99a3f6537c745c5cdf677953fe70f3fe71b7ca36d041a67e536837535bec2fb50b65bbb827fca924eb9cde5edbd54c519edee1fa9cbc7a4c70e8f508ff283f2ba08beaf0fe5fe811c2451a35b0842f1f0a05cc0fe53ce0ed23f67ea67f96c7ddf7bc2ff0033bfe7093fe71d7f3374eb9b6bcfcbfd3fcb3a9cbc8c3ad6851ad85c72a6c59a21461f319b3d17b45aac040e2b8f750fd4d393478a5d3ef7f3f1ff00391fff0038fbe69ff9c71f3eb79475e985fe95a846d75e57d710523b8801fb14a539a7ed67b4761f6ce2ed0c4251e7d79edf63c86ab492c727ffd1fbf3c8e2aee471577238abb91c55dc8e2ab19e9df2b9cc479a40b59eb0dfaedd71c93e01653c2ef501e98632e216c108f300a09dc13f70f1c84808c499f4650f56ef19f3a79e995a6d33493fbc078c973fb23c789cf9cbdbcff826c23925a6d21dc6c7e5fd287e97a6eccec9331e24bf1f6bc6a52d33179099a673fbc964dcfd19f3beabb432ea3219e4364fbbf407a8c58620292fa7182f52855a9b31153ed4c704f313c50355eefd2cce084b60194e91e6bd6b482860bc6b986a39c52fc541f339dd7b3bff00044d77664c026c7f9bff00105d4eabb2e193a6ff008f37a3c5e6bd435d85bf42dec5697d08ab59cf186e5ee0edd73d8bb2bdbbd576dc6f0caa43a50fd318874797411d39a98b1dec687e61f99acee05bdec76ef3ab7092df87a6c3dc9f8853393d5ffc14bb634398c27c81fe87fc41727176563ca2c7e3ed665a4fe6669775e8c7a846f68f23fa7ea37d80dee40d86775ecbff00c18b4dadc91c1a81533d773fee7180e0ea7b1f24378f2fc79be6cff9c84ff9cedfca7fc95b8baf2d6972cbe7efcc58978c5e51d2ea5609187c26ee500955ff00541cfa27b03b27f95409c65503d6acfcb6799d66a0611479be3ab7fcafff009cc8ff009cd5962d4bf3335d7fc9dfca8bb91668fcbf17253736df6908b404194329f85dd96a7f673a2cf9fb3fb36e388714c6dfc5fa6c3acc38f2ea0df47df7f929ff00386df91ff92715bde685e5c4d7fcc7100479ab59517576ac47c5e8971fbb53e0339bd6f6ee7d5fa09a88e9b7df4ed3168843eaddf56fa2b471c781614e4a68683a6e3a66a38ecd39231006c221145075fa773838699552a05a753cb7db6a6498916b4a13db1a5e10b7d32052bf2c84bc97843f2ebfe7ea1e4fb3d4bf22bcbfe719625fd27e51f31dac56eddfd2d4498a415a6f40a0819d7fb17a9963d5709fe207ec74dda900236fffd2fbf15c55d5c55d5c55d5c55a276c554189f8bc32bc9c92a44aefb75eb8ca02628a233b2c675df34e99a147caeee163a1a52bbfdd439c6fb49ed769fb18081fa8fbff00e264e660d2cb26fd181799bce1730e91198d05bde6a5516b19352223d58fbd37ce0bdb3f6ea5a4ecd311b4e5b7e3d2439fa2d0f886fa078ac16f2dcdcdadac64b3ceccaae77240deb9f32e830e4ed3d4708faa47eff93d7e9c8c3837e889bcb67b19e4b5976922201fa731bb63b367a1d49c52e62beebef29d366192361d6061fae590ba8f9c7ea51cf813b5732fd9e1196ae303c89a4eab21840d1645e69f2e3e86cb730ef6572683d89cedbdb2f637f93b18cf0fa4fe3f9c7ee757a0ed0f18d1e6c62d2ea5b1b88a6858c7247f11997a85435fc7388ec2ed59f66ea639a27dfeef91763aac0320e4c83cf9e63f2ac1a7f96350d475eb1d1b54f31cc96ba459dd3aabddc8dd1556b5a8f967b6fb6bd89fcabd8f0ed0c02f6123fd5b03f888e5eeb2f35a6d4fe5f21c77b5b1666652c4868994f195505558f8e7cfe4faac737ab8e2e28a5fe4ef20fe5a41f989079e6f7c91a35ef9a881041aecd0ac9776cf4d8c618109f319ee3ff034ff008226a7b34fe5731fdd9e5c87bb9409fb5e6fb5bb1e121c406ff8f37d1f0f9fad6d3529f4cd4a092d5219784576d4f4dd4d28761ef9ea31ff0082663c1a81873f53f8e507551eca9787c51fc7daf4982e12658e48983c520e48cbd299ea187598f51884f19bb1e7fa5d34f8a33a28e14cc911add9892e1ec3184ed2bd77eb9620afdbdf1558d8abf2f7fe7ea3e67b7d3bf21f41f2c16fdff9abcc96d2c07c174efdebff00c4b3abf6430716a8cbf9a3ef74fdb12a800fffd3fbf7c462aee23156a83c7156b6f1c16ad1f9e2a8792b46a52bdb2b07d454bccbcede6f5d0e31676a4497f36d120fd934fb4db678bffc12bfe0813ec8fdce0fa8fe3ac4bb8ec9ecdf1cd9e4f17d1637d6b5eb4faf3fd66591cbdea9dc788dbdb3c57d9ccf9bda3d7819cdf5e9ef3cb87b9dfebb10c18f64679ce7f575d9d41dade311fdfb7f0cc7ff00825e43fcadc1d0447dc1bbb1e23c0f8b7e4c8565d7ac2061502195cfcd0a81faf1ff00816e9e393b7211972a2c3b4b270602022fcff65f55d79a555fdddc408cbfeb0af2cdcffc19fb3a3a4ed6128ff1447d80799ef71fb1f35e2dfa1610adf153ba9040f91ae79569339d3e78641d083f277b9f171e32f7ebd5875ff26191a2f5cc96ab2088ff003a8cfacf518f1f6efb3dc637f45f5ff8ef4788c32387523def0060c241b7375279c6db05af6ae7c8863648ee7bbc721314f354ff009c56f2cfe60fe6ae9ff9ebe69d73509d3ca7656f07967cb16923471c5a85997e7707b7ed0a0a6f9f5f7fc0e3b5a38bd8ec98f28b078bef3dc1e0fb4f198eb2bcde8e4c8ac564054d1cca58f27a93b74cf92b570129ca71ea5ef6151c409ee08fb1477beb08a31567957953c333fb0213d4eaf1e2e963ef7035990809d79ac71d6658eb505155bd8e767ff049c71d2f6b08479708fb87bdabb364258402cfff002d7cc3291369176d5786ad01ff00217ae7a87fc083da226f4994ee397b80be83f4ba4edbd088d4e2f51d3f5bb1d4d9d6d641218642b22770c3b114cf63d07b498357a83863cfe3fa9d14b0988b29f87e87efcdde53c25a695c1ae64458b792558c46287f3dff00f3f47fccb1e67fce0f2b7e5eda4eb3d8fe5de966e2f591aa0de6a6692230f155897efcf57f62bb36b01ca7f8bf1dff00a1e4fb5f5367843fffd4fbf98abb155363ef82d0a1cd881e394e5320400cc85a64614aef5cb620f56a06ca5ba9df2d95a5c5d39f86246603e59a5ed9ed3868b473cc7981b7bfe45c8c58cce403e4ad42fe5d52f26d4a7625ee1d98f8000edc7c067c21ed076be5ed4d5cf248dee6b972f907d0bb3700c58c5275e4b9238f5eb3054033f20addcfcf3aff00f81b67183b50425fc408f8d1713b6b8a5023b919e77b16b3d7249083e95f2fa818ff0030ec3337fe09bd9938ebbc53f4903f1ceda3b1b383010497cbba9369dac69d785680cab14d5dc047d98fe03399f633b54683b5b1e41caebf1b173fb4349e262203d03f31e34b8874bbf8fe350ce9c87421c0a67ab7fc1930435d8316ba1eef86deefbba3a1ec7db21849e4c02862d4dfb9cf9e656480f551cbc42ba3cf3cf7e77fce9fd27e42fcbbfcbcd0238bca5a85c3dd79e7f30ee08616d6111afd5634a82b2bf40dbfcb3e95f61fda5d3693d9f962cbf5007bff004021e4755a598d48310f408d259ca4318679276548dcf52e3a939e018f46353abe0875950f9f9bd5990c18efad3dc2fa48bcafe524b465569ee1046c8bd03c9d5c8f0f1cfa3bb4f2c7d9ff00677f2f2eb1af8ddff4bef790c713acd5711eff00c773c312311a962406e5ce59d760df46f9f30ce7c66a3ccbda4c9e0009e4f48f25e8324b349abdca98ada0158c36c6a2a6b9edff00f03af63f3e189d5e7151af2fd12fd0f3bda7ade21c11e6588eb572b75aaea1701b92c92908c3a6c00cf33f6d352757da99260df4f90f83b1ecec1c3009df91cbaf98ad910f26304bc8f5db6eb9d3ff00c0b2790f6bf0c7f9a7bbb8b8ddb5b625971abdce8de64bebeb093d231dc7efe302a8cb415aaf8e475bed3e6ec7ed832c2794b7e5fa6326ac3d9d0cd8813ccfe3bdf43e87addbeb7a75a5fdad785c0a91e07bd73eb1ecced9c7da78613c7cc817f8203caea301c333129f86715a9dabb674323436e6e356fe4d3cacae07ecb74cb01b0cf876601f987f985a57e5af917ccbe7cf314e22d2fcaf633dede034064f4d4958d3c598d00a65dd9ba69eaf2c710e7235f8e43ed713c6118194ba3f924f3cf9c357fcc2f3a799fcefaec81b56f346a32ea176ca2888d237eed07f92ab40067d1bd99a1fcae2101ddf8ea5e0f365f1656fffd5fbf3c8e2ad7238aac6df2b902953aee4659489251aaea116996771792d7d3810bb5054d17db34bdbbdaf1eced34b29e9f8ee2cb062e3950788d8f996f75f7f305adc3715b8453a6a76e001ad7c09cf06d07b47fe8927974b7d3f5f947ef7a2fca782632ad83cbde32008c865e2c55d18508e277ae7ce9a8c33d2e69427cc1a7abd3cc00ad6b34967341736e3f7d6ae1a31ed5dc7dd99dd93da52d2ea6198738907f1b23518c65891def6fbd8f4ef3be8a0c478dd449fb927660d4fc37cfa775f3d17b6bd9971fef00fe973ff00601e3b0f1e872d9e5f8f7bc52f6c6eb4c9fead7ca639c2d1221bb39ecc9e3ef9f33f69f636a7b2b318e48d51db71fa097a7c5da10c82bf1f726326bd752e931e8d783fb97568a4ebca9bedf2ef9d06afdb1cbaceca8e8643615bedd0dff347ded78fb3c0c9e20fc7da910a152c7604d37eb9c3e58faf67610c7c0e8bd573c111dc4f42406a23f1fb2587626bd333f1e59cf1f8513cfa7c5ab2017c4f48d074887438bf4f6b2f5645adac14efd881e39ec7ec97b2f1ec287f28eb3bac0ffa44cbfdcba1d76a0ea27c1062bab6ab7de67bff005552465a98d2de11cc2a9fe7a528738fedaed6d5fb55ace180f403b0dbe077102e76831c34d1dd9cf973f2f2595a2bdd5c08ede1de2b553c837bbf4cf42f627fe05b974d946af57f48dc0dbfdeccfdce0f68f6d0fa61f8fb153cdde6cb2820fd0da34b13cae38c854fc217a6c69d732ffe087ed9e3d2e13a3c1b6d5f8b8fe970f41a53925c7279390accb18f898748c6ec4fb78e7ce7e1c8cfd3ccbd4f8830c5e8de5ed3ff00c3ba7dd6b9a8a186ea4564b646fb547e951db3df3d90d07fa1ad0cbb4b51b12397d9d38bbff9af3dacd41d54c407279dc970d3497172ff006a772d203fc33c2bb4f31d56a2794ff1127f1c9e9f478eb180f52fcb2d4cc37f75a6331f4e651242bfb2b41bd33dc7fe021db7396b0e9a676a35f007b87977bcd76f69847d41eead22228e5523c7f8e7d4b1859b0f233cbc0b1daaa581dba83ed908622276d909587e277fcfce7f3fa3b9bad23f20bcb572be85a18f54f3ec90b029eaa1e567665857e2435771feae7a7fb13d94627f352e5b81f71ebfa1e5bb7751c3fbb0f81bfe715bf24eeff3dff3a3ca7e5111b3f9774f95754f37bd094fa8406aeacd4a02ff006541ebf4675bed076f4b4588ca3cff001e4e9fb3b078b3a21fffd6fbf15c55d5c5549cd3fae3490a0cdb13e3944b27a58c8f479bfe65dcbc5e5b984668d3cc90123c1ffdacf2ff00f8296fd91295f7fdced7b1e179c02f04d3af5ec6eade743429b38f151d73e4ff0066bb6a7d8fac19872e47ddf22f61a9c408e1663ab7978eaf6f16bba2d2717407ad083b6ddfe633d6bda9f6423dada68f6869f9c859f9f9c87dce9f16b0e33c12e8c0e6b79e0668248248a5077520febcf1ded1ecdcba1c9ea1b7c3f5977fa7cf190b46e9fa8df69328b8b39887afc511e87e8ccdec5f68b59d9b31934e6abddfa416bcf821a81459a5c79dad6f6cde2d5f4c6bb90412bc6b1aff007aea3e1881a6dcba67b0687dbfc1dbb87c1ed386ddf67fde463f7ba1cdd9e74c78a05e29f963a77e65798345f33f98ff003134ed27ca907d75bfc27e53d31fd692d6cd091cae64fe76d8d31ed6f627b132767cb53a23fbca27fca7fbf957d8dfa3ed59718891f8f93d87c87a45a6b3a85cfd6979c16f10603dcffb59cf7fc0a7d9ec5da5da328e61b08f9f71ee23b93dadda32846a3f8fb143cd9a01f2eea70b5b865b4b9944a9e0a0751947b7bec7cbb0fb406780f45d8f9ff5a47ec6eeccd47e6711b3b857b89ae7cdfa959e9b6720168110ccdde3a756fa736daaeda9fb53aa869f1ff777fab7dc44fdae2c40d2c093cdedba3f97f4ed22048e0b750ca073969bb9f139effecf7b21a3ecdc51301bd7f4bfe28bcdeaf5d399b253e9248950190855ec33a5cfabc5823c539547e2e1c2267d1e61e61b1f26190c972d6d04ddd53663f76792fb4fa1f66f5b3f1f587fe9affbda779a2d4678ed1fd0c306b3e53d218369da79bbb8afc1406a0f8d5b383d47b4fecf7640ff00028f11ff009283fdd82e7cc67cc6a67ee62bad6b975accfcae99a38a2358e01d07ce99e5ded27b55aaedcae2da0390dbefe189773a4ecd8e300fe3ef491803e1c339333e1d9d989706ccd3c8f13bebb0ba92112026bef9ea7ff023848f6b198e913f71749daf30719676df993a6e909aeb798ae63d3ed745134f25dc8688208c5493b76cf75ec2f6dbf31a83a691dc7e3f9bfa5d20ec4c99f84c05dfe3bdf32eb5ff0039afa0e97f911e78fce59f429b4c5b3d52eb43fcbeb1ba6a7e9cba51c6da5836a98d98924d36033da3b0b17f29e58400abfc797dee3fb53d987b2070f159af97defe757ccde61d6fcd9afeb5e6bf30ddbea7e62f31df3deead72e4b17bbb86dc8ebb0a8000f0cfa1b068e3a6d38c711541f2796439f2efd5fd197fce047fce39bfe477e54c5acf98ad560fcc0fcc068b53f313ba8f52d2dd941b7d3c375a20ab1f7639e23ed476d0d566a07d11e5efefe57e4f59d9da2f085d6eff00ffd7fbf7c462ad71c550f32d569ef80cb8520d241abde269b65797d237111a541f7a668fda1d74343a39e63d07e3bd8e8f09c996bbde3961793f9abcbdaa59dc307bb4999d4fd355233c174bafff00457d913c133ea8f2f7dd8e907a69e21a6cd1974796483d27657079248caf5ec46c73e7ad5e2c91c87191b835d3a3d4e203346d3ef2ff00992f741998c14bab676abc04d280f523e59da7b23edbe7ec1988c85c3bb61fef645d76afb2a39073fc7cdea3079b7cb3ad47e9de4639b514c52a9a57a6db67bce9fdaeec5ede808cc593b57aff00e262f399b439706e0ec1e3df9eff0098ff0096ff0092ba35ac973a1cbe65f3a798dbd1f227e5fe9449d4755bb3b7185054a28247262299dcf66ffc07fb275a78cc7d1cc9b9ed62c7f9416eb25db7986c0dfcbf5217f223f2aff32ee747bef377e75eb0adae7995feb5a5790ec97859e836d27c5142a41ab4aa0d1cd7ae6276bffc0c7b28838f4ff48febff00be9b9183b5b3f33fa3f533ed77c9baa7968c977a6ccf7f6b28a5db4edca4049da807619e33ed3fb059fb0714b369cdc7e1fefa52fb9dd697b47f3044243f1f2467e594a1355be8c7c22500b29f1df23ff00eed012d7cb0cbeaa27ec3e5e4cfb6600e2059efe60e9df5ed0a47e82d1d671ff3cf7cf48ff82ef664b57d9c25d011f78f30e9fb2e423980ef625f95d6d194d42f36f5a4280ffaa2b4ce63fe049d8d0c60ca3f8dfdeecfda0cb531009f79dfce274654b0b0512ea138a8077a0f978e74bff046f6c3f93c0d1e03eb3f8eb123ed759a0ece394f11fc7dac22cbcabe68f31c715cdf6a6d0c736eec769547801519c068fd94ed5edc8f165351ff0030fdd28bb8fcf63d27a40fc7c8a3a6fcb0bb55261bf49de9feed5ff9b8e4b37fc07b5b28feee57f08fe9c8c23db9e5f8f9312bff002879834e27d4b2f5e302beadb91c7fe07735cf3dedcff81af6a7671b9c6c7be1fa265d861ed3c593aeff001fd4c6da199090eb346475431357efa670f3d265c4787877f83b4c79a07609969da16a3aac9e8da5b9e07fdd92a95fe99d2f657b19aded290e08f3feaffc5071337684706e7f1f63d4152c3c8fa2d659166d464013d8391d7e433dae18b4bec47677a7d59e43cc6e7fd3c5e77c5c9da39c0e97e5fb1f907ff3957f9d771e60d42eff002ff42bb1f558a53fe24d4213479ee09a8810edc547ed76a66a3d90ec894721d766fae46c7e93b1adfdcfd4dff036f63fc3c435597a8a88eef91fd0c67cc9a0cbff00395df92de5af2df92e7fd11f9a9f9236b30d3bf2e2dc88ed357d3d97f7b25827433a85ad0d49e9b75cfab7fe079ed5e38670326c07e3b9f05ff8357b03a8d06acea202e1337d3e5f57cb64abfe7df7ff0038c337e6979fbfe565f9cf45bb83c8ff00979a80161697511852ff005ab76f8a274715296cc2b2277240af519e99ed8fb53e1c0c30cb98f8fdcf82765e9270ce091c9fd14c48a140500003603a0cf25e7bbd7bffd0fbf98abb15517c890a5e5bf99d3345e5b68c371175324321efc5bc3df6cf1eff008336aa787b1c18f5957da1dbfb3f012d40b783e91aadc68f7e979192148e12c7fb057c69e39f33760f6e4f419c4e0763cfddf105eb3b4b4e2619e5d68fa5f99c3de6997696b7d228125bbeeb51df89a75f1cf57ed3f66b47db678f01a99f7fe9310e9b1eaf2e90f09dc7c127ff00026b4a422884d4f1f5f90017fcaa5771ed9cf1ff0080ff0069e49797f99ff551cc3db5131dceff008f2603f9ade726fc99f2f25fe91e55d47f327cfbab936be52f2b58c25a37b9ecf31068a8a4d4fb0cf50f63fd8aecef66c8c9ae95c86fca5fef252749acd4e4cdcb9301fc93fcba8bcbbe63bafce2fce6d417cf7f9f1e688fd59e53f1d9797edf72b6962082b18506951be769ed07fc1abb3f143c0d26e06dfc5fefb1db818bb2f21dcfe3ed7d5707e695bfa8deb6973ac121f826047c4077e99c4e2ff82f4619009c76f7feac6e68ecb91e5f8fb59de9face99e65b4792d5c382a5248cf515ed9e91d95dbba0edbc4440dd8dc7abf488b8d974f934e412f1ab1ba4f2f79ce7e4785bfd60c730ec10d3811efbe7cebd8f3c3ecf7b484f7c88ebc8ff00a6777938b3e9fe0f6ef31fa571a0ea2acfc52581c72ad36233e86f6c44755d933ae521f8ee741a524660f17fcbed51ecf52fa9311e95c5bb1f7250fc27e9ae7817fc093b7ce935d3d3c8fa68fdc7c8f777bd076ae94e487889be97631eb7e65d5756bbe2d656127a7172ecea3ad7db37becef66c3b53b5a7da39f7844dfc6881c883fec5c1fcc4b14780275379ab54beba7b2f2c69eb72206e33ea127f7469d97a6755adf6c357afcc70e823cbddfefe21c4961a16533865f3f0f8e5b7d36551bb448c549f913993a1d47b4a3702c7fc92597823f05b7f36cda6b95f30691269b09004778ac268c93d8f1514cd8e4f6af369bd3ac851f78ff7a1ae3878f92dd5b5d371a78bbd045bea2411cedcd2bc4fed0ad3a78661f6bfb4d0c9a532d38b3f8ef0d91d34e077799dc79f75865e36d1c56cb5292332706561d763d73c6353ff00051ed1e3308c6872e71ff88779a3ecc8643eafc7daf9cbf333cdb79e61b7d77c97e5bf30dbaf9faf74ef5ec6d2e1aacc84904f6e2c7f64e73ba139f2ea06bb5c09c44f3dbfdef5f83df763f66c747c39cc7d23dff76ef953f313fe711b54d3ff002d879bf40b99755d734588dd7990cf52fa872de4640492af19e8a3ed67aaf6376bfe7207270f0c390eb5f607d27d9aff0082681af8e9727d12343fa3fec6cdbe30f2bf99f5ff0024f98f4af327972f5f4bd77479d27b19002ca4d7ec3ad47246a1046767a1d64b4f219319a21f6aeddeccd3f6c6925a7ca2c4879fe823ef7efeff00ce337e73797ff38bc8835cd1f4f8749d6ade503cd9a6c51aa0fd20c00793e05552642363df3d37b2bb4bf398c19fd5f8f27e10f6bbd9897616ba5865bc4935eef9cbef7d5d16e01f6cd83c73ffd1fbf98abb1543c8428a9ed8104d3cbbf33e179bcbc481516f3c72c87fc95aef9e3fff00065d364cfd9551e40dfca8fe8775d82787501f3b21206ed507a576cf8f09313c21ef27525ead2a481e27689a9fde21a13ed991a6d766c078a068fc1a25a784f73cd132ea77f2a3426ea57045177fb2dd9e8295a7cf36bfe88b5d5c5c7f647f5359d1406e89d2b49d435abaf434f579a5e3c679c371287b9121af039bbec0c3da7ed16a06089b1d7e815fee5c2cf974f841e2e7f17b4e97e43d234bb78cdfaa5cc81fd596561c50378015e99f467617fc0db45d998ef26e7afd43fdf979ccbda79321a8edf8f72adc8f264ecd6d25c592ca7a27a82a09dba571d560ec2d644e13ff004f3f62239f510defee62775a24fe54ba8b58d0e4373a74ad4bc801a80add5946f5a6717a8f64c7b3b946af472b87bba777aa52fb9cb3ac3aa8f04b9b0ef364f15c6aa751b621e0bf863743d0d53ed6de3b8cf38ff821e5c3a9d7475580f41dfd00effd4ef3b3315e1e0973098379d6f9f466d2a74123b47e999d88073270ff00c11b5597b38e965b9aabdbbffa9fa5a076446397c4fc7dec5b4db9934fbcb1b94ab98be0929bfc241e9f4e713d95db1f93cfe24399fc771765a8c4324387a32e86fe5b5f254fe9164bbd56e5d652a39105de87e5b67ad7666ba5a5f676ef799ff7feeee79dcd82b31be403d25a2ff087954cd656a269adadc318d4ecd253725be79ea38f1cbb07b3a3a8c02cc80bf8fbf8bee75265e364a1c915e4e97cc13c6f71acc892453f16b565653b1dfa019b5f64b37686a0f8b9be93fd5fd0c33f87c3e9e7f166f35ba4a8c8ea24523756008fbb3bcd662193118916e209d3c8fccbe45962e7aa7971dad6f0558da2b7089cf8f7fbb3c5fda4f627550c6755a1fac59236fbe72afb1dce8b5e38b87272fc793c2ff303cc7a8691e53f316a11f9786bdafd858c92e95688c22135c2a9fdd2920fc63c33ca7b375e757a8f035b1ebceffe2007b0ec5d30cf9e1c26a37bfb9f88b3f9b7ccdfe2c4f384faa4f6be6b8ae7d57bea9478ee50ec594fd92bf6789d8e7ac61c18f14063c63d2393f5e69fd9ed1e7ecf18b87d06355eafd6fd6bfca4fcfeb6fce9f2b5b59dd449a66af611ac1aee851ec5a4e8b3c7fe43f5cf3dff008206af558e51188544fbb7f9bf36fb41ec5e6f67f54667706cc4edf2faa4f9f7f3a7fe7107cc1e60d4346f3a7e5869c6e6cbcc77eb65ade9111f82d6491b89b8527ac4ddcfecf5ef9dbfb178751adecf8e43bef5d36fb9e97d93ff0082960d18961d69de2363befe5e981e5b6e5fa73f90ff00941a47e4bf9134ef29e93127d62302e35dbe207ab7776e05647606848e99ed7d99a21a7c42279be11ed7fb4393b675d3d54b913b0ee1f21f73e808fa0cd93cc07fffd2fbf98ab44e2a83b87e2bc89a01d4e53944cd70736518dbcc75bd72d6e35fff000cdd286b7b8b520d7bbb741f70cf27f687da3d2eabb4cf6764f775e663c5d07c3ea72f0c650f5078deb5e57d4f4892a21fac69fbfef8751f46780fb45ff03ad6e8af2e31c51b3fcd1f7ccbd5f67f6802289fc7c98faa32afc2a65af403fa75cf3efca669edc3f6876b2d5439864fa3f94b54d5dd4843676ee3e2b93d40f619e83ec67fc0fb3f6d4b8a5b63f87fc544babd5f6a080a1f8fb1ed5636da37933492792c4a00324c7ed4affc4939f4876476668fd96d20c43eaf8eff006cde5736496695949a6d2f5af35a19b55964d3b4a996b16969f0cf41ddd8533075bd8dda1db58fc4cc7861fe69dbe0625b31e58e2e5cd07068be4a9ddb4b896d9eee31e8b30359415ec4d7a8cd5e8bb27b0f266fc9f17ef3972c9cfe75f6b9129e4ae23c926b886e7c99731413cb2dce8172de9bb486a232e6837ce73b4f439fd9bd4706537825d76fd0652638e5e21db9b01d6ed52d75196da16e56d0386b535fd97dc8cf1ff6da3830eb38311f4d5f5eb47abd4e84cbc30517e5eb6d2ae6598ea6e1428fdd83999ec169fb3b539e58b55b6db7d5e7fcd68d56ab255439a593c01ae6ecd82196ded9b9171d29e0334bdb1d8e0ce53d3ef117f2bf32e40cc63100f35282e5d16dadd9dcda8944acbfeb356992ecded799c034b23b0e5f3f77e96d38239604f521edb36bf6baadcdff0096a5824456b6256e08f858151d36f7cfa3ff0096a3acc5f963f4d6df8a1f7bc6e3c671cf8984f95bce975a3dc43697cdf5ad38bf059852b00069bf88cf37f637fe083934faef0b21f45fe3946ddd76a766831e380dbf1e6fa020b886e6349217e714cbc83af460475ae7d55a2d6e3d6631381b07dffb1e40c0dbc33f3e3f3d3cb5f929e4f935ed625173ab5f7287cbba123524bab8a7c209a1e2a0f56236c3add663d20f53d5fb2decbea3b6f5830e3fa76e23b6c3e245bf172f3f3d7f3bff0033ff0033ac752d3ef679b5bd4ae96d745f2a59c3c628c3903d2912878a53ed336e7aed9e33a9ec6c3ac9ce623ea91e767f5bf5263f633b2bb03b2a52d47202c9f573f84a4f5dff009c9aff009c6cf326896327e6368ba38348d5fcc9a3d8289179951ce704127635aed9aeecec19349fb999baebddfb3ee757ff0003eff82369e531a3c92e7f4937bf97d3f797c6de47f33ebfe4ff0033697aa796034ba93cd1c2b6b112c6ef930a42c3bf33b5333753a786a23c39397c7f43ea5ed3e830eb3452397b8d73eef2239737f46ff96dafc5a8e8da35acb64d61aa4ba7c571a959a90cb0ca5472466029519da7b2dda9a5193f2987bbcfa7bc7e97e0dedec12c5a996f71b345eae00515a557b28dc939df0b97274877e698276f964d8bffd3fbf448c554fbfd18aa1e6a15dfc7f1c16ca269f357e61412dbf98e4b80adca6894c6e36dc74dfc73e44ff82d89683da0f1e3b5807e3c23dff73d87630c73c62d2f87cf5acdbd85c5a8486e2e0dbb2d95dcd192b0dcd28a675041615f0a659d83ff00057cfa6881a81c407b87fb98163da1d9637963dbf1ef7cc1f93ff95bae794ff307cd5f9a9f9a9e707fcc8f386b529fd0d6902c96f63a7a9e9e9c44f1141b6e33bfed0ff830f6765d37858e3b7be5fa71f7badd3e8f308f09fd1fadf5ee95e66bdbbbc6bbbf916cf4ed3a3669228cd52573baefed9c8fb3bedbe6c998e6cfe980e5c8eff08db7cf42622ab73f8ef645e5c8ae7cdda83f98350888b0b76e1a5d9b0ea07ed91d0e76decd9d4f6eea8ebb20f483b0dbddd387ee70b3c8618f08e6f59f4fe008c2aac0a9f91cf63d3e2231704bb9d34e745e1fe6dd2f48f2d5e69f7361101a84ba824afb9af173b93ed9e05ed9e874dd95ae898cbd677ebe55de1def67c259a2592799b55d26f2be5eba3cae6f22f52d491505a848a7b8a674ded776ae935d0fc94b7246c77ea3dc3ef69d2030c8097833452093d294f29118899abd429a77cf9404210d51864e92afb7c9ef6240c7f0661e66d1e0d3ad346bc822e2af114908ed4038febcf48f6c3d90c3a0d063d5e0d89abe7d6bbe47ee79cd367f133989e8553c8823fd23369f2d0a4d6e552be09d3fe25995ff0002ed4e3d6eaa5832efb7dc0f757dee4f6cc7871890e858f6bb6074ad4afac956a9105107baee7389f6c7b20f63f6a4b18e5763f165cbecbce326308993cc7a8989a10e113d011ab5056bf3a6647fa2bcb0c7b73aafdbc9ae5a2899d8634edc51d8b712c693463bd73948e396598e0e64bb1d2fa870c9f43f94af25b3f2b1b8be529140924883fe2a45e42a7b74cfb2ff00e0591cd87b340cdf57c3f43c56bb047f35c18fa9afc5bf027f33bf3dbcc3e7dfce13f999298f5087cb9a82b795b4cba5e76c96d6f21548fd3d812f43534cbb59da731ab32977fd9f27ec1f65fd83d343b17c28ec671dcef76473fab9bf4fbf25b5afc84d4f44f34ffce49e87a38d27cc4da735c79d6d157d69b4c7b743f5a58a3502a65a0ab2fda005299d369b4982584ea31f51e7b7ccbf3bfb4bd9bdafa4d4c7b2b31b8dfa3e9f575b24135ee327c0f7ff00f395de7ad5ff0035575fd166962f265ede7e8fd3bc96f47865b09cf00db83f177dfa679ae6c074bc53ea2cfeceafb6693fe061a4d2764de63ebabe2a377cfa4c8f27d2fe4bff009c6ef2a796bcf571e75e266174a2e34dd19c556cee1fe395d287dc53c33c5bb6bdb5cfadc270e215befb8dc741bc40d9e23b53db1d46a34e705f2d89a1bfd9fa5fa03f95ba54b14173a9b0668ee0d2c9e4146e3d1a80f6cf5bff0080ef60e6c60eb3375e5cbafb8fe87c5fb6f5232ce9ece0310bb7cf3ddef84f93ce4e37c91c9dbe596a87ffd4fbed5384a5b23225082ba665425179b765269f8e63e59c473632e2ad9e21f9c7a958689e50d5bcc17b617fa99d22d1ae3eafa640d34d350578c4a0effc067987fc13bb0f4dda1823e26d2e877fd603b6ececd2c6767cfdf979ad5afe65f9574ff37796b4dd42d74abda9805ddbb5bca08342551c93d7c73c03b4bfe06bda58664c45c7fcdff8bb7a7c5af1ca6f47b4f29ea7224cd7ca9a7da0f8a495d83194375a814a1cbfb3bfe063adcb2f1353e88477fe13fee676c72f68c78ea1bfe3dcb1e286eee6cf43d2a2ff00418e558e423a127befbe3932c7b475d1d068c7a226bf1c5479edcd94e6631339fd47ec7d2da369d1e9d636f671547a4800cfac3d9bec98f67e9231adeb7fc59789d4e439244a66e156324ed4ed9b7d64a2319e2e4d71b3cdf2ef9bf5092fbcc5a9bb9256d89b689474017bfcfdf3e28ff822f6c4f3f6b920ed1e5f8a7bbec8c518e114a49e649f85bbb5bc2f756a38c17122f26000a75fa7279bfe0879c80043d5df63fe25393b3a0644db1c2e6acf21e2d563cdb7af23535ce065394a7c72fa89bf8bb19440850ee7a26b9a8c57fe51b38ccaaf3a4b09207f2d7b67bc7b49ae1aef67231bf50113f23ee01e6f4f80c7557d183e9b7ada5de5bde4449685810bdcab75ae78e7b3bda797b275d1ce3a73e5cbe47ee77faac7e3c784a3bcc7ab2ea9a8b5efa4d1a244a951bd48fa066c7db3edff00e5dd58cf01b0007dde5171347a53a78d7342c56312da8bbbdb916d0cb2324145f50961d88195e97b0b4f1c0355a89d40f913e5d0df3f26f3a922540590f38fcc6fcdaf247e51e8ebacead1beaba8cf58f49d304a165b89bb7c045428fda3db3b0f63fb234597278b887170fbc7e9779d89ecf6b7b6338c18fd313ccec76f890f8bacbfe7377f3a35af3d6966cb4eb5bbf2ddcdc1b54fcbeb6b7e0f756b21e2c0ca6b59141dcd29ed9ee9a3edac9a4001fa40fc742fa76bff00e041d9da3d09c9c77940be220d8ebfcfe1fb1867fce4bfe492f93b516f3ff94b4b9ec7ca9afb7af75a5bad1b4fbb907292351de324fc23b6f9a4d476ac755a93b57172fc507a6ff81afb6319e1fc96a657923c8f78e9b4635b7bde47f933f9b9af7e4cf9be3f306931adfe937917d5fccfa0482b1de5a9ad6a1aaaae9534241eb9bad06ba5a33bf23f8f37a8f6f7d8ec7dbfa6abe1947707bbe1c517d65f901f949a479b3f312fbf39f5af28cfa07e572dc4977e4ef2dcc2a4ccf420f0ebc031240fe19a8f68bb430e8c71e78d6297bcfc3604f57c7fdb0f6833e2ecd8f6543271e685091a03606f9557dafd1d37de4cb42d736f6d3c924482436c518100f45df3cc737697b3984f1e0de7ddfbcfd229f16c99356070e435f27acf91efef756b37bcbab45b2b46206996d51cd631d49a78e7bd7b0bda5935ba2e5501cb97ea05e63570a933ee21b607719dde3cc0cb87ab8c3646265cc0bfffd5fbea0f8e25844dad6900343d8549edf7e5576cd2dd4afecf4fb4b9bebeb94b3b3b28da7bcb99182a471a02cccc4f4000c230ca6401d589c823b97e44f953f3bff307fe7267fe728759bff21da48bf931f95fa55fd8994965b7baf5dd40ba6036679b81312f5a03981ff055f63e597b04461fdf0b91f851ea447a38fa1d771e700727d7b6faaded8b18aceee4b758f658a354110f922a8cf877076ff6868e5289972feafea2fa8c7458f2621222f66ee352bfbd05af2ea4b85a824134514f966a75fed0eb75fb4e77f01fa83460d38c6367a5fe5ae84cf793ead7209561c6d548a0a78d3f8e7b9ffc06bb0b8750755907aa8fdde46bec749db19c81c21eeeabf09a77ea73e8fc6384dbcddb4d42b43bf21964a1e246a5d50654f01f39f93b524d4ef351b08165b59c891d430e5ccfdaf873e62ff821ff00c0cf5b9f532d469e360ff57f4cff0043d376676846204646bf1ee60874bb9464372d1daa1eacee397dde39e4c3d94d461983a9a8c7de3fdec9decf55123d2be6d3a38eda5bcb5bb37c9183ea462848a76032eed7f6740c3e3603607957c772b8f5064784849f932d40ad3d357f4ebb0e35ae73633e40046476f8360c601b7a7e99e5ad32eb47d3e3700dede42d24521ea48dc8ebdaa33debb0bd88d2eafb2aff008e439efccff9d4e8f51da52c79c8e8f329925899a19397381d92504f13b1dab9e09934b2c59e584f4247c9e8f493192296798bcdfa6795fca7acebdac42f71a7e816f36a4041f0b1551b804f7f6cebfd9dc90d74068330d89dbe26eb6aebe6dd1ecf39734447632207e377e404df9bfaa6adf99165f987e69b0835bb7b69f9c9a1cff622b3268608cd7889389d8d3af5cf74ec9ecdc5d9d08e2c6361efdfe7669fa8717b291c5d9274f80f0ccc79f5e2e77b9a7e87f92ff2c3f24fca5e5ed43fe7203ca37023f2edf41fa421fac82e3468a9c9ede18bed72e44d41cc4f69fb2b593809e03e827fa3fa4be01a9ed7ed4c9a9fe4bd4ef92f84fd238baf388a02bcde16dff398127983f30df48f33e870eb3f943a881a5cba2bc35bde0ff0add4606e5c96a84eb9b9f6730e2c5010d56fb79edfe95ecf53ff00034c9a2ecdfcd62970ea00e2bd8ee0dd1b918d5793d9f4dff9c16f25f96fcc36fe6dbdd5ae7cc9e4bb6ba5bed3fcb65783471bd1d629df9564504ff5c8f6cea65a0ca33621c58be5f0decfd8f2da8ff82febb3e88e9047832015c5e920f7d0e0dbe6fd01b86f2dda7966cc258ac5a140235b7b78169e828d810a3c336dda5add1f687677e633fd1f1db7e1e9479f93e358f36a3c63327d679f261cfa6793ed59afbebf35d475f58c0c4b1663da829f767954bb23d9fc1fddcae5eec9fa4b9c32ea08a23e3b3d8fca7722ef4d86e12d7ea70b0fdc42c28dc7b1f6cf73f624c3f29c301e9fc77ba5d58a95332551d47539d9471089b7089565cb58bfffd6fbe7d32322c631a42cac0f24342185789ee3be184566767e51ff00cfc03f3cf5dd52f743ff009c5bfca957d4fcf3f9873c3079956d988923b7948f4ad091d3d61563ecb9d6760618e197e632728dd7c9d36ab299fa03ecff00f9c71fc87f2eff00ce3ffe59e95e46d2d639f5208b71e69d5b850dedec8b595abfcaa6a147619a7edaed13adc92c93fa7f439ba1d1f822faa6dacf95345beb9967d2f548ace427f7910a53ee273e49eddf60b41da59e593473a24d9da5fefa41edb47db13c711190bfc7b98f49a2f97f49092ea1a8fe9299092b6716fcc8f103c3357a8ec0ec3ec3c23f352bcbd369f3ff0034c8391f9dcb98d44532df22ea73ea9af49306e36905bc91c16d1fd98ea46cff00e56d9d7ffc0b3b525aded094ced1a35f23e40f73afed2c4218fcdee0b4a57b9cfa13845dba049759d5ed347b57baba711a20d81ebed4ce7fda0f6831f65e13291dfe3fa8b662c07249e0de63f35eafa9a972574cd3bfdd414ffa449fc287b67cd9eda7b67acd7e3e1c4687c3f4c43d5683b3a31f3291d8e976f2817daaddb59ab9ff0047473ca427b1a672fd87ecfe2d460397b467c30e9b13d6bf80db6e5328caa22ca1ae66b2b5b7bbb2b091a733b137178df08527eecc5ed7d668f45a73a7d24b8afad4875bfe2bfbdbf4c0f102526203290bd64a423e934ce3b4de26ab3431f79ae9fb1d96a0d40bd2b58bb974487cb0203fe916cafc57f99028e43eecfa0bb6fb665d858f1463ddf757949e523a6fcc4e52ee43eb3a2c5aec71f98b45227f5903cf6ca6818ad7c7be693dadf62a7daf01afd08be216472eedfd721f7395a5d51d39e097479adde8ba76a90cfa0f98ed5469ba846f06ab60f5a70936dc8cf3fec2ecec9a5ed384730a025bfe012eff00176a1038a07d4397e29f941ff3915ff38ffadfe467996148a29350f276af231f2dea726e2243f170b861fb42b415eb9f51768f661c71131f497e94ff0081efb723b6f4c318fefa1b11fa7e90147f22bf3b9bf2d6e351f2cf99ac1bcd1f95de6886483cd1e5c96ae7948a47ad6e0d77afda41bb76e993ec8d6f860c720b8fe3b9c9ff00820fb0f2ed4e1d569bd3a886e0fc7adc80af817bc7fce2bffce3fe9de77fcc393cedace9b2693e40b1ba96efc99a55f1adc5db56b09dcd4ac3fcddebed5cd0cb5fa3d56b8696268c8d56e7a77d7e90f03ff043f6e351a2d08d1c25794509115b72bdb87aef546c3f511b508fca92de68570ad79a7dc2fad6a4ee473d8a77d853347db1db63d94ca74993d5090b1d3dfc84cf5ef7e798e196ae7e30d8dfdaade438ff004969babd95c03f533311007de80e627fc0e232edad0e5c397fbb3fafcb84f3fb97b4b24b065133d17c1f96b19bfe33dfa9b3e7cc46828f5f0ad7a659a3ff00816e0c1ad12e3b17dc7fe2daf3f699c82ebf1f27b6d85ac5676f0dbc23e08902ad7ad00cf7decdecfc7a3c231c390fc779743972191b2982d428af5ae675f0f361136aeb93b4bfffd7fbd85d02f5d89db235c691ea78b7e7f7e6f687f923f963e65fcc2d6e651fa22ddbf44d9b3006eaf595bd18141ea49de9ed9b3ecad04b5b98638fc7ddf6387aace3107e78ff00cfbd7f27f5bf3c6bde70ff009cb0fcce89af7cc5e77bcb9ff09ace08e31ccf5b9ba50df64390a23a7415a6749ed36ba3a7c71d2621cb9fbbbb7fd6e0e8b11964332fd7429b6e29cbb670e7d428bb81b178b79e3c9d76f74dabe904a4b20a5c40bdc7b67cfdff00042f62b36491cda6e5f0ff007d277fd99aa80352794c5a6ea4f2b247a6ce2746207a8282a7a9ae7860f65fb4b512e1e1bff4bfade925971d71dbd83cb4b63e50b384decabf5fd4a655310ebc9be5d699efdec5e2d37b2da10331fdf4bdfdfe5c7179bd7e63aa97907aa1b948adda690f08c2f2627b0cf649ebbc2d378d936005fe283a48e2a950789cf7835e9ef3cd1a982743d2f97e8bb3eeccbb1761dea7a67866bf24bb4f2cf5b90feec72fbbc8fd8ef3f2be1918fa963874bb8d62ff004bbcbd6a9d5ee44715a814e30751b78803385ecdec0cddb3ad8cb30adf96c76f818bb21ab1a68180e8cd3cd1e469f526b5b8d3955de2430fd59cf1503b3d6bd467a5fb6dff0003696a2311a3dcf77fd25375da2ed5f08fabafe3b92187c81796b697d75abb2b98d2b14116fb01ec738ad1ff00c06f261c3296a8d4ba72ff007b929c9fe538cf2011ebf8ee48f4ad2edb4eb4b8f3379aaf2dfcbbe5cd1f94f797976eb044157a995e420507f30d8f6cbfd85ff8176a25ad8e7c9bc63cb973f84efec6ced1ed48e28100eff8f27e6d7fce40ff00cfc3347ff10de691f949a05bf99adf4b710b798355626c9992a035bc28564fbcef9f43e7ff0080ae5f68338cdab158eb6e5dd5fc39227ec7899fb57f94f4c07e3fd297d03ff38b5ff3926bf9bfa15ddd411c7a7f9e74914d7b400e156543feef8213f11451d48cf20f6a7d86ed7f60f5b5a5f56097f507c3d52c9277fd9ddb71ed3c559072fc770477e67ffce516b1e68d6af3f297f223cbd0eb3f98b038b4d77cf7751f1d2740126cf37261fbc914745af5ceebb23b434634d1d6f694787845ff0011f8fa07e871273c90c9c30ded9ef963f29bc8769f937a8fe57f9efcc9abfe62cbe60bb9756d77cc5a9a48d21d46f69ca6b4e42b1a232fc2a0d066076bff00c16bb1b578cc6276f74ff4c03d27b3b83b43b23511cd80fa81fe8fe9b7857907fe711bf2d3ca5ab3eb7af6bba8fe603d8ce26d2ec1e210449c1aa85b852ac3b9ad33cfe3ff0004aecad293c06e5d369fe9817d7bb6bfe095db1aad37851031d8a27d123fee43eb0b8bc63770b5adb43631c4889a6c30af2f4828fb202d0027c06796f6a76e64d7f681d5631c26f6fd1d07dcf98c20630e2c9ba6b1e8faaea266bfd4646b3b70293ddde50500fe5514a664e2ec0ed0ed9ca336acd631cc9e1e5ee8905c49ea60070c07c13b9bccb0e8f629a67971412c3e2bc3bafcf7ce9f51edfe93b1349f94ecddcf22771bff009f197ded034472cb8b27c986c5a8df0ba8ae56e9a5be498161c9be224f85694cf3aecaed5d79d74677ccff0047f53b02611c66243eabd1269a7b0b5927afab2460b0f7233ed3f6635d933e921e273afc720f11ab8812349e8a281cb3a494389c7c712885c20327ffd0fbbd2f208a3b73a569d0d7a9f6c38bd21709e11bbf12bfe7323cd5abff00ce4e7fce4f791ffe7193c9d7727e80f2bea51c5e64ba84131ade49f1dccf26c4116a8bc07bb533d1bd9cc31eced14f573e645fc39575e67cb679eed091cd98463ee7ece793bcb3a3f937cb5a1794f42b65b4d23cbf650d8e9f6aa00e3142a1456941534a9cf3bcfa896a26721e64bbdc18f83180ca1a305680915ef98d92027cd9942dcc4d24532a928789e2def94eae3c58643c9b206887857982fbcd7a74f240f6c92447a5d5b44cc789e83e7e39f357b4dda7da3a1cd2c508ec7adc7f5177ba41091b90d92cf2f68f7d797f16b1ac9916dacd8cc92ce38b0e3da9e194fb39ecf6b3291add61f48dfa77ff0044dfd8e56bb2629810873ee677e71d7a26f2b19ad1cb26a26386375eb4734db3d1bdb3f69e27b1e32c3ca5b1f81aea1d669f0f8792e5d125d5ed960b6f2d797e32523bb9952603a9082aded9ce76a68a51c58b458f913bfcefaf993d59f8d2323346ea2f6f61e70f2ddbb305458658edd38935620577e8294cdaf6e658e87b731423b0dbeef8f7a71c0e5c32997aa3b2c513c9404a29a55828fa49d867b40006dd5d355eef2bfcd0fcd9f2f7e5c7957ce3afcca9e61d4fca1a51d52efc9f613c6da9cb191f00106ecbce86848c72461103c5340fe3a38da8cd2c42c07f38dff3907ff3973f995ff3903a981ae5dae89e46b49d2ef47f235bf3583d1afd9bc0a55a5620509ad067b7f637b2ba6d268bfc1c5ca439ee3cff0088bcde7ed1c994f0cb97e3c9947e727943f23bccff0093be4efcdffc9f92d3c9da9d849068be7ffcb9b8b952ff005b2bbbdb83f13ba1a97236604529439c8fb33da1acecbed03a0d40f45f3f4f75ff000d9fb5736871cb4be203ea1efef7b7ff00cfbfff00e71e3f346f3ce36df9d7696d71e5df29db594f0692d77585f533380390127db8453ad37ed98dff00066ed596b747f96d0478b20df981ddfcf007dae77b2e65099e3fa7f1dcfd6cb6f21be953ea73c3e4fd2accea931b8bfb9b0f4e296699bac8e69b9f9e7c67afecef68b3c4e3cd8fd1fd6c5fa0dbe8b0cf846f13bfc526bab3d22dc96b9b1d52c4bb032f36147036e07ad17e54ce0f53a1d0e84f04ff00df39fa4cf9e5bc7f429c52e896c15a2b0b99e34d9623200bc7b2d3c33559a3d99a63e2c373ddea6ef1f3e63c27f47eb555f30c76e9c34cd3edb4fa134aa96615efe15ccac9ed9c2386b1c28fbffe3acff93247ea363f1dc528bbbebebe2bf5a99e7a752c68a47811d3398d476dea3556672dbe1fa83998b4b8f18d93ff002a797a6d7750448c7a7a759106655140dde82b9d17b13ecb65ed6d646605c01b3b8e9fe702eabb4756308db9be80b6f2968492457034f88cb10015c8df6e99f5b69fd9aece06338c7979cbf5bcacb5790ec4b2b8a211d029a281409db3aac308422231141c496eac56bf465f748069557143ffd1fb0bf9f1f99b67f943f951e75f3fdf1563e5fd3669ad6d8903d6b861c228c7b9620e6c3b33472d4ea6301c89707b475030c767e677fcfb07f2daf75dbdfcc3ff009c82f3597d4b57f31dccfa6e957d26e6495e4f535298b7ec977083efcebbdb4d68c7c3a78721bfe3fb5c2d0e024f1c9fb2d129216a3b75ce0246b93bc894495246c37cac46f9a56f03b57e9cae58cf16dc96d8af99acf51b8b194e9732c37abbc61802a7d8d7399f6af4d972698cb046f20f3afbf672f4b9202552e4f05bebef356a0ffa2ef2dee39bb7a5318e3210d76a8207e39f37ebfb53b67b57583492151bae70fd43ef7764e1c238a1cfe2cdf55f2ddcff008434fb0850b5d6982293d2a82498f723df3d2bda6f67739f67e3a703d70dfa77f177d7dae2e0d44279ae7c8bcce5f306a705dd85f6a1301269aee5a3957d3e3514debd33c3c7b55da58b388485981fe8ff00c4bbe8e87165f4c391f7a4fe70fcc3d3ac6d8799bcc5ac5bf97ad74f5e705e5c48918054558c41bfbc247619b8c5dabda5ed4f6bc0c23ebdab78fea8071f598b0f66e23c476f8fed7e7f7e64ff00ce7ef9afcf3e64d33f2eff002475383491acddc7a727e61ea21608d0c87819a249360413b337c3ed9f587b3bec06bf1611abed1db84717f09f8feee5fa1e03b43b630ccf060fd3fa43dd3f2f3f223cabff0038eb6babfe67fe6dfe613ddf9b353b79079bbce3acdcb38ba320e52c56d6eec4f135000a1a76a679cfb59da1da1ed26abc003861026be937b73e513d3bdde638e3188789b9f8fe87c21ff394dff38eba543a5ffd0c27e48d8cba8fe52f9908bad6d63f89ad24998992e9108252d5881c87fbacf5ebb7d0dff02cf6a32cb04749a83446dd37adba0fd2f21db3d9e23ebc6367c6de44f30691e52f39796fcc9e61f2ddbf9bf40d1efe1bbd4fcb1764a47770a1358f7dbe2ad6a7ad33d77da0ecb3add2ca1887ef2b6fc1203cde97370e40243abfa3bf237e735bf9f3ca5a0f993c83a8da8f2d5f5baa595adac4aab6a5050db18c01e9b47d37ebdb3f39bdbff6dbb67b1fb425825b104ff33bff00ab2fbdf6fec5d0e973e9c1237af37a95879e356b35b56d5a16b8b3b87e1ea800386ff5295cc2ec0ff82876869c0fcec7f767adc7ee8c2dc4d5766f8733c3b8fc79a6bac6b512c56cf7f63fa4f4cbbdd6fe3e895fe65ea3e79d5f6b76c61d560fcc4e37888bbb3cbdd40fd88d2609c7612a9061f71a7796af4b3e9da89b466ff75b2b75f115ed9e6bacd3763768c49d3cea5ee9fe9a737065cd8e5645fc904ba020043eb30500279b00081e3b9cd1e4f63f4d8f1f1cb27d87fe29cd96be57747ec659e5ef2169fa9a9964d5ff0048c5dc474e23e9073bff00663fe063a6ed202723b7c7fe2c3aed5f6ace2397ddfa9edba4e8f67a4dbadb5a40b12201423ab7cf3e86ec4ec2c1d978863c63effd24bcde7cf2ca6ca72136f8866de78849a012bc0a7418618c459364376cb0b136a8062aff00ffd2ecbff3f60fcc69ac7cb3f97ff9576b308d7cc17736bbae053f6a1b0a47046deccd2d7e8cee7d8ed371659642396c3f4bcf76de41c600ee7dc9ff00386de498bc89ff0038ddf95da52db0b4bad43478757d561eff005bbf1eaca4fd2739df69b51e3eb6721c850f900ed7491ac51f73ea78fa8de9b6c3352e647922801815a228302a0a4605997a7100fcf255b29142d8179cf543a269ad796f1235c48e1139b0502bfb5bf5a78679b7b7bda78bb0f4a75308fafde7f5487d8ecfb2f17e66622793c3f50fccebed0eceef54d6f5cb4b1d36d9394f7b7aa21853bfdb34cf14ec4ff820f6cf6c6a06311b07ce1ff111773abd1e9f4e2c8fbff6be1ffccaff009f93790742b89349f27f94e1fcc0d5a1e5cb5a08d6fa7c67a6dcead27fb139f4b7607fc0fb57adc11cbacc6224f983fee661e37b63b506987ee8dfe3cc3c4e6fceed03fe736f42d4bf287cdfe4eb2f25f9dadf9eabf97fe60d2a791a1f562159a3b88998b51ea0103af6ccded1ec7c5ec2e68eaf146e362cd9f96e7277f734e83572ed7c66190fe3ec7e6d79abcb5aff00933cc1a97963cc7613699ad687310d04ca63a54fc32af4a86a56a36f0cfa23b13da0ecff00687482780d8adc54857cc45e3f5ba7fc96a0c47e3ef7db1ff38a91795ffe7213f33348f2b7e7df9c2ffcc37da3d8436fe4ad2f56ba3f51bf4b7a96b77a91ca641f62bbbefe19e63edef600d16133d342a1d4dfe8249fb1def63f6b999f0e7f8fb1fa7ff9cdff00392bf925f9456d6bf9693d947e6181edce9b17e5f68f025cbccac046b6d25b2024230269b7c44678df64e975dda197c4d28fdcc3afa773ee954b9bd14aa3e99757c49e5cff009c14f245e7e6449e67bdd4aeed3f26e665d4742f267a720bf68ae28e6c6f19ead1fa66a0f72294ef92d57fcb446a840e9b20a94763f49fbb157dacb17b2709fef0f3fc79bf507cb1a6fe55f91f47b1d1fcafa141a369fa5443ea9a4dbc6c1631d813fb447b9af8e79af6c7b63d93acc9f9897aa7fe78ff007a07d8ecf4dd9b9306d1d87e3cd435a9351d6a66d416d1ecb4db21ea46a7ab57bd33ccbdafc59fb563f988c6b181e47f51fb1e8b4b0c78e2232364a79e5ad52d2db49ba8b5060f66f347088587d8f576a1ceaffe077dbba3d37634f06b4fa49f3ea4ff00347bbabadd4e191c80c79ee81bdf293c8bf58d14a5fd915aa403edd6a6a01af4cd2769ff00c0d8eba3e3f664b8a07e1ff4d260b7e3d688ed3d8857d1ff002f752bf78deeedd34eb7247aaadf148c3f97af43995ecdff00c0e7b4f1661f98150ff37fdeced8eabb4f188d4772f79d1b46b3d1ecd2d2ce116f0a75445ea7c73e95f67bb2c6870888fc7da5e6b3e73336590a8ff6f3a0716ed5177a62c952831575062ade2aff00ffd3e61ff3f33f315d6abff393f7da4bca0e9fe5ad074a4b28cffbf675324dfc07d19ec3ec4e9bfc00ccf79fbde37b5f25e50fdf4fc9a96dae3f2a7f2ea7b320db4be5dd39e023ba98148cf2aed23c5a899f37aad27f751f73d3947c40f80cc20767255c114c368698edd702a065a062e4d0114272b2644d0e4cf98a637e60d12df5eb06b494230043c2ee090aebd1a808e99cf7b45ecf47b5f18c73e5f8ee21b74f94e9cd87f357ff0039a5e74fccbbdfce3f35f917cd8fa8693e5af2a5e496fe55d347386dafac1c82b7857a3faf4a93d36f869be7abff00c0dbfe07dd9ba0d3820593d6e5ff00165e5fb77b6b2e59574f87ea64bff38dcdf96ff9dfe5db7ff9c76fcc84b5d075a4ba4bbfcbbf375b4696d7b7249f8b4f0ec29503fbb2d5a8af5cd4fb6feca769763eb7f943407881fe1f48fe1e1e7394bee5ec6cfa7ca78337e9fd0fb3bcdda97e41ff00ce1558a68116996efe6f9104d1e9b6dc2e357b989c53eb534c4110a9a77a0cf05ed1f63bda9f6c7b438a71f40abdf16db794a05eaa1a8d16823b1abfeb7ed7cc7ab5d791bfe734fcafe60d4f4eb68fc99f9f1e48496e747d0e4229ace9037e0f274778ff00986cb5dc50e7adfb3da1c3ff0003420ea67fbb973347af5f49ca799743da18f0f6a12711f57c7f4d07cd3f94dff38e9f9c7e7ed7e35d1b47b9f27dbe8d7263d43cd5a8168058dca353941c78b4dec6339d8fb69ff04fec4ecdd1f08c9c5295d0ac83fde175fa0ec1cb09f1cb6af77eb7ed67e477fce347e5afe41e8e9e74d52d4f9c3f32f545517de71d62b2de2c4e45422c95e3c7c7ae786f6dff00c12043b34c26380cc557d5ccff0053b9ecf45a296a2609e8f5b9d1346d51e5995aef4d9183c133d28636dc2923ad3c4ef9f316b310eceed0123eac72377cb6fb4ecf5d871f8d8763520cfecb5ef255a42b29852d65977f44a962df81cf53d2fb55ecce0c63f9d5b8acbcfe54e8b368f53c55fa98ef987cd326b83f46e97070b6228c882b230f90ed9ce7b53edd63ed880d16923e9dba9dff00d3463f7b93a5ecf943d523f8f9acbaf2e6a96f6da6695656665baba7fac6a737ecafb93987a8f6775b1d2c71421ea3cf78f7f99647591249bf733ef2a7905f4b78ef2f6791e71f6515c8503b0a06cf46f62bfe07fadd170e6d49e1eb5e93f6c645d36a357c5b07abc69420151ed9eedb0d9d559b4505c3c41697014c4b2017ae012b4afc92bb15762aff00ffd4e25ff3f1ed2ee2c7fe72a7cd8674e516a5a2e93756d3014a2344e0d2bdc11be7b07b19aa91d1f8406d65e2bb62071e50fd1eff009f76ff00ce4e681e73fcb7d1bf273cc1aadb59f9f3c9301b4d1aca67f49b50d393fde7307363ea3a2d4381f7019c87b51d872d2e53986f191dfc8fcddd7636bbc58084b987e9b4772a5ca725aa815df7dfb11d4671bc320eef881d82a3dc8442dca94f01cbf0191e1914134b45d2b9a27c4680b0e8457c41c9089eac3c407abc3ff32ffe7233f263f2a6d66bbf3bfe61691a53c6789d3d25facddb1009a0b6879495db6db3374bd95a8d4489c71bf90fbcb44f598e1bdbf347f387fe7ea76de9dee8df923e4afadcce4c56fe6af30968a1a53768ed14ac95f02c69ed9dc7657b127254f34bde2becb05d46a3b6c9d80afc7b9f35796fce717fce6e689a8fe5e7e656a36365f9fda52dc6a5f949e766e16e3574de4974599578ad453f77b547df5ddcb08ec1c91c98f7c5fc43bbcf7b27cff475d657e6773f53e10d5f4bd7bc95af5f691ac5a5d796fccfe5abae3796b3178a7b49e36f84fa9b100115054e7619b55a7d562f51b0479f5707c39c256fb6f5bf33f9e3fe734bc93e44f2be95f941a87997f38fca92a585e7e6e5b048f4fbbd3621431decbc40590d41258d0f51d738710c1d8d9679613f41e428edf1365d919e4d58119737e9a7fce27ffce0d685f9276579e60f385e8d67f33f59b7f4e4bd840fabe996d201caded79543934fde3743b506797ffc107c2f6af1783936883b1dcf220f4e03f6bd0f6469ce8a42439fe3defb46cbf2db40d39e4961b7f54cbbcb1b81c19bf9b88a0afcb3cab27fc0fb0463f57157911fefde93376a64ce2a4c6b5cf22ebfaa5d8b96d4602a09a5b943c389fd9a13d299c37b45ff0003ad56b3271feaff008b0e5e9bb48628d01f8f922742f246a36b01d3b5536da8e987758dc12ca4f5e3be65f60fb0f93060f0b30bf8fea93467d7c8e4e28edf8f7239ff002b34895d5c5cdcc607d9452a428f015ccdd37fc0734067c723cffadff551b876fe788a15f8f832bd1bc99a2e8efeb5b5aab5c914372c3e33f4d73b8ec3f613b3fb24dc2367df2fd322ebf51da1973fd45947d512a580a33000b0a5683a67647144ec43836ac2203977e46bbe5b69b5c91f1a6f5cae51b36a4daaf1c023ba1ae39355c05304452aec9abb15762aff00ffd5f477fcfcb7fe71db56f3ef97346fcdef2669d36a5aef924c96be66d32dc7296e34d9284ca1684b988a8a01bd0e771ec676cc70e5f0a5c8f2fd3d1d276d697c48f107e11d8ea179633c17da75dcfa7dedababdbdddbc8f05c42ca76e322156465ee2b9ebb974f8f570a3c8bcb44cb09ee7d83e4cff9cf6ff9c9ff0027411d9c5e7c5f325b408b1c106b36b0ca1557a719235594d3fcb639cc6abd89d2e6dc468f7eff00f14e561ed6c98cddedddf80ccb54ff009f947fce4fdf40224d4f41d2d87fbbedacbe23b7f96cc3281ec2698738fdff00f14df2edbc92fa4fddfa9e07e72ff9ca8ff9c87fcc285ed3cd1f9abab5dd8924fd4ec996c80deb4e76c23723e6736ba4f6734ba5fa6007cff5b87975b93273fc7d8f03b89eeb50bb135ecb36a17b2b010cb74cf34d23f400331249f0cddc4e9f4d8f8797cdac4a737d39f94fff00386fff003907f9c2d1cba0f916eb45d1a5f8a6d7fcc55b08552a378925e3249b1a8e029ef9cc7687b53a5d3ed7f7fea7270686790ec1facbf909ff003ed2f21fe5cea1a5f9abf30b5eb9f3d79a74b992f2c6dad89b3d36dae90d564842913f25f12f4f6cf3ced3f6a726ab688e1fb7f4077fa5ecde01bfe3ed7da1e6cff9c71fc95f3df9857cd3e70fcb4d17cc5aeaaaab6ab771b19640bd0c814857a7f940e68b1769e7c711184a80f21fa9d91d340f30f50d17cada27976ce3d3b41d26d345b184288edec614b75f805179088283b788cc3cd9653dc9b2ca18847927915bac64b014e44b30ebbb75ebd330a3195d972112576df2eba508728a0107be44e6013c4a8aa2945df009096eb6a8137ebb786580a1753fb4e533b556032d086f26aec55d8abb15762aec55d8abb157ffd6fbc7722d8c12fd64c621e0dea9969c38d37e55da94f1ca715c07a77f731c801e6fc92fcf6ff9c6cff9c18fcc6d6358d4f48fcf8f24fe5779be59586a5169be64d20446e549e7ebdac9704ab163f150035cefbb23b6bb5710af0724c56de823ddfc3dce8753a5d393f581f1fdaf892fff00e70b3ca30ca7f46ffce657e4b5f415a217d7aca17a762e0dd9dfe473acc3ed1ebe43d5a5cb1ff3647fde3afcbd9d82b6cb1f98fd688d3bfe70a3c973723a97fce697e4cd92ed458b5bb197e7ff001f63f5e397da4ed08fd3a4cb2ff348ff0078c21d9d80ff009588f88ff8a7be7943fe70cffe70a74c682efcfbff00396de55f32bc67f79a7daf9a344b4b471e0c44fea7dc466af51ed176bc87a34d901efe027ece073716874c3fca44fc47eb7de3f93be46ff9c1bf284de87e53eabf969a96a8e0249756baf586b1764ff3525b99f89aff0028ce33b5759da39b7d446407718f0fe80ecf162c23e923e6fb4e0580470fa255a1083d264238114da806dd3a5339f0644eee7c610ae68b141efed909c59dd2b8e3ed965ab7f0e4048f72086875eb933c940ddd95f266b1bfdac944ad0700282a6995e488279a855503c46318d7552bfeeeb97043630856f0abb15762aec55d8abb15762aec55ffd9);
INSERT INTO `userimage` (`username`, `image`) VALUES
('JohnDoe22', 0x89504e470d0a1a0a0000000d4948445200000212000002120803000000aee3d68d0000001974455874536f6674776172650041646f626520496d616765526561647971c9653c0000032269545874584d4c3a636f6d2e61646f62652e786d7000000000003c3f787061636b657420626567696e3d22efbbbf222069643d2257354d304d7043656869487a7265537a4e54637a6b633964223f3e203c783a786d706d65746120786d6c6e733a783d2261646f62653a6e733a6d6574612f2220783a786d70746b3d2241646f626520584d5020436f726520352e302d633036302036312e3133343737372c20323031302f30322f31322d31373a33323a30302020202020202020223e203c7264663a52444620786d6c6e733a7264663d22687474703a2f2f7777772e77332e6f72672f313939392f30322f32322d7264662d73796e7461782d6e7323223e203c7264663a4465736372697074696f6e207264663a61626f75743d222220786d6c6e733a786d703d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f2220786d6c6e733a786d704d4d3d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f6d6d2f2220786d6c6e733a73745265663d22687474703a2f2f6e732e61646f62652e636f6d2f7861702f312e302f73547970652f5265736f75726365526566232220786d703a43726561746f72546f6f6c3d2241646f62652050686f746f73686f7020435335204d6163696e746f73682220786d704d4d3a496e7374616e636549443d22786d702e6969643a30443243334444313441383331314531423437414343453934383341323634462220786d704d4d3a446f63756d656e7449443d22786d702e6469643a3044324333444432344138333131453142343741434345393438334132363446223e203c786d704d4d3a4465726976656446726f6d2073745265663a696e7374616e636549443d22786d702e6969643a3044324333444346344138333131453142343741434345393438334132363446222073745265663a646f63756d656e7449443d22786d702e6469643a3044324333444430344138333131453142343741434345393438334132363446222f3e203c2f7264663a4465736372697074696f6e3e203c2f7264663a5244463e203c2f783a786d706d6574613e203c3f787061636b657420656e643d2272223f3e6636984700000180504c5445ebebec9c9d9f999a9c9b9c9ee3e3e498999bdbdbdcf4f4f4cbcbccc2c2c3919294fafafaa7a8a9d5d5d6d1d1d2b5b5b6b5b6b8abacadb8b8bab3b4b4bababca8aaabb7b8b8b5b6b6a1a2a4b9bababcbcbebebebebfbfc0bbbcbccececed0d0d1c8c9cad8d8d9d4d4d5a8a9aaaaabacc5c6c6a6a7a8a9aaaba5a6a7d2d3d3adaeb0a4a5a6b4b4b5adadaeb6b6b7acadaea5a6a8adaeafaeafb0aeaeafb0b0b1b3b3b4afafb0afb0b1b2b2b3b1b1b2a3a4a6a3a4a59e9fa1a9a9abaaaaac9d9ea0a7a7a9acacada2a3a59a9b9db8b8b9a2a3a4a4a5a797989aa8a8aaababaca0a1a2bcbcbca1a2a3a6a6a8a0a1a3b1b2b3b0b1b2b1b2b2b2b3b39fa0a29fa0a1b4b5b5bababbb7b7b8b0b1b1b2b3b4b8b8b8959698969799b6b7b7b8b9b9bdbdbd959799949698bababa939597949597b9b9ba9e9fa0babbbbbbbbbc9a9c9d93949697999b96989a929496bcbcbd929396919395909194909193acadafd6d7d7dededeafafb1bdbebfc0c0c1e0e1e1b3b3b5e6e6e6e8e9e9efefef9e9ea0ffffffdfdbd1a0000013824944415478daecdded7b13c7b980f1a5d5d14aac6da06e4d2958968c65e2229b5a36762124400f254d69023d8d93505204e52da5c5d053294895b7f3af77b5926cadb1bd6bbdedcc3ef7fd2d5f722df877cd3c332b644b1105b2f82b204810240812040982044182204190204810240812040982044182204190a0bd1cd72b95ee948284c86cd76da6d3854c26f3e2c5e35677bafdf9cff5b4030939ab41a356cb648a2f7adb2fc2eb5ef25158e22178ebc1f9bf7a9df37a112662666626f128c49268ce65bfeef4d7e3889899f926e12804af126e21db9708af44a3903d4bd89e8a3e4478d5539030f6a7deacb56b7ac7c98355f421c22b6f41c2bce9d1aae5ee797ddf533133e9e1082efb3bf37d88f0aa3a90306a71982cde6bf77da057adbe3e9f2934bc35c375bd35642e93e94bc4377f99dd818429ab43a1cbe11011fd9e358222bcf23624f45f1e52b97bbd8d54c4cacaf73b90d0fb4f53286edf1ba708af9c03096db78bc9faf6f6d845acac5cb020a1a387e652657b3b16115e354868f787a8562a318a48d8e6613e09b75aafc42c626525eb424297f345ad58a9c42fe2ecd9571624b4182072958a1e22bc5290887d81686f18ba8838752a05897817887ca5a2978853a7a62011df0291ae57f41391141306927073958a96221262c23812cd62455b11c930611609a796ade82c221133a64924ecea07207413910413964120ce57f417b1b5e542626c20cc10b175ce86c498401822626b2b0b89d10f95e9f31d11f95cba66b9babcd7385844a93409891157cb7a2072d59adb5e91dd62456f11a5d20e2446fa80995ccdb20fb8a7d25744e9850389518e1181ff58aa1820a254ca40625c3345c50c11666f1d069168d68d1151aa389018fd0692ab9823a2544a43628c7b8609224a8f1d488c34b7689888d274779970ad4227cb82c468960833444c7bcb84d39ccf5e6df5d0ebff5a6dcfd55c480c7b893044c4f4f45ce66aa75d11bf6eb53dd784c48097971523455cbd7ab088567f997721d1ffa6914b9e88fb5ec51424fadc34b2c91471ff8f7f9c4d4162f04d234922bcbe4f41e2b89bc652a2455cbb76ad6841e258f795f9a48bf0d2f0df9ceb4bc2ce0a1071edda4a1312116bca1071edc1030b12d14454a488789083042202221e3cb021115e5592886f0b90404440c4b76721818880886fbf6d40e2e852d244ac5f8004936540c4faba0b09440444ac2f41e2883b4b8922d64f4142fa2df63e11ebeb0d481cf6ee332f53c47a1e1287b42454c4faba0d8948c74f392236d39088325a0a12b1790e12070d1245b92236375d48840e12b2446c2e41e2c327112d42a39d431b124e5db488cd4d0b12fb4a0b17b19983443057ba888d122482e5a48bd8d86842e2d0f79f32456ce420d15b1111daec1c96768b845411daec1c966e8b845c11baec1c96668b844c11b9528bc434240e582484ae1169f7fcc646b9dc8444a79af85d23ab9c5cb95cce41a2539d39a2757d5b2e3f864427446cb47e0c8de9b20b890009c12236fc57e3eef414247a2fb3258b2897fd8f68bbef21d14342b688f2b4bf67b8362476490817d135c12ab14b42bc8872f9bd03891e1288f0ca43628f04225aad552111208188b5350b123d2410e175c781c42e0944f81521d179c78188b54e1624fc10d115b136e340a21522baadae5621f10109d922561fda90d84742b888d5d534248224c48b58cd42422917117b22561f4242a92622f644acae4242a91a227a442cdb90509388e811b16c4142e510d1230212bb2410d1160109af3c227a4440a2732d8188ae88e52a2414227a4540c22781883d1190689140448f08487821a2570424f693102fe20a24948d885e119050ca4544af08480448200212411288804490042220112481084804492002124112888044900422badd86847f5585885d1190f02fb411b127e27603120a11bd226ef3a92aa510d12b02121d1288e88a3803099f0422764540c22781883d1190689140448f08487821a25704247a482002129d3288e81171c681448704223a2948b449200212411288804490042220112481084804aa21a2a71548744820a2531d126d12888044900422ba7d0e09af0622f64440a2958b883d119f1721d12681888e88cf2721e193404457c402247c1288d81501093f44ec8980c48724848b586840621f09e922162c48044988170189f6ab5044ec8a804490042220112481082f0509af25442c4022501a11903880042220d1f3761c11bbd521e1bfe4400424f6934044b70b90f04920a2dba74548f821a22be2d34948744920c21701895d1288688b8044f7461b111d119fa6201124215ec4250b127e3944744440a27ba38d888e884b36247a4820c24b41c22f85888e084874af2f11d1115186c42e0944f85d804427445c8244304474ca43a2531d11ed2621d1bdbe440424f65d5f22a25d0a12ddbb2a44b4b320d1a98188762e24ba4f81884bba5c5e6a42c24684df2790d80d11be880b90d8ed1e223c1190e8298f084fc427f390d8ad8a884f20113c8522a2d50e24f61e03115e176d48ece620c213b1aa20b1571111172f6621f1c19143b6888bf390e8798c22222e5ecc335e766eb3abec1abe88568fe75de9249c749dc9724f44abe99a68128d7b9c3ef789b878f177ff4e8925e1e4b9a13a408457d69149c2be878883454c4cdc71249240c4e122e234111f09a78e88c3457826e491c821e228111313396924761071b48889095718893a2242444cbc97452285883011712d137191c8232254c4445e12091b11e1226e2d3b82483410112ee2d6ad94201279444410712b2f880422a288b8755f0e090b1151442c2eda624834101149c4e28e181255444412b1b82486441e1191442ce6c590a823229288c58a181288882662f1be14120e22a289585c9442c242444411924820229288382e26622281886822e2b8988885440a11114588219146444411324920e208115f48248188a3444824818823457c5110470211478bf862491a09448488f8481a0944848990460211a12284914044b808592410114184281288882242120944441221880422a289904302111145c822818808224491404414119248202292888f52624820229a888fa4bc1cb710115184501288385cc45d47080907111145dc55424828444414715a0c893c222289b85b17436212119144dc95f3fd12294444127157ceb7d0b8888824e2b21243427d8d8828224e0b2231858808222e6704914821228288cb3b82483888882062410922a13288081571b9288a440a11a1222ea744917010112a62538922a1e6101122e2f2923012162242445cb685915059441c2da2aea4914821e24811f15c4ac44a42551071948859258f440a114788886d91889344679940c48122625b2462259142c4a122e25b246225d13a7420e2601175259384858843442cd84249a849441c2822ae8b4b0d48388f11719088d34a2c09b5838803445c76059350f388f85044414926e16411b15fc4ac124d42b977101114b1e90827a12c4404442cb84a3a099542446f2905095540c45e350509af3944e823420f12aa86086d44684242a510d19a2c771424f6cea2df20e2b4ab20d17b6795912e22e32848046b6e4b16b1b9a3cbcf412312ca296cef895829ac24fc9bc9967a446cd6f4f931e844a2b552e4667d11f582a38ac95e238acace6cb63d647674fa196846a2b5565856fba10ac9de35fc75c1d9d9d9d1ed07a01f89bd474bf61c616bfbf7ae2f09b59264119b0a12c72f9fe4b3460612fd5c7327f9f49982443f379a49be8f7020d14faf922b625641a29f72c9bdb32c40a2bf8babe4de62bb90e82fbe990c12fb8fa1497dd39581449f3592faee730712fdbeef48a88805058901778ea47d3ea2088901778ec47d62260589c1768ec489d07adfd09d446be748dea7ea32901868e748e0e72c5d480cd256023f79ab2031d07b8ee47d3a7f0912833d60f2fe959f0d89c13a973411750589c14a274cc4e51a2406bd9a4898884b0a12030f988912717d0a12833f62a2445cb7213178e79324a2ae2031841bcc0489b8be038961544a8e88530a12c3a89a1811d76b9018ce39b49414113f28480ce91c9a1011d7ab9018527642445c722031e465c27011fa5f531944c24e84082316095348f8cb84e922cc58248c2161274084198b84312454ce7811862c12e690b08d1761c822610e0955355c84091797869170ae9a2de20705896197365ac4c729480cbf3b268b78a52031fc9a068bf8d885c428ca9a2b22a320319283a8b1224c39801a4742550d15f1714d41624407d1193345bc529018d9e31a29c2a0d9d23c12aa68a288290589116e1dbf364fc49682c4482f278c1361d6b6612089f6d6619288290589d16f1d2689d8529018f9231b25e2920b89d1376590888fab0a126368db1c117505897164df3745c4860389319d440d11f1b1ab2031b671c20811550589b175cf041145058931de4e5cd35fc496038971e66a2fe292ad2031d61a9a8b3072b4349b849ad45b444d4162ec65741691519088a1597d45141524623976ccea2ae29582448c26341461e8f13309245a23a686228cfbd44cb248e82802127192d052c46f20112f09fd4440225e121a8a8044ac2474140189384968290212da90d04504247421a18d08486842421f1190d08384462220a105099d44fc16121a90d04a04243420a1970848c44f42331190889d846e2220113709ed4440226612fa898044bc24341401895849e82802127192d052c4cf21113309ed4440226612fa898044bc24341401895849e82802127192d0520424b421a18b0848e842421b1190d084843e2220a107098d4440420b123a89f803243420a19508486840422f1190889f84662220113b09dd4440226e12da898044cc24f4130189784968280212b192d051c41fe620115bf35a8af812123193d04e04246226a19f0848c44b4243119088292735f7424f115f7ef930d380c4b89f7bf29c9e9365b7dffffef1dc0e24c6949bbea0e70d554044abc5f3932e24469c9d2e96f57caf718088567ffa55366d4362541c6af92d3d3f1f718408bf33d9860389e1cf92e7f4fc9c6504115e5f7d753f6f080b234858735febf9ef358e21c26f66ae0989c167c9c90b7afebbcf3e447cf5d58d1b372a93162406385a1437f5fcb680fe45b4ba5bd179e2d49684ddc89cd5f35b870616e1b7904d3b90883e4b36e7ceeaf9ed85431371e3c6cb972f1f683971ea47c29a7ba5e7b7200f5dc4cb97376fde5cc9352171e42c59d7f3b7298c4c84df2fb49a38f579166f965cd7f377f08c5a44abebbf98b421119c25d7f5fc5d7e6312e1f7333daebee327e134332b7afe4ee0318bb879f3c489133fc43f71c64ca239a7ed6f928f4584df0ff14e9c3192b026eb673a21a24784dfe9794b18096f967c70e60c220e13d1eab7afe66d2124bc59b28703220e1171e2c75ebf8b61e21c3389d62c79fbf619444413e1572e8e77e2b4c6c9616afb762b441c47449bc51827ce7191b0aad92b57ae20a23f117f6b55ca598921e1cd9257fc10318088fff5faf2a74b96f124ec46f1fe952b88188a08bf89fa8827ce5192701a996f9697af20629822da2c4639715a239c25975b2162f822fcfe556c1a44c29b25973b216244227ed4eadfa39838ade1cf92d9d5e565448c4344ab3f9d1bf6c439d4ff9d9d2e3e5c5d45c41845f82dd60bb68624ec466666d50f116316d1ea7f7e55ac391a91f066c9ca6a3744c421c2ef4cb1a60509ab5a595b5b4344fc22fc1e669a7192709bd5ec9a1f223411e1f5f71b8f33353b0612de41737aad1b223412d1eab3cffef3937e970babbf9345beec85087d45f8fde727fd9c44ac3e3cbc2f9711618008bfcf0bce884934f3e53222cc11f1d967fff8c7fbe6e84838e9c765449826c2eb7a6134249c6aa98c0813457cf7dd77c740119d44e3c506224c15d142d11c320937bb8108934578cdd8c32451dd4084e9229e3cb959181a09278b880488f09a718643c22d212219229e3c59b08641a2b18188a48878f2e484353809442449c4a3478f0a83924044c244849ab010214dc4a347b541483411913c118f8e9e272cce1ae24478269c7e4938e7119144114f9ffeac5f1239442453c4d3a799fe4834119154114f9f36fb21e194109158114f7fd30f891c22922be288ade370121622922ce2f98fed6393c82222c9229e3faf1c97848588648b78fedc3e26892c22122ee2b065e230121622922ee2b065c20a5d2410915411872c138790b011917c11cffee61c83c41422922fe2d9b3a963909846840011cf2e4627d144840411cf9e599149e4102142c4b36c6412d3881021e2d9cfa392682242868803770eebd07d03110244bcce4724f118114244bc9e8846c245841411af5f3b9148a4112146c4eb5a241279448811f13a1b8904df672947c401c3c401246c44c811f1fa7514120d440812f1261581c4142204897833178104df942e49c49bd90824102149c49b8970123622248978f3269c8485085122de58a124aa881025e24d2d94c41422448978930f2591458428116f674349dc418428116f7f194a0211b244bcfd5118091711b244bc7d1b46c2428430116fad10120d440813f1361542a28a086122de5643484c21429888b7f910125944081311850422448978f7cb10123388102622940422a489082581086922debd8b4a021152448490b010214e444412889023e29d13850422048978978a40021192449c3c9a441511e244442081085922c249204298889373212410214dc4c9fcd12410214e4408890c22c48908219145843811d148204290884824102149441412881025e2e4ab5012889025e2e4bfc248204298885012889026228c0422c48988420211a244442081085922c249204298881012889027228c0422c489f8e7d12410214fc4714820428488639040840c11ffbc129504228488f8ffa824102145440889078810272284441d11e24444db38102148c43e12ff1560007b0adf6d9782bae50000000049454e44ae426082);

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
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `seat_id` (`seat_id`),
  ADD KEY `user_id` (`user_id`);

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
  ADD PRIMARY KEY (`user_id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `userimage`
--
ALTER TABLE `userimage`
  ADD PRIMARY KEY (`username`);

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`tkt_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `invoice_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

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

--
-- Constraints for table `userimage`
--
ALTER TABLE `userimage`
  ADD CONSTRAINT `userimage_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;