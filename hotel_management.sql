-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2019 at 02:20 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance_bookings`
--

CREATE TABLE IF NOT EXISTS `advance_bookings` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `day_in` int(11) DEFAULT NULL,
  `month_in` int(11) DEFAULT NULL,
  `year_in` int(11) DEFAULT NULL,
  `day_out` int(11) DEFAULT NULL,
  `month_out` int(11) DEFAULT NULL,
  `year_out` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_no`),
  KEY `room_no` (`room_no`),
  KEY `c_id` (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `advance_bookings`
--

INSERT INTO `advance_bookings` (`s_no`, `day_in`, `month_in`, `year_in`, `day_out`, `month_out`, `year_out`, `room_no`, `c_id`) VALUES
(1, 5, 3, 2019, 9, 3, 2019, 107, 999999),
(2, 9, 4, 2019, 15, 4, 2019, 602, 999995),
(3, 6, 8, 2019, 7, 8, 2019, 101, 988888),
(4, 9, 3, 2019, 12, 3, 2019, 304, 999999),
(5, 9, 4, 2019, 15, 5, 2019, 604, 999995),
(6, 3, 7, 2019, 7, 7, 2019, 109, 988888);

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `month` int(11) NOT NULL DEFAULT '0',
  `years` int(11) NOT NULL DEFAULT '0',
  `standard` int(11) DEFAULT NULL,
  `executive` int(11) DEFAULT NULL,
  `deluxe` int(11) DEFAULT NULL,
  `Total_month` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`month`,`years`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`month`, `years`, `standard`, `executive`, `deluxe`, `Total_month`) VALUES
(1, 2019, 42, 16, 5, 63),
(2, 2019, 14, 19, 3, 36),
(3, 2019, 18, 20, 13, 51),
(4, 2019, 60, 1, 11, 72),
(5, 2019, 27, 19, 3, 49),
(6, 2019, 22, 15, 8, 45),
(7, 2019, 22, 15, 8, 45),
(8, 2019, 22, 15, 8, 45),
(9, 2019, 22, 15, 8, 45),
(10, 2019, 22, 15, 8, 45),
(11, 2019, 22, 15, 8, 45),
(12, 2019, 22, 15, 8, 45);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `age` int(11) NOT NULL,
  `first_name` varchar(300) NOT NULL,
  `c_id` int(11) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`age`, `first_name`, `c_id`, `last_name`, `address`, `email`) VALUES
(25, 'Alia', 977777, 'Bhatt', 'Mumbai', 'blahblah4@gmail.com'),
(19, 'Deep', 988888, 'Dama', 'Mumbai', 'blahblah3@gmail.com'),
(19, 'Pragya', 999995, 'Chatterjee', 'USA', 'blahblah2@gmail.com'),
(18, 'Heet', 999999, 'Sakaria', 'Lalbaug', 'blahblah@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `s_no` int(11) NOT NULL AUTO_INCREMENT,
  `day_in` int(11) DEFAULT NULL,
  `month_in` int(11) DEFAULT NULL,
  `year_in` int(11) DEFAULT NULL,
  `day_out` int(11) DEFAULT NULL,
  `month_out` int(11) DEFAULT NULL,
  `year_out` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_no`),
  KEY `room_no` (`room_no`),
  KEY `customer_log` (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`s_no`, `day_in`, `month_in`, `year_in`, `day_out`, `month_out`, `year_out`, `room_no`, `c_id`) VALUES
(1, 8, 10, 2018, 11, 10, 2018, 101, 999999),
(2, 13, 1, 2019, 14, 1, 2019, 102, 999995),
(3, 13, 1, 2019, 14, 1, 2019, 103, 999999),
(4, 13, 1, 2019, 14, 1, 2019, 1010, 988888);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `room_no` int(11) NOT NULL DEFAULT '0',
  `type` varchar(300) DEFAULT NULL,
  `available` int(11) DEFAULT '1',
  PRIMARY KEY (`room_no`),
  KEY `type_rate_fkey` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_no`, `type`, `available`) VALUES
