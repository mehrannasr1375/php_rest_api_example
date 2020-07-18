-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 14, 2020 at 08:27 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rest`
--
CREATE DATABASE IF NOT EXISTS `rest` DEFAULT CHARACTER SET utf8 COLLATE utf8_persian_ci;
USE `rest`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cats`
--

DROP TABLE IF EXISTS `tbl_cats`;
CREATE TABLE IF NOT EXISTS `tbl_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_persian_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_cats`
--

INSERT INTO `tbl_cats` (`id`, `title`, `description`, `parent_id`) VALUES
(6, 'موبایل و تبلت', NULL, 0),
(7, 'مد و پوشاک', NULL, 0),
(8, 'ورزش و سفر', NULL, 0),
(9, 'لوازم التحریر', NULL, 0),
(27, 'هارد', NULL, 16),
(28, 'SSD', NULL, 16),
(29, 'فلش', NULL, 16),
(30, 'رم', NULL, 16),
(31, 'لپ تاپ', NULL, 16),
(33, 'مانیتور led', NULL, 12),
(34, 'مانیتور lcd', NULL, 12),
(47, 'کامپیوتر و تجهیزات جانبی', NULL, 0),
(48, 'لپ تاپ', NULL, 47),
(49, 'لوازم جانبی لپ تاپ', NULL, 48),
(50, 'موس', NULL, 47),
(51, 'کیبورد', NULL, 47),
(52, 'اسپیکر', NULL, 47),
(53, 'پرینتر', NULL, 47),
(54, 'اسکنر', NULL, 47),
(55, 'مانیتور', NULL, 47),
(56, 'lcd', NULL, 55),
(57, 'led', NULL, 55),
(58, 'هارد ', NULL, 47),
(59, 'SSD', NULL, 47),
(60, 'پاور', NULL, 47),
(61, 'کارت گرافیک', NULL, 47),
(62, 'رم', NULL, 47),
(63, 'رم لپ تاپ', NULL, 62),
(64, 'رم PC', NULL, 62),
(65, 'رم سرور', NULL, 62),
(66, 'مادبرد', NULL, 47);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE IF NOT EXISTS `tbl_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `descriptions` text COLLATE utf8_persian_ci,
  `specifications` text COLLATE utf8_persian_ci,
  `count` int(11) DEFAULT NULL,
  `image` varchar(300) COLLATE utf8_persian_ci DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `discount_amount` int(11) DEFAULT NULL,
  `available` tinyint(1) DEFAULT '0',
  `product_rate` int(11) DEFAULT NULL,
  `product_brand` varchar(100) COLLATE utf8_persian_ci DEFAULT '-',
  `product_model` varchar(500) COLLATE utf8_persian_ci DEFAULT '-',
  `product_color` varchar(45) COLLATE utf8_persian_ci DEFAULT '-',
  `creation_time` int(11) DEFAULT NULL,
  `discount_date_start` int(11) DEFAULT NULL,
  `discount_date_end` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `sold` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `title`, `descriptions`, `specifications`, `count`, `image`, `price`, `discount_amount`, `available`, `product_rate`, `product_brand`, `product_model`, `product_color`, `creation_time`, `discount_date_start`, `discount_date_end`, `length`, `width`, `height`, `weight`, `deleted`, `sold`) VALUES
(1, 'گوشی موبایل گلکسی a50', 'this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions.this is test descriptions. ', 'this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. this is test specifications. ', 22, '111160160.jpg', 3500000, NULL, 1, 10, 'samsung', 'galaxy a 50', 'مشکی - ابی - بدینجیلی', 1584955218, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(2, 'اسپیکر tsco tc7000', 'descriptions', 'specifications', 4, '114923453.jpg', 345000, 5000, 1, 9, 'tsco', 'tn700', 'black', 1584955171, NULL, NULL, 20, 15, 19, 1600, 0, 2),
(3, 'galaxy a30', NULL, NULL, 123, '112145268.jpg', 440000, NULL, 1, 8, 'nokia', NULL, NULL, 1584955218, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(4, 'galaxi a20', NULL, NULL, 2, '113562469.jpg', 200000, NULL, 1, 3, 'samsung', NULL, NULL, 1584955171, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5, 'xiaomi redmi', NULL, NULL, 100, '114923453.jpg', 290000, NULL, 1, 7, 'glx', NULL, NULL, 1584955171, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6, 'مادربرد ایسوس مدل Z370p', NULL, NULL, 3, '114923453.jpg', 450000, NULL, 1, 5, 'asus', 'Z370p ds3l rev 1.1', 'مشکی', 1584955171, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, 'asus k553l', NULL, NULL, 1, '114923453.jpg', 30000, NULL, 1, 3, 'lenovo', NULL, NULL, 1584955171, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(8, 'macbook pro 2018', NULL, NULL, 11, '114923453.jpg', 750000, NULL, 1, 5, 'asus', 'ty7000', NULL, 1584955218, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9, 'dell inspiron 6', NULL, NULL, 22, '111469793.jpg', 850000, NULL, 1, 2, 'apple', NULL, NULL, 1584955218, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10, 'latitude 3440', NULL, NULL, 0, '111469793.jpg', 900000, NULL, 1, 3, NULL, NULL, NULL, 1584955218, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(11, 'lenovo ideapad 310', NULL, NULL, 80, '114923453.jpg', 9300000, NULL, 1, 4, NULL, NULL, NULL, 1584955218, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(12, 'کیبورد فراسو kb150', '                                                                                                                                                                                                                        ', '', 20, '114923453.jpg', 110000, 0, 1, NULL, '', '', '', 1588966940, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 'a', '                                    ', '', 10, '', 0, 0, 1, NULL, '', '', '', 1589015120, 0, 0, 0, 0, 0, 0, 0, 0),
(48, '666', '', '', 0, '', 0, 0, 1, NULL, '', '', '', 1589226196, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_cats`
--

