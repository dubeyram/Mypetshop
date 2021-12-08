-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 02:50 PM
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
(213, 'BASIL WET WIPES', '350', '350', 80, 'product-featured-213.jpg', '', '', '', '', '', 0, 1, 0, 62);

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
(303, 21, 213);

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
(396, 30, 213);

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
(30, '80pcs');

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
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

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
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
