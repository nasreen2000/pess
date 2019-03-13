-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 08:29 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pess_nasreen`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incidentId` int(11) NOT NULL,
  `patrolCarId` varchar(10) NOT NULL,
  `timeDispatched` datetime NOT NULL,
  `timeArrived` datetime NOT NULL,
  `timeCompleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incidentId` int(11) NOT NULL,
  `callerName` varchar(30) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `incidentTypeId` varchar(3) NOT NULL,
  `incidentLocation` varchar(50) NOT NULL,
  `incidentDesc` varchar(100) NOT NULL,
  `incidentStatusId` varchar(1) NOT NULL,
  `timeCalled` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incidentId`, `callerName`, `phoneNumber`, `incidentTypeId`, `incidentLocation`, `incidentDesc`, `incidentStatusId`, `timeCalled`) VALUES
(1, 'hetrhtrd', '454511', '010', 'cw', '', '1', '2019-02-27 07:27:00'),
(2, 'nnn', '2222', '010', 'cw', 'mkjuhgyftrd', '1', '2019-03-04 01:27:07'),
(3, 'nnn', '2222', '010', 'cw', 'bfvsdc', '1', '2019-03-04 01:27:18'),
(4, 'nnn', '2222', '010', 'cw', '', '1', '2019-03-04 01:29:57'),
(5, 'nnn', '', '010', '', '', '1', '2019-03-04 01:30:22'),
(6, 'nnn', '', '010', '', '', '1', '2019-03-04 01:35:55'),
(7, 'nnn', '', '', 'cw', 'bnm', '1', '2019-03-04 01:37:49'),
(8, 'nas', '', '', '', '', '1', '2019-03-04 01:42:37'),
(9, 'nas', '', '', '', '', '1', '2019-03-04 01:46:43'),
(10, 'nnn', '', '', '', '', '1', '2019-03-04 01:49:56'),
(11, 'nnn', '', '', '', '', '1', '2019-03-04 01:50:03'),
(12, 'nnn', '', '', 'cw', 'tyhnbgf', '1', '2019-03-11 05:00:01'),
(13, 'nass', '', '', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:03:44'),
(14, 'nass', '', '', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:04:24'),
(15, 'nass', '', '', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:06:14'),
(16, 'nass', '', '', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:06:22'),
(17, 'nass', '', '', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:07:02'),
(18, 'nass', '', '', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:07:05'),
(19, 'nass', '', '', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:10:09'),
(20, 'nass', '', '020', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:13:25'),
(21, 'nass', '', '020', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:16:35'),
(22, 'nass', '', '020', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:17:58'),
(23, 'nass', '', '020', 'wc', 'ggfgfgfgfgfggggggggggggggggfujnhtsragbte', '1', '2019-03-11 06:19:16'),
(24, 'nnn', '', '010', 'cw', 'asdfghjk', '1', '2019-03-11 06:20:02'),
(25, 'nnn', '', '010', 'cw', 'hg', '1', '2019-03-11 06:36:06'),
(26, 'nnn', '2222', '010', 'cw', 'hg', '1', '2019-03-11 06:40:44'),
(27, 'nnn', '2222', '020', 'cw', 'kkk', '1', '2019-03-11 06:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `incidenttype`
--

CREATE TABLE `incidenttype` (
  `incidentTypeID` varchar(3) NOT NULL,
  `incidentTypeDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incidenttype`
--

INSERT INTO `incidenttype` (`incidentTypeID`, `incidentTypeDesc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('999', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `statusID` varchar(1) NOT NULL,
  `statusDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`statusID`, `statusDesc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolCarID` varchar(10) NOT NULL,
  `patrolcarStatusId` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolCarID`, `patrolcarStatusId`) VALUES
('QX1111J', '3'),
('QX1234A', '1'),
('QX1342G', '1'),
('QX2222K', '4'),
('QX2288D', '3'),
('QX3456B', '2'),
('QX5555D', '2'),
('QX8723W', '2'),
('QX8769P', '4'),
('QX8923T', '3');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `statusID` varchar(1) NOT NULL,
  `statusDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`statusID`, `statusDesc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'Arrived');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incidentId`,`patrolCarId`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incidentId`);

--
-- Indexes for table `incidenttype`
--
ALTER TABLE `incidenttype`
  ADD PRIMARY KEY (`incidentTypeID`);

--
-- Indexes for table `incident_status`
--
ALTER TABLE `incident_status`
  ADD PRIMARY KEY (`statusID`);

--
-- Indexes for table `patrolcar`
--
ALTER TABLE `patrolcar`
  ADD PRIMARY KEY (`patrolCarID`);

--
-- Indexes for table `patrolcar_status`
--
ALTER TABLE `patrolcar_status`
  ADD PRIMARY KEY (`statusID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incidentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
