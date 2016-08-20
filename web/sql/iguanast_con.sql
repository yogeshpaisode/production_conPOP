-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2016 at 08:56 PM
-- Server version: 5.6.31
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iguanast_con`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_Addr` text,
  `pincode` text,
  `state_Addr` text,
  `city` text,
  `firstName` text,
  `lastName` text,
  `landMark` text,
  `mobileNo` text,
  `user_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`address_ID`) USING BTREE,
  KEY `FK_TRANSACTION_User_ID` (`user_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_cart` tinyint(1) DEFAULT NULL,
  `is_wishList` tinyint(1) DEFAULT NULL,
  `is_order` tinyint(1) DEFAULT NULL,
  isConfirm boolean,
  isDispatched boolean,
  isReceivedByCustomer boolean,
quantity int,
  `trx_id` text,
  `user_ID` int(10) unsigned NOT NULL,
  `product_by_Color_ID` int(10) unsigned NOT NULL,
  `product_Size_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cart_ID`) USING BTREE,
  KEY `FK_TRANSACTION_User_ID_cart` (`user_ID`),
  KEY `FK_product_by_Color_ID_cart` (`product_by_Color_ID`),
  KEY `FK_product_Size_ID_cart` (`product_Size_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `first_subcategory`
--

CREATE TABLE IF NOT EXISTS `first_subcategory` (
  `first_subcategory_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `main_category_ID` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`first_subcategory_ID`) USING BTREE,
  KEY `FK_main_category_ID_First` (`main_category_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `first_subcategory`
--

INSERT INTO `first_subcategory` (`first_subcategory_ID`, `main_category_ID`, `name`) VALUES
(40, 21, 'T-Shirt');

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE IF NOT EXISTS `main_category` (
  `main_category_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  PRIMARY KEY (`main_category_ID`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`main_category_ID`, `name`) VALUES
(21, 'Men'),
(22, 'Women'),
(23, 'Decor');

-- --------------------------------------------------------

--
-- Table structure for table `product_by_Color`
--

CREATE TABLE IF NOT EXISTS `product_by_Color` (
  `product_by_Color_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_Detail_ID` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  `title` text NOT NULL,
  `hex` text NOT NULL,
  PRIMARY KEY (`product_by_Color_ID`) USING BTREE,
  KEY `FK_product_Detail_ID` (`product_Detail_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `product_by_Color`
--

INSERT INTO `product_by_Color` (`product_by_Color_ID`, `product_Detail_ID`, `name`, `title`, `hex`) VALUES
(1, 1, 'Red', 'Red', 'rgba(171, 57, 57, 0.87)');

-- --------------------------------------------------------

--
-- Table structure for table `product_by_Color_Images`
--

CREATE TABLE IF NOT EXISTS `product_by_Color_Images` (
  `product_by_Color_Images_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_by_Color_ID` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`product_by_Color_Images_ID`) USING BTREE,
  KEY `FK_product_by_Color_ID` (`product_by_Color_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `product_by_Color_Images`
--

INSERT INTO `product_by_Color_Images` (`product_by_Color_Images_ID`, `product_by_Color_ID`, `name`) VALUES
(1, 1, 'Back_Large.jpg'),
(2, 1, 'Back_Large.jpg'),
(3, 1, 'Back_Large.jpg'),
(4, 1, 'Back_Large.jpg'),
(5, 1, 'Back_Large.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_Detail`
--

CREATE TABLE IF NOT EXISTS `product_Detail` (
  `product_Detail_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `main_category_ID` int(10) unsigned NOT NULL,
  `first_subcategory_ID` int(10) unsigned NOT NULL,
  `second_subcategory_ID` int(10) unsigned NOT NULL,
  `search_tag` text NOT NULL,
  `product_detail` text NOT NULL,
  `material_detail` text NOT NULL,
  `care` text NOT NULL,
  `selling_Price` int(11) NOT NULL,
  `display_price` int(11) NOT NULL,
  PRIMARY KEY (`product_Detail_ID`) USING BTREE,
  KEY `FK_main_category_ID` (`main_category_ID`),
  KEY `FK_first_subcategory_ID` (`first_subcategory_ID`),
  KEY `FK_second_subcategory_ID` (`second_subcategory_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `product_Detail`
--

INSERT INTO `product_Detail` (`product_Detail_ID`, `main_category_ID`, `first_subcategory_ID`, `second_subcategory_ID`, `search_tag`, `product_detail`, `material_detail`, `care`, `selling_Price`, `display_price`) VALUES
(1, 21, 40, 15, 'test', 'Puma Men ESS Dark Grey Melange Regular Fit T-shirt', 'Dark grey melange T-shirt, has a V-neck, short sleeves', 'The model (height 6''2" and shoulders 22") is wearing a size M', 599, 200);

-- --------------------------------------------------------

--
-- Table structure for table `product_Size`
--

CREATE TABLE IF NOT EXISTS `product_Size` (
  `product_Size_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_Detail_ID` int(10) unsigned NOT NULL,
  `size_type` text NOT NULL,
  PRIMARY KEY (`product_Size_ID`) USING BTREE,
  KEY `FK_Size_product_Detail_ID` (`product_Detail_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `product_Size`
--

INSERT INTO `product_Size` (`product_Size_ID`, `product_Detail_ID`, `size_type`) VALUES
(1, 1, 'S'),
(2, 1, 'M'),
(3, 1, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `second_subcategory`
--

CREATE TABLE IF NOT EXISTS `second_subcategory` (
  `second_subcategory_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_subcategory_ID` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`second_subcategory_ID`) USING BTREE,
  KEY `FK_first_subcategory_ID_Second` (`first_subcategory_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `second_subcategory`
--

INSERT INTO `second_subcategory` (`second_subcategory_ID`, `first_subcategory_ID`, `name`) VALUES
(15, 40, 'BatMan');

-- --------------------------------------------------------

--
-- Table structure for table `size_Stock_by_Color`
--

CREATE TABLE IF NOT EXISTS `size_Stock_by_Color` (
  `size_Stock_by_Color_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_Size_ID` int(10) unsigned NOT NULL,
  `product_by_Color_ID` int(10) unsigned NOT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`size_Stock_by_Color_ID`) USING BTREE,
  KEY `FK_product_Size_ID` (`product_Size_ID`),
  KEY `FK_Stock_product_by_Color_ID` (`product_by_Color_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `size_Stock_by_Color`
--

INSERT INTO `size_Stock_by_Color` (`size_Stock_by_Color_ID`, `product_Size_ID`, `product_by_Color_ID`, `stock`) VALUES
(1, 1, 1, 40),
(2, 2, 1, 30),
(3, 3, 1, 34);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` text,
  `lastName` text,
  `email` text,
  `mobile` text,
  `gender` text,
  password text,
  PRIMARY KEY (`user_ID`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_STOCK_TRANSACTION_user_ID` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_TRANSACTION_User_ID_cart` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_product_Size_ID_cart` FOREIGN KEY (`product_Size_ID`) REFERENCES `product_Size` (`product_Size_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_product_by_Color_ID_cart` FOREIGN KEY (`product_by_Color_ID`) REFERENCES `product_by_Color` (`product_by_Color_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `first_subcategory`
--
ALTER TABLE `first_subcategory`
  ADD CONSTRAINT `FK_main_category_ID_First` FOREIGN KEY (`main_category_ID`) REFERENCES `main_category` (`main_category_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_by_Color`
--
ALTER TABLE `product_by_Color`
  ADD CONSTRAINT `FK_product_Detail_ID` FOREIGN KEY (`product_Detail_ID`) REFERENCES `product_Detail` (`product_Detail_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_by_Color_Images`
--
ALTER TABLE `product_by_Color_Images`
  ADD CONSTRAINT `FK_product_by_Color_ID` FOREIGN KEY (`product_by_Color_ID`) REFERENCES `product_by_Color` (`product_by_Color_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_Detail`
--
ALTER TABLE `product_Detail`
  ADD CONSTRAINT `FK_first_subcategory_ID` FOREIGN KEY (`first_subcategory_ID`) REFERENCES `first_subcategory` (`first_subcategory_ID`),
  ADD CONSTRAINT `FK_main_category_ID` FOREIGN KEY (`main_category_ID`) REFERENCES `main_category` (`main_category_ID`),
  ADD CONSTRAINT `FK_second_subcategory_ID` FOREIGN KEY (`second_subcategory_ID`) REFERENCES `second_subcategory` (`second_subcategory_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_Size`
--
ALTER TABLE `product_Size`
  ADD CONSTRAINT `FK_Size_product_Detail_ID` FOREIGN KEY (`product_Detail_ID`) REFERENCES `product_Detail` (`product_Detail_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `second_subcategory`
--
ALTER TABLE `second_subcategory`
  ADD CONSTRAINT `FK_first_subcategory_ID_Second` FOREIGN KEY (`first_subcategory_ID`) REFERENCES `first_subcategory` (`first_subcategory_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `size_Stock_by_Color`
--
ALTER TABLE `size_Stock_by_Color`
  ADD CONSTRAINT `FK_Stock_product_by_Color_ID` FOREIGN KEY (`product_by_Color_ID`) REFERENCES `product_by_Color` (`product_by_Color_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_product_Size_ID` FOREIGN KEY (`product_Size_ID`) REFERENCES `product_Size` (`product_Size_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
