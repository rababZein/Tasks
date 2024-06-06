-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2024 at 04:25 PM
-- Server version: 8.0.36-0ubuntu0.20.04.1
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackerMart`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `dt` varchar(19) DEFAULT NULL,
  `customer` varchar(64) DEFAULT NULL,
  `type` varchar(4) DEFAULT NULL,
  `amount` decimal(5,2) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`dt`, `customer`, `type`, `amount`, `status`) VALUES
('2021-07-18 03:13:37', 'stapenden1@google.de', 'BUY', '95.90', 'COMPLETED'),
('2021-07-09 09:56:13', 'jpeddersen6@virginia.edu', 'BUY', '34.37', 'CANCELED'),
('2021-07-13 01:12:15', 'rclaypole0@qq.com', 'BUY', '79.27', 'COMPLETED'),
('2021-07-05 02:12:53', 'asmithin4@elegantthemes.com', 'SELL', '23.80', 'PENDING'),
('2021-06-21 13:50:29', 'bhaddeston2@mapquest.com', 'BUY', '89.55', 'COMPLETED'),
('2021-06-28 08:09:02', 'cpalek8@yahoo.com', 'SELL', '64.45', 'CANCELED'),
('2021-07-23 07:07:29', 'rclaypole0@qq.com', 'BUY', '19.92', 'COMPLETED'),
('2021-07-03 15:20:54', 'rclaypole0@qq.com', 'SELL', '51.30', 'COMPLETED'),
('2021-07-13 18:05:55', 'stapenden1@google.de', 'SELL', '86.29', 'COMPLETED'),
('2021-07-04 13:29:23', 'bhaddeston2@mapquest.com', 'BUY', '22.60', 'PENDING'),
('2021-07-02 14:23:28', 'bhaddeston2@mapquest.com', 'BUY', '38.67', 'COMPLETED'),
('2021-07-04 00:40:09', 'bhaddeston2@mapquest.com', 'BUY', '59.78', 'CANCELED'),
('2021-06-27 13:41:43', 'stapenden1@google.de', 'SELL', '61.14', 'PENDING'),
('2021-07-06 22:06:30', 'rclaypole0@qq.com', 'BUY', '18.39', 'PENDING'),
('2021-07-31 16:13:40', 'rclaypole0@qq.com', 'SELL', '24.42', 'PENDING'),
('2021-07-18 10:44:42', 'rclaypole0@qq.com', 'SELL', '55.57', 'CANCELED'),
('2021-07-02 19:47:33', 'rclaypole0@qq.com', 'SELL', '51.54', 'COMPLETED'),
('2021-06-24 04:35:02', 'stapenden1@google.de', 'BUY', '95.02', 'COMPLETED'),
('2021-07-02 17:14:35', 'rclaypole0@qq.com', 'BUY', '76.34', 'PENDING'),
('2021-07-03 23:34:36', 'rclaypole0@qq.com', 'BUY', '4.89', 'CANCELED');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