(101, 'Standard', 1),
(102, 'Standard', 1),
(103, 'Standard', 1),
(104, 'Standard', 1),
(105, 'Standard', 1),
(106, 'Standard', 1),
(107, 'Standard', 1),
(108, 'Standard', 1),
(109, 'Standard', 1),
(110, 'Standard', 1),
(201, 'Standard', 1),
(202, 'Standard', 1),
(203, 'Standard', 1),
(204, 'Standard', 1),
(205, 'Standard', 1),
(206, 'Standard', 1),
(207, 'Standard', 1),
(208, 'Standard', 1),
(209, 'Standard', 1),
(210, 'Standard', 1),
(301, 'Standard', 1),
(302, 'Standard', 1),
(303, 'Standard', 1),
(304, 'Standard', 1),
(305, 'Standard', 1),
(306, 'Standard', 1),
(307, 'Standard', 1),
(308, 'Standard', 1),
(309, 'Standard', 1),
(310, 'Standard', 1),
(401, 'Standard', 1),
(402, 'Standard', 1),
(403, 'Standard', 1),
(404, 'Standard', 1),
(405, 'Standard', 1),
(406, 'Standard', 1),
(407, 'Standard', 1),
(408, 'Standard', 1),
(409, 'Standard', 1),
(410, 'Standard', 1),
(501, 'Standard', 1),
(502, 'Standard', 1),
(503, 'Standard', 1),
(504, 'Standard', 1),
(505, 'Standard', 1),
(506, 'Standard', 1),
(507, 'Standard', 1),
(508, 'Standard', 1),
(509, 'Standard', 1),
(510, 'Standard', 1),
(601, 'Executive', 1),
(602, 'Executive', 1),
(603, 'Executive', 1),
(604, 'Executive', 1),
(605, 'Executive', 1),
(606, 'Executive', 1),
(607, 'Executive', 1),
(608, 'Executive', 1),
(609, 'Executive', 1),
(610, 'Executive', 1),
(701, 'Executive', 1),
(702, 'Executive', 1),
(703, 'Executive', 1),
(704, 'Executive', 1),
(705, 'Executive', 1),
(706, 'Executive', 1),
(707, 'Executive', 1),
(708, 'Executive', 1),
(709, 'Executive', 1),
(710, 'Executive', 1),
(801, 'Executive', 1),
(802, 'Executive', 1),
(803, 'Executive', 1),
(804, 'Executive', 1),
(805, 'Executive', 1),
(806, 'Executive', 1),
(807, 'Executive', 1),
(808, 'Executive', 1),
(809, 'Executive', 1),
(810, 'Executive', 1),
(901, 'Deluxe', 1),
(902, 'Deluxe', 1),
(903, 'Deluxe', 1),
(904, 'Deluxe', 1),
(905, 'Deluxe', 1),
(906, 'Deluxe', 1),
(907, 'Deluxe', 1),
(908, 'Deluxe', 1),
(909, 'Deluxe', 1),
(910, 'Deluxe', 1),
(1001, 'Deluxe', 1),
(1002, 'Deluxe', 1),
(1003, 'Deluxe', 1),
(1004, 'Deluxe', 1),
(1005, 'Deluxe', 1),
(1006, 'Deluxe', 1),
(1007, 'Deluxe', 1),
(1008, 'Deluxe', 1),
(1009, 'Deluxe', 1),
(1010, 'Deluxe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_rate`
--

CREATE TABLE IF NOT EXISTS `type_rate` (
  `type` varchar(300) NOT NULL DEFAULT '',
  `rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_rate`
--

INSERT INTO `type_rate` (`type`, `rate`) VALUES
('Deluxe', 5000),
('Executive', 3000),
('Standard', 1000);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advance_bookings`
--
ALTER TABLE `advance_bookings`
  ADD CONSTRAINT `advance_bookings_ibfk_1` FOREIGN KEY (`room_no`) REFERENCES `room` (`room_no`),
  ADD CONSTRAINT `advance_bookings_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`);

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`room_no`) REFERENCES `room` (`room_no`),
  ADD CONSTRAINT `log_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`type`) REFERENCES `type_rate` (`type`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
