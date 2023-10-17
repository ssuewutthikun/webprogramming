-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 17, 2023 at 06:17 AM
-- Server version: 8.0.33
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MYSQL_DATABASE`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `no` int NOT NULL,
  `customer_id` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `product_id` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `sku` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `num` int NOT NULL DEFAULT '0',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `total` double(10,2) NOT NULL DEFAULT '0.00',
  `timestemp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`no`, `customer_id`, `product_id`, `sku`, `num`, `price`, `total`, `timestemp`) VALUES
(1, 'C0051', 'PK0074', '', 1, 1150.00, 1150.00, '2023-10-12 08:19:34'),
(2, 'C0051', 'PK0072', '', 1, 3750.75, 3750.75, '2023-10-12 08:24:27'),
(3, 'C0051', 'PM0073', '', 1, 750.00, 750.00, '2023-10-17 02:48:17'),
(4, 'C0051', 'PM0071', '', 1, 450.75, 450.75, '2023-10-17 02:48:19'),
(5, 'C0052', 'PK0074', '', 1, 1150.00, 1150.00, '2023-10-17 02:48:57'),
(6, 'C0052', 'PM0071', '', 1, 450.75, 450.75, '2023-10-17 02:49:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no` (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
