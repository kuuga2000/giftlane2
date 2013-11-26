-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 118.139.168.28
-- Generation Time: Nov 25, 2013 at 08:37 PM
-- Server version: 5.0.96
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `giftdbuser`
--

-- --------------------------------------------------------

--
-- Table structure for table `myshortcart`
--

CREATE TABLE `myshortcart` (
  `id` int(11) NOT NULL auto_increment,
  `starttime` datetime NOT NULL default '0000-00-00 00:00:00',
  `finishtime` datetime NOT NULL default '0000-00-00 00:00:00',
  `trxstatus` varchar(50) NOT NULL default '0',
  `totalamount` double(10,2) NOT NULL default '0.00',
  `transidmerchant` varchar(125) NOT NULL default '0',
  `session_id` varchar(50) NOT NULL default '',
  `response_code` varchar(50) NOT NULL default '',
  `ptype` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `myshortcart`
--

INSERT INTO `myshortcart` VALUES(1, '2013-07-31 11:41:08', '0000-00-00 00:00:00', 'Verified', 75000.00, '2', '', '', '');
INSERT INTO `myshortcart` VALUES(2, '2013-07-31 11:41:08', '0000-00-00 00:00:00', 'Verified', 75000.00, '2', '', '', '');
INSERT INTO `myshortcart` VALUES(3, '2013-07-31 11:45:02', '0000-00-00 00:00:00', 'Verified', 75000.00, '60819', '', '', '');
INSERT INTO `myshortcart` VALUES(4, '2013-07-31 12:31:13', '0000-00-00 00:00:00', 'Requested', 40325.00, '1375254073', '', '', '');
INSERT INTO `myshortcart` VALUES(5, '2013-07-31 12:38:36', '0000-00-00 00:00:00', 'Requested', 220.00, '1375254516', '', '', '');
INSERT INTO `myshortcart` VALUES(6, '2013-07-31 12:44:19', '0000-00-00 00:00:00', 'Requested', 12.60, '1375254859', '', '', '');
INSERT INTO `myshortcart` VALUES(7, '2013-07-31 12:46:13', '0000-00-00 00:00:00', 'Requested', 12.60, '1375254973', '', '', '');
INSERT INTO `myshortcart` VALUES(8, '2013-07-31 12:51:18', '0000-00-00 00:00:00', 'Verified', 12600.00, '1375255268', '', '', '');
INSERT INTO `myshortcart` VALUES(9, '2013-07-31 12:55:48', '0000-00-00 00:00:00', 'Verified', 599.00, '1375255547', '', '', '');
INSERT INTO `myshortcart` VALUES(10, '2013-07-31 13:16:23', '0000-00-00 00:00:00', 'Verified', 12600.00, '1375256780', '', '', '');
INSERT INTO `myshortcart` VALUES(11, '2013-07-31 15:26:45', '0000-00-00 00:00:00', 'Verified', 75000.00, '80356', '', '', '');
INSERT INTO `myshortcart` VALUES(12, '2013-07-31 16:01:12', '0000-00-00 00:00:00', 'Verified', 75000.00, '97948', '', '', '');
INSERT INTO `myshortcart` VALUES(13, '2013-08-19 15:56:28', '0000-00-00 00:00:00', 'Requested', 70729.00, '1376907987', '', '', '');
INSERT INTO `myshortcart` VALUES(14, '2013-08-19 15:59:04', '0000-00-00 00:00:00', 'Verified', 70729.00, '1376908142', '', '', '');
INSERT INTO `myshortcart` VALUES(15, '2013-08-21 12:36:02', '0000-00-00 00:00:00', 'Verified', 75067.00, '1377068758', '', '', '');
INSERT INTO `myshortcart` VALUES(16, '2013-08-21 12:46:11', '0000-00-00 00:00:00', 'Verified', 75000.00, '30850', '', '', '');
INSERT INTO `myshortcart` VALUES(17, '2013-08-21 12:50:12', '0000-00-00 00:00:00', 'Verified', 75000.00, '11439', '', '', '');
INSERT INTO `myshortcart` VALUES(18, '2013-08-21 12:52:20', '0000-00-00 00:00:00', 'Verified', 75000.00, '77380', '', '', '');
INSERT INTO `myshortcart` VALUES(19, '2013-08-21 12:52:56', '0000-00-00 00:00:00', 'Verified', 75000.00, '27170', '', '', '');
INSERT INTO `myshortcart` VALUES(20, '2013-08-21 12:53:36', '0000-00-00 00:00:00', 'Verified', 75000.00, '90421', '', '', '');
INSERT INTO `myshortcart` VALUES(21, '2013-08-21 12:54:01', '0000-00-00 00:00:00', 'Verified', 75000.00, '10375', '', '', '');
INSERT INTO `myshortcart` VALUES(22, '2013-08-21 13:13:02', '0000-00-00 00:00:00', 'Verified', 75000.00, '14071', '', '', '');
INSERT INTO `myshortcart` VALUES(23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'FAILED - INJECTION DETECTED', 75000.00, '91140', '', '', '');
INSERT INTO `myshortcart` VALUES(24, '2013-08-21 13:16:31', '0000-00-00 00:00:00', 'Verified', 75000.00, '22697', '', '', '');
INSERT INTO `myshortcart` VALUES(25, '2013-08-21 13:43:50', '0000-00-00 00:00:00', 'Verified', 75000.00, '9037', '', '', '');
INSERT INTO `myshortcart` VALUES(26, '2013-08-21 13:45:02', '0000-00-00 00:00:00', 'Verified', 75000.00, '3983', '', '', '');
INSERT INTO `myshortcart` VALUES(27, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'FAILED - INJECTION DETECTED', 535165.00, '1377073026', '', '', '');
INSERT INTO `myshortcart` VALUES(28, '2013-08-21 14:03:38', '0000-00-00 00:00:00', 'Verified', 80022.00, '1377074015', '', '', '');
INSERT INTO `myshortcart` VALUES(29, '2013-08-21 14:07:20', '0000-00-00 00:00:00', 'Verified', 75000.00, '5501', '', '', '');
INSERT INTO `myshortcart` VALUES(30, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'FAILED - INJECTION DETECTED', 70165.00, '1377075210', '', '', '');
INSERT INTO `myshortcart` VALUES(31, '2013-08-21 14:35:20', '0000-00-00 00:00:00', 'Verified', 75000.00, '85513', '', '', '');
INSERT INTO `myshortcart` VALUES(32, '2013-08-21 14:55:54', '0000-00-00 00:00:00', 'Verified', 5110.00, '1377077153', '', '', '');
INSERT INTO `myshortcart` VALUES(33, '2013-08-21 15:27:08', '0000-00-00 00:00:00', 'Verified', 125.00, '1377079022', '', '', '');
INSERT INTO `myshortcart` VALUES(34, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'FAILED - INJECTION DETECTED', 1115.00, '1377163009', '', '', '');
INSERT INTO `myshortcart` VALUES(35, '2013-08-22 15:33:23', '0000-00-00 00:00:00', 'Verified', 175.00, '1377165798', '', '', '');
INSERT INTO `myshortcart` VALUES(36, '2013-08-22 16:20:51', '0000-00-00 00:00:00', 'SUCCESS', 175.00, '1377166005', '', '', '');
INSERT INTO `myshortcart` VALUES(37, '2013-08-22 16:07:00', '0000-00-00 00:00:00', 'SUCCESS', 110.00, '1377167758', '', '', '');
INSERT INTO `myshortcart` VALUES(38, '2013-08-23 13:57:45', '0000-00-00 00:00:00', 'SUCCESS', 110.00, '1377246375', '', '', '');
INSERT INTO `myshortcart` VALUES(39, '2013-08-23 15:09:59', '0000-00-00 00:00:00', 'Verified', 75000.00, '49148', '', '', '');
INSERT INTO `myshortcart` VALUES(40, '2013-08-23 16:26:25', '0000-00-00 00:00:00', 'SUCCESS', 75000.00, '97516', '', '', '');
INSERT INTO `myshortcart` VALUES(41, '2013-08-28 09:46:01', '0000-00-00 00:00:00', 'SUCCESS', 650.00, '1377662867', '', '', '');
INSERT INTO `myshortcart` VALUES(42, '2013-09-03 12:40:02', '0000-00-00 00:00:00', 'SUCCESS', 21000.00, '1378192066', '', '', '');
INSERT INTO `myshortcart` VALUES(43, '2013-09-03 13:48:27', '0000-00-00 00:00:00', 'Verified', 105180.00, '1378196302', '', '', '');
INSERT INTO `myshortcart` VALUES(44, '2013-09-03 20:17:34', '0000-00-00 00:00:00', 'Requested', 71450.00, '1378219650', '', '', '');
INSERT INTO `myshortcart` VALUES(45, '2013-09-03 20:17:49', '0000-00-00 00:00:00', 'Verified', 71450.00, '1378219657', '', '', '');
INSERT INTO `myshortcart` VALUES(46, '2013-09-03 20:18:00', '0000-00-00 00:00:00', 'Requested', 71450.00, '1378219680', '', '', '');
INSERT INTO `myshortcart` VALUES(47, '2013-09-18 10:57:50', '0000-00-00 00:00:00', 'Verified', 30000.00, '1379482067', '', '', '');
INSERT INTO `myshortcart` VALUES(48, '2013-09-21 21:03:46', '0000-00-00 00:00:00', 'Verified', 11320.00, '1379777618', '', '', '');
INSERT INTO `myshortcart` VALUES(49, '2013-09-21 21:04:47', '0000-00-00 00:00:00', 'Verified', 11320.00, '1379777685', '', '', '');
INSERT INTO `myshortcart` VALUES(50, '2013-09-21 21:04:53', '0000-00-00 00:00:00', 'Verified', 11320.00, '1379777690', '', '', '');
INSERT INTO `myshortcart` VALUES(51, '2013-09-24 15:36:41', '0000-00-00 00:00:00', 'Verified', 150000.00, '1380017196', '', '', '');
INSERT INTO `myshortcart` VALUES(52, '2013-09-24 20:43:39', '0000-00-00 00:00:00', 'Verified', 150000.00, '1380035614', '', '', '');
INSERT INTO `myshortcart` VALUES(53, '2013-09-27 17:26:00', '0000-00-00 00:00:00', 'Verified', 650100.00, '1380282956', '', '', '');
INSERT INTO `myshortcart` VALUES(54, '2013-09-30 17:48:01', '0000-00-00 00:00:00', 'Verified', 21000.00, '1380543477', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) default NULL,
  `lastname` varchar(32) default NULL,
  `add_title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL default '0',
  `zone_id` int(11) NOT NULL default '0',
  `telephone` varchar(50) NOT NULL,
  `address_type` enum('shipping','billing') NOT NULL,
  PRIMARY KEY  (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` VALUES(2, 2, 'Gaurav', 'patil', '', '', '', '', '', '', '', '', '', 0, 0, '0', 'shipping');
INSERT INTO `oc_address` VALUES(4, 4, 'Mayur', 'Sharma', '', '', '', '', '', '', '', '', '', 0, 0, '0', 'shipping');
INSERT INTO `oc_address` VALUES(69, 30, 'Mayur', 'Sharma', '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(51, 19, 'Andy', 'Kencana', '', '', '', '', '', 'Taman', '', 'Banda Aceh', '15113', 100, 1507, '0', 'shipping');
INSERT INTO `oc_address` VALUES(7, 7, 'Test', 'test21', '', '', '', '', '', '', '', '', '', 0, 0, '0', 'shipping');
INSERT INTO `oc_address` VALUES(8, 8, 'Sandeep', 'Nisal', 'India', '8748547854745', '', '', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 100, 1507, '2147483647', 'shipping');
INSERT INTO `oc_address` VALUES(9, 9, 'dee', 'dee', '', '', '', '', '', '', '', '', '', 0, 0, '0', 'shipping');
INSERT INTO `oc_address` VALUES(10, 8, 'Gaurav', 'Patil', 'Mumbai', '9587414541', '', '', '', 'Indira Nagar', 'Nashik', 'dubai', '5241141545', 2, 34, '2147483647', 'shipping');
INSERT INTO `oc_address` VALUES(11, 10, 'Mayur', 'Sharma', '', '', '', '', '', '', '', '', '', 0, 0, '0', 'shipping');
INSERT INTO `oc_address` VALUES(12, 0, 'Mayur', 'Sharma', '', '9561411154', '', '', '', 'Nashik', 'Nashik', 'Nashik', '422101', 0, 0, '0', 'shipping');
INSERT INTO `oc_address` VALUES(13, 0, 'Mayur', 'Sharma', '', '9561411154', '', '', '', 'Nashik', 'Nashik', 'Nashik', '422101', 0, 0, '0', 'shipping');
INSERT INTO `oc_address` VALUES(14, 8, 'Saddam', 'pinjari', 'UK', '', '', '', '', 'Pinjari farms', 'nashil', 'NASHIK', '422101', 99, 1493, '89936522221', 'shipping');
INSERT INTO `oc_address` VALUES(15, 8, 'Saddam', 'pinjari', 'Indonesia', '', '', '', '', 'Pinjari farms', 'nashil', 'NASHIK', '422101', 99, 1493, '2147483647', 'shipping');
INSERT INTO `oc_address` VALUES(16, 4, 'test', 'test', '', '', '', '', '', 'nashi', 'nashid', 'Banda Aceh', '4142541', 100, 1507, '2147483647', 'shipping');
INSERT INTO `oc_address` VALUES(17, 4, 'test', 'test', '', '', '', '', '', 'nashi', 'nashid', 'Banda Aceh', '4142541', 100, 1507, '2147483647', 'shipping');
INSERT INTO `oc_address` VALUES(18, 4, 'test', 'test', '', '', '', '', '', 'test', 'tsdt', 'Banda Aceh', '2344243243', 100, 1507, '0', 'shipping');
INSERT INTO `oc_address` VALUES(19, 4, 'test', 'test', '', '', '', '', '', 'test', 'tsdt', 'Banda Aceh', '2344243243', 100, 1507, '0', 'shipping');
INSERT INTO `oc_address` VALUES(20, 4, 'Test', 'test', '', '', '', '', '', 'tsts', '', 'dsfss', 'fsdfsdfs', 1, 2, '0', 'shipping');
INSERT INTO `oc_address` VALUES(21, 4, 'Test', 'test', '', '', '', '', '', 'tsts', '', 'dsfss', 'fsdfsdfs', 1, 2, '0', 'shipping');
INSERT INTO `oc_address` VALUES(22, 4, 'Test', 'test', '', '', '', '', '', 'tsts', '', 'dsfss', 'fsdfsdfs', 1, 2, '0', 'shipping');
INSERT INTO `oc_address` VALUES(23, 4, 'mayr', 'mayr', '', '', '', '', '', 'asdad', 'asada', 'adsadsd', 'dadadaddad', 2, 34, '0', 'shipping');
INSERT INTO `oc_address` VALUES(24, 4, 'mayr', 'mayr', '', '', '', '', '', 'asdad', 'asada', 'adsadsd', 'dadadaddad', 2, 34, '0', 'shipping');
INSERT INTO `oc_address` VALUES(25, 4, 't', 't', '', '', '', '', '', 't', 't', 'tt', 'tt', 3, 69, '0', 'shipping');
INSERT INTO `oc_address` VALUES(26, 4, 'S', 'L', '', '', '', '', '', 'A', 'A', 'Banda Aceh', 'adasdasd', 100, 1507, '0', 'shipping');
INSERT INTO `oc_address` VALUES(27, 4, 'ad', 'ad', '', '', '', '', '', '4234324', 'aasdad', 'Banda Aceh', 'adadsdada', 100, 1507, '0', 'shipping');
INSERT INTO `oc_address` VALUES(28, 4, 'add', 'add', '', '', '', '', '', 'fff', 'aaaa', 'Banda Aceh', 'dasddasda', 100, 1507, '321456789', 'shipping');
INSERT INTO `oc_address` VALUES(29, 3, 'test', 'test', '', '', '', '', '', 'test', 'test', 'Langsa', '12334', 100, 1507, '0', 'shipping');
INSERT INTO `oc_address` VALUES(31, 0, 'This is test', 'This is test', '', '', '', '', '', 'This is test', 'This is test', 'adasddThis is test', 'This is te', 21, 345, '0', 'shipping');
INSERT INTO `oc_address` VALUES(32, 11, 'jjgjjg', 'jghjgh', '', '', '', '', '', '', '', '', '', 0, 0, '0', 'shipping');
INSERT INTO `oc_address` VALUES(33, 9, 'gle', 'dis', '', '', '', '', '', 'jl meruya utara raya blok 3 no. 1-2', '', 'jakarta', '11830', 100, 1513, '214356789', 'shipping');
INSERT INTO `oc_address` VALUES(34, 0, 'dee', 'dee', '', '', '', '', '', 'jl kartini raya 24', '', 'jakarta', '11610', 100, 1513, '214567895', 'shipping');
INSERT INTO `oc_address` VALUES(35, 0, 'gladis', 'koesoe', '', '', '', '', '', 'citragarden 2', '', 'jakarta', '11830', 100, 1513, '2147483647', 'shipping');
INSERT INTO `oc_address` VALUES(36, 8, 'Sandeep', 'patil', 'USA', '', '', '', '', 'Nashik', 'Nashik', 'nashik', '232323', 99, 1493, '2030203', 'billing');
INSERT INTO `oc_address` VALUES(37, 8, 'Sandeep', 'Nisal', 'Aech', '', '', '', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 100, 1507, '2147483647', 'shipping');
INSERT INTO `oc_address` VALUES(38, 12, 'Andy', 'Kencana', '', '', '', '', '', 'Taman', '', 'Banda Aceh', '15113', 100, 1507, '8889', 'shipping');
INSERT INTO `oc_address` VALUES(39, 13, 'Sandeep', 'Aher', '', '', '', '', '', 'College road', '', 'Nasik', '422003', 99, 1493, '0', 'shipping');
INSERT INTO `oc_address` VALUES(40, 13, 'Sandeep', 'Aher', '', '', '', '', '', 'College Road', '', 'Nasik', '422003', 99, 1493, '2147483647', 'shipping');
INSERT INTO `oc_address` VALUES(41, 14, 'Deepak', 'Kadam', '', '', '', '', '', 'B-2, Sanmitra aprtment, College Road', '', 'Nashik', '422005', 99, 1493, '0', 'shipping');
INSERT INTO `oc_address` VALUES(30, 3, 'test', 'tes', '', '', '', '', '', 'test', '', 'Langsa', '123', 100, 1507, '0', 'shipping');
INSERT INTO `oc_address` VALUES(42, 12, 'doku', 'test', '', '', '', '', '', 'jakarta', 'jakarta', '0', '12123', 100, 1508, '989678678', 'shipping');
INSERT INTO `oc_address` VALUES(3, 3, 'Gaurav', 'patil', '', '', '', '', '', 'test address', '', 'Nashik', '12345', 99, 1493, '0', 'shipping');
INSERT INTO `oc_address` VALUES(47, 16, 'ABC', 'Boooo', '', '', '', '', '', 'Meruya', '', 'jakarta', '11630', 100, 1513, '5555555', 'shipping');
INSERT INTO `oc_address` VALUES(46, 16, 'Gladys', 'Kho', 'DDFD', '', '', '', '', 'Green Garden', '', 'Banda Aceh', '11520', 100, 1507, '0', 'shipping');
INSERT INTO `oc_address` VALUES(43, 3, 'Nilesh', 'Gadekar', '', '', '', '', '', 'Test address', '', 'Langsa', '122321', 100, 1507, '0', 'shipping');
INSERT INTO `oc_address` VALUES(1, 1, 'Gaurav', 'Patil', '', '', '', '', '', 'test', '', 'nasik', '1234', 99, 1493, '0', 'shipping');
INSERT INTO `oc_address` VALUES(48, 12, 'Andy', 'Kencana', '', '', '', '', '', 'My Address', 'Taman', 'asdasd', '15113', 1, 2, '2147483647', 'shipping');
INSERT INTO `oc_address` VALUES(67, 28, 'Elufname', 'Elulname', '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(52, 20, 'Elum', 'Teschnol', '', '', '', '', '', '213123', '', 'Banda Aceh', '121212', 100, 1507, '0', 'shipping');
INSERT INTO `oc_address` VALUES(53, 21, 'Gaurav', 'Patil', '', '', '', '', '', 'testa', '', 'nashik', '12345', 99, 1493, '123456', 'shipping');
INSERT INTO `oc_address` VALUES(54, 22, 'Eluzai', 'Yediael', '', '', '', '', '', 'kalideres, jakarta barat, 11840', '', 'jakarta', '11840', 100, 1513, '0', 'shipping');
INSERT INTO `oc_address` VALUES(55, 23, 'Felicia', 'Darmaja', '', '', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', 'jakarta', '14240', 100, 1513, '0', 'shipping');
INSERT INTO `oc_address` VALUES(56, 23, 'Alvin', 'Kusuma', '', '', '', '', '', 'Kintamani 2 no 26', '', 'jakarta', '14240', 100, 1513, '2147483647', 'shipping');
INSERT INTO `oc_address` VALUES(57, 24, 'Elvina', 'Evania', '', '', '', '', '', 'Kelapa Gading', '', 'jakarta', '14240', 100, 1513, '4523149', 'shipping');
INSERT INTO `oc_address` VALUES(58, 24, 'Elvina', 'Evania', '', '', '', '', '', 'Kelapa Gading', '', 'jakarta', '14240', 100, 1513, '4523149', 'billing');
INSERT INTO `oc_address` VALUES(59, 24, 'Felicia ', 'Darmaja', '', '', '', '', '', 'Kelapa Gading', '', 'jakarta', '14240', 100, 1513, '4500157', 'shipping');
INSERT INTO `oc_address` VALUES(60, 23, 'Felicia', 'Darmaja', '', '', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', 'jakarta', '14240', 100, 1513, '0', 'billing');
INSERT INTO `oc_address` VALUES(61, 12, 'Andy', 'Kencana', '', '', '', '', '', 'Taman', '', 'Banda Aceh', '15113', 100, 1507, '8889', 'billing');
INSERT INTO `oc_address` VALUES(62, 25, 'sandeep', 'ssssss', '', '', '', '', '', 'sas', '', 'Langsa', '333333', 100, 1507, '', 'shipping');
INSERT INTO `oc_address` VALUES(63, 23, 'Felicia', 'Darmaja', '', '', '', '', '', 'Kelapa lilin 11 ni 10 no 8', '', 'Banda Aceh', '14240', 100, 1507, '08118075232', 'shipping');
INSERT INTO `oc_address` VALUES(64, 26, 'Alvin', 'Kusuma', '', '', '', '', '', 'Kintamani 2 no 26', '', 'jakarta', '14240', 100, 1513, '', 'shipping');
INSERT INTO `oc_address` VALUES(65, 23, 'Alvin', 'Kusuma', '', '', '', '', '', 'kintamani 2 no 26', '', 'jakarta', '14240', 100, 1513, '08176560055', 'shipping');
INSERT INTO `oc_address` VALUES(70, 23, 'Felicia', 'Darmaja', '', '', '', '', '', 'Kelapa lilin 11 ni 10 no 8', '', 'jakarta', '14240', 100, 1513, '4500157', 'shipping');
INSERT INTO `oc_address` VALUES(71, 31, 'Findal', 'Darmaja', '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(72, 32, 'Alvin', 'Kusuma', '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(73, 23, 'Felicia', 'Darmaja', '', '', '', '', '', 'Kelapa Lilin 11 NI 10 No.8', '', 'jakarta', '14240', 100, 1513, '4500157', 'shipping');
INSERT INTO `oc_address` VALUES(74, 23, 'Felicia', 'Darmaja', 'Felicia - Gading', '', '', '', '', 'Kelapa Lilin 11 NI.10 No. 8, Kelapa Gading Permai', '', 'jakarta', '14240', 100, 1513, '4500157', 'shipping');
INSERT INTO `oc_address` VALUES(75, 23, 'Alvin', 'Kusuma', '', '', '', '', '', 'kintamani 2 no 26', '', 'jakarta', '14240', 100, 1513, '4500157', 'shipping');
INSERT INTO `oc_address` VALUES(76, 33, 'Kuuga', 'Kuuga', 'sdf', '', '', '', '', 'jalan kemanggisan raya', '', 'Banda Aceh', '34234', 100, 1507, 'sdf', 'shipping');
INSERT INTO `oc_address` VALUES(77, 34, 'Kuuga Mulia', 'S', '', '', '', '', '', 'ksdjfkjsdf', '', 'Banda Aceh', '02587', 100, 1507, '', 'shipping');
INSERT INTO `oc_address` VALUES(78, 35, 'vvv', 'vv', '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(79, 36, 'hh1', 'hh3', 'hh2', '', '', '', '', 'jl kebun bunga bla bla 58', '', 'Banda Aceh', '32155', 100, 1507, '321654', 'shipping');
INSERT INTO `oc_address` VALUES(80, 36, 'bill 2', 'bill 3', 'bill 1', '', '', '', '', 'jl meruya utara raya 90', '', 'Langsa', '30152', 100, 1507, '123456', 'billing');
INSERT INTO `oc_address` VALUES(81, 33, 'sdf', 'sdf', 'dd', '', '', '', '', 'sdf', '', 'Banda Aceh', '34', 100, 1507, '324234234', 'billing');
INSERT INTO `oc_address` VALUES(82, 37, 'Linto first name', 'Linto last name', 'Linto', '', '', '', '', 'Jl lorong jembatan slipi', '', 'Banda Aceh', '98574', 100, 1507, '987654', 'shipping');
INSERT INTO `oc_address` VALUES(83, 37, 'dababa first name', 'dababa last name', 'dababa Address Billing', '', '', '', '', 'jl lorong semanggi', '', 'Banda Aceh', '987415', 100, 1507, '6541598', 'billing');
INSERT INTO `oc_address` VALUES(84, 37, 'baba2', 'baba3', 'baba', '', '', '', '', 'jajajajajaa', '', 'Banda Aceh', '5879854231', 100, 1507, '9292929', 'shipping');
INSERT INTO `oc_address` VALUES(85, 16, 'DFG df', 'sdf sf ', 'DFD', '', '', '', '', 'sjdfh sdjkfh ', '', 'Banda Aceh', '93429', 100, 1507, '2398473924', 'billing');
INSERT INTO `oc_address` VALUES(86, 37, 'kaka1', 'kaka2', '100', '', '', '', '', 'jalan kebon jeruk raya 4', '', 'Banda Aceh', '67656', 100, 1507, '7458347', 'shipping');
INSERT INTO `oc_address` VALUES(87, 37, 'ballo1', 'ballo2', '100', '', '', '', '', 'jalan shshshs', '', 'Banda Aceh', '54312', 100, 1507, '848484848', 'shipping');
INSERT INTO `oc_address` VALUES(88, 37, 'jajajajaj11', 'jaja222', '100', '', '', '', '', 'jalan jalana njalak', '', 'Banda Aceh', '45623', 100, 1507, '34234324', 'shipping');
INSERT INTO `oc_address` VALUES(89, 37, 'lintp 2', 'lintp 3', '100', '', '', '', '', 'jalan jalan jalan', '', 'Banda Aceh', '19745', 100, 1507, '098763467', 'shipping');
INSERT INTO `oc_address` VALUES(90, 37, 'asdsadasdsad', 'Kuuga2', 'asdasdasdsad', '', '', '', '', 'Jalan 354', '', 'Banda Aceh', '25897', 100, 1507, '237423874', 'shipping');
INSERT INTO `oc_address` VALUES(91, 37, 'Daguba2', 'daguba3', '', '', '', '', '', 'Jalan kebun jeruk raya 9090', '', 'Banda Aceh', '56987', 100, 1507, '087237474', 'shipping');
INSERT INTO `oc_address` VALUES(92, 37, 'Derosi', 'Derosi2', '', '', '', '', '', 'Jalan hahaha 45', '', 'Banda Aceh', '25898', 100, 1507, '2837498', 'shipping');
INSERT INTO `oc_address` VALUES(93, 37, 'Lopez', 'Lopez2', '', '', '', '', '', 'Jalan kura kura ninja 45', '', 'Banda Aceh', '25897', 100, 1507, '098320948', 'shipping');
INSERT INTO `oc_address` VALUES(94, 37, 'Konami 1', 'Konami 2', 'Konami', '', '', '', '', 'Jalan gaba gaba', '', 'Banda Aceh', '39678', 100, 1507, '08671234', 'shipping');
INSERT INTO `oc_address` VALUES(95, 37, 'F. TOtti', 'Francesco', 'Totti', '', '', '', '', 'Jalan sdkfjhsdfj', '', 'Banda Aceh', '32587', 100, 1507, '23947239048', 'shipping');
INSERT INTO `oc_address` VALUES(96, 37, 'Barrasi', 'Milan', 'Franco', '', '', '', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 100, 1507, '097776', 'shipping');
INSERT INTO `oc_address` VALUES(97, 37, 'asd', 'asd', 'asdsad', '', '', '', '', 'asd', '', 'Banda Aceh', '36987', 100, 1507, '23424', 'shipping');
INSERT INTO `oc_address` VALUES(98, 37, 'kjahsdfh', 'jksdfhj', 'kashf', '', '', '', '', 'lkjoi', '', 'Banda Aceh', '6687', 100, 1507, '25874', 'shipping');
INSERT INTO `oc_address` VALUES(99, 37, 'jsfhhdh', 'hhshhs', 'jksdhf', '', '', '', '', 'jalan jalan jalan', '', 'Banda Aceh', '25874', 100, 1507, '874736363', 'shipping');
INSERT INTO `oc_address` VALUES(100, 37, 'juni1', 'juni2', 'juni', '', '', '', '', 'jaln ajkhjskdhf', '', 'Banda Aceh', '25874', 100, 1507, '234923874', 'shipping');
INSERT INTO `oc_address` VALUES(101, 37, 'kjhsdkjfh', 'jkhsdfkjh', 'ksdfk', '', '', '', '', 'kjhsdfjshdf', '', 'Banda Aceh', '36985', 100, 1507, '2364827364', 'shipping');
INSERT INTO `oc_address` VALUES(102, 37, 'sdf', 'sdf', 'asdfsa', '', '', '', '', 'sdf', '', 'Banda Aceh', '34324', 100, 1507, '234', 'shipping');
INSERT INTO `oc_address` VALUES(103, 37, 'jalan jsdfh', 'jalan', '', '', '', '', '', '234', 'sad', 'Banda Aceh', '12332', 100, 1507, '234324', 'shipping');
INSERT INTO `oc_address` VALUES(104, 37, 'haha1', 'haha2', '', '', '', '', '', 'jalan shdfgsd', '', 'Banda Aceh', '36987', 100, 1507, '7989', 'shipping');
INSERT INTO `oc_address` VALUES(105, 37, 'd', 'ggaga', '', '', '', '', '', 'haslfjsdlf sdfsd ', '', 'Banda Aceh', '14789', 100, 1507, '98797', 'shipping');
INSERT INTO `oc_address` VALUES(106, 37, 'dasd', 'asd', '', '', '', '', '', 'sd', '', 'Banda Aceh', '32445', 100, 1507, '34234', 'shipping');
INSERT INTO `oc_address` VALUES(107, 37, 'jslsn hjdfgq', 'jksdf sjdf', '', '', '', '', '', 'jsdfslhkfh', '', 'Banda Aceh', '25874', 100, 1507, '237428734', 'shipping');
INSERT INTO `oc_address` VALUES(108, 37, 'Marco', 'Basten', '', '', '', '', '', 'jalan hasdkfjhsdj', '', 'Banda Aceh', '36985', 100, 1507, '28374529384', 'shipping');
INSERT INTO `oc_address` VALUES(109, 37, 'asd', 'asd', '', '', '', '', '', 'sdfsf', '', 'Banda Aceh', '23434', 100, 1507, '234324', 'shipping');
INSERT INTO `oc_address` VALUES(110, 37, 'blade 1', 'blade 2', '', '', '', '', '', 'jalan hahhaa', '', 'Banda Aceh', '09232', 100, 1507, '9832478324', 'shipping');
INSERT INTO `oc_address` VALUES(111, 37, 'sdfdsf', 'sdf', 'sdf', '', '', '', '', 'sdfdsf', '', 'Banda Aceh', '3244', 100, 1507, '435435', 'shipping');
INSERT INTO `oc_address` VALUES(112, 37, 'Blaster', 'Axe', '', '', '', '', '', 'Jajahaha', '', 'Banda Aceh', '36985', 100, 1507, '08767676', 'shipping');
INSERT INTO `oc_address` VALUES(113, 37, 'fffffff', 'ffffffff', '', '', '', '', '', 'ddddddddd', '', 'Banda Aceh', '234324', 100, 1507, '33333333', 'shipping');
INSERT INTO `oc_address` VALUES(114, 37, 'sdf', 'sdf', '', '', '', '', '', 'sdfsdf', '', 'Banda Aceh', '21356', 100, 1507, '2234', 'shipping');
INSERT INTO `oc_address` VALUES(115, 37, 'Jabaleta', 'Choco', '', '', '', '', '', 'Jalan semanggi raya bala bala 34', '', 'Banda Aceh', '36987', 100, 1507, '08766556', 'shipping');
INSERT INTO `oc_address` VALUES(116, 37, 'bbbbbbb', 'cccccccc', '', '', '', '', '', 'kkkkkkkkk', '', 'Banda Aceh', '36987', 100, 1507, '258147', 'shipping');
INSERT INTO `oc_address` VALUES(117, 37, 'vvvvvvv', 'oooooo', '', '', '', '', '', 'jsjsjsjsjs', '', 'Banda Aceh', '36987', 100, 1507, '848484848', 'shipping');
INSERT INTO `oc_address` VALUES(118, 37, 'ssssssss', 'ddddddddd', '', '', '', '', '', 'uuuuuuuuuuuuooooooooo', '', 'Banda Aceh', '36987', 100, 1507, '88888888888', 'shipping');
INSERT INTO `oc_address` VALUES(119, 38, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(120, 39, 'james', 'coco', 'james book', '', '', '', '', 'jalan ahha', '', 'Banda Aceh', '12345', 100, 1507, '0987', 'shipping');
INSERT INTO `oc_address` VALUES(121, 39, 'stitch', 'stitch 2', 'stitch book', '', '', '', '', 'jaan hhahaha', '', 'Langsa', '36985', 100, 1507, '8726289', 'billing');
INSERT INTO `oc_address` VALUES(122, 40, 'sdf', 'sdfdsf', '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(123, 41, 'asdsd', 'asd', '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(124, 42, 'emas', 'emas', 'Emas haha', '', '', '', '', 'Jalan banana gaim', '', 'Banda Aceh', '36985', 100, 1507, '369', 'shipping');
INSERT INTO `oc_address` VALUES(125, 43, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(126, 37, 'sdfsdf', 'sdfsdf', '', '', '', '', '', 'sdfdsf', '', 'Banda Aceh', '36541', 100, 1507, '234234', 'shipping');
INSERT INTO `oc_address` VALUES(127, 37, 'Hibiki Armed', 'Hibiki Dragon', '', '', '', '', '', 'Jalan rambu lalulintas 67', '', 'Banda Aceh', '36541', 100, 1507, '3564855465', 'shipping');
INSERT INTO `oc_address` VALUES(128, 37, 'Kabuto', 'Hyper', '', '', '', '', '', 'Jalan hahahah 67', '', 'Banda Aceh', '12345', 100, 1507, '54657845', 'shipping');
INSERT INTO `oc_address` VALUES(129, 37, 'Toldo', 'Mercy', '', '', '', '', '', 'Jalan bara bara 34', '', 'Banda Aceh', '365478', 100, 1507, '6548548', 'shipping');
INSERT INTO `oc_address` VALUES(130, 37, 'Jaku', 'Jakun Last', '', '', '', '', '', 'Jalan hahaha', '', 'Banda Aceh', '36985', 100, 1507, '09890898', 'shipping');
INSERT INTO `oc_address` VALUES(131, 37, 'Galomumbus', 'HAHA 2', 'asdasd', '', '', '', '', 'JALAN ahahhaha', '', 'Banda Aceh', '36987', 100, 1507, '374927349', 'shipping');
INSERT INTO `oc_address` VALUES(132, 37, 'sdfdsf', 'sdf', 'BLA', '', '', '', '', 'sdfdf', 'sdfsdf', 'Banda Aceh', '76777', 100, 1507, '3345', 'shipping');
INSERT INTO `oc_address` VALUES(133, 42, 'Kr Gaim', 'Fourze', 'Gaim wa', '', '', '', '', 'Jalan kebun nanas gaim mo', '', 'Banda Aceh', '12457', 100, 1507, '36985', 'billing');
INSERT INTO `oc_address` VALUES(134, 42, 'Armer', 'Wowo', 'WOKI', '', '', '', '', 'Jalan gagagaga 8989', '', 'Banda Aceh', '36985', 100, 1507, '09988', 'shipping');
INSERT INTO `oc_address` VALUES(135, 42, 'Lady', 'Gaga2', 'GAGA LADY', '', '', '', '', 'Jaalalal jsdjfhj sd786876', '', 'Banda Aceh', '36985', 100, 1507, '36985', 'shipping');
INSERT INTO `oc_address` VALUES(136, 42, 'Etoo', 'Cameroon', 'Semuel', '', '', '', '', 'Jalan bala bala', '', 'Banda Aceh', '369852', 100, 1507, '0989899', 'shipping');
INSERT INTO `oc_address` VALUES(137, 42, 'Simon', 'Inzaghi', 'Filippo', '', '', '', '', 'Jalan bala bala 78', '', 'Banda Aceh', '36985', 100, 1507, '3698524', 'shipping');
INSERT INTO `oc_address` VALUES(138, 37, 'Louren', 'Blanc', 'Blanco', '', '', '', '', 'JAlan Jlananana', '', 'Banda Aceh', '3244', 100, 1507, '234346', 'shipping');
INSERT INTO `oc_address` VALUES(139, 44, 'Battle', 'World', 'Ship ', '', '', '', '', 'Jalan battle dugeon 9787', '', 'Langsa', '47144', 100, 1507, '656898564', 'billing');
INSERT INTO `oc_address` VALUES(140, 44, 'Eris', 'Venus', 'Sality', '', '', '', '', 'Jalan bla bla haha 90', '', 'Banda Aceh', '36985', 100, 1507, '3577898', 'shipping');
INSERT INTO `oc_address` VALUES(141, 45, 'Goldom', 'Century', 'Super Soccer', '', '', '', '', 'Jalan Century King no 878', '', 'Banda Aceh', '36985', 100, 1507, '9632587', 'shipping');
INSERT INTO `oc_address` VALUES(142, 45, 'Orpen ccx', 'Noc xxxc', 'Smart Brain King', '', '', '', '', 'Jalan inner ring 885 cxcx', '', 'Banda Aceh', '78945', 100, 1507, '852147', 'billing');
INSERT INTO `oc_address` VALUES(143, 45, 'daguba bala', 'dazebaba', 'Grongiiii', '', '', '', '', 'Jalan grongi central 34', '', 'Banda Aceh', '12345', 100, 1507, '369852', 'shipping');
INSERT INTO `oc_address` VALUES(144, 45, 'Joe', 'Tig', 'Tiger', '', '', '', '', 'Jalan haha', '', 'Banda Aceh', '98745', 100, 1507, '96325', 'shipping');
INSERT INTO `oc_address` VALUES(145, 45, 'Seed', 'GunSeed', 'Gundam', '', '', '', '', 'Jalan gundam seed cyborg 45', '', 'Banda Aceh', '85241', 100, 1507, '963258', 'shipping');
INSERT INTO `oc_address` VALUES(146, 45, 'Joel2', 'Joel3', 'Joel', '', '', '', '', 'Jalan sjdfhjdsh', '', 'Banda Aceh', '243243', 100, 1507, '9384834', 'shipping');
INSERT INTO `oc_address` VALUES(147, 46, 'Asergio', 'Aguerro', 'Sergio', '', '', '', '', 'Jalan Arjuna no 85', '', 'Banda Aceh', '96325', 100, 1507, '343242', 'shipping');
INSERT INTO `oc_address` VALUES(148, 46, 'Keni', 'Dalgish', 'Kemi', '', '', '', '', 'Jalan kemayoran 98', '', 'Banda Aceh', '4545', 100, 1507, '8798798', 'shipping');
INSERT INTO `oc_address` VALUES(149, 47, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(150, 48, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(151, 48, 'Decade', 'Tsubasa', 'Decade Billing', '', '', '', '', 'Jalan bbbbb 7', '', 'Langsa', '67677', 100, 1507, '98798789', 'billing');
INSERT INTO `oc_address` VALUES(152, 49, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(153, 49, 'jew', 'juk', 'jer', '', '', '', '', 'jaaln s fsdf', '', 'Banda Aceh', '96325', 100, 1507, '8979798', 'shipping');
INSERT INTO `oc_address` VALUES(154, 49, 'jonn yeye', 'junjun ex', 'jon iihaaa', '', '', '', '', 'jalan jsjsjsjjs', '', 'Langsa', '96325', 100, 1507, '98798798', 'billing');
INSERT INTO `oc_address` VALUES(155, 49, 'Ser', 'Aguero', 'Kun ', '', '', '', '', 'Jalan argentina hijau putih 34545', '', 'Banda Aceh', '96325', 100, 1507, '7987987', 'shipping');
INSERT INTO `oc_address` VALUES(156, 50, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(157, 50, 'Onegaii', 'Jupiter', 'Onegai', '', '', '', '', 'Jalan jupiter lapangan bola no 979798', '', 'Banda Aceh', '96325', 100, 1507, '97978', 'shipping');
INSERT INTO `oc_address` VALUES(158, 50, 'Sailor', 'Moon mikasa', 'Onegai Cancer', '', '', '', '', 'Jalan sailor momon 788778', '', 'Langsa', '96325', 100, 1507, '89798987', 'billing');
INSERT INTO `oc_address` VALUES(159, 51, 'hahah 454545', 'first 87878', 'onegai hahaha', '', '', '', '', 'Jalan jalan 4545', '', 'Banda Aceh', '96325', 100, 1507, '897878', 'shipping');
INSERT INTO `oc_address` VALUES(160, 51, 'Junamexxxx', 'Julast', 'Jupiiiixxxxx', '', '', '', '', 'Jalan hahahah 78', '', 'Langsa', '12345', 100, 1507, '96325', 'billing');
INSERT INTO `oc_address` VALUES(161, 51, 'sfdf first', 'sdfsd last', 'dsfsdf', '', '', '', '', 'halan sfkjhdskfjhsdf sdf 45', '', 'Banda Aceh', '56566', 100, 1507, '876887', 'shipping');
INSERT INTO `oc_address` VALUES(162, 52, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(163, 52, 'first umu', 'last umu', 'putri umu', '', '', '', '', 'jalan putri umu raya 89', '', 'Banda Aceh', '96325', 100, 1507, '7987987', 'shipping');
INSERT INTO `oc_address` VALUES(164, 52, 'first haip', 'last nata', 'Hapip', '', '', '', '', 'jalan street 8998', '', 'Langsa', '96325', 100, 1507, '89798789', 'billing');
INSERT INTO `oc_address` VALUES(165, 37, 'sdf', 'sdf', 'dfdf', '', '', '', '', 'sdfsdf', '', 'Banda Aceh', '36985', 100, 1507, '324234', 'shipping');
INSERT INTO `oc_address` VALUES(166, 53, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(167, 53, 'Dani', 'Cho', 'Dan', '', '', '', '', 'Jalan gagagag 34', '', 'Banda Aceh', '96325', 100, 1507, '987456321', 'shipping');
INSERT INTO `oc_address` VALUES(168, 53, 'Kajiura', 'Blasa', 'Yuki', '', '', '', '', 'Jalan hahah a8', '', 'Banda Aceh', '36985', 100, 1507, '963258', 'billing');
INSERT INTO `oc_address` VALUES(169, 54, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(170, 54, 'ssssrrrr', 'sdfdf', 'sssssss', '', '', '', '', 'hhhh', '', 'Banda Aceh', '23443', 100, 1507, '234234', 'shipping');
INSERT INTO `oc_address` VALUES(171, 54, 'Gokaiger', 'Kaizoku', 'Shinken', '', '', '', '', 'Jalan bala bala 456', '', 'Banda Aceh', '96325', 100, 1507, '9834729347', 'billing');
INSERT INTO `oc_address` VALUES(172, 55, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(173, 55, 'Kuuuuuga', 'Pegasus', 'Jalan kuuga', '', '', '', '', 'Jalan kebun bambu no 8976', '', 'Banda Aceh', '96345', 100, 1507, '136487', 'shipping');
INSERT INTO `oc_address` VALUES(174, 55, 'cccccccccc', 'ddddddddddd', 'bbbbbbbbbb', '', '', '', '', 'hhhhhhhhhhh', '', 'Banda Aceh', '345345', 100, 1507, '33333333333', 'billing');
INSERT INTO `oc_address` VALUES(175, 56, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '', 'shipping');
INSERT INTO `oc_address` VALUES(176, 37, 'sdasd', 'asd', '', '', '', '', '', 'asdsad', '', 'Banda Aceh', '324324', 100, 1507, 'asd', 'shipping');
INSERT INTO `oc_address` VALUES(177, 37, 'vvvvvvvvvvv', 'vvvvvvvvv', '', '', '', '', '', 'vvvvvvv', '', 'Banda Aceh', '34545', 100, 1507, '432424234', 'shipping');
INSERT INTO `oc_address` VALUES(178, 37, 'J', 'Zoom', 'Jerokck', '', '', '', '', 'Jalan oz zo 88', '', 'Banda Aceh', '96325', 100, 1507, '852147', 'shipping');
INSERT INTO `oc_address` VALUES(179, 37, 'Brock WWE', 'Lest', '', '', '', '', '', 'Jalan bala bala 80', '', 'Banda Aceh', '96325', 100, 1507, '879879878', 'shipping');
INSERT INTO `oc_address` VALUES(180, 37, 'Rocky', 'Santa', '', '', '', '', '', 'Jalan lapangan bola no 66', '', 'Banda Aceh', '12345', 100, 1507, '78965432', 'shipping');
INSERT INTO `oc_address` VALUES(181, 37, 'Rocky', 'Santa', 'The Rock', '', '', '', '', 'Jalan lapangan bola no 66', '', 'Banda Aceh', '32154', 100, 1507, '96328547', 'shipping');
INSERT INTO `oc_address` VALUES(182, 37, 'Garo', 'Nimbus', 'rrrrr', '', '', '', '', 'Jalan garo garo gaiden no 89', '', 'Banda Aceh', '96587', 100, 1507, '852177', 'shipping');
INSERT INTO `oc_address` VALUES(183, 37, 'ffff', 'lll', 'ggg', '', '', '', '', 'hhhh', '', 'Banda Aceh', '879789', 100, 1507, '657567', 'shipping');
INSERT INTO `oc_address` VALUES(184, 37, 'uuuuuuuuuuuuu', 'mmmmmmmmmmmm', 'UUU', '', '', '', '', 'bbbbbbbbbbbbbbbbbbbb', '', 'Banda Aceh', '36985', 100, 1507, '66666666666', 'shipping');
INSERT INTO `oc_address` VALUES(185, 37, 'Simunnn', 'LILLILI', 'Simoon', '', '', '', '', 'Jalan bababba 89', '', 'Banda Aceh', '36985', 100, 1507, '65465465', 'shipping');
INSERT INTO `oc_address` VALUES(186, 37, 'Dateeee', 'SAAAN', 'OOSSS', '', '', '', '', 'Jalan vavava 009', '', 'Banda Aceh', '69855', 100, 1507, '789987654', 'shipping');
INSERT INTO `oc_address` VALUES(187, 37, 'Solmon', 'Solimin', 'Soldado Address', '', '', '', '', 'Jalan batu bara 87', '', 'Banda Aceh', '36985', 100, 1507, '98798789', 'shipping');
INSERT INTO `oc_address` VALUES(188, 37, 'sdfdsf', 'sdfsdf', 'sdfsdf', '', '', '', '', 'sdf', '', 'Banda Aceh', '234234', 100, 1507, 'sdfsdf', 'shipping');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL auto_increment,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL default '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_affiliate`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL auto_increment,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_affiliate_transaction`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL auto_increment,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` VALUES(1, 6, 1);
INSERT INTO `oc_attribute` VALUES(2, 6, 5);
INSERT INTO `oc_attribute` VALUES(3, 6, 3);
INSERT INTO `oc_attribute` VALUES(4, 3, 1);
INSERT INTO `oc_attribute` VALUES(5, 3, 2);
INSERT INTO `oc_attribute` VALUES(6, 3, 3);
INSERT INTO `oc_attribute` VALUES(7, 3, 4);
INSERT INTO `oc_attribute` VALUES(8, 3, 5);
INSERT INTO `oc_attribute` VALUES(9, 3, 6);
INSERT INTO `oc_attribute` VALUES(10, 3, 7);
INSERT INTO `oc_attribute` VALUES(11, 3, 8);
INSERT INTO `oc_attribute` VALUES(12, 7, 1);
INSERT INTO `oc_attribute` VALUES(13, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY  (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` VALUES(1, 1, 'Description');
INSERT INTO `oc_attribute_description` VALUES(2, 1, 'No. of Cores');
INSERT INTO `oc_attribute_description` VALUES(4, 1, 'test 1');
INSERT INTO `oc_attribute_description` VALUES(5, 1, 'test 2');
INSERT INTO `oc_attribute_description` VALUES(6, 1, 'test 3');
INSERT INTO `oc_attribute_description` VALUES(7, 1, 'test 4');
INSERT INTO `oc_attribute_description` VALUES(8, 1, 'test 5');
INSERT INTO `oc_attribute_description` VALUES(9, 1, 'test 6');
INSERT INTO `oc_attribute_description` VALUES(10, 1, 'test 7');
INSERT INTO `oc_attribute_description` VALUES(11, 1, 'test 8');
INSERT INTO `oc_attribute_description` VALUES(3, 1, 'Clockspeed');
INSERT INTO `oc_attribute_description` VALUES(12, 1, 'color');
INSERT INTO `oc_attribute_description` VALUES(13, 1, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL auto_increment,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` VALUES(3, 2);
INSERT INTO `oc_attribute_group` VALUES(4, 1);
INSERT INTO `oc_attribute_group` VALUES(5, 3);
INSERT INTO `oc_attribute_group` VALUES(6, 4);
INSERT INTO `oc_attribute_group` VALUES(7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY  (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` VALUES(3, 1, 'Memory');
INSERT INTO `oc_attribute_group_description` VALUES(4, 1, 'Technical');
INSERT INTO `oc_attribute_group_description` VALUES(5, 1, 'Motherboard');
INSERT INTO `oc_attribute_group_description` VALUES(6, 1, 'Processor');
INSERT INTO `oc_attribute_group_description` VALUES(7, 1, 'Features');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` VALUES(10, 'Default Top', 1);
INSERT INTO `oc_banner` VALUES(9, 'Home', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL auto_increment,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY  (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=189 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` VALUES(185, 9, 'http://eluminousdev.com/giftlane/index.php?route=product/justin&amp;type=all', 'data/giftlane_landingpage_2703_03.jpg');
INSERT INTO `oc_banner_image` VALUES(184, 9, 'http://eluminousdev.com/giftlane/index.php?route=personalize/view', 'data/giftlane_landingpage_2703_03.jpg');
INSERT INTO `oc_banner_image` VALUES(183, 9, 'http://eluminousdev.com/giftlane/index.php?route=product/category', 'data/giftlane_landingpage_2703_03-1.jpg');
INSERT INTO `oc_banner_image` VALUES(188, 10, '50', 'data/tgl13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY  (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` VALUES(188, 1, 10, 'top1');
INSERT INTO `oc_banner_image_description` VALUES(185, 1, 9, 'home2');
INSERT INTO `oc_banner_image_description` VALUES(184, 1, 9, 'home1');
INSERT INTO `oc_banner_image_description` VALUES(183, 1, 9, 'home3');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL auto_increment,
  `image` varchar(255) default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` VALUES(89, '', 70, 0, 1, 0, 1, '2013-07-12 19:10:19', '2013-07-12 19:10:19');
INSERT INTO `oc_category` VALUES(88, '', 69, 0, 1, 0, 1, '2013-07-12 19:07:10', '2013-07-12 19:07:10');
INSERT INTO `oc_category` VALUES(86, '', 64, 0, 1, 0, 1, '2013-07-12 18:48:27', '2013-07-12 18:48:27');
INSERT INTO `oc_category` VALUES(71, '', 0, 0, 1, 0, 0, '2013-07-10 16:21:24', '2013-07-25 19:19:36');
INSERT INTO `oc_category` VALUES(72, '', 0, 0, 1, 0, 0, '2013-07-10 16:21:51', '2013-07-25 19:23:07');
INSERT INTO `oc_category` VALUES(70, 'data/electron.jpg', 0, 0, 1, 0, 1, '2013-07-04 15:55:44', '2013-07-12 19:22:01');
INSERT INTO `oc_category` VALUES(87, 'data/chocolate.jpg', 68, 0, 1, 0, 1, '2013-07-12 18:59:27', '2013-07-12 19:00:12');
INSERT INTO `oc_category` VALUES(90, '', 0, 0, 1, 0, 0, '2013-07-25 19:20:01', '2013-07-25 20:07:53');
INSERT INTO `oc_category` VALUES(73, '', 71, 0, 1, 0, 0, '2013-07-10 16:22:20', '2013-07-10 16:22:20');
INSERT INTO `oc_category` VALUES(74, '', 71, 0, 1, 0, 0, '2013-07-10 16:22:39', '2013-07-10 16:22:39');
INSERT INTO `oc_category` VALUES(75, '', 72, 0, 1, 0, 0, '2013-07-10 16:23:01', '2013-07-10 16:23:01');
INSERT INTO `oc_category` VALUES(84, '', 65, 0, 1, 0, 1, '2013-07-11 14:17:32', '2013-07-11 14:17:32');
INSERT INTO `oc_category` VALUES(83, '', 65, 0, 1, 0, 1, '2013-07-11 14:17:14', '2013-07-11 14:17:14');
INSERT INTO `oc_category` VALUES(82, '', 65, 0, 1, 0, 1, '2013-07-11 14:16:58', '2013-07-11 14:16:58');
INSERT INTO `oc_category` VALUES(81, '', 65, 0, 1, 0, 1, '2013-07-11 14:16:39', '2013-07-11 14:16:39');
INSERT INTO `oc_category` VALUES(85, '', 64, 0, 1, 0, 1, '2013-07-12 18:45:43', '2013-07-12 18:45:43');
INSERT INTO `oc_category` VALUES(80, '', 65, 0, 1, 0, 1, '2013-07-11 14:16:07', '2013-07-11 14:16:07');
INSERT INTO `oc_category` VALUES(79, '', 65, 0, 1, 0, 1, '2013-07-11 14:15:40', '2013-07-11 14:15:40');
INSERT INTO `oc_category` VALUES(78, '', 65, 0, 1, 0, 1, '2013-07-11 14:15:12', '2013-07-11 14:15:12');
INSERT INTO `oc_category` VALUES(77, '', 65, 0, 1, 0, 1, '2013-07-11 14:09:29', '2013-07-11 14:10:11');
INSERT INTO `oc_category` VALUES(76, '', 72, 0, 1, 0, 0, '2013-07-10 16:23:19', '2013-07-10 16:23:19');
INSERT INTO `oc_category` VALUES(67, 'data/beatuty.jpg', 0, 0, 1, 4, 1, '2013-07-04 15:54:58', '2013-07-29 15:01:48');
INSERT INTO `oc_category` VALUES(68, 'data/stattoinary.jpg', 0, 0, 1, 0, 1, '2013-07-04 15:55:20', '2013-07-12 19:24:08');
INSERT INTO `oc_category` VALUES(69, 'data/hobby.jpg', 0, 0, 1, 0, 1, '2013-07-04 15:55:31', '2013-07-12 19:23:02');
INSERT INTO `oc_category` VALUES(64, 'data/forhim.jpg', 0, 1, 1, 1, 1, '2013-07-04 15:54:01', '2013-07-12 19:25:17');
INSERT INTO `oc_category` VALUES(66, 'data/IMG_5609a.jpg', 0, 1, 1, 3, 1, '2013-07-04 15:54:37', '2013-09-27 15:36:09');
INSERT INTO `oc_category` VALUES(65, 'data/images.jpg', 0, 1, 1, 2, 1, '2013-07-04 15:54:21', '2013-07-12 19:20:53');
INSERT INTO `oc_category` VALUES(91, '', 90, 0, 1, 0, 0, '2013-07-25 19:20:54', '2013-07-25 20:08:34');
INSERT INTO `oc_category` VALUES(92, '', 90, 0, 1, 0, 0, '2013-07-25 19:21:24', '2013-07-25 20:09:11');
INSERT INTO `oc_category` VALUES(93, '', 90, 0, 1, 0, 0, '2013-07-25 19:22:27', '2013-07-25 20:08:03');
INSERT INTO `oc_category` VALUES(94, '', 0, 0, 1, 0, 0, '2013-07-25 19:23:50', '2013-07-25 20:08:58');
INSERT INTO `oc_category` VALUES(95, '', 94, 0, 1, 0, 0, '2013-07-25 19:25:13', '2013-07-25 20:09:55');
INSERT INTO `oc_category` VALUES(96, '', 94, 0, 1, 0, 0, '2013-07-25 19:25:52', '2013-07-25 20:12:46');
INSERT INTO `oc_category` VALUES(97, '', 0, 0, 1, 0, 1, '2013-07-26 16:11:32', '2013-08-19 13:56:25');
INSERT INTO `oc_category` VALUES(99, '', 0, 0, 1, 0, 1, '2013-09-21 06:55:32', '2013-09-21 06:55:32');
INSERT INTO `oc_category` VALUES(100, '', 99, 0, 1, 0, 1, '2013-09-21 06:56:23', '2013-09-21 06:56:37');
INSERT INTO `oc_category` VALUES(103, '', 65, 0, 1, 0, 1, '2013-10-29 16:31:46', '2013-10-29 16:31:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY  (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` VALUES(76, 1, 'Wedding wrapping', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;Wedding wrapping&lt;/span&gt;&lt;/p&gt;\r\n', 'Wedding wrapping', 'Wedding wrapping');
INSERT INTO `oc_category_description` VALUES(67, 1, 'Beauty &amp; Health', '&lt;p&gt;Beauty &amp;amp; Health&lt;/p&gt;\r\n', 'Beauty &amp; Health', 'Beauty &amp; Health');
INSERT INTO `oc_category_description` VALUES(68, 1, 'Stationaries', '&lt;p&gt;Stationaries&lt;/p&gt;\r\n', 'Stationaries', 'Stationaries');
INSERT INTO `oc_category_description` VALUES(69, 1, 'Hobby', '&lt;p&gt;Hobby&lt;/p&gt;\r\n', 'Hobby', 'Hobby');
INSERT INTO `oc_category_description` VALUES(70, 1, 'Electronics', '&lt;p&gt;Electronics&lt;/p&gt;\r\n', 'Electronics', 'Electronics');
INSERT INTO `oc_category_description` VALUES(71, 1, 'Standard Greeting card', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: normal; background-color: rgb(255, 255, 203);&quot;&gt;Greeting card&lt;/span&gt;&lt;/p&gt;\r\n', 'Standard Greeting card', 'Standard Greeting card');
INSERT INTO `oc_category_description` VALUES(72, 1, 'Standard Wrapping Paper', '&lt;p&gt;Standard Wrapping Paper&lt;/p&gt;\r\n', 'Standard Wrapping Paper', 'Standard Wrapping Paper');
INSERT INTO `oc_category_description` VALUES(94, 1, 'Premium Wrapping Paper', '&lt;p&gt;Premium Wrapping Paper&lt;/p&gt;\r\n', 'Premium Wrapping Paper', 'Premium Wrapping Paper');
INSERT INTO `oc_category_description` VALUES(73, 1, 'Birthday Greetings', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: normal; background-color: rgb(255, 255, 203);&quot;&gt;Birthday Greetings&lt;/span&gt;&lt;/p&gt;\r\n', 'Birthday Greetings', 'Birthday Greetings');
INSERT INTO `oc_category_description` VALUES(74, 1, 'Wedding Greeting', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;Wedding Greeting&lt;/span&gt;&lt;/p&gt;\r\n', 'Wedding Greeting', 'Wedding Greeting');
INSERT INTO `oc_category_description` VALUES(75, 1, 'Birthday wrapping', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: normal; background-color: rgb(255, 255, 203);&quot;&gt;Birthday wrapping&lt;/span&gt;&lt;/p&gt;\r\n', 'Birthday wrapping', 'Birthday wrapping');
INSERT INTO `oc_category_description` VALUES(65, 1, 'For Her', '&lt;p&gt;For Her&lt;/p&gt;\r\n', 'For Her', 'For Her');
INSERT INTO `oc_category_description` VALUES(66, 1, 'Decor', '&lt;p&gt;Decor&lt;/p&gt;\r\n', 'Decor', 'Decor');
INSERT INTO `oc_category_description` VALUES(64, 1, 'For Him', '&lt;p&gt;For Him&lt;/p&gt;\r\n', 'For Him', 'For Him');
INSERT INTO `oc_category_description` VALUES(77, 1, 'Clothing', '&lt;p&gt;Clothing&lt;/p&gt;\r\n', 'Clothing', 'Clothing');
INSERT INTO `oc_category_description` VALUES(78, 1, 'Accesories ', '&lt;p&gt;Accesories&amp;nbsp;&lt;/p&gt;\r\n', 'Accesories ', 'Accesories ');
INSERT INTO `oc_category_description` VALUES(79, 1, 'Jewellery', '&lt;p&gt;Jewellery&lt;/p&gt;\r\n', 'Jewellery', 'Jewellery');
INSERT INTO `oc_category_description` VALUES(80, 1, 'Sale', '&lt;p&gt;Sale&lt;/p&gt;\r\n', 'Sale', 'Sale');
INSERT INTO `oc_category_description` VALUES(81, 1, 'New items', '&lt;p&gt;New items&lt;/p&gt;\r\n', 'New items', 'New items');
INSERT INTO `oc_category_description` VALUES(82, 1, 'New items 1', '&lt;p&gt;New items 1&lt;/p&gt;\r\n', 'New items 1', 'New items 1');
INSERT INTO `oc_category_description` VALUES(83, 1, 'New items 2', '&lt;p&gt;New items 2&lt;/p&gt;\r\n', 'New items 2', 'New items 2');
INSERT INTO `oc_category_description` VALUES(84, 1, 'New items 4', '&lt;p&gt;New items 4&lt;/p&gt;\r\n', 'New items 4', 'New items 4');
INSERT INTO `oc_category_description` VALUES(85, 1, 'Clothing - Men', '', 'Clothing', 'Clothing');
INSERT INTO `oc_category_description` VALUES(86, 1, ' Accesories -Men', '', '', '');
INSERT INTO `oc_category_description` VALUES(87, 1, 'Marker', '', 'Marker And Highlighter', 'Marker And Highlighter');
INSERT INTO `oc_category_description` VALUES(88, 1, 'Chess', '&lt;h3&gt;Chess&lt;/h3&gt;\r\n', 'Chess', 'Chess');
INSERT INTO `oc_category_description` VALUES(89, 1, 'Mobile', '&lt;p&gt;Mobile&lt;/p&gt;\r\n', 'Mobile', 'Mobile');
INSERT INTO `oc_category_description` VALUES(90, 1, 'Premium Greeting card', '', 'Premium Greeting card', 'Premium Greeting card');
INSERT INTO `oc_category_description` VALUES(91, 1, 'Happy Birthday Card', '&lt;p&gt;Happy Birthday Card&lt;/p&gt;\r\n', 'Happy Birthday Card', 'Happy Birthday Card');
INSERT INTO `oc_category_description` VALUES(92, 1, 'Weeding Anniversary Card', '', '', '');
INSERT INTO `oc_category_description` VALUES(93, 1, 'Events ', '', '', '');
INSERT INTO `oc_category_description` VALUES(95, 1, 'Creative Wrapping Paper', '', 'Creative Wrapping Paper', 'Creative Wrapping Paper');
INSERT INTO `oc_category_description` VALUES(96, 1, 'Nice Wrapping Card', '&lt;p&gt;Nice Wrapping Card&lt;/p&gt;\r\n', 'Nice Wrapping Card', 'Nice Wrapping Card');
INSERT INTO `oc_category_description` VALUES(97, 1, 'Justin', '&lt;p&gt;Justin&lt;/p&gt;\r\n', 'Justin', 'Justin');
INSERT INTO `oc_category_description` VALUES(99, 1, 'Bagus', '', 'Bagus', 'Bagus');
INSERT INTO `oc_category_description` VALUES(100, 1, 'Bagus Banget', '&lt;p&gt;Bagus Banget&lt;/p&gt;\r\n', 'Bagus Banget', 'Bagus Banget');
INSERT INTO `oc_category_description` VALUES(103, 1, 'asdsad asda ', '&lt;p&gt;&amp;nbsp;asd&lt;/p&gt;\r\n', 'asd ', 'sad');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY  (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY  (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` VALUES(100, 100, 1);
INSERT INTO `oc_category_path` VALUES(100, 99, 0);
INSERT INTO `oc_category_path` VALUES(99, 99, 0);
INSERT INTO `oc_category_path` VALUES(71, 71, 0);
INSERT INTO `oc_category_path` VALUES(95, 95, 1);
INSERT INTO `oc_category_path` VALUES(95, 94, 0);
INSERT INTO `oc_category_path` VALUES(94, 94, 0);
INSERT INTO `oc_category_path` VALUES(93, 93, 1);
INSERT INTO `oc_category_path` VALUES(93, 90, 0);
INSERT INTO `oc_category_path` VALUES(70, 70, 0);
INSERT INTO `oc_category_path` VALUES(92, 92, 1);
INSERT INTO `oc_category_path` VALUES(92, 90, 0);
INSERT INTO `oc_category_path` VALUES(91, 91, 1);
INSERT INTO `oc_category_path` VALUES(91, 90, 0);
INSERT INTO `oc_category_path` VALUES(90, 90, 0);
INSERT INTO `oc_category_path` VALUES(89, 89, 1);
INSERT INTO `oc_category_path` VALUES(89, 70, 0);
INSERT INTO `oc_category_path` VALUES(88, 88, 1);
INSERT INTO `oc_category_path` VALUES(88, 69, 0);
INSERT INTO `oc_category_path` VALUES(87, 87, 1);
INSERT INTO `oc_category_path` VALUES(87, 68, 0);
INSERT INTO `oc_category_path` VALUES(86, 86, 1);
INSERT INTO `oc_category_path` VALUES(86, 64, 0);
INSERT INTO `oc_category_path` VALUES(85, 85, 1);
INSERT INTO `oc_category_path` VALUES(85, 64, 0);
INSERT INTO `oc_category_path` VALUES(84, 65, 0);
INSERT INTO `oc_category_path` VALUES(84, 84, 1);
INSERT INTO `oc_category_path` VALUES(83, 65, 0);
INSERT INTO `oc_category_path` VALUES(83, 83, 1);
INSERT INTO `oc_category_path` VALUES(82, 65, 0);
INSERT INTO `oc_category_path` VALUES(82, 82, 1);
INSERT INTO `oc_category_path` VALUES(81, 65, 0);
INSERT INTO `oc_category_path` VALUES(81, 81, 1);
INSERT INTO `oc_category_path` VALUES(80, 65, 0);
INSERT INTO `oc_category_path` VALUES(80, 80, 1);
INSERT INTO `oc_category_path` VALUES(79, 65, 0);
INSERT INTO `oc_category_path` VALUES(79, 79, 1);
INSERT INTO `oc_category_path` VALUES(78, 65, 0);
INSERT INTO `oc_category_path` VALUES(78, 78, 1);
INSERT INTO `oc_category_path` VALUES(77, 65, 0);
INSERT INTO `oc_category_path` VALUES(77, 77, 1);
INSERT INTO `oc_category_path` VALUES(76, 72, 0);
INSERT INTO `oc_category_path` VALUES(76, 76, 1);
INSERT INTO `oc_category_path` VALUES(75, 72, 0);
INSERT INTO `oc_category_path` VALUES(75, 75, 1);
INSERT INTO `oc_category_path` VALUES(74, 71, 0);
INSERT INTO `oc_category_path` VALUES(74, 74, 1);
INSERT INTO `oc_category_path` VALUES(73, 71, 0);
INSERT INTO `oc_category_path` VALUES(73, 73, 1);
INSERT INTO `oc_category_path` VALUES(72, 72, 0);
INSERT INTO `oc_category_path` VALUES(69, 69, 0);
INSERT INTO `oc_category_path` VALUES(97, 97, 0);
INSERT INTO `oc_category_path` VALUES(96, 94, 0);
INSERT INTO `oc_category_path` VALUES(96, 96, 1);
INSERT INTO `oc_category_path` VALUES(68, 68, 0);
INSERT INTO `oc_category_path` VALUES(67, 67, 0);
INSERT INTO `oc_category_path` VALUES(66, 66, 0);
INSERT INTO `oc_category_path` VALUES(65, 65, 0);
INSERT INTO `oc_category_path` VALUES(64, 64, 0);
INSERT INTO `oc_category_path` VALUES(103, 65, 0);
INSERT INTO `oc_category_path` VALUES(103, 103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY  (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` VALUES(103, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY  (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` VALUES(64, 0);
INSERT INTO `oc_category_to_store` VALUES(65, 0);
INSERT INTO `oc_category_to_store` VALUES(66, 0);
INSERT INTO `oc_category_to_store` VALUES(67, 0);
INSERT INTO `oc_category_to_store` VALUES(68, 0);
INSERT INTO `oc_category_to_store` VALUES(69, 0);
INSERT INTO `oc_category_to_store` VALUES(70, 0);
INSERT INTO `oc_category_to_store` VALUES(71, 0);
INSERT INTO `oc_category_to_store` VALUES(72, 0);
INSERT INTO `oc_category_to_store` VALUES(73, 0);
INSERT INTO `oc_category_to_store` VALUES(74, 0);
INSERT INTO `oc_category_to_store` VALUES(75, 0);
INSERT INTO `oc_category_to_store` VALUES(76, 0);
INSERT INTO `oc_category_to_store` VALUES(77, 0);
INSERT INTO `oc_category_to_store` VALUES(78, 0);
INSERT INTO `oc_category_to_store` VALUES(79, 0);
INSERT INTO `oc_category_to_store` VALUES(80, 0);
INSERT INTO `oc_category_to_store` VALUES(81, 0);
INSERT INTO `oc_category_to_store` VALUES(82, 0);
INSERT INTO `oc_category_to_store` VALUES(83, 0);
INSERT INTO `oc_category_to_store` VALUES(84, 0);
INSERT INTO `oc_category_to_store` VALUES(85, 0);
INSERT INTO `oc_category_to_store` VALUES(86, 0);
INSERT INTO `oc_category_to_store` VALUES(87, 0);
INSERT INTO `oc_category_to_store` VALUES(88, 0);
INSERT INTO `oc_category_to_store` VALUES(89, 0);
INSERT INTO `oc_category_to_store` VALUES(90, 0);
INSERT INTO `oc_category_to_store` VALUES(91, 0);
INSERT INTO `oc_category_to_store` VALUES(92, 0);
INSERT INTO `oc_category_to_store` VALUES(93, 0);
INSERT INTO `oc_category_to_store` VALUES(94, 0);
INSERT INTO `oc_category_to_store` VALUES(95, 0);
INSERT INTO `oc_category_to_store` VALUES(96, 0);
INSERT INTO `oc_category_to_store` VALUES(97, 0);
INSERT INTO `oc_category_to_store` VALUES(99, 0);
INSERT INTO `oc_category_to_store` VALUES(100, 0);
INSERT INTO `oc_category_to_store` VALUES(103, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_city`
--

CREATE TABLE `oc_city` (
  `city_id` int(11) NOT NULL auto_increment,
  `zone_id` int(11) NOT NULL,
  `code` varchar(32) collate utf8_bin NOT NULL default '',
  `name` varchar(128) collate utf8_bin NOT NULL,
  `price` float default NULL,
  `status` int(1) NOT NULL default '1',
  PRIMARY KEY  (`city_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_city`
--

INSERT INTO `oc_city` VALUES(1, 1507, 'Langsa', 'Langsa', 1000, 1);
INSERT INTO `oc_city` VALUES(2, 1507, 'Banda Aceh', 'Banda Aceh', 20000, 1);
INSERT INTO `oc_city` VALUES(3, 1513, 'jakarta', 'jakarta', 1000, 1);
INSERT INTO `oc_city` VALUES(4, 1493, 'Nashik', 'Nashik', 10000, 1);
INSERT INTO `oc_city` VALUES(5, 1493, 'Pune', 'Pune', 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL auto_increment,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `price` float default NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=252 ;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` VALUES(1, 'Afghanistan', 'AF', 'AFG', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(2, 'Albania', 'AL', 'ALB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(3, 'Algeria', 'DZ', 'DZA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(4, 'American Samoa', 'AS', 'ASM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(5, 'Andorra', 'AD', 'AND', '', 0, 0, 1);
INSERT INTO `oc_country` VALUES(6, 'Angola', 'AO', 'AGO', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(7, 'Anguilla', 'AI', 'AIA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(8, 'Antarctica', 'AQ', 'ATA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(10, 'Argentina', 'AR', 'ARG', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(11, 'Armenia', 'AM', 'ARM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(12, 'Aruba', 'AW', 'ABW', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(13, 'Australia', 'AU', 'AUS', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(14, 'Austria', 'AT', 'AUT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(16, 'Bahamas', 'BS', 'BHS', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(17, 'Bahrain', 'BH', 'BHR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(18, 'Bangladesh', 'BD', 'BGD', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(19, 'Barbados', 'BB', 'BRB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(20, 'Belarus', 'BY', 'BLR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(22, 'Belize', 'BZ', 'BLZ', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(23, 'Benin', 'BJ', 'BEN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(24, 'Bermuda', 'BM', 'BMU', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(25, 'Bhutan', 'BT', 'BTN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(26, 'Bolivia', 'BO', 'BOL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(28, 'Botswana', 'BW', 'BWA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(29, 'Bouvet Island', 'BV', 'BVT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(30, 'Brazil', 'BR', 'BRA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(33, 'Bulgaria', 'BG', 'BGR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(34, 'Burkina Faso', 'BF', 'BFA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(35, 'Burundi', 'BI', 'BDI', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(36, 'Cambodia', 'KH', 'KHM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(37, 'Cameroon', 'CM', 'CMR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(38, 'Canada', 'CA', 'CAN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(39, 'Cape Verde', 'CV', 'CPV', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(40, 'Cayman Islands', 'KY', 'CYM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(41, 'Central African Republic', 'CF', 'CAF', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(42, 'Chad', 'TD', 'TCD', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(43, 'Chile', 'CL', 'CHL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(44, 'China', 'CN', 'CHN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(45, 'Christmas Island', 'CX', 'CXR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(47, 'Colombia', 'CO', 'COL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(48, 'Comoros', 'KM', 'COM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(49, 'Congo', 'CG', 'COG', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(50, 'Cook Islands', 'CK', 'COK', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(51, 'Costa Rica', 'CR', 'CRI', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(53, 'Croatia', 'HR', 'HRV', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(54, 'Cuba', 'CU', 'CUB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(55, 'Cyprus', 'CY', 'CYP', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(56, 'Czech Republic', 'CZ', 'CZE', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(57, 'Denmark', 'DK', 'DNK', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(58, 'Djibouti', 'DJ', 'DJI', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(59, 'Dominica', 'DM', 'DMA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(60, 'Dominican Republic', 'DO', 'DOM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(61, 'East Timor', 'TL', 'TLS', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(62, 'Ecuador', 'EC', 'ECU', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(63, 'Egypt', 'EG', 'EGY', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(64, 'El Salvador', 'SV', 'SLV', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(66, 'Eritrea', 'ER', 'ERI', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(67, 'Estonia', 'EE', 'EST', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(68, 'Ethiopia', 'ET', 'ETH', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(70, 'Faroe Islands', 'FO', 'FRO', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(71, 'Fiji', 'FJ', 'FJI', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(72, 'Finland', 'FI', 'FIN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, NULL, 1);
INSERT INTO `oc_country` VALUES(75, 'French Guiana', 'GF', 'GUF', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(76, 'French Polynesia', 'PF', 'PYF', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(77, 'French Southern Territories', 'TF', 'ATF', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(78, 'Gabon', 'GA', 'GAB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(79, 'Gambia', 'GM', 'GMB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(80, 'Georgia', 'GE', 'GEO', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, NULL, 1);
INSERT INTO `oc_country` VALUES(82, 'Ghana', 'GH', 'GHA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(83, 'Gibraltar', 'GI', 'GIB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(84, 'Greece', 'GR', 'GRC', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(85, 'Greenland', 'GL', 'GRL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(86, 'Grenada', 'GD', 'GRD', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(87, 'Guadeloupe', 'GP', 'GLP', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(88, 'Guam', 'GU', 'GUM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(89, 'Guatemala', 'GT', 'GTM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(90, 'Guinea', 'GN', 'GIN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(92, 'Guyana', 'GY', 'GUY', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(93, 'Haiti', 'HT', 'HTI', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(95, 'Honduras', 'HN', 'HND', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(96, 'Hong Kong', 'HK', 'HKG', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(97, 'Hungary', 'HU', 'HUN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(98, 'Iceland', 'IS', 'ISL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(99, 'India', 'IN', 'IND', '', 0, 100, 1);
INSERT INTO `oc_country` VALUES(100, 'Indonesia', 'ID', 'IDN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(102, 'Iraq', 'IQ', 'IRQ', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(103, 'Ireland', 'IE', 'IRL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(104, 'Israel', 'IL', 'ISR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(105, 'Italy', 'IT', 'ITA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(106, 'Jamaica', 'JM', 'JAM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(107, 'Japan', 'JP', 'JPN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(108, 'Jordan', 'JO', 'JOR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(110, 'Kenya', 'KE', 'KEN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(111, 'Kiribati', 'KI', 'KIR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(112, 'North Korea', 'KP', 'PRK', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(114, 'Kuwait', 'KW', 'KWT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(117, 'Latvia', 'LV', 'LVA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(118, 'Lebanon', 'LB', 'LBN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(119, 'Lesotho', 'LS', 'LSO', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(120, 'Liberia', 'LR', 'LBR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(122, 'Liechtenstein', 'LI', 'LIE', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(123, 'Lithuania', 'LT', 'LTU', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(124, 'Luxembourg', 'LU', 'LUX', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(125, 'Macau', 'MO', 'MAC', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(126, 'FYROM', 'MK', 'MKD', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(127, 'Madagascar', 'MG', 'MDG', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(128, 'Malawi', 'MW', 'MWI', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(129, 'Malaysia', 'MY', 'MYS', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(130, 'Maldives', 'MV', 'MDV', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(131, 'Mali', 'ML', 'MLI', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(132, 'Malta', 'MT', 'MLT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(133, 'Marshall Islands', 'MH', 'MHL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(134, 'Martinique', 'MQ', 'MTQ', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(135, 'Mauritania', 'MR', 'MRT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(136, 'Mauritius', 'MU', 'MUS', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(137, 'Mayotte', 'YT', 'MYT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(138, 'Mexico', 'MX', 'MEX', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(141, 'Monaco', 'MC', 'MCO', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(142, 'Mongolia', 'MN', 'MNG', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(143, 'Montserrat', 'MS', 'MSR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(144, 'Morocco', 'MA', 'MAR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(145, 'Mozambique', 'MZ', 'MOZ', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(146, 'Myanmar', 'MM', 'MMR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(147, 'Namibia', 'NA', 'NAM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(148, 'Nauru', 'NR', 'NRU', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(149, 'Nepal', 'NP', 'NPL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(150, 'Netherlands', 'NL', 'NLD', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(152, 'New Caledonia', 'NC', 'NCL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(153, 'New Zealand', 'NZ', 'NZL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(154, 'Nicaragua', 'NI', 'NIC', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(155, 'Niger', 'NE', 'NER', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(156, 'Nigeria', 'NG', 'NGA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(157, 'Niue', 'NU', 'NIU', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(158, 'Norfolk Island', 'NF', 'NFK', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(160, 'Norway', 'NO', 'NOR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(161, 'Oman', 'OM', 'OMN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(162, 'Pakistan', 'PK', 'PAK', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(163, 'Palau', 'PW', 'PLW', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(164, 'Panama', 'PA', 'PAN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(166, 'Paraguay', 'PY', 'PRY', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(167, 'Peru', 'PE', 'PER', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(168, 'Philippines', 'PH', 'PHL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(169, 'Pitcairn', 'PN', 'PCN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(170, 'Poland', 'PL', 'POL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(171, 'Portugal', 'PT', 'PRT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(172, 'Puerto Rico', 'PR', 'PRI', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(173, 'Qatar', 'QA', 'QAT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(174, 'Reunion', 'RE', 'REU', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(175, 'Romania', 'RO', 'ROM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(176, 'Russian Federation', 'RU', 'RUS', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(177, 'Rwanda', 'RW', 'RWA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(179, 'Saint Lucia', 'LC', 'LCA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(181, 'Samoa', 'WS', 'WSM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(182, 'San Marino', 'SM', 'SMR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(185, 'Senegal', 'SN', 'SEN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(186, 'Seychelles', 'SC', 'SYC', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(187, 'Sierra Leone', 'SL', 'SLE', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(188, 'Singapore', 'SG', 'SGP', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(190, 'Slovenia', 'SI', 'SVN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(191, 'Solomon Islands', 'SB', 'SLB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(192, 'Somalia', 'SO', 'SOM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(193, 'South Africa', 'ZA', 'ZAF', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(195, 'Spain', 'ES', 'ESP', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(196, 'Sri Lanka', 'LK', 'LKA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(197, 'St. Helena', 'SH', 'SHN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(199, 'Sudan', 'SD', 'SDN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(200, 'Suriname', 'SR', 'SUR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(202, 'Swaziland', 'SZ', 'SWZ', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, NULL, 1);
INSERT INTO `oc_country` VALUES(204, 'Switzerland', 'CH', 'CHE', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(206, 'Taiwan', 'TW', 'TWN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(207, 'Tajikistan', 'TJ', 'TJK', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(209, 'Thailand', 'TH', 'THA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(210, 'Togo', 'TG', 'TGO', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(211, 'Tokelau', 'TK', 'TKL', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(212, 'Tonga', 'TO', 'TON', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(214, 'Tunisia', 'TN', 'TUN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(215, 'Turkey', 'TR', 'TUR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(216, 'Turkmenistan', 'TM', 'TKM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(218, 'Tuvalu', 'TV', 'TUV', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(219, 'Uganda', 'UG', 'UGA', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(220, 'Ukraine', 'UA', 'UKR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(222, 'United Kingdom', 'GB', 'GBR', '', 1, NULL, 1);
INSERT INTO `oc_country` VALUES(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(225, 'Uruguay', 'UY', 'URY', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(227, 'Vanuatu', 'VU', 'VUT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(229, 'Venezuela', 'VE', 'VEN', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(230, 'Viet Nam', 'VN', 'VNM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(234, 'Western Sahara', 'EH', 'ESH', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(235, 'Yemen', 'YE', 'YEM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(238, 'Zambia', 'ZM', 'ZMB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(240, 'Jersey', 'JE', 'JEY', '', 1, NULL, 1);
INSERT INTO `oc_country` VALUES(241, 'Guernsey', 'GG', 'GGY', '', 1, NULL, 1);
INSERT INTO `oc_country` VALUES(242, 'Montenegro', 'ME', 'MNE', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(243, 'Serbia', 'RS', 'SRB', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 100, 1);
INSERT INTO `oc_country` VALUES(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(246, 'Curacao', 'CW', 'CUW', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(248, 'South Sudan', 'SS', 'SSD', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, NULL, 1);
INSERT INTO `oc_country` VALUES(251, 'Canary Islands', 'IC', 'ICA', '', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL default '0000-00-00',
  `date_end` date NOT NULL default '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` VALUES(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2011-01-01', '2014-01-01', 10, '10', 1, '2009-01-27 13:55:03');
INSERT INTO `oc_coupon` VALUES(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53');
INSERT INTO `oc_coupon` VALUES(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');
INSERT INTO `oc_coupon` VALUES(7, 'test', '143654', 'P', 75.0000, 1, 1, 100.0000, '2013-07-12', '2013-07-12', 5, '1', 1, '2013-07-12 12:50:58');
INSERT INTO `oc_coupon` VALUES(8, 'Birthday', '12345', 'F', 20.0000, 0, 0, 0.0000, '2013-07-17', '2013-07-31', 10, '10', 1, '2013-07-17 19:18:42');
INSERT INTO `oc_coupon` VALUES(9, 'Diwali', '1122', 'F', 5000.0000, 1, 0, 0.0000, '2013-07-29', '2013-08-31', 100, '100', 1, '2013-07-30 19:34:56');
INSERT INTO `oc_coupon` VALUES(10, 'discount', '123', 'P', 10.0000, 1, 0, 0.0000, '2013-08-02', '2013-08-31', 0, '0', 1, '2013-08-02 09:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY  (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon_category`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`coupon_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `oc_coupon_history`
--

INSERT INTO `oc_coupon_history` VALUES(1, 8, 11, 3, -20.0000, '2013-07-17 19:19:35');
INSERT INTO `oc_coupon_history` VALUES(2, 9, 305076579, 3, -5000.0000, '2013-07-30 19:38:34');
INSERT INTO `oc_coupon_history` VALUES(3, 9, 100572830, 3, -10.0000, '2013-07-30 19:38:34');
INSERT INTO `oc_coupon_history` VALUES(4, 9, 322563865, 3, -5000.0000, '2013-07-30 19:42:51');
INSERT INTO `oc_coupon_history` VALUES(5, 9, 843188137, 3, 0.0000, '2013-07-30 19:42:51');
INSERT INTO `oc_coupon_history` VALUES(6, 9, 733063684, 3, -75.0000, '2013-07-31 12:31:13');
INSERT INTO `oc_coupon_history` VALUES(7, 9, 114736514, 3, -4925.0000, '2013-07-31 12:31:13');
INSERT INTO `oc_coupon_history` VALUES(8, 9, 585303106, 3, -75.0000, '2013-07-31 12:36:25');
INSERT INTO `oc_coupon_history` VALUES(9, 9, 920306331, 3, -4925.0000, '2013-07-31 12:36:25');
INSERT INTO `oc_coupon_history` VALUES(10, 9, 530891362, 3, -1135.0000, '2013-08-01 15:52:09');
INSERT INTO `oc_coupon_history` VALUES(11, 9, 337585482, 3, -5000.0000, '2013-08-01 16:12:03');
INSERT INTO `oc_coupon_history` VALUES(12, 10, 289439425, 15, -10.0000, '2013-08-02 09:19:51');
INSERT INTO `oc_coupon_history` VALUES(13, 10, 72118865, 15, -10.0000, '2013-08-02 09:30:41');
INSERT INTO `oc_coupon_history` VALUES(14, 10, 710898599, 15, -10.0000, '2013-08-02 09:30:41');
INSERT INTO `oc_coupon_history` VALUES(15, 10, 135482351, 3, -10811.5000, '2013-08-02 11:57:33');
INSERT INTO `oc_coupon_history` VALUES(16, 9, 190308519, 3, -5000.0000, '2013-08-02 12:03:13');
INSERT INTO `oc_coupon_history` VALUES(17, 9, 44929529, 3, -5000.0000, '2013-08-02 14:46:13');
INSERT INTO `oc_coupon_history` VALUES(18, 9, 138478641, 3, -5000.0000, '2013-08-07 11:59:56');
INSERT INTO `oc_coupon_history` VALUES(19, 6, 640025542, 16, -10.0000, '2013-08-13 10:06:56');
INSERT INTO `oc_coupon_history` VALUES(20, 4, 145905119, 16, -100.0000, '2013-08-13 10:14:48');
INSERT INTO `oc_coupon_history` VALUES(21, 9, 323438655, 18, -5000.0000, '2013-08-19 15:54:54');
INSERT INTO `oc_coupon_history` VALUES(22, 9, 770386932, 4, -5000.0000, '2013-08-21 12:35:58');
INSERT INTO `oc_coupon_history` VALUES(23, 9, 784914250, 21, -5000.0000, '2013-08-21 14:55:53');
INSERT INTO `oc_coupon_history` VALUES(24, 6, 153939129, 8, -10.0000, '2013-10-14 14:23:01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL auto_increment,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY  (`coupon_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_coupon_product`
--

INSERT INTO `oc_coupon_product` VALUES(1, 7, 56);
INSERT INTO `oc_coupon_product` VALUES(2, 7, 55);
INSERT INTO `oc_coupon_product` VALUES(3, 7, 54);

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL auto_increment,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` VALUES(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.00010000, 1, '2013-11-21 21:28:33');
INSERT INTO `oc_currency` VALUES(2, 'US Dollar', 'USD', '$', '', '2', 0.00010000, 1, '2013-11-21 21:28:33');
INSERT INTO `oc_currency` VALUES(3, 'Euro', 'EUR', '', '€', '2', 0.00010000, 1, '2013-11-21 21:28:33');
INSERT INTO `oc_currency` VALUES(4, 'Indonesia Rupiah', 'IDR', 'IDR ', '', '', 1.00000000, 1, '2013-11-21 21:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL auto_increment,
  `store_id` int(11) NOT NULL default '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `birth_date` date NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL default '0',
  `address_id` int(11) NOT NULL default '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `passwordToken` varchar(255) NOT NULL,
  `fb_user_id` bigint(11) NOT NULL,
  `fb_token` text NOT NULL,
  `fb_expire_time` bigint(20) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` VALUES(1, 0, 'Gaurav', 'Patil', 'test44@gmail.com', 'Male', '0000-00-00', '123423', '', '6433956a777123c1f199d765b72c71ce57b951f0', 'fc20d1ce5', 'a:0:{}', '', 1, 1, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-06-26 19:06:55');
INSERT INTO `oc_customer` VALUES(4, 0, 'Mayur', 'Sharma', 'eluminous_tl5@eluminoustechnologies.com', 'Male', '1985-01-01', '', '', '3bd67725c8e63e0bd7cd0e6908e1376efaf1be48', 'ab40d8bd0', 'a:0:{}', '', 1, 4, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-06-27 18:58:31');
INSERT INTO `oc_customer` VALUES(20, 0, 'Elum', 'Teschnol', 'a2ztester@gmail.com', 'Male', '0000-00-00', '', '', 'e920de80b6a375e21d6c11aeb69bc619152625b2', 'aaf049019', 'a:0:{}', '', 0, 52, 1, '192.168.1.1', 1, 1, '', '', 1241950330, 'CAAHAo4YFUrkBAPulE1QtFNDbJZCpghelF7PeHwxHy8OTjVZBdsuFetJRCE2FRBspAhstCEKJkKP2jfIOasV5f735GrDTCUymiYB5u8mctU0xT0JUa6vMb8OBZATVQMZAcS89DQrOi4VXVCiyK8K9', 6581, '2013-08-19 18:40:41');
INSERT INTO `oc_customer` VALUES(31, 0, 'Findal', 'Darmaja', 'findal_darmaja@yahoo.com', 'Male', '1993-09-24', '', '', '1c4ee41c59fbe6e2dab8ff013224877d2c543a98', 'fb99d89bd', 'a:0:{}', '', 0, 71, 1, '192.168.1.1', 1, 1, '', '', 100001383626136, 'CAAHAo4YFUrkBAOfcZAPf40hB75mIZAfaMj8NRKfeRiJb3jpl2QPaS2ZBIH5XRN7E3xflztnMc4jvEhOl9nKv9DJ5dhFMl3bMeLLZABeDsw62Yw0jJx1zg4gOZCDeVO1r63NQrfnTb3fWCRTMHg3gzwSiZCmAxLUhUyCgZCByHCTyBz6tP4KuiGKveymVTjFabkZD', 5216, '2013-09-27 12:01:15');
INSERT INTO `oc_customer` VALUES(19, 0, 'Andy', 'Kencana', 'kencanaandy@yahoo.com', 'Male', '0000-00-00', '', '', '63c43fb20ac39ff6b887bb9211c8abf9b01c0cb0', '14eeef7f5', 'a:0:{}', '', 1, 51, 1, '192.168.1.1', 1, 1, '', '', 1847540200, 'CAAHAo4YFUrkBAP84SPwQ3Iq4dpXl8yciphakEhHrf0NW3XODxqTYM6ZAwxeFXIEacCfDVmXPZCEjIv7smvS0flOP8ryYdqgSptcFpiMdjUKZC4hTD3in7vMYpZCa5nIaZBAJiNjtNVqf3A99d3SvrsvkwZCYYsuQ0ZD', 4013, '2013-08-19 13:23:22');
INSERT INTO `oc_customer` VALUES(7, 0, 'Test', 'test21', 'test@gmail.com', 'Male', '0000-00-00', '', '', 'abbc9180db9ba4dfc975aed997b62ea0dd1157d3', '9cb45d898', 'a:0:{}', '', 0, 7, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-07-01 16:04:10');
INSERT INTO `oc_customer` VALUES(8, 0, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', 'Male', '1987-04-03', '', '', '310d496ce55078549234d2b46fe10a2069998a93', '2fd8b6399', 'a:0:{}', '', 1, 8, 1, '192.168.1.1', 1, 1, '', 'fb8598fdb2cb3f3f0964407d51986dce3875926b', 0, '', 0, '2013-07-01 16:05:15');
INSERT INTO `oc_customer` VALUES(9, 0, 'dee', 'dee', 'dee@gmail.com', 'Male', '0000-00-00', '', '', 'a436f1ce4b60cae3120fa2f50da586d1fbefc86d', 'acd44406c', 'a:1:{s:51:"60:YToyOntpOjIzMTtzOjI6IjI5IjtpOjIzMDtzOjI6IjI1Ijt9";i:1;}', '', 0, 9, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-07-04 15:15:23');
INSERT INTO `oc_customer` VALUES(10, 0, 'Mayur', 'Sharma', 'eluminous_sse14@eluminoustechnologies.com', 'Male', '1985-02-17', '', '', 'f95a6c2c5f351e8dc2feb94002fad006e34a8df8', '02de49308', 'a:0:{}', '', 1, 11, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-07-12 18:20:10');
INSERT INTO `oc_customer` VALUES(12, 0, 'Andy', 'Kencana', 'andy@pixaal.com', 'Male', '0000-00-00', '', '', '54e0cdb51a69d30538e65a932a6091b8671d8fca', 'fcbd94a9d', 'a:0:{}', '', 1, 38, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-07-24 13:04:06');
INSERT INTO `oc_customer` VALUES(16, 0, 'Gladys', 'Kho', 'gladys@pixaal.com', 'Female', '1990-06-24', '', '', '094ea0c5e651e90104a0fd56eea9a5f5370125b5', '8614d72cb', 'a:2:{i:55;i:1;i:73;i:1;}', '', 0, 46, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-08-13 09:50:19');
INSERT INTO `oc_customer` VALUES(11, 0, 'jjgjjg', 'jghjgh', 'jgjhgjhgjgj@ffsd.com', 'Male', '0000-00-00', '', '', 'a09ee4e1edeea7f5ddc66805255eff2fddd09fe7', 'af6da96fa', 'a:0:{}', '', 1, 32, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-07-19 12:20:47');
INSERT INTO `oc_customer` VALUES(13, 0, 'Sandeep', 'Aher', 'sanaher2000@yahoo.com', 'Male', '0000-00-00', '', '', '9cfd4e175e0accfa280a29bf5700ee312e907386', '0f90df191', 'a:0:{}', '', 0, 39, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-07-24 16:30:00');
INSERT INTO `oc_customer` VALUES(28, 0, 'Elufname', 'Elulname', 'eluminous_developer2@eluminoustechnologies.com', 'Male', '0000-00-00', '', '', 'ddf6839cbbedf2bf5525ac7d99720d78ec6f61e1', '232fdc0bf', 'a:0:{}', '', 0, 67, 1, '192.168.1.1', 1, 1, '', '', 100005764478798, 'CAAHAo4YFUrkBAGX2yKaCe22CBcsNZAAr6vYaNLVgNyspxR1PwktlusHPsgXCgNaPTsMqdoTIO26HiL5rm8cdG4y7Y2TQrmm1IY9002SmeVTOrJ0tkyi57vAFnLpb4c4E7aYn22ucNKQ5DYVgZAOmqYeaZABQHkZAZB8MyRuZCiJhswAHNhjiyo', 6792, '2013-09-24 12:35:02');
INSERT INTO `oc_customer` VALUES(14, 0, 'Deepak', 'Kadam', 'deepak_kadam@eluminoustechnologies.com', 'Male', '0000-00-00', '', '', '74e2693c97cc70ffbeeea651da9e3128eebfed0a', 'f650dd987', 'a:0:{}', '', 1, 41, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-07-29 14:35:17');
INSERT INTO `oc_customer` VALUES(21, 0, 'Gaurav', 'Patil', 'eluminous_sse22@eluminoustechnologies.com', 'Male', '1989-04-30', '', '', '1c0c95f0ccedbf7cb2f336567a7d961c23efc70d', '7b778aec4', 'a:0:{}', '', 0, 53, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-08-19 18:51:35');
INSERT INTO `oc_customer` VALUES(22, 0, 'Eluzai', 'Yediael', 'e.yedi_2511@yahoo.com', 'Male', '0000-00-00', '', '', '60b8d157a29304054653134481abcc49c22eb4f7', 'dcc7edd6a', 'a:0:{}', '', 0, 54, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-09-03 12:21:22');
INSERT INTO `oc_customer` VALUES(26, 0, 'Alvin', 'Kusuma', 'alvin@giftlane.co', 'Male', '0000-00-00', '08176560055', '', 'ff89fd8a1a116b625738647c3d806e649ccf62c6', '8396ab589', 'a:1:{i:54;i:4;}', '', 0, 64, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-09-19 11:02:42');
INSERT INTO `oc_customer` VALUES(23, 0, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', 'Female', '1989-10-25', '', '', '32fb2de83a51f22c4946e6660bca154d7a019b59', 'bbe6925c1', 'a:0:{}', '', 1, 55, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-09-03 13:39:08');
INSERT INTO `oc_customer` VALUES(24, 0, 'Elvina', 'Evania', 'elvinaevania@gmail.com', 'Female', '1990-10-19', '', '', '71ceb8489b8b99cb12f1c8f298c8edfd535f87b9', '1f57877bf', 'a:1:{i:55;i:3;}', '', 1, 57, 1, '192.168.1.1', 1, 1, '', '', 719075599, 'CAAHAo4YFUrkBANi7GZAzT6o7tg7tp4fGgNu9SKDUeXxySlrFqNF0ONa4ZCSFX6HNE3T3LSBueb23Ti8VmuX4mwCTm6YHxXB7TcIAsOlJ5SolpWNwLK0VwBH2oYunNrZCOyUWs9dSmYzf5reedZABa6sSGz6ilNScj24TD17B9tj5XyEwnrUTRpHSqeVvZBZBsZD', 4386, '2013-09-03 19:20:22');
INSERT INTO `oc_customer` VALUES(25, 0, 'sandeep', 'ssssss', 'sandeepnisal@gmail.com', 'Male', '0000-00-00', '34553', '', '2721cac16fa39b4fd7579da81d2bb8e5ac8a7cd6', '4adea3a54', 'a:0:{}', '', 0, 62, 1, '192.168.1.1', 1, 1, '', '', 0, '', 0, '2013-09-12 12:05:29');
INSERT INTO `oc_customer` VALUES(30, 0, 'Mayur', 'Sharma', 'mayursfriend4u@gmail.com', 'Male', '1985-02-17', '', '', '45ae59dd8e56fa0ab279c561c5a259af04c39766', 'bd81327e2', 'a:0:{}', '', 0, 69, 1, '192.168.1.1', 1, 1, '', '', 521565393, 'CAAHAo4YFUrkBACzIP12VDSmdbZAaatdz9HaQI1qwfSchCZBzZB8JCvVvHIiUyorw20vbsW3bDLKEZCZAQYnGr6y5ZBKNiRxh0nhCgnP5x4x24gj9X7uAaoRlVB4fDUMB7BReke0B3jxIEcvEsaNLlXB21yh1R9ZCKZC5Kc9xgnZCGqQQOCvzZCTSSw', 5848, '2013-09-24 12:53:57');
INSERT INTO `oc_customer` VALUES(32, 0, 'Alvin', 'Kusuma', 'alvin_keren@hotmail.com', 'Male', '1989-03-04', '', '', '5a5d8fc3389fabe155845089b9c23074dcb1bc7e', '42a3e0c3d', 'a:1:{i:74;i:1;}', '', 0, 72, 1, '192.168.1.1', 1, 1, '', '', 587402386, 'CAAHAo4YFUrkBACprWjuej85E4LztRQgKvKbMPNXgl12FXx9fF0VR1MV1OvN0c9wURJnlPoBLzr4FvFYgvW2ZBrK30v8a7dZCOzvbOvk7X2yeGiUeztXxyYP5RO4zkTANfdKZAw3OmLZAblL8lo8yD6lAEQ4tbWnS9HA24AC9pjs1oM92FbEb', 5115, '2013-09-27 12:02:55');
INSERT INTO `oc_customer` VALUES(33, 0, 'Kuuga', 'Kuuga', 'ryuki.servaiv@gmail.com', 'Male', '0000-00-00', '978776767', '', '9e48d9b4e7c00341af17755ce957a4882c4f9ce7', '0bf71ed93', 'a:1:{i:54;i:1;}', '', 0, 76, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-23 11:28:55');
INSERT INTO `oc_customer` VALUES(34, 0, 'Kuuga Mulia', 'S', 'kkk@gmail.com', 'Male', '0000-00-00', '05874225689', '', '05a0b38cc7cd8aad7861cd65ea807f46d20c257a', '55393bb44', 'a:0:{}', '', 0, 77, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-23 12:07:21');
INSERT INTO `oc_customer` VALUES(35, 0, 'vvv', 'vv', 'ttt2@gmail.com', 'Male', '0000-00-00', '', '', '07dcf67cc996959cb3187daa4dc8b1a2e0079b6a', '9155e61cc', 'a:0:{}', '', 0, 78, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-23 13:06:57');
INSERT INTO `oc_customer` VALUES(36, 0, 'Dino', 'Saurus', 'ggg@gmail.com', 'Male', '0000-00-00', '05874225008', '', '64164f90c93a40b8b4e6bf7700ead2e51af9a3ea', '69af30ee6', 'a:1:{i:60;i:2;}', '', 0, 79, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-23 13:12:30');
INSERT INTO `oc_customer` VALUES(37, 0, 'asdsad', 'baba', 'daguba@gmail.com', 'Male', '0000-00-00', '654987', '', '30d7fc8c074b41d16bd3ccb3f75b38e3a5435b0b', '087e0ad1e', 'a:0:{}', '', 0, 82, 1, '180.242.131.226', 1, 1, '', '00f1f54899e48e8ab8c606173ebf90579ce969ea', 0, '', 0, '2013-10-23 15:38:52');
INSERT INTO `oc_customer` VALUES(38, 0, 'Brown', 'Snitch', 'brown@gmail.com', 'Male', '0000-00-00', '369852', '', 'b32a9668845ba485a8c6aa5848a7a270dc84008c', 'f4e8aa042', 'a:0:{}', '', 0, 119, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-28 14:18:12');
INSERT INTO `oc_customer` VALUES(39, 0, 'james', 'coco', 'james@gmail.com', 'Male', '0000-00-00', '747474747', '', '564b6d37031c400ac82e724df6a8b2cd2e11c222', '7b97f5400', 'a:0:{}', '', 0, 120, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-28 14:21:38');
INSERT INTO `oc_customer` VALUES(40, 0, 'sdf', 'sdfdsf', 'bladeblade@gmail.com', 'Male', '0000-00-00', '345435', '', '7ec243ae4e1660dace131752600ddaa3f1d8fe6d', '53aeaee6e', 'a:0:{}', '', 0, 122, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-28 14:51:36');
INSERT INTO `oc_customer` VALUES(41, 0, 'asdsd', 'asd', 'haha@gmail.com', 'Male', '0000-00-00', '34234', '', '9d8cb0b58bc42d2726012b6d7b51fa1468701dd9', '9aae698c6', 'a:0:{}', '', 0, 123, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-28 14:52:25');
INSERT INTO `oc_customer` VALUES(42, 0, 'emas', 'emas', 'emasy@gmail.com', 'Male', '0000-00-00', '234', '', '63b05d1334e991d3c15eb8564b71f32ec2573d2b', 'b296e423e', 'a:1:{i:65;i:1;}', '', 0, 124, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-28 15:09:15');
INSERT INTO `oc_customer` VALUES(43, 0, 'greek', 'nwekolo', 'hitamputih@gmail.com', 'Male', '0000-00-00', '12358747', '', '6cd4928a8da9d3d4a80b57835f6e28088454fa99', '53cd0fd63', 'a:0:{}', '', 0, 125, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-28 15:14:14');
INSERT INTO `oc_customer` VALUES(44, 0, 'Casa', 'Nova', 'casa@gmail.com', 'Male', '0000-00-00', '369855', '', '91e57fe4ec6ec91cf4112435ce366605174e0dfe', 'aa25c1633', 'a:0:{}', '', 0, 139, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-30 11:43:20');
INSERT INTO `oc_customer` VALUES(45, 0, 'Nogami', 'Birth', 'date@gamil.com', 'Male', '0000-00-00', '852147', '', '79f32b7d4ffcd185e367c1a0926d8beef6659051', '6dd769586', 'a:0:{}', '', 0, 141, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-30 13:05:41');
INSERT INTO `oc_customer` VALUES(46, 0, 'Jor', 'Joluio', 'lopezjoel@gmail.com', 'Male', '0000-00-00', 'Lopez', '', 'fbdd6a1754c9aaaafe4d3cf873581ff1d451e8aa', '4db7aebf1', 'a:0:{}', '', 0, 147, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-30 14:49:31');
INSERT INTO `oc_customer` VALUES(47, 0, 'kuobo', 'kurobok', 'kuro@gmail.com', 'Male', '0000-00-00', '852', '', '597463d46f99d27580723ef90a54981956c04f0f', 'b2d19c699', 'a:0:{}', '', 0, 149, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-30 15:00:27');
INSERT INTO `oc_customer` VALUES(48, 0, 'Green', 'Joluio', 'green@gmail.com', 'Male', '0000-00-00', '8978798', '', '1f8f381664f0780c61d596aaedbbcdb712977c9e', '2fc7d0c3b', 'a:0:{}', '', 0, 151, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-30 15:11:47');
INSERT INTO `oc_customer` VALUES(49, 0, 'huro', 'hurobo', 'huro@gmail.com', 'Male', '0000-00-00', '9797987', '', 'bd1c763bd7ab26c6403c5e76ec930033d1ba9fad', '79a356286', 'a:1:{i:69;i:2;}', '', 0, 152, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-30 16:06:43');
INSERT INTO `oc_customer` VALUES(50, 0, 'hire', 'hiring', 'hire@gmail.com', 'Male', '0000-00-00', '97987987', '', '9264b671681c3af94cc29005828bd139c26448ca', 'a5fce07d5', 'a:0:{}', '', 0, 156, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-30 16:13:53');
INSERT INTO `oc_customer` VALUES(51, 0, 'konamiii', 'kinami', 'konamii@gmail.com', 'Male', '0000-00-00', '8787687', '', '5d18ede8162e0957422bc7df34ec730afabfe176', '2f1bf3842', 'a:0:{}', '', 0, 159, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-30 16:17:09');
INSERT INTO `oc_customer` VALUES(52, 0, 'first virly', 'last firly', 'virly@gmail.com', 'Male', '0000-00-00', '897897987', '', '98e222d79c07e208278ebbc6769c6702d09afebd', 'c18396b11', 'a:0:{}', '', 0, 162, 1, '::1', 1, 1, '', 'a15a0a169b5a35ab994537279efd4c87aa74646f', 0, '', 0, '2013-10-30 16:21:28');
INSERT INTO `oc_customer` VALUES(53, 0, 'birdie', 'birdie 2', 'birdiebirdie@gmail.com', 'Male', '0000-00-00', '3948294', '', 'fddcccbc886314887c2aded02b5be2f2c6115281', '7d8a10683', 'a:0:{}', '', 0, 166, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-31 09:37:14');
INSERT INTO `oc_customer` VALUES(54, 0, 'sss', 'fff', 'sss@gmail.com', 'Male', '0000-00-00', '4444', '', '8452fd5c5c780110fe4249ba9d7326c428cae466', '8c2390f84', 'a:1:{i:65;i:1;}', '', 0, 169, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-31 13:22:27');
INSERT INTO `oc_customer` VALUES(55, 0, 'rong', 'rong 2', 'rongrong@gmail.com', 'Male', '0000-00-00', '23479237489', '', 'bfa666656cdc7828e40fd30fd92421a1abfbc613', '7741e6996', 'a:0:{}', '', 0, 172, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-31 13:58:00');
INSERT INTO `oc_customer` VALUES(56, 0, 'cancer address', 'cancer name', 'cancermcr@gmail.com', 'Male', '0000-00-00', '990898', '', 'a9a48b930fb49a7c5df084dfefb848700ad72f96', 'dcb7d90ca', 'a:2:{i:58;i:1;i:55;i:1;}', '', 0, 175, 1, '::1', 1, 1, '', '', 0, '', 0, '2013-10-31 14:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ban_ip`
--

CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL auto_increment,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY  (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_customer_ban_ip`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_field`
--

CREATE TABLE `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_field`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL auto_increment,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` VALUES(1, 0, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` VALUES(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_customer_history`
--

INSERT INTO `oc_customer_history` VALUES(1, 1, 'test', '2013-08-02 16:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` VALUES(1, 1, '192.168.1.1', '2013-06-26 19:07:10');
INSERT INTO `oc_customer_ip` VALUES(2, 2, '192.168.1.1', '2013-06-27 12:11:26');
INSERT INTO `oc_customer_ip` VALUES(3, 3, '192.168.1.1', '2013-06-27 12:11:53');
INSERT INTO `oc_customer_ip` VALUES(4, 4, '192.168.1.1', '2013-06-27 18:58:32');
INSERT INTO `oc_customer_ip` VALUES(27, 28, '192.168.1.1', '2013-09-24 12:35:02');
INSERT INTO `oc_customer_ip` VALUES(19, 19, '192.168.1.1', '2013-08-19 13:23:22');
INSERT INTO `oc_customer_ip` VALUES(7, 7, '192.168.1.1', '2013-07-01 16:04:11');
INSERT INTO `oc_customer_ip` VALUES(8, 8, '192.168.1.1', '2013-07-01 16:05:15');
INSERT INTO `oc_customer_ip` VALUES(9, 9, '192.168.1.1', '2013-07-04 15:15:24');
INSERT INTO `oc_customer_ip` VALUES(10, 10, '192.168.1.1', '2013-07-12 18:20:10');
INSERT INTO `oc_customer_ip` VALUES(11, 11, '192.168.1.1', '2013-07-19 12:20:47');
INSERT INTO `oc_customer_ip` VALUES(12, 12, '192.168.1.1', '2013-07-24 13:04:06');
INSERT INTO `oc_customer_ip` VALUES(13, 13, '192.168.1.1', '2013-07-24 16:30:00');
INSERT INTO `oc_customer_ip` VALUES(14, 14, '192.168.1.1', '2013-07-29 14:35:17');
INSERT INTO `oc_customer_ip` VALUES(16, 16, '192.168.1.1', '2013-08-13 09:50:20');
INSERT INTO `oc_customer_ip` VALUES(29, 30, '192.168.1.1', '2013-09-24 12:53:58');
INSERT INTO `oc_customer_ip` VALUES(20, 20, '192.168.1.1', '2013-08-19 18:40:41');
INSERT INTO `oc_customer_ip` VALUES(21, 21, '192.168.1.1', '2013-08-19 18:51:35');
INSERT INTO `oc_customer_ip` VALUES(22, 22, '192.168.1.1', '2013-09-03 12:21:23');
INSERT INTO `oc_customer_ip` VALUES(23, 23, '192.168.1.1', '2013-09-03 13:39:09');
INSERT INTO `oc_customer_ip` VALUES(24, 24, '192.168.1.1', '2013-09-03 19:20:23');
INSERT INTO `oc_customer_ip` VALUES(25, 25, '192.168.1.1', '2013-09-12 12:05:29');
INSERT INTO `oc_customer_ip` VALUES(26, 26, '192.168.1.1', '2013-09-19 11:02:58');
INSERT INTO `oc_customer_ip` VALUES(30, 0, '192.168.1.1', '2013-09-24 17:51:05');
INSERT INTO `oc_customer_ip` VALUES(31, 31, '192.168.1.1', '2013-09-27 12:01:17');
INSERT INTO `oc_customer_ip` VALUES(32, 32, '192.168.1.1', '2013-09-27 12:02:56');
INSERT INTO `oc_customer_ip` VALUES(33, 33, '::1', '2013-10-23 11:28:56');
INSERT INTO `oc_customer_ip` VALUES(34, 34, '::1', '2013-10-23 12:07:21');
INSERT INTO `oc_customer_ip` VALUES(35, 35, '::1', '2013-10-23 13:06:57');
INSERT INTO `oc_customer_ip` VALUES(36, 36, '::1', '2013-10-23 13:12:30');
INSERT INTO `oc_customer_ip` VALUES(37, 37, '::1', '2013-10-23 15:38:52');
INSERT INTO `oc_customer_ip` VALUES(38, 16, '::1', '2013-10-25 10:14:12');
INSERT INTO `oc_customer_ip` VALUES(39, 38, '::1', '2013-10-28 14:18:12');
INSERT INTO `oc_customer_ip` VALUES(40, 39, '::1', '2013-10-28 14:21:38');
INSERT INTO `oc_customer_ip` VALUES(41, 40, '::1', '2013-10-28 14:51:36');
INSERT INTO `oc_customer_ip` VALUES(42, 41, '::1', '2013-10-28 14:52:25');
INSERT INTO `oc_customer_ip` VALUES(43, 42, '::1', '2013-10-28 15:09:15');
INSERT INTO `oc_customer_ip` VALUES(44, 43, '::1', '2013-10-28 15:14:14');
INSERT INTO `oc_customer_ip` VALUES(45, 44, '::1', '2013-10-30 11:43:20');
INSERT INTO `oc_customer_ip` VALUES(46, 45, '::1', '2013-10-30 13:05:41');
INSERT INTO `oc_customer_ip` VALUES(47, 46, '::1', '2013-10-30 14:49:31');
INSERT INTO `oc_customer_ip` VALUES(48, 47, '::1', '2013-10-30 15:00:27');
INSERT INTO `oc_customer_ip` VALUES(49, 48, '::1', '2013-10-30 15:11:47');
INSERT INTO `oc_customer_ip` VALUES(50, 49, '::1', '2013-10-30 16:06:43');
INSERT INTO `oc_customer_ip` VALUES(51, 50, '::1', '2013-10-30 16:13:54');
INSERT INTO `oc_customer_ip` VALUES(52, 51, '::1', '2013-10-30 16:17:09');
INSERT INTO `oc_customer_ip` VALUES(53, 52, '::1', '2013-10-30 16:21:28');
INSERT INTO `oc_customer_ip` VALUES(54, 53, '::1', '2013-10-31 09:37:15');
INSERT INTO `oc_customer_ip` VALUES(55, 54, '::1', '2013-10-31 13:22:28');
INSERT INTO `oc_customer_ip` VALUES(56, 55, '::1', '2013-10-31 13:58:00');
INSERT INTO `oc_customer_ip` VALUES(57, 56, '::1', '2013-10-31 14:05:25');
INSERT INTO `oc_customer_ip` VALUES(58, 37, '180.242.131.226', '2013-11-21 21:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_online`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL default '0',
  `order_id` int(11) NOT NULL default '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_customer_reward`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL auto_increment,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_customer_transaction`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL auto_increment,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_custom_field`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY  (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_to_customer_group`
--

CREATE TABLE `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY  (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_to_customer_group`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL auto_increment,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_custom_field_value`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY  (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_value_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_dependent_option`
--

CREATE TABLE `oc_dependent_option` (
  `product_id` int(11) NOT NULL,
  `parent_option_id` int(11) NOT NULL,
  `child_option_id` int(11) NOT NULL,
  `parent_product_option_id` int(11) NOT NULL,
  `child_product_option_id` int(11) NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `child_product_option_id` (`child_product_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_dependent_option`
--

INSERT INTO `oc_dependent_option` VALUES(60, 11, 14, 253, 254);
INSERT INTO `oc_dependent_option` VALUES(60, 13, 11, 252, 253);

-- --------------------------------------------------------

--
-- Table structure for table `oc_dependent_option_value`
--

CREATE TABLE `oc_dependent_option_value` (
  `product_id` int(11) NOT NULL,
  `parent_option_id` int(11) NOT NULL,
  `child_option_id` int(11) NOT NULL,
  `parent_option_value_id` int(11) NOT NULL,
  `child_option_value_id` int(11) NOT NULL,
  `parent_product_option_value_id` int(11) NOT NULL,
  `child_product_option_value_id` int(11) NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `parent_option_id` (`parent_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_dependent_option_value`
--

INSERT INTO `oc_dependent_option_value` VALUES(60, 11, 14, 48, 56, 81, 88);
INSERT INTO `oc_dependent_option_value` VALUES(60, 11, 14, 48, 57, 81, 89);
INSERT INTO `oc_dependent_option_value` VALUES(60, 11, 14, 47, 57, 82, 89);
INSERT INTO `oc_dependent_option_value` VALUES(60, 11, 14, 46, 57, 83, 89);
INSERT INTO `oc_dependent_option_value` VALUES(60, 11, 14, 48, 55, 81, 87);
INSERT INTO `oc_dependent_option_value` VALUES(60, 11, 14, 46, 55, 83, 87);
INSERT INTO `oc_dependent_option_value` VALUES(60, 13, 11, 50, 48, 86, 81);
INSERT INTO `oc_dependent_option_value` VALUES(60, 13, 11, 53, 48, 85, 81);
INSERT INTO `oc_dependent_option_value` VALUES(60, 13, 11, 50, 47, 86, 82);
INSERT INTO `oc_dependent_option_value` VALUES(60, 13, 11, 53, 47, 85, 82);
INSERT INTO `oc_dependent_option_value` VALUES(60, 13, 11, 53, 46, 85, 83);
INSERT INTO `oc_dependent_option_value` VALUES(60, 13, 11, 52, 46, 80, 83);

-- --------------------------------------------------------

--
-- Table structure for table `oc_doku_transaction`
--

CREATE TABLE `oc_doku_transaction` (
  `id` int(11) NOT NULL auto_increment,
  `transaction_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `oc_doku_transaction`
--

INSERT INTO `oc_doku_transaction` VALUES(1, 1375254073, 733063684, '2013-07-31 12:31:13', '2013-07-31 12:31:13');
INSERT INTO `oc_doku_transaction` VALUES(2, 1375254073, 114736514, '2013-07-31 12:31:13', '2013-07-31 12:31:13');
INSERT INTO `oc_doku_transaction` VALUES(3, 1375254516, 956529302, '2013-07-31 12:38:36', '2013-07-31 12:38:36');
INSERT INTO `oc_doku_transaction` VALUES(4, 1375254859, 466925650, '2013-07-31 12:44:19', '2013-07-31 12:44:19');
INSERT INTO `oc_doku_transaction` VALUES(5, 1375254957, 280509759, '2013-07-31 12:45:57', '2013-07-31 12:45:57');
INSERT INTO `oc_doku_transaction` VALUES(6, 1375254973, 921996235, '2013-07-31 12:46:13', '2013-07-31 12:46:13');
INSERT INTO `oc_doku_transaction` VALUES(7, 1375255268, 133337966, '2013-07-31 12:51:08', '2013-07-31 12:51:08');
INSERT INTO `oc_doku_transaction` VALUES(8, 1375255547, 700404494, '2013-07-31 12:55:47', '2013-07-31 12:55:47');
INSERT INTO `oc_doku_transaction` VALUES(9, 1375256780, 489666742, '2013-07-31 13:16:20', '2013-07-31 13:16:20');
INSERT INTO `oc_doku_transaction` VALUES(10, 1376907987, 27830313, '2013-08-19 15:56:27', '2013-08-19 15:56:27');
INSERT INTO `oc_doku_transaction` VALUES(11, 1376908142, 921716748, '2013-08-19 15:59:02', '2013-08-19 15:59:02');
INSERT INTO `oc_doku_transaction` VALUES(12, 1377068758, 770386932, '2013-08-21 12:35:58', '2013-08-21 12:35:58');
INSERT INTO `oc_doku_transaction` VALUES(13, 1377073026, 296327424, '2013-08-21 13:47:07', '2013-08-21 13:47:07');
INSERT INTO `oc_doku_transaction` VALUES(14, 1377074015, 105394872, '2013-08-21 14:03:36', '2013-08-21 14:03:36');
INSERT INTO `oc_doku_transaction` VALUES(15, 1377075210, 195368921, '2013-08-21 14:23:30', '2013-08-21 14:23:30');
INSERT INTO `oc_doku_transaction` VALUES(16, 1377077153, 784914250, '2013-08-21 14:55:53', '2013-08-21 14:55:53');
INSERT INTO `oc_doku_transaction` VALUES(17, 1377079022, 155382782, '2013-08-21 15:27:02', '2013-08-21 15:27:02');
INSERT INTO `oc_doku_transaction` VALUES(18, 1377163009, 355044162, '2013-08-22 14:46:50', '2013-08-22 14:46:50');
INSERT INTO `oc_doku_transaction` VALUES(19, 1377165798, 515490112, '2013-08-22 15:33:18', '2013-08-22 15:33:18');
INSERT INTO `oc_doku_transaction` VALUES(20, 1377166005, 52712899, '2013-08-22 15:36:45', '2013-08-22 15:36:45');
INSERT INTO `oc_doku_transaction` VALUES(21, 1377167758, 693279392, '2013-08-22 16:05:58', '2013-08-22 16:05:58');
INSERT INTO `oc_doku_transaction` VALUES(22, 1377246375, 734666243, '2013-08-23 13:56:16', '2013-08-23 13:56:16');
INSERT INTO `oc_doku_transaction` VALUES(23, 1377662867, 197468075, '2013-08-28 09:37:47', '2013-08-28 09:37:47');
INSERT INTO `oc_doku_transaction` VALUES(24, 1378192066, 512142572, '2013-09-03 12:37:47', '2013-09-03 12:37:47');
INSERT INTO `oc_doku_transaction` VALUES(25, 1378196302, 116598667, '2013-09-03 13:48:23', '2013-09-03 13:48:23');
INSERT INTO `oc_doku_transaction` VALUES(26, 1378219650, 51462590, '2013-09-03 20:17:34', '2013-09-03 20:17:34');
INSERT INTO `oc_doku_transaction` VALUES(27, 1378219657, 204217338, '2013-09-03 20:17:37', '2013-09-03 20:17:37');
INSERT INTO `oc_doku_transaction` VALUES(28, 1378219680, 810851330, '2013-09-03 20:18:00', '2013-09-03 20:18:00');
INSERT INTO `oc_doku_transaction` VALUES(29, 1379482067, 241631894, '2013-09-18 10:57:48', '2013-09-18 10:57:48');
INSERT INTO `oc_doku_transaction` VALUES(30, 1379777618, 112833044, '2013-09-21 21:03:42', '2013-09-21 21:03:42');
INSERT INTO `oc_doku_transaction` VALUES(31, 1379777685, 525586252, '2013-09-21 21:04:45', '2013-09-21 21:04:45');
INSERT INTO `oc_doku_transaction` VALUES(32, 1379777690, 72172355, '2013-09-21 21:04:50', '2013-09-21 21:04:50');
INSERT INTO `oc_doku_transaction` VALUES(33, 1380017196, 561648561, '2013-09-24 15:36:37', '2013-09-24 15:36:37');
INSERT INTO `oc_doku_transaction` VALUES(34, 1380035614, 680520522, '2013-09-24 20:43:36', '2013-09-24 20:43:36');
INSERT INTO `oc_doku_transaction` VALUES(35, 1380282956, 688125180, '2013-09-27 17:25:57', '2013-09-27 17:25:57');
INSERT INTO `oc_doku_transaction` VALUES(36, 1380543477, 683914716, '2013-09-30 17:47:57', '2013-09-30 17:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL auto_increment,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_download`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY  (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_download_description`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL auto_increment,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY  (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=431 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` VALUES(23, 'payment', 'cod');
INSERT INTO `oc_extension` VALUES(22, 'total', 'shipping');
INSERT INTO `oc_extension` VALUES(57, 'total', 'sub_total');
INSERT INTO `oc_extension` VALUES(58, 'total', 'tax');
INSERT INTO `oc_extension` VALUES(59, 'total', 'total');
INSERT INTO `oc_extension` VALUES(410, 'module', 'banner');
INSERT INTO `oc_extension` VALUES(426, 'module', 'carousel');
INSERT INTO `oc_extension` VALUES(390, 'total', 'credit');
INSERT INTO `oc_extension` VALUES(387, 'shipping', 'flat');
INSERT INTO `oc_extension` VALUES(349, 'total', 'handling');
INSERT INTO `oc_extension` VALUES(350, 'total', 'low_order_fee');
INSERT INTO `oc_extension` VALUES(389, 'total', 'coupon');
INSERT INTO `oc_extension` VALUES(413, 'module', 'category');
INSERT INTO `oc_extension` VALUES(411, 'module', 'affiliate');
INSERT INTO `oc_extension` VALUES(408, 'module', 'account');
INSERT INTO `oc_extension` VALUES(393, 'total', 'reward');
INSERT INTO `oc_extension` VALUES(398, 'total', 'voucher');
INSERT INTO `oc_extension` VALUES(407, 'payment', 'free_checkout');
INSERT INTO `oc_extension` VALUES(427, 'module', 'featured');
INSERT INTO `oc_extension` VALUES(419, 'module', 'slideshow');
INSERT INTO `oc_extension` VALUES(428, 'payment', 'pp_pro');
INSERT INTO `oc_extension` VALUES(429, 'payment', 'myshortcart');
INSERT INTO `oc_extension` VALUES(430, 'payment', 'bank_transfer');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL auto_increment,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`filter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` VALUES(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY  (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` VALUES(1, 1, 1, 'age');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL auto_increment,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`filter_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` VALUES(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY  (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` VALUES(1, 1, 'age');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` VALUES(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25');
INSERT INTO `oc_geo_zone` VALUES(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL auto_increment,
  `bottom` int(1) NOT NULL default '0',
  `sort_order` int(3) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` VALUES(3, 1, 5, 1);
INSERT INTO `oc_information` VALUES(4, 1, 1, 1);
INSERT INTO `oc_information` VALUES(5, 1, 6, 1);
INSERT INTO `oc_information` VALUES(6, 1, 4, 1);
INSERT INTO `oc_information` VALUES(7, 1, 3, 1);
INSERT INTO `oc_information` VALUES(8, 1, 7, 1);
INSERT INTO `oc_information` VALUES(9, 1, 8, 1);
INSERT INTO `oc_information` VALUES(10, 1, 9, 1);
INSERT INTO `oc_information` VALUES(11, 1, 3, 1);
INSERT INTO `oc_information` VALUES(14, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY  (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` VALUES(3, 1, 'TERMS OF USE', '&lt;p&gt;If you think your product is unique enough to be displayed on Giftlane Co. we would be very glad if you could let us know!&lt;/p&gt;\r\n\r\n&lt;p&gt;Send us your product overview to&lt;br /&gt;\r\nfelicia@giftlane.co&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` VALUES(9, 1, 'CONTACT US', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` VALUES(8, 1, 'FAQ', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` VALUES(7, 1, 'JOIN OUR TEAM', '&lt;p&gt;Giftlane Co. is not a monotone, boring and rigid kind of workplace that push you to stick with one conservative rules. Our team will offer you the entirely new working experience where you are allowed to express your fun and creative idea to us. Yet Giftlane Co. highly appreciate people with high integrity, intelligence and energy.&lt;/p&gt;\r\n\r\n&lt;p&gt;If you feel like you have all of the above, please tell us about yourself by sending you resume to felicia@giftlane.co&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` VALUES(6, 1, 'PARTNERS', '&lt;p&gt;If you think your product is unique enough to be displayed on Giftlane Co. we would be very glad if you could let us know!&lt;/p&gt;\r\n\r\n&lt;p&gt;Send us your product overview to&lt;br /&gt;\r\nfelicia@giftlane.co&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` VALUES(5, 1, 'PRIVACY POLICY', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` VALUES(14, 1, 'HOW TO ORDER', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` VALUES(10, 1, 'TERMS &amp; CONDITIONS', '&lt;p&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` VALUES(4, 1, 'ABOUT US', '&lt;p&gt;Giftlane Co. was established in mid 2013 by a young couple who was working as consultants but have a heavy passion to be entrepreneurs. Many people often find it hard to get a perfect gift for a certain event and given it to their special ones. This has inspired us to create Giftlane Co.&lt;/p&gt;\r\n\r\n&lt;p&gt;We came up with the core concept of an online gift shop, a gift shop that is unusual yet helpful, unique but user-friendly, a gift shop that will satisfy the needs of people from all ages. Giftlane Co. offers one-stop-online gift shop or in shorter terms, we sell, we wrap and we deliver. We also provide a suggestion of gift through our uniquely designed personalization feature where people can get a recommended selections based on the recipient''s personality.&lt;/p&gt;\r\n\r\n&lt;p&gt;Our mission is to be the largest online gift store in Indonesia with the most complete gift product and service. Above all that, trust and reliance are our most fundamental factors in doing business.&lt;/p&gt;\r\n');
INSERT INTO `oc_information_description` VALUES(11, 1, 'HOW IT WORKS', '&lt;p&gt;If you think your product is unique enough to be displayed on Giftlane Co. we would be very glad if you could let us know!&lt;/p&gt;\r\n\r\n&lt;p&gt;Send us your product overview to&lt;br /&gt;\r\nfelicia@giftlane.co&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY  (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` VALUES(14, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY  (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` VALUES(3, 0);
INSERT INTO `oc_information_to_store` VALUES(4, 0);
INSERT INTO `oc_information_to_store` VALUES(5, 0);
INSERT INTO `oc_information_to_store` VALUES(6, 0);
INSERT INTO `oc_information_to_store` VALUES(7, 0);
INSERT INTO `oc_information_to_store` VALUES(8, 0);
INSERT INTO `oc_information_to_store` VALUES(9, 0);
INSERT INTO `oc_information_to_store` VALUES(10, 0);
INSERT INTO `oc_information_to_store` VALUES(11, 0);
INSERT INTO `oc_information_to_store` VALUES(14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL default '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` VALUES(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY  (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` VALUES(1, 'Home');
INSERT INTO `oc_layout` VALUES(2, 'Product');
INSERT INTO `oc_layout` VALUES(3, 'Category');
INSERT INTO `oc_layout` VALUES(4, 'Default');
INSERT INTO `oc_layout` VALUES(5, 'Manufacturer');
INSERT INTO `oc_layout` VALUES(6, 'Account');
INSERT INTO `oc_layout` VALUES(7, 'Checkout');
INSERT INTO `oc_layout` VALUES(8, 'Contact');
INSERT INTO `oc_layout` VALUES(9, 'Sitemap');
INSERT INTO `oc_layout` VALUES(10, 'Affiliate');
INSERT INTO `oc_layout` VALUES(11, 'Information');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL auto_increment,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY  (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` VALUES(30, 6, 0, 'account');
INSERT INTO `oc_layout_route` VALUES(17, 10, 0, 'affiliate/');
INSERT INTO `oc_layout_route` VALUES(29, 3, 0, 'product/category');
INSERT INTO `oc_layout_route` VALUES(26, 1, 0, 'common/home');
INSERT INTO `oc_layout_route` VALUES(20, 2, 0, 'product/product');
INSERT INTO `oc_layout_route` VALUES(24, 11, 0, 'information/information');
INSERT INTO `oc_layout_route` VALUES(22, 5, 0, 'product/manufacturer');
INSERT INTO `oc_layout_route` VALUES(23, 7, 0, 'checkout/');
INSERT INTO `oc_layout_route` VALUES(31, 8, 0, 'information/contact');
INSERT INTO `oc_layout_route` VALUES(32, 9, 0, 'information/sitemap');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL auto_increment,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY  (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` VALUES(1, 1.00000000);
INSERT INTO `oc_length_class` VALUES(2, 10.00000000);
INSERT INTO `oc_length_class` VALUES(3, 0.39370000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY  (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` VALUES(1, 1, 'Centimeter', 'cm');
INSERT INTO `oc_length_class_description` VALUES(2, 1, 'Millimeter', 'mm');
INSERT INTO `oc_length_class_description` VALUES(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) default NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` VALUES(5, 'HTC', 'data/demo/htc_logo.jpg', 0);
INSERT INTO `oc_manufacturer` VALUES(6, 'Palm', 'data/demo/palm_logo.jpg', 0);
INSERT INTO `oc_manufacturer` VALUES(7, 'Hewlett-Packard', 'data/demo/hp_logo.jpg', 0);
INSERT INTO `oc_manufacturer` VALUES(8, 'Apple', 'data/demo/apple_logo.jpg', 0);
INSERT INTO `oc_manufacturer` VALUES(9, 'Canon', 'data/demo/canon_logo.jpg', 0);
INSERT INTO `oc_manufacturer` VALUES(10, 'Sony', 'data/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY  (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` VALUES(5, 0);
INSERT INTO `oc_manufacturer_to_store` VALUES(6, 0);
INSERT INTO `oc_manufacturer_to_store` VALUES(7, 0);
INSERT INTO `oc_manufacturer_to_store` VALUES(8, 0);
INSERT INTO `oc_manufacturer_to_store` VALUES(9, 0);
INSERT INTO `oc_manufacturer_to_store` VALUES(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_myshortcart`
--

CREATE TABLE `oc_myshortcart` (
  `msc_id` int(11) NOT NULL auto_increment,
  `transidmerchant` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `start_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `finish_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `status_code` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `transdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `ptype` varchar(20) collate utf8_unicode_ci NOT NULL default '',
  `amount` decimal(20,0) NOT NULL default '0',
  `result_trx` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `extrainfo` varchar(250) collate utf8_unicode_ci NOT NULL default '',
  `msc_order_id` varchar(125) collate utf8_unicode_ci NOT NULL default '0',
  `status_fail` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  `result_fail` varchar(250) collate utf8_unicode_ci NOT NULL default '',
  `session_id` varchar(50) collate utf8_unicode_ci NOT NULL default '',
  PRIMARY KEY  (`msc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_myshortcart`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_newsletter`
--

CREATE TABLE `oc_newsletter` (
  `newsletter_id` int(11) NOT NULL auto_increment,
  `email` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY  (`newsletter_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `oc_newsletter`
--

INSERT INTO `oc_newsletter` VALUES(1, 'gauravsunilpatil@yahoo.com', '2013-06-04 18:16:39');
INSERT INTO `oc_newsletter` VALUES(2, 'test@test.com', '2013-06-12 12:15:38');
INSERT INTO `oc_newsletter` VALUES(3, 'eluminous_tl5@eluminoustechnologies.com', '2013-07-17 13:11:46');
INSERT INTO `oc_newsletter` VALUES(4, 'eluminous_tl5@eluminoustechnologies.com', '2013-07-17 13:11:59');
INSERT INTO `oc_newsletter` VALUES(6, 'eluminous_sse22@eluminoustechnologies.com', '2013-07-17 13:17:09');
INSERT INTO `oc_newsletter` VALUES(7, 'test@eluminoustechnologies.com', '2013-07-18 04:42:37');
INSERT INTO `oc_newsletter` VALUES(8, 'dian@gmail.com', '2013-07-19 07:41:25');
INSERT INTO `oc_newsletter` VALUES(9, 'elvinaevania@gmail.com', '2013-09-03 14:01:32');
INSERT INTO `oc_newsletter` VALUES(10, 'elvinaevania@gmail.com', '2013-09-03 14:01:35');
INSERT INTO `oc_newsletter` VALUES(11, 'elvinaevania@gmail.com', '2013-09-03 14:01:38');
INSERT INTO `oc_newsletter` VALUES(12, 'test@gmail.com', '2013-09-23 06:22:29');
INSERT INTO `oc_newsletter` VALUES(13, 'test@gmail.com', '2013-09-23 06:22:40');
INSERT INTO `oc_newsletter` VALUES(14, 'feliciadarmaja@yahoo.com', '2013-09-23 06:34:21');
INSERT INTO `oc_newsletter` VALUES(15, 'feliciadarmaja@yahoo.com', '2013-09-23 06:34:25');
INSERT INTO `oc_newsletter` VALUES(16, 'feliciadarmaja@yahoo.com', '2013-09-23 06:34:53');
INSERT INTO `oc_newsletter` VALUES(17, 'sa@eluminous.com', '2013-09-25 09:27:21');
INSERT INTO `oc_newsletter` VALUES(18, 'alvin_kusuma89@yahoo.com', '2013-09-27 05:59:47');
INSERT INTO `oc_newsletter` VALUES(19, 'vlee_peace@hotmail.com', '2013-09-27 06:30:18');
INSERT INTO `oc_newsletter` VALUES(37, 'sandeepnisal@gmail.com', '2013-09-30 09:53:40');
INSERT INTO `oc_newsletter` VALUES(38, 'andy@pixaal.com', '2013-10-04 03:07:08');
INSERT INTO `oc_newsletter` VALUES(39, 'yediael@pixaal.com', '2013-10-04 03:07:28');
INSERT INTO `oc_newsletter` VALUES(40, 'kencanaandy@yahoo.com', '2013-10-04 03:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL auto_increment,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`option_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` VALUES(2, 'checkbox', 3);
INSERT INTO `oc_option` VALUES(4, 'text', 4);
INSERT INTO `oc_option` VALUES(5, 'select', 1);
INSERT INTO `oc_option` VALUES(6, 'textarea', 5);
INSERT INTO `oc_option` VALUES(7, 'file', 6);
INSERT INTO `oc_option` VALUES(8, 'date', 7);
INSERT INTO `oc_option` VALUES(9, 'time', 8);
INSERT INTO `oc_option` VALUES(10, 'datetime', 9);
INSERT INTO `oc_option` VALUES(11, 'select', 1);
INSERT INTO `oc_option` VALUES(12, 'date', 1);
INSERT INTO `oc_option` VALUES(13, 'select', 1);
INSERT INTO `oc_option` VALUES(14, 'select', 3);
INSERT INTO `oc_option` VALUES(15, 'size', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_category`
--

CREATE TABLE `oc_option_category` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `type` enum('color','size') NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Options cate used for Color and Size' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `oc_option_category`
--

INSERT INTO `oc_option_category` VALUES(1, 'Small', 'small', 'size', 'active');
INSERT INTO `oc_option_category` VALUES(2, 'Yellow', 'yellow', 'color', 'active');
INSERT INTO `oc_option_category` VALUES(3, 'Red', 'Red', 'color', 'active');
INSERT INTO `oc_option_category` VALUES(5, 'Orange', 'orange', 'color', 'active');
INSERT INTO `oc_option_category` VALUES(6, 'Blue', 'blue', 'color', 'active');
INSERT INTO `oc_option_category` VALUES(7, 'White', 'white', 'color', 'active');
INSERT INTO `oc_option_category` VALUES(8, 'Medium', 'medium', 'size', 'active');
INSERT INTO `oc_option_category` VALUES(9, 'Large', 'large', 'size', 'active');
INSERT INTO `oc_option_category` VALUES(10, 'XL', 'xl', 'size', 'active');
INSERT INTO `oc_option_category` VALUES(11, 'XXL', 'xxl', 'size', 'active');
INSERT INTO `oc_option_category` VALUES(12, 'Beige', 'beige', 'color', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY  (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` VALUES(2, 1, 'Checkbox');
INSERT INTO `oc_option_description` VALUES(4, 1, 'Text');
INSERT INTO `oc_option_description` VALUES(6, 1, 'Textarea');
INSERT INTO `oc_option_description` VALUES(8, 1, 'Date');
INSERT INTO `oc_option_description` VALUES(7, 1, 'File');
INSERT INTO `oc_option_description` VALUES(5, 1, 'Select');
INSERT INTO `oc_option_description` VALUES(9, 1, 'Time');
INSERT INTO `oc_option_description` VALUES(10, 1, 'Date &amp; Time');
INSERT INTO `oc_option_description` VALUES(12, 1, 'Delivery Date');
INSERT INTO `oc_option_description` VALUES(11, 1, 'size');
INSERT INTO `oc_option_description` VALUES(13, 1, 'color');
INSERT INTO `oc_option_description` VALUES(14, 1, 'Quantity');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL auto_increment,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` VALUES(45, 2, '', 4);
INSERT INTO `oc_option_value` VALUES(44, 2, '', 3);
INSERT INTO `oc_option_value` VALUES(42, 5, '', 4);
INSERT INTO `oc_option_value` VALUES(41, 5, '', 3);
INSERT INTO `oc_option_value` VALUES(39, 5, '', 1);
INSERT INTO `oc_option_value` VALUES(40, 5, '', 2);
INSERT INTO `oc_option_value` VALUES(23, 2, '', 1);
INSERT INTO `oc_option_value` VALUES(24, 2, '', 2);
INSERT INTO `oc_option_value` VALUES(48, 11, 'no_image.jpg', 3);
INSERT INTO `oc_option_value` VALUES(47, 11, 'no_image.jpg', 2);
INSERT INTO `oc_option_value` VALUES(46, 11, 'no_image.jpg', 1);
INSERT INTO `oc_option_value` VALUES(49, 13, '', 0);
INSERT INTO `oc_option_value` VALUES(50, 13, '', 0);
INSERT INTO `oc_option_value` VALUES(51, 13, '', 0);
INSERT INTO `oc_option_value` VALUES(52, 13, '', 0);
INSERT INTO `oc_option_value` VALUES(53, 13, '', 0);
INSERT INTO `oc_option_value` VALUES(56, 14, '', 0);
INSERT INTO `oc_option_value` VALUES(55, 14, 'no_image.jpg', 0);
INSERT INTO `oc_option_value` VALUES(57, 14, '', 0);
INSERT INTO `oc_option_value` VALUES(58, 14, '', 0);
INSERT INTO `oc_option_value` VALUES(59, 14, '', 0);
INSERT INTO `oc_option_value` VALUES(60, 14, '', 0);
INSERT INTO `oc_option_value` VALUES(61, 14, '', 0);
INSERT INTO `oc_option_value` VALUES(62, 14, '', 0);
INSERT INTO `oc_option_value` VALUES(63, 14, '', 0);
INSERT INTO `oc_option_value` VALUES(64, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY  (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` VALUES(45, 1, 2, 'Checkbox 4');
INSERT INTO `oc_option_value_description` VALUES(44, 1, 2, 'Checkbox 3');
INSERT INTO `oc_option_value_description` VALUES(42, 1, 5, 'Yellow');
INSERT INTO `oc_option_value_description` VALUES(41, 1, 5, 'Green');
INSERT INTO `oc_option_value_description` VALUES(39, 1, 5, 'Red');
INSERT INTO `oc_option_value_description` VALUES(40, 1, 5, 'Blue');
INSERT INTO `oc_option_value_description` VALUES(23, 1, 2, 'Checkbox 1');
INSERT INTO `oc_option_value_description` VALUES(24, 1, 2, 'Checkbox 2');
INSERT INTO `oc_option_value_description` VALUES(48, 1, 11, 'L');
INSERT INTO `oc_option_value_description` VALUES(47, 1, 11, 'M');
INSERT INTO `oc_option_value_description` VALUES(46, 1, 11, 'S');
INSERT INTO `oc_option_value_description` VALUES(49, 1, 13, 'red');
INSERT INTO `oc_option_value_description` VALUES(50, 1, 13, 'white');
INSERT INTO `oc_option_value_description` VALUES(51, 1, 13, 'yellow');
INSERT INTO `oc_option_value_description` VALUES(52, 1, 13, 'green');
INSERT INTO `oc_option_value_description` VALUES(53, 1, 13, 'purple');
INSERT INTO `oc_option_value_description` VALUES(56, 1, 14, '2');
INSERT INTO `oc_option_value_description` VALUES(55, 1, 14, '1');
INSERT INTO `oc_option_value_description` VALUES(57, 1, 14, '3');
INSERT INTO `oc_option_value_description` VALUES(58, 1, 14, '4');
INSERT INTO `oc_option_value_description` VALUES(59, 1, 14, '5');
INSERT INTO `oc_option_value_description` VALUES(60, 1, 14, '6');
INSERT INTO `oc_option_value_description` VALUES(61, 1, 14, '7');
INSERT INTO `oc_option_value_description` VALUES(62, 1, 14, '8');
INSERT INTO `oc_option_value_description` VALUES(63, 1, 14, '9');
INSERT INTO `oc_option_value_description` VALUES(64, 1, 14, '10');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL default '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL default '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL default '0',
  `customer_group_id` int(11) NOT NULL default '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL default '0.0000',
  `order_status_id` int(11) NOT NULL default '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL default '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `no_resi` varchar(30) default NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` VALUES(1, 1, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '', '', 'Sandeep', 'Nisal', '', '', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', '', 0, 'Aceh', 1507, '', 'Cash On Delivery', '0', 'Sandeep', 'Nisal', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', '', 0, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 155.0000, 5, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.116 Safari/537.36', 'en-US,en;q=0.8', '2013-07-12 12:52:45', '2013-07-15 12:15:13', NULL);
INSERT INTO `oc_order` VALUES(2, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '13455', '', 'test', 'test', '', '', '', 'test', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 50.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Opera/9.80 (Android 4.0.4; Linux; Opera Mobi/ADR-1301080958) Presto/2.11.355 Version/12.10', 'en', '2013-07-17 16:14:22', '2013-07-17 16:14:23', NULL);
INSERT INTO `oc_order` VALUES(3, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 4, 1, 'Mayur', 'Sharma', 'eluminous_tl5@eluminoustechnologies.com', 'aa', '', 'Mayur', 'Sharma', '', '', '', 'sadf', 'fsffssddf', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', '0', 'Mayur', 'Sharma', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 100.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-17 17:31:08', '2013-07-17 17:31:08', NULL);
INSERT INTO `oc_order` VALUES(4, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 4, 1, 'Mayur', 'Sharma', 'eluminous_tl5@eluminoustechnologies.com', 'aa', '', 'Mayur', 'Sharma', '', '', '', 'sadf', 'fsffssddf', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', '0', 'Mayur', 'Sharma', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 100.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-17 17:31:43', '2013-07-17 17:31:43', NULL);
INSERT INTO `oc_order` VALUES(5, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '123', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', '', 100, '', 1507, '', 'Transfer Bank CIMB Niaga', '0', 'Gaurav', 'patil', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', 'test', 1000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-17 17:57:36', '2013-07-17 17:57:36', NULL);
INSERT INTO `oc_order` VALUES(6, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '123', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', '', 100, '', 1507, '', 'Transfer Bank CIMB Niaga', '0', 'Gaurav', 'patil', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', 'test', 1000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-17 17:59:48', '2013-07-17 17:59:48', NULL);
INSERT INTO `oc_order` VALUES(7, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '123', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', '', 100, '', 1507, '', 'Transfer Bank CIMB Niaga', '0', 'Gaurav', 'patil', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', 'test', 1000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-17 18:00:36', '2013-07-17 18:00:36', NULL);
INSERT INTO `oc_order` VALUES(8, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '123', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', '', 100, '', 1507, '', 'Transfer Bank CIMB Niaga', '0', 'Gaurav', 'patil', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', 'test', 1000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-17 18:02:18', '2013-07-17 18:02:18', NULL);
INSERT INTO `oc_order` VALUES(9, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 4, 1, 'Mayur', 'Sharma', 'eluminous_tl5@eluminoustechnologies.com', '1523', '', 'Mayur', 'Sharma', '', '', '', 'adsad', 'qadaa', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', '0', 'Mayur', 'Sharma', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', 'sasdasdada', 10.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-17 18:06:10', '2013-07-17 18:06:10', NULL);
INSERT INTO `oc_order` VALUES(10, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 4, 1, 'Mayur', 'Sharma', 'eluminous_tl5@eluminoustechnologies.com', '0adsdada', '', 'Mayur', 'Sharma', '', '', '', 'dasddad', 'dasda', '', '', '', 1, '', 1, '', 'Transfer Bank BCA', '0', 'Test', 'test', '', 'tsts', '', 'dsfss', 'fsdfsdfs', 'Afghanistan', 1, 'Badghis', 2, '', 'Flat Shipping Rate', 'flat.flat', 'adadss', 75.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-17 18:13:30', '2013-07-17 18:13:30', NULL);
INSERT INTO `oc_order` VALUES(11, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '1234', '', 'Gaurav', 'patil', '', '', '', 'test', '', '', '', '', 100, '', 1507, '', 'Transfer Bank CIMB Niaga', '0', 'test', 'tes', '', 'test', '', 'Langsa', '123', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', 'Test Messga', 55.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-17 19:19:35', '2013-07-17 19:19:35', NULL);
INSERT INTO `oc_order` VALUES(12, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '0', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 150.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-18 14:20:19', '2013-07-18 14:20:19', NULL);
INSERT INTO `oc_order` VALUES(13, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 6, 1, 'Elufname', 'Elulname', 'eluminous_developer2@eluminoustechnologies.com', '0', '', 'Elufname', 'Elulname', '', '', '', 'adsad', 'dasda', '', '', '', 3, '', 69, '', 'Transfer Bank BCA', '0', 'Elufname', 'Elulname', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', 'adads', 10.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-18 18:05:11', '2013-07-18 18:05:12', NULL);
INSERT INTO `oc_order` VALUES(14, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 6, 1, 'Elufname', 'Elulname', 'eluminous_developer2@eluminoustechnologies.com', '0', '', 'Elufname', 'Elulname', '', '', '', 'qwertt', 'qwertt', '', '', '', 99, '', 1493, '', 'Transfer Bank BCA', '0', 'Elufname', 'Elulname', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 100.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-18 18:25:31', '2013-07-18 18:25:31', NULL);
INSERT INTO `oc_order` VALUES(15, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '0', '', 'Sandeep', 'Nisal', '', '', '', 'Jail Road,Nashik Road', 'Nashik', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank CIMB Niaga', '0', 'Gaurav', 'Patil', '', 'Indira Nagar', 'Nashik', 'dubai', '5241141545', 'Albania', 2, 'Bulqize', 34, '', 'Flat Shipping Rate', 'flat.flat', 'hjgh jghjghjghjhgjhgjhgjhgjghjhgfjhgjghjhgjhgjhgjhgj hgjhgjhg jhgjhgjhg', 10.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:21.0) Gecko/20100101 Firefox/21.0', 'en-US,en;q=0.5', '2013-07-19 12:41:44', '2013-07-19 12:41:44', NULL);
INSERT INTO `oc_order` VALUES(16, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'Patil', '', 'Indira Nagar', 'Nashik', 'dubai', '5241141545', 'Albania', 2, 'Bulqize', 34, '', 'Flat Shipping Rate', 'flat.flat', '', 599.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-24 10:34:47', '2013-07-24 10:34:47', NULL);
INSERT INTO `oc_order` VALUES(17, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 13, 1, 'Sandeep', 'Aher', 'sanaher2000@yahoo.com', '0', '', 'Sandeep', 'Aher', '', '', '', 'College road', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 599.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-07-24 16:45:38', '2013-07-24 16:45:38', NULL);
INSERT INTO `oc_order` VALUES(18, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '0', '', 'Gaurav', 'patil', '', '', '', 'rtestas', '', '', '', '', 2, '', 33, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 30.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-25 20:17:30', '2013-07-25 20:17:30', NULL);
INSERT INTO `oc_order` VALUES(19, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Sandeep', 'patil', '', 'Nashik', 'Nashik', 'nashik', '232323', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 140.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-26 10:00:16', '2013-07-26 10:00:16', NULL);
INSERT INTO `oc_order` VALUES(20, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'Patil', '', 'Indira Nagar', 'Nashik', 'dubai', '5241141545', 'Albania', 2, 'Bulqize', 34, '', 'Flat Shipping Rate', 'flat.flat', '', 60.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-26 15:31:51', '2013-07-26 15:31:51', NULL);
INSERT INTO `oc_order` VALUES(21, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank CIMB Niaga', '0', 'Gaurav', 'Patil', '', 'Indira Nagar', 'Nashik', 'dubai', '5241141545', 'Albania', 2, 'Bulqize', 34, '', 'Flat Shipping Rate', 'flat.flat', '', 10.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-26 15:56:14', '2013-07-26 15:56:14', NULL);
INSERT INTO `oc_order` VALUES(0, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '0', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', '', 99, '', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 2500.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-26 16:27:09', '2013-07-26 16:27:09', NULL);
INSERT INTO `oc_order` VALUES(853944560, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '0', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', '', 99, '', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 10000.0000, 7, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-26 16:31:37', '2013-07-30 11:26:46', NULL);
INSERT INTO `oc_order` VALUES(803147813, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'Patil', '', 'Indira Nagar', 'Nashik', 'dubai', '5241141545', 'Albania', 2, 'Bulqize', 34, '', 'Flat Shipping Rate', 'flat.flat', '', 20.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-29 09:45:18', '2013-07-29 09:45:18', NULL);
INSERT INTO `oc_order` VALUES(379065580, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'Patil', '', 'Indira Nagar', 'Nashik', 'dubai', '5241141545', 'Albania', 2, 'Bulqize', 34, '', 'Flat Shipping Rate', 'flat.flat', '', 95.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-29 10:26:27', '2013-07-29 10:26:27', NULL);
INSERT INTO `oc_order` VALUES(992437411, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 14, 1, 'Deepak', 'Kadam', 'deepak_kadam@eluminoustechnologies.com', '0', '', 'Deepak', 'Kadam', '', '', '', 'B-2, Sanmitra aprtment, College Road', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Deepak', 'Kadam', '', 'B-2, Sanmitra aprtment, College Road', '', 'Nashik', '422005', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 30.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0', 'en-US,en;q=0.5', '2013-07-29 14:39:34', '2013-07-29 14:39:34', NULL);
INSERT INTO `oc_order` VALUES(687697201, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 14, 1, 'Deepak', 'Kadam', 'deepak_kadam@eluminoustechnologies.com', '0', '', 'Deepak', 'Kadam', '', '', '', 'B-2, Sanmitra aprtment, College Road', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank CIMB Niaga', '0', 'Deepak', 'Kadam', '', 'B-2, Sanmitra aprtment, College Road', '', 'Nashik', '422005', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 75.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0', 'en-US,en;q=0.5', '2013-07-29 14:44:29', '2013-07-29 14:44:29', NULL);
INSERT INTO `oc_order` VALUES(66740059, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 1929.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-30 19:31:12', '2013-07-30 19:31:12', NULL);
INSERT INTO `oc_order` VALUES(554664240, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'test', 'test', '', 'test', 'test', 'Langsa', '12334', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 75.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-30 19:31:12', '2013-07-30 19:31:12', NULL);
INSERT INTO `oc_order` VALUES(305076579, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 420.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-30 19:38:34', '2013-07-30 19:38:34', NULL);
INSERT INTO `oc_order` VALUES(100572830, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'test', 'test', '', 'test', 'test', 'Langsa', '12334', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 0.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-30 19:38:34', '2013-07-30 19:38:34', NULL);
INSERT INTO `oc_order` VALUES(322563865, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'test', 'test', '', 'test', 'test', 'Langsa', '12334', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 0.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-30 19:42:51', '2013-07-30 19:42:51', NULL);
INSERT INTO `oc_order` VALUES(843188137, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 130.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-30 19:42:51', '2013-07-30 19:42:51', NULL);
INSERT INTO `oc_order` VALUES(733063684, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'test', 'test', '', 'test', 'test', 'Langsa', '12334', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 0.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 12:31:13', '2013-07-31 12:31:13', NULL);
INSERT INTO `oc_order` VALUES(114736514, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 5325.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 12:31:13', '2013-07-31 12:31:13', NULL);
INSERT INTO `oc_order` VALUES(585303106, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'test', 'test', '', 'test', 'test', 'Langsa', '12334', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 0.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 12:36:25', '2013-07-31 12:36:25', NULL);
INSERT INTO `oc_order` VALUES(197468075, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 21, 1, 'Gaurav', 'Patil', 'eluminous_sse22@eluminoustechnologies.com', '123456', '', 'Gaurav', 'Patil', '', '', '', 'testa', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'doku', 'doku', 'Gaurav', 'Patil', '', 'testa', '', 'nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 650.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36', 'en-US,en;q=0.8', '2013-08-28 09:37:47', '2013-08-28 09:37:47', NULL);
INSERT INTO `oc_order` VALUES(920306331, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 5325.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 12:36:25', '2013-07-31 12:36:25', NULL);
INSERT INTO `oc_order` VALUES(976643814, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', 'test', '122321', 'Albania', 2, 'Berat', 33, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 230.0000, 7, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 12:37:24', '2013-07-31 15:13:59', NULL);
INSERT INTO `oc_order` VALUES(956529302, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 220.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-31 12:38:36', '2013-07-31 12:38:36', NULL);
INSERT INTO `oc_order` VALUES(466925650, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 12600.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-31 12:44:19', '2013-07-31 12:44:19', NULL);
INSERT INTO `oc_order` VALUES(280509759, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 12600.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-31 12:45:57', '2013-07-31 12:45:57', NULL);
INSERT INTO `oc_order` VALUES(921996235, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 12600.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-31 12:46:13', '2013-07-31 12:46:13', NULL);
INSERT INTO `oc_order` VALUES(133337966, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 12600.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-31 12:51:08', '2013-07-31 12:51:08', NULL);
INSERT INTO `oc_order` VALUES(700404494, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 12, 1, 'Andy', 'Kencana', 'andy@pixaal.com', '0', '', 'Andy', 'Kencana', '', '', '', 'Taman', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', '0', 'doku', 'test', '', 'jakarta', 'jakarta', '0', '12123', 'Indonesia', 100, 'Bali', 1508, '', 'Flat Shipping Rate', 'flat.flat', '', 599.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6; rv:22.0) Gecko/20100101 Firefox/22.0', 'id,en-us;q=0.7,en;q=0.3', '2013-07-31 12:55:47', '2013-07-31 12:55:47', NULL);
INSERT INTO `oc_order` VALUES(489666742, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 12600.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-07-31 13:16:20', '2013-07-31 13:16:20', NULL);
INSERT INTO `oc_order` VALUES(12339082, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 10100.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 14:13:51', '2013-07-31 14:13:51', NULL);
INSERT INTO `oc_order` VALUES(317809087, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 130.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 14:17:04', '2013-07-31 14:17:04', NULL);
INSERT INTO `oc_order` VALUES(564897504, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 130.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 14:18:13', '2013-07-31 14:18:13', NULL);
INSERT INTO `oc_order` VALUES(284882521, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 130.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 14:19:03', '2013-07-31 14:19:03', NULL);
INSERT INTO `oc_order` VALUES(237064491, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 130.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 14:19:34', '2013-07-31 14:19:34', NULL);
INSERT INTO `oc_order` VALUES(657782982, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 130.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 14:20:36', '2013-07-31 14:20:36', NULL);
INSERT INTO `oc_order` VALUES(370537920, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 4, 1, 'Mayur', 'Sharma', 'eluminous_tl5@eluminoustechnologies.com', '0', '', 'Mayur', 'Sharma', '', '', '', 'test address', '', '', '', '', 99, '', 1493, '', 'Transfer Bank BCA', '0', 'Mayur', 'Sharma', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 75.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 14:27:45', '2013-07-31 14:27:45', NULL);
INSERT INTO `oc_order` VALUES(861419805, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 2550.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 20:35:05', '2013-07-31 20:35:05', NULL);
INSERT INTO `oc_order` VALUES(796848319, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 650.0000, 0, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 20:40:31', '2013-07-31 20:40:31', NULL);
INSERT INTO `oc_order` VALUES(612785305, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', 'test', '122321', 'Albania', 2, 'Kurbin', 46, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 650.0000, 2, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 20:40:42', '2013-07-31 20:43:59', NULL);
INSERT INTO `oc_order` VALUES(654148046, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', 'test', '122321', 'Albania', 2, 'Berat', 33, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 1400.0000, 15, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-07-31 20:45:01', '2013-07-31 20:45:44', NULL);
INSERT INTO `oc_order` VALUES(996871560, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', 'Nashik', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 2085.0000, 2, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-08-01 10:56:52', '2013-08-27 15:00:32', NULL);
INSERT INTO `oc_order` VALUES(530891362, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Nilesh', 'Gadekar', '', 'Test address', '', 'Langsa', '122321', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 0.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-08-01 15:52:09', '2013-08-01 15:52:09', NULL);
INSERT INTO `oc_order` VALUES(397687877, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 13, 1, 'Sandeep', 'Aher', 'sanaher2000@yahoo.com', '0', '', 'Sandeep', 'Aher', '', '', '', 'College road', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Sandeep', 'Aher', '', 'College road', '', 'Nasik', '422003', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 100200.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-08-01 15:57:11', '2013-08-01 15:57:11', NULL);
INSERT INTO `oc_order` VALUES(337585482, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 135270.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.72 Safari/537.36', 'en-US,en;q=0.8', '2013-08-01 16:12:03', '2013-08-01 16:12:03', NULL);
INSERT INTO `oc_order` VALUES(322686728, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 15, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '0', '', 'Gladys', 'Kho', '', '', '', 'Green Garden', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', '0', 'ABC', 'DEF', '', 'Meruya', '', 'jakarta', '11630', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 1250.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-02 08:35:04', '2013-08-02 08:35:04', NULL);
INSERT INTO `oc_order` VALUES(787989254, 3, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 15, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '0', '', 'Gladys', 'Kho', '', '', '', 'Green Garden', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', '0', 'ABC', 'DEF', '', 'Meruya', '', 'jakarta', '11630', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', 'adasdadas', 10.0000, 10, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-02 08:40:12', '2013-08-02 09:44:31', NULL);
INSERT INTO `oc_order` VALUES(221090638, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 15, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '0', '', 'Gladys', 'Kho', '', '', '', 'Green Garden', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', '0', 'Gladys', 'Kho', '', 'Green Garden', '', 'jakarta', '11520', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', 'hi', 250000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-02 09:14:07', '2013-08-02 09:14:07', NULL);
INSERT INTO `oc_order` VALUES(289439425, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 15, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '0', '', 'Gladys', 'Kho', '', '', '', 'Green Garden', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', '0', 'Gladys', 'Kho', '', 'Green Garden', '', 'jakarta', '11520', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 10000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-02 09:19:51', '2013-08-02 09:19:51', NULL);
INSERT INTO `oc_order` VALUES(72118865, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 15, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '0', '', 'Gladys', 'Kho', '', '', '', 'Green Garden', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', '0', 'Gladys', 'Kho', '', 'Green Garden', '', 'jakarta', '11520', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 1290.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-02 09:30:41', '2013-08-02 09:30:41', NULL);
INSERT INTO `oc_order` VALUES(710898599, 2, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 15, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '0', '', 'Gladys', 'Kho', '', '', '', 'Green Garden', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', '0', 'ABC', 'DEF', '', 'Meruya', '', 'jakarta', '11630', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 990.0000, 5, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-02 09:30:41', '2013-08-02 09:40:52', NULL);
INSERT INTO `oc_order` VALUES(135482351, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', 'nasik', '1234', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 97303.5000, 3, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-02 11:57:33', '2013-08-02 14:02:21', NULL);
INSERT INTO `oc_order` VALUES(190308519, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', 'test', '122321', 'India', 99, 'Maharashtra', 1493, '', 'Bank Transfer', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 1005.0000, 2, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-02 12:03:13', '2013-08-02 13:52:38', NULL);
INSERT INTO `oc_order` VALUES(44929529, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '12343243', '', 'Gaurav', 'patil', '', '', '', 'test address', '', 'nasik', '1234', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 30180.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-02 14:46:13', '2013-08-27 15:39:28', NULL);
INSERT INTO `oc_order` VALUES(385984997, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '0', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 50100.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-08-05 16:51:52', '2013-08-05 16:51:52', NULL);
INSERT INTO `oc_order` VALUES(138478641, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 3, 1, 'Gaurav', 'patil', 'eluminous_sse22@eluminoustechnologies.com', '0', '', 'Gaurav', 'patil', '', '', '', 'test address', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'patil', '', 'test address', '', 'Nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 5100.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-07 11:59:56', '2013-08-07 11:59:56', NULL);
INSERT INTO `oc_order` VALUES(443599723, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 16, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '0', '', 'Gladys', 'Kho', '', '', '', 'Green Garden', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', '0', 'ABC', 'Boooo', '', 'Meruya', '', 'jakarta', '11630', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 10115.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-13 09:58:36', '2013-08-13 09:58:36', NULL);
INSERT INTO `oc_order` VALUES(640025542, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 16, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '0', '', 'Gladys', 'Kho', '', '', '', 'Green Garden', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', '0', 'Gladys', 'Kho', '', 'Green Garden', '', 'jakarta', '11520', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 589.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-13 10:06:56', '2013-08-13 10:06:56', NULL);
INSERT INTO `oc_order` VALUES(145905119, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 16, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '0', '', 'Gladys', 'Kho', '', '', '', 'Green Garden', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', '0', 'Gladys', 'Kho', '', 'Green Garden', '', 'jakarta', '11520', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 900.0000, 11, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-13 10:14:48', '2013-08-13 11:16:14', NULL);
INSERT INTO `oc_order` VALUES(323438655, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 18, 1, 'Elufname', 'Elulname', 'eluminous_developer2@eluminoustechnologies.com', '0', '', 'Elufname', 'Elulname', '', '', '', 'test', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', '0', 'Elufname', 'Elulname', '', 'test', '', 'Banda Aceh', '411411', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 587.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-08-19 15:54:54', '2013-08-19 15:54:54', NULL);
INSERT INTO `oc_order` VALUES(27830313, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 18, 1, 'Elufname', 'Elulname', 'eluminous_developer2@eluminoustechnologies.com', '0', '', 'Elufname', 'Elulname', '', '', '', 'test', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', '0', 'Elufname', 'Elulname', '', 'test', '', 'Banda Aceh', '411411', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 70729.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-08-19 15:56:27', '2013-08-19 15:56:27', NULL);
INSERT INTO `oc_order` VALUES(921716748, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 18, 1, 'Elufname', 'Elulname', 'eluminous_developer2@eluminoustechnologies.com', '0', '', 'Elufname', 'Elulname', '', '', '', 'test', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', '0', 'Elufname', 'Elulname', '', 'test', '', 'Banda Aceh', '411411', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 70729.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:22.0) Gecko/20100101 Firefox/22.0', 'en-US,en;q=0.5', '2013-08-19 15:59:02', '2013-08-19 15:59:02', NULL);
INSERT INTO `oc_order` VALUES(770386932, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 4, 1, 'Mayur', 'Sharma', 'eluminous_tl5@eluminoustechnologies.com', '0', '', 'Mayur', 'Sharma', '', '', '', 'dasddad', 'dasda', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', '0', 'test', 'test', '', 'nashi', 'nashid', 'Banda Aceh', '4142541', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 75067.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-08-21 12:35:58', '2013-08-21 12:35:58', NULL);
INSERT INTO `oc_order` VALUES(296327424, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 4, 1, 'Mayur', 'Sharma', 'eluminous_tl5@eluminoustechnologies.com', '11', '', 'Mayur', 'Sharma', '', '', '', 'dasddad', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', '0', 'test', 'test', '', 'nashi', 'nashid', 'Banda Aceh', '4142541', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 535165.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-08-21 13:47:06', '2013-08-21 13:47:06', NULL);
INSERT INTO `oc_order` VALUES(105394872, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 4, 1, 'Mayur', 'Sharma', 'eluminous_tl5@eluminoustechnologies.com', 'adsdada', '', 'Mayur', 'Sharma', '', '', '', 'test address', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', '0', 'test', 'test', '', 'nashi', 'nashid', 'Banda Aceh', '4142541', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 80022.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-08-21 14:03:35', '2013-08-21 14:03:35', NULL);
INSERT INTO `oc_order` VALUES(195368921, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 21, 1, 'Gaurav', 'Patil', 'eluminous_sse22@eluminoustechnologies.com', '0', '', 'Gaurav', 'Patil', '', '', '', 'testa', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'Patil', '', 'testa', '', 'nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 70165.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-21 14:23:30', '2013-08-21 14:23:30', NULL);
INSERT INTO `oc_order` VALUES(784914250, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 21, 1, 'Gaurav', 'Patil', 'eluminous_sse22@eluminoustechnologies.com', '0', '', 'Gaurav', 'Patil', '', '', '', 'testa', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'Patil', '', 'testa', '', 'nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 5110.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-21 14:55:53', '2013-08-21 14:55:53', NULL);
INSERT INTO `oc_order` VALUES(155382782, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 21, 1, 'Gaurav', 'Patil', 'eluminous_sse22@eluminoustechnologies.com', '123456', '', 'Gaurav', 'Patil', '', '', '', 'testa', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'Patil', '', 'testa', '', 'nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 125.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-21 15:27:02', '2013-08-21 15:27:02', NULL);
INSERT INTO `oc_order` VALUES(512142572, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 12, 1, 'Andy', 'Kencana', 'andy@pixaal.com', '0', '', 'Andy', 'Kencana', '', '', '', 'Taman', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'doku', 'doku', 'Andy', 'Kencana', '', 'Taman', '', 'Banda Aceh', '15113', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0', 'id,en-us;q=0.7,en;q=0.3', '2013-09-03 12:37:46', '2013-09-03 12:37:46', NULL);
INSERT INTO `oc_order` VALUES(355044162, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 21, 1, 'Gaurav', 'Patil', 'eluminous_sse22@eluminoustechnologies.com', '123456', '', 'Gaurav', 'Patil', '', '', '', 'testa', '', 'nasik', '1234', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'Patil', '', 'testa', '', 'nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 1115.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-08-22 14:46:50', '2013-08-27 15:41:06', NULL);
INSERT INTO `oc_order` VALUES(515490112, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 21, 1, 'Gaurav', 'Patil', 'eluminous_sse22@eluminoustechnologies.com', '123456', '', 'Gaurav', 'Patil', '', '', '', 'testa', '', 'nasik', '1234', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'Patil', '', 'testa', '', 'nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 175.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-08-22 15:33:18', '2013-08-27 15:40:29', NULL);
INSERT INTO `oc_order` VALUES(52712899, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 21, 1, 'Gaurav', 'Patil', 'eluminous_sse22@eluminoustechnologies.com', '123456', '', 'Gaurav', 'Patil', '', '', '', 'testa', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'doku', 'doku', 'Gaurav', 'Patil', '', 'testa', '', 'nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 175.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-08-22 15:36:45', '2013-08-22 15:36:45', NULL);
INSERT INTO `oc_order` VALUES(693279392, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 21, 1, 'Gaurav', 'Patil', 'eluminous_sse22@eluminoustechnologies.com', '123456', '', 'Gaurav', 'Patil', '', '', '', 'testa', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', '0', 'Gaurav', 'Patil', '', 'testa', '', 'nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 110.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-08-22 16:05:58', '2013-08-22 16:05:58', NULL);
INSERT INTO `oc_order` VALUES(734666243, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 21, 1, 'Gaurav', 'Patil', 'eluminous_sse22@eluminoustechnologies.com', '123456', '', 'Gaurav', 'Patil', '', '', '', 'testa', '', '', '', 'India', 99, 'Maharashtra', 1493, '', 'doku', 'doku', 'Gaurav', 'Patil', '', 'testa', '', 'nashik', '12345', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 110.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.57 Safari/537.36', 'en-US,en;q=0.8', '2013-08-23 13:56:15', '2013-08-23 13:56:15', NULL);
INSERT INTO `oc_order` VALUES(116598667, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Alvin', 'Kusuma', '', 'Kintamani 2 no 26', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 105180.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/28.0.1500.95 Safari/537.36', 'en-US,en;q=0.8', '2013-09-03 13:48:22', '2013-09-03 13:48:23', NULL);
INSERT INTO `oc_order` VALUES(51462590, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 24, 1, 'Elvina', 'Evania', 'elvinaevania@gmail.com', '4523149', '', 'Elvina', 'Evania', '', '', '', 'Kelapa Gading', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Felicia ', 'Darmaja', '', 'Kelapa Gading', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 71450.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/536.30.1 (KHTML, like Gecko) Version/6.0.5 Safari/536.30.1', 'en-us', '2013-09-03 20:17:33', '2013-09-03 20:17:33', NULL);
INSERT INTO `oc_order` VALUES(204217338, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 24, 1, 'Elvina', 'Evania', 'elvinaevania@gmail.com', '4523149', '', 'Elvina', 'Evania', '', '', '', 'Kelapa Gading', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Felicia ', 'Darmaja', '', 'Kelapa Gading', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 71450.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/536.30.1 (KHTML, like Gecko) Version/6.0.5 Safari/536.30.1', 'en-us', '2013-09-03 20:17:37', '2013-09-03 20:17:37', NULL);
INSERT INTO `oc_order` VALUES(810851330, 0, 'INV-2013-00', 0, 'My Gift lane', 'http://eluminousdev.com/giftlane/', 24, 1, 'Elvina', 'Evania', 'elvinaevania@gmail.com', '4523149', '', 'Elvina', 'Evania', '', '', '', 'Kelapa Gading', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Felicia ', 'Darmaja', '', 'Kelapa Gading', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 71450.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_4) AppleWebKit/536.30.1 (KHTML, like Gecko) Version/6.0.5 Safari/536.30.1', 'en-us', '2013-09-03 20:18:00', '2013-09-03 20:18:00', NULL);
INSERT INTO `oc_order` VALUES(241631894, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Felicia', 'Darmaja', '', 'Kelapa lilin 11 ni 10 no 8', '', 'Banda Aceh', '14240', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 30000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.66 Safari/537.36', 'en-US,en;q=0.8', '2013-09-18 10:57:47', '2013-09-18 10:57:48', NULL);
INSERT INTO `oc_order` VALUES(112833044, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Alvin', 'Kusuma', '', 'kintamani 2 no 26', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 11320.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', 'en-US,en;q=0.8', '2013-09-21 21:03:38', '2013-09-21 21:03:39', NULL);
INSERT INTO `oc_order` VALUES(525586252, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Alvin', 'Kusuma', '', 'kintamani 2 no 26', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 11320.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', 'en-US,en;q=0.8', '2013-09-21 21:04:45', '2013-09-21 21:04:45', NULL);
INSERT INTO `oc_order` VALUES(72172355, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Alvin', 'Kusuma', '', 'kintamani 2 no 26', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 11320.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', 'en-US,en;q=0.8', '2013-09-21 21:04:50', '2013-09-21 21:04:50', NULL);
INSERT INTO `oc_order` VALUES(111236931, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Gaurav', 'Patil', '', 'Indira Nagar', 'Nashik', 'dubai', '5241141545', 'Albania', 2, 'Bulqize', 34, '', 'Flat Shipping Rate', 'flat.flat', '', 2000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-09-23 17:27:22', '2013-09-23 17:27:22', NULL);
INSERT INTO `oc_order` VALUES(390885524, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Sandeep', 'Nisal', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-09-23 17:27:23', '2013-09-23 17:27:23', NULL);
INSERT INTO `oc_order` VALUES(583630322, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Alvin', 'Kusuma', '', 'Kintamani 2 no 26', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 150000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', 'en-US,en;q=0.8', '2013-09-24 09:42:19', '2013-09-24 09:42:19', NULL);
INSERT INTO `oc_order` VALUES(780484685, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Felicia', 'Darmaja', '', 'kelapa lilin 11 ni 10 no 8', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 11110.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', 'en-US,en;q=0.8', '2013-09-24 09:46:20', '2013-09-24 09:46:20', NULL);
INSERT INTO `oc_order` VALUES(561648561, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Alvin', 'Kusuma', '', 'Kintamani 2 no 26', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 150000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', 'en-US,en;q=0.8', '2013-09-24 15:36:36', '2013-09-24 15:36:37', NULL);
INSERT INTO `oc_order` VALUES(680520522, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Alvin', 'Kusuma', '', 'Kintamani 2 no 26', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 150000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', 'en-US,en;q=0.8', '2013-09-24 20:43:34', '2013-09-24 20:43:34', NULL);
INSERT INTO `oc_order` VALUES(447446076, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Felicia', 'Darmaja', '', 'Kelapa lilin 11 ni 10 no 8', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 37350.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', 'en-US,en;q=0.8', '2013-09-27 11:30:24', '2013-09-27 11:30:25', NULL);
INSERT INTO `oc_order` VALUES(198814304, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Sandeep', 'Nisal', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 20020.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-09-27 16:13:28', '2013-09-27 16:13:28', NULL);
INSERT INTO `oc_order` VALUES(810032269, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Sandeep', 'Nisal', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-09-27 17:18:48', '2013-09-27 17:18:50', NULL);
INSERT INTO `oc_order` VALUES(882489736, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Sandeep', 'Nisal', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 30000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-09-27 17:24:27', '2013-09-27 17:24:28', NULL);
INSERT INTO `oc_order` VALUES(688125180, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Sandeep', 'patil', '', 'Nashik', 'Nashik', 'nashik', '232323', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 650100.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-09-27 17:25:56', '2013-09-27 17:25:56', NULL);
INSERT INTO `oc_order` VALUES(328284535, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Sandeep', 'Nisal', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 220000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-09-30 17:46:19', '2013-09-30 17:46:20', NULL);
INSERT INTO `oc_order` VALUES(683914716, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Sandeep', 'Nisal', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-09-30 17:47:57', '2013-09-30 17:47:57', NULL);
INSERT INTO `oc_order` VALUES(659381945, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Sandeep', 'Nisal', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-09-30 17:48:14', '2013-09-30 17:48:14', NULL);
INSERT INTO `oc_order` VALUES(392701278, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Sandeep', 'Nisal', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 120050.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.1; rv:23.0) Gecko/20100101 Firefox/23.0', 'en-US,en;q=0.5', '2013-09-30 17:49:20', '2013-09-30 17:49:20', NULL);
INSERT INTO `oc_order` VALUES(892920547, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Felicia', 'Darmaja', '', 'Kelapa Lilin 11 NI 10 No.8', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 350000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', 'en-US,en;q=0.8', '2013-10-04 12:39:46', '2013-10-04 12:39:47', NULL);
INSERT INTO `oc_order` VALUES(260135640, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 23, 1, 'Felicia', 'Darmaja', 'feliciadarmaja@yahoo.com', '0', '', 'Felicia', 'Darmaja', '', '', '', 'kelapa lilin 11 ni 10 no 8', '', '', '', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Transfer Bank BCA', 'bank_transfer', 'Alvin', 'Kusuma', '', 'kintamani 2 no 26', '', 'jakarta', '14240', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'Flat Shipping Rate', 'flat.flat', '', 1020.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36', 'en-US,en;q=0.8', '2013-10-07 14:01:04', '2013-10-07 14:01:05', NULL);
INSERT INTO `oc_order` VALUES(426755613, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Sandeep', 'Nisal', '', 'Jail Road,Nashik Road', 'Nashik', 'Banda Aceh', '422101', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 125045.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.69 Safari/537.36', 'en-US,en;q=0.8', '2013-10-14 14:03:01', '2013-10-14 14:03:01', NULL);
INSERT INTO `oc_order` VALUES(153939129, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://eluminousdev.com/giftlane/', 8, 1, 'Sandeep', 'Nisal', 'eluminous_sse3@eluminoustechnologies.com', '2030203', '', 'Sandeep', 'patil', '', '', '', 'Nashik', 'Nashik', '', '', 'India', 99, 'Maharashtra', 1493, '', 'Transfer Bank BCA', 'bank_transfer', 'Saddam', 'pinjari', '', 'Pinjari farms', 'nashil', 'NASHIK', '422101', 'India', 99, 'Maharashtra', 1493, '', 'Flat Shipping Rate', 'flat.flat', '', 72900.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '192.168.1.1', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.69 Safari/537.36', 'en-US,en;q=0.8', '2013-10-14 14:23:01', '2013-10-14 14:23:01', NULL);
INSERT INTO `oc_order` VALUES(538173218, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 33, 1, 'Kuuga', 'Kuuga', 'ryuki.servaiv@gmail.com', '324234234', '', 'sdf', 'sdf', '', '', '', 'sdf', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', 'dddd dddd dddd dddd dddd', 10000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-24 09:38:20', '2013-10-24 09:38:20', NULL);
INSERT INTO `oc_order` VALUES(415087891, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 33, 1, 'Kuuga', 'Kuuga', 'ryuki.servaiv@gmail.com', '324234234', '', 'sdf', 'sdf', '', '', '', 'sdf', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 20.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-24 10:38:57', '2013-10-24 10:38:57', NULL);
INSERT INTO `oc_order` VALUES(123659057, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 10000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-24 11:19:28', '2013-10-24 11:19:28', NULL);
INSERT INTO `oc_order` VALUES(647874451, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 599.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-24 13:39:04', '2013-10-24 13:39:04', NULL);
INSERT INTO `oc_order` VALUES(814314576, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 1000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-24 14:13:08', '2013-10-24 14:13:08', NULL);
INSERT INTO `oc_order` VALUES(21178588, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 1300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-24 15:52:03', '2013-10-24 15:52:03', NULL);
INSERT INTO `oc_order` VALUES(141333313, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 599.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-24 17:07:49', '2013-10-24 17:07:49', NULL);
INSERT INTO `oc_order` VALUES(452400207, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 599.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-25 10:11:07', '2013-10-25 10:11:07', NULL);
INSERT INTO `oc_order` VALUES(744282227, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 16, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '2398473924', '', 'DFG df', 'sdf sf ', '', '', '', 'sjdfh sdjkfh ', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', 'sdads', 51000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-25 10:24:40', '2013-10-25 10:24:41', NULL);
INSERT INTO `oc_order` VALUES(338016052, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 16, 1, 'Gladys', 'Kho', 'gladys@pixaal.com', '2398473924', '', 'DFG df', 'sdf sf ', '', '', '', 'sjdfh sdjkfh ', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 50000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-25 10:50:38', '2013-10-25 10:50:38', NULL);
INSERT INTO `oc_order` VALUES(279494629, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 12000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 09:30:47', '2013-10-28 09:30:47', NULL);
INSERT INTO `oc_order` VALUES(437837830, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 10000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 09:46:18', '2013-10-28 09:46:18', NULL);
INSERT INTO `oc_order` VALUES(26979370, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 50.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 10:01:30', '2013-10-28 10:01:30', NULL);
INSERT INTO `oc_order` VALUES(211184387, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 20.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 10:33:10', '2013-10-28 10:33:10', NULL);
INSERT INTO `oc_order` VALUES(376990051, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Daguba2', 'daguba3', '', 'Jalan kebun jeruk raya 9090', '', 'Banda Aceh', '56987', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 30000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 10:36:52', '2013-10-28 10:36:52', NULL);
INSERT INTO `oc_order` VALUES(138100586, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Derosi', 'Derosi2', '', 'Jalan hahaha 45', '', 'Banda Aceh', '25898', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 30000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 10:39:13', '2013-10-28 10:39:13', NULL);
INSERT INTO `oc_order` VALUES(238435974, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Lopez', 'Lopez2', '', 'Jalan kura kura ninja 45', '', 'Banda Aceh', '25897', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 10:39:13', '2013-10-28 10:39:13', NULL);
INSERT INTO `oc_order` VALUES(303392639, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 20000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 10:45:21', '2013-10-28 10:45:21', NULL);
INSERT INTO `oc_order` VALUES(898365479, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 20225.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 10:48:01', '2013-10-28 10:48:01', NULL);
INSERT INTO `oc_order` VALUES(833408814, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 2000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', 'en-US,en;q=0.8', '2013-10-28 11:20:37', '2013-10-28 11:20:37', NULL);
INSERT INTO `oc_order` VALUES(384241028, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 100.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', 'en-US,en;q=0.8', '2013-10-28 11:23:43', '2013-10-28 11:23:43', NULL);
INSERT INTO `oc_order` VALUES(708994141, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'jalan jsdfh', 'jalan', '', '234', 'sad', 'Banda Aceh', '12332', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 1200000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 11:27:18', '2013-10-28 11:27:18', NULL);
INSERT INTO `oc_order` VALUES(551194763, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'haha1', 'haha2', '', 'jalan shdfgsd', '', 'Banda Aceh', '36987', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 11:29:23', '2013-10-28 11:29:23', NULL);
INSERT INTO `oc_order` VALUES(700232544, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'juuiu jh', 'ggaga', '', 'haslfjsdlf sdfsd ', '', 'Banda Aceh', '14789', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 11:29:23', '2013-10-28 11:29:23', NULL);
INSERT INTO `oc_order` VALUES(90062866, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 20000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 11:46:27', '2013-10-28 11:46:27', NULL);
INSERT INTO `oc_order` VALUES(273301086, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 1000000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 11:57:57', '2013-10-28 11:57:57', NULL);
INSERT INTO `oc_order` VALUES(546813965, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 2600.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 11:58:44', '2013-10-28 11:58:44', NULL);
INSERT INTO `oc_order` VALUES(748632813, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'dasd', 'asd', '', 'sd', '', 'Banda Aceh', '32445', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 22000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 12:00:44', '2013-10-28 12:00:44', NULL);
INSERT INTO `oc_order` VALUES(157889709, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 40.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 12:05:32', '2013-10-28 12:05:32', NULL);
INSERT INTO `oc_order` VALUES(83839111, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'jslsn hjdfgq', 'jksdf sjdf', '', 'jsdfslhkfh', '', 'Banda Aceh', '25874', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 12:06:50', '2013-10-28 12:06:50', NULL);
INSERT INTO `oc_order` VALUES(684491883, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Marco', 'Basten', '', 'jalan hasdkfjhsdj', '', 'Banda Aceh', '36985', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 12:10:39', '2013-10-28 12:10:39', NULL);
INSERT INTO `oc_order` VALUES(36405639, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'dababa first name', 'dababa last name', '', 'jl lorong semanggi', '', 'Banda Aceh', '987415', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 22000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 12:20:58', '2013-10-28 12:20:58', NULL);
INSERT INTO `oc_order` VALUES(364663391, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 1200000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 12:21:48', '2013-10-28 12:21:48', NULL);
INSERT INTO `oc_order` VALUES(963020020, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 12:34:33', '2013-10-28 12:34:33', NULL);
INSERT INTO `oc_order` VALUES(854527283, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 500000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', 'en-US,en;q=0.8', '2013-10-28 13:26:33', '2013-10-28 13:26:33', NULL);
INSERT INTO `oc_order` VALUES(187618713, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'blade 1', 'blade 2', '', 'jalan hahhaa', '', 'Banda Aceh', '09232', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 22000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 13:37:36', '2013-10-28 13:37:36', NULL);
INSERT INTO `oc_order` VALUES(877337647, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Blaster', 'Axe', '', 'Jajahaha', '', 'Banda Aceh', '36985', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 22600.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 13:38:37', '2013-10-28 13:38:37', NULL);
INSERT INTO `oc_order` VALUES(519894714, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'baba2', 'baba3', '', 'jajajajajaa', '', 'Banda Aceh', '5879854231', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 22000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 13:39:57', '2013-10-28 13:39:57', NULL);
INSERT INTO `oc_order` VALUES(867609253, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'sdf', 'sdf', '', 'sdfsdf', '', 'Banda Aceh', '21356', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 40000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 13:59:15', '2013-10-28 13:59:15', NULL);
INSERT INTO `oc_order` VALUES(159460754, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 1200000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 14:05:56', '2013-10-28 14:05:56', NULL);
INSERT INTO `oc_order` VALUES(264750976, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Jabaleta', 'Choco', '', 'Jalan semanggi raya bala bala 34', '', 'Banda Aceh', '36987', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 20020.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 14:07:35', '2013-10-28 14:07:35', NULL);
INSERT INTO `oc_order` VALUES(790476990, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'bbbbbbb', 'cccccccc', '', 'kkkkkkkkk', '', 'Banda Aceh', '36987', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 14:10:10', '2013-10-28 14:10:10', NULL);
INSERT INTO `oc_order` VALUES(299495239, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'vvvvvvv', 'oooooo', '', 'jsjsjsjsjs', '', 'Banda Aceh', '36987', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 20030.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 14:10:10', '2013-10-28 14:10:10', NULL);
INSERT INTO `oc_order` VALUES(410707092, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'ssssssss', 'ddddddddd', '', 'uuuuuuuuuuuuooooooooo', '', 'Banda Aceh', '36987', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 14:11:53', '2013-10-28 14:11:53', NULL);
INSERT INTO `oc_order` VALUES(639263916, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 14:11:53', '2013-10-28 14:11:53', NULL);
INSERT INTO `oc_order` VALUES(891507264, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'baba2', 'baba3', '', 'jajajajajaa', '', 'Banda Aceh', '5879854231', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 120050.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 15:50:28', '2013-10-28 15:50:28', NULL);
INSERT INTO `oc_order` VALUES(422097168, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'sdfsdf', 'sdfsdf', '', 'sdfdsf', '', 'Banda Aceh', '36541', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 15:52:55', '2013-10-28 15:52:55', NULL);
INSERT INTO `oc_order` VALUES(317532043, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 16:02:16', '2013-10-28 16:02:16', NULL);
INSERT INTO `oc_order` VALUES(701259766, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Hibiki Armed', 'Hibiki Dragon', '', 'Jalan rambu lalulintas 67', '', 'Banda Aceh', '36541', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 16:05:21', '2013-10-28 16:05:21', NULL);
INSERT INTO `oc_order` VALUES(846067810, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Kabuto', 'Hyper', '', 'Jalan hahahah 67', '', 'Banda Aceh', '12345', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 16:06:30', '2013-10-28 16:06:30', NULL);
INSERT INTO `oc_order` VALUES(959334107, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 16:06:56', '2013-10-28 16:06:56', NULL);
INSERT INTO `oc_order` VALUES(755370178, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Toldo', 'Mercy', '', 'Jalan bara bara 34', '', 'Banda Aceh', '365478', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-28 16:08:15', '2013-10-28 16:08:15', NULL);
INSERT INTO `oc_order` VALUES(110577087, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 09:53:46', '2013-10-29 09:53:46', NULL);
INSERT INTO `oc_order` VALUES(840659790, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Jaku', 'Jakun Last', '', 'Jalan hahaha', '', 'Banda Aceh', '36985', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 09:57:12', '2013-10-29 09:57:12', NULL);
INSERT INTO `oc_order` VALUES(67131652, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'sdfdsf', 'sdf', '', 'sdfdf', 'sdfsdf', 'Banda Aceh', '76777', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 10:07:23', '2013-10-29 10:07:23', NULL);
INSERT INTO `oc_order` VALUES(94111328, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 42, 1, 'emas', 'emas', 'emasy@gmail.com', '36985', '', 'Kr Gaim', 'Fourze', '', '', '', 'Jalan kebun nanas gaim mo', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Armer', 'Wowo', '', 'Jalan gagagaga 8989', '', 'Banda Aceh', '36985', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 10:11:49', '2013-10-29 10:11:49', NULL);
INSERT INTO `oc_order` VALUES(210882263, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 42, 1, 'emas', 'emas', 'emasy@gmail.com', '36985', '', 'Kr Gaim', 'Fourze', '', '', '', 'Jalan kebun nanas gaim mo', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Lady', 'Gaga2', '', 'Jaalalal jsdjfhj sd786876', '', 'Banda Aceh', '36985', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 10:14:47', '2013-10-29 10:14:47', NULL);
INSERT INTO `oc_order` VALUES(754645081, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane/', 42, 1, 'emas', 'emas', 'emasy@gmail.com', '36985', '', 'Kr Gaim', 'Fourze', '', '', '', 'Jalan kebun nanas gaim mo', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', '', '', '', '', '', '', '', '', 0, '', 0, '', 'Flat Shipping Rate', 'flat.flat', '', 20000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 10:25:37', '2013-10-29 10:25:37', NULL);
INSERT INTO `oc_order` VALUES(524940186, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 42, 1, 'emas', 'emas', 'emasy@gmail.com', '36985', '', 'Kr Gaim', 'Fourze', '', '', '', 'Jalan kebun nanas gaim mo', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Simon', 'Inzaghi', '', 'Jalan bala bala 78', '', 'Banda Aceh', '36985', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 22000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 10:38:10', '2013-10-29 10:38:10', NULL);
INSERT INTO `oc_order` VALUES(134626159, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 42, 1, 'emas', 'emas', 'emasy@gmail.com', '36985', '', 'Kr Gaim', 'Fourze', '', '', '', 'Jalan kebun nanas gaim mo', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Simon', 'Inzaghi', '', 'Jalan bala bala 78', '', 'Banda Aceh', '36985', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 20020.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 10:38:53', '2013-10-29 10:38:53', NULL);
INSERT INTO `oc_order` VALUES(731774292, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 10:42:49', '2013-10-29 10:42:49', NULL);
INSERT INTO `oc_order` VALUES(744916687, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Louren', 'Blanc', '', 'JAlan Jlananana', '', 'Banda Aceh', '3244', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 14:20:50', '2013-10-29 14:20:50', NULL);
INSERT INTO `oc_order` VALUES(558959351, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598asd', '', 'dababa first namasde', 'dababa last nameasd', '', '', '', 'jl lorong semanggiasd', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 14:56:27', '2013-10-29 14:56:27', NULL);
INSERT INTO `oc_order` VALUES(578899536, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'F. TOtti', 'Francesco', '', 'Jalan sdkfjhsdfj', '', 'Banda Aceh', '32587', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 20020.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 15:24:47', '2013-10-29 15:24:47', NULL);
INSERT INTO `oc_order` VALUES(416507873, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 22000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 15:43:59', '2013-10-29 15:43:59', NULL);
INSERT INTO `oc_order` VALUES(727242432, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'F. TOtti', 'Francesco', '', 'Jalan sdkfjhsdfj', '', 'Banda Aceh', '32587', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:24.0) Gecko/20100101 Firefox/24.0', 'en-US,en;q=0.5', '2013-10-29 15:44:37', '2013-10-29 15:44:37', NULL);
INSERT INTO `oc_order` VALUES(649264221, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 44, 1, 'Casa', 'Nova', 'casa@gmail.com', '88979798', '', 'Joe', 'Chro', '', '', '', 'Jalan Arjuna iii 09090', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Eris', 'Venus', '', 'Jalan bla bla haha 90', '', 'Banda Aceh', '36985', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 22000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 12:59:21', '2013-10-30 12:59:21', NULL);
INSERT INTO `oc_order` VALUES(725339051, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 45, 1, 'Nogami', 'Birth', 'date@gamil.com', '852147', '', 'Orpen', 'Noc', '', '', '', 'Jalan inner ring 885', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'daguba bala', 'dazebaba', '', 'Jalan grongi central 34', '', 'Banda Aceh', '12345', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 13:11:14', '2013-10-30 13:11:14', NULL);
INSERT INTO `oc_order` VALUES(859391480, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 45, 1, 'Nogami', 'Birth', 'date@gamil.com', '852147', '', 'Orpenccc', 'Noc', '', '', '', 'Jalan inner ring 885', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Joe', 'Tig', '', 'Jalan haha', '', 'Banda Aceh', '98745', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 13:15:02', '2013-10-30 13:15:02', NULL);
INSERT INTO `oc_order` VALUES(294268493, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 45, 1, 'Nogami', 'Birth', 'date@gamil.com', '852147', '', 'Orpen', 'Noc', '', '', '', 'Jalan inner ring 885', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Seed', 'GunSeed', '', 'Jalan gundam seed cyborg 45', '', 'Banda Aceh', '85241', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 200599.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 14:16:25', '2013-10-30 14:16:25', NULL);
INSERT INTO `oc_order` VALUES(465331116, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 45, 1, 'Nogami', 'Birth', 'date@gamil.com', '852147', '', 'Orpen ccx', 'Noc xxxc', '', '', '', 'Jalan inner ring 885 cxcx', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Joel2', 'Joel3', '', 'Jalan sjdfhjdsh', '', 'Banda Aceh', '243243', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 20010.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 14:17:48', '2013-10-30 14:17:48', NULL);
INSERT INTO `oc_order` VALUES(909302369, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 45, 1, 'Nogami', 'Birth', 'date@gamil.com', '852147', '', 'Orpen ccx', 'Noc xxxc', '', '', '', 'Jalan inner ring 885 cxcx', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Joe', 'Tig', '', 'Jalan haha', '', 'Banda Aceh', '98745', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 1200000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 14:27:29', '2013-10-30 14:27:29', NULL);
INSERT INTO `oc_order` VALUES(644581299, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 46, 1, 'Jor', 'Joluio', 'lopezjoel@gmail.com', '343242', '', 'Asergio', 'Aguerro', '', '', '', 'Jalan Arjuna no 85', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Keni', 'Dalgish', '', 'Jalan kemayoran 98', '', 'Banda Aceh', '4545', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 14:51:13', '2013-10-30 14:51:13', NULL);
INSERT INTO `oc_order` VALUES(147224731, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 48, 1, 'Green', 'Joluio', 'green@gmail.com', '98798789', '', 'Decade', 'Tsubasa', '', '', '', 'Jalan bbbbb 7', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Decade', 'Tsubasa', '', 'Jalan bbbbb 7', '', 'Langsa', '67677', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 505000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 16:06:09', '2013-10-30 16:06:09', NULL);
INSERT INTO `oc_order` VALUES(625245361, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 49, 1, 'huro', 'hurobo', 'huro@gmail.com', '98798798', '', 'jonn', 'junjun', '', '', '', 'jalan jsjsjsjjs', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'jew', 'juk', '', 'jaaln s fsdf', '', 'Banda Aceh', '96325', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 16:08:28', '2013-10-30 16:08:28', NULL);
INSERT INTO `oc_order` VALUES(174989929, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 49, 1, 'huro', 'hurobo', 'huro@gmail.com', '98798798', '', 'jonn yeye', 'junjun ex', '', '', '', 'jalan jsjsjsjjs', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Ser', 'Aguero', '', 'Jalan argentina hijau putih 34545', '', 'Banda Aceh', '96325', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 16:12:50', '2013-10-30 16:12:50', NULL);
INSERT INTO `oc_order` VALUES(997069397, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 50, 1, 'hire', 'hiring', 'hire@gmail.com', '89798987', '', 'Sailor', 'Moon mikasa', '', '', '', 'Jalan sailor momon 788778', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Onegaii', 'Jupiter', '', 'Jalan jupiter lapangan bola no 979798', '', 'Banda Aceh', '96325', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 1200000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 16:15:42', '2013-10-30 16:15:42', NULL);
INSERT INTO `oc_order` VALUES(60907898, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 51, 1, 'konamiii', 'kinami', 'konamii@gmail.com', '96325', '', 'Junamexxxx', 'Julast', '', '', '', 'Jalan hahahah 78', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'sfdf first', 'sdfsd last', '', 'halan sfkjhdskfjhsdf sdf 45', '', 'Banda Aceh', '56566', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 20020.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 16:20:38', '2013-10-30 16:20:39', NULL);
INSERT INTO `oc_order` VALUES(924801331, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 52, 1, 'first virly', 'last firly', 'virly@gmail.com', '89798789', '', 'first haip', 'last nata', '', '', '', 'jalan street 8998', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'first umu', 'last umu', '', 'jalan putri umu raya 89', '', 'Banda Aceh', '96325', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-30 16:23:02', '2013-10-30 16:23:02', NULL);
INSERT INTO `oc_order` VALUES(92721557, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'sdf', 'sdf', '', 'sdfsdf', '', 'Banda Aceh', '36985', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-31 09:36:38', '2013-10-31 09:36:38', NULL);
INSERT INTO `oc_order` VALUES(58339843, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 53, 1, 'birdie', 'birdie 2', 'birdiebirdie@gmail.com', '963258', '', 'Kajiura', 'Blasa', '', '', '', 'Jalan hahah a8', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Dani', 'Cho', '', 'Jalan gagagag 34', '', 'Banda Aceh', '96325', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 1200000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-31 09:49:28', '2013-10-31 09:49:28', NULL);
INSERT INTO `oc_order` VALUES(234689636, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 53, 1, 'birdie', 'birdie 2', 'birdiebirdie@gmail.com', '963258', '', 'Kajiura', 'Blasa', '', '', '', 'Jalan hahah a8', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Dani', 'Cho', '', 'Jalan gagagag 34', '', 'Banda Aceh', '96325', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-31 10:11:49', '2013-10-31 10:11:49', NULL);
INSERT INTO `oc_order` VALUES(447445373, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 53, 1, 'birdie', 'birdie 2', 'birdiebirdie@gmail.com', '963258', '', 'Kajiura', 'Blasa', '', '', '', 'Jalan hahah a8', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Dani', 'Cho', '', 'Jalan gagagag 34', '', 'Banda Aceh', '96325', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 600000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-31 11:32:07', '2013-10-31 11:32:07', NULL);
INSERT INTO `oc_order` VALUES(972808838, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-31 11:35:40', '2013-10-31 11:35:40', NULL);
INSERT INTO `oc_order` VALUES(726456909, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 200599.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-31 13:22:00', '2013-10-31 13:22:00', NULL);
INSERT INTO `oc_order` VALUES(933079529, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 54, 1, 'sss', 'fff', 'sss@gmail.com', '9834729347', '', 'Gokaiger', 'Kaizoku', '', '', '', 'Jalan bala bala 456', '', '', '', '', 100, '', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'ssssrrrr', 'sdfdf', '', 'hhhh', '', 'Banda Aceh', '23443', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 1200000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-31 13:49:20', '2013-10-31 13:49:20', NULL);
INSERT INTO `oc_order` VALUES(735883179, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 55, 1, 'rong', 'rong 2', 'rongrong@gmail.com', '33333333333', '', 'Kuuuuuga', 'Pegasus', '', '', '', 'Jalan kebun bambu no 8976', '', 'Banda Aceh', '96345', 'Indonesia', 100, 'Aceh', 1507, '', 'Bank Transfer', 'bank_transfer', 'Kuuuuuga', 'Pegasus', '', 'Jalan kebun bambu no 8976', '', 'Banda Aceh', '96345', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 604.0000, 15, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-10-31 13:59:28', '2013-11-04 15:02:28', 'CGK12345678');
INSERT INTO `oc_order` VALUES(365267639, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'Linto first name', 'Linto last name', '', '', '', 'Jl lorong jembatan slipi', '', 'Banda Aceh', '98574', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Linto first name', 'Linto last name', '', 'Jl lorong jembatan slipi', '', 'Banda Aceh', '98574', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 15, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-11-04 15:04:14', '2013-11-04 16:36:32', '852');
INSERT INTO `oc_order` VALUES(352638855, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'Daguba', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Solmon', 'Solimin', '', 'Jalan batu bara 87', '', 'Banda Aceh', '36985', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 120050.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-11-06 10:49:38', '2013-11-06 10:49:38', NULL);
INSERT INTO `oc_order` VALUES(592736816, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'asdsad', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 22000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-11-08 15:24:27', '2013-11-08 15:24:27', NULL);
INSERT INTO `oc_order` VALUES(493942261, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'asdsad', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank CIMB Niaga', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21300.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-11-13 13:41:58', '2013-11-13 13:41:58', NULL);
INSERT INTO `oc_order` VALUES(607359619, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'asdsad', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 20020.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-11-13 13:45:23', '2013-11-13 13:45:23', NULL);
INSERT INTO `oc_order` VALUES(581890564, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'asdsad', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Barrasi', 'Milan', '', 'Jalan huhuhu 34', '', 'Banda Aceh', '45678', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 21000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-11-13 13:47:12', '2013-11-13 13:47:12', NULL);
INSERT INTO `oc_order` VALUES(638115845, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'asdsad', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', '', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank MANDIRI', 'bank_transfer', 'Louren', 'Blanc', '', 'JAlan Jlananana', '', 'Banda Aceh', '3244', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 20000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-11-13 13:49:57', '2013-11-13 13:49:57', NULL);
INSERT INTO `oc_order` VALUES(723647156, 0, 'INV-2013-00', 0, 'Giftlane Co', 'http://localhost/giftlane2/', 37, 1, 'asdsad', 'baba', 'daguba@gmail.com', '6541598', '', 'dababa first name', 'dababa last name', '', '', '', 'jl lorong semanggi', '', 'jakarta', '', 'Indonesia', 100, 'Aceh', 1507, '', 'Transfer Bank BCA', 'bank_transfer', 'Louren', 'Blanc', '', 'JAlan Jlananana', '', 'Banda Aceh', '3244', 'Indonesia', 100, 'Aceh', 1507, '', 'Flat Shipping Rate', 'flat.flat', '', 20000.0000, 1, 0, 0.0000, 1, 4, 'IDR', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'en-US,en;q=0.5', '2013-11-13 13:51:16', '2013-11-13 14:41:29', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_customer_payment`
--

CREATE TABLE `oc_order_customer_payment` (
  `id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_to` varchar(255) NOT NULL,
  `payment_from` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `payment_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `oc_order_customer_payment`
--

INSERT INTO `oc_order_customer_payment` VALUES(1, 12, 3, 'Transfer Bank BCA', 'Gaurav', 'Test Payment', 150.00, '2013-07-26', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(2, 322686728, 15, 'Transfer Bank BCA', 'Gladys', 'Gladys', 1250.00, '2013-08-02', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(3, 787989254, 15, 'Transfer Bank BCA', 'aada', 'adadas', 10.00, '2013-08-02', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(4, 72118865, 15, 'Transfer Bank BCA', 'dasda', 'adadas', 1290.00, '2013-08-02', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(5, 956529302, 3, 'Transfer Bank BCA', 'Gaurav', 'test account', 220.00, '2013-08-02', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(6, 996871560, 3, 'Transfer Bank BCA', 'Gaurav', 'patil', 2085.00, '2013-08-20', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(7, 370537920, 4, 'Transfer Bank BCA', 'Eluminous', 'Eluminous', 75.00, '2013-08-07', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(8, 443599723, 16, 'Transfer Bank BCA', 'Gladys', 'Gladys', 10115.00, '2013-08-13', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(9, 640025542, 16, 'Transfer Bank BCA', 'AAAA', 'AAAA', 589.00, '2013-08-12', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(10, 145905119, 16, 'Transfer Bank BCA', 'Gladys', 'adadas', 900.00, '2013-08-13', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(11, 323438655, 18, 'Transfer Bank BCA', 'TEST', 'TEST', 587.00, '2013-08-12', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(12, 52712899, 0, 'doku', 'doku', '', 175.00, '1970-01-01', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(13, 693279392, 0, 'doku', 'doku', '', 110.00, '1970-01-01', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(14, 52712899, 0, 'doku', 'doku', '', 175.00, '1970-01-01', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(15, 52712899, 0, 'doku', 'doku', '', 175.00, '1970-01-01', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(16, 734666243, 0, 'doku', 'doku', '', 110.00, '1970-01-01', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(17, 44929529, 0, 'Transfer Bank BCA', 'Gaurav', 'test account', 30180.00, '2013-08-13', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(18, 515490112, 0, 'Transfer Bank CIMB Niaga', 'Gaurav', 'test', 175.00, '2013-08-01', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(19, 355044162, 0, 'Transfer Bank CIMB Niaga', 'Gaurav', 'test', 1115.00, '2013-08-02', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(20, 197468075, 0, 'doku', 'doku', 'doku', 650.00, '2013-08-28', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(21, 512142572, 0, 'doku', 'doku', 'doku', 21000.00, '2013-09-03', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(22, 426755613, 8, 'Transfer Bank BCA', 'dfgfd', 'gdfgfdgd', 125045.00, '2013-10-14', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(23, 153939129, 8, 'Transfer Bank BCA', 'test', 'test', 72900.00, '2013-10-08', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(24, 123659057, 37, 'Transfer Bank BCA', 'BCA', 'Kuuga', 10000.00, '2013-10-12', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(25, 723647156, 37, 'Transfer Bank Mandiri', 'sdfdsf', 'sdfdf', 20000.00, '2013-11-06', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(26, 581890564, 37, 'Transfer Bank Mandiri', 'sdasd', 'sdsad', 21000.00, '2013-11-06', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(27, 638115845, 37, 'Transfer Bank BCA', 'dssf', 'sdfdsf', 20000.00, '2013-10-02', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(28, 607359619, 37, 'Transfer Bank BCA', 'asd', 'ad', 20020.00, '2013-11-06', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(29, 493942261, 37, 'Transfer Bank BCA', 'fdsdf', 'sdf', 21300.00, '2013-11-06', 'confirm');
INSERT INTO `oc_order_customer_payment` VALUES(30, 592736816, 37, 'Transfer Bank Mandiri', 'sdf', 'asdsad', 22000.00, '2013-11-06', 'confirm');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_download`
--

CREATE TABLE `oc_order_download` (
  `order_download_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL default '0',
  PRIMARY KEY  (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_order_download`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_order_field`
--

CREATE TABLE `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_field`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_order_fraud`
--

CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_fraud`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL default '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=219 ;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` VALUES(1, 1, 1, 1, '', '2013-07-12 12:52:53');
INSERT INTO `oc_order_history` VALUES(2, 1, 5, 1, '', '2013-07-15 12:15:13');
INSERT INTO `oc_order_history` VALUES(3, 2, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-17 16:14:23');
INSERT INTO `oc_order_history` VALUES(4, 3, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-17 17:31:08');
INSERT INTO `oc_order_history` VALUES(5, 4, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-17 17:31:43');
INSERT INTO `oc_order_history` VALUES(6, 5, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-17 17:57:36');
INSERT INTO `oc_order_history` VALUES(7, 6, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-17 17:59:48');
INSERT INTO `oc_order_history` VALUES(8, 7, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-17 18:00:36');
INSERT INTO `oc_order_history` VALUES(9, 8, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-17 18:02:18');
INSERT INTO `oc_order_history` VALUES(10, 9, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-17 18:06:10');
INSERT INTO `oc_order_history` VALUES(11, 10, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-17 18:13:30');
INSERT INTO `oc_order_history` VALUES(12, 11, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-17 19:19:35');
INSERT INTO `oc_order_history` VALUES(13, 12, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-18 14:20:19');
INSERT INTO `oc_order_history` VALUES(14, 13, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-18 18:05:12');
INSERT INTO `oc_order_history` VALUES(15, 14, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-18 18:25:31');
INSERT INTO `oc_order_history` VALUES(16, 15, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-19 12:41:44');
INSERT INTO `oc_order_history` VALUES(17, 16, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-24 10:34:47');
INSERT INTO `oc_order_history` VALUES(18, 17, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-24 16:45:38');
INSERT INTO `oc_order_history` VALUES(19, 18, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-25 20:17:30');
INSERT INTO `oc_order_history` VALUES(20, 19, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-26 10:00:16');
INSERT INTO `oc_order_history` VALUES(21, 20, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-26 15:31:51');
INSERT INTO `oc_order_history` VALUES(22, 21, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-26 15:56:14');
INSERT INTO `oc_order_history` VALUES(23, 0, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-26 16:27:09');
INSERT INTO `oc_order_history` VALUES(24, 853944560, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-26 16:31:37');
INSERT INTO `oc_order_history` VALUES(25, 803147813, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-29 09:45:18');
INSERT INTO `oc_order_history` VALUES(26, 379065580, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-29 10:26:27');
INSERT INTO `oc_order_history` VALUES(27, 992437411, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-29 14:39:34');
INSERT INTO `oc_order_history` VALUES(28, 687697201, 1, 1, 'text_instruction\n\n\n\ntext_payment', '2013-07-29 14:44:29');
INSERT INTO `oc_order_history` VALUES(29, 853944560, 7, 1, 'Test ing email', '2013-07-30 11:26:46');
INSERT INTO `oc_order_history` VALUES(30, 66740059, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-30 19:31:12');
INSERT INTO `oc_order_history` VALUES(31, 554664240, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-30 19:31:12');
INSERT INTO `oc_order_history` VALUES(32, 305076579, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-30 19:38:34');
INSERT INTO `oc_order_history` VALUES(33, 100572830, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-30 19:38:34');
INSERT INTO `oc_order_history` VALUES(34, 322563865, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-30 19:42:51');
INSERT INTO `oc_order_history` VALUES(35, 843188137, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-30 19:42:51');
INSERT INTO `oc_order_history` VALUES(36, 733063684, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:31:13');
INSERT INTO `oc_order_history` VALUES(37, 114736514, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:31:13');
INSERT INTO `oc_order_history` VALUES(38, 585303106, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:36:25');
INSERT INTO `oc_order_history` VALUES(39, 920306331, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:36:25');
INSERT INTO `oc_order_history` VALUES(40, 976643814, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:37:24');
INSERT INTO `oc_order_history` VALUES(41, 956529302, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:38:36');
INSERT INTO `oc_order_history` VALUES(42, 466925650, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:44:19');
INSERT INTO `oc_order_history` VALUES(43, 280509759, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:45:57');
INSERT INTO `oc_order_history` VALUES(44, 921996235, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:46:13');
INSERT INTO `oc_order_history` VALUES(45, 133337966, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:51:08');
INSERT INTO `oc_order_history` VALUES(46, 700404494, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 12:55:47');
INSERT INTO `oc_order_history` VALUES(47, 489666742, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 13:16:20');
INSERT INTO `oc_order_history` VALUES(48, 12339082, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 14:13:51');
INSERT INTO `oc_order_history` VALUES(49, 317809087, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 14:17:04');
INSERT INTO `oc_order_history` VALUES(50, 564897504, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 14:18:13');
INSERT INTO `oc_order_history` VALUES(51, 284882521, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 14:19:03');
INSERT INTO `oc_order_history` VALUES(52, 237064491, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 14:19:34');
INSERT INTO `oc_order_history` VALUES(53, 657782982, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 14:20:36');
INSERT INTO `oc_order_history` VALUES(54, 370537920, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 14:27:45');
INSERT INTO `oc_order_history` VALUES(55, 861419805, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 20:35:05');
INSERT INTO `oc_order_history` VALUES(56, 612785305, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 20:40:42');
INSERT INTO `oc_order_history` VALUES(57, 654148046, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-07-31 20:45:01');
INSERT INTO `oc_order_history` VALUES(58, 996871560, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-01 10:56:52');
INSERT INTO `oc_order_history` VALUES(59, 530891362, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-01 15:52:09');
INSERT INTO `oc_order_history` VALUES(60, 397687877, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-01 15:57:11');
INSERT INTO `oc_order_history` VALUES(61, 337585482, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-01 16:12:03');
INSERT INTO `oc_order_history` VALUES(62, 322686728, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-02 08:35:04');
INSERT INTO `oc_order_history` VALUES(63, 787989254, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-02 08:40:12');
INSERT INTO `oc_order_history` VALUES(64, 221090638, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-02 09:14:07');
INSERT INTO `oc_order_history` VALUES(65, 289439425, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-02 09:19:51');
INSERT INTO `oc_order_history` VALUES(66, 72118865, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-02 09:30:41');
INSERT INTO `oc_order_history` VALUES(67, 710898599, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-02 09:30:41');
INSERT INTO `oc_order_history` VALUES(68, 710898599, 5, 1, '', '2013-08-02 09:39:59');
INSERT INTO `oc_order_history` VALUES(69, 710898599, 5, 1, '', '2013-08-02 09:40:52');
INSERT INTO `oc_order_history` VALUES(70, 787989254, 10, 1, '', '2013-08-02 09:44:31');
INSERT INTO `oc_order_history` VALUES(71, 135482351, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-02 11:57:33');
INSERT INTO `oc_order_history` VALUES(72, 190308519, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-02 12:03:13');
INSERT INTO `oc_order_history` VALUES(73, 44929529, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-02 14:46:13');
INSERT INTO `oc_order_history` VALUES(74, 385984997, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-05 16:51:52');
INSERT INTO `oc_order_history` VALUES(75, 138478641, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-07 11:59:56');
INSERT INTO `oc_order_history` VALUES(76, 443599723, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-13 09:58:36');
INSERT INTO `oc_order_history` VALUES(77, 640025542, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-13 10:06:56');
INSERT INTO `oc_order_history` VALUES(78, 145905119, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-13 10:14:48');
INSERT INTO `oc_order_history` VALUES(79, 145905119, 5, 0, '', '2013-08-13 11:15:34');
INSERT INTO `oc_order_history` VALUES(80, 145905119, 11, 0, '', '2013-08-13 11:16:14');
INSERT INTO `oc_order_history` VALUES(81, 323438655, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-19 15:54:54');
INSERT INTO `oc_order_history` VALUES(82, 27830313, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-19 15:56:27');
INSERT INTO `oc_order_history` VALUES(83, 921716748, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-19 15:59:02');
INSERT INTO `oc_order_history` VALUES(84, 770386932, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-21 12:35:58');
INSERT INTO `oc_order_history` VALUES(85, 296327424, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-21 13:47:06');
INSERT INTO `oc_order_history` VALUES(86, 105394872, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-21 14:03:35');
INSERT INTO `oc_order_history` VALUES(87, 195368921, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-21 14:23:30');
INSERT INTO `oc_order_history` VALUES(88, 784914250, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-21 14:55:53');
INSERT INTO `oc_order_history` VALUES(89, 155382782, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-21 15:27:02');
INSERT INTO `oc_order_history` VALUES(90, 355044162, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-22 14:46:50');
INSERT INTO `oc_order_history` VALUES(91, 515490112, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-22 15:33:18');
INSERT INTO `oc_order_history` VALUES(92, 52712899, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-22 15:36:45');
INSERT INTO `oc_order_history` VALUES(93, 693279392, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-22 16:05:58');
INSERT INTO `oc_order_history` VALUES(94, 734666243, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-23 13:56:15');
INSERT INTO `oc_order_history` VALUES(95, 197468075, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-08-28 09:37:47');
INSERT INTO `oc_order_history` VALUES(96, 512142572, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-03 12:37:46');
INSERT INTO `oc_order_history` VALUES(97, 116598667, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-03 13:48:23');
INSERT INTO `oc_order_history` VALUES(98, 51462590, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-03 20:17:33');
INSERT INTO `oc_order_history` VALUES(99, 204217338, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-03 20:17:37');
INSERT INTO `oc_order_history` VALUES(100, 810851330, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-03 20:18:00');
INSERT INTO `oc_order_history` VALUES(101, 241631894, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-18 10:57:48');
INSERT INTO `oc_order_history` VALUES(102, 112833044, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-21 21:03:39');
INSERT INTO `oc_order_history` VALUES(103, 525586252, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-21 21:04:45');
INSERT INTO `oc_order_history` VALUES(104, 72172355, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-21 21:04:50');
INSERT INTO `oc_order_history` VALUES(105, 111236931, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-23 17:27:22');
INSERT INTO `oc_order_history` VALUES(106, 390885524, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-23 17:27:23');
INSERT INTO `oc_order_history` VALUES(107, 583630322, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-24 09:42:19');
INSERT INTO `oc_order_history` VALUES(108, 780484685, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-24 09:46:20');
INSERT INTO `oc_order_history` VALUES(109, 561648561, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-24 15:36:37');
INSERT INTO `oc_order_history` VALUES(110, 680520522, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-24 20:43:34');
INSERT INTO `oc_order_history` VALUES(111, 447446076, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-27 11:30:25');
INSERT INTO `oc_order_history` VALUES(112, 198814304, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-27 16:13:28');
INSERT INTO `oc_order_history` VALUES(113, 810032269, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-27 17:18:50');
INSERT INTO `oc_order_history` VALUES(114, 882489736, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-27 17:24:28');
INSERT INTO `oc_order_history` VALUES(115, 688125180, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-27 17:25:56');
INSERT INTO `oc_order_history` VALUES(116, 328284535, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-30 17:46:20');
INSERT INTO `oc_order_history` VALUES(117, 683914716, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-30 17:47:57');
INSERT INTO `oc_order_history` VALUES(118, 659381945, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-30 17:48:14');
INSERT INTO `oc_order_history` VALUES(119, 392701278, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-09-30 17:49:20');
INSERT INTO `oc_order_history` VALUES(120, 892920547, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-04 12:39:47');
INSERT INTO `oc_order_history` VALUES(121, 260135640, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-07 14:01:05');
INSERT INTO `oc_order_history` VALUES(122, 426755613, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-14 14:03:01');
INSERT INTO `oc_order_history` VALUES(123, 153939129, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-14 14:23:01');
INSERT INTO `oc_order_history` VALUES(124, 538173218, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-24 09:38:20');
INSERT INTO `oc_order_history` VALUES(125, 415087891, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-24 10:38:57');
INSERT INTO `oc_order_history` VALUES(126, 123659057, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-24 11:19:28');
INSERT INTO `oc_order_history` VALUES(127, 647874451, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-24 13:39:04');
INSERT INTO `oc_order_history` VALUES(128, 814314576, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-24 14:13:08');
INSERT INTO `oc_order_history` VALUES(129, 21178588, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-24 15:52:03');
INSERT INTO `oc_order_history` VALUES(130, 141333313, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-24 17:07:49');
INSERT INTO `oc_order_history` VALUES(131, 452400207, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-25 10:11:07');
INSERT INTO `oc_order_history` VALUES(132, 744282227, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-25 10:24:41');
INSERT INTO `oc_order_history` VALUES(133, 338016052, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-25 10:50:38');
INSERT INTO `oc_order_history` VALUES(134, 279494629, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 09:30:47');
INSERT INTO `oc_order_history` VALUES(135, 437837830, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 09:46:18');
INSERT INTO `oc_order_history` VALUES(136, 26979370, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 10:01:30');
INSERT INTO `oc_order_history` VALUES(137, 211184387, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 10:33:10');
INSERT INTO `oc_order_history` VALUES(138, 376990051, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 10:36:52');
INSERT INTO `oc_order_history` VALUES(139, 138100586, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 10:39:13');
INSERT INTO `oc_order_history` VALUES(140, 238435974, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 10:39:13');
INSERT INTO `oc_order_history` VALUES(141, 303392639, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 10:45:21');
INSERT INTO `oc_order_history` VALUES(142, 898365479, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 10:48:01');
INSERT INTO `oc_order_history` VALUES(143, 833408814, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 11:20:37');
INSERT INTO `oc_order_history` VALUES(144, 384241028, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 11:23:43');
INSERT INTO `oc_order_history` VALUES(145, 708994141, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 11:27:18');
INSERT INTO `oc_order_history` VALUES(146, 551194763, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 11:29:23');
INSERT INTO `oc_order_history` VALUES(147, 700232544, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 11:29:23');
INSERT INTO `oc_order_history` VALUES(148, 90062866, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 11:46:27');
INSERT INTO `oc_order_history` VALUES(149, 273301086, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 11:57:57');
INSERT INTO `oc_order_history` VALUES(150, 546813965, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 11:58:44');
INSERT INTO `oc_order_history` VALUES(151, 748632813, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 12:00:44');
INSERT INTO `oc_order_history` VALUES(152, 157889709, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 12:05:32');
INSERT INTO `oc_order_history` VALUES(153, 83839111, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 12:06:50');
INSERT INTO `oc_order_history` VALUES(154, 684491883, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 12:10:39');
INSERT INTO `oc_order_history` VALUES(155, 36405639, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 12:20:58');
INSERT INTO `oc_order_history` VALUES(156, 364663391, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 12:21:48');
INSERT INTO `oc_order_history` VALUES(157, 963020020, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 12:34:33');
INSERT INTO `oc_order_history` VALUES(158, 854527283, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 13:26:33');
INSERT INTO `oc_order_history` VALUES(159, 187618713, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 13:37:36');
INSERT INTO `oc_order_history` VALUES(160, 877337647, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 13:38:37');
INSERT INTO `oc_order_history` VALUES(161, 519894714, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 13:39:57');
INSERT INTO `oc_order_history` VALUES(162, 867609253, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 13:59:15');
INSERT INTO `oc_order_history` VALUES(163, 159460754, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 14:05:56');
INSERT INTO `oc_order_history` VALUES(164, 264750976, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 14:07:35');
INSERT INTO `oc_order_history` VALUES(165, 790476990, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 14:10:10');
INSERT INTO `oc_order_history` VALUES(166, 299495239, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 14:10:10');
INSERT INTO `oc_order_history` VALUES(167, 410707092, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 14:11:53');
INSERT INTO `oc_order_history` VALUES(168, 639263916, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 14:11:53');
INSERT INTO `oc_order_history` VALUES(169, 891507264, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 15:50:28');
INSERT INTO `oc_order_history` VALUES(170, 422097168, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 15:52:55');
INSERT INTO `oc_order_history` VALUES(171, 317532043, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 16:02:16');
INSERT INTO `oc_order_history` VALUES(172, 701259766, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 16:05:21');
INSERT INTO `oc_order_history` VALUES(173, 846067810, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 16:06:30');
INSERT INTO `oc_order_history` VALUES(174, 959334107, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 16:06:56');
INSERT INTO `oc_order_history` VALUES(175, 755370178, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-28 16:08:15');
INSERT INTO `oc_order_history` VALUES(176, 110577087, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 09:53:46');
INSERT INTO `oc_order_history` VALUES(177, 840659790, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 09:57:12');
INSERT INTO `oc_order_history` VALUES(178, 67131652, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 10:07:23');
INSERT INTO `oc_order_history` VALUES(179, 94111328, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 10:11:49');
INSERT INTO `oc_order_history` VALUES(180, 210882263, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 10:14:47');
INSERT INTO `oc_order_history` VALUES(181, 754645081, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 10:25:37');
INSERT INTO `oc_order_history` VALUES(182, 524940186, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 10:38:10');
INSERT INTO `oc_order_history` VALUES(183, 134626159, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 10:38:53');
INSERT INTO `oc_order_history` VALUES(184, 731774292, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 10:42:49');
INSERT INTO `oc_order_history` VALUES(185, 744916687, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 14:20:50');
INSERT INTO `oc_order_history` VALUES(186, 558959351, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 14:56:27');
INSERT INTO `oc_order_history` VALUES(187, 578899536, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 15:24:47');
INSERT INTO `oc_order_history` VALUES(188, 416507873, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 15:43:59');
INSERT INTO `oc_order_history` VALUES(189, 727242432, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-29 15:44:37');
INSERT INTO `oc_order_history` VALUES(190, 649264221, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 12:59:21');
INSERT INTO `oc_order_history` VALUES(191, 725339051, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 13:11:14');
INSERT INTO `oc_order_history` VALUES(192, 859391480, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 13:15:02');
INSERT INTO `oc_order_history` VALUES(193, 294268493, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 14:16:25');
INSERT INTO `oc_order_history` VALUES(194, 465331116, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 14:17:48');
INSERT INTO `oc_order_history` VALUES(195, 909302369, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 14:27:29');
INSERT INTO `oc_order_history` VALUES(196, 644581299, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 14:51:13');
INSERT INTO `oc_order_history` VALUES(197, 147224731, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 16:06:09');
INSERT INTO `oc_order_history` VALUES(198, 625245361, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 16:08:28');
INSERT INTO `oc_order_history` VALUES(199, 174989929, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 16:12:50');
INSERT INTO `oc_order_history` VALUES(200, 997069397, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 16:15:42');
INSERT INTO `oc_order_history` VALUES(201, 60907898, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 16:20:39');
INSERT INTO `oc_order_history` VALUES(202, 924801331, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-30 16:23:02');
INSERT INTO `oc_order_history` VALUES(203, 92721557, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-31 09:36:38');
INSERT INTO `oc_order_history` VALUES(204, 58339843, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-31 09:49:28');
INSERT INTO `oc_order_history` VALUES(205, 234689636, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-31 10:11:49');
INSERT INTO `oc_order_history` VALUES(206, 447445373, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-31 11:32:07');
INSERT INTO `oc_order_history` VALUES(207, 972808838, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-31 11:35:40');
INSERT INTO `oc_order_history` VALUES(208, 726456909, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-31 13:22:00');
INSERT INTO `oc_order_history` VALUES(209, 933079529, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-31 13:49:20');
INSERT INTO `oc_order_history` VALUES(210, 735883179, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-10-31 13:59:28');
INSERT INTO `oc_order_history` VALUES(211, 365267639, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-11-04 15:04:14');
INSERT INTO `oc_order_history` VALUES(212, 352638855, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-11-06 10:49:38');
INSERT INTO `oc_order_history` VALUES(213, 592736816, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-11-08 15:24:27');
INSERT INTO `oc_order_history` VALUES(214, 493942261, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-11-13 13:41:58');
INSERT INTO `oc_order_history` VALUES(215, 607359619, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-11-13 13:45:23');
INSERT INTO `oc_order_history` VALUES(216, 581890564, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-11-13 13:47:12');
INSERT INTO `oc_order_history` VALUES(217, 638115845, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-11-13 13:49:57');
INSERT INTO `oc_order_history` VALUES(218, 723647156, 1, 1, 'text_instruction\n\nTransfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading\n\ntext_payment', '2013-11-13 13:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY  (`order_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` VALUES(1, 2, 2, 228, 17, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(2, 2, 2, 229, 22, 'color', 'purple', 'select');
INSERT INTO `oc_order_option` VALUES(3, 3, 3, 228, 17, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(4, 3, 3, 229, 21, 'color', 'white', 'select');
INSERT INTO `oc_order_option` VALUES(5, 4, 4, 228, 17, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(6, 4, 4, 229, 21, 'color', 'white', 'select');
INSERT INTO `oc_order_option` VALUES(7, 5, 5, 233, 33, 'color', 'red', 'select');
INSERT INTO `oc_order_option` VALUES(8, 5, 5, 232, 32, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(9, 6, 6, 233, 33, 'color', 'red', 'select');
INSERT INTO `oc_order_option` VALUES(10, 6, 6, 232, 32, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(11, 7, 7, 233, 33, 'color', 'red', 'select');
INSERT INTO `oc_order_option` VALUES(12, 7, 7, 232, 32, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(13, 8, 8, 233, 33, 'color', 'red', 'select');
INSERT INTO `oc_order_option` VALUES(14, 8, 8, 232, 32, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(15, 9, 9, 241, 54, 'size', 'L', 'select');
INSERT INTO `oc_order_option` VALUES(16, 10, 10, 235, 41, 'color', 'white', 'select');
INSERT INTO `oc_order_option` VALUES(17, 11, 11, 235, 39, 'color', 'green', 'select');
INSERT INTO `oc_order_option` VALUES(18, 12, 12, 235, 40, 'color', 'purple', 'select');
INSERT INTO `oc_order_option` VALUES(19, 13, 13, 231, 28, 'color', 'purple', 'select');
INSERT INTO `oc_order_option` VALUES(20, 13, 13, 230, 25, 'size', 'M', 'select');
INSERT INTO `oc_order_option` VALUES(21, 14, 14, 229, 22, 'color', 'purple', 'select');
INSERT INTO `oc_order_option` VALUES(22, 14, 14, 228, 19, 'size', 'M', 'select');
INSERT INTO `oc_order_option` VALUES(23, 16, 16, 242, 55, 'size', 'M', 'select');
INSERT INTO `oc_order_option` VALUES(24, 16, 16, 243, 56, 'color', 'white', 'select');
INSERT INTO `oc_order_option` VALUES(25, 17, 17, 242, 55, 'size', 'M', 'select');
INSERT INTO `oc_order_option` VALUES(26, 17, 17, 243, 56, 'color', 'white', 'select');
INSERT INTO `oc_order_option` VALUES(27, 18, 18, 238, 52, 'color', 'red', 'select');
INSERT INTO `oc_order_option` VALUES(28, 0, 22, 237, 51, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(29, 853944560, 23, 230, 25, 'size', 'M', 'select');
INSERT INTO `oc_order_option` VALUES(30, 853944560, 23, 231, 27, 'color', 'green', 'select');
INSERT INTO `oc_order_option` VALUES(31, 379065580, 26, 235, 42, 'color', 'red', 'select');
INSERT INTO `oc_order_option` VALUES(32, 687697201, 28, 235, 41, 'color', 'white', 'select');
INSERT INTO `oc_order_option` VALUES(33, 733063684, 37, 234, 38, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(34, 733063684, 37, 235, 42, 'color', 'red', 'select');
INSERT INTO `oc_order_option` VALUES(35, 114736514, 38, 249, 74, 'color', 'green', 'select');
INSERT INTO `oc_order_option` VALUES(36, 585303106, 39, 234, 38, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(37, 585303106, 39, 235, 42, 'color', 'red', 'select');
INSERT INTO `oc_order_option` VALUES(38, 920306331, 40, 249, 74, 'color', 'green', 'select');
INSERT INTO `oc_order_option` VALUES(39, 466925650, 43, 237, 51, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(40, 280509759, 44, 237, 51, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(41, 921996235, 45, 237, 51, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(42, 700404494, 47, 242, 61, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(43, 700404494, 47, 243, 56, 'color', 'white', 'select');
INSERT INTO `oc_order_option` VALUES(44, 370537920, 55, 234, 38, 'size', 'S', 'select');
INSERT INTO `oc_order_option` VALUES(45, 370537920, 55, 235, 42, 'color', 'red', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL default '0.0000',
  `total` decimal(15,4) NOT NULL default '0.0000',
  `tax` decimal(15,4) NOT NULL default '0.0000',
  `reward` int(8) NOT NULL,
  `greetingId` int(11) NOT NULL,
  `greetingName` varchar(100) NOT NULL,
  `greetingPrice` int(5) NOT NULL,
  `wrappingId` int(11) NOT NULL,
  `wrappingName` varchar(100) NOT NULL,
  `wrappingPrice` int(5) NOT NULL,
  `color` varchar(100) default NULL,
  `size` varchar(100) default NULL,
  PRIMARY KEY  (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=228 ;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` VALUES(1, 1, 55, 'Chocolates', '11115', 3, 50.0000, 150.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(2, 2, 55, 'Chocolates', '11115', 1, 50.0000, 50.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(3, 3, 55, 'Chocolates', '11115', 2, 50.0000, 100.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(4, 4, 55, 'Chocolates', '11115', 2, 50.0000, 100.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(5, 5, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(6, 6, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(7, 7, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(8, 8, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(9, 9, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(10, 10, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 0, '', 0, 57, 'Standard wrapper1', 15, '', '');
INSERT INTO `oc_order_product` VALUES(11, 11, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(12, 12, 56, 'Flower', '11116', 2, 75.0000, 150.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 200, 57, 'Standard wrapper1', 30, '', '');
INSERT INTO `oc_order_product` VALUES(13, 13, 60, 'Chess', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(14, 14, 55, 'Chocolates', '11115', 2, 50.0000, 100.0000, 0.0000, 0, 63, 'Premium GREETING CARD1', 200, 62, 'Premium Wrapping Paper1', 200, '', '');
INSERT INTO `oc_order_product` VALUES(15, 15, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 57, 'Standard wrapper1', 15, '', '');
INSERT INTO `oc_order_product` VALUES(16, 16, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(17, 17, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 63, 'Premium GREETING CARD1', 100, 57, 'Premium wrapper1', 15, '', '');
INSERT INTO `oc_order_product` VALUES(18, 18, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(19, 19, 58, 'Perfume', '1110', 7, 20.0000, 140.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(20, 20, 58, 'Perfume', '1110', 3, 20.0000, 60.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 15, 66, 'Premium Creative Wrapping Ideas', 150, '', '');
INSERT INTO `oc_order_product` VALUES(21, 21, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(22, 0, 53, 'Necklace', '11112', 1, 2500.0000, 2500.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(23, 853944560, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(24, 803147813, 58, 'Perfume', '1110', 1, 20.0000, 20.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 5, 66, 'Premium Creative Wrapping Ideas', 50, '', '');
INSERT INTO `oc_order_product` VALUES(25, 379065580, 58, 'Perfume', '1110', 1, 20.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(26, 379065580, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(27, 992437411, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(28, 687697201, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(29, 66740059, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 100, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(30, 66740059, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 100, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(31, 554664240, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(32, 305076579, 58, 'Perfume', '1110', 1, 20.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(33, 305076579, 53, 'Necklace', '11112', 2, 2500.0000, 5000.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 200, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(34, 100572830, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(35, 322563865, 53, 'Necklace', '11112', 2, 2500.0000, 5000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(36, 843188137, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(37, 733063684, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(38, 114736514, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 100, 66, 'Premium Creative Wrapping Ideas', 50, '', '');
INSERT INTO `oc_order_product` VALUES(39, 585303106, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(40, 920306331, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 100, 66, 'Premium Creative Wrapping Ideas', 50, '', '');
INSERT INTO `oc_order_product` VALUES(41, 976643814, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(42, 956529302, 58, 'Perfume', '1110', 1, 20.0000, 20.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 100, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(43, 466925650, 53, 'Necklace', '11112', 5, 2500.0000, 12500.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(44, 280509759, 53, 'Necklace', '11112', 5, 2500.0000, 12500.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(45, 921996235, 53, 'Necklace', '11112', 5, 2500.0000, 12500.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(46, 133337966, 53, 'Necklace', '11112', 5, 2500.0000, 12500.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(47, 700404494, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(48, 489666742, 53, 'Necklace', '11112', 5, 2500.0000, 12500.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(49, 12339082, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(50, 317809087, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(51, 564897504, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(52, 284882521, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(53, 237064491, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(54, 657782982, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(55, 370537920, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(56, 861419805, 56, 'Flower', '11116', 2, 75.0000, 150.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(57, 861419805, 55, 'Chocolates', '11115', 4, 50.0000, 200.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'black', '');
INSERT INTO `oc_order_product` VALUES(58, 796848319, 55, 'Chocolates', '11115', 1, 50.0000, 50.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'White', '');
INSERT INTO `oc_order_product` VALUES(59, 612785305, 55, 'Chocolates', '11115', 1, 50.0000, 50.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(60, 654148046, 55, 'Chocolates', '11115', 2, 50.0000, 100.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(62, 996871560, 55, 'Chocolates', '11115', 3, 50.0000, 150.0000, 0.0000, 0, 0, '', 0, 57, 'Standard wrapper1', 45, 'White', '');
INSERT INTO `oc_order_product` VALUES(61, 996871560, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 100, 57, 'Standard wrapper1', 15, '', '');
INSERT INTO `oc_order_product` VALUES(63, 530891362, 61, 'Mobile TV', 'Mobile TV', 1, 30.0000, 30.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 100, 67, 'Premium Creative Wrapping Paper ', 5, '', '');
INSERT INTO `oc_order_product` VALUES(64, 397687877, 60, 'Chess', '1110', 10, 10000.0000, 100000.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 50, 67, 'Premium Creative Wrapping Paper ', 50, 'red', '');
INSERT INTO `oc_order_product` VALUES(65, 337585482, 56, 'Flower', '11116', 2, 75.0000, 150.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 70010, 67, 'Premium Creative Wrapping Paper ', 70010, '', '');
INSERT INTO `oc_order_product` VALUES(66, 322686728, 55, 'Chocolates', '11115', 5, 50.0000, 250.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 500, 62, 'Standard Wrapping Paper1', 500, 'blue', '');
INSERT INTO `oc_order_product` VALUES(67, 787989254, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(68, 221090638, 60, 'Chess', '1110', 25, 10000.0000, 250000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', '');
INSERT INTO `oc_order_product` VALUES(69, 289439425, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 64, 'Standard Wraping papers for gift', 10, 'orange', '');
INSERT INTO `oc_order_product` VALUES(70, 72118865, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(71, 710898599, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(72, 135482351, 70, 'Test 12', 'Test 12', 3, 1000.0000, 3000.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 105015, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(74, 190308519, 70, 'Test 12', 'Test 12', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(75, 44929529, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 35005, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(76, 385984997, 60, 'Chess', '1110', 5, 10000.0000, 50000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'Red', '');
INSERT INTO `oc_order_product` VALUES(77, 138478641, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', 'small');
INSERT INTO `oc_order_product` VALUES(78, 443599723, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 100, 57, 'Standard wrapper1', 15, 'blue', 'small');
INSERT INTO `oc_order_product` VALUES(79, 640025542, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(80, 145905119, 70, 'Test 12', 'Test 12', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(81, 323438655, 70, 'Test 12', 'Test 12', 5, 1000.0000, 5000.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 500, 57, 'Standard wrapper1', 75, '', '');
INSERT INTO `oc_order_product` VALUES(82, 27830313, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 35005, 67, 'Premium Creative Wrapping Paper ', 35005, '', '');
INSERT INTO `oc_order_product` VALUES(83, 921716748, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 35005, 67, 'Premium Creative Wrapping Paper ', 35005, '', '');
INSERT INTO `oc_order_product` VALUES(84, 770386932, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 35005, 66, 'Premium Creative Wrapping Ideas', 35050, 'white', 'xxl');
INSERT INTO `oc_order_product` VALUES(85, 296327424, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 100, 67, 'Premium Creative Wrapping Paper ', 35005, '', '');
INSERT INTO `oc_order_product` VALUES(86, 105394872, 72, 'Glass', 'KUDASDAS', 1, 10000.0000, 10000.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 35005, 67, 'Premium Creative Wrapping Paper ', 35005, 'white', 'medium');
INSERT INTO `oc_order_product` VALUES(87, 195368921, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 67, 'Premium Creative Wrapping Paper ', 35005, 66, 'Premium Creative Wrapping Ideas', 35050, '', '');
INSERT INTO `oc_order_product` VALUES(88, 784914250, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 64, 'Standard Wraping papers for gift', 10, '', '');
INSERT INTO `oc_order_product` VALUES(89, 155382782, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 57, 'Standard wrapper1', 15, '', '');
INSERT INTO `oc_order_product` VALUES(90, 355044162, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 57, 'Standard wrapper1', 15, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(91, 515490112, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(92, 52712899, 56, 'Flower', '11116', 1, 75.0000, 75.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(93, 693279392, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(94, 734666243, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(95, 197468075, 55, 'Chocolates', '11115', 1, 50.0000, 50.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', '');
INSERT INTO `oc_order_product` VALUES(96, 512142572, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(97, 116598667, 59, 'Marker', '1110', 3, 10.0000, 30.0000, 0.0000, 0, 0, '', 0, 66, 'Premium Creative Wrapping Ideas', 105150, '', '');
INSERT INTO `oc_order_product` VALUES(98, 51462590, 56, 'Flower', '11116', 2, 75.0000, 150.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 200, 66, 'Premium Creative Wrapping Ideas', 70100, 'Red', 'small');
INSERT INTO `oc_order_product` VALUES(99, 204217338, 56, 'Flower', '11116', 2, 75.0000, 150.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 200, 66, 'Premium Creative Wrapping Ideas', 70100, 'Red', 'small');
INSERT INTO `oc_order_product` VALUES(100, 810851330, 56, 'Flower', '11116', 2, 75.0000, 150.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 200, 66, 'Premium Creative Wrapping Ideas', 70100, 'Red', 'small');
INSERT INTO `oc_order_product` VALUES(101, 241631894, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'beige', 'small');
INSERT INTO `oc_order_product` VALUES(102, 112833044, 55, 'Chocolates', '11115', 2, 50.0000, 100.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 200, 64, 'Standard Wraping papers for gift', 20, 'blue', '');
INSERT INTO `oc_order_product` VALUES(103, 525586252, 55, 'Chocolates', '11115', 2, 50.0000, 100.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 200, 64, 'Standard Wraping papers for gift', 20, 'blue', '');
INSERT INTO `oc_order_product` VALUES(104, 72172355, 55, 'Chocolates', '11115', 2, 50.0000, 100.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 200, 64, 'Standard Wraping papers for gift', 20, 'blue', '');
INSERT INTO `oc_order_product` VALUES(105, 111236931, 52, 'Dinner set', '11111', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(106, 390885524, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(107, 583630322, 74, 'Cosmetic pouch', 'Pouch', 1, 50000.0000, 50000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(108, 780484685, 72, 'Glass', 'KUDASDAS', 1, 10000.0000, 10000.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 100, 64, 'Standard Wraping papers for gift', 10, 'Red', '');
INSERT INTO `oc_order_product` VALUES(109, 561648561, 74, 'Cosmetic pouch', 'Pouch', 1, 50000.0000, 50000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(110, 680520522, 74, 'Cosmetic pouch', 'Pouch', 1, 50000.0000, 50000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(111, 447446076, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 66, 'Premium Creative Wrapping Ideas', 35050, '', '');
INSERT INTO `oc_order_product` VALUES(112, 198814304, 58, 'Perfume', '1110', 1, 20.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(113, 810032269, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(114, 882489736, 72, 'Glass', 'KUDASDAS', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'Red', '');
INSERT INTO `oc_order_product` VALUES(115, 688125180, 75, 'Market Bag', 'Market Bag', 1, 650000.0000, 650000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(116, 328284535, 77, 'Calendula Hydrate', 'adhf', 1, 200000.0000, 200000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(117, 683914716, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(118, 659381945, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(119, 392701278, 55, 'Chocolates', '11115', 1, 50.0000, 50.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', '');
INSERT INTO `oc_order_product` VALUES(120, 892920547, 78, 'Candle Pot', 'Candle', 1, 50000.0000, 50000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(121, 260135640, 59, 'Marker', '1110', 2, 10.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(122, 426755613, 59, 'Marker', '1110', 3, 10.0000, 30.0000, 0.0000, 0, 0, '', 0, 67, 'Premium Creative Wrapping Paper ', 105015, '', '');
INSERT INTO `oc_order_product` VALUES(123, 153939129, 54, 'Watch', '11113', 2, 1300.0000, 2600.0000, 0.0000, 0, 63, 'Standard GREETING CARD1', 200, 67, 'Premium Creative Wrapping Paper ', 70010, '', '');
INSERT INTO `oc_order_product` VALUES(124, 538173218, 72, 'Glass', 'KUDASDAS', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'Red', '');
INSERT INTO `oc_order_product` VALUES(125, 415087891, 58, 'Perfume', '1110', 1, 20.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(126, 123659057, 72, 'Glass', 'KUDASDAS', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'white', 'medium');
INSERT INTO `oc_order_product` VALUES(127, 647874451, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(128, 814314576, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(129, 21178588, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(130, 141333313, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(131, 452400207, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(132, 744282227, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(133, 744282227, 74, 'Cosmetic pouch', 'Pouch', 1, 50000.0000, 50000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(134, 338016052, 74, 'Cosmetic pouch', 'Pouch', 1, 50000.0000, 50000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(135, 279494629, 72, 'Glass', 'KUDASDAS', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'Red', '');
INSERT INTO `oc_order_product` VALUES(136, 279494629, 52, 'Dinner set', '11111', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(137, 437837830, 72, 'Glass', 'KUDASDAS', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'Red', '');
INSERT INTO `oc_order_product` VALUES(138, 26979370, 55, 'Chocolates', '11115', 1, 50.0000, 50.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', '');
INSERT INTO `oc_order_product` VALUES(139, 211184387, 59, 'Marker', '1110', 2, 10.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(140, 376990051, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', 'small');
INSERT INTO `oc_order_product` VALUES(141, 138100586, 72, 'Glass', 'KUDASDAS', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'white', 'medium');
INSERT INTO `oc_order_product` VALUES(142, 238435974, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(143, 303392639, 60, 'Chess', '1110', 2, 10000.0000, 20000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', 'small');
INSERT INTO `oc_order_product` VALUES(144, 898365479, 60, 'Chess', '1110', 2, 10000.0000, 20000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', 'small');
INSERT INTO `oc_order_product` VALUES(145, 898365479, 56, 'Flower', '11116', 3, 75.0000, 225.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'white', 'medium');
INSERT INTO `oc_order_product` VALUES(146, 105501403, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(147, 105501403, 69, 'abc', 'adasdsa', 2, 500000.0000, 1000000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(148, 296322937, 59, 'Marker', '1110', 2, 10.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(149, 296322937, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', 'small');
INSERT INTO `oc_order_product` VALUES(150, 833408814, 73, 'test 123', 'test123', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(151, 384241028, 55, 'Chocolates', '11115', 2, 50.0000, 100.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', '');
INSERT INTO `oc_order_product` VALUES(152, 708994141, 69, 'abc', 'adasdsa', 2, 500000.0000, 1000000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(153, 551194763, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(154, 700232544, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(155, 90062866, 72, 'Glass', 'KUDASDAS', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'white', 'medium');
INSERT INTO `oc_order_product` VALUES(156, 90062866, 60, 'Chess', '1110', 1, 10000.0000, 10000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', 'small');
INSERT INTO `oc_order_product` VALUES(157, 273301086, 69, 'abc', 'adasdsa', 2, 500000.0000, 1000000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(158, 546813965, 54, 'Watch', '11113', 2, 1300.0000, 2600.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(159, 748632813, 73, 'test 123', 'test123', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(160, 157889709, 58, 'Perfume', '1110', 2, 20.0000, 40.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(161, 83839111, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(162, 684491883, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(163, 36405639, 52, 'Dinner set', '11111', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(164, 364663391, 69, 'abc', 'adasdsa', 2, 500000.0000, 1000000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(165, 963020020, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(166, 854527283, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(167, 187618713, 73, 'test 123', 'test123', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(168, 877337647, 54, 'Watch', '11113', 2, 1300.0000, 2600.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(169, 519894714, 52, 'Dinner set', '11111', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(170, 867609253, 60, 'Chess', '1110', 2, 10000.0000, 20000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', 'small');
INSERT INTO `oc_order_product` VALUES(171, 159460754, 69, 'abc', 'adasdsa', 2, 500000.0000, 1000000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(172, 264750976, 59, 'Marker', '1110', 2, 10.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(173, 790476990, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(174, 299495239, 59, 'Marker', '1110', 3, 10.0000, 30.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(175, 410707092, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(176, 639263916, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(177, 891507264, 55, 'Chocolates', '11115', 1, 50.0000, 50.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', '');
INSERT INTO `oc_order_product` VALUES(178, 422097168, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(179, 317532043, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(180, 701259766, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(181, 846067810, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(182, 959334107, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(183, 755370178, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(184, 110577087, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(185, 840659790, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(186, 67131652, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(187, 94111328, 73, 'test 123', 'test123', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(188, 210882263, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(189, 754645081, 60, 'Chess', '1110', 2, 10000.0000, 20000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', 'small');
INSERT INTO `oc_order_product` VALUES(190, 524940186, 73, 'test 123', 'test123', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(191, 134626159, 59, 'Marker', '1110', 2, 10.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(192, 731774292, 52, 'Dinner set', '11111', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'yellow', 'medium');
INSERT INTO `oc_order_product` VALUES(193, 744916687, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(194, 558959351, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(195, 578899536, 59, 'Marker', '1110', 2, 10.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(196, 416507873, 73, 'test 123', 'test123', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(197, 727242432, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(198, 649264221, 73, 'test 123', 'test123', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(199, 725339051, 73, 'test 123', 'test123', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(200, 859391480, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(201, 294268493, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(202, 465331116, 59, 'Marker', '1110', 1, 10.0000, 10.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(203, 909302369, 69, 'abc', 'adasdsa', 2, 500000.0000, 1000000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(204, 644581299, 73, 'test 123', 'test123', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(205, 147224731, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(206, 625245361, 73, 'test 123', 'test123', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(207, 174989929, 73, 'test 123', 'test123', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(208, 997069397, 69, 'abc', 'adasdsa', 2, 500000.0000, 1000000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(209, 60907898, 59, 'Marker', '1110', 2, 10.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(210, 924801331, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(211, 92721557, 73, 'test 123', 'test123', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(212, 58339843, 69, 'abc', 'adasdsa', 2, 500000.0000, 1000000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(213, 234689636, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(214, 447445373, 69, 'abc', 'adasdsa', 1, 500000.0000, 500000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(215, 972808838, 73, 'test 123', 'test123', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(216, 726456909, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(217, 933079529, 69, 'abc', 'adasdsa', 2, 500000.0000, 1000000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(219, 735883179, 65, 'ETC MEN BLACK ACCESSORY ', '1123344', 1, 599.0000, 599.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(220, 365267639, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(221, 352638855, 55, 'Chocolates', '11115', 1, 50.0000, 50.0000, 0.0000, 0, 0, '', 0, 0, '', 0, 'blue', '');
INSERT INTO `oc_order_product` VALUES(222, 592736816, 73, 'test 123', 'test123', 2, 1000.0000, 2000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(223, 493942261, 54, 'Watch', '11113', 1, 1300.0000, 1300.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(224, 607359619, 58, 'Perfume', '1110', 1, 20.0000, 20.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(225, 581890564, 73, 'test 123', 'test123', 1, 1000.0000, 1000.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(226, 638115845, 81, 'gaganame', 'gaga model', 1, 0.0000, 0.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');
INSERT INTO `oc_order_product` VALUES(227, 723647156, 85, 'MIKASA SIGMA SINGEKO NO KYOJIN', 'dvd', 1, 0.0000, 0.0000, 0.0000, 0, 0, '', 0, 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY  (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` VALUES(2, 1, 'Processing');
INSERT INTO `oc_order_status` VALUES(3, 1, 'Shipped');
INSERT INTO `oc_order_status` VALUES(7, 1, 'Canceled');
INSERT INTO `oc_order_status` VALUES(5, 1, 'Complete');
INSERT INTO `oc_order_status` VALUES(8, 1, 'Denied');
INSERT INTO `oc_order_status` VALUES(9, 1, 'Canceled Reversal');
INSERT INTO `oc_order_status` VALUES(10, 1, 'Failed');
INSERT INTO `oc_order_status` VALUES(11, 1, 'Refunded');
INSERT INTO `oc_order_status` VALUES(12, 1, 'Reversed');
INSERT INTO `oc_order_status` VALUES(13, 1, 'Chargeback');
INSERT INTO `oc_order_status` VALUES(1, 1, 'Pending');
INSERT INTO `oc_order_status` VALUES(16, 1, 'Voided');
INSERT INTO `oc_order_status` VALUES(15, 1, 'Processed');
INSERT INTO `oc_order_status` VALUES(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL default '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY  (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=830 ;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` VALUES(1, 1, 'sub_total', 'Sub-Total', 'IDR 150', 150.0000, 1);
INSERT INTO `oc_order_total` VALUES(2, 1, 'shipping', 'Flat Shipping Rate', 'IDR 5', 5.0000, 3);
INSERT INTO `oc_order_total` VALUES(3, 1, 'total', 'Total', 'IDR 155', 155.0000, 9);
INSERT INTO `oc_order_total` VALUES(4, 2, 'sub_total', 'Sub-Total', 'IDR 50', 50.0000, 1);
INSERT INTO `oc_order_total` VALUES(5, 2, 'total', 'Total', 'IDR 50', 50.0000, 3);
INSERT INTO `oc_order_total` VALUES(6, 3, 'sub_total', 'Sub-Total', 'IDR 100', 100.0000, 1);
INSERT INTO `oc_order_total` VALUES(7, 3, 'total', 'Total', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(8, 4, 'sub_total', 'Sub-Total', 'IDR 100', 100.0000, 1);
INSERT INTO `oc_order_total` VALUES(9, 4, 'total', 'Total', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(10, 5, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(11, 5, 'total', 'Total', 'IDR 1000', 1000.0000, 3);
INSERT INTO `oc_order_total` VALUES(12, 6, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(13, 6, 'total', 'Total', 'IDR 1000', 1000.0000, 3);
INSERT INTO `oc_order_total` VALUES(14, 7, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(15, 7, 'total', 'Total', 'IDR 1000', 1000.0000, 3);
INSERT INTO `oc_order_total` VALUES(16, 8, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(17, 8, 'total', 'Total', 'IDR 1000', 1000.0000, 3);
INSERT INTO `oc_order_total` VALUES(18, 9, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(19, 9, 'total', 'Total', 'IDR 10', 10.0000, 3);
INSERT INTO `oc_order_total` VALUES(20, 10, 'sub_total', 'Sub-Total', 'IDR 75', 75.0000, 1);
INSERT INTO `oc_order_total` VALUES(21, 10, 'total', 'Total', 'IDR 75', 75.0000, 3);
INSERT INTO `oc_order_total` VALUES(22, 11, 'sub_total', 'Sub-Total', 'IDR 75', 75.0000, 1);
INSERT INTO `oc_order_total` VALUES(23, 11, 'coupon', 'Coupon(12345)', 'IDR -20', -20.0000, 2);
INSERT INTO `oc_order_total` VALUES(24, 11, 'total', 'Total', 'IDR 55', 55.0000, 3);
INSERT INTO `oc_order_total` VALUES(25, 12, 'sub_total', 'Sub-Total', 'IDR 150', 150.0000, 1);
INSERT INTO `oc_order_total` VALUES(26, 12, 'total', 'Total', 'IDR 150', 150.0000, 3);
INSERT INTO `oc_order_total` VALUES(27, 13, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(28, 13, 'total', 'Total', 'IDR 10', 10.0000, 3);
INSERT INTO `oc_order_total` VALUES(29, 14, 'sub_total', 'Sub-Total', 'IDR 100', 100.0000, 1);
INSERT INTO `oc_order_total` VALUES(30, 14, 'total', 'Total', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(31, 15, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(32, 15, 'total', 'Total', 'IDR 10', 10.0000, 3);
INSERT INTO `oc_order_total` VALUES(33, 16, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(34, 16, 'total', 'Total', 'IDR 599', 599.0000, 3);
INSERT INTO `oc_order_total` VALUES(35, 17, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(36, 17, 'total', 'Total', 'IDR 599', 599.0000, 3);
INSERT INTO `oc_order_total` VALUES(37, 18, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(38, 18, 'total', 'Total', 'IDR 30', 30.0000, 3);
INSERT INTO `oc_order_total` VALUES(39, 19, 'sub_total', 'Sub-Total', 'IDR 140', 140.0000, 1);
INSERT INTO `oc_order_total` VALUES(40, 19, 'total', 'Total', 'IDR 140', 140.0000, 3);
INSERT INTO `oc_order_total` VALUES(41, 20, 'sub_total', 'Sub-Total', 'IDR 60', 60.0000, 1);
INSERT INTO `oc_order_total` VALUES(42, 20, 'total', 'Total', 'IDR 60', 60.0000, 3);
INSERT INTO `oc_order_total` VALUES(43, 21, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(44, 21, 'total', 'Total', 'IDR 10', 10.0000, 3);
INSERT INTO `oc_order_total` VALUES(45, 0, 'sub_total', 'Sub-Total', 'IDR 2500', 2500.0000, 1);
INSERT INTO `oc_order_total` VALUES(46, 0, 'total', 'Total', 'IDR 2500', 2500.0000, 3);
INSERT INTO `oc_order_total` VALUES(47, 853944560, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(48, 853944560, 'total', 'Total', 'IDR 10000', 10000.0000, 3);
INSERT INTO `oc_order_total` VALUES(49, 803147813, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(50, 803147813, 'total', 'Total', 'IDR 20', 20.0000, 3);
INSERT INTO `oc_order_total` VALUES(51, 379065580, 'sub_total', 'Sub-Total', 'IDR 95', 95.0000, 1);
INSERT INTO `oc_order_total` VALUES(52, 379065580, 'total', 'Total', 'IDR 95', 95.0000, 3);
INSERT INTO `oc_order_total` VALUES(53, 992437411, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(54, 992437411, 'total', 'Total', 'IDR 30', 30.0000, 3);
INSERT INTO `oc_order_total` VALUES(55, 687697201, 'sub_total', 'Sub-Total', 'IDR 75', 75.0000, 1);
INSERT INTO `oc_order_total` VALUES(56, 687697201, 'total', 'Total', 'IDR 75', 75.0000, 3);
INSERT INTO `oc_order_total` VALUES(57, 66740059, 'sub_total', 'Sub-Total', 'IDR 629', 629.0000, 1);
INSERT INTO `oc_order_total` VALUES(58, 66740059, 'addon', 'Add-Ons', 'IDR 200', 200.0000, 2);
INSERT INTO `oc_order_total` VALUES(59, 66740059, 'shipping', 'Shipping', 'IDR 1100', 1100.0000, 3);
INSERT INTO `oc_order_total` VALUES(60, 66740059, 'total', 'Total', 'IDR 1929', 1929.0000, 3);
INSERT INTO `oc_order_total` VALUES(61, 554664240, 'sub_total', 'Sub-Total', 'IDR 75', 75.0000, 1);
INSERT INTO `oc_order_total` VALUES(62, 554664240, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(63, 554664240, 'shipping', 'Shipping', 'IDR 0', 0.0000, 3);
INSERT INTO `oc_order_total` VALUES(64, 554664240, 'total', 'Total', 'IDR 75', 75.0000, 3);
INSERT INTO `oc_order_total` VALUES(65, 305076579, 'sub_total', 'Sub-Total', 'IDR 5020', 5020.0000, 1);
INSERT INTO `oc_order_total` VALUES(66, 305076579, 'addon', 'Add-Ons', 'IDR 200', 200.0000, 2);
INSERT INTO `oc_order_total` VALUES(67, 305076579, 'shipping', 'Shipping', 'IDR 200', 200.0000, 3);
INSERT INTO `oc_order_total` VALUES(68, 305076579, 'coupon', 'Coupon(1122)', 'IDR -5000', -5000.0000, 2);
INSERT INTO `oc_order_total` VALUES(69, 305076579, 'total', 'Total', 'IDR 420', 420.0000, 3);
INSERT INTO `oc_order_total` VALUES(70, 100572830, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(71, 100572830, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(72, 100572830, 'shipping', 'Shipping', 'IDR 0', 0.0000, 3);
INSERT INTO `oc_order_total` VALUES(73, 100572830, 'coupon', 'Coupon(1122)', 'IDR -10', -10.0000, 2);
INSERT INTO `oc_order_total` VALUES(74, 100572830, 'total', 'Total', 'IDR 0', 0.0000, 3);
INSERT INTO `oc_order_total` VALUES(75, 322563865, 'sub_total', 'Sub-Total', 'IDR 5000', 5000.0000, 1);
INSERT INTO `oc_order_total` VALUES(76, 322563865, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(77, 322563865, 'shipping', 'Shipping', 'IDR 0', 0.0000, 3);
INSERT INTO `oc_order_total` VALUES(78, 322563865, 'coupon', 'Coupon(1122)', 'IDR -5000', -5000.0000, 2);
INSERT INTO `oc_order_total` VALUES(79, 322563865, 'total', 'Total', 'IDR 0', 0.0000, 3);
INSERT INTO `oc_order_total` VALUES(80, 843188137, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(81, 843188137, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(82, 843188137, 'shipping', 'Shipping', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(83, 843188137, 'coupon', 'Coupon(1122)', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(84, 843188137, 'total', 'Total', 'IDR 130', 130.0000, 3);
INSERT INTO `oc_order_total` VALUES(85, 733063684, 'sub_total', 'Sub-Total', 'IDR 75', 75.0000, 1);
INSERT INTO `oc_order_total` VALUES(86, 733063684, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(87, 733063684, 'shipping', 'Shipping', 'IDR 0', 0.0000, 3);
INSERT INTO `oc_order_total` VALUES(88, 733063684, 'coupon', 'Coupon(1122)', 'IDR -75', -75.0000, 2);
INSERT INTO `oc_order_total` VALUES(89, 733063684, 'total', 'Total', 'IDR 0', 0.0000, 3);
INSERT INTO `oc_order_total` VALUES(90, 114736514, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(91, 114736514, 'addon', 'Add-Ons', 'IDR 150', 150.0000, 2);
INSERT INTO `oc_order_total` VALUES(92, 114736514, 'shipping', 'Shipping', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(93, 114736514, 'coupon', 'Coupon(1122)', 'IDR -4925', -4925.0000, 2);
INSERT INTO `oc_order_total` VALUES(94, 114736514, 'total', 'Total', 'IDR 5325', 5325.0000, 3);
INSERT INTO `oc_order_total` VALUES(95, 585303106, 'sub_total', 'Sub-Total', 'IDR 75', 75.0000, 1);
INSERT INTO `oc_order_total` VALUES(96, 585303106, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(97, 585303106, 'shipping', 'Shipping', 'IDR 0', 0.0000, 3);
INSERT INTO `oc_order_total` VALUES(98, 585303106, 'coupon', 'Coupon(1122)', 'IDR -75', -75.0000, 2);
INSERT INTO `oc_order_total` VALUES(99, 585303106, 'total', 'Total', 'IDR 0', 0.0000, 3);
INSERT INTO `oc_order_total` VALUES(100, 920306331, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(101, 920306331, 'addon', 'Add-Ons', 'IDR 150', 150.0000, 2);
INSERT INTO `oc_order_total` VALUES(102, 920306331, 'shipping', 'Shipping', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(103, 920306331, 'coupon', 'Coupon(1122)', 'IDR -4925', -4925.0000, 2);
INSERT INTO `oc_order_total` VALUES(104, 920306331, 'total', 'Total', 'IDR 5325', 5325.0000, 3);
INSERT INTO `oc_order_total` VALUES(107, 976643814, 'shipping', 'Shipping', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(106, 976643814, 'addon', 'Add-Ons', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(109, 956529302, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(110, 956529302, 'addon', 'Add-Ons', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(111, 956529302, 'shipping', 'Shipping', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(112, 956529302, 'total', 'Total', 'IDR 220', 220.0000, 3);
INSERT INTO `oc_order_total` VALUES(113, 466925650, 'sub_total', 'Sub-Total', 'IDR 12500', 12500.0000, 1);
INSERT INTO `oc_order_total` VALUES(114, 466925650, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(115, 466925650, 'shipping', 'Shipping', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(116, 466925650, 'total', 'Total', 'IDR 12600', 12600.0000, 3);
INSERT INTO `oc_order_total` VALUES(117, 280509759, 'sub_total', 'Sub-Total', 'IDR 12500', 12500.0000, 1);
INSERT INTO `oc_order_total` VALUES(118, 280509759, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(119, 280509759, 'shipping', 'Shipping', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(120, 280509759, 'total', 'Total', 'IDR 12600', 12600.0000, 3);
INSERT INTO `oc_order_total` VALUES(121, 921996235, 'sub_total', 'Sub-Total', 'IDR 12500', 12500.0000, 1);
INSERT INTO `oc_order_total` VALUES(122, 921996235, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(123, 921996235, 'shipping', 'Shipping', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(124, 921996235, 'total', 'Total', 'IDR 12600', 12600.0000, 3);
INSERT INTO `oc_order_total` VALUES(125, 133337966, 'sub_total', 'Sub-Total', 'IDR 12500', 12500.0000, 1);
INSERT INTO `oc_order_total` VALUES(126, 133337966, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(127, 133337966, 'shipping', 'Shipping', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(128, 133337966, 'total', 'Total', 'IDR 12600', 12600.0000, 3);
INSERT INTO `oc_order_total` VALUES(129, 700404494, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(130, 700404494, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(131, 700404494, 'shipping', 'Shipping', 'IDR 0', 0.0000, 3);
INSERT INTO `oc_order_total` VALUES(132, 700404494, 'total', 'Total', 'IDR 599', 599.0000, 3);
INSERT INTO `oc_order_total` VALUES(133, 489666742, 'sub_total', 'Sub-Total', 'IDR 12500', 12500.0000, 1);
INSERT INTO `oc_order_total` VALUES(134, 489666742, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(135, 489666742, 'shipping', 'Shipping', 'IDR 100', 100.0000, 3);
INSERT INTO `oc_order_total` VALUES(136, 489666742, 'total', 'Total', 'IDR 12600', 12600.0000, 3);
INSERT INTO `oc_order_total` VALUES(137, 12339082, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(138, 12339082, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(139, 12339082, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(140, 12339082, 'total', 'Total', 'IDR 10100', 10100.0000, 4);
INSERT INTO `oc_order_total` VALUES(141, 317809087, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(142, 317809087, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(143, 317809087, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(144, 317809087, 'total', 'Total', 'IDR 130', 130.0000, 4);
INSERT INTO `oc_order_total` VALUES(145, 564897504, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(146, 564897504, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(147, 564897504, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(148, 564897504, 'total', 'Total', 'IDR 130', 130.0000, 4);
INSERT INTO `oc_order_total` VALUES(149, 284882521, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(150, 284882521, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(151, 284882521, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(152, 284882521, 'total', 'Total', 'IDR 130', 130.0000, 4);
INSERT INTO `oc_order_total` VALUES(153, 237064491, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(154, 237064491, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(155, 237064491, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(156, 237064491, 'total', 'Total', 'IDR 130', 130.0000, 4);
INSERT INTO `oc_order_total` VALUES(157, 657782982, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(158, 657782982, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(159, 657782982, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(160, 657782982, 'total', 'Total', 'IDR 130', 130.0000, 4);
INSERT INTO `oc_order_total` VALUES(161, 370537920, 'sub_total', 'Sub-Total', 'IDR 75', 75.0000, 1);
INSERT INTO `oc_order_total` VALUES(162, 370537920, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(163, 370537920, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(164, 370537920, 'total', 'Total', 'IDR 75', 75.0000, 4);
INSERT INTO `oc_order_total` VALUES(105, 976643814, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(108, 976643814, 'total', 'Total', 'IDR 230', 230.0000, 3);
INSERT INTO `oc_order_total` VALUES(165, 861419805, 'sub_total', 'Sub-Total', 'IDR 350', 350.0000, 1);
INSERT INTO `oc_order_total` VALUES(166, 861419805, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(167, 861419805, 'shipping', 'Shipping', 'IDR 2200', 2200.0000, 2);
INSERT INTO `oc_order_total` VALUES(168, 861419805, 'total', 'Total', 'IDR 2550', 2550.0000, 4);
INSERT INTO `oc_order_total` VALUES(171, 612785305, 'shipping', 'Shipping', 'IDR 600', 600.0000, 2);
INSERT INTO `oc_order_total` VALUES(170, 612785305, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(169, 612785305, 'sub_total', 'Sub-Total', 'IDR 50', 50.0000, 1);
INSERT INTO `oc_order_total` VALUES(172, 612785305, 'total', 'Total', 'IDR 650', 650.0000, 4);
INSERT INTO `oc_order_total` VALUES(175, 654148046, 'shipping', 'Shipping', 'IDR 1100', 1100.0000, 2);
INSERT INTO `oc_order_total` VALUES(174, 654148046, 'addon', 'Add-Ons', 'IDR 200', 200.0000, 2);
INSERT INTO `oc_order_total` VALUES(173, 654148046, 'sub_total', 'Sub-Total', 'IDR 100', 100.0000, 1);
INSERT INTO `oc_order_total` VALUES(176, 654148046, 'total', 'Total', 'IDR 1400', 1400.0000, 4);
INSERT INTO `oc_order_total` VALUES(180, 996871560, 'total', 'Total', 'IDR 2085', 2085.0000, 4);
INSERT INTO `oc_order_total` VALUES(178, 996871560, 'addon', 'Add-Ons', 'IDR 160', 160.0000, 2);
INSERT INTO `oc_order_total` VALUES(179, 996871560, 'shipping', 'Shipping', 'IDR 1700', 1700.0000, 2);
INSERT INTO `oc_order_total` VALUES(177, 996871560, 'sub_total', 'Sub-Total', 'IDR 225', 225.0000, 1);
INSERT INTO `oc_order_total` VALUES(181, 530891362, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(182, 530891362, 'addon', 'Add-Ons', 'IDR 105', 105.0000, 2);
INSERT INTO `oc_order_total` VALUES(183, 530891362, 'shipping', 'Shipping', 'IDR 1000', 1000.0000, 2);
INSERT INTO `oc_order_total` VALUES(184, 530891362, 'coupon', 'Coupon(1122)', 'IDR -1135', -1135.0000, 3);
INSERT INTO `oc_order_total` VALUES(185, 530891362, 'total', 'Total', 'IDR 0', 0.0000, 4);
INSERT INTO `oc_order_total` VALUES(186, 397687877, 'sub_total', 'Sub-Total', 'IDR 100000', 100000.0000, 1);
INSERT INTO `oc_order_total` VALUES(187, 397687877, 'addon', 'Add-Ons', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(188, 397687877, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(189, 397687877, 'total', 'Total', 'IDR 100200', 100200.0000, 4);
INSERT INTO `oc_order_total` VALUES(190, 337585482, 'sub_total', 'Sub-Total', 'IDR 150', 150.0000, 1);
INSERT INTO `oc_order_total` VALUES(191, 337585482, 'addon', 'Add-Ons', 'IDR 140020', 140020.0000, 2);
INSERT INTO `oc_order_total` VALUES(192, 337585482, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(193, 337585482, 'coupon', 'Coupon(1122)', 'IDR -5000', -5000.0000, 3);
INSERT INTO `oc_order_total` VALUES(194, 337585482, 'total', 'Total', 'IDR 135270', 135270.0000, 4);
INSERT INTO `oc_order_total` VALUES(195, 322686728, 'sub_total', 'Sub-Total', 'IDR 250', 250.0000, 1);
INSERT INTO `oc_order_total` VALUES(196, 322686728, 'addon', 'Add-Ons', 'IDR 1000', 1000.0000, 2);
INSERT INTO `oc_order_total` VALUES(197, 322686728, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(198, 322686728, 'total', 'Total', 'IDR 1250', 1250.0000, 4);
INSERT INTO `oc_order_total` VALUES(199, 787989254, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(200, 787989254, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(201, 787989254, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(202, 787989254, 'total', 'Total', 'IDR 10', 10.0000, 4);
INSERT INTO `oc_order_total` VALUES(203, 221090638, 'sub_total', 'Sub-Total', 'IDR 250000', 250000.0000, 1);
INSERT INTO `oc_order_total` VALUES(204, 221090638, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(205, 221090638, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(206, 221090638, 'total', 'Total', 'IDR 250000', 250000.0000, 4);
INSERT INTO `oc_order_total` VALUES(207, 289439425, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(208, 289439425, 'addon', 'Add-Ons', 'IDR 10', 10.0000, 2);
INSERT INTO `oc_order_total` VALUES(209, 289439425, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(210, 289439425, 'coupon', 'Coupon(123)', 'IDR -10', -10.0000, 3);
INSERT INTO `oc_order_total` VALUES(211, 289439425, 'total', 'Total', 'IDR 10000', 10000.0000, 4);
INSERT INTO `oc_order_total` VALUES(212, 72118865, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(213, 72118865, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(214, 72118865, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(215, 72118865, 'coupon', 'Coupon(123)', 'IDR -10', -10.0000, 3);
INSERT INTO `oc_order_total` VALUES(216, 72118865, 'total', 'Total', 'IDR 1290', 1290.0000, 4);
INSERT INTO `oc_order_total` VALUES(217, 710898599, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(218, 710898599, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(219, 710898599, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(220, 710898599, 'coupon', 'Coupon(123)', 'IDR -10', -10.0000, 3);
INSERT INTO `oc_order_total` VALUES(221, 710898599, 'total', 'Total', 'IDR 990', 990.0000, 4);
INSERT INTO `oc_order_total` VALUES(226, 135482351, 'total', 'Total', 'IDR 97303.5', 97303.5000, 4);
INSERT INTO `oc_order_total` VALUES(309, 515490112, 'total', 'Total', 'IDR 175', 175.0000, 4);
INSERT INTO `oc_order_total` VALUES(225, 135482351, 'coupon', 'Coupon(123)', 'IDR -10811.5', -10811.5000, 3);
INSERT INTO `oc_order_total` VALUES(224, 135482351, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(234, 190308519, 'total', 'Total', 'IDR 1.005', 1005.0000, 9);
INSERT INTO `oc_order_total` VALUES(233, 190308519, 'shipping', 'Flat Shipping Rate', 'IDR 5', 5.0000, 3);
INSERT INTO `oc_order_total` VALUES(232, 190308519, 'sub_total', 'Sub-Total', 'IDR 1.000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(223, 135482351, 'addon', 'Add-Ons', 'IDR 105015', 105015.0000, 2);
INSERT INTO `oc_order_total` VALUES(222, 135482351, 'sub_total', 'Sub-Total', 'IDR 3000', 3000.0000, 1);
INSERT INTO `oc_order_total` VALUES(239, 44929529, 'total', 'Total', 'IDR 30180', 30180.0000, 4);
INSERT INTO `oc_order_total` VALUES(237, 44929529, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(238, 44929529, 'coupon', 'Coupon(1122)', 'IDR -5000', -5000.0000, 3);
INSERT INTO `oc_order_total` VALUES(240, 385984997, 'sub_total', 'Sub-Total', 'IDR 50000', 50000.0000, 1);
INSERT INTO `oc_order_total` VALUES(241, 385984997, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(242, 385984997, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(243, 385984997, 'total', 'Total', 'IDR 50100', 50100.0000, 4);
INSERT INTO `oc_order_total` VALUES(244, 138478641, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(245, 138478641, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(246, 138478641, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(247, 138478641, 'coupon', 'Coupon(1122)', 'IDR -5000', -5000.0000, 3);
INSERT INTO `oc_order_total` VALUES(248, 138478641, 'total', 'Total', 'IDR 5100', 5100.0000, 4);
INSERT INTO `oc_order_total` VALUES(249, 443599723, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(250, 443599723, 'addon', 'Add-Ons', 'IDR 115', 115.0000, 2);
INSERT INTO `oc_order_total` VALUES(251, 443599723, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(252, 443599723, 'total', 'Total', 'IDR 10115', 10115.0000, 4);
INSERT INTO `oc_order_total` VALUES(253, 640025542, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(254, 640025542, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(255, 640025542, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(256, 640025542, 'coupon', 'Coupon(1111)', 'IDR -10', -10.0000, 3);
INSERT INTO `oc_order_total` VALUES(257, 640025542, 'total', 'Total', 'IDR 589', 589.0000, 4);
INSERT INTO `oc_order_total` VALUES(258, 145905119, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(259, 145905119, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(260, 145905119, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(261, 145905119, 'coupon', 'Coupon(2222)', 'IDR -100', -100.0000, 3);
INSERT INTO `oc_order_total` VALUES(262, 145905119, 'total', 'Total', 'IDR 900', 900.0000, 4);
INSERT INTO `oc_order_total` VALUES(263, 323438655, 'sub_total', 'Sub-Total', 'IDR 5000', 5000.0000, 1);
INSERT INTO `oc_order_total` VALUES(264, 323438655, 'addon', 'Add-Ons', 'IDR 575', 575.0000, 2);
INSERT INTO `oc_order_total` VALUES(265, 323438655, 'shipping', 'Shipping', 'IDR 12', 12.0000, 2);
INSERT INTO `oc_order_total` VALUES(266, 323438655, 'coupon', 'Coupon(1122)', 'IDR -5000', -5000.0000, 3);
INSERT INTO `oc_order_total` VALUES(267, 323438655, 'total', 'Total', 'IDR 587', 587.0000, 4);
INSERT INTO `oc_order_total` VALUES(268, 27830313, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(269, 27830313, 'addon', 'Add-Ons', 'IDR 70010', 70010.0000, 2);
INSERT INTO `oc_order_total` VALUES(270, 27830313, 'shipping', 'Shipping', 'IDR 120', 120.0000, 2);
INSERT INTO `oc_order_total` VALUES(271, 27830313, 'total', 'Total', 'IDR 70729', 70729.0000, 4);
INSERT INTO `oc_order_total` VALUES(272, 921716748, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(273, 921716748, 'addon', 'Add-Ons', 'IDR 70010', 70010.0000, 2);
INSERT INTO `oc_order_total` VALUES(274, 921716748, 'shipping', 'Shipping', 'IDR 120', 120.0000, 2);
INSERT INTO `oc_order_total` VALUES(275, 921716748, 'total', 'Total', 'IDR 70729', 70729.0000, 4);
INSERT INTO `oc_order_total` VALUES(276, 770386932, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(277, 770386932, 'addon', 'Add-Ons', 'IDR 70055', 70055.0000, 2);
INSERT INTO `oc_order_total` VALUES(278, 770386932, 'shipping', 'Shipping', 'IDR 12', 12.0000, 2);
INSERT INTO `oc_order_total` VALUES(279, 770386932, 'coupon', 'Coupon(1122)', 'IDR -5000', -5000.0000, 3);
INSERT INTO `oc_order_total` VALUES(280, 770386932, 'total', 'Total', 'IDR 75067', 75067.0000, 4);
INSERT INTO `oc_order_total` VALUES(281, 296327424, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(282, 296327424, 'addon', 'Add-Ons', 'IDR 35105', 35105.0000, 2);
INSERT INTO `oc_order_total` VALUES(283, 296327424, 'shipping', 'Shipping', 'IDR 60', 60.0000, 2);
INSERT INTO `oc_order_total` VALUES(284, 296327424, 'total', 'Total', 'IDR 535165', 535165.0000, 4);
INSERT INTO `oc_order_total` VALUES(285, 105394872, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(286, 105394872, 'addon', 'Add-Ons', 'IDR 70010', 70010.0000, 2);
INSERT INTO `oc_order_total` VALUES(287, 105394872, 'shipping', 'Shipping', 'IDR 12', 12.0000, 2);
INSERT INTO `oc_order_total` VALUES(288, 105394872, 'total', 'Total', 'IDR 80022', 80022.0000, 4);
INSERT INTO `oc_order_total` VALUES(289, 195368921, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(290, 195368921, 'addon', 'Add-Ons', 'IDR 70055', 70055.0000, 2);
INSERT INTO `oc_order_total` VALUES(291, 195368921, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(292, 195368921, 'total', 'Total', 'IDR 70165', 70165.0000, 4);
INSERT INTO `oc_order_total` VALUES(293, 784914250, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(294, 784914250, 'addon', 'Add-Ons', 'IDR 10', 10.0000, 2);
INSERT INTO `oc_order_total` VALUES(295, 784914250, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(296, 784914250, 'coupon', 'Coupon(1122)', 'IDR -5000', -5000.0000, 3);
INSERT INTO `oc_order_total` VALUES(297, 784914250, 'total', 'Total', 'IDR 5110', 5110.0000, 4);
INSERT INTO `oc_order_total` VALUES(298, 155382782, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(299, 155382782, 'addon', 'Add-Ons', 'IDR 15', 15.0000, 2);
INSERT INTO `oc_order_total` VALUES(300, 155382782, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(301, 155382782, 'total', 'Total', 'IDR 125', 125.0000, 4);
INSERT INTO `oc_order_total` VALUES(304, 355044162, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(303, 355044162, 'addon', 'Add-Ons', 'IDR 15', 15.0000, 2);
INSERT INTO `oc_order_total` VALUES(302, 355044162, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(308, 515490112, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(307, 515490112, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(306, 515490112, 'sub_total', 'Sub-Total', 'IDR 75', 75.0000, 1);
INSERT INTO `oc_order_total` VALUES(310, 52712899, 'sub_total', 'Sub-Total', 'IDR 75', 75.0000, 1);
INSERT INTO `oc_order_total` VALUES(311, 52712899, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(312, 52712899, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(313, 52712899, 'total', 'Total', 'IDR 175', 175.0000, 4);
INSERT INTO `oc_order_total` VALUES(314, 693279392, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(315, 693279392, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(316, 693279392, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(317, 693279392, 'total', 'Total', 'IDR 110', 110.0000, 4);
INSERT INTO `oc_order_total` VALUES(318, 734666243, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(319, 734666243, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(320, 734666243, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(321, 734666243, 'total', 'Total', 'IDR 110', 110.0000, 4);
INSERT INTO `oc_order_total` VALUES(236, 44929529, 'addon', 'Add-Ons', 'IDR 35005', 35005.0000, 2);
INSERT INTO `oc_order_total` VALUES(235, 44929529, 'sub_total', 'Sub-Total', 'IDR 75', 75.0000, 1);
INSERT INTO `oc_order_total` VALUES(305, 355044162, 'total', 'Total', 'IDR 1115', 1115.0000, 4);
INSERT INTO `oc_order_total` VALUES(322, 197468075, 'sub_total', 'Sub-Total', 'IDR 50', 50.0000, 1);
INSERT INTO `oc_order_total` VALUES(323, 197468075, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(324, 197468075, 'shipping', 'Shipping', 'IDR 600', 600.0000, 2);
INSERT INTO `oc_order_total` VALUES(325, 197468075, 'total', 'Total', 'IDR 650', 650.0000, 4);
INSERT INTO `oc_order_total` VALUES(326, 512142572, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(327, 512142572, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(328, 512142572, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(329, 512142572, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(330, 116598667, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(331, 116598667, 'addon', 'Add-Ons', 'IDR 105150', 105150.0000, 2);
INSERT INTO `oc_order_total` VALUES(332, 116598667, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(333, 116598667, 'total', 'Total', 'IDR 105180', 105180.0000, 4);
INSERT INTO `oc_order_total` VALUES(334, 51462590, 'sub_total', 'Sub-Total', 'IDR 150', 150.0000, 1);
INSERT INTO `oc_order_total` VALUES(335, 51462590, 'addon', 'Add-Ons', 'IDR 70300', 70300.0000, 2);
INSERT INTO `oc_order_total` VALUES(336, 51462590, 'shipping', 'Shipping', 'IDR 1000', 1000.0000, 2);
INSERT INTO `oc_order_total` VALUES(337, 51462590, 'total', 'Total', 'IDR 71450', 71450.0000, 4);
INSERT INTO `oc_order_total` VALUES(338, 204217338, 'sub_total', 'Sub-Total', 'IDR 150', 150.0000, 1);
INSERT INTO `oc_order_total` VALUES(339, 204217338, 'addon', 'Add-Ons', 'IDR 70300', 70300.0000, 2);
INSERT INTO `oc_order_total` VALUES(340, 204217338, 'shipping', 'Shipping', 'IDR 1000', 1000.0000, 2);
INSERT INTO `oc_order_total` VALUES(341, 204217338, 'total', 'Total', 'IDR 71450', 71450.0000, 4);
INSERT INTO `oc_order_total` VALUES(342, 810851330, 'sub_total', 'Sub-Total', 'IDR 150', 150.0000, 1);
INSERT INTO `oc_order_total` VALUES(343, 810851330, 'addon', 'Add-Ons', 'IDR 70300', 70300.0000, 2);
INSERT INTO `oc_order_total` VALUES(344, 810851330, 'shipping', 'Shipping', 'IDR 1000', 1000.0000, 2);
INSERT INTO `oc_order_total` VALUES(345, 810851330, 'total', 'Total', 'IDR 71450', 71450.0000, 4);
INSERT INTO `oc_order_total` VALUES(346, 241631894, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(347, 241631894, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(348, 241631894, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(349, 241631894, 'total', 'Total', 'IDR 30000', 30000.0000, 4);
INSERT INTO `oc_order_total` VALUES(350, 112833044, 'sub_total', 'Sub-Total', 'IDR 100', 100.0000, 1);
INSERT INTO `oc_order_total` VALUES(351, 112833044, 'addon', 'Add-Ons', 'IDR 220', 220.0000, 2);
INSERT INTO `oc_order_total` VALUES(352, 112833044, 'shipping', 'Shipping', 'IDR 11000', 11000.0000, 2);
INSERT INTO `oc_order_total` VALUES(353, 112833044, 'total', 'Total', 'IDR 11320', 11320.0000, 4);
INSERT INTO `oc_order_total` VALUES(354, 525586252, 'sub_total', 'Sub-Total', 'IDR 100', 100.0000, 1);
INSERT INTO `oc_order_total` VALUES(355, 525586252, 'addon', 'Add-Ons', 'IDR 220', 220.0000, 2);
INSERT INTO `oc_order_total` VALUES(356, 525586252, 'shipping', 'Shipping', 'IDR 11000', 11000.0000, 2);
INSERT INTO `oc_order_total` VALUES(357, 525586252, 'total', 'Total', 'IDR 11320', 11320.0000, 4);
INSERT INTO `oc_order_total` VALUES(358, 72172355, 'sub_total', 'Sub-Total', 'IDR 100', 100.0000, 1);
INSERT INTO `oc_order_total` VALUES(359, 72172355, 'addon', 'Add-Ons', 'IDR 220', 220.0000, 2);
INSERT INTO `oc_order_total` VALUES(360, 72172355, 'shipping', 'Shipping', 'IDR 11000', 11000.0000, 2);
INSERT INTO `oc_order_total` VALUES(361, 72172355, 'total', 'Total', 'IDR 11320', 11320.0000, 4);
INSERT INTO `oc_order_total` VALUES(362, 111236931, 'sub_total', 'Sub-Total', 'IDR 2000', 2000.0000, 1);
INSERT INTO `oc_order_total` VALUES(363, 111236931, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(364, 111236931, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(365, 111236931, 'total', 'Total', 'IDR 2000', 2000.0000, 4);
INSERT INTO `oc_order_total` VALUES(366, 390885524, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(367, 390885524, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(368, 390885524, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(369, 390885524, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(370, 583630322, 'sub_total', 'Sub-Total', 'IDR 50000', 50000.0000, 1);
INSERT INTO `oc_order_total` VALUES(371, 583630322, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(372, 583630322, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(373, 583630322, 'total', 'Total', 'IDR 150000', 150000.0000, 4);
INSERT INTO `oc_order_total` VALUES(374, 780484685, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(375, 780484685, 'addon', 'Add-Ons', 'IDR 110', 110.0000, 2);
INSERT INTO `oc_order_total` VALUES(376, 780484685, 'shipping', 'Shipping', 'IDR 1000', 1000.0000, 2);
INSERT INTO `oc_order_total` VALUES(377, 780484685, 'total', 'Total', 'IDR 11110', 11110.0000, 4);
INSERT INTO `oc_order_total` VALUES(378, 561648561, 'sub_total', 'Sub-Total', 'IDR 50000', 50000.0000, 1);
INSERT INTO `oc_order_total` VALUES(379, 561648561, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(380, 561648561, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(381, 561648561, 'total', 'Total', 'IDR 150000', 150000.0000, 4);
INSERT INTO `oc_order_total` VALUES(382, 680520522, 'sub_total', 'Sub-Total', 'IDR 50000', 50000.0000, 1);
INSERT INTO `oc_order_total` VALUES(383, 680520522, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(384, 680520522, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(385, 680520522, 'total', 'Total', 'IDR 150000', 150000.0000, 4);
INSERT INTO `oc_order_total` VALUES(386, 447446076, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(387, 447446076, 'addon', 'Add-Ons', 'IDR 35050', 35050.0000, 2);
INSERT INTO `oc_order_total` VALUES(388, 447446076, 'shipping', 'Shipping', 'IDR 1000', 1000.0000, 2);
INSERT INTO `oc_order_total` VALUES(389, 447446076, 'total', 'Total', 'IDR 37350', 37350.0000, 4);
INSERT INTO `oc_order_total` VALUES(390, 198814304, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(391, 198814304, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(392, 198814304, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(393, 198814304, 'total', 'Total', 'IDR 20020', 20020.0000, 4);
INSERT INTO `oc_order_total` VALUES(394, 810032269, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(395, 810032269, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(396, 810032269, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(397, 810032269, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(398, 882489736, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(399, 882489736, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(400, 882489736, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(401, 882489736, 'total', 'Total', 'IDR 30000', 30000.0000, 4);
INSERT INTO `oc_order_total` VALUES(402, 688125180, 'sub_total', 'Sub-Total', 'IDR 650000', 650000.0000, 1);
INSERT INTO `oc_order_total` VALUES(403, 688125180, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(404, 688125180, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(405, 688125180, 'total', 'Total', 'IDR 650100', 650100.0000, 4);
INSERT INTO `oc_order_total` VALUES(406, 328284535, 'sub_total', 'Sub-Total', 'IDR 200000', 200000.0000, 1);
INSERT INTO `oc_order_total` VALUES(407, 328284535, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(408, 328284535, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(409, 328284535, 'total', 'Total', 'IDR 220000', 220000.0000, 4);
INSERT INTO `oc_order_total` VALUES(410, 683914716, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(411, 683914716, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(412, 683914716, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(413, 683914716, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(414, 659381945, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(415, 659381945, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(416, 659381945, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(417, 659381945, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(418, 392701278, 'sub_total', 'Sub-Total', 'IDR 50', 50.0000, 1);
INSERT INTO `oc_order_total` VALUES(419, 392701278, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(420, 392701278, 'shipping', 'Shipping', 'IDR 120000', 120000.0000, 2);
INSERT INTO `oc_order_total` VALUES(421, 392701278, 'total', 'Total', 'IDR 120050', 120050.0000, 4);
INSERT INTO `oc_order_total` VALUES(422, 892920547, 'sub_total', 'Sub-Total', 'IDR 50000', 50000.0000, 1);
INSERT INTO `oc_order_total` VALUES(423, 892920547, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(424, 892920547, 'shipping', 'Shipping', 'IDR 300000', 300000.0000, 2);
INSERT INTO `oc_order_total` VALUES(425, 892920547, 'total', 'Total', 'IDR 350000', 350000.0000, 4);
INSERT INTO `oc_order_total` VALUES(426, 260135640, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(427, 260135640, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(428, 260135640, 'shipping', 'Shipping', 'IDR 1000', 1000.0000, 2);
INSERT INTO `oc_order_total` VALUES(429, 260135640, 'total', 'Total', 'IDR 1020', 1020.0000, 4);
INSERT INTO `oc_order_total` VALUES(430, 426755613, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(431, 426755613, 'addon', 'Add-Ons', 'IDR 105015', 105015.0000, 2);
INSERT INTO `oc_order_total` VALUES(432, 426755613, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(433, 426755613, 'total', 'Total', 'IDR 125045', 125045.0000, 4);
INSERT INTO `oc_order_total` VALUES(434, 153939129, 'sub_total', 'Sub-Total', 'IDR 2600', 2600.0000, 1);
INSERT INTO `oc_order_total` VALUES(435, 153939129, 'addon', 'Add-Ons', 'IDR 70210', 70210.0000, 2);
INSERT INTO `oc_order_total` VALUES(436, 153939129, 'shipping', 'Shipping', 'IDR 100', 100.0000, 2);
INSERT INTO `oc_order_total` VALUES(437, 153939129, 'coupon', 'Coupon(1111)', 'IDR -10', -10.0000, 3);
INSERT INTO `oc_order_total` VALUES(438, 153939129, 'total', 'Total', 'IDR 72900', 72900.0000, 4);
INSERT INTO `oc_order_total` VALUES(439, 538173218, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(440, 538173218, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(441, 538173218, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(442, 538173218, 'total', 'Total', 'IDR 10000', 10000.0000, 4);
INSERT INTO `oc_order_total` VALUES(443, 415087891, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(444, 415087891, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(445, 415087891, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(446, 415087891, 'total', 'Total', 'IDR 20', 20.0000, 4);
INSERT INTO `oc_order_total` VALUES(447, 123659057, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(448, 123659057, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(449, 123659057, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(450, 123659057, 'total', 'Total', 'IDR 10000', 10000.0000, 4);
INSERT INTO `oc_order_total` VALUES(451, 647874451, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(452, 647874451, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(453, 647874451, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(454, 647874451, 'total', 'Total', 'IDR 599', 599.0000, 4);
INSERT INTO `oc_order_total` VALUES(455, 814314576, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(456, 814314576, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(457, 814314576, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(458, 814314576, 'total', 'Total', 'IDR 1000', 1000.0000, 4);
INSERT INTO `oc_order_total` VALUES(459, 21178588, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(460, 21178588, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(461, 21178588, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(462, 21178588, 'total', 'Total', 'IDR 1300', 1300.0000, 4);
INSERT INTO `oc_order_total` VALUES(463, 141333313, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(464, 141333313, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(465, 141333313, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(466, 141333313, 'total', 'Total', 'IDR 599', 599.0000, 4);
INSERT INTO `oc_order_total` VALUES(467, 452400207, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(468, 452400207, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(469, 452400207, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(470, 452400207, 'total', 'Total', 'IDR 599', 599.0000, 4);
INSERT INTO `oc_order_total` VALUES(471, 744282227, 'sub_total', 'Sub-Total', 'IDR 51000', 51000.0000, 1);
INSERT INTO `oc_order_total` VALUES(472, 744282227, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(473, 744282227, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(474, 744282227, 'total', 'Total', 'IDR 51000', 51000.0000, 4);
INSERT INTO `oc_order_total` VALUES(475, 338016052, 'sub_total', 'Sub-Total', 'IDR 50000', 50000.0000, 1);
INSERT INTO `oc_order_total` VALUES(476, 338016052, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(477, 338016052, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(478, 338016052, 'total', 'Total', 'IDR 50000', 50000.0000, 4);
INSERT INTO `oc_order_total` VALUES(479, 279494629, 'sub_total', 'Sub-Total', 'IDR 12000', 12000.0000, 1);
INSERT INTO `oc_order_total` VALUES(480, 279494629, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(481, 279494629, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(482, 279494629, 'total', 'Total', 'IDR 12000', 12000.0000, 4);
INSERT INTO `oc_order_total` VALUES(483, 437837830, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(484, 437837830, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(485, 437837830, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(486, 437837830, 'total', 'Total', 'IDR 10000', 10000.0000, 4);
INSERT INTO `oc_order_total` VALUES(487, 26979370, 'sub_total', 'Sub-Total', 'IDR 50', 50.0000, 1);
INSERT INTO `oc_order_total` VALUES(488, 26979370, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(489, 26979370, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(490, 26979370, 'total', 'Total', 'IDR 50', 50.0000, 4);
INSERT INTO `oc_order_total` VALUES(491, 211184387, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(492, 211184387, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(493, 211184387, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(494, 211184387, 'total', 'Total', 'IDR 20', 20.0000, 4);
INSERT INTO `oc_order_total` VALUES(495, 376990051, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(496, 376990051, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(497, 376990051, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(498, 376990051, 'total', 'Total', 'IDR 30000', 30000.0000, 4);
INSERT INTO `oc_order_total` VALUES(499, 138100586, 'sub_total', 'Sub-Total', 'IDR 10000', 10000.0000, 1);
INSERT INTO `oc_order_total` VALUES(500, 138100586, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(501, 138100586, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(502, 138100586, 'total', 'Total', 'IDR 30000', 30000.0000, 4);
INSERT INTO `oc_order_total` VALUES(503, 238435974, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(504, 238435974, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(505, 238435974, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(506, 238435974, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(507, 303392639, 'sub_total', 'Sub-Total', 'IDR 20000', 20000.0000, 1);
INSERT INTO `oc_order_total` VALUES(508, 303392639, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(509, 303392639, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(510, 303392639, 'total', 'Total', 'IDR 20000', 20000.0000, 4);
INSERT INTO `oc_order_total` VALUES(511, 898365479, 'sub_total', 'Sub-Total', 'IDR 20225', 20225.0000, 1);
INSERT INTO `oc_order_total` VALUES(512, 898365479, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(513, 898365479, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(514, 898365479, 'total', 'Total', 'IDR 20225', 20225.0000, 4);
INSERT INTO `oc_order_total` VALUES(515, 105501403, 'sub_total', 'Sub-Total', 'IDR 1000010', 1000010.0000, 1);
INSERT INTO `oc_order_total` VALUES(516, 105501403, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(517, 105501403, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(518, 105501403, 'total', 'Total', 'IDR 1000010', 1000010.0000, 4);
INSERT INTO `oc_order_total` VALUES(519, 296322937, 'sub_total', 'Sub-Total', 'IDR 10020', 10020.0000, 1);
INSERT INTO `oc_order_total` VALUES(520, 296322937, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(521, 296322937, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(522, 296322937, 'total', 'Total', 'IDR 10020', 10020.0000, 4);
INSERT INTO `oc_order_total` VALUES(523, 833408814, 'sub_total', 'Sub-Total', 'IDR 2000', 2000.0000, 1);
INSERT INTO `oc_order_total` VALUES(524, 833408814, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(525, 833408814, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(526, 833408814, 'total', 'Total', 'IDR 2000', 2000.0000, 4);
INSERT INTO `oc_order_total` VALUES(527, 384241028, 'sub_total', 'Sub-Total', 'IDR 100', 100.0000, 1);
INSERT INTO `oc_order_total` VALUES(528, 384241028, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(529, 384241028, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(530, 384241028, 'total', 'Total', 'IDR 100', 100.0000, 4);
INSERT INTO `oc_order_total` VALUES(531, 708994141, 'sub_total', 'Sub-Total', 'IDR 1000000', 1000000.0000, 1);
INSERT INTO `oc_order_total` VALUES(532, 708994141, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(533, 708994141, 'shipping', 'Shipping', 'IDR 200000', 200000.0000, 2);
INSERT INTO `oc_order_total` VALUES(534, 708994141, 'total', 'Total', 'IDR 1200000', 1200000.0000, 4);
INSERT INTO `oc_order_total` VALUES(535, 551194763, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(536, 551194763, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(537, 551194763, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(538, 551194763, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(539, 700232544, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(540, 700232544, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(541, 700232544, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(542, 700232544, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(543, 90062866, 'sub_total', 'Sub-Total', 'IDR 20000', 20000.0000, 1);
INSERT INTO `oc_order_total` VALUES(544, 90062866, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(545, 90062866, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(546, 90062866, 'total', 'Total', 'IDR 20000', 20000.0000, 4);
INSERT INTO `oc_order_total` VALUES(547, 273301086, 'sub_total', 'Sub-Total', 'IDR 1000000', 1000000.0000, 1);
INSERT INTO `oc_order_total` VALUES(548, 273301086, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(549, 273301086, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(550, 273301086, 'total', 'Total', 'IDR 1000000', 1000000.0000, 4);
INSERT INTO `oc_order_total` VALUES(551, 546813965, 'sub_total', 'Sub-Total', 'IDR 2600', 2600.0000, 1);
INSERT INTO `oc_order_total` VALUES(552, 546813965, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(553, 546813965, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(554, 546813965, 'total', 'Total', 'IDR 2600', 2600.0000, 4);
INSERT INTO `oc_order_total` VALUES(555, 748632813, 'sub_total', 'Sub-Total', 'IDR 2000', 2000.0000, 1);
INSERT INTO `oc_order_total` VALUES(556, 748632813, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(557, 748632813, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(558, 748632813, 'total', 'Total', 'IDR 22000', 22000.0000, 4);
INSERT INTO `oc_order_total` VALUES(559, 157889709, 'sub_total', 'Sub-Total', 'IDR 40', 40.0000, 1);
INSERT INTO `oc_order_total` VALUES(560, 157889709, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(561, 157889709, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(562, 157889709, 'total', 'Total', 'IDR 40', 40.0000, 4);
INSERT INTO `oc_order_total` VALUES(563, 83839111, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(564, 83839111, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(565, 83839111, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(566, 83839111, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(567, 684491883, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(568, 684491883, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(569, 684491883, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(570, 684491883, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(571, 36405639, 'sub_total', 'Sub-Total', 'IDR 2000', 2000.0000, 1);
INSERT INTO `oc_order_total` VALUES(572, 36405639, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(573, 36405639, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(574, 36405639, 'total', 'Total', 'IDR 22000', 22000.0000, 4);
INSERT INTO `oc_order_total` VALUES(575, 364663391, 'sub_total', 'Sub-Total', 'IDR 1000000', 1000000.0000, 1);
INSERT INTO `oc_order_total` VALUES(576, 364663391, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(577, 364663391, 'shipping', 'Shipping', 'IDR 200000', 200000.0000, 2);
INSERT INTO `oc_order_total` VALUES(578, 364663391, 'total', 'Total', 'IDR 1200000', 1200000.0000, 4);
INSERT INTO `oc_order_total` VALUES(579, 963020020, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(580, 963020020, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(581, 963020020, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(582, 963020020, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(583, 854527283, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(584, 854527283, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(585, 854527283, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(586, 854527283, 'total', 'Total', 'IDR 500000', 500000.0000, 4);
INSERT INTO `oc_order_total` VALUES(587, 187618713, 'sub_total', 'Sub-Total', 'IDR 2000', 2000.0000, 1);
INSERT INTO `oc_order_total` VALUES(588, 187618713, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(589, 187618713, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(590, 187618713, 'total', 'Total', 'IDR 22000', 22000.0000, 4);
INSERT INTO `oc_order_total` VALUES(591, 877337647, 'sub_total', 'Sub-Total', 'IDR 2600', 2600.0000, 1);
INSERT INTO `oc_order_total` VALUES(592, 877337647, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(593, 877337647, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(594, 877337647, 'total', 'Total', 'IDR 22600', 22600.0000, 4);
INSERT INTO `oc_order_total` VALUES(595, 519894714, 'sub_total', 'Sub-Total', 'IDR 2000', 2000.0000, 1);
INSERT INTO `oc_order_total` VALUES(596, 519894714, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(597, 519894714, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(598, 519894714, 'total', 'Total', 'IDR 22000', 22000.0000, 4);
INSERT INTO `oc_order_total` VALUES(599, 867609253, 'sub_total', 'Sub-Total', 'IDR 20000', 20000.0000, 1);
INSERT INTO `oc_order_total` VALUES(600, 867609253, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(601, 867609253, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(602, 867609253, 'total', 'Total', 'IDR 40000', 40000.0000, 4);
INSERT INTO `oc_order_total` VALUES(603, 159460754, 'sub_total', 'Sub-Total', 'IDR 1000000', 1000000.0000, 1);
INSERT INTO `oc_order_total` VALUES(604, 159460754, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(605, 159460754, 'shipping', 'Shipping', 'IDR 200000', 200000.0000, 2);
INSERT INTO `oc_order_total` VALUES(606, 159460754, 'total', 'Total', 'IDR 1200000', 1200000.0000, 4);
INSERT INTO `oc_order_total` VALUES(607, 264750976, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(608, 264750976, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(609, 264750976, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(610, 264750976, 'total', 'Total', 'IDR 20020', 20020.0000, 4);
INSERT INTO `oc_order_total` VALUES(611, 790476990, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(612, 790476990, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(613, 790476990, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(614, 790476990, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(615, 299495239, 'sub_total', 'Sub-Total', 'IDR 30', 30.0000, 1);
INSERT INTO `oc_order_total` VALUES(616, 299495239, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(617, 299495239, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(618, 299495239, 'total', 'Total', 'IDR 20030', 20030.0000, 4);
INSERT INTO `oc_order_total` VALUES(619, 410707092, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(620, 410707092, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(621, 410707092, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(622, 410707092, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(623, 639263916, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(624, 639263916, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(625, 639263916, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(626, 639263916, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(627, 891507264, 'sub_total', 'Sub-Total', 'IDR 50', 50.0000, 1);
INSERT INTO `oc_order_total` VALUES(628, 891507264, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(629, 891507264, 'shipping', 'Shipping', 'IDR 120000', 120000.0000, 2);
INSERT INTO `oc_order_total` VALUES(630, 891507264, 'total', 'Total', 'IDR 120050', 120050.0000, 4);
INSERT INTO `oc_order_total` VALUES(631, 422097168, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(632, 422097168, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(633, 422097168, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(634, 422097168, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(635, 317532043, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(636, 317532043, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(637, 317532043, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(638, 317532043, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(639, 701259766, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(640, 701259766, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(641, 701259766, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(642, 701259766, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(643, 846067810, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(644, 846067810, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(645, 846067810, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(646, 846067810, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(647, 959334107, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(648, 959334107, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(649, 959334107, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(650, 959334107, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(651, 755370178, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(652, 755370178, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(653, 755370178, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(654, 755370178, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(655, 110577087, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(656, 110577087, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(657, 110577087, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(658, 110577087, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(659, 840659790, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(660, 840659790, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(661, 840659790, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(662, 840659790, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(663, 67131652, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(664, 67131652, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(665, 67131652, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(666, 67131652, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(667, 94111328, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(668, 94111328, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(669, 94111328, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(670, 94111328, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(671, 210882263, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(672, 210882263, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(673, 210882263, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(674, 210882263, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(675, 754645081, 'sub_total', 'Sub-Total', 'IDR 20000', 20000.0000, 1);
INSERT INTO `oc_order_total` VALUES(676, 754645081, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(677, 754645081, 'shipping', 'Shipping', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(678, 754645081, 'total', 'Total', 'IDR 20000', 20000.0000, 4);
INSERT INTO `oc_order_total` VALUES(679, 524940186, 'sub_total', 'Sub-Total', 'IDR 2000', 2000.0000, 1);
INSERT INTO `oc_order_total` VALUES(680, 524940186, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(681, 524940186, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(682, 524940186, 'total', 'Total', 'IDR 22000', 22000.0000, 4);
INSERT INTO `oc_order_total` VALUES(683, 134626159, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(684, 134626159, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(685, 134626159, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(686, 134626159, 'total', 'Total', 'IDR 20020', 20020.0000, 4);
INSERT INTO `oc_order_total` VALUES(687, 731774292, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(688, 731774292, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(689, 731774292, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(690, 731774292, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(691, 744916687, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(692, 744916687, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(693, 744916687, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(694, 744916687, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(695, 558959351, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(696, 558959351, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(697, 558959351, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(698, 558959351, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(699, 578899536, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(700, 578899536, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(701, 578899536, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(702, 578899536, 'total', 'Total', 'IDR 20020', 20020.0000, 4);
INSERT INTO `oc_order_total` VALUES(703, 416507873, 'sub_total', 'Sub-Total', 'IDR 2000', 2000.0000, 1);
INSERT INTO `oc_order_total` VALUES(704, 416507873, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(705, 416507873, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(706, 416507873, 'total', 'Total', 'IDR 22000', 22000.0000, 4);
INSERT INTO `oc_order_total` VALUES(707, 727242432, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(708, 727242432, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(709, 727242432, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(710, 727242432, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(711, 649264221, 'sub_total', 'Sub-Total', 'IDR 2000', 2000.0000, 1);
INSERT INTO `oc_order_total` VALUES(712, 649264221, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(713, 649264221, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(714, 649264221, 'total', 'Total', 'IDR 22000', 22000.0000, 4);
INSERT INTO `oc_order_total` VALUES(715, 725339051, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(716, 725339051, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(717, 725339051, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(718, 725339051, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(719, 859391480, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(720, 859391480, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(721, 859391480, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(722, 859391480, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(723, 294268493, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(724, 294268493, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(725, 294268493, 'shipping', 'Shipping', 'IDR 200000', 200000.0000, 2);
INSERT INTO `oc_order_total` VALUES(726, 294268493, 'total', 'Total', 'IDR 200599', 200599.0000, 4);
INSERT INTO `oc_order_total` VALUES(727, 465331116, 'sub_total', 'Sub-Total', 'IDR 10', 10.0000, 1);
INSERT INTO `oc_order_total` VALUES(728, 465331116, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(729, 465331116, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(730, 465331116, 'total', 'Total', 'IDR 20010', 20010.0000, 4);
INSERT INTO `oc_order_total` VALUES(731, 909302369, 'sub_total', 'Sub-Total', 'IDR 1000000', 1000000.0000, 1);
INSERT INTO `oc_order_total` VALUES(732, 909302369, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(733, 909302369, 'shipping', 'Shipping', 'IDR 200000', 200000.0000, 2);
INSERT INTO `oc_order_total` VALUES(734, 909302369, 'total', 'Total', 'IDR 1200000', 1200000.0000, 4);
INSERT INTO `oc_order_total` VALUES(735, 644581299, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(736, 644581299, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(737, 644581299, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(738, 644581299, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(739, 147224731, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(740, 147224731, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(741, 147224731, 'shipping', 'Shipping', 'IDR 5000', 5000.0000, 2);
INSERT INTO `oc_order_total` VALUES(742, 147224731, 'total', 'Total', 'IDR 505000', 505000.0000, 4);
INSERT INTO `oc_order_total` VALUES(743, 625245361, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(744, 625245361, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(745, 625245361, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(746, 625245361, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(747, 174989929, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(748, 174989929, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(749, 174989929, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(750, 174989929, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(751, 997069397, 'sub_total', 'Sub-Total', 'IDR 1000000', 1000000.0000, 1);
INSERT INTO `oc_order_total` VALUES(752, 997069397, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(753, 997069397, 'shipping', 'Shipping', 'IDR 200000', 200000.0000, 2);
INSERT INTO `oc_order_total` VALUES(754, 997069397, 'total', 'Total', 'IDR 1200000', 1200000.0000, 4);
INSERT INTO `oc_order_total` VALUES(755, 60907898, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(756, 60907898, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(757, 60907898, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(758, 60907898, 'total', 'Total', 'IDR 20020', 20020.0000, 4);
INSERT INTO `oc_order_total` VALUES(759, 924801331, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(760, 924801331, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(761, 924801331, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(762, 924801331, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(763, 92721557, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(764, 92721557, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(765, 92721557, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(766, 92721557, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(767, 58339843, 'sub_total', 'Sub-Total', 'IDR 1000000', 1000000.0000, 1);
INSERT INTO `oc_order_total` VALUES(768, 58339843, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(769, 58339843, 'shipping', 'Shipping', 'IDR 200000', 200000.0000, 2);
INSERT INTO `oc_order_total` VALUES(770, 58339843, 'total', 'Total', 'IDR 1200000', 1200000.0000, 4);
INSERT INTO `oc_order_total` VALUES(771, 234689636, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(772, 234689636, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(773, 234689636, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(774, 234689636, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(775, 447445373, 'sub_total', 'Sub-Total', 'IDR 500000', 500000.0000, 1);
INSERT INTO `oc_order_total` VALUES(776, 447445373, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(777, 447445373, 'shipping', 'Shipping', 'IDR 100000', 100000.0000, 2);
INSERT INTO `oc_order_total` VALUES(778, 447445373, 'total', 'Total', 'IDR 600000', 600000.0000, 4);
INSERT INTO `oc_order_total` VALUES(779, 972808838, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(780, 972808838, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(781, 972808838, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(782, 972808838, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(783, 726456909, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(784, 726456909, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(785, 726456909, 'shipping', 'Shipping', 'IDR 200000', 200000.0000, 2);
INSERT INTO `oc_order_total` VALUES(786, 726456909, 'total', 'Total', 'IDR 200599', 200599.0000, 4);
INSERT INTO `oc_order_total` VALUES(787, 933079529, 'sub_total', 'Sub-Total', 'IDR 1000000', 1000000.0000, 1);
INSERT INTO `oc_order_total` VALUES(788, 933079529, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(789, 933079529, 'shipping', 'Shipping', 'IDR 200000', 200000.0000, 2);
INSERT INTO `oc_order_total` VALUES(790, 933079529, 'total', 'Total', 'IDR 1200000', 1200000.0000, 4);
INSERT INTO `oc_order_total` VALUES(801, 365267639, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(797, 735883179, 'total', 'Total', 'IDR 604', 604.0000, 9);
INSERT INTO `oc_order_total` VALUES(795, 735883179, 'sub_total', 'Sub-Total', 'IDR 599', 599.0000, 1);
INSERT INTO `oc_order_total` VALUES(796, 735883179, 'shipping', 'Flat Shipping Rate', 'IDR 5', 5.0000, 3);
INSERT INTO `oc_order_total` VALUES(799, 365267639, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(800, 365267639, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(798, 365267639, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(802, 352638855, 'sub_total', 'Sub-Total', 'IDR 50', 50.0000, 1);
INSERT INTO `oc_order_total` VALUES(803, 352638855, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(804, 352638855, 'shipping', 'Shipping', 'IDR 120000', 120000.0000, 2);
INSERT INTO `oc_order_total` VALUES(805, 352638855, 'total', 'Total', 'IDR 120050', 120050.0000, 4);
INSERT INTO `oc_order_total` VALUES(806, 592736816, 'sub_total', 'Sub-Total', 'IDR 2000', 2000.0000, 1);
INSERT INTO `oc_order_total` VALUES(807, 592736816, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(808, 592736816, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(809, 592736816, 'total', 'Total', 'IDR 22000', 22000.0000, 4);
INSERT INTO `oc_order_total` VALUES(810, 493942261, 'sub_total', 'Sub-Total', 'IDR 1300', 1300.0000, 1);
INSERT INTO `oc_order_total` VALUES(811, 493942261, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(812, 493942261, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(813, 493942261, 'total', 'Total', 'IDR 21300', 21300.0000, 4);
INSERT INTO `oc_order_total` VALUES(814, 607359619, 'sub_total', 'Sub-Total', 'IDR 20', 20.0000, 1);
INSERT INTO `oc_order_total` VALUES(815, 607359619, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(816, 607359619, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(817, 607359619, 'total', 'Total', 'IDR 20020', 20020.0000, 4);
INSERT INTO `oc_order_total` VALUES(818, 581890564, 'sub_total', 'Sub-Total', 'IDR 1000', 1000.0000, 1);
INSERT INTO `oc_order_total` VALUES(819, 581890564, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(820, 581890564, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(821, 581890564, 'total', 'Total', 'IDR 21000', 21000.0000, 4);
INSERT INTO `oc_order_total` VALUES(822, 638115845, 'sub_total', 'Sub-Total', 'IDR 0', 0.0000, 1);
INSERT INTO `oc_order_total` VALUES(823, 638115845, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(824, 638115845, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(825, 638115845, 'total', 'Total', 'IDR 20000', 20000.0000, 4);
INSERT INTO `oc_order_total` VALUES(828, 723647156, 'shipping', 'Shipping', 'IDR 20000', 20000.0000, 2);
INSERT INTO `oc_order_total` VALUES(827, 723647156, 'addon', 'Add-Ons', 'IDR 0', 0.0000, 2);
INSERT INTO `oc_order_total` VALUES(826, 723647156, 'sub_total', 'Sub-Total', 'IDR 0', 0.0000, 1);
INSERT INTO `oc_order_total` VALUES(829, 723647156, 'total', 'Total', 'IDR 20000', 20000.0000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY  (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_order_voucher`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_personalize_answer`
--

CREATE TABLE `oc_personalize_answer` (
  `answer_id` int(11) NOT NULL auto_increment,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  PRIMARY KEY  (`answer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `oc_personalize_answer`
--

INSERT INTO `oc_personalize_answer` VALUES(1, 1, 'Wedding', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(2, 1, 'Engagement', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(3, 1, 'Birth day', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(4, 1, 'Anniversary', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(5, 2, 'Brother', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(6, 2, 'Sister', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(7, 2, 'Mother', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(8, 2, 'Father', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(9, 2, 'Husband', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(10, 2, 'Wife', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(11, 2, 'Friend', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(12, 3, 'Happy go lucky', '0000-00-00 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(13, 3, 'openness', '2013-07-02 15:08:10', 'active');
INSERT INTO `oc_personalize_answer` VALUES(14, 3, 'conscientious', '2013-07-02 15:08:10', 'active');
INSERT INTO `oc_personalize_answer` VALUES(15, 3, 'extraversion', '2013-07-02 15:08:10', 'active');
INSERT INTO `oc_personalize_answer` VALUES(16, 3, 'agreeableness', '2013-07-02 15:08:10', 'active');
INSERT INTO `oc_personalize_answer` VALUES(17, 3, 'neuroticism', '2013-07-02 15:08:10', 'active');
INSERT INTO `oc_personalize_answer` VALUES(18, 6, 'foodie', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(19, 6, 'sports', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(20, 6, 'outdoors', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(21, 6, 'music', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(22, 6, 'arts', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(23, 6, 'reading', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(24, 6, 'cooking', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(25, 6, 'decor', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(26, 6, 'travel', '2013-07-02 00:00:00', 'active');
INSERT INTO `oc_personalize_answer` VALUES(31, 3, 'Intelect', '2013-09-19 05:39:41', 'active');
INSERT INTO `oc_personalize_answer` VALUES(32, 2, 'Req', '2013-09-20 09:32:33', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `oc_personalize_question`
--

CREATE TABLE `oc_personalize_question` (
  `question_id` int(11) NOT NULL auto_increment,
  `question` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY  (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `oc_personalize_question`
--

INSERT INTO `oc_personalize_question` VALUES(1, 'Select Event', '2013-07-02 00:00:00');
INSERT INTO `oc_personalize_question` VALUES(2, 'Select Receiver', '2013-07-02 00:00:00');
INSERT INTO `oc_personalize_question` VALUES(3, 'Select Personality', '2013-07-02 00:00:00');
INSERT INTO `oc_personalize_question` VALUES(4, 'Select Gender', '2013-07-02 00:00:00');
INSERT INTO `oc_personalize_question` VALUES(5, 'Select age', '2013-07-02 00:00:00');
INSERT INTO `oc_personalize_question` VALUES(6, 'Select Particular Interest', '2013-07-02 00:00:00');
INSERT INTO `oc_personalize_question` VALUES(7, 'Tech Savvy', '2013-07-02 00:00:00');
INSERT INTO `oc_personalize_question` VALUES(8, 'Wardrobe color', '2013-07-02 00:00:00');
INSERT INTO `oc_personalize_question` VALUES(9, 'Creativity level', '2013-07-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL auto_increment,
  `model` varchar(64) NOT NULL,
  `justIn` tinyint(1) NOT NULL default '0',
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL default '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) default NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL default '1',
  `price` decimal(15,4) NOT NULL default '0.0000',
  `points` int(8) NOT NULL default '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL default '0.00000000',
  `weight_class_id` int(11) NOT NULL default '0',
  `length` decimal(15,8) NOT NULL default '0.00000000',
  `width` decimal(15,8) NOT NULL default '0.00000000',
  `height` decimal(15,8) NOT NULL default '0.00000000',
  `length_class_id` int(11) NOT NULL default '0',
  `subtract` tinyint(1) NOT NULL default '1',
  `minimum` int(11) NOT NULL default '1',
  `sort_order` int(11) NOT NULL default '0',
  `status` tinyint(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL default '0',
  `display` char(5) default NULL,
  PRIMARY KEY  (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` VALUES(71, 'qqqqq', 1, '', '', '', '', '', '', '', 20, 5, 'data/images.jpg', 0, 1, 100000.0000, 0, 0, '2013-08-13', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-08-13 10:19:58', '2013-11-07 14:21:07', 74, 'yes');
INSERT INTO `oc_product` VALUES(67, 'CWP', 0, '', '', '', '', '', '', '', 1, 5, '', 0, 1, 5.0000, 0, 0, '2013-07-24', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-25 19:33:18', '2013-11-07 14:18:05', 1, 'no');
INSERT INTO `oc_product` VALUES(68, 'test product', 0, 'test-product', '', '', '', '', '', '', 1000, 5, 'data/ad2.jpg', 0, 1, 100.0000, 0, 0, '2013-07-28', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-29 14:59:12', '2013-11-07 14:20:25', 9, 'yes');
INSERT INTO `oc_product` VALUES(69, 'adasdsa', 1, '', '', '', '', '', '', '', 67, 5, 'data/xpixaal.jpg.pagespeed.ic.dF2CaXZRz7.jpg', 0, 1, 500000.0000, 0, 0, '2013-07-01', 5.00000000, 1, 5.00000000, 4.00000000, 5.00000000, 1, 1, 1, 1, 1, '2013-08-02 08:47:53', '2013-11-07 14:17:15', 61, 'yes');
INSERT INTO `oc_product` VALUES(70, 'Test 12', 0, '', '', '', '', '', '', '', 90, 5, 'data/T-Shirt Coleection 2010 - www.Glamourhuntworld.Blogspot.com.JPG', 0, 1, 1000.0000, 0, 0, '2013-08-01', 0.10000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-08-02 09:47:08', '2013-11-07 14:20:15', 16, 'yes');
INSERT INTO `oc_product` VALUES(58, '1110', 1, '', '', '', '', '', '', '', 81, 7, 'data/giftideasforhim.jpg', 0, 1, 20.0000, 0, 0, '2013-07-11', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-12 17:34:28', '2013-11-07 15:24:33', 65, 'yes');
INSERT INTO `oc_product` VALUES(59, '1110', 1, '', '', '', '', '', '', '', 70, 5, 'data/chocolate.jpg', 0, 1, 10.0000, 0, 0, '2013-07-11', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-12 19:01:44', '2013-11-07 14:19:36', 212, 'yes');
INSERT INTO `oc_product` VALUES(60, '1110', 1, '', '', '', '', '', '', '10', 41, 5, 'data/hyde-park-1952.jpg', 0, 1, 10000.0000, 0, 0, '2013-07-11', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 10, 1, '2013-07-12 19:08:36', '2013-11-07 14:17:39', 233, 'yes');
INSERT INTO `oc_product` VALUES(61, 'Mobile TV', 0, '', '', '', '', '', '', '', 5, 5, 'data/mobile.png', 0, 1, 30.0000, 0, 0, '2013-07-11', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-12 19:15:09', '2013-11-07 14:19:49', 149, 'yes');
INSERT INTO `oc_product` VALUES(62, 'Wrapping Paper1', 0, '', '', '', '', '', '', '', 100, 5, 'data/13541857031293943584.jpg', 0, 1, 0.0000, 0, 0, '2013-07-14', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-15 17:22:32', '2013-11-07 14:21:02', 6, 'no');
INSERT INTO `oc_product` VALUES(63, 'GREETING CARD1', 0, '', '', '', '', '', '', '', 100, 5, 'data/birthday.jpg', 0, 1, 100.0000, 0, 0, '2013-07-14', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-15 17:24:58', '2013-11-07 14:18:55', 13, 'no');
INSERT INTO `oc_product` VALUES(64, 'W', 0, '121', '', '', '', '', '', '', 100, 5, 'data/11148021-service-men-santa-with-cart-and-big-christmas-gift-box-vector-illustration.jpg', 0, 1, 10.0000, 0, 0, '2013-07-17', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-18 12:27:02', '2013-11-07 14:20:48', 0, 'no');
INSERT INTO `oc_product` VALUES(65, '1123344', 1, '', '', '', '', '', '', '', 89, 5, 'data/ETC-Men-Black-Accessory-Gift-Set_9ae6d382eb8c1585b90fc9fe3206d6df_images_360_480_mini.jpg', 0, 1, 599.0000, 0, 0, '2013-07-21', 10.00000000, 2, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-22 16:59:18', '2013-11-07 14:18:29', 201, 'yes');
INSERT INTO `oc_product` VALUES(66, 'SSS', 0, '', '', '', '', '', '', '', 50, 5, '', 0, 1, 50.0000, 0, 0, '2013-07-24', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-25 19:31:20', '2013-11-07 14:17:59', 16, 'no');
INSERT INTO `oc_product` VALUES(54, '11113', 1, '', '', '', '', '', '', '', 80, 5, 'data/11148021-service-men-santa-with-cart-and-big-christmas-gift-box-vector-illustration.jpg', 8, 1, 1300.0000, 0, 0, '2013-07-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-04 16:07:42', '2013-11-07 14:20:42', 97, 'yes');
INSERT INTO `oc_product` VALUES(55, '11115', 1, '', '', '', '', '', '', '', 62, 5, 'data/1327412610jX8859.jpg', 10, 1, 50.0000, 0, 0, '2013-07-03', 5.20000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-04 16:09:06', '2013-11-07 14:17:45', 247, 'yes');
INSERT INTO `oc_product` VALUES(56, '11116', 1, '', '', '', '', '', '', '', 73, 5, 'data/depositphotos_2809701-3d-red-gift-box.jpg', 9, 1, 75.0000, 0, 0, '2013-07-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-04 16:11:23', '2013-11-07 14:18:34', 126, 'yes');
INSERT INTO `oc_product` VALUES(57, 'w1', 0, '', '', '', '', '', '', '', 100, 5, 'data/w1.JPG', 0, 1, 15.0000, 0, 0, '2013-07-09', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-10 16:27:27', '2013-11-07 14:20:56', 33, 'no');
INSERT INTO `oc_product` VALUES(52, '11111', 1, '', '', '', '', '', '', '', 75, 5, 'data/gifts_another_2.jpg', 8, 1, 1000.0000, 0, 0, '2013-07-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-04 16:05:26', '2013-11-07 14:18:12', 232, 'yes');
INSERT INTO `oc_product` VALUES(53, '11112', 0, '', '', '', '', '', '', '', 70, 5, 'data/depositphotos_18941833-Broken-Chocolate-Easter-Egg-with-Gift-Box-Inside-over-white-background.jpg', 5, 1, 2500.0000, 0, 0, '2013-07-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-07-04 16:06:30', '2013-11-07 14:20:05', 38, 'yes');
INSERT INTO `oc_product` VALUES(72, 'KUDASDAS', 1, '123344', '', '', '', '', '', '', 2, 5, 'data/awards002.jpg', 0, 1, 10000.0000, 0, 0, '2013-08-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-08-19 08:54:23', '2013-11-07 14:18:48', 108, 'yes');
INSERT INTO `oc_product` VALUES(73, 'test123', 1, '', '', '', '', '', '', '', 78, 5, 'data/chocolate.jpg', 0, 1, 1000.0000, 0, 0, '2013-07-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-08-19 15:50:45', '2013-11-07 14:20:20', 33, 'yes');
INSERT INTO `oc_product` VALUES(74, 'Pouch', 1, '', '', '', '', '', '', '', 0, 7, 'data/IMG_5553-1.jpg', 0, 1, 50000.0000, 0, 0, '2013-09-17', 100.00000000, 2, 15.00000000, 3.00000000, 9.00000000, 1, 1, 1, 1, 1, '2013-09-18 12:06:33', '2013-11-07 14:17:50', 55, 'yes');
INSERT INTO `oc_product` VALUES(75, 'Market Bag', 1, '', '', '', '', '', '', '', 0, 8, 'data/apolismarketbag_1024x1024_large.jpg', 0, 1, 650000.0000, 0, 0, '2013-09-20', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-09-21 07:00:59', '2013-11-07 14:19:42', 24, 'yes');
INSERT INTO `oc_product` VALUES(76, 'adga', 1, '', '', '', '', '', '', '', 1, 5, 'data/mortar_pestle2_large.jpg', 0, 1, 0.0000, 0, 0, '2013-09-20', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-09-21 07:09:20', '2013-11-07 14:17:35', 45, 'yes');
INSERT INTO `oc_product` VALUES(77, 'adhf', 1, '', '', '', '', '', '', '', 0, 5, 'data/inature-packaging-05_1024x1024.jpg', 0, 1, 200000.0000, 0, 0, '2013-09-20', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-09-21 07:13:50', '2013-11-07 14:17:19', 30, 'yes');
INSERT INTO `oc_product` VALUES(78, 'Candle', 1, '', '', '', '', '', '', '', 0, 5, 'data/IMG_5609a.jpg', 0, 1, 50000.0000, 0, 0, '2013-09-26', 300.00000000, 2, 10.00000000, 10.00000000, 15.00000000, 1, 1, 1, 1, 1, '2013-09-27 15:25:14', '2013-11-07 14:17:24', 29, 'yes');
INSERT INTO `oc_product` VALUES(79, 'sdsd', 0, '', '', '', '', '', '', '', 1, 5, '', 0, 1, 0.0000, 0, 0, '2013-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-11-06 11:45:09', '2013-11-07 14:20:30', 1, 'yes');
INSERT INTO `oc_product` VALUES(80, 'sdsd', 0, '', '', '', '', '', '', '', 1, 5, '', 0, 1, 0.0000, 0, 0, '2013-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-11-06 11:45:36', '2013-11-07 14:20:36', 1, 'yes');
INSERT INTO `oc_product` VALUES(81, 'gaga model', 0, '', '', '', '', '', '', '', 0, 5, 'data/levis-t-shirt-21441.jpg', 0, 1, 0.0000, 0, 0, '2013-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-11-06 11:46:59', '2013-11-07 15:17:35', 6, 'yes');
INSERT INTO `oc_product` VALUES(82, 'dx', 0, '', '', '', '', '', '', '', 1, 5, '', 0, 1, 0.0000, 0, 0, '2013-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-11-06 13:13:11', '2013-11-07 14:18:17', 0, 'yes');
INSERT INTO `oc_product` VALUES(83, 'kurobox', 1, '', '', '', '', '', '', '', 1, 5, 'data/gills2.jpg', 0, 1, 0.0000, 0, 0, '2013-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 0, '2013-11-06 14:27:02', '2013-11-07 14:18:41', 5, 'yes');
INSERT INTO `oc_product` VALUES(84, 'kipas', 0, '', '', '', '', '', '', '', 1, 5, 'data/1653741_kipascendana.jpg', 0, 1, 0.0000, 0, 0, '2013-11-05', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-11-06 14:43:05', '2013-11-07 14:19:31', 0, 'no');
INSERT INTO `oc_product` VALUES(85, 'dvd', 0, '', '', '', '', '', '', '', 0, 5, 'data/$T2eC16RHJHcFFkMMJ50RBSH)4JkvoQ~~60_35.JPG', 0, 1, 0.0000, 0, 0, '2013-11-06', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-11-07 14:25:27', '2013-11-08 10:23:01', 15, 'yes');
INSERT INTO `oc_product` VALUES(86, 'Action Figure', 1, '', '', '', '', '', '', '', 1, 7, 'data/MASKED-RIDER-BLADE-BLUE-SPADER-S.H.FIGUARTS-AF.jpg', 0, 1, 0.0000, 0, 0, '2013-11-20', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-11-21 23:25:30', '0000-00-00 00:00:00', 2, 'yes');
INSERT INTO `oc_product` VALUES(87, 'Belt Henshin', 1, '', '', '', '', '', '', '', 1, 5, 'data/$T2eC16VHJHIE9nyseF5YBP+U2V8-wg~~60_35.JPG', 0, 1, 0.0000, 0, 0, '2013-11-20', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, '2013-11-21 23:30:37', '0000-00-00 00:00:00', 2, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY  (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY  (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` VALUES(52, 1, 'Dinner set', '&lt;p&gt;Dinner set&lt;/p&gt;\r\n', 'Dinner set', 'Dinner set', 'Dinner set');
INSERT INTO `oc_product_description` VALUES(53, 1, 'Necklace', '&lt;p&gt;Necklace&lt;/p&gt;\r\n', 'Necklace', 'Necklace', 'Necklace');
INSERT INTO `oc_product_description` VALUES(54, 1, 'Watch', '&lt;p&gt;Watch&lt;/p&gt;\r\n', 'Watch', 'Watch', 'Watch');
INSERT INTO `oc_product_description` VALUES(55, 1, 'Chocolates', '&lt;p&gt;Chocolates&lt;/p&gt;\r\n', 'Chocolates', 'Chocolates', 'Chocolates');
INSERT INTO `oc_product_description` VALUES(56, 1, 'Flower', '&lt;p&gt;Flower&lt;/p&gt;\r\n', 'Flower', 'Flower', 'Flower');
INSERT INTO `oc_product_description` VALUES(57, 1, 'wrapper1', '&lt;p&gt;wrapper&lt;/p&gt;\r\n', 'wrapper', 'wrapper', 'wrapper');
INSERT INTO `oc_product_description` VALUES(58, 1, 'Perfume', '&lt;p&gt;Perfume&lt;/p&gt;\r\n', 'Perfume', 'Perfume', 'Perfume');
INSERT INTO `oc_product_description` VALUES(59, 1, 'Marker', '&lt;p&gt;Marker And Highlighter&lt;/p&gt;\r\n', 'Marker And Highlighter', 'Marker And Highlighter', '');
INSERT INTO `oc_product_description` VALUES(60, 1, 'Chess', '&lt;p&gt;Chess&lt;/p&gt;\r\n', 'Chess', 'Chess', '');
INSERT INTO `oc_product_description` VALUES(61, 1, 'Mobile TV', '&lt;p&gt;Mobile TV&lt;/p&gt;\r\n', 'Mobile TV', 'Mobile TV', '');
INSERT INTO `oc_product_description` VALUES(62, 1, 'Wrapping Paper1', '&lt;p&gt;Wrapping Paper1&lt;/p&gt;\r\n', 'Wrapping Paper1', 'Wrapping Paper1', 'Wrapping Paper1');
INSERT INTO `oc_product_description` VALUES(63, 1, 'GREETING CARD1', '&lt;p&gt;GREETING CARD1&lt;/p&gt;\r\n', 'GREETING CARD1', 'GREETING CARD1', 'GREETING CARD1');
INSERT INTO `oc_product_description` VALUES(64, 1, 'Wraping papers for gift', '&lt;p&gt;Wraping papers for gift&lt;/p&gt;\r\n', 'Wraping papers for gift', 'Wraping papers for gift', '');
INSERT INTO `oc_product_description` VALUES(65, 1, 'ETC MEN BLACK ACCESSORY ', '&lt;p&gt;Accessory gift set with a tie, pocket square and cufflinks Black tie in an all over paisley woven design, has a branded loop on the inner side to hold the tie in place Square shaped cufflinks with enamel detail in the centre, has a hinged back Black satin pocket square&lt;/p&gt;\r\n\r\n&lt;p&gt;Microfibre Dry clean Tie length: 150 cm Cufflinks: 1.5 cm x 1.5 cm Pocket square: 26.5 cm x 26.5 cm&lt;/p&gt;\r\n', 'MEN ACCESSORY ', ' MEN  ACCESSORY ', 'MEN');
INSERT INTO `oc_product_description` VALUES(66, 1, 'Creative Wrapping Ideas', '', 'Creative Wrapping Ideas', 'Creative Wrapping Ideas', '');
INSERT INTO `oc_product_description` VALUES(67, 1, 'Creative Wrapping Paper ', '&lt;p&gt;Creative Wrapping Paper&lt;/p&gt;\r\n', 'Creative Wrapping Paper ', 'Creative Wrapping Paper ', '');
INSERT INTO `oc_product_description` VALUES(68, 1, 'test product', '&lt;p&gt;test product&lt;/p&gt;\r\n', 'test product', 'test product', 'test product');
INSERT INTO `oc_product_description` VALUES(69, 1, 'abc', '&lt;p&gt;abc&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` VALUES(70, 1, 'Test 12', '&lt;p&gt;Test 12&lt;/p&gt;\r\n', 'Test 12', 'Test 12', '');
INSERT INTO `oc_product_description` VALUES(71, 1, 'XYZ', '&lt;p&gt;aaaaaaaaaaaaaaaa&lt;/p&gt;\r\n\r\n&lt;p&gt;aaaaaaaaaaaa&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` VALUES(72, 1, 'Glass', '&lt;p&gt;asdasf gefasdasdsa&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` VALUES(73, 1, 'test 123', '&lt;p&gt;test 123&lt;/p&gt;\r\n', 'test 123', 'test 123', 'Chocolates');
INSERT INTO `oc_product_description` VALUES(74, 1, 'Cosmetic pouch', '', '', '', 'cosmetic, beauty, bag, pouch');
INSERT INTO `oc_product_description` VALUES(75, 1, 'Market Bag', '&lt;p&gt;The Vancouver Market bag is the result of an Old Faithful Shop and Apolis collaboration.&amp;nbsp;A few years ago, Apolis partnered with Saidpur Enterprises: a project established in Bangladesh to help mothers of malnourished children find temporary employment producing jute handicrafts .&lt;/p&gt;\r\n\r\n&lt;p&gt;The operation quickly grew and now support many artisans for a large fair trade export which provide literacy classes, training on nutrition, women''s legal rights, educational awareness and finance. Our special edition bag seeks to further a Local + Global initiative. By purchasing this bag and using it locally we can provide aid and support to families who would not receive these benefits otherwise. It''s simple: Commerce with a conscience. Crafted with 100% Natural Golden Jute Fibre, the bag is waterproof lined and topped with vegetable dyed leather handles reinforced by antique nickel rivets.&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` VALUES(76, 1, 'Ceramic Mortar &amp; Pestle', '&lt;p&gt;Made in the UK for decades, this Mortar &amp;amp; Pestle is a solid staple for any aspiring chef. Heavyweight in design for counter stability and a thorough grind for your spices and herbs. A beechwood handle will develop a beautiful patina with use. Ceramic Porcelain 16.5 cm diameter/6.5 in diameter Volume 473 ml/1 Pint&lt;/p&gt;\r\n', 'Ceramic Mortar &amp; Pestle', 'Ceramic Mortar &amp; Pestle', '');
INSERT INTO `oc_product_description` VALUES(78, 1, 'Candle Pot', '&lt;p&gt;Contain two pieces of candles&lt;/p&gt;\r\n', '', '', 'candle, decor');
INSERT INTO `oc_product_description` VALUES(77, 1, 'Calendula Hydrate', '&lt;p&gt;Calendula Hydrate is identified by one yellow essence drop on the packaging. Calendula Hydrate moisturises skin and acts as a barrier to reduce water loss from skin. Hydrate contains the least plant essence concentration but it contains 2% Colloidal oatmeal and Vitamin E which is highly recommended for chronic skin conditions such as eczema. Hydrate is ideal for daily skin maintenance and for use by all family members. This pale golden lotion is a lightweight oil in water emollient. Calendula extract equivalent to 20mg/g dry flower. Calendula and Sandalwood are key natural actives.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ingredients: Aqua (Purified water), Glycerin, Stearic acid, Sorbitol, Avena sativa (Oat) kernel flour, Cetearyl alcohol, Calendula officinalis flower extract, Phenoxyethanol (and) Ethylhexylglycerin, Triethanolamine, Tocopheryl acetate, Santalum album (Sandalwood) wood oil, Disodium EDTA. Which iNature product to use? Consider how dry your skin and your surrounding environment. The drier the skin the richer the product needs to be. Calendula Hydrate is a lotion, Calendula Nourish is a cream, Calendula Repair is a balm.&amp;nbsp;&lt;/p&gt;\r\n', 'Calendula Hydrate', 'Calendula Hydrate', '');
INSERT INTO `oc_product_description` VALUES(79, 1, 'testing', '', 'sdfdsfsdf sdfdsf sdf sdf', '', '');
INSERT INTO `oc_product_description` VALUES(80, 1, 'testing 2', '', 'sdfdsfsdf sdfdsf sdf sdf', '', '');
INSERT INTO `oc_product_description` VALUES(81, 1, 'gaganame', '', '', '', '');
INSERT INTO `oc_product_description` VALUES(82, 1, 'dx', '', '', '', '');
INSERT INTO `oc_product_description` VALUES(83, 1, 'Gazeba baba', '&lt;p&gt;sdf sdf sdf sdf sdf sd df&lt;/p&gt;\r\n', 'sdf sdf', 'sdf sdf sdf d sdf', 'sdf,sdf,sdf,sdf');
INSERT INTO `oc_product_description` VALUES(84, 1, 'kipas putri kipas', '', '', '', '');
INSERT INTO `oc_product_description` VALUES(85, 1, 'MIKASA SIGMA SINGEKO NO KYOJIN', '', 'mikasa ackerman singeko no kyojin action figure bandai japan', 'mikasa ackerman singeko no kyojin action figure xxxx', '');
INSERT INTO `oc_product_description` VALUES(86, 1, 'S.H.Figuarts KR Blade Blue Spader', '&lt;p&gt;&lt;span class=&quot;irc_su&quot; dir=&quot;ltr&quot; style=&quot;text-align: left;&quot;&gt;S.H.Figuarts Masked Rider Kamen Rider Blade Blue Spader Action Figure&lt;/span&gt;&lt;/p&gt;\r\n', 'S.H.Figuarts Masked Rider Kamen Rider Blade Blue Spader Action Figure', 'S.H.Figuarts Masked Rider Kamen Rider Blade Blue Spader Action Figure', '');
INSERT INTO `oc_product_description` VALUES(87, 1, 'Henshin Belt Faiz-Legend-Series', '&lt;p&gt;Henshin Belt Faiz-Legend-Series&lt;/p&gt;\r\n', 'Henshin Belt Faiz-Legend-Series', 'Henshin Belt Faiz-Legend-Series', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL default '0',
  `priority` int(5) NOT NULL default '1',
  `price` decimal(15,4) NOT NULL default '0.0000',
  `date_start` date NOT NULL default '0000-00-00',
  `date_end` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=461 ;

--
-- Dumping data for table `oc_product_discount`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) default NULL,
  `sort_order` int(3) NOT NULL default '0',
  PRIMARY KEY  (`product_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2518 ;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` VALUES(2503, 74, 'data/IMG_5553-1.jpg', 1);
INSERT INTO `oc_product_image` VALUES(2513, 75, 'data/apolismarketbag_1024x1024_large.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2501, 76, 'data/mortar_pestle1_large.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2500, 76, 'data/mortar_pestle4_large.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2499, 76, 'data/mortar_pestle2_large.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2497, 77, 'data/inature-packaging-05_1024x1024.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2498, 78, 'data/IMG_5609a.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2514, 71, 'data/windows 8.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2502, 55, 'data/11148021-service-men-santa-with-cart-and-big-christmas-gift-box-vector-illustration.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2512, 65, 'data/ETC-Men-Black-Accessory-Gift-Set_1948ac4b992039ab039f7e4124f1de4c_images_360_480_mini.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2496, 69, 'data/xpixaal.jpg.pagespeed.ic.dF2CaXZRz7.jpg', 1);
INSERT INTO `oc_product_image` VALUES(2511, 65, 'data/ETC-Men-Black-Accessory-Gift-Set_1dfcb660126b7c60783b8b79431e5e00_images_360_480_mini.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2510, 65, 'data/ETC-Men-Black-Accessory-Gift-Set_04207647740001bc33024dcf1820b303_images_360_480_mini.JPG', 0);
INSERT INTO `oc_product_image` VALUES(2506, 52, 'data/den.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2505, 52, 'data/images (1).jpg', 0);
INSERT INTO `oc_product_image` VALUES(2504, 52, 'data/den.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2515, 86, 'data/mZps5C9hfTnST7TKlJ1NnKw.jpg', 0);
INSERT INTO `oc_product_image` VALUES(2516, 87, 'data/$(KGrHqNHJBcE7)u7Icn4BPEo,nSn!Q~~60_12.JPG', 0);
INSERT INTO `oc_product_image` VALUES(2517, 87, 'data/5318363_20130328105507.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY  (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=255 ;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` VALUES(253, 60, 11, '', 1);
INSERT INTO `oc_product_option` VALUES(254, 60, 14, '', 1);
INSERT INTO `oc_product_option` VALUES(252, 60, 13, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_options_new`
--

CREATE TABLE `oc_product_options_new` (
  `product_options_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY  (`product_options_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=215 ;

--
-- Dumping data for table `oc_product_options_new`
--

INSERT INTO `oc_product_options_new` VALUES(201, 55, 'Red', '', 6, '2013-11-07 14:17:45', '2013-11-07 14:17:45');
INSERT INTO `oc_product_options_new` VALUES(200, 55, 'yellow', '', 14, '2013-11-07 14:17:45', '2013-11-07 14:17:45');
INSERT INTO `oc_product_options_new` VALUES(199, 55, 'blue', '', 2, '2013-11-07 14:17:45', '2013-11-07 14:17:45');
INSERT INTO `oc_product_options_new` VALUES(214, 71, 'white', 'medium', 0, '2013-11-07 14:21:07', '2013-11-07 14:21:07');
INSERT INTO `oc_product_options_new` VALUES(197, 60, 'beige', 'small', 0, '2013-11-07 14:17:40', '2013-11-07 14:17:40');
INSERT INTO `oc_product_options_new` VALUES(192, 69, '', '', -13, '2013-11-07 14:17:15', '2013-11-07 14:17:15');
INSERT INTO `oc_product_options_new` VALUES(205, 52, 'yellow', 'small', 0, '2013-11-07 14:18:12', '2013-11-07 14:18:12');
INSERT INTO `oc_product_options_new` VALUES(196, 60, 'Red', 'large', 5, '2013-11-07 14:17:40', '2013-11-07 14:17:40');
INSERT INTO `oc_product_options_new` VALUES(195, 60, 'yellow', 'medium', 5, '2013-11-07 14:17:40', '2013-11-07 14:17:40');
INSERT INTO `oc_product_options_new` VALUES(204, 52, '', '', 0, '2013-11-07 14:18:12', '2013-11-07 14:18:12');
INSERT INTO `oc_product_options_new` VALUES(203, 52, 'yellow', 'medium', 0, '2013-11-07 14:18:12', '2013-11-07 14:18:12');
INSERT INTO `oc_product_options_new` VALUES(213, 71, '', '', 0, '2013-11-07 14:21:07', '2013-11-07 14:21:07');
INSERT INTO `oc_product_options_new` VALUES(194, 60, 'orange', 'medium', 50, '2013-11-07 14:17:40', '2013-11-07 14:17:40');
INSERT INTO `oc_product_options_new` VALUES(193, 60, 'white', 'xxl', 2, '2013-11-07 14:17:40', '2013-11-07 14:17:40');
INSERT INTO `oc_product_options_new` VALUES(212, 72, 'white', 'medium', 0, '2013-11-07 14:18:48', '2013-11-07 14:18:48');
INSERT INTO `oc_product_options_new` VALUES(211, 72, 'Red', '', 0, '2013-11-07 14:18:48', '2013-11-07 14:18:48');
INSERT INTO `oc_product_options_new` VALUES(210, 72, 'white', 'small', 0, '2013-11-07 14:18:48', '2013-11-07 14:18:48');
INSERT INTO `oc_product_options_new` VALUES(208, 56, 'white', 'medium', 0, '2013-11-07 14:18:34', '2013-11-07 14:18:34');
INSERT INTO `oc_product_options_new` VALUES(207, 56, 'Red', 'small', 0, '2013-11-07 14:18:34', '2013-11-07 14:18:34');
INSERT INTO `oc_product_options_new` VALUES(206, 56, 'white', '', 0, '2013-11-07 14:18:34', '2013-11-07 14:18:34');
INSERT INTO `oc_product_options_new` VALUES(209, 83, '', '', 0, '2013-11-07 14:18:41', '2013-11-07 14:18:41');
INSERT INTO `oc_product_options_new` VALUES(198, 60, 'blue', 'small', 8, '2013-11-07 14:17:40', '2013-11-07 14:17:40');
INSERT INTO `oc_product_options_new` VALUES(202, 55, '', '', 20, '2013-11-07 14:17:45', '2013-11-07 14:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL auto_increment,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `option_size` varchar(50) default NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY  (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` VALUES(83, 253, 60, 11, 46, '', 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
INSERT INTO `oc_product_option_value` VALUES(82, 253, 60, 11, 47, '', 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
INSERT INTO `oc_product_option_value` VALUES(81, 253, 60, 11, 48, '', 20, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
INSERT INTO `oc_product_option_value` VALUES(87, 254, 60, 14, 55, '', 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
INSERT INTO `oc_product_option_value` VALUES(89, 254, 60, 14, 57, '', 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
INSERT INTO `oc_product_option_value` VALUES(88, 254, 60, 14, 56, '', 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
INSERT INTO `oc_product_option_value` VALUES(85, 252, 60, 13, 53, '', 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
INSERT INTO `oc_product_option_value` VALUES(80, 252, 60, 13, 52, '', 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
INSERT INTO `oc_product_option_value` VALUES(86, 252, 60, 13, 50, '', 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
INSERT INTO `oc_product_option_value` VALUES(84, 252, 60, 13, 51, '', 10, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_personalize_gift`
--

CREATE TABLE `oc_product_personalize_gift` (
  `personalize_gift_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `events` varchar(255) NOT NULL,
  `receipients` varchar(255) NOT NULL,
  `personality` varchar(255) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `min_age` tinyint(3) NOT NULL,
  `max_age` tinyint(3) NOT NULL,
  `interests` varchar(255) NOT NULL,
  `min_tech_savvy` tinyint(3) NOT NULL,
  `max_tech_savvy` tinyint(3) NOT NULL,
  `min_warddrobe_color` tinyint(3) NOT NULL,
  `max_warddrobe_color` tinyint(3) NOT NULL,
  `min_creativity_level` tinyint(3) NOT NULL,
  `max_creativity_level` tinyint(3) NOT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY  (`personalize_gift_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `oc_product_personalize_gift`
--

INSERT INTO `oc_product_personalize_gift` VALUES(1, 52, 'Wedding', 'Friend', 'Happy go lucky', 'male,female', 20, 80, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:18:12', '2013-11-07 14:18:12');
INSERT INTO `oc_product_personalize_gift` VALUES(2, 53, 'Wedding,Engagement,Birth day,Anniversary', 'Sister,Mother,Wife', 'openness', 'female', 5, 80, 'outdoors', 1, 1, 1, 1, 1, 1, '2013-11-07 14:20:05', '2013-11-07 14:20:05');
INSERT INTO `oc_product_personalize_gift` VALUES(3, 54, 'Wedding,Engagement,Birth day,Anniversary', 'Brother,Sister,Mother,Father,Husband,Wife,Friend', 'Happy go lucky', 'male,female', 5, 80, 'sports', 1, 1, 1, 1, 1, 1, '2013-11-07 14:20:42', '2013-11-07 14:20:42');
INSERT INTO `oc_product_personalize_gift` VALUES(4, 55, 'Birth day', 'Brother,Sister,Mother,Father,Husband,Wife,Friend', 'Happy go lucky', 'male,female', 10, 40, 'foodie', 18, 9, 1, 1, 1, 1, '2013-11-07 14:17:45', '2013-11-07 14:17:45');
INSERT INTO `oc_product_personalize_gift` VALUES(5, 56, 'Wedding,Engagement,Birth day,Anniversary', 'Sister,Mother,Wife', 'Happy go lucky', 'male,female', 20, 87, 'arts', 1, 1, 1, 1, 1, 1, '2013-11-07 14:18:34', '2013-11-07 14:18:34');
INSERT INTO `oc_product_personalize_gift` VALUES(6, 57, '', '', 'Happy go lucky', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:20:56', '2013-11-07 14:20:56');
INSERT INTO `oc_product_personalize_gift` VALUES(7, 58, '', '', 'Happy go lucky', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 15:24:33', '2013-11-07 15:24:33');
INSERT INTO `oc_product_personalize_gift` VALUES(8, 59, '', '', 'Happy go lucky', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:19:36', '2013-11-07 14:19:36');
INSERT INTO `oc_product_personalize_gift` VALUES(9, 60, 'Wedding,Engagement,Birth day,Anniversary', 'Brother,Sister,Mother,Father', 'Happy go lucky,openness,conscientious,extraversion,agreeableness', 'male,female', 10, 80, 'foodie', 18, 100, 17, 100, 37, 100, '2013-11-07 14:17:39', '2013-11-07 14:17:39');
INSERT INTO `oc_product_personalize_gift` VALUES(10, 61, 'Engagement', 'Wife', 'Happy go lucky', 'female', 1, 100, 'foodie', 10, 20, 10, 20, 10, 20, '2013-11-07 14:19:49', '2013-11-07 14:19:49');
INSERT INTO `oc_product_personalize_gift` VALUES(11, 62, '', '', 'Happy go lucky', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:21:02', '2013-11-07 14:21:02');
INSERT INTO `oc_product_personalize_gift` VALUES(12, 63, '', '', 'Happy go lucky', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:18:55', '2013-11-07 14:18:55');
INSERT INTO `oc_product_personalize_gift` VALUES(13, 64, '', '', 'Happy go lucky', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:20:48', '2013-11-07 14:20:48');
INSERT INTO `oc_product_personalize_gift` VALUES(14, 65, 'Engagement,Birth day,Anniversary', 'Brother,Father,Friend', 'extraversion', 'male', 11, 60, 'sports', 12, 70, 16, 46, 19, 99, '2013-11-07 14:18:29', '2013-11-07 14:18:29');
INSERT INTO `oc_product_personalize_gift` VALUES(15, 66, '', '', 'Happy go lucky', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:17:59', '2013-11-07 14:17:59');
INSERT INTO `oc_product_personalize_gift` VALUES(16, 67, '', '', 'Happy go lucky', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:18:05', '2013-11-07 14:18:05');
INSERT INTO `oc_product_personalize_gift` VALUES(17, 68, 'Wedding,Engagement,Birth day,Anniversary', 'Brother,Sister,Mother,Father,Husband,Wife,Friend', 'Happy go lucky', 'male,female', 1, 100, 'cooking', 1, 100, 1, 100, 1, 100, '2013-11-07 14:20:25', '2013-11-07 14:20:25');
INSERT INTO `oc_product_personalize_gift` VALUES(18, 69, 'Engagement,Birth day', 'Wife', 'Happy go lucky', '', 1, 10, 'foodie,outdoors', 1, 1, 1, 1, 1, 1, '2013-11-07 14:17:15', '2013-11-07 14:17:15');
INSERT INTO `oc_product_personalize_gift` VALUES(19, 70, 'Birth day', '', '', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:20:15', '2013-11-07 14:20:15');
INSERT INTO `oc_product_personalize_gift` VALUES(20, 71, 'Wedding,Engagement,Birth day,Anniversary', 'Brother,Sister,Mother,Father,Husband,Wife,Friend', 'Happy go lucky,openness,conscientious,extraversion,agreeableness,neuroticism', 'male,female', 1, 100, 'sports', 1, 100, 1, 100, 1, 100, '2013-11-07 14:21:07', '2013-11-07 14:21:07');
INSERT INTO `oc_product_personalize_gift` VALUES(21, 72, 'Birth day', 'Friend', 'neuroticism', 'female', 10, 20, 'foodie', 10, 15, 15, 20, 50, 100, '2013-11-07 14:18:48', '2013-11-07 14:18:48');
INSERT INTO `oc_product_personalize_gift` VALUES(22, 73, '', '', '', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:20:20', '2013-11-07 14:20:20');
INSERT INTO `oc_product_personalize_gift` VALUES(23, 74, 'Wedding,Engagement,Birth day,Anniversary', 'Sister,Mother', 'Happy go lucky', 'female', 12, 30, 'arts', 1, 1, 50, 100, 50, 100, '2013-11-07 14:17:50', '2013-11-07 14:17:50');
INSERT INTO `oc_product_personalize_gift` VALUES(24, 75, '', '', '', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:19:42', '2013-11-07 14:19:42');
INSERT INTO `oc_product_personalize_gift` VALUES(25, 76, '', '', '', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:17:35', '2013-11-07 14:17:35');
INSERT INTO `oc_product_personalize_gift` VALUES(26, 77, '', '', '', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:17:19', '2013-11-07 14:17:19');
INSERT INTO `oc_product_personalize_gift` VALUES(27, 78, '', '', '', '', 1, 1, 'foodie', 1, 1, 1, 1, 1, 1, '2013-11-07 14:17:24', '2013-11-07 14:17:24');
INSERT INTO `oc_product_personalize_gift` VALUES(28, 80, '', '', '', '', 1, 1, 'foodie,sports,outdoors', 1, 1, 1, 1, 1, 1, '2013-11-07 14:20:36', '2013-11-07 14:20:36');
INSERT INTO `oc_product_personalize_gift` VALUES(29, 81, 'Wedding,Engagement,Birth day', 'Brother,Sister,Mother', 'Happy go lucky,openness,conscientious', 'male,female', 1, 1, 'foodie,outdoors,reading', 1, 1, 1, 1, 1, 1, '2013-11-07 15:17:35', '2013-11-07 15:17:35');
INSERT INTO `oc_product_personalize_gift` VALUES(30, 82, 'Birth day', 'Brother', 'Happy go lucky,openness,conscientious', '', 1, 1, 'foodie,arts', 1, 1, 1, 1, 1, 1, '2013-11-07 14:18:17', '2013-11-07 14:18:17');
INSERT INTO `oc_product_personalize_gift` VALUES(31, 83, 'Birth day', 'Brother', '', 'male,female', 1, 1, 'music,arts', 1, 1, 1, 1, 1, 1, '2013-11-07 14:18:41', '2013-11-07 14:18:41');
INSERT INTO `oc_product_personalize_gift` VALUES(32, 84, 'Wedding', 'Sister', 'Happy go lucky', 'female', 1, 1, 'arts', 1, 1, 1, 1, 1, 1, '2013-11-07 14:19:31', '2013-11-07 14:19:31');
INSERT INTO `oc_product_personalize_gift` VALUES(33, 85, '', '', '', '', 1, 1, '', 1, 1, 1, 1, 1, 1, '2013-11-08 10:23:01', '2013-11-08 10:23:01');
INSERT INTO `oc_product_personalize_gift` VALUES(34, 86, '', 'Brother', '', 'male', 1, 1, '', 1, 1, 1, 1, 1, 1, '2013-11-21 23:25:30', '2013-11-21 23:25:30');
INSERT INTO `oc_product_personalize_gift` VALUES(35, 87, '', '', '', '', 1, 1, '', 1, 1, 1, 1, 1, 1, '2013-11-21 23:30:37', '2013-11-21 23:30:37');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` VALUES(52, 54);
INSERT INTO `oc_product_related` VALUES(52, 55);
INSERT INTO `oc_product_related` VALUES(52, 56);
INSERT INTO `oc_product_related` VALUES(54, 52);
INSERT INTO `oc_product_related` VALUES(55, 52);
INSERT INTO `oc_product_related` VALUES(56, 52);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `customer_group_id` int(11) NOT NULL default '0',
  `points` int(8) NOT NULL default '0',
  PRIMARY KEY  (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=882 ;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` VALUES(846, 72, 1, 0);
INSERT INTO `oc_product_reward` VALUES(858, 70, 1, 0);
INSERT INTO `oc_product_reward` VALUES(831, 69, 1, 0);
INSERT INTO `oc_product_reward` VALUES(866, 62, 1, 0);
INSERT INTO `oc_product_reward` VALUES(865, 57, 1, 0);
INSERT INTO `oc_product_reward` VALUES(838, 66, 1, 0);
INSERT INTO `oc_product_reward` VALUES(839, 67, 1, 0);
INSERT INTO `oc_product_reward` VALUES(867, 71, 1, 0);
INSERT INTO `oc_product_reward` VALUES(853, 61, 1, 0);
INSERT INTO `oc_product_reward` VALUES(835, 60, 1, 0);
INSERT INTO `oc_product_reward` VALUES(876, 58, 1, 0);
INSERT INTO `oc_product_reward` VALUES(844, 56, 1, 0);
INSERT INTO `oc_product_reward` VALUES(863, 54, 1, 0);
INSERT INTO `oc_product_reward` VALUES(856, 53, 1, 0);
INSERT INTO `oc_product_reward` VALUES(860, 68, 1, 0);
INSERT INTO `oc_product_reward` VALUES(843, 65, 1, 0);
INSERT INTO `oc_product_reward` VALUES(864, 64, 1, 0);
INSERT INTO `oc_product_reward` VALUES(847, 63, 1, 0);
INSERT INTO `oc_product_reward` VALUES(836, 55, 1, 0);
INSERT INTO `oc_product_reward` VALUES(851, 59, 1, 0);
INSERT INTO `oc_product_reward` VALUES(840, 52, 1, 0);
INSERT INTO `oc_product_reward` VALUES(859, 73, 1, 0);
INSERT INTO `oc_product_reward` VALUES(837, 74, 1, 0);
INSERT INTO `oc_product_reward` VALUES(852, 75, 1, 0);
INSERT INTO `oc_product_reward` VALUES(834, 76, 1, 0);
INSERT INTO `oc_product_reward` VALUES(832, 77, 1, 0);
INSERT INTO `oc_product_reward` VALUES(833, 78, 1, 0);
INSERT INTO `oc_product_reward` VALUES(861, 79, 1, 0);
INSERT INTO `oc_product_reward` VALUES(862, 80, 1, 0);
INSERT INTO `oc_product_reward` VALUES(874, 81, 1, 0);
INSERT INTO `oc_product_reward` VALUES(841, 82, 1, 0);
INSERT INTO `oc_product_reward` VALUES(845, 83, 1, 0);
INSERT INTO `oc_product_reward` VALUES(850, 84, 1, 0);
INSERT INTO `oc_product_reward` VALUES(879, 85, 1, 0);
INSERT INTO `oc_product_reward` VALUES(880, 86, 1, 0);
INSERT INTO `oc_product_reward` VALUES(881, 87, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL default '1',
  `price` decimal(15,4) NOT NULL default '0.0000',
  `date_start` date NOT NULL default '0000-00-00',
  `date_end` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=447 ;

--
-- Dumping data for table `oc_product_special`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` VALUES(52, 64);
INSERT INTO `oc_product_to_category` VALUES(52, 65);
INSERT INTO `oc_product_to_category` VALUES(52, 69);
INSERT INTO `oc_product_to_category` VALUES(52, 97);
INSERT INTO `oc_product_to_category` VALUES(53, 65);
INSERT INTO `oc_product_to_category` VALUES(53, 97);
INSERT INTO `oc_product_to_category` VALUES(54, 66);
INSERT INTO `oc_product_to_category` VALUES(54, 67);
INSERT INTO `oc_product_to_category` VALUES(54, 69);
INSERT INTO `oc_product_to_category` VALUES(54, 97);
INSERT INTO `oc_product_to_category` VALUES(56, 65);
INSERT INTO `oc_product_to_category` VALUES(56, 97);
INSERT INTO `oc_product_to_category` VALUES(57, 76);
INSERT INTO `oc_product_to_category` VALUES(58, 64);
INSERT INTO `oc_product_to_category` VALUES(58, 65);
INSERT INTO `oc_product_to_category` VALUES(58, 78);
INSERT INTO `oc_product_to_category` VALUES(58, 97);
INSERT INTO `oc_product_to_category` VALUES(59, 68);
INSERT INTO `oc_product_to_category` VALUES(59, 69);
INSERT INTO `oc_product_to_category` VALUES(59, 87);
INSERT INTO `oc_product_to_category` VALUES(59, 97);
INSERT INTO `oc_product_to_category` VALUES(60, 69);
INSERT INTO `oc_product_to_category` VALUES(60, 88);
INSERT INTO `oc_product_to_category` VALUES(60, 97);
INSERT INTO `oc_product_to_category` VALUES(61, 70);
INSERT INTO `oc_product_to_category` VALUES(61, 89);
INSERT INTO `oc_product_to_category` VALUES(61, 97);
INSERT INTO `oc_product_to_category` VALUES(62, 76);
INSERT INTO `oc_product_to_category` VALUES(63, 74);
INSERT INTO `oc_product_to_category` VALUES(64, 76);
INSERT INTO `oc_product_to_category` VALUES(65, 64);
INSERT INTO `oc_product_to_category` VALUES(65, 69);
INSERT INTO `oc_product_to_category` VALUES(65, 83);
INSERT INTO `oc_product_to_category` VALUES(65, 97);
INSERT INTO `oc_product_to_category` VALUES(66, 95);
INSERT INTO `oc_product_to_category` VALUES(67, 93);
INSERT INTO `oc_product_to_category` VALUES(67, 96);
INSERT INTO `oc_product_to_category` VALUES(68, 97);
INSERT INTO `oc_product_to_category` VALUES(69, 69);
INSERT INTO `oc_product_to_category` VALUES(69, 97);
INSERT INTO `oc_product_to_category` VALUES(70, 69);
INSERT INTO `oc_product_to_category` VALUES(71, 69);
INSERT INTO `oc_product_to_category` VALUES(72, 97);
INSERT INTO `oc_product_to_category` VALUES(73, 69);
INSERT INTO `oc_product_to_category` VALUES(75, 99);
INSERT INTO `oc_product_to_category` VALUES(75, 100);
INSERT INTO `oc_product_to_category` VALUES(76, 99);
INSERT INTO `oc_product_to_category` VALUES(76, 100);
INSERT INTO `oc_product_to_category` VALUES(77, 99);
INSERT INTO `oc_product_to_category` VALUES(77, 100);
INSERT INTO `oc_product_to_category` VALUES(78, 65);
INSERT INTO `oc_product_to_category` VALUES(78, 66);
INSERT INTO `oc_product_to_category` VALUES(81, 64);
INSERT INTO `oc_product_to_category` VALUES(81, 85);
INSERT INTO `oc_product_to_category` VALUES(84, 92);
INSERT INTO `oc_product_to_category` VALUES(85, 64);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_download`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY  (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` VALUES(52, 0);
INSERT INTO `oc_product_to_store` VALUES(53, 0);
INSERT INTO `oc_product_to_store` VALUES(54, 0);
INSERT INTO `oc_product_to_store` VALUES(55, 0);
INSERT INTO `oc_product_to_store` VALUES(56, 0);
INSERT INTO `oc_product_to_store` VALUES(57, 0);
INSERT INTO `oc_product_to_store` VALUES(58, 0);
INSERT INTO `oc_product_to_store` VALUES(59, 0);
INSERT INTO `oc_product_to_store` VALUES(60, 0);
INSERT INTO `oc_product_to_store` VALUES(61, 0);
INSERT INTO `oc_product_to_store` VALUES(62, 0);
INSERT INTO `oc_product_to_store` VALUES(63, 0);
INSERT INTO `oc_product_to_store` VALUES(64, 0);
INSERT INTO `oc_product_to_store` VALUES(65, 0);
INSERT INTO `oc_product_to_store` VALUES(66, 0);
INSERT INTO `oc_product_to_store` VALUES(67, 0);
INSERT INTO `oc_product_to_store` VALUES(68, 0);
INSERT INTO `oc_product_to_store` VALUES(69, 0);
INSERT INTO `oc_product_to_store` VALUES(70, 0);
INSERT INTO `oc_product_to_store` VALUES(71, 0);
INSERT INTO `oc_product_to_store` VALUES(72, 0);
INSERT INTO `oc_product_to_store` VALUES(73, 0);
INSERT INTO `oc_product_to_store` VALUES(74, 0);
INSERT INTO `oc_product_to_store` VALUES(75, 0);
INSERT INTO `oc_product_to_store` VALUES(76, 0);
INSERT INTO `oc_product_to_store` VALUES(77, 0);
INSERT INTO `oc_product_to_store` VALUES(78, 0);
INSERT INTO `oc_product_to_store` VALUES(79, 0);
INSERT INTO `oc_product_to_store` VALUES(80, 0);
INSERT INTO `oc_product_to_store` VALUES(81, 0);
INSERT INTO `oc_product_to_store` VALUES(82, 0);
INSERT INTO `oc_product_to_store` VALUES(83, 0);
INSERT INTO `oc_product_to_store` VALUES(84, 0);
INSERT INTO `oc_product_to_store` VALUES(85, 0);
INSERT INTO `oc_product_to_store` VALUES(86, 0);
INSERT INTO `oc_product_to_store` VALUES(87, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY  (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_return`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY  (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` VALUES(1, 1, 'Refunded');
INSERT INTO `oc_return_action` VALUES(2, 1, 'Credit Issued');
INSERT INTO `oc_return_action` VALUES(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL auto_increment,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_return_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY  (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` VALUES(1, 1, 'Dead On Arrival');
INSERT INTO `oc_return_reason` VALUES(2, 1, 'Received Wrong Item');
INSERT INTO `oc_return_reason` VALUES(3, 1, 'Order Error');
INSERT INTO `oc_return_reason` VALUES(4, 1, 'Faulty, please supply details');
INSERT INTO `oc_return_reason` VALUES(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY  (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` VALUES(1, 1, 'Pending');
INSERT INTO `oc_return_status` VALUES(3, 1, 'Complete');
INSERT INTO `oc_return_status` VALUES(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_review`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL auto_increment,
  `store_id` int(11) NOT NULL default '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY  (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3470 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` VALUES(1, 0, 'shipping', 'shipping_sort_order', '3', 0);
INSERT INTO `oc_setting` VALUES(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0);
INSERT INTO `oc_setting` VALUES(3, 0, 'sub_total', 'sub_total_status', '1', 0);
INSERT INTO `oc_setting` VALUES(4, 0, 'tax', 'tax_status', '1', 0);
INSERT INTO `oc_setting` VALUES(5, 0, 'total', 'total_sort_order', '9', 0);
INSERT INTO `oc_setting` VALUES(6, 0, 'total', 'total_status', '1', 0);
INSERT INTO `oc_setting` VALUES(7, 0, 'tax', 'tax_sort_order', '5', 0);
INSERT INTO `oc_setting` VALUES(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0);
INSERT INTO `oc_setting` VALUES(9, 0, 'cod', 'cod_sort_order', '5', 0);
INSERT INTO `oc_setting` VALUES(10, 0, 'cod', 'cod_total', '0.01', 0);
INSERT INTO `oc_setting` VALUES(11, 0, 'cod', 'cod_order_status_id', '1', 0);
INSERT INTO `oc_setting` VALUES(12, 0, 'cod', 'cod_geo_zone_id', '0', 0);
INSERT INTO `oc_setting` VALUES(13, 0, 'cod', 'cod_status', '1', 0);
INSERT INTO `oc_setting` VALUES(14, 0, 'shipping', 'shipping_status', '1', 0);
INSERT INTO `oc_setting` VALUES(15, 0, 'shipping', 'shipping_estimator', '1', 0);
INSERT INTO `oc_setting` VALUES(27, 0, 'coupon', 'coupon_sort_order', '4', 0);
INSERT INTO `oc_setting` VALUES(28, 0, 'coupon', 'coupon_status', '1', 0);
INSERT INTO `oc_setting` VALUES(34, 0, 'flat', 'flat_sort_order', '1', 0);
INSERT INTO `oc_setting` VALUES(35, 0, 'flat', 'flat_status', '1', 0);
INSERT INTO `oc_setting` VALUES(36, 0, 'flat', 'flat_geo_zone_id', '0', 0);
INSERT INTO `oc_setting` VALUES(37, 0, 'flat', 'flat_tax_class_id', '9', 0);
INSERT INTO `oc_setting` VALUES(38, 0, 'carousel', 'carousel_module', 'a:1:{i:0;a:10:{s:9:"banner_id";s:1:"8";s:5:"limit";s:1:"5";s:6:"scroll";s:1:"3";s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:11:"resize_type";s:7:"default";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:2:"-1";}}', 1);
INSERT INTO `oc_setting` VALUES(39, 0, 'featured', 'featured_product', '43,40,42,49,46,47,28', 0);
INSERT INTO `oc_setting` VALUES(40, 0, 'featured', 'featured_module', 'a:1:{i:0;a:8:{s:5:"limit";s:1:"6";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:11:"resize_type";s:7:"default";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1);
INSERT INTO `oc_setting` VALUES(41, 0, 'flat', 'flat_cost', '5.00', 0);
INSERT INTO `oc_setting` VALUES(42, 0, 'credit', 'credit_sort_order', '7', 0);
INSERT INTO `oc_setting` VALUES(43, 0, 'credit', 'credit_status', '1', 0);
INSERT INTO `oc_setting` VALUES(53, 0, 'reward', 'reward_sort_order', '2', 0);
INSERT INTO `oc_setting` VALUES(54, 0, 'reward', 'reward_status', '1', 0);
INSERT INTO `oc_setting` VALUES(56, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1);
INSERT INTO `oc_setting` VALUES(57, 0, 'category', 'category_module', 'a:2:{i:0;a:5:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:5:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1);
INSERT INTO `oc_setting` VALUES(649, 0, 'account', 'account_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}}', 1);
INSERT INTO `oc_setting` VALUES(3469, 0, 'config', 'config_google_analytics', '', 0);
INSERT INTO `oc_setting` VALUES(3468, 0, 'config', 'config_error_filename', 'error.txt', 0);
INSERT INTO `oc_setting` VALUES(3466, 0, 'config', 'config_error_display', '0', 0);
INSERT INTO `oc_setting` VALUES(3467, 0, 'config', 'config_error_log', '1', 0);
INSERT INTO `oc_setting` VALUES(3463, 0, 'config', 'config_password', '1', 0);
INSERT INTO `oc_setting` VALUES(3464, 0, 'config', 'config_encryption', '68225b584bd74c2c852e79c35c660271', 0);
INSERT INTO `oc_setting` VALUES(3461, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0);
INSERT INTO `oc_setting` VALUES(3465, 0, 'config', 'config_compression', '0', 0);
INSERT INTO `oc_setting` VALUES(3462, 0, 'config', 'config_maintenance', '0', 0);
INSERT INTO `oc_setting` VALUES(94, 0, 'voucher', 'voucher_sort_order', '8', 0);
INSERT INTO `oc_setting` VALUES(95, 0, 'voucher', 'voucher_status', '1', 0);
INSERT INTO `oc_setting` VALUES(103, 0, 'free_checkout', 'free_checkout_status', '1', 0);
INSERT INTO `oc_setting` VALUES(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0);
INSERT INTO `oc_setting` VALUES(108, 0, 'slideshow', 'slideshow_module', 'a:1:{i:0;a:8:{s:9:"banner_id";s:1:"7";s:5:"width";s:3:"980";s:6:"height";s:3:"280";s:11:"resize_type";s:7:"default";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1);
INSERT INTO `oc_setting` VALUES(1638, 0, 'banner', 'banner_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:1:"9";s:5:"width";s:3:"182";s:6:"height";s:3:"182";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1);
INSERT INTO `oc_setting` VALUES(3460, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0);
INSERT INTO `oc_setting` VALUES(3459, 0, 'config', 'config_seo_url', '0', 0);
INSERT INTO `oc_setting` VALUES(3455, 0, 'config', 'config_fraud_status_id', '7', 0);
INSERT INTO `oc_setting` VALUES(3456, 0, 'config', 'config_secure', '0', 0);
INSERT INTO `oc_setting` VALUES(3457, 0, 'config', 'config_shared', '0', 0);
INSERT INTO `oc_setting` VALUES(3458, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0);
INSERT INTO `oc_setting` VALUES(3454, 0, 'config', 'config_fraud_score', '', 0);
INSERT INTO `oc_setting` VALUES(3453, 0, 'config', 'config_fraud_key', '', 0);
INSERT INTO `oc_setting` VALUES(3452, 0, 'config', 'config_fraud_detection', '0', 0);
INSERT INTO `oc_setting` VALUES(3451, 0, 'config', 'config_alert_emails', '', 0);
INSERT INTO `oc_setting` VALUES(3450, 0, 'config', 'config_account_mail', '0', 0);
INSERT INTO `oc_setting` VALUES(3449, 0, 'config', 'config_alert_mail', '0', 0);
INSERT INTO `oc_setting` VALUES(3448, 0, 'config', 'config_smtp_timeout', '5', 0);
INSERT INTO `oc_setting` VALUES(3446, 0, 'config', 'config_smtp_password', '', 0);
INSERT INTO `oc_setting` VALUES(3447, 0, 'config', 'config_smtp_port', '25', 0);
INSERT INTO `oc_setting` VALUES(3445, 0, 'config', 'config_smtp_username', '', 0);
INSERT INTO `oc_setting` VALUES(3444, 0, 'config', 'config_smtp_host', '', 0);
INSERT INTO `oc_setting` VALUES(3443, 0, 'config', 'config_mail_parameter', '', 0);
INSERT INTO `oc_setting` VALUES(3442, 0, 'config', 'config_mail_protocol', 'mail', 0);
INSERT INTO `oc_setting` VALUES(3441, 0, 'config', 'config_ftp_status', '0', 0);
INSERT INTO `oc_setting` VALUES(3440, 0, 'config', 'config_ftp_root', '', 0);
INSERT INTO `oc_setting` VALUES(3439, 0, 'config', 'config_ftp_password', '', 0);
INSERT INTO `oc_setting` VALUES(3438, 0, 'config', 'config_ftp_username', '', 0);
INSERT INTO `oc_setting` VALUES(3437, 0, 'config', 'config_ftp_port', '21', 0);
INSERT INTO `oc_setting` VALUES(3436, 0, 'config', 'config_ftp_host', 'localhost', 0);
INSERT INTO `oc_setting` VALUES(3435, 0, 'config', 'config_image_cart_height', '120', 0);
INSERT INTO `oc_setting` VALUES(3434, 0, 'config', 'config_image_cart_width', '140', 0);
INSERT INTO `oc_setting` VALUES(3433, 0, 'config', 'config_image_wishlist_height', '47', 0);
INSERT INTO `oc_setting` VALUES(3432, 0, 'config', 'config_image_wishlist_width', '47', 0);
INSERT INTO `oc_setting` VALUES(3431, 0, 'config', 'config_image_compare_height', '90', 0);
INSERT INTO `oc_setting` VALUES(3428, 0, 'config', 'config_image_related_width', '80', 0);
INSERT INTO `oc_setting` VALUES(3430, 0, 'config', 'config_image_compare_width', '90', 0);
INSERT INTO `oc_setting` VALUES(3429, 0, 'config', 'config_image_related_height', '80', 0);
INSERT INTO `oc_setting` VALUES(3427, 0, 'config', 'config_image_additional_height', '143', 0);
INSERT INTO `oc_setting` VALUES(3426, 0, 'config', 'config_image_additional_width', '143', 0);
INSERT INTO `oc_setting` VALUES(3425, 0, 'config', 'config_image_product_height', '240', 0);
INSERT INTO `oc_setting` VALUES(3424, 0, 'config', 'config_image_product_width', '300', 0);
INSERT INTO `oc_setting` VALUES(3423, 0, 'config', 'config_image_popup_height', '500', 0);
INSERT INTO `oc_setting` VALUES(3422, 0, 'config', 'config_image_popup_width', '500', 0);
INSERT INTO `oc_setting` VALUES(3421, 0, 'config', 'config_image_thumb_height', '460', 0);
INSERT INTO `oc_setting` VALUES(3420, 0, 'config', 'config_image_thumb_width', '460', 0);
INSERT INTO `oc_setting` VALUES(3419, 0, 'config', 'config_image_category_height', '80', 0);
INSERT INTO `oc_setting` VALUES(3418, 0, 'config', 'config_image_category_width', '80', 0);
INSERT INTO `oc_setting` VALUES(3417, 0, 'config', 'config_icon', 'data/cart.png', 0);
INSERT INTO `oc_setting` VALUES(3416, 0, 'config', 'config_logo', 'data/logohome.png', 0);
INSERT INTO `oc_setting` VALUES(3415, 0, 'config', 'wrappingPremium', '35000', 0);
INSERT INTO `oc_setting` VALUES(3414, 0, 'config', 'greetingPremium', '35000', 0);
INSERT INTO `oc_setting` VALUES(3413, 0, 'config', 'config_return_status_id', '2', 0);
INSERT INTO `oc_setting` VALUES(3412, 0, 'config', 'config_return_id', '0', 0);
INSERT INTO `oc_setting` VALUES(3411, 0, 'config', 'config_commission', '5', 0);
INSERT INTO `oc_setting` VALUES(3410, 0, 'config', 'config_affiliate_id', '4', 0);
INSERT INTO `oc_setting` VALUES(3409, 0, 'config', 'config_stock_status_id', '5', 0);
INSERT INTO `oc_setting` VALUES(3408, 0, 'config', 'config_stock_checkout', '0', 0);
INSERT INTO `oc_setting` VALUES(3407, 0, 'config', 'config_stock_warning', '0', 0);
INSERT INTO `oc_setting` VALUES(3406, 0, 'config', 'config_stock_display', '0', 0);
INSERT INTO `oc_setting` VALUES(3405, 0, 'config', 'config_complete_status_id', '5', 0);
INSERT INTO `oc_setting` VALUES(3404, 0, 'config', 'config_order_status_id', '1', 0);
INSERT INTO `oc_setting` VALUES(3402, 0, 'config', 'config_order_edit', '100', 0);
INSERT INTO `oc_setting` VALUES(3403, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0);
INSERT INTO `oc_setting` VALUES(3401, 0, 'config', 'config_checkout_id', '5', 0);
INSERT INTO `oc_setting` VALUES(3400, 0, 'config', 'config_guest_checkout', '1', 0);
INSERT INTO `oc_setting` VALUES(3399, 0, 'config', 'config_cart_weight', '1', 0);
INSERT INTO `oc_setting` VALUES(3398, 0, 'config', 'config_account_id', '3', 0);
INSERT INTO `oc_setting` VALUES(3397, 0, 'config', 'config_customer_price', '0', 0);
INSERT INTO `oc_setting` VALUES(3396, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1);
INSERT INTO `oc_setting` VALUES(3395, 0, 'config', 'config_customer_group_id', '1', 0);
INSERT INTO `oc_setting` VALUES(3394, 0, 'config', 'config_customer_online', '0', 0);
INSERT INTO `oc_setting` VALUES(3393, 0, 'config', 'config_tax_customer', 'shipping', 0);
INSERT INTO `oc_setting` VALUES(3392, 0, 'config', 'config_tax_default', 'shipping', 0);
INSERT INTO `oc_setting` VALUES(3391, 0, 'config', 'config_vat', '0', 0);
INSERT INTO `oc_setting` VALUES(3390, 0, 'config', 'config_tax', '1', 0);
INSERT INTO `oc_setting` VALUES(3389, 0, 'config', 'config_voucher_max', '1000', 0);
INSERT INTO `oc_setting` VALUES(3388, 0, 'config', 'config_voucher_min', '1', 0);
INSERT INTO `oc_setting` VALUES(3387, 0, 'config', 'config_download', '1', 0);
INSERT INTO `oc_setting` VALUES(3386, 0, 'config', 'config_review_status', '1', 0);
INSERT INTO `oc_setting` VALUES(3385, 0, 'config', 'config_product_count', '1', 0);
INSERT INTO `oc_setting` VALUES(3384, 0, 'config', 'config_admin_limit', '20', 0);
INSERT INTO `oc_setting` VALUES(3383, 0, 'config', 'config_catalog_limit', '6', 0);
INSERT INTO `oc_setting` VALUES(3382, 0, 'config', 'config_display_listock', '0', 0);
INSERT INTO `oc_setting` VALUES(3381, 0, 'config', 'config_display_upcp', '0', 0);
INSERT INTO `oc_setting` VALUES(3380, 0, 'config', 'config_display_upc', '0', 0);
INSERT INTO `oc_setting` VALUES(3379, 0, 'config', 'config_display_locationp', '0', 0);
INSERT INTO `oc_setting` VALUES(3378, 0, 'config', 'config_display_location', '0', 0);
INSERT INTO `oc_setting` VALUES(3377, 0, 'config', 'config_display_brandp', '0', 0);
INSERT INTO `oc_setting` VALUES(3376, 0, 'config', 'config_display_brand', '0', 0);
INSERT INTO `oc_setting` VALUES(3375, 0, 'config', 'config_display_modelp', '0', 0);
INSERT INTO `oc_setting` VALUES(3374, 0, 'config', 'config_display_model', '0', 0);
INSERT INTO `oc_setting` VALUES(3373, 0, 'config', 'config_display_skup', '0', 0);
INSERT INTO `oc_setting` VALUES(3372, 0, 'config', 'config_display_sku', '0', 0);
INSERT INTO `oc_setting` VALUES(3371, 0, 'config', 'config_display_pweight', '0', 0);
INSERT INTO `oc_setting` VALUES(3370, 0, 'config', 'config_display_rewardsp', '0', 0);
INSERT INTO `oc_setting` VALUES(3369, 0, 'config', 'config_weight_class_id', '1', 0);
INSERT INTO `oc_setting` VALUES(3368, 0, 'config', 'config_length_class_id', '1', 0);
INSERT INTO `oc_setting` VALUES(3367, 0, 'config', 'config_currency_auto', '1', 0);
INSERT INTO `oc_setting` VALUES(3366, 0, 'config', 'config_currency', 'IDR', 0);
INSERT INTO `oc_setting` VALUES(3365, 0, 'config', 'config_admin_language', 'en', 0);
INSERT INTO `oc_setting` VALUES(3364, 0, 'config', 'config_language', 'en', 0);
INSERT INTO `oc_setting` VALUES(1270, 0, 'myshortcart', 'myshortcart_merchant', '00150349', 0);
INSERT INTO `oc_setting` VALUES(1271, 0, 'myshortcart', 'myshortcart_security', '3CSF2T5QX6VG', 0);
INSERT INTO `oc_setting` VALUES(1272, 0, 'myshortcart', 'myshortcart_tokoweb', 'http://eluminousdev.com/giftlane', 0);
INSERT INTO `oc_setting` VALUES(1273, 0, 'myshortcart', 'myshortcart_inv_tokoweb', '', 0);
INSERT INTO `oc_setting` VALUES(1274, 0, 'myshortcart', 'myshortcart_order_status_id', '7', 0);
INSERT INTO `oc_setting` VALUES(1275, 0, 'myshortcart', 'myshortcart_geo_zone_id', '0', 0);
INSERT INTO `oc_setting` VALUES(1276, 0, 'myshortcart', 'myshortcart_status', '1', 0);
INSERT INTO `oc_setting` VALUES(1277, 0, 'myshortcart', 'myshortcart_sort_order', '', 0);
INSERT INTO `oc_setting` VALUES(1278, 0, 'bank_transfer', 'bank_transfer_bank_1', 'Transfer Bank BCA\r\n\r\nA/N Felicia Darmaja\r\n1234 5678 9010\r\nCab. Kelapa Gading', 0);
INSERT INTO `oc_setting` VALUES(1279, 0, 'bank_transfer', 'bank_transfer_total', '', 0);
INSERT INTO `oc_setting` VALUES(1280, 0, 'bank_transfer', 'bank_transfer_order_status_id', '7', 0);
INSERT INTO `oc_setting` VALUES(1281, 0, 'bank_transfer', 'bank_transfer_geo_zone_id', '0', 0);
INSERT INTO `oc_setting` VALUES(1282, 0, 'bank_transfer', 'bank_transfer_status', '1', 0);
INSERT INTO `oc_setting` VALUES(1283, 0, 'bank_transfer', 'bank_transfer_sort_order', '', 0);
INSERT INTO `oc_setting` VALUES(3363, 0, 'config', 'config_zone_id', '3563', 0);
INSERT INTO `oc_setting` VALUES(3362, 0, 'config', 'config_country_id', '222', 0);
INSERT INTO `oc_setting` VALUES(3361, 0, 'config', 'config_layout_id', '4', 0);
INSERT INTO `oc_setting` VALUES(3360, 0, 'config', 'config_template', 'my_giftlane', 0);
INSERT INTO `oc_setting` VALUES(3359, 0, 'config', 'config_meta_description', 'Giftlane Co', 0);
INSERT INTO `oc_setting` VALUES(3358, 0, 'config', 'config_title', 'Giftlane Co', 0);
INSERT INTO `oc_setting` VALUES(3357, 0, 'config', 'config_fax', '', 0);
INSERT INTO `oc_setting` VALUES(3356, 0, 'config', 'config_instagram', 'http://www.instagram.com/', 0);
INSERT INTO `oc_setting` VALUES(3355, 0, 'config', 'config_pinterest', 'https://www.pinterest.com/', 0);
INSERT INTO `oc_setting` VALUES(3354, 0, 'config', 'config_tumbler', 'https://www.tumblr.com/', 0);
INSERT INTO `oc_setting` VALUES(3353, 0, 'config', 'config_twitter', 'http://www.twitter.com', 0);
INSERT INTO `oc_setting` VALUES(3352, 0, 'config', 'config_fb', 'http://www.facebook.com', 0);
INSERT INTO `oc_setting` VALUES(3351, 0, 'config', 'config_telephone', '123456789', 0);
INSERT INTO `oc_setting` VALUES(3350, 0, 'config', 'config_email', 'eluminous_sse3@eluminoustechnologies.com', 0);
INSERT INTO `oc_setting` VALUES(3349, 0, 'config', 'config_address', 'Address 1', 0);
INSERT INTO `oc_setting` VALUES(3348, 0, 'config', 'config_owner', 'Giftlane Co', 0);
INSERT INTO `oc_setting` VALUES(3347, 0, 'config', 'config_name', 'Giftlane Co', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY  (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` VALUES(7, 1, 'In Stock');
INSERT INTO `oc_stock_status` VALUES(8, 1, 'Pre-Order');
INSERT INTO `oc_stock_status` VALUES(5, 1, 'Out Of Stock');
INSERT INTO `oc_stock_status` VALUES(6, 1, '2 - 3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY  (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_store`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL auto_increment,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` VALUES(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2011-09-23 14:07:50');
INSERT INTO `oc_tax_class` VALUES(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL auto_increment,
  `geo_zone_id` int(11) NOT NULL default '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL default '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` VALUES(86, 3, 'VAT (17.5%)', 17.5000, 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29');
INSERT INTO `oc_tax_rate` VALUES(87, 3, 'Eco Tax (-2.00)', 2.0000, 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY  (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` VALUES(86, 1);
INSERT INTO `oc_tax_rate_to_customer_group` VALUES(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL auto_increment,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL default '1',
  PRIMARY KEY  (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` VALUES(121, 10, 86, 'payment', 1);
INSERT INTO `oc_tax_rule` VALUES(120, 10, 87, 'store', 0);
INSERT INTO `oc_tax_rule` VALUES(128, 9, 86, 'shipping', 1);
INSERT INTO `oc_tax_rule` VALUES(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL auto_increment,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY  (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=787 ;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` VALUES(730, 'manufacturer_id=8', 'apple');
INSERT INTO `oc_url_alias` VALUES(785, 'information_id=4', 'about_us');
INSERT INTO `oc_url_alias` VALUES(779, 'category_id=65', 'For Her');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL auto_increment,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` VALUES(1, 1, 'admin', 'af37ecff69324b973609dc6a3a60b2cd', '', '', '', 'eluminous_sse3@eluminoustechnologies.com', '', '180.242.131.226', 1, '2013-06-12 13:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY  (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` VALUES(1, 'Top Administrator', 'a:2:{s:6:"access";a:129:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:22:"catalog/optioncategory";i:9;s:25:"catalog/optionpersonalize";i:10;s:15:"catalog/product";i:11;s:14:"catalog/review";i:12;s:18:"common/filemanager";i:13;s:13:"design/banner";i:14;s:19:"design/custom_field";i:15;s:13:"design/layout";i:16;s:14:"extension/feed";i:17;s:17:"extension/manager";i:18;s:16:"extension/module";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:17:"localisation/city";i:25;s:20:"localisation/country";i:26;s:21:"localisation/currency";i:27;s:21:"localisation/geo_zone";i:28;s:21:"localisation/language";i:29;s:25:"localisation/length_class";i:30;s:25:"localisation/order_status";i:31;s:26:"localisation/return_action";i:32;s:26:"localisation/return_reason";i:33;s:26:"localisation/return_status";i:34;s:25:"localisation/stock_status";i:35;s:22:"localisation/tax_class";i:36;s:21:"localisation/tax_rate";i:37;s:25:"localisation/weight_class";i:38;s:17:"localisation/zone";i:39;s:14:"module/account";i:40;s:16:"module/affiliate";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:15:"module/featured";i:46;s:13:"module/filter";i:47;s:18:"module/google_talk";i:48;s:18:"module/information";i:49;s:13:"module/latest";i:50;s:16:"module/slideshow";i:51;s:14:"module/special";i:52;s:12:"module/store";i:53;s:14:"module/welcome";i:54;s:24:"payment/authorizenet_aim";i:55;s:21:"payment/bank_transfer";i:56;s:14:"payment/cheque";i:57;s:11:"payment/cod";i:58;s:21:"payment/free_checkout";i:59;s:22:"payment/klarna_account";i:60;s:22:"payment/klarna_invoice";i:61;s:14:"payment/liqpay";i:62;s:20:"payment/moneybookers";i:63;s:19:"payment/myshortcart";i:64;s:14:"payment/nochex";i:65;s:15:"payment/paymate";i:66;s:16:"payment/paypoint";i:67;s:13:"payment/payza";i:68;s:26:"payment/perpetual_payments";i:69;s:14:"payment/pp_pro";i:70;s:17:"payment/pp_pro_uk";i:71;s:19:"payment/pp_standard";i:72;s:15:"payment/sagepay";i:73;s:22:"payment/sagepay_direct";i:74;s:18:"payment/sagepay_us";i:75;s:19:"payment/twocheckout";i:76;s:28:"payment/web_payment_software";i:77;s:16:"payment/worldpay";i:78;s:27:"report/affiliate_commission";i:79;s:22:"report/customer_credit";i:80;s:22:"report/customer_online";i:81;s:21:"report/customer_order";i:82;s:22:"report/customer_reward";i:83;s:24:"report/product_purchased";i:84;s:21:"report/product_viewed";i:85;s:18:"report/sale_coupon";i:86;s:17:"report/sale_order";i:87;s:18:"report/sale_return";i:88;s:20:"report/sale_shipping";i:89;s:15:"report/sale_tax";i:90;s:14:"sale/affiliate";i:91;s:12:"sale/contact";i:92;s:11:"sale/coupon";i:93;s:13:"sale/customer";i:94;s:20:"sale/customer_ban_ip";i:95;s:19:"sale/customer_group";i:96;s:10:"sale/order";i:97;s:11:"sale/return";i:98;s:12:"sale/voucher";i:99;s:18:"sale/voucher_theme";i:100;s:15:"setting/setting";i:101;s:13:"setting/store";i:102;s:16:"shipping/auspost";i:103;s:17:"shipping/citylink";i:104;s:14:"shipping/fedex";i:105;s:13:"shipping/flat";i:106;s:13:"shipping/free";i:107;s:13:"shipping/item";i:108;s:23:"shipping/parcelforce_48";i:109;s:15:"shipping/pickup";i:110;s:19:"shipping/royal_mail";i:111;s:12:"shipping/ups";i:112;s:13:"shipping/usps";i:113;s:15:"shipping/weight";i:114;s:11:"tool/backup";i:115;s:14:"tool/error_log";i:116;s:12:"total/coupon";i:117;s:12:"total/credit";i:118;s:14:"total/handling";i:119;s:16:"total/klarna_fee";i:120;s:19:"total/low_order_fee";i:121;s:12:"total/reward";i:122;s:14:"total/shipping";i:123;s:15:"total/sub_total";i:124;s:9:"total/tax";i:125;s:11:"total/total";i:126;s:13:"total/voucher";i:127;s:9:"user/user";i:128;s:20:"user/user_permission";}s:6:"modify";a:129:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:22:"catalog/optioncategory";i:9;s:25:"catalog/optionpersonalize";i:10;s:15:"catalog/product";i:11;s:14:"catalog/review";i:12;s:18:"common/filemanager";i:13;s:13:"design/banner";i:14;s:19:"design/custom_field";i:15;s:13:"design/layout";i:16;s:14:"extension/feed";i:17;s:17:"extension/manager";i:18;s:16:"extension/module";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:17:"localisation/city";i:25;s:20:"localisation/country";i:26;s:21:"localisation/currency";i:27;s:21:"localisation/geo_zone";i:28;s:21:"localisation/language";i:29;s:25:"localisation/length_class";i:30;s:25:"localisation/order_status";i:31;s:26:"localisation/return_action";i:32;s:26:"localisation/return_reason";i:33;s:26:"localisation/return_status";i:34;s:25:"localisation/stock_status";i:35;s:22:"localisation/tax_class";i:36;s:21:"localisation/tax_rate";i:37;s:25:"localisation/weight_class";i:38;s:17:"localisation/zone";i:39;s:14:"module/account";i:40;s:16:"module/affiliate";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:15:"module/featured";i:46;s:13:"module/filter";i:47;s:18:"module/google_talk";i:48;s:18:"module/information";i:49;s:13:"module/latest";i:50;s:16:"module/slideshow";i:51;s:14:"module/special";i:52;s:12:"module/store";i:53;s:14:"module/welcome";i:54;s:24:"payment/authorizenet_aim";i:55;s:21:"payment/bank_transfer";i:56;s:14:"payment/cheque";i:57;s:11:"payment/cod";i:58;s:21:"payment/free_checkout";i:59;s:22:"payment/klarna_account";i:60;s:22:"payment/klarna_invoice";i:61;s:14:"payment/liqpay";i:62;s:20:"payment/moneybookers";i:63;s:19:"payment/myshortcart";i:64;s:14:"payment/nochex";i:65;s:15:"payment/paymate";i:66;s:16:"payment/paypoint";i:67;s:13:"payment/payza";i:68;s:26:"payment/perpetual_payments";i:69;s:14:"payment/pp_pro";i:70;s:17:"payment/pp_pro_uk";i:71;s:19:"payment/pp_standard";i:72;s:15:"payment/sagepay";i:73;s:22:"payment/sagepay_direct";i:74;s:18:"payment/sagepay_us";i:75;s:19:"payment/twocheckout";i:76;s:28:"payment/web_payment_software";i:77;s:16:"payment/worldpay";i:78;s:27:"report/affiliate_commission";i:79;s:22:"report/customer_credit";i:80;s:22:"report/customer_online";i:81;s:21:"report/customer_order";i:82;s:22:"report/customer_reward";i:83;s:24:"report/product_purchased";i:84;s:21:"report/product_viewed";i:85;s:18:"report/sale_coupon";i:86;s:17:"report/sale_order";i:87;s:18:"report/sale_return";i:88;s:20:"report/sale_shipping";i:89;s:15:"report/sale_tax";i:90;s:14:"sale/affiliate";i:91;s:12:"sale/contact";i:92;s:11:"sale/coupon";i:93;s:13:"sale/customer";i:94;s:20:"sale/customer_ban_ip";i:95;s:19:"sale/customer_group";i:96;s:10:"sale/order";i:97;s:11:"sale/return";i:98;s:12:"sale/voucher";i:99;s:18:"sale/voucher_theme";i:100;s:15:"setting/setting";i:101;s:13:"setting/store";i:102;s:16:"shipping/auspost";i:103;s:17:"shipping/citylink";i:104;s:14:"shipping/fedex";i:105;s:13:"shipping/flat";i:106;s:13:"shipping/free";i:107;s:13:"shipping/item";i:108;s:23:"shipping/parcelforce_48";i:109;s:15:"shipping/pickup";i:110;s:19:"shipping/royal_mail";i:111;s:12:"shipping/ups";i:112;s:13:"shipping/usps";i:113;s:15:"shipping/weight";i:114;s:11:"tool/backup";i:115;s:14:"tool/error_log";i:116;s:12:"total/coupon";i:117;s:12:"total/credit";i:118;s:14:"total/handling";i:119;s:16:"total/klarna_fee";i:120;s:19:"total/low_order_fee";i:121;s:12:"total/reward";i:122;s:14:"total/shipping";i:123;s:15:"total/sub_total";i:124;s:9:"total/tax";i:125;s:11:"total/total";i:126;s:13:"total/voucher";i:127;s:9:"user/user";i:128;s:20:"user/user_permission";}}');
INSERT INTO `oc_user_group` VALUES(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_voucher`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL auto_increment,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY  (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `oc_voucher_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL auto_increment,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY  (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` VALUES(8, 'data/demo/canon_eos_5d_2.jpg');
INSERT INTO `oc_voucher_theme` VALUES(7, 'data/demo/gift-voucher-birthday.jpg');
INSERT INTO `oc_voucher_theme` VALUES(6, 'data/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY  (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` VALUES(6, 1, 'Christmas');
INSERT INTO `oc_voucher_theme_description` VALUES(7, 1, 'Birthday');
INSERT INTO `oc_voucher_theme_description` VALUES(8, 1, 'General');

-- --------------------------------------------------------

--
-- Stand-in structure for view `oc_v_city`
--
CREATE TABLE `oc_v_city` (
`city_id` int(11)
,`city_zone_id` int(11)
,`city_zone` varchar(128)
,`city_name` varchar(128)
,`city_code` varchar(32)
,`city_country_id` int(11)
,`city_country` varchar(128)
,`city_status` int(1)
);
-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL auto_increment,
  `value` decimal(15,8) NOT NULL default '0.00000000',
  PRIMARY KEY  (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` VALUES(1, 1.00000000);
INSERT INTO `oc_weight_class` VALUES(2, 1000.00000000);
INSERT INTO `oc_weight_class` VALUES(5, 2.20460000);
INSERT INTO `oc_weight_class` VALUES(6, 35.27400000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY  (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` VALUES(1, 1, 'Kilogram', 'kg');
INSERT INTO `oc_weight_class_description` VALUES(2, 1, 'Gram', 'g');
INSERT INTO `oc_weight_class_description` VALUES(5, 1, 'Pound ', 'lb');
INSERT INTO `oc_weight_class_description` VALUES(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4033 ;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` VALUES(1, 1, 'Badakhshan', 'BDS', 1);
INSERT INTO `oc_zone` VALUES(2, 1, 'Badghis', 'BDG', 1);
INSERT INTO `oc_zone` VALUES(3, 1, 'Baghlan', 'BGL', 1);
INSERT INTO `oc_zone` VALUES(4, 1, 'Balkh', 'BAL', 1);
INSERT INTO `oc_zone` VALUES(5, 1, 'Bamian', 'BAM', 1);
INSERT INTO `oc_zone` VALUES(6, 1, 'Farah', 'FRA', 1);
INSERT INTO `oc_zone` VALUES(7, 1, 'Faryab', 'FYB', 1);
INSERT INTO `oc_zone` VALUES(8, 1, 'Ghazni', 'GHA', 1);
INSERT INTO `oc_zone` VALUES(9, 1, 'Ghowr', 'GHO', 1);
INSERT INTO `oc_zone` VALUES(10, 1, 'Helmand', 'HEL', 1);
INSERT INTO `oc_zone` VALUES(11, 1, 'Herat', 'HER', 1);
INSERT INTO `oc_zone` VALUES(12, 1, 'Jowzjan', 'JOW', 1);
INSERT INTO `oc_zone` VALUES(13, 1, 'Kabul', 'KAB', 1);
INSERT INTO `oc_zone` VALUES(14, 1, 'Kandahar', 'KAN', 1);
INSERT INTO `oc_zone` VALUES(15, 1, 'Kapisa', 'KAP', 1);
INSERT INTO `oc_zone` VALUES(16, 1, 'Khost', 'KHO', 1);
INSERT INTO `oc_zone` VALUES(17, 1, 'Konar', 'KNR', 1);
INSERT INTO `oc_zone` VALUES(18, 1, 'Kondoz', 'KDZ', 1);
INSERT INTO `oc_zone` VALUES(19, 1, 'Laghman', 'LAG', 1);
INSERT INTO `oc_zone` VALUES(20, 1, 'Lowgar', 'LOW', 1);
INSERT INTO `oc_zone` VALUES(21, 1, 'Nangrahar', 'NAN', 1);
INSERT INTO `oc_zone` VALUES(22, 1, 'Nimruz', 'NIM', 1);
INSERT INTO `oc_zone` VALUES(23, 1, 'Nurestan', 'NUR', 1);
INSERT INTO `oc_zone` VALUES(24, 1, 'Oruzgan', 'ORU', 1);
INSERT INTO `oc_zone` VALUES(25, 1, 'Paktia', 'PIA', 1);
INSERT INTO `oc_zone` VALUES(26, 1, 'Paktika', 'PKA', 1);
INSERT INTO `oc_zone` VALUES(27, 1, 'Parwan', 'PAR', 1);
INSERT INTO `oc_zone` VALUES(28, 1, 'Samangan', 'SAM', 1);
INSERT INTO `oc_zone` VALUES(29, 1, 'Sar-e Pol', 'SAR', 1);
INSERT INTO `oc_zone` VALUES(30, 1, 'Takhar', 'TAK', 1);
INSERT INTO `oc_zone` VALUES(31, 1, 'Wardak', 'WAR', 1);
INSERT INTO `oc_zone` VALUES(32, 1, 'Zabol', 'ZAB', 1);
INSERT INTO `oc_zone` VALUES(33, 2, 'Berat', 'BR', 1);
INSERT INTO `oc_zone` VALUES(34, 2, 'Bulqize', 'BU', 1);
INSERT INTO `oc_zone` VALUES(35, 2, 'Delvine', 'DL', 1);
INSERT INTO `oc_zone` VALUES(36, 2, 'Devoll', 'DV', 1);
INSERT INTO `oc_zone` VALUES(37, 2, 'Diber', 'DI', 1);
INSERT INTO `oc_zone` VALUES(38, 2, 'Durres', 'DR', 1);
INSERT INTO `oc_zone` VALUES(39, 2, 'Elbasan', 'EL', 1);
INSERT INTO `oc_zone` VALUES(40, 2, 'Kolonje', 'ER', 1);
INSERT INTO `oc_zone` VALUES(41, 2, 'Fier', 'FR', 1);
INSERT INTO `oc_zone` VALUES(42, 2, 'Gjirokaster', 'GJ', 1);
INSERT INTO `oc_zone` VALUES(43, 2, 'Gramsh', 'GR', 1);
INSERT INTO `oc_zone` VALUES(44, 2, 'Has', 'HA', 1);
INSERT INTO `oc_zone` VALUES(45, 2, 'Kavaje', 'KA', 1);
INSERT INTO `oc_zone` VALUES(46, 2, 'Kurbin', 'KB', 1);
INSERT INTO `oc_zone` VALUES(47, 2, 'Kucove', 'KC', 1);
INSERT INTO `oc_zone` VALUES(48, 2, 'Korce', 'KO', 1);
INSERT INTO `oc_zone` VALUES(49, 2, 'Kruje', 'KR', 1);
INSERT INTO `oc_zone` VALUES(50, 2, 'Kukes', 'KU', 1);
INSERT INTO `oc_zone` VALUES(51, 2, 'Librazhd', 'LB', 1);
INSERT INTO `oc_zone` VALUES(52, 2, 'Lezhe', 'LE', 1);
INSERT INTO `oc_zone` VALUES(53, 2, 'Lushnje', 'LU', 1);
INSERT INTO `oc_zone` VALUES(54, 2, 'Malesi e Madhe', 'MM', 1);
INSERT INTO `oc_zone` VALUES(55, 2, 'Mallakaster', 'MK', 1);
INSERT INTO `oc_zone` VALUES(56, 2, 'Mat', 'MT', 1);
INSERT INTO `oc_zone` VALUES(57, 2, 'Mirdite', 'MR', 1);
INSERT INTO `oc_zone` VALUES(58, 2, 'Peqin', 'PQ', 1);
INSERT INTO `oc_zone` VALUES(59, 2, 'Permet', 'PR', 1);
INSERT INTO `oc_zone` VALUES(60, 2, 'Pogradec', 'PG', 1);
INSERT INTO `oc_zone` VALUES(61, 2, 'Puke', 'PU', 1);
INSERT INTO `oc_zone` VALUES(62, 2, 'Shkoder', 'SH', 1);
INSERT INTO `oc_zone` VALUES(63, 2, 'Skrapar', 'SK', 1);
INSERT INTO `oc_zone` VALUES(64, 2, 'Sarande', 'SR', 1);
INSERT INTO `oc_zone` VALUES(65, 2, 'Tepelene', 'TE', 1);
INSERT INTO `oc_zone` VALUES(66, 2, 'Tropoje', 'TP', 1);
INSERT INTO `oc_zone` VALUES(67, 2, 'Tirane', 'TR', 1);
INSERT INTO `oc_zone` VALUES(68, 2, 'Vlore', 'VL', 1);
INSERT INTO `oc_zone` VALUES(69, 3, 'Adrar', 'ADR', 1);
INSERT INTO `oc_zone` VALUES(70, 3, 'Ain Defla', 'ADE', 1);
INSERT INTO `oc_zone` VALUES(71, 3, 'Ain Temouchent', 'ATE', 1);
INSERT INTO `oc_zone` VALUES(72, 3, 'Alger', 'ALG', 1);
INSERT INTO `oc_zone` VALUES(73, 3, 'Annaba', 'ANN', 1);
INSERT INTO `oc_zone` VALUES(74, 3, 'Batna', 'BAT', 1);
INSERT INTO `oc_zone` VALUES(75, 3, 'Bechar', 'BEC', 1);
INSERT INTO `oc_zone` VALUES(76, 3, 'Bejaia', 'BEJ', 1);
INSERT INTO `oc_zone` VALUES(77, 3, 'Biskra', 'BIS', 1);
INSERT INTO `oc_zone` VALUES(78, 3, 'Blida', 'BLI', 1);
INSERT INTO `oc_zone` VALUES(79, 3, 'Bordj Bou Arreridj', 'BBA', 1);
INSERT INTO `oc_zone` VALUES(80, 3, 'Bouira', 'BOA', 1);
INSERT INTO `oc_zone` VALUES(81, 3, 'Boumerdes', 'BMD', 1);
INSERT INTO `oc_zone` VALUES(82, 3, 'Chlef', 'CHL', 1);
INSERT INTO `oc_zone` VALUES(83, 3, 'Constantine', 'CON', 1);
INSERT INTO `oc_zone` VALUES(84, 3, 'Djelfa', 'DJE', 1);
INSERT INTO `oc_zone` VALUES(85, 3, 'El Bayadh', 'EBA', 1);
INSERT INTO `oc_zone` VALUES(86, 3, 'El Oued', 'EOU', 1);
INSERT INTO `oc_zone` VALUES(87, 3, 'El Tarf', 'ETA', 1);
INSERT INTO `oc_zone` VALUES(88, 3, 'Ghardaia', 'GHA', 1);
INSERT INTO `oc_zone` VALUES(89, 3, 'Guelma', 'GUE', 1);
INSERT INTO `oc_zone` VALUES(90, 3, 'Illizi', 'ILL', 1);
INSERT INTO `oc_zone` VALUES(91, 3, 'Jijel', 'JIJ', 1);
INSERT INTO `oc_zone` VALUES(92, 3, 'Khenchela', 'KHE', 1);
INSERT INTO `oc_zone` VALUES(93, 3, 'Laghouat', 'LAG', 1);
INSERT INTO `oc_zone` VALUES(94, 3, 'Muaskar', 'MUA', 1);
INSERT INTO `oc_zone` VALUES(95, 3, 'Medea', 'MED', 1);
INSERT INTO `oc_zone` VALUES(96, 3, 'Mila', 'MIL', 1);
INSERT INTO `oc_zone` VALUES(97, 3, 'Mostaganem', 'MOS', 1);
INSERT INTO `oc_zone` VALUES(98, 3, 'M''Sila', 'MSI', 1);
INSERT INTO `oc_zone` VALUES(99, 3, 'Naama', 'NAA', 1);
INSERT INTO `oc_zone` VALUES(100, 3, 'Oran', 'ORA', 1);
INSERT INTO `oc_zone` VALUES(101, 3, 'Ouargla', 'OUA', 1);
INSERT INTO `oc_zone` VALUES(102, 3, 'Oum el-Bouaghi', 'OEB', 1);
INSERT INTO `oc_zone` VALUES(103, 3, 'Relizane', 'REL', 1);
INSERT INTO `oc_zone` VALUES(104, 3, 'Saida', 'SAI', 1);
INSERT INTO `oc_zone` VALUES(105, 3, 'Setif', 'SET', 1);
INSERT INTO `oc_zone` VALUES(106, 3, 'Sidi Bel Abbes', 'SBA', 1);
INSERT INTO `oc_zone` VALUES(107, 3, 'Skikda', 'SKI', 1);
INSERT INTO `oc_zone` VALUES(108, 3, 'Souk Ahras', 'SAH', 1);
INSERT INTO `oc_zone` VALUES(109, 3, 'Tamanghasset', 'TAM', 1);
INSERT INTO `oc_zone` VALUES(110, 3, 'Tebessa', 'TEB', 1);
INSERT INTO `oc_zone` VALUES(111, 3, 'Tiaret', 'TIA', 1);
INSERT INTO `oc_zone` VALUES(112, 3, 'Tindouf', 'TIN', 1);
INSERT INTO `oc_zone` VALUES(113, 3, 'Tipaza', 'TIP', 1);
INSERT INTO `oc_zone` VALUES(114, 3, 'Tissemsilt', 'TIS', 1);
INSERT INTO `oc_zone` VALUES(115, 3, 'Tizi Ouzou', 'TOU', 1);
INSERT INTO `oc_zone` VALUES(116, 3, 'Tlemcen', 'TLE', 1);
INSERT INTO `oc_zone` VALUES(117, 4, 'Eastern', 'E', 1);
INSERT INTO `oc_zone` VALUES(118, 4, 'Manu''a', 'M', 1);
INSERT INTO `oc_zone` VALUES(119, 4, 'Rose Island', 'R', 1);
INSERT INTO `oc_zone` VALUES(120, 4, 'Swains Island', 'S', 1);
INSERT INTO `oc_zone` VALUES(121, 4, 'Western', 'W', 1);
INSERT INTO `oc_zone` VALUES(122, 5, 'Andorra la Vella', 'ALV', 1);
INSERT INTO `oc_zone` VALUES(123, 5, 'Canillo', 'CAN', 1);
INSERT INTO `oc_zone` VALUES(124, 5, 'Encamp', 'ENC', 1);
INSERT INTO `oc_zone` VALUES(125, 5, 'Escaldes-Engordany', 'ESE', 1);
INSERT INTO `oc_zone` VALUES(126, 5, 'La Massana', 'LMA', 1);
INSERT INTO `oc_zone` VALUES(127, 5, 'Ordino', 'ORD', 1);
INSERT INTO `oc_zone` VALUES(128, 5, 'Sant Julia de Loria', 'SJL', 1);
INSERT INTO `oc_zone` VALUES(129, 6, 'Bengo', 'BGO', 1);
INSERT INTO `oc_zone` VALUES(130, 6, 'Benguela', 'BGU', 1);
INSERT INTO `oc_zone` VALUES(131, 6, 'Bie', 'BIE', 1);
INSERT INTO `oc_zone` VALUES(132, 6, 'Cabinda', 'CAB', 1);
INSERT INTO `oc_zone` VALUES(133, 6, 'Cuando-Cubango', 'CCU', 1);
INSERT INTO `oc_zone` VALUES(134, 6, 'Cuanza Norte', 'CNO', 1);
INSERT INTO `oc_zone` VALUES(135, 6, 'Cuanza Sul', 'CUS', 1);
INSERT INTO `oc_zone` VALUES(136, 6, 'Cunene', 'CNN', 1);
INSERT INTO `oc_zone` VALUES(137, 6, 'Huambo', 'HUA', 1);
INSERT INTO `oc_zone` VALUES(138, 6, 'Huila', 'HUI', 1);
INSERT INTO `oc_zone` VALUES(139, 6, 'Luanda', 'LUA', 1);
INSERT INTO `oc_zone` VALUES(140, 6, 'Lunda Norte', 'LNO', 1);
INSERT INTO `oc_zone` VALUES(141, 6, 'Lunda Sul', 'LSU', 1);
INSERT INTO `oc_zone` VALUES(142, 6, 'Malange', 'MAL', 1);
INSERT INTO `oc_zone` VALUES(143, 6, 'Moxico', 'MOX', 1);
INSERT INTO `oc_zone` VALUES(144, 6, 'Namibe', 'NAM', 1);
INSERT INTO `oc_zone` VALUES(145, 6, 'Uige', 'UIG', 1);
INSERT INTO `oc_zone` VALUES(146, 6, 'Zaire', 'ZAI', 1);
INSERT INTO `oc_zone` VALUES(147, 9, 'Saint George', 'ASG', 1);
INSERT INTO `oc_zone` VALUES(148, 9, 'Saint John', 'ASJ', 1);
INSERT INTO `oc_zone` VALUES(149, 9, 'Saint Mary', 'ASM', 1);
INSERT INTO `oc_zone` VALUES(150, 9, 'Saint Paul', 'ASL', 1);
INSERT INTO `oc_zone` VALUES(151, 9, 'Saint Peter', 'ASR', 1);
INSERT INTO `oc_zone` VALUES(152, 9, 'Saint Philip', 'ASH', 1);
INSERT INTO `oc_zone` VALUES(153, 9, 'Barbuda', 'BAR', 1);
INSERT INTO `oc_zone` VALUES(154, 9, 'Redonda', 'RED', 1);
INSERT INTO `oc_zone` VALUES(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1);
INSERT INTO `oc_zone` VALUES(156, 10, 'Buenos Aires', 'BA', 1);
INSERT INTO `oc_zone` VALUES(157, 10, 'Catamarca', 'CA', 1);
INSERT INTO `oc_zone` VALUES(158, 10, 'Chaco', 'CH', 1);
INSERT INTO `oc_zone` VALUES(159, 10, 'Chubut', 'CU', 1);
INSERT INTO `oc_zone` VALUES(160, 10, 'Cordoba', 'CO', 1);
INSERT INTO `oc_zone` VALUES(161, 10, 'Corrientes', 'CR', 1);
INSERT INTO `oc_zone` VALUES(162, 10, 'Distrito Federal', 'DF', 1);
INSERT INTO `oc_zone` VALUES(163, 10, 'Entre Rios', 'ER', 1);
INSERT INTO `oc_zone` VALUES(164, 10, 'Formosa', 'FO', 1);
INSERT INTO `oc_zone` VALUES(165, 10, 'Jujuy', 'JU', 1);
INSERT INTO `oc_zone` VALUES(166, 10, 'La Pampa', 'LP', 1);
INSERT INTO `oc_zone` VALUES(167, 10, 'La Rioja', 'LR', 1);
INSERT INTO `oc_zone` VALUES(168, 10, 'Mendoza', 'ME', 1);
INSERT INTO `oc_zone` VALUES(169, 10, 'Misiones', 'MI', 1);
INSERT INTO `oc_zone` VALUES(170, 10, 'Neuquen', 'NE', 1);
INSERT INTO `oc_zone` VALUES(171, 10, 'Rio Negro', 'RN', 1);
INSERT INTO `oc_zone` VALUES(172, 10, 'Salta', 'SA', 1);
INSERT INTO `oc_zone` VALUES(173, 10, 'San Juan', 'SJ', 1);
INSERT INTO `oc_zone` VALUES(174, 10, 'San Luis', 'SL', 1);
INSERT INTO `oc_zone` VALUES(175, 10, 'Santa Cruz', 'SC', 1);
INSERT INTO `oc_zone` VALUES(176, 10, 'Santa Fe', 'SF', 1);
INSERT INTO `oc_zone` VALUES(177, 10, 'Santiago del Estero', 'SD', 1);
INSERT INTO `oc_zone` VALUES(178, 10, 'Tierra del Fuego', 'TF', 1);
INSERT INTO `oc_zone` VALUES(179, 10, 'Tucuman', 'TU', 1);
INSERT INTO `oc_zone` VALUES(180, 11, 'Aragatsotn', 'AGT', 1);
INSERT INTO `oc_zone` VALUES(181, 11, 'Ararat', 'ARR', 1);
INSERT INTO `oc_zone` VALUES(182, 11, 'Armavir', 'ARM', 1);
INSERT INTO `oc_zone` VALUES(183, 11, 'Geghark''unik''', 'GEG', 1);
INSERT INTO `oc_zone` VALUES(184, 11, 'Kotayk''', 'KOT', 1);
INSERT INTO `oc_zone` VALUES(185, 11, 'Lorri', 'LOR', 1);
INSERT INTO `oc_zone` VALUES(186, 11, 'Shirak', 'SHI', 1);
INSERT INTO `oc_zone` VALUES(187, 11, 'Syunik''', 'SYU', 1);
INSERT INTO `oc_zone` VALUES(188, 11, 'Tavush', 'TAV', 1);
INSERT INTO `oc_zone` VALUES(189, 11, 'Vayots'' Dzor', 'VAY', 1);
INSERT INTO `oc_zone` VALUES(190, 11, 'Yerevan', 'YER', 1);
INSERT INTO `oc_zone` VALUES(191, 13, 'Australian Capital Territory', 'ACT', 1);
INSERT INTO `oc_zone` VALUES(192, 13, 'New South Wales', 'NSW', 1);
INSERT INTO `oc_zone` VALUES(193, 13, 'Northern Territory', 'NT', 1);
INSERT INTO `oc_zone` VALUES(194, 13, 'Queensland', 'QLD', 1);
INSERT INTO `oc_zone` VALUES(195, 13, 'South Australia', 'SA', 1);
INSERT INTO `oc_zone` VALUES(196, 13, 'Tasmania', 'TAS', 1);
INSERT INTO `oc_zone` VALUES(197, 13, 'Victoria', 'VIC', 1);
INSERT INTO `oc_zone` VALUES(198, 13, 'Western Australia', 'WA', 1);
INSERT INTO `oc_zone` VALUES(199, 14, 'Burgenland', 'BUR', 1);
INSERT INTO `oc_zone` VALUES(200, 14, 'Kärnten', 'KAR', 1);
INSERT INTO `oc_zone` VALUES(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1);
INSERT INTO `oc_zone` VALUES(202, 14, 'Ober&ouml;sterreich', 'OOS', 1);
INSERT INTO `oc_zone` VALUES(203, 14, 'Salzburg', 'SAL', 1);
INSERT INTO `oc_zone` VALUES(204, 14, 'Steiermark', 'STE', 1);
INSERT INTO `oc_zone` VALUES(205, 14, 'Tirol', 'TIR', 1);
INSERT INTO `oc_zone` VALUES(206, 14, 'Vorarlberg', 'VOR', 1);
INSERT INTO `oc_zone` VALUES(207, 14, 'Wien', 'WIE', 1);
INSERT INTO `oc_zone` VALUES(208, 15, 'Ali Bayramli', 'AB', 1);
INSERT INTO `oc_zone` VALUES(209, 15, 'Abseron', 'ABS', 1);
INSERT INTO `oc_zone` VALUES(210, 15, 'AgcabAdi', 'AGC', 1);
INSERT INTO `oc_zone` VALUES(211, 15, 'Agdam', 'AGM', 1);
INSERT INTO `oc_zone` VALUES(212, 15, 'Agdas', 'AGS', 1);
INSERT INTO `oc_zone` VALUES(213, 15, 'Agstafa', 'AGA', 1);
INSERT INTO `oc_zone` VALUES(214, 15, 'Agsu', 'AGU', 1);
INSERT INTO `oc_zone` VALUES(215, 15, 'Astara', 'AST', 1);
INSERT INTO `oc_zone` VALUES(216, 15, 'Baki', 'BA', 1);
INSERT INTO `oc_zone` VALUES(217, 15, 'BabAk', 'BAB', 1);
INSERT INTO `oc_zone` VALUES(218, 15, 'BalakAn', 'BAL', 1);
INSERT INTO `oc_zone` VALUES(219, 15, 'BArdA', 'BAR', 1);
INSERT INTO `oc_zone` VALUES(220, 15, 'Beylaqan', 'BEY', 1);
INSERT INTO `oc_zone` VALUES(221, 15, 'Bilasuvar', 'BIL', 1);
INSERT INTO `oc_zone` VALUES(222, 15, 'Cabrayil', 'CAB', 1);
INSERT INTO `oc_zone` VALUES(223, 15, 'Calilabab', 'CAL', 1);
INSERT INTO `oc_zone` VALUES(224, 15, 'Culfa', 'CUL', 1);
INSERT INTO `oc_zone` VALUES(225, 15, 'Daskasan', 'DAS', 1);
INSERT INTO `oc_zone` VALUES(226, 15, 'Davaci', 'DAV', 1);
INSERT INTO `oc_zone` VALUES(227, 15, 'Fuzuli', 'FUZ', 1);
INSERT INTO `oc_zone` VALUES(228, 15, 'Ganca', 'GA', 1);
INSERT INTO `oc_zone` VALUES(229, 15, 'Gadabay', 'GAD', 1);
INSERT INTO `oc_zone` VALUES(230, 15, 'Goranboy', 'GOR', 1);
INSERT INTO `oc_zone` VALUES(231, 15, 'Goycay', 'GOY', 1);
INSERT INTO `oc_zone` VALUES(232, 15, 'Haciqabul', 'HAC', 1);
INSERT INTO `oc_zone` VALUES(233, 15, 'Imisli', 'IMI', 1);
INSERT INTO `oc_zone` VALUES(234, 15, 'Ismayilli', 'ISM', 1);
INSERT INTO `oc_zone` VALUES(235, 15, 'Kalbacar', 'KAL', 1);
INSERT INTO `oc_zone` VALUES(236, 15, 'Kurdamir', 'KUR', 1);
INSERT INTO `oc_zone` VALUES(237, 15, 'Lankaran', 'LA', 1);
INSERT INTO `oc_zone` VALUES(238, 15, 'Lacin', 'LAC', 1);
INSERT INTO `oc_zone` VALUES(239, 15, 'Lankaran', 'LAN', 1);
INSERT INTO `oc_zone` VALUES(240, 15, 'Lerik', 'LER', 1);
INSERT INTO `oc_zone` VALUES(241, 15, 'Masalli', 'MAS', 1);
INSERT INTO `oc_zone` VALUES(242, 15, 'Mingacevir', 'MI', 1);
INSERT INTO `oc_zone` VALUES(243, 15, 'Naftalan', 'NA', 1);
INSERT INTO `oc_zone` VALUES(244, 15, 'Neftcala', 'NEF', 1);
INSERT INTO `oc_zone` VALUES(245, 15, 'Oguz', 'OGU', 1);
INSERT INTO `oc_zone` VALUES(246, 15, 'Ordubad', 'ORD', 1);
INSERT INTO `oc_zone` VALUES(247, 15, 'Qabala', 'QAB', 1);
INSERT INTO `oc_zone` VALUES(248, 15, 'Qax', 'QAX', 1);
INSERT INTO `oc_zone` VALUES(249, 15, 'Qazax', 'QAZ', 1);
INSERT INTO `oc_zone` VALUES(250, 15, 'Qobustan', 'QOB', 1);
INSERT INTO `oc_zone` VALUES(251, 15, 'Quba', 'QBA', 1);
INSERT INTO `oc_zone` VALUES(252, 15, 'Qubadli', 'QBI', 1);
INSERT INTO `oc_zone` VALUES(253, 15, 'Qusar', 'QUS', 1);
INSERT INTO `oc_zone` VALUES(254, 15, 'Saki', 'SA', 1);
INSERT INTO `oc_zone` VALUES(255, 15, 'Saatli', 'SAT', 1);
INSERT INTO `oc_zone` VALUES(256, 15, 'Sabirabad', 'SAB', 1);
INSERT INTO `oc_zone` VALUES(257, 15, 'Sadarak', 'SAD', 1);
INSERT INTO `oc_zone` VALUES(258, 15, 'Sahbuz', 'SAH', 1);
INSERT INTO `oc_zone` VALUES(259, 15, 'Saki', 'SAK', 1);
INSERT INTO `oc_zone` VALUES(260, 15, 'Salyan', 'SAL', 1);
INSERT INTO `oc_zone` VALUES(261, 15, 'Sumqayit', 'SM', 1);
INSERT INTO `oc_zone` VALUES(262, 15, 'Samaxi', 'SMI', 1);
INSERT INTO `oc_zone` VALUES(263, 15, 'Samkir', 'SKR', 1);
INSERT INTO `oc_zone` VALUES(264, 15, 'Samux', 'SMX', 1);
INSERT INTO `oc_zone` VALUES(265, 15, 'Sarur', 'SAR', 1);
INSERT INTO `oc_zone` VALUES(266, 15, 'Siyazan', 'SIY', 1);
INSERT INTO `oc_zone` VALUES(267, 15, 'Susa', 'SS', 1);
INSERT INTO `oc_zone` VALUES(268, 15, 'Susa', 'SUS', 1);
INSERT INTO `oc_zone` VALUES(269, 15, 'Tartar', 'TAR', 1);
INSERT INTO `oc_zone` VALUES(270, 15, 'Tovuz', 'TOV', 1);
INSERT INTO `oc_zone` VALUES(271, 15, 'Ucar', 'UCA', 1);
INSERT INTO `oc_zone` VALUES(272, 15, 'Xankandi', 'XA', 1);
INSERT INTO `oc_zone` VALUES(273, 15, 'Xacmaz', 'XAC', 1);
INSERT INTO `oc_zone` VALUES(274, 15, 'Xanlar', 'XAN', 1);
INSERT INTO `oc_zone` VALUES(275, 15, 'Xizi', 'XIZ', 1);
INSERT INTO `oc_zone` VALUES(276, 15, 'Xocali', 'XCI', 1);
INSERT INTO `oc_zone` VALUES(277, 15, 'Xocavand', 'XVD', 1);
INSERT INTO `oc_zone` VALUES(278, 15, 'Yardimli', 'YAR', 1);
INSERT INTO `oc_zone` VALUES(279, 15, 'Yevlax', 'YEV', 1);
INSERT INTO `oc_zone` VALUES(280, 15, 'Zangilan', 'ZAN', 1);
INSERT INTO `oc_zone` VALUES(281, 15, 'Zaqatala', 'ZAQ', 1);
INSERT INTO `oc_zone` VALUES(282, 15, 'Zardab', 'ZAR', 1);
INSERT INTO `oc_zone` VALUES(283, 15, 'Naxcivan', 'NX', 1);
INSERT INTO `oc_zone` VALUES(284, 16, 'Acklins', 'ACK', 1);
INSERT INTO `oc_zone` VALUES(285, 16, 'Berry Islands', 'BER', 1);
INSERT INTO `oc_zone` VALUES(286, 16, 'Bimini', 'BIM', 1);
INSERT INTO `oc_zone` VALUES(287, 16, 'Black Point', 'BLK', 1);
INSERT INTO `oc_zone` VALUES(288, 16, 'Cat Island', 'CAT', 1);
INSERT INTO `oc_zone` VALUES(289, 16, 'Central Abaco', 'CAB', 1);
INSERT INTO `oc_zone` VALUES(290, 16, 'Central Andros', 'CAN', 1);
INSERT INTO `oc_zone` VALUES(291, 16, 'Central Eleuthera', 'CEL', 1);
INSERT INTO `oc_zone` VALUES(292, 16, 'City of Freeport', 'FRE', 1);
INSERT INTO `oc_zone` VALUES(293, 16, 'Crooked Island', 'CRO', 1);
INSERT INTO `oc_zone` VALUES(294, 16, 'East Grand Bahama', 'EGB', 1);
INSERT INTO `oc_zone` VALUES(295, 16, 'Exuma', 'EXU', 1);
INSERT INTO `oc_zone` VALUES(296, 16, 'Grand Cay', 'GRD', 1);
INSERT INTO `oc_zone` VALUES(297, 16, 'Harbour Island', 'HAR', 1);
INSERT INTO `oc_zone` VALUES(298, 16, 'Hope Town', 'HOP', 1);
INSERT INTO `oc_zone` VALUES(299, 16, 'Inagua', 'INA', 1);
INSERT INTO `oc_zone` VALUES(300, 16, 'Long Island', 'LNG', 1);
INSERT INTO `oc_zone` VALUES(301, 16, 'Mangrove Cay', 'MAN', 1);
INSERT INTO `oc_zone` VALUES(302, 16, 'Mayaguana', 'MAY', 1);
INSERT INTO `oc_zone` VALUES(303, 16, 'Moore''s Island', 'MOO', 1);
INSERT INTO `oc_zone` VALUES(304, 16, 'North Abaco', 'NAB', 1);
INSERT INTO `oc_zone` VALUES(305, 16, 'North Andros', 'NAN', 1);
INSERT INTO `oc_zone` VALUES(306, 16, 'North Eleuthera', 'NEL', 1);
INSERT INTO `oc_zone` VALUES(307, 16, 'Ragged Island', 'RAG', 1);
INSERT INTO `oc_zone` VALUES(308, 16, 'Rum Cay', 'RUM', 1);
INSERT INTO `oc_zone` VALUES(309, 16, 'San Salvador', 'SAL', 1);
INSERT INTO `oc_zone` VALUES(310, 16, 'South Abaco', 'SAB', 1);
INSERT INTO `oc_zone` VALUES(311, 16, 'South Andros', 'SAN', 1);
INSERT INTO `oc_zone` VALUES(312, 16, 'South Eleuthera', 'SEL', 1);
INSERT INTO `oc_zone` VALUES(313, 16, 'Spanish Wells', 'SWE', 1);
INSERT INTO `oc_zone` VALUES(314, 16, 'West Grand Bahama', 'WGB', 1);
INSERT INTO `oc_zone` VALUES(315, 17, 'Capital', 'CAP', 1);
INSERT INTO `oc_zone` VALUES(316, 17, 'Central', 'CEN', 1);
INSERT INTO `oc_zone` VALUES(317, 17, 'Muharraq', 'MUH', 1);
INSERT INTO `oc_zone` VALUES(318, 17, 'Northern', 'NOR', 1);
INSERT INTO `oc_zone` VALUES(319, 17, 'Southern', 'SOU', 1);
INSERT INTO `oc_zone` VALUES(320, 18, 'Barisal', 'BAR', 1);
INSERT INTO `oc_zone` VALUES(321, 18, 'Chittagong', 'CHI', 1);
INSERT INTO `oc_zone` VALUES(322, 18, 'Dhaka', 'DHA', 1);
INSERT INTO `oc_zone` VALUES(323, 18, 'Khulna', 'KHU', 1);
INSERT INTO `oc_zone` VALUES(324, 18, 'Rajshahi', 'RAJ', 1);
INSERT INTO `oc_zone` VALUES(325, 18, 'Sylhet', 'SYL', 1);
INSERT INTO `oc_zone` VALUES(326, 19, 'Christ Church', 'CC', 1);
INSERT INTO `oc_zone` VALUES(327, 19, 'Saint Andrew', 'AND', 1);
INSERT INTO `oc_zone` VALUES(328, 19, 'Saint George', 'GEO', 1);
INSERT INTO `oc_zone` VALUES(329, 19, 'Saint James', 'JAM', 1);
INSERT INTO `oc_zone` VALUES(330, 19, 'Saint John', 'JOH', 1);
INSERT INTO `oc_zone` VALUES(331, 19, 'Saint Joseph', 'JOS', 1);
INSERT INTO `oc_zone` VALUES(332, 19, 'Saint Lucy', 'LUC', 1);
INSERT INTO `oc_zone` VALUES(333, 19, 'Saint Michael', 'MIC', 1);
INSERT INTO `oc_zone` VALUES(334, 19, 'Saint Peter', 'PET', 1);
INSERT INTO `oc_zone` VALUES(335, 19, 'Saint Philip', 'PHI', 1);
INSERT INTO `oc_zone` VALUES(336, 19, 'Saint Thomas', 'THO', 1);
INSERT INTO `oc_zone` VALUES(337, 20, 'Brestskaya (Brest)', 'BR', 1);
INSERT INTO `oc_zone` VALUES(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1);
INSERT INTO `oc_zone` VALUES(339, 20, 'Horad Minsk', 'HM', 1);
INSERT INTO `oc_zone` VALUES(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1);
INSERT INTO `oc_zone` VALUES(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1);
INSERT INTO `oc_zone` VALUES(342, 20, 'Minskaya', 'MI', 1);
INSERT INTO `oc_zone` VALUES(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1);
INSERT INTO `oc_zone` VALUES(344, 21, 'Antwerpen', 'VAN', 1);
INSERT INTO `oc_zone` VALUES(345, 21, 'Brabant Wallon', 'WBR', 1);
INSERT INTO `oc_zone` VALUES(346, 21, 'Hainaut', 'WHT', 1);
INSERT INTO `oc_zone` VALUES(347, 21, 'Liège', 'WLG', 1);
INSERT INTO `oc_zone` VALUES(348, 21, 'Limburg', 'VLI', 1);
INSERT INTO `oc_zone` VALUES(349, 21, 'Luxembourg', 'WLX', 1);
INSERT INTO `oc_zone` VALUES(350, 21, 'Namur', 'WNA', 1);
INSERT INTO `oc_zone` VALUES(351, 21, 'Oost-Vlaanderen', 'VOV', 1);
INSERT INTO `oc_zone` VALUES(352, 21, 'Vlaams Brabant', 'VBR', 1);
INSERT INTO `oc_zone` VALUES(353, 21, 'West-Vlaanderen', 'VWV', 1);
INSERT INTO `oc_zone` VALUES(354, 22, 'Belize', 'BZ', 1);
INSERT INTO `oc_zone` VALUES(355, 22, 'Cayo', 'CY', 1);
INSERT INTO `oc_zone` VALUES(356, 22, 'Corozal', 'CR', 1);
INSERT INTO `oc_zone` VALUES(357, 22, 'Orange Walk', 'OW', 1);
INSERT INTO `oc_zone` VALUES(358, 22, 'Stann Creek', 'SC', 1);
INSERT INTO `oc_zone` VALUES(359, 22, 'Toledo', 'TO', 1);
INSERT INTO `oc_zone` VALUES(360, 23, 'Alibori', 'AL', 1);
INSERT INTO `oc_zone` VALUES(361, 23, 'Atakora', 'AK', 1);
INSERT INTO `oc_zone` VALUES(362, 23, 'Atlantique', 'AQ', 1);
INSERT INTO `oc_zone` VALUES(363, 23, 'Borgou', 'BO', 1);
INSERT INTO `oc_zone` VALUES(364, 23, 'Collines', 'CO', 1);
INSERT INTO `oc_zone` VALUES(365, 23, 'Donga', 'DO', 1);
INSERT INTO `oc_zone` VALUES(366, 23, 'Kouffo', 'KO', 1);
INSERT INTO `oc_zone` VALUES(367, 23, 'Littoral', 'LI', 1);
INSERT INTO `oc_zone` VALUES(368, 23, 'Mono', 'MO', 1);
INSERT INTO `oc_zone` VALUES(369, 23, 'Oueme', 'OU', 1);
INSERT INTO `oc_zone` VALUES(370, 23, 'Plateau', 'PL', 1);
INSERT INTO `oc_zone` VALUES(371, 23, 'Zou', 'ZO', 1);
INSERT INTO `oc_zone` VALUES(372, 24, 'Devonshire', 'DS', 1);
INSERT INTO `oc_zone` VALUES(373, 24, 'Hamilton City', 'HC', 1);
INSERT INTO `oc_zone` VALUES(374, 24, 'Hamilton', 'HA', 1);
INSERT INTO `oc_zone` VALUES(375, 24, 'Paget', 'PG', 1);
INSERT INTO `oc_zone` VALUES(376, 24, 'Pembroke', 'PB', 1);
INSERT INTO `oc_zone` VALUES(377, 24, 'Saint George City', 'GC', 1);
INSERT INTO `oc_zone` VALUES(378, 24, 'Saint George''s', 'SG', 1);
INSERT INTO `oc_zone` VALUES(379, 24, 'Sandys', 'SA', 1);
INSERT INTO `oc_zone` VALUES(380, 24, 'Smith''s', 'SM', 1);
INSERT INTO `oc_zone` VALUES(381, 24, 'Southampton', 'SH', 1);
INSERT INTO `oc_zone` VALUES(382, 24, 'Warwick', 'WA', 1);
INSERT INTO `oc_zone` VALUES(383, 25, 'Bumthang', 'BUM', 1);
INSERT INTO `oc_zone` VALUES(384, 25, 'Chukha', 'CHU', 1);
INSERT INTO `oc_zone` VALUES(385, 25, 'Dagana', 'DAG', 1);
INSERT INTO `oc_zone` VALUES(386, 25, 'Gasa', 'GAS', 1);
INSERT INTO `oc_zone` VALUES(387, 25, 'Haa', 'HAA', 1);
INSERT INTO `oc_zone` VALUES(388, 25, 'Lhuntse', 'LHU', 1);
INSERT INTO `oc_zone` VALUES(389, 25, 'Mongar', 'MON', 1);
INSERT INTO `oc_zone` VALUES(390, 25, 'Paro', 'PAR', 1);
INSERT INTO `oc_zone` VALUES(391, 25, 'Pemagatshel', 'PEM', 1);
INSERT INTO `oc_zone` VALUES(392, 25, 'Punakha', 'PUN', 1);
INSERT INTO `oc_zone` VALUES(393, 25, 'Samdrup Jongkhar', 'SJO', 1);
INSERT INTO `oc_zone` VALUES(394, 25, 'Samtse', 'SAT', 1);
INSERT INTO `oc_zone` VALUES(395, 25, 'Sarpang', 'SAR', 1);
INSERT INTO `oc_zone` VALUES(396, 25, 'Thimphu', 'THI', 1);
INSERT INTO `oc_zone` VALUES(397, 25, 'Trashigang', 'TRG', 1);
INSERT INTO `oc_zone` VALUES(398, 25, 'Trashiyangste', 'TRY', 1);
INSERT INTO `oc_zone` VALUES(399, 25, 'Trongsa', 'TRO', 1);
INSERT INTO `oc_zone` VALUES(400, 25, 'Tsirang', 'TSI', 1);
INSERT INTO `oc_zone` VALUES(401, 25, 'Wangdue Phodrang', 'WPH', 1);
INSERT INTO `oc_zone` VALUES(402, 25, 'Zhemgang', 'ZHE', 1);
INSERT INTO `oc_zone` VALUES(403, 26, 'Beni', 'BEN', 1);
INSERT INTO `oc_zone` VALUES(404, 26, 'Chuquisaca', 'CHU', 1);
INSERT INTO `oc_zone` VALUES(405, 26, 'Cochabamba', 'COC', 1);
INSERT INTO `oc_zone` VALUES(406, 26, 'La Paz', 'LPZ', 1);
INSERT INTO `oc_zone` VALUES(407, 26, 'Oruro', 'ORU', 1);
INSERT INTO `oc_zone` VALUES(408, 26, 'Pando', 'PAN', 1);
INSERT INTO `oc_zone` VALUES(409, 26, 'Potosi', 'POT', 1);
INSERT INTO `oc_zone` VALUES(410, 26, 'Santa Cruz', 'SCZ', 1);
INSERT INTO `oc_zone` VALUES(411, 26, 'Tarija', 'TAR', 1);
INSERT INTO `oc_zone` VALUES(412, 27, 'Brcko district', 'BRO', 1);
INSERT INTO `oc_zone` VALUES(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1);
INSERT INTO `oc_zone` VALUES(414, 27, 'Posavski Kanton', 'FPO', 1);
INSERT INTO `oc_zone` VALUES(415, 27, 'Tuzlanski Kanton', 'FTU', 1);
INSERT INTO `oc_zone` VALUES(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1);
INSERT INTO `oc_zone` VALUES(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1);
INSERT INTO `oc_zone` VALUES(418, 27, 'Srednjebosanski Kanton', 'FSB', 1);
INSERT INTO `oc_zone` VALUES(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1);
INSERT INTO `oc_zone` VALUES(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1);
INSERT INTO `oc_zone` VALUES(421, 27, 'Kanton Sarajevo', 'FSA', 1);
INSERT INTO `oc_zone` VALUES(422, 27, 'Zapadnobosanska', 'FZA', 1);
INSERT INTO `oc_zone` VALUES(423, 27, 'Banja Luka', 'SBL', 1);
INSERT INTO `oc_zone` VALUES(424, 27, 'Doboj', 'SDO', 1);
INSERT INTO `oc_zone` VALUES(425, 27, 'Bijeljina', 'SBI', 1);
INSERT INTO `oc_zone` VALUES(426, 27, 'Vlasenica', 'SVL', 1);
INSERT INTO `oc_zone` VALUES(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1);
INSERT INTO `oc_zone` VALUES(428, 27, 'Foca', 'SFO', 1);
INSERT INTO `oc_zone` VALUES(429, 27, 'Trebinje', 'STR', 1);
INSERT INTO `oc_zone` VALUES(430, 28, 'Central', 'CE', 1);
INSERT INTO `oc_zone` VALUES(431, 28, 'Ghanzi', 'GH', 1);
INSERT INTO `oc_zone` VALUES(432, 28, 'Kgalagadi', 'KD', 1);
INSERT INTO `oc_zone` VALUES(433, 28, 'Kgatleng', 'KT', 1);
INSERT INTO `oc_zone` VALUES(434, 28, 'Kweneng', 'KW', 1);
INSERT INTO `oc_zone` VALUES(435, 28, 'Ngamiland', 'NG', 1);
INSERT INTO `oc_zone` VALUES(436, 28, 'North East', 'NE', 1);
INSERT INTO `oc_zone` VALUES(437, 28, 'North West', 'NW', 1);
INSERT INTO `oc_zone` VALUES(438, 28, 'South East', 'SE', 1);
INSERT INTO `oc_zone` VALUES(439, 28, 'Southern', 'SO', 1);
INSERT INTO `oc_zone` VALUES(440, 30, 'Acre', 'AC', 1);
INSERT INTO `oc_zone` VALUES(441, 30, 'Alagoas', 'AL', 1);
INSERT INTO `oc_zone` VALUES(442, 30, 'Amapá', 'AP', 1);
INSERT INTO `oc_zone` VALUES(443, 30, 'Amazonas', 'AM', 1);
INSERT INTO `oc_zone` VALUES(444, 30, 'Bahia', 'BA', 1);
INSERT INTO `oc_zone` VALUES(445, 30, 'Ceará', 'CE', 1);
INSERT INTO `oc_zone` VALUES(446, 30, 'Distrito Federal', 'DF', 1);
INSERT INTO `oc_zone` VALUES(447, 30, 'Espírito Santo', 'ES', 1);
INSERT INTO `oc_zone` VALUES(448, 30, 'Goiás', 'GO', 1);
INSERT INTO `oc_zone` VALUES(449, 30, 'Maranhão', 'MA', 1);
INSERT INTO `oc_zone` VALUES(450, 30, 'Mato Grosso', 'MT', 1);
INSERT INTO `oc_zone` VALUES(451, 30, 'Mato Grosso do Sul', 'MS', 1);
INSERT INTO `oc_zone` VALUES(452, 30, 'Minas Gerais', 'MG', 1);
INSERT INTO `oc_zone` VALUES(453, 30, 'Pará', 'PA', 1);
INSERT INTO `oc_zone` VALUES(454, 30, 'Paraíba', 'PB', 1);
INSERT INTO `oc_zone` VALUES(455, 30, 'Paraná', 'PR', 1);
INSERT INTO `oc_zone` VALUES(456, 30, 'Pernambuco', 'PE', 1);
INSERT INTO `oc_zone` VALUES(457, 30, 'Piauí', 'PI', 1);
INSERT INTO `oc_zone` VALUES(458, 30, 'Rio de Janeiro', 'RJ', 1);
INSERT INTO `oc_zone` VALUES(459, 30, 'Rio Grande do Norte', 'RN', 1);
INSERT INTO `oc_zone` VALUES(460, 30, 'Rio Grande do Sul', 'RS', 1);
INSERT INTO `oc_zone` VALUES(461, 30, 'Rondônia', 'RO', 1);
INSERT INTO `oc_zone` VALUES(462, 30, 'Roraima', 'RR', 1);
INSERT INTO `oc_zone` VALUES(463, 30, 'Santa Catarina', 'SC', 1);
INSERT INTO `oc_zone` VALUES(464, 30, 'São Paulo', 'SP', 1);
INSERT INTO `oc_zone` VALUES(465, 30, 'Sergipe', 'SE', 1);
INSERT INTO `oc_zone` VALUES(466, 30, 'Tocantins', 'TO', 1);
INSERT INTO `oc_zone` VALUES(467, 31, 'Peros Banhos', 'PB', 1);
INSERT INTO `oc_zone` VALUES(468, 31, 'Salomon Islands', 'SI', 1);
INSERT INTO `oc_zone` VALUES(469, 31, 'Nelsons Island', 'NI', 1);
INSERT INTO `oc_zone` VALUES(470, 31, 'Three Brothers', 'TB', 1);
INSERT INTO `oc_zone` VALUES(471, 31, 'Eagle Islands', 'EA', 1);
INSERT INTO `oc_zone` VALUES(472, 31, 'Danger Island', 'DI', 1);
INSERT INTO `oc_zone` VALUES(473, 31, 'Egmont Islands', 'EG', 1);
INSERT INTO `oc_zone` VALUES(474, 31, 'Diego Garcia', 'DG', 1);
INSERT INTO `oc_zone` VALUES(475, 32, 'Belait', 'BEL', 1);
INSERT INTO `oc_zone` VALUES(476, 32, 'Brunei and Muara', 'BRM', 1);
INSERT INTO `oc_zone` VALUES(477, 32, 'Temburong', 'TEM', 1);
INSERT INTO `oc_zone` VALUES(478, 32, 'Tutong', 'TUT', 1);
INSERT INTO `oc_zone` VALUES(479, 33, 'Blagoevgrad', '', 1);
INSERT INTO `oc_zone` VALUES(480, 33, 'Burgas', '', 1);
INSERT INTO `oc_zone` VALUES(481, 33, 'Dobrich', '', 1);
INSERT INTO `oc_zone` VALUES(482, 33, 'Gabrovo', '', 1);
INSERT INTO `oc_zone` VALUES(483, 33, 'Haskovo', '', 1);
INSERT INTO `oc_zone` VALUES(484, 33, 'Kardjali', '', 1);
INSERT INTO `oc_zone` VALUES(485, 33, 'Kyustendil', '', 1);
INSERT INTO `oc_zone` VALUES(486, 33, 'Lovech', '', 1);
INSERT INTO `oc_zone` VALUES(487, 33, 'Montana', '', 1);
INSERT INTO `oc_zone` VALUES(488, 33, 'Pazardjik', '', 1);
INSERT INTO `oc_zone` VALUES(489, 33, 'Pernik', '', 1);
INSERT INTO `oc_zone` VALUES(490, 33, 'Pleven', '', 1);
INSERT INTO `oc_zone` VALUES(491, 33, 'Plovdiv', '', 1);
INSERT INTO `oc_zone` VALUES(492, 33, 'Razgrad', '', 1);
INSERT INTO `oc_zone` VALUES(493, 33, 'Shumen', '', 1);
INSERT INTO `oc_zone` VALUES(494, 33, 'Silistra', '', 1);
INSERT INTO `oc_zone` VALUES(495, 33, 'Sliven', '', 1);
INSERT INTO `oc_zone` VALUES(496, 33, 'Smolyan', '', 1);
INSERT INTO `oc_zone` VALUES(497, 33, 'Sofia', '', 1);
INSERT INTO `oc_zone` VALUES(498, 33, 'Sofia - town', '', 1);
INSERT INTO `oc_zone` VALUES(499, 33, 'Stara Zagora', '', 1);
INSERT INTO `oc_zone` VALUES(500, 33, 'Targovishte', '', 1);
INSERT INTO `oc_zone` VALUES(501, 33, 'Varna', '', 1);
INSERT INTO `oc_zone` VALUES(502, 33, 'Veliko Tarnovo', '', 1);
INSERT INTO `oc_zone` VALUES(503, 33, 'Vidin', '', 1);
INSERT INTO `oc_zone` VALUES(504, 33, 'Vratza', '', 1);
INSERT INTO `oc_zone` VALUES(505, 33, 'Yambol', '', 1);
INSERT INTO `oc_zone` VALUES(506, 34, 'Bale', 'BAL', 1);
INSERT INTO `oc_zone` VALUES(507, 34, 'Bam', 'BAM', 1);
INSERT INTO `oc_zone` VALUES(508, 34, 'Banwa', 'BAN', 1);
INSERT INTO `oc_zone` VALUES(509, 34, 'Bazega', 'BAZ', 1);
INSERT INTO `oc_zone` VALUES(510, 34, 'Bougouriba', 'BOR', 1);
INSERT INTO `oc_zone` VALUES(511, 34, 'Boulgou', 'BLG', 1);
INSERT INTO `oc_zone` VALUES(512, 34, 'Boulkiemde', 'BOK', 1);
INSERT INTO `oc_zone` VALUES(513, 34, 'Comoe', 'COM', 1);
INSERT INTO `oc_zone` VALUES(514, 34, 'Ganzourgou', 'GAN', 1);
INSERT INTO `oc_zone` VALUES(515, 34, 'Gnagna', 'GNA', 1);
INSERT INTO `oc_zone` VALUES(516, 34, 'Gourma', 'GOU', 1);
INSERT INTO `oc_zone` VALUES(517, 34, 'Houet', 'HOU', 1);
INSERT INTO `oc_zone` VALUES(518, 34, 'Ioba', 'IOA', 1);
INSERT INTO `oc_zone` VALUES(519, 34, 'Kadiogo', 'KAD', 1);
INSERT INTO `oc_zone` VALUES(520, 34, 'Kenedougou', 'KEN', 1);
INSERT INTO `oc_zone` VALUES(521, 34, 'Komondjari', 'KOD', 1);
INSERT INTO `oc_zone` VALUES(522, 34, 'Kompienga', 'KOP', 1);
INSERT INTO `oc_zone` VALUES(523, 34, 'Kossi', 'KOS', 1);
INSERT INTO `oc_zone` VALUES(524, 34, 'Koulpelogo', 'KOL', 1);
INSERT INTO `oc_zone` VALUES(525, 34, 'Kouritenga', 'KOT', 1);
INSERT INTO `oc_zone` VALUES(526, 34, 'Kourweogo', 'KOW', 1);
INSERT INTO `oc_zone` VALUES(527, 34, 'Leraba', 'LER', 1);
INSERT INTO `oc_zone` VALUES(528, 34, 'Loroum', 'LOR', 1);
INSERT INTO `oc_zone` VALUES(529, 34, 'Mouhoun', 'MOU', 1);
INSERT INTO `oc_zone` VALUES(530, 34, 'Nahouri', 'NAH', 1);
INSERT INTO `oc_zone` VALUES(531, 34, 'Namentenga', 'NAM', 1);
INSERT INTO `oc_zone` VALUES(532, 34, 'Nayala', 'NAY', 1);
INSERT INTO `oc_zone` VALUES(533, 34, 'Noumbiel', 'NOU', 1);
INSERT INTO `oc_zone` VALUES(534, 34, 'Oubritenga', 'OUB', 1);
INSERT INTO `oc_zone` VALUES(535, 34, 'Oudalan', 'OUD', 1);
INSERT INTO `oc_zone` VALUES(536, 34, 'Passore', 'PAS', 1);
INSERT INTO `oc_zone` VALUES(537, 34, 'Poni', 'PON', 1);
INSERT INTO `oc_zone` VALUES(538, 34, 'Sanguie', 'SAG', 1);
INSERT INTO `oc_zone` VALUES(539, 34, 'Sanmatenga', 'SAM', 1);
INSERT INTO `oc_zone` VALUES(540, 34, 'Seno', 'SEN', 1);
INSERT INTO `oc_zone` VALUES(541, 34, 'Sissili', 'SIS', 1);
INSERT INTO `oc_zone` VALUES(542, 34, 'Soum', 'SOM', 1);
INSERT INTO `oc_zone` VALUES(543, 34, 'Sourou', 'SOR', 1);
INSERT INTO `oc_zone` VALUES(544, 34, 'Tapoa', 'TAP', 1);
INSERT INTO `oc_zone` VALUES(545, 34, 'Tuy', 'TUY', 1);
INSERT INTO `oc_zone` VALUES(546, 34, 'Yagha', 'YAG', 1);
INSERT INTO `oc_zone` VALUES(547, 34, 'Yatenga', 'YAT', 1);
INSERT INTO `oc_zone` VALUES(548, 34, 'Ziro', 'ZIR', 1);
INSERT INTO `oc_zone` VALUES(549, 34, 'Zondoma', 'ZOD', 1);
INSERT INTO `oc_zone` VALUES(550, 34, 'Zoundweogo', 'ZOW', 1);
INSERT INTO `oc_zone` VALUES(551, 35, 'Bubanza', 'BB', 1);
INSERT INTO `oc_zone` VALUES(552, 35, 'Bujumbura', 'BJ', 1);
INSERT INTO `oc_zone` VALUES(553, 35, 'Bururi', 'BR', 1);
INSERT INTO `oc_zone` VALUES(554, 35, 'Cankuzo', 'CA', 1);
INSERT INTO `oc_zone` VALUES(555, 35, 'Cibitoke', 'CI', 1);
INSERT INTO `oc_zone` VALUES(556, 35, 'Gitega', 'GI', 1);
INSERT INTO `oc_zone` VALUES(557, 35, 'Karuzi', 'KR', 1);
INSERT INTO `oc_zone` VALUES(558, 35, 'Kayanza', 'KY', 1);
INSERT INTO `oc_zone` VALUES(559, 35, 'Kirundo', 'KI', 1);
INSERT INTO `oc_zone` VALUES(560, 35, 'Makamba', 'MA', 1);
INSERT INTO `oc_zone` VALUES(561, 35, 'Muramvya', 'MU', 1);
INSERT INTO `oc_zone` VALUES(562, 35, 'Muyinga', 'MY', 1);
INSERT INTO `oc_zone` VALUES(563, 35, 'Mwaro', 'MW', 1);
INSERT INTO `oc_zone` VALUES(564, 35, 'Ngozi', 'NG', 1);
INSERT INTO `oc_zone` VALUES(565, 35, 'Rutana', 'RT', 1);
INSERT INTO `oc_zone` VALUES(566, 35, 'Ruyigi', 'RY', 1);
INSERT INTO `oc_zone` VALUES(567, 36, 'Phnom Penh', 'PP', 1);
INSERT INTO `oc_zone` VALUES(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1);
INSERT INTO `oc_zone` VALUES(569, 36, 'Pailin', 'PA', 1);
INSERT INTO `oc_zone` VALUES(570, 36, 'Keb', 'KB', 1);
INSERT INTO `oc_zone` VALUES(571, 36, 'Banteay Meanchey', 'BM', 1);
INSERT INTO `oc_zone` VALUES(572, 36, 'Battambang', 'BA', 1);
INSERT INTO `oc_zone` VALUES(573, 36, 'Kampong Cham', 'KM', 1);
INSERT INTO `oc_zone` VALUES(574, 36, 'Kampong Chhnang', 'KN', 1);
INSERT INTO `oc_zone` VALUES(575, 36, 'Kampong Speu', 'KU', 1);
INSERT INTO `oc_zone` VALUES(576, 36, 'Kampong Som', 'KO', 1);
INSERT INTO `oc_zone` VALUES(577, 36, 'Kampong Thom', 'KT', 1);
INSERT INTO `oc_zone` VALUES(578, 36, 'Kampot', 'KP', 1);
INSERT INTO `oc_zone` VALUES(579, 36, 'Kandal', 'KL', 1);
INSERT INTO `oc_zone` VALUES(580, 36, 'Kaoh Kong', 'KK', 1);
INSERT INTO `oc_zone` VALUES(581, 36, 'Kratie', 'KR', 1);
INSERT INTO `oc_zone` VALUES(582, 36, 'Mondul Kiri', 'MK', 1);
INSERT INTO `oc_zone` VALUES(583, 36, 'Oddar Meancheay', 'OM', 1);
INSERT INTO `oc_zone` VALUES(584, 36, 'Pursat', 'PU', 1);
INSERT INTO `oc_zone` VALUES(585, 36, 'Preah Vihear', 'PR', 1);
INSERT INTO `oc_zone` VALUES(586, 36, 'Prey Veng', 'PG', 1);
INSERT INTO `oc_zone` VALUES(587, 36, 'Ratanak Kiri', 'RK', 1);
INSERT INTO `oc_zone` VALUES(588, 36, 'Siemreap', 'SI', 1);
INSERT INTO `oc_zone` VALUES(589, 36, 'Stung Treng', 'ST', 1);
INSERT INTO `oc_zone` VALUES(590, 36, 'Svay Rieng', 'SR', 1);
INSERT INTO `oc_zone` VALUES(591, 36, 'Takeo', 'TK', 1);
INSERT INTO `oc_zone` VALUES(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1);
INSERT INTO `oc_zone` VALUES(593, 37, 'Centre', 'CEN', 1);
INSERT INTO `oc_zone` VALUES(594, 37, 'East (Est)', 'EST', 1);
INSERT INTO `oc_zone` VALUES(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1);
INSERT INTO `oc_zone` VALUES(596, 37, 'Littoral', 'LIT', 1);
INSERT INTO `oc_zone` VALUES(597, 37, 'North (Nord)', 'NOR', 1);
INSERT INTO `oc_zone` VALUES(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1);
INSERT INTO `oc_zone` VALUES(599, 37, 'West (Ouest)', 'OUE', 1);
INSERT INTO `oc_zone` VALUES(600, 37, 'South (Sud)', 'SUD', 1);
INSERT INTO `oc_zone` VALUES(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1);
INSERT INTO `oc_zone` VALUES(602, 38, 'Alberta', 'AB', 1);
INSERT INTO `oc_zone` VALUES(603, 38, 'British Columbia', 'BC', 1);
INSERT INTO `oc_zone` VALUES(604, 38, 'Manitoba', 'MB', 1);
INSERT INTO `oc_zone` VALUES(605, 38, 'New Brunswick', 'NB', 1);
INSERT INTO `oc_zone` VALUES(606, 38, 'Newfoundland and Labrador', 'NL', 1);
INSERT INTO `oc_zone` VALUES(607, 38, 'Northwest Territories', 'NT', 1);
INSERT INTO `oc_zone` VALUES(608, 38, 'Nova Scotia', 'NS', 1);
INSERT INTO `oc_zone` VALUES(609, 38, 'Nunavut', 'NU', 1);
INSERT INTO `oc_zone` VALUES(610, 38, 'Ontario', 'ON', 1);
INSERT INTO `oc_zone` VALUES(611, 38, 'Prince Edward Island', 'PE', 1);
INSERT INTO `oc_zone` VALUES(612, 38, 'Qu&eacute;bec', 'QC', 1);
INSERT INTO `oc_zone` VALUES(613, 38, 'Saskatchewan', 'SK', 1);
INSERT INTO `oc_zone` VALUES(614, 38, 'Yukon Territory', 'YT', 1);
INSERT INTO `oc_zone` VALUES(615, 39, 'Boa Vista', 'BV', 1);
INSERT INTO `oc_zone` VALUES(616, 39, 'Brava', 'BR', 1);
INSERT INTO `oc_zone` VALUES(617, 39, 'Calheta de Sao Miguel', 'CS', 1);
INSERT INTO `oc_zone` VALUES(618, 39, 'Maio', 'MA', 1);
INSERT INTO `oc_zone` VALUES(619, 39, 'Mosteiros', 'MO', 1);
INSERT INTO `oc_zone` VALUES(620, 39, 'Paul', 'PA', 1);
INSERT INTO `oc_zone` VALUES(621, 39, 'Porto Novo', 'PN', 1);
INSERT INTO `oc_zone` VALUES(622, 39, 'Praia', 'PR', 1);
INSERT INTO `oc_zone` VALUES(623, 39, 'Ribeira Grande', 'RG', 1);
INSERT INTO `oc_zone` VALUES(624, 39, 'Sal', 'SL', 1);
INSERT INTO `oc_zone` VALUES(625, 39, 'Santa Catarina', 'CA', 1);
INSERT INTO `oc_zone` VALUES(626, 39, 'Santa Cruz', 'CR', 1);
INSERT INTO `oc_zone` VALUES(627, 39, 'Sao Domingos', 'SD', 1);
INSERT INTO `oc_zone` VALUES(628, 39, 'Sao Filipe', 'SF', 1);
INSERT INTO `oc_zone` VALUES(629, 39, 'Sao Nicolau', 'SN', 1);
INSERT INTO `oc_zone` VALUES(630, 39, 'Sao Vicente', 'SV', 1);
INSERT INTO `oc_zone` VALUES(631, 39, 'Tarrafal', 'TA', 1);
INSERT INTO `oc_zone` VALUES(632, 40, 'Creek', 'CR', 1);
INSERT INTO `oc_zone` VALUES(633, 40, 'Eastern', 'EA', 1);
INSERT INTO `oc_zone` VALUES(634, 40, 'Midland', 'ML', 1);
INSERT INTO `oc_zone` VALUES(635, 40, 'South Town', 'ST', 1);
INSERT INTO `oc_zone` VALUES(636, 40, 'Spot Bay', 'SP', 1);
INSERT INTO `oc_zone` VALUES(637, 40, 'Stake Bay', 'SK', 1);
INSERT INTO `oc_zone` VALUES(638, 40, 'West End', 'WD', 1);
INSERT INTO `oc_zone` VALUES(639, 40, 'Western', 'WN', 1);
INSERT INTO `oc_zone` VALUES(640, 41, 'Bamingui-Bangoran', 'BBA', 1);
INSERT INTO `oc_zone` VALUES(641, 41, 'Basse-Kotto', 'BKO', 1);
INSERT INTO `oc_zone` VALUES(642, 41, 'Haute-Kotto', 'HKO', 1);
INSERT INTO `oc_zone` VALUES(643, 41, 'Haut-Mbomou', 'HMB', 1);
INSERT INTO `oc_zone` VALUES(644, 41, 'Kemo', 'KEM', 1);
INSERT INTO `oc_zone` VALUES(645, 41, 'Lobaye', 'LOB', 1);
INSERT INTO `oc_zone` VALUES(646, 41, 'Mambere-KadeÔ', 'MKD', 1);
INSERT INTO `oc_zone` VALUES(647, 41, 'Mbomou', 'MBO', 1);
INSERT INTO `oc_zone` VALUES(648, 41, 'Nana-Mambere', 'NMM', 1);
INSERT INTO `oc_zone` VALUES(649, 41, 'Ombella-M''Poko', 'OMP', 1);
INSERT INTO `oc_zone` VALUES(650, 41, 'Ouaka', 'OUK', 1);
INSERT INTO `oc_zone` VALUES(651, 41, 'Ouham', 'OUH', 1);
INSERT INTO `oc_zone` VALUES(652, 41, 'Ouham-Pende', 'OPE', 1);
INSERT INTO `oc_zone` VALUES(653, 41, 'Vakaga', 'VAK', 1);
INSERT INTO `oc_zone` VALUES(654, 41, 'Nana-Grebizi', 'NGR', 1);
INSERT INTO `oc_zone` VALUES(655, 41, 'Sangha-Mbaere', 'SMB', 1);
INSERT INTO `oc_zone` VALUES(656, 41, 'Bangui', 'BAN', 1);
INSERT INTO `oc_zone` VALUES(657, 42, 'Batha', 'BA', 1);
INSERT INTO `oc_zone` VALUES(658, 42, 'Biltine', 'BI', 1);
INSERT INTO `oc_zone` VALUES(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1);
INSERT INTO `oc_zone` VALUES(660, 42, 'Chari-Baguirmi', 'CB', 1);
INSERT INTO `oc_zone` VALUES(661, 42, 'Guera', 'GU', 1);
INSERT INTO `oc_zone` VALUES(662, 42, 'Kanem', 'KA', 1);
INSERT INTO `oc_zone` VALUES(663, 42, 'Lac', 'LA', 1);
INSERT INTO `oc_zone` VALUES(664, 42, 'Logone Occidental', 'LC', 1);
INSERT INTO `oc_zone` VALUES(665, 42, 'Logone Oriental', 'LR', 1);
INSERT INTO `oc_zone` VALUES(666, 42, 'Mayo-Kebbi', 'MK', 1);
INSERT INTO `oc_zone` VALUES(667, 42, 'Moyen-Chari', 'MC', 1);
INSERT INTO `oc_zone` VALUES(668, 42, 'Ouaddai', 'OU', 1);
INSERT INTO `oc_zone` VALUES(669, 42, 'Salamat', 'SA', 1);
INSERT INTO `oc_zone` VALUES(670, 42, 'Tandjile', 'TA', 1);
INSERT INTO `oc_zone` VALUES(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1);
INSERT INTO `oc_zone` VALUES(672, 43, 'Antofagasta', 'AN', 1);
INSERT INTO `oc_zone` VALUES(673, 43, 'Araucania', 'AR', 1);
INSERT INTO `oc_zone` VALUES(674, 43, 'Atacama', 'AT', 1);
INSERT INTO `oc_zone` VALUES(675, 43, 'Bio-Bio', 'BI', 1);
INSERT INTO `oc_zone` VALUES(676, 43, 'Coquimbo', 'CO', 1);
INSERT INTO `oc_zone` VALUES(677, 43, 'Libertador General Bernardo O''Hi', 'LI', 1);
INSERT INTO `oc_zone` VALUES(678, 43, 'Los Lagos', 'LL', 1);
INSERT INTO `oc_zone` VALUES(679, 43, 'Magallanes y de la Antartica Chi', 'MA', 1);
INSERT INTO `oc_zone` VALUES(680, 43, 'Maule', 'ML', 1);
INSERT INTO `oc_zone` VALUES(681, 43, 'Region Metropolitana', 'RM', 1);
INSERT INTO `oc_zone` VALUES(682, 43, 'Tarapaca', 'TA', 1);
INSERT INTO `oc_zone` VALUES(683, 43, 'Valparaiso', 'VS', 1);
INSERT INTO `oc_zone` VALUES(684, 44, 'Anhui', 'AN', 1);
INSERT INTO `oc_zone` VALUES(685, 44, 'Beijing', 'BE', 1);
INSERT INTO `oc_zone` VALUES(686, 44, 'Chongqing', 'CH', 1);
INSERT INTO `oc_zone` VALUES(687, 44, 'Fujian', 'FU', 1);
INSERT INTO `oc_zone` VALUES(688, 44, 'Gansu', 'GA', 1);
INSERT INTO `oc_zone` VALUES(689, 44, 'Guangdong', 'GU', 1);
INSERT INTO `oc_zone` VALUES(690, 44, 'Guangxi', 'GX', 1);
INSERT INTO `oc_zone` VALUES(691, 44, 'Guizhou', 'GZ', 1);
INSERT INTO `oc_zone` VALUES(692, 44, 'Hainan', 'HA', 1);
INSERT INTO `oc_zone` VALUES(693, 44, 'Hebei', 'HB', 1);
INSERT INTO `oc_zone` VALUES(694, 44, 'Heilongjiang', 'HL', 1);
INSERT INTO `oc_zone` VALUES(695, 44, 'Henan', 'HE', 1);
INSERT INTO `oc_zone` VALUES(696, 44, 'Hong Kong', 'HK', 1);
INSERT INTO `oc_zone` VALUES(697, 44, 'Hubei', 'HU', 1);
INSERT INTO `oc_zone` VALUES(698, 44, 'Hunan', 'HN', 1);
INSERT INTO `oc_zone` VALUES(699, 44, 'Inner Mongolia', 'IM', 1);
INSERT INTO `oc_zone` VALUES(700, 44, 'Jiangsu', 'JI', 1);
INSERT INTO `oc_zone` VALUES(701, 44, 'Jiangxi', 'JX', 1);
INSERT INTO `oc_zone` VALUES(702, 44, 'Jilin', 'JL', 1);
INSERT INTO `oc_zone` VALUES(703, 44, 'Liaoning', 'LI', 1);
INSERT INTO `oc_zone` VALUES(704, 44, 'Macau', 'MA', 1);
INSERT INTO `oc_zone` VALUES(705, 44, 'Ningxia', 'NI', 1);
INSERT INTO `oc_zone` VALUES(706, 44, 'Shaanxi', 'SH', 1);
INSERT INTO `oc_zone` VALUES(707, 44, 'Shandong', 'SA', 1);
INSERT INTO `oc_zone` VALUES(708, 44, 'Shanghai', 'SG', 1);
INSERT INTO `oc_zone` VALUES(709, 44, 'Shanxi', 'SX', 1);
INSERT INTO `oc_zone` VALUES(710, 44, 'Sichuan', 'SI', 1);
INSERT INTO `oc_zone` VALUES(711, 44, 'Tianjin', 'TI', 1);
INSERT INTO `oc_zone` VALUES(712, 44, 'Xinjiang', 'XI', 1);
INSERT INTO `oc_zone` VALUES(713, 44, 'Yunnan', 'YU', 1);
INSERT INTO `oc_zone` VALUES(714, 44, 'Zhejiang', 'ZH', 1);
INSERT INTO `oc_zone` VALUES(715, 46, 'Direction Island', 'D', 1);
INSERT INTO `oc_zone` VALUES(716, 46, 'Home Island', 'H', 1);
INSERT INTO `oc_zone` VALUES(717, 46, 'Horsburgh Island', 'O', 1);
INSERT INTO `oc_zone` VALUES(718, 46, 'South Island', 'S', 1);
INSERT INTO `oc_zone` VALUES(719, 46, 'West Island', 'W', 1);
INSERT INTO `oc_zone` VALUES(720, 47, 'Amazonas', 'AMZ', 1);
INSERT INTO `oc_zone` VALUES(721, 47, 'Antioquia', 'ANT', 1);
INSERT INTO `oc_zone` VALUES(722, 47, 'Arauca', 'ARA', 1);
INSERT INTO `oc_zone` VALUES(723, 47, 'Atlantico', 'ATL', 1);
INSERT INTO `oc_zone` VALUES(724, 47, 'Bogota D.C.', 'BDC', 1);
INSERT INTO `oc_zone` VALUES(725, 47, 'Bolivar', 'BOL', 1);
INSERT INTO `oc_zone` VALUES(726, 47, 'Boyaca', 'BOY', 1);
INSERT INTO `oc_zone` VALUES(727, 47, 'Caldas', 'CAL', 1);
INSERT INTO `oc_zone` VALUES(728, 47, 'Caqueta', 'CAQ', 1);
INSERT INTO `oc_zone` VALUES(729, 47, 'Casanare', 'CAS', 1);
INSERT INTO `oc_zone` VALUES(730, 47, 'Cauca', 'CAU', 1);
INSERT INTO `oc_zone` VALUES(731, 47, 'Cesar', 'CES', 1);
INSERT INTO `oc_zone` VALUES(732, 47, 'Choco', 'CHO', 1);
INSERT INTO `oc_zone` VALUES(733, 47, 'Cordoba', 'COR', 1);
INSERT INTO `oc_zone` VALUES(734, 47, 'Cundinamarca', 'CAM', 1);
INSERT INTO `oc_zone` VALUES(735, 47, 'Guainia', 'GNA', 1);
INSERT INTO `oc_zone` VALUES(736, 47, 'Guajira', 'GJR', 1);
INSERT INTO `oc_zone` VALUES(737, 47, 'Guaviare', 'GVR', 1);
INSERT INTO `oc_zone` VALUES(738, 47, 'Huila', 'HUI', 1);
INSERT INTO `oc_zone` VALUES(739, 47, 'Magdalena', 'MAG', 1);
INSERT INTO `oc_zone` VALUES(740, 47, 'Meta', 'MET', 1);
INSERT INTO `oc_zone` VALUES(741, 47, 'Narino', 'NAR', 1);
INSERT INTO `oc_zone` VALUES(742, 47, 'Norte de Santander', 'NDS', 1);
INSERT INTO `oc_zone` VALUES(743, 47, 'Putumayo', 'PUT', 1);
INSERT INTO `oc_zone` VALUES(744, 47, 'Quindio', 'QUI', 1);
INSERT INTO `oc_zone` VALUES(745, 47, 'Risaralda', 'RIS', 1);
INSERT INTO `oc_zone` VALUES(746, 47, 'San Andres y Providencia', 'SAP', 1);
INSERT INTO `oc_zone` VALUES(747, 47, 'Santander', 'SAN', 1);
INSERT INTO `oc_zone` VALUES(748, 47, 'Sucre', 'SUC', 1);
INSERT INTO `oc_zone` VALUES(749, 47, 'Tolima', 'TOL', 1);
INSERT INTO `oc_zone` VALUES(750, 47, 'Valle del Cauca', 'VDC', 1);
INSERT INTO `oc_zone` VALUES(751, 47, 'Vaupes', 'VAU', 1);
INSERT INTO `oc_zone` VALUES(752, 47, 'Vichada', 'VIC', 1);
INSERT INTO `oc_zone` VALUES(753, 48, 'Grande Comore', 'G', 1);
INSERT INTO `oc_zone` VALUES(754, 48, 'Anjouan', 'A', 1);
INSERT INTO `oc_zone` VALUES(755, 48, 'Moheli', 'M', 1);
INSERT INTO `oc_zone` VALUES(756, 49, 'Bouenza', 'BO', 1);
INSERT INTO `oc_zone` VALUES(757, 49, 'Brazzaville', 'BR', 1);
INSERT INTO `oc_zone` VALUES(758, 49, 'Cuvette', 'CU', 1);
INSERT INTO `oc_zone` VALUES(759, 49, 'Cuvette-Ouest', 'CO', 1);
INSERT INTO `oc_zone` VALUES(760, 49, 'Kouilou', 'KO', 1);
INSERT INTO `oc_zone` VALUES(761, 49, 'Lekoumou', 'LE', 1);
INSERT INTO `oc_zone` VALUES(762, 49, 'Likouala', 'LI', 1);
INSERT INTO `oc_zone` VALUES(763, 49, 'Niari', 'NI', 1);
INSERT INTO `oc_zone` VALUES(764, 49, 'Plateaux', 'PL', 1);
INSERT INTO `oc_zone` VALUES(765, 49, 'Pool', 'PO', 1);
INSERT INTO `oc_zone` VALUES(766, 49, 'Sangha', 'SA', 1);
INSERT INTO `oc_zone` VALUES(767, 50, 'Pukapuka', 'PU', 1);
INSERT INTO `oc_zone` VALUES(768, 50, 'Rakahanga', 'RK', 1);
INSERT INTO `oc_zone` VALUES(769, 50, 'Manihiki', 'MK', 1);
INSERT INTO `oc_zone` VALUES(770, 50, 'Penrhyn', 'PE', 1);
INSERT INTO `oc_zone` VALUES(771, 50, 'Nassau Island', 'NI', 1);
INSERT INTO `oc_zone` VALUES(772, 50, 'Surwarrow', 'SU', 1);
INSERT INTO `oc_zone` VALUES(773, 50, 'Palmerston', 'PA', 1);
INSERT INTO `oc_zone` VALUES(774, 50, 'Aitutaki', 'AI', 1);
INSERT INTO `oc_zone` VALUES(775, 50, 'Manuae', 'MA', 1);
INSERT INTO `oc_zone` VALUES(776, 50, 'Takutea', 'TA', 1);
INSERT INTO `oc_zone` VALUES(777, 50, 'Mitiaro', 'MT', 1);
INSERT INTO `oc_zone` VALUES(778, 50, 'Atiu', 'AT', 1);
INSERT INTO `oc_zone` VALUES(779, 50, 'Mauke', 'MU', 1);
INSERT INTO `oc_zone` VALUES(780, 50, 'Rarotonga', 'RR', 1);
INSERT INTO `oc_zone` VALUES(781, 50, 'Mangaia', 'MG', 1);
INSERT INTO `oc_zone` VALUES(782, 51, 'Alajuela', 'AL', 1);
INSERT INTO `oc_zone` VALUES(783, 51, 'Cartago', 'CA', 1);
INSERT INTO `oc_zone` VALUES(784, 51, 'Guanacaste', 'GU', 1);
INSERT INTO `oc_zone` VALUES(785, 51, 'Heredia', 'HE', 1);
INSERT INTO `oc_zone` VALUES(786, 51, 'Limon', 'LI', 1);
INSERT INTO `oc_zone` VALUES(787, 51, 'Puntarenas', 'PU', 1);
INSERT INTO `oc_zone` VALUES(788, 51, 'San Jose', 'SJ', 1);
INSERT INTO `oc_zone` VALUES(789, 52, 'Abengourou', 'ABE', 1);
INSERT INTO `oc_zone` VALUES(790, 52, 'Abidjan', 'ABI', 1);
INSERT INTO `oc_zone` VALUES(791, 52, 'Aboisso', 'ABO', 1);
INSERT INTO `oc_zone` VALUES(792, 52, 'Adiake', 'ADI', 1);
INSERT INTO `oc_zone` VALUES(793, 52, 'Adzope', 'ADZ', 1);
INSERT INTO `oc_zone` VALUES(794, 52, 'Agboville', 'AGB', 1);
INSERT INTO `oc_zone` VALUES(795, 52, 'Agnibilekrou', 'AGN', 1);
INSERT INTO `oc_zone` VALUES(796, 52, 'Alepe', 'ALE', 1);
INSERT INTO `oc_zone` VALUES(797, 52, 'Bocanda', 'BOC', 1);
INSERT INTO `oc_zone` VALUES(798, 52, 'Bangolo', 'BAN', 1);
INSERT INTO `oc_zone` VALUES(799, 52, 'Beoumi', 'BEO', 1);
INSERT INTO `oc_zone` VALUES(800, 52, 'Biankouma', 'BIA', 1);
INSERT INTO `oc_zone` VALUES(801, 52, 'Bondoukou', 'BDK', 1);
INSERT INTO `oc_zone` VALUES(802, 52, 'Bongouanou', 'BGN', 1);
INSERT INTO `oc_zone` VALUES(803, 52, 'Bouafle', 'BFL', 1);
INSERT INTO `oc_zone` VALUES(804, 52, 'Bouake', 'BKE', 1);
INSERT INTO `oc_zone` VALUES(805, 52, 'Bouna', 'BNA', 1);
INSERT INTO `oc_zone` VALUES(806, 52, 'Boundiali', 'BDL', 1);
INSERT INTO `oc_zone` VALUES(807, 52, 'Dabakala', 'DKL', 1);
INSERT INTO `oc_zone` VALUES(808, 52, 'Dabou', 'DBU', 1);
INSERT INTO `oc_zone` VALUES(809, 52, 'Daloa', 'DAL', 1);
INSERT INTO `oc_zone` VALUES(810, 52, 'Danane', 'DAN', 1);
INSERT INTO `oc_zone` VALUES(811, 52, 'Daoukro', 'DAO', 1);
INSERT INTO `oc_zone` VALUES(812, 52, 'Dimbokro', 'DIM', 1);
INSERT INTO `oc_zone` VALUES(813, 52, 'Divo', 'DIV', 1);
INSERT INTO `oc_zone` VALUES(814, 52, 'Duekoue', 'DUE', 1);
INSERT INTO `oc_zone` VALUES(815, 52, 'Ferkessedougou', 'FER', 1);
INSERT INTO `oc_zone` VALUES(816, 52, 'Gagnoa', 'GAG', 1);
INSERT INTO `oc_zone` VALUES(817, 52, 'Grand-Bassam', 'GBA', 1);
INSERT INTO `oc_zone` VALUES(818, 52, 'Grand-Lahou', 'GLA', 1);
INSERT INTO `oc_zone` VALUES(819, 52, 'Guiglo', 'GUI', 1);
INSERT INTO `oc_zone` VALUES(820, 52, 'Issia', 'ISS', 1);
INSERT INTO `oc_zone` VALUES(821, 52, 'Jacqueville', 'JAC', 1);
INSERT INTO `oc_zone` VALUES(822, 52, 'Katiola', 'KAT', 1);
INSERT INTO `oc_zone` VALUES(823, 52, 'Korhogo', 'KOR', 1);
INSERT INTO `oc_zone` VALUES(824, 52, 'Lakota', 'LAK', 1);
INSERT INTO `oc_zone` VALUES(825, 52, 'Man', 'MAN', 1);
INSERT INTO `oc_zone` VALUES(826, 52, 'Mankono', 'MKN', 1);
INSERT INTO `oc_zone` VALUES(827, 52, 'Mbahiakro', 'MBA', 1);
INSERT INTO `oc_zone` VALUES(828, 52, 'Odienne', 'ODI', 1);
INSERT INTO `oc_zone` VALUES(829, 52, 'Oume', 'OUM', 1);
INSERT INTO `oc_zone` VALUES(830, 52, 'Sakassou', 'SAK', 1);
INSERT INTO `oc_zone` VALUES(831, 52, 'San-Pedro', 'SPE', 1);
INSERT INTO `oc_zone` VALUES(832, 52, 'Sassandra', 'SAS', 1);
INSERT INTO `oc_zone` VALUES(833, 52, 'Seguela', 'SEG', 1);
INSERT INTO `oc_zone` VALUES(834, 52, 'Sinfra', 'SIN', 1);
INSERT INTO `oc_zone` VALUES(835, 52, 'Soubre', 'SOU', 1);
INSERT INTO `oc_zone` VALUES(836, 52, 'Tabou', 'TAB', 1);
INSERT INTO `oc_zone` VALUES(837, 52, 'Tanda', 'TAN', 1);
INSERT INTO `oc_zone` VALUES(838, 52, 'Tiebissou', 'TIE', 1);
INSERT INTO `oc_zone` VALUES(839, 52, 'Tingrela', 'TIN', 1);
INSERT INTO `oc_zone` VALUES(840, 52, 'Tiassale', 'TIA', 1);
INSERT INTO `oc_zone` VALUES(841, 52, 'Touba', 'TBA', 1);
INSERT INTO `oc_zone` VALUES(842, 52, 'Toulepleu', 'TLP', 1);
INSERT INTO `oc_zone` VALUES(843, 52, 'Toumodi', 'TMD', 1);
INSERT INTO `oc_zone` VALUES(844, 52, 'Vavoua', 'VAV', 1);
INSERT INTO `oc_zone` VALUES(845, 52, 'Yamoussoukro', 'YAM', 1);
INSERT INTO `oc_zone` VALUES(846, 52, 'Zuenoula', 'ZUE', 1);
INSERT INTO `oc_zone` VALUES(847, 53, 'Bjelovar-Bilogora', 'BB', 1);
INSERT INTO `oc_zone` VALUES(848, 53, 'City of Zagreb', 'CZ', 1);
INSERT INTO `oc_zone` VALUES(849, 53, 'Dubrovnik-Neretva', 'DN', 1);
INSERT INTO `oc_zone` VALUES(850, 53, 'Istra', 'IS', 1);
INSERT INTO `oc_zone` VALUES(851, 53, 'Karlovac', 'KA', 1);
INSERT INTO `oc_zone` VALUES(852, 53, 'Koprivnica-Krizevci', 'KK', 1);
INSERT INTO `oc_zone` VALUES(853, 53, 'Krapina-Zagorje', 'KZ', 1);
INSERT INTO `oc_zone` VALUES(854, 53, 'Lika-Senj', 'LS', 1);
INSERT INTO `oc_zone` VALUES(855, 53, 'Medimurje', 'ME', 1);
INSERT INTO `oc_zone` VALUES(856, 53, 'Osijek-Baranja', 'OB', 1);
INSERT INTO `oc_zone` VALUES(857, 53, 'Pozega-Slavonia', 'PS', 1);
INSERT INTO `oc_zone` VALUES(858, 53, 'Primorje-Gorski Kotar', 'PG', 1);
INSERT INTO `oc_zone` VALUES(859, 53, 'Sibenik', 'SI', 1);
INSERT INTO `oc_zone` VALUES(860, 53, 'Sisak-Moslavina', 'SM', 1);
INSERT INTO `oc_zone` VALUES(861, 53, 'Slavonski Brod-Posavina', 'SB', 1);
INSERT INTO `oc_zone` VALUES(862, 53, 'Split-Dalmatia', 'SD', 1);
INSERT INTO `oc_zone` VALUES(863, 53, 'Varazdin', 'VA', 1);
INSERT INTO `oc_zone` VALUES(864, 53, 'Virovitica-Podravina', 'VP', 1);
INSERT INTO `oc_zone` VALUES(865, 53, 'Vukovar-Srijem', 'VS', 1);
INSERT INTO `oc_zone` VALUES(866, 53, 'Zadar-Knin', 'ZK', 1);
INSERT INTO `oc_zone` VALUES(867, 53, 'Zagreb', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(868, 54, 'Camaguey', 'CA', 1);
INSERT INTO `oc_zone` VALUES(869, 54, 'Ciego de Avila', 'CD', 1);
INSERT INTO `oc_zone` VALUES(870, 54, 'Cienfuegos', 'CI', 1);
INSERT INTO `oc_zone` VALUES(871, 54, 'Ciudad de La Habana', 'CH', 1);
INSERT INTO `oc_zone` VALUES(872, 54, 'Granma', 'GR', 1);
INSERT INTO `oc_zone` VALUES(873, 54, 'Guantanamo', 'GU', 1);
INSERT INTO `oc_zone` VALUES(874, 54, 'Holguin', 'HO', 1);
INSERT INTO `oc_zone` VALUES(875, 54, 'Isla de la Juventud', 'IJ', 1);
INSERT INTO `oc_zone` VALUES(876, 54, 'La Habana', 'LH', 1);
INSERT INTO `oc_zone` VALUES(877, 54, 'Las Tunas', 'LT', 1);
INSERT INTO `oc_zone` VALUES(878, 54, 'Matanzas', 'MA', 1);
INSERT INTO `oc_zone` VALUES(879, 54, 'Pinar del Rio', 'PR', 1);
INSERT INTO `oc_zone` VALUES(880, 54, 'Sancti Spiritus', 'SS', 1);
INSERT INTO `oc_zone` VALUES(881, 54, 'Santiago de Cuba', 'SC', 1);
INSERT INTO `oc_zone` VALUES(882, 54, 'Villa Clara', 'VC', 1);
INSERT INTO `oc_zone` VALUES(883, 55, 'Famagusta', 'F', 1);
INSERT INTO `oc_zone` VALUES(884, 55, 'Kyrenia', 'K', 1);
INSERT INTO `oc_zone` VALUES(885, 55, 'Larnaca', 'A', 1);
INSERT INTO `oc_zone` VALUES(886, 55, 'Limassol', 'I', 1);
INSERT INTO `oc_zone` VALUES(887, 55, 'Nicosia', 'N', 1);
INSERT INTO `oc_zone` VALUES(888, 55, 'Paphos', 'P', 1);
INSERT INTO `oc_zone` VALUES(889, 56, 'Ústecký', 'U', 1);
INSERT INTO `oc_zone` VALUES(890, 56, 'Jihoceský', 'C', 1);
INSERT INTO `oc_zone` VALUES(891, 56, 'Jihomoravský', 'B', 1);
INSERT INTO `oc_zone` VALUES(892, 56, 'Karlovarský', 'K', 1);
INSERT INTO `oc_zone` VALUES(893, 56, 'Královehradecký', 'H', 1);
INSERT INTO `oc_zone` VALUES(894, 56, 'Liberecký', 'L', 1);
INSERT INTO `oc_zone` VALUES(895, 56, 'Moravskoslezský', 'T', 1);
INSERT INTO `oc_zone` VALUES(896, 56, 'Olomoucký', 'M', 1);
INSERT INTO `oc_zone` VALUES(897, 56, 'Pardubický', 'E', 1);
INSERT INTO `oc_zone` VALUES(898, 56, 'Plzenský', 'P', 1);
INSERT INTO `oc_zone` VALUES(899, 56, 'Praha', 'A', 1);
INSERT INTO `oc_zone` VALUES(900, 56, 'Stredoceský', 'S', 1);
INSERT INTO `oc_zone` VALUES(901, 56, 'Vysocina', 'J', 1);
INSERT INTO `oc_zone` VALUES(902, 56, 'Zlínský', 'Z', 1);
INSERT INTO `oc_zone` VALUES(903, 57, 'Arhus', 'AR', 1);
INSERT INTO `oc_zone` VALUES(904, 57, 'Bornholm', 'BH', 1);
INSERT INTO `oc_zone` VALUES(905, 57, 'Copenhagen', 'CO', 1);
INSERT INTO `oc_zone` VALUES(906, 57, 'Faroe Islands', 'FO', 1);
INSERT INTO `oc_zone` VALUES(907, 57, 'Frederiksborg', 'FR', 1);
INSERT INTO `oc_zone` VALUES(908, 57, 'Fyn', 'FY', 1);
INSERT INTO `oc_zone` VALUES(909, 57, 'Kobenhavn', 'KO', 1);
INSERT INTO `oc_zone` VALUES(910, 57, 'Nordjylland', 'NO', 1);
INSERT INTO `oc_zone` VALUES(911, 57, 'Ribe', 'RI', 1);
INSERT INTO `oc_zone` VALUES(912, 57, 'Ringkobing', 'RK', 1);
INSERT INTO `oc_zone` VALUES(913, 57, 'Roskilde', 'RO', 1);
INSERT INTO `oc_zone` VALUES(914, 57, 'Sonderjylland', 'SO', 1);
INSERT INTO `oc_zone` VALUES(915, 57, 'Storstrom', 'ST', 1);
INSERT INTO `oc_zone` VALUES(916, 57, 'Vejle', 'VK', 1);
INSERT INTO `oc_zone` VALUES(917, 57, 'Vestj&aelig;lland', 'VJ', 1);
INSERT INTO `oc_zone` VALUES(918, 57, 'Viborg', 'VB', 1);
INSERT INTO `oc_zone` VALUES(919, 58, '''Ali Sabih', 'S', 1);
INSERT INTO `oc_zone` VALUES(920, 58, 'Dikhil', 'K', 1);
INSERT INTO `oc_zone` VALUES(921, 58, 'Djibouti', 'J', 1);
INSERT INTO `oc_zone` VALUES(922, 58, 'Obock', 'O', 1);
INSERT INTO `oc_zone` VALUES(923, 58, 'Tadjoura', 'T', 1);
INSERT INTO `oc_zone` VALUES(924, 59, 'Saint Andrew Parish', 'AND', 1);
INSERT INTO `oc_zone` VALUES(925, 59, 'Saint David Parish', 'DAV', 1);
INSERT INTO `oc_zone` VALUES(926, 59, 'Saint George Parish', 'GEO', 1);
INSERT INTO `oc_zone` VALUES(927, 59, 'Saint John Parish', 'JOH', 1);
INSERT INTO `oc_zone` VALUES(928, 59, 'Saint Joseph Parish', 'JOS', 1);
INSERT INTO `oc_zone` VALUES(929, 59, 'Saint Luke Parish', 'LUK', 1);
INSERT INTO `oc_zone` VALUES(930, 59, 'Saint Mark Parish', 'MAR', 1);
INSERT INTO `oc_zone` VALUES(931, 59, 'Saint Patrick Parish', 'PAT', 1);
INSERT INTO `oc_zone` VALUES(932, 59, 'Saint Paul Parish', 'PAU', 1);
INSERT INTO `oc_zone` VALUES(933, 59, 'Saint Peter Parish', 'PET', 1);
INSERT INTO `oc_zone` VALUES(934, 60, 'Distrito Nacional', 'DN', 1);
INSERT INTO `oc_zone` VALUES(935, 60, 'Azua', 'AZ', 1);
INSERT INTO `oc_zone` VALUES(936, 60, 'Baoruco', 'BC', 1);
INSERT INTO `oc_zone` VALUES(937, 60, 'Barahona', 'BH', 1);
INSERT INTO `oc_zone` VALUES(938, 60, 'Dajabon', 'DJ', 1);
INSERT INTO `oc_zone` VALUES(939, 60, 'Duarte', 'DU', 1);
INSERT INTO `oc_zone` VALUES(940, 60, 'Elias Pina', 'EL', 1);
INSERT INTO `oc_zone` VALUES(941, 60, 'El Seybo', 'SY', 1);
INSERT INTO `oc_zone` VALUES(942, 60, 'Espaillat', 'ET', 1);
INSERT INTO `oc_zone` VALUES(943, 60, 'Hato Mayor', 'HM', 1);
INSERT INTO `oc_zone` VALUES(944, 60, 'Independencia', 'IN', 1);
INSERT INTO `oc_zone` VALUES(945, 60, 'La Altagracia', 'AL', 1);
INSERT INTO `oc_zone` VALUES(946, 60, 'La Romana', 'RO', 1);
INSERT INTO `oc_zone` VALUES(947, 60, 'La Vega', 'VE', 1);
INSERT INTO `oc_zone` VALUES(948, 60, 'Maria Trinidad Sanchez', 'MT', 1);
INSERT INTO `oc_zone` VALUES(949, 60, 'Monsenor Nouel', 'MN', 1);
INSERT INTO `oc_zone` VALUES(950, 60, 'Monte Cristi', 'MC', 1);
INSERT INTO `oc_zone` VALUES(951, 60, 'Monte Plata', 'MP', 1);
INSERT INTO `oc_zone` VALUES(952, 60, 'Pedernales', 'PD', 1);
INSERT INTO `oc_zone` VALUES(953, 60, 'Peravia (Bani)', 'PR', 1);
INSERT INTO `oc_zone` VALUES(954, 60, 'Puerto Plata', 'PP', 1);
INSERT INTO `oc_zone` VALUES(955, 60, 'Salcedo', 'SL', 1);
INSERT INTO `oc_zone` VALUES(956, 60, 'Samana', 'SM', 1);
INSERT INTO `oc_zone` VALUES(957, 60, 'Sanchez Ramirez', 'SH', 1);
INSERT INTO `oc_zone` VALUES(958, 60, 'San Cristobal', 'SC', 1);
INSERT INTO `oc_zone` VALUES(959, 60, 'San Jose de Ocoa', 'JO', 1);
INSERT INTO `oc_zone` VALUES(960, 60, 'San Juan', 'SJ', 1);
INSERT INTO `oc_zone` VALUES(961, 60, 'San Pedro de Macoris', 'PM', 1);
INSERT INTO `oc_zone` VALUES(962, 60, 'Santiago', 'SA', 1);
INSERT INTO `oc_zone` VALUES(963, 60, 'Santiago Rodriguez', 'ST', 1);
INSERT INTO `oc_zone` VALUES(964, 60, 'Santo Domingo', 'SD', 1);
INSERT INTO `oc_zone` VALUES(965, 60, 'Valverde', 'VA', 1);
INSERT INTO `oc_zone` VALUES(966, 61, 'Aileu', 'AL', 1);
INSERT INTO `oc_zone` VALUES(967, 61, 'Ainaro', 'AN', 1);
INSERT INTO `oc_zone` VALUES(968, 61, 'Baucau', 'BA', 1);
INSERT INTO `oc_zone` VALUES(969, 61, 'Bobonaro', 'BO', 1);
INSERT INTO `oc_zone` VALUES(970, 61, 'Cova Lima', 'CO', 1);
INSERT INTO `oc_zone` VALUES(971, 61, 'Dili', 'DI', 1);
INSERT INTO `oc_zone` VALUES(972, 61, 'Ermera', 'ER', 1);
INSERT INTO `oc_zone` VALUES(973, 61, 'Lautem', 'LA', 1);
INSERT INTO `oc_zone` VALUES(974, 61, 'Liquica', 'LI', 1);
INSERT INTO `oc_zone` VALUES(975, 61, 'Manatuto', 'MT', 1);
INSERT INTO `oc_zone` VALUES(976, 61, 'Manufahi', 'MF', 1);
INSERT INTO `oc_zone` VALUES(977, 61, 'Oecussi', 'OE', 1);
INSERT INTO `oc_zone` VALUES(978, 61, 'Viqueque', 'VI', 1);
INSERT INTO `oc_zone` VALUES(979, 62, 'Azuay', 'AZU', 1);
INSERT INTO `oc_zone` VALUES(980, 62, 'Bolivar', 'BOL', 1);
INSERT INTO `oc_zone` VALUES(981, 62, 'Ca&ntilde;ar', 'CAN', 1);
INSERT INTO `oc_zone` VALUES(982, 62, 'Carchi', 'CAR', 1);
INSERT INTO `oc_zone` VALUES(983, 62, 'Chimborazo', 'CHI', 1);
INSERT INTO `oc_zone` VALUES(984, 62, 'Cotopaxi', 'COT', 1);
INSERT INTO `oc_zone` VALUES(985, 62, 'El Oro', 'EOR', 1);
INSERT INTO `oc_zone` VALUES(986, 62, 'Esmeraldas', 'ESM', 1);
INSERT INTO `oc_zone` VALUES(987, 62, 'Gal&aacute;pagos', 'GPS', 1);
INSERT INTO `oc_zone` VALUES(988, 62, 'Guayas', 'GUA', 1);
INSERT INTO `oc_zone` VALUES(989, 62, 'Imbabura', 'IMB', 1);
INSERT INTO `oc_zone` VALUES(990, 62, 'Loja', 'LOJ', 1);
INSERT INTO `oc_zone` VALUES(991, 62, 'Los Rios', 'LRO', 1);
INSERT INTO `oc_zone` VALUES(992, 62, 'Manab&iacute;', 'MAN', 1);
INSERT INTO `oc_zone` VALUES(993, 62, 'Morona Santiago', 'MSA', 1);
INSERT INTO `oc_zone` VALUES(994, 62, 'Napo', 'NAP', 1);
INSERT INTO `oc_zone` VALUES(995, 62, 'Orellana', 'ORE', 1);
INSERT INTO `oc_zone` VALUES(996, 62, 'Pastaza', 'PAS', 1);
INSERT INTO `oc_zone` VALUES(997, 62, 'Pichincha', 'PIC', 1);
INSERT INTO `oc_zone` VALUES(998, 62, 'Sucumb&iacute;os', 'SUC', 1);
INSERT INTO `oc_zone` VALUES(999, 62, 'Tungurahua', 'TUN', 1);
INSERT INTO `oc_zone` VALUES(1000, 62, 'Zamora Chinchipe', 'ZCH', 1);
INSERT INTO `oc_zone` VALUES(1001, 63, 'Ad Daqahliyah', 'DHY', 1);
INSERT INTO `oc_zone` VALUES(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1);
INSERT INTO `oc_zone` VALUES(1003, 63, 'Al Buhayrah', 'BHY', 1);
INSERT INTO `oc_zone` VALUES(1004, 63, 'Al Fayyum', 'FYM', 1);
INSERT INTO `oc_zone` VALUES(1005, 63, 'Al Gharbiyah', 'GBY', 1);
INSERT INTO `oc_zone` VALUES(1006, 63, 'Al Iskandariyah', 'IDR', 1);
INSERT INTO `oc_zone` VALUES(1007, 63, 'Al Isma''iliyah', 'IML', 1);
INSERT INTO `oc_zone` VALUES(1008, 63, 'Al Jizah', 'JZH', 1);
INSERT INTO `oc_zone` VALUES(1009, 63, 'Al Minufiyah', 'MFY', 1);
INSERT INTO `oc_zone` VALUES(1010, 63, 'Al Minya', 'MNY', 1);
INSERT INTO `oc_zone` VALUES(1011, 63, 'Al Qahirah', 'QHR', 1);
INSERT INTO `oc_zone` VALUES(1012, 63, 'Al Qalyubiyah', 'QLY', 1);
INSERT INTO `oc_zone` VALUES(1013, 63, 'Al Wadi al Jadid', 'WJD', 1);
INSERT INTO `oc_zone` VALUES(1014, 63, 'Ash Sharqiyah', 'SHQ', 1);
INSERT INTO `oc_zone` VALUES(1015, 63, 'As Suways', 'SWY', 1);
INSERT INTO `oc_zone` VALUES(1016, 63, 'Aswan', 'ASW', 1);
INSERT INTO `oc_zone` VALUES(1017, 63, 'Asyut', 'ASY', 1);
INSERT INTO `oc_zone` VALUES(1018, 63, 'Bani Suwayf', 'BSW', 1);
INSERT INTO `oc_zone` VALUES(1019, 63, 'Bur Sa''id', 'BSD', 1);
INSERT INTO `oc_zone` VALUES(1020, 63, 'Dumyat', 'DMY', 1);
INSERT INTO `oc_zone` VALUES(1021, 63, 'Janub Sina''', 'JNS', 1);
INSERT INTO `oc_zone` VALUES(1022, 63, 'Kafr ash Shaykh', 'KSH', 1);
INSERT INTO `oc_zone` VALUES(1023, 63, 'Matruh', 'MAT', 1);
INSERT INTO `oc_zone` VALUES(1024, 63, 'Qina', 'QIN', 1);
INSERT INTO `oc_zone` VALUES(1025, 63, 'Shamal Sina''', 'SHS', 1);
INSERT INTO `oc_zone` VALUES(1026, 63, 'Suhaj', 'SUH', 1);
INSERT INTO `oc_zone` VALUES(1027, 64, 'Ahuachapan', 'AH', 1);
INSERT INTO `oc_zone` VALUES(1028, 64, 'Cabanas', 'CA', 1);
INSERT INTO `oc_zone` VALUES(1029, 64, 'Chalatenango', 'CH', 1);
INSERT INTO `oc_zone` VALUES(1030, 64, 'Cuscatlan', 'CU', 1);
INSERT INTO `oc_zone` VALUES(1031, 64, 'La Libertad', 'LB', 1);
INSERT INTO `oc_zone` VALUES(1032, 64, 'La Paz', 'PZ', 1);
INSERT INTO `oc_zone` VALUES(1033, 64, 'La Union', 'UN', 1);
INSERT INTO `oc_zone` VALUES(1034, 64, 'Morazan', 'MO', 1);
INSERT INTO `oc_zone` VALUES(1035, 64, 'San Miguel', 'SM', 1);
INSERT INTO `oc_zone` VALUES(1036, 64, 'San Salvador', 'SS', 1);
INSERT INTO `oc_zone` VALUES(1037, 64, 'San Vicente', 'SV', 1);
INSERT INTO `oc_zone` VALUES(1038, 64, 'Santa Ana', 'SA', 1);
INSERT INTO `oc_zone` VALUES(1039, 64, 'Sonsonate', 'SO', 1);
INSERT INTO `oc_zone` VALUES(1040, 64, 'Usulutan', 'US', 1);
INSERT INTO `oc_zone` VALUES(1041, 65, 'Provincia Annobon', 'AN', 1);
INSERT INTO `oc_zone` VALUES(1042, 65, 'Provincia Bioko Norte', 'BN', 1);
INSERT INTO `oc_zone` VALUES(1043, 65, 'Provincia Bioko Sur', 'BS', 1);
INSERT INTO `oc_zone` VALUES(1044, 65, 'Provincia Centro Sur', 'CS', 1);
INSERT INTO `oc_zone` VALUES(1045, 65, 'Provincia Kie-Ntem', 'KN', 1);
INSERT INTO `oc_zone` VALUES(1046, 65, 'Provincia Litoral', 'LI', 1);
INSERT INTO `oc_zone` VALUES(1047, 65, 'Provincia Wele-Nzas', 'WN', 1);
INSERT INTO `oc_zone` VALUES(1048, 66, 'Central (Maekel)', 'MA', 1);
INSERT INTO `oc_zone` VALUES(1049, 66, 'Anseba (Keren)', 'KE', 1);
INSERT INTO `oc_zone` VALUES(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1);
INSERT INTO `oc_zone` VALUES(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1);
INSERT INTO `oc_zone` VALUES(1052, 66, 'Southern (Debub)', 'DE', 1);
INSERT INTO `oc_zone` VALUES(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1);
INSERT INTO `oc_zone` VALUES(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1);
INSERT INTO `oc_zone` VALUES(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1);
INSERT INTO `oc_zone` VALUES(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1);
INSERT INTO `oc_zone` VALUES(1057, 67, 'Jarvamaa (Paide)', 'JA', 1);
INSERT INTO `oc_zone` VALUES(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1);
INSERT INTO `oc_zone` VALUES(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1);
INSERT INTO `oc_zone` VALUES(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1);
INSERT INTO `oc_zone` VALUES(1061, 67, 'Parnumaa (Parnu)', 'PA', 1);
INSERT INTO `oc_zone` VALUES(1062, 67, 'Polvamaa (Polva)', 'PO', 1);
INSERT INTO `oc_zone` VALUES(1063, 67, 'Raplamaa (Rapla)', 'RA', 1);
INSERT INTO `oc_zone` VALUES(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1);
INSERT INTO `oc_zone` VALUES(1065, 67, 'Tartumaa (Tartu)', 'TA', 1);
INSERT INTO `oc_zone` VALUES(1066, 67, 'Valgamaa (Valga)', 'VA', 1);
INSERT INTO `oc_zone` VALUES(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1);
INSERT INTO `oc_zone` VALUES(1068, 67, 'Vorumaa (Voru)', 'VO', 1);
INSERT INTO `oc_zone` VALUES(1069, 68, 'Afar', 'AF', 1);
INSERT INTO `oc_zone` VALUES(1070, 68, 'Amhara', 'AH', 1);
INSERT INTO `oc_zone` VALUES(1071, 68, 'Benishangul-Gumaz', 'BG', 1);
INSERT INTO `oc_zone` VALUES(1072, 68, 'Gambela', 'GB', 1);
INSERT INTO `oc_zone` VALUES(1073, 68, 'Hariai', 'HR', 1);
INSERT INTO `oc_zone` VALUES(1074, 68, 'Oromia', 'OR', 1);
INSERT INTO `oc_zone` VALUES(1075, 68, 'Somali', 'SM', 1);
INSERT INTO `oc_zone` VALUES(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1);
INSERT INTO `oc_zone` VALUES(1077, 68, 'Tigray', 'TG', 1);
INSERT INTO `oc_zone` VALUES(1078, 68, 'Addis Ababa', 'AA', 1);
INSERT INTO `oc_zone` VALUES(1079, 68, 'Dire Dawa', 'DD', 1);
INSERT INTO `oc_zone` VALUES(1080, 71, 'Central Division', 'C', 1);
INSERT INTO `oc_zone` VALUES(1081, 71, 'Northern Division', 'N', 1);
INSERT INTO `oc_zone` VALUES(1082, 71, 'Eastern Division', 'E', 1);
INSERT INTO `oc_zone` VALUES(1083, 71, 'Western Division', 'W', 1);
INSERT INTO `oc_zone` VALUES(1084, 71, 'Rotuma', 'R', 1);
INSERT INTO `oc_zone` VALUES(1085, 72, 'Ahvenanmaan Laani', 'AL', 1);
INSERT INTO `oc_zone` VALUES(1086, 72, 'Etela-Suomen Laani', 'ES', 1);
INSERT INTO `oc_zone` VALUES(1087, 72, 'Ita-Suomen Laani', 'IS', 1);
INSERT INTO `oc_zone` VALUES(1088, 72, 'Lansi-Suomen Laani', 'LS', 1);
INSERT INTO `oc_zone` VALUES(1089, 72, 'Lapin Lanani', 'LA', 1);
INSERT INTO `oc_zone` VALUES(1090, 72, 'Oulun Laani', 'OU', 1);
INSERT INTO `oc_zone` VALUES(1114, 74, 'Ain', '01', 1);
INSERT INTO `oc_zone` VALUES(1115, 74, 'Aisne', '02', 1);
INSERT INTO `oc_zone` VALUES(1116, 74, 'Allier', '03', 1);
INSERT INTO `oc_zone` VALUES(1117, 74, 'Alpes de Haute Provence', '04', 1);
INSERT INTO `oc_zone` VALUES(1118, 74, 'Hautes-Alpes', '05', 1);
INSERT INTO `oc_zone` VALUES(1119, 74, 'Alpes Maritimes', '06', 1);
INSERT INTO `oc_zone` VALUES(1120, 74, 'Ard&egrave;che', '07', 1);
INSERT INTO `oc_zone` VALUES(1121, 74, 'Ardennes', '08', 1);
INSERT INTO `oc_zone` VALUES(1122, 74, 'Ari&egrave;ge', '09', 1);
INSERT INTO `oc_zone` VALUES(1123, 74, 'Aube', '10', 1);
INSERT INTO `oc_zone` VALUES(1124, 74, 'Aude', '11', 1);
INSERT INTO `oc_zone` VALUES(1125, 74, 'Aveyron', '12', 1);
INSERT INTO `oc_zone` VALUES(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1);
INSERT INTO `oc_zone` VALUES(1127, 74, 'Calvados', '14', 1);
INSERT INTO `oc_zone` VALUES(1128, 74, 'Cantal', '15', 1);
INSERT INTO `oc_zone` VALUES(1129, 74, 'Charente', '16', 1);
INSERT INTO `oc_zone` VALUES(1130, 74, 'Charente Maritime', '17', 1);
INSERT INTO `oc_zone` VALUES(1131, 74, 'Cher', '18', 1);
INSERT INTO `oc_zone` VALUES(1132, 74, 'Corr&egrave;ze', '19', 1);
INSERT INTO `oc_zone` VALUES(1133, 74, 'Corse du Sud', '2A', 1);
INSERT INTO `oc_zone` VALUES(1134, 74, 'Haute Corse', '2B', 1);
INSERT INTO `oc_zone` VALUES(1135, 74, 'C&ocirc;te d&#039;or', '21', 1);
INSERT INTO `oc_zone` VALUES(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1);
INSERT INTO `oc_zone` VALUES(1137, 74, 'Creuse', '23', 1);
INSERT INTO `oc_zone` VALUES(1138, 74, 'Dordogne', '24', 1);
INSERT INTO `oc_zone` VALUES(1139, 74, 'Doubs', '25', 1);
INSERT INTO `oc_zone` VALUES(1140, 74, 'Dr&ocirc;me', '26', 1);
INSERT INTO `oc_zone` VALUES(1141, 74, 'Eure', '27', 1);
INSERT INTO `oc_zone` VALUES(1142, 74, 'Eure et Loir', '28', 1);
INSERT INTO `oc_zone` VALUES(1143, 74, 'Finist&egrave;re', '29', 1);
INSERT INTO `oc_zone` VALUES(1144, 74, 'Gard', '30', 1);
INSERT INTO `oc_zone` VALUES(1145, 74, 'Haute Garonne', '31', 1);
INSERT INTO `oc_zone` VALUES(1146, 74, 'Gers', '32', 1);
INSERT INTO `oc_zone` VALUES(1147, 74, 'Gironde', '33', 1);
INSERT INTO `oc_zone` VALUES(1148, 74, 'H&eacute;rault', '34', 1);
INSERT INTO `oc_zone` VALUES(1149, 74, 'Ille et Vilaine', '35', 1);
INSERT INTO `oc_zone` VALUES(1150, 74, 'Indre', '36', 1);
INSERT INTO `oc_zone` VALUES(1151, 74, 'Indre et Loire', '37', 1);
INSERT INTO `oc_zone` VALUES(1152, 74, 'Is&eacute;re', '38', 1);
INSERT INTO `oc_zone` VALUES(1153, 74, 'Jura', '39', 1);
INSERT INTO `oc_zone` VALUES(1154, 74, 'Landes', '40', 1);
INSERT INTO `oc_zone` VALUES(1155, 74, 'Loir et Cher', '41', 1);
INSERT INTO `oc_zone` VALUES(1156, 74, 'Loire', '42', 1);
INSERT INTO `oc_zone` VALUES(1157, 74, 'Haute Loire', '43', 1);
INSERT INTO `oc_zone` VALUES(1158, 74, 'Loire Atlantique', '44', 1);
INSERT INTO `oc_zone` VALUES(1159, 74, 'Loiret', '45', 1);
INSERT INTO `oc_zone` VALUES(1160, 74, 'Lot', '46', 1);
INSERT INTO `oc_zone` VALUES(1161, 74, 'Lot et Garonne', '47', 1);
INSERT INTO `oc_zone` VALUES(1162, 74, 'Loz&egrave;re', '48', 1);
INSERT INTO `oc_zone` VALUES(1163, 74, 'Maine et Loire', '49', 1);
INSERT INTO `oc_zone` VALUES(1164, 74, 'Manche', '50', 1);
INSERT INTO `oc_zone` VALUES(1165, 74, 'Marne', '51', 1);
INSERT INTO `oc_zone` VALUES(1166, 74, 'Haute Marne', '52', 1);
INSERT INTO `oc_zone` VALUES(1167, 74, 'Mayenne', '53', 1);
INSERT INTO `oc_zone` VALUES(1168, 74, 'Meurthe et Moselle', '54', 1);
INSERT INTO `oc_zone` VALUES(1169, 74, 'Meuse', '55', 1);
INSERT INTO `oc_zone` VALUES(1170, 74, 'Morbihan', '56', 1);
INSERT INTO `oc_zone` VALUES(1171, 74, 'Moselle', '57', 1);
INSERT INTO `oc_zone` VALUES(1172, 74, 'Ni&egrave;vre', '58', 1);
INSERT INTO `oc_zone` VALUES(1173, 74, 'Nord', '59', 1);
INSERT INTO `oc_zone` VALUES(1174, 74, 'Oise', '60', 1);
INSERT INTO `oc_zone` VALUES(1175, 74, 'Orne', '61', 1);
INSERT INTO `oc_zone` VALUES(1176, 74, 'Pas de Calais', '62', 1);
INSERT INTO `oc_zone` VALUES(1177, 74, 'Puy de D&ocirc;me', '63', 1);
INSERT INTO `oc_zone` VALUES(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1);
INSERT INTO `oc_zone` VALUES(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1);
INSERT INTO `oc_zone` VALUES(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1);
INSERT INTO `oc_zone` VALUES(1181, 74, 'Bas Rhin', '67', 1);
INSERT INTO `oc_zone` VALUES(1182, 74, 'Haut Rhin', '68', 1);
INSERT INTO `oc_zone` VALUES(1183, 74, 'Rh&ocirc;ne', '69', 1);
INSERT INTO `oc_zone` VALUES(1184, 74, 'Haute Sa&ocirc;ne', '70', 1);
INSERT INTO `oc_zone` VALUES(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1);
INSERT INTO `oc_zone` VALUES(1186, 74, 'Sarthe', '72', 1);
INSERT INTO `oc_zone` VALUES(1187, 74, 'Savoie', '73', 1);
INSERT INTO `oc_zone` VALUES(1188, 74, 'Haute Savoie', '74', 1);
INSERT INTO `oc_zone` VALUES(1189, 74, 'Paris', '75', 1);
INSERT INTO `oc_zone` VALUES(1190, 74, 'Seine Maritime', '76', 1);
INSERT INTO `oc_zone` VALUES(1191, 74, 'Seine et Marne', '77', 1);
INSERT INTO `oc_zone` VALUES(1192, 74, 'Yvelines', '78', 1);
INSERT INTO `oc_zone` VALUES(1193, 74, 'Deux S&egrave;vres', '79', 1);
INSERT INTO `oc_zone` VALUES(1194, 74, 'Somme', '80', 1);
INSERT INTO `oc_zone` VALUES(1195, 74, 'Tarn', '81', 1);
INSERT INTO `oc_zone` VALUES(1196, 74, 'Tarn et Garonne', '82', 1);
INSERT INTO `oc_zone` VALUES(1197, 74, 'Var', '83', 1);
INSERT INTO `oc_zone` VALUES(1198, 74, 'Vaucluse', '84', 1);
INSERT INTO `oc_zone` VALUES(1199, 74, 'Vend&eacute;e', '85', 1);
INSERT INTO `oc_zone` VALUES(1200, 74, 'Vienne', '86', 1);
INSERT INTO `oc_zone` VALUES(1201, 74, 'Haute Vienne', '87', 1);
INSERT INTO `oc_zone` VALUES(1202, 74, 'Vosges', '88', 1);
INSERT INTO `oc_zone` VALUES(1203, 74, 'Yonne', '89', 1);
INSERT INTO `oc_zone` VALUES(1204, 74, 'Territoire de Belfort', '90', 1);
INSERT INTO `oc_zone` VALUES(1205, 74, 'Essonne', '91', 1);
INSERT INTO `oc_zone` VALUES(1206, 74, 'Hauts de Seine', '92', 1);
INSERT INTO `oc_zone` VALUES(1207, 74, 'Seine St-Denis', '93', 1);
INSERT INTO `oc_zone` VALUES(1208, 74, 'Val de Marne', '94', 1);
INSERT INTO `oc_zone` VALUES(1209, 74, 'Val d''Oise', '95', 1);
INSERT INTO `oc_zone` VALUES(1210, 76, 'Archipel des Marquises', 'M', 1);
INSERT INTO `oc_zone` VALUES(1211, 76, 'Archipel des Tuamotu', 'T', 1);
INSERT INTO `oc_zone` VALUES(1212, 76, 'Archipel des Tubuai', 'I', 1);
INSERT INTO `oc_zone` VALUES(1213, 76, 'Iles du Vent', 'V', 1);
INSERT INTO `oc_zone` VALUES(1214, 76, 'Iles Sous-le-Vent', 'S', 1);
INSERT INTO `oc_zone` VALUES(1215, 77, 'Iles Crozet', 'C', 1);
INSERT INTO `oc_zone` VALUES(1216, 77, 'Iles Kerguelen', 'K', 1);
INSERT INTO `oc_zone` VALUES(1217, 77, 'Ile Amsterdam', 'A', 1);
INSERT INTO `oc_zone` VALUES(1218, 77, 'Ile Saint-Paul', 'P', 1);
INSERT INTO `oc_zone` VALUES(1219, 77, 'Adelie Land', 'D', 1);
INSERT INTO `oc_zone` VALUES(1220, 78, 'Estuaire', 'ES', 1);
INSERT INTO `oc_zone` VALUES(1221, 78, 'Haut-Ogooue', 'HO', 1);
INSERT INTO `oc_zone` VALUES(1222, 78, 'Moyen-Ogooue', 'MO', 1);
INSERT INTO `oc_zone` VALUES(1223, 78, 'Ngounie', 'NG', 1);
INSERT INTO `oc_zone` VALUES(1224, 78, 'Nyanga', 'NY', 1);
INSERT INTO `oc_zone` VALUES(1225, 78, 'Ogooue-Ivindo', 'OI', 1);
INSERT INTO `oc_zone` VALUES(1226, 78, 'Ogooue-Lolo', 'OL', 1);
INSERT INTO `oc_zone` VALUES(1227, 78, 'Ogooue-Maritime', 'OM', 1);
INSERT INTO `oc_zone` VALUES(1228, 78, 'Woleu-Ntem', 'WN', 1);
INSERT INTO `oc_zone` VALUES(1229, 79, 'Banjul', 'BJ', 1);
INSERT INTO `oc_zone` VALUES(1230, 79, 'Basse', 'BS', 1);
INSERT INTO `oc_zone` VALUES(1231, 79, 'Brikama', 'BR', 1);
INSERT INTO `oc_zone` VALUES(1232, 79, 'Janjangbure', 'JA', 1);
INSERT INTO `oc_zone` VALUES(1233, 79, 'Kanifeng', 'KA', 1);
INSERT INTO `oc_zone` VALUES(1234, 79, 'Kerewan', 'KE', 1);
INSERT INTO `oc_zone` VALUES(1235, 79, 'Kuntaur', 'KU', 1);
INSERT INTO `oc_zone` VALUES(1236, 79, 'Mansakonko', 'MA', 1);
INSERT INTO `oc_zone` VALUES(1237, 79, 'Lower River', 'LR', 1);
INSERT INTO `oc_zone` VALUES(1238, 79, 'Central River', 'CR', 1);
INSERT INTO `oc_zone` VALUES(1239, 79, 'North Bank', 'NB', 1);
INSERT INTO `oc_zone` VALUES(1240, 79, 'Upper River', 'UR', 1);
INSERT INTO `oc_zone` VALUES(1241, 79, 'Western', 'WE', 1);
INSERT INTO `oc_zone` VALUES(1242, 80, 'Abkhazia', 'AB', 1);
INSERT INTO `oc_zone` VALUES(1243, 80, 'Ajaria', 'AJ', 1);
INSERT INTO `oc_zone` VALUES(1244, 80, 'Tbilisi', 'TB', 1);
INSERT INTO `oc_zone` VALUES(1245, 80, 'Guria', 'GU', 1);
INSERT INTO `oc_zone` VALUES(1246, 80, 'Imereti', 'IM', 1);
INSERT INTO `oc_zone` VALUES(1247, 80, 'Kakheti', 'KA', 1);
INSERT INTO `oc_zone` VALUES(1248, 80, 'Kvemo Kartli', 'KK', 1);
INSERT INTO `oc_zone` VALUES(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1);
INSERT INTO `oc_zone` VALUES(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1);
INSERT INTO `oc_zone` VALUES(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1);
INSERT INTO `oc_zone` VALUES(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1);
INSERT INTO `oc_zone` VALUES(1253, 80, 'Shida Kartli', 'SK', 1);
INSERT INTO `oc_zone` VALUES(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1);
INSERT INTO `oc_zone` VALUES(1255, 81, 'Bayern', 'BAY', 1);
INSERT INTO `oc_zone` VALUES(1256, 81, 'Berlin', 'BER', 1);
INSERT INTO `oc_zone` VALUES(1257, 81, 'Brandenburg', 'BRG', 1);
INSERT INTO `oc_zone` VALUES(1258, 81, 'Bremen', 'BRE', 1);
INSERT INTO `oc_zone` VALUES(1259, 81, 'Hamburg', 'HAM', 1);
INSERT INTO `oc_zone` VALUES(1260, 81, 'Hessen', 'HES', 1);
INSERT INTO `oc_zone` VALUES(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1);
INSERT INTO `oc_zone` VALUES(1262, 81, 'Niedersachsen', 'NDS', 1);
INSERT INTO `oc_zone` VALUES(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1);
INSERT INTO `oc_zone` VALUES(1264, 81, 'Rheinland-Pfalz', 'RHE', 1);
INSERT INTO `oc_zone` VALUES(1265, 81, 'Saarland', 'SAR', 1);
INSERT INTO `oc_zone` VALUES(1266, 81, 'Sachsen', 'SAS', 1);
INSERT INTO `oc_zone` VALUES(1267, 81, 'Sachsen-Anhalt', 'SAC', 1);
INSERT INTO `oc_zone` VALUES(1268, 81, 'Schleswig-Holstein', 'SCN', 1);
INSERT INTO `oc_zone` VALUES(1269, 81, 'Th&uuml;ringen', 'THE', 1);
INSERT INTO `oc_zone` VALUES(1270, 82, 'Ashanti Region', 'AS', 1);
INSERT INTO `oc_zone` VALUES(1271, 82, 'Brong-Ahafo Region', 'BA', 1);
INSERT INTO `oc_zone` VALUES(1272, 82, 'Central Region', 'CE', 1);
INSERT INTO `oc_zone` VALUES(1273, 82, 'Eastern Region', 'EA', 1);
INSERT INTO `oc_zone` VALUES(1274, 82, 'Greater Accra Region', 'GA', 1);
INSERT INTO `oc_zone` VALUES(1275, 82, 'Northern Region', 'NO', 1);
INSERT INTO `oc_zone` VALUES(1276, 82, 'Upper East Region', 'UE', 1);
INSERT INTO `oc_zone` VALUES(1277, 82, 'Upper West Region', 'UW', 1);
INSERT INTO `oc_zone` VALUES(1278, 82, 'Volta Region', 'VO', 1);
INSERT INTO `oc_zone` VALUES(1279, 82, 'Western Region', 'WE', 1);
INSERT INTO `oc_zone` VALUES(1280, 84, 'Attica', 'AT', 1);
INSERT INTO `oc_zone` VALUES(1281, 84, 'Central Greece', 'CN', 1);
INSERT INTO `oc_zone` VALUES(1282, 84, 'Central Macedonia', 'CM', 1);
INSERT INTO `oc_zone` VALUES(1283, 84, 'Crete', 'CR', 1);
INSERT INTO `oc_zone` VALUES(1284, 84, 'East Macedonia and Thrace', 'EM', 1);
INSERT INTO `oc_zone` VALUES(1285, 84, 'Epirus', 'EP', 1);
INSERT INTO `oc_zone` VALUES(1286, 84, 'Ionian Islands', 'II', 1);
INSERT INTO `oc_zone` VALUES(1287, 84, 'North Aegean', 'NA', 1);
INSERT INTO `oc_zone` VALUES(1288, 84, 'Peloponnesos', 'PP', 1);
INSERT INTO `oc_zone` VALUES(1289, 84, 'South Aegean', 'SA', 1);
INSERT INTO `oc_zone` VALUES(1290, 84, 'Thessaly', 'TH', 1);
INSERT INTO `oc_zone` VALUES(1291, 84, 'West Greece', 'WG', 1);
INSERT INTO `oc_zone` VALUES(1292, 84, 'West Macedonia', 'WM', 1);
INSERT INTO `oc_zone` VALUES(1293, 85, 'Avannaa', 'A', 1);
INSERT INTO `oc_zone` VALUES(1294, 85, 'Tunu', 'T', 1);
INSERT INTO `oc_zone` VALUES(1295, 85, 'Kitaa', 'K', 1);
INSERT INTO `oc_zone` VALUES(1296, 86, 'Saint Andrew', 'A', 1);
INSERT INTO `oc_zone` VALUES(1297, 86, 'Saint David', 'D', 1);
INSERT INTO `oc_zone` VALUES(1298, 86, 'Saint George', 'G', 1);
INSERT INTO `oc_zone` VALUES(1299, 86, 'Saint John', 'J', 1);
INSERT INTO `oc_zone` VALUES(1300, 86, 'Saint Mark', 'M', 1);
INSERT INTO `oc_zone` VALUES(1301, 86, 'Saint Patrick', 'P', 1);
INSERT INTO `oc_zone` VALUES(1302, 86, 'Carriacou', 'C', 1);
INSERT INTO `oc_zone` VALUES(1303, 86, 'Petit Martinique', 'Q', 1);
INSERT INTO `oc_zone` VALUES(1304, 89, 'Alta Verapaz', 'AV', 1);
INSERT INTO `oc_zone` VALUES(1305, 89, 'Baja Verapaz', 'BV', 1);
INSERT INTO `oc_zone` VALUES(1306, 89, 'Chimaltenango', 'CM', 1);
INSERT INTO `oc_zone` VALUES(1307, 89, 'Chiquimula', 'CQ', 1);
INSERT INTO `oc_zone` VALUES(1308, 89, 'El Peten', 'PE', 1);
INSERT INTO `oc_zone` VALUES(1309, 89, 'El Progreso', 'PR', 1);
INSERT INTO `oc_zone` VALUES(1310, 89, 'El Quiche', 'QC', 1);
INSERT INTO `oc_zone` VALUES(1311, 89, 'Escuintla', 'ES', 1);
INSERT INTO `oc_zone` VALUES(1312, 89, 'Guatemala', 'GU', 1);
INSERT INTO `oc_zone` VALUES(1313, 89, 'Huehuetenango', 'HU', 1);
INSERT INTO `oc_zone` VALUES(1314, 89, 'Izabal', 'IZ', 1);
INSERT INTO `oc_zone` VALUES(1315, 89, 'Jalapa', 'JA', 1);
INSERT INTO `oc_zone` VALUES(1316, 89, 'Jutiapa', 'JU', 1);
INSERT INTO `oc_zone` VALUES(1317, 89, 'Quetzaltenango', 'QZ', 1);
INSERT INTO `oc_zone` VALUES(1318, 89, 'Retalhuleu', 'RE', 1);
INSERT INTO `oc_zone` VALUES(1319, 89, 'Sacatepequez', 'ST', 1);
INSERT INTO `oc_zone` VALUES(1320, 89, 'San Marcos', 'SM', 1);
INSERT INTO `oc_zone` VALUES(1321, 89, 'Santa Rosa', 'SR', 1);
INSERT INTO `oc_zone` VALUES(1322, 89, 'Solola', 'SO', 1);
INSERT INTO `oc_zone` VALUES(1323, 89, 'Suchitepequez', 'SU', 1);
INSERT INTO `oc_zone` VALUES(1324, 89, 'Totonicapan', 'TO', 1);
INSERT INTO `oc_zone` VALUES(1325, 89, 'Zacapa', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(1326, 90, 'Conakry', 'CNK', 1);
INSERT INTO `oc_zone` VALUES(1327, 90, 'Beyla', 'BYL', 1);
INSERT INTO `oc_zone` VALUES(1328, 90, 'Boffa', 'BFA', 1);
INSERT INTO `oc_zone` VALUES(1329, 90, 'Boke', 'BOK', 1);
INSERT INTO `oc_zone` VALUES(1330, 90, 'Coyah', 'COY', 1);
INSERT INTO `oc_zone` VALUES(1331, 90, 'Dabola', 'DBL', 1);
INSERT INTO `oc_zone` VALUES(1332, 90, 'Dalaba', 'DLB', 1);
INSERT INTO `oc_zone` VALUES(1333, 90, 'Dinguiraye', 'DGR', 1);
INSERT INTO `oc_zone` VALUES(1334, 90, 'Dubreka', 'DBR', 1);
INSERT INTO `oc_zone` VALUES(1335, 90, 'Faranah', 'FRN', 1);
INSERT INTO `oc_zone` VALUES(1336, 90, 'Forecariah', 'FRC', 1);
INSERT INTO `oc_zone` VALUES(1337, 90, 'Fria', 'FRI', 1);
INSERT INTO `oc_zone` VALUES(1338, 90, 'Gaoual', 'GAO', 1);
INSERT INTO `oc_zone` VALUES(1339, 90, 'Gueckedou', 'GCD', 1);
INSERT INTO `oc_zone` VALUES(1340, 90, 'Kankan', 'KNK', 1);
INSERT INTO `oc_zone` VALUES(1341, 90, 'Kerouane', 'KRN', 1);
INSERT INTO `oc_zone` VALUES(1342, 90, 'Kindia', 'KND', 1);
INSERT INTO `oc_zone` VALUES(1343, 90, 'Kissidougou', 'KSD', 1);
INSERT INTO `oc_zone` VALUES(1344, 90, 'Koubia', 'KBA', 1);
INSERT INTO `oc_zone` VALUES(1345, 90, 'Koundara', 'KDA', 1);
INSERT INTO `oc_zone` VALUES(1346, 90, 'Kouroussa', 'KRA', 1);
INSERT INTO `oc_zone` VALUES(1347, 90, 'Labe', 'LAB', 1);
INSERT INTO `oc_zone` VALUES(1348, 90, 'Lelouma', 'LLM', 1);
INSERT INTO `oc_zone` VALUES(1349, 90, 'Lola', 'LOL', 1);
INSERT INTO `oc_zone` VALUES(1350, 90, 'Macenta', 'MCT', 1);
INSERT INTO `oc_zone` VALUES(1351, 90, 'Mali', 'MAL', 1);
INSERT INTO `oc_zone` VALUES(1352, 90, 'Mamou', 'MAM', 1);
INSERT INTO `oc_zone` VALUES(1353, 90, 'Mandiana', 'MAN', 1);
INSERT INTO `oc_zone` VALUES(1354, 90, 'Nzerekore', 'NZR', 1);
INSERT INTO `oc_zone` VALUES(1355, 90, 'Pita', 'PIT', 1);
INSERT INTO `oc_zone` VALUES(1356, 90, 'Siguiri', 'SIG', 1);
INSERT INTO `oc_zone` VALUES(1357, 90, 'Telimele', 'TLM', 1);
INSERT INTO `oc_zone` VALUES(1358, 90, 'Tougue', 'TOG', 1);
INSERT INTO `oc_zone` VALUES(1359, 90, 'Yomou', 'YOM', 1);
INSERT INTO `oc_zone` VALUES(1360, 91, 'Bafata Region', 'BF', 1);
INSERT INTO `oc_zone` VALUES(1361, 91, 'Biombo Region', 'BB', 1);
INSERT INTO `oc_zone` VALUES(1362, 91, 'Bissau Region', 'BS', 1);
INSERT INTO `oc_zone` VALUES(1363, 91, 'Bolama Region', 'BL', 1);
INSERT INTO `oc_zone` VALUES(1364, 91, 'Cacheu Region', 'CA', 1);
INSERT INTO `oc_zone` VALUES(1365, 91, 'Gabu Region', 'GA', 1);
INSERT INTO `oc_zone` VALUES(1366, 91, 'Oio Region', 'OI', 1);
INSERT INTO `oc_zone` VALUES(1367, 91, 'Quinara Region', 'QU', 1);
INSERT INTO `oc_zone` VALUES(1368, 91, 'Tombali Region', 'TO', 1);
INSERT INTO `oc_zone` VALUES(1369, 92, 'Barima-Waini', 'BW', 1);
INSERT INTO `oc_zone` VALUES(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1);
INSERT INTO `oc_zone` VALUES(1371, 92, 'Demerara-Mahaica', 'DM', 1);
INSERT INTO `oc_zone` VALUES(1372, 92, 'East Berbice-Corentyne', 'EC', 1);
INSERT INTO `oc_zone` VALUES(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1);
INSERT INTO `oc_zone` VALUES(1374, 92, 'Mahaica-Berbice', 'MB', 1);
INSERT INTO `oc_zone` VALUES(1375, 92, 'Pomeroon-Supenaam', 'PM', 1);
INSERT INTO `oc_zone` VALUES(1376, 92, 'Potaro-Siparuni', 'PI', 1);
INSERT INTO `oc_zone` VALUES(1377, 92, 'Upper Demerara-Berbice', 'UD', 1);
INSERT INTO `oc_zone` VALUES(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1);
INSERT INTO `oc_zone` VALUES(1379, 93, 'Artibonite', 'AR', 1);
INSERT INTO `oc_zone` VALUES(1380, 93, 'Centre', 'CE', 1);
INSERT INTO `oc_zone` VALUES(1381, 93, 'Grand''Anse', 'GA', 1);
INSERT INTO `oc_zone` VALUES(1382, 93, 'Nord', 'ND', 1);
INSERT INTO `oc_zone` VALUES(1383, 93, 'Nord-Est', 'NE', 1);
INSERT INTO `oc_zone` VALUES(1384, 93, 'Nord-Ouest', 'NO', 1);
INSERT INTO `oc_zone` VALUES(1385, 93, 'Ouest', 'OU', 1);
INSERT INTO `oc_zone` VALUES(1386, 93, 'Sud', 'SD', 1);
INSERT INTO `oc_zone` VALUES(1387, 93, 'Sud-Est', 'SE', 1);
INSERT INTO `oc_zone` VALUES(1388, 94, 'Flat Island', 'F', 1);
INSERT INTO `oc_zone` VALUES(1389, 94, 'McDonald Island', 'M', 1);
INSERT INTO `oc_zone` VALUES(1390, 94, 'Shag Island', 'S', 1);
INSERT INTO `oc_zone` VALUES(1391, 94, 'Heard Island', 'H', 1);
INSERT INTO `oc_zone` VALUES(1392, 95, 'Atlantida', 'AT', 1);
INSERT INTO `oc_zone` VALUES(1393, 95, 'Choluteca', 'CH', 1);
INSERT INTO `oc_zone` VALUES(1394, 95, 'Colon', 'CL', 1);
INSERT INTO `oc_zone` VALUES(1395, 95, 'Comayagua', 'CM', 1);
INSERT INTO `oc_zone` VALUES(1396, 95, 'Copan', 'CP', 1);
INSERT INTO `oc_zone` VALUES(1397, 95, 'Cortes', 'CR', 1);
INSERT INTO `oc_zone` VALUES(1398, 95, 'El Paraiso', 'PA', 1);
INSERT INTO `oc_zone` VALUES(1399, 95, 'Francisco Morazan', 'FM', 1);
INSERT INTO `oc_zone` VALUES(1400, 95, 'Gracias a Dios', 'GD', 1);
INSERT INTO `oc_zone` VALUES(1401, 95, 'Intibuca', 'IN', 1);
INSERT INTO `oc_zone` VALUES(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1);
INSERT INTO `oc_zone` VALUES(1403, 95, 'La Paz', 'PZ', 1);
INSERT INTO `oc_zone` VALUES(1404, 95, 'Lempira', 'LE', 1);
INSERT INTO `oc_zone` VALUES(1405, 95, 'Ocotepeque', 'OC', 1);
INSERT INTO `oc_zone` VALUES(1406, 95, 'Olancho', 'OL', 1);
INSERT INTO `oc_zone` VALUES(1407, 95, 'Santa Barbara', 'SB', 1);
INSERT INTO `oc_zone` VALUES(1408, 95, 'Valle', 'VA', 1);
INSERT INTO `oc_zone` VALUES(1409, 95, 'Yoro', 'YO', 1);
INSERT INTO `oc_zone` VALUES(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1);
INSERT INTO `oc_zone` VALUES(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1);
INSERT INTO `oc_zone` VALUES(1412, 96, 'Southern Hong Kong Island', 'HSO', 1);
INSERT INTO `oc_zone` VALUES(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1);
INSERT INTO `oc_zone` VALUES(1414, 96, 'Kowloon City Kowloon', 'KKC', 1);
INSERT INTO `oc_zone` VALUES(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1);
INSERT INTO `oc_zone` VALUES(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1);
INSERT INTO `oc_zone` VALUES(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1);
INSERT INTO `oc_zone` VALUES(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1);
INSERT INTO `oc_zone` VALUES(1419, 96, 'Islands New Territories', 'NIS', 1);
INSERT INTO `oc_zone` VALUES(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1);
INSERT INTO `oc_zone` VALUES(1421, 96, 'North New Territories', 'NNO', 1);
INSERT INTO `oc_zone` VALUES(1422, 96, 'Sai Kung New Territories', 'NSK', 1);
INSERT INTO `oc_zone` VALUES(1423, 96, 'Sha Tin New Territories', 'NST', 1);
INSERT INTO `oc_zone` VALUES(1424, 96, 'Tai Po New Territories', 'NTP', 1);
INSERT INTO `oc_zone` VALUES(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1);
INSERT INTO `oc_zone` VALUES(1426, 96, 'Tuen Mun New Territories', 'NTM', 1);
INSERT INTO `oc_zone` VALUES(1427, 96, 'Yuen Long New Territories', 'NYL', 1);
INSERT INTO `oc_zone` VALUES(1428, 97, 'Bacs-Kiskun', 'BK', 1);
INSERT INTO `oc_zone` VALUES(1429, 97, 'Baranya', 'BA', 1);
INSERT INTO `oc_zone` VALUES(1430, 97, 'Bekes', 'BE', 1);
INSERT INTO `oc_zone` VALUES(1431, 97, 'Bekescsaba', 'BS', 1);
INSERT INTO `oc_zone` VALUES(1432, 97, 'Borsod-Abauj-Zemplen', 'BZ', 1);
INSERT INTO `oc_zone` VALUES(1433, 97, 'Budapest', 'BU', 1);
INSERT INTO `oc_zone` VALUES(1434, 97, 'Csongrad', 'CS', 1);
INSERT INTO `oc_zone` VALUES(1435, 97, 'Debrecen', 'DE', 1);
INSERT INTO `oc_zone` VALUES(1436, 97, 'Dunaujvaros', 'DU', 1);
INSERT INTO `oc_zone` VALUES(1437, 97, 'Eger', 'EG', 1);
INSERT INTO `oc_zone` VALUES(1438, 97, 'Fejer', 'FE', 1);
INSERT INTO `oc_zone` VALUES(1439, 97, 'Gyor', 'GY', 1);
INSERT INTO `oc_zone` VALUES(1440, 97, 'Gyor-Moson-Sopron', 'GM', 1);
INSERT INTO `oc_zone` VALUES(1441, 97, 'Hajdu-Bihar', 'HB', 1);
INSERT INTO `oc_zone` VALUES(1442, 97, 'Heves', 'HE', 1);
INSERT INTO `oc_zone` VALUES(1443, 97, 'Hodmezovasarhely', 'HO', 1);
INSERT INTO `oc_zone` VALUES(1444, 97, 'Jasz-Nagykun-Szolnok', 'JN', 1);
INSERT INTO `oc_zone` VALUES(1445, 97, 'Kaposvar', 'KA', 1);
INSERT INTO `oc_zone` VALUES(1446, 97, 'Kecskemet', 'KE', 1);
INSERT INTO `oc_zone` VALUES(1447, 97, 'Komarom-Esztergom', 'KO', 1);
INSERT INTO `oc_zone` VALUES(1448, 97, 'Miskolc', 'MI', 1);
INSERT INTO `oc_zone` VALUES(1449, 97, 'Nagykanizsa', 'NA', 1);
INSERT INTO `oc_zone` VALUES(1450, 97, 'Nograd', 'NO', 1);
INSERT INTO `oc_zone` VALUES(1451, 97, 'Nyiregyhaza', 'NY', 1);
INSERT INTO `oc_zone` VALUES(1452, 97, 'Pecs', 'PE', 1);
INSERT INTO `oc_zone` VALUES(1453, 97, 'Pest', 'PS', 1);
INSERT INTO `oc_zone` VALUES(1454, 97, 'Somogy', 'SO', 1);
INSERT INTO `oc_zone` VALUES(1455, 97, 'Sopron', 'SP', 1);
INSERT INTO `oc_zone` VALUES(1456, 97, 'Szabolcs-Szatmar-Bereg', 'SS', 1);
INSERT INTO `oc_zone` VALUES(1457, 97, 'Szeged', 'SZ', 1);
INSERT INTO `oc_zone` VALUES(1458, 97, 'Szekesfehervar', 'SE', 1);
INSERT INTO `oc_zone` VALUES(1459, 97, 'Szolnok', 'SL', 1);
INSERT INTO `oc_zone` VALUES(1460, 97, 'Szombathely', 'SM', 1);
INSERT INTO `oc_zone` VALUES(1461, 97, 'Tatabanya', 'TA', 1);
INSERT INTO `oc_zone` VALUES(1462, 97, 'Tolna', 'TO', 1);
INSERT INTO `oc_zone` VALUES(1463, 97, 'Vas', 'VA', 1);
INSERT INTO `oc_zone` VALUES(1464, 97, 'Veszprem', 'VE', 1);
INSERT INTO `oc_zone` VALUES(1465, 97, 'Zala', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(1466, 97, 'Zalaegerszeg', 'ZZ', 1);
INSERT INTO `oc_zone` VALUES(1467, 98, 'Austurland', 'AL', 1);
INSERT INTO `oc_zone` VALUES(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1);
INSERT INTO `oc_zone` VALUES(1469, 98, 'Norourland eystra', 'NE', 1);
INSERT INTO `oc_zone` VALUES(1470, 98, 'Norourland vestra', 'NV', 1);
INSERT INTO `oc_zone` VALUES(1471, 98, 'Suourland', 'SL', 1);
INSERT INTO `oc_zone` VALUES(1472, 98, 'Suournes', 'SN', 1);
INSERT INTO `oc_zone` VALUES(1473, 98, 'Vestfiroir', 'VF', 1);
INSERT INTO `oc_zone` VALUES(1474, 98, 'Vesturland', 'VL', 1);
INSERT INTO `oc_zone` VALUES(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1);
INSERT INTO `oc_zone` VALUES(1476, 99, 'Andhra Pradesh', 'AP', 1);
INSERT INTO `oc_zone` VALUES(1477, 99, 'Arunachal Pradesh', 'AR', 1);
INSERT INTO `oc_zone` VALUES(1478, 99, 'Assam', 'AS', 1);
INSERT INTO `oc_zone` VALUES(1479, 99, 'Bihar', 'BI', 1);
INSERT INTO `oc_zone` VALUES(1480, 99, 'Chandigarh', 'CH', 1);
INSERT INTO `oc_zone` VALUES(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1);
INSERT INTO `oc_zone` VALUES(1482, 99, 'Daman and Diu', 'DM', 1);
INSERT INTO `oc_zone` VALUES(1483, 99, 'Delhi', 'DE', 1);
INSERT INTO `oc_zone` VALUES(1484, 99, 'Goa', 'GO', 1);
INSERT INTO `oc_zone` VALUES(1485, 99, 'Gujarat', 'GU', 1);
INSERT INTO `oc_zone` VALUES(1486, 99, 'Haryana', 'HA', 1);
INSERT INTO `oc_zone` VALUES(1487, 99, 'Himachal Pradesh', 'HP', 1);
INSERT INTO `oc_zone` VALUES(1488, 99, 'Jammu and Kashmir', 'JA', 1);
INSERT INTO `oc_zone` VALUES(1489, 99, 'Karnataka', 'KA', 1);
INSERT INTO `oc_zone` VALUES(1490, 99, 'Kerala', 'KE', 1);
INSERT INTO `oc_zone` VALUES(1491, 99, 'Lakshadweep Islands', 'LI', 1);
INSERT INTO `oc_zone` VALUES(1492, 99, 'Madhya Pradesh', 'MP', 1);
INSERT INTO `oc_zone` VALUES(1493, 99, 'Maharashtra', 'MA', 1);
INSERT INTO `oc_zone` VALUES(1494, 99, 'Manipur', 'MN', 1);
INSERT INTO `oc_zone` VALUES(1495, 99, 'Meghalaya', 'ME', 1);
INSERT INTO `oc_zone` VALUES(1496, 99, 'Mizoram', 'MI', 1);
INSERT INTO `oc_zone` VALUES(1497, 99, 'Nagaland', 'NA', 1);
INSERT INTO `oc_zone` VALUES(1498, 99, 'Orissa', 'OR', 1);
INSERT INTO `oc_zone` VALUES(1499, 99, 'Pondicherry', 'PO', 1);
INSERT INTO `oc_zone` VALUES(1500, 99, 'Punjab', 'PU', 1);
INSERT INTO `oc_zone` VALUES(1501, 99, 'Rajasthan', 'RA', 1);
INSERT INTO `oc_zone` VALUES(1502, 99, 'Sikkim', 'SI', 1);
INSERT INTO `oc_zone` VALUES(1503, 99, 'Tamil Nadu', 'TN', 1);
INSERT INTO `oc_zone` VALUES(1504, 99, 'Tripura', 'TR', 1);
INSERT INTO `oc_zone` VALUES(1505, 99, 'Uttar Pradesh', 'UP', 1);
INSERT INTO `oc_zone` VALUES(1506, 99, 'West Bengal', 'WB', 1);
INSERT INTO `oc_zone` VALUES(1507, 100, 'Aceh', 'AC', 1);
INSERT INTO `oc_zone` VALUES(1508, 100, 'Bali', 'BA', 1);
INSERT INTO `oc_zone` VALUES(1509, 100, 'Banten', 'BT', 1);
INSERT INTO `oc_zone` VALUES(1510, 100, 'Bengkulu', 'BE', 1);
INSERT INTO `oc_zone` VALUES(1511, 100, 'BoDeTaBek', 'BD', 1);
INSERT INTO `oc_zone` VALUES(1512, 100, 'Gorontalo', 'GO', 1);
INSERT INTO `oc_zone` VALUES(1513, 100, 'Jakarta Raya', 'JK', 1);
INSERT INTO `oc_zone` VALUES(1514, 100, 'Jambi', 'JA', 1);
INSERT INTO `oc_zone` VALUES(1515, 100, 'Jawa Barat', 'JB', 1);
INSERT INTO `oc_zone` VALUES(1516, 100, 'Jawa Tengah', 'JT', 1);
INSERT INTO `oc_zone` VALUES(1517, 100, 'Jawa Timur', 'JI', 1);
INSERT INTO `oc_zone` VALUES(1518, 100, 'Kalimantan Barat', 'KB', 1);
INSERT INTO `oc_zone` VALUES(1519, 100, 'Kalimantan Selatan', 'KS', 1);
INSERT INTO `oc_zone` VALUES(1520, 100, 'Kalimantan Tengah', 'KT', 1);
INSERT INTO `oc_zone` VALUES(1521, 100, 'Kalimantan Timur', 'KI', 1);
INSERT INTO `oc_zone` VALUES(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1);
INSERT INTO `oc_zone` VALUES(1523, 100, 'Lampung', 'LA', 1);
INSERT INTO `oc_zone` VALUES(1524, 100, 'Maluku', 'MA', 1);
INSERT INTO `oc_zone` VALUES(1525, 100, 'Maluku Utara', 'MU', 1);
INSERT INTO `oc_zone` VALUES(1526, 100, 'Nusa Tenggara Barat', 'NB', 1);
INSERT INTO `oc_zone` VALUES(1527, 100, 'Nusa Tenggara Timur', 'NT', 1);
INSERT INTO `oc_zone` VALUES(1528, 100, 'Papua', 'PA', 1);
INSERT INTO `oc_zone` VALUES(1529, 100, 'Riau', 'RI', 1);
INSERT INTO `oc_zone` VALUES(1530, 100, 'Sulawesi Selatan', 'SN', 1);
INSERT INTO `oc_zone` VALUES(1531, 100, 'Sulawesi Tengah', 'ST', 1);
INSERT INTO `oc_zone` VALUES(1532, 100, 'Sulawesi Tenggara', 'SG', 1);
INSERT INTO `oc_zone` VALUES(1533, 100, 'Sulawesi Utara', 'SA', 1);
INSERT INTO `oc_zone` VALUES(1534, 100, 'Sumatera Barat', 'SB', 1);
INSERT INTO `oc_zone` VALUES(1535, 100, 'Sumatera Selatan', 'SS', 1);
INSERT INTO `oc_zone` VALUES(1536, 100, 'Sumatera Utara', 'SU', 1);
INSERT INTO `oc_zone` VALUES(1537, 100, 'Yogyakarta', 'YO', 1);
INSERT INTO `oc_zone` VALUES(1538, 101, 'Tehran', 'TEH', 1);
INSERT INTO `oc_zone` VALUES(1539, 101, 'Qom', 'QOM', 1);
INSERT INTO `oc_zone` VALUES(1540, 101, 'Markazi', 'MKZ', 1);
INSERT INTO `oc_zone` VALUES(1541, 101, 'Qazvin', 'QAZ', 1);
INSERT INTO `oc_zone` VALUES(1542, 101, 'Gilan', 'GIL', 1);
INSERT INTO `oc_zone` VALUES(1543, 101, 'Ardabil', 'ARD', 1);
INSERT INTO `oc_zone` VALUES(1544, 101, 'Zanjan', 'ZAN', 1);
INSERT INTO `oc_zone` VALUES(1545, 101, 'East Azarbaijan', 'EAZ', 1);
INSERT INTO `oc_zone` VALUES(1546, 101, 'West Azarbaijan', 'WEZ', 1);
INSERT INTO `oc_zone` VALUES(1547, 101, 'Kurdistan', 'KRD', 1);
INSERT INTO `oc_zone` VALUES(1548, 101, 'Hamadan', 'HMD', 1);
INSERT INTO `oc_zone` VALUES(1549, 101, 'Kermanshah', 'KRM', 1);
INSERT INTO `oc_zone` VALUES(1550, 101, 'Ilam', 'ILM', 1);
INSERT INTO `oc_zone` VALUES(1551, 101, 'Lorestan', 'LRS', 1);
INSERT INTO `oc_zone` VALUES(1552, 101, 'Khuzestan', 'KZT', 1);
INSERT INTO `oc_zone` VALUES(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1);
INSERT INTO `oc_zone` VALUES(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1);
INSERT INTO `oc_zone` VALUES(1555, 101, 'Bushehr', 'BSH', 1);
INSERT INTO `oc_zone` VALUES(1556, 101, 'Fars', 'FAR', 1);
INSERT INTO `oc_zone` VALUES(1557, 101, 'Hormozgan', 'HRM', 1);
INSERT INTO `oc_zone` VALUES(1558, 101, 'Sistan and Baluchistan', 'SBL', 1);
INSERT INTO `oc_zone` VALUES(1559, 101, 'Kerman', 'KRB', 1);
INSERT INTO `oc_zone` VALUES(1560, 101, 'Yazd', 'YZD', 1);
INSERT INTO `oc_zone` VALUES(1561, 101, 'Esfahan', 'EFH', 1);
INSERT INTO `oc_zone` VALUES(1562, 101, 'Semnan', 'SMN', 1);
INSERT INTO `oc_zone` VALUES(1563, 101, 'Mazandaran', 'MZD', 1);
INSERT INTO `oc_zone` VALUES(1564, 101, 'Golestan', 'GLS', 1);
INSERT INTO `oc_zone` VALUES(1565, 101, 'North Khorasan', 'NKH', 1);
INSERT INTO `oc_zone` VALUES(1566, 101, 'Razavi Khorasan', 'RKH', 1);
INSERT INTO `oc_zone` VALUES(1567, 101, 'South Khorasan', 'SKH', 1);
INSERT INTO `oc_zone` VALUES(1568, 102, 'Baghdad', 'BD', 1);
INSERT INTO `oc_zone` VALUES(1569, 102, 'Salah ad Din', 'SD', 1);
INSERT INTO `oc_zone` VALUES(1570, 102, 'Diyala', 'DY', 1);
INSERT INTO `oc_zone` VALUES(1571, 102, 'Wasit', 'WS', 1);
INSERT INTO `oc_zone` VALUES(1572, 102, 'Maysan', 'MY', 1);
INSERT INTO `oc_zone` VALUES(1573, 102, 'Al Basrah', 'BA', 1);
INSERT INTO `oc_zone` VALUES(1574, 102, 'Dhi Qar', 'DQ', 1);
INSERT INTO `oc_zone` VALUES(1575, 102, 'Al Muthanna', 'MU', 1);
INSERT INTO `oc_zone` VALUES(1576, 102, 'Al Qadisyah', 'QA', 1);
INSERT INTO `oc_zone` VALUES(1577, 102, 'Babil', 'BB', 1);
INSERT INTO `oc_zone` VALUES(1578, 102, 'Al Karbala', 'KB', 1);
INSERT INTO `oc_zone` VALUES(1579, 102, 'An Najaf', 'NJ', 1);
INSERT INTO `oc_zone` VALUES(1580, 102, 'Al Anbar', 'AB', 1);
INSERT INTO `oc_zone` VALUES(1581, 102, 'Ninawa', 'NN', 1);
INSERT INTO `oc_zone` VALUES(1582, 102, 'Dahuk', 'DH', 1);
INSERT INTO `oc_zone` VALUES(1583, 102, 'Arbil', 'AL', 1);
INSERT INTO `oc_zone` VALUES(1584, 102, 'At Ta''mim', 'TM', 1);
INSERT INTO `oc_zone` VALUES(1585, 102, 'As Sulaymaniyah', 'SL', 1);
INSERT INTO `oc_zone` VALUES(1586, 103, 'Carlow', 'CA', 1);
INSERT INTO `oc_zone` VALUES(1587, 103, 'Cavan', 'CV', 1);
INSERT INTO `oc_zone` VALUES(1588, 103, 'Clare', 'CL', 1);
INSERT INTO `oc_zone` VALUES(1589, 103, 'Cork', 'CO', 1);
INSERT INTO `oc_zone` VALUES(1590, 103, 'Donegal', 'DO', 1);
INSERT INTO `oc_zone` VALUES(1591, 103, 'Dublin', 'DU', 1);
INSERT INTO `oc_zone` VALUES(1592, 103, 'Galway', 'GA', 1);
INSERT INTO `oc_zone` VALUES(1593, 103, 'Kerry', 'KE', 1);
INSERT INTO `oc_zone` VALUES(1594, 103, 'Kildare', 'KI', 1);
INSERT INTO `oc_zone` VALUES(1595, 103, 'Kilkenny', 'KL', 1);
INSERT INTO `oc_zone` VALUES(1596, 103, 'Laois', 'LA', 1);
INSERT INTO `oc_zone` VALUES(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` VALUES(1598, 103, 'Limerick', 'LI', 1);
INSERT INTO `oc_zone` VALUES(1599, 103, 'Longford', 'LO', 1);
INSERT INTO `oc_zone` VALUES(1600, 103, 'Louth', 'LU', 1);
INSERT INTO `oc_zone` VALUES(1601, 103, 'Mayo', 'MA', 1);
INSERT INTO `oc_zone` VALUES(1602, 103, 'Meath', 'ME', 1);
INSERT INTO `oc_zone` VALUES(1603, 103, 'Monaghan', 'MO', 1);
INSERT INTO `oc_zone` VALUES(1604, 103, 'Offaly', 'OF', 1);
INSERT INTO `oc_zone` VALUES(1605, 103, 'Roscommon', 'RO', 1);
INSERT INTO `oc_zone` VALUES(1606, 103, 'Sligo', 'SL', 1);
INSERT INTO `oc_zone` VALUES(1607, 103, 'Tipperary', 'TI', 1);
INSERT INTO `oc_zone` VALUES(1608, 103, 'Waterford', 'WA', 1);
INSERT INTO `oc_zone` VALUES(1609, 103, 'Westmeath', 'WE', 1);
INSERT INTO `oc_zone` VALUES(1610, 103, 'Wexford', 'WX', 1);
INSERT INTO `oc_zone` VALUES(1611, 103, 'Wicklow', 'WI', 1);
INSERT INTO `oc_zone` VALUES(1612, 104, 'Be''er Sheva', 'BS', 1);
INSERT INTO `oc_zone` VALUES(1613, 104, 'Bika''at Hayarden', 'BH', 1);
INSERT INTO `oc_zone` VALUES(1614, 104, 'Eilat and Arava', 'EA', 1);
INSERT INTO `oc_zone` VALUES(1615, 104, 'Galil', 'GA', 1);
INSERT INTO `oc_zone` VALUES(1616, 104, 'Haifa', 'HA', 1);
INSERT INTO `oc_zone` VALUES(1617, 104, 'Jehuda Mountains', 'JM', 1);
INSERT INTO `oc_zone` VALUES(1618, 104, 'Jerusalem', 'JE', 1);
INSERT INTO `oc_zone` VALUES(1619, 104, 'Negev', 'NE', 1);
INSERT INTO `oc_zone` VALUES(1620, 104, 'Semaria', 'SE', 1);
INSERT INTO `oc_zone` VALUES(1621, 104, 'Sharon', 'SH', 1);
INSERT INTO `oc_zone` VALUES(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1);
INSERT INTO `oc_zone` VALUES(3860, 105, 'Caltanissetta', 'CL', 1);
INSERT INTO `oc_zone` VALUES(3842, 105, 'Agrigento', 'AG', 1);
INSERT INTO `oc_zone` VALUES(3843, 105, 'Alessandria', 'AL', 1);
INSERT INTO `oc_zone` VALUES(3844, 105, 'Ancona', 'AN', 1);
INSERT INTO `oc_zone` VALUES(3845, 105, 'Aosta', 'AO', 1);
INSERT INTO `oc_zone` VALUES(3846, 105, 'Arezzo', 'AR', 1);
INSERT INTO `oc_zone` VALUES(3847, 105, 'Ascoli Piceno', 'AP', 1);
INSERT INTO `oc_zone` VALUES(3848, 105, 'Asti', 'AT', 1);
INSERT INTO `oc_zone` VALUES(3849, 105, 'Avellino', 'AV', 1);
INSERT INTO `oc_zone` VALUES(3850, 105, 'Bari', 'BA', 1);
INSERT INTO `oc_zone` VALUES(3851, 105, 'Belluno', 'BL', 1);
INSERT INTO `oc_zone` VALUES(3852, 105, 'Benevento', 'BN', 1);
INSERT INTO `oc_zone` VALUES(3853, 105, 'Bergamo', 'BG', 1);
INSERT INTO `oc_zone` VALUES(3854, 105, 'Biella', 'BI', 1);
INSERT INTO `oc_zone` VALUES(3855, 105, 'Bologna', 'BO', 1);
INSERT INTO `oc_zone` VALUES(3856, 105, 'Bolzano', 'BZ', 1);
INSERT INTO `oc_zone` VALUES(3857, 105, 'Brescia', 'BS', 1);
INSERT INTO `oc_zone` VALUES(3858, 105, 'Brindisi', 'BR', 1);
INSERT INTO `oc_zone` VALUES(3859, 105, 'Cagliari', 'CA', 1);
INSERT INTO `oc_zone` VALUES(1643, 106, 'Clarendon Parish', 'CLA', 1);
INSERT INTO `oc_zone` VALUES(1644, 106, 'Hanover Parish', 'HAN', 1);
INSERT INTO `oc_zone` VALUES(1645, 106, 'Kingston Parish', 'KIN', 1);
INSERT INTO `oc_zone` VALUES(1646, 106, 'Manchester Parish', 'MAN', 1);
INSERT INTO `oc_zone` VALUES(1647, 106, 'Portland Parish', 'POR', 1);
INSERT INTO `oc_zone` VALUES(1648, 106, 'Saint Andrew Parish', 'AND', 1);
INSERT INTO `oc_zone` VALUES(1649, 106, 'Saint Ann Parish', 'ANN', 1);
INSERT INTO `oc_zone` VALUES(1650, 106, 'Saint Catherine Parish', 'CAT', 1);
INSERT INTO `oc_zone` VALUES(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1);
INSERT INTO `oc_zone` VALUES(1652, 106, 'Saint James Parish', 'JAM', 1);
INSERT INTO `oc_zone` VALUES(1653, 106, 'Saint Mary Parish', 'MAR', 1);
INSERT INTO `oc_zone` VALUES(1654, 106, 'Saint Thomas Parish', 'THO', 1);
INSERT INTO `oc_zone` VALUES(1655, 106, 'Trelawny Parish', 'TRL', 1);
INSERT INTO `oc_zone` VALUES(1656, 106, 'Westmoreland Parish', 'WML', 1);
INSERT INTO `oc_zone` VALUES(1657, 107, 'Aichi', 'AI', 1);
INSERT INTO `oc_zone` VALUES(1658, 107, 'Akita', 'AK', 1);
INSERT INTO `oc_zone` VALUES(1659, 107, 'Aomori', 'AO', 1);
INSERT INTO `oc_zone` VALUES(1660, 107, 'Chiba', 'CH', 1);
INSERT INTO `oc_zone` VALUES(1661, 107, 'Ehime', 'EH', 1);
INSERT INTO `oc_zone` VALUES(1662, 107, 'Fukui', 'FK', 1);
INSERT INTO `oc_zone` VALUES(1663, 107, 'Fukuoka', 'FU', 1);
INSERT INTO `oc_zone` VALUES(1664, 107, 'Fukushima', 'FS', 1);
INSERT INTO `oc_zone` VALUES(1665, 107, 'Gifu', 'GI', 1);
INSERT INTO `oc_zone` VALUES(1666, 107, 'Gumma', 'GU', 1);
INSERT INTO `oc_zone` VALUES(1667, 107, 'Hiroshima', 'HI', 1);
INSERT INTO `oc_zone` VALUES(1668, 107, 'Hokkaido', 'HO', 1);
INSERT INTO `oc_zone` VALUES(1669, 107, 'Hyogo', 'HY', 1);
INSERT INTO `oc_zone` VALUES(1670, 107, 'Ibaraki', 'IB', 1);
INSERT INTO `oc_zone` VALUES(1671, 107, 'Ishikawa', 'IS', 1);
INSERT INTO `oc_zone` VALUES(1672, 107, 'Iwate', 'IW', 1);
INSERT INTO `oc_zone` VALUES(1673, 107, 'Kagawa', 'KA', 1);
INSERT INTO `oc_zone` VALUES(1674, 107, 'Kagoshima', 'KG', 1);
INSERT INTO `oc_zone` VALUES(1675, 107, 'Kanagawa', 'KN', 1);
INSERT INTO `oc_zone` VALUES(1676, 107, 'Kochi', 'KO', 1);
INSERT INTO `oc_zone` VALUES(1677, 107, 'Kumamoto', 'KU', 1);
INSERT INTO `oc_zone` VALUES(1678, 107, 'Kyoto', 'KY', 1);
INSERT INTO `oc_zone` VALUES(1679, 107, 'Mie', 'MI', 1);
INSERT INTO `oc_zone` VALUES(1680, 107, 'Miyagi', 'MY', 1);
INSERT INTO `oc_zone` VALUES(1681, 107, 'Miyazaki', 'MZ', 1);
INSERT INTO `oc_zone` VALUES(1682, 107, 'Nagano', 'NA', 1);
INSERT INTO `oc_zone` VALUES(1683, 107, 'Nagasaki', 'NG', 1);
INSERT INTO `oc_zone` VALUES(1684, 107, 'Nara', 'NR', 1);
INSERT INTO `oc_zone` VALUES(1685, 107, 'Niigata', 'NI', 1);
INSERT INTO `oc_zone` VALUES(1686, 107, 'Oita', 'OI', 1);
INSERT INTO `oc_zone` VALUES(1687, 107, 'Okayama', 'OK', 1);
INSERT INTO `oc_zone` VALUES(1688, 107, 'Okinawa', 'ON', 1);
INSERT INTO `oc_zone` VALUES(1689, 107, 'Osaka', 'OS', 1);
INSERT INTO `oc_zone` VALUES(1690, 107, 'Saga', 'SA', 1);
INSERT INTO `oc_zone` VALUES(1691, 107, 'Saitama', 'SI', 1);
INSERT INTO `oc_zone` VALUES(1692, 107, 'Shiga', 'SH', 1);
INSERT INTO `oc_zone` VALUES(1693, 107, 'Shimane', 'SM', 1);
INSERT INTO `oc_zone` VALUES(1694, 107, 'Shizuoka', 'SZ', 1);
INSERT INTO `oc_zone` VALUES(1695, 107, 'Tochigi', 'TO', 1);
INSERT INTO `oc_zone` VALUES(1696, 107, 'Tokushima', 'TS', 1);
INSERT INTO `oc_zone` VALUES(1697, 107, 'Tokyo', 'TK', 1);
INSERT INTO `oc_zone` VALUES(1698, 107, 'Tottori', 'TT', 1);
INSERT INTO `oc_zone` VALUES(1699, 107, 'Toyama', 'TY', 1);
INSERT INTO `oc_zone` VALUES(1700, 107, 'Wakayama', 'WA', 1);
INSERT INTO `oc_zone` VALUES(1701, 107, 'Yamagata', 'YA', 1);
INSERT INTO `oc_zone` VALUES(1702, 107, 'Yamaguchi', 'YM', 1);
INSERT INTO `oc_zone` VALUES(1703, 107, 'Yamanashi', 'YN', 1);
INSERT INTO `oc_zone` VALUES(1704, 108, '''Amman', 'AM', 1);
INSERT INTO `oc_zone` VALUES(1705, 108, 'Ajlun', 'AJ', 1);
INSERT INTO `oc_zone` VALUES(1706, 108, 'Al ''Aqabah', 'AA', 1);
INSERT INTO `oc_zone` VALUES(1707, 108, 'Al Balqa''', 'AB', 1);
INSERT INTO `oc_zone` VALUES(1708, 108, 'Al Karak', 'AK', 1);
INSERT INTO `oc_zone` VALUES(1709, 108, 'Al Mafraq', 'AL', 1);
INSERT INTO `oc_zone` VALUES(1710, 108, 'At Tafilah', 'AT', 1);
INSERT INTO `oc_zone` VALUES(1711, 108, 'Az Zarqa''', 'AZ', 1);
INSERT INTO `oc_zone` VALUES(1712, 108, 'Irbid', 'IR', 1);
INSERT INTO `oc_zone` VALUES(1713, 108, 'Jarash', 'JA', 1);
INSERT INTO `oc_zone` VALUES(1714, 108, 'Ma''an', 'MA', 1);
INSERT INTO `oc_zone` VALUES(1715, 108, 'Madaba', 'MD', 1);
INSERT INTO `oc_zone` VALUES(1716, 109, 'Almaty', 'AL', 1);
INSERT INTO `oc_zone` VALUES(1717, 109, 'Almaty City', 'AC', 1);
INSERT INTO `oc_zone` VALUES(1718, 109, 'Aqmola', 'AM', 1);
INSERT INTO `oc_zone` VALUES(1719, 109, 'Aqtobe', 'AQ', 1);
INSERT INTO `oc_zone` VALUES(1720, 109, 'Astana City', 'AS', 1);
INSERT INTO `oc_zone` VALUES(1721, 109, 'Atyrau', 'AT', 1);
INSERT INTO `oc_zone` VALUES(1722, 109, 'Batys Qazaqstan', 'BA', 1);
INSERT INTO `oc_zone` VALUES(1723, 109, 'Bayqongyr City', 'BY', 1);
INSERT INTO `oc_zone` VALUES(1724, 109, 'Mangghystau', 'MA', 1);
INSERT INTO `oc_zone` VALUES(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1);
INSERT INTO `oc_zone` VALUES(1726, 109, 'Pavlodar', 'PA', 1);
INSERT INTO `oc_zone` VALUES(1727, 109, 'Qaraghandy', 'QA', 1);
INSERT INTO `oc_zone` VALUES(1728, 109, 'Qostanay', 'QO', 1);
INSERT INTO `oc_zone` VALUES(1729, 109, 'Qyzylorda', 'QY', 1);
INSERT INTO `oc_zone` VALUES(1730, 109, 'Shyghys Qazaqstan', 'SH', 1);
INSERT INTO `oc_zone` VALUES(1731, 109, 'Soltustik Qazaqstan', 'SO', 1);
INSERT INTO `oc_zone` VALUES(1732, 109, 'Zhambyl', 'ZH', 1);
INSERT INTO `oc_zone` VALUES(1733, 110, 'Central', 'CE', 1);
INSERT INTO `oc_zone` VALUES(1734, 110, 'Coast', 'CO', 1);
INSERT INTO `oc_zone` VALUES(1735, 110, 'Eastern', 'EA', 1);
INSERT INTO `oc_zone` VALUES(1736, 110, 'Nairobi Area', 'NA', 1);
INSERT INTO `oc_zone` VALUES(1737, 110, 'North Eastern', 'NE', 1);
INSERT INTO `oc_zone` VALUES(1738, 110, 'Nyanza', 'NY', 1);
INSERT INTO `oc_zone` VALUES(1739, 110, 'Rift Valley', 'RV', 1);
INSERT INTO `oc_zone` VALUES(1740, 110, 'Western', 'WE', 1);
INSERT INTO `oc_zone` VALUES(1741, 111, 'Abaiang', 'AG', 1);
INSERT INTO `oc_zone` VALUES(1742, 111, 'Abemama', 'AM', 1);
INSERT INTO `oc_zone` VALUES(1743, 111, 'Aranuka', 'AK', 1);
INSERT INTO `oc_zone` VALUES(1744, 111, 'Arorae', 'AO', 1);
INSERT INTO `oc_zone` VALUES(1745, 111, 'Banaba', 'BA', 1);
INSERT INTO `oc_zone` VALUES(1746, 111, 'Beru', 'BE', 1);
INSERT INTO `oc_zone` VALUES(1747, 111, 'Butaritari', 'bT', 1);
INSERT INTO `oc_zone` VALUES(1748, 111, 'Kanton', 'KA', 1);
INSERT INTO `oc_zone` VALUES(1749, 111, 'Kiritimati', 'KR', 1);
INSERT INTO `oc_zone` VALUES(1750, 111, 'Kuria', 'KU', 1);
INSERT INTO `oc_zone` VALUES(1751, 111, 'Maiana', 'MI', 1);
INSERT INTO `oc_zone` VALUES(1752, 111, 'Makin', 'MN', 1);
INSERT INTO `oc_zone` VALUES(1753, 111, 'Marakei', 'ME', 1);
INSERT INTO `oc_zone` VALUES(1754, 111, 'Nikunau', 'NI', 1);
INSERT INTO `oc_zone` VALUES(1755, 111, 'Nonouti', 'NO', 1);
INSERT INTO `oc_zone` VALUES(1756, 111, 'Onotoa', 'ON', 1);
INSERT INTO `oc_zone` VALUES(1757, 111, 'Tabiteuea', 'TT', 1);
INSERT INTO `oc_zone` VALUES(1758, 111, 'Tabuaeran', 'TR', 1);
INSERT INTO `oc_zone` VALUES(1759, 111, 'Tamana', 'TM', 1);
INSERT INTO `oc_zone` VALUES(1760, 111, 'Tarawa', 'TW', 1);
INSERT INTO `oc_zone` VALUES(1761, 111, 'Teraina', 'TE', 1);
INSERT INTO `oc_zone` VALUES(1762, 112, 'Chagang-do', 'CHA', 1);
INSERT INTO `oc_zone` VALUES(1763, 112, 'Hamgyong-bukto', 'HAB', 1);
INSERT INTO `oc_zone` VALUES(1764, 112, 'Hamgyong-namdo', 'HAN', 1);
INSERT INTO `oc_zone` VALUES(1765, 112, 'Hwanghae-bukto', 'HWB', 1);
INSERT INTO `oc_zone` VALUES(1766, 112, 'Hwanghae-namdo', 'HWN', 1);
INSERT INTO `oc_zone` VALUES(1767, 112, 'Kangwon-do', 'KAN', 1);
INSERT INTO `oc_zone` VALUES(1768, 112, 'P''yongan-bukto', 'PYB', 1);
INSERT INTO `oc_zone` VALUES(1769, 112, 'P''yongan-namdo', 'PYN', 1);
INSERT INTO `oc_zone` VALUES(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1);
INSERT INTO `oc_zone` VALUES(1771, 112, 'Rason Directly Governed City', 'NAJ', 1);
INSERT INTO `oc_zone` VALUES(1772, 112, 'P''yongyang Special City', 'PYO', 1);
INSERT INTO `oc_zone` VALUES(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1);
INSERT INTO `oc_zone` VALUES(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1);
INSERT INTO `oc_zone` VALUES(1775, 113, 'Cheju-do', 'CD', 1);
INSERT INTO `oc_zone` VALUES(1776, 113, 'Cholla-bukto', 'CB', 1);
INSERT INTO `oc_zone` VALUES(1777, 113, 'Cholla-namdo', 'CN', 1);
INSERT INTO `oc_zone` VALUES(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1);
INSERT INTO `oc_zone` VALUES(1779, 113, 'Kangwon-do', 'KA', 1);
INSERT INTO `oc_zone` VALUES(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1);
INSERT INTO `oc_zone` VALUES(1781, 113, 'Kyonggi-do', 'KD', 1);
INSERT INTO `oc_zone` VALUES(1782, 113, 'Kyongsang-bukto', 'KB', 1);
INSERT INTO `oc_zone` VALUES(1783, 113, 'Kyongsang-namdo', 'KN', 1);
INSERT INTO `oc_zone` VALUES(1784, 113, 'Pusan-gwangyoksi', 'PG', 1);
INSERT INTO `oc_zone` VALUES(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1);
INSERT INTO `oc_zone` VALUES(1786, 113, 'Taegu-gwangyoksi', 'TA', 1);
INSERT INTO `oc_zone` VALUES(1787, 113, 'Taejon-gwangyoksi', 'TG', 1);
INSERT INTO `oc_zone` VALUES(1788, 114, 'Al ''Asimah', 'AL', 1);
INSERT INTO `oc_zone` VALUES(1789, 114, 'Al Ahmadi', 'AA', 1);
INSERT INTO `oc_zone` VALUES(1790, 114, 'Al Farwaniyah', 'AF', 1);
INSERT INTO `oc_zone` VALUES(1791, 114, 'Al Jahra''', 'AJ', 1);
INSERT INTO `oc_zone` VALUES(1792, 114, 'Hawalli', 'HA', 1);
INSERT INTO `oc_zone` VALUES(1793, 115, 'Bishkek', 'GB', 1);
INSERT INTO `oc_zone` VALUES(1794, 115, 'Batken', 'B', 1);
INSERT INTO `oc_zone` VALUES(1795, 115, 'Chu', 'C', 1);
INSERT INTO `oc_zone` VALUES(1796, 115, 'Jalal-Abad', 'J', 1);
INSERT INTO `oc_zone` VALUES(1797, 115, 'Naryn', 'N', 1);
INSERT INTO `oc_zone` VALUES(1798, 115, 'Osh', 'O', 1);
INSERT INTO `oc_zone` VALUES(1799, 115, 'Talas', 'T', 1);
INSERT INTO `oc_zone` VALUES(1800, 115, 'Ysyk-Kol', 'Y', 1);
INSERT INTO `oc_zone` VALUES(1801, 116, 'Vientiane', 'VT', 1);
INSERT INTO `oc_zone` VALUES(1802, 116, 'Attapu', 'AT', 1);
INSERT INTO `oc_zone` VALUES(1803, 116, 'Bokeo', 'BK', 1);
INSERT INTO `oc_zone` VALUES(1804, 116, 'Bolikhamxai', 'BL', 1);
INSERT INTO `oc_zone` VALUES(1805, 116, 'Champasak', 'CH', 1);
INSERT INTO `oc_zone` VALUES(1806, 116, 'Houaphan', 'HO', 1);
INSERT INTO `oc_zone` VALUES(1807, 116, 'Khammouan', 'KH', 1);
INSERT INTO `oc_zone` VALUES(1808, 116, 'Louang Namtha', 'LM', 1);
INSERT INTO `oc_zone` VALUES(1809, 116, 'Louangphabang', 'LP', 1);
INSERT INTO `oc_zone` VALUES(1810, 116, 'Oudomxai', 'OU', 1);
INSERT INTO `oc_zone` VALUES(1811, 116, 'Phongsali', 'PH', 1);
INSERT INTO `oc_zone` VALUES(1812, 116, 'Salavan', 'SL', 1);
INSERT INTO `oc_zone` VALUES(1813, 116, 'Savannakhet', 'SV', 1);
INSERT INTO `oc_zone` VALUES(1814, 116, 'Vientiane', 'VI', 1);
INSERT INTO `oc_zone` VALUES(1815, 116, 'Xaignabouli', 'XA', 1);
INSERT INTO `oc_zone` VALUES(1816, 116, 'Xekong', 'XE', 1);
INSERT INTO `oc_zone` VALUES(1817, 116, 'Xiangkhoang', 'XI', 1);
INSERT INTO `oc_zone` VALUES(1818, 116, 'Xaisomboun', 'XN', 1);
INSERT INTO `oc_zone` VALUES(1819, 117, 'Aizkraukles Rajons', 'AIZ', 1);
INSERT INTO `oc_zone` VALUES(1820, 117, 'Aluksnes Rajons', 'ALU', 1);
INSERT INTO `oc_zone` VALUES(1821, 117, 'Balvu Rajons', 'BAL', 1);
INSERT INTO `oc_zone` VALUES(1822, 117, 'Bauskas Rajons', 'BAU', 1);
INSERT INTO `oc_zone` VALUES(1823, 117, 'Cesu Rajons', 'CES', 1);
INSERT INTO `oc_zone` VALUES(1824, 117, 'Daugavpils Rajons', 'DGR', 1);
INSERT INTO `oc_zone` VALUES(1825, 117, 'Dobeles Rajons', 'DOB', 1);
INSERT INTO `oc_zone` VALUES(1826, 117, 'Gulbenes Rajons', 'GUL', 1);
INSERT INTO `oc_zone` VALUES(1827, 117, 'Jekabpils Rajons', 'JEK', 1);
INSERT INTO `oc_zone` VALUES(1828, 117, 'Jelgavas Rajons', 'JGR', 1);
INSERT INTO `oc_zone` VALUES(1829, 117, 'Kraslavas Rajons', 'KRA', 1);
INSERT INTO `oc_zone` VALUES(1830, 117, 'Kuldigas Rajons', 'KUL', 1);
INSERT INTO `oc_zone` VALUES(1831, 117, 'Liepajas Rajons', 'LPR', 1);
INSERT INTO `oc_zone` VALUES(1832, 117, 'Limbazu Rajons', 'LIM', 1);
INSERT INTO `oc_zone` VALUES(1833, 117, 'Ludzas Rajons', 'LUD', 1);
INSERT INTO `oc_zone` VALUES(1834, 117, 'Madonas Rajons', 'MAD', 1);
INSERT INTO `oc_zone` VALUES(1835, 117, 'Ogres Rajons', 'OGR', 1);
INSERT INTO `oc_zone` VALUES(1836, 117, 'Preilu Rajons', 'PRE', 1);
INSERT INTO `oc_zone` VALUES(1837, 117, 'Rezeknes Rajons', 'RZR', 1);
INSERT INTO `oc_zone` VALUES(1838, 117, 'Rigas Rajons', 'RGR', 1);
INSERT INTO `oc_zone` VALUES(1839, 117, 'Saldus Rajons', 'SAL', 1);
INSERT INTO `oc_zone` VALUES(1840, 117, 'Talsu Rajons', 'TAL', 1);
INSERT INTO `oc_zone` VALUES(1841, 117, 'Tukuma Rajons', 'TUK', 1);
INSERT INTO `oc_zone` VALUES(1842, 117, 'Valkas Rajons', 'VLK', 1);
INSERT INTO `oc_zone` VALUES(1843, 117, 'Valmieras Rajons', 'VLM', 1);
INSERT INTO `oc_zone` VALUES(1844, 117, 'Ventspils Rajons', 'VSR', 1);
INSERT INTO `oc_zone` VALUES(1845, 117, 'Daugavpils', 'DGV', 1);
INSERT INTO `oc_zone` VALUES(1846, 117, 'Jelgava', 'JGV', 1);
INSERT INTO `oc_zone` VALUES(1847, 117, 'Jurmala', 'JUR', 1);
INSERT INTO `oc_zone` VALUES(1848, 117, 'Liepaja', 'LPK', 1);
INSERT INTO `oc_zone` VALUES(1849, 117, 'Rezekne', 'RZK', 1);
INSERT INTO `oc_zone` VALUES(1850, 117, 'Riga', 'RGA', 1);
INSERT INTO `oc_zone` VALUES(1851, 117, 'Ventspils', 'VSL', 1);
INSERT INTO `oc_zone` VALUES(1852, 119, 'Berea', 'BE', 1);
INSERT INTO `oc_zone` VALUES(1853, 119, 'Butha-Buthe', 'BB', 1);
INSERT INTO `oc_zone` VALUES(1854, 119, 'Leribe', 'LE', 1);
INSERT INTO `oc_zone` VALUES(1855, 119, 'Mafeteng', 'MF', 1);
INSERT INTO `oc_zone` VALUES(1856, 119, 'Maseru', 'MS', 1);
INSERT INTO `oc_zone` VALUES(1857, 119, 'Mohale''s Hoek', 'MH', 1);
INSERT INTO `oc_zone` VALUES(1858, 119, 'Mokhotlong', 'MK', 1);
INSERT INTO `oc_zone` VALUES(1859, 119, 'Qacha''s Nek', 'QN', 1);
INSERT INTO `oc_zone` VALUES(1860, 119, 'Quthing', 'QT', 1);
INSERT INTO `oc_zone` VALUES(1861, 119, 'Thaba-Tseka', 'TT', 1);
INSERT INTO `oc_zone` VALUES(1862, 120, 'Bomi', 'BI', 1);
INSERT INTO `oc_zone` VALUES(1863, 120, 'Bong', 'BG', 1);
INSERT INTO `oc_zone` VALUES(1864, 120, 'Grand Bassa', 'GB', 1);
INSERT INTO `oc_zone` VALUES(1865, 120, 'Grand Cape Mount', 'CM', 1);
INSERT INTO `oc_zone` VALUES(1866, 120, 'Grand Gedeh', 'GG', 1);
INSERT INTO `oc_zone` VALUES(1867, 120, 'Grand Kru', 'GK', 1);
INSERT INTO `oc_zone` VALUES(1868, 120, 'Lofa', 'LO', 1);
INSERT INTO `oc_zone` VALUES(1869, 120, 'Margibi', 'MG', 1);
INSERT INTO `oc_zone` VALUES(1870, 120, 'Maryland', 'ML', 1);
INSERT INTO `oc_zone` VALUES(1871, 120, 'Montserrado', 'MS', 1);
INSERT INTO `oc_zone` VALUES(1872, 120, 'Nimba', 'NB', 1);
INSERT INTO `oc_zone` VALUES(1873, 120, 'River Cess', 'RC', 1);
INSERT INTO `oc_zone` VALUES(1874, 120, 'Sinoe', 'SN', 1);
INSERT INTO `oc_zone` VALUES(1875, 121, 'Ajdabiya', 'AJ', 1);
INSERT INTO `oc_zone` VALUES(1876, 121, 'Al ''Aziziyah', 'AZ', 1);
INSERT INTO `oc_zone` VALUES(1877, 121, 'Al Fatih', 'FA', 1);
INSERT INTO `oc_zone` VALUES(1878, 121, 'Al Jabal al Akhdar', 'JA', 1);
INSERT INTO `oc_zone` VALUES(1879, 121, 'Al Jufrah', 'JU', 1);
INSERT INTO `oc_zone` VALUES(1880, 121, 'Al Khums', 'KH', 1);
INSERT INTO `oc_zone` VALUES(1881, 121, 'Al Kufrah', 'KU', 1);
INSERT INTO `oc_zone` VALUES(1882, 121, 'An Nuqat al Khams', 'NK', 1);
INSERT INTO `oc_zone` VALUES(1883, 121, 'Ash Shati''', 'AS', 1);
INSERT INTO `oc_zone` VALUES(1884, 121, 'Awbari', 'AW', 1);
INSERT INTO `oc_zone` VALUES(1885, 121, 'Az Zawiyah', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(1886, 121, 'Banghazi', 'BA', 1);
INSERT INTO `oc_zone` VALUES(1887, 121, 'Darnah', 'DA', 1);
INSERT INTO `oc_zone` VALUES(1888, 121, 'Ghadamis', 'GD', 1);
INSERT INTO `oc_zone` VALUES(1889, 121, 'Gharyan', 'GY', 1);
INSERT INTO `oc_zone` VALUES(1890, 121, 'Misratah', 'MI', 1);
INSERT INTO `oc_zone` VALUES(1891, 121, 'Murzuq', 'MZ', 1);
INSERT INTO `oc_zone` VALUES(1892, 121, 'Sabha', 'SB', 1);
INSERT INTO `oc_zone` VALUES(1893, 121, 'Sawfajjin', 'SW', 1);
INSERT INTO `oc_zone` VALUES(1894, 121, 'Surt', 'SU', 1);
INSERT INTO `oc_zone` VALUES(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1);
INSERT INTO `oc_zone` VALUES(1896, 121, 'Tarhunah', 'TH', 1);
INSERT INTO `oc_zone` VALUES(1897, 121, 'Tubruq', 'TU', 1);
INSERT INTO `oc_zone` VALUES(1898, 121, 'Yafran', 'YA', 1);
INSERT INTO `oc_zone` VALUES(1899, 121, 'Zlitan', 'ZL', 1);
INSERT INTO `oc_zone` VALUES(1900, 122, 'Vaduz', 'V', 1);
INSERT INTO `oc_zone` VALUES(1901, 122, 'Schaan', 'A', 1);
INSERT INTO `oc_zone` VALUES(1902, 122, 'Balzers', 'B', 1);
INSERT INTO `oc_zone` VALUES(1903, 122, 'Triesen', 'N', 1);
INSERT INTO `oc_zone` VALUES(1904, 122, 'Eschen', 'E', 1);
INSERT INTO `oc_zone` VALUES(1905, 122, 'Mauren', 'M', 1);
INSERT INTO `oc_zone` VALUES(1906, 122, 'Triesenberg', 'T', 1);
INSERT INTO `oc_zone` VALUES(1907, 122, 'Ruggell', 'R', 1);
INSERT INTO `oc_zone` VALUES(1908, 122, 'Gamprin', 'G', 1);
INSERT INTO `oc_zone` VALUES(1909, 122, 'Schellenberg', 'L', 1);
INSERT INTO `oc_zone` VALUES(1910, 122, 'Planken', 'P', 1);
INSERT INTO `oc_zone` VALUES(1911, 123, 'Alytus', 'AL', 1);
INSERT INTO `oc_zone` VALUES(1912, 123, 'Kaunas', 'KA', 1);
INSERT INTO `oc_zone` VALUES(1913, 123, 'Klaipeda', 'KL', 1);
INSERT INTO `oc_zone` VALUES(1914, 123, 'Marijampole', 'MA', 1);
INSERT INTO `oc_zone` VALUES(1915, 123, 'Panevezys', 'PA', 1);
INSERT INTO `oc_zone` VALUES(1916, 123, 'Siauliai', 'SI', 1);
INSERT INTO `oc_zone` VALUES(1917, 123, 'Taurage', 'TA', 1);
INSERT INTO `oc_zone` VALUES(1918, 123, 'Telsiai', 'TE', 1);
INSERT INTO `oc_zone` VALUES(1919, 123, 'Utena', 'UT', 1);
INSERT INTO `oc_zone` VALUES(1920, 123, 'Vilnius', 'VI', 1);
INSERT INTO `oc_zone` VALUES(1921, 124, 'Diekirch', 'DD', 1);
INSERT INTO `oc_zone` VALUES(1922, 124, 'Clervaux', 'DC', 1);
INSERT INTO `oc_zone` VALUES(1923, 124, 'Redange', 'DR', 1);
INSERT INTO `oc_zone` VALUES(1924, 124, 'Vianden', 'DV', 1);
INSERT INTO `oc_zone` VALUES(1925, 124, 'Wiltz', 'DW', 1);
INSERT INTO `oc_zone` VALUES(1926, 124, 'Grevenmacher', 'GG', 1);
INSERT INTO `oc_zone` VALUES(1927, 124, 'Echternach', 'GE', 1);
INSERT INTO `oc_zone` VALUES(1928, 124, 'Remich', 'GR', 1);
INSERT INTO `oc_zone` VALUES(1929, 124, 'Luxembourg', 'LL', 1);
INSERT INTO `oc_zone` VALUES(1930, 124, 'Capellen', 'LC', 1);
INSERT INTO `oc_zone` VALUES(1931, 124, 'Esch-sur-Alzette', 'LE', 1);
INSERT INTO `oc_zone` VALUES(1932, 124, 'Mersch', 'LM', 1);
INSERT INTO `oc_zone` VALUES(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1);
INSERT INTO `oc_zone` VALUES(1934, 125, 'St. Anthony Parish', 'ANT', 1);
INSERT INTO `oc_zone` VALUES(1935, 125, 'St. Lazarus Parish', 'LAZ', 1);
INSERT INTO `oc_zone` VALUES(1936, 125, 'Cathedral Parish', 'CAT', 1);
INSERT INTO `oc_zone` VALUES(1937, 125, 'St. Lawrence Parish', 'LAW', 1);
INSERT INTO `oc_zone` VALUES(1938, 127, 'Antananarivo', 'AN', 1);
INSERT INTO `oc_zone` VALUES(1939, 127, 'Antsiranana', 'AS', 1);
INSERT INTO `oc_zone` VALUES(1940, 127, 'Fianarantsoa', 'FN', 1);
INSERT INTO `oc_zone` VALUES(1941, 127, 'Mahajanga', 'MJ', 1);
INSERT INTO `oc_zone` VALUES(1942, 127, 'Toamasina', 'TM', 1);
INSERT INTO `oc_zone` VALUES(1943, 127, 'Toliara', 'TL', 1);
INSERT INTO `oc_zone` VALUES(1944, 128, 'Balaka', 'BLK', 1);
INSERT INTO `oc_zone` VALUES(1945, 128, 'Blantyre', 'BLT', 1);
INSERT INTO `oc_zone` VALUES(1946, 128, 'Chikwawa', 'CKW', 1);
INSERT INTO `oc_zone` VALUES(1947, 128, 'Chiradzulu', 'CRD', 1);
INSERT INTO `oc_zone` VALUES(1948, 128, 'Chitipa', 'CTP', 1);
INSERT INTO `oc_zone` VALUES(1949, 128, 'Dedza', 'DDZ', 1);
INSERT INTO `oc_zone` VALUES(1950, 128, 'Dowa', 'DWA', 1);
INSERT INTO `oc_zone` VALUES(1951, 128, 'Karonga', 'KRG', 1);
INSERT INTO `oc_zone` VALUES(1952, 128, 'Kasungu', 'KSG', 1);
INSERT INTO `oc_zone` VALUES(1953, 128, 'Likoma', 'LKM', 1);
INSERT INTO `oc_zone` VALUES(1954, 128, 'Lilongwe', 'LLG', 1);
INSERT INTO `oc_zone` VALUES(1955, 128, 'Machinga', 'MCG', 1);
INSERT INTO `oc_zone` VALUES(1956, 128, 'Mangochi', 'MGC', 1);
INSERT INTO `oc_zone` VALUES(1957, 128, 'Mchinji', 'MCH', 1);
INSERT INTO `oc_zone` VALUES(1958, 128, 'Mulanje', 'MLJ', 1);
INSERT INTO `oc_zone` VALUES(1959, 128, 'Mwanza', 'MWZ', 1);
INSERT INTO `oc_zone` VALUES(1960, 128, 'Mzimba', 'MZM', 1);
INSERT INTO `oc_zone` VALUES(1961, 128, 'Ntcheu', 'NTU', 1);
INSERT INTO `oc_zone` VALUES(1962, 128, 'Nkhata Bay', 'NKB', 1);
INSERT INTO `oc_zone` VALUES(1963, 128, 'Nkhotakota', 'NKH', 1);
INSERT INTO `oc_zone` VALUES(1964, 128, 'Nsanje', 'NSJ', 1);
INSERT INTO `oc_zone` VALUES(1965, 128, 'Ntchisi', 'NTI', 1);
INSERT INTO `oc_zone` VALUES(1966, 128, 'Phalombe', 'PHL', 1);
INSERT INTO `oc_zone` VALUES(1967, 128, 'Rumphi', 'RMP', 1);
INSERT INTO `oc_zone` VALUES(1968, 128, 'Salima', 'SLM', 1);
INSERT INTO `oc_zone` VALUES(1969, 128, 'Thyolo', 'THY', 1);
INSERT INTO `oc_zone` VALUES(1970, 128, 'Zomba', 'ZBA', 1);
INSERT INTO `oc_zone` VALUES(1971, 129, 'Johor', 'JO', 1);
INSERT INTO `oc_zone` VALUES(1972, 129, 'Kedah', 'KE', 1);
INSERT INTO `oc_zone` VALUES(1973, 129, 'Kelantan', 'KL', 1);
INSERT INTO `oc_zone` VALUES(1974, 129, 'Labuan', 'LA', 1);
INSERT INTO `oc_zone` VALUES(1975, 129, 'Melaka', 'ME', 1);
INSERT INTO `oc_zone` VALUES(1976, 129, 'Negeri Sembilan', 'NS', 1);
INSERT INTO `oc_zone` VALUES(1977, 129, 'Pahang', 'PA', 1);
INSERT INTO `oc_zone` VALUES(1978, 129, 'Perak', 'PE', 1);
INSERT INTO `oc_zone` VALUES(1979, 129, 'Perlis', 'PR', 1);
INSERT INTO `oc_zone` VALUES(1980, 129, 'Pulau Pinang', 'PP', 1);
INSERT INTO `oc_zone` VALUES(1981, 129, 'Sabah', 'SA', 1);
INSERT INTO `oc_zone` VALUES(1982, 129, 'Sarawak', 'SR', 1);
INSERT INTO `oc_zone` VALUES(1983, 129, 'Selangor', 'SE', 1);
INSERT INTO `oc_zone` VALUES(1984, 129, 'Terengganu', 'TE', 1);
INSERT INTO `oc_zone` VALUES(1985, 129, 'Wilayah Persekutuan', 'WP', 1);
INSERT INTO `oc_zone` VALUES(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1);
INSERT INTO `oc_zone` VALUES(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1);
INSERT INTO `oc_zone` VALUES(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1);
INSERT INTO `oc_zone` VALUES(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1);
INSERT INTO `oc_zone` VALUES(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1);
INSERT INTO `oc_zone` VALUES(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1);
INSERT INTO `oc_zone` VALUES(1992, 130, 'Faadhippolhu', 'FAA', 1);
INSERT INTO `oc_zone` VALUES(1993, 130, 'Male Atoll', 'MAA', 1);
INSERT INTO `oc_zone` VALUES(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1);
INSERT INTO `oc_zone` VALUES(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1);
INSERT INTO `oc_zone` VALUES(1996, 130, 'Felidhe Atoll', 'FEA', 1);
INSERT INTO `oc_zone` VALUES(1997, 130, 'Mulaku Atoll', 'MUA', 1);
INSERT INTO `oc_zone` VALUES(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1);
INSERT INTO `oc_zone` VALUES(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1);
INSERT INTO `oc_zone` VALUES(2000, 130, 'Kolhumadulu', 'KLH', 1);
INSERT INTO `oc_zone` VALUES(2001, 130, 'Hadhdhunmathi', 'HDH', 1);
INSERT INTO `oc_zone` VALUES(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1);
INSERT INTO `oc_zone` VALUES(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1);
INSERT INTO `oc_zone` VALUES(2004, 130, 'Fua Mulaku', 'FMU', 1);
INSERT INTO `oc_zone` VALUES(2005, 130, 'Addu', 'ADD', 1);
INSERT INTO `oc_zone` VALUES(2006, 131, 'Gao', 'GA', 1);
INSERT INTO `oc_zone` VALUES(2007, 131, 'Kayes', 'KY', 1);
INSERT INTO `oc_zone` VALUES(2008, 131, 'Kidal', 'KD', 1);
INSERT INTO `oc_zone` VALUES(2009, 131, 'Koulikoro', 'KL', 1);
INSERT INTO `oc_zone` VALUES(2010, 131, 'Mopti', 'MP', 1);
INSERT INTO `oc_zone` VALUES(2011, 131, 'Segou', 'SG', 1);
INSERT INTO `oc_zone` VALUES(2012, 131, 'Sikasso', 'SK', 1);
INSERT INTO `oc_zone` VALUES(2013, 131, 'Tombouctou', 'TB', 1);
INSERT INTO `oc_zone` VALUES(2014, 131, 'Bamako Capital District', 'CD', 1);
INSERT INTO `oc_zone` VALUES(2015, 132, 'Attard', 'ATT', 1);
INSERT INTO `oc_zone` VALUES(2016, 132, 'Balzan', 'BAL', 1);
INSERT INTO `oc_zone` VALUES(2017, 132, 'Birgu', 'BGU', 1);
INSERT INTO `oc_zone` VALUES(2018, 132, 'Birkirkara', 'BKK', 1);
INSERT INTO `oc_zone` VALUES(2019, 132, 'Birzebbuga', 'BRZ', 1);
INSERT INTO `oc_zone` VALUES(2020, 132, 'Bormla', 'BOR', 1);
INSERT INTO `oc_zone` VALUES(2021, 132, 'Dingli', 'DIN', 1);
INSERT INTO `oc_zone` VALUES(2022, 132, 'Fgura', 'FGU', 1);
INSERT INTO `oc_zone` VALUES(2023, 132, 'Floriana', 'FLO', 1);
INSERT INTO `oc_zone` VALUES(2024, 132, 'Gudja', 'GDJ', 1);
INSERT INTO `oc_zone` VALUES(2025, 132, 'Gzira', 'GZR', 1);
INSERT INTO `oc_zone` VALUES(2026, 132, 'Gargur', 'GRG', 1);
INSERT INTO `oc_zone` VALUES(2027, 132, 'Gaxaq', 'GXQ', 1);
INSERT INTO `oc_zone` VALUES(2028, 132, 'Hamrun', 'HMR', 1);
INSERT INTO `oc_zone` VALUES(2029, 132, 'Iklin', 'IKL', 1);
INSERT INTO `oc_zone` VALUES(2030, 132, 'Isla', 'ISL', 1);
INSERT INTO `oc_zone` VALUES(2031, 132, 'Kalkara', 'KLK', 1);
INSERT INTO `oc_zone` VALUES(2032, 132, 'Kirkop', 'KRK', 1);
INSERT INTO `oc_zone` VALUES(2033, 132, 'Lija', 'LIJ', 1);
INSERT INTO `oc_zone` VALUES(2034, 132, 'Luqa', 'LUQ', 1);
INSERT INTO `oc_zone` VALUES(2035, 132, 'Marsa', 'MRS', 1);
INSERT INTO `oc_zone` VALUES(2036, 132, 'Marsaskala', 'MKL', 1);
INSERT INTO `oc_zone` VALUES(2037, 132, 'Marsaxlokk', 'MXL', 1);
INSERT INTO `oc_zone` VALUES(2038, 132, 'Mdina', 'MDN', 1);
INSERT INTO `oc_zone` VALUES(2039, 132, 'Melliea', 'MEL', 1);
INSERT INTO `oc_zone` VALUES(2040, 132, 'Mgarr', 'MGR', 1);
INSERT INTO `oc_zone` VALUES(2041, 132, 'Mosta', 'MST', 1);
INSERT INTO `oc_zone` VALUES(2042, 132, 'Mqabba', 'MQA', 1);
INSERT INTO `oc_zone` VALUES(2043, 132, 'Msida', 'MSI', 1);
INSERT INTO `oc_zone` VALUES(2044, 132, 'Mtarfa', 'MTF', 1);
INSERT INTO `oc_zone` VALUES(2045, 132, 'Naxxar', 'NAX', 1);
INSERT INTO `oc_zone` VALUES(2046, 132, 'Paola', 'PAO', 1);
INSERT INTO `oc_zone` VALUES(2047, 132, 'Pembroke', 'PEM', 1);
INSERT INTO `oc_zone` VALUES(2048, 132, 'Pieta', 'PIE', 1);
INSERT INTO `oc_zone` VALUES(2049, 132, 'Qormi', 'QOR', 1);
INSERT INTO `oc_zone` VALUES(2050, 132, 'Qrendi', 'QRE', 1);
INSERT INTO `oc_zone` VALUES(2051, 132, 'Rabat', 'RAB', 1);
INSERT INTO `oc_zone` VALUES(2052, 132, 'Safi', 'SAF', 1);
INSERT INTO `oc_zone` VALUES(2053, 132, 'San Giljan', 'SGI', 1);
INSERT INTO `oc_zone` VALUES(2054, 132, 'Santa Lucija', 'SLU', 1);
INSERT INTO `oc_zone` VALUES(2055, 132, 'San Pawl il-Bahar', 'SPB', 1);
INSERT INTO `oc_zone` VALUES(2056, 132, 'San Gwann', 'SGW', 1);
INSERT INTO `oc_zone` VALUES(2057, 132, 'Santa Venera', 'SVE', 1);
INSERT INTO `oc_zone` VALUES(2058, 132, 'Siggiewi', 'SIG', 1);
INSERT INTO `oc_zone` VALUES(2059, 132, 'Sliema', 'SLM', 1);
INSERT INTO `oc_zone` VALUES(2060, 132, 'Swieqi', 'SWQ', 1);
INSERT INTO `oc_zone` VALUES(2061, 132, 'Ta Xbiex', 'TXB', 1);
INSERT INTO `oc_zone` VALUES(2062, 132, 'Tarxien', 'TRX', 1);
INSERT INTO `oc_zone` VALUES(2063, 132, 'Valletta', 'VLT', 1);
INSERT INTO `oc_zone` VALUES(2064, 132, 'Xgajra', 'XGJ', 1);
INSERT INTO `oc_zone` VALUES(2065, 132, 'Zabbar', 'ZBR', 1);
INSERT INTO `oc_zone` VALUES(2066, 132, 'Zebbug', 'ZBG', 1);
INSERT INTO `oc_zone` VALUES(2067, 132, 'Zejtun', 'ZJT', 1);
INSERT INTO `oc_zone` VALUES(2068, 132, 'Zurrieq', 'ZRQ', 1);
INSERT INTO `oc_zone` VALUES(2069, 132, 'Fontana', 'FNT', 1);
INSERT INTO `oc_zone` VALUES(2070, 132, 'Ghajnsielem', 'GHJ', 1);
INSERT INTO `oc_zone` VALUES(2071, 132, 'Gharb', 'GHR', 1);
INSERT INTO `oc_zone` VALUES(2072, 132, 'Ghasri', 'GHS', 1);
INSERT INTO `oc_zone` VALUES(2073, 132, 'Kercem', 'KRC', 1);
INSERT INTO `oc_zone` VALUES(2074, 132, 'Munxar', 'MUN', 1);
INSERT INTO `oc_zone` VALUES(2075, 132, 'Nadur', 'NAD', 1);
INSERT INTO `oc_zone` VALUES(2076, 132, 'Qala', 'QAL', 1);
INSERT INTO `oc_zone` VALUES(2077, 132, 'Victoria', 'VIC', 1);
INSERT INTO `oc_zone` VALUES(2078, 132, 'San Lawrenz', 'SLA', 1);
INSERT INTO `oc_zone` VALUES(2079, 132, 'Sannat', 'SNT', 1);
INSERT INTO `oc_zone` VALUES(2080, 132, 'Xagra', 'ZAG', 1);
INSERT INTO `oc_zone` VALUES(2081, 132, 'Xewkija', 'XEW', 1);
INSERT INTO `oc_zone` VALUES(2082, 132, 'Zebbug', 'ZEB', 1);
INSERT INTO `oc_zone` VALUES(2083, 133, 'Ailinginae', 'ALG', 1);
INSERT INTO `oc_zone` VALUES(2084, 133, 'Ailinglaplap', 'ALL', 1);
INSERT INTO `oc_zone` VALUES(2085, 133, 'Ailuk', 'ALK', 1);
INSERT INTO `oc_zone` VALUES(2086, 133, 'Arno', 'ARN', 1);
INSERT INTO `oc_zone` VALUES(2087, 133, 'Aur', 'AUR', 1);
INSERT INTO `oc_zone` VALUES(2088, 133, 'Bikar', 'BKR', 1);
INSERT INTO `oc_zone` VALUES(2089, 133, 'Bikini', 'BKN', 1);
INSERT INTO `oc_zone` VALUES(2090, 133, 'Bokak', 'BKK', 1);
INSERT INTO `oc_zone` VALUES(2091, 133, 'Ebon', 'EBN', 1);
INSERT INTO `oc_zone` VALUES(2092, 133, 'Enewetak', 'ENT', 1);
INSERT INTO `oc_zone` VALUES(2093, 133, 'Erikub', 'EKB', 1);
INSERT INTO `oc_zone` VALUES(2094, 133, 'Jabat', 'JBT', 1);
INSERT INTO `oc_zone` VALUES(2095, 133, 'Jaluit', 'JLT', 1);
INSERT INTO `oc_zone` VALUES(2096, 133, 'Jemo', 'JEM', 1);
INSERT INTO `oc_zone` VALUES(2097, 133, 'Kili', 'KIL', 1);
INSERT INTO `oc_zone` VALUES(2098, 133, 'Kwajalein', 'KWJ', 1);
INSERT INTO `oc_zone` VALUES(2099, 133, 'Lae', 'LAE', 1);
INSERT INTO `oc_zone` VALUES(2100, 133, 'Lib', 'LIB', 1);
INSERT INTO `oc_zone` VALUES(2101, 133, 'Likiep', 'LKP', 1);
INSERT INTO `oc_zone` VALUES(2102, 133, 'Majuro', 'MJR', 1);
INSERT INTO `oc_zone` VALUES(2103, 133, 'Maloelap', 'MLP', 1);
INSERT INTO `oc_zone` VALUES(2104, 133, 'Mejit', 'MJT', 1);
INSERT INTO `oc_zone` VALUES(2105, 133, 'Mili', 'MIL', 1);
INSERT INTO `oc_zone` VALUES(2106, 133, 'Namorik', 'NMK', 1);
INSERT INTO `oc_zone` VALUES(2107, 133, 'Namu', 'NAM', 1);
INSERT INTO `oc_zone` VALUES(2108, 133, 'Rongelap', 'RGL', 1);
INSERT INTO `oc_zone` VALUES(2109, 133, 'Rongrik', 'RGK', 1);
INSERT INTO `oc_zone` VALUES(2110, 133, 'Toke', 'TOK', 1);
INSERT INTO `oc_zone` VALUES(2111, 133, 'Ujae', 'UJA', 1);
INSERT INTO `oc_zone` VALUES(2112, 133, 'Ujelang', 'UJL', 1);
INSERT INTO `oc_zone` VALUES(2113, 133, 'Utirik', 'UTK', 1);
INSERT INTO `oc_zone` VALUES(2114, 133, 'Wotho', 'WTH', 1);
INSERT INTO `oc_zone` VALUES(2115, 133, 'Wotje', 'WTJ', 1);
INSERT INTO `oc_zone` VALUES(2116, 135, 'Adrar', 'AD', 1);
INSERT INTO `oc_zone` VALUES(2117, 135, 'Assaba', 'AS', 1);
INSERT INTO `oc_zone` VALUES(2118, 135, 'Brakna', 'BR', 1);
INSERT INTO `oc_zone` VALUES(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1);
INSERT INTO `oc_zone` VALUES(2120, 135, 'Gorgol', 'GO', 1);
INSERT INTO `oc_zone` VALUES(2121, 135, 'Guidimaka', 'GM', 1);
INSERT INTO `oc_zone` VALUES(2122, 135, 'Hodh Ech Chargui', 'HC', 1);
INSERT INTO `oc_zone` VALUES(2123, 135, 'Hodh El Gharbi', 'HG', 1);
INSERT INTO `oc_zone` VALUES(2124, 135, 'Inchiri', 'IN', 1);
INSERT INTO `oc_zone` VALUES(2125, 135, 'Tagant', 'TA', 1);
INSERT INTO `oc_zone` VALUES(2126, 135, 'Tiris Zemmour', 'TZ', 1);
INSERT INTO `oc_zone` VALUES(2127, 135, 'Trarza', 'TR', 1);
INSERT INTO `oc_zone` VALUES(2128, 135, 'Nouakchott', 'NO', 1);
INSERT INTO `oc_zone` VALUES(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1);
INSERT INTO `oc_zone` VALUES(2130, 136, 'Curepipe', 'CU', 1);
INSERT INTO `oc_zone` VALUES(2131, 136, 'Port Louis', 'PU', 1);
INSERT INTO `oc_zone` VALUES(2132, 136, 'Quatre Bornes', 'QB', 1);
INSERT INTO `oc_zone` VALUES(2133, 136, 'Vacoas-Phoenix', 'VP', 1);
INSERT INTO `oc_zone` VALUES(2134, 136, 'Agalega Islands', 'AG', 1);
INSERT INTO `oc_zone` VALUES(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1);
INSERT INTO `oc_zone` VALUES(2136, 136, 'Rodrigues', 'RO', 1);
INSERT INTO `oc_zone` VALUES(2137, 136, 'Black River', 'BL', 1);
INSERT INTO `oc_zone` VALUES(2138, 136, 'Flacq', 'FL', 1);
INSERT INTO `oc_zone` VALUES(2139, 136, 'Grand Port', 'GP', 1);
INSERT INTO `oc_zone` VALUES(2140, 136, 'Moka', 'MO', 1);
INSERT INTO `oc_zone` VALUES(2141, 136, 'Pamplemousses', 'PA', 1);
INSERT INTO `oc_zone` VALUES(2142, 136, 'Plaines Wilhems', 'PW', 1);
INSERT INTO `oc_zone` VALUES(2143, 136, 'Port Louis', 'PL', 1);
INSERT INTO `oc_zone` VALUES(2144, 136, 'Riviere du Rempart', 'RR', 1);
INSERT INTO `oc_zone` VALUES(2145, 136, 'Savanne', 'SA', 1);
INSERT INTO `oc_zone` VALUES(2146, 138, 'Baja California Norte', 'BN', 1);
INSERT INTO `oc_zone` VALUES(2147, 138, 'Baja California Sur', 'BS', 1);
INSERT INTO `oc_zone` VALUES(2148, 138, 'Campeche', 'CA', 1);
INSERT INTO `oc_zone` VALUES(2149, 138, 'Chiapas', 'CI', 1);
INSERT INTO `oc_zone` VALUES(2150, 138, 'Chihuahua', 'CH', 1);
INSERT INTO `oc_zone` VALUES(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1);
INSERT INTO `oc_zone` VALUES(2152, 138, 'Colima', 'CL', 1);
INSERT INTO `oc_zone` VALUES(2153, 138, 'Distrito Federal', 'DF', 1);
INSERT INTO `oc_zone` VALUES(2154, 138, 'Durango', 'DU', 1);
INSERT INTO `oc_zone` VALUES(2155, 138, 'Guanajuato', 'GA', 1);
INSERT INTO `oc_zone` VALUES(2156, 138, 'Guerrero', 'GE', 1);
INSERT INTO `oc_zone` VALUES(2157, 138, 'Hidalgo', 'HI', 1);
INSERT INTO `oc_zone` VALUES(2158, 138, 'Jalisco', 'JA', 1);
INSERT INTO `oc_zone` VALUES(2159, 138, 'Mexico', 'ME', 1);
INSERT INTO `oc_zone` VALUES(2160, 138, 'Michoacan de Ocampo', 'MI', 1);
INSERT INTO `oc_zone` VALUES(2161, 138, 'Morelos', 'MO', 1);
INSERT INTO `oc_zone` VALUES(2162, 138, 'Nayarit', 'NA', 1);
INSERT INTO `oc_zone` VALUES(2163, 138, 'Nuevo Leon', 'NL', 1);
INSERT INTO `oc_zone` VALUES(2164, 138, 'Oaxaca', 'OA', 1);
INSERT INTO `oc_zone` VALUES(2165, 138, 'Puebla', 'PU', 1);
INSERT INTO `oc_zone` VALUES(2166, 138, 'Queretaro de Arteaga', 'QA', 1);
INSERT INTO `oc_zone` VALUES(2167, 138, 'Quintana Roo', 'QR', 1);
INSERT INTO `oc_zone` VALUES(2168, 138, 'San Luis Potosi', 'SA', 1);
INSERT INTO `oc_zone` VALUES(2169, 138, 'Sinaloa', 'SI', 1);
INSERT INTO `oc_zone` VALUES(2170, 138, 'Sonora', 'SO', 1);
INSERT INTO `oc_zone` VALUES(2171, 138, 'Tabasco', 'TB', 1);
INSERT INTO `oc_zone` VALUES(2172, 138, 'Tamaulipas', 'TM', 1);
INSERT INTO `oc_zone` VALUES(2173, 138, 'Tlaxcala', 'TL', 1);
INSERT INTO `oc_zone` VALUES(2174, 138, 'Veracruz-Llave', 'VE', 1);
INSERT INTO `oc_zone` VALUES(2175, 138, 'Yucatan', 'YU', 1);
INSERT INTO `oc_zone` VALUES(2176, 138, 'Zacatecas', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(2177, 139, 'Chuuk', 'C', 1);
INSERT INTO `oc_zone` VALUES(2178, 139, 'Kosrae', 'K', 1);
INSERT INTO `oc_zone` VALUES(2179, 139, 'Pohnpei', 'P', 1);
INSERT INTO `oc_zone` VALUES(2180, 139, 'Yap', 'Y', 1);
INSERT INTO `oc_zone` VALUES(2181, 140, 'Gagauzia', 'GA', 1);
INSERT INTO `oc_zone` VALUES(2182, 140, 'Chisinau', 'CU', 1);
INSERT INTO `oc_zone` VALUES(2183, 140, 'Balti', 'BA', 1);
INSERT INTO `oc_zone` VALUES(2184, 140, 'Cahul', 'CA', 1);
INSERT INTO `oc_zone` VALUES(2185, 140, 'Edinet', 'ED', 1);
INSERT INTO `oc_zone` VALUES(2186, 140, 'Lapusna', 'LA', 1);
INSERT INTO `oc_zone` VALUES(2187, 140, 'Orhei', 'OR', 1);
INSERT INTO `oc_zone` VALUES(2188, 140, 'Soroca', 'SO', 1);
INSERT INTO `oc_zone` VALUES(2189, 140, 'Tighina', 'TI', 1);
INSERT INTO `oc_zone` VALUES(2190, 140, 'Ungheni', 'UN', 1);
INSERT INTO `oc_zone` VALUES(2191, 140, 'St‚nga Nistrului', 'SN', 1);
INSERT INTO `oc_zone` VALUES(2192, 141, 'Fontvieille', 'FV', 1);
INSERT INTO `oc_zone` VALUES(2193, 141, 'La Condamine', 'LC', 1);
INSERT INTO `oc_zone` VALUES(2194, 141, 'Monaco-Ville', 'MV', 1);
INSERT INTO `oc_zone` VALUES(2195, 141, 'Monte-Carlo', 'MC', 1);
INSERT INTO `oc_zone` VALUES(2196, 142, 'Ulanbaatar', '1', 1);
INSERT INTO `oc_zone` VALUES(2197, 142, 'Orhon', '035', 1);
INSERT INTO `oc_zone` VALUES(2198, 142, 'Darhan uul', '037', 1);
INSERT INTO `oc_zone` VALUES(2199, 142, 'Hentiy', '039', 1);
INSERT INTO `oc_zone` VALUES(2200, 142, 'Hovsgol', '041', 1);
INSERT INTO `oc_zone` VALUES(2201, 142, 'Hovd', '043', 1);
INSERT INTO `oc_zone` VALUES(2202, 142, 'Uvs', '046', 1);
INSERT INTO `oc_zone` VALUES(2203, 142, 'Tov', '047', 1);
INSERT INTO `oc_zone` VALUES(2204, 142, 'Selenge', '049', 1);
INSERT INTO `oc_zone` VALUES(2205, 142, 'Suhbaatar', '051', 1);
INSERT INTO `oc_zone` VALUES(2206, 142, 'Omnogovi', '053', 1);
INSERT INTO `oc_zone` VALUES(2207, 142, 'Ovorhangay', '055', 1);
INSERT INTO `oc_zone` VALUES(2208, 142, 'Dzavhan', '057', 1);
INSERT INTO `oc_zone` VALUES(2209, 142, 'DundgovL', '059', 1);
INSERT INTO `oc_zone` VALUES(2210, 142, 'Dornod', '061', 1);
INSERT INTO `oc_zone` VALUES(2211, 142, 'Dornogov', '063', 1);
INSERT INTO `oc_zone` VALUES(2212, 142, 'Govi-Sumber', '064', 1);
INSERT INTO `oc_zone` VALUES(2213, 142, 'Govi-Altay', '065', 1);
INSERT INTO `oc_zone` VALUES(2214, 142, 'Bulgan', '067', 1);
INSERT INTO `oc_zone` VALUES(2215, 142, 'Bayanhongor', '069', 1);
INSERT INTO `oc_zone` VALUES(2216, 142, 'Bayan-Olgiy', '071', 1);
INSERT INTO `oc_zone` VALUES(2217, 142, 'Arhangay', '073', 1);
INSERT INTO `oc_zone` VALUES(2218, 143, 'Saint Anthony', 'A', 1);
INSERT INTO `oc_zone` VALUES(2219, 143, 'Saint Georges', 'G', 1);
INSERT INTO `oc_zone` VALUES(2220, 143, 'Saint Peter', 'P', 1);
INSERT INTO `oc_zone` VALUES(2221, 144, 'Agadir', 'AGD', 1);
INSERT INTO `oc_zone` VALUES(2222, 144, 'Al Hoceima', 'HOC', 1);
INSERT INTO `oc_zone` VALUES(2223, 144, 'Azilal', 'AZI', 1);
INSERT INTO `oc_zone` VALUES(2224, 144, 'Beni Mellal', 'BME', 1);
INSERT INTO `oc_zone` VALUES(2225, 144, 'Ben Slimane', 'BSL', 1);
INSERT INTO `oc_zone` VALUES(2226, 144, 'Boulemane', 'BLM', 1);
INSERT INTO `oc_zone` VALUES(2227, 144, 'Casablanca', 'CBL', 1);
INSERT INTO `oc_zone` VALUES(2228, 144, 'Chaouen', 'CHA', 1);
INSERT INTO `oc_zone` VALUES(2229, 144, 'El Jadida', 'EJA', 1);
INSERT INTO `oc_zone` VALUES(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1);
INSERT INTO `oc_zone` VALUES(2231, 144, 'Er Rachidia', 'ERA', 1);
INSERT INTO `oc_zone` VALUES(2232, 144, 'Essaouira', 'ESS', 1);
INSERT INTO `oc_zone` VALUES(2233, 144, 'Fes', 'FES', 1);
INSERT INTO `oc_zone` VALUES(2234, 144, 'Figuig', 'FIG', 1);
INSERT INTO `oc_zone` VALUES(2235, 144, 'Guelmim', 'GLM', 1);
INSERT INTO `oc_zone` VALUES(2236, 144, 'Ifrane', 'IFR', 1);
INSERT INTO `oc_zone` VALUES(2237, 144, 'Kenitra', 'KEN', 1);
INSERT INTO `oc_zone` VALUES(2238, 144, 'Khemisset', 'KHM', 1);
INSERT INTO `oc_zone` VALUES(2239, 144, 'Khenifra', 'KHN', 1);
INSERT INTO `oc_zone` VALUES(2240, 144, 'Khouribga', 'KHO', 1);
INSERT INTO `oc_zone` VALUES(2241, 144, 'Laayoune', 'LYN', 1);
INSERT INTO `oc_zone` VALUES(2242, 144, 'Larache', 'LAR', 1);
INSERT INTO `oc_zone` VALUES(2243, 144, 'Marrakech', 'MRK', 1);
INSERT INTO `oc_zone` VALUES(2244, 144, 'Meknes', 'MKN', 1);
INSERT INTO `oc_zone` VALUES(2245, 144, 'Nador', 'NAD', 1);
INSERT INTO `oc_zone` VALUES(2246, 144, 'Ouarzazate', 'ORZ', 1);
INSERT INTO `oc_zone` VALUES(2247, 144, 'Oujda', 'OUJ', 1);
INSERT INTO `oc_zone` VALUES(2248, 144, 'Rabat-Sale', 'RSA', 1);
INSERT INTO `oc_zone` VALUES(2249, 144, 'Safi', 'SAF', 1);
INSERT INTO `oc_zone` VALUES(2250, 144, 'Settat', 'SET', 1);
INSERT INTO `oc_zone` VALUES(2251, 144, 'Sidi Kacem', 'SKA', 1);
INSERT INTO `oc_zone` VALUES(2252, 144, 'Tangier', 'TGR', 1);
INSERT INTO `oc_zone` VALUES(2253, 144, 'Tan-Tan', 'TAN', 1);
INSERT INTO `oc_zone` VALUES(2254, 144, 'Taounate', 'TAO', 1);
INSERT INTO `oc_zone` VALUES(2255, 144, 'Taroudannt', 'TRD', 1);
INSERT INTO `oc_zone` VALUES(2256, 144, 'Tata', 'TAT', 1);
INSERT INTO `oc_zone` VALUES(2257, 144, 'Taza', 'TAZ', 1);
INSERT INTO `oc_zone` VALUES(2258, 144, 'Tetouan', 'TET', 1);
INSERT INTO `oc_zone` VALUES(2259, 144, 'Tiznit', 'TIZ', 1);
INSERT INTO `oc_zone` VALUES(2260, 144, 'Ad Dakhla', 'ADK', 1);
INSERT INTO `oc_zone` VALUES(2261, 144, 'Boujdour', 'BJD', 1);
INSERT INTO `oc_zone` VALUES(2262, 144, 'Es Smara', 'ESM', 1);
INSERT INTO `oc_zone` VALUES(2263, 145, 'Cabo Delgado', 'CD', 1);
INSERT INTO `oc_zone` VALUES(2264, 145, 'Gaza', 'GZ', 1);
INSERT INTO `oc_zone` VALUES(2265, 145, 'Inhambane', 'IN', 1);
INSERT INTO `oc_zone` VALUES(2266, 145, 'Manica', 'MN', 1);
INSERT INTO `oc_zone` VALUES(2267, 145, 'Maputo (city)', 'MC', 1);
INSERT INTO `oc_zone` VALUES(2268, 145, 'Maputo', 'MP', 1);
INSERT INTO `oc_zone` VALUES(2269, 145, 'Nampula', 'NA', 1);
INSERT INTO `oc_zone` VALUES(2270, 145, 'Niassa', 'NI', 1);
INSERT INTO `oc_zone` VALUES(2271, 145, 'Sofala', 'SO', 1);
INSERT INTO `oc_zone` VALUES(2272, 145, 'Tete', 'TE', 1);
INSERT INTO `oc_zone` VALUES(2273, 145, 'Zambezia', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(2274, 146, 'Ayeyarwady', 'AY', 1);
INSERT INTO `oc_zone` VALUES(2275, 146, 'Bago', 'BG', 1);
INSERT INTO `oc_zone` VALUES(2276, 146, 'Magway', 'MG', 1);
INSERT INTO `oc_zone` VALUES(2277, 146, 'Mandalay', 'MD', 1);
INSERT INTO `oc_zone` VALUES(2278, 146, 'Sagaing', 'SG', 1);
INSERT INTO `oc_zone` VALUES(2279, 146, 'Tanintharyi', 'TN', 1);
INSERT INTO `oc_zone` VALUES(2280, 146, 'Yangon', 'YG', 1);
INSERT INTO `oc_zone` VALUES(2281, 146, 'Chin State', 'CH', 1);
INSERT INTO `oc_zone` VALUES(2282, 146, 'Kachin State', 'KC', 1);
INSERT INTO `oc_zone` VALUES(2283, 146, 'Kayah State', 'KH', 1);
INSERT INTO `oc_zone` VALUES(2284, 146, 'Kayin State', 'KN', 1);
INSERT INTO `oc_zone` VALUES(2285, 146, 'Mon State', 'MN', 1);
INSERT INTO `oc_zone` VALUES(2286, 146, 'Rakhine State', 'RK', 1);
INSERT INTO `oc_zone` VALUES(2287, 146, 'Shan State', 'SH', 1);
INSERT INTO `oc_zone` VALUES(2288, 147, 'Caprivi', 'CA', 1);
INSERT INTO `oc_zone` VALUES(2289, 147, 'Erongo', 'ER', 1);
INSERT INTO `oc_zone` VALUES(2290, 147, 'Hardap', 'HA', 1);
INSERT INTO `oc_zone` VALUES(2291, 147, 'Karas', 'KR', 1);
INSERT INTO `oc_zone` VALUES(2292, 147, 'Kavango', 'KV', 1);
INSERT INTO `oc_zone` VALUES(2293, 147, 'Khomas', 'KH', 1);
INSERT INTO `oc_zone` VALUES(2294, 147, 'Kunene', 'KU', 1);
INSERT INTO `oc_zone` VALUES(2295, 147, 'Ohangwena', 'OW', 1);
INSERT INTO `oc_zone` VALUES(2296, 147, 'Omaheke', 'OK', 1);
INSERT INTO `oc_zone` VALUES(2297, 147, 'Omusati', 'OT', 1);
INSERT INTO `oc_zone` VALUES(2298, 147, 'Oshana', 'ON', 1);
INSERT INTO `oc_zone` VALUES(2299, 147, 'Oshikoto', 'OO', 1);
INSERT INTO `oc_zone` VALUES(2300, 147, 'Otjozondjupa', 'OJ', 1);
INSERT INTO `oc_zone` VALUES(2301, 148, 'Aiwo', 'AO', 1);
INSERT INTO `oc_zone` VALUES(2302, 148, 'Anabar', 'AA', 1);
INSERT INTO `oc_zone` VALUES(2303, 148, 'Anetan', 'AT', 1);
INSERT INTO `oc_zone` VALUES(2304, 148, 'Anibare', 'AI', 1);
INSERT INTO `oc_zone` VALUES(2305, 148, 'Baiti', 'BA', 1);
INSERT INTO `oc_zone` VALUES(2306, 148, 'Boe', 'BO', 1);
INSERT INTO `oc_zone` VALUES(2307, 148, 'Buada', 'BU', 1);
INSERT INTO `oc_zone` VALUES(2308, 148, 'Denigomodu', 'DE', 1);
INSERT INTO `oc_zone` VALUES(2309, 148, 'Ewa', 'EW', 1);
INSERT INTO `oc_zone` VALUES(2310, 148, 'Ijuw', 'IJ', 1);
INSERT INTO `oc_zone` VALUES(2311, 148, 'Meneng', 'ME', 1);
INSERT INTO `oc_zone` VALUES(2312, 148, 'Nibok', 'NI', 1);
INSERT INTO `oc_zone` VALUES(2313, 148, 'Uaboe', 'UA', 1);
INSERT INTO `oc_zone` VALUES(2314, 148, 'Yaren', 'YA', 1);
INSERT INTO `oc_zone` VALUES(2315, 149, 'Bagmati', 'BA', 1);
INSERT INTO `oc_zone` VALUES(2316, 149, 'Bheri', 'BH', 1);
INSERT INTO `oc_zone` VALUES(2317, 149, 'Dhawalagiri', 'DH', 1);
INSERT INTO `oc_zone` VALUES(2318, 149, 'Gandaki', 'GA', 1);
INSERT INTO `oc_zone` VALUES(2319, 149, 'Janakpur', 'JA', 1);
INSERT INTO `oc_zone` VALUES(2320, 149, 'Karnali', 'KA', 1);
INSERT INTO `oc_zone` VALUES(2321, 149, 'Kosi', 'KO', 1);
INSERT INTO `oc_zone` VALUES(2322, 149, 'Lumbini', 'LU', 1);
INSERT INTO `oc_zone` VALUES(2323, 149, 'Mahakali', 'MA', 1);
INSERT INTO `oc_zone` VALUES(2324, 149, 'Mechi', 'ME', 1);
INSERT INTO `oc_zone` VALUES(2325, 149, 'Narayani', 'NA', 1);
INSERT INTO `oc_zone` VALUES(2326, 149, 'Rapti', 'RA', 1);
INSERT INTO `oc_zone` VALUES(2327, 149, 'Sagarmatha', 'SA', 1);
INSERT INTO `oc_zone` VALUES(2328, 149, 'Seti', 'SE', 1);
INSERT INTO `oc_zone` VALUES(2329, 150, 'Drenthe', 'DR', 1);
INSERT INTO `oc_zone` VALUES(2330, 150, 'Flevoland', 'FL', 1);
INSERT INTO `oc_zone` VALUES(2331, 150, 'Friesland', 'FR', 1);
INSERT INTO `oc_zone` VALUES(2332, 150, 'Gelderland', 'GE', 1);
INSERT INTO `oc_zone` VALUES(2333, 150, 'Groningen', 'GR', 1);
INSERT INTO `oc_zone` VALUES(2334, 150, 'Limburg', 'LI', 1);
INSERT INTO `oc_zone` VALUES(2335, 150, 'Noord Brabant', 'NB', 1);
INSERT INTO `oc_zone` VALUES(2336, 150, 'Noord Holland', 'NH', 1);
INSERT INTO `oc_zone` VALUES(2337, 150, 'Overijssel', 'OV', 1);
INSERT INTO `oc_zone` VALUES(2338, 150, 'Utrecht', 'UT', 1);
INSERT INTO `oc_zone` VALUES(2339, 150, 'Zeeland', 'ZE', 1);
INSERT INTO `oc_zone` VALUES(2340, 150, 'Zuid Holland', 'ZH', 1);
INSERT INTO `oc_zone` VALUES(2341, 152, 'Iles Loyaute', 'L', 1);
INSERT INTO `oc_zone` VALUES(2342, 152, 'Nord', 'N', 1);
INSERT INTO `oc_zone` VALUES(2343, 152, 'Sud', 'S', 1);
INSERT INTO `oc_zone` VALUES(2344, 153, 'Auckland', 'AUK', 1);
INSERT INTO `oc_zone` VALUES(2345, 153, 'Bay of Plenty', 'BOP', 1);
INSERT INTO `oc_zone` VALUES(2346, 153, 'Canterbury', 'CAN', 1);
INSERT INTO `oc_zone` VALUES(2347, 153, 'Coromandel', 'COR', 1);
INSERT INTO `oc_zone` VALUES(2348, 153, 'Gisborne', 'GIS', 1);
INSERT INTO `oc_zone` VALUES(2349, 153, 'Fiordland', 'FIO', 1);
INSERT INTO `oc_zone` VALUES(2350, 153, 'Hawke''s Bay', 'HKB', 1);
INSERT INTO `oc_zone` VALUES(2351, 153, 'Marlborough', 'MBH', 1);
INSERT INTO `oc_zone` VALUES(2352, 153, 'Manawatu-Wanganui', 'MWT', 1);
INSERT INTO `oc_zone` VALUES(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1);
INSERT INTO `oc_zone` VALUES(2354, 153, 'Nelson', 'NSN', 1);
INSERT INTO `oc_zone` VALUES(2355, 153, 'Northland', 'NTL', 1);
INSERT INTO `oc_zone` VALUES(2356, 153, 'Otago', 'OTA', 1);
INSERT INTO `oc_zone` VALUES(2357, 153, 'Southland', 'STL', 1);
INSERT INTO `oc_zone` VALUES(2358, 153, 'Taranaki', 'TKI', 1);
INSERT INTO `oc_zone` VALUES(2359, 153, 'Wellington', 'WGN', 1);
INSERT INTO `oc_zone` VALUES(2360, 153, 'Waikato', 'WKO', 1);
INSERT INTO `oc_zone` VALUES(2361, 153, 'Wairarapa', 'WAI', 1);
INSERT INTO `oc_zone` VALUES(2362, 153, 'West Coast', 'WTC', 1);
INSERT INTO `oc_zone` VALUES(2363, 154, 'Atlantico Norte', 'AN', 1);
INSERT INTO `oc_zone` VALUES(2364, 154, 'Atlantico Sur', 'AS', 1);
INSERT INTO `oc_zone` VALUES(2365, 154, 'Boaco', 'BO', 1);
INSERT INTO `oc_zone` VALUES(2366, 154, 'Carazo', 'CA', 1);
INSERT INTO `oc_zone` VALUES(2367, 154, 'Chinandega', 'CI', 1);
INSERT INTO `oc_zone` VALUES(2368, 154, 'Chontales', 'CO', 1);
INSERT INTO `oc_zone` VALUES(2369, 154, 'Esteli', 'ES', 1);
INSERT INTO `oc_zone` VALUES(2370, 154, 'Granada', 'GR', 1);
INSERT INTO `oc_zone` VALUES(2371, 154, 'Jinotega', 'JI', 1);
INSERT INTO `oc_zone` VALUES(2372, 154, 'Leon', 'LE', 1);
INSERT INTO `oc_zone` VALUES(2373, 154, 'Madriz', 'MD', 1);
INSERT INTO `oc_zone` VALUES(2374, 154, 'Managua', 'MN', 1);
INSERT INTO `oc_zone` VALUES(2375, 154, 'Masaya', 'MS', 1);
INSERT INTO `oc_zone` VALUES(2376, 154, 'Matagalpa', 'MT', 1);
INSERT INTO `oc_zone` VALUES(2377, 154, 'Nuevo Segovia', 'NS', 1);
INSERT INTO `oc_zone` VALUES(2378, 154, 'Rio San Juan', 'RS', 1);
INSERT INTO `oc_zone` VALUES(2379, 154, 'Rivas', 'RI', 1);
INSERT INTO `oc_zone` VALUES(2380, 155, 'Agadez', 'AG', 1);
INSERT INTO `oc_zone` VALUES(2381, 155, 'Diffa', 'DF', 1);
INSERT INTO `oc_zone` VALUES(2382, 155, 'Dosso', 'DS', 1);
INSERT INTO `oc_zone` VALUES(2383, 155, 'Maradi', 'MA', 1);
INSERT INTO `oc_zone` VALUES(2384, 155, 'Niamey', 'NM', 1);
INSERT INTO `oc_zone` VALUES(2385, 155, 'Tahoua', 'TH', 1);
INSERT INTO `oc_zone` VALUES(2386, 155, 'Tillaberi', 'TL', 1);
INSERT INTO `oc_zone` VALUES(2387, 155, 'Zinder', 'ZD', 1);
INSERT INTO `oc_zone` VALUES(2388, 156, 'Abia', 'AB', 1);
INSERT INTO `oc_zone` VALUES(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1);
INSERT INTO `oc_zone` VALUES(2390, 156, 'Adamawa', 'AD', 1);
INSERT INTO `oc_zone` VALUES(2391, 156, 'Akwa Ibom', 'AK', 1);
INSERT INTO `oc_zone` VALUES(2392, 156, 'Anambra', 'AN', 1);
INSERT INTO `oc_zone` VALUES(2393, 156, 'Bauchi', 'BC', 1);
INSERT INTO `oc_zone` VALUES(2394, 156, 'Bayelsa', 'BY', 1);
INSERT INTO `oc_zone` VALUES(2395, 156, 'Benue', 'BN', 1);
INSERT INTO `oc_zone` VALUES(2396, 156, 'Borno', 'BO', 1);
INSERT INTO `oc_zone` VALUES(2397, 156, 'Cross River', 'CR', 1);
INSERT INTO `oc_zone` VALUES(2398, 156, 'Delta', 'DE', 1);
INSERT INTO `oc_zone` VALUES(2399, 156, 'Ebonyi', 'EB', 1);
INSERT INTO `oc_zone` VALUES(2400, 156, 'Edo', 'ED', 1);
INSERT INTO `oc_zone` VALUES(2401, 156, 'Ekiti', 'EK', 1);
INSERT INTO `oc_zone` VALUES(2402, 156, 'Enugu', 'EN', 1);
INSERT INTO `oc_zone` VALUES(2403, 156, 'Gombe', 'GO', 1);
INSERT INTO `oc_zone` VALUES(2404, 156, 'Imo', 'IM', 1);
INSERT INTO `oc_zone` VALUES(2405, 156, 'Jigawa', 'JI', 1);
INSERT INTO `oc_zone` VALUES(2406, 156, 'Kaduna', 'KD', 1);
INSERT INTO `oc_zone` VALUES(2407, 156, 'Kano', 'KN', 1);
INSERT INTO `oc_zone` VALUES(2408, 156, 'Katsina', 'KT', 1);
INSERT INTO `oc_zone` VALUES(2409, 156, 'Kebbi', 'KE', 1);
INSERT INTO `oc_zone` VALUES(2410, 156, 'Kogi', 'KO', 1);
INSERT INTO `oc_zone` VALUES(2411, 156, 'Kwara', 'KW', 1);
INSERT INTO `oc_zone` VALUES(2412, 156, 'Lagos', 'LA', 1);
INSERT INTO `oc_zone` VALUES(2413, 156, 'Nassarawa', 'NA', 1);
INSERT INTO `oc_zone` VALUES(2414, 156, 'Niger', 'NI', 1);
INSERT INTO `oc_zone` VALUES(2415, 156, 'Ogun', 'OG', 1);
INSERT INTO `oc_zone` VALUES(2416, 156, 'Ondo', 'ONG', 1);
INSERT INTO `oc_zone` VALUES(2417, 156, 'Osun', 'OS', 1);
INSERT INTO `oc_zone` VALUES(2418, 156, 'Oyo', 'OY', 1);
INSERT INTO `oc_zone` VALUES(2419, 156, 'Plateau', 'PL', 1);
INSERT INTO `oc_zone` VALUES(2420, 156, 'Rivers', 'RI', 1);
INSERT INTO `oc_zone` VALUES(2421, 156, 'Sokoto', 'SO', 1);
INSERT INTO `oc_zone` VALUES(2422, 156, 'Taraba', 'TA', 1);
INSERT INTO `oc_zone` VALUES(2423, 156, 'Yobe', 'YO', 1);
INSERT INTO `oc_zone` VALUES(2424, 156, 'Zamfara', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(2425, 159, 'Northern Islands', 'N', 1);
INSERT INTO `oc_zone` VALUES(2426, 159, 'Rota', 'R', 1);
INSERT INTO `oc_zone` VALUES(2427, 159, 'Saipan', 'S', 1);
INSERT INTO `oc_zone` VALUES(2428, 159, 'Tinian', 'T', 1);
INSERT INTO `oc_zone` VALUES(2429, 160, 'Akershus', 'AK', 1);
INSERT INTO `oc_zone` VALUES(2430, 160, 'Aust-Agder', 'AA', 1);
INSERT INTO `oc_zone` VALUES(2431, 160, 'Buskerud', 'BU', 1);
INSERT INTO `oc_zone` VALUES(2432, 160, 'Finnmark', 'FM', 1);
INSERT INTO `oc_zone` VALUES(2433, 160, 'Hedmark', 'HM', 1);
INSERT INTO `oc_zone` VALUES(2434, 160, 'Hordaland', 'HL', 1);
INSERT INTO `oc_zone` VALUES(2435, 160, 'More og Romdal', 'MR', 1);
INSERT INTO `oc_zone` VALUES(2436, 160, 'Nord-Trondelag', 'NT', 1);
INSERT INTO `oc_zone` VALUES(2437, 160, 'Nordland', 'NL', 1);
INSERT INTO `oc_zone` VALUES(2438, 160, 'Ostfold', 'OF', 1);
INSERT INTO `oc_zone` VALUES(2439, 160, 'Oppland', 'OP', 1);
INSERT INTO `oc_zone` VALUES(2440, 160, 'Oslo', 'OL', 1);
INSERT INTO `oc_zone` VALUES(2441, 160, 'Rogaland', 'RL', 1);
INSERT INTO `oc_zone` VALUES(2442, 160, 'Sor-Trondelag', 'ST', 1);
INSERT INTO `oc_zone` VALUES(2443, 160, 'Sogn og Fjordane', 'SJ', 1);
INSERT INTO `oc_zone` VALUES(2444, 160, 'Svalbard', 'SV', 1);
INSERT INTO `oc_zone` VALUES(2445, 160, 'Telemark', 'TM', 1);
INSERT INTO `oc_zone` VALUES(2446, 160, 'Troms', 'TR', 1);
INSERT INTO `oc_zone` VALUES(2447, 160, 'Vest-Agder', 'VA', 1);
INSERT INTO `oc_zone` VALUES(2448, 160, 'Vestfold', 'VF', 1);
INSERT INTO `oc_zone` VALUES(2449, 161, 'Ad Dakhiliyah', 'DA', 1);
INSERT INTO `oc_zone` VALUES(2450, 161, 'Al Batinah', 'BA', 1);
INSERT INTO `oc_zone` VALUES(2451, 161, 'Al Wusta', 'WU', 1);
INSERT INTO `oc_zone` VALUES(2452, 161, 'Ash Sharqiyah', 'SH', 1);
INSERT INTO `oc_zone` VALUES(2453, 161, 'Az Zahirah', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(2454, 161, 'Masqat', 'MA', 1);
INSERT INTO `oc_zone` VALUES(2455, 161, 'Musandam', 'MU', 1);
INSERT INTO `oc_zone` VALUES(2456, 161, 'Zufar', 'ZU', 1);
INSERT INTO `oc_zone` VALUES(2457, 162, 'Balochistan', 'B', 1);
INSERT INTO `oc_zone` VALUES(2458, 162, 'Federally Administered Tribal Areas', 'T', 1);
INSERT INTO `oc_zone` VALUES(2459, 162, 'Islamabad Capital Territory', 'I', 1);
INSERT INTO `oc_zone` VALUES(2460, 162, 'North-West Frontier', 'N', 1);
INSERT INTO `oc_zone` VALUES(2461, 162, 'Punjab', 'P', 1);
INSERT INTO `oc_zone` VALUES(2462, 162, 'Sindh', 'S', 1);
INSERT INTO `oc_zone` VALUES(2463, 163, 'Aimeliik', 'AM', 1);
INSERT INTO `oc_zone` VALUES(2464, 163, 'Airai', 'AR', 1);
INSERT INTO `oc_zone` VALUES(2465, 163, 'Angaur', 'AN', 1);
INSERT INTO `oc_zone` VALUES(2466, 163, 'Hatohobei', 'HA', 1);
INSERT INTO `oc_zone` VALUES(2467, 163, 'Kayangel', 'KA', 1);
INSERT INTO `oc_zone` VALUES(2468, 163, 'Koror', 'KO', 1);
INSERT INTO `oc_zone` VALUES(2469, 163, 'Melekeok', 'ME', 1);
INSERT INTO `oc_zone` VALUES(2470, 163, 'Ngaraard', 'NA', 1);
INSERT INTO `oc_zone` VALUES(2471, 163, 'Ngarchelong', 'NG', 1);
INSERT INTO `oc_zone` VALUES(2472, 163, 'Ngardmau', 'ND', 1);
INSERT INTO `oc_zone` VALUES(2473, 163, 'Ngatpang', 'NT', 1);
INSERT INTO `oc_zone` VALUES(2474, 163, 'Ngchesar', 'NC', 1);
INSERT INTO `oc_zone` VALUES(2475, 163, 'Ngeremlengui', 'NR', 1);
INSERT INTO `oc_zone` VALUES(2476, 163, 'Ngiwal', 'NW', 1);
INSERT INTO `oc_zone` VALUES(2477, 163, 'Peleliu', 'PE', 1);
INSERT INTO `oc_zone` VALUES(2478, 163, 'Sonsorol', 'SO', 1);
INSERT INTO `oc_zone` VALUES(2479, 164, 'Bocas del Toro', 'BT', 1);
INSERT INTO `oc_zone` VALUES(2480, 164, 'Chiriqui', 'CH', 1);
INSERT INTO `oc_zone` VALUES(2481, 164, 'Cocle', 'CC', 1);
INSERT INTO `oc_zone` VALUES(2482, 164, 'Colon', 'CL', 1);
INSERT INTO `oc_zone` VALUES(2483, 164, 'Darien', 'DA', 1);
INSERT INTO `oc_zone` VALUES(2484, 164, 'Herrera', 'HE', 1);
INSERT INTO `oc_zone` VALUES(2485, 164, 'Los Santos', 'LS', 1);
INSERT INTO `oc_zone` VALUES(2486, 164, 'Panama', 'PA', 1);
INSERT INTO `oc_zone` VALUES(2487, 164, 'San Blas', 'SB', 1);
INSERT INTO `oc_zone` VALUES(2488, 164, 'Veraguas', 'VG', 1);
INSERT INTO `oc_zone` VALUES(2489, 165, 'Bougainville', 'BV', 1);
INSERT INTO `oc_zone` VALUES(2490, 165, 'Central', 'CE', 1);
INSERT INTO `oc_zone` VALUES(2491, 165, 'Chimbu', 'CH', 1);
INSERT INTO `oc_zone` VALUES(2492, 165, 'Eastern Highlands', 'EH', 1);
INSERT INTO `oc_zone` VALUES(2493, 165, 'East New Britain', 'EB', 1);
INSERT INTO `oc_zone` VALUES(2494, 165, 'East Sepik', 'ES', 1);
INSERT INTO `oc_zone` VALUES(2495, 165, 'Enga', 'EN', 1);
INSERT INTO `oc_zone` VALUES(2496, 165, 'Gulf', 'GU', 1);
INSERT INTO `oc_zone` VALUES(2497, 165, 'Madang', 'MD', 1);
INSERT INTO `oc_zone` VALUES(2498, 165, 'Manus', 'MN', 1);
INSERT INTO `oc_zone` VALUES(2499, 165, 'Milne Bay', 'MB', 1);
INSERT INTO `oc_zone` VALUES(2500, 165, 'Morobe', 'MR', 1);
INSERT INTO `oc_zone` VALUES(2501, 165, 'National Capital', 'NC', 1);
INSERT INTO `oc_zone` VALUES(2502, 165, 'New Ireland', 'NI', 1);
INSERT INTO `oc_zone` VALUES(2503, 165, 'Northern', 'NO', 1);
INSERT INTO `oc_zone` VALUES(2504, 165, 'Sandaun', 'SA', 1);
INSERT INTO `oc_zone` VALUES(2505, 165, 'Southern Highlands', 'SH', 1);
INSERT INTO `oc_zone` VALUES(2506, 165, 'Western', 'WE', 1);
INSERT INTO `oc_zone` VALUES(2507, 165, 'Western Highlands', 'WH', 1);
INSERT INTO `oc_zone` VALUES(2508, 165, 'West New Britain', 'WB', 1);
INSERT INTO `oc_zone` VALUES(2509, 166, 'Alto Paraguay', 'AG', 1);
INSERT INTO `oc_zone` VALUES(2510, 166, 'Alto Parana', 'AN', 1);
INSERT INTO `oc_zone` VALUES(2511, 166, 'Amambay', 'AM', 1);
INSERT INTO `oc_zone` VALUES(2512, 166, 'Asuncion', 'AS', 1);
INSERT INTO `oc_zone` VALUES(2513, 166, 'Boqueron', 'BO', 1);
INSERT INTO `oc_zone` VALUES(2514, 166, 'Caaguazu', 'CG', 1);
INSERT INTO `oc_zone` VALUES(2515, 166, 'Caazapa', 'CZ', 1);
INSERT INTO `oc_zone` VALUES(2516, 166, 'Canindeyu', 'CN', 1);
INSERT INTO `oc_zone` VALUES(2517, 166, 'Central', 'CE', 1);
INSERT INTO `oc_zone` VALUES(2518, 166, 'Concepcion', 'CC', 1);
INSERT INTO `oc_zone` VALUES(2519, 166, 'Cordillera', 'CD', 1);
INSERT INTO `oc_zone` VALUES(2520, 166, 'Guaira', 'GU', 1);
INSERT INTO `oc_zone` VALUES(2521, 166, 'Itapua', 'IT', 1);
INSERT INTO `oc_zone` VALUES(2522, 166, 'Misiones', 'MI', 1);
INSERT INTO `oc_zone` VALUES(2523, 166, 'Neembucu', 'NE', 1);
INSERT INTO `oc_zone` VALUES(2524, 166, 'Paraguari', 'PA', 1);
INSERT INTO `oc_zone` VALUES(2525, 166, 'Presidente Hayes', 'PH', 1);
INSERT INTO `oc_zone` VALUES(2526, 166, 'San Pedro', 'SP', 1);
INSERT INTO `oc_zone` VALUES(2527, 167, 'Amazonas', 'AM', 1);
INSERT INTO `oc_zone` VALUES(2528, 167, 'Ancash', 'AN', 1);
INSERT INTO `oc_zone` VALUES(2529, 167, 'Apurimac', 'AP', 1);
INSERT INTO `oc_zone` VALUES(2530, 167, 'Arequipa', 'AR', 1);
INSERT INTO `oc_zone` VALUES(2531, 167, 'Ayacucho', 'AY', 1);
INSERT INTO `oc_zone` VALUES(2532, 167, 'Cajamarca', 'CJ', 1);
INSERT INTO `oc_zone` VALUES(2533, 167, 'Callao', 'CL', 1);
INSERT INTO `oc_zone` VALUES(2534, 167, 'Cusco', 'CU', 1);
INSERT INTO `oc_zone` VALUES(2535, 167, 'Huancavelica', 'HV', 1);
INSERT INTO `oc_zone` VALUES(2536, 167, 'Huanuco', 'HO', 1);
INSERT INTO `oc_zone` VALUES(2537, 167, 'Ica', 'IC', 1);
INSERT INTO `oc_zone` VALUES(2538, 167, 'Junin', 'JU', 1);
INSERT INTO `oc_zone` VALUES(2539, 167, 'La Libertad', 'LD', 1);
INSERT INTO `oc_zone` VALUES(2540, 167, 'Lambayeque', 'LY', 1);
INSERT INTO `oc_zone` VALUES(2541, 167, 'Lima', 'LI', 1);
INSERT INTO `oc_zone` VALUES(2542, 167, 'Loreto', 'LO', 1);
INSERT INTO `oc_zone` VALUES(2543, 167, 'Madre de Dios', 'MD', 1);
INSERT INTO `oc_zone` VALUES(2544, 167, 'Moquegua', 'MO', 1);
INSERT INTO `oc_zone` VALUES(2545, 167, 'Pasco', 'PA', 1);
INSERT INTO `oc_zone` VALUES(2546, 167, 'Piura', 'PI', 1);
INSERT INTO `oc_zone` VALUES(2547, 167, 'Puno', 'PU', 1);
INSERT INTO `oc_zone` VALUES(2548, 167, 'San Martin', 'SM', 1);
INSERT INTO `oc_zone` VALUES(2549, 167, 'Tacna', 'TA', 1);
INSERT INTO `oc_zone` VALUES(2550, 167, 'Tumbes', 'TU', 1);
INSERT INTO `oc_zone` VALUES(2551, 167, 'Ucayali', 'UC', 1);
INSERT INTO `oc_zone` VALUES(2552, 168, 'Abra', 'ABR', 1);
INSERT INTO `oc_zone` VALUES(2553, 168, 'Agusan del Norte', 'ANO', 1);
INSERT INTO `oc_zone` VALUES(2554, 168, 'Agusan del Sur', 'ASU', 1);
INSERT INTO `oc_zone` VALUES(2555, 168, 'Aklan', 'AKL', 1);
INSERT INTO `oc_zone` VALUES(2556, 168, 'Albay', 'ALB', 1);
INSERT INTO `oc_zone` VALUES(2557, 168, 'Antique', 'ANT', 1);
INSERT INTO `oc_zone` VALUES(2558, 168, 'Apayao', 'APY', 1);
INSERT INTO `oc_zone` VALUES(2559, 168, 'Aurora', 'AUR', 1);
INSERT INTO `oc_zone` VALUES(2560, 168, 'Basilan', 'BAS', 1);
INSERT INTO `oc_zone` VALUES(2561, 168, 'Bataan', 'BTA', 1);
INSERT INTO `oc_zone` VALUES(2562, 168, 'Batanes', 'BTE', 1);
INSERT INTO `oc_zone` VALUES(2563, 168, 'Batangas', 'BTG', 1);
INSERT INTO `oc_zone` VALUES(2564, 168, 'Biliran', 'BLR', 1);
INSERT INTO `oc_zone` VALUES(2565, 168, 'Benguet', 'BEN', 1);
INSERT INTO `oc_zone` VALUES(2566, 168, 'Bohol', 'BOL', 1);
INSERT INTO `oc_zone` VALUES(2567, 168, 'Bukidnon', 'BUK', 1);
INSERT INTO `oc_zone` VALUES(2568, 168, 'Bulacan', 'BUL', 1);
INSERT INTO `oc_zone` VALUES(2569, 168, 'Cagayan', 'CAG', 1);
INSERT INTO `oc_zone` VALUES(2570, 168, 'Camarines Norte', 'CNO', 1);
INSERT INTO `oc_zone` VALUES(2571, 168, 'Camarines Sur', 'CSU', 1);
INSERT INTO `oc_zone` VALUES(2572, 168, 'Camiguin', 'CAM', 1);
INSERT INTO `oc_zone` VALUES(2573, 168, 'Capiz', 'CAP', 1);
INSERT INTO `oc_zone` VALUES(2574, 168, 'Catanduanes', 'CAT', 1);
INSERT INTO `oc_zone` VALUES(2575, 168, 'Cavite', 'CAV', 1);
INSERT INTO `oc_zone` VALUES(2576, 168, 'Cebu', 'CEB', 1);
INSERT INTO `oc_zone` VALUES(2577, 168, 'Compostela', 'CMP', 1);
INSERT INTO `oc_zone` VALUES(2578, 168, 'Davao del Norte', 'DNO', 1);
INSERT INTO `oc_zone` VALUES(2579, 168, 'Davao del Sur', 'DSU', 1);
INSERT INTO `oc_zone` VALUES(2580, 168, 'Davao Oriental', 'DOR', 1);
INSERT INTO `oc_zone` VALUES(2581, 168, 'Eastern Samar', 'ESA', 1);
INSERT INTO `oc_zone` VALUES(2582, 168, 'Guimaras', 'GUI', 1);
INSERT INTO `oc_zone` VALUES(2583, 168, 'Ifugao', 'IFU', 1);
INSERT INTO `oc_zone` VALUES(2584, 168, 'Ilocos Norte', 'INO', 1);
INSERT INTO `oc_zone` VALUES(2585, 168, 'Ilocos Sur', 'ISU', 1);
INSERT INTO `oc_zone` VALUES(2586, 168, 'Iloilo', 'ILO', 1);
INSERT INTO `oc_zone` VALUES(2587, 168, 'Isabela', 'ISA', 1);
INSERT INTO `oc_zone` VALUES(2588, 168, 'Kalinga', 'KAL', 1);
INSERT INTO `oc_zone` VALUES(2589, 168, 'Laguna', 'LAG', 1);
INSERT INTO `oc_zone` VALUES(2590, 168, 'Lanao del Norte', 'LNO', 1);
INSERT INTO `oc_zone` VALUES(2591, 168, 'Lanao del Sur', 'LSU', 1);
INSERT INTO `oc_zone` VALUES(2592, 168, 'La Union', 'UNI', 1);
INSERT INTO `oc_zone` VALUES(2593, 168, 'Leyte', 'LEY', 1);
INSERT INTO `oc_zone` VALUES(2594, 168, 'Maguindanao', 'MAG', 1);
INSERT INTO `oc_zone` VALUES(2595, 168, 'Marinduque', 'MRN', 1);
INSERT INTO `oc_zone` VALUES(2596, 168, 'Masbate', 'MSB', 1);
INSERT INTO `oc_zone` VALUES(2597, 168, 'Mindoro Occidental', 'MIC', 1);
INSERT INTO `oc_zone` VALUES(2598, 168, 'Mindoro Oriental', 'MIR', 1);
INSERT INTO `oc_zone` VALUES(2599, 168, 'Misamis Occidental', 'MSC', 1);
INSERT INTO `oc_zone` VALUES(2600, 168, 'Misamis Oriental', 'MOR', 1);
INSERT INTO `oc_zone` VALUES(2601, 168, 'Mountain', 'MOP', 1);
INSERT INTO `oc_zone` VALUES(2602, 168, 'Negros Occidental', 'NOC', 1);
INSERT INTO `oc_zone` VALUES(2603, 168, 'Negros Oriental', 'NOR', 1);
INSERT INTO `oc_zone` VALUES(2604, 168, 'North Cotabato', 'NCT', 1);
INSERT INTO `oc_zone` VALUES(2605, 168, 'Northern Samar', 'NSM', 1);
INSERT INTO `oc_zone` VALUES(2606, 168, 'Nueva Ecija', 'NEC', 1);
INSERT INTO `oc_zone` VALUES(2607, 168, 'Nueva Vizcaya', 'NVZ', 1);
INSERT INTO `oc_zone` VALUES(2608, 168, 'Palawan', 'PLW', 1);
INSERT INTO `oc_zone` VALUES(2609, 168, 'Pampanga', 'PMP', 1);
INSERT INTO `oc_zone` VALUES(2610, 168, 'Pangasinan', 'PNG', 1);
INSERT INTO `oc_zone` VALUES(2611, 168, 'Quezon', 'QZN', 1);
INSERT INTO `oc_zone` VALUES(2612, 168, 'Quirino', 'QRN', 1);
INSERT INTO `oc_zone` VALUES(2613, 168, 'Rizal', 'RIZ', 1);
INSERT INTO `oc_zone` VALUES(2614, 168, 'Romblon', 'ROM', 1);
INSERT INTO `oc_zone` VALUES(2615, 168, 'Samar', 'SMR', 1);
INSERT INTO `oc_zone` VALUES(2616, 168, 'Sarangani', 'SRG', 1);
INSERT INTO `oc_zone` VALUES(2617, 168, 'Siquijor', 'SQJ', 1);
INSERT INTO `oc_zone` VALUES(2618, 168, 'Sorsogon', 'SRS', 1);
INSERT INTO `oc_zone` VALUES(2619, 168, 'South Cotabato', 'SCO', 1);
INSERT INTO `oc_zone` VALUES(2620, 168, 'Southern Leyte', 'SLE', 1);
INSERT INTO `oc_zone` VALUES(2621, 168, 'Sultan Kudarat', 'SKU', 1);
INSERT INTO `oc_zone` VALUES(2622, 168, 'Sulu', 'SLU', 1);
INSERT INTO `oc_zone` VALUES(2623, 168, 'Surigao del Norte', 'SNO', 1);
INSERT INTO `oc_zone` VALUES(2624, 168, 'Surigao del Sur', 'SSU', 1);
INSERT INTO `oc_zone` VALUES(2625, 168, 'Tarlac', 'TAR', 1);
INSERT INTO `oc_zone` VALUES(2626, 168, 'Tawi-Tawi', 'TAW', 1);
INSERT INTO `oc_zone` VALUES(2627, 168, 'Zambales', 'ZBL', 1);
INSERT INTO `oc_zone` VALUES(2628, 168, 'Zamboanga del Norte', 'ZNO', 1);
INSERT INTO `oc_zone` VALUES(2629, 168, 'Zamboanga del Sur', 'ZSU', 1);
INSERT INTO `oc_zone` VALUES(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1);
INSERT INTO `oc_zone` VALUES(2631, 170, 'Dolnoslaskie', 'DO', 1);
INSERT INTO `oc_zone` VALUES(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1);
INSERT INTO `oc_zone` VALUES(2633, 170, 'Lodzkie', 'LO', 1);
INSERT INTO `oc_zone` VALUES(2634, 170, 'Lubelskie', 'LL', 1);
INSERT INTO `oc_zone` VALUES(2635, 170, 'Lubuskie', 'LU', 1);
INSERT INTO `oc_zone` VALUES(2636, 170, 'Malopolskie', 'ML', 1);
INSERT INTO `oc_zone` VALUES(2637, 170, 'Mazowieckie', 'MZ', 1);
INSERT INTO `oc_zone` VALUES(2638, 170, 'Opolskie', 'OP', 1);
INSERT INTO `oc_zone` VALUES(2639, 170, 'Podkarpackie', 'PP', 1);
INSERT INTO `oc_zone` VALUES(2640, 170, 'Podlaskie', 'PL', 1);
INSERT INTO `oc_zone` VALUES(2641, 170, 'Pomorskie', 'PM', 1);
INSERT INTO `oc_zone` VALUES(2642, 170, 'Slaskie', 'SL', 1);
INSERT INTO `oc_zone` VALUES(2643, 170, 'Swietokrzyskie', 'SW', 1);
INSERT INTO `oc_zone` VALUES(2644, 170, 'Warminsko-Mazurskie', 'WM', 1);
INSERT INTO `oc_zone` VALUES(2645, 170, 'Wielkopolskie', 'WP', 1);
INSERT INTO `oc_zone` VALUES(2646, 170, 'Zachodniopomorskie', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(2647, 198, 'Saint Pierre', 'P', 1);
INSERT INTO `oc_zone` VALUES(2648, 198, 'Miquelon', 'M', 1);
INSERT INTO `oc_zone` VALUES(2649, 171, 'A&ccedil;ores', 'AC', 1);
INSERT INTO `oc_zone` VALUES(2650, 171, 'Aveiro', 'AV', 1);
INSERT INTO `oc_zone` VALUES(2651, 171, 'Beja', 'BE', 1);
INSERT INTO `oc_zone` VALUES(2652, 171, 'Braga', 'BR', 1);
INSERT INTO `oc_zone` VALUES(2653, 171, 'Bragan&ccedil;a', 'BA', 1);
INSERT INTO `oc_zone` VALUES(2654, 171, 'Castelo Branco', 'CB', 1);
INSERT INTO `oc_zone` VALUES(2655, 171, 'Coimbra', 'CO', 1);
INSERT INTO `oc_zone` VALUES(2656, 171, '&Eacute;vora', 'EV', 1);
INSERT INTO `oc_zone` VALUES(2657, 171, 'Faro', 'FA', 1);
INSERT INTO `oc_zone` VALUES(2658, 171, 'Guarda', 'GU', 1);
INSERT INTO `oc_zone` VALUES(2659, 171, 'Leiria', 'LE', 1);
INSERT INTO `oc_zone` VALUES(2660, 171, 'Lisboa', 'LI', 1);
INSERT INTO `oc_zone` VALUES(2661, 171, 'Madeira', 'ME', 1);
INSERT INTO `oc_zone` VALUES(2662, 171, 'Portalegre', 'PO', 1);
INSERT INTO `oc_zone` VALUES(2663, 171, 'Porto', 'PR', 1);
INSERT INTO `oc_zone` VALUES(2664, 171, 'Santar&eacute;m', 'SA', 1);
INSERT INTO `oc_zone` VALUES(2665, 171, 'Set&uacute;bal', 'SE', 1);
INSERT INTO `oc_zone` VALUES(2666, 171, 'Viana do Castelo', 'VC', 1);
INSERT INTO `oc_zone` VALUES(2667, 171, 'Vila Real', 'VR', 1);
INSERT INTO `oc_zone` VALUES(2668, 171, 'Viseu', 'VI', 1);
INSERT INTO `oc_zone` VALUES(2669, 173, 'Ad Dawhah', 'DW', 1);
INSERT INTO `oc_zone` VALUES(2670, 173, 'Al Ghuwayriyah', 'GW', 1);
INSERT INTO `oc_zone` VALUES(2671, 173, 'Al Jumayliyah', 'JM', 1);
INSERT INTO `oc_zone` VALUES(2672, 173, 'Al Khawr', 'KR', 1);
INSERT INTO `oc_zone` VALUES(2673, 173, 'Al Wakrah', 'WK', 1);
INSERT INTO `oc_zone` VALUES(2674, 173, 'Ar Rayyan', 'RN', 1);
INSERT INTO `oc_zone` VALUES(2675, 173, 'Jarayan al Batinah', 'JB', 1);
INSERT INTO `oc_zone` VALUES(2676, 173, 'Madinat ash Shamal', 'MS', 1);
INSERT INTO `oc_zone` VALUES(2677, 173, 'Umm Sa''id', 'UD', 1);
INSERT INTO `oc_zone` VALUES(2678, 173, 'Umm Salal', 'UL', 1);
INSERT INTO `oc_zone` VALUES(2679, 175, 'Alba', 'AB', 1);
INSERT INTO `oc_zone` VALUES(2680, 175, 'Arad', 'AR', 1);
INSERT INTO `oc_zone` VALUES(2681, 175, 'Arges', 'AG', 1);
INSERT INTO `oc_zone` VALUES(2682, 175, 'Bacau', 'BC', 1);
INSERT INTO `oc_zone` VALUES(2683, 175, 'Bihor', 'BH', 1);
INSERT INTO `oc_zone` VALUES(2684, 175, 'Bistrita-Nasaud', 'BN', 1);
INSERT INTO `oc_zone` VALUES(2685, 175, 'Botosani', 'BT', 1);
INSERT INTO `oc_zone` VALUES(2686, 175, 'Brasov', 'BV', 1);
INSERT INTO `oc_zone` VALUES(2687, 175, 'Braila', 'BR', 1);
INSERT INTO `oc_zone` VALUES(2688, 175, 'Bucuresti', 'B', 1);
INSERT INTO `oc_zone` VALUES(2689, 175, 'Buzau', 'BZ', 1);
INSERT INTO `oc_zone` VALUES(2690, 175, 'Caras-Severin', 'CS', 1);
INSERT INTO `oc_zone` VALUES(2691, 175, 'Calarasi', 'CL', 1);
INSERT INTO `oc_zone` VALUES(2692, 175, 'Cluj', 'CJ', 1);
INSERT INTO `oc_zone` VALUES(2693, 175, 'Constanta', 'CT', 1);
INSERT INTO `oc_zone` VALUES(2694, 175, 'Covasna', 'CV', 1);
INSERT INTO `oc_zone` VALUES(2695, 175, 'Dimbovita', 'DB', 1);
INSERT INTO `oc_zone` VALUES(2696, 175, 'Dolj', 'DJ', 1);
INSERT INTO `oc_zone` VALUES(2697, 175, 'Galati', 'GL', 1);
INSERT INTO `oc_zone` VALUES(2698, 175, 'Giurgiu', 'GR', 1);
INSERT INTO `oc_zone` VALUES(2699, 175, 'Gorj', 'GJ', 1);
INSERT INTO `oc_zone` VALUES(2700, 175, 'Harghita', 'HR', 1);
INSERT INTO `oc_zone` VALUES(2701, 175, 'Hunedoara', 'HD', 1);
INSERT INTO `oc_zone` VALUES(2702, 175, 'Ialomita', 'IL', 1);
INSERT INTO `oc_zone` VALUES(2703, 175, 'Iasi', 'IS', 1);
INSERT INTO `oc_zone` VALUES(2704, 175, 'Ilfov', 'IF', 1);
INSERT INTO `oc_zone` VALUES(2705, 175, 'Maramures', 'MM', 1);
INSERT INTO `oc_zone` VALUES(2706, 175, 'Mehedinti', 'MH', 1);
INSERT INTO `oc_zone` VALUES(2707, 175, 'Mures', 'MS', 1);
INSERT INTO `oc_zone` VALUES(2708, 175, 'Neamt', 'NT', 1);
INSERT INTO `oc_zone` VALUES(2709, 175, 'Olt', 'OT', 1);
INSERT INTO `oc_zone` VALUES(2710, 175, 'Prahova', 'PH', 1);
INSERT INTO `oc_zone` VALUES(2711, 175, 'Satu-Mare', 'SM', 1);
INSERT INTO `oc_zone` VALUES(2712, 175, 'Salaj', 'SJ', 1);
INSERT INTO `oc_zone` VALUES(2713, 175, 'Sibiu', 'SB', 1);
INSERT INTO `oc_zone` VALUES(2714, 175, 'Suceava', 'SV', 1);
INSERT INTO `oc_zone` VALUES(2715, 175, 'Teleorman', 'TR', 1);
INSERT INTO `oc_zone` VALUES(2716, 175, 'Timis', 'TM', 1);
INSERT INTO `oc_zone` VALUES(2717, 175, 'Tulcea', 'TL', 1);
INSERT INTO `oc_zone` VALUES(2718, 175, 'Vaslui', 'VS', 1);
INSERT INTO `oc_zone` VALUES(2719, 175, 'Valcea', 'VL', 1);
INSERT INTO `oc_zone` VALUES(2720, 175, 'Vrancea', 'VN', 1);
INSERT INTO `oc_zone` VALUES(2721, 176, 'Abakan', 'AB', 1);
INSERT INTO `oc_zone` VALUES(2722, 176, 'Aginskoye', 'AG', 1);
INSERT INTO `oc_zone` VALUES(2723, 176, 'Anadyr', 'AN', 1);
INSERT INTO `oc_zone` VALUES(2724, 176, 'Arkahangelsk', 'AR', 1);
INSERT INTO `oc_zone` VALUES(2725, 176, 'Astrakhan', 'AS', 1);
INSERT INTO `oc_zone` VALUES(2726, 176, 'Barnaul', 'BA', 1);
INSERT INTO `oc_zone` VALUES(2727, 176, 'Belgorod', 'BE', 1);
INSERT INTO `oc_zone` VALUES(2728, 176, 'Birobidzhan', 'BI', 1);
INSERT INTO `oc_zone` VALUES(2729, 176, 'Blagoveshchensk', 'BL', 1);
INSERT INTO `oc_zone` VALUES(2730, 176, 'Bryansk', 'BR', 1);
INSERT INTO `oc_zone` VALUES(2731, 176, 'Cheboksary', 'CH', 1);
INSERT INTO `oc_zone` VALUES(2732, 176, 'Chelyabinsk', 'CL', 1);
INSERT INTO `oc_zone` VALUES(2733, 176, 'Cherkessk', 'CR', 1);
INSERT INTO `oc_zone` VALUES(2734, 176, 'Chita', 'CI', 1);
INSERT INTO `oc_zone` VALUES(2735, 176, 'Dudinka', 'DU', 1);
INSERT INTO `oc_zone` VALUES(2736, 176, 'Elista', 'EL', 1);
INSERT INTO `oc_zone` VALUES(2737, 176, 'Gomo-Altaysk', 'GO', 1);
INSERT INTO `oc_zone` VALUES(2738, 176, 'Gorno-Altaysk', 'GA', 1);
INSERT INTO `oc_zone` VALUES(2739, 176, 'Groznyy', 'GR', 1);
INSERT INTO `oc_zone` VALUES(2740, 176, 'Irkutsk', 'IR', 1);
INSERT INTO `oc_zone` VALUES(2741, 176, 'Ivanovo', 'IV', 1);
INSERT INTO `oc_zone` VALUES(2742, 176, 'Izhevsk', 'IZ', 1);
INSERT INTO `oc_zone` VALUES(2743, 176, 'Kalinigrad', 'KA', 1);
INSERT INTO `oc_zone` VALUES(2744, 176, 'Kaluga', 'KL', 1);
INSERT INTO `oc_zone` VALUES(2745, 176, 'Kasnodar', 'KS', 1);
INSERT INTO `oc_zone` VALUES(2746, 176, 'Kazan', 'KZ', 1);
INSERT INTO `oc_zone` VALUES(2747, 176, 'Kemerovo', 'KE', 1);
INSERT INTO `oc_zone` VALUES(2748, 176, 'Khabarovsk', 'KH', 1);
INSERT INTO `oc_zone` VALUES(2749, 176, 'Khanty-Mansiysk', 'KM', 1);
INSERT INTO `oc_zone` VALUES(2750, 176, 'Kostroma', 'KO', 1);
INSERT INTO `oc_zone` VALUES(2751, 176, 'Krasnodar', 'KR', 1);
INSERT INTO `oc_zone` VALUES(2752, 176, 'Krasnoyarsk', 'KN', 1);
INSERT INTO `oc_zone` VALUES(2753, 176, 'Kudymkar', 'KU', 1);
INSERT INTO `oc_zone` VALUES(2754, 176, 'Kurgan', 'KG', 1);
INSERT INTO `oc_zone` VALUES(2755, 176, 'Kursk', 'KK', 1);
INSERT INTO `oc_zone` VALUES(2756, 176, 'Kyzyl', 'KY', 1);
INSERT INTO `oc_zone` VALUES(2757, 176, 'Lipetsk', 'LI', 1);
INSERT INTO `oc_zone` VALUES(2758, 176, 'Magadan', 'MA', 1);
INSERT INTO `oc_zone` VALUES(2759, 176, 'Makhachkala', 'MK', 1);
INSERT INTO `oc_zone` VALUES(2760, 176, 'Maykop', 'MY', 1);
INSERT INTO `oc_zone` VALUES(2761, 176, 'Moscow', 'MO', 1);
INSERT INTO `oc_zone` VALUES(2762, 176, 'Murmansk', 'MU', 1);
INSERT INTO `oc_zone` VALUES(2763, 176, 'Nalchik', 'NA', 1);
INSERT INTO `oc_zone` VALUES(2764, 176, 'Naryan Mar', 'NR', 1);
INSERT INTO `oc_zone` VALUES(2765, 176, 'Nazran', 'NZ', 1);
INSERT INTO `oc_zone` VALUES(2766, 176, 'Nizhniy Novgorod', 'NI', 1);
INSERT INTO `oc_zone` VALUES(2767, 176, 'Novgorod', 'NO', 1);
INSERT INTO `oc_zone` VALUES(2768, 176, 'Novosibirsk', 'NV', 1);
INSERT INTO `oc_zone` VALUES(2769, 176, 'Omsk', 'OM', 1);
INSERT INTO `oc_zone` VALUES(2770, 176, 'Orel', 'OR', 1);
INSERT INTO `oc_zone` VALUES(2771, 176, 'Orenburg', 'OE', 1);
INSERT INTO `oc_zone` VALUES(2772, 176, 'Palana', 'PA', 1);
INSERT INTO `oc_zone` VALUES(2773, 176, 'Penza', 'PE', 1);
INSERT INTO `oc_zone` VALUES(2774, 176, 'Perm', 'PR', 1);
INSERT INTO `oc_zone` VALUES(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1);
INSERT INTO `oc_zone` VALUES(2776, 176, 'Petrozavodsk', 'PT', 1);
INSERT INTO `oc_zone` VALUES(2777, 176, 'Pskov', 'PS', 1);
INSERT INTO `oc_zone` VALUES(2778, 176, 'Rostov-na-Donu', 'RO', 1);
INSERT INTO `oc_zone` VALUES(2779, 176, 'Ryazan', 'RY', 1);
INSERT INTO `oc_zone` VALUES(2780, 176, 'Salekhard', 'SL', 1);
INSERT INTO `oc_zone` VALUES(2781, 176, 'Samara', 'SA', 1);
INSERT INTO `oc_zone` VALUES(2782, 176, 'Saransk', 'SR', 1);
INSERT INTO `oc_zone` VALUES(2783, 176, 'Saratov', 'SV', 1);
INSERT INTO `oc_zone` VALUES(2784, 176, 'Smolensk', 'SM', 1);
INSERT INTO `oc_zone` VALUES(2785, 176, 'St. Petersburg', 'SP', 1);
INSERT INTO `oc_zone` VALUES(2786, 176, 'Stavropol', 'ST', 1);
INSERT INTO `oc_zone` VALUES(2787, 176, 'Syktyvkar', 'SY', 1);
INSERT INTO `oc_zone` VALUES(2788, 176, 'Tambov', 'TA', 1);
INSERT INTO `oc_zone` VALUES(2789, 176, 'Tomsk', 'TO', 1);
INSERT INTO `oc_zone` VALUES(2790, 176, 'Tula', 'TU', 1);
INSERT INTO `oc_zone` VALUES(2791, 176, 'Tura', 'TR', 1);
INSERT INTO `oc_zone` VALUES(2792, 176, 'Tver', 'TV', 1);
INSERT INTO `oc_zone` VALUES(2793, 176, 'Tyumen', 'TY', 1);
INSERT INTO `oc_zone` VALUES(2794, 176, 'Ufa', 'UF', 1);
INSERT INTO `oc_zone` VALUES(2795, 176, 'Ul''yanovsk', 'UL', 1);
INSERT INTO `oc_zone` VALUES(2796, 176, 'Ulan-Ude', 'UU', 1);
INSERT INTO `oc_zone` VALUES(2797, 176, 'Ust''-Ordynskiy', 'US', 1);
INSERT INTO `oc_zone` VALUES(2798, 176, 'Vladikavkaz', 'VL', 1);
INSERT INTO `oc_zone` VALUES(2799, 176, 'Vladimir', 'VA', 1);
INSERT INTO `oc_zone` VALUES(2800, 176, 'Vladivostok', 'VV', 1);
INSERT INTO `oc_zone` VALUES(2801, 176, 'Volgograd', 'VG', 1);
INSERT INTO `oc_zone` VALUES(2802, 176, 'Vologda', 'VD', 1);
INSERT INTO `oc_zone` VALUES(2803, 176, 'Voronezh', 'VO', 1);
INSERT INTO `oc_zone` VALUES(2804, 176, 'Vyatka', 'VY', 1);
INSERT INTO `oc_zone` VALUES(2805, 176, 'Yakutsk', 'YA', 1);
INSERT INTO `oc_zone` VALUES(2806, 176, 'Yaroslavl', 'YR', 1);
INSERT INTO `oc_zone` VALUES(2807, 176, 'Yekaterinburg', 'YE', 1);
INSERT INTO `oc_zone` VALUES(2808, 176, 'Yoshkar-Ola', 'YO', 1);
INSERT INTO `oc_zone` VALUES(2809, 177, 'Butare', 'BU', 1);
INSERT INTO `oc_zone` VALUES(2810, 177, 'Byumba', 'BY', 1);
INSERT INTO `oc_zone` VALUES(2811, 177, 'Cyangugu', 'CY', 1);
INSERT INTO `oc_zone` VALUES(2812, 177, 'Gikongoro', 'GK', 1);
INSERT INTO `oc_zone` VALUES(2813, 177, 'Gisenyi', 'GS', 1);
INSERT INTO `oc_zone` VALUES(2814, 177, 'Gitarama', 'GT', 1);
INSERT INTO `oc_zone` VALUES(2815, 177, 'Kibungo', 'KG', 1);
INSERT INTO `oc_zone` VALUES(2816, 177, 'Kibuye', 'KY', 1);
INSERT INTO `oc_zone` VALUES(2817, 177, 'Kigali Rurale', 'KR', 1);
INSERT INTO `oc_zone` VALUES(2818, 177, 'Kigali-ville', 'KV', 1);
INSERT INTO `oc_zone` VALUES(2819, 177, 'Ruhengeri', 'RU', 1);
INSERT INTO `oc_zone` VALUES(2820, 177, 'Umutara', 'UM', 1);
INSERT INTO `oc_zone` VALUES(2821, 178, 'Christ Church Nichola Town', 'CCN', 1);
INSERT INTO `oc_zone` VALUES(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1);
INSERT INTO `oc_zone` VALUES(2823, 178, 'Saint George Basseterre', 'SGB', 1);
INSERT INTO `oc_zone` VALUES(2824, 178, 'Saint George Gingerland', 'SGG', 1);
INSERT INTO `oc_zone` VALUES(2825, 178, 'Saint James Windward', 'SJW', 1);
INSERT INTO `oc_zone` VALUES(2826, 178, 'Saint John Capesterre', 'SJC', 1);
INSERT INTO `oc_zone` VALUES(2827, 178, 'Saint John Figtree', 'SJF', 1);
INSERT INTO `oc_zone` VALUES(2828, 178, 'Saint Mary Cayon', 'SMC', 1);
INSERT INTO `oc_zone` VALUES(2829, 178, 'Saint Paul Capesterre', 'CAP', 1);
INSERT INTO `oc_zone` VALUES(2830, 178, 'Saint Paul Charlestown', 'CHA', 1);
INSERT INTO `oc_zone` VALUES(2831, 178, 'Saint Peter Basseterre', 'SPB', 1);
INSERT INTO `oc_zone` VALUES(2832, 178, 'Saint Thomas Lowland', 'STL', 1);
INSERT INTO `oc_zone` VALUES(2833, 178, 'Saint Thomas Middle Island', 'STM', 1);
INSERT INTO `oc_zone` VALUES(2834, 178, 'Trinity Palmetto Point', 'TPP', 1);
INSERT INTO `oc_zone` VALUES(2835, 179, 'Anse-la-Raye', 'AR', 1);
INSERT INTO `oc_zone` VALUES(2836, 179, 'Castries', 'CA', 1);
INSERT INTO `oc_zone` VALUES(2837, 179, 'Choiseul', 'CH', 1);
INSERT INTO `oc_zone` VALUES(2838, 179, 'Dauphin', 'DA', 1);
INSERT INTO `oc_zone` VALUES(2839, 179, 'Dennery', 'DE', 1);
INSERT INTO `oc_zone` VALUES(2840, 179, 'Gros-Islet', 'GI', 1);
INSERT INTO `oc_zone` VALUES(2841, 179, 'Laborie', 'LA', 1);
INSERT INTO `oc_zone` VALUES(2842, 179, 'Micoud', 'MI', 1);
INSERT INTO `oc_zone` VALUES(2843, 179, 'Praslin', 'PR', 1);
INSERT INTO `oc_zone` VALUES(2844, 179, 'Soufriere', 'SO', 1);
INSERT INTO `oc_zone` VALUES(2845, 179, 'Vieux-Fort', 'VF', 1);
INSERT INTO `oc_zone` VALUES(2846, 180, 'Charlotte', 'C', 1);
INSERT INTO `oc_zone` VALUES(2847, 180, 'Grenadines', 'R', 1);
INSERT INTO `oc_zone` VALUES(2848, 180, 'Saint Andrew', 'A', 1);
INSERT INTO `oc_zone` VALUES(2849, 180, 'Saint David', 'D', 1);
INSERT INTO `oc_zone` VALUES(2850, 180, 'Saint George', 'G', 1);
INSERT INTO `oc_zone` VALUES(2851, 180, 'Saint Patrick', 'P', 1);
INSERT INTO `oc_zone` VALUES(2852, 181, 'A''ana', 'AN', 1);
INSERT INTO `oc_zone` VALUES(2853, 181, 'Aiga-i-le-Tai', 'AI', 1);
INSERT INTO `oc_zone` VALUES(2854, 181, 'Atua', 'AT', 1);
INSERT INTO `oc_zone` VALUES(2855, 181, 'Fa''asaleleaga', 'FA', 1);
INSERT INTO `oc_zone` VALUES(2856, 181, 'Gaga''emauga', 'GE', 1);
INSERT INTO `oc_zone` VALUES(2857, 181, 'Gagaifomauga', 'GF', 1);
INSERT INTO `oc_zone` VALUES(2858, 181, 'Palauli', 'PA', 1);
INSERT INTO `oc_zone` VALUES(2859, 181, 'Satupa''itea', 'SA', 1);
INSERT INTO `oc_zone` VALUES(2860, 181, 'Tuamasaga', 'TU', 1);
INSERT INTO `oc_zone` VALUES(2861, 181, 'Va''a-o-Fonoti', 'VF', 1);
INSERT INTO `oc_zone` VALUES(2862, 181, 'Vaisigano', 'VS', 1);
INSERT INTO `oc_zone` VALUES(2863, 182, 'Acquaviva', 'AC', 1);
INSERT INTO `oc_zone` VALUES(2864, 182, 'Borgo Maggiore', 'BM', 1);
INSERT INTO `oc_zone` VALUES(2865, 182, 'Chiesanuova', 'CH', 1);
INSERT INTO `oc_zone` VALUES(2866, 182, 'Domagnano', 'DO', 1);
INSERT INTO `oc_zone` VALUES(2867, 182, 'Faetano', 'FA', 1);
INSERT INTO `oc_zone` VALUES(2868, 182, 'Fiorentino', 'FI', 1);
INSERT INTO `oc_zone` VALUES(2869, 182, 'Montegiardino', 'MO', 1);
INSERT INTO `oc_zone` VALUES(2870, 182, 'Citta di San Marino', 'SM', 1);
INSERT INTO `oc_zone` VALUES(2871, 182, 'Serravalle', 'SE', 1);
INSERT INTO `oc_zone` VALUES(2872, 183, 'Sao Tome', 'S', 1);
INSERT INTO `oc_zone` VALUES(2873, 183, 'Principe', 'P', 1);
INSERT INTO `oc_zone` VALUES(2874, 184, 'Al Bahah', 'BH', 1);
INSERT INTO `oc_zone` VALUES(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1);
INSERT INTO `oc_zone` VALUES(2876, 184, 'Al Jawf', 'JF', 1);
INSERT INTO `oc_zone` VALUES(2877, 184, 'Al Madinah', 'MD', 1);
INSERT INTO `oc_zone` VALUES(2878, 184, 'Al Qasim', 'QS', 1);
INSERT INTO `oc_zone` VALUES(2879, 184, 'Ar Riyad', 'RD', 1);
INSERT INTO `oc_zone` VALUES(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1);
INSERT INTO `oc_zone` VALUES(2881, 184, '''Asir', 'AS', 1);
INSERT INTO `oc_zone` VALUES(2882, 184, 'Ha''il', 'HL', 1);
INSERT INTO `oc_zone` VALUES(2883, 184, 'Jizan', 'JZ', 1);
INSERT INTO `oc_zone` VALUES(2884, 184, 'Makkah', 'ML', 1);
INSERT INTO `oc_zone` VALUES(2885, 184, 'Najran', 'NR', 1);
INSERT INTO `oc_zone` VALUES(2886, 184, 'Tabuk', 'TB', 1);
INSERT INTO `oc_zone` VALUES(2887, 185, 'Dakar', 'DA', 1);
INSERT INTO `oc_zone` VALUES(2888, 185, 'Diourbel', 'DI', 1);
INSERT INTO `oc_zone` VALUES(2889, 185, 'Fatick', 'FA', 1);
INSERT INTO `oc_zone` VALUES(2890, 185, 'Kaolack', 'KA', 1);
INSERT INTO `oc_zone` VALUES(2891, 185, 'Kolda', 'KO', 1);
INSERT INTO `oc_zone` VALUES(2892, 185, 'Louga', 'LO', 1);
INSERT INTO `oc_zone` VALUES(2893, 185, 'Matam', 'MA', 1);
INSERT INTO `oc_zone` VALUES(2894, 185, 'Saint-Louis', 'SL', 1);
INSERT INTO `oc_zone` VALUES(2895, 185, 'Tambacounda', 'TA', 1);
INSERT INTO `oc_zone` VALUES(2896, 185, 'Thies', 'TH', 1);
INSERT INTO `oc_zone` VALUES(2897, 185, 'Ziguinchor', 'ZI', 1);
INSERT INTO `oc_zone` VALUES(2898, 186, 'Anse aux Pins', 'AP', 1);
INSERT INTO `oc_zone` VALUES(2899, 186, 'Anse Boileau', 'AB', 1);
INSERT INTO `oc_zone` VALUES(2900, 186, 'Anse Etoile', 'AE', 1);
INSERT INTO `oc_zone` VALUES(2901, 186, 'Anse Louis', 'AL', 1);
INSERT INTO `oc_zone` VALUES(2902, 186, 'Anse Royale', 'AR', 1);
INSERT INTO `oc_zone` VALUES(2903, 186, 'Baie Lazare', 'BL', 1);
INSERT INTO `oc_zone` VALUES(2904, 186, 'Baie Sainte Anne', 'BS', 1);
INSERT INTO `oc_zone` VALUES(2905, 186, 'Beau Vallon', 'BV', 1);
INSERT INTO `oc_zone` VALUES(2906, 186, 'Bel Air', 'BA', 1);
INSERT INTO `oc_zone` VALUES(2907, 186, 'Bel Ombre', 'BO', 1);
INSERT INTO `oc_zone` VALUES(2908, 186, 'Cascade', 'CA', 1);
INSERT INTO `oc_zone` VALUES(2909, 186, 'Glacis', 'GL', 1);
INSERT INTO `oc_zone` VALUES(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1);
INSERT INTO `oc_zone` VALUES(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1);
INSERT INTO `oc_zone` VALUES(2912, 186, 'La Digue', 'DG', 1);
INSERT INTO `oc_zone` VALUES(2913, 186, 'La Riviere Anglaise', 'RA', 1);
INSERT INTO `oc_zone` VALUES(2914, 186, 'Mont Buxton', 'MB', 1);
INSERT INTO `oc_zone` VALUES(2915, 186, 'Mont Fleuri', 'MF', 1);
INSERT INTO `oc_zone` VALUES(2916, 186, 'Plaisance', 'PL', 1);
INSERT INTO `oc_zone` VALUES(2917, 186, 'Pointe La Rue', 'PR', 1);
INSERT INTO `oc_zone` VALUES(2918, 186, 'Port Glaud', 'PG', 1);
INSERT INTO `oc_zone` VALUES(2919, 186, 'Saint Louis', 'SL', 1);
INSERT INTO `oc_zone` VALUES(2920, 186, 'Takamaka', 'TA', 1);
INSERT INTO `oc_zone` VALUES(2921, 187, 'Eastern', 'E', 1);
INSERT INTO `oc_zone` VALUES(2922, 187, 'Northern', 'N', 1);
INSERT INTO `oc_zone` VALUES(2923, 187, 'Southern', 'S', 1);
INSERT INTO `oc_zone` VALUES(2924, 187, 'Western', 'W', 1);
INSERT INTO `oc_zone` VALUES(2925, 189, 'Banskobystrický', 'BA', 1);
INSERT INTO `oc_zone` VALUES(2926, 189, 'Bratislavský', 'BR', 1);
INSERT INTO `oc_zone` VALUES(2927, 189, 'Košický', 'KO', 1);
INSERT INTO `oc_zone` VALUES(2928, 189, 'Nitriansky', 'NI', 1);
INSERT INTO `oc_zone` VALUES(2929, 189, 'Prešovský', 'PR', 1);
INSERT INTO `oc_zone` VALUES(2930, 189, 'Trenciansky', 'TC', 1);
INSERT INTO `oc_zone` VALUES(2931, 189, 'Trnavský', 'TV', 1);
INSERT INTO `oc_zone` VALUES(2932, 189, 'Žilinský', 'ZI', 1);
INSERT INTO `oc_zone` VALUES(2933, 191, 'Central', 'CE', 1);
INSERT INTO `oc_zone` VALUES(2934, 191, 'Choiseul', 'CH', 1);
INSERT INTO `oc_zone` VALUES(2935, 191, 'Guadalcanal', 'GC', 1);
INSERT INTO `oc_zone` VALUES(2936, 191, 'Honiara', 'HO', 1);
INSERT INTO `oc_zone` VALUES(2937, 191, 'Isabel', 'IS', 1);
INSERT INTO `oc_zone` VALUES(2938, 191, 'Makira', 'MK', 1);
INSERT INTO `oc_zone` VALUES(2939, 191, 'Malaita', 'ML', 1);
INSERT INTO `oc_zone` VALUES(2940, 191, 'Rennell and Bellona', 'RB', 1);
INSERT INTO `oc_zone` VALUES(2941, 191, 'Temotu', 'TM', 1);
INSERT INTO `oc_zone` VALUES(2942, 191, 'Western', 'WE', 1);
INSERT INTO `oc_zone` VALUES(2943, 192, 'Awdal', 'AW', 1);
INSERT INTO `oc_zone` VALUES(2944, 192, 'Bakool', 'BK', 1);
INSERT INTO `oc_zone` VALUES(2945, 192, 'Banaadir', 'BN', 1);
INSERT INTO `oc_zone` VALUES(2946, 192, 'Bari', 'BR', 1);
INSERT INTO `oc_zone` VALUES(2947, 192, 'Bay', 'BY', 1);
INSERT INTO `oc_zone` VALUES(2948, 192, 'Galguduud', 'GA', 1);
INSERT INTO `oc_zone` VALUES(2949, 192, 'Gedo', 'GE', 1);
INSERT INTO `oc_zone` VALUES(2950, 192, 'Hiiraan', 'HI', 1);
INSERT INTO `oc_zone` VALUES(2951, 192, 'Jubbada Dhexe', 'JD', 1);
INSERT INTO `oc_zone` VALUES(2952, 192, 'Jubbada Hoose', 'JH', 1);
INSERT INTO `oc_zone` VALUES(2953, 192, 'Mudug', 'MU', 1);
INSERT INTO `oc_zone` VALUES(2954, 192, 'Nugaal', 'NU', 1);
INSERT INTO `oc_zone` VALUES(2955, 192, 'Sanaag', 'SA', 1);
INSERT INTO `oc_zone` VALUES(2956, 192, 'Shabeellaha Dhexe', 'SD', 1);
INSERT INTO `oc_zone` VALUES(2957, 192, 'Shabeellaha Hoose', 'SH', 1);
INSERT INTO `oc_zone` VALUES(2958, 192, 'Sool', 'SL', 1);
INSERT INTO `oc_zone` VALUES(2959, 192, 'Togdheer', 'TO', 1);
INSERT INTO `oc_zone` VALUES(2960, 192, 'Woqooyi Galbeed', 'WG', 1);
INSERT INTO `oc_zone` VALUES(2961, 193, 'Eastern Cape', 'EC', 1);
INSERT INTO `oc_zone` VALUES(2962, 193, 'Free State', 'FS', 1);
INSERT INTO `oc_zone` VALUES(2963, 193, 'Gauteng', 'GT', 1);
INSERT INTO `oc_zone` VALUES(2964, 193, 'KwaZulu-Natal', 'KN', 1);
INSERT INTO `oc_zone` VALUES(2965, 193, 'Limpopo', 'LP', 1);
INSERT INTO `oc_zone` VALUES(2966, 193, 'Mpumalanga', 'MP', 1);
INSERT INTO `oc_zone` VALUES(2967, 193, 'North West', 'NW', 1);
INSERT INTO `oc_zone` VALUES(2968, 193, 'Northern Cape', 'NC', 1);
INSERT INTO `oc_zone` VALUES(2969, 193, 'Western Cape', 'WC', 1);
INSERT INTO `oc_zone` VALUES(2970, 195, 'La Coru&ntilde;a', 'CA', 1);
INSERT INTO `oc_zone` VALUES(2971, 195, '&Aacute;lava', 'AL', 1);
INSERT INTO `oc_zone` VALUES(2972, 195, 'Albacete', 'AB', 1);
INSERT INTO `oc_zone` VALUES(2973, 195, 'Alicante', 'AC', 1);
INSERT INTO `oc_zone` VALUES(2974, 195, 'Almeria', 'AM', 1);
INSERT INTO `oc_zone` VALUES(2975, 195, 'Asturias', 'AS', 1);
INSERT INTO `oc_zone` VALUES(2976, 195, '&Aacute;vila', 'AV', 1);
INSERT INTO `oc_zone` VALUES(2977, 195, 'Badajoz', 'BJ', 1);
INSERT INTO `oc_zone` VALUES(2978, 195, 'Baleares', 'IB', 1);
INSERT INTO `oc_zone` VALUES(2979, 195, 'Barcelona', 'BA', 1);
INSERT INTO `oc_zone` VALUES(2980, 195, 'Burgos', 'BU', 1);
INSERT INTO `oc_zone` VALUES(2981, 195, 'C&aacute;ceres', 'CC', 1);
INSERT INTO `oc_zone` VALUES(2982, 195, 'C&aacute;diz', 'CZ', 1);
INSERT INTO `oc_zone` VALUES(2983, 195, 'Cantabria', 'CT', 1);
INSERT INTO `oc_zone` VALUES(2984, 195, 'Castell&oacute;n', 'CL', 1);
INSERT INTO `oc_zone` VALUES(2985, 195, 'Ceuta', 'CE', 1);
INSERT INTO `oc_zone` VALUES(2986, 195, 'Ciudad Real', 'CR', 1);
INSERT INTO `oc_zone` VALUES(2987, 195, 'C&oacute;rdoba', 'CD', 1);
INSERT INTO `oc_zone` VALUES(2988, 195, 'Cuenca', 'CU', 1);
INSERT INTO `oc_zone` VALUES(2989, 195, 'Girona', 'GI', 1);
INSERT INTO `oc_zone` VALUES(2990, 195, 'Granada', 'GD', 1);
INSERT INTO `oc_zone` VALUES(2991, 195, 'Guadalajara', 'GJ', 1);
INSERT INTO `oc_zone` VALUES(2992, 195, 'Guip&uacute;zcoa', 'GP', 1);
INSERT INTO `oc_zone` VALUES(2993, 195, 'Huelva', 'HL', 1);
INSERT INTO `oc_zone` VALUES(2994, 195, 'Huesca', 'HS', 1);
INSERT INTO `oc_zone` VALUES(2995, 195, 'Ja&eacute;n', 'JN', 1);
INSERT INTO `oc_zone` VALUES(2996, 195, 'La Rioja', 'RJ', 1);
INSERT INTO `oc_zone` VALUES(2997, 195, 'Las Palmas', 'PM', 1);
INSERT INTO `oc_zone` VALUES(2998, 195, 'Leon', 'LE', 1);
INSERT INTO `oc_zone` VALUES(2999, 195, 'Lleida', 'LL', 1);
INSERT INTO `oc_zone` VALUES(3000, 195, 'Lugo', 'LG', 1);
INSERT INTO `oc_zone` VALUES(3001, 195, 'Madrid', 'MD', 1);
INSERT INTO `oc_zone` VALUES(3002, 195, 'Malaga', 'MA', 1);
INSERT INTO `oc_zone` VALUES(3003, 195, 'Melilla', 'ML', 1);
INSERT INTO `oc_zone` VALUES(3004, 195, 'Murcia', 'MU', 1);
INSERT INTO `oc_zone` VALUES(3005, 195, 'Navarra', 'NV', 1);
INSERT INTO `oc_zone` VALUES(3006, 195, 'Ourense', 'OU', 1);
INSERT INTO `oc_zone` VALUES(3007, 195, 'Palencia', 'PL', 1);
INSERT INTO `oc_zone` VALUES(3008, 195, 'Pontevedra', 'PO', 1);
INSERT INTO `oc_zone` VALUES(3009, 195, 'Salamanca', 'SL', 1);
INSERT INTO `oc_zone` VALUES(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1);
INSERT INTO `oc_zone` VALUES(3011, 195, 'Segovia', 'SG', 1);
INSERT INTO `oc_zone` VALUES(3012, 195, 'Sevilla', 'SV', 1);
INSERT INTO `oc_zone` VALUES(3013, 195, 'Soria', 'SO', 1);
INSERT INTO `oc_zone` VALUES(3014, 195, 'Tarragona', 'TA', 1);
INSERT INTO `oc_zone` VALUES(3015, 195, 'Teruel', 'TE', 1);
INSERT INTO `oc_zone` VALUES(3016, 195, 'Toledo', 'TO', 1);
INSERT INTO `oc_zone` VALUES(3017, 195, 'Valencia', 'VC', 1);
INSERT INTO `oc_zone` VALUES(3018, 195, 'Valladolid', 'VD', 1);
INSERT INTO `oc_zone` VALUES(3019, 195, 'Vizcaya', 'VZ', 1);
INSERT INTO `oc_zone` VALUES(3020, 195, 'Zamora', 'ZM', 1);
INSERT INTO `oc_zone` VALUES(3021, 195, 'Zaragoza', 'ZR', 1);
INSERT INTO `oc_zone` VALUES(3022, 196, 'Central', 'CE', 1);
INSERT INTO `oc_zone` VALUES(3023, 196, 'Eastern', 'EA', 1);
INSERT INTO `oc_zone` VALUES(3024, 196, 'North Central', 'NC', 1);
INSERT INTO `oc_zone` VALUES(3025, 196, 'Northern', 'NO', 1);
INSERT INTO `oc_zone` VALUES(3026, 196, 'North Western', 'NW', 1);
INSERT INTO `oc_zone` VALUES(3027, 196, 'Sabaragamuwa', 'SA', 1);
INSERT INTO `oc_zone` VALUES(3028, 196, 'Southern', 'SO', 1);
INSERT INTO `oc_zone` VALUES(3029, 196, 'Uva', 'UV', 1);
INSERT INTO `oc_zone` VALUES(3030, 196, 'Western', 'WE', 1);
INSERT INTO `oc_zone` VALUES(3031, 197, 'Ascension', 'A', 1);
INSERT INTO `oc_zone` VALUES(3032, 197, 'Saint Helena', 'S', 1);
INSERT INTO `oc_zone` VALUES(3033, 197, 'Tristan da Cunha', 'T', 1);
INSERT INTO `oc_zone` VALUES(3034, 199, 'A''ali an Nil', 'ANL', 1);
INSERT INTO `oc_zone` VALUES(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1);
INSERT INTO `oc_zone` VALUES(3036, 199, 'Al Buhayrat', 'BRT', 1);
INSERT INTO `oc_zone` VALUES(3037, 199, 'Al Jazirah', 'JZR', 1);
INSERT INTO `oc_zone` VALUES(3038, 199, 'Al Khartum', 'KRT', 1);
INSERT INTO `oc_zone` VALUES(3039, 199, 'Al Qadarif', 'QDR', 1);
INSERT INTO `oc_zone` VALUES(3040, 199, 'Al Wahdah', 'WDH', 1);
INSERT INTO `oc_zone` VALUES(3041, 199, 'An Nil al Abyad', 'ANB', 1);
INSERT INTO `oc_zone` VALUES(3042, 199, 'An Nil al Azraq', 'ANZ', 1);
INSERT INTO `oc_zone` VALUES(3043, 199, 'Ash Shamaliyah', 'ASH', 1);
INSERT INTO `oc_zone` VALUES(3044, 199, 'Bahr al Jabal', 'BJA', 1);
INSERT INTO `oc_zone` VALUES(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1);
INSERT INTO `oc_zone` VALUES(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1);
INSERT INTO `oc_zone` VALUES(3047, 199, 'Gharb Darfur', 'GDA', 1);
INSERT INTO `oc_zone` VALUES(3048, 199, 'Gharb Kurdufan', 'GKU', 1);
INSERT INTO `oc_zone` VALUES(3049, 199, 'Janub Darfur', 'JDA', 1);
INSERT INTO `oc_zone` VALUES(3050, 199, 'Janub Kurdufan', 'JKU', 1);
INSERT INTO `oc_zone` VALUES(3051, 199, 'Junqali', 'JQL', 1);
INSERT INTO `oc_zone` VALUES(3052, 199, 'Kassala', 'KSL', 1);
INSERT INTO `oc_zone` VALUES(3053, 199, 'Nahr an Nil', 'NNL', 1);
INSERT INTO `oc_zone` VALUES(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1);
INSERT INTO `oc_zone` VALUES(3055, 199, 'Shamal Darfur', 'SDA', 1);
INSERT INTO `oc_zone` VALUES(3056, 199, 'Shamal Kurdufan', 'SKU', 1);
INSERT INTO `oc_zone` VALUES(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1);
INSERT INTO `oc_zone` VALUES(3058, 199, 'Sinnar', 'SNR', 1);
INSERT INTO `oc_zone` VALUES(3059, 199, 'Warab', 'WRB', 1);
INSERT INTO `oc_zone` VALUES(3060, 200, 'Brokopondo', 'BR', 1);
INSERT INTO `oc_zone` VALUES(3061, 200, 'Commewijne', 'CM', 1);
INSERT INTO `oc_zone` VALUES(3062, 200, 'Coronie', 'CR', 1);
INSERT INTO `oc_zone` VALUES(3063, 200, 'Marowijne', 'MA', 1);
INSERT INTO `oc_zone` VALUES(3064, 200, 'Nickerie', 'NI', 1);
INSERT INTO `oc_zone` VALUES(3065, 200, 'Para', 'PA', 1);
INSERT INTO `oc_zone` VALUES(3066, 200, 'Paramaribo', 'PM', 1);
INSERT INTO `oc_zone` VALUES(3067, 200, 'Saramacca', 'SA', 1);
INSERT INTO `oc_zone` VALUES(3068, 200, 'Sipaliwini', 'SI', 1);
INSERT INTO `oc_zone` VALUES(3069, 200, 'Wanica', 'WA', 1);
INSERT INTO `oc_zone` VALUES(3070, 202, 'Hhohho', 'H', 1);
INSERT INTO `oc_zone` VALUES(3071, 202, 'Lubombo', 'L', 1);
INSERT INTO `oc_zone` VALUES(3072, 202, 'Manzini', 'M', 1);
INSERT INTO `oc_zone` VALUES(3073, 202, 'Shishelweni', 'S', 1);
INSERT INTO `oc_zone` VALUES(3074, 203, 'Blekinge', 'K', 1);
INSERT INTO `oc_zone` VALUES(3075, 203, 'Dalarna', 'W', 1);
INSERT INTO `oc_zone` VALUES(3076, 203, 'G&auml;vleborg', 'X', 1);
INSERT INTO `oc_zone` VALUES(3077, 203, 'Gotland', 'I', 1);
INSERT INTO `oc_zone` VALUES(3078, 203, 'Halland', 'N', 1);
INSERT INTO `oc_zone` VALUES(3079, 203, 'J&auml;mtland', 'Z', 1);
INSERT INTO `oc_zone` VALUES(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1);
INSERT INTO `oc_zone` VALUES(3081, 203, 'Kalmar', 'H', 1);
INSERT INTO `oc_zone` VALUES(3082, 203, 'Kronoberg', 'G', 1);
INSERT INTO `oc_zone` VALUES(3083, 203, 'Norrbotten', 'BD', 1);
INSERT INTO `oc_zone` VALUES(3084, 203, '&Ouml;rebro', 'T', 1);
INSERT INTO `oc_zone` VALUES(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1);
INSERT INTO `oc_zone` VALUES(3086, 203, 'Sk&aring;ne', 'M', 1);
INSERT INTO `oc_zone` VALUES(3087, 203, 'S&ouml;dermanland', 'D', 1);
INSERT INTO `oc_zone` VALUES(3088, 203, 'Stockholm', 'AB', 1);
INSERT INTO `oc_zone` VALUES(3089, 203, 'Uppsala', 'C', 1);
INSERT INTO `oc_zone` VALUES(3090, 203, 'V&auml;rmland', 'S', 1);
INSERT INTO `oc_zone` VALUES(3091, 203, 'V&auml;sterbotten', 'AC', 1);
INSERT INTO `oc_zone` VALUES(3092, 203, 'V&auml;sternorrland', 'Y', 1);
INSERT INTO `oc_zone` VALUES(3093, 203, 'V&auml;stmanland', 'U', 1);
INSERT INTO `oc_zone` VALUES(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1);
INSERT INTO `oc_zone` VALUES(3095, 204, 'Aargau', 'AG', 1);
INSERT INTO `oc_zone` VALUES(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1);
INSERT INTO `oc_zone` VALUES(3097, 204, 'Appenzell Innerrhoden', 'AI', 1);
INSERT INTO `oc_zone` VALUES(3098, 204, 'Basel-Stadt', 'BS', 1);
INSERT INTO `oc_zone` VALUES(3099, 204, 'Basel-Landschaft', 'BL', 1);
INSERT INTO `oc_zone` VALUES(3100, 204, 'Bern', 'BE', 1);
INSERT INTO `oc_zone` VALUES(3101, 204, 'Fribourg', 'FR', 1);
INSERT INTO `oc_zone` VALUES(3102, 204, 'Gen&egrave;ve', 'GE', 1);
INSERT INTO `oc_zone` VALUES(3103, 204, 'Glarus', 'GL', 1);
INSERT INTO `oc_zone` VALUES(3104, 204, 'Graub&uuml;nden', 'GR', 1);
INSERT INTO `oc_zone` VALUES(3105, 204, 'Jura', 'JU', 1);
INSERT INTO `oc_zone` VALUES(3106, 204, 'Luzern', 'LU', 1);
INSERT INTO `oc_zone` VALUES(3107, 204, 'Neuch&acirc;tel', 'NE', 1);
INSERT INTO `oc_zone` VALUES(3108, 204, 'Nidwald', 'NW', 1);
INSERT INTO `oc_zone` VALUES(3109, 204, 'Obwald', 'OW', 1);
INSERT INTO `oc_zone` VALUES(3110, 204, 'St. Gallen', 'SG', 1);
INSERT INTO `oc_zone` VALUES(3111, 204, 'Schaffhausen', 'SH', 1);
INSERT INTO `oc_zone` VALUES(3112, 204, 'Schwyz', 'SZ', 1);
INSERT INTO `oc_zone` VALUES(3113, 204, 'Solothurn', 'SO', 1);
INSERT INTO `oc_zone` VALUES(3114, 204, 'Thurgau', 'TG', 1);
INSERT INTO `oc_zone` VALUES(3115, 204, 'Ticino', 'TI', 1);
INSERT INTO `oc_zone` VALUES(3116, 204, 'Uri', 'UR', 1);
INSERT INTO `oc_zone` VALUES(3117, 204, 'Valais', 'VS', 1);
INSERT INTO `oc_zone` VALUES(3118, 204, 'Vaud', 'VD', 1);
INSERT INTO `oc_zone` VALUES(3119, 204, 'Zug', 'ZG', 1);
INSERT INTO `oc_zone` VALUES(3120, 204, 'Z&uuml;rich', 'ZH', 1);
INSERT INTO `oc_zone` VALUES(3121, 205, 'Al Hasakah', 'HA', 1);
INSERT INTO `oc_zone` VALUES(3122, 205, 'Al Ladhiqiyah', 'LA', 1);
INSERT INTO `oc_zone` VALUES(3123, 205, 'Al Qunaytirah', 'QU', 1);
INSERT INTO `oc_zone` VALUES(3124, 205, 'Ar Raqqah', 'RQ', 1);
INSERT INTO `oc_zone` VALUES(3125, 205, 'As Suwayda', 'SU', 1);
INSERT INTO `oc_zone` VALUES(3126, 205, 'Dara', 'DA', 1);
INSERT INTO `oc_zone` VALUES(3127, 205, 'Dayr az Zawr', 'DZ', 1);
INSERT INTO `oc_zone` VALUES(3128, 205, 'Dimashq', 'DI', 1);
INSERT INTO `oc_zone` VALUES(3129, 205, 'Halab', 'HL', 1);
INSERT INTO `oc_zone` VALUES(3130, 205, 'Hamah', 'HM', 1);
INSERT INTO `oc_zone` VALUES(3131, 205, 'Hims', 'HI', 1);
INSERT INTO `oc_zone` VALUES(3132, 205, 'Idlib', 'ID', 1);
INSERT INTO `oc_zone` VALUES(3133, 205, 'Rif Dimashq', 'RD', 1);
INSERT INTO `oc_zone` VALUES(3134, 205, 'Tartus', 'TA', 1);
INSERT INTO `oc_zone` VALUES(3135, 206, 'Chang-hua', 'CH', 1);
INSERT INTO `oc_zone` VALUES(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` VALUES(3137, 206, 'Hsin-chu', 'HS', 1);
INSERT INTO `oc_zone` VALUES(3138, 206, 'Hua-lien', 'HL', 1);
INSERT INTO `oc_zone` VALUES(3139, 206, 'I-lan', 'IL', 1);
INSERT INTO `oc_zone` VALUES(3140, 206, 'Kao-hsiung county', 'KH', 1);
INSERT INTO `oc_zone` VALUES(3141, 206, 'Kin-men', 'KM', 1);
INSERT INTO `oc_zone` VALUES(3142, 206, 'Lien-chiang', 'LC', 1);
INSERT INTO `oc_zone` VALUES(3143, 206, 'Miao-li', 'ML', 1);
INSERT INTO `oc_zone` VALUES(3144, 206, 'Nan-t''ou', 'NT', 1);
INSERT INTO `oc_zone` VALUES(3145, 206, 'P''eng-hu', 'PH', 1);
INSERT INTO `oc_zone` VALUES(3146, 206, 'P''ing-tung', 'PT', 1);
INSERT INTO `oc_zone` VALUES(3147, 206, 'T''ai-chung', 'TG', 1);
INSERT INTO `oc_zone` VALUES(3148, 206, 'T''ai-nan', 'TA', 1);
INSERT INTO `oc_zone` VALUES(3149, 206, 'T''ai-pei county', 'TP', 1);
INSERT INTO `oc_zone` VALUES(3150, 206, 'T''ai-tung', 'TT', 1);
INSERT INTO `oc_zone` VALUES(3151, 206, 'T''ao-yuan', 'TY', 1);
INSERT INTO `oc_zone` VALUES(3152, 206, 'Yun-lin', 'YL', 1);
INSERT INTO `oc_zone` VALUES(3153, 206, 'Chia-i city', 'CC', 1);
INSERT INTO `oc_zone` VALUES(3154, 206, 'Chi-lung', 'CL', 1);
INSERT INTO `oc_zone` VALUES(3155, 206, 'Hsin-chu', 'HC', 1);
INSERT INTO `oc_zone` VALUES(3156, 206, 'T''ai-chung', 'TH', 1);
INSERT INTO `oc_zone` VALUES(3157, 206, 'T''ai-nan', 'TN', 1);
INSERT INTO `oc_zone` VALUES(3158, 206, 'Kao-hsiung city', 'KC', 1);
INSERT INTO `oc_zone` VALUES(3159, 206, 'T''ai-pei city', 'TC', 1);
INSERT INTO `oc_zone` VALUES(3160, 207, 'Gorno-Badakhstan', 'GB', 1);
INSERT INTO `oc_zone` VALUES(3161, 207, 'Khatlon', 'KT', 1);
INSERT INTO `oc_zone` VALUES(3162, 207, 'Sughd', 'SU', 1);
INSERT INTO `oc_zone` VALUES(3163, 208, 'Arusha', 'AR', 1);
INSERT INTO `oc_zone` VALUES(3164, 208, 'Dar es Salaam', 'DS', 1);
INSERT INTO `oc_zone` VALUES(3165, 208, 'Dodoma', 'DO', 1);
INSERT INTO `oc_zone` VALUES(3166, 208, 'Iringa', 'IR', 1);
INSERT INTO `oc_zone` VALUES(3167, 208, 'Kagera', 'KA', 1);
INSERT INTO `oc_zone` VALUES(3168, 208, 'Kigoma', 'KI', 1);
INSERT INTO `oc_zone` VALUES(3169, 208, 'Kilimanjaro', 'KJ', 1);
INSERT INTO `oc_zone` VALUES(3170, 208, 'Lindi', 'LN', 1);
INSERT INTO `oc_zone` VALUES(3171, 208, 'Manyara', 'MY', 1);
INSERT INTO `oc_zone` VALUES(3172, 208, 'Mara', 'MR', 1);
INSERT INTO `oc_zone` VALUES(3173, 208, 'Mbeya', 'MB', 1);
INSERT INTO `oc_zone` VALUES(3174, 208, 'Morogoro', 'MO', 1);
INSERT INTO `oc_zone` VALUES(3175, 208, 'Mtwara', 'MT', 1);
INSERT INTO `oc_zone` VALUES(3176, 208, 'Mwanza', 'MW', 1);
INSERT INTO `oc_zone` VALUES(3177, 208, 'Pemba North', 'PN', 1);
INSERT INTO `oc_zone` VALUES(3178, 208, 'Pemba South', 'PS', 1);
INSERT INTO `oc_zone` VALUES(3179, 208, 'Pwani', 'PW', 1);
INSERT INTO `oc_zone` VALUES(3180, 208, 'Rukwa', 'RK', 1);
INSERT INTO `oc_zone` VALUES(3181, 208, 'Ruvuma', 'RV', 1);
INSERT INTO `oc_zone` VALUES(3182, 208, 'Shinyanga', 'SH', 1);
INSERT INTO `oc_zone` VALUES(3183, 208, 'Singida', 'SI', 1);
INSERT INTO `oc_zone` VALUES(3184, 208, 'Tabora', 'TB', 1);
INSERT INTO `oc_zone` VALUES(3185, 208, 'Tanga', 'TN', 1);
INSERT INTO `oc_zone` VALUES(3186, 208, 'Zanzibar Central/South', 'ZC', 1);
INSERT INTO `oc_zone` VALUES(3187, 208, 'Zanzibar North', 'ZN', 1);
INSERT INTO `oc_zone` VALUES(3188, 208, 'Zanzibar Urban/West', 'ZU', 1);
INSERT INTO `oc_zone` VALUES(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1);
INSERT INTO `oc_zone` VALUES(3190, 209, 'Ang Thong', 'Ang Thong', 1);
INSERT INTO `oc_zone` VALUES(3191, 209, 'Ayutthaya', 'Ayutthaya', 1);
INSERT INTO `oc_zone` VALUES(3192, 209, 'Bangkok', 'Bangkok', 1);
INSERT INTO `oc_zone` VALUES(3193, 209, 'Buriram', 'Buriram', 1);
INSERT INTO `oc_zone` VALUES(3194, 209, 'Chachoengsao', 'Chachoengsao', 1);
INSERT INTO `oc_zone` VALUES(3195, 209, 'Chai Nat', 'Chai Nat', 1);
INSERT INTO `oc_zone` VALUES(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1);
INSERT INTO `oc_zone` VALUES(3197, 209, 'Chanthaburi', 'Chanthaburi', 1);
INSERT INTO `oc_zone` VALUES(3198, 209, 'Chiang Mai', 'Chiang Mai', 1);
INSERT INTO `oc_zone` VALUES(3199, 209, 'Chiang Rai', 'Chiang Rai', 1);
INSERT INTO `oc_zone` VALUES(3200, 209, 'Chon Buri', 'Chon Buri', 1);
INSERT INTO `oc_zone` VALUES(3201, 209, 'Chumphon', 'Chumphon', 1);
INSERT INTO `oc_zone` VALUES(3202, 209, 'Kalasin', 'Kalasin', 1);
INSERT INTO `oc_zone` VALUES(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1);
INSERT INTO `oc_zone` VALUES(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1);
INSERT INTO `oc_zone` VALUES(3205, 209, 'Khon Kaen', 'Khon Kaen', 1);
INSERT INTO `oc_zone` VALUES(3206, 209, 'Krabi', 'Krabi', 1);
INSERT INTO `oc_zone` VALUES(3207, 209, 'Lampang', 'Lampang', 1);
INSERT INTO `oc_zone` VALUES(3208, 209, 'Lamphun', 'Lamphun', 1);
INSERT INTO `oc_zone` VALUES(3209, 209, 'Loei', 'Loei', 1);
INSERT INTO `oc_zone` VALUES(3210, 209, 'Lop Buri', 'Lop Buri', 1);
INSERT INTO `oc_zone` VALUES(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1);
INSERT INTO `oc_zone` VALUES(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1);
INSERT INTO `oc_zone` VALUES(3213, 209, 'Mukdahan', 'Mukdahan', 1);
INSERT INTO `oc_zone` VALUES(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1);
INSERT INTO `oc_zone` VALUES(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1);
INSERT INTO `oc_zone` VALUES(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1);
INSERT INTO `oc_zone` VALUES(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1);
INSERT INTO `oc_zone` VALUES(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1);
INSERT INTO `oc_zone` VALUES(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1);
INSERT INTO `oc_zone` VALUES(3220, 209, 'Nan', 'Nan', 1);
INSERT INTO `oc_zone` VALUES(3221, 209, 'Narathiwat', 'Narathiwat', 1);
INSERT INTO `oc_zone` VALUES(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1);
INSERT INTO `oc_zone` VALUES(3223, 209, 'Nong Khai', 'Nong Khai', 1);
INSERT INTO `oc_zone` VALUES(3224, 209, 'Nonthaburi', 'Nonthaburi', 1);
INSERT INTO `oc_zone` VALUES(3225, 209, 'Pathum Thani', 'Pathum Thani', 1);
INSERT INTO `oc_zone` VALUES(3226, 209, 'Pattani', 'Pattani', 1);
INSERT INTO `oc_zone` VALUES(3227, 209, 'Phangnga', 'Phangnga', 1);
INSERT INTO `oc_zone` VALUES(3228, 209, 'Phatthalung', 'Phatthalung', 1);
INSERT INTO `oc_zone` VALUES(3229, 209, 'Phayao', 'Phayao', 1);
INSERT INTO `oc_zone` VALUES(3230, 209, 'Phetchabun', 'Phetchabun', 1);
INSERT INTO `oc_zone` VALUES(3231, 209, 'Phetchaburi', 'Phetchaburi', 1);
INSERT INTO `oc_zone` VALUES(3232, 209, 'Phichit', 'Phichit', 1);
INSERT INTO `oc_zone` VALUES(3233, 209, 'Phitsanulok', 'Phitsanulok', 1);
INSERT INTO `oc_zone` VALUES(3234, 209, 'Phrae', 'Phrae', 1);
INSERT INTO `oc_zone` VALUES(3235, 209, 'Phuket', 'Phuket', 1);
INSERT INTO `oc_zone` VALUES(3236, 209, 'Prachin Buri', 'Prachin Buri', 1);
INSERT INTO `oc_zone` VALUES(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1);
INSERT INTO `oc_zone` VALUES(3238, 209, 'Ranong', 'Ranong', 1);
INSERT INTO `oc_zone` VALUES(3239, 209, 'Ratchaburi', 'Ratchaburi', 1);
INSERT INTO `oc_zone` VALUES(3240, 209, 'Rayong', 'Rayong', 1);
INSERT INTO `oc_zone` VALUES(3241, 209, 'Roi Et', 'Roi Et', 1);
INSERT INTO `oc_zone` VALUES(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1);
INSERT INTO `oc_zone` VALUES(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1);
INSERT INTO `oc_zone` VALUES(3244, 209, 'Samut Prakan', 'Samut Prakan', 1);
INSERT INTO `oc_zone` VALUES(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1);
INSERT INTO `oc_zone` VALUES(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1);
INSERT INTO `oc_zone` VALUES(3247, 209, 'Sara Buri', 'Sara Buri', 1);
INSERT INTO `oc_zone` VALUES(3248, 209, 'Satun', 'Satun', 1);
INSERT INTO `oc_zone` VALUES(3249, 209, 'Sing Buri', 'Sing Buri', 1);
INSERT INTO `oc_zone` VALUES(3250, 209, 'Sisaket', 'Sisaket', 1);
INSERT INTO `oc_zone` VALUES(3251, 209, 'Songkhla', 'Songkhla', 1);
INSERT INTO `oc_zone` VALUES(3252, 209, 'Sukhothai', 'Sukhothai', 1);
INSERT INTO `oc_zone` VALUES(3253, 209, 'Suphan Buri', 'Suphan Buri', 1);
INSERT INTO `oc_zone` VALUES(3254, 209, 'Surat Thani', 'Surat Thani', 1);
INSERT INTO `oc_zone` VALUES(3255, 209, 'Surin', 'Surin', 1);
INSERT INTO `oc_zone` VALUES(3256, 209, 'Tak', 'Tak', 1);
INSERT INTO `oc_zone` VALUES(3257, 209, 'Trang', 'Trang', 1);
INSERT INTO `oc_zone` VALUES(3258, 209, 'Trat', 'Trat', 1);
INSERT INTO `oc_zone` VALUES(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1);
INSERT INTO `oc_zone` VALUES(3260, 209, 'Udon Thani', 'Udon Thani', 1);
INSERT INTO `oc_zone` VALUES(3261, 209, 'Uthai Thani', 'Uthai Thani', 1);
INSERT INTO `oc_zone` VALUES(3262, 209, 'Uttaradit', 'Uttaradit', 1);
INSERT INTO `oc_zone` VALUES(3263, 209, 'Yala', 'Yala', 1);
INSERT INTO `oc_zone` VALUES(3264, 209, 'Yasothon', 'Yasothon', 1);
INSERT INTO `oc_zone` VALUES(3265, 210, 'Kara', 'K', 1);
INSERT INTO `oc_zone` VALUES(3266, 210, 'Plateaux', 'P', 1);
INSERT INTO `oc_zone` VALUES(3267, 210, 'Savanes', 'S', 1);
INSERT INTO `oc_zone` VALUES(3268, 210, 'Centrale', 'C', 1);
INSERT INTO `oc_zone` VALUES(3269, 210, 'Maritime', 'M', 1);
INSERT INTO `oc_zone` VALUES(3270, 211, 'Atafu', 'A', 1);
INSERT INTO `oc_zone` VALUES(3271, 211, 'Fakaofo', 'F', 1);
INSERT INTO `oc_zone` VALUES(3272, 211, 'Nukunonu', 'N', 1);
INSERT INTO `oc_zone` VALUES(3273, 212, 'Ha''apai', 'H', 1);
INSERT INTO `oc_zone` VALUES(3274, 212, 'Tongatapu', 'T', 1);
INSERT INTO `oc_zone` VALUES(3275, 212, 'Vava''u', 'V', 1);
INSERT INTO `oc_zone` VALUES(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1);
INSERT INTO `oc_zone` VALUES(3277, 213, 'Diego Martin', 'DM', 1);
INSERT INTO `oc_zone` VALUES(3278, 213, 'Mayaro/Rio Claro', 'MR', 1);
INSERT INTO `oc_zone` VALUES(3279, 213, 'Penal/Debe', 'PD', 1);
INSERT INTO `oc_zone` VALUES(3280, 213, 'Princes Town', 'PT', 1);
INSERT INTO `oc_zone` VALUES(3281, 213, 'Sangre Grande', 'SG', 1);
INSERT INTO `oc_zone` VALUES(3282, 213, 'San Juan/Laventille', 'SL', 1);
INSERT INTO `oc_zone` VALUES(3283, 213, 'Siparia', 'SI', 1);
INSERT INTO `oc_zone` VALUES(3284, 213, 'Tunapuna/Piarco', 'TP', 1);
INSERT INTO `oc_zone` VALUES(3285, 213, 'Port of Spain', 'PS', 1);
INSERT INTO `oc_zone` VALUES(3286, 213, 'San Fernando', 'SF', 1);
INSERT INTO `oc_zone` VALUES(3287, 213, 'Arima', 'AR', 1);
INSERT INTO `oc_zone` VALUES(3288, 213, 'Point Fortin', 'PF', 1);
INSERT INTO `oc_zone` VALUES(3289, 213, 'Chaguanas', 'CH', 1);
INSERT INTO `oc_zone` VALUES(3290, 213, 'Tobago', 'TO', 1);
INSERT INTO `oc_zone` VALUES(3291, 214, 'Ariana', 'AR', 1);
INSERT INTO `oc_zone` VALUES(3292, 214, 'Beja', 'BJ', 1);
INSERT INTO `oc_zone` VALUES(3293, 214, 'Ben Arous', 'BA', 1);
INSERT INTO `oc_zone` VALUES(3294, 214, 'Bizerte', 'BI', 1);
INSERT INTO `oc_zone` VALUES(3295, 214, 'Gabes', 'GB', 1);
INSERT INTO `oc_zone` VALUES(3296, 214, 'Gafsa', 'GF', 1);
INSERT INTO `oc_zone` VALUES(3297, 214, 'Jendouba', 'JE', 1);
INSERT INTO `oc_zone` VALUES(3298, 214, 'Kairouan', 'KR', 1);
INSERT INTO `oc_zone` VALUES(3299, 214, 'Kasserine', 'KS', 1);
INSERT INTO `oc_zone` VALUES(3300, 214, 'Kebili', 'KB', 1);
INSERT INTO `oc_zone` VALUES(3301, 214, 'Kef', 'KF', 1);
INSERT INTO `oc_zone` VALUES(3302, 214, 'Mahdia', 'MH', 1);
INSERT INTO `oc_zone` VALUES(3303, 214, 'Manouba', 'MN', 1);
INSERT INTO `oc_zone` VALUES(3304, 214, 'Medenine', 'ME', 1);
INSERT INTO `oc_zone` VALUES(3305, 214, 'Monastir', 'MO', 1);
INSERT INTO `oc_zone` VALUES(3306, 214, 'Nabeul', 'NA', 1);
INSERT INTO `oc_zone` VALUES(3307, 214, 'Sfax', 'SF', 1);
INSERT INTO `oc_zone` VALUES(3308, 214, 'Sidi', 'SD', 1);
INSERT INTO `oc_zone` VALUES(3309, 214, 'Siliana', 'SL', 1);
INSERT INTO `oc_zone` VALUES(3310, 214, 'Sousse', 'SO', 1);
INSERT INTO `oc_zone` VALUES(3311, 214, 'Tataouine', 'TA', 1);
INSERT INTO `oc_zone` VALUES(3312, 214, 'Tozeur', 'TO', 1);
INSERT INTO `oc_zone` VALUES(3313, 214, 'Tunis', 'TU', 1);
INSERT INTO `oc_zone` VALUES(3314, 214, 'Zaghouan', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(3315, 215, 'Adana', 'ADA', 1);
INSERT INTO `oc_zone` VALUES(3316, 215, 'Adiyaman', 'ADI', 1);
INSERT INTO `oc_zone` VALUES(3317, 215, 'Afyonkarahisar', 'AFY', 1);
INSERT INTO `oc_zone` VALUES(3318, 215, 'Agri', 'AGR', 1);
INSERT INTO `oc_zone` VALUES(3319, 215, 'Aksaray', 'AKS', 1);
INSERT INTO `oc_zone` VALUES(3320, 215, 'Amasya', 'AMA', 1);
INSERT INTO `oc_zone` VALUES(3321, 215, 'Ankara', 'ANK', 1);
INSERT INTO `oc_zone` VALUES(3322, 215, 'Antalya', 'ANT', 1);
INSERT INTO `oc_zone` VALUES(3323, 215, 'Ardahan', 'ARD', 1);
INSERT INTO `oc_zone` VALUES(3324, 215, 'Artvin', 'ART', 1);
INSERT INTO `oc_zone` VALUES(3325, 215, 'Aydin', 'AYI', 1);
INSERT INTO `oc_zone` VALUES(3326, 215, 'Balikesir', 'BAL', 1);
INSERT INTO `oc_zone` VALUES(3327, 215, 'Bartin', 'BAR', 1);
INSERT INTO `oc_zone` VALUES(3328, 215, 'Batman', 'BAT', 1);
INSERT INTO `oc_zone` VALUES(3329, 215, 'Bayburt', 'BAY', 1);
INSERT INTO `oc_zone` VALUES(3330, 215, 'Bilecik', 'BIL', 1);
INSERT INTO `oc_zone` VALUES(3331, 215, 'Bingöl', 'BIN', 1);
INSERT INTO `oc_zone` VALUES(3332, 215, 'Bitlis', 'BIT', 1);
INSERT INTO `oc_zone` VALUES(3333, 215, 'Bolu', 'BOL', 1);
INSERT INTO `oc_zone` VALUES(3334, 215, 'Burdur', 'BRD', 1);
INSERT INTO `oc_zone` VALUES(3335, 215, 'Bursa', 'BRS', 1);
INSERT INTO `oc_zone` VALUES(3336, 215, 'Çanakkale', 'CKL', 1);
INSERT INTO `oc_zone` VALUES(3337, 215, 'Çankiri', 'CKR', 1);
INSERT INTO `oc_zone` VALUES(3338, 215, 'Çorum', 'COR', 1);
INSERT INTO `oc_zone` VALUES(3339, 215, 'Denizli', 'DEN', 1);
INSERT INTO `oc_zone` VALUES(3340, 215, 'Diyarbakir', 'DIY', 1);
INSERT INTO `oc_zone` VALUES(3341, 215, 'Düzce', 'DUZ', 1);
INSERT INTO `oc_zone` VALUES(3342, 215, 'Edirne', 'EDI', 1);
INSERT INTO `oc_zone` VALUES(3343, 215, 'Elazig', 'ELA', 1);
INSERT INTO `oc_zone` VALUES(3344, 215, 'Erzincan', 'EZC', 1);
INSERT INTO `oc_zone` VALUES(3345, 215, 'Erzurum', 'EZR', 1);
INSERT INTO `oc_zone` VALUES(3346, 215, 'Eskisehir', 'ESK', 1);
INSERT INTO `oc_zone` VALUES(3347, 215, 'Gaziantep', 'GAZ', 1);
INSERT INTO `oc_zone` VALUES(3348, 215, 'Giresun', 'GIR', 1);
INSERT INTO `oc_zone` VALUES(3349, 215, 'Gümüshane', 'GMS', 1);
INSERT INTO `oc_zone` VALUES(3350, 215, 'Hakkari', 'HKR', 1);
INSERT INTO `oc_zone` VALUES(3351, 215, 'Hatay', 'HTY', 1);
INSERT INTO `oc_zone` VALUES(3352, 215, 'Igdir', 'IGD', 1);
INSERT INTO `oc_zone` VALUES(3353, 215, 'Isparta', 'ISP', 1);
INSERT INTO `oc_zone` VALUES(3354, 215, 'Istanbul', 'IST', 1);
INSERT INTO `oc_zone` VALUES(3355, 215, 'Izmir', 'IZM', 1);
INSERT INTO `oc_zone` VALUES(3356, 215, 'Kahramanmaras', 'KAH', 1);
INSERT INTO `oc_zone` VALUES(3357, 215, 'Karabük', 'KRB', 1);
INSERT INTO `oc_zone` VALUES(3358, 215, 'Karaman', 'KRM', 1);
INSERT INTO `oc_zone` VALUES(3359, 215, 'Kars', 'KRS', 1);
INSERT INTO `oc_zone` VALUES(3360, 215, 'Kastamonu', 'KAS', 1);
INSERT INTO `oc_zone` VALUES(3361, 215, 'Kayseri', 'KAY', 1);
INSERT INTO `oc_zone` VALUES(3362, 215, 'Kilis', 'KLS', 1);
INSERT INTO `oc_zone` VALUES(3363, 215, 'Kirikkale', 'KRK', 1);
INSERT INTO `oc_zone` VALUES(3364, 215, 'Kirklareli', 'KLR', 1);
INSERT INTO `oc_zone` VALUES(3365, 215, 'Kirsehir', 'KRH', 1);
INSERT INTO `oc_zone` VALUES(3366, 215, 'Kocaeli', 'KOC', 1);
INSERT INTO `oc_zone` VALUES(3367, 215, 'Konya', 'KON', 1);
INSERT INTO `oc_zone` VALUES(3368, 215, 'Kütahya', 'KUT', 1);
INSERT INTO `oc_zone` VALUES(3369, 215, 'Malatya', 'MAL', 1);
INSERT INTO `oc_zone` VALUES(3370, 215, 'Manisa', 'MAN', 1);
INSERT INTO `oc_zone` VALUES(3371, 215, 'Mardin', 'MAR', 1);
INSERT INTO `oc_zone` VALUES(3372, 215, 'Mersin', 'MER', 1);
INSERT INTO `oc_zone` VALUES(3373, 215, 'Mugla', 'MUG', 1);
INSERT INTO `oc_zone` VALUES(3374, 215, 'Mus', 'MUS', 1);
INSERT INTO `oc_zone` VALUES(3375, 215, 'Nevsehir', 'NEV', 1);
INSERT INTO `oc_zone` VALUES(3376, 215, 'Nigde', 'NIG', 1);
INSERT INTO `oc_zone` VALUES(3377, 215, 'Ordu', 'ORD', 1);
INSERT INTO `oc_zone` VALUES(3378, 215, 'Osmaniye', 'OSM', 1);
INSERT INTO `oc_zone` VALUES(3379, 215, 'Rize', 'RIZ', 1);
INSERT INTO `oc_zone` VALUES(3380, 215, 'Sakarya', 'SAK', 1);
INSERT INTO `oc_zone` VALUES(3381, 215, 'Samsun', 'SAM', 1);
INSERT INTO `oc_zone` VALUES(3382, 215, 'Sanliurfa', 'SAN', 1);
INSERT INTO `oc_zone` VALUES(3383, 215, 'Siirt', 'SII', 1);
INSERT INTO `oc_zone` VALUES(3384, 215, 'Sinop', 'SIN', 1);
INSERT INTO `oc_zone` VALUES(3385, 215, 'Sirnak', 'SIR', 1);
INSERT INTO `oc_zone` VALUES(3386, 215, 'Sivas', 'SIV', 1);
INSERT INTO `oc_zone` VALUES(3387, 215, 'Tekirdag', 'TEL', 1);
INSERT INTO `oc_zone` VALUES(3388, 215, 'Tokat', 'TOK', 1);
INSERT INTO `oc_zone` VALUES(3389, 215, 'Trabzon', 'TRA', 1);
INSERT INTO `oc_zone` VALUES(3390, 215, 'Tunceli', 'TUN', 1);
INSERT INTO `oc_zone` VALUES(3391, 215, 'Usak', 'USK', 1);
INSERT INTO `oc_zone` VALUES(3392, 215, 'Van', 'VAN', 1);
INSERT INTO `oc_zone` VALUES(3393, 215, 'Yalova', 'YAL', 1);
INSERT INTO `oc_zone` VALUES(3394, 215, 'Yozgat', 'YOZ', 1);
INSERT INTO `oc_zone` VALUES(3395, 215, 'Zonguldak', 'ZON', 1);
INSERT INTO `oc_zone` VALUES(3396, 216, 'Ahal Welayaty', 'A', 1);
INSERT INTO `oc_zone` VALUES(3397, 216, 'Balkan Welayaty', 'B', 1);
INSERT INTO `oc_zone` VALUES(3398, 216, 'Dashhowuz Welayaty', 'D', 1);
INSERT INTO `oc_zone` VALUES(3399, 216, 'Lebap Welayaty', 'L', 1);
INSERT INTO `oc_zone` VALUES(3400, 216, 'Mary Welayaty', 'M', 1);
INSERT INTO `oc_zone` VALUES(3401, 217, 'Ambergris Cays', 'AC', 1);
INSERT INTO `oc_zone` VALUES(3402, 217, 'Dellis Cay', 'DC', 1);
INSERT INTO `oc_zone` VALUES(3403, 217, 'French Cay', 'FC', 1);
INSERT INTO `oc_zone` VALUES(3404, 217, 'Little Water Cay', 'LW', 1);
INSERT INTO `oc_zone` VALUES(3405, 217, 'Parrot Cay', 'RC', 1);
INSERT INTO `oc_zone` VALUES(3406, 217, 'Pine Cay', 'PN', 1);
INSERT INTO `oc_zone` VALUES(3407, 217, 'Salt Cay', 'SL', 1);
INSERT INTO `oc_zone` VALUES(3408, 217, 'Grand Turk', 'GT', 1);
INSERT INTO `oc_zone` VALUES(3409, 217, 'South Caicos', 'SC', 1);
INSERT INTO `oc_zone` VALUES(3410, 217, 'East Caicos', 'EC', 1);
INSERT INTO `oc_zone` VALUES(3411, 217, 'Middle Caicos', 'MC', 1);
INSERT INTO `oc_zone` VALUES(3412, 217, 'North Caicos', 'NC', 1);
INSERT INTO `oc_zone` VALUES(3413, 217, 'Providenciales', 'PR', 1);
INSERT INTO `oc_zone` VALUES(3414, 217, 'West Caicos', 'WC', 1);
INSERT INTO `oc_zone` VALUES(3415, 218, 'Nanumanga', 'NMG', 1);
INSERT INTO `oc_zone` VALUES(3416, 218, 'Niulakita', 'NLK', 1);
INSERT INTO `oc_zone` VALUES(3417, 218, 'Niutao', 'NTO', 1);
INSERT INTO `oc_zone` VALUES(3418, 218, 'Funafuti', 'FUN', 1);
INSERT INTO `oc_zone` VALUES(3419, 218, 'Nanumea', 'NME', 1);
INSERT INTO `oc_zone` VALUES(3420, 218, 'Nui', 'NUI', 1);
INSERT INTO `oc_zone` VALUES(3421, 218, 'Nukufetau', 'NFT', 1);
INSERT INTO `oc_zone` VALUES(3422, 218, 'Nukulaelae', 'NLL', 1);
INSERT INTO `oc_zone` VALUES(3423, 218, 'Vaitupu', 'VAI', 1);
INSERT INTO `oc_zone` VALUES(3424, 219, 'Kalangala', 'KAL', 1);
INSERT INTO `oc_zone` VALUES(3425, 219, 'Kampala', 'KMP', 1);
INSERT INTO `oc_zone` VALUES(3426, 219, 'Kayunga', 'KAY', 1);
INSERT INTO `oc_zone` VALUES(3427, 219, 'Kiboga', 'KIB', 1);
INSERT INTO `oc_zone` VALUES(3428, 219, 'Luwero', 'LUW', 1);
INSERT INTO `oc_zone` VALUES(3429, 219, 'Masaka', 'MAS', 1);
INSERT INTO `oc_zone` VALUES(3430, 219, 'Mpigi', 'MPI', 1);
INSERT INTO `oc_zone` VALUES(3431, 219, 'Mubende', 'MUB', 1);
INSERT INTO `oc_zone` VALUES(3432, 219, 'Mukono', 'MUK', 1);
INSERT INTO `oc_zone` VALUES(3433, 219, 'Nakasongola', 'NKS', 1);
INSERT INTO `oc_zone` VALUES(3434, 219, 'Rakai', 'RAK', 1);
INSERT INTO `oc_zone` VALUES(3435, 219, 'Sembabule', 'SEM', 1);
INSERT INTO `oc_zone` VALUES(3436, 219, 'Wakiso', 'WAK', 1);
INSERT INTO `oc_zone` VALUES(3437, 219, 'Bugiri', 'BUG', 1);
INSERT INTO `oc_zone` VALUES(3438, 219, 'Busia', 'BUS', 1);
INSERT INTO `oc_zone` VALUES(3439, 219, 'Iganga', 'IGA', 1);
INSERT INTO `oc_zone` VALUES(3440, 219, 'Jinja', 'JIN', 1);
INSERT INTO `oc_zone` VALUES(3441, 219, 'Kaberamaido', 'KAB', 1);
INSERT INTO `oc_zone` VALUES(3442, 219, 'Kamuli', 'KML', 1);
INSERT INTO `oc_zone` VALUES(3443, 219, 'Kapchorwa', 'KPC', 1);
INSERT INTO `oc_zone` VALUES(3444, 219, 'Katakwi', 'KTK', 1);
INSERT INTO `oc_zone` VALUES(3445, 219, 'Kumi', 'KUM', 1);
INSERT INTO `oc_zone` VALUES(3446, 219, 'Mayuge', 'MAY', 1);
INSERT INTO `oc_zone` VALUES(3447, 219, 'Mbale', 'MBA', 1);
INSERT INTO `oc_zone` VALUES(3448, 219, 'Pallisa', 'PAL', 1);
INSERT INTO `oc_zone` VALUES(3449, 219, 'Sironko', 'SIR', 1);
INSERT INTO `oc_zone` VALUES(3450, 219, 'Soroti', 'SOR', 1);
INSERT INTO `oc_zone` VALUES(3451, 219, 'Tororo', 'TOR', 1);
INSERT INTO `oc_zone` VALUES(3452, 219, 'Adjumani', 'ADJ', 1);
INSERT INTO `oc_zone` VALUES(3453, 219, 'Apac', 'APC', 1);
INSERT INTO `oc_zone` VALUES(3454, 219, 'Arua', 'ARU', 1);
INSERT INTO `oc_zone` VALUES(3455, 219, 'Gulu', 'GUL', 1);
INSERT INTO `oc_zone` VALUES(3456, 219, 'Kitgum', 'KIT', 1);
INSERT INTO `oc_zone` VALUES(3457, 219, 'Kotido', 'KOT', 1);
INSERT INTO `oc_zone` VALUES(3458, 219, 'Lira', 'LIR', 1);
INSERT INTO `oc_zone` VALUES(3459, 219, 'Moroto', 'MRT', 1);
INSERT INTO `oc_zone` VALUES(3460, 219, 'Moyo', 'MOY', 1);
INSERT INTO `oc_zone` VALUES(3461, 219, 'Nakapiripirit', 'NAK', 1);
INSERT INTO `oc_zone` VALUES(3462, 219, 'Nebbi', 'NEB', 1);
INSERT INTO `oc_zone` VALUES(3463, 219, 'Pader', 'PAD', 1);
INSERT INTO `oc_zone` VALUES(3464, 219, 'Yumbe', 'YUM', 1);
INSERT INTO `oc_zone` VALUES(3465, 219, 'Bundibugyo', 'BUN', 1);
INSERT INTO `oc_zone` VALUES(3466, 219, 'Bushenyi', 'BSH', 1);
INSERT INTO `oc_zone` VALUES(3467, 219, 'Hoima', 'HOI', 1);
INSERT INTO `oc_zone` VALUES(3468, 219, 'Kabale', 'KBL', 1);
INSERT INTO `oc_zone` VALUES(3469, 219, 'Kabarole', 'KAR', 1);
INSERT INTO `oc_zone` VALUES(3470, 219, 'Kamwenge', 'KAM', 1);
INSERT INTO `oc_zone` VALUES(3471, 219, 'Kanungu', 'KAN', 1);
INSERT INTO `oc_zone` VALUES(3472, 219, 'Kasese', 'KAS', 1);
INSERT INTO `oc_zone` VALUES(3473, 219, 'Kibaale', 'KBA', 1);
INSERT INTO `oc_zone` VALUES(3474, 219, 'Kisoro', 'KIS', 1);
INSERT INTO `oc_zone` VALUES(3475, 219, 'Kyenjojo', 'KYE', 1);
INSERT INTO `oc_zone` VALUES(3476, 219, 'Masindi', 'MSN', 1);
INSERT INTO `oc_zone` VALUES(3477, 219, 'Mbarara', 'MBR', 1);
INSERT INTO `oc_zone` VALUES(3478, 219, 'Ntungamo', 'NTU', 1);
INSERT INTO `oc_zone` VALUES(3479, 219, 'Rukungiri', 'RUK', 1);
INSERT INTO `oc_zone` VALUES(3480, 220, 'Cherkasy', 'CK', 1);
INSERT INTO `oc_zone` VALUES(3481, 220, 'Chernihiv', 'CH', 1);
INSERT INTO `oc_zone` VALUES(3482, 220, 'Chernivtsi', 'CV', 1);
INSERT INTO `oc_zone` VALUES(3483, 220, 'Crimea', 'CR', 1);
INSERT INTO `oc_zone` VALUES(3484, 220, 'Dnipropetrovs''k', 'DN', 1);
INSERT INTO `oc_zone` VALUES(3485, 220, 'Donets''k', 'DO', 1);
INSERT INTO `oc_zone` VALUES(3486, 220, 'Ivano-Frankivs''k', 'IV', 1);
INSERT INTO `oc_zone` VALUES(3487, 220, 'Kharkiv Kherson', 'KL', 1);
INSERT INTO `oc_zone` VALUES(3488, 220, 'Khmel''nyts''kyy', 'KM', 1);
INSERT INTO `oc_zone` VALUES(3489, 220, 'Kirovohrad', 'KR', 1);
INSERT INTO `oc_zone` VALUES(3490, 220, 'Kiev', 'KV', 1);
INSERT INTO `oc_zone` VALUES(3491, 220, 'Kyyiv', 'KY', 1);
INSERT INTO `oc_zone` VALUES(3492, 220, 'Luhans''k', 'LU', 1);
INSERT INTO `oc_zone` VALUES(3493, 220, 'L''viv', 'LV', 1);
INSERT INTO `oc_zone` VALUES(3494, 220, 'Mykolayiv', 'MY', 1);
INSERT INTO `oc_zone` VALUES(3495, 220, 'Odesa', 'OD', 1);
INSERT INTO `oc_zone` VALUES(3496, 220, 'Poltava', 'PO', 1);
INSERT INTO `oc_zone` VALUES(3497, 220, 'Rivne', 'RI', 1);
INSERT INTO `oc_zone` VALUES(3498, 220, 'Sevastopol', 'SE', 1);
INSERT INTO `oc_zone` VALUES(3499, 220, 'Sumy', 'SU', 1);
INSERT INTO `oc_zone` VALUES(3500, 220, 'Ternopil''', 'TE', 1);
INSERT INTO `oc_zone` VALUES(3501, 220, 'Vinnytsya', 'VI', 1);
INSERT INTO `oc_zone` VALUES(3502, 220, 'Volyn''', 'VO', 1);
INSERT INTO `oc_zone` VALUES(3503, 220, 'Zakarpattya', 'ZK', 1);
INSERT INTO `oc_zone` VALUES(3504, 220, 'Zaporizhzhya', 'ZA', 1);
INSERT INTO `oc_zone` VALUES(3505, 220, 'Zhytomyr', 'ZH', 1);
INSERT INTO `oc_zone` VALUES(3506, 221, 'Abu Zaby', 'AZ', 1);
INSERT INTO `oc_zone` VALUES(3507, 221, '''Ajman', 'AJ', 1);
INSERT INTO `oc_zone` VALUES(3508, 221, 'Al Fujayrah', 'FU', 1);
INSERT INTO `oc_zone` VALUES(3509, 221, 'Ash Shariqah', 'SH', 1);
INSERT INTO `oc_zone` VALUES(3510, 221, 'Dubayy', 'DU', 1);
INSERT INTO `oc_zone` VALUES(3511, 221, 'R''as al Khaymah', 'RK', 1);
INSERT INTO `oc_zone` VALUES(3512, 221, 'Umm al Qaywayn', 'UQ', 1);
INSERT INTO `oc_zone` VALUES(3513, 222, 'Aberdeen', 'ABN', 1);
INSERT INTO `oc_zone` VALUES(3514, 222, 'Aberdeenshire', 'ABNS', 1);
INSERT INTO `oc_zone` VALUES(3515, 222, 'Anglesey', 'ANG', 1);
INSERT INTO `oc_zone` VALUES(3516, 222, 'Angus', 'AGS', 1);
INSERT INTO `oc_zone` VALUES(3517, 222, 'Argyll and Bute', 'ARY', 1);
INSERT INTO `oc_zone` VALUES(3518, 222, 'Bedfordshire', 'BEDS', 1);
INSERT INTO `oc_zone` VALUES(3519, 222, 'Berkshire', 'BERKS', 1);
INSERT INTO `oc_zone` VALUES(3520, 222, 'Blaenau Gwent', 'BLA', 1);
INSERT INTO `oc_zone` VALUES(3521, 222, 'Bridgend', 'BRI', 1);
INSERT INTO `oc_zone` VALUES(3522, 222, 'Bristol', 'BSTL', 1);
INSERT INTO `oc_zone` VALUES(3523, 222, 'Buckinghamshire', 'BUCKS', 1);
INSERT INTO `oc_zone` VALUES(3524, 222, 'Caerphilly', 'CAE', 1);
INSERT INTO `oc_zone` VALUES(3525, 222, 'Cambridgeshire', 'CAMBS', 1);
INSERT INTO `oc_zone` VALUES(3526, 222, 'Cardiff', 'CDF', 1);
INSERT INTO `oc_zone` VALUES(3527, 222, 'Carmarthenshire', 'CARM', 1);
INSERT INTO `oc_zone` VALUES(3528, 222, 'Ceredigion', 'CDGN', 1);
INSERT INTO `oc_zone` VALUES(3529, 222, 'Cheshire', 'CHES', 1);
INSERT INTO `oc_zone` VALUES(3530, 222, 'Clackmannanshire', 'CLACK', 1);
INSERT INTO `oc_zone` VALUES(3531, 222, 'Conwy', 'CON', 1);
INSERT INTO `oc_zone` VALUES(3532, 222, 'Cornwall', 'CORN', 1);
INSERT INTO `oc_zone` VALUES(3533, 222, 'Denbighshire', 'DNBG', 1);
INSERT INTO `oc_zone` VALUES(3534, 222, 'Derbyshire', 'DERBY', 1);
INSERT INTO `oc_zone` VALUES(3535, 222, 'Devon', 'DVN', 1);
INSERT INTO `oc_zone` VALUES(3536, 222, 'Dorset', 'DOR', 1);
INSERT INTO `oc_zone` VALUES(3537, 222, 'Dumfries and Galloway', 'DGL', 1);
INSERT INTO `oc_zone` VALUES(3538, 222, 'Dundee', 'DUND', 1);
INSERT INTO `oc_zone` VALUES(3539, 222, 'Durham', 'DHM', 1);
INSERT INTO `oc_zone` VALUES(3540, 222, 'East Ayrshire', 'ARYE', 1);
INSERT INTO `oc_zone` VALUES(3541, 222, 'East Dunbartonshire', 'DUNBE', 1);
INSERT INTO `oc_zone` VALUES(3542, 222, 'East Lothian', 'LOTE', 1);
INSERT INTO `oc_zone` VALUES(3543, 222, 'East Renfrewshire', 'RENE', 1);
INSERT INTO `oc_zone` VALUES(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1);
INSERT INTO `oc_zone` VALUES(3545, 222, 'East Sussex', 'SXE', 1);
INSERT INTO `oc_zone` VALUES(3546, 222, 'Edinburgh', 'EDIN', 1);
INSERT INTO `oc_zone` VALUES(3547, 222, 'Essex', 'ESX', 1);
INSERT INTO `oc_zone` VALUES(3548, 222, 'Falkirk', 'FALK', 1);
INSERT INTO `oc_zone` VALUES(3549, 222, 'Fife', 'FFE', 1);
INSERT INTO `oc_zone` VALUES(3550, 222, 'Flintshire', 'FLINT', 1);
INSERT INTO `oc_zone` VALUES(3551, 222, 'Glasgow', 'GLAS', 1);
INSERT INTO `oc_zone` VALUES(3552, 222, 'Gloucestershire', 'GLOS', 1);
INSERT INTO `oc_zone` VALUES(3553, 222, 'Greater London', 'LDN', 1);
INSERT INTO `oc_zone` VALUES(3554, 222, 'Greater Manchester', 'MCH', 1);
INSERT INTO `oc_zone` VALUES(3555, 222, 'Gwynedd', 'GDD', 1);
INSERT INTO `oc_zone` VALUES(3556, 222, 'Hampshire', 'HANTS', 1);
INSERT INTO `oc_zone` VALUES(3557, 222, 'Herefordshire', 'HWR', 1);
INSERT INTO `oc_zone` VALUES(3558, 222, 'Hertfordshire', 'HERTS', 1);
INSERT INTO `oc_zone` VALUES(3559, 222, 'Highlands', 'HLD', 1);
INSERT INTO `oc_zone` VALUES(3560, 222, 'Inverclyde', 'IVER', 1);
INSERT INTO `oc_zone` VALUES(3561, 222, 'Isle of Wight', 'IOW', 1);
INSERT INTO `oc_zone` VALUES(3562, 222, 'Kent', 'KNT', 1);
INSERT INTO `oc_zone` VALUES(3563, 222, 'Lancashire', 'LANCS', 1);
INSERT INTO `oc_zone` VALUES(3564, 222, 'Leicestershire', 'LEICS', 1);
INSERT INTO `oc_zone` VALUES(3565, 222, 'Lincolnshire', 'LINCS', 1);
INSERT INTO `oc_zone` VALUES(3566, 222, 'Merseyside', 'MSY', 1);
INSERT INTO `oc_zone` VALUES(3567, 222, 'Merthyr Tydfil', 'MERT', 1);
INSERT INTO `oc_zone` VALUES(3568, 222, 'Midlothian', 'MLOT', 1);
INSERT INTO `oc_zone` VALUES(3569, 222, 'Monmouthshire', 'MMOUTH', 1);
INSERT INTO `oc_zone` VALUES(3570, 222, 'Moray', 'MORAY', 1);
INSERT INTO `oc_zone` VALUES(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1);
INSERT INTO `oc_zone` VALUES(3572, 222, 'Newport', 'NEWPT', 1);
INSERT INTO `oc_zone` VALUES(3573, 222, 'Norfolk', 'NOR', 1);
INSERT INTO `oc_zone` VALUES(3574, 222, 'North Ayrshire', 'ARYN', 1);
INSERT INTO `oc_zone` VALUES(3575, 222, 'North Lanarkshire', 'LANN', 1);
INSERT INTO `oc_zone` VALUES(3576, 222, 'North Yorkshire', 'YSN', 1);
INSERT INTO `oc_zone` VALUES(3577, 222, 'Northamptonshire', 'NHM', 1);
INSERT INTO `oc_zone` VALUES(3578, 222, 'Northumberland', 'NLD', 1);
INSERT INTO `oc_zone` VALUES(3579, 222, 'Nottinghamshire', 'NOT', 1);
INSERT INTO `oc_zone` VALUES(3580, 222, 'Orkney Islands', 'ORK', 1);
INSERT INTO `oc_zone` VALUES(3581, 222, 'Oxfordshire', 'OFE', 1);
INSERT INTO `oc_zone` VALUES(3582, 222, 'Pembrokeshire', 'PEM', 1);
INSERT INTO `oc_zone` VALUES(3583, 222, 'Perth and Kinross', 'PERTH', 1);
INSERT INTO `oc_zone` VALUES(3584, 222, 'Powys', 'PWS', 1);
INSERT INTO `oc_zone` VALUES(3585, 222, 'Renfrewshire', 'REN', 1);
INSERT INTO `oc_zone` VALUES(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1);
INSERT INTO `oc_zone` VALUES(3587, 222, 'Rutland', 'RUT', 1);
INSERT INTO `oc_zone` VALUES(3588, 222, 'Scottish Borders', 'BOR', 1);
INSERT INTO `oc_zone` VALUES(3589, 222, 'Shetland Islands', 'SHET', 1);
INSERT INTO `oc_zone` VALUES(3590, 222, 'Shropshire', 'SPE', 1);
INSERT INTO `oc_zone` VALUES(3591, 222, 'Somerset', 'SOM', 1);
INSERT INTO `oc_zone` VALUES(3592, 222, 'South Ayrshire', 'ARYS', 1);
INSERT INTO `oc_zone` VALUES(3593, 222, 'South Lanarkshire', 'LANS', 1);
INSERT INTO `oc_zone` VALUES(3594, 222, 'South Yorkshire', 'YSS', 1);
INSERT INTO `oc_zone` VALUES(3595, 222, 'Staffordshire', 'SFD', 1);
INSERT INTO `oc_zone` VALUES(3596, 222, 'Stirling', 'STIR', 1);
INSERT INTO `oc_zone` VALUES(3597, 222, 'Suffolk', 'SFK', 1);
INSERT INTO `oc_zone` VALUES(3598, 222, 'Surrey', 'SRY', 1);
INSERT INTO `oc_zone` VALUES(3599, 222, 'Swansea', 'SWAN', 1);
INSERT INTO `oc_zone` VALUES(3600, 222, 'Torfaen', 'TORF', 1);
INSERT INTO `oc_zone` VALUES(3601, 222, 'Tyne and Wear', 'TWR', 1);
INSERT INTO `oc_zone` VALUES(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1);
INSERT INTO `oc_zone` VALUES(3603, 222, 'Warwickshire', 'WARKS', 1);
INSERT INTO `oc_zone` VALUES(3604, 222, 'West Dunbartonshire', 'WDUN', 1);
INSERT INTO `oc_zone` VALUES(3605, 222, 'West Lothian', 'WLOT', 1);
INSERT INTO `oc_zone` VALUES(3606, 222, 'West Midlands', 'WMD', 1);
INSERT INTO `oc_zone` VALUES(3607, 222, 'West Sussex', 'SXW', 1);
INSERT INTO `oc_zone` VALUES(3608, 222, 'West Yorkshire', 'YSW', 1);
INSERT INTO `oc_zone` VALUES(3609, 222, 'Western Isles', 'WIL', 1);
INSERT INTO `oc_zone` VALUES(3610, 222, 'Wiltshire', 'WLT', 1);
INSERT INTO `oc_zone` VALUES(3611, 222, 'Worcestershire', 'WORCS', 1);
INSERT INTO `oc_zone` VALUES(3612, 222, 'Wrexham', 'WRX', 1);
INSERT INTO `oc_zone` VALUES(3613, 223, 'Alabama', 'AL', 1);
INSERT INTO `oc_zone` VALUES(3614, 223, 'Alaska', 'AK', 1);
INSERT INTO `oc_zone` VALUES(3615, 223, 'American Samoa', 'AS', 1);
INSERT INTO `oc_zone` VALUES(3616, 223, 'Arizona', 'AZ', 1);
INSERT INTO `oc_zone` VALUES(3617, 223, 'Arkansas', 'AR', 1);
INSERT INTO `oc_zone` VALUES(3618, 223, 'Armed Forces Africa', 'AF', 1);
INSERT INTO `oc_zone` VALUES(3619, 223, 'Armed Forces Americas', 'AA', 1);
INSERT INTO `oc_zone` VALUES(3620, 223, 'Armed Forces Canada', 'AC', 1);
INSERT INTO `oc_zone` VALUES(3621, 223, 'Armed Forces Europe', 'AE', 1);
INSERT INTO `oc_zone` VALUES(3622, 223, 'Armed Forces Middle East', 'AM', 1);
INSERT INTO `oc_zone` VALUES(3623, 223, 'Armed Forces Pacific', 'AP', 1);
INSERT INTO `oc_zone` VALUES(3624, 223, 'California', 'CA', 1);
INSERT INTO `oc_zone` VALUES(3625, 223, 'Colorado', 'CO', 1);
INSERT INTO `oc_zone` VALUES(3626, 223, 'Connecticut', 'CT', 1);
INSERT INTO `oc_zone` VALUES(3627, 223, 'Delaware', 'DE', 1);
INSERT INTO `oc_zone` VALUES(3628, 223, 'District of Columbia', 'DC', 1);
INSERT INTO `oc_zone` VALUES(3629, 223, 'Federated States Of Micronesia', 'FM', 1);
INSERT INTO `oc_zone` VALUES(3630, 223, 'Florida', 'FL', 1);
INSERT INTO `oc_zone` VALUES(3631, 223, 'Georgia', 'GA', 1);
INSERT INTO `oc_zone` VALUES(3632, 223, 'Guam', 'GU', 1);
INSERT INTO `oc_zone` VALUES(3633, 223, 'Hawaii', 'HI', 1);
INSERT INTO `oc_zone` VALUES(3634, 223, 'Idaho', 'ID', 1);
INSERT INTO `oc_zone` VALUES(3635, 223, 'Illinois', 'IL', 1);
INSERT INTO `oc_zone` VALUES(3636, 223, 'Indiana', 'IN', 1);
INSERT INTO `oc_zone` VALUES(3637, 223, 'Iowa', 'IA', 1);
INSERT INTO `oc_zone` VALUES(3638, 223, 'Kansas', 'KS', 1);
INSERT INTO `oc_zone` VALUES(3639, 223, 'Kentucky', 'KY', 1);
INSERT INTO `oc_zone` VALUES(3640, 223, 'Louisiana', 'LA', 1);
INSERT INTO `oc_zone` VALUES(3641, 223, 'Maine', 'ME', 1);
INSERT INTO `oc_zone` VALUES(3642, 223, 'Marshall Islands', 'MH', 1);
INSERT INTO `oc_zone` VALUES(3643, 223, 'Maryland', 'MD', 1);
INSERT INTO `oc_zone` VALUES(3644, 223, 'Massachusetts', 'MA', 1);
INSERT INTO `oc_zone` VALUES(3645, 223, 'Michigan', 'MI', 1);
INSERT INTO `oc_zone` VALUES(3646, 223, 'Minnesota', 'MN', 1);
INSERT INTO `oc_zone` VALUES(3647, 223, 'Mississippi', 'MS', 1);
INSERT INTO `oc_zone` VALUES(3648, 223, 'Missouri', 'MO', 1);
INSERT INTO `oc_zone` VALUES(3649, 223, 'Montana', 'MT', 1);
INSERT INTO `oc_zone` VALUES(3650, 223, 'Nebraska', 'NE', 1);
INSERT INTO `oc_zone` VALUES(3651, 223, 'Nevada', 'NV', 1);
INSERT INTO `oc_zone` VALUES(3652, 223, 'New Hampshire', 'NH', 1);
INSERT INTO `oc_zone` VALUES(3653, 223, 'New Jersey', 'NJ', 1);
INSERT INTO `oc_zone` VALUES(3654, 223, 'New Mexico', 'NM', 1);
INSERT INTO `oc_zone` VALUES(3655, 223, 'New York', 'NY', 1);
INSERT INTO `oc_zone` VALUES(3656, 223, 'North Carolina', 'NC', 1);
INSERT INTO `oc_zone` VALUES(3657, 223, 'North Dakota', 'ND', 1);
INSERT INTO `oc_zone` VALUES(3658, 223, 'Northern Mariana Islands', 'MP', 1);
INSERT INTO `oc_zone` VALUES(3659, 223, 'Ohio', 'OH', 1);
INSERT INTO `oc_zone` VALUES(3660, 223, 'Oklahoma', 'OK', 1);
INSERT INTO `oc_zone` VALUES(3661, 223, 'Oregon', 'OR', 1);
INSERT INTO `oc_zone` VALUES(3662, 223, 'Palau', 'PW', 1);
INSERT INTO `oc_zone` VALUES(3663, 223, 'Pennsylvania', 'PA', 1);
INSERT INTO `oc_zone` VALUES(3664, 223, 'Puerto Rico', 'PR', 1);
INSERT INTO `oc_zone` VALUES(3665, 223, 'Rhode Island', 'RI', 1);
INSERT INTO `oc_zone` VALUES(3666, 223, 'South Carolina', 'SC', 1);
INSERT INTO `oc_zone` VALUES(3667, 223, 'South Dakota', 'SD', 1);
INSERT INTO `oc_zone` VALUES(3668, 223, 'Tennessee', 'TN', 1);
INSERT INTO `oc_zone` VALUES(3669, 223, 'Texas', 'TX', 1);
INSERT INTO `oc_zone` VALUES(3670, 223, 'Utah', 'UT', 1);
INSERT INTO `oc_zone` VALUES(3671, 223, 'Vermont', 'VT', 1);
INSERT INTO `oc_zone` VALUES(3672, 223, 'Virgin Islands', 'VI', 1);
INSERT INTO `oc_zone` VALUES(3673, 223, 'Virginia', 'VA', 1);
INSERT INTO `oc_zone` VALUES(3674, 223, 'Washington', 'WA', 1);
INSERT INTO `oc_zone` VALUES(3675, 223, 'West Virginia', 'WV', 1);
INSERT INTO `oc_zone` VALUES(3676, 223, 'Wisconsin', 'WI', 1);
INSERT INTO `oc_zone` VALUES(3677, 223, 'Wyoming', 'WY', 1);
INSERT INTO `oc_zone` VALUES(3678, 224, 'Baker Island', 'BI', 1);
INSERT INTO `oc_zone` VALUES(3679, 224, 'Howland Island', 'HI', 1);
INSERT INTO `oc_zone` VALUES(3680, 224, 'Jarvis Island', 'JI', 1);
INSERT INTO `oc_zone` VALUES(3681, 224, 'Johnston Atoll', 'JA', 1);
INSERT INTO `oc_zone` VALUES(3682, 224, 'Kingman Reef', 'KR', 1);
INSERT INTO `oc_zone` VALUES(3683, 224, 'Midway Atoll', 'MA', 1);
INSERT INTO `oc_zone` VALUES(3684, 224, 'Navassa Island', 'NI', 1);
INSERT INTO `oc_zone` VALUES(3685, 224, 'Palmyra Atoll', 'PA', 1);
INSERT INTO `oc_zone` VALUES(3686, 224, 'Wake Island', 'WI', 1);
INSERT INTO `oc_zone` VALUES(3687, 225, 'Artigas', 'AR', 1);
INSERT INTO `oc_zone` VALUES(3688, 225, 'Canelones', 'CA', 1);
INSERT INTO `oc_zone` VALUES(3689, 225, 'Cerro Largo', 'CL', 1);
INSERT INTO `oc_zone` VALUES(3690, 225, 'Colonia', 'CO', 1);
INSERT INTO `oc_zone` VALUES(3691, 225, 'Durazno', 'DU', 1);
INSERT INTO `oc_zone` VALUES(3692, 225, 'Flores', 'FS', 1);
INSERT INTO `oc_zone` VALUES(3693, 225, 'Florida', 'FA', 1);
INSERT INTO `oc_zone` VALUES(3694, 225, 'Lavalleja', 'LA', 1);
INSERT INTO `oc_zone` VALUES(3695, 225, 'Maldonado', 'MA', 1);
INSERT INTO `oc_zone` VALUES(3696, 225, 'Montevideo', 'MO', 1);
INSERT INTO `oc_zone` VALUES(3697, 225, 'Paysandu', 'PA', 1);
INSERT INTO `oc_zone` VALUES(3698, 225, 'Rio Negro', 'RN', 1);
INSERT INTO `oc_zone` VALUES(3699, 225, 'Rivera', 'RV', 1);
INSERT INTO `oc_zone` VALUES(3700, 225, 'Rocha', 'RO', 1);
INSERT INTO `oc_zone` VALUES(3701, 225, 'Salto', 'SL', 1);
INSERT INTO `oc_zone` VALUES(3702, 225, 'San Jose', 'SJ', 1);
INSERT INTO `oc_zone` VALUES(3703, 225, 'Soriano', 'SO', 1);
INSERT INTO `oc_zone` VALUES(3704, 225, 'Tacuarembo', 'TA', 1);
INSERT INTO `oc_zone` VALUES(3705, 225, 'Treinta y Tres', 'TT', 1);
INSERT INTO `oc_zone` VALUES(3706, 226, 'Andijon', 'AN', 1);
INSERT INTO `oc_zone` VALUES(3707, 226, 'Buxoro', 'BU', 1);
INSERT INTO `oc_zone` VALUES(3708, 226, 'Farg''ona', 'FA', 1);
INSERT INTO `oc_zone` VALUES(3709, 226, 'Jizzax', 'JI', 1);
INSERT INTO `oc_zone` VALUES(3710, 226, 'Namangan', 'NG', 1);
INSERT INTO `oc_zone` VALUES(3711, 226, 'Navoiy', 'NW', 1);
INSERT INTO `oc_zone` VALUES(3712, 226, 'Qashqadaryo', 'QA', 1);
INSERT INTO `oc_zone` VALUES(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1);
INSERT INTO `oc_zone` VALUES(3714, 226, 'Samarqand', 'SA', 1);
INSERT INTO `oc_zone` VALUES(3715, 226, 'Sirdaryo', 'SI', 1);
INSERT INTO `oc_zone` VALUES(3716, 226, 'Surxondaryo', 'SU', 1);
INSERT INTO `oc_zone` VALUES(3717, 226, 'Toshkent City', 'TK', 1);
INSERT INTO `oc_zone` VALUES(3718, 226, 'Toshkent Region', 'TO', 1);
INSERT INTO `oc_zone` VALUES(3719, 226, 'Xorazm', 'XO', 1);
INSERT INTO `oc_zone` VALUES(3720, 227, 'Malampa', 'MA', 1);
INSERT INTO `oc_zone` VALUES(3721, 227, 'Penama', 'PE', 1);
INSERT INTO `oc_zone` VALUES(3722, 227, 'Sanma', 'SA', 1);
INSERT INTO `oc_zone` VALUES(3723, 227, 'Shefa', 'SH', 1);
INSERT INTO `oc_zone` VALUES(3724, 227, 'Tafea', 'TA', 1);
INSERT INTO `oc_zone` VALUES(3725, 227, 'Torba', 'TO', 1);
INSERT INTO `oc_zone` VALUES(3726, 229, 'Amazonas', 'AM', 1);
INSERT INTO `oc_zone` VALUES(3727, 229, 'Anzoategui', 'AN', 1);
INSERT INTO `oc_zone` VALUES(3728, 229, 'Apure', 'AP', 1);
INSERT INTO `oc_zone` VALUES(3729, 229, 'Aragua', 'AR', 1);
INSERT INTO `oc_zone` VALUES(3730, 229, 'Barinas', 'BA', 1);
INSERT INTO `oc_zone` VALUES(3731, 229, 'Bolivar', 'BO', 1);
INSERT INTO `oc_zone` VALUES(3732, 229, 'Carabobo', 'CA', 1);
INSERT INTO `oc_zone` VALUES(3733, 229, 'Cojedes', 'CO', 1);
INSERT INTO `oc_zone` VALUES(3734, 229, 'Delta Amacuro', 'DA', 1);
INSERT INTO `oc_zone` VALUES(3735, 229, 'Dependencias Federales', 'DF', 1);
INSERT INTO `oc_zone` VALUES(3736, 229, 'Distrito Federal', 'DI', 1);
INSERT INTO `oc_zone` VALUES(3737, 229, 'Falcon', 'FA', 1);
INSERT INTO `oc_zone` VALUES(3738, 229, 'Guarico', 'GU', 1);
INSERT INTO `oc_zone` VALUES(3739, 229, 'Lara', 'LA', 1);
INSERT INTO `oc_zone` VALUES(3740, 229, 'Merida', 'ME', 1);
INSERT INTO `oc_zone` VALUES(3741, 229, 'Miranda', 'MI', 1);
INSERT INTO `oc_zone` VALUES(3742, 229, 'Monagas', 'MO', 1);
INSERT INTO `oc_zone` VALUES(3743, 229, 'Nueva Esparta', 'NE', 1);
INSERT INTO `oc_zone` VALUES(3744, 229, 'Portuguesa', 'PO', 1);
INSERT INTO `oc_zone` VALUES(3745, 229, 'Sucre', 'SU', 1);
INSERT INTO `oc_zone` VALUES(3746, 229, 'Tachira', 'TA', 1);
INSERT INTO `oc_zone` VALUES(3747, 229, 'Trujillo', 'TR', 1);
INSERT INTO `oc_zone` VALUES(3748, 229, 'Vargas', 'VA', 1);
INSERT INTO `oc_zone` VALUES(3749, 229, 'Yaracuy', 'YA', 1);
INSERT INTO `oc_zone` VALUES(3750, 229, 'Zulia', 'ZU', 1);
INSERT INTO `oc_zone` VALUES(3751, 230, 'An Giang', 'AG', 1);
INSERT INTO `oc_zone` VALUES(3752, 230, 'Bac Giang', 'BG', 1);
INSERT INTO `oc_zone` VALUES(3753, 230, 'Bac Kan', 'BK', 1);
INSERT INTO `oc_zone` VALUES(3754, 230, 'Bac Lieu', 'BL', 1);
INSERT INTO `oc_zone` VALUES(3755, 230, 'Bac Ninh', 'BC', 1);
INSERT INTO `oc_zone` VALUES(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1);
INSERT INTO `oc_zone` VALUES(3757, 230, 'Ben Tre', 'BN', 1);
INSERT INTO `oc_zone` VALUES(3758, 230, 'Binh Dinh', 'BH', 1);
INSERT INTO `oc_zone` VALUES(3759, 230, 'Binh Duong', 'BU', 1);
INSERT INTO `oc_zone` VALUES(3760, 230, 'Binh Phuoc', 'BP', 1);
INSERT INTO `oc_zone` VALUES(3761, 230, 'Binh Thuan', 'BT', 1);
INSERT INTO `oc_zone` VALUES(3762, 230, 'Ca Mau', 'CM', 1);
INSERT INTO `oc_zone` VALUES(3763, 230, 'Can Tho', 'CT', 1);
INSERT INTO `oc_zone` VALUES(3764, 230, 'Cao Bang', 'CB', 1);
INSERT INTO `oc_zone` VALUES(3765, 230, 'Dak Lak', 'DL', 1);
INSERT INTO `oc_zone` VALUES(3766, 230, 'Dak Nong', 'DG', 1);
INSERT INTO `oc_zone` VALUES(3767, 230, 'Da Nang', 'DN', 1);
INSERT INTO `oc_zone` VALUES(3768, 230, 'Dien Bien', 'DB', 1);
INSERT INTO `oc_zone` VALUES(3769, 230, 'Dong Nai', 'DI', 1);
INSERT INTO `oc_zone` VALUES(3770, 230, 'Dong Thap', 'DT', 1);
INSERT INTO `oc_zone` VALUES(3771, 230, 'Gia Lai', 'GL', 1);
INSERT INTO `oc_zone` VALUES(3772, 230, 'Ha Giang', 'HG', 1);
INSERT INTO `oc_zone` VALUES(3773, 230, 'Hai Duong', 'HD', 1);
INSERT INTO `oc_zone` VALUES(3774, 230, 'Hai Phong', 'HP', 1);
INSERT INTO `oc_zone` VALUES(3775, 230, 'Ha Nam', 'HM', 1);
INSERT INTO `oc_zone` VALUES(3776, 230, 'Ha Noi', 'HI', 1);
INSERT INTO `oc_zone` VALUES(3777, 230, 'Ha Tay', 'HT', 1);
INSERT INTO `oc_zone` VALUES(3778, 230, 'Ha Tinh', 'HH', 1);
INSERT INTO `oc_zone` VALUES(3779, 230, 'Hoa Binh', 'HB', 1);
INSERT INTO `oc_zone` VALUES(3780, 230, 'Ho Chi Minh City', 'HC', 1);
INSERT INTO `oc_zone` VALUES(3781, 230, 'Hau Giang', 'HU', 1);
INSERT INTO `oc_zone` VALUES(3782, 230, 'Hung Yen', 'HY', 1);
INSERT INTO `oc_zone` VALUES(3783, 232, 'Saint Croix', 'C', 1);
INSERT INTO `oc_zone` VALUES(3784, 232, 'Saint John', 'J', 1);
INSERT INTO `oc_zone` VALUES(3785, 232, 'Saint Thomas', 'T', 1);
INSERT INTO `oc_zone` VALUES(3786, 233, 'Alo', 'A', 1);
INSERT INTO `oc_zone` VALUES(3787, 233, 'Sigave', 'S', 1);
INSERT INTO `oc_zone` VALUES(3788, 233, 'Wallis', 'W', 1);
INSERT INTO `oc_zone` VALUES(3789, 235, 'Abyan', 'AB', 1);
INSERT INTO `oc_zone` VALUES(3790, 235, 'Adan', 'AD', 1);
INSERT INTO `oc_zone` VALUES(3791, 235, 'Amran', 'AM', 1);
INSERT INTO `oc_zone` VALUES(3792, 235, 'Al Bayda', 'BA', 1);
INSERT INTO `oc_zone` VALUES(3793, 235, 'Ad Dali', 'DA', 1);
INSERT INTO `oc_zone` VALUES(3794, 235, 'Dhamar', 'DH', 1);
INSERT INTO `oc_zone` VALUES(3795, 235, 'Hadramawt', 'HD', 1);
INSERT INTO `oc_zone` VALUES(3796, 235, 'Hajjah', 'HJ', 1);
INSERT INTO `oc_zone` VALUES(3797, 235, 'Al Hudaydah', 'HU', 1);
INSERT INTO `oc_zone` VALUES(3798, 235, 'Ibb', 'IB', 1);
INSERT INTO `oc_zone` VALUES(3799, 235, 'Al Jawf', 'JA', 1);
INSERT INTO `oc_zone` VALUES(3800, 235, 'Lahij', 'LA', 1);
INSERT INTO `oc_zone` VALUES(3801, 235, 'Ma''rib', 'MA', 1);
INSERT INTO `oc_zone` VALUES(3802, 235, 'Al Mahrah', 'MR', 1);
INSERT INTO `oc_zone` VALUES(3803, 235, 'Al Mahwit', 'MW', 1);
INSERT INTO `oc_zone` VALUES(3804, 235, 'Sa''dah', 'SD', 1);
INSERT INTO `oc_zone` VALUES(3805, 235, 'San''a', 'SN', 1);
INSERT INTO `oc_zone` VALUES(3806, 235, 'Shabwah', 'SH', 1);
INSERT INTO `oc_zone` VALUES(3807, 235, 'Ta''izz', 'TA', 1);
INSERT INTO `oc_zone` VALUES(3812, 237, 'Bas-Congo', 'BC', 1);
INSERT INTO `oc_zone` VALUES(3813, 237, 'Bandundu', 'BN', 1);
INSERT INTO `oc_zone` VALUES(3814, 237, 'Equateur', 'EQ', 1);
INSERT INTO `oc_zone` VALUES(3815, 237, 'Katanga', 'KA', 1);
INSERT INTO `oc_zone` VALUES(3816, 237, 'Kasai-Oriental', 'KE', 1);
INSERT INTO `oc_zone` VALUES(3817, 237, 'Kinshasa', 'KN', 1);
INSERT INTO `oc_zone` VALUES(3818, 237, 'Kasai-Occidental', 'KW', 1);
INSERT INTO `oc_zone` VALUES(3819, 237, 'Maniema', 'MA', 1);
INSERT INTO `oc_zone` VALUES(3820, 237, 'Nord-Kivu', 'NK', 1);
INSERT INTO `oc_zone` VALUES(3821, 237, 'Orientale', 'OR', 1);
INSERT INTO `oc_zone` VALUES(3822, 237, 'Sud-Kivu', 'SK', 1);
INSERT INTO `oc_zone` VALUES(3823, 238, 'Central', 'CE', 1);
INSERT INTO `oc_zone` VALUES(3824, 238, 'Copperbelt', 'CB', 1);
INSERT INTO `oc_zone` VALUES(3825, 238, 'Eastern', 'EA', 1);
INSERT INTO `oc_zone` VALUES(3826, 238, 'Luapula', 'LP', 1);
INSERT INTO `oc_zone` VALUES(3827, 238, 'Lusaka', 'LK', 1);
INSERT INTO `oc_zone` VALUES(3828, 238, 'Northern', 'NO', 1);
INSERT INTO `oc_zone` VALUES(3829, 238, 'North-Western', 'NW', 1);
INSERT INTO `oc_zone` VALUES(3830, 238, 'Southern', 'SO', 1);
INSERT INTO `oc_zone` VALUES(3831, 238, 'Western', 'WE', 1);
INSERT INTO `oc_zone` VALUES(3832, 239, 'Bulawayo', 'BU', 1);
INSERT INTO `oc_zone` VALUES(3833, 239, 'Harare', 'HA', 1);
INSERT INTO `oc_zone` VALUES(3834, 239, 'Manicaland', 'ML', 1);
INSERT INTO `oc_zone` VALUES(3835, 239, 'Mashonaland Central', 'MC', 1);
INSERT INTO `oc_zone` VALUES(3836, 239, 'Mashonaland East', 'ME', 1);
INSERT INTO `oc_zone` VALUES(3837, 239, 'Mashonaland West', 'MW', 1);
INSERT INTO `oc_zone` VALUES(3838, 239, 'Masvingo', 'MV', 1);
INSERT INTO `oc_zone` VALUES(3839, 239, 'Matabeleland North', 'MN', 1);
INSERT INTO `oc_zone` VALUES(3840, 239, 'Matabeleland South', 'MS', 1);
INSERT INTO `oc_zone` VALUES(3841, 239, 'Midlands', 'MD', 1);
INSERT INTO `oc_zone` VALUES(3861, 105, 'Campobasso', 'CB', 1);
INSERT INTO `oc_zone` VALUES(3862, 105, 'Carbonia-Iglesias', 'CI', 1);
INSERT INTO `oc_zone` VALUES(3863, 105, 'Caserta', 'CE', 1);
INSERT INTO `oc_zone` VALUES(3864, 105, 'Catania', 'CT', 1);
INSERT INTO `oc_zone` VALUES(3865, 105, 'Catanzaro', 'CZ', 1);
INSERT INTO `oc_zone` VALUES(3866, 105, 'Chieti', 'CH', 1);
INSERT INTO `oc_zone` VALUES(3867, 105, 'Como', 'CO', 1);
INSERT INTO `oc_zone` VALUES(3868, 105, 'Cosenza', 'CS', 1);
INSERT INTO `oc_zone` VALUES(3869, 105, 'Cremona', 'CR', 1);
INSERT INTO `oc_zone` VALUES(3870, 105, 'Crotone', 'KR', 1);
INSERT INTO `oc_zone` VALUES(3871, 105, 'Cuneo', 'CN', 1);
INSERT INTO `oc_zone` VALUES(3872, 105, 'Enna', 'EN', 1);
INSERT INTO `oc_zone` VALUES(3873, 105, 'Ferrara', 'FE', 1);
INSERT INTO `oc_zone` VALUES(3874, 105, 'Firenze', 'FI', 1);
INSERT INTO `oc_zone` VALUES(3875, 105, 'Foggia', 'FG', 1);
INSERT INTO `oc_zone` VALUES(3876, 105, 'Forli-Cesena', 'FC', 1);
INSERT INTO `oc_zone` VALUES(3877, 105, 'Frosinone', 'FR', 1);
INSERT INTO `oc_zone` VALUES(3878, 105, 'Genova', 'GE', 1);
INSERT INTO `oc_zone` VALUES(3879, 105, 'Gorizia', 'GO', 1);
INSERT INTO `oc_zone` VALUES(3880, 105, 'Grosseto', 'GR', 1);
INSERT INTO `oc_zone` VALUES(3881, 105, 'Imperia', 'IM', 1);
INSERT INTO `oc_zone` VALUES(3882, 105, 'Isernia', 'IS', 1);
INSERT INTO `oc_zone` VALUES(3883, 105, 'L&#39;Aquila', 'AQ', 1);
INSERT INTO `oc_zone` VALUES(3884, 105, 'La Spezia', 'SP', 1);
INSERT INTO `oc_zone` VALUES(3885, 105, 'Latina', 'LT', 1);
INSERT INTO `oc_zone` VALUES(3886, 105, 'Lecce', 'LE', 1);
INSERT INTO `oc_zone` VALUES(3887, 105, 'Lecco', 'LC', 1);
INSERT INTO `oc_zone` VALUES(3888, 105, 'Livorno', 'LI', 1);
INSERT INTO `oc_zone` VALUES(3889, 105, 'Lodi', 'LO', 1);
INSERT INTO `oc_zone` VALUES(3890, 105, 'Lucca', 'LU', 1);
INSERT INTO `oc_zone` VALUES(3891, 105, 'Macerata', 'MC', 1);
INSERT INTO `oc_zone` VALUES(3892, 105, 'Mantova', 'MN', 1);
INSERT INTO `oc_zone` VALUES(3893, 105, 'Massa-Carrara', 'MS', 1);
INSERT INTO `oc_zone` VALUES(3894, 105, 'Matera', 'MT', 1);
INSERT INTO `oc_zone` VALUES(3895, 105, 'Medio Campidano', 'VS', 1);
INSERT INTO `oc_zone` VALUES(3896, 105, 'Messina', 'ME', 1);
INSERT INTO `oc_zone` VALUES(3897, 105, 'Milano', 'MI', 1);
INSERT INTO `oc_zone` VALUES(3898, 105, 'Modena', 'MO', 1);
INSERT INTO `oc_zone` VALUES(3899, 105, 'Napoli', 'NA', 1);
INSERT INTO `oc_zone` VALUES(3900, 105, 'Novara', 'NO', 1);
INSERT INTO `oc_zone` VALUES(3901, 105, 'Nuoro', 'NU', 1);
INSERT INTO `oc_zone` VALUES(3902, 105, 'Ogliastra', 'OG', 1);
INSERT INTO `oc_zone` VALUES(3903, 105, 'Olbia-Tempio', 'OT', 1);
INSERT INTO `oc_zone` VALUES(3904, 105, 'Oristano', 'OR', 1);
INSERT INTO `oc_zone` VALUES(3905, 105, 'Padova', 'PD', 1);
INSERT INTO `oc_zone` VALUES(3906, 105, 'Palermo', 'PA', 1);
INSERT INTO `oc_zone` VALUES(3907, 105, 'Parma', 'PR', 1);
INSERT INTO `oc_zone` VALUES(3908, 105, 'Pavia', 'PV', 1);
INSERT INTO `oc_zone` VALUES(3909, 105, 'Perugia', 'PG', 1);
INSERT INTO `oc_zone` VALUES(3910, 105, 'Pesaro e Urbino', 'PU', 1);
INSERT INTO `oc_zone` VALUES(3911, 105, 'Pescara', 'PE', 1);
INSERT INTO `oc_zone` VALUES(3912, 105, 'Piacenza', 'PC', 1);
INSERT INTO `oc_zone` VALUES(3913, 105, 'Pisa', 'PI', 1);
INSERT INTO `oc_zone` VALUES(3914, 105, 'Pistoia', 'PT', 1);
INSERT INTO `oc_zone` VALUES(3915, 105, 'Pordenone', 'PN', 1);
INSERT INTO `oc_zone` VALUES(3916, 105, 'Potenza', 'PZ', 1);
INSERT INTO `oc_zone` VALUES(3917, 105, 'Prato', 'PO', 1);
INSERT INTO `oc_zone` VALUES(3918, 105, 'Ragusa', 'RG', 1);
INSERT INTO `oc_zone` VALUES(3919, 105, 'Ravenna', 'RA', 1);
INSERT INTO `oc_zone` VALUES(3920, 105, 'Reggio Calabria', 'RC', 1);
INSERT INTO `oc_zone` VALUES(3921, 105, 'Reggio Emilia', 'RE', 1);
INSERT INTO `oc_zone` VALUES(3922, 105, 'Rieti', 'RI', 1);
INSERT INTO `oc_zone` VALUES(3923, 105, 'Rimini', 'RN', 1);
INSERT INTO `oc_zone` VALUES(3924, 105, 'Roma', 'RM', 1);
INSERT INTO `oc_zone` VALUES(3925, 105, 'Rovigo', 'RO', 1);
INSERT INTO `oc_zone` VALUES(3926, 105, 'Salerno', 'SA', 1);
INSERT INTO `oc_zone` VALUES(3927, 105, 'Sassari', 'SS', 1);
INSERT INTO `oc_zone` VALUES(3928, 105, 'Savona', 'SV', 1);
INSERT INTO `oc_zone` VALUES(3929, 105, 'Siena', 'SI', 1);
INSERT INTO `oc_zone` VALUES(3930, 105, 'Siracusa', 'SR', 1);
INSERT INTO `oc_zone` VALUES(3931, 105, 'Sondrio', 'SO', 1);
INSERT INTO `oc_zone` VALUES(3932, 105, 'Taranto', 'TA', 1);
INSERT INTO `oc_zone` VALUES(3933, 105, 'Teramo', 'TE', 1);
INSERT INTO `oc_zone` VALUES(3934, 105, 'Terni', 'TR', 1);
INSERT INTO `oc_zone` VALUES(3935, 105, 'Torino', 'TO', 1);
INSERT INTO `oc_zone` VALUES(3936, 105, 'Trapani', 'TP', 1);
INSERT INTO `oc_zone` VALUES(3937, 105, 'Trento', 'TN', 1);
INSERT INTO `oc_zone` VALUES(3938, 105, 'Treviso', 'TV', 1);
INSERT INTO `oc_zone` VALUES(3939, 105, 'Trieste', 'TS', 1);
INSERT INTO `oc_zone` VALUES(3940, 105, 'Udine', 'UD', 1);
INSERT INTO `oc_zone` VALUES(3941, 105, 'Varese', 'VA', 1);
INSERT INTO `oc_zone` VALUES(3942, 105, 'Venezia', 'VE', 1);
INSERT INTO `oc_zone` VALUES(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1);
INSERT INTO `oc_zone` VALUES(3944, 105, 'Vercelli', 'VC', 1);
INSERT INTO `oc_zone` VALUES(3945, 105, 'Verona', 'VR', 1);
INSERT INTO `oc_zone` VALUES(3946, 105, 'Vibo Valentia', 'VV', 1);
INSERT INTO `oc_zone` VALUES(3947, 105, 'Vicenza', 'VI', 1);
INSERT INTO `oc_zone` VALUES(3948, 105, 'Viterbo', 'VT', 1);
INSERT INTO `oc_zone` VALUES(3949, 222, 'County Antrim', 'ANT', 1);
INSERT INTO `oc_zone` VALUES(3950, 222, 'County Armagh', 'ARM', 1);
INSERT INTO `oc_zone` VALUES(3951, 222, 'County Down', 'DOW', 1);
INSERT INTO `oc_zone` VALUES(3952, 222, 'County Fermanagh', 'FER', 1);
INSERT INTO `oc_zone` VALUES(3953, 222, 'County Londonderry', 'LDY', 1);
INSERT INTO `oc_zone` VALUES(3954, 222, 'County Tyrone', 'TYR', 1);
INSERT INTO `oc_zone` VALUES(3955, 222, 'Cumbria', 'CMA', 1);
INSERT INTO `oc_zone` VALUES(3956, 190, 'Pomurska', '1', 1);
INSERT INTO `oc_zone` VALUES(3957, 190, 'Podravska', '2', 1);
INSERT INTO `oc_zone` VALUES(3958, 190, 'Koroška', '3', 1);
INSERT INTO `oc_zone` VALUES(3959, 190, 'Savinjska', '4', 1);
INSERT INTO `oc_zone` VALUES(3960, 190, 'Zasavska', '5', 1);
INSERT INTO `oc_zone` VALUES(3961, 190, 'Spodnjeposavska', '6', 1);
INSERT INTO `oc_zone` VALUES(3962, 190, 'Jugovzhodna Slovenija', '7', 1);
INSERT INTO `oc_zone` VALUES(3963, 190, 'Osrednjeslovenska', '8', 1);
INSERT INTO `oc_zone` VALUES(3964, 190, 'Gorenjska', '9', 1);
INSERT INTO `oc_zone` VALUES(3965, 190, 'Notranjsko-kraška', '10', 1);
INSERT INTO `oc_zone` VALUES(3966, 190, 'Goriška', '11', 1);
INSERT INTO `oc_zone` VALUES(3967, 190, 'Obalno-kraška', '12', 1);
INSERT INTO `oc_zone` VALUES(3968, 33, 'Ruse', '', 1);
INSERT INTO `oc_zone` VALUES(3969, 101, 'Alborz', 'ALB', 1);
INSERT INTO `oc_zone` VALUES(3970, 21, 'Brussels-Capital Region', 'BRU', 1);
INSERT INTO `oc_zone` VALUES(3971, 138, 'Aguascalientes', 'AG', 1);
INSERT INTO `oc_zone` VALUES(3972, 222, 'Isle of Man', 'IOM', 1);
INSERT INTO `oc_zone` VALUES(3973, 242, 'Andrijevica', '01', 1);
INSERT INTO `oc_zone` VALUES(3974, 242, 'Bar', '02', 1);
INSERT INTO `oc_zone` VALUES(3975, 242, 'Berane', '03', 1);
INSERT INTO `oc_zone` VALUES(3976, 242, 'Bijelo Polje', '04', 1);
INSERT INTO `oc_zone` VALUES(3977, 242, 'Budva', '05', 1);
INSERT INTO `oc_zone` VALUES(3978, 242, 'Cetinje', '06', 1);
INSERT INTO `oc_zone` VALUES(3979, 242, 'Danilovgrad', '07', 1);
INSERT INTO `oc_zone` VALUES(3980, 242, 'Herceg-Novi', '08', 1);
INSERT INTO `oc_zone` VALUES(3981, 242, 'Kolašin', '09', 1);
INSERT INTO `oc_zone` VALUES(3982, 242, 'Kotor', '10', 1);
INSERT INTO `oc_zone` VALUES(3983, 242, 'Mojkovac', '11', 1);
INSERT INTO `oc_zone` VALUES(3984, 242, 'Nikšic', '12', 1);
INSERT INTO `oc_zone` VALUES(3985, 242, 'Plav', '13', 1);
INSERT INTO `oc_zone` VALUES(3986, 242, 'Pljevlja', '14', 1);
INSERT INTO `oc_zone` VALUES(3987, 242, 'Plužine', '15', 1);
INSERT INTO `oc_zone` VALUES(3988, 242, 'Podgorica', '16', 1);
INSERT INTO `oc_zone` VALUES(3989, 242, 'Rožaje', '17', 1);
INSERT INTO `oc_zone` VALUES(3990, 242, 'Šavnik', '18', 1);
INSERT INTO `oc_zone` VALUES(3991, 242, 'Tivat', '19', 1);
INSERT INTO `oc_zone` VALUES(3992, 242, 'Ulcinj', '20', 1);
INSERT INTO `oc_zone` VALUES(3993, 242, 'Žabljak', '21', 1);
INSERT INTO `oc_zone` VALUES(3994, 243, 'Belgrade', '00', 1);
INSERT INTO `oc_zone` VALUES(3995, 243, 'North Backa', '01', 1);
INSERT INTO `oc_zone` VALUES(3996, 243, 'Central Banat', '02', 1);
INSERT INTO `oc_zone` VALUES(3997, 243, 'North Banat', '03', 1);
INSERT INTO `oc_zone` VALUES(3998, 243, 'South Banat', '04', 1);
INSERT INTO `oc_zone` VALUES(3999, 243, 'West Backa', '05', 1);
INSERT INTO `oc_zone` VALUES(4000, 243, 'South Backa', '06', 1);
INSERT INTO `oc_zone` VALUES(4001, 243, 'Srem', '07', 1);
INSERT INTO `oc_zone` VALUES(4002, 243, 'Macva', '08', 1);
INSERT INTO `oc_zone` VALUES(4003, 243, 'Kolubara', '09', 1);
INSERT INTO `oc_zone` VALUES(4004, 243, 'Podunavlje', '10', 1);
INSERT INTO `oc_zone` VALUES(4005, 243, 'Branicevo', '11', 1);
INSERT INTO `oc_zone` VALUES(4006, 243, 'Šumadija', '12', 1);
INSERT INTO `oc_zone` VALUES(4007, 243, 'Pomoravlje', '13', 1);
INSERT INTO `oc_zone` VALUES(4008, 243, 'Bor', '14', 1);
INSERT INTO `oc_zone` VALUES(4009, 243, 'Zajecar', '15', 1);
INSERT INTO `oc_zone` VALUES(4010, 243, 'Zlatibor', '16', 1);
INSERT INTO `oc_zone` VALUES(4011, 243, 'Moravica', '17', 1);
INSERT INTO `oc_zone` VALUES(4012, 243, 'Raška', '18', 1);
INSERT INTO `oc_zone` VALUES(4013, 243, 'Rasina', '19', 1);
INSERT INTO `oc_zone` VALUES(4014, 243, 'Nišava', '20', 1);
INSERT INTO `oc_zone` VALUES(4015, 243, 'Toplica', '21', 1);
INSERT INTO `oc_zone` VALUES(4016, 243, 'Pirot', '22', 1);
INSERT INTO `oc_zone` VALUES(4017, 243, 'Jablanica', '23', 1);
INSERT INTO `oc_zone` VALUES(4018, 243, 'Pcinja', '24', 1);
INSERT INTO `oc_zone` VALUES(4019, 243, 'Kosovo', 'KM', 1);
INSERT INTO `oc_zone` VALUES(4020, 245, 'Bonaire', 'BO', 1);
INSERT INTO `oc_zone` VALUES(4021, 245, 'Saba', 'SA', 1);
INSERT INTO `oc_zone` VALUES(4022, 245, 'Sint Eustatius', 'SE', 1);
INSERT INTO `oc_zone` VALUES(4023, 248, 'Central Equatoria', 'EC', 1);
INSERT INTO `oc_zone` VALUES(4024, 248, 'Eastern Equatoria', 'EE', 1);
INSERT INTO `oc_zone` VALUES(4025, 248, 'Jonglei', 'JG', 1);
INSERT INTO `oc_zone` VALUES(4026, 248, 'Lakes', 'LK', 1);
INSERT INTO `oc_zone` VALUES(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1);
INSERT INTO `oc_zone` VALUES(4028, 248, 'Unity', 'UY', 1);
INSERT INTO `oc_zone` VALUES(4029, 248, 'Upper Nile', 'NU', 1);
INSERT INTO `oc_zone` VALUES(4030, 248, 'Warrap', 'WR', 1);
INSERT INTO `oc_zone` VALUES(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1);
INSERT INTO `oc_zone` VALUES(4032, 248, 'Western Equatoria', 'EW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL default '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` VALUES(57, 222, 0, 3, '2010-02-26 22:33:24', '0000-00-00 00:00:00');
INSERT INTO `oc_zone_to_geo_zone` VALUES(65, 222, 0, 4, '2010-12-15 15:18:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure for view `oc_v_city`
--
DROP TABLE IF EXISTS `oc_v_city`;

CREATE ALGORITHM=UNDEFINED DEFINER=`giftdbuser`@`%` SQL SECURITY DEFINER VIEW `giftdbuser`.`oc_v_city` AS select `a`.`city_id` AS `city_id`,`a`.`zone_id` AS `city_zone_id`,`b`.`name` AS `city_zone`,`a`.`name` AS `city_name`,`a`.`code` AS `city_code`,`b`.`country_id` AS `city_country_id`,`c`.`name` AS `city_country`,`a`.`status` AS `city_status` from ((`giftdbuser`.`oc_city` `a` left join `giftdbuser`.`oc_zone` `b` on((`a`.`zone_id` = `b`.`zone_id`))) left join `giftdbuser`.`oc_country` `c` on((`b`.`country_id` = `c`.`country_id`)));
