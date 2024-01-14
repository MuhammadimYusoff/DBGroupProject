-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 10:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ADMIN_ID` varchar(255) NOT NULL,
  `ADMIN_PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ADMIN_ID`, `ADMIN_PASSWORD`) VALUES
('admin1', 'password1'),
('admin10', 'password10'),
('admin2', 'password2'),
('admin3', 'password3'),
('admin4', 'password4'),
('admin5', 'password5'),
('admin6', 'password6'),
('admin7', 'password7'),
('admin8', 'password8'),
('admin9', 'password9');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BOOK_ID` int(11) NOT NULL,
  `CAR_ID` int(11) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `BOOK_LOCATION` varchar(255) NOT NULL,
  `BOOK_DATE` date NOT NULL,
  `DURATION` int(11) NOT NULL,
  `PHONE_NO` int(11) NOT NULL,
  `DESTINATION` varchar(255) NOT NULL,
  `RETURN_DATE` date NOT NULL,
  `AMOUNT` double NOT NULL,
  `STATUS` varchar(255) NOT NULL DEFAULT 'UNDER PROCESSING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BOOK_ID`, `CAR_ID`, `EMAIL`, `BOOK_LOCATION`, `BOOK_DATE`, `DURATION`, `PHONE_NO`, `DESTINATION`, `RETURN_DATE`, `AMOUNT`, `STATUS`) VALUES
(201, 101, 'ahmad.rahman@gmail.com', 'Kuala Lumpur', '2024-01-14', 5, 1234567891, 'Penang', '2024-01-19', 250.5, 'CONFIRMED'),
(202, 102, 'siti.aminah@gmail.com', 'Penang', '2024-01-15', 3, 1234567892, 'Alor Setar', '2024-01-18', 150.25, 'PENDING'),
(203, 103, 'mohammad.hassan@gmail.com', 'Langkawi', '2024-01-16', 4, 1234567893, 'Langkawi', '2024-01-20', 200.75, 'CONFIRMED'),
(204, 104, 'nor.azizah@gmail.com', 'Cameron Highlands', '2024-01-17', 2, 1234567894, 'Gombak', '2024-01-19', 120, 'PENDING'),
(205, 105, 'ali.ismail@gmail.com', 'Gombak', '2024-01-18', 6, 1234567895, 'Batu Pahat', '2024-01-23', 300, 'CONFIRMED'),
(206, 106, 'fatimahlinda@gmail.com', 'Shah Alam', '2024-01-19', 3, 1234567896, 'Ipoh', '2024-01-22', 180.5, 'PENDING'),
(207, 107, 'zainuddin.zakaria@gmail.com', 'Ipoh', '2024-01-20', 5, 1234567897, 'Melaka', '2024-01-25', 250, 'CONFIRMED'),
(208, 108, 'salmah.hashim@gmail.com', 'Melaka', '2024-01-21', 2, 1234567898, 'Johor Bahru', '2024-01-24', 120.75, 'PENDING'),
(209, 109, 'razak.abdullah@gmail.com', 'Johor Bahru', '2024-01-22', 4, 1234567899, 'Kuala Terengganu', '2024-01-27', 200, 'CONFIRMED'),
(210, 110, 'nur.aisyah@gmail.com', 'Kuala Terengganu', '2024-01-23', 6, 1234567800, 'George Town', '2024-01-26', 300.25, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `CAR_ID` int(11) NOT NULL,
  `CAR_NAME` varchar(255) NOT NULL,
  `CAR_FUEL` varchar(255) NOT NULL,
  `CAPACITY` int(11) NOT NULL,
  `RATE_PER_DAY` double NOT NULL,
  `CAR_IMG` varchar(255) NOT NULL,
  `AVAILABILITY` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`CAR_ID`, `CAR_NAME`, `CAR_FUEL`, `CAPACITY`, `RATE_PER_DAY`, `CAR_IMG`, `AVAILABILITY`) VALUES
