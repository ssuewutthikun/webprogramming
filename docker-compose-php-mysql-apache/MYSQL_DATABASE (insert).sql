-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Aug 10, 2023 at 04:03 AM
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
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `no` int NOT NULL,
  `id` varchar(10) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `name` varchar(80) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `email` varchar(20) COLLATE utf32_bin NOT NULL,
  `password` varchar(20) COLLATE utf32_bin NOT NULL,
  `session` text COLLATE utf32_bin NOT NULL,
  `timestamp` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`no`, `id`, `name`, `email`, `password`, `session`, `timestamp`) VALUES
(3, 'C0051', 'พิมพวดี จิตใส', 'pim@gmail.com', '123456', '', '2023-08-10 10:25:28'),
(4, 'C0052', 'วีนัส ณรงค์วัน', 'venus@gmail.com', '123456', '', '2023-08-10 10:25:28'),
(5, 'C0053', 'กิตทัน งามสิน', 'kittun@gmail.com', '123456', '', '2023-08-10 10:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `no` int NOT NULL,
  `sku` varchar(50) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `id` varchar(20) COLLATE utf32_bin NOT NULL,
  `name` varchar(80) COLLATE utf32_bin NOT NULL,
  `detail` text COLLATE utf32_bin NOT NULL,
  `price` double(10,2) NOT NULL,
  `nums` int NOT NULL DEFAULT '0',
  `typeid` varchar(20) COLLATE utf32_bin NOT NULL,
  `imgid` varchar(20) COLLATE utf32_bin NOT NULL,
  `timestamp` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`no`, `sku`, `id`, `name`, `detail`, `price`, `nums`, `typeid`, `imgid`, `timestamp`) VALUES
(4, 'SKU0002', 'PK0072', 'คีย์บอร์ด Logitech', 'คำอธิบายคีย์บอร์ด Logitech', 3750.75, 10, 'PT02K', '', '2023-08-10 04:00:24'),
(6, 'SKU0004', 'PK0074', 'คีย์บอร์ด acer', 'คำอธิบายคีย์บอร์ด acer', 1150.00, 15, 'PT02K', '', '2023-08-10 04:00:29'),
(7, 'SKU0005', 'PK0075', 'คีย์บอร์ด Samsung', 'คำอธิบายคีย์บอร์ด Samsung', 2500.00, 20, 'PT02K', '', '2023-08-10 04:00:32'),
(3, 'SKU0001', 'PM0071', 'เมาส์ acer', 'คำอธิบายเมาส์ acer', 450.75, 25, 'PT01M', '', '2023-08-10 04:00:34'),
(5, 'SKU0003', 'PM0073', 'เมาส์ Logitech', 'คำอธิบายเมาส์ Logitech', 750.00, 30, 'PT01M', '', '2023-08-10 04:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `no` int NOT NULL,
  `typeid` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `name` varchar(80) COLLATE utf32_bin NOT NULL,
  `timestamp` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`no`, `typeid`, `name`, `timestamp`) VALUES
(1, 'PT01M', 'เมาส์', '2023-08-10 03:54:29'),
(2, 'PT02K', 'คีย์บอร์ด', '2023-08-10 03:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `no` int NOT NULL,
  `id` varchar(20) COLLATE utf32_bin NOT NULL,
  `name` varchar(80) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `username` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `password` varchar(50) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `level` varchar(1) COLLATE utf32_bin NOT NULL,
  `timestamp` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`no`, `id`, `name`, `username`, `password`, `level`, `timestamp`) VALUES
(1, 'U0025', 'เอกสิทธิ์ ใจทน', 'akasit', '123456', '1', '2023-08-10 03:18:08'),
(2, 'U0026', 'วิภาวรรณ สานเมือง', 'wipawan', '123456', '2', '2023-08-10 10:08:13'),
(3, 'U0027', 'สมาน รักษา', 'saman', '123456', '3', '2023-08-10 10:08:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `no` (`no`) USING BTREE;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`),
  ADD KEY `no` (`no`) USING BTREE;

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`typeid`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `no` (`no`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