DROP TABLE IF EXISTS `tbl_products_cats`;
CREATE TABLE IF NOT EXISTS `tbl_products_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_products_cats`
--

INSERT INTO `tbl_products_cats` (`id`, `product_id`, `cat_id`) VALUES
(132, 2, 52),
(133, 7, 48),
(134, 8, 48),
(135, 9, 48),
(136, 10, 48),
(137, 11, 48),
(138, 1, 6),
(139, 3, 6),
(140, 4, 6),
(141, 5, 6),
(142, 7, 66),
(143, 14, 48),
(144, 14, 50),
(145, 14, 59),
(146, 14, 60),
(147, 35, 9),
(148, 36, 9),
(149, 37, 9),
(157, 12, 47),
(158, 12, 51),
(159, 47, 6),
(160, 47, 7),
(161, 47, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `password` varchar(40) COLLATE utf8_persian_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `online` tinyint(1) DEFAULT '0',
  `access_level` varchar(12) COLLATE utf8_persian_ci DEFAULT 'registered',
  `gender` tinyint(1) DEFAULT '1',
  `mobile` varchar(45) COLLATE utf8_persian_ci DEFAULT NULL,
  `province` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `township` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `postal_code` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `activation_code` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `creation_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `mobile_UNIQUE` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `full_name`, `username`, `email`, `password`, `enabled`, `online`, `access_level`, `gender`, `mobile`, `province`, `township`, `address`, `postal_code`, `activation_code`, `creation_time`) VALUES
(1, 'mehran nasr', 'mehran', 'mrparadox1397@gmail.com', '3a2aa1fe4a2fd7ced78ed676af8d7711', 1, 0, '1', 1, '09035438619', 'isfahan', 'shahreza', 'ادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی است ادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی است', '8613713788', '120877', 1584955218),
(2, 'ali', 'ali', 'nasrmehran77@gmail.com', 'ec22bab377000c09654d3a734e34b510', 0, 0, 'registered', 1, '03245324532', 'province', 'township', 'ادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی است', '8613713788', 'c4ca1101e0c6d9df50f55811bd5c2521', 1584955218),
(3, 'reza', 'reza', 'sdcsdcs@dxfgsdf.com', '34fc41e0728fa4c5114a843814ce9824', 1, 0, 'registered', 1, '09990875652', 'تهران', 'ورامین', 'ادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی استادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی است', '8613713788', '12345', 1584955218),
(4, 'hassan', 'hassan', 'sdcsdcsss@dxfgsdf.com', '1c65019e89fa625e38888fae9ad3ebe2', 1, 0, 'registered', 1, '09999935922', 'اصفهان', 'آران و بیدگل', 'ادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی استادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی است', '8613713788', '12345', 1584955218),
(5, 'hossein rezaei', 'heseino', 'test@tesببt.co.uk', '1c65019e89fa625e38888fae9ad3ebe2', 1, 0, 'registered', 0, '09999945922', 'province', 'township', 'ادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی استادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی است', '8613713788', NULL, 1584955218),
(6, 'nagi mamooli', 'naghii', 'test@teللst.co.uk', '1c65019e89fa625e38888fae9ad3ebe2', 1, 0, 'registered', 0, '09999934592', 'province', 'township', 'ادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی استادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی است', '8613713788', NULL, 1584955218),
(7, 'gholam naseri', 'ghooloom', 'test@teسst.co.uk', '1c65019e89fa625e38888fae9ad3ebe2', 1, 0, 'registered', 0, '09999955922', 'province', 'township', 'ادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی استادرس در اینجا قرار گرفته است. البته این یک ادرش دروغی است', '8613713788', NULL, 1584955218),
(16, ' sefolla sefollaei', 'sefolla', 'sefolla@test.com', '63ba1139516c9ad7e6915431bb0e9364', 1, 0, 'registered', 1, '00000000000', 'خوزستان', 'آبادان', 'sefola abad', '000000', '123456', 1585912361),
(19, 'ghooli', 'ghoolijoon', 'ghooolighiil@gmail.com', '63ba1139516c9ad7e6915431bb0e9364', 0, 0, 'registered', 1, '09033334455', 'اصفهان', 'شهرضا', 'gholi abad', '868888888', NULL, 1585929754),
(20, '<p>fuldl_name</p>', '<div>usernamse</div>', 'emacil', '0e79b9b0bd8ba868745b32c71ae572d3', 0, 0, 'registered', 1, '9033533333', 'province', 'township', 'address', '8788822222', NULL, 1589654159);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
