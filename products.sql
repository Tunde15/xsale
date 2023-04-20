-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 11:39 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xsales`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pro_name` varchar(1000) NOT NULL,
  `pro_price` varchar(100) NOT NULL,
  `pro_qty` varchar(100) NOT NULL,
  `pro_size` varchar(100) NOT NULL,
  `pro_category` varchar(100) NOT NULL,
  `pro_datepost` date NOT NULL,
  `pro_img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_price`, `pro_qty`, `pro_size`, `pro_category`, `pro_datepost`, `pro_img`) VALUES
(1, 'freezer', '3000', '45', '5', 'Electronics', '0000-00-00', 'image2.jpeg'),
(2, 'fan', '4000', '45', '5', 'Electronics', '0000-00-00', 'image12.png'),
(10, 'shoe', '10000', '45', '5', 'Electronics', '2023-03-26', 'image2.jpeg'),
(11, 'fert', '3400', '4', '5', 'Electronics', '2023-04-01', 'image3.jpeg'),
(12, 'gert', '6478', '90', '2', 'Electronics', '2023-04-01', 'image14.jpeg'),
(13, 'craps', '43', '45', '5', 'Electronics', '2023-04-04', 'image10.jpeg'),
(14, 'fert', '3', '45', '5', 'Furniture', '2023-04-04', 'image8.jpeg'),
(15, 'fert', '7', '45', '5', 'Electronics', '2023-04-04', 'image3.jpeg'),
(16, 'craps', '45', '45', '5', 'Electronics', '2023-04-09', 'image11.jpeg'),
(17, 'fred', '32', '45', '5', 'Electronics', '2023-04-09', 'image1.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
