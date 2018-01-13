-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2018 at 03:11 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Wish'),
(2, 'Query'),
(3, 'Crash'),
(4, 'Functional problem'),
(5, 'Technical problem');

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
(1, 'Stenden'),
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
(13, 'Corp stoeptegels'),
(14, 'EFG');

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `client_id` int(5) DEFAULT NULL,
  `operator_id` int(5) DEFAULT NULL,
  `status_id` int(11) DEFAULT '1',
  `category_id` int(11) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `solution` varchar(512) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `client_id`, `operator_id`, `status_id`, `category_id`, `description`, `solution`, `start_date`, `end_date`) VALUES
(1, 2, NULL, 1, 3, 'Pooped badly', 'get better loo', '2018-01-10 23:00:00', NULL),
(2, 2, 1, 6, 3, 'PC crashed', 'Turn off and on', '0000-00-00 00:00:00', NULL),
(3, 2, 1, 6, 5, 'There is no display after I log in?', 'Make sure your monitor is connected to a power source. After refresh the page. If nothing changes log out of the system and log back in. If the problem persists reinstall the system', '2018-01-12 19:39:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `id` int(5) NOT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `contact_id` int(11) NOT NULL,
  `product_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `license`
--

INSERT INTO `license` (`id`, `purchase_date`, `contact_id`, `product_name`) VALUES
(1, '2018-01-12 19:47:48', 2, 'Microsoft Widnows');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL,
  `position_Role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position_Role`) VALUES
(1, 'Client'),
(2, 'Operator'),
(3, 'Team Leader'),
(4, 'Security Operator'),
(5, 'Super Admin');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Not assigned'),
(2, 'Pending'),
(3, 'Forwarded to Engineer'),
(4, 'Forwarded to Account Manager'),
(5, 'Resolved'),
(6, 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `isEmployee` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(60) NOT NULL,
  `has_maintenance_license` tinyint(1) NOT NULL DEFAULT '0',
  `position_id` int(5) NOT NULL,
  `contact_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `isEmployee`, `name`, `phone`, `email`, `username`, `password`, `has_maintenance_license`, `position_id`, `contact_id`) VALUES
(1, 1, 'Rene laan', '051231231231', 'rene.laan@stenden.com', 'rene', 'laan', 0, 3, 1),
(2, 0, 'Client 1', '2134kj231', 'asdkjh@kjhsdaf.com', 'customer', 'customer', 1, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

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
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_fk` (`position_id`),
  ADD KEY `contact_fk` (`contact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `license`
--
ALTER TABLE `license`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `client` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `incident_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `incident_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `operator` FOREIGN KEY (`operator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `contact_fk` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`),
  ADD CONSTRAINT `position_fk` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
