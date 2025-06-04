-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 30, 2025 at 09:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `VoterDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `AddCandidate`
--

CREATE TABLE `AddCandidate` (
  `id` int(20) NOT NULL,
  `cname` text NOT NULL,
  `symbol` varchar(200) NOT NULL,
  `cparty` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `votes` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AddCandidate`
--

INSERT INTO `AddCandidate` (`id`, `cname`, `symbol`, `cparty`, `photo`, `votes`) VALUES
(15, 'Narendra Modi', 'bjp.jpg', 'Bharatiya Janata Party (BJP) ', 'Narendra modi.jpg', 2),
(16, 'Rahul Gandhi', 'congress.jpg', 'Indian National Congress(INC)', 'Rahul Gandhi.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `AdminLogin`
--

CREATE TABLE `AdminLogin` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AdminLogin`
--

INSERT INTO `AdminLogin` (`id`, `name`, `password`) VALUES
(1, 'Admin', 'Admin@1122');

-- --------------------------------------------------------

--
-- Table structure for table `VoterRegistration`
--

CREATE TABLE `VoterRegistration` (
  `id` int(25) NOT NULL,
  `name` text NOT NULL,
  `dob` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `gender` text NOT NULL,
  `photo` varchar(200) NOT NULL,
  `idtype` text NOT NULL,
  `voterid` varchar(100) NOT NULL,
  `issue` varchar(100) NOT NULL,
  `expire` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `cpass` varchar(100) NOT NULL,
  `status` int(100) NOT NULL,
  `votes` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VoterRegistration`
--

INSERT INTO `VoterRegistration` (`id`, `name`, `dob`, `email`, `mobile`, `gender`, `photo`, `idtype`, `voterid`, `issue`, `expire`, `pass`, `cpass`, `status`, `votes`) VALUES
()
--
-- Indexes for dumped tables
--

--
-- Indexes for table `AddCandidate`
--
ALTER TABLE `AddCandidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `AdminLogin`
--
ALTER TABLE `AdminLogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `VoterRegistration`
--
ALTER TABLE `VoterRegistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AddCandidate`
--
ALTER TABLE `AddCandidate`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `AdminLogin`
--
ALTER TABLE `AdminLogin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `VoterRegistration`
--
ALTER TABLE `VoterRegistration`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
