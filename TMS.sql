-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2019 at 05:09 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '12345', '2019-01-07 11:34:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `FromDate` varchar(100) NOT NULL,
  `ToDate` varchar(100) NOT NULL,
  `Comment` mediumtext NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(11, 1, 'vibha@gmail.com', '2019-01-08', '2019-01-10', 'have so much fun with family.', '2019-01-07 16:41:17', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `EmailId` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(5, 'sanjay jadhav', 'jadhavsanjay@gmail.com', '8857055189', 'tour details', 'want to know deatails of manali package', '2019-01-07 16:39:42', NULL),
(6, 'vibha swapnil rupnavar', 'swibha@gmail.com', '8888773138', 'couple trip', 'want couple trip on beach', '2019-01-08 11:09:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Issue` varchar(100) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																																								\r\n										<div><br></div><div><span style=\"font-weight: bold; font-size: x-large;\">Dear guests,</span></div><div><span style=\"font-weight: bold; font-size: x-large;\"><br></span></div><div style=\"text-align: left;\"><span style=\"font-weight: bold; font-size: x-large;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-weight: bold; font-size: large;\">we make every effort to provide you with the best&nbsp;</span></div><div style=\"text-align: left;\"><span style=\"font-weight: bold; font-size: large;\">services in a pleasant,friendly,and homely atmosphere at all time.</span></div><div style=\"text-align: left;\"><span style=\"font-weight: bold; font-size: large;\">we strive for your complete satisfaction to provide a safe and secure journey to the best of our ability without any misunderstanding between your good-selves,TMS and the tour escorts.we belive in forgiveness,gratitude,positive attitude and innovation and at times even go beyond legal formats to ensure that all the issues if guests are resolved in&nbsp; timely and friendly manner.you are requested to read and understand and sign in acceptance to all terms and condition.</span></div><div style=\"text-align: left;\"><br></div><div><br></div><div><span style=\"font-size: x-large; font-weight: 700;\">&nbsp;Passport:</span></div><div><span style=\"font-size: x-large; font-weight: 700;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><span style=\"font-weight: 700; font-size: medium;\">passport is an official document required whenever guests intended to travel abroad and in addition the guests should have visa of that&nbsp; particular country.</span></div><div><span style=\"font-weight: 700; font-size: medium;\"><br></span></div><div><span style=\"font-weight: 700; font-size: medium;\"><br></span></div><div><span style=\"font-weight: 700; font-size: x-large;\">Guests responsibilty:</span></div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"font-weight: 700;\">It shall be sole responsibity of the guests to hold required valid travel documents and statuory clearnaces ,including passport,visaa,confirmed travel ticakets,insurance including medical insurance certificate.</span></div><div><span style=\"font-weight: 700;\"><br></span></div><div><span style=\"font-weight: 700;\"><br></span></div><div><span style=\"font-weight: 700; font-size: x-large;\">Photo identification:</span></div><div><span style=\"font-size: x-large; font-weight: 700;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"font-weight: 700; font-size: x-large;\">&nbsp;&nbsp;</span><span style=\"font-size: medium; font-weight: 700;\">All guests travelling by air for Indian/domestic sectors are advised to carry photo identification int the form of driving licence,election card,aadhar card,pan card and for students their school/college id card.at certain sightseeing places/hotel,the identifiaction prrof is required for which company has no control and is mandatory.</span></div><div><span style=\"font-size: medium; font-weight: 700;\"><br></span></div><div><span style=\"font-weight: 700; font-size: medium;\"><br></span></div><div><br></div>\r\n										\r\n										\r\n										'),
(2, 'privacy', '										<div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large; font-weight: bold;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; TMS tours Pvt.Ltd uses its best efforts to respect the privacy of its on-linevisitors.TMS tours Pvt.Ltd include its division and subdiaries.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large; font-weight: 700;\">&nbsp;when you visit the site,in certain parts of the site ,we may ask you to to provide you with personal information so that we can provide you with information you request.You are under no obligation to provide us with this information.you can communicate with us by phone,emails.</span></div><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large; font-weight: 700;\"><br></span></div><h1 style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: x-large; font-weight: 700;\">Third party Advertisements</span></h1><div style=\"text-align: left;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-weight: 700; font-size: large;\">Please note that third parties&nbsp; advertise on our site.we do not share any of your personal information with this third party advertisers unless you give us permission.</span></div><div style=\"text-align: left;\"><br></div><h1 style=\"text-align: justify;\"><span style=\"font-weight: 700; font-size: x-large;\">Links</span></h1><div style=\"text-align: justify;\"><span style=\"font-weight: 700; font-size: x-large;\"><br></span></div><div style=\"text-align: left;\"><span style=\"font-weight: 700; font-size: large;\">This site may include links to other websites operated by parties other than TMS .TMS is not responsible and assumes no responsibility for the contents if any non-TMS linked internet websites,or for any potential damage arising out of or in connection with the use of any such link.</span></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><span style=\"font-weight: 700; font-size: x-large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-weight: 700; font-size: x-large;\"><br></span></div>\r\n										'),
(11, 'contact', '										<span style=\"color: rgb(0, 0, 0); font-size: large; font-weight: 700; font-family: helvetica;\">*Toll </span><span style=\"color: rgb(0, 0, 0); font-size: large; font-weight: 700; font-family: helvetica;\">free&nbsp; </span><span style=\"color: rgb(0, 0, 0); font-size: large; font-weight: 700; font-family: helvetica;\">number&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: impact; font-size: large; font-weight: 700;\">:&nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"font-family: helvetica;\"><span style=\"color: rgb(0, 0, 0); font-size: large; font-weight: 700;\">02021250502</span><span style=\"color: rgb(0, 0, 0); font-size: large; font-weight: bold;\">&nbsp;</span></span><span style=\"color: rgb(0, 0, 0); font-size: large; font-family: &quot;comic sans ms&quot;; font-weight: bold;\">&nbsp;</span><div><span style=\"color: rgb(0, 0, 0); font-size: large; font-weight: 700; font-family: helvetica;\">Email </span><span style=\"color: rgb(0, 0, 0); font-size: large; font-weight: 700; font-family: helvetica;\">id </span><span style=\"color: rgb(0, 0, 0); font-family: impact; font-size: large; font-weight: 700;\">:&nbsp; &nbsp;</span><span style=\"color: rgb(0, 0, 0); font-size: large; font-weight: 700; font-family: georgia;\">tms@gmail.com</span></div>\r\n										\r\n										\r\n										\r\n										'),
(3, 'about us', '										<h1><span style=\"font-weight: bold;\">why TMS...</span></h1><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\">1. One line tour price,Always All inclusive.No confusion,No hidden costs.</span></div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\">2. Delicious Indian meals,breakfast,lunch,dinner- all meals included.</span></div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\">3. Guarantee of \'carry Zero Money On Tour\'.</span></div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\">4. As per the tour category, best quality Hotels which are appreciated by&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></div><div><span style=\"font-weight: bold;\">&nbsp; &nbsp; &nbsp;traveled guests.</span></div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\">5. Tours suitable for every budget,starting from 5 thousand to 10 lakh.</span></div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\">6. Tours designed for special groups like students,senoirs,honeymooners,ladies</span></div><div><span style=\"font-weight: bold;\">&nbsp; &nbsp; &nbsp;corporate and so on.</span></div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\">7. Driver and guide tip included in the tour price.</span></div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\">8. Professional&nbsp; and caring tour leader throughout the tour.</span></div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\">9. Thousands of satisfied tourists year after year,every year.</span></div><div><span style=\"font-weight: bold;\"><br></span></div><div><span style=\"font-weight: bold;\"><br></span></div><h4><span style=\"font-weight: 700;\">&nbsp; so hurry up and book a holiday with TMS!</span></h4><div><span style=\"font-weight: 700;\">&nbsp;&nbsp;</span></div>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) NOT NULL,
  `PackageType` varchar(150) NOT NULL,
  `PackageLocation` varchar(100) NOT NULL,
  `PackagePrice` int(11) NOT NULL,
  `PackageFetures` varchar(255) NOT NULL,
  `PackageDetails` mediumtext NOT NULL,
  `PackageImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maharashtra darshan', 'General', 'maharashtra', 100000, 'ancient monuments', 'great monument of maratha empire', '15.jpg', '2017-05-13 14:23:44', '2019-01-20 07:11:11'),
(2, 'Ramoji rao studio', 'family', 'Hyderabad', 50000, 'World\'s largest film studio. ', '5 days tour with all facilties.', '9.jpg', '2017-05-13 15:24:26', '2019-01-07 17:47:51'),
(3, 'kokan Darshan', 'students ,family and couples', 'kokan', 10000, 'beautiful nature', '5 days tour for students with all facilities.', '13.jpg', '2017-05-13 16:00:58', '2019-01-07 17:56:27'),
(4, 'Kerla', 'Family and Couple', 'Kerla', 20000, '', '', '7.jpg', '2017-05-13 22:39:37', '2019-01-07 17:59:23'),
(5, 'verul', 'General', 'Aurangabad', 3000, 'ancient monuments', 'it is very ancient monument use by gautam buddha \'shishya\'.', '8.jpg', '2017-05-13 22:42:10', '2019-01-07 18:41:31'),
(6, 'Paris', 'couples', 'Paris', 150000, 'worlds best romantic place.', 'couple special tour with all facilities.', 'c5.jpg', '2017-05-14 08:01:08', '2019-01-07 18:45:11'),
(7, 'aa', 'gyhu', 'mkk', 150000, 'ancient monuments', 'mnk', '6.jpg', '2019-01-20 07:12:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `MobileNumber` char(10) NOT NULL,
  `EmailId` varchar(70) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'vibha ghadge', '9545925174', 'vibha@gmail.com', '3f389b95070ce472dbd04ff4575393a9', '2019-01-07 16:40:18', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
