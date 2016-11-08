-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2016 at 03:35 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopaholic`
--

-- --------------------------------------------------------

--
-- Table structure for table `added_to`
--

CREATE TABLE IF NOT EXISTS `added_to` (
  `PRODUCT_ID` int(5) NOT NULL DEFAULT '0',
  `CART_ITEM_ID` int(5) NOT NULL DEFAULT '0',
  `ADDED_DATE` date DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`,`CART_ITEM_ID`),
  KEY `CART_ITEM_ID` (`CART_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `BRAND_ID` varchar(6) NOT NULL,
  `BRAND_NAME` varchar(25) NOT NULL,
  PRIMARY KEY (`BRAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`BRAND_ID`, `BRAND_NAME`) VALUES
('', ''),
('1', 'Pepe Jeans'),
('10', 'Puma'),
('11', 'Peter England'),
('12', 'Mochi'),
('13', 'Catwalk'),
('14', 'Philips'),
('15', 'Asus'),
('16', 'Motorola'),
('17', 'Apple'),
('18', 'Tupperware'),
('19', 'Skybag'),
('2', 'Lee'),
('20', 'Pinnacle'),
('3', 'Zovi'),
('4', 'Milton'),
('5', 'Sony'),
('6', 'American Swan'),
('7', 'Parker'),
('8', 'John Players'),
('9', 'United Colors of Benetton');

-- --------------------------------------------------------

--
-- Table structure for table `buys`
--

