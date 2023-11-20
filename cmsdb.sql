-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 10:08 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `state_code` char(2) NOT NULL,
  `city_name` varchar(20) NOT NULL,
  `sales_amt` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`state_code`, `city_name`, `sales_amt`) VALUES
('AP', 'kakinada', 0.00),
('AP', 'Rajahmundry', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `programcode` varchar(8) NOT NULL,
  `program` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`programcode`, `program`) VALUES
('GROUPS', 'GROUPS'),
('HARDWARE', 'HARDWARE'),
('SOFTWARE', 'SOFTWARE');

-- --------------------------------------------------------

--
-- Table structure for table `tblbatches`
--

CREATE TABLE `tblbatches` (
  `id` int(20) NOT NULL,
  `batch` int(20) DEFAULT NULL,
  `mentor` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `batchduration` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `course` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `timings` time DEFAULT NULL,
  `year` int(30) DEFAULT NULL,
  `center` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbatches`
--

INSERT INTO `tblbatches` (`id`, `batch`, `mentor`, `batchduration`, `course`, `timings`, `year`, `center`) VALUES
(1, 6300, 'sai', 'sixmonths', 'GROUPS', '10:00:00', 2023, 'kakinada'),
(2, 1236, 'ram', 'sixmonths', 'HARDWARE', '10:00:00', 2023, 'kakinada'),
(3, 1236, 'pavan', 'sixmonths', 'SOFTWARE', '10:00:00', 2023, 'kakinada'),
(4, 1001, 'lokesh', 'sixmonths', 'SOFTWARE', '10:00:00', 2023, 'Rajahmundry'),
(5, 1002, 'satya', 'sixmonths', 'HARDWARE', '10:00:00', 2023, 'Rajahmundry'),
(6, 1003, 'siva', 'sixmonths', 'GROUPS', '10:00:00', 2023, 'Rajahmundry');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourses`
--

CREATE TABLE `tblcourses` (
  `coursecode` varchar(10) NOT NULL,
  `courses` varchar(20) NOT NULL,
  `programcode` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcourses`
--

INSERT INTO `tblcourses` (`coursecode`, `courses`, `programcode`) VALUES
('COMP', 'GROUPS', 'GROUPS'),
('HARD', 'VLSIANDEMBEDDED', 'HARDWARE'),
('SOFT', 'SOFTWARE LANG', 'SOFTWARE');

-- --------------------------------------------------------

--
-- Table structure for table `tbldept`
--

CREATE TABLE `tbldept` (
  `deptcode` varchar(5) NOT NULL,
  `deptname` varchar(30) NOT NULL,
  `location` varchar(10) NOT NULL,
  `estddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldept`
--

INSERT INTO `tbldept` (`deptcode`, `deptname`, `location`, `estddate`) VALUES
('CA', 'CURRENTAFFAIRS', 'CABLOCK', '2023-11-15'),
('EMBED', 'EMBEDDED SYSTEMS', 'EBLOCK', '2023-11-15'),
('ENG', 'ENGLISH', 'EBLOCK', '2023-09-19'),
('GS', 'GENERALSCIENCE', 'GSBLOCK', '2023-08-22'),
('JAVA', 'JAVA', 'JBLOCK', '2023-09-19'),
('MATH', 'MATHS', 'MBLOCK', '2023-08-18'),
('PYTHO', 'PYTHON', 'PBLOCK', '2023-09-19'),
('VLSI', 'VLSI', 'VBLOCK', '2021-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaffmanagement`
--

CREATE TABLE `tblstaffmanagement` (
  `id` int(30) NOT NULL,
  `eid` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `fname` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `lname` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `mobileno` int(30) NOT NULL,
  `address` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `state` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `salary` int(30) NOT NULL,
  `subject` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `course` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `center` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstaffmanagement`
--

INSERT INTO `tblstaffmanagement` (`id`, `eid`, `fname`, `lname`, `email`, `mobileno`, `address`, `city`, `state`, `salary`, `subject`, `course`, `center`) VALUES
(1, 'E10001', 'shiva', 'jatla', 'shiva@gmail.com', 1213456, 'Gollapalem', 'Gollapalem', 'AP', 25000, 'MATHS', 'GROUPS', 'kakinada'),
(2, 'E10002', 'Aravind', 'Kandivalasa', 'aravind@gmail.com', 12134567, 'rayavaram', 'anaparthi', 'AP', 35000, 'English', 'GROUPS', 'Rajahmundry'),
(3, 'E10003', 'Durga', 'Dandumenu', 'durga23@gmail.com', 123459, 'kakinada', 'kakinada', 'AP', 30000, 'GS', 'Groups', 'kakinada'),
(4, 'E10004', 'Pavan', 'kommana', 'pavan555@gmail.com', 124567, 'mandapeta', 'mandapeta', 'AP', 30000, 'CA', 'Groups', 'Rajahmundry'),
(5, 'E10005', 'Praveen', 'mallipudi', 'praveen5@gmail.com', 1258654, 'Ramachandrapuram', 'Ramachandrapuram', 'AP', 25000, 'Java', 'Software', 'Rajahmundry'),
(6, 'E10006', 'Sairam', 'Tummala', 'sairam2@gmail.com', 213544654, 'Gandhinagar', 'Kakinada', 'AP', 25000, 'Vlsi', 'Hardware', 'Kakinada'),
(7, 'E10007', 'Sunil', 'Gollaplli', 'sunil@gmail.com', 54564984, 'Mandapeta', 'Mandapeta', 'AP', 35000, 'embedded', 'HARDWARE', 'Rajahmundry'),
(8, 'E10008', 'Naresh', 'Anyam', 'naresh@gmail.com', 654654984, 'kakinada', 'kakinada', 'AP', 30000, 'Python', 'Software', 'kakinada');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentattendence`
--

CREATE TABLE `tblstudentattendence` (
  `id` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `sid` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `fromdate` date NOT NULL,
  `todate` date NOT NULL,
  `timing` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `batch` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `center` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `course` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstudentattendence`
--

INSERT INTO `tblstudentattendence` (`id`, `sid`, `fromdate`, `todate`, `timing`, `batch`, `status`, `center`, `course`) VALUES
('1', 'S1001', '2023-06-01', '2023-11-30', '10:00am-4:00pm', '6300', '75%', 'kakinada', 'GROUPS'),
('2', 'S1002', '2023-06-01', '2023-11-30', '10:00am-4:00pm', '1236', '75%', 'Rajahmundry', 'HARDWARE'),
('3', 'S1003', '2023-06-01', '2023-11-30', '10:00am-4:00pm', '581', '80%', 'kakinada', 'Software');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentmangement`
--

CREATE TABLE `tblstudentmangement` (
  `id` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `sid` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `fname` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `lname` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `mobile` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `address` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `city` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `state` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `fee` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `paidfee` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `status` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `course` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `batch` varchar(40) NOT NULL,
  `fathername` varchar(40) NOT NULL,
  `fathermob` varchar(40) NOT NULL,
  `center` varchar(40) NOT NULL,
  `dateofjion` date NOT NULL,
  `dateofleft` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstudentmangement`
--

INSERT INTO `tblstudentmangement` (`id`, `sid`, `fname`, `lname`, `email`, `mobile`, `address`, `city`, `state`, `fee`, `paidfee`, `status`, `course`, `batch`, `fathername`, `fathermob`, `center`, `dateofjion`, `dateofleft`) VALUES
('1', 'S1001', 'Kumar', 'Kommana', 'kumar@gmail.com', '635684897', 'mamidada', 'Ramachandrapuram', 'AP', '15000', '15000', 'Yes', 'GROUPS', '6300', 'arjun kommana', '658948947', 'kakinada', '2023-11-15', '0000-00-00'),
('2', 'S1002', 'Naresh', 'chinnakasi', 'naresh@gmail.com', '6544984465', 'mandapeta', 'mandapeta', 'AP', '15000', '10000', 'No', 'HARDWARE', '1236', 'shiva', '16549847', 'Rajahmundry', '2023-11-15', '0000-00-00'),
('3', 'S1003', 'praveen', 'choudary', 'praveen555@gmail.com', '325654546', 'amalapuram', 'amalapuram', 'AP', '15000', '10000', 'No', 'Software', '581', 'prakash', '165498479', 'kakinada', '2023-11-15', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentreg`
--

CREATE TABLE `tblstudentreg` (
  `programcode` varchar(8) NOT NULL,
  `coursecode` varchar(8) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudentreg`
--

INSERT INTO `tblstudentreg` (`programcode`, `coursecode`, `name`, `email`, `age`) VALUES
('COMP', 'GROUPS', 'durgasairam', '15@gmail.com', 22),
('HARD', 'HARDWARE', 'lokesh', 'lokesh666@gmail.com', 27),
('HARD', 'HARDWARE', 'manikanta', 'mani555@gmail.com', 24),
('SOFT', 'SOFTWARE', 'pavan', 'pavan222@gmail.com', 24),
('SOFT', 'SOFTWARE', 'priya', 'priya888@gmail.com', 23),
('HARD', 'HARDWARE', 'raju', 'raju555@gmail.com', 25),
('SOFT', 'SOFTWARE', 'sairam', 'sairam555@gmail.com', 30),
('GROUPS', 'COMP', 'sri', 'sri@gmail.com', 23),
('GROUPS', 'COMP', 'sriteja', 'sriteja23i@gmail.com', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `level` varchar(10) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`username`, `password`, `level`, `userid`) VALUES
('DSR', 'c6e19e830859f2cb9f7c8f8cacb8d2a6', 'admin', 1),
('pavan', '42d02bd0c73cb27e4ffc7862910ea1f4', 'user', 2),
('aravind', '7bccfde7714a1ebadf06c5f4cea752c1', 'gst', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`state_code`,`city_name`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`programcode`);

--
-- Indexes for table `tblbatches`
--
ALTER TABLE `tblbatches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcourses`
--
ALTER TABLE `tblcourses`
  ADD PRIMARY KEY (`coursecode`),
  ADD KEY `p_c_fk` (`programcode`);

--
-- Indexes for table `tbldept`
--
ALTER TABLE `tbldept`
  ADD PRIMARY KEY (`deptcode`);

--
-- Indexes for table `tblstaffmanagement`
--
ALTER TABLE `tblstaffmanagement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudentattendence`
--
ALTER TABLE `tblstudentattendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudentmangement`
--
ALTER TABLE `tblstudentmangement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudentreg`
--
ALTER TABLE `tblstudentreg`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
