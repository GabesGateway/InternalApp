-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Feb 24, 2023 at 02:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gabesgateway_internal_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpID` int(11) NOT NULL,
  `Fname` varchar(30) NOT NULL,
  `Lname` varchar(30) NOT NULL,
  `Start_date` date NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `TimesheetID` int(11) NOT NULL,
  `WarehouseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `Fname`, `Lname`, `Start_date`, `Email`, `Address`, `Phone`, `TimesheetID`, `WarehouseID`) VALUES
(1, 'Brendan', 'Chausse', '2023-01-15', 'Bchausse@gmail.com', '124 Flinderation Road', '773-876-8742', 1, 1),
(2, 'Miguel', 'Martinez', '2023-01-15', 'Mmartinez@gmail.com', '4559 Vesta Drive', '773-554-7755', 2, 1),
(3, 'Anthony', 'McFee', '2023-01-15', 'Amcfee@gmail.com', '2652 Virginia Street', '773-201-0450', 3, 1),
(4, 'Steve', 'Thomas', '2023-01-15', 'Sthomas@gmail.com', '5643 MAPLEWOOD AVE', '773-650-9635', 4, 1),
(5, 'Marcos', 'Cortes', '2023-01-15', 'Mcortes@gmail.com', '5558 SPAULDING AVE', '773-424-3745', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `EmpID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `password`, `EmpID`) VALUES
('Amcfee', 'O#!9HcN8K78l', 3),
('Bchausse', '7U#64U5%3z*I', 1),
('Mcortes', '82au5E@1VsmN', 5),
('Mmartinez', 'JeZ2$u663SST', 2),
('Sthomas', 'd$x6P2enoZ0d', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `Product_name` varchar(50) NOT NULL,
  `Description` varchar(750) NOT NULL,
  `Price` double NOT NULL,
  `Brand` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `Product_name`, `Description`, `Price`, `Brand`) VALUES
(1, 'iPhone 14 Pro Max', 'iPhone 14 Pro Max. Capture incredible detail with a 48MP Main camera. Experience iPhone in a whole new way with Dynamic Island and Always-On display. And get peace of mind with groundbreaking safety features.', 1099.99, 'Apple'),
(2, 'Galaxy S23', 'Meet Galaxy S23, the phone takes you out of the everyday and into the epic. Life doesn’t wait for the perfect lighting, but with Nightography, you are always ready to seize the moment and snap memories like a pro. See your content no matter the time of day on a display with a refresh rate up to 120Hz and Adaptive Vision Booster. Capture and create in rich detail, and then use Quick Share to share across devices without losing quality. Move past the mundane and embrace epic power with Galaxy S23.', 799.99, 'Samsung'),
(3, 'X75K 4K HDR LED Google TV', 'Step into the 4K HDR TV experience with a TV that has four times the resolution of Full HD. Sony’s 4K Processor X1 works behind the scenes to enhance color, contrast, and details in everything you watch. Google TV with Google Assistant makes it easy to browse content from your favorite streaming apps and control your smart home.', 579.99, 'Sony'),
(4, 'Q60B QLED 4K Smart Tizen TV', 'Leap into the world of bold contrast and vivid color with QLED 4K. Together, cool and warm Dual LEDs shine a billion shades of Quantum Dot color for a natural looking picture. Enjoy it all upscaled to glorious 4K, in details and colors that stay true even in bright scenes, thanks to 100% Color Volume. QLED televisions can produce 100% Color Volume in the DCI P3 color space, the format for most cinema screens and HDR movies for television.', 799.99, 'Samsung'),
(5, 'EOS Rebel T7', 'Take stunning pictures with vibrant colors using this EOS Rebel T7 camera. The built-in Wi-Fi makes printing and sharing pictures quick and easy, and the auto-focus system creates crisp images at a moment\'s notice. This EOS Rebel T7 camera takes Full HD video, allowing experiences to be captured with quality.', 549.99, 'Canon'),
(6, 'Z 5', 'Your full frame journey begins with the Z 5. Simple yet sophisticated, compact yet powerful, the Z 5 is built to grow with you. It’s everything you’d expect from a full frame mirrorless camera —intense detail, expansive views, brilliant low light capabilities, 4K video and more—plus all the innovative tools you need to push the limits of your creativity.', 1299.99, 'Nikon'),
(7, 'IdeaPad 3', 'Engineered for long-lasting performance, the Lenovo™ IdeaPad™ 3 is the perfect laptop for your everyday tasks with features that you can depend on.', 299.99, 'Lenovo'),
(8, 'Swift 3', 'The Acer Swift 3 is the ideal laptop for all tasks. This desktop delivers powerful performance with it\'s Intel Core i7-1165G7 2.80GHz processor so you can get any task done. Also, it\'s 512 GB of storage allows you to save plenty of important documents and entertainment. It\'s Intel Iris Xe Graphics gives you a high quality performance, featuring an outstanding entertainment video card for you.', 809.99, 'Acer'),
(9, 'Apple Watch Series 8', 'Apple Watch Series 8 features advanced health sensors and apps, so you can take an ECG, measure heart rate and blood oxygen, and track temperature changes for advanced insights into your menstrual cycle. And with Crash Detection, sleep stages tracking, and advanced workout metrics, it helps you stay active, healthy, safe, and connected. See Dimension section below for band sizing information.', 359, 'Apple'),
(10, 'Sense 2', 'Meet Sense 2—the smartwatch designed to help you stress less, sleep better & live healthier. Get help identifying stress and get the tools to better manage it. Learn more about your sleep and how to improve your rest with detailed nighttime tracking and a unique Sleep Profile. Track key heart-health indicators so you can make more informed wellness decisions. Plus Sense 2 is packed with advanced activity tracking and smartwatch features and includes 6 months of Fitbit Premium Membership1. Fitbit is part of the Google family.', 249.99, 'Fitbit');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `WarehouseID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`WarehouseID`, `ProductID`, `Stock`) VALUES
(1, 1, 5),
(1, 2, 5),
(1, 3, 5),
(1, 4, 5),
(1, 5, 5),
(1, 6, 5),
(1, 7, 5),
(1, 8, 5),
(1, 9, 5),
(1, 10, 5),
(2, 1, 3),
(2, 2, 3),
(2, 3, 3),
(2, 4, 3),
(2, 5, 3),
(2, 6, 3),
(2, 7, 3),
(2, 8, 3),
(2, 9, 3),
(2, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE `timesheet` (
  `TimesheetID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time_In` time NOT NULL,
  `Time_Out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timesheet`
--

INSERT INTO `timesheet` (`TimesheetID`, `Date`, `Time_In`, `Time_Out`) VALUES
(1, '2023-01-15', '07:00:00', '15:00:00'),
(2, '2023-01-15', '07:00:00', '15:00:00'),
(3, '2023-01-15', '07:00:00', '15:00:00'),
(4, '2023-01-15', '14:00:00', '22:00:00'),
(5, '2023-01-15', '14:00:00', '22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `WarehouseID` int(11) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`WarehouseID`, `Address`) VALUES
(1, '1370 Piccard Drive'),
(2, '1500 N Greenville Ave Ste 700');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpID`),
  ADD KEY `TimesheetID` (`TimesheetID`),
  ADD KEY `WarehouseID` (`WarehouseID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`),
  ADD KEY `EmpID` (`EmpID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`WarehouseID`,`ProductID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD PRIMARY KEY (`TimesheetID`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`WarehouseID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`TimesheetID`) REFERENCES `timesheet` (`TimesheetID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`WarehouseID`) REFERENCES `warehouse` (`WarehouseID`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `employee` (`EmpID`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_ibfk_1` FOREIGN KEY (`WarehouseID`) REFERENCES `warehouse` (`WarehouseID`),
  ADD CONSTRAINT `stores_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
