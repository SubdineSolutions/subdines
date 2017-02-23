-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2017 at 06:23 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `subdine_cdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `issued_cat`
--

CREATE TABLE `issued_cat` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issued_cat`
--

INSERT INTO `issued_cat` (`cat_id`, `cat_name`) VALUES
(1, 'Arabic'),
(2, 'Indian'),
(3, 'Chinese'),
(4, 'Continental'),
(5, 'Tandoori'),
(6, 'Biriyani'),
(7, 'Icecream');

-- --------------------------------------------------------

--
-- Table structure for table `sda_admin`
--

CREATE TABLE `sda_admin` (
  `login_id` int(10) NOT NULL,
  `u_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_admin`
--

INSERT INTO `sda_admin` (`login_id`, `u_name`, `password`, `status`) VALUES
(1, 'admin', 'admin123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sda_admins`
--

CREATE TABLE `sda_admins` (
  `admin_id` int(20) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_pwd` varchar(20) NOT NULL,
  `rest_id` varchar(40) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_admins`
--

INSERT INTO `sda_admins` (`admin_id`, `admin_name`, `admin_pwd`, `rest_id`, `branch`, `status`) VALUES
(4, 'rafeeq', '123', 'qwer', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sda_branch_details`
--

CREATE TABLE `sda_branch_details` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `rest_name` varchar(150) NOT NULL,
  `admin_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_branch_details`
--

INSERT INTO `sda_branch_details` (`branch_id`, `branch_name`, `rest_name`, `admin_id`, `password`, `location`, `status`) VALUES
(1, 'kazhakootam', 'LeMeridian', 'manokar', 'manokar', 'trivandrum', '');

-- --------------------------------------------------------

--
-- Table structure for table `sda_categories`
--

CREATE TABLE `sda_categories` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `rack_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sda_categorytype`
--

CREATE TABLE `sda_categorytype` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sda_chef_details`
--

CREATE TABLE `sda_chef_details` (
  `chef_id` int(11) NOT NULL,
  `chef_name` varchar(50) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sda_department`
--

CREATE TABLE `sda_department` (
  `department_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sda_emproles`
--

CREATE TABLE `sda_emproles` (
  `erole_id` int(10) NOT NULL,
  `rest_name` varchar(40) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `emp_role` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_emproles`
--

INSERT INTO `sda_emproles` (`erole_id`, `rest_name`, `emp_name`, `pwd`, `emp_role`, `status`) VALUES
(1, 'LeMeridian', 'manokar', 'manokar', 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `sda_items`
--

CREATE TABLE `sda_items` (
  `item_id` int(20) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `rack_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_items`
--

INSERT INTO `sda_items` (`item_id`, `item_name`, `rack_no`) VALUES
(58, 'Mutton (Shahul)', 200),
(59, 'Mutton (Others)', 201),
(60, 'Mutton (Chops)', 202),
(61, 'Beef', 203),
(62, 'Beef Bone', 204),
(63, 'Chicken Shawaya', 205),
(64, 'Chicken Tandoori', 206),
(65, 'Shawarma Chicken', 207),
(66, 'Chicken Chinese', 208),
(67, 'JP Vanilla (5 ltr)', 209),
(68, 'BK Chocolate', 210),
(69, 'BK Orange', 211),
(70, 'BK Butterscotch', 212),
(71, 'BK Mango (4 ltr)', 213),
(72, 'BK Black Current (4 Ltr)', 214),
(73, 'BK Fig & Honey (4 ltr)', 215),
(74, 'BK Spanish Delite (4 ltr)', 216),
(75, 'strawberry (5 ltr)', 217),
(76, 'Vanila (PP)', 218),
(77, 'Butterscotch (PP)', 219),
(78, 'Pista (PP)', 220),
(79, 'Pista Green ', 221),
(80, 'Chocolate (PP)', 222),
(81, 'Mango Syrup', 223),
(82, 'Chocolate Syrup', 224),
(83, 'Swinger', 225),
(84, 'Strawberry Syrup', 226),
(85, 'BK Vanilla', 227),
(86, 'Bowl', 1),
(87, 'Foil', 2),
(88, 'Carry Bag (10 x 14)', 3),
(89, 'Carry Bag (13 x 16 )', 4),
(90, 'Carry Bag (16 x 20)', 5),
(91, 'Pauch (6 x 8)', 6),
(92, 'Pauch (8 x 10)', 7),
(93, 'Garbage Bag ', 8),
(94, '50 ml Cup', 9),
(95, 'Clean Film', 10),
(96, '660 (Silver Container)', 11),
(97, 'Self Lock (3 x 4)', 12),
(98, 'HM Cover', 13),
(99, 'Juice Glass', 14),
(100, 'Cap', 15),
(101, 'Big Spoon', 16),
(102, 'Straw', 17),
(103, 'Big Straw', 18),
(104, 'Napkin', 19),
(105, 'Tub', 20),
(106, 'Gas (Meriya)', 21),
(107, 'Gas (Vinod)', 22),
(108, 'Maida', 23),
(109, 'Palm Oil (1 Ltr)', 24),
(110, 'Dalda', 25),
(111, 'Salt ', 26),
(112, 'Atta (Romali)', 27),
(113, 'Dall (Big)', 28),
(114, 'Dall (Small)', 29),
(115, 'Sabeena', 30),
(116, 'Wheel', 31),
(117, 'Surf (kg)', 32),
(118, 'Chicken Masala Powder (Pck)', 33),
(119, 'Coconut Oil', 34),
(120, 'Coriander (250 gm)', 35),
(121, 'Sambar Powder ', 36),
(122, 'Musterd', 37),
(123, 'Ing Powder', 38),
(124, 'Samiga', 39),
(125, 'Tamrind (1kg)', 40),
(126, 'Cheeri', 41),
(127, 'Red Chilly', 42),
(128, 'Sugar', 44),
(129, 'Boil Rice', 45),
(130, 'Raw Rice', 46),
(131, 'AJME', 47),
(132, 'MUML', 48),
(133, 'Green Peice', 49),
(134, 'Rose Water', 50),
(135, 'Payar', 51),
(136, 'AVT', 52),
(137, 'Bru Coffee Powder (200 gm)', 53),
(138, 'Milk ', 54),
(139, 'Curd', 55),
(140, 'Milk ( Milma)', 56),
(141, 'Coconut ', 57),
(142, 'Ball Grapes', 58),
(143, 'Onion ', 59),
(144, 'Onion (2)', 60),
(145, 'Paneer (1)', 61),
(146, 'Paneer (2)', 62),
(147, 'Garlic', 63),
(148, 'Charcoal', 64),
(149, 'Icecubes', 65),
(150, 'Travancore Foods', 66),
(151, 'Chapathi ', 67),
(152, 'Sweet Water', 68),
(153, 'Salad', 69),
(154, 'Capsicum', 70),
(155, 'Cabbage', 71),
(156, 'Coriander Leaves', 72),
(157, 'Beans', 73),
(158, 'Tomato', 74),
(159, 'Ginger', 75),
(160, 'Beetroot', 76),
(161, 'Mint', 77),
(162, 'Carrot', 78),
(163, 'Spring Onion', 79),
(164, 'Mango', 80),
(165, 'Palak', 81),
(166, 'Potato', 82),
(167, 'Cellery', 83),
(168, 'Chilly', 84),
(169, 'Curry leaves', 85),
(170, 'Fllower', 86),
(171, 'Green Mango', 87),
(172, 'Amla', 88),
(173, 'Ladies Finger ', 89),
(174, 'Lattos', 90),
(175, 'Cheera', 91),
(176, 'Ghee', 92),
(177, 'Salad 2', 96),
(178, 'Capsicum 2', 97),
(179, 'Cabbage 2', 98),
(180, 'Coriander Leaves 2', 99),
(181, 'Beans 2', 100),
(182, 'Tomato 2', 101),
(183, 'Ginger 2', 102),
(184, 'Beetroot 2', 103),
(185, 'Mint 2', 104),
(186, 'Carrot 2', 105),
(187, 'Spring Onion 2', 106),
(188, 'Mango 2', 107),
(189, 'Palak 2', 108),
(190, 'Potato 2 ', 109),
(191, 'Cellery 2', 110),
(192, 'Chilly 2', 111),
(193, 'Curry Leaves 2', 112),
(194, 'Fllower 2', 113),
(195, 'Green Mango 2', 114),
(196, 'Amla 2', 115),
(197, 'Ladies Finger 2', 116),
(198, 'Lattos 2', 117),
(199, 'Cheera 2 ', 118),
(200, 'Pepsi (600 ml)', 119),
(201, '7UP (600 ml)', 120),
(202, 'Mirinda (600 ml)', 121),
(203, 'Dew (600 ml)', 122),
(204, 'Mango Pet (600 ml)', 123),
(205, 'Pepsi (250 ml)', 125),
(206, '7UP (250 ml)', 126),
(207, 'Mirinda (250 ml/Tin)', 127),
(208, 'Mountain Dew (250ml/Tin)', 128),
(209, 'Pepsi Diet (250 ml / Tin)', 129),
(210, 'Soda (600 ml)', 130),
(211, 'Pepsi (1 ltr)', 131),
(212, 'Pepsi ( 2 Ltr)', 132),
(213, 'Aquafina Water (1 Ltr)', 133),
(214, 'Black Pepper', 134),
(215, 'Jeera VIP', 135),
(216, 'Prum Jeerakam', 136),
(217, 'Cashew S', 137),
(218, 'Cashew SS', 138),
(219, 'Baby Cashew (WSP)', 139),
(220, 'Pappadam', 140),
(221, 'Kismis 1', 141),
(222, 'Kismis', 142),
(223, 'Patta', 143),
(224, 'Cardmom', 144),
(225, 'Takolam', 145),
(226, 'Grambu', 146),
(227, 'Black Salt Pepper', 147),
(228, 'Jadikka', 148),
(229, 'Jadi Pathiri', 149),
(230, 'Butter', 150),
(231, 'Lime Pickle', 151),
(232, 'Basmathi (Classic) Rice', 152),
(233, 'Biriyani (Kaima) Rice', 153),
(234, 'Cheery', 154),
(235, 'Tooti Frutti', 155),
(236, 'Dry Badam', 156),
(237, 'Dry Pista', 157),
(238, 'Butter Paper', 158),
(239, 'Acid', 159),
(240, 'Soyabean', 160),
(241, 'Chilli Sauce', 161),
(242, 'Kasthoori Methi', 162),
(243, 'Sweet Corn', 163),
(244, 'Mashrrom', 164),
(245, 'Corn Flour', 165),
(246, 'Vineegar', 166),
(247, 'Chat Masala', 167),
(248, 'White Pepper', 168),
(249, 'Lemon Grass Oil', 169),
(250, 'Noodle', 170),
(251, 'Sweet Sounf', 171),
(252, 'Musturd Oil', 172),
(253, 'News Paper', 173),
(254, 'Black Pepper Sauce', 174),
(255, 'Oyster Sauce', 175),
(256, 'Milky Strawberry', 176),
(257, 'Lemon', 177),
(258, 'Orange', 178),
(259, 'Grape', 179),
(260, 'Shamam', 180),
(261, 'Pineapple', 181),
(262, 'Pappaya', 182),
(263, 'Apple', 183),
(264, 'Anar', 184),
(265, 'French Fries', 185),
(266, 'Tomatto Paste', 186),
(267, 'Blue Curcaco', 187),
(268, 'Grenadiane', 188),
(269, 'Mint 3', 191),
(270, 'Pomogranate', 192),
(271, 'Subulussalam', 194),
(272, 'Hot & Sweet Bakery', 195),
(273, 'Wheat Powder', 196),
(274, 'Sunflower Oil', 197),
(275, 'Lime Delight', 198),
(276, 'Ageena Moto', 199),
(277, 'Milk Compound', 300),
(278, 'Egg ', 301),
(279, 'Big Banana', 302),
(280, 'Small Banana Sharja', 303),
(281, 'Rose Graqpe', 304),
(282, 'Lemon (Eggnfruit)', 307),
(283, 'Chilli Powder ', 308),
(284, 'Kashmiri Chilli ', 309),
(285, 'Turmaric Powder', 310),
(286, 'Coriander ', 311),
(287, 'Garam Masala', 312),
(288, 'Honey', 313),
(289, 'Cheese', 314),
(290, 'Small Onion', 315),
(291, 'Fresh Cream', 316),
(292, 'Foodbill', 317),
(293, 'Sugar (local)', 318),
(294, 'Kashmiri Chilli (local)', 319),
(295, 'Dalda (local)', 320),
(296, 'Staff Fish', 321),
(297, 'Water Tanker', 322),
(298, 'Butter  (local)', 324),
(299, 'Paneer  (local)', 326),
(300, 'Sauce  (local)', 327),
(302, '10" carry bag with mould', 600),
(303, 'nithin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sda_maincategories`
--

CREATE TABLE `sda_maincategories` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(15) NOT NULL,
  `rack_no` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sda_master_stock`
--

CREATE TABLE `sda_master_stock` (
  `stock_id` int(20) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `rack_no` int(20) NOT NULL,
  `quantity` int(12) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `vender_name` varchar(50) NOT NULL,
  `total_price` int(20) NOT NULL,
  `entered_by` varchar(50) NOT NULL,
  `stock_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_master_stock`
--

INSERT INTO `sda_master_stock` (`stock_id`, `item_name`, `rack_no`, `quantity`, `unit`, `price`, `vender_name`, `total_price`, `entered_by`, `stock_date`) VALUES
(1, 'Chicken Tandoori', 206, 610, 'Kg', 234, 'nithin john', 10530, '', '2017-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `sda_purchase`
--

CREATE TABLE `sda_purchase` (
  `purchase_id` int(10) NOT NULL,
  `branch_id` varchar(20) NOT NULL,
  `chef_id` varchar(20) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `catogory` varchar(50) NOT NULL,
  `purchase_quantity` int(20) NOT NULL,
  `purchase_price` int(11) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `purchase_date` varchar(20) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_purchase`
--

INSERT INTO `sda_purchase` (`purchase_id`, `branch_id`, `chef_id`, `item_name`, `catogory`, `purchase_quantity`, `purchase_price`, `unit`, `purchase_date`, `status`) VALUES
(1, '', 'kazhakootam', 'Chicken Tandoori', 'Arabic', 24, 816, 'kg', '2017-02-16', 'pending'),
(2, '', 'kazhakootam', 'Chicken Tandoori', 'Indian', 16, 544, 'kg', '2017-02-16', 'pending'),
(3, '', 'kazhakootam', 'Chicken Tandoori', 'Chinese', 21, 714, 'kg', '2017-02-16', 'pending'),
(4, '', 'kazhakootam', 'Chicken Tandoori', 'Continental', 18, 612, 'kg', '2017-02-16', 'Issued'),
(5, '', 'kazhakootam', 'Chicken Tandoori', 'Tandoori', 34, 1156, 'kg', '2017-02-16', 'Issued'),
(6, '', 'kazhakootam', 'Chicken Tandoori', 'Biriyani', 33, 1122, 'kg', '2017-02-16', 'Issued'),
(7, '', 'kazhakootam', 'Chicken Tandoori', 'Icecream', 32, 1088, 'kg', '2017-02-16', 'Issued');

-- --------------------------------------------------------

--
-- Table structure for table `sda_rack_details`
--

CREATE TABLE `sda_rack_details` (
  `rack_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `rack_number` int(11) NOT NULL,
  `rack_item` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sda_restuarents`
--

CREATE TABLE `sda_restuarents` (
  `rest_id` int(20) NOT NULL,
  `rest_name` varchar(50) NOT NULL,
  `rest_admin` varchar(50) NOT NULL,
  `rest_pwd` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `contacts` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_restuarents`
--

INSERT INTO `sda_restuarents` (`rest_id`, `rest_name`, `rest_admin`, `rest_pwd`, `location`, `contacts`, `status`, `city`) VALUES
(1, 'LeMeridian', 'manja', '12345', 'Ernakulam', '9994980524', '', 'trivandrum');

-- --------------------------------------------------------

--
-- Table structure for table `sda_role`
--

CREATE TABLE `sda_role` (
  `role_id` int(10) NOT NULL,
  `rest_id` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_role`
--

INSERT INTO `sda_role` (`role_id`, `rest_id`, `branch`, `role_name`, `status`) VALUES
(1, '', '', 'admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sda_stock`
--

CREATE TABLE `sda_stock` (
  `stock_id` int(20) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `rack_no` int(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  `vender_name` varchar(50) NOT NULL,
  `total_price` int(20) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `stock_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_stock`
--

INSERT INTO `sda_stock` (`stock_id`, `item_name`, `rack_no`, `quantity`, `unit`, `price`, `vender_name`, `total_price`, `branch_name`, `stock_date`) VALUES
(1, 'Chicken Shawaya', 205, 234, 'Kg', 23, 'nithin john', 5382, '', '2017-02-16'),
(2, 'Chicken Tandoori', 206, 456, 'Kg', 34, 'nithin john', 15504, '', '2017-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `sda_stock1`
--

CREATE TABLE `sda_stock1` (
  `stock_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `rack_no` int(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `unit` int(20) NOT NULL,
  `price` int(20) NOT NULL,
  `vender_name` varchar(255) NOT NULL,
  `total_price` int(20) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `stock_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_stock1`
--

INSERT INTO `sda_stock1` (`stock_id`, `item_name`, `rack_no`, `quantity`, `unit`, `price`, `vender_name`, `total_price`, `branch_name`, `stock_date`) VALUES
(1, 'Boil Rice', 45, 456789, 45, 345, 'Nithin John', 34567, 'sdsdsd', '2017-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `sda_vendor`
--

CREATE TABLE `sda_vendor` (
  `id` int(11) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_contact` varchar(255) NOT NULL,
  `vendor_location` varchar(255) NOT NULL,
  `vendor_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sda_vendor`
--

INSERT INTO `sda_vendor` (`id`, `vendor_name`, `vendor_contact`, `vendor_location`, `vendor_date`) VALUES
(1, 'nithin john', '5454545454', 'palayam', '2017-02-09');

-- --------------------------------------------------------

--
-- Table structure for table `tsale`
--

CREATE TABLE `tsale` (
  `item_id` int(20) NOT NULL,
  `item_arabic` int(20) NOT NULL,
  `item_indian` int(20) NOT NULL,
  `item_chinese` int(20) NOT NULL,
  `item_continental` int(20) NOT NULL,
  `item_tandoori` int(20) NOT NULL,
  `item_biriyani` int(20) NOT NULL,
  `item_icecream` int(20) NOT NULL,
  `item_staff` int(20) NOT NULL,
  `item_wastage` int(20) NOT NULL,
  `date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tsale`
--

INSERT INTO `tsale` (`item_id`, `item_arabic`, `item_indian`, `item_chinese`, `item_continental`, `item_tandoori`, `item_biriyani`, `item_icecream`, `item_staff`, `item_wastage`, `date`) VALUES
(2, 10000, 2500, 545412, 455445, 45545, 4556447, 5254, 5445, 445, '02/15/2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issued_cat`
--
ALTER TABLE `issued_cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `sda_admin`
--
ALTER TABLE `sda_admin`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `sda_admins`
--
ALTER TABLE `sda_admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `sda_branch_details`
--
ALTER TABLE `sda_branch_details`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `sda_categories`
--
ALTER TABLE `sda_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `sda_categorytype`
--
ALTER TABLE `sda_categorytype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sda_chef_details`
--
ALTER TABLE `sda_chef_details`
  ADD PRIMARY KEY (`chef_id`);

--
-- Indexes for table `sda_department`
--
ALTER TABLE `sda_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `sda_emproles`
--
ALTER TABLE `sda_emproles`
  ADD PRIMARY KEY (`erole_id`);

--
-- Indexes for table `sda_items`
--
ALTER TABLE `sda_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `sda_maincategories`
--
ALTER TABLE `sda_maincategories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `sda_master_stock`
--
ALTER TABLE `sda_master_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `sda_purchase`
--
ALTER TABLE `sda_purchase`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `sda_rack_details`
--
ALTER TABLE `sda_rack_details`
  ADD PRIMARY KEY (`rack_id`);

--
-- Indexes for table `sda_restuarents`
--
ALTER TABLE `sda_restuarents`
  ADD PRIMARY KEY (`rest_id`);

--
-- Indexes for table `sda_role`
--
ALTER TABLE `sda_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sda_stock`
--
ALTER TABLE `sda_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `sda_stock1`
--
ALTER TABLE `sda_stock1`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `sda_vendor`
--
ALTER TABLE `sda_vendor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tsale`
--
ALTER TABLE `tsale`
  ADD PRIMARY KEY (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `issued_cat`
--
ALTER TABLE `issued_cat`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sda_admin`
--
ALTER TABLE `sda_admin`
  MODIFY `login_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sda_admins`
--
ALTER TABLE `sda_admins`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sda_branch_details`
--
ALTER TABLE `sda_branch_details`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sda_categories`
--
ALTER TABLE `sda_categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sda_categorytype`
--
ALTER TABLE `sda_categorytype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sda_chef_details`
--
ALTER TABLE `sda_chef_details`
  MODIFY `chef_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sda_department`
--
ALTER TABLE `sda_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sda_emproles`
--
ALTER TABLE `sda_emproles`
  MODIFY `erole_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sda_items`
--
ALTER TABLE `sda_items`
  MODIFY `item_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `sda_maincategories`
--
ALTER TABLE `sda_maincategories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sda_master_stock`
--
ALTER TABLE `sda_master_stock`
  MODIFY `stock_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sda_purchase`
--
ALTER TABLE `sda_purchase`
  MODIFY `purchase_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sda_rack_details`
--
ALTER TABLE `sda_rack_details`
  MODIFY `rack_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sda_restuarents`
--
ALTER TABLE `sda_restuarents`
  MODIFY `rest_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sda_role`
--
ALTER TABLE `sda_role`
  MODIFY `role_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sda_stock`
--
ALTER TABLE `sda_stock`
  MODIFY `stock_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sda_stock1`
--
ALTER TABLE `sda_stock1`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sda_vendor`
--
ALTER TABLE `sda_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tsale`
--
ALTER TABLE `tsale`
  MODIFY `item_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `stock1` ON SCHEDULE EVERY 1 DAY STARTS '2017-02-14 05:56:41' ON COMPLETION PRESERVE ENABLE DO UPDATE sda_master_stock a INNER JOIN sda_stock b ON a.item_name =b.item_name SET a.quantity = b.quantity$$

CREATE DEFINER=`root`@`localhost` EVENT `rate` ON SCHEDULE EVERY 1 DAY STARTS '2017-02-11 12:47:42' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE sda_master_stock a INNER JOIN sda_stock b ON a.item_name =b.item_name SET a.quantity = b.quantity$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
