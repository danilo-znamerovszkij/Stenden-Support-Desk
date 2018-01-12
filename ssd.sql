-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2018 at 03:38 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssd`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` enum('Wish','Technical Problem','Question','Failure','Functional Problem') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(60) NOT NULL,
  `client_email` varchar(64) DEFAULT NULL,
  `client_phone_number` varchar(12) DEFAULT NULL,
  `has_maintenance_license` tinyint(1) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `contact_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_name`, `client_email`, `client_phone_number`, `has_maintenance_license`, `username`, `password`, `contact_id`) VALUES
(1, 'EFG', 'EFG@gmail.com', '078845850202', 0, 'EFG', 'EFG', 1),
(2, 'HMC', 'HMC@gmail.com', '099993849293', 1, 'HMC', 'HMC', 2),
(3, 'ABC-Hek', 'ABC-Hek@gmail.com', '04859392030', 1, 'ABC-Hek', 'ABC-Hek', 3),
(4, 'Van krootwijk tot Spangen aan de ijssel', 'krootwijk@gmail.com', '084594858394', 1, 'krootwijk', 'krootwijk', 4),
(5, 'Childcare  Foundation Emmen', 'childcare@gmail.com', '078659638495', 1, 'childcare', 'childcare', 5),
(6, 'SC Angelso', 'angelso@gmail.com', '08596604593', 1, 'angelso', 'angelso', 6),
(7, '0900-discussie platform en forum met 37 spreker in 2 dagen', 'discussieplatform@gmail.com', '08949594858', 1, 'discussie', 'discussie', 7),
(8, 'Duif', 'duif@gmail.com', '07594504584', 1, 'duif', 'duif', 8),
(9, 'Eekhout schilderwerken', 'eekhout@gmail.com', '058685475849', 1, 'eekhout', 'eekhout', 9),
(10, 'Mike', 'mike@klussen.com', '07944584277', 1, 'klussenbus', 'klussenbus', 10),
(11, 'Bobby', 'bobby@spoor.com', '049558493849', 1, 'captainspoor', 'captainspoor', 11);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`) VALUES
(1, 'EFG'),
(2, 'HMC'),
(3, 'ABC-Hek'),
(4, 'Van krootwijk'),
(5, 'Childcare  Foundation Emmen'),
(6, 'SC Angelso'),
(7, '0900-discussie platform en forum met 37 spreker in 2 dagen'),
(8, 'Duif '),
(9, 'Eekhout schilderwerken'),
(10, 'Klussenbus jansen en jansen'),
(11, 'captain spoor'),
(12, 'DS and PD'),
(13, 'Corp stoeptegels');

-- --------------------------------------------------------

--
-- Table structure for table `contact_product`
--

CREATE TABLE `contact_product` (
  `contact_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `operator_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `solution` varchar(512) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `client_id`, `operator_id`, `status_id`, `category_id`, `description`, `solution`, `start_date`, `end_date`) VALUES
(1, 2, NULL, NULL, NULL, 'Pooped badly', 'get better loo', '2018-01-11', '2018-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `operator_id` int(11) NOT NULL,
  `operator_name` varchar(30) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `operator_photo` varchar(256) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`operator_id`, `operator_name`, `phone`, `email`, `username`, `password`, `operator_photo`, `position_id`) VALUES
(1, 'Rob', '0948586747', NULL, 'Rob', 'password', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL,
  `position_Role` enum('operator','team_leader','security_operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position_Role`) VALUES
(1, 'operator'),
(2, 'team_leader'),
(3, 'security_operator');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `contact_product`
--
ALTER TABLE `contact_product`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `operator_id` (`operator_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD UNIQUE KEY `operator_id` (`operator_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`);

--
-- Constraints for table `contact_product`
--
ALTER TABLE `contact_product`
  ADD CONSTRAINT `contact_product_ibfk_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`),
  ADD CONSTRAINT `contact_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`operator_id`) REFERENCES `operator` (`operator_id`),
  ADD CONSTRAINT `incident_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `incident_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `operator`
--
ALTER TABLE `operator`
  ADD CONSTRAINT `operator_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
