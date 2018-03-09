-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2018 at 06:43 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imageshare2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com'),
(2, 'nixon', 'pass1', 'nixon@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `serial` int(10) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `privacy` varchar(100) NOT NULL,
  `share` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`serial`, `user_id`, `designation`, `privacy`, `share`, `status`, `image`) VALUES
(1, '20', 'User', 'public', '13', 'agent1', '7605-black-crown.png'),
(2, '20', 'User', 'public', '18', 'agent1', '9969-p-image.png'),
(3, '13', 'Admin', 'public', '13', 'Admin', '9464-green-crown.png'),
(4, '13', 'Admin', 'public', '13', 'Admin', '7208-goals.png'),
(5, '20', 'User', 'private', '13', 'agent1', '3848-image-9.png'),
(6, '18', 'Agent', 'public', '13', 'Admin', '2559-blackheart.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `parent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `publisher`, `parent`) VALUES
(13, 'admin', 'pass1', 'admin@gmail.com', 'Admin', 'Admin'),
(18, 'nixon', 'pass1', 'nixon@gmail.com', 'Agent', 'Admin'),
(19, 'agent1', 'pass1', 'agent1@gmail.com', 'Agent', 'Admin'),
(20, 'user1', 'pass1', 'user1@gmail.com', 'User', 'agent1'),
(21, 'user2', 'pass1', 'user2@gmail.com', 'User', 'nixon'),
(22, 'user3', 'pass1', 'user3@gmail.com', 'User', 'agent1'),
(23, 'user4', 'pass1', 'user4@gmail.com', 'User', 'agent1'),
(24, 'user5', 'pass1', 'user5@gmail.com', 'User', 'agent1'),
(25, 'user6', 'pass1', 'user6@gmail.com', 'User', 'agent1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `serial` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