CREATE TABLE IF NOT EXISTS `buys` (
  `CUSTOMER_ID` int(5) NOT NULL DEFAULT '0',
  `PRODUCT_ID` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CUSTOMER_ID`,`PRODUCT_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `CART_ID` int(5) NOT NULL,
  `CUSTOMER_ID` int(5) NOT NULL,
  `TOTAL_COST` float(10,2) DEFAULT NULL,
  `QUANTITY` int(10) NOT NULL,
  PRIMARY KEY (`CART_ID`),
  KEY `CUSTOMER_ID` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CART_ID`, `CUSTOMER_ID`, `TOTAL_COST`, `QUANTITY`) VALUES
(3011, 2, 990.00, 2),
(3012, 2, 1024.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE IF NOT EXISTS `cart_item` (
  `CART_ITEM_ID` int(5) NOT NULL DEFAULT '0',
  `CART_ID` int(5) NOT NULL DEFAULT '0',
  `CUSTOMER_ID` int(5) NOT NULL DEFAULT '0',
  `QUANTITY` int(5) DEFAULT NULL,
  `TOTAL_COST` float(10,2) DEFAULT NULL,
  `DELIVERY_DETAILS` date DEFAULT NULL,
  PRIMARY KEY (`CART_ITEM_ID`,`CART_ID`,`CUSTOMER_ID`),
  KEY `CART_ID` (`CART_ID`),
  KEY `CUSTOMER_ID` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`CART_ITEM_ID`, `CART_ID`, `CUSTOMER_ID`, `QUANTITY`, `TOTAL_COST`, `DELIVERY_DETAILS`) VALUES
(2334, 3012, 2, 1, 0.00, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CATEGORY_ID` varchar(3) NOT NULL,
  `CATEGORY_NAME` varchar(30) NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CATEGORY_NAME`) VALUES
('10c', 'Clothing'),
('10f', 'Footwear'),
('20c', 'Clothing'),
('20f', 'Footwear'),
('301', 'Mobile Accessories'),
('302', 'Mobile '),
('303', 'Laptop'),
('40a', 'Apparels'),
('40s', 'School Supplies'),
('501', 'Literature and Fiction'),
('502', 'Biography');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `CUSTOMER_ID` int(5) NOT NULL,
  `EMAIL_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `STREET` varchar(40) NOT NULL,
  `CITY` varchar(20) NOT NULL,
  `PIN` int(6) NOT NULL,
  `STATE` varchar(15) NOT NULL,
  `USERNAME` varchar(15) NOT NULL,
  `PHONE_NO` bigint(12) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  UNIQUE KEY `EMAIL_ID` (`EMAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUSTOMER_ID`, `EMAIL_ID`, `PASSWORD`, `STREET`, `CITY`, `PIN`, `STATE`, `USERNAME`, `PHONE_NO`) VALUES
(1, 'himanivarshney@iiitdmj.ac.in', 'himani95', 'hall 1', 'Jabalpur', 482005, 'M.P.', 'himani', 9479464768),
(2, 'rubysinghsendwal@iiitdmj.ac.in', 'ruby13', 'Hall1', 'Jabalpur', 482005, 'M.P.', 'ruby', 9407477612);

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE IF NOT EXISTS `demo` (
  `ID` int(6) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `IMAGE` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`ID`, `NAME`, `IMAGE`) VALUES
(1, 'p1', 'C:\\Users\\HIMANI\\Downloads\\12992731_1679918185594701_1242066027_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `does`
--

CREATE TABLE IF NOT EXISTS `does` (
  `CUSTOMER_ID` int(5) NOT NULL DEFAULT '0',
  `PAYMENT_ID` int(5) NOT NULL DEFAULT '0',
  `ORDER_DATE` date DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`,`PAYMENT_ID`),
  KEY `PAYMENT_ID` (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `done_for`
--

CREATE TABLE IF NOT EXISTS `done_for` (
  `PAYMENT_ID` int(5) NOT NULL DEFAULT '0',
  `CART_ID` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PAYMENT_ID`,`CART_ID`),
  KEY `CART_ID` (`CART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `has1`
--

CREATE TABLE IF NOT EXISTS `has1` (
  `CATEGORY_ID` varchar(3) NOT NULL DEFAULT '',
  `BRAND_ID` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`CATEGORY_ID`,`BRAND_ID`),
  KEY `BRAND_ID` (`BRAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has1`
--

INSERT INTO `has1` (`CATEGORY_ID`, `BRAND_ID`) VALUES
('20c', '1'),
('20c', '11'),
('10f', '12'),
('10f', '13'),
('301', '14'),
('302', '15'),
('302', '16'),
('302', '17'),
('40s', '18'),
('40s', '19'),
('20c', '2'),
('40s', '20'),
('10c', '3'),
('40s', '4'),
('301', '5'),
('10c', '6'),
('40s', '7'),
('20c', '8'),
('10c', '9'),
('20c', '9');

-- --------------------------------------------------------

--
-- Table structure for table `has2`
--

CREATE TABLE IF NOT EXISTS `has2` (
  `PRODUCT_ID` int(5) NOT NULL DEFAULT '0',
  `BRAND_ID` varchar(6) NOT NULL DEFAULT '',
  PRIMARY KEY (`PRODUCT_ID`,`BRAND_ID`),
  KEY `BRAND_ID` (`BRAND_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has2`
--

INSERT INTO `has2` (`PRODUCT_ID`, `BRAND_ID`) VALUES
(2013, '1'),
(2025, '1'),
(2034, '1'),
(2023, '10'),
(2014, '11'),
(1051, '12'),
(1055, '12'),
(1063, '12'),
(1052, '13'),
(1054, '13'),
(1065, '13'),
(3012, '14'),
(3013, '14'),
(3024, '15'),
(3021, '16'),
(3022, '16'),
(3023, '16'),
(3025, '17'),
(4034, '18'),
(4035, '18'),
(4014, '19'),
(4015, '19'),
(2031, '2'),
(2032, '2'),
(2033, '2'),
(2035, '2'),
(1044, '3'),
(1045, '3'),
(4025, '4'),
(3011, '5'),
(1043, '6'),
(2011, '8'),
(2015, '8'),
(1034, '9'),
(1035, '9'),
(2022, '9'),
(2024, '9');

-- --------------------------------------------------------

--
-- Table structure for table `has3`
--

CREATE TABLE IF NOT EXISTS `has3` (
  `CATEGORY_ID` varchar(3) NOT NULL DEFAULT '',
  `SEGMENT_ID` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`CATEGORY_ID`,`SEGMENT_ID`),
  KEY `SEGMENT_ID` (`SEGMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has3`
--

INSERT INTO `has3` (`CATEGORY_ID`, `SEGMENT_ID`) VALUES
('10c', '1'),
('10f', '1'),
('20c', '2'),
('20f', '2'),
('301', '3'),
('302', '3'),
('303', '3'),
('40a', '4'),
('40s', '4'),
('501', '5'),
('502', '5');

-- --------------------------------------------------------

--
-- Table structure for table `has4`
--

CREATE TABLE IF NOT EXISTS `has4` (
  `PRODUCT_ID` int(5) NOT NULL DEFAULT '0',
  `CATEGORY_ID` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`PRODUCT_ID`,`CATEGORY_ID`),
  KEY `CATEGORY_ID` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has4`
--

INSERT INTO `has4` (`PRODUCT_ID`, `CATEGORY_ID`) VALUES
(1011, '10c'),
(1012, '10c'),
(1013, '10c'),
(1014, '10c'),
(1015, '10c'),
(1021, '10c'),
(1022, '10c'),
(1023, '10c'),
(1024, '10c'),
(1025, '10c'),
(1031, '10c'),
(1032, '10c'),
(1033, '10c'),
(1034, '10c'),
(1035, '10c'),
(1041, '10c'),
(1042, '10c'),
(1043, '10c'),
(1044, '10c'),
(1045, '10c'),
(1051, '10f'),
(1052, '10f'),
(1053, '10f'),
(1054, '10f'),
(1055, '10f'),
(1061, '10f'),
(1062, '10f'),
(1063, '10f'),
(1064, '10f'),
(1065, '10f'),
(2011, '20c'),
(2012, '20c'),
(2013, '20c'),
(2014, '20c'),
(2015, '20c'),
(2021, '20c'),
(2022, '20c'),
(2023, '20c'),
(2024, '20c'),
(2025, '20c'),
(2031, '20c'),
(2032, '20c'),
(2033, '20c'),
(2034, '20c'),
(2035, '20c'),
(2041, '20f'),
(2042, '20f'),
(2043, '20f'),
(2044, '20f'),
(2045, '20f'),
(3011, '301'),
(3012, '301'),
(3013, '301'),
(3014, '301'),
(3021, '302'),
(3022, '302'),
(3023, '302'),
(3024, '302'),
(3025, '302'),
(4011, '40s'),
(4012, '40s'),
(4013, '40s'),
(4014, '40s'),
(4015, '40s'),
(4021, '40s'),
(4022, '40s'),
(4023, '40s'),
(4024, '40s'),
(4025, '40s'),
(4031, '40s'),
(4032, '40s'),
(4033, '40s'),
(4034, '40s'),
(4035, '40s'),
(4041, '40s'),
(4042, '40s'),
(4043, '40s'),
(4044, '40s'),
(4045, '40s'),
(4051, '40s'),
(4052, '40s'),
(5011, '501'),
(5012, '501'),
(5013, '501'),
(5014, '501'),
(5015, '501');

-- --------------------------------------------------------

--
-- Table structure for table `has5`
--

CREATE TABLE IF NOT EXISTS `has5` (
  `PRODUCT_ID` int(5) NOT NULL DEFAULT '0',
  `SEGMENT_ID` varchar(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`PRODUCT_ID`,`SEGMENT_ID`),
  KEY `SEGMENT_ID` (`SEGMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `has5`
--

INSERT INTO `has5` (`PRODUCT_ID`, `SEGMENT_ID`) VALUES
(1011, '1'),
(1012, '1'),
(1013, '1'),
(1014, '1'),
(1015, '1'),
(1021, '1'),
(1022, '1'),
(1023, '1'),
(1024, '1'),
(1025, '1'),
(1031, '1'),
(1032, '1'),
(1033, '1'),
(1034, '1'),
(1035, '1'),
(1041, '1'),
(1042, '1'),
(1043, '1'),
(1044, '1'),
(1045, '1'),
(1051, '1'),
(1052, '1'),
(1053, '1'),
(1054, '1'),
(1055, '1'),
(1061, '1'),
(1062, '1'),
(1063, '1'),
(1064, '1'),
(1065, '1'),
(2011, '2'),
(2012, '2'),
(2013, '2'),
(2014, '2'),
(2015, '2'),
(2021, '2'),
(2022, '2'),
(2023, '2'),
(2024, '2'),
(2025, '2'),
(2031, '2'),
(2032, '2'),
(2033, '2'),
(2034, '2'),
(2035, '2'),
(2041, '2'),
(2042, '2'),
(2043, '2'),
(2044, '2'),
(2045, '2'),
(3011, '3'),
(3012, '3'),
(3013, '3'),
(3014, '3'),
(3021, '3'),
(3022, '3'),
(3023, '3'),
(3024, '3'),
(3025, '3'),
(4011, '4'),
(4012, '4'),
(4013, '4'),
(4014, '4'),
(4015, '4'),
(4021, '4'),
(4022, '4'),
(4023, '4'),
(4024, '4'),
(4025, '4'),
(4031, '4'),
(4032, '4'),
(4033, '4'),
(4034, '4'),
(4035, '4'),
(4041, '4'),
(4042, '4'),
(4043, '4'),
(4044, '4'),
(4045, '4'),
(4051, '4'),
(4052, '4'),
(5011, '5'),
(5012, '5'),
(5013, '5'),
(5014, '5'),
(5015, '5');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `EMAIL_ID` varchar(50) DEFAULT NULL,
  `CUSTOMER_ID` int(5) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  KEY `EMAIL_ID` (`EMAIL_ID`),
  KEY `CUSTOMER_ID` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`EMAIL_ID`, `CUSTOMER_ID`, `PASSWORD`) VALUES
('himanivarshney@iiitdmj.ac.in', 1, 'himani95');

-- --------------------------------------------------------

--
-- Table structure for table `madeof`
--

CREATE TABLE IF NOT EXISTS `madeof` (
  `CART_ID` int(5) NOT NULL DEFAULT '0',
  `CART_ITEM_ID` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CART_ID`,`CART_ITEM_ID`),
  KEY `CART_ITEM_ID` (`CART_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `PAYMENT_ID` int(5) NOT NULL,
  `PAYMENT_TYPE` varchar(20) NOT NULL,
  `AMOUNT` float(10,2) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `PRODUCT_ID` int(5) NOT NULL,
  `PRODUCT_MODEL` varchar(50) NOT NULL,
  `PRODUCT_PRICE` float(10,2) NOT NULL,
  `PRODUCT_NAME` varchar(100) DEFAULT NULL,
  `PRODUCT_IMAGE` varchar(500) NOT NULL,
  `PRODUCT_QUANTITY` int(5) DEFAULT NULL,
  `SPECIFICATION` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PRODUCT_ID`, `PRODUCT_MODEL`, `PRODUCT_PRICE`, `PRODUCT_NAME`, `PRODUCT_IMAGE`, `PRODUCT_QUANTITY`, `SPECIFICATION`) VALUES
(1011, 'Cotton Saree', 1299.00, 'Pakizza Black Saree', 'saree1.jpeg', 1, 'Weight:0.49 kg\r\nWith Blouse Piece\r\nBollywood Style\r\nOccasion:Party wear\r\n'),
(1012, 'Silk Saree', 3999.00, 'Reya Magenta Silk Saree', 'saree3.jpeg', 1, 'Weight:0.69 kg\r\nWith Blouse Piece\r\nBollywood Style\r\nOccasion:Party wear'),
(1013, 'Georgette Saree', 999.00, 'Nimi Cream Marroon Georgette Saree', 'saree2.jpeg', 5, 'Weight:0.49 kg\r\nWith Blouse Piece\r\nBollywood Style\r\nOccasion:Party wear'),
(1014, 'Georgette Saree', 499.00, 'Zdeal Pink Georgette Saree', 'saree4.jpeg', 3, 'Colour:pink\r\nMaterial : Georgette\r\nWeight :0.49kg\r\nWith Blouse Piece'),
(1015, 'Georgette Saree', 1499.00, 'Jenny Blue Striped Georgette Saree', 'saree5.jpeg', 5, 'Colour:Blue\r\nWeight:0.69kg\r\nWith Blouse Piece'),
(1021, 'Georgette Semi-stitched Salwar Suit', 643.00, 'Zdeal Georgette Embroidered Semi-stitched Salwar Suit Dupatta Material', 'suit1.jpeg', 7, 'Semi Stiched\r\nMaterial:Georgette'),
(1022, 'Georgette  Salwar Suit', 848.00, 'Jenny Fashion Georgette Embroidered Salwar Suit Dupatta ', 'suit2.jpeg', 3, 'Material : Georgette\r\nWith Dupatta'),
(1023, 'Georgette Semi-stitched Salwar Suit', 599.00, 'Pakiza Design Georgette Embroidered Semi-stitched Salwar Suit Dupatta Material', 'suit4.jpeg\r\n\r\n', 9, 'Semi Stitched\r\nMaterial: Georgette'),
(1024, 'Georgette  Salwar Suit', 1110.00, 'Reya Georgette Embroidered Semi-stitched Salwar Suit Dupatta Material', 'suit4.jpeg', 5, NULL),
(1025, 'Cotton Semi-stitched Salwar Suit', 1055.00, 'Nimi Fashion Georgette Embroidered, Self Design Semi-stitched Salwar Suit Dupatta Material', 'suit5.jpeg', 9, NULL),
(1031, 'Gathered Dress', 779.00, 'Cottinfab Women''S Gathered Dress', 'd1.jpeg', 10, 'Length-knee length\r\nFabric-polyster\r\nType:Gathered'),
(1032, 'A Line Dress', 599.00, 'India Inc Women''s A-Line Dress ', 'd2.jpeg', 5, 'Length:Knee Length\r\nType:A Line fit\r\nPattern:Floral\r\n'),
(1033, 'A Line Dress', 799.00, 'Cottinfab Halter Neck A-Line Dress', 'd3.jpg', 5, 'Length:Mini\r\nType:A Line \r\nNeck:Halter neck\r\n\r\n'),
(1034, 'Lexicon Dress', 1995.00, 'United Colors of Benetton Black Georgette Bodycon Dress', 'd4.jpg', 2, 'Length:Knee Length\r\nType:Bodycon dress\r\nFabric:Georgette'),
(1035, 'Finn Black Dress', 2549.00, 'United Colors of Benetton Black V-Neck Dress', 'd5.jpg', 4, 'Length:Knee Length\r\nNeck:V neck'),
(1036, 'Tops', 499.00, 'Reya Girls Top', 'sold1.png', 0, 'Sleeves: Sleeveless'),
(1037, 'Tops', 599.00, 'Pakizza Girls Tops', 'sold2.png', 0, 'Sleeves:Off Sleeves'),
(1038, 'Tops', 399.00, 'Reya Womens Top', 'sold3.png', 0, 'Sleeves:Cut Sleeves'),
(1041, 'A-Line Skirt', 560.00, 'Cottinfab Floral Print Women''s A-Line Skirt', 's1.jpeg', 12, 'Length:Knee Length\r\nType: A-Line\r\nPattern:Foral'),
(1042, 'Skater Skirt', 699.00, 'Vishal cola Skater Skirt', 's2.jpg', 5, 'Length:Knee Length\r\nType:Skater'),
(1043, 'A-Line Skirt', 1299.00, 'American Swan Pink A-Line Skirt', 's3.jpg', 8, 'Length:Knee Length\r\nType:A-Line'),
(1044, 'Skater Skirt', 699.00, 'Zovi White Women''s Skater Dress', 's4.jpg', 1, 'Length:Knee Length\r\nType:Skater\r\nColor:white\r\n'),
(1045, 'Skater Skirt', 499.00, 'Zovi Pink Women''s Skater Skirt', 's5.jpg', 4, 'Length:Knee Length\r\nType:Skater\r\nCoor:Pink\r\n'),
(1051, 'Women Heels', 1099.00, 'Mochi Women Heels', 'h1.jpg', 8, 'Occasion :Casual\r\nHeel Height : 3.5 inch\r\nColor :Black\r\n'),
(1052, 'Women Heels', 799.00, 'Catwalk Women Heels', 'h2.jpg\r\n', 9, 'Occasion : Casual\r\nMaterial : Velvet\r\nColor : Black\r\nHeel Height : 4 inch'),
(1053, 'Girls Heels', 799.00, 'Soft & Sleek Red Seude Flower Girls Heels', 'h3.jpg', 5, 'Heel Heght:4.5"\r\nOccasion:Casual\r\nMateral:Synthetic\r\nColour:Red'),
(1054, 'Women Heels', 2599.00, 'Catwalk Women Heels', 'h4.jpg', 10, 'Ocassion :Party Wear\r\nMaterial:Artificial Leather\r\nHeight : 5"'),
(1055, 'Women Heels', 1999.00, 'Mochi Women Heels', 'h5.jpg', 6, 'Occasion:Formal\r\nMaterial:Synthetic\r\nColor:blue\r\nHeel Height : 3.5"\r\n'),
(1061, 'Women Wedges', 415.00, 'Moonwalk Women Wedges', 'w1.jpg\r\n', 6, 'Ocassion: Casual\r\nHeight :3"\r\nMAterial:Synthetic'),
(1062, 'Women Wedges', 499.00, 'Stylistri Women Wedges', 'w2.jpg', 9, 'Ocasion:casual\r\nMaterial:Artificial leather\r\nHeel Height:2"\r\nColour: Blue'),
(1063, 'Women Wedges', 1306.00, 'Mochi Women Wedges', 'w4.jpg', 7, 'Occasion: Casual\r\nMaterial:Artificial Leather\r\nColour: Beige\r\nHeel Height:4"'),
(1064, 'Women Wedges', 499.00, 'FioreLLa Women Wedges', 'w3.jpg', 4, 'Occasion:Casual\r\nMaterial:PU\r\nColor:Black\r\nHeel Height: 3"'),
(1065, 'Women Wedges', 489.00, 'Catwalk Women Wedges', 'w5.jpg', 18, 'Occasion: Casual\r\nMaterial:Synthetic\r\nColour: Blue\r\nHeel Height :2"'),
(2011, 'Casual_Shirt - Men', 799.00, 'John Players Men''s Casual Shirt', 'shirt1.jpg\r\n', 8, 'Occasion:casual\r\nIdeal For :Men''s '),
(2012, 'Formal Shirt - Men', 574.00, 'Mark Taylor Men''s Solid Formal Shirt', 'shirt2.jpg\r\n', 10, 'Pattern : Solid\r\nOccasion : Formal\r\nIdeal For : Men''s'),
(2013, 'Casual Shirt Men', 1399.00, 'Pepe Jeans Men''s Striped Casual Shirt', 'shirt3.jpg', 10, 'Fit: Semi Fit\r\nFabric: 100%Cotton\r\nsleeve:Full sleeve'),
(2014, 'Formal Shirt Men', 959.00, 'Peter England Men''s Solid Formal Shirt ', 'shirt4.jpg', 9, 'Fit:Nuvo\r\nFabric:100% Cotton\r\nSuitable for Western wear \r\nSleeve :Full Sleeves'),
(2015, 'Formal Shirt Men', 839.00, 'John Players Men''s Checkered Formal Shirt', 'shirt5.jpg', 2, 'Fit: Slim Fit\r\nFabric :100% Cotton\r\nSleeve :Full Sleeve'),
(2021, 'Polo T-Shirt', 734.00, 'Numero Uno Solid Men''s Polo T-Shirt', 'ts1.jpg', 7, 'Sleeve: Half sleeve\r\nFabric : Cotton'),
(2022, 'T-Shirt Mens', 629.00, 'United Colors of Benetton Printed Men''s Round Neck T-Shirt', 'ts2.jpg', 2, 'Sleeve:Half Sleeve\r\nFabric: Cotton Polyester'),
(2023, 'T-Shirt Mens', 1034.00, 'Puma Printed Men''s Rond neck T-Shirt', 'ts3.jpg', 10, 'Sleeves:Half Sleeve \r\nFabric: 100% Cotton'),
(2024, 'T-Shirt Mens', 909.00, 'United Colors Of Benetton Striped Men''s Polo T-Shirt', 'ts4.jpg', 19, 'Sleeve : Half Sleeve\r\nFabric :100% Cotton'),
(2025, 'T-Shirt Mens', 629.00, 'Pepe Jeans Printed Men''s Round Neck T-Shirt', 'ts5.jpg', 9, 'Sleeve : Half Sleeve\r\nFabric :100% Cotton'),
(2031, 'Men''sJeans', 1494.00, 'Lee Bruce Fit Men'' Jeans', 'jeans1.jpg', 5, 'Rise : Mid Rise\r\nColor : WASH-35\r\nFit : Bruce'),
(2032, 'Men''s Jeans', 1494.00, 'Lee Powell Fit Men''s Jeans', 'jeans2.jpg', 5, 'Rise : Mid Rise\r\nColor : WASH-36\r\nFit : Powell'),
(2033, 'Men''s Jeans', 1494.00, 'Lee Bruce Fit Men''s Jeans', 'jeans3.jpg', 7, 'Rise : Mid Rise\r\nColor : WASH-36\r\nFit : Powell'),
(2034, 'Men''s Jeans', 2055.00, 'Pepe Jeans Slim Fit Men''s Jeans', 'jeans4.jpg', 6, 'Rise : Low Rise\r\nColor : MID-DRK\r\nFit : Slim Fit'),
(2035, 'Men''s Jeans', 1494.00, 'Lee Bruce Fit Men''s Jeans', 'jeans5.jpg', 5, 'Rise : Mid Rise\r\nColor : WASH-25\r\nFit : Bruce'),
(2041, 'Formal Shoes', 2300.00, 'Red Tape Lacer Shoes', 'shoes1.jpg', 16, 'Ocassion : formal\r\nHeel Height: 1\r\nColor: Brown'),
(2042, 'Formal Shoes', 2440.00, 'Red Tape Slip On Shoes', 'shoes2.jpg', 12, 'Ocassion : formal\r\nHeel Height: 1.2\r\nColor: Black'),
(2043, 'Formal Shoes', 1145.00, 'Provogue Lace Up Shoes', 'shoes3.jpg', 5, 'Ocassion : formal\r\nHeel Height: 1\r\nColor: Brown'),
(2044, 'Formal Shoes', 1433.00, 'Provogue Slip On Shoes', 'shoes4.jpg', 12, 'Ocassion : formal\r\nHeel Height: 1\r\nColor: Black'),
(2045, 'Formal Shoes', 1995.00, 'Provogue Lace Up Shoes', 'shoes5.jpg', 12, 'Ocassion : formal\r\nHeel Height: 1\r\nColor: Tan'),
(3011, 'Sony MDR ZX110', 990.00, 'Sony MDR', 'e1.jpg', 15, 'On the ear Headphone\r\nOver the head\r\nWired Connectivity\r\nNoise Cancellation'),
(3012, 'Philps shl 3000wt', 1024.00, 'Philips shl', 'e2.jpg', 25, 'On the ear Headphone\r\nOver the head\r\nWired Connectivity\r\nNoise Cancellation'),
(3013, 'Philps-shl 3095bl', 1024.00, 'Philips-shl(bl)', 'e3.jpg', 15, 'On the ear Headphone\r\nOver the head\r\nWired Connectivity\r\nNoise Cancellation'),
(3014, 'Sonilex slg-1001', 450.00, 'Sonilex pl', 'e4.jpg', 10, 'On the ear Headphone\r\nOver the head\r\nWired Connectivity\r\nNoise Cancellation'),
(3021, 'Moto-G3 ', 10999.00, 'Moto-G3 wt', 'm1.jpg', 20, '13 MP PRIMARY CAMERA\r\n2470 mAh Battery\r\n4G LTE\r\nWater Resistant'),
(3022, 'Moto-G3 ', 10999.00, 'Moto-G3 bl', 'm2.jpg', 15, 'IPX7 Water Resistance\r\n13 MP Primary Camera\r\n2470 mAh Battery'),
(3023, 'Moto-X2 Play', 18999.00, 'Moto-X2 Play -wt', 'm5.jpg', 18, '3630mAh Battery\r\nCamera : 21 MP|5MP\r\nOcta Core Processor\r\n5.5 inch FHD Screen'),
(3024, 'Asus Zenfone Selfie', 14999.00, 'Asus Zenfone Selfie-bl', 'm3.jpg', 10, '5.5 inch HD Display\r\n13 MP Primary Camera'),
(3025, 'Apple 6Splus ', 58900.00, 'Apple iphone 6S plus ', 'm4.jpg', 5, 'Color :white\r\nDual Sim,ios9\r\nPrimary Camera : 13 Mpx \r\n5.5inch wide screen\r\n3D Touch and live photos'),
(4011, 'Back Pack -Kids', 1119.00, 'Marvel Avengers Group Art Faces Back Pack', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aaa030000bd0b00000e1900003d1e000015220000e92f0000004500009e4600000d4b0000b34e000016720000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 8, 'Materal : Polyster\r\nZipper Closure\r\nDouble Compartments \r\n3 pockets'),
(4012, 'SchoolBag Kids', 629.00, 'Frozen School Bag', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa8030000110b000019160000da190000171c0000e52400005d350000fa360000983a00003b3d000095590000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 4, 'Material: Polyster\r\nNo.of Compartments : 3\r\nIdeal For: Girls\r\n'),
(4013, 'Back Pack -Kids', 979.00, 'Barbie with Bow Backpack', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa8030000530c0000561b0000c51f00008a210000ea3000007e470000404900006f4d0000095000004b770000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 7, '2 Pockets\r\nZipper cLosures\r\nTriple Compartments\r\nMaterial:Polyster'),
(4014, 'Back Pack', 1890.00, 'Skybag Raider 01 red 32L', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aab030000b90a0000e5140000961800007e1a00001226000002340000643500003f3800006f3a0000205d0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 10, 'Ideal For : Boys , Girls\r\nNo. of Compartments : 3\r\nLaptop Sleeve :No'),
(4015, 'BackPack', 1450.00, 'Skybags Pixel Plus 05 32 L ', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa80300004b0a00000b160000c81800007e1a00007a2a0000db3f000053410000e7430000d5450000a1670000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 8, 'Ideal For : Boys , Girls\r\nNo.of Copartents : 3\r\nLaptop Sleeves : No'),
(4021, 'Water Bottle - 600 ml', 299.00, 'Carbon Water Bottles (600 ml)', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa40300000c0700005d0a0000ad0a0000050b00008b0c00001f100000091100009e1100002212000069180000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 10, 'Colour : Grey\r\nMaterial : Stainless Steel'),
(4022, 'Water Bottle - 1000 ml', 881.00, 'CamelBak Chute 1000 mL Water Bottle', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa4030000a80600000c0a0000540a0000b30a0000e20d00003a120000391300008a130000e61300001f1b0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 5, 'Cap Type Lid\r\nColour : Charcoal\r\nCapacity : 1000 mL'),
(4023, 'Sports Water Bottle - 850 ml', 309.00, 'H2O Sport 850 mL Water Bottle', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa8030000590a0000d011000001130000411400004b1a000044230000a1240000f625000072270000f4350000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 2, 'Colour : Red\r\n100% Recyclable'),
(4024, 'Transparent Water Bottle - 1000 ml', 259.00, 'H2O Transparent 1000 mL Water Bottle ', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa5030000f8060000450a00000d0b0000e70b0000a80d000028110000ee110000e1120000e2130000641a0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 5, 'Color : Brown\r\nCapacity : 1000 mL'),
(4025, 'School Water Bottle - 1000mL', 845.00, 'Milton School 1000 mL Water Bottle', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa30300005006000096090000cb090000160a0000150c0000f70f0000bb100000f210000030110000c9180000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 6, 'Stainless Steel\r\nThermo Steel'),
(4031, '2 Containers Lunch box', 805.00, 'Chumbak 2 Containers Lunch box', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aaa0300004f0b0000471800003f1e00000c2200009b2e00002d420000b843000037490000234d00001e6d0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 15, 'Quantity 600ml\r\nColour: Pink\r\nMaterial: Silicon'),
(4032, '5 Containers lunch Box', 690.00, 'Embassy Clip Carrier 5 Containers Lunch Box', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa403000055080000c50f0000021000005f100000d3170000ff21000021230000b52300005f2400008f340000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 10, '2050 ml\r\nClip Lunch Carrier\r\nSize 7*5\r\nEasy to maintain'),
(4033, '1Container Lunch Box', 249.00, 'Avocado Stylus 11 1Container Lunch Box', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa8030000e309000011100000c212000035150000571900003d210000d42200002e2500006c270000f7340000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 7, 'Color Orange\r\nMaterial Stainless steel\r\nThermoware'),
(4034, '1 Container Lunch Box', 289.00, 'Tupperware ben 10 1 Container Lunch Box', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa80300005f0c0000f1180000531b0000c21d00006c290000f13a0000ea3c0000733f00002f420000ce5f0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 8, 'Colour: Multicolour\r\nMaterial : Plastic \r\nThermoware'),
(4035, '1 Container Lunch Box', 379.00, 'Tupperware Fun Meal 1 Container Lunch Box', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa70300009506000031090000f0090000960b0000e60d0000ad110000b91200008a1300001c150000d61b0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 12, 'Colour : Yellow\r\nMaterial :Plastic'),
(4041, 'Diary', 399.00, 'Craft Play Leather With Flower Emboss Regular Diary Hard Bound', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa7030000270b00002a1b00005b1d0000411f000099300000884a0000094c0000414f00006d5200004a8b0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 10, 'Material: Leather\r\nNo.of Pages : 100\r\nRuling :Unruled'),
(4042, 'Regular Diary', 349.00, 'Craft Play Butterfly With Button Regular Diary Hand Sewn', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aab030000c40c0000501e0000fd2100002f250000933c00003d5a0000d45b0000a25f00003d6300000ea30000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 6, 'Number of Pages : 100\r\nRuling : Unruled \r\nTypes : Handmade Paper Diary'),
(4043, 'Notebook', 360.00, 'Pinnacle Red Tin Notebook Assorted Notebook Adhesive Bound', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aaa030000e20700006f0a0000e40b0000ce0c0000b30e000053110000ed1200003014000010150000121b0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 2, 'Cover Type: Metal Tin\r\nNo Of pages :150\r\nRuling : Mixed'),
(4044, 'Notebook', 188.00, 'The Design Junction Idea A5 Notebook Spiral bound', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa6030000bd090000b11500003016000008170000362a0000f03e0000734000002d4100000a42000018620000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 8, 'Cover Type: 300 GSM DEsigner Front & Back Covers\r\nNo Of pages :160\r\nRuling : Ruled'),
(4045, 'Diary', 549.00, 'Parker Ruled A6 Diary Hard Bound ', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aae030000ea0a0000091600005b180000411a00004a290000283d00008e3e000046410000ae430000f16a0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 12, 'Cover Type: Hard Cover\r\nNo Of pages :192\r\nRuling : Ruled '),
(4051, 'Roller Ball Pen', 1565.00, 'Kaweco Ice Sport Orange Roller Ball Pen (Blue)', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa80300008705000009080000e40800009d090000610b0000420e0000d00e00009d0f00005610000024150000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 23, 'Pocket Friendly\r\nNo Dry Out\r\nSmooth Writing'),
(4052, 'Roller Ball Pen', 4799.00, 'Kaweco AL Sport Raw Roller Ball Pen (BLue) ', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa00300000605000032070000590700009b0700005f0900000d0c0000830c0000bb0c0000120d000071110000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 12, 'Pocket Friendly\r\nNo Dry Out\r\nSmooth Writing'),
(4061, 'Boy''s Shorts', 449.00, 'Puma Boy''s Shorts', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa8030000b5070000920a00004d0b0000600c0000180e0000dd11000060130000481400007b150000b71c0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 6, 'Occasion : Sports\r\nIdeal For : Boys'),
(4062, 'Dhoti And Kurta Set', 399.00, 'FTCBazar Baby Boy''s Dhoti And Kurta Set', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa6030000c90700008a0d0000b10e0000870f000018140000001c0000011d0000631e0000a01f0000a02c0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 3, 'Sleeve : Fulll Sleeve\r\nFabric : Silk\r\nPattern: Self Design'),
(4063, 'Boy''s Track Pants', 499.00, 'Maniac Printed Boy''s Track Pants', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aaa030000ed0b00007615000086180000281b00007c230000c631000087330000d5360000c7390000cf520000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 6, 'Pattern : Printed\r\nFabric : Cotton'),
(4064, 'Boy''s T-Shirt', 360.00, 'Harsha Striped Baby Boy''s Henley T-Shirt ', 'ba1.jpg', 4, 'Fit :Regular Fit\r\nSleeve : Half Sleeve\r\nFabric : Cotton'),
(4065, 'Baby Drawer', 356.00, 'Apt Padhus Baby Boy''s , Baby Girl''s Drawer', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aaa030000230a0000831100006a140000c41600002e1c0000b72700003d290000cb2b0000002e0000a1420000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 4, 'Fabric :Cotton'),
(5011, 'Novel', 175.00, 'I Too Had A Love Story(English)', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aaa0300003f0a0000ef120000011500004f1900005c2300006b310000dd32000090350000613900009c500000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 36, 'Author: Ravinder Singh'),
(5012, 'Novel', 158.00, 'Can Love Happen Twice(English)', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa6030000460a000017170000d81800005b1b0000572900000d3b00007e3c0000023f0000e04100009e5d0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 29, 'Author: Ravinder Singh'),
(5013, 'Novel', 175.00, 'She Broke Up I Didn''t... I Just Kissed Someone Else', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa703000063090000e00e000054110000211400000618000014200000902100005e2400003427000096340000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 15, 'Author: Durjoy Datta'),
(5014, 'Novel', 175.00, 'When Only Love Remains', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa8030000df080000b4100000e3120000e3140000521b000070250000e82600005f290000a92b0000583c0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 16, 'Author:Durjoy Datta'),
(5015, 'Novel', 135.00, 'Of Course I Love You....Till I Find Someone Better', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa8030000820a00006f150000f5170000c319000065260000bd34000035360000c8380000cd3a000094510000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 20, 'Author: Durjoy Datta'),
(5021, 'AutoBiography', 229.00, 'I Am Malala', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aaa030000e10a0000691400008f1700003a190000991f0000432c0000b92d0000b3300000eb32000051470000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 23, 'Author: Malala Yousafzai'),
(5022, 'Autobiography', 215.00, 'Wings Of Fire', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa6030000d2090000501400001e15000003160000751b00006b270000da280000832a00004e2c00000a3f0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 12, 'Author:APJ Abdul Kalam '),
(5023, 'Biography', 149.00, 'A Brief History Of Time: Stephen Hawking', 'ÿØÿà\0JFIF\0\0\0\0\0\0ÿí\0„Photoshop 3.0\08BIM\0\0\0\0\0g(\0bFBMD01000aa80300000d0a000072170000d2180000a01900006d2700005b390000d23a0000623c0000673d0000b75a0000\0ÿâICC_PROFILE\0\0\0lcms\0\0mntrRGB XYZ Ü\0\0\0\0)\09acspAPPL\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0öÖ\0\0\0\0\0Ó-lcms\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\ndesc\0\0\0ü\0\0\0^cprt\0\0\\\0\0\0wtpt\0\0h\0\0\0bkpt\0\0|\0\0\0rXYZ\0\0\0\0\0gXYZ\0\0¤\0\0\0bXYZ\0\0¸\0\0\0rTRC\0\0Ì\0\0\0@gTRC\0\0Ì\0\0\0@bTRC\0\0Ì\0\0\0@desc\0\0\0\0\0\0\0c2\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', 18, 'Author: Carl Sagan'),
(7011, 'ACX-312', 70000.00, 'Apple Laptop', '12957321_1677653979154455_672228867_n.jpg', 6, 'LIGHT WEIGHT');

-- --------------------------------------------------------

--
-- Table structure for table `segment`
--

CREATE TABLE IF NOT EXISTS `segment` (
  `SEGMENT_ID` varchar(3) NOT NULL,
  `SEGMENT_NAME` varchar(20) NOT NULL,
  PRIMARY KEY (`SEGMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `segment`
--

INSERT INTO `segment` (`SEGMENT_ID`, `SEGMENT_NAME`) VALUES
('1', 'WOMEN'),
('2', 'MEN'),
('3', 'ELECTRONICS'),
('4', 'KIDS'),
('5', 'BOOKS');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE IF NOT EXISTS `seller` (
  `SELLER_ID` int(6) NOT NULL,
  `FIRM_NAME` varchar(20) NOT NULL,
  `PHONE_NO` varchar(12) NOT NULL,
  `EMAIL_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  PRIMARY KEY (`SELLER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`SELLER_ID`, `FIRM_NAME`, `PHONE_NO`, `EMAIL_ID`, `PASSWORD`) VALUES
(1, 'Higoshaki', '4297989845', 'higo@iiitdmj.ac.in', 'higo');

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE IF NOT EXISTS `sells` (
  `SELLER_ID` int(6) NOT NULL DEFAULT '0',
  `PRODUCT_ID` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SELLER_ID`,`PRODUCT_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `added_to`
--
ALTER TABLE `added_to`
  ADD CONSTRAINT `added_to_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  ADD CONSTRAINT `added_to_ibfk_2` FOREIGN KEY (`CART_ITEM_ID`) REFERENCES `cart_item` (`CART_ITEM_ID`);

--
-- Constraints for table `buys`
--
ALTER TABLE `buys`
  ADD CONSTRAINT `buys_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`),
  ADD CONSTRAINT `buys_ibfk_2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`);

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`CART_ID`) REFERENCES `cart` (`CART_ID`),
  ADD CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`);

--
-- Constraints for table `does`
--
ALTER TABLE `does`
  ADD CONSTRAINT `does_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`),
  ADD CONSTRAINT `does_ibfk_2` FOREIGN KEY (`PAYMENT_ID`) REFERENCES `payment` (`PAYMENT_ID`);

--
-- Constraints for table `done_for`
--
ALTER TABLE `done_for`
  ADD CONSTRAINT `done_for_ibfk_1` FOREIGN KEY (`PAYMENT_ID`) REFERENCES `payment` (`PAYMENT_ID`),
  ADD CONSTRAINT `done_for_ibfk_2` FOREIGN KEY (`CART_ID`) REFERENCES `cart` (`CART_ID`);

--
-- Constraints for table `has1`
--
ALTER TABLE `has1`
  ADD CONSTRAINT `has1_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `has1_ibfk_2` FOREIGN KEY (`BRAND_ID`) REFERENCES `brands` (`BRAND_ID`);

--
-- Constraints for table `has2`
--
ALTER TABLE `has2`
  ADD CONSTRAINT `has2_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  ADD CONSTRAINT `has2_ibfk_2` FOREIGN KEY (`BRAND_ID`) REFERENCES `brands` (`BRAND_ID`);

--
-- Constraints for table `has3`
--
ALTER TABLE `has3`
  ADD CONSTRAINT `has3_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`),
  ADD CONSTRAINT `has3_ibfk_2` FOREIGN KEY (`SEGMENT_ID`) REFERENCES `segment` (`SEGMENT_ID`);

--
-- Constraints for table `has4`
--
ALTER TABLE `has4`
  ADD CONSTRAINT `has4_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  ADD CONSTRAINT `has4_ibfk_2` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `category` (`CATEGORY_ID`);

--
-- Constraints for table `has5`
--
ALTER TABLE `has5`
  ADD CONSTRAINT `has5_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`),
  ADD CONSTRAINT `has5_ibfk_2` FOREIGN KEY (`SEGMENT_ID`) REFERENCES `segment` (`SEGMENT_ID`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`EMAIL_ID`) REFERENCES `customer` (`EMAIL_ID`),
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`);

--
-- Constraints for table `madeof`
--
ALTER TABLE `madeof`
  ADD CONSTRAINT `madeof_ibfk_1` FOREIGN KEY (`CART_ID`) REFERENCES `cart` (`CART_ID`),
  ADD CONSTRAINT `madeof_ibfk_2` FOREIGN KEY (`CART_ITEM_ID`) REFERENCES `cart_item` (`CART_ITEM_ID`);

--
-- Constraints for table `sells`
--
ALTER TABLE `sells`
  ADD CONSTRAINT `sells_ibfk_1` FOREIGN KEY (`SELLER_ID`) REFERENCES `seller` (`SELLER_ID`),
  ADD CONSTRAINT `sells_ibfk_2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
