-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 01:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

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
(8, 'Product Shipped', 'Dear Customer,\r\n\r\nYour order has been shipped.\r\n\r\nLet us know when you have any question.\r\n\r\nBest regards,\r\nHammad Hassan', '\r\nCustomer Name: Hammad Hassan<br>\r\nCustomer Email: mc170200216@vu.edu.pk<br>\r\nPayment Method: PayPal<br>\r\nPayment Date: 2018-04-25 18:28:46<br>\r\nPayment Details: <br>\r\nTransaction Id: <br>\r\n        		<br>\r\nPaid Amount: 1<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1524666526<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Black Wool Beanie & Bobble Hat For Unisex<br>\r\nSize: <br>\r\nColor: Black<br>\r\nQuantity: 1<br>\r\nUnit Price: 1<br>\r\n            ', 5),
(9, 'Order', 'Order received', '\r\nCustomer Name: RamGopal<br>\r\nCustomer Email: dubey233310@gmail.com<br>\r\nPayment Method: Bank Deposit<br>\r\nPayment Date: 2021-12-12 12:14:18<br>\r\nPayment Details: <br>\r\nTransaction Details: <br>sda<br>\r\nPaid Amount: 550<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1639291458<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: DROOLS ABSOLUTE SALMON OIL SYRUP <br>\r\nSize: 300ml<br>\r\nColor: NO COLOR<br>\r\nQuantity: 1<br>\r\nUnit Price: 550<br>\r\n            ', 6);

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
(1, 'How to find an item on MyPetShop?', '<p style=\"box-sizing: inherit; text-rendering: optimizelegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4;\">We have a wide range of fabulous products to choose from.</p><ol><li style=\"box-sizing: inherit; text-rendering: optimizelegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4;\"><span style=\"\" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;\"=\"\">Tip 1: If you\'re looking for a specific product, use the keyword search box located at the top of the site. Simply type what you are looking for, and prepare to be amazed!</span></li><li style=\"box-sizing: inherit; text-rendering: optimizelegibility; margin: 0.2rem 0px 0.5rem; padding: 0px; line-height: 1.4;\">Tip 2: If you want to explore a category of products, use the Shop Categories in the upper menu, and navigate through your favorite categories where we\'ll feature the best products in each.</li></ol><p></p>\r\n'),
(2, 'What is your return policy?', '<p><span style=\"color: rgb(10, 10, 10); font-family: opensans, &quot;Helvetica Neue&quot;, Helvetica, Helvetica, Arial, sans-serif; font-size: 14px; text-align: center;\">Please make sure that you raise an exchange request within 1 days of the product delivery.<br>To initiate a return request, you can contact us at support@mypetshop.com or at 8851 164 459.</span><br></p>\r\n'),
(3, ' I received a defective/damaged item, can I get a refund?', '<p>In case the item you received is damaged or defective, you could return an item in the same condition as you received it with the original box and/or packaging intact. Once we receive the returned item, we will inspect it and if the item is found to be defective or damaged, we will process the refund along with any shipping fees incurred.<br></p>\r\n'),
(4, 'When are Returns not possible?', '<p>We will NOT accept returns or exchanges for the following items (unless received damaged or spoilt):</p><ol><li>Edible and perishable items like food, treats etc</li><li>Personalized products that are made to order</li><li>Beds, crates &amp; carriers</li><li>Dog Toys &amp; Cat Toys</li><li>Items purchased during sales</li><li>Face Masks</li><li>Dog Pads/Diapers</li><li>Medicines &amp; Supplements</li></ol><p>Returns and exchanges will also not be accepted in the following circumstances:</p><ol><li>If the request is initiated after 1 business day of order delivery</li><li>Product is used or altered</li><li>Product is damaged due to misuse/overuse by the customer</li><li>Returned attempted without original packaging including, price tags, labels, original packing, and other accessories or if original packaging is damaged</li><li>Items purchased at discounted prices are also not eligible for return/exchange</li></ol>'),
(5, 'Delivery TImeline', '<p style=\"margin-bottom: 20px; line-height: 1.4;\">Once an order is placed, it will be dispatched in 1-2 working hours. After shipping, delivery will take 1 business day.<br>Deliveries within Ardee City will be done within 24 hours from the date of order.\r\n\r\nPersonalised Orders may take 1-2 days for delivery.&nbsp;</p><p style=\"margin-bottom: 20px; color: rgb(123, 123, 123); font-size: 14px; line-height: 1.4; font-family: Nunito;\"></p>');

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
(50, 81, 'Black Wool Beanie & Bobble Hat For Unisex', '', 'Black', '1', '1', '1524666526'),
(51, 85, 'DROOLS ABSOLUTE SALMON OIL SYRUP ', '300ml', 'NO COLOR', '1', '550', '1639291458'),
(52, 85, 'DROOLS ABSOLUTE SALMON OIL SYRUP ', '300ml', 'NO COLOR', '1', '550', '1639293941'),
(53, 212, 'BASIL VEGETERIAN BISCUITS ', '1 kg', 'NO COLOR', '1', '200', '1639295505');

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
(1, 'About Us ', '<p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>MyPetShop</b>&nbsp;has made you shine on your special days specially for beautiful women. Our goal has always been to celebrate YOU! To get the best in you we brought a huge collection whether youâ€™re attending a party, wedding, and all those events that require a WOW dress.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>About Us</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>MyPetShop</b>&nbsp;is a new fashion shopping site which brings trendy fashion products at addictive prices. We feel fashion is not what you wear but how you feel, so Keeping this in mind, we brought you the designer wear clothing comprising a wide range of designs, style and prints to meet your every mood, whim and fancy.</span></font></p><p style=\"text-align: justify; \"><span style=\"font-size: 14px; font-family: apercu, Arial, sans-serif;\"><b>Our Vision</b></span><br></p><p style=\"text-align: justify; \"><span style=\"font-size: 14px; font-family: apercu, Arial, sans-serif;\">Our vision is to â€œIntroduce the beauty in you with your beautiful smileâ€ to the world with the best online shopping experience. Weâ€™ve the handpicked collection of clothes for women to suit them based on their body type, skin tone, budget and style preferences. We aim to bring our customers a wholesome real time trendy shopping experience, providing them with all the information they need regarding fit, comfort, fabric and everything else on their mind for each and every product in our collections, through size charts. Also, includes introducing new designs, styles and categories along with all the fashion happening.</span><br></p><p style=\"text-align: justify; \"><span style=\"font-weight: 700; font-family: apercu, Arial, sans-serif; font-size: 14px;\">Why&nbsp;</span><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>MyPetShop</b>?</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>MyPetShop</b>&nbsp;has a large collection of sarees, kurta kurtis, dress material, dresses, tops, leggings and more. All the collection on our site is completely designer wear upgrading with new trends and look in the market with the largest catalogue of womenâ€™s fashion. We keep enhancing our technology and product assortment to ensure that you get the most delightful shopping experience by every woman.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">We make sure you get the best quality outfits with hassle free returns and exchanges policy. We ensure what you see is exactly what you get!</span></font></p><ul><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Low Price Guarantee</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">If you find a lower price on any dress we carry online, we will match it!</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">24/7 Customer Support</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">E-Mail â™¥ Text â™¥ Call</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">We are here for you 24/7 online and via phone.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Sizing &amp; Color</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">We carry an array of colors and sizes.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Worldwide Shipping</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Unfortunately, No. Weâ€™re providing our service only throughout India.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Weâ€™d love to expand our business Internationally soon.</span></font></li><li style=\"text-align: justify;\"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Easy Returns</span></font></li></ul><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">Bought an outfit but want to return it? We have a 3 days easy return policy. Please mail us at support@MyPetShop&nbsp;for more details.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Dream Dresses for Every Occasion</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">MyPetShop&nbsp;carries all carefully handpicked by our stylists. If youâ€™re interested in a particular model please mail us we will try our best to offer you the loved dress.</span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\"><b>Verified Security</b></span></font></p><p style=\"text-align: justify; \"><font face=\"apercu, Arial, sans-serif\"><span style=\"font-size: 14px;\">All our transactions are Verified by Norton and with the highest standards of security.Plus, there is a lot to go around too through regular exciting offers and gifts, so spread the word and refer us to everyone from your family, friends and colleagues and get rewarded for it. And to top it all, you can share your user experience by posting reviews. Donâ€™t wait any longer Sign up with us now! start stalking, start buying and start loving and start Introducing the beauty in you.</span></font></p>\r\n', 'about-banner.jpg', 'MyPetShop - About Us', 'about, about us, about fashion, about company, about fashionys', 'MyPetShop has made you shine on your special days specially for beautiful women. Our goal has always been to celebrate YOU! To get the best in you we brought a huge collection whether youâ€™re attending a party, wedding, and all those events that require a WOW dress.', 'FAQ', 'faq-banner.jpg', 'MyPetShop - FAQ', '', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contact Us', 'contact-banner.jpg', 'MyPetShop - Contact', '', '', 'Photo Gallery', 'pgallery-banner.jpg', 'Ecommerce - Photo Gallery', '', '', 'Video Gallery', 'vgallery-banner.jpg', 'Ecommerce - Video Gallery', '', '');

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
(46, 5, 'Hammad Hassan', 'mc170200216@vu.edu.pk', '2018-04-25 18:28:46', '', 1, '', '', '', '', '', 'PayPal', 'Completed', 'Completed', '1524666526'),
(51, 6, 'RamGopal', 'dubey233310@gmail.com', '2021-12-12 12:14:18', '', 550, '', '', '', '', 'sda', 'Bank Deposit', 'Completed', 'Completed', '1639291458'),
(52, 6, 'RamGopal', 'dubey233310@gmail.com', '2021-12-12 12:55:41', '', 550, '', '', '', '', 'fef', 'Bank Deposit', 'Completed', 'Completed', '1639293941'),
(53, 6, 'RamGopal', 'dubey233310@gmail.com', '2021-12-12 13:21:45', '', 200, '', '', '', '', 'Checkquanity', 'Bank Deposit', 'Completed', 'Completed', '1639295505');

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
(85, 'DROOLS ABSOLUTE SALMON OIL SYRUP ', '550', '550', 300, 'product-featured-85.png', '', '', '', '', '', 1, 1, 1, 12),
(86, ' DROOLS ABSOLUTE VITAMINS SYRUP ', '299', '299', 300, 'product-featured-86.jpg', '', '', '', '', '', 0, 1, 1, 12),
(87, ' DROOLS ABSOLUTE VITAMINS TAB', '449', '449', 110, 'product-featured-87.jpg', '', '', '', '', '', 0, 1, 1, 12),
(88, 'ACANA  ADULT LARGE BREED ', '5846.61', '5846.61', 11, 'product-featured-88.jpg', '', '', '', '', '', 0, 1, 1, 2),
(89, 'ACANA ADULT LARGE BREED ', '5846.61', '5846.61', 11, 'product-featured-89.jpg', '', '', '', '', '', 0, 1, 1, 2),
(90, 'ACANA FREE RUN DUCK ', '349', '349', 340, 'product-featured-90.jpg', '', '', '', '', '', 0, 1, 1, 2),
(91, 'ACANA GRASS FED LAMB ', '3999', '3999', 6, 'product-featured-91.jpg', '', '', '', '', '', 0, 1, 1, 2),
(92, 'ACANA LIGHT AND FIT ', '6899', '6899', 11, 'product-featured-92.jpg', '', '', '', '', '', 0, 1, 1, 2),
(93, 'ACANA PRAIRIE POULTRY ', '6199', '6199', 11, 'product-featured-93.jpg', '', '', '', '', '', 0, 1, 1, 2),
(94, 'ACANA PRAIRIE POULTRY ', '1499', '1499', 2, 'product-featured-94.jpg', '', '', '', '', '', 0, 1, 1, 2),
(95, 'ACANA PRAIRIE POULTRY ', '299', '299', 340, 'product-featured-95.jpg', '', '', '', '', '', 0, 1, 1, 2),
(96, 'ACANA PRAIRIE POULTRY ', '3699', '3699', 6, 'product-featured-96.jpg', '', '', '', '', '', 0, 1, 1, 2),
(97, 'ACANA PUPPY AND JUNIOR ', '1499', '1499', 2, 'product-featured-97.jpg', '', '', '', '', '', 0, 1, 1, 2),
(98, 'ACANA PUPPY AND JUNIOR ', '349', '349', 340, 'product-featured-98.jpg', '', '', '', '', '', 0, 1, 1, 2),
(99, 'ACANA PUPPY SMALL BREED ', '1599', '1599', 2, 'product-featured-99.jpg', '', '', '', '', '', 0, 1, 1, 2),
(100, 'ACANA PUPPY SMALL BREED ', '349', '349', 340, 'product-featured-100.jpg', '', '', '', '', '', 1, 1, 1, 2),
(101, 'ACANA PUPPY&JUNIOR SMALL', '1899', '1899', 2, 'product-featured-101.jpg', '', '', '', '', '', 0, 1, 1, 2),
(102, 'ACANA PUPPY&JUNIOR-LARGE ', '6185.59', '6185.59', 11, 'product-featured-102.jpg', '', '', '', '', '', 0, 1, 1, 2),
(103, 'ACANA WILD COAST ', '299', '299', 340, 'product-featured-103.jpg', '', '', '', '', '', 0, 1, 1, 2),
(104, 'ALL DOG  HAPPY BISCUITS ADULT ', '150', '150', 1, 'product-featured-104.jpg', '', '', '', '', '', 0, 1, 1, 177),
(105, 'ALL DOG HAPPY BISCUIT PUPPY ', '150', '150', 1, 'product-featured-105.jpg', '', '', '', '', '', 0, 1, 1, 177),
(106, ' APPLAWS CAT TIN CHICKEN BREAST ', '135', '135', 70, 'product-featured-106.jpg', '', '', '', '', '', 0, 1, 1, 91),
(107, 'APPLAWS CAT TIN KITTEN CHICKEN BREAST ', '135', '135', 70, 'product-featured-107.jpg', '', '', '', '', '', 0, 1, 1, 91),
(108, ' APPLAWS CAT TIN TUNA FILLET ', '135', '135', 70, 'product-featured-108.jpg', '', '', '', '', '', 0, 1, 1, 91),
(109, 'APPLAWS CAT TIN KITTEN CHICKEN BREAST ', '135', '135', 70, 'product-featured-109.jpg', '', '', '', '', '', 0, 1, 1, 91),
(110, 'ANIMALL PET WIPES  180*200MM', '350', '350', 70, 'product-featured-110.jpg', '', '', '', '', '', 0, 1, 1, 188),
(111, 'HIMALAYA ANXOCARE TAB ', '140', '140', 60, 'product-featured-111.jpg', '', '', '', '', '', 0, 1, 1, 15),
(112, 'APPLAWS CAT POUCH  CHICKEN&PUMPKIN &WILD RICE ', '150', '150', 70, 'product-featured-112.jpg', '', '', '', '', '', 0, 1, 1, 91),
(113, 'APPLAWS CAT POUCH CHICKEN BREAST WITH LIVER IN TASTY JELLY ', '150', '150', 70, 'product-featured-113.jpg', '', '', '', '', '', 0, 1, 1, 91),
(114, 'APPLAWS CAT POUCH TENDER TUNA WITH MACKEREL IN A TASTY JELLY ', '150', '150', 70, 'product-featured-114.jpg', '', '', '', '', '', 0, 1, 1, 91),
(115, 'APPLAWS CAT POUCH TUNA FILLET WITH PACIFIC PRAWNS ', '150', '150', 70, 'product-featured-115.jpg', '', '', '', '', '', 0, 1, 1, 91),
(116, 'APPLAWS CAT POUCH TUNA FILLET WITH WHOLE  ANCHOVY ', '150', '150', 70, 'product-featured-116.jpg', '', '', '', '', '', 0, 1, 1, 91),
(117, 'APPLAWS CAT POUCH TUNA WITH SALMON IN A TASTY JELLY ', '150', '150', 70, 'product-featured-117.jpg', '', '', '', '', '', 0, 1, 1, 91),
(118, 'APPLAWS CAT TIN CHICKEN BREAST WITH MANGO ', '135', '135', 70, 'product-featured-118.jpg', '', '', '', '', '', 0, 1, 1, 91),
(119, 'APPLAWS CAT TIN OCEAN FISH ', '135', '135', 70, 'product-featured-119.jpg', '', '', '', '', '', 0, 1, 1, 91),
(120, 'APPLAWS CAT TIN SARDINE WITH SHRIMP IN A TESTY JELLY ', '135', '135', 70, 'product-featured-120.jpg', '', '', '', '', '', 0, 1, 1, 91),
(121, 'APPLAWS CAT TIN TUNA WITH CRAB ', '135', '135', 70, 'product-featured-121.jpg', '', '', '', '', '', 0, 1, 1, 91),
(122, 'APPLAWS TUNA FILLET WITH PACIFIC PRAWN  POUCH', '150', '150', 70, 'product-featured-122.jpg', '', '', '', '', '', 0, 1, 1, 91),
(123, 'ARDEN GRANGE PUPPY /JUNIOR LARGE BREED ', '1370', '1370', 2, 'product-featured-123.jpg', '', '', '', '', '', 0, 1, 1, 5),
(124, 'AUTO CLEAN PET BRUSHES', '575', '575', 1, 'product-featured-124.jpg', '', '', '', '', '', 0, 1, 1, 183),
(125, 'BASIL  ANTI DANDRUFF SHAMPOO ', '275', '275', 250, 'product-featured-125.jpg', '', '', '', '', '', 0, 1, 1, 73),
(126, 'BASIL  BALL', '240', '240', 1, 'product-featured-126.jpg', '', '', '', '', '', 0, 1, 1, 84),
(127, 'BASIL  BISCUIT ADULT ', '200', '200', 900, 'product-featured-127.jpg', '', '', '', '', '', 0, 1, 1, 62),
(128, 'BASIL  NO TICKS ', '275', '275', 250, 'product-featured-128.jpg', '', '', '', '', '', 0, 1, 1, 73),
(129, 'BASIL  PAD HARNESH MEDIUM ', '375', '375', 1, 'product-featured-129.jpg', '', '', '', '', '', 0, 1, 1, 84),
(130, 'BASIL  TOWEL', '425', '425', 1, 'product-featured-130.jpg', '', '', '', '', '', 0, 1, 1, 84),
(131, 'BASIL 360 CALCIUM MILK ', '200', '200', 900, 'product-featured-131.jpg', '', '', '', '', '', 0, 1, 1, 7),
(132, 'BASIL ADULT BISCUIT ', '200', '200', 900, 'product-featured-132.jpg', '', '', '', '', '', 0, 1, 1, 7),
(133, 'BASIL ANTI DANDRUFF ', '500', '500', 500, 'product-featured-133.jpg', '', '', '', '', '', 0, 1, 1, 73),
(134, 'BASIL ANTI DANDRUFF SHAMPOO ', '275', '275', 250, 'product-featured-134.jpg', '', '', '', '', '', 0, 1, 1, 73),
(135, 'BASIL BOWL', '575', '575', 1, 'product-featured-135.jpg', '', '', '', '', '', 0, 1, 1, 84),
(136, 'BASIL BOWL  MELAMINE PRINT', '650', '650', 1, 'product-featured-136.jpg', '', '', '', '', '', 0, 1, 1, 84),
(137, 'BASIL BOWL ELEVATED EAROUT RS-899', '899', '899', 1, 'product-featured-137.jpg', '', '', '', '', '', 0, 1, 1, 84),
(138, 'BASIL BOWL LARGE', '650', '650', 1, 'product-featured-138.jpg', '', '', '', '', '', 0, 1, 1, 84),
(139, 'BASIL BOWL LARGE SET', '900', '900', 1, 'product-featured-139.jpg', '', '', '', '', '', 0, 1, 1, 84),
(140, 'BASIL BOWL MEDIUM', '400', '400', 1, 'product-featured-140.jpg', '', '', '', '', '', 0, 1, 1, 84),
(141, 'BASIL BOWL MEDIUM S', '500', '500', 1, 'product-featured-141.jpg', '', '', '', '', '', 0, 1, 1, 84),
(142, 'BASIL BOWL ML PRINT SMALL ', '300', '300', 1, 'product-featured-142.jpg', '', '', '', '', '', 0, 1, 1, 84),
(143, 'BASIL BOWL ML PRINT SMALL ', '300', '300', 1, 'product-featured-143.jpg', '', '', '', '', '', 0, 1, 1, 84),
(144, 'BASIL BOWL ML PRINT XS RS- 250', '250', '250', 1, 'product-featured-144.jpg', '', '', '', '', '', 0, 1, 1, 84),
(145, 'BASIL BOWL S.STEEL MEDIUM RS-250', '250', '250', 1, 'product-featured-145.jpg', '', '', '', '', '', 0, 1, 1, 84),
(146, 'BASIL BOWL S.STEEL RS-250', '250', '250', 1, 'product-featured-146.jpg', '', '', '', '', '', 0, 1, 1, 84),
(147, 'BASIL BOWL S.STEEL SMALL RS-200', '200', '200', 1, 'product-featured-147.jpg', '', '', '', '', '', 0, 1, 1, 84),
(148, 'BASIL BOWL SET MEDIUM', '575', '575', 1, 'product-featured-148.jpg', '', '', '', '', '', 0, 1, 1, 84),
(149, 'BASIL BOWL SET SMALL', '400', '400', 1, 'product-featured-149.jpg', '', '', '', '', '', 0, 1, 1, 84),
(150, 'BASIL BOWL SMALL', '250', '250', 1, 'product-featured-150.jpg', '', '', '', '', '', 0, 1, 1, 84),
(151, 'BASIL CALCIUM BONE CHEWY ', '200', '200', 100, 'product-featured-151.jpg', '', '', '', '', '', 0, 1, 1, 23),
(152, 'BASIL CALCIUM MILK CHEWY BONE 360 DENTAL CHEWA ', '200', '200', 90, 'product-featured-152.jpg', '', '', '', '', '', 0, 1, 1, 29),
(153, 'BASIL CAT SHAMPOO ', '400', '400', 300, 'product-featured-153.jpg', '', '', '', '', '', 0, 1, 1, 73),
(154, 'BASIL CONDITIONER', '525', '525', 300, 'product-featured-154.jpg', '', '', '', '', '', 0, 1, 1, 73),
(155, 'BASIL CONDITIONER ', '525', '525', 300, 'product-featured-155.jpg', '', '', '', '', '', 0, 1, 1, 73),
(156, 'BASIL DAILY FLOSS 150GM', '350', '350', 150, 'product-featured-156.jpg', '', '', '', '', '', 0, 1, 1, 7),
(157, 'BASIL DESHEDDING COMB', '750', '750', 1, 'product-featured-157.jpg', '', '', '', '', '', 0, 1, 1, 84),
(158, 'BASIL DINNER SET LARGE ', '900', '900', 1, 'product-featured-158.jpg', '', '', '', '', '', 0, 1, 1, 84),
(159, 'BASIL DINNER SET SMALL ', '400', '400', 1, 'product-featured-159.jpg', '', '', '', '', '', 0, 1, 1, 84),
(160, 'BASIL FEATHER STCK WITH BELL ', '225', '225', 1, 'product-featured-160.jpg', '', '', '', '', '', 0, 1, 1, 84),
(161, 'BASIL FRESH BREATH 360 DENTAL CHEWS ', '200', '200', 90, 'product-featured-161.jpg', '', '', '', '', '', 0, 1, 1, 29),
(162, 'BASIL GERMI SAFE WIPES ', '375', '375', 50, 'product-featured-162.jpg', '', '', '', '', '', 0, 1, 1, 73),
(163, 'BASIL LINT ROLLER ', '250', '250', 60, 'product-featured-163.jpg', '', '', '', '', '', 0, 1, 1, 73),
(164, 'BASIL LOLLIPOP WITH CHICKEN', '250', '250', 192, 'product-featured-164.jpg', '', '', '', '', '', 0, 1, 1, 62),
(165, 'BASIL MILK BONE', '200', '200', 90, 'product-featured-165.jpg', '', '', '', '', '', 0, 1, 1, 29),
(166, 'BASIL MOUTH FREHNER', '250', '250', 130, 'product-featured-166.jpg', '', '', '', '', '', 0, 1, 1, 73),
(167, 'BASIL MOUTH FRESHENING SPRAY CINNAMON ', '250', '250', 130, 'product-featured-167.jpg', '', '', '', '', '', 0, 1, 1, 73),
(168, 'BASIL MOUTHFREHNER', '250', '250', 130, 'product-featured-168.jpg', '', '', '', '', '', 0, 1, 1, 73),
(169, 'BASIL NO TICK SHAMPOO ', '275', '275', 250, 'product-featured-169.jpg', '', '', '', '', '', 0, 1, 1, 73),
(170, 'BASIL NO TICKS ', '500', '500', 500, 'product-featured-170.jpg', '', '', '', '', '', 0, 1, 1, 73),
(171, 'BASIL NON VEGETARIAN BONE SHAPPED ADULT  BISCUTS ', '200', '200', 1, 'product-featured-171.jpg', '', '', '', '', '', 0, 1, 1, 62),
(172, 'BASIL NON VEGETARIAN BONE SHAPPED PUPPY BISCUTS ', '200', '200', 1, 'product-featured-172.jpg', '', '', '', '', '', 0, 1, 1, 62),
(173, 'BASIL NON VEGETARIAN ROUND SHAPPEDF PUPPYU BISCUITS ', '200', '200', 1, 'product-featured-173.jpg', '', '', '', '', '', 0, 1, 1, 62),
(174, 'BASIL NUTTY BUDDY PEANUT BETTER', '225', '225', 250, 'product-featured-174.jpg', '', '', '', '', '', 0, 1, 1, 7),
(175, 'BASIL OAT& ALOVERA ', '275', '275', 250, 'product-featured-175.jpg', '', '', '', '', '', 0, 1, 1, 73),
(176, 'BASIL OAT&ALOVERA ', '500', '500', 500, 'product-featured-176.jpg', '', '', '', '', '', 0, 1, 1, 73),
(177, 'BASIL PAD COLLER  LARGE', '250', '250', 1, 'product-featured-177.jpg', '', '', '', '', '', 0, 1, 1, 84),
(178, 'BASIL PAD COLLER  M', '200', '200', 1, 'product-featured-178.jpg', '', '', '', '', '', 0, 1, 1, 84),
(179, 'BASIL PAD COLLER SMALL', '150', '150', 1, 'product-featured-179.jpg', '', '', '', '', '', 0, 1, 1, 84),
(180, 'BASIL PAD HARNESH LARGE', '475', '475', 1, 'product-featured-180.jpg', '', '', '', '', '', 0, 1, 1, 84),
(181, 'BASIL PAD HARNESH MEDIUM ', '375', '375', 1, 'product-featured-181.jpg', '', '', '', '', '', 0, 1, 1, 84),
(182, 'BASIL PAD HARNESH SMALL ', '275', '275', 1, 'product-featured-182.jpg', '', '', '', '', '', 0, 1, 1, 84),
(183, 'BASIL PAD HARNESH XL ', '575', '575', 1, 'product-featured-183.jpg', '', '', '', '', '', 0, 1, 1, 84),
(184, 'BASIL PAD LEASH LARGE ', '325', '325', 1, 'product-featured-184.jpg', '', '', '', '', '', 0, 1, 1, 84),
(185, 'BASIL PAD LEASH MEDIUM ', '275', '275', 1, 'product-featured-185.jpg', '', '', '', '', '', 0, 1, 1, 84),
(186, 'BASIL PAD COLLER L MR', '250', '250', 1, 'product-featured-186.jpg', '', '', '', '', '', 0, 1, 1, 84),
(187, 'BASIL PAD COLLAR M ', '200', '200', 1, 'product-featured-187.jpg', '', '', '', '', '', 0, 1, 1, 84),
(188, 'BASIL PAD COLLAR S', '150', '150', 1, 'product-featured-188.jpg', '', '', '', '', '', 0, 1, 1, 84),
(189, 'BASIL PAD COLLAR XL ', '300', '300', 1, 'product-featured-189.jpg', '', '', '', '', '', 0, 1, 1, 84),
(190, 'BASIL PAD HARNESS M ', '350', '350', 1, 'product-featured-190.jpg', '', '', '', '', '', 0, 1, 1, 84),
(191, 'BASIL PAD LEASE S ', '225', '225', 1, 'product-featured-191.jpg', '', '', '', '', '', 0, 1, 1, 84),
(192, 'BASIL PAD LEASE XL ', '550', '550', 1, 'product-featured-192.jpg', '', '', '', '', '', 0, 1, 1, 84),
(193, 'BASIL PERFUME GARDEN FRESH ', '250', '250', 130, 'product-featured-193.jpg', '', '', '', '', '', 0, 1, 1, 84),
(194, 'BASIL PERFUME WOODY WALK ', '250', '250', 130, 'product-featured-194.jpg', '', '', '', '', '', 0, 1, 1, 84),
(195, 'BASIL PUPPY BISCUITS ', '200', '200', 900, 'product-featured-195.jpg', '', '', '', '', '', 0, 1, 1, 62),
(196, 'BASIL ROUND BISCUITS ', '200', '200', 1, 'product-featured-196.jpg', '', '', '', '', '', 0, 1, 1, 62),
(197, 'BASIL SILKY SOFT ', '275', '275', 250, 'product-featured-197.jpg', '', '', '', '', '', 0, 1, 1, 73),
(198, 'BASIL SILKY SOFT ', '500', '500', 500, 'product-featured-198.jpg', '', '', '', '', '', 0, 1, 1, 73),
(199, 'BASIL SILKY SOFT SHAMPOO ', '3700', '3700', 5, 'product-featured-199.jpg', '', '', '', '', '', 0, 1, 1, 73),
(200, 'BASIL SOFTY PAW BUTTER', '275', '275', 1, 'product-featured-200.jpg', '', '', '', '', '', 0, 1, 1, 73),
(201, 'BASIL TOWEL', '425', '425', 1, 'product-featured-201.jpg', '', '', '', '', '', 0, 1, 1, 84),
(202, 'BASIL TOY PLUSH BIRD ', '500', '500', 1, 'product-featured-202.jpg', '', '', '', '', '', 0, 1, 1, 84),
(203, 'BASIL TOY PLUSH ROPE', '450', '450', 1, 'product-featured-203.jpg', '', '', '', '', '', 0, 1, 1, 84),
(205, 'BASIL TOY RING ', '175', '175', 1, 'product-featured-205.jpg', '', '', '', '', '', 0, 1, 1, 40),
(206, 'BASIL TOY SQUEEKY BALL ', '250', '250', 1, 'product-featured-206.jpeg', '', '', '', '', '', 0, 1, 1, 40),
(207, 'BASIL TOY TREAT BALL ', '275', '275', 1, 'product-featured-207.jpg', '', '', '', '', '', 0, 1, 1, 40),
(208, 'BASIL TOY TYRE ', '400', '400', 1, 'product-featured-208.jpg', '', '', '', '', '', 0, 1, 1, 40),
(209, 'BASIL TRAINING PADS 60*45CMS', '650', '650', 25, 'product-featured-209.jpg', '', '', '', '', '', 0, 1, 1, 84),
(210, 'BASIL TRAINING PADS LARGE  60*60CMS', '550', '550', 15, 'product-featured-210.jpg', '', '', '', '', '', 0, 1, 1, 84),
(211, 'BASIL TURTLES WITH CHICKEN', '250', '250', 94, 'product-featured-211.jpg', '', '', '', '', '', 0, 1, 1, 7),
(212, 'BASIL VEGETERIAN BISCUITS ', '200', '200', 1, 'product-featured-212.jpg', '', '', '', '', '', 0, 1, 1, 62),
(213, 'BASIL WET WIPES', '350', '350', 80, 'product-featured-213.jpg', '', '', '', '', '', 0, 1, 1, 62),
(214, 'BEAPHAR ACTIVE PRO BIOTIC ', '990', '990', 500, 'product-featured-214.jpg', '', '', '', '', '', 0, 1, 1, 177),
(215, 'beaphar black coat aloe vera dog shampoo ', '370', '370', 250, 'product-featured-215.jpg', '', '', '', '', '', 0, 1, 1, 183),
(216, 'BEAPHAR BONE BUILDER 500G', '740', '740', 500, 'product-featured-216.jpg', '', '', '', '', '', 0, 1, 1, 177),
(217, 'BEAPHAR BROWN COAT SHAMPOO ', '390', '390', 250, 'product-featured-217.jpg', '', '', '', '', '', 0, 1, 1, 183),
(218, 'BEAPHAR CONDITIONER CAT&DOG ', '370', '370', 250, 'product-featured-218.jpg', '', '', '', '', '', 0, 1, 1, 183),
(219, 'BEAPHAR HD TABLETS ', '1400', '1400', 100, 'product-featured-219.jpg', '', '', '', '', '', 0, 1, 1, 178),
(220, 'BEAPHAR KALK CALCIUM TAB', '295', '295', 60, 'product-featured-220.jpg', '<p>no</p>', '', '', '', '', 0, 1, 1, 178),
(221, 'BEAPHAR PUPPY SHAMPOO MACADAMIA OIL ', '390', '390', 250, 'product-featured-221.jpg', '', '', '', '', '', 0, 1, 1, 183),
(222, 'BEAPHAR PUPPY TRAINER ', '580', '580', 20, 'product-featured-222.png', '', '', '', '', '', 0, 1, 1, 183),
(223, 'BEAPHAR SHAMPOO CATS ', '390', '390', 250, 'product-featured-223.jpg', '', '', '', '', '', 0, 1, 1, 188),
(224, 'BEAPHAR TOOTH GEL DOG/CAT -', '830', '830', 100, 'product-featured-224.jpg', '', '', '', '', '', 0, 1, 1, 183),
(225, 'BEAPHAR TOP 10 ', '220', '220', 60, 'product-featured-225.png', '', '', '', '', '', 0, 1, 1, 178),
(226, 'BEAPHAR TOP 10 MULTI VITAMIN ', '220', '220', 60, 'product-featured-226.jpg', '', '', '', '', '', 0, 1, 1, 178),
(227, 'BEAPHAR TOP 10 MULTI VITAMIN TABLETS ', '220', '220', 60, 'product-featured-227.jpg', '', '', '', '', '', 0, 1, 1, 178),
(228, 'BEAPHER HD TAB', '1400', '1400', 50, 'product-featured-228.jpg', '', '', '', '', '', 0, 1, 1, 178),
(229, 'BEAPHER ODOUR ELIMINATOR ', '950', '950', 400, 'product-featured-229.jpg', '', '', '', '', '', 0, 1, 1, 183),
(230, 'BEAPHER PUPPY SHAMPOO VALP ', '390', '390', 250, 'product-featured-230.jpg', '', '', '', '', '', 0, 1, 1, 183),
(231, 'BEAPHER TOOTHPASTE', '350', '350', 100, 'product-featured-231.jpg', '', '', '', '', '', 0, 1, 1, 183),
(232, 'BEAPHER WHITE COAT SHAMPOO ', '390', '390', 250, 'product-featured-232.jpg', '', '', '', '', '', 0, 1, 1, 183),
(233, 'BECO DEGRADABLE POOP BAGS STANDARD (4*60)', '549', '549', 60, 'product-featured-233.png', '', '', '', '', '', 0, 1, 1, 183),
(234, 'BECO LITTER TRAY -BLUE STANDARD', '999', '999', 1, 'product-featured-234.png', '', '', '', '', '', 0, 1, 1, 86),
(235, 'BECO LITTER TRAY -PINK  STANDARD', '999', '999', 1, 'product-featured-235.png', '', '', '', '', '', 0, 1, 1, 86),
(236, 'BELLOTTA  TUNA &CHICKEN ', '50', '50', 85, 'product-featured-236.png', '', '', '', '', '', 0, 1, 1, 185),
(237, 'BELLOTTA MACKEREL GRAVY ', '50', '50', 85, 'product-featured-237.png', '', '', '', '', '', 0, 1, 1, 185),
(238, 'BELLOTTA TUNA  GRAVY  ', '50', '50', 85, 'product-featured-238.png', '', '', '', '', '', 0, 1, 1, 185),
(239, 'BELLOTTA TUNA IN GRAVY ', '90', '90', 85, 'product-featured-239.png', '', '', '', '', '', 0, 1, 1, 185),
(240, 'BELLOTTA TUNA&SALMON CAT WED FOOD ', '50', '50', 85, 'product-featured-240.png', '', '', '', '', '', 0, 1, 1, 185),
(241, 'BIOLINE  DENTAL CARE SET', '385', '385', 1, 'product-featured-241.png', '', '', '', '', '', 0, 1, 1, 74),
(242, 'BIOLINE  FOAM SHAMPOO ', '285', '285', 220, 'product-featured-242.jpg', '', '', '', '', '', 0, 1, 1, 74),
(243, 'BIOLINE DEODORIZING SPRAY ', '385', '385', 500, 'product-featured-243.jpg', '', '', '', '', '', 0, 1, 1, 74),
(244, 'BIOLINE DOG PERFIUM', '175', '175', 9, 'product-featured-244.jpeg', '', '', '', '', '', 0, 1, 1, 74),
(245, 'BIOLINE DRY CLEAN POWDER  SHAMPOO', '220', '220', 220, 'product-featured-245.jpeg', '', '', '', '', '', 0, 1, 1, 74),
(246, 'BIOLINE FINGER BRUSH SET ', '145', '145', 2, 'product-featured-246.jpg', '', '', '', '', '', 0, 1, 1, 74),
(247, 'BIOLINE KEEP OFF SPRAY FOR CAT ', '365', '365', 175, 'product-featured-247.jpg', '', '', '', '', '', 0, 1, 1, 129),
(248, 'BIOLINE PAW CLEANER', '400', '400', 150, 'product-featured-248.jpg', '', '', '', '', '', 0, 1, 1, 74),
(249, 'BIOLINE PAW CLEANING FOAM ', '375', '375', 150, 'product-featured-249.jpg', '', '', '', '', '', 0, 1, 1, 74),
(250, 'BIOLINE PERFIUM', '175', '175', 9, 'product-featured-250.jpg', '', '', '', '', '', 0, 1, 1, 74),
(251, 'BIOLINE PERFUME', '175', '175', 9, 'product-featured-251.jpg', '', '', '', '', '', 0, 1, 1, 74),
(252, 'BIOLINE PET ROLLER', '250', '250', 60, 'product-featured-252.jpg', '', '', '', '', '', 0, 1, 1, 74),
(253, 'BIOLINE PET TOWEL ', '495', '495', 1, 'product-featured-253.jpg', '', '', '', '', '', 0, 1, 1, 74),
(254, 'BIOLINE PUPPY TRAINER', '185', '185', 20, 'product-featured-254.jpg', '', '', '', '', '', 0, 1, 1, 74),
(255, 'BIOLINE TOOTHBRUSH ', '145', '145', 2, 'product-featured-255.jpg', '', '', '', '', '', 0, 1, 1, 74),
(256, 'BIOLINE TOOTHBRUSH SET ', '175', '175', 4, 'product-featured-256.jpg', '', '', '', '', '', 0, 1, 1, 74),
(257, 'BIOLINE TOOTHBRUSH SINGLE', '45', '45', 1, 'product-featured-257.jpg', '', '', '', '', '', 0, 1, 1, 74),
(258, 'BIOLINE TOWEL 66*43CM ', '495', '495', 1, 'product-featured-258.jpg', '', '', '', '', '', 0, 1, 1, 74),
(259, 'BITE &PULL DOG TOY ', '550', '550', 1, 'product-featured-259.jpg', '', '', '', '', '', 0, 1, 1, 180),
(260, 'BLACK MONSTER &RED BONE 2 COMBO', '670', '670', 1, 'product-featured-260.jpg', '', '', '', '', '', 0, 1, 1, 177),
(261, 'BLUE EQUEKEE DIMAND BALL', '430', '430', 1, 'product-featured-261.jpg', '', '', '', '', '', 0, 1, 1, 180),
(262, 'KRYPTO BONE 10', '200', '200', 1, 'product-featured-262.jpg', '', '', '', '', '', 0, 1, 1, 65),
(263, 'KRYPTO BONE 10\" ', '220', '220', 1, 'product-featured-263.jpg', '', '', '', '', '', 0, 1, 1, 10),
(264, 'KRYPTO  BONE 12\" ', '330', '330', 1, 'product-featured-264.jpg', '', '', '', '', '', 0, 1, 1, 10),
(265, 'KRYPTO BONE 3\" ', '550', '550', 1, 'product-featured-265.jpg', '', '', '', '', '', 0, 1, 1, 10),
(266, 'KRYPTO  BONE 3\" ', '600', '600', 1, 'product-featured-266.jpg', '', '', '', '', '', 0, 1, 1, 10),
(267, 'KRYPTO BONE 3\" ', '350', '350', 500, 'product-featured-267.jpg', '', '', '', '', '', 0, 1, 1, 10),
(268, 'KRYPTO BONE 3\" ', '150', '150', 6, 'product-featured-268.jpg', '', '', '', '', '', 0, 1, 1, 10),
(269, 'KRYPTO BONE 3\"', '350', '350', 500, 'product-featured-269.jpg', '', '', '', '', '', 0, 1, 1, 10),
(270, 'KRYPTO BONE 4\" ', '350', '350', 12, 'product-featured-270.jpg', '', '', '', '', '', 0, 1, 1, 10),
(271, 'KRYPTO BONE 4\" ', '150', '150', 4, 'product-featured-271.jpg', '', '', '', '', '', 0, 1, 1, 10),
(272, ' KRYPTO BONE 4\" ', '250', '250', 8, 'product-featured-272.jpg', '', '', '', '', '', 0, 1, 1, 10),
(273, 'KRYPTO BONE 4\"', '510', '510', 1, 'product-featured-273.jpg', '', '', '', '', '', 0, 1, 1, 10),
(274, 'KRYPTO BONE 4\"', '180', '180', 4, 'product-featured-274.jpg', '', '', '', '', '', 0, 1, 1, 10),
(275, 'KRYPTO  bone 5\"', '280', '280', 4, 'product-featured-275.jpg', '', '', '', '', '', 0, 1, 1, 10),
(276, 'KRYPTO  BONE 5\" ', '500', '500', 1, 'product-featured-276.jpg', '', '', '', '', '', 0, 1, 1, 10),
(277, 'KRYPTO BONE 5\" 1KG ', '490', '490', 1, 'product-featured-277.jpg', '', '', '', '', '', 0, 1, 1, 10),
(278, 'KRYPTO  BONE 5\" ', '180', '180', 4, 'product-featured-278.jpg', '', '', '', '', '', 0, 1, 1, 10),
(279, 'KRYPTO BONE 3\"', '350', '350', 500, 'product-featured-279.jpg', '', '', '', '', '', 0, 1, 1, 10),
(280, 'KRYPTO BONE 6\"', '490', '490', 1, 'product-featured-280.jpg', '', '', '', '', '', 0, 1, 1, 10),
(281, 'KRYPTO BONE 6\" ', '490', '490', 1, 'product-featured-281.jpg', '', '', '', '', '', 0, 1, 1, 10),
(282, 'KRYPTO BONE 6\" ', '250', '250', 4, 'product-featured-282.jpg', '', '', '', '', '', 0, 1, 1, 10),
(283, 'KRYPTO BONE 7\"', '400', '400', 4, 'product-featured-283.jpg', '', '', '', '', '', 0, 1, 1, 10),
(284, 'KRYPTO BONE 8\" ', '400', '400', 4, 'product-featured-284.jpg', '', '', '', '', '', 0, 1, 1, 10),
(285, 'FOLDING CAGE 24\"', '2100', '2100', 1, 'product-featured-285.jpg', '', '', '', '', '', 0, 1, 1, 184),
(286, 'FOLDING CAGE 30\"', '2300', '2300', 1, 'product-featured-286.jpg', '', '', '', '', '', 0, 1, 1, 184),
(287, ' KRYPTO CAGE 42\"', '5500', '5500', 1, 'product-featured-287.jpg', '', '', '', '', '', 0, 1, 1, 184),
(288, 'CANYON RIVER FELINE (TASTE OF THE WILD)', '1600', '1600', 2, 'product-featured-288.jpg', '', '', '', '', '', 0, 1, 1, 177),
(289, 'CARODYL', '297', '297', 100, 'product-featured-289.jpg', '', '', '', '', '', 0, 1, 1, 178),
(290, 'CAT LITTER BOX COVERED', '2000', '2000', 1, 'product-featured-290.jpg', '', '', '', '', '', 0, 1, 1, 187),
(291, 'CAT LITTER SCOOPER', '150', '150', 1, 'product-featured-291.jpg', '', '', '', '', '', 0, 1, 1, 187),
(292, 'CAT LITTER TRAY', '750', '750', 1, 'product-featured-292.jpg', '', '', '', '', '', 0, 1, 1, 187),
(293, 'GNAWLER CAT NIP', '450', '450', 75, 'product-featured-293.jpg', '', '', '', '', '', 0, 1, 1, 187),
(294, 'CUTURE ROLLON MOUTH WASH', '799', '799', 350, 'product-featured-294.jpg', '', '', '', '', '', 0, 1, 1, 183),
(295, 'CHAPPI ADULT CHICKEN&RICE', '460', '460', 3, 'product-featured-295.jpg', '', '', '', '', '', 0, 1, 1, 177),
(296, 'CHAPPI ADULT CHICKEN&RICE ', '1120', '1120', 8, 'product-featured-296.jpg', '', '', '', '', '', 0, 1, 1, 177),
(297, 'CHAPPI CHICKEN&RICE ', '2650', '2650', 20, 'product-featured-297.jpg', '', '', '', '', '', 0, 1, 1, 177),
(298, 'CHAPPI PUPPY  CHICKEN&MILK ', '460', '460', 3, 'product-featured-298.jpg', '', '', '', '', '', 0, 1, 1, 177),
(299, 'CHAPPI PUPPY CHICKEN &MILK ', '1200', '1200', 8, 'product-featured-299.jpg', '', '', '', '', '', 0, 1, 1, 177),
(300, 'CHIP CHOP CHICKEN&CALCIUM BONE', '225', '225', 70, 'product-featured-300.jpg', '', '', '', '', '', 0, 1, 1, 177),
(301, 'CHIP CHOP ROAST DUCK', '225', '225', 70, 'product-featured-301.jpg', '', '', '', '', '', 0, 1, 1, 177),
(302, 'CHIP CHOP SWEET POPOTO TWINED ', '225', '225', 70, 'product-featured-302.jpg', '', '', '', '', '', 0, 1, 1, 177),
(303, 'CHIP CHOPS CHICKEN TENDERA ', '225', '225', 70, 'product-featured-303.jpg', '', '', '', '', '', 0, 1, 1, 177),
(304, 'GNAWLERS DEFENSE ANTI BACTERIAL ', '160', '160', 105, 'product-featured-304.jpg', '', '', '', '', '', 0, 1, 1, 178),
(305, 'DELICIO CAT TREATS', '140', '140', 40, 'product-featured-305.jpg', '', '', '', '', '', 0, 1, 1, 185),
(306, 'DELICIO CAT REAL SALMON+MILK ', '150', '150', 40, 'product-featured-306.jpg', '', '', '', '', '', 0, 1, 1, 185),
(307, 'DELICIO CAT REAL SALMON+SHRIM', '150', '150', 40, 'product-featured-307.jpg', '', '', '', '', '', 0, 1, 1, 185),
(308, 'DELICIO CAT REAL TUNA +LIVER ', '150', '150', 40, 'product-featured-308.jpg', '', '', '', '', '', 0, 1, 1, 185),
(309, 'DENTALIGHT DENTAL BONE ', '150', '150', 90, 'product-featured-309.jpg', '', '', '', '', '', 0, 1, 1, 177),
(310, 'PEDIGREE DENTASTIX MONO SMALL', '130', '130', 110, 'product-featured-310.jpg', '', '', '', '', '', 0, 1, 1, 11),
(311, 'PETAHOLIC DIAPER MEDIUM', '450', '450', 12, 'product-featured-311.jpg', '', '', '', '', '', 0, 1, 1, 184),
(312, 'PETAHOLIC DIAPER XL', '525', '525', 12, 'product-featured-312.jpg', '', '', '', '', '', 0, 1, 1, 184),
(313, 'LAL PET PRODUCTS DOG  FOODING STAND   LARGE', '1250', '1250', 1, 'product-featured-313.jpg', '', '', '', '', '', 0, 1, 1, 184),
(314, 'DOG  T-SHIRT 16\"', '480', '480', 1, 'product-featured-314.jpg', '', '', '', '', '', 0, 1, 1, 184),
(315, 'LAL PET PRODUCTS DOG  TOY  BALL', '280', '280', 1, 'product-featured-315.jpg', '', '', '', '', '', 0, 1, 1, 180),
(316, 'LAL PET PRODUCTS DOG MUZZEL NO-3', '130', '130', 1, 'product-featured-316.jpg', '', '', '', '', '', 0, 1, 1, 184),
(317, 'LAL PEET PRODUCTS DOG MUZZEL NO-4', '200', '200', 1, 'product-featured-317.jpg', '', '', '', '', '', 0, 1, 1, 184),
(318, 'LALPET PRODUCTS DOG MUZZEL NO-7', '200', '200', 1, 'product-featured-318.jpg', '', '', '', '', '', 0, 1, 1, 184),
(319, 'DOGGY  ICECREAM AQUAMELON ', '150', '150', 100, 'product-featured-319.jpg', '', '', '', '', '', 0, 1, 1, 177),
(320, 'DOGGY ICECREAM BANANA ', '150', '150', 100, 'product-featured-320.jpg', '', '', '', '', '', 0, 1, 1, 177),
(321, 'DOGGY ICECREAM BANBERRY ', '150', '150', 100, 'product-featured-321.jpg', '', '', '', '', '', 0, 1, 1, 184),
(322, 'DOGGY ICECREAM MANGIFERA ', '150', '150', 100, 'product-featured-322.jpg', '', '', '', '', '', 0, 1, 1, 177),
(323, 'DOGGY ICEREAM UNICORN GUAVA ', '150', '150', 100, 'product-featured-323.jpg', '', '', '', '', '', 0, 1, 1, 184),
(324, 'DOGSEE CHEW  BARS ', '275', '275', 140, 'product-featured-324.jpg', '', '', '', '', '', 0, 1, 1, 177),
(325, 'DOGSEE CHEW BARS ', '275', '275', 130, 'product-featured-325.jpg', '', '', '', '', '', 0, 1, 1, 177),
(326, 'DOGSEE CHEW BARS ', '299', '299', 140, 'product-featured-326.jpg', '', '', '', '', '', 0, 1, 1, 177),
(327, 'DOGSEE CHEW CRUNCHIES ', '199', '199', 70, 'product-featured-327.jpg', '', '', '', '', '', 0, 1, 1, 177),
(328, 'DOGSEE CHEW SMALL BAR ', '169', '169', 100, 'product-featured-328.jpg', '', '', '', '', '', 0, 1, 1, 177),
(329, 'DOGSEE CRUNCH BANANA ', '199', '199', 50, 'product-featured-329.jpg', '', '', '', '', '', 0, 1, 1, 177),
(330, 'DOGSEE CRUNCH BEETROOT ', '199', '199', 30, 'product-featured-330.jpg', '', '', '', '', '', 0, 1, 1, 177),
(331, 'DOGSEE CRUNCH COCONUT', '199', '199', 150, 'product-featured-331.jpg', '', '', '', '', '', 0, 1, 1, 177),
(332, 'DOOGGY ICECREAM EMERALD APPLE ', '150', '150', 100, 'product-featured-332.jpg', '', '', '', '', '', 0, 1, 1, 177),
(333, 'DROOLS DR.DENT ', '95', '95', 150, 'product-featured-333.jpg', '', '', '', '', '', 0, 1, 1, 1),
(334, 'DROOLS 100% VEGETARIAN ', '999', '999', 7, 'product-featured-334.jpg', '', '', '', '', '', 0, 1, 1, 177),
(335, 'DROOLS 100% VEGETARIAN ADULT ', '285', '285', 1, 'product-featured-335.jpg', '', '', '', '', '', 0, 1, 1, 1),
(336, 'DROOLS 100%VEGETARIAN  ADULT DRY FOOD  ', '640', '640', 3, 'product-featured-336.jpg', '', '', '', '', '', 0, 1, 1, 1),
(337, 'DROOLS 100%VEGETERIAN  ADULT ', '640', '640', 3, 'product-featured-337.jpg', '', '', '', '', '', 0, 1, 1, 1),
(338, 'DROOLS ABSOLUTE CALCIUM ', '199', '199', 300, 'product-featured-338.jpg', '', '', '', '', '', 0, 1, 1, 12),
(339, 'DROOLS ABSOLUTE CALCIUM TAB', '249', '249', 50, 'product-featured-339.jpg', '', '', '', '', '', 0, 1, 1, 12),
(340, 'DROOLS ABSOLUTE IMUNITITY ', '499', '499', 110, 'product-featured-340.jpg', '', '', '', '', '', 0, 1, 1, 12),
(341, 'DROOLS ABSOLUTE SALMON OIL ', '299', '299', 150, 'product-featured-341.jpg', '', '', '', '', '', 0, 1, 1, 67),
(342, 'DROOLS ABSOLUTE SALMON OIL ', '550', '550', 300, 'product-featured-342.jpg', '', '', '', '', '', 0, 1, 1, 67),
(343, 'DROOLS ABSOLUTE VITAMIN TAB ', '499', '499', 110, 'product-featured-343.jpg', '', '', '', '', '', 0, 1, 1, 12),
(344, 'DROOLS ABSOLUTE VITAMINS ', '299', '299', 300, 'product-featured-344.jpg', '', '', '', '', '', 0, 1, 1, 12),
(345, 'DROOLS ABSOLUTE VITAMINS TAB', '249', '249', 50, 'product-featured-345.jpg', '', '', '', '', '', 0, 1, 1, 12),
(346, 'DROOLS ADULT CHICKEN AND EGG ', '1950', '1950', 10, 'product-featured-346.jpg', '', '', '', '', '', 0, 1, 1, 1),
(347, 'DROOLS ADULT GRAVY ', '35', '35', 150, 'product-featured-347.jpg', '', '', '', '', '', 0, 1, 1, 1),
(348, 'DROOLS CALCIUM BONE', '260', '260', 300, 'product-featured-348.jpg', '', '', '', '', '', 0, 1, 1, 1),
(349, 'DROOLS CALCIUM BONE ', '199', '199', 190, 'product-featured-349.jpg', '', '', '', '', '', 0, 1, 1, 1),
(350, 'DROOLS CALCIUM BONE ', '99', '99', 95, 'product-featured-350.jpg', '', '', '', '', '', 0, 1, 1, 1),
(351, 'DROOLS CALCIUYM BONS', '35', '35', 35, 'product-featured-351.jpg', '', '', '', '', '', 0, 1, 1, 1),
(352, 'DROOLS CAT LITTER ', '799', '799', 10, 'product-featured-352.jpg', '', '', '', '', '', 0, 1, 1, 111),
(353, 'Drools Cat Litter ', '399', '399', 5, 'product-featured-353.jpg', '', '', '', '', '', 0, 1, 1, 111),
(354, 'DROOLS CHICKEN & EGG ADULT  ', '580', '580', 3, 'product-featured-354.jpg', '', '', '', '', '', 0, 1, 1, 1),
(355, 'DROOLS CHICKEN&EGG PUPPY  DRY DOG FOOD ', '640', '640', 3, 'product-featured-355.jpg', '', '', '', '', '', 0, 1, 1, 1),
(356, 'DROOLS DOUBLE BRUSH', '25', '25', 20, 'product-featured-356.jpg', '', '', '', '', '', 0, 1, 1, 67),
(357, 'DROOLS DOUBLE BRUSH  LARGE BREED ', '300', '300', 10, 'product-featured-357.jpg', '', '', '', '', '', 0, 1, 1, 1),
(358, 'DROOLS DOUBLE BRUSH S/M BREED ', '349', '349', 15, 'product-featured-358.jpg', '', '', '', '', '', 0, 1, 1, 67),
(359, 'DROOLS FOCUS ADULT ', '1650', '1650', 4, 'product-featured-359.jpg', '', '', '', '', '', 0, 1, 1, 1),
(360, 'DROOLS FOCUS PUPPY ', '600', '600', 1, 'product-featured-360.jpg', '', '', '', '', '', 0, 1, 1, 1),
(361, 'DROOLS FOCUS PUPPY', '1890', '1890', 4, 'product-featured-361.jpg', '', '', '', '', '', 0, 1, 1, 1),
(362, 'DROOLS FOCUS STARTER ', '650', '650', 1, 'product-featured-362.jpg', '', '', '', '', '', 0, 1, 1, 1),
(363, 'DROOLS FOCUS STARTER ', '1900', '1900', 6, 'product-featured-363.jpg', '', '', '', '', '', 0, 1, 1, 1),
(364, 'DROOLS KIITTEN OCEAN FISH ', '800', '800', 3, 'product-featured-364.jpg', '', '', '', '', '', 0, 1, 1, 100),
(365, 'DROOLS KITTEN  BOOSTER ', '299', '299', 300, 'product-featured-365.jpg', '', '', '', '', '', 0, 1, 1, 100),
(366, 'DROOLS MILK POWDER ', '700', '700', 500, 'product-featured-366.jpg', '', '', '', '', '', 0, 1, 1, 1),
(367, 'DROOLS PUP BOOSTER ', '275', '275', 300, 'product-featured-367.jpg', '', '', '', '', '', 0, 1, 1, 1),
(368, 'DROOLS PUPPY GRAVY ', '35', '35', 150, 'product-featured-368.jpg', '', '', '', '', '', 0, 1, 1, 1),
(369, 'DROOLS PUREPET ', '999', '999', 9, 'product-featured-369.jpg', '', '', '', '', '', 0, 1, 1, 1),
(370, 'DROOLS VET -PRO OBESITY', '4400', '4400', 12, 'product-featured-370.jpg', '', '', '', '', '', 0, 1, 1, 1),
(371, 'DROOLS WACCA STICK MILK FLOVAR ', '165', '165', 100, 'product-featured-371.jpg', '', '', '', '', '', 0, 1, 1, 1),
(372, 'EMESET SYP', '50', '50', 30, 'product-featured-372.jpg', '', '', '', '', '', 0, 1, 1, 178),
(373, 'EMILY EASY CLEAN APPLE ', '599', '599', 5, 'product-featured-373.jpg', '', '', '', '', '', 0, 1, 1, 187),
(374, 'EMILY EASY CLEAN LAVENDER', '599', '599', 5, 'product-featured-374.jpg', '', '', '', '', '', 0, 1, 1, 187),
(375, 'EMILY EASY CLEAN LEMON ', '599', '599', 5, 'product-featured-375.jpg', '', '', '', '', '', 0, 1, 1, 187),
(376, 'EMILY EASY CLEAN ROSE ', '599', '599', 5, 'product-featured-376.jpg', '', '', '', '', '', 0, 1, 1, 187),
(377, 'ERINA EP POWDER', '190', '190', 150, 'product-featured-377.jpg', '', '', '', '', '', 0, 1, 1, 187),
(378, 'EXCLUSIVE CAT LITTER ', '1120', '1120', 10, 'product-featured-378.jpg', '', '', '', '', '', 0, 1, 1, 187),
(379, 'EXTREME STAIN &ODOUR REMOVER ', '595', '595', 500, 'product-featured-379.jpg', '', '', '', '', '', 0, 1, 1, 187),
(380, 'FARMINA MATISSE CHICKEN&RICE ADULT DRY CAT FOOD ', '1120', '1120', 1, 'product-featured-380.jpg', '', '', '', '', '', 0, 1, 1, 187),
(381, 'FARMINA N&D AG PUPPY STARTER  ', '2090', '2090', 2, 'product-featured-381.jpg', '', '', '', '', '', 0, 1, 1, 177),
(382, 'FARMINA N&D DOG AG CP ADULT MED/MAXI SELECTION ', '7690', '7690', 15, 'product-featured-382.jpg', '', '', '', '', '', 0, 1, 1, 177),
(383, 'FARMINA N&D DOG AG CP ADULT MINI ', '1890', '1890', 2, 'product-featured-383.jpg', '', '', '', '', '', 0, 1, 1, 177),
(384, 'FARMINA N&D DOG QUINOA QUAIL &COCONUT MINI ', '270', '270', 140, 'product-featured-384.jpg', '', '', '', '', '', 0, 1, 1, 177),
(385, 'FARMINA N&D GF PKN LB&BB ADT ME/MA', '2350', '2350', 2, 'product-featured-385.jpg', '', '', '', '', '', 0, 1, 1, 177),
(386, 'FARMINA N&D GF PKN LB&BB ADT MINI ', '870', '870', 800, 'product-featured-386.jpg', '', '', '', '', '', 0, 1, 1, 177),
(387, 'FARMINA N&D GF PKN LB&BBPUP MINI ', '870', '870', 800, 'product-featured-387.jpg', '', '', '', '', '', 0, 1, 1, 177),
(388, 'FARMINA N&D MINI PUPPY ', '2350', '2350', 2, 'product-featured-388.jpg', '', '', '', '', '', 0, 1, 1, 177),
(389, 'FARMINA N&D MINI PUPPY ', '850', '850', 800, 'product-featured-389.jpg', '', '', '', '', '', 0, 1, 1, 177),
(390, 'FARMINA N&D PRIME CAT GF CP ADULT ', '1990', '1990', 1, 'product-featured-390.jpg', '', '', '', '', '', 0, 1, 1, 185),
(391, 'FARMINA N&D PRIME CAT GF CP KITTEN ', '650', '650', 300, 'product-featured-391.jpg', '', '', '', '', '', 0, 1, 1, 185),
(392, 'FARMINA N&D PRIME CAT GF LAMB&BB ADULT ', '1990', '1990', 1, 'product-featured-392.jpg', '', '', '', '', '', 0, 1, 1, 185),
(393, 'FARMINA N&D PRIME CAT GF LM&BB ADULT', '680', '680', 300, 'product-featured-393.jpg', '', '', '', '', '', 0, 1, 1, 185),
(394, 'FARMINA TEAM BREEDER ADULT ', '8700', '8700', 20, 'product-featured-394.jpg', '', '', '', '', '', 0, 1, 1, 177),
(395, 'FARMINA VET LIFE DOG  GROTH ', '8890', '8890', 12, 'product-featured-395.jpg', '', '', '', '', '', 0, 1, 1, 177),
(396, 'FARMINA VET LIFE HEPATIC ', '1790', '1790', 2, 'product-featured-396.jpg', '', '', '', '', '', 0, 1, 1, 177),
(397, 'FARMINA VET LIFE OBISITY ', '8990', '8990', 12, 'product-featured-397.jpg', '', '', '', '', '', 0, 1, 1, 177),
(398, 'FARMINA VET LIFE ULTRA HYPO CANINE FORMULA', '8890', '8890', 12, 'product-featured-398.jpg', '', '', '', '', '', 0, 1, 1, 177),
(399, 'SAVAVET FIPROFORT PLUS  10 TO 20KG', '330', '330', 1, 'product-featured-399.jpg', '', '', '', '', '', 0, 1, 1, 177),
(400, 'SAVAVET FIPROFORT PLUS 20-40KG', '440', '440', 1, 'product-featured-400.jpg', '', '', '', '', '', 0, 1, 1, 177),
(401, 'SAVA VET FIPROFORT PLUS 40-60KG', '550', '550', 1, 'product-featured-401.jpg', '', '', '', '', '', 0, 1, 1, 177),
(402, 'SAVAVET FIPROFORT PLUS FOR CAT', '195', '195', 1, 'product-featured-402.jpg', '', '', '', '', '', 0, 1, 1, 185),
(403, 'SAVAVET FIPROFORT SPRAY ', '425', '425', 100, 'product-featured-403.jpg', '', '', '', '', '', 0, 1, 1, 183),
(404, 'FIPROPORT PLUS FOR UPTO ', '196', '196', 10, 'product-featured-404.jpg', '', '', '', '', '', 0, 1, 1, 183),
(405, 'FIRST BARK CHICKEN & COD ROLL ', '175', '175', 70, 'product-featured-405.jpg', '', '', '', '', '', 0, 1, 1, 177),
(406, 'FIRST BARK CHICKEN & COD STICK ', '175', '175', 70, 'product-featured-406.jpg', '', '', '', '', '', 0, 1, 1, 177),
(407, '148.31', '148.31', '70g', 70, 'product-featured-407.jpg', '', '', '', '', '', 0, 1, 1, 177),
(408, 'FIRST BARK SOFT CHICKEN BREAST ', '148.31', '148.31', 70, 'product-featured-408.jpg', '', '', '', '', '', 0, 1, 1, 177),
(409, 'FLAMINGO  CHEST HARNESS  LARGE', '780', '780', 1, 'product-featured-409.jpg', '', '', '', '', '', 0, 1, 1, 184),
(410, 'FLAMINGO  CHEST HARNESS MEDIUM', '720', '720', 1, 'product-featured-410.jpg', '', '', '', '', '', 0, 1, 1, 184),
(411, 'FLAMINGO CHEST HARNESS SMALL', '660', '660', 1, 'product-featured-411.jpg', '', '', '', '', '', 0, 1, 1, 184),
(412, 'HELLO PET FLEA COMB LARGE', '360', '360', 1, 'product-featured-412.jpg', '', '', '', '', '', 0, 1, 1, 184),
(413, 'SMARTY FLEA COMB LARGE-', '290', '290', 1, 'product-featured-413.jpg', '', '', '', '', '', 0, 1, 1, 184),
(414, 'HELLO PET FLEA COMB LARGE', '375', '375', 1, 'product-featured-414.jpg', '', '', '', '', '', 0, 1, 1, 184),
(415, 'HELLO PET FLEA COMB ', '290', '290', 1, 'product-featured-415.jpg', '', '', '', '', '', 0, 1, 1, 184),
(416, 'HELLO PET FLEA COMB SMALL', '175', '175', 1, 'product-featured-416.jpg', '', '', '', '', '', 0, 1, 1, 184),
(417, 'HELLO PET FLEA COMB', '175', '175', 1, 'product-featured-417.jpg', '', '', '', '', '', 0, 1, 1, 184),
(418, 'HELLO PET FLEA COMB SMALL', '90', '90', 1, 'product-featured-418.jpg', '', '', '', '', '', 0, 1, 1, 184),
(419, 'HELLO PET FLEA COMB SMALL  SINGAL ROW', '150', '150', 1, 'product-featured-419.jpg', '', '', '', '', '', 0, 1, 1, 184),
(420, 'HELLO PETFLEA COMB SMALL', '175', '175', 1, 'product-featured-420.jpg', '', '', '', '', '', 0, 1, 1, 184),
(421, 'FLEXIA CAT LITTER', '599', '599', 5, 'product-featured-421.jpg', '', '', '', '', '', 0, 1, 1, 187),
(422, 'FLEXIA CLUMPING CAT LITTER LAVENDER ', '599', '599', 5, 'product-featured-422.jpg', '', '', '', '', '', 0, 1, 1, 187),
(423, 'FLEXIA ESSENTIA CLUMPING CAT LITTER 4.8KG', '599', '599', 5, 'product-featured-423.jpg', '', '', '', '', '', 0, 1, 1, 187),
(424, 'FLEXIA ESSENTIA CLUMPING CAT LITTER 8KG', '800', '800', 8, 'product-featured-424.jpg', '', '', '', '', '', 0, 1, 1, 187),
(425, 'FIRST MEOW  CHCKEN STRIP ', '135', '135', 40, 'product-featured-425.jpg', '', '', '', '', '', 0, 1, 1, 185),
(426, 'FM CHICKEN SANDWICH ', '135', '135', 40, 'product-featured-426.jpg', '', '', '', '', '', 0, 1, 1, 185),
(427, 'FM SALMON DICE ', '135', '135', 40, 'product-featured-427.jpg', '', '', '', '', '', 0, 1, 1, 185),
(428, 'FM TUNA DICE ', '135', '135', 40, 'product-featured-428.jpg', '', '', '', '', '', 0, 1, 1, 185),
(429, 'FOFOS  WOOF UP BALL', '450', '450', 1, 'product-featured-429.jpg', '', '', '', '', '', 0, 1, 1, 177),
(430, 'FOFOS BABYPET BONE PINK', '390', '390', 1, 'product-featured-430.jpg', '', '', '', '', '', 0, 1, 1, 184),
(431, 'FOFOS CACTUS WAND', '460', '460', 1, 'product-featured-431.jpg', '', '', '', '', '', 0, 1, 1, 187),
(432, 'FOFOS CAT WAND TOY ELEPHANT', '350', '350', 1, 'product-featured-432.jpg', '', '', '', '', '', 0, 1, 1, 187),
(433, 'FOFOS CAT WANT TOY CROCODILE', '420', '420', 1, 'product-featured-433.jpg', '', '', '', '', '', 0, 1, 1, 187),
(434, 'FOFOS FRUITY BITES TREAT DISP APPLE', '650', '650', 1, 'product-featured-434.jpg', '', '', '', '', '', 0, 1, 1, 184),
(435, 'FOFOS FRUITY BITES TREATS DISP PEAR', '650', '650', 1, 'product-featured-435.jpg', '', '', '', '', '', 0, 1, 1, 184),
(436, 'FOFOS LATEX BI TOY DOG S', '395', '395', 1, 'product-featured-436.jpg', '', '', '', '', '', 0, 1, 1, 184),
(437, 'FOFOS POOP BAG REFILLS ', '549', '549', 17, 'product-featured-437.jpg', '', '', '', '', '', 0, 1, 1, 184),
(438, 'FOFOS POOP BAG SETS (34BAGS WITH ONE DISPENSER)', '459', '459', 1, 'product-featured-438.jpg', '', '', '', '', '', 0, 1, 1, 184),
(439, 'FOFOS PULL STRING &SOUND CHIP MOUSE WHITE', '600', '600', 1, 'product-featured-439.jpg', '', '', '', '', '', 0, 1, 1, 187),
(440, 'FOFOS PULL STRING MOUSE  BROWN', '600', '600', 1, 'product-featured-440.jpg', '', '', '', '', '', 0, 1, 1, 187),
(441, 'FOFOS PUPPY HEART LION', '580', '580', 1, 'product-featured-441.jpg', '', '', '', '', '', 0, 1, 1, 184),
(442, 'FOFOS SPORTS FETCH BALL ', '275', '275', 1, 'product-featured-442.jpg', '', '', '', '', '', 0, 1, 1, 180),
(443, 'FOFOS VEGI BITES TREAT DISP STRAWBERRY', '650', '650', 1, 'product-featured-443.jpg', '', '', '', '', '', 0, 1, 1, 180),
(444, 'FOFOS VEGI-BITES CARROTS', '490', '490', 1, 'product-featured-444.jpg', '', '', '', '', '', 0, 1, 1, 180),
(445, 'FOFOS VEGI-BITES CORNS', '450', '450', 1, 'product-featured-445.jpg', '', '', '', '', '', 0, 1, 1, 180),
(446, 'FOFOS WOODY PLAY BONE', '500', '500', 1, 'product-featured-446.jpg', '', '', '', '', '', 0, 1, 1, 180),
(447, 'FOFOS WOODYPLAY BONE', '680', '680', 1, 'product-featured-447.jpg', '', '', '', '', '', 0, 1, 1, 180),
(448, 'FRISKIES SEAFOOD ', '450', '450', 1, 'product-featured-448.jpg', '', '', '', '', '', 0, 1, 1, 185),
(449, 'FRISKIES SEAFOOD ', '950', '950', 3, 'product-featured-449.jpg', '', '', '', '', '', 0, 1, 1, 185),
(450, 'FRISKIES SURFIN ', '450', '450', 1, 'product-featured-450.jpg', '', '', '', '', '', 0, 1, 1, 185),
(451, 'GNAWLER BONE CHICKEN BONE', '150', '150', 108, 'product-featured-451.jpg', '', '', '', '', '', 0, 1, 1, 177),
(452, 'GNAWLER CALCIUM BONE 12PCS', '375', '375', 270, 'product-featured-452.jpg', '', '', '', '', '', 0, 1, 1, 177),
(453, 'GNAWLER CALCIUM BONE 30PCS', '375', '375', 270, 'product-featured-453.jpg', '', '', '', '', '', 0, 1, 1, 177),
(454, 'GNAWLER CALCIUM BONE 35PCS', '1025', '1025', 850, 'product-featured-454.jpg', '', '', '', '', '', 0, 1, 1, 177),
(455, 'GNAWLER CALCIUM BONE 90PCS', '1025', '1025', 850, 'product-featured-455.jpg', '', '', '', '', '', 0, 1, 1, 177),
(456, 'GNAWLER CREAMY TREATS CHIC&LIVER ', '80', '80', 60, 'product-featured-456.jpg', '', '', '', '', '', 0, 1, 1, 185),
(457, 'GNAWLER CREAMY TREATS CRAB ', '80', '80', 60, 'product-featured-457.jpg', '', '', '', '', '', 0, 1, 1, 185),
(458, 'GNAWLER DIGEST MORE 7PCS', '160', '160', 105, 'product-featured-458.jpg', '', '', '', '', '', 0, 1, 1, 177),
(459, 'GNAWLER HEARTY ROLL CHICKEN FLOVAOR ', '60', '60', 40, 'product-featured-459.jpg', '', '', '', '', '', 0, 1, 1, 177),
(460, 'GNAWLER HEARTY ROLL', '110', '110', 80, 'product-featured-460.jpg', '', '', '', '', '', 0, 1, 1, 177),
(461, 'GNAWLER PUPPY SNACK ', '275', '275', 250, 'product-featured-461.jpg', '', '', '', '', '', 0, 1, 1, 177),
(462, 'GNAWLER VEG BONE', '150', '150', 60, 'product-featured-462.jpg', '', '', '', '', '', 0, 1, 1, 177),
(463, 'GNAWLER YAOWX BONE ', '110', '110', 60, 'product-featured-463.jpg', '', '', '', '', '', 0, 1, 1, 177),
(464, 'GNAWLERS CALCIUM CHICKEN STICK ', '300', '300', 270, 'product-featured-464.jpg', '', '', '', '', '', 0, 1, 1, 177),
(465, 'GNAWLERS CALCIUM MILK STICK ', '300', '300', 270, 'product-featured-465.jpg', '', '', '', '', '', 0, 1, 1, 177),
(466, 'GNAWLERS CHICKEN BONE M 2PCS', '95', '95', 60, 'product-featured-466.jpg', '', '', '', '', '', 0, 1, 1, 177),
(467, 'GNAWLERS DEFENSE ANTI BACTERIAL ', '160', '160', 105, 'product-featured-467.jpg', '', '', '', '', '', 0, 1, 1, 177),
(468, 'GNAWLERS OAT BONES', '150', '150', 60, 'product-featured-468.jpg', '', '', '', '', '', 0, 1, 1, 177),
(469, 'GNAWLERS OAT BONES 25pcs', '550', '550', 270, 'product-featured-469.jpg', '', '', '', '', '', 0, 1, 1, 177),
(470, 'GNAWLERS CATNIP ', '450', '450', 30, 'product-featured-470.jpg', '', '', '', '', '', 0, 1, 1, 185),
(471, 'GNAWLERS PUPPY SNACK STICK BACON FLAVOUR ', '95', '95', 80, 'product-featured-471.jpg', '', '', '', '', '', 0, 1, 1, 177),
(472, 'GNAWLERS PUPPY SNACK STRIP CHICKEN FLAVOUR ', '95', '95', 80, 'product-featured-472.jpg', '', '', '', '', '', 0, 1, 1, 177),
(473, 'GOODIES ENERGY TREAT ', '175', '175', 125, 'product-featured-473.jpg', '', '', '', '', '', 0, 1, 1, 177),
(474, 'GOODIES ENERGY TREATS', '175', '175', 125, 'product-featured-474.jpg', '', '', '', '', '', 0, 1, 1, 182),
(475, 'GOODIES ENERGY TREATS', '175', '175', 125, 'product-featured-475.jpg', '', '', '', '', '', 0, 1, 1, 177),
(476, 'GOODIES ENERGY TREATS ', '560', '560', 500, 'product-featured-476.jpg', '', '', '', '', '', 0, 1, 1, 182),
(477, 'GOODIES ENERGY TREATS CHICKEN LIVER ', '560', '560', 500, 'product-featured-477.jpg', '', '', '', '', '', 0, 1, 1, 177),
(478, 'GOODIES ENERGY TREATS CHLOROPHYLL ', '560', '560', 500, 'product-featured-478.jpg', '', '', '', '', '', 0, 1, 1, 177),
(479, 'GOODIES ENERGY TREATS LAMB ', '560', '560', 500, 'product-featured-479.jpg', '', '', '', '', '', 0, 1, 1, 177),
(480, 'GOODIES ENERGY TREATS ORIGINAL ', '560', '560', 500, 'product-featured-480.jpg', '', '', '', '', '', 0, 1, 1, 177),
(481, 'GOODIES LONG LASTING DENTAL BAR  PEANUT BUTTER FLAVOR ', '100', '100', 85, 'product-featured-481.jpg', '', '', '', '', '', 0, 1, 1, 177),
(482, 'GOODIES LONG LASTING DENTAL BAR ', '100', '100', 2, 'product-featured-482.jpg', '', '', '', '', '', 0, 1, 1, 177),
(483, 'GOODIES LONG LASTING DENTAL BAR CHICKEN ', '100', '100', 1, 'product-featured-483.jpg', '', '', '', '', '', 0, 1, 1, 177),
(484, 'GOODIES LONG LASTING DENTAL BAR LIVER ', '100', '100', 1, 'product-featured-484.jpg', '', '', '', '', '', 0, 1, 1, 177),
(485, 'GOODIES LONG LASTING DENTAL BAR LIVER ', '100', '100', 2, 'product-featured-485.jpg', '', '', '', '', '', 0, 1, 1, 177),
(486, 'GOODIES LONG LASTING DENTAL BAR SALMON ', '100', '100', 1, 'product-featured-486.jpg', '', '', '', '', '', 0, 1, 1, 177),
(487, 'GOODIES MARINE CART LAGE SNACK ', '375', '375', 150, 'product-featured-487.jpg', '', '', '', '', '', 0, 1, 1, 177),
(488, 'GOODIES MILK BONE ', '340', '340', 12, 'product-featured-488.jpg', '', '', '', '', '', 0, 1, 1, 177),
(489, 'GOODIES MILK BONE ', '340', '340', 25, 'product-featured-489.jpg', '', '', '', '', '', 0, 1, 1, 177),
(490, 'GOODIES MILK BONE STRAWBERRT ', '340', '340', 12, 'product-featured-490.jpg', '', '', '', '', '', 0, 1, 1, 177),
(491, 'GOODIES MILK BONE STRAWBERRY ', '340', '340', 25, 'product-featured-491.jpg', '', '', '', '', '', 0, 1, 1, 177),
(492, 'GOODIES TRAINING PADS ', '1150', '1150', 50, 'product-featured-492.jpg', '', '', '', '', '', 0, 1, 1, 184),
(493, 'GOODIES TRAINING PADS LARGE', '1150', '1150', 25, 'product-featured-493.jpg', '', '', '', '', '', 1, 1, 1, 184),
(494, 'HAMALAYA HEALTHY PET FOOD PUPPY ', '320', '320', 1, 'product-featured-494.jpg', '', '', '', '', '', 0, 1, 1, 4),
(495, 'HELLO PET COMB', '190', '190', 1, 'product-featured-495.jpg', '', '', '', '', '', 0, 1, 1, 184),
(496, 'HELLO PET COMB  SIDE', '360', '360', 1, 'product-featured-496.jpg', '', '', '', '', '', 0, 1, 1, 184),
(497, 'HELLO PET COMB DUBBLE SIDE', '360', '360', 1, 'product-featured-497.jpg', '', '', '', '', '', 0, 1, 1, 184),
(498, 'HELLO PET DUBLE SIDE BRUSH', '440', '440', 1, 'product-featured-498.jpg', '', '', '', '', '', 0, 1, 1, 184),
(499, 'HELLO PET LARGE HANDLED CAT &DOG COMB', '360', '360', 1, 'product-featured-499.jpg', '', '', '', '', '', 0, 1, 1, 184),
(500, 'HELLO PET SLICKER BRUSH', '575', '575', 1, 'product-featured-500.jpg', '', '', '', '', '', 0, 1, 1, 184),
(501, 'HILLS PUPPY STARTER ', '1320', '1320', 2, 'product-featured-501.jpg', '', '', '', '', '', 0, 1, 1, 177),
(502, 'HILLS SCIENCE DIET SMALL PAWS ADULT 1-6 ', '1020', '1020', 2, 'product-featured-502.png', '', '', '', '', '', 0, 1, 1, 177),
(503, 'HIMALAYA  FURGLOW LIQUID ', '470', '470', 400, 'product-featured-503.jpg', '', '', '', '', '', 0, 1, 1, 70),
(504, 'HIMALAYA BISCUITS  ADULT', '320', '320', 1, 'product-featured-504.jpg', '', '', '', '', '', 0, 1, 1, 4),
(505, 'HIMALAYA BISCUITS  PUPPY', '320', '320', 1, 'product-featured-505.jpg', '', '', '', '', '', 0, 1, 1, 4),
(506, 'HIMALAYA DIGYTON PLUS ', '200', '200', 100, 'product-featured-506.jpg', '', '', '', '', '', 0, 1, 1, 15),
(507, 'HIMALAYA ERINA EP SHAMPOO ', '570', '570', 500, 'product-featured-507.jpg', '', '', '', '', '', 0, 1, 1, 70),
(508, 'HIMALAYA ERINA EP TICK AND FLEA CONTROL CAT&DOG POWER ', '250', '250', 150, 'product-featured-508.jpg', '', '', '', '', '', 0, 1, 1, 70),
(509, 'HIMALAYA ERINA PLUS CONTIONAR AND SHAMPOO ', '300', '300', 200, 'product-featured-509.jpg', '', '', '', '', '', 0, 1, 1, 70),
(510, 'HIMALAYA ERINA SHAMPOO ', '240', '240', 200, 'product-featured-510.jpg', '', '', '', '', '', 0, 1, 1, 70),
(511, 'HIMALAYA ERINA SHAMPOO ', '410', '410', 450, 'product-featured-511.jpg', '', '', '', '', '', 0, 1, 1, 70),
(512, 'HIMALAYA FRESH COAT ', '230', '230', 150, 'product-featured-512.jpg', '', '', '', '', '', 0, 1, 1, 70),
(513, 'HIMALAYA FRESH COAT ', '520', '520', 400, 'product-featured-513.jpg', '', '', '', '', '', 0, 1, 1, 70),
(514, 'HIMALAYA FURGLOW ', '310', '310', 200, 'product-featured-514.jpg', '', '', '', '', '', 0, 1, 1, 70),
(515, 'HIMALAYA HEALTHY ADULT DOG FOOD ', '720', '720', 3, 'product-featured-515.jpg', '', '', '', '', '', 0, 1, 1, 4),
(516, 'HIMALAYA HEALTHY PET FOOD  ADULT', '340', '340', 1, 'product-featured-516.jpg', '', '', '', '', '', 0, 1, 1, 4),
(517, 'HIMALAYA HEALTHY PET FOOD FOR ADULT DOGDOG ', '1950', '1950', 10, 'product-featured-517.jpg', '', '', '', '', '', 0, 1, 1, 4),
(518, 'HIMALAYA HEALTHY PUPPY DOG FOOD ', '2150', '2150', 10, 'product-featured-518.jpg', '', '', '', '', '', 0, 1, 1, 4),
(519, 'HIMALAYA HEALTHY PUPPY FOOD ', '760', '760', 3, 'product-featured-519.jpg', '', '', '', '', '', 0, 1, 1, 4),
(520, 'HIMALAYA HEALTHY TREAT ADULT DOG BISCUIT ', '150', '150', 400, 'product-featured-520.jpg', '', '', '', '', '', 0, 1, 1, 59),
(521, 'HIMALAYA HIMCAL PET SUSPENSION ', '120', '120', 200, 'product-featured-521.jpg', '', '', '', '', '', 0, 1, 1, 15);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(522, 'HIMALAYA HIMPYRIN ', '110', '110', 30, 'product-featured-522.jpg', '', '', '', '', '', 0, 1, 1, 15),
(523, 'HIMALAYA IMMUNOL ', '120', '120', 100, 'product-featured-523.jpg', '', '', '', '', '', 0, 1, 1, 15),
(524, 'HIMALAYA LIV-52', '150', '150', 200, 'product-featured-524.jpg', '', '', '', '', '', 0, 1, 1, 15),
(525, 'HIMALAYA LIV. 52 ', '60', '60', 30, 'product-featured-525.jpg', '', '', '', '', '', 0, 1, 1, 15),
(526, 'HIMALAYA NEFROTEC DS ', '140', '140', 60, 'product-featured-526.jpg', '', '', '', '', '', 0, 1, 1, 15),
(527, 'HIMALAYA PUPPY BISCUITS ', '170', '170', 500, 'product-featured-527.jpg', '', '', '', '', '', 0, 1, 1, 4),
(528, 'HIMALAYA SCAVON SPRAY ', '130', '130', 100, 'product-featured-528.jpg', '', '', '', '', '', 0, 1, 1, 70),
(529, 'HMALAYA DIGYTON DROP ', '120', '120', 30, 'product-featured-529.jpg', '', '', '', '', '', 0, 1, 1, 15),
(530, 'IAMS AD LRG BREED ', '1180', '1180', 3, 'product-featured-530.jpg', '', '', '', '', '', 0, 1, 1, 177),
(531, 'IAMS ADULT LARGE BREEDS  CB ', '2880', '2880', 8, 'product-featured-531.jpg', '', '', '', '', '', 0, 1, 1, 177),
(532, 'IAMS ADULT SMALL BREED ', '1000', '1000', 3, 'product-featured-532.jpg', '', '', '', '', '', 0, 1, 1, 177),
(533, 'IAMS LABRADOR RETRIEVER ADULT ', '1400', '1400', 3, 'product-featured-533.jpg', '', '', '', '', '', 0, 1, 1, 177),
(534, 'IAMS PLB ', '1240', '1240', 3, 'product-featured-534.jpg', '', '', '', '', '', 0, 1, 1, 177),
(535, 'IAMS PSMB ', '670', '670', 1, 'product-featured-535.jpg', '', '', '', '', '', 0, 1, 1, 177),
(536, 'IAMS PUP SMLMD BREED ', '1240', '1240', 3, 'product-featured-536.jpg', '', '', '', '', '', 0, 1, 1, 177),
(537, 'IAMS PUPPY LARGE BREED ', '3200', '3200', 8, 'product-featured-537.jpg', '', '', '', '', '', 0, 1, 1, 177),
(538, 'JERHIGH  FISH STICK ', '185', '185', 70, 'product-featured-538.jpg', '', '', '', '', '', 0, 1, 1, 177),
(539, 'JERHIGH  STIX BITES TRAINING TREATS ', '240', '240', 100, 'product-featured-539.jpg', '', '', '', '', '', 0, 1, 1, 177),
(540, 'JERHIGH BACON ', '240', '240', 100, 'product-featured-540.jpg', '', '', '', '', '', 0, 1, 1, 177),
(541, 'JERHIGH BACON REAL CHICKEN MEAT ', '185', '185', 70, 'product-featured-541.jpg', '', '', '', '', '', 0, 1, 1, 177),
(542, 'JERHIGH BLUEBERRY & CHICKEN STICKS ', '185', '185', 70, 'product-featured-542.jpg', '', '', '', '', '', 0, 1, 1, 177),
(543, 'JERHIGH CARROT STICK ', '185', '185', 70, 'product-featured-543.jpg', '', '', '', '', '', 0, 1, 1, 177),
(544, 'JERHIGH CARROT STIX ', '240', '240', 100, 'product-featured-544.jpg', '', '', '', '', '', 0, 1, 1, 177),
(545, 'JERHIGH CHICKEN &GRILLED IN GRAY ', '60', '60', 120, 'product-featured-545.jpg', '', '', '', '', '', 0, 1, 1, 177),
(546, 'JERHIGH CHICKEN &VEG IN GRAY ', '60', '60', 120, 'product-featured-546.jpg', '', '', '', '', '', 0, 1, 1, 177),
(547, 'JERHIGH CHICKEN BANANA STICK ', '185', '185', 70, 'product-featured-547.jpg', '', '', '', '', '', 0, 1, 1, 177),
(548, 'JERHIGH CHICKEN CARROT STICKS ', '185', '185', 70, 'product-featured-548.jpg', '', '', '', '', '', 0, 1, 1, 177),
(549, 'JERHIGH CHICKEN CHEESE  STICK ', '175', '175', 50, 'product-featured-549.jpg', '', '', '', '', '', 0, 1, 1, 177),
(550, 'JERHIGH CHICKEN GRILLED STICKS ', '175', '175', 120, 'product-featured-550.jpg', '', '', '', '', '', 0, 1, 1, 177),
(551, 'JERHIGH CHICKEN HOTDOGS BAR ', '160', '160', 150, 'product-featured-551.jpg', '', '', '', '', '', 0, 1, 1, 177),
(552, 'JERHIGH CHICKEN JERKY ', '185', '185', 50, 'product-featured-552.jpg', '', '', '', '', '', 0, 1, 1, 177),
(553, 'JERHIGH CHICKEN MILKY ', '185', '185', 70, 'product-featured-553.jpg', '', '', '', '', '', 0, 1, 1, 177),
(554, 'JERHIGH CHICKEN WITH SPINACH ', '240', '240', 100, 'product-featured-554.jpg', '', '', '', '', '', 0, 1, 1, 177),
(555, 'JERHIGH CHICKEN WITH SPINACH ', '185', '185', 70, 'product-featured-555.jpg', '', '', '', '', '', 0, 1, 1, 177),
(556, 'JERHIGH CHICKEN& LIVER IN GRAVY ', '60', '60', 120, 'product-featured-556.jpg', '', '', '', '', '', 0, 1, 1, 177),
(557, 'JERHIGH COOKIE REAL CHICKEN MEAT ', '185', '185', 70, 'product-featured-557.jpg', '', '', '', '', '', 0, 1, 1, 177),
(558, 'JERHIGH COOKIE REAL CHICKEN MEAT ', '185', '185', 70, 'product-featured-558.jpg', '', '', '', '', '', 0, 1, 1, 177),
(559, 'JERHIGH DEN-T STICK ', '185', '185', 70, 'product-featured-559.jpg', '', '', '', '', '', 0, 1, 1, 177),
(560, 'JERHIGH DUCK REAL DUCK MEAT ', '185', '185', 70, 'product-featured-560.jpg', '', '', '', '', '', 0, 1, 1, 177),
(561, 'JERHIGH DUCK REAL DUCK MEAT ', '185', '185', 70, 'product-featured-561.jpg', '', '', '', '', '', 0, 1, 1, 177),
(562, 'JERHIGH DUO STICK', '175', '175', 70, 'product-featured-562.jpg', '', '', '', '', '', 0, 1, 1, 177),
(563, 'JERHIGH DUO STICK -MILKY BANANA STICK ', '175', '175', 50, 'product-featured-563.jpg', '', '', '', '', '', 0, 1, 1, 177),
(564, 'JERHIGH GOODIES ENERGY TREATS', '240', '240', 125, 'product-featured-564.jpg', '', '', '', '', '', 0, 1, 1, 182),
(565, 'JERHIGH GOODIES ENERGY TREATS ', '165', '165', 125, 'product-featured-565.jpg', '', '', '', '', '', 0, 1, 1, 177),
(566, 'JERHIGH GRAVY CHICKEN AND LIVER ', '60', '60', 120, 'product-featured-566.jpg', '', '', '', '', '', 0, 1, 1, 177),
(567, 'JERHIGH GRAVY CHICKEN AND VEGITABLE ', '60', '60', 120, 'product-featured-567.jpg', '', '', '', '', '', 0, 1, 1, 177),
(568, 'JERHIGH GRAVY ROASTED DUCK ', '60', '60', 120, 'product-featured-568.jpg', '', '', '', '', '', 0, 1, 1, 177),
(569, 'JERHIGH HAM -BURG-ER CHICKEN WITH SHRIMP', '195', '195', 112, 'product-featured-569.jpg', '', '', '', '', '', 0, 1, 1, 177),
(570, 'JERHIGH HOT DOG -BAR CHICKEN ', '160', '160', 150, 'product-featured-570.jpg', '', '', '', '', '', 0, 1, 1, 177),
(571, 'JERHIGH HOT DOG -BAR CHICKEN&VEGETABLE ', '160', '160', 150, 'product-featured-571.jpg', '', '', '', '', '', 0, 1, 1, 177),
(572, 'JERHIGH HOT DOG BAR LIVER', '160', '160', 150, 'product-featured-572.jpg', '', '', '', '', '', 0, 1, 1, 177),
(573, 'JERHIGH JINNY GOURMENT  CAT TREAT ', '135', '135', 35, 'product-featured-573.jpg', '', '', '', '', '', 0, 1, 1, 189),
(574, 'JERHIGH JINNY SALMON CAT  TREAT ', '130', '130', 35, 'product-featured-574.jpg', '', '', '', '', '', 0, 1, 1, 189),
(575, 'JERHIGH JINNY SEAFOOD CAT TREAT ', '130', '130', 35, 'product-featured-575.jpg', '', '', '', '', '', 0, 1, 1, 189),
(576, 'JERHIGH JINNY TREAT CHICKEN CAT TREAT ', '130', '130', 35, 'product-featured-576.jpg', '', '', '', '', '', 0, 1, 1, 189),
(577, 'JERHIGH JINNY TUNA CAT TREATS ', '130', '130', 35, 'product-featured-577.jpg', '', '', '', '', '', 0, 1, 1, 185),
(578, 'JERHIGH LIVER REAL CHICKEN AND MEAT ', '185', '185', 70, 'product-featured-578.jpg', '', '', '', '', '', 0, 1, 1, 177),
(579, 'JERHIGH MILKY STICKS ', '240', '240', 100, 'product-featured-579.jpg', '', '', '', '', '', 0, 1, 1, 177),
(580, 'JERHIGH MILKY STICKS ', '185', '185', 70, 'product-featured-580.jpg', '', '', '', '', '', 0, 1, 1, 177),
(581, 'JERHIGH MILKY STRAWBERRT  STICK ', '185', '185', 50, 'product-featured-581.jpg', '', '', '', '', '', 0, 1, 1, 177),
(582, 'JERHIGH ROSTED DUCK IN GRAVY ', '60', '60', 120, 'product-featured-582.jpg', '', '', '', '', '', 0, 1, 1, 177),
(583, 'JERHIGH SALAMI ', '240', '240', 100, 'product-featured-583.jpg', '', '', '', '', '', 0, 1, 1, 177),
(584, 'JERHIGH SALAMI REAL CHICKEN MEAT ', '185', '185', 70, 'product-featured-584.jpg', '', '', '', '', '', 0, 1, 1, 177),
(585, 'JERHIGH SPINACH CHEESE STICK ', '185', '185', 50, 'product-featured-585.jpg', '', '', '', '', '', 0, 1, 1, 177),
(586, 'JERHIGH SPINACH STIX ', '185', '185', 70, 'product-featured-586.jpg', '', '', '', '', '', 0, 1, 1, 177),
(587, 'JERHIGH STICK REAL CHICKEN MEAT ', '185', '185', 70, 'product-featured-587.jpg', '', '', '', '', '', 0, 1, 1, 177),
(588, 'JERHIGH STIX ', '240', '240', 100, 'product-featured-588.jpg', '', '', '', '', '', 0, 1, 1, 177),
(589, 'JERHIGH STIX BITES TRAINING TREAT ', '225', '225', 100, 'product-featured-589.jpg', '', '', '', '', '', 0, 1, 1, 177),
(590, 'JERHIGH STRAWBLEERY  STICK 70GM', '185', '185', 70, 'product-featured-590.jpg', '', '', '', '', '', 0, 1, 1, 177),
(591, 'JERHIGH VARIETY STIX 200GM', '440', '440', 200, 'product-featured-591.jpg', '', '', '', '', '', 0, 1, 1, 177),
(592, 'JOHNY STICK WITH STRAP HOLDER ', '330', '330', 1, 'product-featured-592.jpg', '', '', '', '', '', 0, 1, 1, 184),
(593, 'JUST  A FOOBALL -SMALL ORANGE', '399', '399', 1, 'product-featured-593.jpg', '', '', '', '', '', 0, 1, 1, 184),
(594, 'JUST A FOOBALL SMALL RED', '399', '399', 1, 'product-featured-594.jpg', '', '', '', '', '', 0, 1, 1, 184),
(595, 'JUST A FOOBALL SMALL YELLOW', '399', '399', 1, 'product-featured-595.jpg', '', '', '', '', '', 0, 1, 1, 184),
(596, 'JUTE HUT WOODEN', '1800', '1800', 1, 'product-featured-596.jpg', '', '', '', '', '', 0, 1, 1, 187),
(597, 'BEAPHER KALK TAB', '500', '500', 30, 'product-featured-597.jpg', '', '', '', '', '', 0, 1, 1, 178),
(598, 'BIOLINE KEEP OFF SPRAY FOR DOG ', '450', '450', 300, 'product-featured-598.jpg', '', '', '', '', '', 0, 1, 1, 74),
(599, 'KETOCHLOR SHAMPOO 200ML', '315', '315', 200, 'product-featured-599.jpg', '', '', '', '', '', 0, 1, 1, 183),
(600, 'KILTIX  COLLAR MEDIUM', '650', '650', 1, 'product-featured-600.jpg', '', '', '', '', '', 0, 1, 1, 184),
(601, 'KILTIX COLLAR LARGE', '696.43', '696.43', 1, 'product-featured-601.jpg', '', '', '', '', '', 0, 1, 1, 184),
(602, 'KISKIN  LOTION ', '170', '170', 100, 'product-featured-602.jpg', '', '', '', '', '', 0, 1, 1, 183),
(603, 'KIWOF CAT TAB', '175', '175', 1, 'product-featured-603.jpg', '', '', '', '', '', 0, 1, 1, 186),
(604, 'KIWOF PLUS TAB', '45', '45', 1, 'product-featured-604.jpg', '', '', '', '', '', 0, 1, 1, 178),
(605, 'KENNEL KITCHEN CHICKEN IN JELLY ', '40', '40', 80, 'product-featured-605.jpg', '', '', '', '', '', 0, 1, 1, 185),
(606, 'KENNEL KITCHEN CHICKEN LIVER  RECEIPE WITH PUPMKIN', '60', '60', 100, 'product-featured-606.jpg', '', '', '', '', '', 0, 1, 1, 177),
(607, 'KENNEL KITCHEN CHICKEN RECEIPE WITH PUMPKIN ', '60', '60', 100, 'product-featured-607.jpg', '', '', '', '', '', 0, 1, 1, 177),
(608, 'KENNEL KITCHEN CHICKEN RECIPE  ', '35', '35', 100, 'product-featured-608.jpg', '', '', '', '', '', 0, 1, 1, 177),
(609, 'KENNEL KITCHEN CHUNKS N GRAVY ', '199', '199', 400, 'product-featured-609.jpg', '', '', '', '', '', 0, 1, 1, 177),
(610, 'KENNEL KITCHEN FISH JERKY ', '60', '60', 80, 'product-featured-610.jpg', '', '', '', '', '', 0, 1, 1, 177),
(611, 'KENNEL KITCHEN FISH RECEIPE WITH PUMPKIN', '60', '60', 85, 'product-featured-611.jpg', '', '', '', '', '', 0, 1, 1, 177),
(612, 'KENNEL KITCHEN LAMB CHUNKS', '35', '35', 70, 'product-featured-612.jpg', '', '', '', '', '', 0, 1, 1, 177),
(613, 'KENNEL KITCHEN LAMB RECEIP WITH PUMPKIN ', '60', '60', 100, 'product-featured-613.jpg', '', '', '', '', '', 0, 1, 1, 177),
(614, 'KENNEL KITCHEN MINCE IN GRAVY ', '199', '199', 400, 'product-featured-614.jpg', '', '', '', '', '', 0, 1, 1, 177),
(615, 'KENNEL KITCHEN MINCE IN GRAVY ', '199', '199', 400, 'product-featured-615.jpg', '', '', '', '', '', 0, 1, 1, 177),
(616, 'KENNEL KITCHEN TUNA IN JELLY ', '35', '35', 80, 'product-featured-616.jpg', '', '', '', '', '', 0, 1, 1, 185),
(617, 'KRYPTO BONE 4\"  ', '550', '550', 1, 'product-featured-617.jpg', '', '', '', '', '', 0, 1, 1, 10),
(618, 'KRYPTO BONE 4\" ', '150', '150', 4, 'product-featured-618.jpg', '', '', '', '', '', 0, 1, 1, 10),
(619, 'KRYPTO BONE 5\"', '180', '180', 4, 'product-featured-619.jpg', '', '', '', '', '', 0, 1, 1, 10),
(620, 'KRYPTO BONE 3\"', '220', '220', 6, 'product-featured-620.jpg', '', '', '', '', '', 0, 1, 1, 10),
(621, 'KRYPTO BONS 6\" 4PCS', '250', '250', 4, 'product-featured-621.jpg', '', '', '', '', '', 0, 1, 1, 10),
(622, 'KRYPTO HEALTHY CHEW BONES FOR DOG 3\"', '550', '550', 1, 'product-featured-622.jpg', '', '', '', '', '', 0, 1, 1, 10),
(623, 'KRYPTO HEALTHY CHEW BONS ', '550', '550', 1, 'product-featured-623.jpg', '', '', '', '', '', 0, 1, 1, 10),
(624, 'KRYPTO HEALTHY CHEW STICK ', '160', '160', 500, 'product-featured-624.jpg', '', '', '', '', '', 0, 1, 1, 10),
(625, 'KRYPTO HEALTHY CHICKEN & MUTTON MIX CEW STIX', '280', '280', 1, 'product-featured-625.jpg', '', '', '', '', '', 0, 1, 1, 10),
(626, 'KRYPTO HEALTHY MUTTON FLAVOAR CHEW STICK ', '160', '160', 500, 'product-featured-626.jpg', '', '', '', '', '', 0, 1, 1, 10),
(627, 'LAL PET COLLER SMALL', '95', '95', 1, 'product-featured-627.jpg', '', '', '', '', '', 0, 1, 1, 184),
(628, 'LAL PET LEASH & COLLER SMALL', '290', '290', 1, 'product-featured-628.jpg', '', '', '', '', '', 0, 1, 1, 184),
(629, 'LAL PET NON STEEL BOWL', '100', '100', 1, 'product-featured-629.jpg', '', '', '', '', '', 0, 1, 1, 184),
(630, 'LAL PET PRO DOUBLE KNOT FUN TOY FOR DOG', '135', '135', 1, 'product-featured-630.jpg', '', '', '', '', '', 0, 1, 1, 184),
(631, 'LAL PET PRODUCT APPLE SQUEEZE TOY', '185', '185', 1, 'product-featured-631.jpg', '', '', '', '', '', 0, 1, 1, 184),
(632, 'LAL PET PRODUCT ROPE LEASH LARGE', '505', '505', 1, 'product-featured-632.jpg', '', '', '', '', '', 0, 1, 1, 184),
(633, 'LAL PET PRODUCT SUPER FLYER RUBBER TAGE', '250', '250', 1, 'product-featured-633.jpg', '', '', '', '', '', 0, 1, 1, 184),
(634, 'LAL PET PRODUCT TOY LARGE MRP-505', '505', '505', 1, 'product-featured-634.jpg', '', '', '', '', '', 0, 1, 1, 184),
(635, 'LAL PET PRODUCTES BOWL SMALL', '55', '55', 1, 'product-featured-635.jpg', '', '', '', '', '', 0, 1, 1, 184),
(636, 'LAL PET PRODUCTS BALL', '165', '165', 1, 'product-featured-636.jpg', '', '', '', '', '', 0, 1, 1, 184),
(637, 'LAL PET PRODUCTS COLLER', '165', '165', 1, 'product-featured-637.jpg', '', '', '', '', '', 0, 1, 1, 184),
(638, 'LAL PET PRODUCTS COLLER SMALL', '50', '50', 1, 'product-featured-638.jpg', '', '', '', '', '', 0, 1, 1, 184),
(639, 'LAL PET PRODUCTS COTTON SINGLE BONE', '210', '210', 1, 'product-featured-639.jpg', '', '', '', '', '', 0, 1, 1, 184),
(640, 'LAL PET PRODUCTS LEASH', '185', '185', 1, 'product-featured-640.jpg', '', '', '', '', '', 0, 1, 1, 184),
(641, 'LAL PET PRODUCTS MAN VINYL SUPER', '185', '185', 1, 'product-featured-641.jpg', '', '', '', '', '', 0, 1, 1, 184),
(642, 'LAL PET PRODUCTS NON-TIP STEEL BOWL', '120', '120', 1, 'product-featured-642.jpg', '', '', '', '', '', 0, 1, 1, 184),
(643, 'LAL PET PRODUCTS ROPE LEASH', '395', '395', 1, 'product-featured-643.jpg', '', '', '', '', '', 0, 1, 1, 184),
(644, 'LAL PET PRODUCTS ROPE LEASH MEDIUM', '345', '345', 1, 'product-featured-644.jpg', '', '', '', '', '', 0, 1, 1, 184),
(645, 'LAL PET PRODUCTS ROPE TOY 8TYPE', '155', '155', 1, 'product-featured-645.jpg', '', '', '', '', '', 0, 1, 1, 184),
(646, 'LAL PET PRODUCTS SUPER FLYER RUBBER TOY FOR DOG LARGE 1PCS', '250', '250', 1, 'product-featured-646.jpg', '', '', '', '', '', 0, 1, 1, 184),
(647, 'LAL PET PRODUCTS SUPER FUN TOY RUGBY BALL FOR DOG MEDIUM 1PCS', '310', '310', 1, 'product-featured-647.jpg', '', '', '', '', '', 0, 1, 1, 184),
(648, 'LAL PET PRODUCTS SUPER ROPE TOY', '120', '120', 1, 'product-featured-648.jpg', '', '', '', '', '', 0, 1, 1, 180),
(649, 'LAL PET PRODUCTS TOY', '330', '330', 1, 'product-featured-649.jpg', '', '', '', '', '', 0, 1, 1, 180),
(650, 'LAL PET RODUCTS COLOURED STEEL BOWL', '155', '155', 1, 'product-featured-650.jpg', '', '', '', '', '', 0, 1, 1, 184),
(651, 'LAL PET RODUCTS COLOURED STEEL BOWL SIZE -4NO', '165', '165', 1, 'product-featured-651.jpg', '', '', '', '', '', 0, 1, 1, 184),
(652, 'LAL PET ROLLER', '165', '165', 1, 'product-featured-652.jpg', '', '', '', '', '', 0, 1, 1, 184),
(653, 'LAL PET ROPE 285mrp', '285', '285', 1, 'product-featured-653.jpg', '', '', '', '', '', 0, 1, 1, 184),
(654, 'LAL PET SHAMPOO 200ML', '125', '125', 1, 'product-featured-654.jpg', '', '', '', '', '', 0, 1, 1, 183),
(655, 'LAL PETS  LEASH  M', '225', '225', 1, 'product-featured-655.jpg', '', '', '', '', '', 0, 1, 1, 184),
(656, 'LAL PETS COOLER M', '215', '215', 1, 'product-featured-656.jpg', '', '', '', '', '', 0, 1, 1, 184),
(657, 'LALPET LEASH', '450', '450', 1, 'product-featured-657.jpg', '', '', '', '', '', 0, 1, 1, 184),
(658, 'LALPET PRODUCT LEASH M', '110', '110', 1, 'product-featured-658.jpg', '', '', '', '', '', 0, 1, 1, 184),
(659, 'LALPET PRODUCTS  LEASH&COLLER', '250', '250', 1, 'product-featured-659.jpg', '', '', '', '', '', 0, 1, 1, 184),
(660, 'LALPET PRODUCTS COLLER M', '155', '155', 1, 'product-featured-660.jpg', '', '', '', '', '', 0, 1, 1, 184),
(661, 'LALPET PRODUCTS LARGE COLLER', '250', '250', 1, 'product-featured-661.jpg', '', '', '', '', '', 0, 1, 1, 184),
(662, 'LALPET PRODUCTS LEASH &COLER SMALL', '300', '300', 1, 'product-featured-662.jpg', '', '', '', '', '', 0, 1, 1, 184),
(663, 'LALPET PRODUCTS LEASH SMALL', '165', '165', 1, 'product-featured-663.jpg', '', '', '', '', '', 0, 1, 1, 184),
(664, 'LARGE BREED HAIR CUTTING CHARGE', '800', '800', 1, 'product-featured-664.jpg', '', '', '', '', '', 0, 1, 1, 183),
(665, 'LARGE DOG  GROMING CHARGE', '1200', '1200', 1, 'product-featured-665.jpg', '', '', '', '', '', 0, 1, 1, 183),
(666, 'LATEX BURGER TOY 310', '310', '310', 1, 'product-featured-666.jpg', '', '', '', '', '', 0, 1, 1, 180),
(667, 'LEASH&HARNESH SET XXL', '715', '715', 1, 'product-featured-667.jpg', '', '', '', '', '', 0, 1, 1, 184),
(668, 'LEATHER BANYARD 3 COMBA', '750', '750', 1, 'product-featured-668.jpg', '', '', '', '', '', 0, 1, 1, 184),
(669, 'LEATHER BONE', '200', '200', 1, 'product-featured-669.jpg', '', '', '', '', '', 0, 1, 1, 184),
(670, 'LEATHER COLLAR PLAIN MEDIUM BROWN', '210', '210', 1, 'product-featured-670.jpg', '', '', '', '', '', 0, 1, 1, 184),
(671, 'LEATHER FRENCH FRIES', '450', '450', 1, 'product-featured-671.jpg', '', '', '', '', '', 0, 1, 1, 184),
(672, 'LITTLE BIG PAW  CHICKEN MOUSE (GOURMET TENDER) ', '135', '135', 85, 'product-featured-672.jpg', '', '', '', '', '', 0, 1, 1, 185),
(673, 'LITTLE BIG PAW  GOURMET ATLANTIC TUNA ', '135', '135', 85, 'product-featured-673.jpg', '', '', '', '', '', 0, 1, 1, 185),
(674, 'LITTLE BIG PAW -POULRY CAT ', '135', '135', 85, 'product-featured-674.jpg', '', '', '', '', '', 0, 1, 1, 185),
(675, 'LITTLE BIG PAW DUCK MOUSE (GOURMET TENDER)', '135', '135', 85, 'product-featured-675.jpg', '', '', '', '', '', 0, 1, 1, 185),
(676, 'LITTLE BIG PAW GOURMET ATLANTIC SALMON MOUSE ', '135', '135', 85, 'product-featured-676.png', '', '', '', '', '', 0, 1, 1, 185),
(677, 'LITTLE BIG PAW OCEAN FISH 85GM', '135', '135', 85, 'product-featured-677.jpg', '', '', '', '', '', 0, 1, 1, 185),
(678, 'LITTLE BIG PAW SEAFOOD CAT ', '135', '135', 85, 'product-featured-678.jpg', '', '', '', '', '', 0, 1, 1, 185),
(679, 'LONG LASTING DENTAL BAR CHCKEN FLAVOR ', '100', '100', 2, 'product-featured-679.jpg', '', '', '', '', '', 0, 1, 1, 177),
(680, 'IBC MAGRID', '150', '150', 100, 'product-featured-680.jpg', '', '', '', '', '', 0, 1, 1, 184),
(681, 'Marvo LAMB CHUNK IN GRAVY ', '175', '175', 400, 'product-featured-681.jpg', '', '', '', '', '', 0, 1, 1, 177),
(682, 'FARMINA MATISSE CHICKEN&RICE ', '580', '580', 400, 'product-featured-682.jpg', '', '', '', '', '', 0, 1, 1, 185),
(683, 'FARMINA MATISSE SALMON & TUNA ', '1120', '1120', 1, 'product-featured-683.jpg', '', '', '', '', '', 0, 1, 1, 185),
(684, 'FARMINA MATTISSE NEUTERED SALMON ', '1050', '1050', 1, 'product-featured-684.jpg', '', '', '', '', '', 0, 1, 1, 185),
(685, 'FARMINA MATTISSE SALMON &TUNA ', '340', '340', 400, 'product-featured-685.jpg', '', '', '', '', '', 0, 1, 1, 185),
(686, 'ME-O  ADULT TUNA IN JELLY', '40', '40', 80, 'product-featured-686.jpg', '', '', '', '', '', 0, 1, 1, 185),
(687, 'ME-O ADULT CAT FOOD  PERSIAN', '400', '400', 1, 'product-featured-687.jpg', '', '', '', '', '', 0, 1, 1, 185),
(688, 'ME-O ADULT CAT FOOD CHICKEN &VEG ', '385', '385', 1, 'product-featured-688.jpg', '', '', '', '', '', 0, 1, 1, 185),
(689, 'ME-O ADULT CAT FOOD MACKERAL', '1500', '1500', 7, 'product-featured-689.jpg', '', '', '', '', '', 0, 1, 1, 185),
(690, 'ME-O ADULT CAT FOOD PERSIAN ', '355', '355', 1, 'product-featured-690.jpg', '', '', '', '', '', 0, 1, 1, 185),
(691, 'ME-O ADULT CAT FOOD TUNA ', '375', '375', 1, 'product-featured-691.jpg', '', '', '', '', '', 0, 1, 1, 185),
(692, 'ME-O ADULT CAT SEA FOOD ', '755', '755', 3, 'product-featured-692.jpg', '', '', '', '', '', 0, 1, 1, 185),
(693, 'ME-O ADULT TUNA ', '755', '755', 3, 'product-featured-693.jpg', '', '', '', '', '', 0, 1, 1, 185),
(694, 'ME-O CAT KITTEN PERSIAN ', '360', '360', 1, 'product-featured-694.jpeg', '', '', '', '', '', 0, 1, 1, 185),
(695, 'ME-O CAT KITTEN PERSIAN ', '360', '360', 1, 'product-featured-695.jpg', '', '', '', '', '', 0, 1, 1, 185),
(696, 'ME-O CHICKEN & SARDINE GRAVY ', '40', '40', 80, 'product-featured-696.jpg', '', '', '', '', '', 0, 1, 1, 185),
(697, 'ME-O CREAMY TREATS BONITO FLAVOR ', '90', '90', 60, 'product-featured-697.jpg', '', '', '', '', '', 0, 1, 1, 185),
(698, 'ME-O CREAMY TREATS CHICKEN & LIVER ', '90', '90', 60, 'product-featured-698.jpg', '', '', '', '', '', 0, 1, 1, 185),
(699, 'ME-O CREAMY TREATS CRAB FLAVOR ', '90', '90', 60, 'product-featured-699.jpg', '', '', '', '', '', 0, 1, 1, 185),
(700, 'ME-O CREAMY TREATS SALMON ', '90', '90', 60, 'product-featured-700.jpg', '', '', '', '', '', 0, 1, 1, 185),
(701, 'ME-O GRAVY ADULT CHICKEN CHUNK', '40', '40', 80, 'product-featured-701.jpg', '', '', '', '', '', 0, 1, 1, 185),
(702, 'ME-O GRAVY ADULT MACKEREL', '40', '40', 80, 'product-featured-702.jpg', '', '', '', '', '', 0, 1, 1, 185),
(703, 'ME-O GRAVY ADULT OCEAN FISH', '40', '40', 80, 'product-featured-703.jpg', '', '', '', '', '', 0, 1, 1, 185),
(704, 'ME-O GRAVY ADULT TUNA', '40', '40', 80, 'product-featured-704.jpg', '', '', '', '', '', 0, 1, 1, 185),
(705, 'ME-O GRAVY ADULT TUNA WITH CHICKEN JELLY', '40', '40', 80, 'product-featured-705.jpg', '', '', '', '', '', 0, 1, 1, 185),
(706, 'ME-O GRAVY KITTEN TUNA AND SARDINEIN JELLY', '40', '40', 80, 'product-featured-706.jpg', '', '', '', '', '', 0, 1, 1, 185),
(707, 'ME-O KITTEN  TUNA GRAVY', '40', '40', 80, 'product-featured-707.jpg', '', '', '', '', '', 0, 1, 1, 185),
(708, 'ME-O KITTEN OCEAN FISH ', '355', '355', 1, 'product-featured-708.jpg', '', '', '', '', '', 0, 1, 1, 185),
(709, 'PEDIGREE MEAT JARKY ROSTED LAMB', '140', '140', 80, 'product-featured-709.jpg', '', '', '', '', '', 0, 1, 1, 11),
(710, 'VETOQUINOL MERICAL PET BISCUIT ', '380', '380', 60, 'product-featured-710.jpg', '', '', '', '', '', 0, 1, 1, 182),
(711, 'KRYPTO MISKITTY CAT TREATS CHICKEN BITES ', '200', '200', 50, 'product-featured-711.jpg', '', '', '', '', '', 0, 1, 1, 142),
(712, 'KRYPTO MUNCHHY STIX CHICKEN STIX ', '280', '280', 1, 'product-featured-712.jpg', '', '', '', '', '', 0, 1, 1, 10),
(713, 'KRYPTO MUNCHHY STIX CHICKEN STIX MIX', '280', '280', 1, 'product-featured-713.jpg', '', '', '', '', '', 0, 1, 1, 10),
(714, 'KRYPTO MUNCHHY STIX CHICKEN STIX', '160', '160', 500, 'product-featured-714.jpg', '', '', '', '', '', 0, 1, 1, 10),
(715, 'KRYPTO MUTTON CHOOSTIX ', '280', '280', 1, 'product-featured-715.jpg', '', '', '', '', '', 0, 1, 1, 10),
(716, 'KRYPTO MUTTON STIX ', '160', '160', 500, 'product-featured-716.jpg', '', '', '', '', '', 0, 1, 1, 10),
(717, 'DOG MUZZEL NO-5', '120', '120', 1, 'product-featured-717.jpg', '', '', '', '', '', 0, 1, 1, 184),
(718, 'DOG MUZZEL NO-6', '130', '130', 1, 'product-featured-718.jpg', '', '', '', '', '', 0, 1, 1, 184),
(719, 'N&D CAT LAMB PUMP & BLUE CANN ', '170', '170', 80, 'product-featured-719.jpg', '', '', '', '', '', 0, 1, 1, 185),
(720, 'N&D CAT PRIME CHIC & POM ADULT CANN ', '170', '170', 80, 'product-featured-720.jpg', '', '', '', '', '', 0, 1, 1, 185),
(721, 'N&D CAT QUINOA QUAIL & COCO ADULT ', '170', '170', 80, 'product-featured-721.jpg', '', '', '', '', '', 0, 1, 1, 185),
(722, 'N&D DOG AG CP ADULT MED/MAXI ', '1990', '1990', 3, 'product-featured-722.jpg', '', '', '', '', '', 0, 1, 1, 177),
(723, 'N&D DOG AG CP PUPPY MED/ MAXI ', '1990', '1990', 2, 'product-featured-723.jpg', '', '', '', '', '', 0, 1, 1, 177),
(724, 'N&D DOG AG CP PUPPY MED/MAXI', '7890', '7890', 12, 'product-featured-724.jpg', '', '', '', '', '', 0, 1, 1, 177),
(725, 'N&D DOG AG CP PUPPY MINI ', '1990', '1990', 2, 'product-featured-725.jpg', '', '', '', '', '', 0, 1, 1, 177),
(726, 'N&D GF LB PUPPY MEDIUM AND MAXI ', '2350', '2350', 2, 'product-featured-726.jpg', '', '', '', '', '', 0, 1, 1, 177),
(727, 'N&D GF PKN CP PUPPY MED/MAXI ', '8890', '8890', 2, 'product-featured-727.jpg', '', '', '', '', '', 0, 1, 1, 177),
(728, 'N&D GF PKN CP PUPPY MINI ', '2390', '2390', 2, 'product-featured-728.jpg', '', '', '', '', '', 0, 1, 1, 177),
(729, 'N&D GF PKN CP STARTER PUPPY ', '2090', '2090', 2, 'product-featured-729.jpg', '', '', '', '', '', 0, 1, 1, 177),
(730, 'N&D GF PKN LB&BB ADULT ME/MAXI ', '8890', '8890', 12, 'product-featured-730.jpg', '', '', '', '', '', 0, 1, 1, 177),
(731, 'N&D GF PKN LB&BB ADULT MINI ', '2350', '2350', 2, 'product-featured-731.jpg', '', '', '', '', '', 0, 1, 1, 177),
(732, 'N&D GF PKN LB&BB PUP ME/MA  ', '8890', '8890', 12, 'product-featured-732.jpg', '', '', '', '', '', 0, 1, 1, 177),
(733, 'N&D LOW GRAIN MINI ADULT ', '780', '780', 800, 'product-featured-733.jpg', '', '', '', '', '', 0, 1, 1, 177),
(734, 'N&D PRIME CAT GF CP ADULT ', '680', '680', 300, 'product-featured-734.jpg', '', '', '', '', '', 0, 1, 1, 177),
(735, 'N&D PRIME CAT GF CP KITTEN ', '1990', '1990', 1, 'product-featured-735.jpg', '', '', '', '', '', 0, 1, 1, 185),
(736, 'NATURAL TOFU CLAMPING CAT LITTER ', '1250', '1250', 2, 'product-featured-736.jpg', '', '', '', '', '', 0, 1, 1, 187),
(737, 'NATURAL TOFU CLAMPING ODOUR CONTROL CAT LITTER ', '1050', '1050', 2, 'product-featured-737.jpg', '', '', '', '', '', 0, 1, 1, 187),
(738, 'NATURAL TOFU CLAMPING SENSITIVE CAT LITTER ', '1050', '1050', 2, 'product-featured-738.jpg', '', '', '', '', '', 0, 1, 1, 187),
(739, 'NATURAL TOFU CLAMPING SMART PELLETS CAT LITTER ', '950', '950', 2, 'product-featured-739.jpg', '', '', '', '', '', 0, 1, 1, 187),
(740, 'GNAWLERS PUPPY SNACK STRIP CHICKEN FLAVOUR ', '95', '95', 80, 'product-featured-740.jpg', '', '', '', '', '', 0, 1, 1, 177),
(741, 'NEO CLEAN CAT LITTER ODORREMOVER ', '450', '450', 623, 'product-featured-741.jpg', '', '', '', '', '', 0, 1, 1, 187),
(742, 'NEO CLEAN CAT LITTER ODOUR LOCK ', '1920', '1920', 12, 'product-featured-742.jpg', '', '', '', '', '', 0, 1, 1, 187),
(743, 'BEAPHER OFTAL TEAR STAIN REMOVER ', '450', '450', 50, 'product-featured-743.jpg', '', '', '', '', '', 0, 1, 1, 187),
(744, 'ORIJEN ORIGINAL ORIJEN ORIGINAL ', '2190', '2190', 2, 'product-featured-744.jpg', '', '', '', '', '', 0, 1, 1, 177),
(745, 'ORIJEN ORIGINAL DOG FOOD ', '4999', '4999', 6, 'product-featured-745.jpg', '', '', '', '', '', 0, 1, 1, 177),
(746, 'ORIJEN PUPPY ', '1999', '1999', 2, 'product-featured-746.jpg', '', '', '', '', '', 0, 1, 1, 177),
(747, 'ORIJEN PUPPY LARGE BREED ', '4999', '4999', 6, 'product-featured-747.jpg', '', '', '', '', '', 0, 1, 1, 177),
(748, 'PACIFIC STREAM CANINE (TASTE OF THE WILD)', '1599', '1599', 2, 'product-featured-748.jpg', '', '', '', '', '', 0, 1, 1, 177),
(749, 'PACIFIC STREAM CANINIE (SMOKED SALMON)TASTE  OF THE WILD ', '1600', '1600', 6, 'product-featured-749.jpg', '', '', '', '', '', 0, 1, 1, 177),
(750, 'PACIFIC STREAM PUPPY  (SMOKED SALMON}', '4140', '4140', 6, 'product-featured-750.jpg', '', '', '', '', '', 0, 1, 1, 177),
(751, 'PEDIGREE  ADULT SD LAMB&VEG ', '685', '685', 3, 'product-featured-751.jpg', '', '', '', '', '', 0, 1, 1, 11),
(752, 'PEDIGREE ADULT SD LAMB &VEG ', '260', '260', 1, 'product-featured-752.jpg', '', '', '', '', '', 0, 1, 1, 11),
(753, 'PEDIGREE ADULT SD LAMB&VEG ', '150', '150', 90, 'product-featured-753.jpg', '', '', '', '', '', 0, 1, 1, 11),
(754, 'PEDIGREE PUPPY SD LAMB&MILK ', '310', '310', 1, 'product-featured-754.jpg', '', '', '', '', '', 0, 1, 1, 11),
(755, 'PEDIGREE PUPPY SD LAMB&MILK ', '660', '660', 3, 'product-featured-755.jpg', '', '', '', '', '', 0, 1, 1, 11),
(756, 'PEDIGREE PUPPY SD LAMB&MILK', '150', '150', 90, 'product-featured-756.jpg', '', '', '', '', '', 0, 1, 1, 11),
(757, 'PEDIGREE  ADULT CHICKEN & VEG', '1110', '1110', 6, 'product-featured-757.jpg', '', '', '', '', '', 0, 1, 1, 11),
(758, 'PEDIGREE 100% VEGETARIAN ', '740', '740', 3, 'product-featured-758.jpg', '', '', '', '', '', 0, 1, 1, 11),
(759, 'PEDIGREE ACTIVE ADULT ', '3100', '3100', 10, 'product-featured-759.jpg', '', '', '', '', '', 0, 1, 1, 11),
(760, 'PEDIGREE ADULT 100%VEG ', '310', '310', 1, 'product-featured-760.jpg', '', '', '', '', '', 0, 1, 1, 11),
(761, 'PEDIGREE ADULT MEAT&RICE ', '3620', '3620', 20, 'product-featured-761.jpg', '', '', '', '', '', 0, 1, 1, 11),
(762, 'PEDIGREE BARBECUED CHICKEN MEAT JERKY STRPS ', '140', '140', 80, 'product-featured-762.jpg', '', '', '', '', '', 0, 1, 1, 11),
(763, 'PEDIGREE BIISCROK WITH LAMB ', '160', '160', 500, 'product-featured-763.jpg', '', '', '', '', '', 0, 1, 1, 11),
(764, 'PEDIGREE BISCROK BISCUIT CHICKEN ', '275', '275', 900, 'product-featured-764.jpg', '', '', '', '', '', 0, 1, 1, 11),
(765, 'PEDIGREE BISCROK CHICKEN ', '160', '160', 500, 'product-featured-765.jpg', '', '', '', '', '', 0, 1, 1, 11),
(766, 'PEDIGREE BISCROK MILK&CHICKEN ', '160', '160', 500, 'product-featured-766.jpg', '', '', '', '', '', 0, 1, 1, 11),
(767, 'PEDIGREE BISCROK WITH LAMB ', '15', '15', 50, 'product-featured-767.jpg', '', '', '', '', '', 0, 1, 1, 11),
(768, 'PEDIGREE BISCROK WITH MILK&CHEN ', '275', '275', 900, 'product-featured-768.jpg', '', '', '', '', '', 0, 1, 1, 11),
(769, 'PEDIGREE BSCROK WITH LAMB ', '275', '275', 900, 'product-featured-769.jpg', '', '', '', '', '', 0, 1, 1, 11),
(770, 'PEDIGREE CHICKEN AND VEG ', '260', '260', 1, 'product-featured-770.jpg', '', '', '', '', '', 0, 1, 1, 11),
(771, 'PEDIGREE CHICKEN AND VEG ', '20', '20', 100, 'product-featured-771.jpg', '', '', '', '', '', 0, 1, 1, 11),
(772, 'PEDIGREE CHICKEN AND VEG ', '1850', '1850', 10, 'product-featured-772.jpg', '', '', '', '', '', 0, 1, 1, 11),
(773, 'PEDIGREE CHICKEN AND VEG ', '3600', '3600', 20, 'product-featured-773.jpg', '', '', '', '', '', 0, 1, 1, 11),
(774, 'PEDIGREE CHICKEN AND VEG ', '660', '660', 3, 'product-featured-774.jpg', '', '', '', '', '', 0, 1, 1, 11),
(775, 'PEDIGREE CHICKEN&MILK PUPPY ', '1310', '1310', 6, 'product-featured-775.jpg', '', '', '', '', '', 0, 1, 1, 11),
(776, 'PEDIGREE CHICKEN&VEG ', '1890', '1890', 10, 'product-featured-776.jpg', '', '', '', '', '', 0, 1, 1, 11),
(777, 'PEDIGREE DENTASTIX MONO LARGE ', '240', '240', 270, 'product-featured-777.jpg', '', '', '', '', '', 0, 1, 1, 11),
(778, 'PEDIGREE DENTASTIX MONO MEDIUM ', '175', '175', 180, 'product-featured-778.jpg', '', '', '', '', '', 0, 1, 1, 11),
(779, 'PEDIGREE GRAVY ADULT CHICKEN AND LIVER CHUNKS ', '35', '35', 70, 'product-featured-779.jpg', '', '', '', '', '', 0, 1, 1, 11),
(780, 'PEDIGREE GRAVY PUPPY CHICKEN AND CHUNKS ', '35', '35', 70, 'product-featured-780.jpg', '', '', '', '', '', 0, 1, 1, 11),
(781, 'PEDIGREE JUMBO BONE', '200g', '200g', 130, 'product-featured-781.jpg', '', '', '', '', '', 0, 1, 1, 11),
(782, 'PEDIGREE JUMBONE CK LB SML ', '100', '100', 160, 'product-featured-782.png', '', '', '', '', '', 0, 1, 1, 11),
(783, 'PEDIGREE MEAT JARKY GRILLED LIVER ', '120', '120', 60, 'product-featured-783.jpg', '', '', '', '', '', 0, 1, 1, 11),
(784, 'PEDIGREE MEAT JERKY GRILLED LIVER ', '140', '140', 80, 'product-featured-784.jpg', '', '', '', '', '', 0, 1, 1, 11),
(785, 'PEDIGREE MEAT JERKY STIX BACON ', '120', '120', 60, 'product-featured-785.jpg', '', '', '', '', '', 0, 1, 1, 11),
(786, 'PEDIGREE MEAT&RICE ', '260', '260', 1, 'product-featured-786.jpg', '', '', '', '', '', 0, 1, 1, 11),
(787, 'PEDIGREE MEAT&RICE ', '1890', '1890', 10, 'product-featured-787.jpg', '', '', '', '', '', 0, 1, 1, 11),
(788, 'PEDIGREE MEAT&RICE ADULT DRY DOG FOOD ', '660', '660', 3, 'product-featured-788.jpg', '', '', '', '', '', 0, 1, 1, 11),
(789, 'PEDIGREE MOTHER &BABY DOG STARTER ', '1200', '1200', 3, 'product-featured-789.jpg', '', '', '', '', '', 0, 1, 1, 11),
(790, 'PEDIGREE MOTHER&BABYDOG STARTER ', '450', '450', 1, 'product-featured-790.jpg', '', '', '', '', '', 0, 1, 1, 11),
(791, 'PEDIGREE PRO  MOTHER&PUP ', '520', '520', 1, 'product-featured-791.jpg', '', '', '', '', '', 0, 1, 1, 11),
(792, 'PEDIGREE PRO ACTIVE ADULT ', '1000', '1000', 3, 'product-featured-792.jpg', '', '', '', '', '', 0, 1, 1, 11),
(793, 'PEDIGREE PRO ADULT SMALL BREAD ', '420', '420', 1, 'product-featured-793.jpg', '', '', '', '', '', 0, 1, 1, 11),
(794, 'PEDIGREE PRO ADULT SMALL BREED ', '830.50', '830.50', 3, 'product-featured-794.jpg', '', '', '', '', '', 0, 1, 1, 11),
(795, 'PEDIGREE PRO PSB ', '381.36', '381.36', 1, 'product-featured-795.jpg', '', '', '', '', '', 0, 1, 1, 11),
(796, 'PEDIGREE PRO PUPPY LARGE BREED ', '3200', '3200', 10, 'product-featured-796.jpg', '', '', '', '', '', 0, 1, 1, 11),
(797, 'PEDIGREE PRO PUPPY LARGE BREED ', '1080', '1080', 3, 'product-featured-797.jpg', '', '', '', '', '', 0, 1, 1, 11),
(798, 'PEDIGREE PRO PUPPY PSB ', '847.46', '847.46', 3, 'product-featured-798.jpg', '', '', '', '', '', 0, 1, 1, 11),
(799, 'PEDIGREE PRO STARTER MOTHER&PUP DRY FOOD ', '1042.30', '1042.30', 3, 'product-featured-799.jpg', '', '', '', '', '', 0, 1, 1, 11),
(800, 'PEDIGREE PUPPY CHICKEN & MILK ', '584.75', '584.75', 3, 'product-featured-800.jpg', '', '', '', '', '', 0, 1, 1, 11),
(801, 'PEDIGREE PUPPY CHICKEN AND MILK ', '245.60', '245.60', 1, 'product-featured-801.jpg', '', '', '', '', '', 0, 1, 1, 11),
(802, 'PEDIGREE PUPPY CHICKEN AND MILK ', '16.95', '16.95', 90, 'product-featured-802.jpg', '', '', '', '', '', 0, 1, 1, 11),
(803, 'PEDIGREE PUPPY CHICKEN&MILK ', '2070', '2070', 10, 'product-featured-803.jpg', '', '', '', '', '', 0, 1, 1, 11),
(804, 'PEDIGREE PUPPY MEAT&MILK ', '2070', '2070', 10, 'product-featured-804.jpg', '', '', '', '', '', 0, 1, 1, 11),
(805, 'PEDIGREE PUPPY MEAT&MILK ', '690', '690', 3, 'product-featured-805.jpg', '', '', '', '', '', 0, 1, 1, 11),
(806, 'PEDIGREE PUPPY100%VEGETABLE', '279.66', '279.66', 1, 'product-featured-806.jpg', '', '', '', '', '', 0, 1, 1, 11),
(807, 'PEDIGREE RODEO 4*12*', '127.12', '127.12', 123, 'product-featured-807.jpg', '', '', '', '', '', 0, 1, 1, 11),
(808, 'PEDIGREE RODEO DUOS 4*10*', '127.12', '127.12', 123, 'product-featured-808.jpg', '', '', '', '', '', 0, 1, 1, 11),
(809, 'PEDIGREE SENIOR CHCKEN&RICE ADULT ', '593.22', '593.22', 3, 'product-featured-809.jpg', '', '', '', '', '', 0, 1, 1, 11),
(810, 'PEDIGREE SMOKED SALMON STICKS ', '101.80', '101.80', 60, 'product-featured-810.jpg', '', '', '', '', '', 0, 1, 1, 11),
(811, 'PEDIGREE TASTY BITES CHICKEN&SMOKE FLAVOUR ', '127.12', '127.12', 50, 'product-featured-811.jpg', '', '', '', '', '', 0, 1, 1, 11),
(812, 'PEDIGREE TASTY BITES LAMB FLAVOR ', '150', '150', 50, 'product-featured-812.jpg', '', '', '', '', '', 0, 1, 1, 11),
(813, 'PEDIGREE TM CHEWY  CUBES PUPPY ', '150', '150', 125, 'product-featured-813.jpg', '', '', '', '', '', 0, 1, 1, 11),
(814, 'PEDIGREE TM CHEWY CUBES CK DK 6*8*', '150', '150', 130, 'product-featured-814.jpg', '', '', '', '', '', 0, 1, 1, 11),
(815, 'PET PATTERN HYGIENE CAT LITTER', '500', '500', 5, 'product-featured-815.jpg', '', '', '', '', '', 0, 1, 1, 187),
(816, 'PET SOFT PET WIPES ', '350', '350', 100, 'product-featured-816.jpg', '', '', '', '', '', 0, 1, 1, 187),
(817, 'PET STORY MEAT JERKY ', '160', '160', 60, 'product-featured-817.jpg', '', '', '', '', '', 0, 1, 1, 177),
(818, 'PETAHOLIC CAT LITTER ', '995', '995', 10, 'product-featured-818.jpg', '', '', '', '', '', 1, 1, 1, 187),
(819, 'PETAHOLIC DIAPER LARGE', '485', '485', 6, 'product-featured-819.jpg', '', '', '', '', '', 0, 1, 1, 184),
(820, 'PETAHOLIC DIAPER MEDIUM', '425', '425', 6, 'product-featured-820.jpg', '', '', '', '', '', 0, 1, 1, 184),
(821, 'PETAHOLIC DIAPER SMALL', '375', '375', 6, 'product-featured-821.jpg', '', '', '', '', '', 0, 1, 1, 184),
(822, 'PETAHOLIC DIAPER XL', '480', '480', 6, 'product-featured-822.jpg', '', '', '', '', '', 0, 1, 1, 184),
(823, 'PETAHOLIC DIAPER XXL', '580', '580', 6, 'product-featured-823.jpg', '', '', '', '', '', 0, 1, 1, 184),
(824, 'PETSWILL ALOO VERA SHAMPOO ', '475', '475', 6, 'product-featured-824.jpg', '', '', '', '', '', 0, 1, 1, 183),
(825, 'PETSWILL ANTI-BACTERIAL ', '575', '575', 6, 'product-featured-825.jpg', '', '', '', '', '', 0, 1, 1, 183),
(826, 'PETSWILL ANTI-DANDRUFF ANTI- ITCH ', '495', '495', 6, 'product-featured-826.jpg', '', '', '', '', '', 0, 1, 1, 183),
(827, 'PETSWILL LONG COAT ', '275', '275', 6, 'product-featured-827.jpg', '', '', '', '', '', 0, 1, 1, 183),
(828, 'PETSWILL LONG COAT ', '275', '275', 6, 'product-featured-828.jpg', '', '', '', '', '', 0, 1, 1, 183),
(829, 'PETSWILL LONG COAT ', '495', '495', 6, 'product-featured-829.jpg', '', '', '', '', '', 0, 1, 1, 183),
(830, 'PETSWILL NEEL OIL SHAMPOO ', '575', '575', 6, 'product-featured-830.jpg', '', '', '', '', '', 0, 1, 1, 183),
(831, 'PETSWILL PUPPY CEREAL LAMB FLAVOUR ', '340', '340', 6, 'product-featured-831.jpg', '', '', '', '', '', 0, 1, 1, 177),
(832, 'PETSWILL PUPPY CEREAL MIXED FRUIT FLAVOUR ', '340', '340', 6, 'product-featured-832.jpg', '', '', '', '', '', 0, 1, 1, 177),
(833, 'PETSWILL PUPPY CEREAL WHEAT FLAVOUR ', '340', '340', 6, 'product-featured-833.jpg', '', '', '', '', '', 0, 1, 1, 177),
(834, 'PETSWILL SHORT CORT ', '495', '495', 6, 'product-featured-834.jpg', '', '', '', '', '', 0, 1, 1, 183),
(835, 'PETSWILL WHITE AND BRIGHT SHAMPOO ', '495', '495', 6, 'product-featured-835.jpg', '', '', '', '', '', 0, 1, 1, 183),
(836, 'LAL PET POOP SCOOP ', '500', '500', 6, 'product-featured-836.jpg', '', '', '', '', '', 0, 1, 1, 184),
(837, 'LAL PET POOP SCOOP', '100', '100', 6, 'product-featured-837.jpg', '', '', '', '', '', 0, 1, 1, 184),
(838, 'LAL PET CAT POOP SCOOP', '75', '75', 6, 'product-featured-838.jpg', '', '', '', '', '', 0, 1, 1, 184),
(839, 'LAL PET POOP SCOOP', '250', '250', 6, 'product-featured-839.jpg', '', '', '', '', '', 0, 1, 1, 184),
(840, 'PORTABLE WATER BOTTLE ', '210', '210', 6, 'product-featured-840.jpg', '', '', '', '', '', 0, 1, 1, 184),
(841, 'PRO PLAN PUPPY LARGE BREED ', '1775', '1775', 6, 'product-featured-841.jpg', '', '', '', '', '', 0, 1, 1, 177),
(842, 'PRO PLAN PUPPY STVE DIGEST ', '1900', '1900', 6, 'product-featured-842.jpg', '', '', '', '', '', 0, 1, 1, 177),
(843, 'PROPLAN ADULTDOG STVE DGST ', '1720', '1720', 6, 'product-featured-843.jpg', '', '', '', '', '', 0, 1, 1, 177),
(844, 'PROPLAN PUPPY  MEDIUM CHICKEN ', '1504.24', '1504.24', 6, 'product-featured-844.jpg', '', '', '', '', '', 0, 1, 1, 177),
(845, 'PUREPET BISCUIT 100% VEGETARIAN JAR ', '275', '275', 6, 'product-featured-845.jpg', '', '', '', '', '', 0, 1, 1, 177),
(846, 'PUREPET CHEW BONE ', '99', '99', 6, 'product-featured-846.jpg', '', '', '', '', '', 0, 1, 1, 179),
(847, 'PUREPET CHICKEN BISCUITS ', '275', '275', 6, 'product-featured-847.jpg', '', '', '', '', '', 0, 1, 1, 177),
(848, 'PUREPET CHEW BONE ', '249', '249', 6, 'product-featured-848.jpg', '', '', '', '', '', 0, 1, 1, 179),
(849, 'PUREPET MILK BISCUITS', '275', '275', 6, 'product-featured-849.jpg', '', '', '', '', '', 0, 1, 1, 177),
(850, 'PURINA  SUPER COAT PUPPY ', '840', '840', 6, 'product-featured-850.jpg', '', '', '', '', '', 0, 1, 1, 177),
(851, 'PURINA PRO PLAN ADULT  LARGE ', '1575', '1575', 6, 'product-featured-851.jpg', '', '', '', '', '', 0, 1, 1, 177),
(852, 'PURINA PRO PLAN ADULT MEDIUM LARGE ', '1575', '1575', 6, 'product-featured-852.jpg', '', '', '', '', '', 0, 1, 1, 177),
(853, 'PURINA PRO PLAN ALL SIZE ADULT DRY DOG FOOD ', '1900', '1900', 6, 'product-featured-853.jpg', '', '', '', '', '', 0, 1, 1, 177),
(854, 'PURINA PRO PLAN ALL SIZE ALL LIFE STAGES CHICKEN FORMULA ', '6000', '6000', 6, 'product-featured-854.jpg', '', '', '', '', '', 0, 1, 1, 177),
(855, 'PURINA PRO PLAN PUPPY  SMALL AND MINI ', '1890', '1890', 6, 'product-featured-855.jpg', '', '', '', '', '', 0, 1, 1, 177),
(856, 'PURINA PRO PLAN PUPPY MEDIUM AND LARGE ', '7200', '7200', 6, 'product-featured-856.jpg', '', '', '', '', '', 0, 1, 1, 177),
(857, 'PURINA PRO PLAN PUPPY MEDIUM AND LARGE ', '1775', '1775', 6, 'product-featured-857.jpg', '', '', '', '', '', 0, 1, 1, 177),
(858, 'PURINA PROPLAN ADULT DOG LARGE BREED CHICKEN ', '8200', '8200', 6, 'product-featured-858.jpg', '', '', '', '', '', 0, 1, 1, 177),
(859, 'PURINA SUPER COAT ADULT ', '790', '790', 6, 'product-featured-859.jpg', '', '', '', '', '', 0, 1, 1, 177),
(860, 'PURINA SUPER COAT PUPPY ', '2730', '2730', 6, 'product-featured-860.jpg', '', '', '', '', '', 0, 1, 1, 177),
(861, 'ROYAL CANIN PERSIAN ADULT GRAVY ', '95', '95', 6, 'product-featured-861.jpg', '', '', '', '', '', 0, 1, 1, 185),
(862, 'ROYAL  CANIN MAXI ADULT GRAVY ', '160', '160', 6, 'product-featured-862.jpg', '', '', '', '', '', 0, 1, 1, 177),
(863, 'ROYAL  CANIN MAXI PUPPY ', '2830', '2830', 6, 'product-featured-863.jpg', '', '', '', '', '', 0, 1, 1, 177),
(864, 'ROYAL  CANIN MAXI PUPPY ', '1240', '1240', 6, 'product-featured-864.jpg', '', '', '', '', '', 0, 1, 1, 177),
(865, 'ROYAL CANIN  MINI PUPPY ', '570', '570', 6, 'product-featured-865.jpg', '', '', '', '', '', 0, 1, 1, 177),
(866, 'ROYAL CANIN CAT FIT 32', '1280', '1280', 6, 'product-featured-866.jpg', '', '', '', '', '', 0, 1, 1, 185),
(867, 'ROYAL CANIN FHN HAIR &SKIN ', '1340', '1340', 6, 'product-featured-867.jpg', '', '', '', '', '', 0, 1, 1, 185),
(868, 'ROYAL CANIN FIT 32 ', '2270', '2270', 6, 'product-featured-868.jpg', '', '', '', '', '', 0, 1, 1, 185),
(869, 'ROYAL CANIN GERMAN SHEPHARD ADULT ', '2130', '2130', 6, 'product-featured-869.jpg', '', '', '', '', '', 0, 1, 1, 177),
(870, 'ROYAL CANIN GERMAN SHEPHARD PUPPY ', '2400', '2400', 6, 'product-featured-870.jpg', '', '', '', '', '', 0, 1, 1, 177),
(871, 'ROYAL CANIN GERMAN SHEPHERD ADULT ', '2130', '2130', 6, 'product-featured-871.jpg', '', '', '', '', '', 0, 1, 1, 177),
(872, 'ROYAL CANIN GIANT ADULT ', '7860', '7860', 6, 'product-featured-872.jpg', '', '', '', '', '', 0, 1, 1, 177),
(873, 'ROYAL CANIN GIANT PUPPY ', '2520', '2520', 6, 'product-featured-873.jpg', '', '', '', '', '', 0, 1, 1, 177),
(874, 'ROYAL CANIN GOLDEN RETRIEVER ADULT', '8660', '8660', 6, 'product-featured-874.jpg', '', '', '', '', '', 0, 1, 1, 177),
(875, 'ROYAL CANIN GOLDEN RETRIEVER ADULT ', '2490', '2490', 6, 'product-featured-875.jpg', '', '', '', '', '', 0, 1, 1, 177),
(876, 'ROYAL CANIN GOLDEN RETRIEVER ADULT ', '95', '95', 6, 'product-featured-876.jpg', '', '', '', '', '', 0, 1, 1, 185),
(877, 'ROYAL CANIN INTENSE BEAUTY GRAVY ', '105', '105', 6, 'product-featured-877.jpg', '', '', '', '', '', 0, 1, 1, 185),
(878, 'ROYAL CANIN KITTEN GRAVY', '105', '105', 6, 'product-featured-878.jpg', '', '', '', '', '', 0, 1, 1, 185),
(879, 'ROYAL CANIN LABRADOR ADULT ', '8160', '8160', 6, 'product-featured-879.jpg', '', '', '', '', '', 0, 1, 1, 177),
(880, 'ROYAL CANIN LABRADOR ADULT', '2230', '2230', 6, 'product-featured-880.jpg', '', '', '', '', '', 0, 1, 1, 177),
(881, 'ROYAL CANIN LABRADOR RETRIEER PUPPY ', '8500', '8500', 6, 'product-featured-881.jpg', '', '', '', '', '', 0, 1, 1, 177),
(882, 'ROYAL CANIN LABRADOR RETRIEVER PUPPY ', '2360', '2360', 6, 'product-featured-882.jpg', '', '', '', '', '', 0, 1, 1, 177),
(883, 'ROYAL CANIN MAXI ADULT ', '8100', '8100', 6, 'product-featured-883.jpg', '', '', '', '', '', 0, 1, 1, 177),
(884, 'ROYAL CANIN MAXI ADULT ', '2580', '2580', 6, 'product-featured-884.jpg', '', '', '', '', '', 0, 1, 1, 177),
(885, 'ROYAL CANIN MAXI PUPPY ', '750', '750', 6, 'product-featured-885.jpg', '', '', '', '', '', 0, 1, 1, 177),
(886, 'ROYAL CANIN MAXI STARTER ', '970', '970', 6, 'product-featured-886.jpg', '', '', '', '', '', 0, 1, 1, 177),
(887, 'ROYAL CANIN MAXI STARTER ', '3110', '3110', 6, 'product-featured-887.jpg', '', '', '', '', '', 0, 1, 1, 177),
(888, 'ROYAL CANIN MEDIUM ADULT FOR DRY DOG FOOD', '2490', '2490', 6, 'product-featured-888.jpg', '', '', '', '', '', 0, 1, 1, 177),
(889, 'ROYAL CANIN MEDIUM PUPPY ', '750', '750', 6, 'product-featured-889.jpg', '', '', '', '', '', 0, 1, 1, 177),
(890, 'ROYAL CANIN MEDIUM PUPPY ', '2820', '2820', 6, 'product-featured-890.jpg', '', '', '', '', '', 0, 1, 1, 177),
(891, 'ROYAL CANIN MINI ADULT ', '2710', '2710', 6, 'product-featured-891.jpg', '', '', '', '', '', 0, 1, 1, 177),
(892, 'ROYAL CANIN MINI ADULT GRAVY SALSA', '95', '95', 6, 'product-featured-892.jpg', '', '', '', '', '', 0, 1, 1, 177),
(893, 'ROYAL CANIN MINI PUPPY 4KG', '2950', '2950', 6, 'product-featured-893.jpg', '', '', '', '', '', 0, 1, 1, 177),
(894, 'ROYAL CANIN MINI PUPPY GRAVY SALSA ', '105', '105', 6, 'product-featured-894.jpg', '', '', '', '', '', 0, 1, 1, 177),
(895, 'ROYAL CANIN MINI STARTER ', '910', '910', 6, 'product-featured-895.jpg', '', '', '', '', '', 0, 1, 1, 177),
(896, 'ROYAL CANIN MINI STARTER ', '2710', '2710', 6, 'product-featured-896.jpg', '', '', '', '', '', 0, 1, 1, 177),
(897, 'ROYAL CANIN PERSIAN ADULT ', '1890', '1890', 6, 'product-featured-897.jpg', '', '', '', '', '', 0, 1, 1, 185),
(898, 'ROYAL CANIN PERSIAN ADULT ', '3200', '3200', 6, 'product-featured-898.jpg', '', '', '', '', '', 0, 1, 1, 185),
(899, 'ROYAL CANIN ROTTWEILER PUPPY ', '8710', '8710', 6, 'product-featured-899.jpg', '', '', '', '', '', 0, 1, 1, 177),
(900, 'ROYAL CANIN SECOND AGE KITTEN ', '2570', '2570', 6, 'product-featured-900.jpg', '', '', '', '', '', 0, 1, 1, 185),
(901, 'ROYAL CANIN SECOND AGE KITTEN FOOD ', '1320', '1320', 6, 'product-featured-901.jpg', '', '', '', '', '', 0, 1, 1, 185),
(902, 'ROYAL CANN MAXI ADULT ', '650', '650', 6, 'product-featured-902.jpg', '', '', '', '', '', 0, 1, 1, 177),
(903, 'ROYAL CANNI MINI ADULT ', '550', '550', 6, 'product-featured-903.jpg', '', '', '', '', '', 0, 1, 1, 177),
(904, 'RUFFWEAR  FRONT RANGE HARNESH RED SUMAC SMALL', '3500', '3500', 6, 'product-featured-904.jpg', '', '', '', '', '', 0, 1, 1, 184),
(905, 'RUFFWEAR FRONT RANGE  HARNESH  TUMALO TEAL SMALL', '3500', '3500', 6, 'product-featured-905.jpg', '', '', '', '', '', 0, 1, 1, 184),
(906, 'RUFFWEAR FRONT RANGE  HARNESH AURORA TEAL MEDIUM', '3500', '3500', 6, 'product-featured-906.jpg', '', '', '', '', '', 0, 1, 1, 184),
(907, 'RUFFWEAR FRONT RANGE HARNESH -TUMALO TEAL LARGE/XL', '3700', '3700', 6, 'product-featured-907.jpg', '', '', '', '', '', 0, 1, 1, 184),
(908, 'RUFFWEAR FRONT RANGE HARNESH -TWILIGHT GREY LARGE /XL', '3700', '3700', 6, 'product-featured-908.jpg', '', '', '', '', '', 0, 1, 1, 184),
(909, 'RUFFWEAR FRONT RANGE HARNESH BLUE MOON MEDIUM', '3500', '3500', 6, 'product-featured-909.jpg', '', '', '', '', '', 0, 1, 1, 184),
(910, 'RUFFWEAR FRONT RANGE HARNESH HIBISCUS PINK SMALL', '3500', '3500', 6, 'product-featured-910.jpg', '', '', '', '', '', 0, 1, 1, 184),
(911, 'RUFFWEAR FRONT RANGE HARNESH HUCKLEBERRY BLUE LARGE/XL', '3700', '3700', 6, 'product-featured-911.jpg', '', '', '', '', '', 0, 1, 1, 184),
(912, 'RUFFWEAR FRONT RANGE HARNESH HUCKLEBERRY BLUE MEDIUM', '3600', '3600', 6, 'product-featured-912.jpg', '', '', '', '', '', 0, 1, 1, 184),
(913, 'RUFFWEAR GNAWT -A-CONE TOY FOR DOGS METOLIUS BLUE', '950', '950', 6, 'product-featured-913.jpg', '', '', '', '', '', 0, 1, 1, 184),
(914, 'RUFFWEAR GNAWT-A-ROCK-SOCKEYE RED STANDARD', '950', '950', 6, 'product-featured-914.jpg', '', '', '', '', '', 0, 1, 1, 184),
(915, 'RUFFWEAR KNOT-A-LEASH RED CURRANT LARGE', '2500', '2500', 6, 'product-featured-915.jpg', '', '', '', '', '', 0, 1, 1, 184),
(916, 'S .HEART CREAMY TREATSTRAWBERRY FLAVOR ', '80', '80', 6, 'product-featured-916.jpg', '', '', '', '', '', 0, 1, 1, 177),
(917, 'S.HEART CREAMY TREAT CHICKEN&CARROT ', '80', '80', 6, 'product-featured-917.jpg', '', '', '', '', '', 0, 1, 1, 177),
(918, 'S.HEART CREAMY TREAT CHICKEN&PUMPKIN ', '80', '80', 6, 'product-featured-918.jpg', '', '', '', '', '', 0, 1, 1, 177),
(919, 'DROOLS SALMON OIL', '425', '425', 6, 'product-featured-919.jpg', '', '', '', '', '', 0, 1, 1, 12),
(920, 'SAMGLOW SHAMPOO ', '190', '190', 6, 'product-featured-920.jpg', '', '', '', '', '', 0, 1, 1, 183),
(921, 'SAMOLAC PRO ', '415', '415', 6, 'product-featured-921.jpg', '', '', '', '', '', 0, 1, 1, 178),
(922, 'HILLS SD PUP SB CKN ', '1320', '1320', 6, 'product-featured-922.jpg', '', '', '', '', '', 0, 1, 1, 177),
(923, 'HILLS SD PUPPY SMALL BITES ', '7000', '7000', 6, 'product-featured-923.jpg', '', '', '', '', '', 0, 1, 1, 177),
(924, 'SHEBA  MELTY PREMIUM SASAMI', '120', '120', 6, 'product-featured-924.jpg', '', '', '', '', '', 0, 1, 1, 185),
(925, 'SHEBA CHICKEN 70GM', '55', '55', 6, 'product-featured-925.jpg', '', '', '', '', '', 0, 1, 1, 177),
(926, 'SHEBA CHICKEN WITH TUNA', '55', '55', 6, 'product-featured-926.jpg', '', '', '', '', '', 0, 1, 1, 177),
(927, 'SHEBA DELUXE CHICKEN BREAST IN GRAVY ', '80', '80', 6, 'product-featured-927.jpg', '', '', '', '', '', 0, 1, 1, 185),
(928, 'SHEBA DELUXE TUNA & SNAPPER IN GRAVY CANN ', '80', '80', 6, 'product-featured-928.jpg', '', '', '', '', '', 0, 1, 1, 185),
(929, 'SHEBA DELUXE TUNA AND PRAWN IN GRAVY CANN ', '80', '80', 6, 'product-featured-929.jpg', '', '', '', '', '', 0, 1, 1, 185),
(930, 'SHEBA DELUXE TUNA FILETS IN JELLY CANN ', '80', '80', 6, 'product-featured-930.jpg', '', '', '', '', '', 0, 1, 1, 185),
(931, 'SHEBA FLAKE FISH DRY BANITO', '33.90', '33.90', 6, 'product-featured-931.jpg', '', '', '', '', '', 0, 1, 1, 185),
(932, 'SHEBA KITTEN CHICKEN 70GM', '46.61', '46.61', 6, 'product-featured-932.jpg', '', '', '', '', '', 0, 1, 1, 185),
(933, 'SHEBA MAGURO BREAM', '33.90', '33.90', 6, 'product-featured-933.jpg', '', '', '', '', '', 0, 1, 1, 185),
(934, 'SHEBA MAGURO SELECTION ', '83.90', '83.90', 6, 'product-featured-934.jpg', '', '', '', '', '', 0, 1, 1, 185),
(935, 'SHEBA SKIPJACK AND SALMON ', '33.90', '33.90', 6, 'product-featured-935.jpg', '', '', '', '', '', 0, 1, 1, 185),
(936, 'SHEBA TUNA PUMPKIN & CARROT ', '46.61', '46.61', 6, 'product-featured-936.jpg', '', '', '', '', '', 0, 1, 1, 185),
(937, 'SIERRA MOUNTAIN CANINE (TASTE OF THE WILD)', '1334.75', '1334.75', 6, 'product-featured-937.jpg', '', '', '', '', '', 0, 1, 1, 177),
(938, 'SMART HEART ADULT  DOG FOR POWERPACK ', '930', '930', 6, 'product-featured-938.jpg', '', '', '', '', '', 0, 1, 1, 177),
(939, 'SMART HEART APRO IQ FORMULA ADULT DOG FOOD ', '2550', '2550', 6, 'product-featured-939.jpg', '', '', '', '', '', 0, 1, 1, 177),
(940, 'SMART HEART CREAMY TREAT CHK&SPINACH ', '80', '80', 6, 'product-featured-940.jpg', '', '', '', '', '', 0, 1, 1, 177),
(941, 'SMART HEART PUPPY DOG FOOD POWER PACK ', '900', '900', 6, 'product-featured-941.jpg', '', '', '', '', '', 0, 1, 1, 177),
(942, 'SMART HEART PUPPY GRAVY', '35', '35', 6, 'product-featured-942.jpg', '', '', '', '', '', 0, 1, 1, 177),
(943, 'SMARTHEART GRAVY ADULT', '35', '35', 6, 'product-featured-943.jpg', '', '', '', '', '', 0, 1, 1, 177);
INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `ecat_id`) VALUES
(944, 'SPIRAL TWIST STICK BBQ&LAMB FLAVOR ', '595', '595', 6, 'product-featured-944.jpg', '', '', '', '', '', 0, 1, 1, 177),
(945, 'SPIRAL TWIST STICK CHLOROPHYLL&MINT FLAVOR ', '595', '595', 6, 'product-featured-945.jpg', '', '', '', '', '', 0, 1, 1, 177),
(946, 'STANDING BOWL', '750', '750', 6, 'product-featured-946.jpg', '', '', '', '', '', 0, 1, 1, 184),
(947, 'STAR COAT LIQUIT', '320', '320', 6, 'product-featured-947.jpg', '', '', '', '', '', 0, 1, 1, 183),
(948, 'STAR COAT SYRUP ', '320', '320', 6, 'product-featured-948.jpg', '', '', '', '', '', 0, 1, 1, 183),
(949, 'STEEL COLOURED BOWL SIZE-1', '100', '100', 6, 'product-featured-949.jpg', '', '', '', '', '', 0, 1, 1, 184),
(950, 'STEEL COLOURED BOWL SIZE-2', '130', '130', 6, 'product-featured-950.jpg', '', '', '', '', '', 0, 1, 1, 184),
(951, 'STEEL COLOURED BOWL SIZE-3', '155', '155', 6, 'product-featured-951.jpg', '', '', '', '', '', 0, 1, 1, 184),
(952, 'STEEL COLOURED BOWL SIZE-4NO', '220', '220', 6, 'product-featured-952.jpg', '', '', '', '', '', 0, 1, 1, 184),
(953, 'STEEL COLOURED BOWL SIZE-5NO', '250', '250', 6, 'product-featured-953.jpg', '', '', '', '', '', 0, 1, 1, 184),
(954, 'STEEL OLOURED  BOWL SIZE-2', '145', '145', 6, 'product-featured-954.jpg', '', '', '', '', '', 0, 1, 1, 184),
(955, 'SUPER BONE OLIVE OIL', '253.39', '253.39', 6, 'product-featured-955.jpg', '', '', '', '', '', 0, 1, 1, 177),
(956, 'SUPER CAT LITTER 5KG', '500', '500', 6, 'product-featured-956.jpg', '', '', '', '', '', 0, 1, 1, 187),
(957, 'SUPER CAT LITTER 25KG', '1610', '1610', 6, 'product-featured-957.jpg', '', '', '', '', '', 0, 1, 1, 187),
(958, 'SUPER CAT LITTER 5KG', '338.98', '338.98', 6, 'product-featured-958.jpg', '', '', '', '', '', 0, 1, 1, 187),
(959, 'SUPER COAT ADULT 120GM', '29.66', '29.66', 6, 'product-featured-959.jpg', '', '', '', '', '', 0, 1, 1, 177),
(960, 'PURINA SUPER COAT ADULT ALL BREED CHICKEN ', '2365', '2365', 6, 'product-featured-960.jpg', '', '', '', '', '', 0, 1, 1, 177),
(961, 'PURINA SUPER COAT ADULT HEALTHY WEIGHT ', '805', '805', 6, 'product-featured-961.jpg', '', '', '', '', '', 0, 1, 1, 177),
(962, 'PURINA SUPER COAT PUPPY CHICKEN ', '40', '40', 6, 'product-featured-962.jpg', '', '', '', '', '', 0, 1, 1, 177),
(963, 'PURINA SUPERCOAT ADULT ALL BREED CHICKEN ', '4400', '4400', 6, 'product-featured-963.jpg', '', '', '', '', '', 0, 1, 1, 177),
(964, 'TASTE OF THE WILD ', '1575', '1575', 6, 'product-featured-964.jpg', '', '', '', '', '', 0, 1, 1, 177),
(965, 'TE-681 LATEX RUGBY SMALL', '220', '220', 6, 'product-featured-965.jpg', '', '', '', '', '', 0, 1, 1, 184),
(966, 'TE-76 DENTA BONE SMALL', '375', '375', 6, 'product-featured-966.jpg', '', '', '', '', '', 0, 1, 1, 184),
(967, 'TE-77 DENTA BONE LARGE ', '450', '450', 6, 'product-featured-967.jpg', '', '', '', '', '', 0, 1, 1, 184),
(968, 'TE-788 YELLOW ODD BALL LARGE', '470', '470', 6, 'product-featured-968.jpg', '', '', '', '', '', 0, 1, 1, 184),
(969, 'TE-789 YELLOW BONE SMALL ', '350', '350', 6, 'product-featured-969.jpg', '', '', '', '', '', 0, 1, 1, 184),
(970, 'TE-90 LATEX BRANCH LARGE ', '320', '320', 6, 'product-featured-970.jpg', '', '', '', '', '', 0, 1, 1, 184),
(971, 'TE-93 LATEX STAR BALL SMALL', '230', '230', 6, 'product-featured-971.jpg', '', '', '', '', '', 0, 1, 1, 184),
(972, 'TE-94 LATEX STAR BALL LARGE ', '320', '320', 6, 'product-featured-972.jpg', '', '', '', '', '', 0, 1, 1, 184),
(973, 'TE-96 LATEX BALL GREEN LARGE ', '320', '320', 6, 'product-featured-973.jpg', '', '', '', '', '', 0, 1, 1, 184),
(974, 'TE-97 LATEX RUGBY NEW SMALL ', '177.97', '177.97', 6, 'product-featured-974.jpg', '', '', '', '', '', 0, 1, 1, 184),
(975, 'TE-98 LATEX RUGBY NEW LARGE ', '271.19', '271.19', 6, 'product-featured-975.jpg', '', '', '', '', '', 0, 1, 1, 184),
(976, 'TE077-DENTAL BONE BONE LARGE', '510', '510', 6, 'product-featured-976.jpg', '', '', '', '', '', 0, 1, 1, 184),
(977, 'TEMPTATION  CHICKEN FLAVOUR ', '150', '150', 6, 'product-featured-977.jpg', '', '', '', '', '', 0, 1, 1, 177),
(978, 'TEMPTATIONS  SALMON  TREAT FOR CAT', '150', '150', 6, 'product-featured-978.jpg', '', '', '', '', '', 0, 1, 1, 185),
(979, 'TEMPTATIONS  SALMON  TREAT FOR CAT ', '150', '150', 6, 'product-featured-979.jpg', '', '', '', '', '', 0, 1, 1, 189),
(980, 'TEMPTATIONS CHICKEN TREAT FOR CAT ', '150', '150', 6, 'product-featured-980.jpg', '', '', '', '', '', 0, 1, 1, 189),
(981, 'TEMPTATIONS MEDLEY  TREAT FOR CAT ', '150', '150', 6, 'product-featured-981.jpg', '', '', '', '', '', 0, 1, 1, 189),
(982, 'TEMPTATIONS TUNA FLAVOUR ', '150', '150', 6, 'product-featured-982.jpg', '', '', '', '', '', 0, 1, 1, 185),
(983, 'EMILY PET TOFU CAT LITTER GREEN TEA ', '999', '999', 6, 'product-featured-983.jpg', '', '', '', '', '', 0, 1, 1, 187),
(984, 'EMILY PET TOFU CAT LITTER LAVENDER ', '999', '999', 6, 'product-featured-984.jpg', '', '', '', '', '', 0, 1, 1, 187),
(985, 'EMILY PET TOFU CAT LITTER ORIGINAL ', '999', '999', 6, 'product-featured-985.jpg', '', '', '', '', '', 0, 1, 1, 187),
(986, 'EMILY PET TOFU CAT LITTER PEACH ', '999', '999', 6, 'product-featured-986.jpg', '', '', '', '', '', 0, 1, 1, 187),
(987, 'VERBAC EPIOTIC EAR CEANING ', '220', '220', 6, 'product-featured-987.jpg', '', '', '', '', '', 0, 1, 1, 183),
(988, 'VERBAC EPIOTIC EAR CEANING ', '119', '119', 6, 'product-featured-988.jpg', '', '', '', '', '', 0, 1, 1, 183),
(989, 'VET LIFE DOG GROWTH ', '1790', '1790', 6, 'product-featured-989.jpg', '', '', '', '', '', 0, 1, 1, 177),
(990, 'VIRBAC CANITONE JR SYRUP ', '180', '180', 6, 'product-featured-990.jpg', '', '', '', '', '', 0, 1, 1, 178),
(991, 'VIRBAC CANITONE TABLETS ', '160', '160', 6, 'product-featured-991.jpg', '', '', '', '', '', 0, 1, 1, 178),
(992, 'VIRBAC NUTRICH TABLETS', '190', '190', 6, 'product-featured-992.jpg', '', '', '', '', '', 0, 1, 1, 178),
(993, 'VIRBAC NUTRICH TABLETS ', '360', '360', 6, 'product-featured-993.jpg', '', '', '', '', '', 0, 1, 1, 178),
(994, 'WANG WANG ', '215', '215', 6, 'product-featured-994.jpg', '', '', '', '', '', 0, 1, 1, 177),
(995, 'WETLANDS CANINE(TASTEOF THE WILD)', '4140', '4140', 6, 'product-featured-995.jpg', '', '', '', '', '', 0, 1, 1, 177),
(996, 'WHISKAS ADULT GRAVY WITH CHICKEN ', '35', '35', 6, 'product-featured-996.jpg', '', '', '', '', '', 0, 1, 1, 185),
(997, 'WHISKAS JUNIOR OCEAN FISH ', '400', '400', 6, 'product-featured-997.jpg', '', '', '', '', '', 0, 1, 1, 185),
(998, 'WHISKAS TASTY MIX TUNA KANI CARROTIN GRAVY ', '35', '35', 6, 'product-featured-998.jpg', '', '', '', '', '', 0, 1, 1, 185),
(999, 'WHISKASH  OCEAN FISH ADULT', '855', '855', 6, 'product-featured-999.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1000, 'WHISKASH ADULT CHICKEN FLAVOAR  CAT FOOD', '400', '400', 6, 'product-featured-1000.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1001, 'WHISKASH ADULT MACKEREL ', '855', '855', 6, 'product-featured-1001.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1002, 'WHISKASH ADULT TUNA ', '855', '855', 6, 'product-featured-1002.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1003, 'WHISKASH CHICKEN  KITTEN GRAVY ', '35', '35', 6, 'product-featured-1003.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1004, 'WHISKASH JUNIOR OCEAN FISH ', '855', '855', 6, 'product-featured-1004.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1005, 'WHISKASH KITTEN TUNA IN JELLY CAT FOOD ', '35', '35', 6, 'product-featured-1005.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1006, 'WHISKASH LAMB IN GRAVY ADULT CAT FOOD ', '35', '35', 6, 'product-featured-1006.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1007, 'WHISKASH MACKERAL FLAVOUR ADULT ', '400', '400', 6, 'product-featured-1007.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1008, 'WHISKASH MACKEREL FLAVOUR KITTEN (2-12)MONTH  FOR DRY CAT FOOD ', '400', '400', 6, 'product-featured-1008.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1009, 'WHISKASH OCEAN FISH  ADULT', '430', '430', 6, 'product-featured-1009.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1010, 'WHISKASH OCEAN FISH ADULT GRAVY ', '35', '35', 6, 'product-featured-1010.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1011, 'WHISKASH SALMON IN GRAVY ADULT GM CAT FOOD', '35', '35', 6, 'product-featured-1011.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1012, 'WHISKASH TASTY MIX CHICKEN&SALMON ', '35', '35', 6, 'product-featured-1012.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1013, 'WHISKASH TASTY MIX SEAFOOD COCKTAIL IN  GRAVY ', '35', '35', 6, 'product-featured-1013.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1014, 'WHISKASH TUNA ', '1900', '1900', 6, 'product-featured-1014.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1015, 'WHISKASH TUNA ADULT JELLY ', '35', '35', 6, 'product-featured-1015.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1016, 'WHISKASH TUNA DRY CAT FOOD ', '430', '430', 6, 'product-featured-1016.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1017, 'WHSKASH TASTY MIX CHICKEN&TUNA ', '35', '35', 6, 'product-featured-1017.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1018, 'WISE BONE SALMON WITH LEMON ', '325', '325', 6, 'product-featured-1018.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1019, 'WISE BONE TURKEY WITH PARSLEY ', '325', '325', 6, 'product-featured-1019.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1020, 'WISE BONE VENISON WITH ROSEMARY ', '325', '325', 6, 'product-featured-1020.jpg', '', '', '', '', '', 0, 1, 1, 185),
(1021, 'WOKAZOLE PLUS ', '159', '159', 6, 'product-featured-1021.jpg', '', '', '', '', '', 0, 1, 1, 188),
(1022, 'WOOFUR CHICKEN & APPLE JERKY ', '249', '249', 6, 'product-featured-1022.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1023, 'WOOFUR CHICKEN& PUMPKN JERKY ', '250', '250', 6, 'product-featured-1023.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1024, 'WOOFUR CHICKEN&BANANA JERKY ', '250', '250', 6, 'product-featured-1024.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1025, 'WOOFUR CHICKEN&CARROT JERKY ', '249', '249', 6, 'product-featured-1025.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1026, 'WOOFUR CHOICKEN &GINGERE JERKY ', '230', '230', 6, 'product-featured-1026.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1027, 'WOOFUR GOURMET &CHICKEN JERKY ', '210', '210', 6, 'product-featured-1027.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1028, 'PURINA PUPPY LARGE BREED ', '9050', '9050', 6, 'product-featured-1028.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1029, 'FARMINA N&D STARTER', '2090', '2090', 6, 'product-featured-1029.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1030, 'DROOLS FOCUS STARTER', '1900', '1900', 6, 'product-featured-1030.jpg', '', '', '', '', '', 0, 1, 1, 1),
(1031, 'DROOLS FOCUS STARTER', '600', '600', 6, 'product-featured-1031.jpg', '', '', '', '', '', 0, 1, 1, 1),
(1032, 'HIMALAYA ADULT ', '2150', '2150', 6, 'product-featured-1032.jpg', '', '', '', '', '', 0, 1, 1, 4),
(1033, 'ROYAL CANIN MAXI ADULT ', '8080', '8080', 6, 'product-featured-1033.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1034, 'DROOLS FOCUS ADULT', '525', '525', 6, 'product-featured-1034.jpg', '', '', '', '', '', 0, 1, 1, 1),
(1035, 'HIMALAYA ADULT BISCUITS', '320', '320', 6, 'product-featured-1035.jpg', '', '', '', '', '', 0, 1, 1, 59),
(1036, 'HIMALAYA ADULT BISCUITS', '150', '150', 6, 'product-featured-1036.jpg', '', '', '', '', '', 0, 1, 1, 59),
(1037, 'HIMALAYA PUPPY BISCUITS ', '320', '320', 6, 'product-featured-1037.jpg', '', '', '', '', '', 0, 1, 1, 59),
(1038, 'HIMALAYA PUPPY BISCUITS ', '170', '170', 6, 'product-featured-1038.jpg', '', '', '', '', '', 0, 1, 1, 59),
(1039, 'FUREVER SALMON OIL', '1080', '1080', 6, 'product-featured-1039.jpg', '', '', '', '', '', 0, 1, 1, 178),
(1040, 'FIDELE STARTER PUPPY', '700', '700', 6, 'product-featured-1040.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1041, 'FIDELE STARTER PUPPY', '1850', '1850', 6, 'product-featured-1041.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1042, 'FDELE ADULT SMALL&MEDIUM', '1625', '1625', 6, 'product-featured-1042.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1043, 'FIDELE ADULT SMALL&MEDIUM', '600', '600', 6, 'product-featured-1043.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1044, 'FIDELE LARGE PUPPY', '1675', '1675', 6, 'product-featured-1044.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1045, 'FIDELE LARGE PUPPY', '585', '585', 6, 'product-featured-1045.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1046, 'FIDELE ADULT LIGHT&SENIOR', '615', '615', 6, 'product-featured-1046.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1047, 'CANINE CREEK ADULT ', '1950', '1950', 6, 'product-featured-1047.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1048, 'CANINE CREEK PUPPY', '2050', '2050', 6, 'product-featured-1048.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1049, 'KLYBECK FLEXIA BENTONITE CAT LITTER', '875', '875', 6, 'product-featured-1049.jpg', '', '', '', '', '', 0, 1, 1, 187),
(1050, 'TOPDOG PREMIUM DRY BATH MOUSE GREEN APPLE', '425', '425', 6, 'product-featured-1050.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1051, 'TOPDOG PREMIUM PET SANITIZER', '645', '645', 6, 'product-featured-1051.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1052, 'TOPDOG PREMIUM MIS SPRAY PEACH', '475', '475', 6, 'product-featured-1052.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1053, 'TOPDOG PREMIUM WATERMELON MIS', '475', '475', 6, 'product-featured-1053.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1054, 'TOPDOG PREMIUM CARE TICK SPRAY ', '475', '475', 6, 'product-featured-1054.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1055, 'PETSWILL PUPPY CEREAL EGG', '425', '425', 6, 'product-featured-1055.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1056, 'PETSWILL PUPPY CEREAL CHICKEN', '425', '425', 6, 'product-featured-1056.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1057, 'PETSWILL PUPPY CEREAL WHEAT ', '425', '425', 6, 'product-featured-1057.jpg', '', '', '', '', '', 0, 1, 1, 177),
(1058, 'PETSWILL DRY BATH LEMON GRASS OIL ', '395', '395', 6, 'product-featured-1058.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1059, 'PETSWILL DRY BATH JOJOBA&TEA TREE OIL', '395', '395', 6, 'product-featured-1059.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1060, 'PETSWILL PET STAIN &ODOUR REMOVER ', '495', '495', 6, 'product-featured-1060.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1061, 'PETSWILL GLITTER SERUM', '445', '445', 6, 'product-featured-1061.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1062, 'PETSWILL TICK&FLEA SHAMPOO', '275', '275', 6, 'product-featured-1062.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1063, 'PETAHOLIC CAT LITTER ', '995', '995', 6, 'product-featured-1063.jpg', '', '', '', '', '', 0, 1, 1, 187),
(1064, 'EMILY PETS WOODEN CAT LITTER', '799', '799', 6, 'product-featured-1064.jpg', '', '', '', '', '', 0, 1, 1, 187),
(1065, 'CATURE NATURAL WOODEN CLUMPING CAT LITTER ', '1199', '1199', 6, 'product-featured-1065.jpg', '', '', '', '', '', 0, 1, 1, 187),
(1066, 'CATURE ODOR CONTROL PLUS WOODEN CAT LITTER', '1050', '1050', 6, 'product-featured-1066.jpg', '', '', '', '', '', 0, 1, 1, 187),
(1067, 'TOPU PELLETS CLUMPING CAT LITTER', '1250', '1250', 6, 'product-featured-1067.jpg', '', '', '', '', '', 0, 1, 1, 187),
(1068, 'PETKLEEN SOAP WITH ACTIVE NEEM', '40', '40', 6, 'product-featured-1068.jpg', '', '', '', '', '', 0, 1, 1, 183),
(1069, 'PETAHOLIC  DIAPERS XL', '535', '535', 6, 'product-featured-1069.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1070, 'PETAHOLIC DIAPERS LARGE', '485', '485', 6, 'product-featured-1070.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1071, 'PETAHOLIC DIAPERS XXL', '640', '640', 6, 'product-featured-1071.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1072, 'PETAHOLIC DIAPERS MEDIUM', '425', '425', 6, 'product-featured-1072.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1073, 'PETAHOLIC DIAPERS SMALL', '375', '375', 6, 'product-featured-1073.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1074, 'GOODIES FRUITY BLAST MANGO BITES', '275', '275', 6, 'product-featured-1074.jpg', '', '', '', '', '', 0, 1, 1, 182),
(1075, 'GOODIES FRUITY BLAST BLUEBERRY ZING ', '275', '275', 6, 'product-featured-1075.jpg', '', '', '', '', '', 0, 1, 1, 182),
(1076, 'GOODIES FRUITY BLAST STRAWBERRY BUST', '275', '275', 6, 'product-featured-1076.jpg', '', '', '', '', '', 0, 1, 1, 182),
(1077, 'GOODIES FRUITY BLAST BANANA TWIST', '275', '275', 6, 'product-featured-1077.jpg', '', '', '', '', '', 0, 1, 1, 182),
(1078, 'BAIL DENTAL TWIST STICK DENTAL CARE', '350', '350', 6, 'product-featured-1078.jpg', '', '', '', '', '', 0, 1, 1, 51),
(1079, 'BASIL DENTAL IMMUNE CARE ', '350', '350', 6, 'product-featured-1079.jpg', '', '', '', '', '', 0, 1, 1, 181),
(1080, 'GNAWLER WISE BONE VENISON WITH ROSEMARY ', '325', '325', 6, 'product-featured-1080.jpg', '', '', '', '', '', 0, 1, 1, 179),
(1081, 'GNAWLER WISE BONE SALMON WITH LEMON', '325', '325', 6, 'product-featured-1081.jpg', '', '', '', '', '', 0, 1, 1, 179),
(1082, 'GNAWLER WISE BONE TURKY WITH PARSLEY', '325', '325', 6, 'product-featured-1082.jpg', '', '', '', '', '', 0, 1, 1, 179),
(1083, 'BASIL SPIKE TPR BALL PET CHEW', '250', '250', 6, 'product-featured-1083.jpg', '', '', '', '', '', 0, 1, 1, 179),
(1084, 'RUFFWEAR FRONT RANGE DOG HARNESS LARGE ', '3700', '3700', 6, 'product-featured-1084.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1085, 'RUFFWEAR FRONT RANGE DOG HARNESS MEDIUM', '3600', '3600', 6, 'product-featured-1085.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1086, 'RUFFWEAR FRONT RANGE DOG HARNESS SMALL', '3500', '3500', 6, 'product-featured-1086.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1087, 'RUFFWEAR CHAIN REACTION  COLLAR FOR DOG SMALL', '2200', '2200', 6, 'product-featured-1087.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1088, 'RUFFWEAR FRONT RANGE COLLAR CAMPFIRE LARGE', '1499', '1499', 6, 'product-featured-1088.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1089, 'RUFFWEAR FRONT RANGE COLLAR HUCKLEBERRY MEDIUM', '1399', '1399', 6, 'product-featured-1089.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1090, 'RUFFWEAR FRONT RANGE COLLAR SMALL', '1299', '1299', 6, 'product-featured-1090.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1091, 'RUFFWEAR KNOT LEASH FOR DOGS LARGE', '2500', '2500', 6, 'product-featured-1091.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1092, 'BASIL TEMPTATIONS CHEESY CHICKEN RING ', '200', '200', 6, 'product-featured-1092.jpg', '', '', '', '', '', 0, 1, 1, 62),
(1093, 'BASIL TEMPTATIONS TASTY CHICKEN STRIPS ', '200', '200', 6, 'product-featured-1093.jpg', '', '', '', '', '', 0, 1, 1, 62),
(1094, 'BASIL PRINTED PADDED HARNESS', '675', '675', 6, 'product-featured-1094.jpg', '', '', '', '', '', 0, 1, 1, 84),
(1095, 'QUBO ROPE LEASH SMALL', '320', '320', 6, 'product-featured-1095.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1096, 'QUBO ROPE LEASH MEDIUM', '530', '530', 6, 'product-featured-1096.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1097, 'QUBO ROPE LEASH LARGE', '550', '550', 6, 'product-featured-1097.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1098, 'LAL PET PRODUCTS TIE OUT CABLE SMALL 10FT', '365', '365', 6, 'product-featured-1098.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1099, 'LAL PET PRODUCTS TIE OUT CABLE  LARGE 10FT', '515', '515', 6, 'product-featured-1099.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1100, 'LAL PET PRODUCTS MULTI ROPE LEASH SMALL', '185', '185', 6, 'product-featured-1100.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1101, 'QUBO COLLAR LARGE', '425', '425', 6, 'product-featured-1101.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1102, 'QUBO COLLAR MEDIUM', '410', '410', 6, 'product-featured-1102.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1103, 'QUBO COLLAR SMALL', '365', '365', 6, 'product-featured-1103.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1104, 'PET GROOMING KIT 5-IN-1', '1750', '1750', 6, 'product-featured-1104.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1105, 'AUTO CLEAN PET BRUSH', '575', '575', 6, 'product-featured-1105.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1106, 'FOFOS POOP BAG REFIEL', '399', '399', 6, 'product-featured-1106.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1107, 'BASIL NUTTY BUDDY PEANUT BUTTER', '225', '225', 6, 'product-featured-1107.jpg', '', '', '', '', '', 0, 1, 1, 62),
(1108, 'SMARTY PET WASTE BAGES WIITH DISPENSER', '150', '150', 6, 'product-featured-1108.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1109, 'GOODIES TRAINING PADS MEDIUM 45CM*60CM', '1150', '1150', 6, 'product-featured-1109.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1110, 'PARAMOUNT PET TRAINING PADS 60*45CM', '300', '300', 6, 'product-featured-1110.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1111, 'PARAMOUNT PET TRAINING PADS 60*4CM', '650', '650', 6, 'product-featured-1111.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1112, 'SUPER WEE PADS PREMIUM QUALITY45*60CM', '1150', '1150', 6, 'product-featured-1112.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1113, 'RUFFWEAR GNAWT-A-CONE TOY FOR DOGS DANDELIION ', '999', '999', 6, 'product-featured-1113.jpg', '', '', '', '', '', 0, 1, 1, 180),
(1114, 'RUFFWEAR GNAWT-A-ROCK TOY FOR DOGS DANDELIION', '999', '999', 6, 'product-featured-1114.jpg', '', '', '', '', '', 0, 1, 1, 180),
(1115, 'RUFFWEAR GNAWT-A-STICK TOY FOR DOG SOCKEYE', '999', '999', 6, 'product-featured-1115.jpg', '', '', '', '', '', 0, 1, 1, 180),
(1116, 'SMARTY CATNIP TOYS ', '135', '135', 6, 'product-featured-1116.jpg', '', '', '', '', '', 0, 1, 1, 191),
(1117, 'UNIK PET PRODUCTS DOG ROPE TOY ', '199', '199', 6, 'product-featured-1117.jpg', '', '', '', '', '', 0, 1, 1, 180),
(1118, 'HELLO PET SELF CLEAN SLICKER BRUSH LARGE', '640', '640', 6, 'product-featured-1118.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1119, 'HELLO PET SELF CLEAN SLICKER BRUSH MEDIUM', '600', '600', 6, 'product-featured-1119.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1120, 'HELLO PET SELF CLEAN SLICKER BRUSH SMALL', '550', '550', 6, 'product-featured-1120.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1121, 'SPIKE BALLS WITH BELL LARGE', '300', '300', 6, 'product-featured-1121.jpg', '', '', '', '', '', 0, 1, 1, 180),
(1122, 'SPIKE BALLS WITH BELL MEDIUM', '200', '200', 6, 'product-featured-1122.jpg', '', '', '', '', '', 0, 1, 1, 180),
(1123, 'SPIKE BALLS WITH BELL SMALL', '150', '150', 6, 'product-featured-1123.jpg', '', '', '', '', '', 0, 1, 1, 180),
(1124, 'PETAHOLIC BANDANA  LARGE', '250', '250', 6, 'product-featured-1124.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1125, 'PETAHOLIC BANDANA MEDIUM', '225', '225', 6, 'product-featured-1125.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1126, 'LAL PET PRODUCTS PLASTIC MUZZLE NO 3', '110', '110', 6, 'product-featured-1126.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1127, 'LAL PET PRODUCTS PLASTIC MUZZLE NO 4', '130', '130', 6, 'product-featured-1127.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1128, 'LAL PET PRODUCTS PLASTIC MUZZLE NO 5', '155', '155', 6, 'product-featured-1128.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1129, 'LAL PET PRODUCTS PLASTIC MUZZLE NO 6', '175', '175', 6, 'product-featured-1129.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1130, 'LAL PET PRODUCTS PLASTIC MUZZLE NO 7', '210', '210', 6, 'product-featured-1130.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1131, 'LAL PET PRODUCTS CLOTH MUZZLE NO-7', '300', '300', 6, 'product-featured-1131.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1132, 'LAL PET PRODUCTS CLOTH MUZZLE NO 6', '280', '280', 6, 'product-featured-1132.jpg', '', '', '', '', '', 1, 1, 1, 184),
(1133, 'LAL PET PRODUCTS CLOTH MUZZLE NO5', '250', '250', 6, 'product-featured-1133.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1134, 'LAL PET PRODUCTS CLOTH MUZZLE NO 4', '230', '230', 6, 'product-featured-1134.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1135, 'LAL PET PRODUCTS CLOTH MUZZLE NO3', '200', '200', 6, 'product-featured-1135.jpg', '', '', '', '', '', 0, 1, 1, 184),
(1136, 'LAL PET PRODUCTS CLOTH MUZZLE NO 2', '150', '150', 6, 'product-featured-1136.jpg', '', '', '', '', '', 0, 1, 1, 184);

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
(304, 21, 819),
(305, 21, 820),
(306, 21, 821),
(307, 21, 822),
(308, 21, 823),
(309, 21, 824),
(310, 21, 825),
(311, 21, 826),
(312, 21, 827),
(313, 21, 828),
(314, 21, 829),
(315, 21, 830),
(316, 21, 831),
(317, 21, 832),
(318, 21, 833),
(319, 21, 834),
(320, 21, 835),
(321, 21, 836),
(322, 21, 837),
(323, 21, 838),
(324, 21, 839),
(325, 21, 840),
(326, 21, 841),
(327, 21, 842),
(328, 21, 843),
(329, 21, 844),
(330, 21, 845),
(331, 21, 846),
(332, 21, 847),
(333, 21, 848),
(334, 21, 849),
(335, 21, 850),
(336, 21, 851),
(337, 21, 852),
(338, 21, 853),
(339, 21, 854),
(340, 21, 855),
(341, 21, 856),
(342, 21, 857),
(343, 21, 858),
(344, 21, 859),
(345, 21, 860),
(346, 21, 861),
(347, 21, 862),
(348, 21, 863),
(349, 21, 864),
(350, 21, 865),
(351, 21, 866),
(352, 21, 867),
(353, 21, 868),
(354, 21, 869),
(355, 21, 870),
(356, 21, 871),
(357, 21, 872),
(358, 21, 873),
(359, 21, 874),
(360, 21, 875),
(361, 21, 876),
(362, 21, 877),
(363, 21, 878),
(364, 21, 879),
(365, 21, 880),
(366, 21, 881),
(367, 21, 882),
(368, 21, 883),
(369, 21, 884),
(370, 21, 885),
(371, 21, 886),
(372, 21, 887),
(373, 21, 888),
(374, 21, 889),
(375, 21, 890),
(376, 21, 891),
(377, 21, 892),
(378, 21, 893),
(379, 21, 894),
(380, 21, 895),
(381, 21, 896),
(383, 21, 897),
(384, 21, 898),
(385, 21, 899),
(386, 21, 900),
(387, 21, 901),
(388, 21, 902),
(389, 21, 903),
(390, 21, 904),
(391, 21, 905),
(392, 21, 906),
(393, 21, 907),
(394, 21, 908),
(395, 21, 909),
(396, 21, 910),
(397, 21, 911),
(398, 21, 912),
(399, 21, 913),
(400, 21, 914),
(401, 21, 915),
(402, 21, 916),
(403, 21, 917),
(404, 21, 918),
(405, 21, 919),
(406, 21, 920),
(407, 21, 921),
(408, 21, 922),
(409, 21, 923),
(410, 21, 924),
(411, 21, 925),
(412, 21, 926),
(413, 21, 927),
(414, 21, 928),
(415, 21, 929),
(416, 21, 930),
(417, 21, 931),
(418, 21, 932),
(419, 21, 933),
(420, 21, 934),
(421, 21, 935),
(422, 21, 936),
(423, 21, 937),
(424, 21, 938),
(425, 21, 939),
(426, 21, 940),
(427, 21, 941),
(428, 21, 942),
(429, 21, 943),
(430, 21, 944),
(431, 21, 945),
(432, 21, 946),
(434, 21, 947),
(435, 21, 948),
(436, 21, 949),
(437, 21, 950),
(438, 21, 951),
(439, 21, 952),
(440, 21, 953),
(441, 21, 954),
(442, 21, 955),
(443, 21, 956),
(444, 21, 957),
(445, 21, 958),
(446, 21, 959),
(447, 21, 960),
(448, 21, 961),
(449, 21, 962),
(450, 21, 963),
(451, 21, 964),
(453, 21, 965),
(454, 21, 966),
(455, 21, 967),
(456, 21, 968),
(457, 21, 969),
(458, 21, 970),
(459, 21, 971),
(460, 21, 972),
(461, 21, 973),
(462, 21, 974),
(463, 21, 975),
(464, 21, 976),
(465, 21, 977),
(466, 21, 978),
(467, 21, 979),
(468, 21, 980),
(469, 21, 981),
(470, 21, 982),
(471, 21, 983),
(472, 21, 984),
(473, 21, 985),
(474, 21, 986),
(475, 21, 987),
(476, 21, 988),
(477, 21, 989),
(478, 21, 990),
(479, 21, 991),
(480, 21, 992),
(481, 21, 993),
(482, 21, 994),
(483, 21, 995),
(484, 21, 996),
(485, 21, 997),
(486, 21, 998),
(487, 21, 999),
(488, 21, 1000),
(489, 21, 1001),
(490, 21, 1002),
(491, 21, 1003),
(492, 21, 1004),
(493, 21, 1005),
(494, 21, 1006),
(495, 21, 1007),
(496, 21, 1008),
(497, 21, 1009),
(498, 21, 1010),
(499, 21, 1011),
(500, 21, 1012),
(501, 21, 1013),
(502, 21, 1014),
(503, 21, 1015),
(504, 21, 1016),
(505, 21, 1017),
(506, 21, 1018),
(507, 21, 1019),
(508, 21, 1020),
(510, 21, 1021),
(511, 21, 1022),
(512, 21, 1023),
(513, 21, 1024),
(514, 21, 1025),
(515, 21, 1026),
(516, 21, 1027),
(517, 21, 1028),
(518, 21, 1029),
(519, 21, 1030),
(520, 21, 1031),
(521, 21, 1032),
(522, 21, 1033),
(523, 21, 1034),
(524, 21, 1035),
(525, 21, 1036),
(526, 21, 1037),
(527, 21, 1038),
(528, 21, 1039),
(529, 21, 1040),
(530, 21, 1041),
(531, 21, 1042),
(532, 21, 1043),
(533, 21, 1044),
(534, 21, 1045),
(535, 21, 1046),
(536, 21, 1047),
(537, 21, 1048),
(538, 21, 1049),
(539, 21, 1050),
(540, 21, 1051),
(541, 21, 1052),
(542, 21, 1053),
(543, 21, 1054),
(544, 21, 1055),
(545, 21, 1056),
(546, 21, 1057),
(547, 21, 1058),
(548, 21, 1059),
(549, 21, 1060),
(550, 21, 1061),
(551, 21, 1062),
(552, 21, 1063),
(553, 21, 1064),
(554, 21, 1065),
(555, 21, 1066),
(556, 21, 1067),
(557, 21, 1068),
(558, 21, 1069),
(559, 21, 1070),
(560, 21, 1071),
(561, 21, 1072),
(562, 21, 1073),
(563, 21, 1074),
(564, 21, 1075),
(565, 21, 1076),
(566, 21, 1077),
(567, 21, 1078),
(568, 21, 1079),
(569, 21, 1080),
(570, 21, 1081),
(571, 21, 1082),
(572, 21, 1083),
(573, 21, 1084),
(574, 21, 1085),
(575, 21, 1086),
(576, 21, 1087),
(577, 21, 1088),
(578, 21, 1089),
(579, 21, 1090),
(580, 21, 1091),
(581, 21, 1092),
(582, 21, 1093),
(583, 21, 1094),
(584, 21, 1095),
(585, 21, 1096),
(586, 21, 1097),
(587, 21, 1098),
(588, 21, 1099),
(589, 21, 1100),
(590, 21, 1101),
(591, 21, 1102),
(592, 21, 1103),
(593, 21, 1104),
(594, 21, 1105),
(595, 21, 1106),
(596, 21, 1107),
(597, 21, 1108),
(598, 21, 1109),
(599, 21, 1110),
(600, 21, 1111),
(601, 21, 1112),
(602, 21, 1113),
(603, 21, 1114),
(604, 21, 1115),
(605, 21, 1116),
(606, 21, 1117),
(607, 21, 1118),
(608, 21, 1119),
(609, 21, 1120),
(610, 21, 1121),
(611, 21, 1122),
(612, 21, 1123),
(613, 21, 1124),
(614, 21, 1125),
(615, 21, 1126),
(616, 21, 1127),
(617, 21, 1128),
(618, 21, 1129),
(619, 21, 1130),
(620, 21, 1131),
(621, 21, 1132),
(622, 21, 1133),
(623, 21, 1134),
(624, 21, 1135),
(625, 21, 1136);

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
(397, 32, 819),
(398, 32, 820),
(399, 32, 821),
(400, 32, 822),
(401, 32, 823),
(402, 16, 824),
(403, 16, 825),
(404, 16, 826),
(405, 14, 827),
(406, 14, 828),
(407, 16, 829),
(408, 16, 830),
(409, 33, 831),
(410, 33, 832),
(411, 33, 833),
(412, 16, 834),
(413, 16, 835),
(414, 12, 836),
(415, 12, 837),
(416, 12, 838),
(417, 12, 839),
(418, 34, 840),
(419, 34, 841),
(420, 34, 842),
(421, 34, 843),
(422, 34, 844),
(423, 1, 845),
(424, 35, 846),
(425, 1, 847),
(426, 36, 848),
(427, 1, 849),
(428, 37, 850),
(429, 34, 851),
(430, 34, 852),
(431, 34, 853),
(432, 38, 854),
(433, 34, 855),
(434, 38, 856),
(435, 34, 857),
(436, 39, 858),
(437, 37, 859),
(438, 31, 860),
(439, 40, 861),
(440, 41, 862),
(441, 42, 863),
(442, 7, 864),
(443, 43, 865),
(444, 7, 866),
(445, 7, 867),
(446, 42, 868),
(447, 37, 869),
(448, 37, 870),
(449, 37, 871),
(450, 39, 872),
(451, 44, 873),
(452, 38, 874),
(453, 37, 875),
(454, 40, 876),
(455, 40, 877),
(456, 40, 878),
(457, 38, 879),
(458, 37, 880),
(459, 38, 881),
(460, 37, 882),
(461, 39, 883),
(462, 42, 884),
(463, 1, 885),
(464, 1, 886),
(465, 42, 887),
(466, 42, 888),
(467, 1, 889),
(468, 42, 890),
(469, 42, 891),
(470, 40, 892),
(471, 42, 893),
(472, 40, 894),
(473, 1, 895),
(474, 37, 896),
(476, 7, 897),
(477, 42, 898),
(478, 38, 899),
(479, 42, 900),
(480, 7, 901),
(481, 1, 902),
(482, 43, 903),
(483, 12, 904),
(484, 12, 905),
(485, 12, 906),
(486, 12, 907),
(487, 12, 908),
(488, 12, 909),
(489, 12, 910),
(490, 12, 911),
(491, 12, 912),
(492, 12, 913),
(493, 12, 914),
(494, 12, 915),
(495, 45, 916),
(496, 45, 917),
(497, 45, 918),
(498, 2, 919),
(499, 46, 920),
(500, 33, 921),
(501, 34, 922),
(502, 38, 923),
(503, 47, 924),
(504, 9, 925),
(505, 9, 926),
(506, 40, 927),
(507, 40, 928),
(508, 40, 929),
(509, 40, 930),
(510, 48, 931),
(511, 9, 932),
(512, 48, 933),
(513, 47, 934),
(514, 48, 935),
(515, 9, 936),
(516, 7, 937),
(517, 37, 938),
(518, 49, 939),
(519, 45, 940),
(520, 37, 941),
(521, 50, 942),
(522, 50, 943),
(523, 51, 944),
(524, 51, 945),
(525, 12, 946),
(527, 12, 947),
(528, 46, 948),
(529, 12, 949),
(530, 12, 950),
(531, 12, 951),
(532, 12, 952),
(533, 12, 953),
(534, 12, 954),
(535, 52, 955),
(536, 53, 956),
(537, 54, 957),
(538, 53, 958),
(539, 41, 959),
(540, 31, 960),
(541, 37, 961),
(542, 41, 962),
(543, 49, 963),
(544, 6, 964),
(546, 12, 965),
(547, 12, 966),
(548, 12, 967),
(549, 12, 968),
(550, 12, 969),
(551, 12, 970),
(552, 12, 971),
(553, 12, 972),
(554, 12, 973),
(555, 12, 974),
(556, 12, 975),
(557, 12, 976),
(558, 40, 977),
(559, 40, 978),
(560, 40, 979),
(561, 40, 980),
(562, 40, 981),
(563, 40, 982),
(564, 55, 983),
(565, 55, 984),
(566, 55, 985),
(567, 55, 986),
(568, 58, 987),
(569, 56, 988),
(570, 7, 989),
(571, 14, 990),
(572, 57, 991),
(573, 57, 992),
(574, 11, 993),
(575, 33, 994),
(576, 60, 995),
(577, 40, 996),
(578, 59, 997),
(579, 9, 998),
(580, 37, 999),
(581, 59, 1000),
(582, 37, 1001),
(583, 37, 1002),
(584, 40, 1003),
(585, 37, 1004),
(586, 40, 1005),
(587, 40, 1006),
(588, 59, 1007),
(589, 59, 1008),
(590, 59, 1009),
(591, 40, 1010),
(592, 40, 1011),
(593, 9, 1012),
(594, 9, 1013),
(595, 61, 1014),
(596, 40, 1015),
(597, 59, 1016),
(598, 9, 1017),
(599, 62, 1018),
(600, 62, 1019),
(601, 62, 1020),
(603, 58, 1021),
(604, 9, 1022),
(605, 9, 1023),
(606, 9, 1024),
(607, 9, 1025),
(608, 64, 1026),
(609, 64, 1027),
(610, 39, 1028),
(611, 34, 1029),
(612, 42, 1030),
(613, 65, 1031),
(614, 31, 1032),
(615, 39, 1033),
(616, 1, 1034),
(617, 1, 1035),
(618, 66, 1036),
(619, 1, 1037),
(620, 66, 1038),
(621, 16, 1039),
(622, 1, 1040),
(623, 37, 1041),
(624, 37, 1042),
(625, 1, 1043),
(626, 37, 1044),
(627, 1, 1045),
(628, 1, 1046),
(629, 42, 1047),
(630, 42, 1048),
(631, 67, 1049),
(632, 68, 1050),
(633, 14, 1051),
(634, 58, 1052),
(635, 58, 1053),
(636, 58, 1054),
(637, 33, 1055),
(638, 33, 1056),
(639, 33, 1057),
(640, 69, 1058),
(641, 69, 1059),
(642, 2, 1060),
(643, 58, 1061),
(644, 14, 1062),
(645, 31, 1063),
(646, 42, 1064),
(647, 34, 1065),
(648, 70, 1066),
(649, 34, 1067),
(650, 72, 1068),
(651, 32, 1069),
(652, 32, 1070),
(653, 32, 1071),
(654, 32, 1072),
(655, 32, 1073),
(656, 73, 1074),
(657, 73, 1075),
(658, 73, 1076),
(659, 73, 1077),
(660, 62, 1078),
(661, 62, 1079),
(662, 62, 1080),
(663, 62, 1081),
(664, 62, 1082),
(665, 12, 1083),
(666, 12, 1084),
(667, 12, 1085),
(668, 12, 1086),
(669, 12, 1087),
(670, 12, 1088),
(671, 12, 1089),
(672, 12, 1090),
(673, 12, 1091),
(674, 50, 1092),
(675, 50, 1093),
(676, 12, 1094),
(677, 12, 1095),
(678, 12, 1096),
(679, 12, 1097),
(680, 12, 1098),
(681, 12, 1099),
(682, 12, 1100),
(683, 12, 1101),
(684, 12, 1102),
(685, 12, 1103),
(686, 12, 1104),
(687, 12, 1105),
(688, 74, 1106),
(689, 75, 1107),
(690, 12, 1108),
(691, 20, 1109),
(692, 76, 1110),
(693, 25, 1111),
(694, 20, 1112),
(695, 12, 1113),
(696, 12, 1114),
(697, 12, 1115),
(698, 12, 1116),
(699, 12, 1117),
(700, 12, 1118),
(701, 12, 1119),
(702, 12, 1120),
(703, 12, 1121),
(704, 12, 1122),
(705, 12, 1123),
(706, 12, 1124),
(707, 12, 1125),
(708, 12, 1126),
(709, 12, 1127),
(710, 12, 1128),
(711, 12, 1129),
(712, 12, 1130),
(713, 12, 1131),
(714, 12, 1132),
(715, 12, 1133),
(716, 12, 1134),
(717, 12, 1135),
(718, 12, 1136);

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
(5, 'Easy Returns', 'Return any item before 15 days. No questions asked.', '1.png'),
(6, 'Free Shipping', 'Enjoy free shipping in U.A.E. More countries to be added sooner.', '2.png'),
(7, 'Fast Delivery', 'Items are shipped in 24 hours.', '3.png'),
(8, 'Dog', 'Return any item before 15 days. No questions asked.', '4.png'),
(9, 'Fast Delivery', 'Items are shipped in 24 hours.', '5.png'),
(10, 'Dog', 'Return any item before 15 days. No questions asked.', '7.png');

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
(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.Â Ea suas pertinax has.</p>\r\n', 'Copyright ï¿½ 2018. All Rights Reserved. | ', '<b>Store 1:</b>\r\nShop no. 09, Block C Market, Ardee City, Sector-52, Gurugram, Haryana, 122003\r\n<b>Store 2:</b>\r\nShop no. 1, Near Tulip Voilet, sector-69, Gurugram, Haryana, 122018', 'dubey233310@gmail.com', '+91 - 8851 164 459', '', '<iframe src=\"https://www.google.com/maps/d/u/0/embed?mid=1a4QiquqrQ8SP6O9_rWhVWersxGvodsoG\" width=\"640\" height=\"480\"></iframe>', 'dubey233310@gmail.com', 'Visitor Email Message from MyPetShop', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 4, 5, 10, 'MyPetShop | Online Pet Shop', 'fashionys, garments shop, online garments, dubai garments', 'fashionys.com is an online garments shop.', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.png', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.png', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \r\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu. ', 'Read More', '#', 'cta.jpg', 'Featured Products', 'See all our featured products from here', 'Latest Products', 'See all our latest products from here', 'Popular Products', 'See all our popular products from here', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Sign-up to our newsletter for latest promotions and discounts.', 'admin@MyPetShop', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: ABC Bank\r\nAccount Number: 1222320234444\r\nBranch Name: NY Branch\r\nCountry: INDIA', '<!-- Google Analytics -->\r\n<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-8564299-3\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-8564299-3\');\r\n</script>\r\n', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5ae370d7227d3d7edc24cb96/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1);

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
(31, '10kg'),
(32, '12PCS'),
(33, '400g'),
(34, '2.5kg'),
(35, '160g'),
(36, '360g'),
(37, '3kg'),
(38, '12kg'),
(39, '15kg'),
(40, '85g'),
(41, '120g'),
(42, '4kg'),
(43, '800g'),
(44, '3.5kg'),
(45, '60G'),
(46, '200ml'),
(47, '48g'),
(48, '35g'),
(49, '20kg'),
(50, '80g'),
(51, '450g'),
(52, '9pcs'),
(53, '5kg'),
(54, '25kg'),
(55, '6L'),
(56, '50ml'),
(57, '30tab'),
(58, '100ml'),
(59, '1.01kg'),
(60, '5.06kg'),
(61, '7kg'),
(62, '200g'),
(63, '4L'),
(64, '50g'),
(65, '1.2kg'),
(66, '500g'),
(67, '8kg'),
(68, '190ml'),
(69, '150ml'),
(70, '2.4kg'),
(71, '2.2kg'),
(72, '75g'),
(73, '225g'),
(74, '17ROLLS'),
(75, '250g'),
(76, '10pcs');

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
(1, 'slider_1.png', 'Welcome to MyPetShop', 'Shop Online for Pets', 'Buy Cat Food', 'http://localhost/mypetshopupdated/product-category.php?id=9&type=mid-category', 'Center'),
(2, '1_2.png', '50% Discount on All Products', '', 'Read More', '#', 'Center'),
(3, '1_4.png', '24 Hours Customer Support', '', 'Read More', '#', 'Right');

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
(1, 'Ram Gopal Dubey', 'dubey233310@gmail.com', '9026539838', '81dc9bdb52d04dc20036dbd8313ed055', 'user-1.png', 'Super Admin', 'Active'),
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
  MODIFY `customer_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1137;

--
-- AUTO_INCREMENT for table `tbl_product_color`
--
ALTER TABLE `tbl_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=626;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=719;

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
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
