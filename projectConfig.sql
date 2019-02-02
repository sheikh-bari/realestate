use fa17g19; 

-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2017 at 07:26 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realstate_testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `AdMedia`
--

CREATE TABLE `AdMedia` (
  `Id` int(11) NOT NULL,
  `ImagePath` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `RealEstateAdID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AdMedia`
--

INSERT INTO `AdMedia` (`Id`, `ImagePath`, `createdAt`, `updatedAt`, `RealEstateAdID`) VALUES
(1, 'images/de1.jpg', '2017-11-01 00:00:00', '2017-11-02 00:00:00', 1),
(2, 'images/de2.jpg', '2017-11-21 00:00:00', '2017-11-21 00:00:00', 1),
(3, 'images/de3.jpg', '2017-11-21 00:00:00', '2017-11-21 00:00:00', 2),
(4, 'images/de4.jpg', '2017-11-21 00:00:00', '2017-11-21 00:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `AdStatuses`
--

CREATE TABLE `AdStatuses` (
  `Id` int(11) NOT NULL,
  `AdStatusName` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AdStatuses`
--

INSERT INTO `AdStatuses` (`Id`, `AdStatusName`, `createdAt`, `updatedAt`) VALUES
(1, 'Available', '2017-11-21 22:28:10', '2017-11-21 22:28:10'),
(2, 'Sold Out', '2017-11-21 22:28:10', '2017-11-21 22:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `AdTypes`
--

CREATE TABLE `AdTypes` (
  `Id` int(11) NOT NULL,
  `AdTypeName` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AdTypes`
--

INSERT INTO `AdTypes` (`Id`, `AdTypeName`, `createdAt`, `updatedAt`) VALUES
(1, 'Rental', '2017-11-21 22:28:11', '2017-11-21 22:28:11'),
(2, 'Buy', '2017-11-21 22:28:11', '2017-11-21 22:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `FavouriteAds`
--

CREATE TABLE `FavouriteAds` (
  `Id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `RealEstateAdID` int(11) DEFAULT NULL,
  `UserUserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `FavouriteAds`
--

INSERT INTO `FavouriteAds` (`Id`, `createdAt`, `updatedAt`, `RealEstateAdID`, `UserUserId`) VALUES
(1, '2017-11-29 00:00:00', '2017-11-29 00:00:00', 1, 8),
(2, '2017-11-29 00:00:00', '2017-11-29 00:00:00', 3, 8),
(3, '2017-11-03 00:00:00', '2017-11-02 00:00:00', 1, 1),
(4, '2017-11-29 00:00:00', '2017-11-29 00:00:00', 3, 1),
(5, '2017-11-03 00:00:00', '2017-11-11 00:00:00', 3, 6),
(6, '2017-11-03 00:00:00', '2017-11-11 00:00:00', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `realestateads`
--

CREATE TABLE `RealEstateAds` (
  `ID` int(11) NOT NULL,
  `AgentId` int(11) DEFAULT NULL,
  `BedRooms` int(11) DEFAULT NULL,
  `BathRooms` int(11) DEFAULT NULL,
  `Kitchen` int(11) DEFAULT NULL,
  `LivingRooms` int(11) DEFAULT NULL,
  `SquareFeet` int(11) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Address` text,
  `Zip` int(11) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `AdDescription` text,
  `Parking` int(11) DEFAULT NULL,
  `NumOfFloors` int(11) DEFAULT NULL,
  `LotArea` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `AdStatusId` int(11) DEFAULT NULL,
  `AdTypeId` int(11) DEFAULT NULL,
  `RealEstateCategoryId` int(11) DEFAULT NULL,
  `Title` varchar(255) NOT NULL,
  `Latitude` decimal(10,0) NOT NULL,
  `Longitude` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `realestateads`
--

INSERT INTO `RealEstateAds` (`ID`, `AgentId`, `BedRooms`, `BathRooms`, `Kitchen`, `LivingRooms`, `SquareFeet`, `Price`, `Address`, `Zip`, `State`, `City`, `AdDescription`, `Parking`, `NumOfFloors`, `LotArea`, `createdAt`, `updatedAt`, `AdStatusId`, `AdTypeId`, `RealEstateCategoryId`, `Title`, `Latitude`, `Longitude`) VALUES
(1, 1, 3, 3, 1, 1, 1200, 35000, 'Liobastrasse', 36037, 'baden`', 'fulda', 'Urgent Selling', 1, 1, 1200, '2017-11-21 22:28:11', '2017-11-21 22:28:11', 1, 1, 1, 'Title 1', '0', '0'),
(2, 6, 2, 2, 1, 1, 120, 1000, 'liabo str 2', 36037, 'hessen', 'fulda', 'house for rent', 0, 1, 20, '2017-11-21 22:44:59', '2017-11-21 22:44:59', NULL, 2, 2, 'Title 2', '0', '0'),
(3, 1, 3, 2, 1, 1, 120, 1000, 'lioba str 2', 36037, 'hessen', 'fulda', 'house for rent', 0, 1, 20, '2017-11-22 18:59:03', '2017-11-22 18:59:03', 1, 2, 1, 'Title 3', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `RealEstateCategories`
--

CREATE TABLE `RealEstateCategories` (
  `Id` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RealEstateCategories`
--

INSERT INTO `RealEstateCategories` (`Id`, `CategoryName`, `createdAt`, `updatedAt`) VALUES
(1, 'house', '2017-11-03 00:00:00', '2017-11-03 00:00:00'),
(2, 'Flat', '2017-11-15 00:00:00', '2017-11-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `RealEstateCompanies`
--

CREATE TABLE `RealEstateCompanies` (
  `Id` int(11) NOT NULL,
  `CompanyName` varchar(255) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RealEstateCompanies`
--

INSERT INTO `RealEstateCompanies` (`Id`, `CompanyName`, `createdAt`, `updatedAt`) VALUES
(1, 'comp1', '2017-11-21 00:00:00', '2017-11-21 00:00:00'),
(2, 'comp2', '2017-11-21 00:00:00', '2017-11-21 00:00:00'),
(3, 'comp3', '2017-11-16 00:00:00', '2017-11-21 00:00:00'),
(4, 'user comp', '2017-11-21 00:00:00', '2017-11-21 00:00:00'),
(5, 'SFStateHomes', '2017-11-21 22:27:01', '2017-11-21 22:27:01'),
(6, 'SJStateRealtors', '2017-11-21 22:27:02', '2017-11-21 22:27:02'),
(7, 'CSURealState', '2017-11-21 22:27:02', '2017-11-21 22:27:02'),
(8, 'Default', '2017-11-21 22:27:02', '2017-11-21 22:27:02'),
(9, 'SFStateHomes', '2017-11-21 22:28:09', '2017-11-21 22:28:09'),
(10, 'SJStateRealtors', '2017-11-21 22:28:10', '2017-11-21 22:28:10'),
(11, 'CSURealState', '2017-11-21 22:28:10', '2017-11-21 22:28:10'),
(12, 'Default', '2017-11-21 22:28:10', '2017-11-21 22:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `UserMessages`
--

CREATE TABLE `UserMessages` (
  `Id` int(11) NOT NULL,
  `MessageText` text NOT NULL,
  `MsgStatus` int(11) DEFAULT NULL,
  `ConversationID` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserUserId` int(11) DEFAULT NULL,
  `SenderID` int(11) DEFAULT NULL,
  `ReceiverID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserMessages`
--

INSERT INTO `UserMessages` (`Id`, `MessageText`, `MsgStatus`, `ConversationID`, `createdAt`, `updatedAt`, `UserUserId`, `SenderID`, `ReceiverID`) VALUES
(1, 'Hi I want to sell my property', 0, 1, '2017-11-28 21:46:28', '2017-11-28 21:46:28', NULL, 1, 6),
(2, 'Ok tell me the details', 0, 1, '2017-11-28 21:47:45', '2017-11-28 21:47:45', NULL, 6, 1),
(3, 'I will send you an email kindly check', 0, 1, '2017-11-28 21:48:18', '2017-11-28 21:48:18', NULL, 1, 6),
(4, 'Hello are you omer from Real estate ?', 0, 2, '2017-11-28 21:49:07', '2017-11-28 21:49:07', NULL, 7, 6),
(5, 'Yes I am, what can i do for you ?', 0, 2, '2017-11-28 21:49:40', '2017-11-28 21:49:40', NULL, 7, 6),
(6, 'I am looking for a house in Fulda', 0, 2, '2017-11-28 21:50:00', '2017-11-28 21:50:00', NULL, 6, 7),
(7, 'Ok tell me', 0, 2, '2017-11-29 01:27:25', '2017-11-29 01:27:25', NULL, 6, 7),
(8, 'ok', 0, 2, '2017-11-29 01:29:23', '2017-11-29 01:29:23', NULL, 6, 7),
(9, 'are you there', 0, 2, '2017-11-29 01:30:30', '2017-11-29 01:30:30', NULL, 7, 6),
(10, 'yes i am', 0, 2, '2017-11-29 01:30:42', '2017-11-29 01:30:42', NULL, 6, 7),
(11, 'hello there ?', 0, 2, '2017-11-29 01:40:32', '2017-11-29 01:40:32', NULL, 6, 7),
(12, 'yes i am', 0, 2, '2017-11-29 01:40:44', '2017-11-29 01:40:44', NULL, 7, 6),
(13, 'I want to buy this.', 0, 3, '2017-11-30 03:09:45', '2017-11-30 03:09:45', NULL, 7, 1),
(14, 'hi there ?', 0, 2, '2017-12-01 18:00:57', '2017-12-01 18:00:57', NULL, 6, 7),
(16, 'again there hello ?', 0, 2, '2017-12-01 18:12:22', '2017-12-01 18:12:22', NULL, 6, 7),
(17, 'there ?', 0, 3, '2017-12-01 18:13:59', '2017-12-01 18:13:59', NULL, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` text,
  `MobileNumber` varchar(255) DEFAULT NULL,
  `UserImagePath` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `RealEstateCompanyId` int(11) DEFAULT NULL,
  `UserstatusId` int(11) DEFAULT NULL,
  `UserTypeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`UserId`, `UserName`, `Password`, `FirstName`, `LastName`, `Email`, `Address`, `MobileNumber`, `UserImagePath`, `createdAt`, `updatedAt`, `RealEstateCompanyId`, `UserstatusId`, `UserTypeId`) VALUES
(1, 'abdulbari', '$2a$10$eo3A9h9.DjwHciEyYHgLU.8dKga3YUXpi2.FPPKQWzr8R.ZgRhBfO', 'abdul', 'barii', 'abc.abc@gmail.com', NULL, '123654', '/images/te1.jpg', '2017-11-21 21:20:37', '2017-11-29 14:38:06', 4, 1, 1),
(6, 'omer', '$2a$10$yPAkqYHXq4oi3i1AkcBf8OecrO8LRrP.tQzQH3uyIsCEwTMY7SDVu', 'Muhammad Omer', 'Aslam', 'md.omeraslam@gmail.com', NULL, '123123123', '/images/te2.jpg', '2017-11-28 21:25:46', '2017-11-28 21:25:46', 4, 1, 2),
(7, 'saud', '$2a$10$vqXjwlAI7hlBiigQUBEc7eLT6Db6p1XZHCmfFJTVSRPfno0Y8Cwgq', 'Saud', 'Bhandari', 'saud.bhandmaster@gmail.com', NULL, '12312312', '/images/te.jpg', '2017-11-28 21:37:52', '2017-11-28 21:37:52', 4, 1, 1),
(8, 'abcdefgh', '$2a$10$7q04EOE2mJhmnlbyJ3yBrOC6nBoWry9mjtRbpDEpZpDwmFqS1RhLO', 'abcd', 'efgh', 'abc@efgh.com', NULL, '123456', NULL, '2017-11-29 18:40:16', '2017-11-29 19:07:57', 4, 1, 1),
(9, 'abc', '$2a$10$6sJDMBOXVmjdF08ractUvuoHD8Sw2n2InozAZE178dVz2JMS5p8L6', 'abc', 'abc', 'abc@gmail.com', NULL, '123654', '/images/default.jpg', '2017-11-29 20:00:58', '2017-11-29 20:00:58', 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `UserStatuses`
--

CREATE TABLE `UserStatuses` (
  `Id` int(11) NOT NULL,
  `statusName` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserStatuses`
--

INSERT INTO `UserStatuses` (`Id`, `statusName`, `createdAt`, `updatedAt`) VALUES
(1, 'Active', '2017-11-21 00:00:00', '2017-11-21 00:00:00'),
(2, 'Deleted', '2017-11-21 22:27:01', '2017-11-21 22:27:01'),
(3, 'Disabled', '2017-11-21 22:27:01', '2017-11-21 22:27:01'),
(4, 'Active', '2017-11-21 22:27:01', '2017-11-21 22:27:01'),
(5, 'Deleted', '2017-11-21 22:28:09', '2017-11-21 22:28:09'),
(6, 'Disabled', '2017-11-21 22:28:09', '2017-11-21 22:28:09'),
(7, 'Active', '2017-11-21 22:28:09', '2017-11-21 22:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `UserTypes`
--

CREATE TABLE `UserTypes` (
  `Id` int(11) NOT NULL,
  `UserTypeName` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserTypes`
--

INSERT INTO `UserTypes` (`Id`, `UserTypeName`, `createdAt`, `updatedAt`) VALUES
(1, 'Customer', '2017-11-21 00:00:00', '2017-11-21 00:00:00'),
(2, 'Customer', '2017-11-21 22:27:01', '2017-11-21 22:27:01'),
(3, 'Agent', '2017-11-21 22:27:01', '2017-11-21 22:27:01'),
(4, 'Customer', '2017-11-21 22:28:09', '2017-11-21 22:28:09'),
(5, 'Agent', '2017-11-21 22:28:09', '2017-11-21 22:28:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdMedia`
--
ALTER TABLE `AdMedia`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RealEstateAdID` (`RealEstateAdID`);

--
-- Indexes for table `AdStatuses`
--
ALTER TABLE `AdStatuses`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `AdTypes`
--
ALTER TABLE `AdTypes`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `FavouriteAds`
--
ALTER TABLE `FavouriteAds`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RealEstateAdID` (`RealEstateAdID`),
  ADD KEY `UserUserId` (`UserUserId`);

--
-- Indexes for table `realestateads`
--
ALTER TABLE `RealEstateAds`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdStatusId` (`AdStatusId`),
  ADD KEY `AdTypeId` (`AdTypeId`),
  ADD KEY `RealEstateCategoryId` (`RealEstateCategoryId`);

--
-- Indexes for table `RealEstateCategories`
--
ALTER TABLE `RealEstateCategories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `RealEstateCompanies`
--
ALTER TABLE `RealEstateCompanies`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `UserMessages`
--
ALTER TABLE `UserMessages`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserUserId` (`UserUserId`),
  ADD KEY `SenderID` (`SenderID`),
  ADD KEY `ReceiverID` (`ReceiverID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`UserId`),
  ADD KEY `RealEstateCompanyId` (`RealEstateCompanyId`),
  ADD KEY `UserstatusId` (`UserstatusId`),
  ADD KEY `UserTypeId` (`UserTypeId`);

--
-- Indexes for table `UserStatuses`
--
ALTER TABLE `UserStatuses`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `UserTypes`
--
ALTER TABLE `UserTypes`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AdMedia`
--
ALTER TABLE `AdMedia`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `AdStatuses`
--
ALTER TABLE `AdStatuses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `AdTypes`
--
ALTER TABLE `AdTypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `FavouriteAds`
--
ALTER TABLE `FavouriteAds`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `realestateads`
--
ALTER TABLE `RealEstateAds`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `RealEstateCategories`
--
ALTER TABLE `RealEstateCategories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `RealEstateCompanies`
--
ALTER TABLE `RealEstateCompanies`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `UserMessages`
--
ALTER TABLE `UserMessages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `UserStatuses`
--
ALTER TABLE `UserStatuses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `UserTypes`
--
ALTER TABLE `UserTypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AdMedia`
--
ALTER TABLE `AdMedia`
  ADD CONSTRAINT `AdMedia_ibfk_1` FOREIGN KEY (`RealEstateAdID`) REFERENCES `RealEstateAds` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `FavouriteAds`
--
ALTER TABLE `FavouriteAds`
  ADD CONSTRAINT `FavouriteAds_ibfk_1` FOREIGN KEY (`RealEstateAdID`) REFERENCES `RealEstateAds` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FavouriteAds_ibfk_2` FOREIGN KEY (`UserUserId`) REFERENCES `Users` (`UserId`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `realestateads`
--
ALTER TABLE `RealEstateAds`
  ADD CONSTRAINT `RealEstateAds_ibfk_1` FOREIGN KEY (`AdStatusId`) REFERENCES `AdStatuses` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `RealEstateAds_ibfk_2` FOREIGN KEY (`AdTypeId`) REFERENCES `AdTypes` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `RealEstateAds_ibfk_3` FOREIGN KEY (`RealEstateCategoryId`) REFERENCES `RealEstateCategories` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `UserMessages`
--
ALTER TABLE `UserMessages`
  ADD CONSTRAINT `UserMessages_ibfk_1` FOREIGN KEY (`UserUserId`) REFERENCES `Users` (`UserId`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `UserMessages_ibfk_2` FOREIGN KEY (`SenderID`) REFERENCES `Users` (`UserId`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `UserMessages_ibfk_3` FOREIGN KEY (`ReceiverID`) REFERENCES `Users` (`UserId`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `Users_ibfk_1` FOREIGN KEY (`RealEstateCompanyId`) REFERENCES `RealEstateCompanies` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Users_ibfk_2` FOREIGN KEY (`UserstatusId`) REFERENCES `UserStatuses` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Users_ibfk_3` FOREIGN KEY (`UserTypeId`) REFERENCES `UserTypes` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;