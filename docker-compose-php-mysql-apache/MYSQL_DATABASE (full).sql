-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 17, 2023 at 06:21 AM
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
-- Table structure for table `bis41_car`
--

CREATE TABLE `bis41_car` (
  `car_no` int NOT NULL,
  `car_regis` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `car_band` varchar(30) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `car_series` varchar(30) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `car_rate` double(10,2) NOT NULL,
  `car_num` int NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `bis41_car`
--

INSERT INTO `bis41_car` (`car_no`, `car_regis`, `car_band`, `car_series`, `car_rate`, `car_num`, `timestamp`) VALUES
(6, 'กด-9945', 'NISSAN', 'terra', 5900.00, 6, '2023-09-24 16:23:54'),
(1, 'กท-5740', 'HONDA', 'civic', 3750.00, 5, '2023-09-24 16:23:54'),
(3, 'ตน-8410', 'HONDA', 'city', 1400.00, 3, '2023-09-24 16:26:09'),
(5, 'ยน-7710', 'HONDA', 'crv', 4200.00, 2, '2023-09-24 16:35:39'),
(4, 'วส-6632', 'TOYOTA', 'yaris', 1630.00, 7, '2023-09-24 16:26:09'),
(2, 'ฮส-1408', 'TOYOTA', 'vios', 2150.00, 3, '2023-09-24 16:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `bis42_member`
--

CREATE TABLE `bis42_member` (
  `mem_no` int NOT NULL,
  `mem_id` varchar(20) COLLATE utf32_bin NOT NULL,
  `mem_name` varchar(60) COLLATE utf32_bin NOT NULL,
  `mem_type` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `mem_point` int NOT NULL,
  `mem_accumulat` double(10,2) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `bis42_member`
--

INSERT INTO `bis42_member` (`mem_no`, `mem_id`, `mem_name`, `mem_type`, `mem_point`, `mem_accumulat`, `timestamp`) VALUES
(1, 'MEM01', 'วิชิต สุขสม', 'redcard', 1543, 56041.00, '2023-09-24 16:14:05'),
(2, 'MEM02', 'วรรณดา สีทอง', 'redcard', 130, 2369.00, '2023-09-24 16:14:05'),
(3, 'MEM03', 'อินทรา วาดไว้', 'blackcard', 75, 430.00, '2023-09-24 16:15:27'),
(4, 'MEM04', 'สมยศ มุ่งกันดี', 'blackcard', 3512, 4210.00, '2023-09-24 16:15:27'),
(5, 'MEM05', 'หาญชัย แพรพรวา', 'blackcard', 12, 360.00, '2023-09-24 16:16:43');

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

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `no` int NOT NULL,
  `id` varchar(10) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `name` varchar(80) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `email` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `password` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `session` text CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `timestamp` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`no`, `id`, `name`, `email`, `password`, `session`, `timestamp`) VALUES
(3, 'C0051', 'พิมพวดี จิตใส', 'pim@gmail.com', '123456', '08d7063bec7867489d64a1265595b794', '2023-10-17 02:48:12'),
(4, 'C0052', 'วีนัส ณรงค์วัน', 'venus@gmail.com', '123456', 'd83a55a4e00110421c95881edd1a0b2e', '2023-10-17 02:48:51'),
(5, 'C0053', 'กิตทัน งามสิน', 'kittun@gmail.com', '123456', '', '2023-08-28 06:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `no` int NOT NULL,
  `sku` varchar(50) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `id` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `name` varchar(80) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `detail` text CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `price` double(10,2) NOT NULL,
  `nums` int NOT NULL DEFAULT '0',
  `typeid` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `imgid` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
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
  `name` varchar(80) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
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
  `id` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `name` varchar(80) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `username` varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `password` varchar(50) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  `level` varchar(1) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
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
-- Indexes for table `bis41_car`
--
ALTER TABLE `bis41_car`
  ADD PRIMARY KEY (`car_regis`),
  ADD KEY `car_no` (`car_no`);

--
-- Indexes for table `bis42_member`
--
ALTER TABLE `bis42_member`
  ADD PRIMARY KEY (`mem_id`),
  ADD KEY `mem_no` (`mem_no`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`no`),
  ADD KEY `no` (`no`);

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
-- AUTO_INCREMENT for table `bis41_car`
--
ALTER TABLE `bis41_car`
  MODIFY `car_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bis42_member`
--
ALTER TABLE `bis42_member`
  MODIFY `mem_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
