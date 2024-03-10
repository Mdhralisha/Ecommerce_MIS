-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 06:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_425`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_tbl`
--

CREATE TABLE `cart_tbl` (
  `cart_id` int(120) NOT NULL,
  `product_id` int(120) NOT NULL,
  `user_id` int(120) DEFAULT NULL,
  `qty` int(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_tbl`
--

INSERT INTO `cart_tbl` (`cart_id`, `product_id`, `user_id`, `qty`) VALUES
(23, 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `customer_id` int(120) NOT NULL,
  `customer_name` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL,
  `contact_no` varchar(120) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`customer_id`, `customer_name`, `address`, `contact_no`, `username`, `password`) VALUES
(1, 'Alisha Manandhar', 'Kamalbinayak', '9861770872', 'alisha65', '$2y$10$vCnmuCQ.I8fW59gVF/So8eQcmvSNIC2jn47miouKfr4gfKTEwQOMe'),
(2, 'Swexa Chhetri', 'Bhairahawa', '9869028576', 'cswexa', '$2y$10$hryjHAnKNirNYW2vJxaNfe5dU5u93xhSZ2hESQpi0NsOtWnNpt0MC'),
(3, 'Nischal Shakya', 'Kumaripati', '9840151590', 'nischal1', '$2y$10$tgZ80UN2PmKwVYTVy/0g2uKN60xXXQ8K3CHbakKimkMt2MhoIveHO'),
(4, 'Manisha Shrestha', 'Kalanki', '9841211651', 'manisha', '$2y$10$ALtP0VTpnHFhUYZaIebyK.3J81/M.0DC4jdU8EAMItBnPdo7pYh42'),
(7, 'Urusha Mdhr', 'Satdobato', '9861781324', 'mdhrurusha', '$2y$10$ep/QQwn0NjqhVVWMdG81.egjXis9pEzLceh5K7c0vCMODmHC3pnPO');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(120) NOT NULL,
  `customer_id` int(120) NOT NULL,
  `product_id` int(120) NOT NULL,
  `qty` int(120) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `customer_id`, `product_id`, `qty`, `payment_status`, `order_status`) VALUES
(1, 1, 5, 2, 'esewa', 'Completed'),
(2, 1, 6, 1, 'esewa', 'Completed'),
(3, 1, 7, 2, 'cash', 'Pending'),
(4, 1, 5, 2, 'esewa', 'Pending'),
(5, 1, 8, 1, 'esewa', 'Pending'),
(6, 1, 5, 2, 'esewa', 'Pending'),
(7, 1, 7, 1, 'esewa', 'Completed'),
(8, 2, 8, 1, 'cash', 'in_delivery'),
(9, 1, 7, 1, 'esewa', 'Completed'),
(10, 4, 15, 1, 'esewa', 'Pending'),
(11, 4, 19, 1, 'esewa', 'Pending'),
(12, 7, 15, 1, 'esewa', 'Completed'),
(13, 7, 20, 1, 'esewa', 'Pending'),
(14, 3, 14, 1, 'cash', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(120) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_qty` int(120) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_price`, `product_image`, `product_qty`, `product_desc`, `category`) VALUES
(5, 'Rimmel Red Lipstick', 400, 'lipstick2.jpg', 5, 'High colour impact for up to 8 hours wear. Colour that turns long-lasting colour up to 8 hours +25% colour impact •', 'cosmetic'),
(6, 'Discoloration Serum', 1200, 'faceserum.webp', 8, 'Improve the appearance of skin discoloration and uneven skin tone with Discoloration Correcting Serum.', 'skinCare'),
(7, 'UV Coz Sunscreen', 840, 'suns.jpg', 5, 'A photostable formula with broad spectrum filtering system, along with other powerful filters, protects the skin from UVA and UVB rays. ', 'skinCare'),
(8, 'Rimmel Pencil Liner', 800, 'rimmel pencil.webp', 8, 'immel London Lasting Finish 8Hr Lip Liner gives long lasting definition to elevate your pout! The long-wearing formula of this liner ensures that it will stay in place flawlessly for up to 8 hours. ', 'cosmetic'),
(14, 'Ordinary Serum', 2200, 'ordinary serum.jpeg', 8, 'vacs JSDV ', 'skinCare'),
(15, 'Loreal Foundation', 1600, 'foundation.jpg', 10, 'A long lasting foundation with our most lightweight, breathable texture for up to 24 hours of fresh staying power. ', 'cosmetic'),
(16, 'Cetaphil Cleanser', 700, 'cetaphil cleanser.jpg', 5, 'The gentle formula of Cetaphil Gentle Skin Cleanser helps to cleanse the skin without stripping it of its natural oils or causing irritation.', 'skinCare'),
(20, 'CeraVe Hydrating', 2200, 'cerave hydrating.jpg', 8, 'Hydrating Facial Cleanser gently cleanses the skin.', 'skinCare'),
(21, 'Cetaphil', 900, 'cetaphil mois.jpg', 4, 'Cetaphil moisturizer for dry and oily skin...', 'skinCare');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(120) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `username`, `password`, `email_id`) VALUES
(1, 'admin', '$2y$10$QGm9CGZwzwedity4yJWIX.LHKKOwZ.IvOaZW6/g8O1u5O337t3mRC', 'admin@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_tbl`
--
ALTER TABLE `cart_tbl`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_tbl`
--
ALTER TABLE `cart_tbl`
  MODIFY `cart_id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `customer_id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
