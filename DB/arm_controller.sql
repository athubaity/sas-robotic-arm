-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 12:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+03:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arm_controller`
--

-- --------------------------------------------------------

--
-- Table structure for table `basedirection`
--

CREATE TABLE `basedirection` (
  `id` int(8) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basedirection`
--

INSERT INTO `basedirection` (`id`, `direction`, `timestamp`) VALUES
(1, 'forward', '2021-06-27 10:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `controller`
--

CREATE TABLE `controller` (
  `ID` int(8) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Value` int(255) NOT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `controller`
--

INSERT INTO `controller` (`ID`, `Name`, `Value`, `TimeStamp`) VALUES
(0, 'Status', 1, '2021-06-27 10:18:28'),
(1, 'Motor1', 10, '2021-06-27 10:15:05'),
(2, 'Motor2', 35, '2021-06-27 10:19:10'),
(3, 'Motor3', 0, '2021-06-27 10:15:05'),
(4, 'Motor4', 0, '2021-06-27 10:15:05'),
(5, 'Motor5', 0, '2021-06-27 10:15:05'),
(6, 'Motor6', 0, '2021-06-27 10:15:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `controller`
--
ALTER TABLE `controller`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
