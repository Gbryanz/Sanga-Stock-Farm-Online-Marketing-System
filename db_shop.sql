-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2018 at 05:11 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPassword` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPassword`, `level`) VALUES
(1, 'GULOBA BRIAN', 'Brian', 'gulobabrian@gmail.com', '850721dea834fe36b29083291509c7ad', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(2, 'FRESH VEGATABLES'),
(3, 'GOATS'),
(4, 'FRUITS'),
(5, 'CATTLE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Dairy Goats'),
(2, 'Meat Goats'),
(3, 'Stem Vegetables'),
(4, ' Bulb Vegetables'),
(5, 'Leafy Vegetables'),
(6, 'Dairy Cattle'),
(7, 'Beef Cattle'),
(8, 'Dual-Purpose Cattle'),
(9, 'Flower Vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `contact`, `message`, `status`, `date`) VALUES
(2, 'Emmanuel', 'emmanuedl@gmail.com', '1622425286', 'szzss', 1, '2018-08-05 23:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Apollo', 'Mengo', 'Kampala', 'Uganda', '1219', '0722425286', 'apollo@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(21, 1, 15, 'growing-spinach', 1, 505.22, 'uploads/d712a379477.png', '2018-08-01 20:45:34', 2),
(22, 1, 14, '', 1, 505.22, 'uploads/bb49c3ce4e.png', '2018-08-01 20:45:34', 0),
(23, 1, 15, 'growing-soinach', 3, 1515.66, 'uploads/d712a379477.png', '2018-08-01 21:23:42', 0),
(24, 1, 11, 'Packed Maize', 3, 1501.65, 'uploads/4ebef5562f.png', '2018-08-02 00:14:55', 0),
(25, 1, 15, 'growing-spinach', 1, 505.22, 'uploads/d712a379477.png', '2018-08-02 00:15:23', 0),
(26, 1, 15, 'growing-spinach', 1, 505.22, 'uploads/d712a379477.png', '2018-08-02 00:19:13', 0),
(27, 1, 12, 'VEGATABLES in refrigerator', 2, 856.04, 'uploads/8147397401.png', '2018-08-02 00:19:45', 0),
(28, 1, 11, '', 1, 500.55, 'uploads/4ebef5562f.png', '2018-08-02 02:39:52', 0),
(29, 1, 12, 'VEGATABLES in refrigerator', 1, 428.02, 'uploads/8147397401.png', '2018-08-02 02:50:52', 0),
(30, 1, 15, 'growing-spinach', 1, 505.22, 'uploads/d712a379477.png', '2018-08-02 02:50:52', 0),
(31, 1, 4, 'Goat meat', 1, 220.97, 'uploads/fa56e62beff.jpg', '2018-08-02 02:50:52', 0),
(32, 1, 13, 'Cows', 1, 505.22, 'uploads/bd293afbcee.jpg', '2018-08-06 03:29:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(1, 'Jamunapari Goats', 4, 3, '<p>Jamunapari Goats are a renowned breed of dairy goats known for their high milk production. These goats are characterized by their large size and distinctive long ears.</p>', 999.00, 'uploads/cd60a8b4711.jpg', 0),
(2, 'Brahman cows ', 2, 5, '<p>Brahman cows are a hardy breed known for their distinctive appearance with a prominent hump and loose skin. They are well-adapted to hot climates and demonstrate excellent resistance to parasites.</p>', 38500.00, 'uploads/f685d894501.jpeg', 0),
(3, 'Aberdeen Angus Meat (2kgs)', 4, 2, '<p>Aberdeen Angus Meat (2kgs) is premium quality beef known for its superior marbling and tender texture. This package contains 2 kilograms of carefully selected cuts.</p>', 2000.00, 'uploads/3bba9742ecc.jpg', 1),
(4, 'Angora Goat (Full one)', 4, 3, '<p>Angora Goat (Full one) is a specialty fiber breed known for producing mohair. These goats are valued for their long, silky fleece that is highly sought after in the textile industry.</p>', 15000.00, 'uploads/fa56e62beff.jpg', 0),
(5, ' Yellow Banana', 2, 2, '<p>Yellow Banana is a fresh, sweet tropical fruit rich in potassium and other essential nutrients. Perfect for snacking or adding to your favorite recipes.</p>', 53500.00, 'uploads/9ef4ce1375.png', 1),
(6, 'Dairy cows', 4, 5, '<p>Dairy cows are specialized cattle bred specifically for efficient milk production. These cows are known for their high milk yield and docile temperament.</p>', 1850.00, 'uploads/2966aff2bbb.jpg', 1),
(7, 'Packed Vegatables', 4, 2, '<p>Packed Vegetables are fresh, quality-selected vegetables that come conveniently packaged for your convenience. All vegetables are carefully sorted and cleaned.</p>', 3500.00, 'uploads/c5b154a6422.jpg', 0),
(8, 'Lady-Finger', 4, 2, '<p>Lady-Finger, also known as okra, is a nutritious vegetable that\'s perfect for various cooking methods. Fresh and tender, ideal for soups, stews, and stir-fries.</p>', 999.00, 'uploads/4d2b549e0aa.jpg', 0),
(11, 'packed Fruits', 3, 4, '<p>Packed Fruits are a convenient selection of fresh, quality fruits packaged for freshness and easy storage. Perfect for healthy snacking and meal preparation.</p>', 99990.00, 'uploads/9588c6f7822.jpg', 1),
(12, 'Lettuce Fress Vegatables', 4, 2, '<p>Lettuce Fresh Vegetables are crisp, green, and perfect for salads. Our lettuce is carefully selected for freshness and quality.</p>', 24500.00, 'uploads/91f3e32ef22.jpg', 1),
(13, 'Jersey cows', 1, 5, '<p>Jersey cows are a popular dairy breed known for producing high-butterfat milk. These gentle cows are smaller than other dairy breeds but are highly efficient producers.</p>', 10500.00, 'uploads/bd293afbcee.jpg', 1),
(15, 'growing-spinach ', 4, 2, '<p>Growing-spinach is fresh, leafy green vegetable packed with nutrients. Perfect for salads, smoothies, and cooking.</p>', 3200.00, 'uploads/d712a379477.png', 0),
(16, 'Packed Fresh Fruits', 3, 4, '<p>Packed Fresh Fruits are carefully selected and packaged fresh fruits that maintain their quality and freshness. Perfect for convenient healthy snacking.</p>', 120500.00, 'uploads/ac7385aa6dd.jpeg', 1),
(17, ' Tomatoes', 3, 4, '<p>Tomatoes are fresh, ripe, and juicy, perfect for salads, cooking, or making sauces. Our tomatoes are carefully selected for quality and taste.</p>', 34999.00, 'uploads/dd277d68bdd.jpg', 1),
(18, 'Green Apple', 3, 4, '<p>Green Apple is a crisp, tart fruit perfect for snacking or cooking. These apples are fresh, juicy, and full of flavor.</p>', 109999.00, 'uploads/33ce6b99f44.jpg', 1),
(19, 'Holstein Friesian', 4, 5, '<p>Holstein Friesian is the world\'s highest-producing dairy cattle breed. Known for their distinctive black and white markings and excellent milk production.</p>', 6563.00, 'uploads/346c11f64444.png', 1),
(20, ' Toggenburg Goats', 4, 3, '<p>Toggenburg Goats are a dairy breed known for their steady milk production and hardy nature. These goats are distinguished by their brown color with white markings.</p>', 14740.00, 'uploads/2c7084ec2ff.jpg', 1),
(21, 'Cashmere Goat', 4, 3, '<p>Cashmere Goat is prized for producing cashmere wool, one of the softest and most luxurious natural fibers. These goats produce high-quality, fine undercoat wool.</p>', 58160.00, 'uploads/6521499b3dd.jpg', 1);

-- --------------------------------------------------------
--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(6, 1, 15, 'Laundry machine ', 3200.00, 'uploads/d712a37947.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
