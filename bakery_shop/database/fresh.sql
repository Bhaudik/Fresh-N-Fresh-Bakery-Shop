-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 07:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fresh`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(7, 44, 'chirag parmar', 500, 1, 500),
(8, 56, 'yagnik', 65, 1, 65),
(9, 57, 'yagnik', 65, 1, 65);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('nilkanth', 'nilkanth');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(24, 44, 'chirag parmar', 'chirag', 9773159097, 'chirag@gmail.com', 'makarba'),
(27, 57, 'yagnik', 'yagnik', 6354005861, 'yagnik@gmail.com', 'makarba');

-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(72, 'cake', 'Coconut Cake'),
(77, 'cake', 'Vanilla Cake'),
(78, 'cake', 'Red Velvet Cake'),
(79, 'cake', 'Black Forest'),
(81, 'cake', 'Chocolate Cake'),
(82, 'cake', 'Icecreame Cake'),
(83, 'cake', 'ice cream cake'),
(85, 'cookie', 'Jammie Dodgers Cookie'),
(86, 'cookie', 'Biscotti Cookie'),
(88, 'cookie', 'Fig Roll Cookie'),
(89, 'icecream', 'Vanilla icecream'),
(90, 'icecream', 'Chocolate icecream'),
(91, 'icecream', 'Peanutbutter icecream'),
(92, 'icecream', 'StrawBerry icecream'),
(93, 'icecream', 'Mango icecream');

-- --------------------------------------------------------

--
-- Table structure for table `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(3, 'img/istockphoto-1214278625-612x612.jpg'),
(4, 'img/istockphoto-1355524991-170667a.jpg'),
(5, 'img/istockphoto-873169784-170667a.jpg'),
(6, 'img/istockphoto-1144963646-612x612.jpg'),
(7, 'img/istockphoto-171360702-612x612.jpg'),
(8, 'img/istockphoto-121282958-612x612.jpg'),
(9, 'img/istockphoto-163064596-612x612.jpg'),
(10, 'img/istockphoto-495022082-612x612.jpg'),
(11, 'img/biscotti cookie.jpg'),
(12, 'img/coconut cake.jpg'),
(13, 'img/strawberry icecream.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(43, 'cake', 'Coconut Cake', 'Coconut Cake', 'Coconut cake is very testy', 550, 'mimg/coconut cake.jpg'),
(44, 'cake', 'Vanilla Cake', 'Vanilla Cake', 'Vanilla Cake is very testy', 500, 'mimg/vanilla cake.jpg'),
(45, 'cake', 'Red Velvet Cake', 'Red Velvet Cake', 'Red velvet cake is very testy', 600, 'mimg/red velvet cake.jpg'),
(46, 'cake', 'Black Forest', 'Black Forest', 'Black forest cake is very testy cake', 550, 'mimg/black forest.jpg'),
(47, 'cake', 'Chocolate Cake', 'Chocolate Cake', 'Chocolate Cake is very testy cake', 650, 'mimg/chocolate cake.jpg'),
(48, 'cake', 'ice cream cake', 'Ice-Cream Cake ', 'Ice-Cream cake is very testy cake', 600, 'mimg/icecreame cake.jpg'),
(49, 'cookie', 'Jammie Dodgers Cookie', 'Jammie Dodgers Cookie', 'Jammie Dodgers Cookie is very testy', 110, 'mimg/jammie dodgers cookie.jpg'),
(50, 'cookie', 'Biscotti Cookie', 'Biscotti Cookie', 'Biscotti Cookie is very testy', 125, 'mimg/biscotti cookie.jpg'),
(51, 'cookie', 'Fig Roll Cookie', 'Fig Roll cookie', 'Fig roll cookie is very testy', 140, 'mimg/fig roll cookie.jpg'),
(52, 'icecream', 'Vanilla icecream', 'vanilla Ice-cream', 'vanilla icecream is very testy', 55, 'mimg/vanilla icecream.jpg'),
(53, 'icecream', 'Chocolate icecream', 'Chocolate Ice-cream', 'Chocolate icecream is very testy', 60, 'mimg/chocolate icecream.jpg'),
(54, 'icecream', 'Peanutbutter icecream', 'PeanutButter Ice-cream', 'Peanutbutter icecream is very trsty', 60, 'mimg/peanutbutter icecream.jpg'),
(55, 'icecream', 'StrawBerry icecream', 'StrawBerry ice-cream', 'Strawberry icecream is very testy', 60, 'mimg/strawberry icecream.jpg'),
(57, 'icecream', 'Mango icecream', 'Mango IceCreame', 'Mango icecreame is very testy', 65, 'mimg/mango icecream.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(1, 'abcd', 'xyz', 'abc@yahoo.com'),
(2, 'aa', 'bb', 'cc@y.com'),
(3, 'nilkanth', 'nilkanth', 'aaabb@y.com'),
(4, 'abcd', 'ppp', 'abc@yahoo.com'),
(5, 'abcd', 'asdf', 'abc@yahoo.com'),
(6, 'chirag parmar', '123456', 'chirag@gmail.com'),
(7, 'yagnik', '12345', 'yagnik@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(7, 'yagnik', 'Exellent', 'your work is good');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