(1, 'FERRAI', 'PETROL', 5, 5000, 'ferrari.jpg', 'Y'),
(2, 'LAMBORGINI', 'DEISEL', 6, 7000, 'lamborghini.webp', 'Y'),
(3, 'PORSCHE', 'GAS', 4, 3000, 'porsche.jpg', 'Y'),
(20, 'SWIFT', 'DEISEL', 22, 1000, 'IMG-6239c94ea8a4a0.51789849.jpg', 'Y'),
(101, 'Perodua Myvi', 'Petrol', 5, 50, 'myvi.jpg', 'AVAILABLE'),
(102, 'Hilux', 'Diesel', 4, 45, 'hilux.jpg', 'AVAILABLE'),
(103, 'Toyota Vios', 'Petrol', 7, 60, 'vios.jpg', 'AVAILABLE'),
(104, 'Honda Jazz Hybrid', 'Hybrid', 5, 55, 'jazz.jpg', 'AVAILABLE'),
(105, 'Nissan Almera', 'Petrol', 6, 65, 'almera.jpg', 'AVAILABLE'),
(106, 'Perodua Axia', 'Petrol', 4, 40, 'axia.jpg', 'AVAILABLE'),
(107, 'Toyota Camry Hybrid', 'Hybrid', 6, 55, 'camry.jpg', 'AVAILABLE'),
(108, 'Proton X70', 'Diesel', 5, 50, 'x70.jpg', 'AVAILABLE'),
(109, 'Honda City', 'Petrol', 4, 45, 'city.jpg', 'AVAILABLE'),
(110, 'Lexus RX Hybrid', 'Hybrid', 5, 60, 'lexus.jpg', 'AVAILABLE');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `FNAME` varchar(255) NOT NULL,
  `LNAME` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `LICENSE_NO` varchar(100) NOT NULL,
  `PHONE_NO` int(11) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `GENDER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`FNAME`, `LNAME`, `EMAIL`, `LICENSE_NO`, `PHONE_NO`, `PASSWORD`, `GENDER`) VALUES
('Ahmad', 'Rahman', 'ahmad.rahman@gmail.com', 'AB123456', 113674891, 'password1', 'Male'),
('Ali', 'Ismail', 'ali.ismail@gmail.com', 'IJ123456', 195878756, 'password5', 'Male'),
('Fatimah', 'Linda', 'fatimahlinda@gmail.com', 'KL345678', 115874456, 'password6', 'Female'),
('Mohammad', 'Hassan', 'mohammad.hassan@gmail.com', 'EF345678', 145873625, 'password3', 'Male'),
('Nor', 'Azizah', 'nor.azizah@gmail.com', 'GH567890', 175878725, 'password4', 'Female'),
('Nur', 'Aisyah', 'nur.aisyah@gmail.com', 'ST567890', 102659828, 'password10', 'Female'),
('Razak', 'Abdullah', 'razak.abdullah@gmail.com', 'QR345678', 112265628, 'password9', 'Male'),
('Salmah', 'Hashim', 'salmah.hashim@gmail.com', 'OP123456', 198267351, 'password8', 'Female'),
('Siti', 'Aminah', 'siti.aminah@gmail.com', 'CD789012', 138746298, 'password2', 'Female'),
('Zainuddin', 'Zakaria', 'zainuddin.zakaria@gmail.com', 'MN567890', 115876767, 'password7', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PAY_ID` int(11) NOT NULL,
  `BOOK_ID` int(11) NOT NULL,
  `CARD_NO` varchar(100) NOT NULL,
  `EXP_DATE` varchar(10) NOT NULL,
  `CVV` int(11) NOT NULL,
  `AMOUNT` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PAY_ID`, `BOOK_ID`, `CARD_NO`, `EXP_DATE`, `CVV`, `AMOUNT`) VALUES
(301, 201, '1111111111', '12/25', 123, 250.5),
(302, 202, '2222222222', '01/26', 456, 150.25),
(303, 203, '3333333333', '02/27', 789, 200.75),
(304, 204, '4444444444', '03/28', 12, 120),
(305, 205, '5555555555', '04/29', 345, 300),
(306, 206, '6666666666', '05/30', 678, 180.5),
(307, 207, '7777777777', '06/31', 901, 250),
(308, 208, '8888888888', '07/32', 234, 120.75),
(309, 209, '9999999999', '08/33', 567, 200),
(310, 210, '1211212121', '09/34', 890, 300.25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BOOK_ID`),
  ADD KEY `CAR_ID` (`CAR_ID`),
  ADD KEY `EMAIL` (`EMAIL`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`CAR_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`EMAIL`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PAY_ID`),
  ADD UNIQUE KEY `BOOK_ID` (`BOOK_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BOOK_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `CAR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PAY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`CAR_ID`) REFERENCES `cars` (`CAR_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`EMAIL`) REFERENCES `customer` (`EMAIL`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `booking` (`BOOK_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
