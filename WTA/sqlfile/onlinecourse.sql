-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 08:43 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-05-2018 03:31:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(7, 'CC002', 'Code Chef', 'CSE', 0, '2020-12-26 07:21:44', NULL),
(9, 'CC008', 'Data mining', 'EEE', 0, '2020-12-29 08:48:51', '29-12-2020 02:19:08 PM'),
(10, 'C011', 'Music', 'ISE', 0, '2021-01-03 17:32:42', NULL),
(11, 'C123', 'Pregos', 'ISE', 0, '2021-01-03 17:48:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(6, '10806121', '715948', 3, 7, 5, 6, 2, '2020-12-25 19:53:57'),
(7, '10806121', '715948', 5, 9, 5, 7, 6, '2020-12-26 07:55:56'),
(8, '1CR17IS046', '696300', 8, 8, 0, 10, 6, '2020-12-26 11:01:16'),
(9, '1CR17IS046', '696300', 6, 9, 0, 7, 8, '2020-12-26 11:01:54'),
(10, '1CR17IS090', '427796', 5, 8, 0, 8, 6, '2020-12-26 11:32:13'),
(11, '10806121', '715948', 5, 9, 5, 7, 7, '2020-12-26 11:57:54'),
(12, '12345', '515107', 5, 11, 0, 10, 8, '2020-12-26 12:05:12'),
(13, '10806121', '715948', 5, 10, 0, 7, 7, '2020-12-26 12:10:37'),
(14, '1CR17IS090', '427796', 6, 10, 6, 9, 7, '2020-12-26 12:16:30'),
(15, '1CR17IS090', '427796', 8, 11, 0, 9, 8, '2020-12-26 13:44:57'),
(16, '1CR17IS090', '427796', 6, 8, NULL, 9, 6, '2020-12-29 07:43:46'),
(17, '1CR17IS090', '427796', 7, 8, NULL, 10, 9, '2020-12-29 08:53:31'),
(18, '1CR17IS090', '427796', 11, 8, NULL, 10, 10, '2021-01-03 18:00:04'),
(19, '1CR17IS090', '427796', 11, 10, NULL, 11, 10, '2021-01-22 17:52:56'),
(21, '1', '953355', 11, 8, NULL, 11, 11, '2021-01-22 19:20:22'),
(22, '0', '268791', 11, 8, NULL, 11, 10, '2021-01-22 19:26:10'),
(23, '0', '268791', 11, 8, NULL, 11, 7, '2021-01-22 19:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(8, 'ISE', '2020-12-26 07:12:39'),
(9, 'CSE', '2020-12-26 07:12:44'),
(10, 'EEE', '2020-12-26 07:12:50'),
(11, 'EC', '2020-12-26 07:12:57'),
(13, 'TC', '2021-01-22 17:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'Level 1', '2017-02-09 19:04:04'),
(6, 'level 2', '2017-02-09 19:04:12'),
(7, 'level 4', '2017-02-09 19:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(7, 'First ', '2020-12-26 07:10:44', NULL),
(8, 'Second', '2020-12-26 07:10:49', NULL),
(9, 'Third', '2020-12-26 07:10:54', NULL),
(11, 'Fourth', '2021-01-22 17:40:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(10, '2020', '2020-12-29 08:47:12'),
(11, '2021', '2021-01-03 17:31:16'),
(13, '2022', '2021-01-22 17:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('0', NULL, 'e7476ca55559e029965da4e8f1018e45', 'Kavya', '268791', NULL, NULL, NULL, NULL, '2021-01-22 19:09:36', NULL),
('1', 'Siri image.jpg', '91c731a8ad504c4dde932f79104f992c', 'Siri', '953355', NULL, NULL, NULL, NULL, '2021-01-22 19:13:15', NULL),
('12345', 'IMG_20150526_190801.jpg', '056062863ed19a32787a3ae9e1117d5e', 'Rekha S', '515107', NULL, NULL, NULL, NULL, '2020-12-26 12:04:01', NULL),
('2', NULL, '2df2dffa4982ed522b33cfa978ea604a', 'Jeevitha', '346168', NULL, NULL, NULL, NULL, '2021-01-22 19:13:59', NULL),
('23', NULL, '06ffa7f722c8a8dbd2f1f67b34f6846c', 'Amulya', '690343', NULL, NULL, NULL, NULL, '2021-01-22 19:31:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(17, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-25 19:50:37', NULL, 1),
(18, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-26 05:53:20', '26-12-2020 01:15:42 PM', 1),
(19, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-26 07:45:53', NULL, 1),
(20, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-26 07:48:15', NULL, 1),
(21, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 10:31:36', '26-12-2020 04:02:05 PM', 1),
(22, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-26 10:32:14', NULL, 1),
(23, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 10:39:11', '26-12-2020 04:09:15 PM', 1),
(24, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 10:46:13', '26-12-2020 04:17:02 PM', 1),
(25, '1CR17IS046', 0x3a3a3100000000000000000000000000, '2020-12-26 10:47:09', '26-12-2020 04:17:23 PM', 1),
(26, '1CR17IS046', 0x3a3a3100000000000000000000000000, '2020-12-26 10:47:30', '26-12-2020 05:00:33 PM', 1),
(27, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 11:30:41', '26-12-2020 05:13:31 PM', 1),
(28, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 11:43:38', '26-12-2020 05:19:33 PM', 1),
(29, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-26 11:51:28', '26-12-2020 05:22:48 PM', 1),
(30, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 11:52:53', '26-12-2020 05:24:18 PM', 1),
(31, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-26 11:54:26', '26-12-2020 05:30:17 PM', 1),
(32, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-26 12:00:36', '26-12-2020 05:30:41 PM', 1),
(33, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 12:00:47', '26-12-2020 05:33:10 PM', 1),
(34, '12345', 0x3a3a3100000000000000000000000000, '2020-12-26 12:04:28', '26-12-2020 05:39:37 PM', 1),
(35, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-26 12:10:16', '26-12-2020 05:41:09 PM', 1),
(36, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 12:14:36', '26-12-2020 05:51:32 PM', 1),
(37, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 12:24:37', '26-12-2020 05:54:41 PM', 1),
(38, '12345', 0x3a3a3100000000000000000000000000, '2020-12-26 12:24:47', '26-12-2020 05:55:14 PM', 1),
(39, '1CR17IS046', 0x3a3a3100000000000000000000000000, '2020-12-26 12:25:22', '26-12-2020 05:55:28 PM', 1),
(40, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 12:25:35', '26-12-2020 05:56:28 PM', 1),
(41, '10806121', 0x3a3a3100000000000000000000000000, '2020-12-26 12:26:41', '26-12-2020 05:56:52 PM', 1),
(42, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 12:27:36', '26-12-2020 05:57:54 PM', 1),
(43, '12345', 0x3a3a3100000000000000000000000000, '2020-12-26 12:28:05', '26-12-2020 05:58:17 PM', 1),
(44, '1CR17IS046', 0x3a3a3100000000000000000000000000, '2020-12-26 12:28:30', '26-12-2020 05:59:08 PM', 1),
(45, '1CR17IS046', 0x3a3a3100000000000000000000000000, '2020-12-26 13:40:36', '26-12-2020 07:12:31 PM', 1),
(46, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 13:42:58', '26-12-2020 07:13:05 PM', 1),
(47, '1CR17IS046', 0x3a3a3100000000000000000000000000, '2020-12-26 13:43:14', '26-12-2020 07:13:20 PM', 1),
(48, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 13:43:34', '26-12-2020 07:15:13 PM', 1),
(49, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-26 14:32:50', NULL, 1),
(50, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-27 15:16:48', '27-12-2020 08:52:05 PM', 1),
(51, '1CR17IS046', 0x3a3a3100000000000000000000000000, '2020-12-27 15:22:13', NULL, 1),
(52, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-29 07:41:40', '29-12-2020 01:14:18 PM', 1),
(53, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-29 07:44:25', '29-12-2020 01:22:23 PM', 1),
(54, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2020-12-29 08:52:14', '29-12-2020 02:25:59 PM', 1),
(55, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2021-01-03 08:34:55', '03-01-2021 02:24:51 PM', 1),
(56, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2021-01-03 17:40:53', '03-01-2021 11:10:58 PM', 1),
(57, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2021-01-03 17:56:38', '03-01-2021 11:27:59 PM', 1),
(58, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2021-01-03 17:58:44', '03-01-2021 11:31:00 PM', 1),
(59, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2021-01-22 17:49:42', '22-01-2021 11:23:35 PM', 1),
(60, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2021-01-22 17:59:16', '22-01-2021 11:31:24 PM', 1),
(61, '12345', 0x3a3a3100000000000000000000000000, '2021-01-22 18:15:39', '22-01-2021 11:46:14 PM', 1),
(62, '1CR17IS090', 0x3a3a3100000000000000000000000000, '2021-01-22 18:27:28', '22-01-2021 11:58:54 PM', 1),
(63, '12345', 0x3a3a3100000000000000000000000000, '2021-01-22 18:29:01', '22-01-2021 11:59:22 PM', 1),
(64, '1CR17IS040', 0x3a3a3100000000000000000000000000, '2021-01-22 18:30:33', '23-01-2021 12:01:34 AM', 1),
(65, '1', 0x3a3a3100000000000000000000000000, '2021-01-22 19:19:17', '23-01-2021 12:54:38 AM', 1),
(66, '1', 0x3a3a3100000000000000000000000000, '2021-01-22 19:24:55', '23-01-2021 12:55:00 AM', 1),
(67, '0', 0x3a3a3100000000000000000000000000, '2021-01-22 19:25:09', '23-01-2021 12:56:53 AM', 1),
(68, '1', 0x3a3a3100000000000000000000000000, '2021-01-22 19:27:31', '23-01-2021 12:57:34 AM', 1),
(69, '1', 0x3a3a3100000000000000000000000000, '2021-01-22 19:29:33', '23-01-2021 12:59:36 AM', 1),
(70, '1', 0x3a3a3100000000000000000000000000, '2021-01-22 19:36:10', '23-01-2021 01:06:23 AM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
