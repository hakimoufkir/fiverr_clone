-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 08:45 PM
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
-- Database: `saad`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `timestamp`) VALUES
(1, 1, 'HHHHHHHHHHHHHHH', '2023-07-20 03:09:47'),
(2, 1, 'HHHHHHHHHHHHHHH', '2023-07-20 03:09:50'),
(3, 1, 'dqwdqwdqwdqdq', NULL),
(4, 1, 'HHHHHHHHHHHHHHHHHHHHHHHHHH', NULL),
(5, 1, 'dwqdqwdqwdqwd', '2023-07-20 03:31:39'),
(6, 1, 'tttt', '2023-07-20 03:36:23'),
(7, 1, 'LEAGUE IS FUCKED UP SEASdoksajdskabklsjald;a', '2023-07-20 03:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `artistname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `firstname`, `lastname`, `artistname`, `email`, `telephone`, `description`) VALUES
(1, '1', '2', '3', 'admin@admin', '4', '5'),
(2, '1', '2', '3', 'admin@admin', '4', '5'),
(3, 'test', 'test', 'dwqdqdwqdqwd', 'admin@admin', 'dwqdqwd', 'qwdqwdqw'),
(4, 'test', 'test', 'dwqdqdwqdqwd', 'admin@admin', 'dqwdqwdqw', 'dwqdqwdqwdqwdq'),
(5, 'test', 'test', 'dwqdqdwqdqwd', 'admin@admin', '!@!@!@', '@!@!@!@'),
(6, 'test', 'test', 'dwqdqdwqdqwd', 'admin@admin', 'FFFFF', 'FFFFFFFFFFFF'),
(7, 'test', 'test', 'dwqdqdwqdqwd', 'admin@admin', 'DWQDQWD', 'DQWDQWDQ'),
(8, 'test', 'test', 'dwqdqdwqdqwd', 'admin@admin', 'DWQDQ', 'WDQWDQW'),
(9, 'ddddddddd', 'ddddddddd', 'dfdfdfd', 'admin@admin', '', ''),
(10, 'taha_Test', 'taha_Test', 'HeroOfTime19', 'admin@admin', '06529516', 'hsadjasgdsadhasdhjasdhjasfhdasfdha');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `artistNom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `isApproved` int(50) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `artistNom`, `email`, `password`, `photo`, `isApproved`) VALUES
(1, 'ddddddddd', 'dddddddddddddddddd', 'dfdfdfd', 'admin@admin', 'admin', '_1689810836_Screenshot_3.png', 1),
(2, 'test', 'test', 'WWWWW', 'admin@admin', 'admin', '_1689812380_icons8-location-100.png', 1),
(3, 'test', 'test', 'dwqdqdwqdqwd', 'admin@admin', 'admin', '_1689814186__C__Users_hakim_Downloads_raida-202307', 0),
(4, 'GOAT', 'N1', 'Kouzin', 'goat@goat', '123', '_1689816686_kouz1.jpg', 0),
(5, 'test', 'test', 'dwqdqdwqdqwd', 'admin2@admin2', '123', '_1689814186__C__Users_hakim_Downloads_raida-202307', 0),
(6, 'taha_Test', 'slimani_Test', 'HeroOfTime19', 'admin@admin', '123456789', '_1689824296_20230619_192928.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
