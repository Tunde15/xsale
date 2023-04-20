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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `pro_id` varchar(1000) NOT NULL,
  `pro_name` varchar(1000) NOT NULL,
  `order_taken` varchar(9000) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `address`, `pro_id`, `pro_name`, `order_taken`, `order_date`) VALUES
(1, 'Lara ogunfesi', 'tundejayi@ymail.com', '', '10', '', '', '0000-00-00'),
(2, 'fert', 'tundeajayi@ymail.com', '67 saheed str', '10', 'shoe&fan&freezer', '', '0000-00-00'),
(3, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1', 'freezer&gert', '', '0000-00-00'),
(4, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1&12', 'freezer&gert', '', '0000-00-00'),
(5, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12', 'freezer & gert', '', '0000-00-00'),
(6, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12', 'freezer & gert', '', '0000-00-00'),
(7, 'fred', 'tundejayi@ymail.com', '67 saheed str', '1 & 12', 'freezer & gert', '', '0000-00-00'),
(8, 'fred', 'tundejayi@ymail.com', '67 saheed str', '1 & 12', 'freezer & gert', '', '0000-00-00'),
(9, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12', 'freezer & gert', '', '0000-00-00'),
(10, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12', 'freezer & gert', '', '0000-00-00'),
(11, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12', 'freezer & gert', '', '0000-00-00'),
(12, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12', 'freezer & gert', '', '0000-00-00'),
(13, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12 & 10', 'freezer & gert & shoe', '', '0000-00-00'),
(14, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12 & 10', 'freezer & gert & shoe', '', '0000-00-00'),
(15, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12 & 10', 'freezer & gert & shoe', '', '0000-00-00'),
(16, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12 & 10', 'freezer & gert & shoe', '', '0000-00-00'),
(17, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12 & 10', 'freezer & gert & shoe', '', '0000-00-00'),
(18, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12 & 10', 'freezer & gert & shoe', '', '0000-00-00'),
(19, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12 & 10', 'freezer & gert & shoe', '', '0000-00-00'),
(20, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12 & 10', 'freezer & gert & shoe', '', '0000-00-00'),
(21, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12 & 10', 'freezer & gert & shoe', '', '0000-00-00'),
(22, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '1 & 12 & 10', 'freezer & gert & shoe', '', '0000-00-00'),
(23, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '10', 'shoe', '', '0000-00-00'),
(24, 'Lara ogunfesi', 'tundeajayi@ymail.com', '67 saheed str', '14 & 10 & 1', 'fert & shoe & freezer', '', '0000-00-00'),
(25, 'fred', 'tundeajayi@ymail.com', '67 saheed str', '14 & 1', 'fert & freezer', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
