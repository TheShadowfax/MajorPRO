-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2018 at 07:48 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nimh`
--

-- --------------------------------------------------------

--
-- Table structure for table `camp_details`
--

CREATE TABLE `camp_details` (
  `serial` int(11) NOT NULL,
  `camp_name` varchar(30) NOT NULL,
  `camp_code` varchar(20) NOT NULL,
  `count` int(11) NOT NULL,
  `last_conducted` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp_details`
--

INSERT INTO `camp_details` (`serial`, `camp_name`, `camp_code`, `count`, `last_conducted`) VALUES
(1, 'Srikakulam', 'SKLM', 0, '04/02/2018'),
(2, 'Tirupathi', 'TRP', 0, ''),
(3, 'Hyderabad', 'HYD', 0, ''),
(4, 'Adilabad', 'ADLBD', 0, ''),
(5, 'Kodada', 'KDD', 0, '05/02/2018');

-- --------------------------------------------------------

--
-- Table structure for table `kit_costs`
--

CREATE TABLE `kit_costs` (
  `type` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kit_costs`
--

INSERT INTO `kit_costs` (`type`, `cost`) VALUES
('Type 1', 8000),
('Type 2', 7000),
('Type 3', 4500),
('Type 4', 5500);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `sno` int(11) NOT NULL,
  `registration_number` varchar(40) NOT NULL,
  `registration_date` varchar(20) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `picture` mediumblob NOT NULL,
  `finger_image` mediumblob NOT NULL,
  `left_thumb` varchar(2048) NOT NULL,
  `right_thumb` varchar(2048) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `village` varchar(300) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(100) NOT NULL,
  `gname` varchar(200) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `fincome` varchar(11) NOT NULL,
  `level` varchar(300) NOT NULL,
  `Recommended_Kit` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `aadhar` varchar(12) NOT NULL,
  `caste` varchar(5) DEFAULT NULL,
  `escort` varchar(200) NOT NULL,
  `ephone` int(11) NOT NULL,
  `a_proof` mediumblob NOT NULL,
  `d_proof` mediumblob NOT NULL,
  `i_proof` mediumblob NOT NULL,
  `date_given` varchar(20) DEFAULT NULL,
  `cost` int(11) NOT NULL,
  `subsidy_provided` int(11) NOT NULL,
  `outbeneficiary` int(11) NOT NULL,
  `kitcost_reduced` int(11) NOT NULL,
  `total_paid` int(11) NOT NULL,
  `days_stayed` int(11) NOT NULL,
  `travel_allowance` int(11) NOT NULL,
  `accompanied` varchar(10) NOT NULL,
  `registration_camp` varchar(25) NOT NULL,
  `distribution_camp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camp_details`
--
ALTER TABLE `camp_details`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `camp_details`
--
ALTER TABLE `camp_details`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
