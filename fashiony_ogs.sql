-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 10:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashiony_ogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`color_id`, `color_name`) VALUES
(1, 'Red'),
(2, 'Black'),
(3, 'Blue'),
(4, 'Yellow'),
(5, 'Green'),
(6, 'White'),
(7, 'Orange'),
(8, 'Brown'),
(9, 'Tan'),
(10, 'Pink'),
(11, 'Mixed'),
(12, 'Lightblue'),
(13, 'Violet'),
(14, 'Light Purple'),
(15, 'Salmon'),
(16, 'Gold'),
(17, 'Gray'),
(18, 'Ash'),
(19, 'Maroon'),
(20, 'Silver'),
(21, 'NO COLOR');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(99, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_b_name` varchar(100) NOT NULL,
  `cust_b_cname` varchar(100) NOT NULL,
  `cust_b_phone` varchar(50) NOT NULL,
  `cust_b_country` int(11) NOT NULL,
  `cust_b_address` text NOT NULL,
  `cust_b_city` varchar(100) NOT NULL,
  `cust_b_state` varchar(100) NOT NULL,
  `cust_b_zip` varchar(30) NOT NULL,
  `cust_s_name` varchar(100) NOT NULL,
  `cust_s_cname` varchar(100) NOT NULL,
  `cust_s_phone` varchar(50) NOT NULL,
  `cust_s_country` int(11) NOT NULL,
  `cust_s_address` text NOT NULL,
  `cust_s_city` varchar(100) NOT NULL,
  `cust_s_state` varchar(100) NOT NULL,
  `cust_s_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_token` varchar(255) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_timestamp` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_b_name`, `cust_b_cname`, `cust_b_phone`, `cust_b_country`, `cust_b_address`, `cust_b_city`, `cust_b_state`, `cust_b_zip`, `cust_s_name`, `cust_s_cname`, `cust_s_phone`, `cust_s_country`, `cust_s_address`, `cust_s_city`, `cust_s_state`, `cust_s_zip`, `cust_password`, `cust_token`, `cust_datetime`, `cust_timestamp`, `cust_status`) VALUES
(4, 'Hammad', '', 'wonk.xags@gmail.com', '49857243857', 228, 'address', 'dubai', 'dubai', '0000', '', '', '', 0, '', '', '', '', '', '', '', 0, '', '', '', '', 'e10adc3949ba59abbe56e057f20f883e', '34d03a29d49aaba635ad6efee22c4d30', '2018-04-21 02:40:10', '1524264010', 1),
(5, 'Hammad Hassan', '', 'mc170200216@vu.edu.pk', '49857243857', 228, 'address', 'dubai', 'Dubai', '0000', 'Hammad Hassan', 'Company Name', '971502020067', 228, 'Dubai Investments Park 1', 'Dubai', 'Dubai', '75400', 'Hammad Hassan', 'Company Name', '971502020067', 228, 'Dubai Investments Park 1', 'Dubai', 'Dubai', '75400', '9794cb7c1989a7d0d36a62426cb170e4', '92dd269f6494db9e8e8ab28c528bbe80', '2018-04-23 10:06:51', '1524506811', 1),
(6, 'RamGopal', 'Mypetshop', 'dubey233310@gmail.com', '9026539838', 99, 'Ardee city', 'Gurugram', 'Haryana', '12203', 'RamGopal Dubey', 'None', '9026539838', 99, 'Ardeecity ', 'Guurugram', 'Haryana', '122003', 'RamGopal Dubey', 'None', '9026539838', 99, 'Ardeecity ', 'Guurugram', 'Haryana', '122003', '81dc9bdb52d04dc20036dbd8313ed055', '5b2ef4471477c4d6a1be5793b30254df', '2021-12-04 01:55:24', '1638606324', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(8, 'Product Shipped', 'Dear Customer,\r\n\r\nYour order has been shipped.\r\n\r\nLet us know when you have any question.\r\n\r\nBest regards,\r\nHammad Hassan', '\r\nCustomer Name: Hammad Hassan<br>\r\nCustomer Email: mc170200216@vu.edu.pk<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2018-04-25 18:28:46<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 1<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1524666526<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Black Wool Beanie & Bobble Hat For Unisex<br>\r\nSize: <br>\r\nColor: Black<br>\r\nQuantity: 1<br>\r\nUnit Price: 1<br>\r\n            ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'Drools', 1),
(2, 'Acana', 1),
(3, 'Applaws', 1),
(4, 'Himalaya', 1),
(5, 'Arden Grange', 1),
(6, 'Aini', 1),
(7, 'Basil', 1),
(8, 'Bioline', 1),
(9, 'Beco', 1),
(10, 'Krypto', 1),
(11, 'Pedigree', 1),
(12, 'Drools', 2),
(13, 'Acana', 2),
(14, 'Applaws', 2),
(15, 'Himalaya', 2),
(16, 'Arden Grange', 2),
(17, 'Aini', 2),
(18, 'Basil', 2),
(19, 'Bioline', 2),
(20, 'Beco', 2),
(21, 'Krypto', 2),
(22, 'Pedigree', 2),
(23, 'Drools', 3),
(24, 'Acana', 3),
(25, 'Applaws', 3),
(26, 'Himalaya', 3),
(27, 'Arden Grange', 3),
(28, 'Aini', 3),
(29, 'Basil', 3),
(30, 'Bioline', 3),
(31, 'Beco', 3),
(32, 'Krypto', 3),
(33, 'Pedigree', 3),
(34, 'Drools', 4),
(35, 'Acana', 4),
(36, 'Applaws', 4),
(37, 'Himalaya', 4),
(38, 'Arden Grange', 4),
(39, 'Aini', 4),
(40, 'Basil', 4),
(41, 'Bioline', 4),
(42, 'Beco', 4),
(43, 'Krypto', 4),
(44, 'Pedigree', 4),
(45, 'Drools', 5),
(46, 'Acana', 5),
(47, 'Applaws', 5),
(48, 'Himalaya', 5),
(49, 'Arden Grange', 5),
(50, 'Aini', 5),
(51, 'Basil', 5),
(52, 'Bioline', 5),
(53, 'Beco', 5),
(54, 'Krypto', 5),
(55, 'Pedigree', 5),
(56, 'Drools', 6),
(57, 'Acana', 6),
(58, 'Applaws', 6),
(59, 'Himalaya', 6),
(60, 'Arden Grange', 6),
(61, 'Aini', 6),
(62, 'Basil', 6),
(63, 'Bioline', 6),
(64, 'Beco', 6),
(65, 'Krypto', 6),
(66, 'Pedigree', 6),
(67, 'Drools', 7),
(68, 'Acana', 7),
(69, 'Applaws', 7),
(70, 'Himalaya', 7),
(71, 'Arden Grange', 7),
(72, 'Aini', 7),
(73, 'Basil', 7),
(74, 'Bioline', 7),
(75, 'Beco', 7),
(76, 'Krypto', 7),
(77, 'Pedigree', 7),
(78, 'Drools', 8),
(79, 'Acana', 8),
(80, 'Applaws', 8),
(81, 'Himalaya', 8),
(82, 'Arden Grange', 8),
(83, 'Aini', 8),
(84, 'Basil', 8),
(85, 'Bioline', 8),
(86, 'Beco', 8),
(87, 'Krypto', 8),
(88, 'Pedigree', 8),
(89, 'Drools', 9),
(90, 'Acana', 9),
(91, 'Applaws', 9),
(92, 'Himalaya', 9),
(93, 'Arden Grange', 9),
(94, 'Aini', 9),
(95, 'Basil', 9),
(96, 'Bioline', 9),
(97, 'Beco', 9),
(98, 'Krypto', 9),
(99, 'Pedigree', 9),
(100, 'Drools', 10),
(101, 'Acana', 10),
(102, 'Applaws', 10),
(103, 'Himalaya', 10),
(104, 'Arden Grange', 10),
(105, 'Aini', 10),
(106, 'Basil', 10),
(107, 'Bioline', 10),
(108, 'Beco', 10),
(109, 'Krypto', 10),
(110, 'Pedigree', 10),
(111, 'Drools', 11),
(112, 'Acana', 11),
(113, 'Applaws', 11),
(114, 'Himalaya', 11),
(115, 'Arden Grange', 11),
(116, 'Aini', 11),
(117, 'Basil', 11),
(118, 'Bioline', 11),
(119, 'Beco', 11),
(120, 'Krypto', 11),
(121, 'Pedigree', 11),
(122, 'Drools', 12),
(123, 'Acana', 12),
(124, 'Applaws', 12),
(125, 'Himalaya', 12),
(126, 'Arden Grange', 12),
(127, 'Aini', 12),
(128, 'Basil', 12),
(129, 'Bioline', 12),
(130, 'Beco', 12),
(131, 'Krypto', 12),
(132, 'Pedigree', 12),
(133, 'Drools', 13),
(134, 'Acana', 13),
(135, 'Applaws', 13),
(136, 'Himalaya', 13),
(137, 'Arden Grange', 13),
(138, 'Aini', 13),
(139, 'Basil', 13),
(140, 'Bioline', 13),
(141, 'Beco', 13),
(142, 'Krypto', 13),
(143, 'Pedigree', 13),
(144, 'Drools', 14),
(145, 'Acana', 14),
(146, 'Applaws', 14),
(147, 'Himalaya', 14),
(148, 'Arden Grange', 14),
(149, 'Aini', 14),
(150, 'Basil', 14),
(151, 'Bioline', 14),
(152, 'Beco', 14),
(153, 'Krypto', 14),
(154, 'Pedigree', 14),
(155, 'Drools', 15),
(156, 'Acana', 15),
(157, 'Applaws', 15),
(158, 'Himalaya', 15),
(159, 'Arden Grange', 15),
(160, 'Aini', 15),
(161, 'Basil', 15),
(162, 'Bioline', 15),
(163, 'Beco', 15),
(164, 'Krypto', 15),
(165, 'Pedigree', 15),
(166, 'Drools', 16),
(167, 'Acana', 16),
(168, 'Applaws', 16),
(169, 'Himalaya', 16),
(170, 'Arden Grange', 16),
(171, 'Aini', 16),
(172, 'Basil', 16),
(173, 'Bioline', 16),
(174, 'Beco', 16),
(175, 'Krypto', 16),
(176, 'Pedigree', 16),
(177, 'Others', 1),
(178, 'Others', 2),
(179, 'Others', 3),
(180, 'Others', 4),
(181, 'Others', 5),
(182, 'Others', 6),
(183, 'Others', 7),
(184, 'Others', 8),
(185, 'Others', 9),
(186, 'Others', 10),
(187, 'Others', 11),
(188, 'Others', 12),
(189, 'Others', 13),
(190, 'Others', 14),
(191, 'Others', 15),
(192, 'Others', 16);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'How to find an item on Fashionys.com?', '<h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">We have a wide range of fabulous products to choose from.</span></font></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><span style=\"font-size: 15.7143px; color: rgb(34, 34, 34); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif;\">Tip 1: If you\'re looking for a specific product, use the keyword search box located at the top of the site. Simply type what you are looking for, and prepare to be amazed!</span></h3><h3 class=\"checkout-complete-box font-bold txt16\" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4; background-color: rgb(250, 250, 250);\"><font color=\"#222222\" face=\"opensans, Helvetica Neue, Helvetica, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15.7143px;\">Tip 2: If you want to explore a category of products, use the Shop Categories in the upper menu, and navigate through your favorite categories where we\'ll feature the best products in each.</span></font><br><br></h3>\r\n'),
(2, 'What is your return policy?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\">You have 15 days to make a refund request after your order has been delivered.</span><br></p>\r\n'),
(3, ' I received a defective/damaged item, can I get a refund?', '<p>In case the item you received is damaged or defective, you could return an item in the same condition as you received it with the original box and/or packaging intact. Once we receive the returned item, we will inspect it and if the item is found to be defective or damaged, we will process the refund along with any shipping fees incurred.<br></p>\r\n'),
(4, 'When are ‘Returns’ not possible?', '<p class=\"a  \" style=\"box-sizing: inherit; text-rendering: optimizeLegibility; line-height: 1.6; margin-bottom: 0.714286rem; padding: 0px; font-size: 14px; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; background-color: rgb(250, 250, 250);\">There are a few certain scenarios where it is difficult for us to support returns:</p><ol style=\"box-sizing: inherit; line-height: 1.6; margin-right: 0px; margin-bottom: 0px; margin-left: 1.25rem; padding: 0px; list-style-position: outside; color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(250, 250, 250);\"><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Return request is made outside the specified time frame, of 15 days from delivery.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Product is used, damaged, or is not in the same condition as you received it.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Specific categories like innerwear, lingerie, socks and clothing freebies etc.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Defective products which are covered under the manufacturer\'s warranty.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Any consumable item which has been used or installed.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Products with tampered or missing serial numbers.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Anything missing from the package you\'ve received including price tags, labels, original packing, freebies and accessories.</li><li style=\"box-sizing: inherit; margin: 0px; padding: 0px; font-size: inherit;\">Fragile items, hygiene related items.</li></ol>\r\n'),
(5, 'What are the items that cannot be returned?', '<p>The items that can not be returned are:</p><p>Clearance items clearly marked as such and displaying a No-Return Policy<br></p><p>When the offer notes states so specifically are items that cannot be returned.</p><p>Items that fall into the below product types-</p><ul><li>Underwear</li><li>Lingerie</li><li>Socks</li><li>Software</li><li>Music albums</li><li>Books</li><li>Swimwear</li><li>Beauty &amp; Fragrances</li><li>Hosiery</li></ul><p>Also, any consumable items that are used or installed cannot be returned. As outlined in consumer Protection Rights and concerning section on non-returnable items<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', '$'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(1, 'Food', 1),
(2, 'Supplement', 1),
(3, 'Chews', 1),
(4, 'Toy', 1),
(5, 'Health', 1),
(6, 'Treat', 1),
(7, 'Grooming', 1),
(8, 'Accessories', 1),
(9, 'Food', 2),
(10, 'Supplement', 2),
(11, 'Accessories', 2),
(12, 'Grooming', 2),
(13, 'Treat', 2),
(14, 'Health', 2),
(15, 'Toy', 2),
(16, 'Chews', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `color`, `quantity`, `unit_price`, `payment_id`) VALUES
(50, 81, 'Black Wool Beanie & Bobble Hat For Unisex', '', 'Black', '1', '1', '1524666526');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'About Us', '<p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Fashionys.com</b> has made you shine on your special days specially for beautiful women. Our goal has always been to celebrate YOU! To get the best in you we brought a huge collection whether youâ€™re attending a party, wedding, and all those events that require a WOW dress.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>About Us</b></span></font></p><p style=\"text-align: justify; \"><span style=\"font-family: apercu, Arial, sans-serif; font-size: 14px; font-weight: 700;\">Fashionys.com</span><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">&nbsp;is a new fashion shopping site which brings trendy fashion products at addictive prices. We feel fashion is not what you wear but how you feel, so Keeping this in mind, we brought you the designer wear clothing comprising a wide range of designs, style and prints to meet your every mood, whim and fancy.</span></font></p><p style=\"text-align: justify; \"><span style=\"font-size: 14px; font-family: apercu, Arial, sans-serif;\"><b>Our Vision</b></span><br></p><p style=\"text-align: justify; \"><span style=\"font-size: 14px; font-family: apercu, Arial, sans-serif;\">Our vision is to â€œIntroduce the beauty in you with your beautiful smileâ€ to the world with the best online shopping experience. Weâ€™ve the handpicked collection of clothes for women to suit them based on their body type, skin tone, budget and style preferences. We aim to bring our customers a wholesome real time trendy shopping experience, providing them with all the information they need regarding fit, comfort, fabric and everything else on their mind for each and every product in our collections, through size charts. Also, includes introducing new designs, styles and categories along with all the fashion happening.</span><br></p><p style=\"text-align: justify; \"><span style=\"font-weight: 700; font-family: apercu, Arial, sans-serif; font-size: 14px;\">Why Fashionys.com</span><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">?</span></font></p><p style=\"text-align: justify; \"><span style=\"font-family: apercu, Arial, sans-serif; font-size: 14px; font-weight: 700;\">Fashionys.com</span><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">&nbsp;has a large collection of sarees, kurta kurtis, dress material, dresses, tops, leggings and more. All the collection on our site is completely designer wear upgrading with new trends and look in the market with the largest catalogue of womenâ€™s fashion. We keep enhancing our technology and product assortment to ensure that you get the most delightful shopping experience by every woman.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">We make sure you get the best quality outfits with hassle free returns and exchanges policy. We ensure what you see is exactly what you get!</span></font></p><ul><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Low Price Guarantee</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">If you find a lower price on any dress we carry online, we will match it!</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">24/7 Customer Support</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">E-Mail â™¥ Text â™¥ Call</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">We are here for you 24/7 online and via phone.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Sizing &amp; Color</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">We carry an array of colors and sizes.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Worldwide Shipping</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Unfortunately, No. Weâ€™re providing our service only throughout India.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Weâ€™d love to expand our business Internationally soon.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Easy Returns</span></font></li></ul><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Bought an outfit but want to return it? We have a 3 days easy return policy. Please mail us at support@fashionys.com for more details.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Dream Dresses for Every Occasion</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Fashionys.com carries all carefully handpicked by our stylists. If youâ€™re interested in a particular model please mail us we will try our best to offer you the loved dress.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Verified Security</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">All our transactions are Verified by Norton and with the highest standards of security.Plus, there is a lot to go around too through regular exciting offers and gifts, so spread the word and refer us to everyone from your family, friends and colleagues and get rewarded for it. And to top it all, you can share your user experience by posting reviews. Donâ€™t wait any longer Sign up with us now! start stalking, start buying and start loving and start Introducing the beauty in you.</span></font></p>\r\n', 'about-banner.jpg', 'MyPetShop - About Us', 'about, about us, about fashion, about company, about fashionys', 'Fashionys.com has made you shine on your special days specially for beautiful women. Our goal has always been to celebrate YOU! To get the best in you we brought a huge collection whether youâ€™re attending a party, wedding, and all those events that require a WOW dress.', 'FAQ', 'faq-banner.jpg', 'MyPetShop - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contact Us', 'contact-banner.jpg', 'MyPetShop - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `customer_id`, `customer_name`, `customer_email`, `payment_date`, `txnid`, `paid_amount`, `card_number`, `card_cvv`, `card_month`, `card_year`, `bank_transaction_info`, `payment_method`, `payment_status`, `shipping_status`, `payment_id`) VALUES
(45, 5, 'Hammad Hassan', 'mc170200216@vu.edu.pk', '2018-04-24 15:07:35', '', 46, '', '', '', '', 'Bank Deposit Information\r\n', 'Bank Deposit', 'Completed', 'Completed', '1524568055'),
(46, 5, 'Hammad Hassan', 'mc170200216@vu.edu.pk', '2018-04-25 18:28:46', '', 1, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1524666526');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(1, 'Photo 1', 'photo-1.jpg'),
(2, 'Photo 2', 'photo-2.jpg'),
(3, 'Photo 3', 'photo-3.jpg'),
(4, 'Photo 4', 'photo-4.jpg'),
(5, 'Photo 5', 'photo-5.jpg'),
(6, 'Photo 6', 'photo-6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `ecat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(84, 'drools food dry dog food', '100', '120', 200, 'product-featured-84.jpg', '', '', '', '', '', 0, 1, 1, 1),
(85, 'DROOLS ABSOLUTE SALMON OIL SYRUP ', '550', '550', 300, 'product-featured-85.png', '', '', '', '', '', 0, 1, 0, 12),
(86, ' DROOLS ABSOLUTE VITAMINS SYRUP ', '299', '299', 300, 'product-featured-86.jpg', '', '', '', '', '', 0, 1, 0, 12),
(87, ' DROOLS ABSOLUTE VITAMINS TAB', '449', '449', 110, 'product-featured-87.jpg', '', '', '', '', '', 0, 1, 0, 12),
(88, 'ACANA  ADULT LARGE BREED ', '5846.61', '5846.61', 11, 'product-featured-88.jpg', '', '', '', '', '', 0, 1, 0, 2),
(89, 'ACANA ADULT LARGE BREED ', '5846.61', '5846.61', 11, 'product-featured-89.jpg', '', '', '', '', '', 0, 1, 0, 2),
(90, 'ACANA FREE RUN DUCK ', '349', '349', 340, 'product-featured-90.jpg', '', '', '', '', '', 0, 1, 0, 2),
(91, 'ACANA GRASS FED LAMB ', '3999', '3999', 6, 'product-featured-91.jpg', '', '', '', '', '', 0, 1, 0, 2),
(92, 'ACANA LIGHT AND FIT ', '6899', '6899', 11, 'product-featured-92.jpg', '', '', '', '', '', 0, 1, 0, 2),
(93, 'ACANA PRAIRIE POULTRY ', '6199', '6199', 11, 'product-featured-93.jpg', '', '', '', '', '', 0, 1, 0, 2),
(94, 'ACANA PRAIRIE POULTRY ', '1499', '1499', 2, 'product-featured-94.jpg', '', '', '', '', '', 0, 1, 0, 2),
(95, 'ACANA PRAIRIE POULTRY ', '299', '299', 340, 'product-featured-95.jpg', '', '', '', '', '', 0, 1, 0, 2),
(96, 'ACANA PRAIRIE POULTRY ', '3699', '3699', 6, 'product-featured-96.jpg', '', '', '', '', '', 0, 1, 0, 2),
(97, 'ACANA PUPPY AND JUNIOR ', '1499', '1499', 2, 'product-featured-97.jpg', '', '', '', '', '', 0, 1, 0, 2),
(98, 'ACANA PUPPY AND JUNIOR ', '349', '349', 340, 'product-featured-98.jpg', '', '', '', '', '', 0, 1, 0, 2),
(99, 'ACANA PUPPY SMALL BREED ', '1599', '1599', 2, 'product-featured-99.jpg', '', '', '', '', '', 0, 1, 0, 2),
(100, 'ACANA PUPPY SMALL BREED ', '349', '349', 340, 'product-featured-100.jpg', '', '', '', '', '', 0, 1, 0, 2),
(101, 'ACANA PUPPY&JUNIOR SMALL', '1899', '1899', 2, 'product-featured-101.jpg', '', '', '', '', '', 0, 1, 0, 2),
(102, 'ACANA PUPPY&JUNIOR-LARGE ', '6185.59', '6185.59', 11, 'product-featured-102.jpg', '', '', '', '', '', 0, 1, 0, 2),
(103, 'ACANA WILD COAST ', '299', '299', 340, 'product-featured-103.jpg', '', '', '', '', '', 0, 1, 0, 2),
(104, 'ALL DOG  HAPPY BISCUITS ADULT ', '150', '150', 1, 'product-featured-104.jpg', '', '', '', '', '', 0, 1, 0, 177),
(105, 'ALL DOG HAPPY BISCUIT PUPPY ', '150', '150', 1, 'product-featured-105.jpg', '', '', '', '', '', 0, 1, 0, 177),
(106, ' APPLAWS CAT TIN CHICKEN BREAST ', '135', '135', 70, 'product-featured-106.jpg', '', '', '', '', '', 0, 1, 0, 91),
(107, 'APPLAWS CAT TIN KITTEN CHICKEN BREAST ', '135', '135', 70, 'product-featured-107.jpg', '', '', '', '', '', 0, 1, 0, 91),
(108, ' APPLAWS CAT TIN TUNA FILLET ', '135', '135', 70, 'product-featured-108.jpg', '', '', '', '', '', 0, 1, 0, 91),
(109, 'APPLAWS CAT TIN KITTEN CHICKEN BREAST ', '135', '135', 70, 'product-featured-109.jpg', '', '', '', '', '', 0, 1, 0, 91),
(110, 'ANIMALL PET WIPES  180*200MM', '350', '350', 70, 'product-featured-110.jpg', '', '', '', '', '', 0, 1, 0, 188),
(111, 'HIMALAYA ANXOCARE TAB ', '140', '140', 60, 'product-featured-111.jpg', '', '', '', '', '', 0, 1, 0, 15),
(112, 'APPLAWS CAT POUCH  CHICKEN&PUMPKIN &WILD RICE ', '150', '150', 70, 'product-featured-112.jpg', '', '', '', '', '', 0, 1, 0, 91),
(113, 'APPLAWS CAT POUCH CHICKEN BREAST WITH LIVER IN TASTY JELLY ', '150', '150', 70, 'product-featured-113.jpg', '', '', '', '', '', 0, 1, 0, 91),
(114, 'APPLAWS CAT POUCH TENDER TUNA WITH MACKEREL IN A TASTY JELLY ', '150', '150', 70, 'product-featured-114.jpg', '', '', '', '', '', 0, 1, 0, 91),
(115, 'APPLAWS CAT POUCH TUNA FILLET WITH PACIFIC PRAWNS ', '150', '150', 70, 'product-featured-115.jpg', '', '', '', '', '', 0, 1, 0, 91),
(116, 'APPLAWS CAT POUCH TUNA FILLET WITH WHOLE  ANCHOVY ', '150', '150', 70, 'product-featured-116.jpg', '', '', '', '', '', 0, 1, 0, 91),
(117, 'APPLAWS CAT POUCH TUNA WITH SALMON IN A TASTY JELLY ', '150', '150', 70, 'product-featured-117.jpg', '', '', '', '', '', 0, 1, 0, 91),
(118, 'APPLAWS CAT TIN CHICKEN BREAST WITH MANGO ', '135', '135', 70, 'product-featured-118.jpg', '', '', '', '', '', 0, 1, 0, 91),
(119, 'APPLAWS CAT TIN OCEAN FISH ', '135', '135', 70, 'product-featured-119.jpg', '', '', '', '', '', 0, 1, 0, 91),
(120, 'APPLAWS CAT TIN SARDINE WITH SHRIMP IN A TESTY JELLY ', '135', '135', 70, 'product-featured-120.jpg', '', '', '', '', '', 0, 1, 0, 91),
(121, 'APPLAWS CAT TIN TUNA WITH CRAB ', '135', '135', 70, 'product-featured-121.jpg', '', '', '', '', '', 0, 1, 0, 91),
(122, 'APPLAWS TUNA FILLET WITH PACIFIC PRAWN  POUCH', '150', '150', 70, 'product-featured-122.jpg', '', '', '', '', '', 0, 1, 0, 91),
(123, 'ARDEN GRANGE PUPPY /JUNIOR LARGE BREED ', '1370', '1370', 2, 'product-featured-123.jpg', '', '', '', '', '', 0, 1, 0, 5),
(124, 'AUTO CLEAN PET BRUSHES', '575', '575', 1, 'product-featured-124.jpg', '', '', '', '', '', 0, 1, 0, 183),
(125, 'BASIL  ANTI DANDRUFF SHAMPOO ', '275', '275', 250, 'product-featured-125.jpg', '', '', '', '', '', 0, 1, 0, 73),
(126, 'BASIL  BALL', '240', '240', 1, 'product-featured-126.jpg', '', '', '', '', '', 0, 1, 0, 84),
(127, 'BASIL  BISCUIT ADULT ', '200', '200', 900, 'product-featured-127.jpg', '', '', '', '', '', 0, 1, 0, 62),
(128, 'BASIL  NO TICKS ', '275', '275', 250, 'product-featured-128.jpg', '', '', '', '', '', 0, 1, 0, 73),
(129, 'BASIL  PAD HARNESH MEDIUM ', '375', '375', 1, 'product-featured-129.jpg', '', '', '', '', '', 0, 1, 0, 84),
(130, 'BASIL  TOWEL', '425', '425', 1, 'product-featured-130.jpg', '', '', '', '', '', 0, 1, 0, 84),
(131, 'BASIL 360 CALCIUM MILK ', '200', '200', 900, 'product-featured-131.jpg', '', '', '', '', '', 0, 1, 0, 7),
(132, 'BASIL ADULT BISCUIT ', '200', '200', 900, 'product-featured-132.jpg', '', '', '', '', '', 0, 1, 0, 7),
(133, 'BASIL ANTI DANDRUFF ', '500', '500', 500, 'product-featured-133.jpg', '', '', '', '', '', 0, 1, 0, 73),
(134, 'BASIL ANTI DANDRUFF SHAMPOO ', '275', '275', 250, 'product-featured-134.jpg', '', '', '', '', '', 0, 1, 0, 73),
(135, 'BASIL BOWL', '575', '575', 1, 'product-featured-135.jpg', '', '', '', '', '', 0, 1, 0, 84),
(136, 'BASIL BOWL  MELAMINE PRINT', '650', '650', 1, 'product-featured-136.jpg', '', '', '', '', '', 0, 1, 0, 84),
(137, 'BASIL BOWL ELEVATED EAROUT RS-899', '899', '899', 1, 'product-featured-137.jpg', '', '', '', '', '', 0, 1, 0, 84),
(138, 'BASIL BOWL LARGE', '650', '650', 1, 'product-featured-138.jpg', '', '', '', '', '', 0, 1, 0, 84),
(139, 'BASIL BOWL LARGE SET', '900', '900', 1, 'product-featured-139.jpg', '', '', '', '', '', 0, 1, 0, 84),
(140, 'BASIL BOWL MEDIUM', '400', '400', 1, 'product-featured-140.jpg', '', '', '', '', '', 0, 1, 0, 84),
(141, 'BASIL BOWL MEDIUM S', '500', '500', 1, 'product-featured-141.jpg', '', '', '', '', '', 0, 1, 0, 84),
(142, 'BASIL BOWL ML PRINT SMALL ', '300', '300', 1, 'product-featured-142.jpg', '', '', '', '', '', 0, 1, 0, 84),
(143, 'BASIL BOWL ML PRINT SMALL ', '300', '300', 1, 'product-featured-143.jpg', '', '', '', '', '', 0, 1, 0, 84),
(144, 'BASIL BOWL ML PRINT XS RS- 250', '250', '250', 1, 'product-featured-144.jpg', '', '', '', '', '', 0, 1, 0, 84),
(145, 'BASIL BOWL S.STEEL MEDIUM RS-250', '250', '250', 1, 'product-featured-145.jpg', '', '', '', '', '', 0, 1, 0, 84),
(146, 'BASIL BOWL S.STEEL RS-250', '250', '250', 1, 'product-featured-146.jpg', '', '', '', '', '', 0, 1, 0, 84),
(147, 'BASIL BOWL S.STEEL SMALL RS-200', '200', '200', 1, 'product-featured-147.jpg', '', '', '', '', '', 0, 1, 0, 84),
(148, 'BASIL BOWL SET MEDIUM', '575', '575', 1, 'product-featured-148.jpg', '', '', '', '', '', 0, 1, 0, 84),
(149, 'BASIL BOWL SET SMALL', '400', '400', 1, 'product-featured-149.jpg', '', '', '', '', '', 0, 1, 0, 84),
(150, 'BASIL BOWL SMALL', '250', '250', 1, 'product-featured-150.jpg', '', '', '', '', '', 0, 1, 0, 84),
(151, 'BASIL CALCIUM BONE CHEWY ', '200', '200', 100, 'product-featured-151.jpg', '', '', '', '', '', 0, 1, 0, 23),
(152, 'BASIL CALCIUM MILK CHEWY BONE 360 DENTAL CHEWA ', '200', '200', 90, 'product-featured-152.jpg', '', '', '', '', '', 0, 1, 0, 29),
(153, 'BASIL CAT SHAMPOO ', '400', '400', 300, 'product-featured-153.jpg', '', '', '', '', '', 0, 1, 0, 73),
(154, 'BASIL CONDITIONER', '525', '525', 300, 'product-featured-154.jpg', '', '', '', '', '', 0, 1, 0, 73),
(155, 'BASIL CONDITIONER ', '525', '525', 300, 'product-featured-155.jpg', '', '', '', '', '', 0, 1, 0, 73),
(156, 'BASIL DAILY FLOSS 150GM', '350', '350', 150, 'product-featured-156.jpg', '', '', '', '', '', 0, 1, 0, 7),
(157, 'BASIL DESHEDDING COMB', '750', '750', 1, 'product-featured-157.jpg', '', '', '', '', '', 0, 1, 0, 84),
(158, 'BASIL DINNER SET LARGE ', '900', '900', 1, 'product-featured-158.jpg', '', '', '', '', '', 0, 1, 0, 84),
(159, 'BASIL DINNER SET SMALL ', '400', '400', 1, 'product-featured-159.jpg', '', '', '', '', '', 0, 1, 0, 84),
(160, 'BASIL FEATHER STCK WITH BELL ', '225', '225', 1, 'product-featured-160.jpg', '', '', '', '', '', 0, 1, 0, 84),
(161, 'BASIL FRESH BREATH 360 DENTAL CHEWS ', '200', '200', 90, 'product-featured-161.jpg', '', '', '', '', '', 0, 1, 0, 29),
(162, 'BASIL GERMI SAFE WIPES ', '375', '375', 50, 'product-featured-162.jpg', '', '', '', '', '', 0, 1, 0, 73),
(163, 'BASIL LINT ROLLER ', '250', '250', 60, 'product-featured-163.jpg', '', '', '', '', '', 0, 1, 0, 73),
(164, 'BASIL LOLLIPOP WITH CHICKEN', '250', '250', 192, 'product-featured-164.jpg', '', '', '', '', '', 0, 1, 0, 62),
(165, 'BASIL MILK BONE', '200', '200', 90, 'product-featured-165.jpg', '', '', '', '', '', 0, 1, 0, 29),
(166, 'BASIL MOUTH FREHNER', '250', '250', 130, 'product-featured-166.jpg', '', '', '', '', '', 0, 1, 0, 73),
(167, 'BASIL MOUTH FRESHENING SPRAY CINNAMON ', '250', '250', 130, 'product-featured-167.jpg', '', '', '', '', '', 0, 1, 0, 73),
(168, 'BASIL MOUTHFREHNER', '250', '250', 130, 'product-featured-168.jpg', '', '', '', '', '', 0, 1, 0, 73),
(169, 'BASIL NO TICK SHAMPOO ', '275', '275', 250, 'product-featured-169.jpg', '', '', '', '', '', 0, 1, 0, 73),
(170, 'BASIL NO TICKS ', '500', '500', 500, 'product-featured-170.jpg', '', '', '', '', '', 0, 1, 0, 73),
(171, 'BASIL NON VEGETARIAN BONE SHAPPED ADULT  BISCUTS ', '200', '200', 1, 'product-featured-171.jpg', '', '', '', '', '', 0, 1, 0, 62),
(172, 'BASIL NON VEGETARIAN BONE SHAPPED PUPPY BISCUTS ', '200', '200', 1, 'product-featured-172.jpg', '', '', '', '', '', 0, 1, 0, 62),
(173, 'BASIL NON VEGETARIAN ROUND SHAPPEDF PUPPYU BISCUITS ', '200', '200', 1, 'product-featured-173.jpg', '', '', '', '', '', 0, 1, 0, 62),
(174, 'BASIL NUTTY BUDDY PEANUT BETTER', '225', '225', 250, 'product-featured-174.jpg', '', '', '', '', '', 0, 1, 0, 7),
(175, 'BASIL OAT& ALOVERA ', '275', '275', 250, 'product-featured-175.jpg', '', '', '', '', '', 0, 1, 0, 73),
(176, 'BASIL OAT&ALOVERA ', '500', '500', 500, 'product-featured-176.jpg', '', '', '', '', '', 0, 1, 0, 73),
(177, 'BASIL PAD COLLER  LARGE', '250', '250', 1, 'product-featured-177.jpg', '', '', '', '', '', 0, 1, 0, 84),
(178, 'BASIL PAD COLLER  M', '200', '200', 1, 'product-featured-178.jpg', '', '', '', '', '', 0, 1, 0, 84),
(179, 'BASIL PAD COLLER SMALL', '150', '150', 1, 'product-featured-179.jpg', '', '', '', '', '', 0, 1, 0, 84),
(180, 'BASIL PAD HARNESH LARGE', '475', '475', 1, 'product-featured-180.jpg', '', '', '', '', '', 0, 1, 0, 84),
(181, 'BASIL PAD HARNESH MEDIUM ', '375', '375', 1, 'product-featured-181.jpg', '', '', '', '', '', 0, 1, 0, 84),
(182, 'BASIL PAD HARNESH SMALL ', '275', '275', 1, 'product-featured-182.jpg', '', '', '', '', '', 0, 1, 0, 84),
(183, 'BASIL PAD HARNESH XL ', '575', '575', 1, 'product-featured-183.jpg', '', '', '', '', '', 0, 1, 0, 84),
(184, 'BASIL PAD LEASH LARGE ', '325', '325', 1, 'product-featured-184.jpg', '', '', '', '', '', 0, 1, 0, 84),
(185, 'BASIL PAD LEASH MEDIUM ', '275', '275', 1, 'product-featured-185.jpg', '', '', '', '', '', 0, 1, 0, 84),
(186, 'BASIL PAD COLLER L MR', '250', '250', 1, 'product-featured-186.jpg', '', '', '', '', '', 0, 1, 0, 84),
(187, 'BASIL PAD COLLAR M ', '200', '200', 1, 'product-featured-187.jpg', '', '', '', '', '', 0, 1, 0, 84),
(188, 'BASIL PAD COLLAR S', '150', '150', 1, 'product-featured-188.jpg', '', '', '', '', '', 0, 1, 0, 84),
(189, 'BASIL PAD COLLAR XL ', '300', '300', 1, 'product-featured-189.jpg', '', '', '', '', '', 0, 1, 0, 84),
(190, 'BASIL PAD HARNESS M ', '350', '350', 1, 'product-featured-190.jpg', '', '', '', '', '', 0, 1, 0, 84),
(191, 'BASIL PAD LEASE S ', '225', '225', 1, 'product-featured-191.jpg', '', '', '', '', '', 0, 1, 0, 84),
(192, 'BASIL PAD LEASE XL ', '550', '550', 1, 'product-featured-192.jpg', '', '', '', '', '', 0, 1, 0, 84),
(193, 'BASIL PERFUME GARDEN FRESH ', '250', '250', 130, 'product-featured-193.jpg', '', '', '', '', '', 0, 1, 0, 84),
(194, 'BASIL PERFUME WOODY WALK ', '250', '250', 130, 'product-featured-194.jpg', '', '', '', '', '', 0, 1, 0, 84),
(195, 'BASIL PUPPY BISCUITS ', '200', '200', 900, 'product-featured-195.jpg', '', '', '', '', '', 0, 1, 0, 62),
(196, 'BASIL ROUND BISCUITS ', '200', '200', 1, 'product-featured-196.jpg', '', '', '', '', '', 0, 1, 0, 62),
(197, 'BASIL SILKY SOFT ', '275', '275', 250, 'product-featured-197.jpg', '', '', '', '', '', 0, 1, 0, 73),
(198, 'BASIL SILKY SOFT ', '500', '500', 500, 'product-featured-198.jpg', '', '', '', '', '', 0, 1, 0, 73),
(199, 'BASIL SILKY SOFT SHAMPOO ', '3700', '3700', 5, 'product-featured-199.jpg', '', '', '', '', '', 0, 1, 0, 73),
(200, 'BASIL SOFTY PAW BUTTER', '275', '275', 1, 'product-featured-200.jpg', '', '', '', '', '', 0, 1, 0, 73),
(201, 'BASIL TOWEL', '425', '425', 1, 'product-featured-201.jpg', '', '', '', '', '', 0, 1, 0, 84),
(202, 'BASIL TOY PLUSH BIRD ', '500', '500', 1, 'product-featured-202.jpg', '', '', '', '', '', 0, 1, 0, 84),
(203, 'BASIL TOY PLUSH ROPE', '450', '450', 1, 'product-featured-203.jpg', '', '', '', '', '', 0, 1, 0, 84),
(205, 'BASIL TOY RING ', '175', '175', 1, 'product-featured-205.jpg', '', '', '', '', '', 0, 1, 0, 40),
(206, 'BASIL TOY SQUEEKY BALL ', '250', '250', 1, 'product-featured-206.jpeg', '', '', '', '', '', 0, 1, 0, 40),
(207, 'BASIL TOY TREAT BALL ', '275', '275', 1, 'product-featured-207.jpg', '', '', '', '', '', 0, 1, 0, 40),
(208, 'BASIL TOY TYRE ', '400', '400', 1, 'product-featured-208.jpg', '', '', '', '', '', 0, 1, 0, 40),
(209, 'BASIL TRAINING PADS 60*45CMS', '650', '650', 25, 'product-featured-209.jpg', '', '', '', '', '', 0, 1, 0, 84),
(210, 'BASIL TRAINING PADS LARGE  60*60CMS', '550', '550', 15, 'product-featured-210.jpg', '', '', '', '', '', 0, 1, 0, 84),
(211, 'BASIL TURTLES WITH CHICKEN', '250', '250', 94, 'product-featured-211.jpg', '', '', '', '', '', 0, 1, 0, 7),
(212, 'BASIL VEGETERIAN BISCUITS ', '200', '200', 1, 'product-featured-212.jpg', '', '', '', '', '', 0, 1, 0, 62),
(213, 'BASIL WET WIPES', '350', '350', 80, 'product-featured-213.jpg', '', '', '', '', '', 0, 1, 0, 62),
(214, 'BEAPHAR ACTIVE PRO BIOTIC ', '990', '990', 500, 'product-featured-214.jpg', '', '', '', '', '', 0, 1, 0, 177),
(215, 'beaphar black coat aloe vera dog shampoo ', '370', '370', 250, 'product-featured-215.jpg', '', '', '', '', '', 0, 1, 0, 183),
(216, 'BEAPHAR BONE BUILDER 500G', '740', '740', 500, 'product-featured-216.jpg', '', '', '', '', '', 0, 1, 0, 177),
(217, 'BEAPHAR BROWN COAT SHAMPOO ', '390', '390', 250, 'product-featured-217.jpg', '', '', '', '', '', 0, 1, 0, 183),
(218, 'BEAPHAR CONDITIONER CAT&DOG ', '370', '370', 250, 'product-featured-218.jpg', '', '', '', '', '', 0, 1, 0, 183),
(219, 'BEAPHAR HD TABLETS ', '1400', '1400', 100, 'product-featured-219.jpg', '', '', '', '', '', 0, 1, 0, 178),
(220, 'BEAPHAR KALK CALCIUM TAB', '295', '295', 60, 'product-featured-220.jpg', '<p>no</p>', '', '', '', '', 0, 1, 0, 178),
(221, 'BEAPHAR PUPPY SHAMPOO MACADAMIA OIL ', '390', '390', 250, 'product-featured-221.jpg', '', '', '', '', '', 0, 1, 0, 183),
(222, 'BEAPHAR PUPPY TRAINER ', '580', '580', 20, 'product-featured-222.png', '', '', '', '', '', 0, 1, 0, 183),
(223, 'BEAPHAR SHAMPOO CATS ', '390', '390', 250, 'product-featured-223.jpg', '', '', '', '', '', 0, 1, 0, 188),
(224, 'BEAPHAR TOOTH GEL DOG/CAT -', '830', '830', 100, 'product-featured-224.jpg', '', '', '', '', '', 0, 1, 0, 183),
(225, 'BEAPHAR TOP 10 ', '220', '220', 60, 'product-featured-225.png', '', '', '', '', '', 0, 1, 0, 178),
(226, 'BEAPHAR TOP 10 MULTI VITAMIN ', '220', '220', 60, 'product-featured-226.jpg', '', '', '', '', '', 0, 1, 0, 178),
(227, 'BEAPHAR TOP 10 MULTI VITAMIN TABLETS ', '220', '220', 60, 'product-featured-227.jpg', '', '', '', '', '', 0, 1, 0, 178),
(228, 'BEAPHER HD TAB', '1400', '1400', 50, 'product-featured-228.jpg', '', '', '', '', '', 0, 1, 0, 178),
(229, 'BEAPHER ODOUR ELIMINATOR ', '950', '950', 400, 'product-featured-229.jpg', '', '', '', '', '', 0, 1, 0, 183),
(230, 'BEAPHER PUPPY SHAMPOO VALP ', '390', '390', 250, 'product-featured-230.jpg', '', '', '', '', '', 0, 1, 0, 183),
(231, 'BEAPHER TOOTHPASTE', '350', '350', 100, 'product-featured-231.jpg', '', '', '', '', '', 0, 1, 0, 183),
(232, 'BEAPHER WHITE COAT SHAMPOO ', '390', '390', 250, 'product-featured-232.jpg', '', '', '', '', '', 0, 1, 0, 183),
(233, 'BECO DEGRADABLE POOP BAGS STANDARD (4*60)', '549', '549', 60, 'product-featured-233.png', '', '', '', '', '', 0, 1, 0, 183),
(234, 'BECO LITTER TRAY -BLUE STANDARD', '999', '999', 1, 'product-featured-234.png', '', '', '', '', '', 0, 1, 0, 86),
(235, 'BECO LITTER TRAY -PINK  STANDARD', '999', '999', 1, 'product-featured-235.png', '', '', '', '', '', 0, 1, 0, 86),
(236, 'BELLOTTA  TUNA &CHICKEN ', '50', '50', 85, 'product-featured-236.png', '', '', '', '', '', 0, 1, 0, 185),
(237, 'BELLOTTA MACKEREL GRAVY ', '50', '50', 85, 'product-featured-237.png', '', '', '', '', '', 0, 1, 0, 185),
(238, 'BELLOTTA TUNA  GRAVY  ', '50', '50', 85, 'product-featured-238.png', '', '', '', '', '', 0, 1, 0, 185),
(239, 'BELLOTTA TUNA IN GRAVY ', '90', '90', 85, 'product-featured-239.png', '', '', '', '', '', 0, 1, 0, 185),
(240, 'BELLOTTA TUNA&SALMON CAT WED FOOD ', '50', '50', 85, 'product-featured-240.png', '', '', '', '', '', 0, 1, 0, 185),
(241, 'BIOLINE  DENTAL CARE SET', '385', '385', 1, 'product-featured-241.png', '', '', '', '', '', 0, 1, 0, 74),
(242, 'BIOLINE  FOAM SHAMPOO ', '285', '285', 220, 'product-featured-242.jpg', '', '', '', '', '', 0, 1, 0, 74),
(243, 'BIOLINE DEODORIZING SPRAY ', '385', '385', 500, 'product-featured-243.jpg', '', '', '', '', '', 0, 1, 0, 74),
(244, 'BIOLINE DOG PERFIUM', '175', '175', 9, 'product-featured-244.jpeg', '', '', '', '', '', 0, 1, 0, 74),
(245, 'BIOLINE DRY CLEAN POWDER  SHAMPOO', '220', '220', 220, 'product-featured-245.jpeg', '', '', '', '', '', 0, 1, 0, 74),
(246, 'BIOLINE FINGER BRUSH SET ', '145', '145', 2, 'product-featured-246.jpg', '', '', '', '', '', 0, 1, 0, 74),
(247, 'BIOLINE KEEP OFF SPRAY FOR CAT ', '365', '365', 175, 'product-featured-247.jpg', '', '', '', '', '', 0, 1, 0, 129),
(248, 'BIOLINE PAW CLEANER', '400', '400', 150, 'product-featured-248.jpg', '', '', '', '', '', 0, 1, 0, 74),
(249, 'BIOLINE PAW CLEANING FOAM ', '375', '375', 150, 'product-featured-249.jpg', '', '', '', '', '', 0, 1, 0, 74),
(250, 'BIOLINE PERFIUM', '175', '175', 9, 'product-featured-250.jpg', '', '', '', '', '', 0, 1, 0, 74),
(251, 'BIOLINE PERFUME', '175', '175', 9, 'product-featured-251.jpg', '', '', '', '', '', 0, 1, 0, 74),
(252, 'BIOLINE PET ROLLER', '250', '250', 60, 'product-featured-252.jpg', '', '', '', '', '', 0, 1, 0, 74),
(253, 'BIOLINE PET TOWEL ', '495', '495', 1, 'product-featured-253.jpg', '', '', '', '', '', 0, 1, 0, 74),
(254, 'BIOLINE PUPPY TRAINER', '185', '185', 20, 'product-featured-254.jpg', '', '', '', '', '', 0, 1, 0, 74),
(255, 'BIOLINE TOOTHBRUSH ', '145', '145', 2, 'product-featured-255.jpg', '', '', '', '', '', 0, 1, 0, 74),
(256, 'BIOLINE TOOTHBRUSH SET ', '175', '175', 4, 'product-featured-256.jpg', '', '', '', '', '', 0, 1, 0, 74),
(257, 'BIOLINE TOOTHBRUSH SINGLE', '45', '45', 1, 'product-featured-257.jpg', '', '', '', '', '', 0, 1, 0, 74),
(258, 'BIOLINE TOWEL 66*43CM ', '495', '495', 1, 'product-featured-258.jpg', '', '', '', '', '', 0, 1, 0, 74),
(259, 'BITE &PULL DOG TOY ', '550', '550', 1, 'product-featured-259.jpg', '', '', '', '', '', 0, 1, 0, 180),
(260, 'BLACK MONSTER &RED BONE 2 COMBO', '670', '670', 1, 'product-featured-260.jpg', '', '', '', '', '', 0, 1, 0, 177),
(261, 'BLUE EQUEKEE DIMAND BALL', '430', '430', 1, 'product-featured-261.jpg', '', '', '', '', '', 0, 1, 0, 180),
(262, 'KRYPTO BONE 10', '200', '200', 1, 'product-featured-262.jpg', '', '', '', '', '', 0, 1, 0, 65),
(263, 'KRYPTO BONE 10\" ', '220', '220', 1, 'product-featured-263.jpg', '', '', '', '', '', 0, 1, 0, 10),
(264, 'KRYPTO  BONE 12\" ', '330', '330', 1, 'product-featured-264.jpg', '', '', '', '', '', 0, 1, 0, 10),
(265, 'KRYPTO BONE 3\" ', '550', '550', 1, 'product-featured-265.jpg', '', '', '', '', '', 0, 1, 0, 10),
(266, 'KRYPTO  BONE 3\" ', '600', '600', 1, 'product-featured-266.jpg', '', '', '', '', '', 0, 1, 0, 10),
(267, 'KRYPTO BONE 3\" ', '350', '350', 500, 'product-featured-267.jpg', '', '', '', '', '', 0, 1, 0, 10),
(268, 'KRYPTO BONE 3\" ', '150', '150', 6, 'product-featured-268.jpg', '', '', '', '', '', 0, 1, 0, 10),
(269, 'KRYPTO BONE 3\"', '350', '350', 500, 'product-featured-269.jpg', '', '', '', '', '', 0, 1, 0, 10),
(270, 'KRYPTO BONE 4\" ', '350', '350', 12, 'product-featured-270.jpg', '', '', '', '', '', 0, 1, 0, 10),
(271, 'KRYPTO BONE 4\" ', '150', '150', 4, 'product-featured-271.jpg', '', '', '', '', '', 0, 1, 0, 10),
(272, ' KRYPTO BONE 4\" ', '250', '250', 8, 'product-featured-272.jpg', '', '', '', '', '', 0, 1, 0, 10),
(273, 'KRYPTO BONE 4\"', '510', '510', 1, 'product-featured-273.jpg', '', '', '', '', '', 0, 1, 0, 10),
(274, 'KRYPTO BONE 4\"', '180', '180', 4, 'product-featured-274.jpg', '', '', '', '', '', 0, 1, 0, 10),
(275, 'KRYPTO  bone 5\"', '280', '280', 4, 'product-featured-275.jpg', '', '', '', '', '', 0, 1, 0, 10),
(276, 'KRYPTO  BONE 5\" ', '500', '500', 1, 'product-featured-276.jpg', '', '', '', '', '', 0, 1, 0, 10),
(277, 'KRYPTO BONE 5\" 1KG ', '490', '490', 1, 'product-featured-277.jpg', '', '', '', '', '', 0, 1, 0, 10),
(278, 'KRYPTO  BONE 5\" ', '180', '180', 4, 'product-featured-278.jpg', '', '', '', '', '', 0, 1, 0, 10),
(279, 'KRYPTO BONE 3\"', '350', '350', 500, 'product-featured-279.jpg', '', '', '', '', '', 0, 1, 0, 10),
(280, 'KRYPTO BONE 6\"', '490', '490', 1, 'product-featured-280.jpg', '', '', '', '', '', 0, 1, 0, 10),
(281, 'KRYPTO BONE 6\" ', '490', '490', 1, 'product-featured-281.jpg', '', '', '', '', '', 0, 1, 0, 10),
(282, 'KRYPTO BONE 6\" ', '250', '250', 4, 'product-featured-282.jpg', '', '', '', '', '', 0, 1, 0, 10),
(283, 'KRYPTO BONE 7\"', '400', '400', 4, 'product-featured-283.jpg', '', '', '', '', '', 0, 1, 0, 10),
(284, 'KRYPTO BONE 8\" ', '400', '400', 4, 'product-featured-284.jpg', '', '', '', '', '', 0, 1, 0, 10),
(285, 'FOLDING CAGE 24\"', '2100', '2100', 1, 'product-featured-285.jpg', '', '', '', '', '', 0, 1, 0, 184),
(286, 'FOLDING CAGE 30\"', '2300', '2300', 1, 'product-featured-286.jpg', '', '', '', '', '', 0, 1, 0, 184),
(287, ' KRYPTO CAGE 42\"', '5500', '5500', 1, 'product-featured-287.jpg', '', '', '', '', '', 0, 1, 0, 184),
(288, 'CANYON RIVER FELINE (TASTE OF THE WILD)', '1600', '1600', 2, 'product-featured-288.jpg', '', '', '', '', '', 0, 1, 0, 177),
(289, 'CARODYL', '297', '297', 100, 'product-featured-289.jpg', '', '', '', '', '', 0, 1, 0, 178),
(290, 'CAT LITTER BOX COVERED', '2000', '2000', 1, 'product-featured-290.jpg', '', '', '', '', '', 0, 1, 0, 187),
(291, 'CAT LITTER SCOOPER', '150', '150', 1, 'product-featured-291.jpg', '', '', '', '', '', 0, 1, 0, 187),
(292, 'CAT LITTER TRAY', '750', '750', 1, 'product-featured-292.jpg', '', '', '', '', '', 0, 1, 0, 187),
(293, 'GNAWLER CAT NIP', '450', '450', 75, 'product-featured-293.jpg', '', '', '', '', '', 0, 1, 0, 187),
(294, 'CUTURE ROLLON MOUTH WASH', '799', '799', 350, 'product-featured-294.jpg', '', '', '', '', '', 0, 1, 0, 183),
(295, 'CHAPPI ADULT CHICKEN&RICE', '460', '460', 3, 'product-featured-295.jpg', '', '', '', '', '', 0, 1, 0, 177),
(296, 'CHAPPI ADULT CHICKEN&RICE ', '1120', '1120', 8, 'product-featured-296.jpg', '', '', '', '', '', 0, 1, 0, 177),
(297, 'CHAPPI CHICKEN&RICE ', '2650', '2650', 20, 'product-featured-297.jpg', '', '', '', '', '', 0, 1, 0, 177),
(298, 'CHAPPI PUPPY  CHICKEN&MILK ', '460', '460', 3, 'product-featured-298.jpg', '', '', '', '', '', 0, 1, 0, 177),
(299, 'CHAPPI PUPPY CHICKEN &MILK ', '1200', '1200', 8, 'product-featured-299.jpg', '', '', '', '', '', 0, 1, 0, 177),
(300, 'CHIP CHOP CHICKEN&CALCIUM BONE', '225', '225', 70, 'product-featured-300.jpg', '', '', '', '', '', 0, 1, 0, 177),
(301, 'CHIP CHOP ROAST DUCK', '225', '225', 70, 'product-featured-301.jpg', '', '', '', '', '', 0, 1, 0, 177),
(302, 'CHIP CHOP SWEET POPOTO TWINED ', '225', '225', 70, 'product-featured-302.jpg', '', '', '', '', '', 0, 1, 0, 177),
(303, 'CHIP CHOPS CHICKEN TENDERA ', '225', '225', 70, 'product-featured-303.jpg', '', '', '', '', '', 0, 1, 0, 177),
(304, 'GNAWLERS DEFENSE ANTI BACTERIAL ', '160', '160', 105, 'product-featured-304.jpg', '', '', '', '', '', 0, 1, 0, 178),
(305, 'DELICIO CAT TREATS', '140', '140', 40, 'product-featured-305.jpg', '', '', '', '', '', 0, 1, 0, 185),
(306, 'DELICIO CAT REAL SALMON+MILK ', '150', '150', 40, 'product-featured-306.jpg', '', '', '', '', '', 0, 1, 0, 185),
(307, 'DELICIO CAT REAL SALMON+SHRIM', '150', '150', 40, 'product-featured-307.jpg', '', '', '', '', '', 0, 1, 0, 185),
(308, 'DELICIO CAT REAL TUNA +LIVER ', '150', '150', 40, 'product-featured-308.jpg', '', '', '', '', '', 0, 1, 0, 185),
(309, 'DENTALIGHT DENTAL BONE ', '150', '150', 90, 'product-featured-309.jpg', '', '', '', '', '', 0, 1, 0, 177),
(310, 'PEDIGREE DENTASTIX MONO SMALL', '130', '130', 110, 'product-featured-310.jpg', '', '', '', '', '', 0, 1, 0, 11),
(311, 'PETAHOLIC DIAPER MEDIUM', '450', '450', 12, 'product-featured-311.jpg', '', '', '', '', '', 0, 1, 0, 184),
(312, 'PETAHOLIC DIAPER XL', '525', '525', 12, 'product-featured-312.jpg', '', '', '', '', '', 0, 1, 0, 184),
(313, 'LAL PET PRODUCTS DOG  FOODING STAND   LARGE', '1250', '1250', 1, 'product-featured-313.jpg', '', '', '', '', '', 0, 1, 0, 184),
(314, 'DOG  T-SHIRT 16\"', '480', '480', 1, 'product-featured-314.jpg', '', '', '', '', '', 0, 1, 0, 184),
(315, 'LAL PET PRODUCTS DOG  TOY  BALL', '280', '280', 1, 'product-featured-315.jpg', '', '', '', '', '', 0, 1, 0, 180),
(316, 'LAL PET PRODUCTS DOG MUZZEL NO-3', '130', '130', 1, 'product-featured-316.jpg', '', '', '', '', '', 0, 1, 0, 184),
(317, 'LAL PEET PRODUCTS DOG MUZZEL NO-4', '200', '200', 1, 'product-featured-317.jpg', '', '', '', '', '', 0, 1, 0, 184),
(318, 'LALPET PRODUCTS DOG MUZZEL NO-7', '200', '200', 1, 'product-featured-318.jpg', '', '', '', '', '', 0, 1, 0, 184),
(319, 'DOGGY  ICECREAM AQUAMELON ', '150', '150', 100, 'product-featured-319.jpg', '', '', '', '', '', 0, 1, 0, 177),
(320, 'DOGGY ICECREAM BANANA ', '150', '150', 100, 'product-featured-320.jpg', '', '', '', '', '', 0, 1, 0, 177),
(321, 'DOGGY ICECREAM BANBERRY ', '150', '150', 100, 'product-featured-321.jpg', '', '', '', '', '', 0, 1, 0, 184),
(322, 'DOGGY ICECREAM MANGIFERA ', '150', '150', 100, 'product-featured-322.jpg', '', '', '', '', '', 0, 1, 0, 177),
(323, 'DOGGY ICEREAM UNICORN GUAVA ', '150', '150', 100, 'product-featured-323.jpg', '', '', '', '', '', 0, 1, 0, 184),
(324, 'DOGSEE CHEW  BARS ', '275', '275', 140, 'product-featured-324.jpg', '', '', '', '', '', 0, 1, 0, 177),
(325, 'DOGSEE CHEW BARS ', '275', '275', 130, 'product-featured-325.jpg', '', '', '', '', '', 0, 1, 0, 177),
(326, 'DOGSEE CHEW BARS ', '299', '299', 140, 'product-featured-326.jpg', '', '', '', '', '', 0, 1, 0, 177),
(327, 'DOGSEE CHEW CRUNCHIES ', '199', '199', 70, 'product-featured-327.jpg', '', '', '', '', '', 0, 1, 0, 177),
(328, 'DOGSEE CHEW SMALL BAR ', '169', '169', 100, 'product-featured-328.jpg', '', '', '', '', '', 0, 1, 0, 177),
(329, 'DOGSEE CRUNCH BANANA ', '199', '199', 50, 'product-featured-329.jpg', '', '', '', '', '', 0, 1, 0, 177),
(330, 'DOGSEE CRUNCH BEETROOT ', '199', '199', 30, 'product-featured-330.jpg', '', '', '', '', '', 0, 1, 0, 177),
(331, 'DOGSEE CRUNCH COCONUT', '199', '199', 150, 'product-featured-331.jpg', '', '', '', '', '', 0, 1, 0, 177),
(332, 'DOOGGY ICECREAM EMERALD APPLE ', '150', '150', 100, 'product-featured-332.jpg', '', '', '', '', '', 0, 1, 0, 177),
(333, 'DROOLS DR.DENT ', '95', '95', 150, 'product-featured-333.jpg', '', '', '', '', '', 0, 1, 0, 1),
(334, 'DROOLS 100% VEGETARIAN ', '999', '999', 7, 'product-featured-334.jpg', '', '', '', '', '', 0, 1, 0, 177),
(335, 'DROOLS 100% VEGETARIAN ADULT ', '285', '285', 1, 'product-featured-335.jpg', '', '', '', '', '', 0, 1, 0, 1),
(336, 'DROOLS 100%VEGETARIAN  ADULT DRY FOOD  ', '640', '640', 3, 'product-featured-336.jpg', '', '', '', '', '', 0, 1, 0, 1),
(337, 'DROOLS 100%VEGETERIAN  ADULT ', '640', '640', 3, 'product-featured-337.jpg', '', '', '', '', '', 0, 1, 0, 1),
(338, 'DROOLS ABSOLUTE CALCIUM ', '199', '199', 300, 'product-featured-338.jpg', '', '', '', '', '', 0, 1, 0, 12),
(339, 'DROOLS ABSOLUTE CALCIUM TAB', '249', '249', 50, 'product-featured-339.jpg', '', '', '', '', '', 0, 1, 0, 12),
(340, 'DROOLS ABSOLUTE IMUNITITY ', '499', '499', 110, 'product-featured-340.jpg', '', '', '', '', '', 0, 1, 0, 12),
(341, 'DROOLS ABSOLUTE SALMON OIL ', '299', '299', 150, 'product-featured-341.jpg', '', '', '', '', '', 0, 1, 0, 67),
(342, 'DROOLS ABSOLUTE SALMON OIL ', '550', '550', 300, 'product-featured-342.jpg', '', '', '', '', '', 0, 1, 0, 67),
(343, 'DROOLS ABSOLUTE VITAMIN TAB ', '499', '499', 110, 'product-featured-343.jpg', '', '', '', '', '', 0, 1, 0, 12),
(344, 'DROOLS ABSOLUTE VITAMINS ', '299', '299', 300, 'product-featured-344.jpg', '', '', '', '', '', 0, 1, 0, 12),
(345, 'DROOLS ABSOLUTE VITAMINS TAB', '249', '249', 50, 'product-featured-345.jpg', '', '', '', '', '', 0, 1, 0, 12),
(346, 'DROOLS ADULT CHICKEN AND EGG ', '1950', '1950', 10, 'product-featured-346.jpg', '', '', '', '', '', 0, 1, 0, 1),
(347, 'DROOLS ADULT GRAVY ', '35', '35', 150, 'product-featured-347.jpg', '', '', '', '', '', 0, 1, 0, 1),
(348, 'DROOLS CALCIUM BONE', '260', '260', 300, 'product-featured-348.jpg', '', '', '', '', '', 0, 1, 0, 1),
(349, 'DROOLS CALCIUM BONE ', '199', '199', 190, 'product-featured-349.jpg', '', '', '', '', '', 0, 1, 0, 1),
(350, 'DROOLS CALCIUM BONE ', '99', '99', 95, 'product-featured-350.jpg', '', '', '', '', '', 0, 1, 0, 1),
(351, 'DROOLS CALCIUYM BONS', '35', '35', 35, 'product-featured-351.jpg', '', '', '', '', '', 0, 1, 0, 1),
(352, 'DROOLS CAT LITTER ', '799', '799', 10, 'product-featured-352.jpg', '', '', '', '', '', 0, 1, 0, 111),
(353, 'Drools Cat Litter ', '399', '399', 5, 'product-featured-353.jpg', '', '', '', '', '', 0, 1, 0, 111),
(354, 'DROOLS CHICKEN & EGG ADULT  ', '580', '580', 3, 'product-featured-354.jpg', '', '', '', '', '', 0, 1, 0, 1),
(355, 'DROOLS CHICKEN&EGG PUPPY  DRY DOG FOOD ', '640', '640', 3, 'product-featured-355.jpg', '', '', '', '', '', 0, 1, 0, 1),
(356, 'DROOLS DOUBLE BRUSH', '25', '25', 20, 'product-featured-356.jpg', '', '', '', '', '', 0, 1, 0, 67),
(357, 'DROOLS DOUBLE BRUSH  LARGE BREED ', '300', '300', 10, 'product-featured-357.jpg', '', '', '', '', '', 0, 1, 0, 1),
(358, 'DROOLS DOUBLE BRUSH S/M BREED ', '349', '349', 15, 'product-featured-358.jpg', '', '', '', '', '', 0, 1, 0, 67),
(359, 'DROOLS FOCUS ADULT ', '1650', '1650', 4, 'product-featured-359.jpg', '', '', '', '', '', 0, 1, 0, 1),
(360, 'DROOLS FOCUS PUPPY ', '600', '600', 1, 'product-featured-360.jpg', '', '', '', '', '', 0, 1, 0, 1),
(361, 'DROOLS FOCUS PUPPY', '1890', '1890', 4, 'product-featured-361.jpg', '', '', '', '', '', 0, 1, 0, 1),
(362, 'DROOLS FOCUS STARTER ', '650', '650', 1, 'product-featured-362.jpg', '', '', '', '', '', 0, 1, 0, 1),
(363, 'DROOLS FOCUS STARTER ', '1900', '1900', 6, 'product-featured-363.jpg', '', '', '', '', '', 0, 1, 0, 1),
(364, 'DROOLS KIITTEN OCEAN FISH ', '800', '800', 3, 'product-featured-364.jpg', '', '', '', '', '', 0, 1, 0, 100),
(365, 'DROOLS KITTEN  BOOSTER ', '299', '299', 300, 'product-featured-365.jpg', '', '', '', '', '', 0, 1, 0, 100),
(366, 'DROOLS MILK POWDER ', '700', '700', 500, 'product-featured-366.jpg', '', '', '', '', '', 0, 1, 0, 1),
(367, 'DROOLS PUP BOOSTER ', '275', '275', 300, 'product-featured-367.jpg', '', '', '', '', '', 0, 1, 0, 1),
(368, 'DROOLS PUPPY GRAVY ', '35', '35', 150, 'product-featured-368.jpg', '', '', '', '', '', 0, 1, 0, 1),
(369, 'DROOLS PUREPET ', '999', '999', 9, 'product-featured-369.jpg', '', '', '', '', '', 0, 1, 0, 1),
(370, 'DROOLS VET -PRO OBESITY', '4400', '4400', 12, 'product-featured-370.jpg', '', '', '', '', '', 0, 1, 0, 1),
(371, 'DROOLS WACCA STICK MILK FLOVAR ', '165', '165', 100, 'product-featured-371.jpg', '', '', '', '', '', 0, 1, 0, 1),
(372, 'EMESET SYP', '50', '50', 30, 'product-featured-372.jpg', '', '', '', '', '', 0, 1, 0, 178),
(373, 'EMILY EASY CLEAN APPLE ', '599', '599', 5, 'product-featured-373.jpg', '', '', '', '', '', 0, 1, 0, 187),
(374, 'EMILY EASY CLEAN LAVENDER', '599', '599', 5, 'product-featured-374.jpg', '', '', '', '', '', 0, 1, 0, 187),
(375, 'EMILY EASY CLEAN LEMON ', '599', '599', 5, 'product-featured-375.jpg', '', '', '', '', '', 0, 1, 0, 187),
(376, 'EMILY EASY CLEAN ROSE ', '599', '599', 5, 'product-featured-376.jpg', '', '', '', '', '', 0, 1, 0, 187),
(377, 'ERINA EP POWDER', '190', '190', 150, 'product-featured-377.jpg', '', '', '', '', '', 0, 1, 0, 187),
(378, 'EXCLUSIVE CAT LITTER ', '1120', '1120', 10, 'product-featured-378.jpg', '', '', '', '', '', 0, 1, 0, 187),
(379, 'EXTREME STAIN &ODOUR REMOVER ', '595', '595', 500, 'product-featured-379.jpg', '', '', '', '', '', 0, 1, 0, 187),
(380, 'FARMINA MATISSE CHICKEN&RICE ADULT DRY CAT FOOD ', '1120', '1120', 1, 'product-featured-380.jpg', '', '', '', '', '', 0, 1, 0, 187),
(381, 'FARMINA N&D AG PUPPY STARTER  ', '2090', '2090', 2, 'product-featured-381.jpg', '', '', '', '', '', 0, 1, 0, 177),
(382, 'FARMINA N&D DOG AG CP ADULT MED/MAXI SELECTION ', '7690', '7690', 15, 'product-featured-382.jpg', '', '', '', '', '', 0, 1, 0, 177),
(383, 'FARMINA N&D DOG AG CP ADULT MINI ', '1890', '1890', 2, 'product-featured-383.jpg', '', '', '', '', '', 0, 1, 0, 177),
(384, 'FARMINA N&D DOG QUINOA QUAIL &COCONUT MINI ', '270', '270', 140, 'product-featured-384.jpg', '', '', '', '', '', 0, 1, 0, 177),
(385, 'FARMINA N&D GF PKN LB&BB ADT ME/MA', '2350', '2350', 2, 'product-featured-385.jpg', '', '', '', '', '', 0, 1, 0, 177),
(386, 'FARMINA N&D GF PKN LB&BB ADT MINI ', '870', '870', 800, 'product-featured-386.jpg', '', '', '', '', '', 0, 1, 0, 177),
(387, 'FARMINA N&D GF PKN LB&BBPUP MINI ', '870', '870', 800, 'product-featured-387.jpg', '', '', '', '', '', 0, 1, 0, 177),
(388, 'FARMINA N&D MINI PUPPY ', '2350', '2350', 2, 'product-featured-388.jpg', '', '', '', '', '', 0, 1, 0, 177),
(389, 'FARMINA N&D MINI PUPPY ', '850', '850', 800, 'product-featured-389.jpg', '', '', '', '', '', 0, 1, 0, 177),
(390, 'FARMINA N&D PRIME CAT GF CP ADULT ', '1990', '1990', 1, 'product-featured-390.jpg', '', '', '', '', '', 0, 1, 0, 185),
(391, 'FARMINA N&D PRIME CAT GF CP KITTEN ', '650', '650', 300, 'product-featured-391.jpg', '', '', '', '', '', 0, 1, 0, 185),
(392, 'FARMINA N&D PRIME CAT GF LAMB&BB ADULT ', '1990', '1990', 1, 'product-featured-392.jpg', '', '', '', '', '', 0, 1, 0, 185),
(393, 'FARMINA N&D PRIME CAT GF LM&BB ADULT', '680', '680', 300, 'product-featured-393.jpg', '', '', '', '', '', 0, 1, 0, 185),
(394, 'FARMINA TEAM BREEDER ADULT ', '8700', '8700', 20, 'product-featured-394.jpg', '', '', '', '', '', 0, 1, 0, 177),
(395, 'FARMINA VET LIFE DOG  GROTH ', '8890', '8890', 12, 'product-featured-395.jpg', '', '', '', '', '', 0, 1, 0, 177),
(396, 'FARMINA VET LIFE HEPATIC ', '1790', '1790', 2, 'product-featured-396.jpg', '', '', '', '', '', 0, 1, 0, 177),
(397, 'FARMINA VET LIFE OBISITY ', '8990', '8990', 12, 'product-featured-397.jpg', '', '', '', '', '', 0, 1, 0, 177),
(398, 'FARMINA VET LIFE ULTRA HYPO CANINE FORMULA', '8890', '8890', 12, 'product-featured-398.jpg', '', '', '', '', '', 0, 1, 0, 177),
(399, 'SAVAVET FIPROFORT PLUS  10 TO 20KG', '330', '330', 1, 'product-featured-399.jpg', '', '', '', '', '', 0, 1, 0, 177),
(400, 'SAVAVET FIPROFORT PLUS 20-40KG', '440', '440', 1, 'product-featured-400.jpg', '', '', '', '', '', 0, 1, 0, 177),
(401, 'SAVA VET FIPROFORT PLUS 40-60KG', '550', '550', 1, 'product-featured-401.jpg', '', '', '', '', '', 0, 1, 0, 177),
(402, 'SAVAVET FIPROFORT PLUS FOR CAT', '195', '195', 1, 'product-featured-402.jpg', '', '', '', '', '', 0, 1, 0, 185),
(403, 'SAVAVET FIPROFORT SPRAY ', '425', '425', 100, 'product-featured-403.jpg', '', '', '', '', '', 0, 1, 0, 183),
(404, 'FIPROPORT PLUS FOR UPTO ', '196', '196', 10, 'product-featured-404.jpg', '', '', '', '', '', 0, 1, 0, 183),
(405, 'FIRST BARK CHICKEN & COD ROLL ', '175', '175', 70, 'product-featured-405.jpg', '', '', '', '', '', 0, 1, 0, 177),
(406, 'FIRST BARK CHICKEN & COD STICK ', '175', '175', 70, 'product-featured-406.jpg', '', '', '', '', '', 0, 1, 0, 177),
(407, '148.31', '148.31', '70g', 70, 'product-featured-407.jpg', '', '', '', '', '', 0, 1, 0, 177),
(408, 'FIRST BARK SOFT CHICKEN BREAST ', '148.31', '148.31', 70, 'product-featured-408.jpg', '', '', '', '', '', 0, 1, 0, 177),
(409, 'FLAMINGO  CHEST HARNESS  LARGE', '780', '780', 1, 'product-featured-409.jpg', '', '', '', '', '', 0, 1, 0, 184),
(410, 'FLAMINGO  CHEST HARNESS MEDIUM', '720', '720', 1, 'product-featured-410.jpg', '', '', '', '', '', 0, 1, 0, 184),
(411, 'FLAMINGO CHEST HARNESS SMALL', '660', '660', 1, 'product-featured-411.jpg', '', '', '', '', '', 0, 1, 0, 184),
(412, 'HELLO PET FLEA COMB LARGE', '360', '360', 1, 'product-featured-412.jpg', '', '', '', '', '', 0, 1, 0, 184),
(413, 'SMARTY FLEA COMB LARGE-', '290', '290', 1, 'product-featured-413.jpg', '', '', '', '', '', 0, 1, 0, 184),
(414, 'HELLO PET FLEA COMB LARGE', '375', '375', 1, 'product-featured-414.jpg', '', '', '', '', '', 0, 1, 0, 184),
(415, 'HELLO PET FLEA COMB ', '290', '290', 1, 'product-featured-415.jpg', '', '', '', '', '', 0, 1, 0, 184),
(416, 'HELLO PET FLEA COMB SMALL', '175', '175', 1, 'product-featured-416.jpg', '', '', '', '', '', 0, 1, 0, 184),
(417, 'HELLO PET FLEA COMB', '175', '175', 1, 'product-featured-417.jpg', '', '', '', '', '', 0, 1, 0, 184),
(418, 'HELLO PET FLEA COMB SMALL', '90', '90', 1, 'product-featured-418.jpg', '', '', '', '', '', 0, 1, 0, 184),
(419, 'HELLO PET FLEA COMB SMALL  SINGAL ROW', '150', '150', 1, 'product-featured-419.jpg', '', '', '', '', '', 0, 1, 0, 184),
(420, 'HELLO PETFLEA COMB SMALL', '175', '175', 1, 'product-featured-420.jpg', '', '', '', '', '', 0, 1, 0, 184),
(421, 'FLEXIA CAT LITTER', '599', '599', 5, 'product-featured-421.jpg', '', '', '', '', '', 0, 1, 0, 187),
(422, 'FLEXIA CLUMPING CAT LITTER LAVENDER ', '599', '599', 5, 'product-featured-422.jpg', '', '', '', '', '', 0, 1, 0, 187),
(423, 'FLEXIA ESSENTIA CLUMPING CAT LITTER 4.8KG', '599', '599', 5, 'product-featured-423.jpg', '', '', '', '', '', 0, 1, 0, 187),
(424, 'FLEXIA ESSENTIA CLUMPING CAT LITTER 8KG', '800', '800', 8, 'product-featured-424.jpg', '', '', '', '', '', 0, 1, 0, 187),
(425, 'FIRST MEOW  CHCKEN STRIP ', '135', '135', 40, 'product-featured-425.jpg', '', '', '', '', '', 0, 1, 0, 185),
(426, 'FM CHICKEN SANDWICH ', '135', '135', 40, 'product-featured-426.jpg', '', '', '', '', '', 0, 1, 0, 185),
(427, 'FM SALMON DICE ', '135', '135', 40, 'product-featured-427.jpg', '', '', '', '', '', 0, 1, 0, 185),
(428, 'FM TUNA DICE ', '135', '135', 40, 'product-featured-428.jpg', '', '', '', '', '', 0, 1, 0, 185),
(429, 'FOFOS  WOOF UP BALL', '450', '450', 1, 'product-featured-429.jpg', '', '', '', '', '', 0, 1, 0, 177),
(430, 'FOFOS BABYPET BONE PINK', '390', '390', 1, 'product-featured-430.jpg', '', '', '', '', '', 0, 1, 0, 184),
(431, 'FOFOS CACTUS WAND', '460', '460', 1, 'product-featured-431.jpg', '', '', '', '', '', 0, 1, 0, 187),
(432, 'FOFOS CAT WAND TOY ELEPHANT', '350', '350', 1, 'product-featured-432.jpg', '', '', '', '', '', 0, 1, 0, 187),
(433, 'FOFOS CAT WANT TOY CROCODILE', '420', '420', 1, 'product-featured-433.jpg', '', '', '', '', '', 0, 1, 0, 187),
(434, 'FOFOS FRUITY BITES TREAT DISP APPLE', '650', '650', 1, 'product-featured-434.jpg', '', '', '', '', '', 0, 1, 0, 184),
(435, 'FOFOS FRUITY BITES TREATS DISP PEAR', '650', '650', 1, 'product-featured-435.jpg', '', '', '', '', '', 0, 1, 0, 184),
(436, 'FOFOS LATEX BI TOY DOG S', '395', '395', 1, 'product-featured-436.jpg', '', '', '', '', '', 0, 1, 0, 184),
(437, 'FOFOS POOP BAG REFILLS ', '549', '549', 17, 'product-featured-437.jpg', '', '', '', '', '', 0, 1, 0, 184),
(438, 'FOFOS POOP BAG SETS (34BAGS WITH ONE DISPENSER)', '459', '459', 1, 'product-featured-438.jpg', '', '', '', '', '', 0, 1, 0, 184),
(439, 'FOFOS PULL STRING &SOUND CHIP MOUSE WHITE', '600', '600', 1, 'product-featured-439.jpg', '', '', '', '', '', 0, 1, 0, 187),
(440, 'FOFOS PULL STRING MOUSE  BROWN', '600', '600', 1, 'product-featured-440.jpg', '', '', '', '', '', 0, 1, 0, 187),
(441, 'FOFOS PUPPY HEART LION', '580', '580', 1, 'product-featured-441.jpg', '', '', '', '', '', 0, 1, 0, 184),
(442, 'FOFOS SPORTS FETCH BALL ', '275', '275', 1, 'product-featured-442.jpg', '', '', '', '', '', 0, 1, 0, 180),
(443, 'FOFOS VEGI BITES TREAT DISP STRAWBERRY', '650', '650', 1, 'product-featured-443.jpg', '', '', '', '', '', 0, 1, 0, 180),
(444, 'FOFOS VEGI-BITES CARROTS', '490', '490', 1, 'product-featured-444.jpg', '', '', '', '', '', 0, 1, 0, 180),
(445, 'FOFOS VEGI-BITES CORNS', '450', '450', 1, 'product-featured-445.jpg', '', '', '', '', '', 0, 1, 0, 180),
(446, 'FOFOS WOODY PLAY BONE', '500', '500', 1, 'product-featured-446.jpg', '', '', '', '', '', 0, 1, 0, 180),
(447, 'FOFOS WOODYPLAY BONE', '680', '680', 1, 'product-featured-447.jpg', '', '', '', '', '', 0, 1, 0, 180),
(448, 'FRISKIES SEAFOOD ', '450', '450', 1, 'product-featured-448.jpg', '', '', '', '', '', 0, 1, 0, 185),
(449, 'FRISKIES SEAFOOD ', '950', '950', 3, 'product-featured-449.jpg', '', '', '', '', '', 0, 1, 0, 185),
(450, 'FRISKIES SURFIN ', '450', '450', 1, 'product-featured-450.jpg', '', '', '', '', '', 0, 1, 0, 185),
(451, 'GNAWLER BONE CHICKEN BONE', '150', '150', 108, 'product-featured-451.jpg', '', '', '', '', '', 0, 1, 0, 177),
(452, 'GNAWLER CALCIUM BONE 12PCS', '375', '375', 270, 'product-featured-452.jpg', '', '', '', '', '', 0, 1, 0, 177),
(453, 'GNAWLER CALCIUM BONE 30PCS', '375', '375', 270, 'product-featured-453.jpg', '', '', '', '', '', 0, 1, 0, 177),
(454, 'GNAWLER CALCIUM BONE 35PCS', '1025', '1025', 850, 'product-featured-454.jpg', '', '', '', '', '', 0, 1, 0, 177),
(455, 'GNAWLER CALCIUM BONE 90PCS', '1025', '1025', 850, 'product-featured-455.jpg', '', '', '', '', '', 0, 1, 0, 177),
(456, 'GNAWLER CREAMY TREATS CHIC&LIVER ', '80', '80', 60, 'product-featured-456.jpg', '', '', '', '', '', 0, 1, 0, 185),
(457, 'GNAWLER CREAMY TREATS CRAB ', '80', '80', 60, 'product-featured-457.jpg', '', '', '', '', '', 0, 1, 0, 185),
(458, 'GNAWLER DIGEST MORE 7PCS', '160', '160', 105, 'product-featured-458.jpg', '', '', '', '', '', 0, 1, 0, 177),
(459, 'GNAWLER HEARTY ROLL CHICKEN FLOVAOR ', '60', '60', 40, 'product-featured-459.jpg', '', '', '', '', '', 0, 1, 0, 177),
(460, 'GNAWLER HEARTY ROLL', '110', '110', 80, 'product-featured-460.jpg', '', '', '', '', '', 0, 1, 0, 177),
(461, 'GNAWLER PUPPY SNACK ', '275', '275', 250, 'product-featured-461.jpg', '', '', '', '', '', 0, 1, 0, 177),
(462, 'GNAWLER VEG BONE', '150', '150', 60, 'product-featured-462.jpg', '', '', '', '', '', 0, 1, 0, 177),
(463, 'GNAWLER YAOWX BONE ', '110', '110', 60, 'product-featured-463.jpg', '', '', '', '', '', 0, 1, 0, 177),
(464, 'GNAWLERS CALCIUM CHICKEN STICK ', '300', '300', 270, 'product-featured-464.jpg', '', '', '', '', '', 0, 1, 0, 177),
(465, 'GNAWLERS CALCIUM MILK STICK ', '300', '300', 270, 'product-featured-465.jpg', '', '', '', '', '', 0, 1, 0, 177),
(466, 'GNAWLERS CHICKEN BONE M 2PCS', '95', '95', 60, 'product-featured-466.jpg', '', '', '', '', '', 0, 1, 0, 177),
(467, 'GNAWLERS DEFENSE ANTI BACTERIAL ', '160', '160', 105, 'product-featured-467.jpg', '', '', '', '', '', 0, 1, 0, 177),
(468, 'GNAWLERS OAT BONES', '150', '150', 60, 'product-featured-468.jpg', '', '', '', '', '', 0, 1, 0, 177),
(469, 'GNAWLERS OAT BONES 25pcs', '550', '550', 270, 'product-featured-469.jpg', '', '', '', '', '', 0, 1, 0, 177),
(470, 'GNAWLERS CATNIP ', '450', '450', 30, 'product-featured-470.jpg', '', '', '', '', '', 0, 1, 0, 185),
(471, 'GNAWLERS PUPPY SNACK STICK BACON FLAVOUR ', '95', '95', 80, 'product-featured-471.jpg', '', '', '', '', '', 0, 1, 0, 177),
(472, 'GNAWLERS PUPPY SNACK STRIP CHICKEN FLAVOUR ', '95', '95', 80, 'product-featured-472.jpg', '', '', '', '', '', 0, 1, 0, 177),
(473, 'GOODIES ENERGY TREAT ', '175', '175', 125, 'product-featured-473.jpg', '', '', '', '', '', 0, 1, 0, 177),
(474, 'GOODIES ENERGY TREATS', '175', '175', 125, 'product-featured-474.jpg', '', '', '', '', '', 0, 1, 0, 182),
(475, 'GOODIES ENERGY TREATS', '175', '175', 125, 'product-featured-475.jpg', '', '', '', '', '', 0, 1, 0, 177),
(476, 'GOODIES ENERGY TREATS ', '560', '560', 500, 'product-featured-476.jpg', '', '', '', '', '', 0, 1, 0, 182),
(477, 'GOODIES ENERGY TREATS CHICKEN LIVER ', '560', '560', 500, 'product-featured-477.jpg', '', '', '', '', '', 0, 1, 0, 177),
(478, 'GOODIES ENERGY TREATS CHLOROPHYLL ', '560', '560', 500, 'product-featured-478.jpg', '', '', '', '', '', 0, 1, 0, 177),
(479, 'GOODIES ENERGY TREATS LAMB ', '560', '560', 500, 'product-featured-479.jpg', '', '', '', '', '', 0, 1, 0, 177),
(480, 'GOODIES ENERGY TREATS ORIGINAL ', '560', '560', 500, 'product-featured-480.jpg', '', '', '', '', '', 0, 1, 0, 177),
(481, 'GOODIES LONG LASTING DENTAL BAR  PEANUT BUTTER FLAVOR ', '100', '100', 85, 'product-featured-481.jpg', '', '', '', '', '', 0, 1, 0, 177),
(482, 'GOODIES LONG LASTING DENTAL BAR ', '100', '100', 2, 'product-featured-482.jpg', '', '', '', '', '', 0, 1, 0, 177),
(483, 'GOODIES LONG LASTING DENTAL BAR CHICKEN ', '100', '100', 1, 'product-featured-483.jpg', '', '', '', '', '', 0, 1, 0, 177),
(484, 'GOODIES LONG LASTING DENTAL BAR LIVER ', '100', '100', 1, 'product-featured-484.jpg', '', '', '', '', '', 0, 1, 0, 177),
(485, 'GOODIES LONG LASTING DENTAL BAR LIVER ', '100', '100', 2, 'product-featured-485.jpg', '', '', '', '', '', 0, 1, 0, 177),
(486, 'GOODIES LONG LASTING DENTAL BAR SALMON ', '100', '100', 1, 'product-featured-486.jpg', '', '', '', '', '', 0, 1, 0, 177),
(487, 'GOODIES MARINE CART LAGE SNACK ', '375', '375', 150, 'product-featured-487.jpg', '', '', '', '', '', 0, 1, 0, 177),
(488, 'GOODIES MILK BONE ', '340', '340', 12, 'product-featured-488.jpg', '', '', '', '', '', 0, 1, 0, 177),
(489, 'GOODIES MILK BONE ', '340', '340', 25, 'product-featured-489.jpg', '', '', '', '', '', 0, 1, 0, 177),
(490, 'GOODIES MILK BONE STRAWBERRT ', '340', '340', 12, 'product-featured-490.jpg', '', '', '', '', '', 0, 1, 0, 177),
(491, 'GOODIES MILK BONE STRAWBERRY ', '340', '340', 25, 'product-featured-491.jpg', '', '', '', '', '', 0, 1, 0, 177),
(492, 'GOODIES TRAINING PADS ', '1150', '1150', 50, 'product-featured-492.jpg', '', '', '', '', '', 0, 1, 0, 184),
(493, 'GOODIES TRAINING PADS LARGE', '1150', '1150', 25, 'product-featured-493.jpg', '', '', '', '', '', 0, 1, 1, 184),
(494, 'HAMALAYA HEALTHY PET FOOD PUPPY ', '320', '320', 1, 'product-featured-494.jpg', '', '', '', '', '', 0, 1, 0, 4),
(495, 'HELLO PET COMB', '190', '190', 1, 'product-featured-495.jpg', '', '', '', '', '', 0, 1, 0, 184),
(496, 'HELLO PET COMB  SIDE', '360', '360', 1, 'product-featured-496.jpg', '', '', '', '', '', 0, 1, 0, 184),
(497, 'HELLO PET COMB DUBBLE SIDE', '360', '360', 1, 'product-featured-497.jpg', '', '', '', '', '', 0, 1, 0, 184),
(498, 'HELLO PET DUBLE SIDE BRUSH', '440', '440', 1, 'product-featured-498.jpg', '', '', '', '', '', 0, 1, 0, 184),
(499, 'HELLO PET LARGE HANDLED CAT &DOG COMB', '360', '360', 1, 'product-featured-499.jpg', '', '', '', '', '', 0, 1, 0, 184),
(500, 'HELLO PET SLICKER BRUSH', '575', '575', 1, 'product-featured-500.jpg', '', '', '', '', '', 0, 1, 0, 184),
(501, 'HILLS PUPPY STARTER ', '1320', '1320', 2, 'product-featured-501.jpg', '', '', '', '', '', 0, 1, 0, 177),
(502, 'HILLS SCIENCE DIET SMALL PAWS ADULT 1-6 ', '1020', '1020', 2, 'product-featured-502.png', '', '', '', '', '', 0, 1, 0, 177),
(503, 'HIMALAYA  FURGLOW LIQUID ', '470', '470', 400, 'product-featured-503.jpg', '', '', '', '', '', 0, 1, 0, 70),
(504, 'HIMALAYA BISCUITS  ADULT', '320', '320', 1, 'product-featured-504.jpg', '', '', '', '', '', 0, 1, 0, 4),
(505, 'HIMALAYA BISCUITS  PUPPY', '320', '320', 1, 'product-featured-505.jpg', '', '', '', '', '', 0, 1, 0, 4),
(506, 'HIMALAYA DIGYTON PLUS ', '200', '200', 100, 'product-featured-506.jpg', '', '', '', '', '', 0, 1, 0, 15),
(507, 'HIMALAYA ERINA EP SHAMPOO ', '570', '570', 500, 'product-featured-507.jpg', '', '', '', '', '', 0, 1, 0, 70),
(508, 'HIMALAYA ERINA EP TICK AND FLEA CONTROL CAT&DOG POWER ', '250', '250', 150, 'product-featured-508.jpg', '', '', '', '', '', 0, 1, 0, 70),
(509, 'HIMALAYA ERINA PLUS CONTIONAR AND SHAMPOO ', '300', '300', 200, 'product-featured-509.jpg', '', '', '', '', '', 0, 1, 0, 70),
(510, 'HIMALAYA ERINA SHAMPOO ', '240', '240', 200, 'product-featured-510.jpg', '', '', '', '', '', 0, 1, 0, 70),
(511, 'HIMALAYA ERINA SHAMPOO ', '410', '410', 450, 'product-featured-511.jpg', '', '', '', '', '', 0, 1, 0, 70),
(512, 'HIMALAYA FRESH COAT ', '230', '230', 150, 'product-featured-512.jpg', '', '', '', '', '', 0, 1, 0, 70),
(513, 'HIMALAYA FRESH COAT ', '520', '520', 400, 'product-featured-513.jpg', '', '', '', '', '', 0, 1, 0, 70),
(514, 'HIMALAYA FURGLOW ', '310', '310', 200, 'product-featured-514.jpg', '', '', '', '', '', 0, 1, 0, 70),
(515, 'HIMALAYA HEALTHY ADULT DOG FOOD ', '720', '720', 3, 'product-featured-515.jpg', '', '', '', '', '', 0, 1, 0, 4),
(516, 'HIMALAYA HEALTHY PET FOOD  ADULT', '340', '340', 1, 'product-featured-516.jpg', '', '', '', '', '', 0, 1, 0, 4),
(517, 'HIMALAYA HEALTHY PET FOOD FOR ADULT DOGDOG ', '1950', '1950', 10, 'product-featured-517.jpg', '', '', '', '', '', 0, 1, 0, 4),
(518, 'HIMALAYA HEALTHY PUPPY DOG FOOD ', '2150', '2150', 10, 'product-featured-518.jpg', '', '', '', '', '', 0, 1, 0, 4),
(519, 'HIMALAYA HEALTHY PUPPY FOOD ', '760', '760', 3, 'product-featured-519.jpg', '', '', '', '', '', 0, 1, 0, 4),
(520, 'HIMALAYA HEALTHY TREAT ADULT DOG BISCUIT ', '150', '150', 400, 'product-featured-520.jpg', '', '', '', '', '', 0, 1, 0, 59);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(521, 'HIMALAYA HIMCAL PET SUSPENSION ', '120', '120', 200, 'product-featured-521.jpg', '', '', '', '', '', 0, 1, 0, 15),
(522, 'HIMALAYA HIMPYRIN ', '110', '110', 30, 'product-featured-522.jpg', '', '', '', '', '', 0, 1, 0, 15),
(523, 'HIMALAYA IMMUNOL ', '120', '120', 100, 'product-featured-523.jpg', '', '', '', '', '', 0, 1, 0, 15),
(524, 'HIMALAYA LIV-52', '150', '150', 200, 'product-featured-524.jpg', '', '', '', '', '', 0, 1, 0, 15),
(525, 'HIMALAYA LIV. 52 ', '60', '60', 30, 'product-featured-525.jpg', '', '', '', '', '', 0, 1, 0, 15),
(526, 'HIMALAYA NEFROTEC DS ', '140', '140', 60, 'product-featured-526.jpg', '', '', '', '', '', 0, 1, 0, 15),
(527, 'HIMALAYA PUPPY BISCUITS ', '170', '170', 500, 'product-featured-527.jpg', '', '', '', '', '', 0, 1, 0, 4),
(528, 'HIMALAYA SCAVON SPRAY ', '130', '130', 100, 'product-featured-528.jpg', '', '', '', '', '', 0, 1, 0, 70),
(529, 'HMALAYA DIGYTON DROP ', '120', '120', 30, 'product-featured-529.jpg', '', '', '', '', '', 0, 1, 0, 15),
(530, 'IAMS AD LRG BREED ', '1180', '1180', 3, 'product-featured-530.jpg', '', '', '', '', '', 0, 1, 0, 177),
(531, 'IAMS ADULT LARGE BREEDS  CB ', '2880', '2880', 8, 'product-featured-531.jpg', '', '', '', '', '', 0, 1, 0, 177),
(532, 'IAMS ADULT SMALL BREED ', '1000', '1000', 3, 'product-featured-532.jpg', '', '', '', '', '', 0, 1, 0, 177),
(533, 'IAMS LABRADOR RETRIEVER ADULT ', '1400', '1400', 3, 'product-featured-533.jpg', '', '', '', '', '', 0, 1, 0, 177),
(534, 'IAMS PLB ', '1240', '1240', 3, 'product-featured-534.jpg', '', '', '', '', '', 0, 1, 0, 177),
(535, 'IAMS PSMB ', '670', '670', 1, 'product-featured-535.jpg', '', '', '', '', '', 0, 1, 0, 177),
(536, 'IAMS PUP SMLMD BREED ', '1240', '1240', 3, 'product-featured-536.jpg', '', '', '', '', '', 0, 1, 0, 177),
(537, 'IAMS PUPPY LARGE BREED ', '3200', '3200', 8, 'product-featured-537.jpg', '', '', '', '', '', 0, 1, 0, 177),
(538, 'JERHIGH  FISH STICK ', '185', '185', 70, 'product-featured-538.jpg', '', '', '', '', '', 0, 1, 0, 177),
(539, 'JERHIGH  STIX BITES TRAINING TREATS ', '240', '240', 100, 'product-featured-539.jpg', '', '', '', '', '', 0, 1, 0, 177),
(540, 'JERHIGH BACON ', '240', '240', 100, 'product-featured-540.jpg', '', '', '', '', '', 0, 1, 0, 177),
(541, 'JERHIGH BACON REAL CHICKEN MEAT ', '185', '185', 70, 'product-featured-541.jpg', '', '', '', '', '', 0, 1, 0, 177),
(542, 'JERHIGH BLUEBERRY & CHICKEN STICKS ', '185', '185', 70, 'product-featured-542.jpg', '', '', '', '', '', 0, 1, 0, 177),
(543, 'JERHIGH CARROT STICK ', '185', '185', 70, 'product-featured-543.jpg', '', '', '', '', '', 0, 1, 0, 177),
(544, 'JERHIGH CARROT STIX ', '240', '240', 100, 'product-featured-544.jpg', '', '', '', '', '', 0, 1, 0, 177),
(545, 'JERHIGH CHICKEN &GRILLED IN GRAY ', '60', '60', 120, 'product-featured-545.jpg', '', '', '', '', '', 0, 1, 0, 177),
(546, 'JERHIGH CHICKEN &VEG IN GRAY ', '60', '60', 120, 'product-featured-546.jpg', '', '', '', '', '', 0, 1, 0, 177),
(547, 'JERHIGH CHICKEN BANANA STICK ', '185', '185', 70, 'product-featured-547.jpg', '', '', '', '', '', 0, 1, 0, 177),
(548, 'JERHIGH CHICKEN CARROT STICKS ', '185', '185', 70, 'product-featured-548.jpg', '', '', '', '', '', 0, 1, 0, 177),
(549, 'JERHIGH CHICKEN CHEESE  STICK ', '175', '175', 50, 'product-featured-549.jpg', '', '', '', '', '', 0, 1, 0, 177),
(550, 'JERHIGH CHICKEN GRILLED STICKS ', '175', '175', 120, 'product-featured-550.jpg', '', '', '', '', '', 0, 1, 0, 177),
(551, 'JERHIGH CHICKEN HOTDOGS BAR ', '160', '160', 150, 'product-featured-551.jpg', '', '', '', '', '', 0, 1, 0, 177),
(552, 'JERHIGH CHICKEN JERKY ', '185', '185', 50, 'product-featured-552.jpg', '', '', '', '', '', 0, 1, 0, 177),
(553, 'JERHIGH CHICKEN MILKY ', '185', '185', 70, 'product-featured-553.jpg', '', '', '', '', '', 0, 1, 0, 177),
(554, 'JERHIGH CHICKEN WITH SPINACH ', '240', '240', 100, 'product-featured-554.jpg', '', '', '', '', '', 0, 1, 0, 177),
(555, 'JERHIGH CHICKEN WITH SPINACH ', '185', '185', 70, 'product-featured-555.jpg', '', '', '', '', '', 0, 1, 0, 177),
(556, 'JERHIGH CHICKEN& LIVER IN GRAVY ', '60', '60', 120, 'product-featured-556.jpg', '', '', '', '', '', 0, 1, 0, 177),
(557, 'JERHIGH COOKIE REAL CHICKEN MEAT ', '185', '185', 70, 'product-featured-557.jpg', '', '', '', '', '', 0, 1, 0, 177),
(558, 'JERHIGH COOKIE REAL CHICKEN MEAT ', '185', '185', 70, 'product-featured-558.jpg', '', '', '', '', '', 0, 1, 0, 177),
(559, 'JERHIGH DEN-T STICK ', '185', '185', 70, 'product-featured-559.jpg', '', '', '', '', '', 0, 1, 0, 177),
(560, 'JERHIGH DUCK REAL DUCK MEAT ', '185', '185', 70, 'product-featured-560.jpg', '', '', '', '', '', 0, 1, 0, 177),
(561, 'JERHIGH DUCK REAL DUCK MEAT ', '185', '185', 70, 'product-featured-561.jpg', '', '', '', '', '', 0, 1, 0, 177),
(562, 'JERHIGH DUO STICK', '175', '175', 70, 'product-featured-562.jpg', '', '', '', '', '', 0, 1, 0, 177),
(563, 'JERHIGH DUO STICK -MILKY BANANA STICK ', '175', '175', 50, 'product-featured-563.jpg', '', '', '', '', '', 0, 1, 0, 177),
(564, 'JERHIGH GOODIES ENERGY TREATS', '240', '240', 125, 'product-featured-564.jpg', '', '', '', '', '', 0, 1, 0, 182),
(565, 'JERHIGH GOODIES ENERGY TREATS ', '165', '165', 125, 'product-featured-565.jpg', '', '', '', '', '', 0, 1, 0, 177),
(566, 'JERHIGH GRAVY CHICKEN AND LIVER ', '60', '60', 120, 'product-featured-566.jpg', '', '', '', '', '', 0, 1, 0, 177),
(567, 'JERHIGH GRAVY CHICKEN AND VEGITABLE ', '60', '60', 120, 'product-featured-567.jpg', '', '', '', '', '', 0, 1, 0, 177),
(568, 'JERHIGH GRAVY ROASTED DUCK ', '60', '60', 120, 'product-featured-568.jpg', '', '', '', '', '', 0, 1, 0, 177),
(569, 'JERHIGH HAM -BURG-ER CHICKEN WITH SHRIMP', '195', '195', 112, 'product-featured-569.jpg', '', '', '', '', '', 0, 1, 0, 177),
(570, 'JERHIGH HOT DOG -BAR CHICKEN ', '160', '160', 150, 'product-featured-570.jpg', '', '', '', '', '', 0, 1, 0, 177),
(571, 'JERHIGH HOT DOG -BAR CHICKEN&VEGETABLE ', '160', '160', 150, 'product-featured-571.jpg', '', '', '', '', '', 0, 1, 0, 177),
(572, 'JERHIGH HOT DOG BAR LIVER', '160', '160', 150, 'product-featured-572.jpg', '', '', '', '', '', 0, 1, 0, 177),
(573, 'JERHIGH JINNY GOURMENT  CAT TREAT ', '135', '135', 35, 'product-featured-573.jpg', '', '', '', '', '', 0, 1, 0, 189),
(574, 'JERHIGH JINNY SALMON CAT  TREAT ', '130', '130', 35, 'product-featured-574.jpg', '', '', '', '', '', 0, 1, 0, 189),
(575, 'JERHIGH JINNY SEAFOOD CAT TREAT ', '130', '130', 35, 'product-featured-575.jpg', '', '', '', '', '', 0, 1, 0, 189),
(576, 'JERHIGH JINNY TREAT CHICKEN CAT TREAT ', '130', '130', 35, 'product-featured-576.jpg', '', '', '', '', '', 0, 1, 0, 189),
(577, 'JERHIGH JINNY TUNA CAT TREATS ', '130', '130', 35, 'product-featured-577.jpg', '', '', '', '', '', 0, 1, 0, 185),
(578, 'JERHIGH LIVER REAL CHICKEN AND MEAT ', '185', '185', 70, 'product-featured-578.jpg', '', '', '', '', '', 0, 1, 0, 177),
(579, 'JERHIGH MILKY STICKS ', '240', '240', 100, 'product-featured-579.jpg', '', '', '', '', '', 0, 1, 0, 177),
(580, 'JERHIGH MILKY STICKS ', '185', '185', 70, 'product-featured-580.jpg', '', '', '', '', '', 0, 1, 0, 177),
(581, 'JERHIGH MILKY STRAWBERRT  STICK ', '185', '185', 50, 'product-featured-581.jpg', '', '', '', '', '', 0, 1, 0, 177),
(582, 'JERHIGH ROSTED DUCK IN GRAVY ', '60', '60', 120, 'product-featured-582.jpg', '', '', '', '', '', 0, 1, 0, 177),
(583, 'JERHIGH SALAMI ', '240', '240', 100, 'product-featured-583.jpg', '', '', '', '', '', 0, 1, 0, 177),
(584, 'JERHIGH SALAMI REAL CHICKEN MEAT ', '185', '185', 70, 'product-featured-584.jpg', '', '', '', '', '', 0, 1, 0, 177),
(585, 'JERHIGH SPINACH CHEESE STICK ', '185', '185', 50, 'product-featured-585.jpg', '', '', '', '', '', 0, 1, 0, 177),
(586, 'JERHIGH SPINACH STIX ', '185', '185', 70, 'product-featured-586.jpg', '', '', '', '', '', 0, 1, 0, 177),
(587, 'JERHIGH STICK REAL CHICKEN MEAT ', '185', '185', 70, 'product-featured-587.jpg', '', '', '', '', '', 0, 1, 0, 177),
(588, 'JERHIGH STIX ', '240', '240', 100, 'product-featured-588.jpg', '', '', '', '', '', 0, 1, 0, 177),
(589, 'JERHIGH STIX BITES TRAINING TREAT ', '225', '225', 100, 'product-featured-589.jpg', '', '', '', '', '', 0, 1, 0, 177),
(590, 'JERHIGH STRAWBLEERY  STICK 70GM', '185', '185', 70, 'product-featured-590.jpg', '', '', '', '', '', 0, 1, 0, 177),
(591, 'JERHIGH VARIETY STIX 200GM', '440', '440', 200, 'product-featured-591.jpg', '', '', '', '', '', 0, 1, 0, 177),
(592, 'JOHNY STICK WITH STRAP HOLDER ', '330', '330', 1, 'product-featured-592.jpg', '', '', '', '', '', 0, 1, 0, 184),
(593, 'JUST  A FOOBALL -SMALL ORANGE', '399', '399', 1, 'product-featured-593.jpg', '', '', '', '', '', 0, 1, 0, 184),
(594, 'JUST A FOOBALL SMALL RED', '399', '399', 1, 'product-featured-594.jpg', '', '', '', '', '', 0, 1, 0, 184),
(595, 'JUST A FOOBALL SMALL YELLOW', '399', '399', 1, 'product-featured-595.jpg', '', '', '', '', '', 0, 1, 0, 184),
(596, 'JUTE HUT WOODEN', '1800', '1800', 1, 'product-featured-596.jpg', '', '', '', '', '', 0, 1, 0, 187),
(597, 'BEAPHER KALK TAB', '500', '500', 30, 'product-featured-597.jpg', '', '', '', '', '', 0, 1, 0, 178),
(598, 'BIOLINE KEEP OFF SPRAY FOR DOG ', '450', '450', 300, 'product-featured-598.jpg', '', '', '', '', '', 0, 1, 0, 74),
(599, 'KETOCHLOR SHAMPOO 200ML', '315', '315', 200, 'product-featured-599.jpg', '', '', '', '', '', 0, 1, 0, 183),
(600, 'KILTIX  COLLAR MEDIUM', '650', '650', 1, 'product-featured-600.jpg', '', '', '', '', '', 0, 1, 0, 184),
(601, 'KILTIX COLLAR LARGE', '696.43', '696.43', 1, 'product-featured-601.jpg', '', '', '', '', '', 0, 1, 0, 184),
(602, 'KISKIN  LOTION ', '170', '170', 100, 'product-featured-602.jpg', '', '', '', '', '', 0, 1, 0, 183),
(603, 'KIWOF CAT TAB', '175', '175', 1, 'product-featured-603.jpg', '', '', '', '', '', 0, 1, 0, 186),
(604, 'KIWOF PLUS TAB', '45', '45', 1, 'product-featured-604.jpg', '', '', '', '', '', 0, 1, 0, 178),
(605, 'KENNEL KITCHEN CHICKEN IN JELLY ', '40', '40', 80, 'product-featured-605.jpg', '', '', '', '', '', 0, 1, 0, 185),
(606, 'KENNEL KITCHEN CHICKEN LIVER  RECEIPE WITH PUPMKIN', '60', '60', 100, 'product-featured-606.jpg', '', '', '', '', '', 0, 1, 0, 177),
(607, 'KENNEL KITCHEN CHICKEN RECEIPE WITH PUMPKIN ', '60', '60', 100, 'product-featured-607.jpg', '', '', '', '', '', 0, 1, 0, 177),
(608, 'KENNEL KITCHEN CHICKEN RECIPE  ', '35', '35', 100, 'product-featured-608.jpg', '', '', '', '', '', 0, 1, 0, 177),
(609, 'KENNEL KITCHEN CHUNKS N GRAVY ', '199', '199', 400, 'product-featured-609.jpg', '', '', '', '', '', 0, 1, 0, 177),
(610, 'KENNEL KITCHEN FISH JERKY ', '60', '60', 80, 'product-featured-610.jpg', '', '', '', '', '', 0, 1, 0, 177),
(611, 'KENNEL KITCHEN FISH RECEIPE WITH PUMPKIN', '60', '60', 85, 'product-featured-611.jpg', '', '', '', '', '', 0, 1, 0, 177),
(612, 'KENNEL KITCHEN LAMB CHUNKS', '35', '35', 70, 'product-featured-612.jpg', '', '', '', '', '', 0, 1, 0, 177),
(613, 'KENNEL KITCHEN LAMB RECEIP WITH PUMPKIN ', '60', '60', 100, 'product-featured-613.jpg', '', '', '', '', '', 0, 1, 0, 177),
(614, 'KENNEL KITCHEN MINCE IN GRAVY ', '199', '199', 400, 'product-featured-614.jpg', '', '', '', '', '', 0, 1, 0, 177),
(615, 'KENNEL KITCHEN MINCE IN GRAVY ', '199', '199', 400, 'product-featured-615.jpg', '', '', '', '', '', 0, 1, 0, 177),
(616, 'KENNEL KITCHEN TUNA IN JELLY ', '35', '35', 80, 'product-featured-616.jpg', '', '', '', '', '', 0, 1, 0, 185),
(617, 'KRYPTO BONE 4\"  ', '550', '550', 1, 'product-featured-617.jpg', '', '', '', '', '', 0, 1, 0, 10),
(618, 'KRYPTO BONE 4\" ', '150', '150', 4, 'product-featured-618.jpg', '', '', '', '', '', 0, 1, 0, 10),
(619, 'KRYPTO BONE 5\"', '180', '180', 4, 'product-featured-619.jpg', '', '', '', '', '', 0, 1, 0, 10),
(620, 'KRYPTO BONE 3\"', '220', '220', 6, 'product-featured-620.jpg', '', '', '', '', '', 0, 1, 0, 10),
(621, 'KRYPTO BONS 6\" 4PCS', '250', '250', 4, 'product-featured-621.jpg', '', '', '', '', '', 0, 1, 0, 10),
(622, 'KRYPTO HEALTHY CHEW BONES FOR DOG 3\"', '550', '550', 1, 'product-featured-622.jpg', '', '', '', '', '', 0, 1, 0, 10),
(623, 'KRYPTO HEALTHY CHEW BONS ', '550', '550', 1, 'product-featured-623.jpg', '', '', '', '', '', 0, 1, 0, 10),
(624, 'KRYPTO HEALTHY CHEW STICK ', '160', '160', 500, 'product-featured-624.jpg', '', '', '', '', '', 0, 1, 0, 10),
(625, 'KRYPTO HEALTHY CHICKEN & MUTTON MIX CEW STIX', '280', '280', 1, 'product-featured-625.jpg', '', '', '', '', '', 0, 1, 0, 10),
(626, 'KRYPTO HEALTHY MUTTON FLAVOAR CHEW STICK ', '160', '160', 500, 'product-featured-626.jpg', '', '', '', '', '', 0, 1, 0, 10),
(627, 'LAL PET COLLER SMALL', '95', '95', 1, 'product-featured-627.jpg', '', '', '', '', '', 0, 1, 0, 184),
(628, 'LAL PET LEASH & COLLER SMALL', '290', '290', 1, 'product-featured-628.jpg', '', '', '', '', '', 0, 1, 0, 184),
(629, 'LAL PET NON STEEL BOWL', '100', '100', 1, 'product-featured-629.jpg', '', '', '', '', '', 0, 1, 0, 184),
(630, 'LAL PET PRO DOUBLE KNOT FUN TOY FOR DOG', '135', '135', 1, 'product-featured-630.jpg', '', '', '', '', '', 0, 1, 0, 184),
(631, 'LAL PET PRODUCT APPLE SQUEEZE TOY', '185', '185', 1, 'product-featured-631.jpg', '', '', '', '', '', 0, 1, 0, 184),
(632, 'LAL PET PRODUCT ROPE LEASH LARGE', '505', '505', 1, 'product-featured-632.jpg', '', '', '', '', '', 0, 1, 0, 184),
(633, 'LAL PET PRODUCT SUPER FLYER RUBBER TAGE', '250', '250', 1, 'product-featured-633.jpg', '', '', '', '', '', 0, 1, 0, 184),
(634, 'LAL PET PRODUCT TOY LARGE MRP-505', '505', '505', 1, 'product-featured-634.jpg', '', '', '', '', '', 0, 1, 0, 184),
(635, 'LAL PET PRODUCTES BOWL SMALL', '55', '55', 1, 'product-featured-635.jpg', '', '', '', '', '', 0, 1, 0, 184),
(636, 'LAL PET PRODUCTS BALL', '165', '165', 1, 'product-featured-636.jpg', '', '', '', '', '', 0, 1, 0, 184),
(637, 'LAL PET PRODUCTS COLLER', '165', '165', 1, 'product-featured-637.jpg', '', '', '', '', '', 0, 1, 0, 184),
(638, 'LAL PET PRODUCTS COLLER SMALL', '50', '50', 1, 'product-featured-638.jpg', '', '', '', '', '', 0, 1, 0, 184),
(639, 'LAL PET PRODUCTS COTTON SINGLE BONE', '210', '210', 1, 'product-featured-639.jpg', '', '', '', '', '', 0, 1, 0, 184),
(640, 'LAL PET PRODUCTS LEASH', '185', '185', 1, 'product-featured-640.jpg', '', '', '', '', '', 0, 1, 0, 184),
(641, 'LAL PET PRODUCTS MAN VINYL SUPER', '185', '185', 1, 'product-featured-641.jpg', '', '', '', '', '', 0, 1, 0, 184),
(642, 'LAL PET PRODUCTS NON-TIP STEEL BOWL', '120', '120', 1, 'product-featured-642.jpg', '', '', '', '', '', 0, 1, 0, 184),
(643, 'LAL PET PRODUCTS ROPE LEASH', '395', '395', 1, 'product-featured-643.jpg', '', '', '', '', '', 0, 1, 0, 184),
(644, 'LAL PET PRODUCTS ROPE LEASH MEDIUM', '345', '345', 1, 'product-featured-644.jpg', '', '', '', '', '', 0, 1, 0, 184),
(645, 'LAL PET PRODUCTS ROPE TOY 8TYPE', '155', '155', 1, 'product-featured-645.jpg', '', '', '', '', '', 0, 1, 0, 184),
(646, 'LAL PET PRODUCTS SUPER FLYER RUBBER TOY FOR DOG LARGE 1PCS', '250', '250', 1, 'product-featured-646.jpg', '', '', '', '', '', 0, 1, 0, 184),
(647, 'LAL PET PRODUCTS SUPER FUN TOY RUGBY BALL FOR DOG MEDIUM 1PCS', '310', '310', 1, 'product-featured-647.jpg', '', '', '', '', '', 0, 1, 0, 184),
(648, 'LAL PET PRODUCTS SUPER ROPE TOY', '120', '120', 1, 'product-featured-648.jpg', '', '', '', '', '', 0, 1, 0, 180),
(649, 'LAL PET PRODUCTS TOY', '330', '330', 1, 'product-featured-649.jpg', '', '', '', '', '', 0, 1, 0, 180),
(650, 'LAL PET RODUCTS COLOURED STEEL BOWL', '155', '155', 1, 'product-featured-650.jpg', '', '', '', '', '', 0, 1, 0, 184),
(651, 'LAL PET RODUCTS COLOURED STEEL BOWL SIZE -4NO', '165', '165', 1, 'product-featured-651.jpg', '', '', '', '', '', 0, 1, 0, 184),
(652, 'LAL PET ROLLER', '165', '165', 1, 'product-featured-652.jpg', '', '', '', '', '', 0, 1, 0, 184),
(653, 'LAL PET ROPE 285mrp', '285', '285', 1, 'product-featured-653.jpg', '', '', '', '', '', 0, 1, 0, 184),
(654, 'LAL PET SHAMPOO 200ML', '125', '125', 1, 'product-featured-654.jpg', '', '', '', '', '', 0, 1, 0, 183),
(655, 'LAL PETS  LEASH  M', '225', '225', 1, 'product-featured-655.jpg', '', '', '', '', '', 0, 1, 0, 184),
(656, 'LAL PETS COOLER M', '215', '215', 1, 'product-featured-656.jpg', '', '', '', '', '', 0, 1, 0, 184),
(657, 'LALPET LEASH', '450', '450', 1, 'product-featured-657.jpg', '', '', '', '', '', 0, 1, 0, 184),
(658, 'LALPET PRODUCT LEASH M', '110', '110', 1, 'product-featured-658.jpg', '', '', '', '', '', 0, 1, 0, 184),
(659, 'LALPET PRODUCTS  LEASH&COLLER', '250', '250', 1, 'product-featured-659.jpg', '', '', '', '', '', 0, 1, 0, 184),
(660, 'LALPET PRODUCTS COLLER M', '155', '155', 1, 'product-featured-660.jpg', '', '', '', '', '', 0, 1, 0, 184),
(661, 'LALPET PRODUCTS LARGE COLLER', '250', '250', 1, 'product-featured-661.jpg', '', '', '', '', '', 0, 1, 0, 184),
(662, 'LALPET PRODUCTS LEASH &COLER SMALL', '300', '300', 1, 'product-featured-662.jpg', '', '', '', '', '', 0, 1, 0, 184),
(663, 'LALPET PRODUCTS LEASH SMALL', '165', '165', 1, 'product-featured-663.jpg', '', '', '', '', '', 0, 1, 0, 184),
(664, 'LARGE BREED HAIR CUTTING CHARGE', '800', '800', 1, 'product-featured-664.jpg', '', '', '', '', '', 0, 1, 0, 183),
(665, 'LARGE DOG  GROMING CHARGE', '1200', '1200', 1, 'product-featured-665.jpg', '', '', '', '', '', 0, 1, 0, 183),
(666, 'LATEX BURGER TOY 310', '310', '310', 1, 'product-featured-666.jpg', '', '', '', '', '', 0, 1, 0, 180),
(667, 'LEASH&HARNESH SET XXL', '715', '715', 1, 'product-featured-667.jpg', '', '', '', '', '', 0, 1, 0, 184),
(668, 'LEATHER BANYARD 3 COMBA', '750', '750', 1, 'product-featured-668.jpg', '', '', '', '', '', 0, 1, 0, 184),
(669, 'LEATHER BONE', '200', '200', 1, 'product-featured-669.jpg', '', '', '', '', '', 0, 1, 0, 184),
(670, 'LEATHER COLLAR PLAIN MEDIUM BROWN', '210', '210', 1, 'product-featured-670.jpg', '', '', '', '', '', 0, 1, 0, 184),
(671, 'LEATHER FRENCH FRIES', '450', '450', 1, 'product-featured-671.jpg', '', '', '', '', '', 0, 1, 0, 184),
(672, 'LITTLE BIG PAW  CHICKEN MOUSE (GOURMET TENDER) ', '135', '135', 85, 'product-featured-672.jpg', '', '', '', '', '', 0, 1, 0, 185),
(673, 'LITTLE BIG PAW  GOURMET ATLANTIC TUNA ', '135', '135', 85, 'product-featured-673.jpg', '', '', '', '', '', 0, 1, 0, 185),
(674, 'LITTLE BIG PAW -POULRY CAT ', '135', '135', 85, 'product-featured-674.jpg', '', '', '', '', '', 0, 1, 0, 185),
(675, 'LITTLE BIG PAW DUCK MOUSE (GOURMET TENDER)', '135', '135', 85, 'product-featured-675.jpg', '', '', '', '', '', 0, 1, 0, 185),
(676, 'LITTLE BIG PAW GOURMET ATLANTIC SALMON MOUSE ', '135', '135', 85, 'product-featured-676.png', '', '', '', '', '', 0, 1, 0, 185),
(677, 'LITTLE BIG PAW OCEAN FISH 85GM', '135', '135', 85, 'product-featured-677.jpg', '', '', '', '', '', 0, 1, 0, 185),
(678, 'LITTLE BIG PAW SEAFOOD CAT ', '135', '135', 85, 'product-featured-678.jpg', '', '', '', '', '', 0, 1, 0, 185),
(679, 'LONG LASTING DENTAL BAR CHCKEN FLAVOR ', '100', '100', 2, 'product-featured-679.jpg', '', '', '', '', '', 0, 1, 0, 177),
(680, 'IBC MAGRID', '150', '150', 100, 'product-featured-680.jpg', '', '', '', '', '', 0, 1, 0, 184),
(681, 'Marvo LAMB CHUNK IN GRAVY ', '175', '175', 400, 'product-featured-681.jpg', '', '', '', '', '', 0, 1, 0, 177),
(682, 'FARMINA MATISSE CHICKEN&RICE ', '580', '580', 400, 'product-featured-682.jpg', '', '', '', '', '', 0, 1, 0, 185),
(683, 'FARMINA MATISSE SALMON & TUNA ', '1120', '1120', 1, 'product-featured-683.jpg', '', '', '', '', '', 0, 1, 0, 185),
(684, 'FARMINA MATTISSE NEUTERED SALMON ', '1050', '1050', 1, 'product-featured-684.jpg', '', '', '', '', '', 0, 1, 0, 185),
(685, 'FARMINA MATTISSE SALMON &TUNA ', '340', '340', 400, 'product-featured-685.jpg', '', '', '', '', '', 0, 1, 0, 185),
(686, 'ME-O  ADULT TUNA IN JELLY', '40', '40', 80, 'product-featured-686.jpg', '', '', '', '', '', 0, 1, 0, 185),
(687, 'ME-O ADULT CAT FOOD  PERSIAN', '400', '400', 1, 'product-featured-687.jpg', '', '', '', '', '', 0, 1, 0, 185),
(688, 'ME-O ADULT CAT FOOD CHICKEN &VEG ', '385', '385', 1, 'product-featured-688.jpg', '', '', '', '', '', 0, 1, 0, 185),
(689, 'ME-O ADULT CAT FOOD MACKERAL', '1500', '1500', 7, 'product-featured-689.jpg', '', '', '', '', '', 0, 1, 0, 185),
(690, 'ME-O ADULT CAT FOOD PERSIAN ', '355', '355', 1, 'product-featured-690.jpg', '', '', '', '', '', 0, 1, 0, 185),
(691, 'ME-O ADULT CAT FOOD TUNA ', '375', '375', 1, 'product-featured-691.jpg', '', '', '', '', '', 0, 1, 0, 185),
(692, 'ME-O ADULT CAT SEA FOOD ', '755', '755', 3, 'product-featured-692.jpg', '', '', '', '', '', 0, 1, 0, 185),
(693, 'ME-O ADULT TUNA ', '755', '755', 3, 'product-featured-693.jpg', '', '', '', '', '', 0, 1, 0, 185),
(694, 'ME-O CAT KITTEN PERSIAN ', '360', '360', 1, 'product-featured-694.jpeg', '', '', '', '', '', 0, 1, 0, 185),
(695, 'ME-O CAT KITTEN PERSIAN ', '360', '360', 1, 'product-featured-695.jpg', '', '', '', '', '', 0, 1, 0, 185),
(696, 'ME-O CHICKEN & SARDINE GRAVY ', '40', '40', 80, 'product-featured-696.jpg', '', '', '', '', '', 0, 1, 0, 185),
(697, 'ME-O CREAMY TREATS BONITO FLAVOR ', '90', '90', 60, 'product-featured-697.jpg', '', '', '', '', '', 0, 1, 0, 185),
(698, 'ME-O CREAMY TREATS CHICKEN & LIVER ', '90', '90', 60, 'product-featured-698.jpg', '', '', '', '', '', 0, 1, 0, 185),
(699, 'ME-O CREAMY TREATS CRAB FLAVOR ', '90', '90', 60, 'product-featured-699.jpg', '', '', '', '', '', 0, 1, 0, 185),
(700, 'ME-O CREAMY TREATS SALMON ', '90', '90', 60, 'product-featured-700.jpg', '', '', '', '', '', 0, 1, 0, 185),
(701, 'ME-O GRAVY ADULT CHICKEN CHUNK', '40', '40', 80, 'product-featured-701.jpg', '', '', '', '', '', 0, 1, 0, 185),
(702, 'ME-O GRAVY ADULT MACKEREL', '40', '40', 80, 'product-featured-702.jpg', '', '', '', '', '', 0, 1, 0, 185),
(703, 'ME-O GRAVY ADULT OCEAN FISH', '40', '40', 80, 'product-featured-703.jpg', '', '', '', '', '', 0, 1, 0, 185),
(704, 'ME-O GRAVY ADULT TUNA', '40', '40', 80, 'product-featured-704.jpg', '', '', '', '', '', 0, 1, 0, 185),
(705, 'ME-O GRAVY ADULT TUNA WITH CHICKEN JELLY', '40', '40', 80, 'product-featured-705.jpg', '', '', '', '', '', 0, 1, 0, 185),
(706, 'ME-O GRAVY KITTEN TUNA AND SARDINEIN JELLY', '40', '40', 80, 'product-featured-706.jpg', '', '', '', '', '', 0, 1, 0, 185),
(707, 'ME-O KITTEN  TUNA GRAVY', '40', '40', 80, 'product-featured-707.jpg', '', '', '', '', '', 0, 1, 0, 185),
(708, 'ME-O KITTEN OCEAN FISH ', '355', '355', 1, 'product-featured-708.jpg', '', '', '', '', '', 0, 1, 0, 185),
(709, 'PEDIGREE MEAT JARKY ROSTED LAMB', '140', '140', 80, 'product-featured-709.jpg', '', '', '', '', '', 0, 1, 0, 11),
(710, 'VETOQUINOL MERICAL PET BISCUIT ', '380', '380', 60, 'product-featured-710.jpg', '', '', '', '', '', 0, 1, 0, 182),
(711, 'KRYPTO MISKITTY CAT TREATS CHICKEN BITES ', '200', '200', 50, 'product-featured-711.jpg', '', '', '', '', '', 0, 1, 0, 142),
(712, 'KRYPTO MUNCHHY STIX CHICKEN STIX ', '280', '280', 1, 'product-featured-712.jpg', '', '', '', '', '', 0, 1, 0, 10),
(713, 'KRYPTO MUNCHHY STIX CHICKEN STIX MIX', '280', '280', 1, 'product-featured-713.jpg', '', '', '', '', '', 0, 1, 0, 10),
(714, 'KRYPTO MUNCHHY STIX CHICKEN STIX', '160', '160', 500, 'product-featured-714.jpg', '', '', '', '', '', 0, 1, 0, 10),
(715, 'KRYPTO MUTTON CHOOSTIX ', '280', '280', 1, 'product-featured-715.jpg', '', '', '', '', '', 0, 1, 0, 10),
(716, 'KRYPTO MUTTON STIX ', '160', '160', 500, 'product-featured-716.jpg', '', '', '', '', '', 0, 1, 0, 10),
(717, 'DOG MUZZEL NO-5', '120', '120', 1, 'product-featured-717.jpg', '', '', '', '', '', 0, 1, 0, 184),
(718, 'DOG MUZZEL NO-6', '130', '130', 1, 'product-featured-718.jpg', '', '', '', '', '', 0, 1, 0, 184),
(719, 'N&D CAT LAMB PUMP & BLUE CANN ', '170', '170', 80, 'product-featured-719.jpg', '', '', '', '', '', 0, 1, 0, 185),
(720, 'N&D CAT PRIME CHIC & POM ADULT CANN ', '170', '170', 80, 'product-featured-720.jpg', '', '', '', '', '', 0, 1, 0, 185),
(721, 'N&D CAT QUINOA QUAIL & COCO ADULT ', '170', '170', 80, 'product-featured-721.jpg', '', '', '', '', '', 0, 1, 0, 185),
(722, 'N&D DOG AG CP ADULT MED/MAXI ', '1990', '1990', 3, 'product-featured-722.jpg', '', '', '', '', '', 0, 1, 0, 177),
(723, 'N&D DOG AG CP PUPPY MED/ MAXI ', '1990', '1990', 2, 'product-featured-723.jpg', '', '', '', '', '', 0, 1, 0, 177),
(724, 'N&D DOG AG CP PUPPY MED/MAXI', '7890', '7890', 12, 'product-featured-724.jpg', '', '', '', '', '', 0, 1, 0, 177),
(725, 'N&D DOG AG CP PUPPY MINI ', '1990', '1990', 2, 'product-featured-725.jpg', '', '', '', '', '', 0, 1, 0, 177),
(726, 'N&D GF LB PUPPY MEDIUM AND MAXI ', '2350', '2350', 2, 'product-featured-726.jpg', '', '', '', '', '', 0, 1, 0, 177),
(727, 'N&D GF PKN CP PUPPY MED/MAXI ', '8890', '8890', 2, 'product-featured-727.jpg', '', '', '', '', '', 0, 1, 0, 177),
(728, 'N&D GF PKN CP PUPPY MINI ', '2390', '2390', 2, 'product-featured-728.jpg', '', '', '', '', '', 0, 1, 0, 177),
(729, 'N&D GF PKN CP STARTER PUPPY ', '2090', '2090', 2, 'product-featured-729.jpg', '', '', '', '', '', 0, 1, 0, 177),
(730, 'N&D GF PKN LB&BB ADULT ME/MAXI ', '8890', '8890', 12, 'product-featured-730.jpg', '', '', '', '', '', 0, 1, 0, 177),
(731, 'N&D GF PKN LB&BB ADULT MINI ', '2350', '2350', 2, 'product-featured-731.jpg', '', '', '', '', '', 0, 1, 0, 177),
(732, 'N&D GF PKN LB&BB PUP ME/MA  ', '8890', '8890', 12, 'product-featured-732.jpg', '', '', '', '', '', 0, 1, 0, 177),
(733, 'N&D LOW GRAIN MINI ADULT ', '780', '780', 800, 'product-featured-733.jpg', '', '', '', '', '', 0, 1, 0, 177),
(734, 'N&D PRIME CAT GF CP ADULT ', '680', '680', 300, 'product-featured-734.jpg', '', '', '', '', '', 0, 1, 0, 177),
(735, 'N&D PRIME CAT GF CP KITTEN ', '1990', '1990', 1, 'product-featured-735.jpg', '', '', '', '', '', 0, 1, 0, 185),
(736, 'NATURAL TOFU CLAMPING CAT LITTER ', '1250', '1250', 2, 'product-featured-736.jpg', '', '', '', '', '', 0, 1, 0, 187),
(737, 'NATURAL TOFU CLAMPING ODOUR CONTROL CAT LITTER ', '1050', '1050', 2, 'product-featured-737.jpg', '', '', '', '', '', 0, 1, 0, 187),
(738, 'NATURAL TOFU CLAMPING SENSITIVE CAT LITTER ', '1050', '1050', 2, 'product-featured-738.jpg', '', '', '', '', '', 0, 1, 0, 187),
(739, 'NATURAL TOFU CLAMPING SMART PELLETS CAT LITTER ', '950', '950', 2, 'product-featured-739.jpg', '', '', '', '', '', 0, 1, 0, 187),
(740, 'GNAWLERS PUPPY SNACK STRIP CHICKEN FLAVOUR ', '95', '95', 80, 'product-featured-740.jpg', '', '', '', '', '', 0, 1, 0, 177),
(741, 'NEO CLEAN CAT LITTER ODORREMOVER ', '450', '450', 623, 'product-featured-741.jpg', '', '', '', '', '', 0, 1, 0, 187),
(742, 'NEO CLEAN CAT LITTER ODOUR LOCK ', '1920', '1920', 12, 'product-featured-742.jpg', '', '', '', '', '', 0, 1, 0, 187),
(743, 'BEAPHER OFTAL TEAR STAIN REMOVER ', '450', '450', 50, 'product-featured-743.jpg', '', '', '', '', '', 0, 1, 0, 187),
(744, 'ORIJEN ORIGINAL ORIJEN ORIGINAL ', '2190', '2190', 2, 'product-featured-744.jpg', '', '', '', '', '', 0, 1, 0, 177),
(745, 'ORIJEN ORIGINAL DOG FOOD ', '4999', '4999', 6, 'product-featured-745.jpg', '', '', '', '', '', 0, 1, 0, 177),
(746, 'ORIJEN PUPPY ', '1999', '1999', 2, 'product-featured-746.jpg', '', '', '', '', '', 0, 1, 0, 177),
(747, 'ORIJEN PUPPY LARGE BREED ', '4999', '4999', 6, 'product-featured-747.jpg', '', '', '', '', '', 0, 1, 0, 177),
(748, 'PACIFIC STREAM CANINE (TASTE OF THE WILD)', '1599', '1599', 2, 'product-featured-748.jpg', '', '', '', '', '', 0, 1, 0, 177),
(749, 'PACIFIC STREAM CANINIE (SMOKED SALMON)TASTE  OF THE WILD ', '1600', '1600', 6, 'product-featured-749.jpg', '', '', '', '', '', 0, 1, 0, 177),
(750, 'PACIFIC STREAM PUPPY  (SMOKED SALMON}', '4140', '4140', 6, 'product-featured-750.jpg', '', '', '', '', '', 0, 1, 0, 177),
(751, 'PEDIGREE  ADULT SD LAMB&VEG ', '685', '685', 3, 'product-featured-751.jpg', '', '', '', '', '', 0, 1, 0, 11),
(752, 'PEDIGREE ADULT SD LAMB &VEG ', '260', '260', 1, 'product-featured-752.jpg', '', '', '', '', '', 0, 1, 0, 11),
(753, 'PEDIGREE ADULT SD LAMB&VEG ', '150', '150', 90, 'product-featured-753.jpg', '', '', '', '', '', 0, 1, 0, 11),
(754, 'PEDIGREE PUPPY SD LAMB&MILK ', '310', '310', 1, 'product-featured-754.jpg', '', '', '', '', '', 0, 1, 0, 11),
(755, 'PEDIGREE PUPPY SD LAMB&MILK ', '660', '660', 3, 'product-featured-755.jpg', '', '', '', '', '', 0, 1, 0, 11),
(756, 'PEDIGREE PUPPY SD LAMB&MILK', '150', '150', 90, 'product-featured-756.jpg', '', '', '', '', '', 0, 1, 0, 11),
(757, 'PEDIGREE  ADULT CHICKEN & VEG', '1110', '1110', 6, 'product-featured-757.jpg', '', '', '', '', '', 0, 1, 0, 11),
(758, 'PEDIGREE 100% VEGETARIAN ', '740', '740', 3, 'product-featured-758.jpg', '', '', '', '', '', 0, 1, 0, 11),
(759, 'PEDIGREE ACTIVE ADULT ', '3100', '3100', 10, 'product-featured-759.jpg', '', '', '', '', '', 0, 1, 0, 11),
(760, 'PEDIGREE ADULT 100%VEG ', '310', '310', 1, 'product-featured-760.jpg', '', '', '', '', '', 0, 1, 0, 11),
(761, 'PEDIGREE ADULT MEAT&RICE ', '3620', '3620', 20, 'product-featured-761.jpg', '', '', '', '', '', 0, 1, 0, 11),
(762, 'PEDIGREE BARBECUED CHICKEN MEAT JERKY STRPS ', '140', '140', 80, 'product-featured-762.jpg', '', '', '', '', '', 0, 1, 0, 11),
(763, 'PEDIGREE BIISCROK WITH LAMB ', '160', '160', 500, 'product-featured-763.jpg', '', '', '', '', '', 0, 1, 0, 11),
(764, 'PEDIGREE BISCROK BISCUIT CHICKEN ', '275', '275', 900, 'product-featured-764.jpg', '', '', '', '', '', 0, 1, 0, 11),
(765, 'PEDIGREE BISCROK CHICKEN ', '160', '160', 500, 'product-featured-765.jpg', '', '', '', '', '', 0, 1, 0, 11),
(766, 'PEDIGREE BISCROK MILK&CHICKEN ', '160', '160', 500, 'product-featured-766.jpg', '', '', '', '', '', 0, 1, 0, 11),
(767, 'PEDIGREE BISCROK WITH LAMB ', '15', '15', 50, 'product-featured-767.jpg', '', '', '', '', '', 0, 1, 0, 11),
(768, 'PEDIGREE BISCROK WITH MILK&CHEN ', '275', '275', 900, 'product-featured-768.jpg', '', '', '', '', '', 0, 1, 0, 11),
(769, 'PEDIGREE BSCROK WITH LAMB ', '275', '275', 900, 'product-featured-769.jpg', '', '', '', '', '', 0, 1, 0, 11),
(770, 'PEDIGREE CHICKEN AND VEG ', '260', '260', 1, 'product-featured-770.jpg', '', '', '', '', '', 0, 1, 0, 11),
(771, 'PEDIGREE CHICKEN AND VEG ', '20', '20', 100, 'product-featured-771.jpg', '', '', '', '', '', 0, 1, 0, 11),
(772, 'PEDIGREE CHICKEN AND VEG ', '1850', '1850', 10, 'product-featured-772.jpg', '', '', '', '', '', 0, 1, 0, 11),
(773, 'PEDIGREE CHICKEN AND VEG ', '3600', '3600', 20, 'product-featured-773.jpg', '', '', '', '', '', 0, 1, 0, 11),
(774, 'PEDIGREE CHICKEN AND VEG ', '660', '660', 3, 'product-featured-774.jpg', '', '', '', '', '', 0, 1, 0, 11),
(775, 'PEDIGREE CHICKEN&MILK PUPPY ', '1310', '1310', 6, 'product-featured-775.jpg', '', '', '', '', '', 0, 1, 0, 11),
(776, 'PEDIGREE CHICKEN&VEG ', '1890', '1890', 10, 'product-featured-776.jpg', '', '', '', '', '', 0, 1, 0, 11),
(777, 'PEDIGREE DENTASTIX MONO LARGE ', '240', '240', 270, 'product-featured-777.jpg', '', '', '', '', '', 0, 1, 0, 11),
(778, 'PEDIGREE DENTASTIX MONO MEDIUM ', '175', '175', 180, 'product-featured-778.jpg', '', '', '', '', '', 0, 1, 0, 11),
(779, 'PEDIGREE GRAVY ADULT CHICKEN AND LIVER CHUNKS ', '35', '35', 70, 'product-featured-779.jpg', '', '', '', '', '', 0, 1, 0, 11),
(780, 'PEDIGREE GRAVY PUPPY CHICKEN AND CHUNKS ', '35', '35', 70, 'product-featured-780.jpg', '', '', '', '', '', 0, 1, 0, 11),
(781, 'PEDIGREE JUMBO BONE', '200g', '200g', 130, 'product-featured-781.jpg', '', '', '', '', '', 0, 1, 0, 11),
(782, 'PEDIGREE JUMBONE CK LB SML ', '100', '100', 160, 'product-featured-782.png', '', '', '', '', '', 0, 1, 0, 11),
(783, 'PEDIGREE MEAT JARKY GRILLED LIVER ', '120', '120', 60, 'product-featured-783.jpg', '', '', '', '', '', 0, 1, 0, 11),
(784, 'PEDIGREE MEAT JERKY GRILLED LIVER ', '140', '140', 80, 'product-featured-784.jpg', '', '', '', '', '', 0, 1, 0, 11),
(785, 'PEDIGREE MEAT JERKY STIX BACON ', '120', '120', 60, 'product-featured-785.jpg', '', '', '', '', '', 0, 1, 0, 11),
(786, 'PEDIGREE MEAT&RICE ', '260', '260', 1, 'product-featured-786.jpg', '', '', '', '', '', 0, 1, 0, 11),
(787, 'PEDIGREE MEAT&RICE ', '1890', '1890', 10, 'product-featured-787.jpg', '', '', '', '', '', 0, 1, 0, 11),
(788, 'PEDIGREE MEAT&RICE ADULT DRY DOG FOOD ', '660', '660', 3, 'product-featured-788.jpg', '', '', '', '', '', 0, 1, 0, 11),
(789, 'PEDIGREE MOTHER &BABY DOG STARTER ', '1200', '1200', 3, 'product-featured-789.jpg', '', '', '', '', '', 0, 1, 0, 11),
(790, 'PEDIGREE MOTHER&BABYDOG STARTER ', '450', '450', 1, 'product-featured-790.jpg', '', '', '', '', '', 0, 1, 0, 11),
(791, 'PEDIGREE PRO  MOTHER&PUP ', '520', '520', 1, 'product-featured-791.jpg', '', '', '', '', '', 0, 1, 0, 11),
(792, 'PEDIGREE PRO ACTIVE ADULT ', '1000', '1000', 3, 'product-featured-792.jpg', '', '', '', '', '', 0, 1, 0, 11),
(793, 'PEDIGREE PRO ADULT SMALL BREAD ', '420', '420', 1, 'product-featured-793.jpg', '', '', '', '', '', 0, 1, 0, 11),
(794, 'PEDIGREE PRO ADULT SMALL BREED ', '830.50', '830.50', 3, 'product-featured-794.jpg', '', '', '', '', '', 0, 1, 0, 11),
(795, 'PEDIGREE PRO PSB ', '381.36', '381.36', 1, 'product-featured-795.jpg', '', '', '', '', '', 0, 1, 0, 11),
(796, 'PEDIGREE PRO PUPPY LARGE BREED ', '3200', '3200', 10, 'product-featured-796.jpg', '', '', '', '', '', 0, 1, 0, 11),
(797, 'PEDIGREE PRO PUPPY LARGE BREED ', '1080', '1080', 3, 'product-featured-797.jpg', '', '', '', '', '', 0, 1, 0, 11),
(798, 'PEDIGREE PRO PUPPY PSB ', '847.46', '847.46', 3, 'product-featured-798.jpg', '', '', '', '', '', 0, 1, 0, 11),
(799, 'PEDIGREE PRO STARTER MOTHER&PUP DRY FOOD ', '1042.30', '1042.30', 3, 'product-featured-799.jpg', '', '', '', '', '', 0, 1, 0, 11),
(800, 'PEDIGREE PUPPY CHICKEN & MILK ', '584.75', '584.75', 3, 'product-featured-800.jpg', '', '', '', '', '', 0, 1, 0, 11),
(801, 'PEDIGREE PUPPY CHICKEN AND MILK ', '245.60', '245.60', 1, 'product-featured-801.jpg', '', '', '', '', '', 0, 1, 0, 11),
(802, 'PEDIGREE PUPPY CHICKEN AND MILK ', '16.95', '16.95', 90, 'product-featured-802.jpg', '', '', '', '', '', 0, 1, 0, 11),
(803, 'PEDIGREE PUPPY CHICKEN&MILK ', '2070', '2070', 10, 'product-featured-803.jpg', '', '', '', '', '', 0, 1, 0, 11),
(804, 'PEDIGREE PUPPY MEAT&MILK ', '2070', '2070', 10, 'product-featured-804.jpg', '', '', '', '', '', 0, 1, 0, 11),
(805, 'PEDIGREE PUPPY MEAT&MILK ', '690', '690', 3, 'product-featured-805.jpg', '', '', '', '', '', 0, 1, 0, 11),
(806, 'PEDIGREE PUPPY100%VEGETABLE', '279.66', '279.66', 1, 'product-featured-806.jpg', '', '', '', '', '', 0, 1, 0, 11),
(807, 'PEDIGREE RODEO 4*12*', '127.12', '127.12', 123, 'product-featured-807.jpg', '', '', '', '', '', 0, 1, 0, 11),
(808, 'PEDIGREE RODEO DUOS 4*10*', '127.12', '127.12', 123, 'product-featured-808.jpg', '', '', '', '', '', 0, 1, 0, 11),
(809, 'PEDIGREE SENIOR CHCKEN&RICE ADULT ', '593.22', '593.22', 3, 'product-featured-809.jpg', '', '', '', '', '', 0, 1, 0, 11),
(810, 'PEDIGREE SMOKED SALMON STICKS ', '101.80', '101.80', 60, 'product-featured-810.jpg', '', '', '', '', '', 0, 1, 0, 11),
(811, 'PEDIGREE TASTY BITES CHICKEN&SMOKE FLAVOUR ', '127.12', '127.12', 50, 'product-featured-811.jpg', '', '', '', '', '', 0, 1, 0, 11),
(812, 'PEDIGREE TASTY BITES LAMB FLAVOR ', '150', '150', 50, 'product-featured-812.jpg', '', '', '', '', '', 0, 1, 0, 11),
(813, 'PEDIGREE TM CHEWY  CUBES PUPPY ', '150', '150', 125, 'product-featured-813.jpg', '', '', '', '', '', 0, 1, 0, 11),
(814, 'PEDIGREE TM CHEWY CUBES CK DK 6*8*', '150', '150', 130, 'product-featured-814.jpg', '', '', '', '', '', 0, 1, 0, 11),
(815, 'PET PATTERN HYGIENE CAT LITTER', '500', '500', 5, 'product-featured-815.jpg', '', '', '', '', '', 0, 1, 0, 187),
(816, 'PET SOFT PET WIPES ', '350', '350', 100, 'product-featured-816.jpg', '', '', '', '', '', 0, 1, 0, 187),
(817, 'PET STORY MEAT JERKY ', '160', '160', 60, 'product-featured-817.jpg', '', '', '', '', '', 0, 1, 0, 177),
(818, 'PETAHOLIC CAT LITTER ', '995', '995', 10, 'product-featured-818.jpg', '', '', '', '', '', 0, 1, 0, 187);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_color`
--

INSERT INTO `tbl_product_color` (`id`, `color_id`, `p_id`) VALUES
(69, 1, 4),
(70, 4, 4),
(77, 6, 6),
(82, 2, 12),
(83, 9, 13),
(84, 3, 14),
(85, 2, 15),
(86, 6, 15),
(87, 3, 16),
(88, 3, 17),
(89, 2, 18),
(90, 3, 19),
(91, 1, 20),
(92, 8, 21),
(93, 2, 22),
(94, 2, 23),
(95, 2, 25),
(96, 5, 26),
(97, 2, 27),
(98, 4, 27),
(99, 5, 28),
(100, 7, 29),
(101, 10, 30),
(102, 11, 31),
(103, 14, 32),
(105, 2, 34),
(106, 1, 35),
(107, 3, 36),
(109, 6, 38),
(110, 2, 39),
(111, 11, 42),
(149, 3, 10),
(150, 6, 9),
(151, 3, 8),
(152, 7, 7),
(159, 2, 77),
(163, 17, 79),
(164, 2, 78),
(167, 3, 80),
(168, 2, 81),
(172, 2, 83),
(174, 3, 84),
(175, 21, 85),
(176, 21, 86),
(177, 21, 87),
(178, 21, 88),
(179, 21, 89),
(180, 21, 90),
(181, 21, 91),
(182, 21, 92),
(183, 21, 93),
(184, 21, 94),
(185, 21, 95),
(186, 21, 96),
(187, 21, 97),
(188, 21, 98),
(189, 21, 99),
(190, 21, 100),
(191, 21, 101),
(192, 21, 102),
(193, 21, 103),
(194, 21, 104),
(195, 21, 105),
(196, 21, 106),
(197, 21, 107),
(198, 21, 108),
(199, 21, 109),
(200, 21, 110),
(201, 21, 111),
(202, 21, 112),
(203, 21, 113),
(204, 21, 114),
(205, 21, 115),
(206, 21, 116),
(207, 21, 117),
(208, 21, 118),
(209, 21, 119),
(210, 21, 120),
(211, 21, 121),
(212, 21, 122),
(213, 21, 123),
(214, 21, 124),
(215, 21, 125),
(216, 21, 126),
(217, 21, 127),
(218, 21, 128),
(219, 21, 129),
(220, 21, 130),
(221, 21, 131),
(222, 21, 132),
(223, 21, 133),
(224, 21, 134),
(225, 21, 135),
(226, 21, 136),
(227, 21, 137),
(228, 21, 138),
(229, 21, 139),
(230, 21, 140),
(231, 21, 141),
(232, 21, 142),
(233, 21, 143),
(234, 21, 144),
(235, 21, 145),
(236, 21, 146),
(237, 21, 147),
(238, 21, 148),
(239, 21, 149),
(240, 21, 150),
(241, 21, 151),
(242, 21, 152),
(243, 21, 153),
(244, 21, 154),
(245, 21, 155),
(246, 21, 156),
(247, 21, 157),
(248, 21, 158),
(249, 21, 159),
(250, 21, 160),
(251, 21, 161),
(252, 21, 162),
(253, 21, 163),
(254, 21, 164),
(255, 21, 165),
(256, 21, 166),
(257, 21, 167),
(258, 21, 168),
(259, 21, 169),
(260, 21, 170),
(261, 21, 171),
(262, 21, 172),
(263, 21, 173),
(264, 21, 174),
(265, 21, 175),
(266, 21, 176),
(267, 21, 177),
(268, 21, 178),
(269, 21, 179),
(270, 21, 180),
(271, 21, 181),
(272, 21, 182),
(273, 21, 183),
(274, 21, 184),
(275, 21, 185),
(276, 21, 186),
(277, 21, 187),
(278, 21, 188),
(279, 21, 189),
(280, 21, 190),
(281, 21, 191),
(282, 21, 192),
(283, 21, 193),
(284, 21, 194),
(285, 21, 195),
(286, 21, 196),
(287, 21, 197),
(288, 21, 198),
(289, 21, 199),
(290, 21, 200),
(291, 21, 201),
(292, 21, 202),
(293, 21, 203),
(295, 21, 205),
(296, 21, 206),
(297, 21, 207),
(298, 21, 208),
(299, 21, 209),
(300, 21, 210),
(301, 21, 211),
(302, 21, 212),
(303, 21, 213),
(304, 21, 214),
(305, 21, 215),
(306, 21, 216),
(307, 21, 217),
(308, 21, 218),
(309, 21, 219),
(310, 21, 220),
(311, 21, 221),
(312, 21, 222),
(313, 21, 223),
(314, 21, 224),
(315, 21, 225),
(316, 21, 226),
(317, 21, 227),
(318, 21, 228),
(319, 21, 229),
(320, 21, 230),
(321, 21, 231),
(322, 21, 232),
(323, 21, 233),
(324, 21, 234),
(325, 21, 235),
(326, 21, 236),
(327, 21, 237),
(328, 21, 238),
(329, 21, 239),
(330, 21, 240),
(331, 21, 241),
(332, 21, 242),
(333, 21, 243),
(334, 21, 244),
(335, 21, 245),
(336, 21, 246),
(337, 21, 247),
(338, 21, 248),
(339, 21, 249),
(340, 21, 250),
(341, 21, 251),
(342, 21, 252),
(343, 21, 253),
(344, 21, 254),
(345, 21, 255),
(346, 21, 256),
(347, 21, 257),
(348, 21, 258),
(349, 21, 259),
(350, 21, 260),
(351, 21, 261),
(353, 21, 263),
(354, 21, 262),
(355, 21, 264),
(356, 21, 265),
(357, 21, 266),
(358, 21, 267),
(359, 21, 268),
(360, 21, 269),
(361, 21, 270),
(362, 21, 271),
(363, 21, 272),
(364, 21, 273),
(365, 21, 274),
(366, 21, 275),
(367, 21, 276),
(368, 21, 277),
(369, 21, 278),
(370, 21, 279),
(371, 21, 280),
(372, 21, 281),
(373, 21, 282),
(374, 21, 283),
(375, 21, 284),
(376, 21, 285),
(377, 21, 286),
(378, 21, 287),
(379, 21, 288),
(380, 21, 289),
(381, 21, 290),
(382, 21, 291),
(383, 21, 292),
(384, 21, 293),
(385, 21, 294),
(386, 21, 295),
(387, 21, 296),
(388, 21, 297),
(389, 21, 298),
(390, 21, 299),
(391, 21, 300),
(392, 21, 301),
(393, 21, 302),
(394, 21, 303),
(395, 21, 304),
(396, 21, 305),
(397, 21, 306),
(398, 21, 307),
(399, 21, 308),
(400, 21, 309),
(401, 21, 310),
(402, 21, 311),
(403, 21, 312),
(404, 21, 313),
(405, 21, 314),
(406, 21, 315),
(407, 21, 316),
(408, 21, 317),
(409, 21, 318),
(410, 21, 319),
(411, 21, 320),
(412, 21, 321),
(413, 21, 322),
(414, 21, 323),
(415, 21, 324),
(416, 21, 325),
(417, 21, 326),
(418, 21, 327),
(419, 21, 328),
(420, 21, 329),
(421, 21, 330),
(422, 21, 331),
(423, 21, 332),
(424, 21, 333),
(425, 21, 334),
(426, 21, 335),
(427, 21, 336),
(428, 21, 337),
(429, 21, 338),
(430, 21, 339),
(431, 21, 340),
(432, 21, 341),
(433, 21, 342),
(435, 21, 343),
(436, 21, 344),
(437, 21, 345),
(438, 21, 346),
(439, 21, 347),
(440, 21, 348),
(441, 21, 349),
(442, 21, 350),
(443, 21, 351),
(444, 21, 352),
(445, 21, 353),
(446, 21, 354),
(447, 21, 355),
(448, 21, 356),
(449, 21, 357),
(450, 21, 358),
(451, 21, 359),
(452, 21, 360),
(453, 21, 361),
(454, 21, 362),
(455, 21, 363),
(458, 21, 365),
(459, 21, 364),
(460, 21, 366),
(461, 21, 367),
(462, 21, 368),
(463, 21, 369),
(464, 21, 370),
(465, 21, 371),
(466, 21, 372),
(467, 21, 373),
(468, 21, 374),
(469, 21, 375),
(470, 21, 376),
(471, 21, 377),
(472, 21, 378),
(473, 21, 379),
(474, 21, 380),
(475, 21, 381),
(476, 21, 382),
(477, 21, 383),
(478, 21, 384),
(479, 21, 385),
(480, 21, 386),
(481, 21, 387),
(482, 21, 388),
(483, 21, 389),
(484, 21, 390),
(485, 21, 391),
(486, 21, 392),
(487, 21, 393),
(488, 21, 394),
(489, 21, 395),
(490, 21, 396),
(491, 21, 397),
(492, 21, 398),
(493, 21, 399),
(494, 21, 400),
(495, 21, 401),
(496, 21, 402),
(497, 21, 403),
(498, 21, 404),
(499, 21, 405),
(500, 21, 406),
(501, 21, 407),
(502, 21, 408),
(503, 21, 409),
(504, 21, 410),
(505, 21, 411),
(506, 21, 412),
(507, 21, 413),
(508, 21, 414),
(509, 21, 415),
(510, 21, 416),
(511, 21, 417),
(512, 21, 418),
(513, 21, 419),
(514, 21, 420),
(515, 21, 421),
(516, 21, 422),
(517, 21, 423),
(518, 21, 424),
(519, 21, 425),
(520, 21, 426),
(521, 21, 427),
(522, 21, 428),
(523, 21, 429),
(524, 21, 430),
(525, 21, 431),
(526, 21, 432),
(527, 21, 433),
(528, 21, 434),
(529, 21, 435),
(530, 21, 436),
(531, 21, 437),
(532, 21, 438),
(533, 21, 439),
(534, 21, 440),
(535, 21, 441),
(536, 21, 442),
(537, 21, 443),
(538, 21, 444),
(539, 21, 445),
(540, 21, 446),
(541, 21, 447),
(542, 21, 448),
(543, 21, 449),
(544, 21, 450),
(545, 21, 451),
(546, 21, 452),
(547, 21, 453),
(548, 21, 454),
(549, 21, 455),
(550, 21, 456),
(551, 21, 457),
(552, 21, 458),
(553, 21, 459),
(554, 21, 460),
(555, 21, 461),
(556, 21, 462),
(557, 21, 463),
(558, 21, 464),
(559, 21, 465),
(560, 21, 466),
(561, 21, 467),
(562, 21, 468),
(563, 21, 469),
(564, 21, 470),
(565, 21, 471),
(566, 21, 472),
(567, 21, 473),
(568, 21, 474),
(569, 21, 475),
(570, 21, 476),
(571, 21, 477),
(572, 21, 478),
(573, 21, 479),
(574, 21, 480),
(575, 21, 481),
(576, 21, 482),
(577, 21, 483),
(578, 21, 484),
(579, 21, 485),
(580, 21, 486),
(581, 21, 487),
(582, 21, 488),
(583, 21, 489),
(584, 21, 490),
(585, 21, 491),
(589, 21, 493),
(590, 21, 492),
(591, 21, 494),
(592, 21, 495),
(593, 21, 496),
(594, 21, 497),
(595, 21, 498),
(596, 21, 499),
(597, 21, 500),
(598, 21, 501),
(599, 21, 502),
(600, 21, 503),
(601, 21, 504),
(602, 21, 505),
(603, 21, 506),
(604, 21, 507),
(605, 21, 508),
(606, 21, 509),
(607, 21, 510),
(608, 21, 511),
(609, 21, 512),
(610, 21, 513),
(611, 21, 514),
(612, 21, 515),
(613, 21, 516),
(614, 21, 517),
(615, 21, 518),
(616, 21, 519),
(617, 21, 520),
(618, 21, 521),
(619, 21, 522),
(620, 21, 523),
(621, 21, 524),
(622, 21, 525),
(623, 21, 526),
(624, 21, 527),
(625, 21, 528),
(626, 21, 529),
(627, 21, 530),
(628, 21, 531),
(629, 21, 532),
(630, 21, 533),
(631, 21, 534),
(632, 21, 535),
(633, 21, 536),
(634, 21, 537),
(635, 21, 538),
(636, 21, 539),
(637, 21, 540),
(638, 21, 541),
(639, 21, 542),
(640, 21, 543),
(641, 21, 544),
(642, 21, 545),
(643, 21, 546),
(644, 21, 547),
(645, 21, 548),
(646, 21, 549),
(647, 21, 550),
(648, 21, 551),
(649, 21, 552),
(650, 21, 553),
(651, 21, 554),
(652, 21, 555),
(653, 21, 556),
(654, 21, 557),
(655, 21, 558),
(656, 21, 559),
(657, 21, 560),
(658, 21, 561),
(659, 21, 562),
(660, 21, 563),
(661, 21, 564),
(662, 21, 565),
(663, 21, 566),
(664, 21, 567),
(665, 21, 568),
(666, 21, 569),
(667, 21, 570),
(668, 21, 571),
(669, 21, 572),
(670, 21, 573),
(671, 21, 574),
(672, 21, 575),
(673, 21, 576),
(674, 21, 577),
(675, 21, 578),
(676, 21, 579),
(677, 21, 580),
(678, 21, 581),
(679, 21, 582),
(680, 21, 583),
(681, 21, 584),
(682, 21, 585),
(683, 21, 586),
(684, 21, 587),
(685, 21, 588),
(686, 21, 589),
(687, 21, 590),
(688, 21, 591),
(689, 21, 592),
(690, 21, 593),
(691, 21, 594),
(692, 21, 595),
(693, 21, 596),
(694, 21, 597),
(695, 21, 598),
(696, 21, 599),
(697, 21, 600),
(698, 21, 601),
(699, 21, 602),
(700, 21, 603),
(701, 21, 604),
(702, 21, 605),
(703, 21, 606),
(704, 21, 607),
(705, 21, 608),
(706, 21, 609),
(707, 21, 610),
(708, 21, 611),
(709, 21, 612),
(710, 21, 613),
(711, 21, 614),
(712, 21, 615),
(713, 21, 616),
(714, 21, 617),
(715, 21, 618),
(716, 21, 619),
(717, 21, 620),
(718, 21, 621),
(719, 21, 622),
(720, 21, 623),
(721, 21, 624),
(722, 21, 625),
(723, 21, 626),
(724, 21, 627),
(725, 21, 628),
(726, 21, 629),
(727, 21, 630),
(728, 21, 631),
(729, 21, 632),
(730, 21, 633),
(731, 21, 634),
(732, 21, 635),
(733, 21, 636),
(734, 21, 637),
(736, 21, 638),
(737, 21, 639),
(738, 21, 640),
(739, 21, 641),
(740, 21, 642),
(741, 21, 643),
(742, 21, 644),
(743, 21, 645),
(744, 21, 646),
(745, 21, 647),
(746, 21, 648),
(747, 21, 649),
(748, 21, 650),
(749, 21, 651),
(750, 21, 652),
(751, 21, 653),
(752, 21, 654),
(753, 21, 655),
(754, 21, 656),
(755, 21, 657),
(756, 21, 658),
(757, 21, 659),
(758, 21, 660),
(759, 21, 661),
(760, 21, 662),
(761, 21, 663),
(762, 21, 664),
(763, 21, 665),
(764, 21, 666),
(765, 21, 667),
(766, 21, 668),
(767, 21, 669),
(768, 21, 670),
(769, 21, 671),
(770, 21, 672),
(771, 21, 673),
(772, 21, 674),
(773, 21, 675),
(774, 21, 676),
(775, 21, 677),
(776, 21, 678),
(777, 21, 679),
(778, 21, 680),
(779, 21, 681),
(780, 21, 682),
(781, 21, 683),
(782, 21, 684),
(783, 21, 685),
(784, 21, 686),
(785, 21, 687),
(786, 21, 688),
(787, 21, 689),
(788, 21, 690),
(789, 21, 691),
(790, 21, 692),
(791, 21, 693),
(792, 21, 694),
(793, 21, 695),
(794, 21, 696),
(795, 21, 697),
(796, 21, 698),
(797, 21, 699),
(798, 21, 700),
(799, 21, 701),
(800, 21, 702),
(801, 21, 703),
(802, 21, 704),
(803, 21, 705),
(804, 21, 706),
(805, 21, 707),
(806, 21, 708),
(807, 21, 709),
(808, 21, 710),
(809, 21, 711),
(810, 21, 712),
(811, 21, 713),
(812, 21, 714),
(813, 21, 715),
(814, 21, 716),
(815, 21, 717),
(816, 21, 718),
(818, 21, 719),
(819, 21, 720),
(820, 21, 721),
(821, 21, 722),
(822, 21, 723),
(823, 21, 724),
(824, 21, 725),
(825, 21, 726),
(826, 21, 727),
(827, 21, 728),
(829, 21, 729),
(830, 21, 730),
(831, 21, 731),
(832, 21, 732),
(833, 21, 733),
(834, 21, 734),
(836, 21, 735),
(837, 21, 736),
(838, 21, 737),
(839, 21, 738),
(840, 21, 739),
(841, 21, 740),
(842, 21, 741),
(843, 21, 742),
(844, 21, 743),
(845, 21, 744),
(846, 21, 745),
(847, 21, 746),
(848, 21, 747),
(849, 21, 748),
(850, 21, 749),
(851, 21, 750),
(853, 21, 751),
(854, 21, 752),
(855, 21, 753),
(856, 21, 754),
(857, 21, 755),
(858, 21, 756),
(859, 21, 757),
(860, 21, 758),
(861, 21, 759),
(862, 21, 760),
(863, 21, 761),
(864, 21, 762),
(865, 21, 763),
(866, 21, 764),
(867, 21, 765),
(868, 21, 766),
(869, 21, 767),
(870, 21, 768),
(871, 21, 769),
(872, 21, 770),
(873, 21, 771),
(874, 21, 772),
(875, 21, 773),
(876, 21, 774),
(877, 21, 775),
(878, 21, 776),
(879, 21, 777),
(880, 21, 778),
(881, 21, 779),
(882, 21, 780),
(883, 21, 781),
(884, 21, 782),
(885, 21, 783),
(886, 21, 784),
(887, 21, 785),
(888, 21, 786),
(889, 21, 787),
(890, 21, 788),
(891, 21, 789),
(892, 21, 790),
(893, 21, 791),
(894, 21, 792),
(895, 21, 793),
(896, 21, 794),
(897, 21, 795),
(898, 21, 796),
(899, 21, 797),
(900, 21, 798),
(901, 21, 799),
(902, 21, 800),
(903, 21, 801),
(904, 21, 802),
(905, 21, 803),
(906, 21, 804),
(907, 21, 805),
(908, 21, 806),
(909, 21, 807),
(910, 21, 808),
(911, 21, 809),
(912, 21, 810),
(913, 21, 811),
(914, 21, 812),
(915, 21, 813),
(916, 21, 814),
(917, 21, 815),
(918, 21, 816),
(919, 21, 817),
(920, 21, 818);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(8, '8.jpg', 4),
(13, '13.jpg', 8),
(14, '14.jpg', 8),
(15, '15.jpg', 9),
(16, '16.jpg', 16),
(17, '17.jpg', 16),
(18, '18.jpg', 16),
(19, '19.jpg', 16),
(20, '20.jpg', 17),
(21, '21.jpg', 17),
(22, '22.jpg', 17),
(23, '23.jpg', 18),
(24, '24.jpg', 18),
(25, '25.jpg', 18),
(26, '26.jpg', 18),
(27, '27.jpg', 19),
(28, '28.jpg', 19),
(29, '29.jpg', 19),
(30, '30.jpg', 20),
(31, '31.jpg', 20),
(32, '32.jpg', 21),
(33, '33.jpg', 21),
(34, '34.jpg', 22),
(35, '35.jpg', 22),
(36, '36.jpg', 23),
(37, '37.jpg', 23),
(38, '38.jpg', 24),
(39, '39.jpg', 24),
(40, '40.jpg', 25),
(41, '41.jpg', 25),
(42, '42.jpg', 26),
(43, '43.jpg', 26),
(44, '44.jpg', 27),
(45, '45.jpg', 27),
(46, '46.jpg', 28),
(47, '47.jpg', 28),
(48, '48.jpg', 29),
(49, '49.jpg', 29),
(50, '50.jpg', 31),
(51, '51.jpg', 31),
(52, '52.jpg', 32),
(53, '53.jpg', 32),
(56, '56.jpg', 34),
(57, '57.jpg', 35),
(59, '59.jpg', 38),
(60, '60.jpg', 38),
(61, '61.jpg', 42),
(62, '62.jpg', 42),
(63, '63.jpg', 42),
(103, '103.jpg', 77),
(104, '104.jpg', 78);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`) VALUES
(44, 1, 6),
(56, 8, 12),
(57, 9, 12),
(58, 10, 12),
(59, 11, 12),
(60, 12, 12),
(61, 13, 12),
(62, 9, 13),
(63, 11, 13),
(64, 13, 13),
(65, 15, 13),
(66, 9, 14),
(67, 11, 14),
(68, 12, 14),
(69, 13, 14),
(70, 9, 15),
(71, 11, 15),
(72, 13, 15),
(73, 15, 16),
(74, 16, 16),
(75, 17, 16),
(76, 16, 17),
(77, 17, 17),
(78, 14, 18),
(79, 15, 18),
(80, 16, 18),
(81, 17, 18),
(82, 15, 19),
(83, 16, 19),
(84, 17, 19),
(85, 14, 20),
(86, 15, 20),
(87, 17, 20),
(88, 15, 21),
(89, 17, 21),
(90, 15, 22),
(91, 16, 22),
(92, 17, 22),
(93, 15, 23),
(94, 16, 23),
(95, 17, 23),
(96, 18, 25),
(97, 19, 25),
(98, 20, 25),
(99, 21, 25),
(100, 19, 26),
(101, 21, 26),
(102, 22, 26),
(103, 23, 26),
(104, 19, 27),
(105, 20, 27),
(106, 21, 27),
(107, 22, 27),
(108, 19, 28),
(109, 20, 28),
(110, 21, 28),
(111, 19, 29),
(112, 20, 29),
(113, 22, 29),
(114, 1, 30),
(115, 2, 30),
(116, 3, 30),
(117, 4, 30),
(118, 23, 31),
(119, 26, 32),
(123, 2, 34),
(124, 2, 35),
(125, 2, 36),
(126, 3, 36),
(129, 2, 38),
(130, 3, 38),
(131, 4, 38),
(132, 5, 38),
(133, 27, 39),
(134, 8, 42),
(210, 3, 10),
(211, 4, 10),
(212, 5, 10),
(213, 6, 10),
(214, 3, 9),
(215, 4, 9),
(216, 3, 8),
(217, 4, 8),
(218, 2, 7),
(219, 3, 7),
(220, 4, 7),
(249, 1, 79),
(250, 2, 79),
(251, 3, 79),
(252, 1, 78),
(253, 2, 78),
(254, 3, 78),
(255, 4, 78),
(256, 5, 78),
(259, 26, 80),
(264, 2, 83),
(265, 3, 83),
(267, 28, 84),
(268, 2, 85),
(269, 2, 86),
(270, 5, 87),
(271, 3, 88),
(272, 3, 89),
(273, 4, 90),
(274, 6, 91),
(275, 3, 92),
(276, 3, 93),
(277, 7, 94),
(278, 4, 95),
(279, 6, 96),
(280, 7, 97),
(281, 4, 98),
(282, 7, 99),
(283, 4, 100),
(284, 7, 101),
(285, 3, 102),
(286, 4, 103),
(287, 1, 104),
(288, 1, 105),
(289, 9, 106),
(290, 9, 107),
(291, 9, 108),
(292, 9, 109),
(293, 10, 110),
(294, 11, 111),
(295, 9, 112),
(296, 9, 113),
(297, 9, 114),
(298, 9, 115),
(299, 9, 116),
(300, 9, 117),
(301, 9, 118),
(302, 9, 119),
(303, 9, 120),
(304, 9, 121),
(305, 9, 122),
(306, 7, 123),
(307, 12, 124),
(308, 14, 125),
(309, 12, 126),
(310, 15, 127),
(311, 14, 128),
(312, 12, 129),
(313, 12, 130),
(314, 15, 131),
(315, 15, 132),
(316, 16, 133),
(317, 14, 134),
(318, 12, 135),
(319, 12, 136),
(320, 12, 137),
(321, 12, 138),
(322, 12, 139),
(323, 12, 140),
(324, 12, 141),
(325, 12, 142),
(326, 12, 143),
(327, 12, 144),
(328, 12, 145),
(329, 12, 146),
(330, 12, 147),
(331, 17, 148),
(332, 17, 149),
(333, 12, 150),
(334, 13, 151),
(335, 18, 152),
(336, 2, 153),
(337, 2, 154),
(338, 2, 155),
(339, 19, 156),
(340, 12, 157),
(341, 17, 158),
(342, 17, 159),
(343, 17, 160),
(344, 18, 161),
(345, 20, 162),
(346, 21, 163),
(347, 22, 164),
(348, 18, 165),
(349, 23, 166),
(350, 23, 167),
(351, 23, 168),
(352, 14, 169),
(353, 16, 170),
(354, 1, 171),
(355, 1, 172),
(356, 1, 173),
(357, 14, 174),
(358, 14, 175),
(359, 16, 176),
(360, 12, 177),
(361, 12, 178),
(362, 12, 179),
(363, 12, 180),
(364, 12, 181),
(365, 12, 182),
(366, 12, 183),
(367, 12, 184),
(368, 12, 185),
(369, 12, 186),
(370, 12, 187),
(371, 12, 188),
(372, 12, 189),
(373, 12, 190),
(374, 12, 191),
(375, 12, 192),
(376, 23, 193),
(377, 23, 194),
(378, 15, 195),
(379, 1, 196),
(380, 14, 197),
(381, 16, 198),
(382, 24, 199),
(383, 12, 200),
(384, 12, 201),
(385, 12, 202),
(386, 12, 203),
(388, 12, 205),
(389, 12, 206),
(390, 12, 207),
(391, 12, 208),
(392, 25, 209),
(393, 28, 210),
(394, 29, 211),
(395, 1, 212),
(396, 30, 213),
(397, 16, 214),
(398, 14, 215),
(399, 31, 216),
(400, 14, 217),
(401, 14, 218),
(402, 32, 219),
(403, 11, 220),
(404, 14, 221),
(405, 33, 222),
(406, 14, 223),
(407, 13, 224),
(408, 11, 225),
(409, 11, 226),
(410, 11, 227),
(411, 34, 228),
(412, 35, 229),
(413, 14, 230),
(414, 13, 231),
(415, 14, 232),
(416, 36, 233),
(417, 12, 234),
(418, 12, 235),
(419, 37, 236),
(420, 37, 237),
(421, 37, 238),
(422, 37, 239),
(423, 37, 240),
(424, 17, 241),
(425, 38, 242),
(426, 16, 243),
(427, 40, 244),
(428, 38, 245),
(429, 41, 246),
(430, 42, 247),
(431, 43, 248),
(432, 43, 249),
(433, 40, 250),
(434, 40, 251),
(435, 21, 252),
(436, 12, 253),
(437, 33, 254),
(438, 41, 255),
(439, 8, 256),
(440, 12, 257),
(441, 12, 258),
(442, 12, 259),
(443, 12, 260),
(444, 12, 261),
(446, 12, 263),
(447, 12, 262),
(448, 12, 264),
(449, 1, 265),
(450, 1, 266),
(451, 31, 267),
(452, 44, 268),
(453, 31, 269),
(454, 45, 270),
(455, 8, 271),
(456, 46, 272),
(457, 1, 273),
(458, 8, 274),
(459, 8, 275),
(460, 1, 276),
(461, 1, 277),
(462, 8, 278),
(463, 31, 279),
(464, 1, 280),
(465, 1, 281),
(466, 8, 282),
(467, 8, 283),
(468, 8, 284),
(469, 12, 285),
(470, 12, 286),
(471, 12, 287),
(472, 7, 288),
(473, 47, 289),
(474, 12, 290),
(475, 12, 291),
(476, 12, 292),
(477, 48, 293),
(478, 49, 294),
(479, 50, 295),
(480, 51, 296),
(481, 52, 297),
(482, 50, 298),
(483, 51, 299),
(484, 9, 300),
(485, 9, 301),
(486, 9, 302),
(487, 9, 303),
(488, 53, 304),
(489, 54, 305),
(490, 54, 306),
(491, 54, 307),
(492, 54, 308),
(493, 18, 309),
(494, 55, 310),
(495, 45, 311),
(496, 45, 312),
(497, 12, 313),
(498, 12, 314),
(499, 12, 315),
(500, 12, 316),
(501, 12, 317),
(502, 12, 318),
(503, 13, 319),
(504, 13, 320),
(505, 13, 321),
(506, 13, 322),
(507, 13, 323),
(508, 57, 324),
(509, 56, 325),
(510, 57, 326),
(511, 9, 327),
(512, 13, 328),
(513, 60, 329),
(514, 61, 330),
(515, 19, 331),
(516, 13, 332),
(517, 19, 333),
(518, 58, 334),
(519, 59, 335),
(520, 50, 336),
(521, 50, 337),
(522, 2, 338),
(523, 34, 339),
(524, 62, 340),
(525, 43, 341),
(526, 2, 342),
(528, 62, 343),
(529, 2, 344),
(530, 34, 345),
(531, 63, 346),
(532, 19, 347),
(533, 64, 348),
(534, 65, 349),
(535, 66, 350),
(536, 68, 351),
(537, 63, 352),
(538, 69, 353),
(539, 50, 354),
(540, 50, 355),
(541, 70, 356),
(542, 71, 357),
(543, 28, 358),
(544, 72, 359),
(545, 59, 360),
(546, 72, 361),
(547, 59, 362),
(548, 6, 363),
(551, 64, 365),
(552, 50, 364),
(553, 31, 366),
(554, 64, 367),
(555, 19, 368),
(556, 73, 369),
(557, 74, 370),
(558, 13, 371),
(559, 75, 372),
(560, 24, 373),
(561, 24, 374),
(562, 24, 375),
(563, 24, 376),
(564, 19, 377),
(565, 63, 378),
(566, 16, 379),
(567, 76, 380),
(568, 77, 381),
(569, 78, 382),
(570, 77, 383),
(571, 57, 384),
(572, 77, 385),
(573, 79, 386),
(574, 79, 387),
(575, 77, 388),
(576, 79, 389),
(577, 76, 390),
(578, 64, 391),
(579, 76, 392),
(580, 64, 393),
(581, 52, 394),
(582, 74, 395),
(583, 7, 396),
(584, 74, 397),
(585, 74, 398),
(586, 12, 399),
(587, 12, 400),
(588, 12, 401),
(589, 12, 402),
(590, 80, 403),
(591, 63, 404),
(592, 9, 405),
(593, 9, 406),
(594, 9, 407),
(595, 9, 408),
(596, 12, 409),
(597, 12, 410),
(598, 12, 411),
(599, 12, 412),
(600, 12, 413),
(601, 12, 414),
(602, 12, 415),
(603, 12, 416),
(604, 12, 417),
(605, 12, 418),
(606, 12, 419),
(607, 12, 420),
(608, 69, 421),
(609, 81, 422),
(610, 81, 423),
(611, 51, 424),
(612, 54, 425),
(613, 54, 426),
(614, 54, 427),
(615, 54, 428),
(616, 12, 429),
(617, 12, 430),
(618, 12, 431),
(619, 12, 432),
(620, 12, 433),
(621, 12, 434),
(622, 12, 435),
(623, 12, 436),
(624, 82, 437),
(625, 12, 438),
(626, 12, 439),
(627, 12, 440),
(628, 12, 441),
(629, 12, 442),
(630, 12, 443),
(631, 12, 444),
(632, 12, 445),
(633, 12, 446),
(634, 12, 447),
(635, 59, 448),
(636, 50, 449),
(637, 59, 450),
(638, 83, 451),
(639, 84, 452),
(640, 84, 453),
(641, 85, 454),
(642, 85, 455),
(643, 86, 456),
(644, 86, 457),
(645, 53, 458),
(646, 54, 459),
(647, 87, 460),
(648, 14, 461),
(649, 86, 462),
(650, 86, 463),
(651, 84, 464),
(652, 84, 465),
(653, 86, 466),
(654, 53, 467),
(655, 86, 468),
(656, 84, 469),
(657, 61, 470),
(658, 87, 471),
(659, 87, 472),
(660, 88, 473),
(661, 88, 474),
(662, 88, 475),
(663, 31, 476),
(664, 31, 477),
(665, 31, 478),
(666, 31, 479),
(667, 31, 480),
(668, 37, 481),
(669, 41, 482),
(670, 12, 483),
(671, 12, 484),
(672, 41, 485),
(673, 12, 486),
(674, 19, 487),
(675, 45, 488),
(676, 25, 489),
(677, 45, 490),
(678, 25, 491),
(682, 25, 493),
(683, 20, 492),
(684, 59, 494),
(685, 12, 495),
(686, 12, 496),
(687, 12, 497),
(688, 12, 498),
(689, 12, 499),
(690, 12, 500),
(691, 7, 501),
(692, 7, 502),
(693, 35, 503),
(694, 1, 504),
(695, 1, 505),
(696, 80, 506),
(697, 16, 507),
(698, 19, 508),
(699, 89, 509),
(700, 89, 510),
(701, 90, 511),
(702, 43, 512),
(703, 35, 513),
(704, 89, 514),
(705, 50, 515),
(706, 59, 516),
(707, 63, 517),
(708, 63, 518),
(709, 50, 519),
(710, 91, 520),
(711, 89, 521),
(712, 75, 522),
(713, 80, 523),
(714, 89, 524),
(715, 75, 525),
(716, 11, 526),
(717, 31, 527),
(718, 80, 528),
(719, 75, 529),
(720, 50, 530),
(721, 51, 531),
(722, 50, 532),
(723, 50, 533),
(724, 50, 534),
(725, 76, 535),
(726, 50, 536),
(727, 51, 537),
(728, 9, 538),
(729, 13, 539),
(730, 13, 540),
(731, 9, 541),
(732, 9, 542),
(733, 9, 543),
(734, 13, 544),
(735, 92, 545),
(736, 92, 546),
(737, 9, 547),
(738, 9, 548),
(739, 60, 549),
(740, 92, 550),
(741, 19, 551),
(742, 60, 552),
(743, 9, 553),
(744, 13, 554),
(745, 9, 555),
(746, 92, 556),
(747, 9, 557),
(748, 9, 558),
(749, 9, 559),
(750, 9, 560),
(751, 9, 561),
(752, 9, 562),
(753, 60, 563),
(754, 88, 564),
(755, 88, 565),
(756, 92, 566),
(757, 92, 567),
(758, 92, 568),
(759, 93, 569),
(760, 19, 570),
(761, 19, 571),
(762, 19, 572),
(763, 68, 573),
(764, 68, 574),
(765, 68, 575),
(766, 68, 576),
(767, 68, 577),
(768, 9, 578),
(769, 13, 579),
(770, 9, 580),
(771, 60, 581),
(772, 92, 582),
(773, 13, 583),
(774, 9, 584),
(775, 60, 585),
(776, 9, 586),
(777, 9, 587),
(778, 13, 588),
(779, 13, 589),
(780, 9, 590),
(781, 94, 591),
(782, 12, 592),
(783, 12, 593),
(784, 12, 594),
(785, 12, 595),
(786, 12, 596),
(787, 95, 597),
(788, 2, 598),
(789, 89, 599),
(790, 12, 600),
(791, 12, 601),
(792, 80, 602),
(793, 96, 603),
(794, 96, 604),
(795, 87, 605),
(796, 13, 606),
(797, 13, 607),
(798, 13, 608),
(799, 91, 609),
(800, 87, 610),
(801, 37, 611),
(802, 9, 612),
(803, 13, 613),
(804, 91, 614),
(805, 91, 615),
(806, 87, 616),
(807, 1, 617),
(808, 8, 618),
(809, 8, 619),
(810, 44, 620),
(811, 8, 621),
(812, 1, 622),
(813, 1, 623),
(814, 31, 624),
(815, 1, 625),
(816, 31, 626),
(817, 12, 627),
(818, 12, 628),
(819, 12, 629),
(820, 12, 630),
(821, 12, 631),
(822, 12, 632),
(823, 12, 633),
(824, 12, 634),
(825, 12, 635),
(826, 12, 636),
(827, 12, 637),
(829, 12, 638),
(830, 12, 639),
(831, 12, 640),
(832, 12, 641),
(833, 12, 642),
(834, 12, 643),
(835, 12, 644),
(836, 12, 645),
(837, 12, 646),
(838, 12, 647),
(839, 12, 648),
(840, 12, 649),
(841, 12, 650),
(842, 12, 651),
(843, 12, 652),
(844, 12, 653),
(845, 12, 654),
(846, 12, 655),
(847, 12, 656),
(848, 12, 657),
(849, 12, 658),
(850, 12, 659),
(851, 12, 660),
(852, 12, 661),
(853, 12, 662),
(854, 12, 663),
(855, 12, 664),
(856, 12, 665),
(857, 12, 666),
(858, 12, 667),
(859, 12, 668),
(860, 12, 669),
(861, 12, 670),
(862, 12, 671),
(863, 37, 672),
(864, 37, 673),
(865, 37, 674),
(866, 37, 675),
(867, 37, 676),
(868, 37, 677),
(869, 37, 678),
(870, 41, 679),
(871, 80, 680),
(872, 91, 681),
(873, 91, 682),
(874, 76, 683),
(875, 76, 684),
(876, 91, 685),
(877, 87, 686),
(878, 59, 687),
(879, 59, 688),
(880, 97, 689),
(881, 59, 690),
(882, 59, 691),
(883, 50, 692),
(884, 50, 693),
(885, 59, 694),
(886, 59, 695),
(887, 87, 696),
(888, 86, 697),
(889, 86, 698),
(890, 86, 699),
(891, 86, 700),
(892, 87, 701),
(893, 87, 702),
(894, 87, 703),
(895, 87, 704),
(896, 87, 705),
(897, 87, 706),
(898, 87, 707),
(899, 59, 708),
(900, 87, 709),
(901, 98, 710),
(902, 60, 711),
(903, 1, 712),
(904, 1, 713),
(905, 31, 714),
(906, 1, 715),
(907, 31, 716),
(908, 12, 717),
(909, 12, 718),
(911, 87, 719),
(912, 87, 720),
(913, 87, 721),
(914, 77, 722),
(915, 77, 723),
(916, 74, 724),
(917, 77, 725),
(918, 77, 726),
(919, 77, 727),
(920, 77, 728),
(922, 77, 729),
(923, 74, 730),
(924, 77, 731),
(925, 74, 732),
(926, 79, 733),
(927, 64, 734),
(929, 76, 735),
(930, 77, 736),
(931, 77, 737),
(932, 77, 738),
(933, 77, 739),
(934, 87, 740),
(935, 99, 741),
(936, 74, 742),
(937, 100, 743),
(938, 7, 744),
(939, 6, 745),
(940, 7, 746),
(941, 6, 747),
(942, 7, 748),
(943, 101, 749),
(944, 101, 750),
(946, 50, 751),
(947, 59, 752),
(948, 18, 753),
(949, 59, 754),
(950, 50, 755),
(951, 18, 756),
(952, 6, 757),
(953, 50, 758),
(954, 63, 759),
(955, 59, 760),
(956, 52, 761),
(957, 87, 762),
(958, 31, 763),
(959, 15, 764),
(960, 31, 765),
(961, 31, 766),
(962, 60, 767),
(963, 15, 768),
(964, 15, 769),
(965, 59, 770),
(966, 13, 771),
(967, 63, 772),
(968, 52, 773),
(969, 50, 774),
(970, 6, 775),
(971, 63, 776),
(972, 84, 777),
(973, 102, 778),
(974, 9, 779),
(975, 9, 780),
(976, 56, 781),
(977, 103, 782),
(978, 86, 783),
(979, 87, 784),
(980, 86, 785),
(981, 59, 786),
(982, 63, 787),
(983, 50, 788),
(984, 50, 789),
(985, 59, 790),
(986, 59, 791),
(987, 50, 792),
(988, 59, 793),
(989, 50, 794),
(990, 59, 795),
(991, 63, 796),
(992, 50, 797),
(993, 50, 798),
(994, 50, 799),
(995, 50, 800),
(996, 59, 801),
(997, 65, 802),
(998, 63, 803),
(999, 63, 804),
(1000, 50, 805),
(1001, 59, 806),
(1002, 104, 807),
(1003, 104, 808),
(1004, 50, 809),
(1005, 86, 810),
(1006, 60, 811),
(1007, 60, 812),
(1008, 88, 813),
(1009, 56, 814),
(1010, 69, 815),
(1011, 105, 816),
(1012, 86, 817),
(1013, 63, 818);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(5, 'Easy Returns', 'Return any item before 15 days. No questions asked.', 'service-5.jpg'),
(6, 'Free Shipping', 'Enjoy free shipping in U.A.E. More countries to be added sooner.', 'service-5.jpg'),
(7, 'Fast Delivery', 'Items are shipped in 24 hours.', 'service-5.jpg'),
(8, 'Dog', 'Return any item before 15 days. No questions asked.', 'service-5.jpg'),
(9, 'Fast Delivery', 'Items are shipped in 24 hours.', 'service-5.jpg'),
(10, 'Dog', 'Return any item before 15 days. No questions asked.', 'service-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(1) NOT NULL,
  `ads_above_featured_product_on_off` int(1) NOT NULL,
  `ads_above_latest_product_on_off` int(1) NOT NULL,
  `ads_above_popular_product_on_off` int(1) NOT NULL,
  `ads_above_testimonial_on_off` int(1) NOT NULL,
  `ads_category_sidebar_on_off` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright ï¿½ 2018. All Rights Reserved. | ', '<b>Store 1:</b>\r\nShop no. 09, Block C Market, Ardee City, Sector-52, Gurugram, Haryana, 122003\r\n<b>Store 2:</b>\r\nShop no. 1, Near Tulip Voilet, sector-69, Gurugram, Haryana, 122018', 'dubey233310@gmail.com', '+91 - 8851 164 459', '', '<iframe src=\"https://www.google.com/maps/d/u/0/embed?mid=1a4QiquqrQ8SP6O9_rWhVWersxGvodsoG\" width=\"640\" height=\"480\"></iframe>', 'dubey233310@gmail.com', 'Visitor Email Message from MyPetShop', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 4, 4, 4, 'MyPetShop | Online Pet Shop', 'fashionys, garments shop, online garments, dubai garments', 'fashionys.com is an online garments shop.', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Featured Products', 'See all our featured products from here', 'Latest Products', 'See all our latest products from here', 'Popular Products', 'See all our popular products from here', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Sign-up to our newsletter for latest promotions and discounts.', 'admin@MyPetShop', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: ABC Bank\r\nAccount Number: 1222320234444\r\nBranch Name: NY Branch\r\nCountry: INDIA', '<!-- Google Analytics -->\r\n<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-8564299-3\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-8564299-3\');\r\n</script>\r\n', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `country_id`, `amount`) VALUES
(1, 228, '0'),
(2, 167, '10'),
(3, 13, '8'),
(4, 99, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '100');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`) VALUES
(1, '1 kg'),
(2, '300ml'),
(3, '11.04kg'),
(4, '340g'),
(5, '110pcs'),
(6, '6kg'),
(7, '2kg'),
(8, '4pcs'),
(9, '70g'),
(10, '70pcs'),
(11, '60tab'),
(12, '1pcs'),
(13, '100g'),
(14, '250ml'),
(15, '900g'),
(16, '500ml'),
(17, '1set'),
(18, '90g'),
(19, '150g'),
(20, '50pcs'),
(21, '60sheet'),
(22, '192g'),
(23, '130ml'),
(24, '5ltr'),
(25, '25pcs'),
(26, 'Free Size'),
(27, 'One Size for All'),
(28, '15pcs'),
(29, '94gm'),
(30, '80pcs'),
(31, '500g'),
(32, '100tab'),
(33, '20ml'),
(34, '50tab'),
(35, '400ml'),
(36, '60pcs'),
(37, '85g'),
(38, '220g'),
(39, '15ml'),
(40, '9ml'),
(41, '2pcs'),
(42, '175ml'),
(43, '150ml'),
(44, '6pcs'),
(45, '12pcs'),
(46, '8pcs'),
(47, '100mg'),
(48, '75g'),
(49, '350ml'),
(50, '3kg'),
(51, '8kg'),
(52, '20kg'),
(53, '105g'),
(54, '40g'),
(55, '110g'),
(56, '130g'),
(57, '140g'),
(58, '6.5kg'),
(59, '1.02kg'),
(60, '50g'),
(61, '30g'),
(62, '110tab'),
(63, '10kg'),
(64, '300g'),
(65, '190g'),
(66, '95g'),
(67, '600g'),
(68, '35g'),
(69, '5kg'),
(70, '20g'),
(71, '10pcs'),
(72, '4kg'),
(73, '9kg'),
(74, '12kg'),
(75, '30ml'),
(76, '1.05kg'),
(77, '2.05kg'),
(78, '15kg'),
(79, '800g'),
(80, '100ml'),
(81, '4.8kg'),
(82, '17PCS'),
(83, '108g'),
(84, '270g'),
(85, '850g'),
(86, '60g'),
(87, '80g'),
(88, '125g'),
(89, '200ml'),
(90, '450ml'),
(91, '400g'),
(92, '120g'),
(93, '112g'),
(94, '200g'),
(95, '30tab'),
(96, '1tab'),
(97, '7kg'),
(98, '60bis'),
(99, '623g'),
(100, '50ml'),
(101, '5.6kg'),
(102, '180g'),
(103, '160g'),
(104, '123g'),
(105, '100pcs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(1, 'slider-1.jpg', 'Welcome to MyPetShop', 'Shop Online for Pets', 'Buy Cat Food', 'http://localhost/PHP-MySQL-ecommerce-website/product-category.php?id=9&type=mid-category', 'Center'),
(2, 'slider-2.jpg', '50% Discount on All Products', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Center'),
(3, 'slider-3.jpg', '24 Hours Customer Support', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has.', 'Read More', '#', 'Right');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/mypetshop52/', 'fa fa-facebook'),
(2, 'Twitter', '', 'fa fa-twitter'),
(3, 'LinkedIn', '', 'fa fa-linkedin'),
(4, 'Google Plus', '', 'fa fa-google-plus'),
(5, 'Pinterest', '', 'fa fa-pinterest'),
(6, 'YouTube', '', 'fa fa-youtube'),
(7, 'Instagram', 'https://www.instagram.com/mypetshop52/', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(11, 'dubey233310@gmail.com', '2021-12-04', '2021-12-04 10:31:19', 'd2fe5db0cad3380c799054a257d305bd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Dog', 1),
(2, 'Cat', 1),
(3, 'Others', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'Ram Gopal Dubey', 'dubey233310@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', 'user-1.png', 'Super Admin', 'Active'),
(13, 'Syed Hammad Hassan Bukhari', 'mc170200216@vu.edu.pk', '', '81dc9bdb52d04dc20036dbd8313ed055', 'user-13.jpg', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(1, 'Video 1', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/L3XAFSMdVWU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(2, 'Video 2', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/sinQ06YzbJI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>'),
(4, 'Video 3', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ViZNgU-Yt-Y\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  ADD PRIMARY KEY (`customer_message_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_customer_message`
--
ALTER TABLE `tbl_customer_message`
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=819;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=921;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1014;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
