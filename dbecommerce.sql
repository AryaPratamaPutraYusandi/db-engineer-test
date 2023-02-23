-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2023 at 10:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `dates` datetime NOT NULL,
  `variant` varchar(200) DEFAULT NULL,
  `types` varchar(200) DEFAULT NULL,
  `quantity` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_name` varchar(15000) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `dates` datetime DEFAULT NULL,
  `types` varchar(200) DEFAULT NULL,
  `variant` varchar(200) DEFAULT NULL,
  `quantity` varchar(200) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `variant` varchar(200) DEFAULT NULL,
  `types` varchar(200) DEFAULT NULL,
  `stock` varchar(200) DEFAULT NULL,
  `name` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_category` varchar(200) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `dates` datetime NOT NULL,
  `variant` varchar(200) DEFAULT NULL,
  `types` varchar(200) DEFAULT NULL,
  `description` varchar(15000) DEFAULT NULL,
  `stock` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactionlist`
--

CREATE TABLE `transactionlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `dates` datetime NOT NULL,
  `variant` varchar(200) DEFAULT NULL,
  `types` varchar(200) DEFAULT NULL,
  `quantity` varchar(200) DEFAULT NULL,
  `invoice` varchar(1000) DEFAULT NULL,
  `transportation` varchar(200) DEFAULT NULL,
  `delevery_service` varchar(200) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_FK` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_FK` (`product_id`),
  ADD KEY `orders_FK_1` (`store_id`),
  ADD KEY `orders_FK_2` (`user_id`),
  ADD KEY `orders_FK_3` (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_FK` (`product_id`);

--
-- Indexes for table `transactionlist`
--
ALTER TABLE `transactionlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactionlist_FK` (`user_id`),
  ADD KEY `transactionlist_FK_1` (`cart_id`),
  ADD KEY `transactionlist_FK_2` (`orders_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_FK` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_FK` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `orders_FK_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`),
  ADD CONSTRAINT `orders_FK_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `orders_FK_3` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_FK` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `transactionlist`
--
ALTER TABLE `transactionlist`
  ADD CONSTRAINT `transactionlist_FK` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `transactionlist_FK_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  ADD CONSTRAINT `transactionlist_FK_2` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
