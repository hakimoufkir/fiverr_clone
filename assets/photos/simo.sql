-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 03:33 PM
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
-- Database: `simo`
--

-- --------------------------------------------------------

--
-- Table structure for table `annonce`
--

CREATE TABLE `annonce` (
  `id_annonce` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `photo_cover` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `annonce`
--

INSERT INTO `annonce` (`id_annonce`, `title`, `id_user`, `id_category`, `photo_cover`, `description`) VALUES
(1, 'Logo Design', 2, 1, 'logo1_cover.jpg', 'Looking for a creative logo designer for my business.'),
(2, 'Website Development', 3, 2, 'website1_cover.jpg', 'Need a skilled web developer to build a responsive website.'),
(3, 'Content Writing', 1, 3, 'content1_cover.jpg', 'Require high-quality content writer for blog posts.'),
(4, 'Translation Services', 2, 4, 'translation1_cover.jpg', 'Seeking a translator for English to Spanish translations.'),
(6, 'wa hassan', 11, 4, '_1689920833_Screenshot_3.png', 'hhhhhhh'),
(8, 'Medox', 1, 1, 'Medox.jpg', 'Graphic Designer & Video Editor'),
(9, 'Johnson', 2, 2, 'sarah.jpg', 'Logo Conception & Video Montage & 3D Modeling'),
(10, 'David', 3, 3, 'david.jpg', 'Artificial Intelligence (AI) Developer & Full-stack Developer & Machine Learning Engineer'),
(11, 'chen', 4, 2, 'michael.jpg', 'Game Designer & Packaging Designer'),
(12, 'Garcia', 5, 4, 'Maria.jpg', '3D Modeler/Designer & Industrial Designer & UI/UX Designer'),
(13, 'Logo Design', 2, 1, 'logo1_cover.jpg', '2'),
(14, 'Logo Design', 2, 1, 'logo1_cover.jpg', 'Looking for a creative logo designer for my business.'),
(15, 'Logo Design', 2, 1, 'logo1_cover.jpg', 'Need a modern and professional logo for my startup.'),
(16, 'Logo Design', 2, 1, 'logo1_cover.jpg', 'Want a unique and eye-catching logo for my website.'),
(17, 'Logo Design', 2, 1, 'logo1_cover.jpg', 'Looking to hire a skilled logo designer for a project.'),
(18, 'Logo Design', 2, 1, 'logo1_cover.jpg', 'In search of a logo designer to create a brand identity.'),
(19, 'hhhhhhhhhhhhhh', 11, 3, '_1689930285_Screenshot_3.png', 'hghhh'),
(20, 'sdgfghjkm,/.', 11, 1, '_1689932082_testimonial.png', 'fdsfghjknm.,/');

-- --------------------------------------------------------

--
-- Table structure for table `badge`
--

CREATE TABLE `badge` (
  `id_badge` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `badge`
--

INSERT INTO `badge` (`id_badge`, `nom`) VALUES
(1, 'Gold Badge'),
(2, 'Silver Badge'),
(3, 'Bronze Badge'),
(4, 'Client Badge');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `nom`) VALUES
(1, 'Graphic Design'),
(2, 'Web Development'),
(3, 'Writing'),
(4, 'Translation');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `job` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `coverphoto` varchar(255) DEFAULT NULL,
  `id_badge` int(11) DEFAULT NULL,
  `is_freelancer` tinyint(1) NOT NULL DEFAULT 0,
  `orders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nom`, `prenom`, `email`, `mdp`, `job`, `photo`, `coverphoto`, `id_badge`, `is_freelancer`, `orders`) VALUES
(1, 'John', 'Doe', 'john@example.com', 'password', NULL, 'john.jpg', 'cover_john.jpg', 1, 0, 5),
(2, 'Jane', 'Smith', 'jane@example.com', 'password', 'Graphic Designer', 'jane.jpg', 'cover_jane.jpg', 2, 1, 10),
(3, 'Mike', 'Johnson', 'mike@example.com', 'password', 'Web Developer', 'mike.jpg', 'cover_mike.jpg', 3, 1, 15),
(4, 'Emily', 'Lee', 'emily@example.com', 'password', NULL, 'emily.jpg', 'cover_emily.jpg', NULL, 0, 8),
(5, 'client', 'client_P', 'client@client.com', 'client', 'client', 'client.jpg', 'cover_client.jpg', 4, 0, 0),
(11, 'testw', 'testww', 'goat@goat', '123', 'wwwww', '_1689915030_icons8-location-100.png', 'assets/photos/_1689915030_websiteplanet-dummy-150X100.png', 1, 0, NULL),
(12, 'wewew', 'ewew', 'goat@goat', '123', 'ewewewew', '_1689919283_Screenshot_5.png', '../assets/photos/_1689919283_localhost_reda_ (1).png', NULL, 0, NULL),
(13, 'wwwww', 'wwwwwwww', 'goat@goat', '123', 'wwwwwwwwwwwww', '_1689932517_loder.jpg', '../assets/photos/_1689932517_michaelbg.jpg', NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annonce`
--
ALTER TABLE `annonce`
  ADD PRIMARY KEY (`id_annonce`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `badge`
--
ALTER TABLE `badge`
  ADD PRIMARY KEY (`id_badge`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_badge` (`id_badge`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annonce`
--
ALTER TABLE `annonce`
  MODIFY `id_annonce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `badge`
--
ALTER TABLE `badge`
  MODIFY `id_badge` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `annonce`
--
ALTER TABLE `annonce`
  ADD CONSTRAINT `annonce_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `annonce_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_badge`) REFERENCES `badge` (`id_badge`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
