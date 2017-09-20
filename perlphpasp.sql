-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2017 at 09:03 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perlphpasp`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(4) NOT NULL,
  `CategoryName` varchar(40) DEFAULT NULL,
  `Description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
(4031, 'BKKRUN', ' small'),
(4032, 'Nation', ' bigest'),
(4033, 'JANARUTO', ' small'),
(4034, 'NINJA', ' small');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(4) NOT NULL,
  `companyname` varchar(40) DEFAULT NULL,
  `contactname` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `companyname`, `contactname`) VALUES
(1030, 'bURIN', 'NationUniversity'),
(1031, 'pit', 'lampang CPN'),
(1032, 'jaa', 'chaingmai CPN'),
(1033, 'Worawat', ' nan CPN'),
(1034, 'pittaya', ' lampang CPN'),
(1035, 'natchanon', ' chaingmai CPN');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeID` int(4) NOT NULL,
  `LastName` varchar(40) DEFAULT NULL,
  `FirstName` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeID`, `LastName`, `FirstName`) VALUES
(21, 'kolokoso', ' tax'),
(22, 'jubniddee', ' ball'),
(23, 'oppafage', ' joy'),
(24, 'thiwanon', 'Taae');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderid` int(4) NOT NULL,
  `productid` int(4) NOT NULL,
  `unitprice` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderid`, `productid`, `unitprice`) VALUES
(6001, 6011, 10),
(6002, 6012, 20),
(6003, 6013, 30);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(4) NOT NULL,
  `customerid` int(4) DEFAULT NULL,
  `employeeid` int(4) DEFAULT NULL,
  `orderdate` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `employeeid`, `orderdate`) VALUES
(6001, 6011, 10, '2017-09-20'),
(6002, 6012, 20, '2017-09-20'),
(6003, 6013, 30, '2017-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(4) NOT NULL,
  `productname` varchar(40) DEFAULT NULL,
  `supplierid` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `productname`, `supplierid`) VALUES
(2001, 'KingKong', 1001),
(2002, 'PePojupjup', 1002),
(2003, 'coco', 1003);

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `ShipperID` int(4) NOT NULL,
  `CompanyName` varchar(40) DEFAULT NULL,
  `Phone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`ShipperID`, `CompanyName`, `Phone`) VALUES
(3031, 'BKKRUN', 658899854),
(3032, 'Nation', 899658745),
(3033, 'NINJANARUTO', 636698874);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierID` int(4) NOT NULL,
  `CompanyName` varchar(40) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplierID`, `CompanyName`, `city`) VALUES
(5031, 'KKOLO', ' BKK'),
(5032, 'YAMATO', ' LAMPANG'),
(5033, 'pototacal', ' NAN'),
(5034, 'popcronm', ' CHAINGMAI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
