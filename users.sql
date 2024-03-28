-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 11:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `try`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Kunal', 'Kunal@gmail.com', 'Kunal123'),
(2, 'Demo', 'Demo@gmail.com', '$2b$10$3Yj0QR7t5KBM0SMOv6i5Ye6'),
(10, 'Demo2', 'Demo2@gmail.com', '$2b$10$CvFB6uH0fRZ0vwznaE6j8uO'),
(11, 'Demo3', 'Demo3@gmail.com', '$2b$10$2kKxjW2IU7Nj5ctZcwWxOuF'),
(12, 'Demo4', 'Demo4@gmail.com', '$2b$10$Ab1VMlqd7v2wB7dqSLgB6.I'),
(13, 'Demo5', 'Demo5@gmail.com', '$2b$10$E5OmPGstxwE9upnaOhmupOL'),
(14, 'Demo6', 'Demo6@gmail.com', '$2b$10$2FoW8E5nyShM69mck70NL.h'),
(15, 'Demo7', 'Demo7@gmail.com', '$2b$10$PDqoPx3WMVQp4LAy3nNx3.f'),
(16, 'Demo8', 'Demo8@gmail.com', '$2b$10$CMgBMPH6sqV722Vd6.RZ..v'),
(17, 'Demo9', 'Demo9@gmail.com', '$2b$10$V6nizxmW2z4XPyFCFmUUkut'),
(18, 'Demo10', 'Demo10@gmail.com', '$2b$10$TsN9AtelHQUv04L3go6mfOr'),
(19, 'Demo11', 'Demo11@gmail.com', '$2b$10$xcl44wm4UneB1uNqBp1f5.A'),
(20, 'Demo12', 'Demo12@gmail.com', '$2b$10$3gALYg/zT0wZeVR2CTz.A.D'),
(21, 'Demo13', 'Demo13@gmail.com', '$2b$10$3TntbjWdbSBjMnNSqfaJiOY'),
(22, 'Demo14', 'Demo14@gmail.com', '$2b$10$e6aH/qHfNk.EtJ1RIUIf.uI'),
(23, 'Demo15', 'Demo15@gmail.com', '$2b$10$mzs0bkTUD/oeDlZ97yA3B.e'),
(24, 'Demo16', 'Demo16@gmail.com', '$2b$10$VI89psXwGKxEd2677dczpeP'),
(25, 'Demo17', 'Demo17@gmail.com', '$2b$10$JfgPEsJHzqDLBoezUEISROp'),
(26, 'Demo18', 'Demo18@gmail.com', '$2b$10$OAQprKIFBe0d46AvvBKBNeX'),
(27, 'Demo19', 'Demo19@gmail.com', '$2b$10$DMmUVsoh.aB5dFfWgorT2ej'),
(28, 'Demo20', 'Demo20@gmail.com', '$2b$10$UxvSK3H8nYU7u8eA/prQiej'),
(29, 'Demo21', 'Demo21@gmail.com', '$2b$10$.LbPL4Iv9smyIa22a3oHvuS'),
(30, 'Demo22', 'Demo22@gmail.com', '$2b$10$DYCGqwnHVupUb1w17X8c.OF'),
(31, 'Demo23', 'Demo23@gmail.com', '$2b$10$3SzT/AUB5Q5QKpd8t4iUBet'),
(32, 'Demo24', 'Demo24@gmail.com', '$2b$10$ggn1c6XQ/TwFyEVV46Xu8uI'),
(33, 'Demo25', 'Demo25@gmail.com', '$2b$10$ncNlQyMIGpIMC9bS1B42a.f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
