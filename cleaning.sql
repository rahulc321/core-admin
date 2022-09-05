-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 05, 2022 at 12:52 PM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cleaning`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `creaeted_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `user_id`, `job_id`, `creaeted_at`) VALUES
(1, 8, 3, '2021-11-03 00:03:51'),
(2, 8, 3, '2021-11-03 00:04:47'),
(3, 8, 3, '2021-11-03 00:04:50'),
(4, 8, 3, '2021-11-03 00:04:54'),
(5, 8, 3, '2021-11-03 00:04:55'),
(6, 8, 3, '2021-11-03 00:04:57'),
(7, 8, 3, '2021-11-03 00:05:00'),
(8, 8, 3, '2021-11-03 00:05:00'),
(9, 8, 2, '2021-11-03 00:05:26'),
(10, 8, 1, '2021-11-05 16:11:08'),
(11, 8, 3, '2021-11-05 16:23:16'),
(12, 8, 2, '2021-11-05 16:32:40'),
(13, 8, 1, '2021-11-05 16:35:38'),
(14, 8, 5, '2021-11-05 16:47:54'),
(15, 13, 6, '2021-11-06 22:16:11'),
(16, 13, 4, '2021-11-06 23:15:14'),
(17, 13, 6, '2021-11-06 23:17:10'),
(18, 16, 7, '2021-11-07 13:14:59'),
(19, 16, 7, '2021-11-07 16:18:50'),
(20, 16, 4, '2021-11-07 18:00:38'),
(21, 16, 8, '2021-11-07 18:01:32'),
(22, 16, 8, '2021-11-07 18:02:23'),
(23, 16, 7, '2021-11-07 18:07:54'),
(24, 18, 9, '2021-11-07 21:26:56'),
(25, 18, 10, '2021-11-07 23:04:10'),
(26, 18, 11, '2021-11-08 13:49:31'),
(27, 18, 14, '2021-11-08 16:10:14'),
(28, 18, 19, '2021-11-09 08:16:23'),
(29, 18, 20, '2021-11-10 08:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `creaeted_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`, `status`, `creaeted_at`) VALUES
(1, 'House Cleaning', 1, '2021-11-01 15:04:29'),
(2, 'Office Cleaning', 1, '2021-11-01 15:04:29'),
(3, 'Windows Cleaning', 1, '2021-11-01 15:04:54'),
(4, 'Plumbing Service', 1, '2021-11-01 15:05:07'),
(5, 'Testttt', 1, '2021-11-05 22:23:46');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `creaeted_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `status`, `creaeted_at`) VALUES
(7, 'Kuala Lumpur', 1, '2021-11-06 18:24:36'),
(8, 'Selangor', 1, '2021-11-08 13:45:00'),
(9, 'Melaka', 1, '2021-11-08 13:45:05'),
(10, 'ffsdfsd', 0, '2022-07-16 19:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `postjob`
--

CREATE TABLE `postjob` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `startdate` date NOT NULL,
  `starttime` time NOT NULL,
  `endtime` time NOT NULL,
  `city` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `job_status` int(11) NOT NULL DEFAULT '0' COMMENT '0= posted, 1 = booked, 3 complete,4 cancelled',
  `booked_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address1` text,
  `address2` text,
  `postal` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postjob`
--

INSERT INTO `postjob` (`id`, `user_id`, `title`, `description`, `startdate`, `starttime`, `endtime`, `city`, `price`, `category`, `job_status`, `booked_by`, `created_at`, `address1`, `address2`, `postal`, `state`) VALUES
(20, 17, 'no title', 'khk', '2021-11-20', '09:00:00', '11:00:00', 7, '100', '2', 1, 18, '2021-11-10 08:39:15', 'AAAAAAAAAAAAAA', 'BBBBBBBBBBB', '160011', 'Punjab');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `job_id` int(11) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1= admin,2= user,3 -cleaner',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address1` text,
  `address2` text,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `image`, `phone`, `password`, `type`, `created_at`, `address1`, `address2`, `state`, `city`, `postal`) VALUES
(12, 'Admin', 'Admin', 'admin@gmail.com', NULL, '97584637902', 'e10adc3949ba59abbe56e057f20f883e', 1, '2021-11-12 00:00:00', NULL, NULL, NULL, NULL, NULL),
(17, 'Goh', 'Wei Jie', 'jackgoh7670@gmail.com', '', '1234567890', 'e10adc3949ba59abbe56e057f20f883e', 3, '2021-11-07 21:24:08', 'AAAAAAAAAAAAAA', 'BBBBBBBBBBB', 'punjab', 'mohali', '160059'),
(18, 'cleaner', 'cleaner1', 'cleaner@gmail.com', 'mor1.png', '123', 'e10adc3949ba59abbe56e057f20f883e', 2, '2021-11-07 21:26:02', NULL, NULL, NULL, NULL, NULL),
(19, 'User1', '1', 'user1@gmail.com', NULL, '123', 'e10adc3949ba59abbe56e057f20f883e', 3, '2021-11-08 13:40:00', NULL, NULL, NULL, NULL, NULL),
(20, 'User2', '2', 'user2@gmail.com', NULL, '123456', 'e10adc3949ba59abbe56e057f20f883e', 3, '2021-11-08 13:40:29', NULL, NULL, NULL, NULL, NULL),
(21, 'User3', '3', 'user3@gmail.com', NULL, '1234', 'e10adc3949ba59abbe56e057f20f883e', 3, '2021-11-08 13:40:43', NULL, NULL, NULL, NULL, NULL),
(22, 'User4', '4', 'user4@gmail.com', NULL, '12345678', 'e10adc3949ba59abbe56e057f20f883e', 3, '2021-11-08 16:04:35', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postjob`
--
ALTER TABLE `postjob`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `postjob`
--
ALTER TABLE `postjob`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `postjob`
--
ALTER TABLE `postjob`
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `ratingr_id_fk` FOREIGN KEY (`job_id`) REFERENCES `postjob` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
