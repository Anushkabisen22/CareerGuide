-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2023 at 09:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `COLLEGE_ID` int(3) NOT NULL,
  `BRANCH_ID` varchar(5) NOT NULL,
  `BRANCH_NAME` varchar(50) DEFAULT NULL,
  `BRANCH_CUTOFF` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`COLLEGE_ID`, `BRANCH_ID`, `BRANCH_NAME`, `BRANCH_CUTOFF`) VALUES
(101, 'CE', 'CIVIL SCIENCE', 7000),
(101, 'CSE', 'COMPUTER SCIENCE', 4000),
(101, 'EE', 'ELECTRICAL ENGINEERING', 5000),
(101, 'ME', 'MECHANICAL ENGINEERING', 6000),
(102, 'CE', 'CIVIL SCIENCE', 6000),
(102, 'CSE', 'COMPUTER SCIENCE', 2000),
(102, 'EE', 'ELECTRICAL ENGINEERING', 3000),
(102, 'ME', 'MECHANICAL ENGINEERING', 4000),
(103, 'CE', 'CIVIL SCIENCE', 10000),
(103, 'CSE', 'COMPUTER SCIENCE', 7576),
(103, 'EE', 'ELECTRICAL ENGINEERING', 8000),
(103, 'ME', 'MECHANICAL ENGINEERING', 9000),
(104, 'CE', 'CIVIL SCIENCE', 11000),
(104, 'EE', 'ELECTRICAL ENGINEERING', 8000),
(104, 'ME', 'MECHANICAL ENGINEERING', 10000),
(105, 'CE', 'CIVIL SCIENCE', 9809),
(105, 'EE', 'ELECTRICAL ENGINEERING', 8500),
(105, 'ME', 'MECHANICAL ENGINEERING', 9000),
(106, 'EE', 'ELECTRICAL ENGINEERING', 2500),
(107, 'CE', 'ELECTRICAL ENGINEERING', 3500),
(107, 'Cee', 'ELECTRICAL ENGINEERING', 3500),
(107, 'CSE', 'computer science', 3000),
(107, 'ECE', 'computer science', 3500),
(107, 'EE', 'ELECTRICAL ENGINEERING', 3500),
(111, 'CSE', 'COMPUTER SCIENCE', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `COLLEGE_ID` int(3) NOT NULL,
  `COLLEGE_NAME` varchar(150) DEFAULT NULL,
  `COLLEGE_STATE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`COLLEGE_ID`, `COLLEGE_NAME`, `COLLEGE_STATE`) VALUES
(102, 'IIT BOMBAY', 'MAHARASHTRA'),
(103, 'IIT ROORKEE', 'UTTARAKHAND'),
(104, 'IIT GUWAHATI', 'UTTARAKHAND'),
(105, 'IIT ROPAR', 'UTTARAKHAND'),
(107, 'IIT JODHPUR', 'Rajasthan');

-- --------------------------------------------------------

--
-- Table structure for table `master_admin`
--

CREATE TABLE `master_admin` (
  `a_email` varchar(50) NOT NULL,
  `a_password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_admin`
--

INSERT INTO `master_admin` (`a_email`, `a_password`) VALUES
('ankitamritesh@gmail.com', 'ankit333'),
('anushkabisen@gmail.com', 'anushka222'),
('manojpanjwani111@gmail.com', 'manoj111');

-- --------------------------------------------------------

--
-- Table structure for table `master_student`
--

CREATE TABLE `master_student` (
  `S_EMAIL` varchar(50) NOT NULL,
  `S_PASSWORD` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_student`
--

INSERT INTO `master_student` (`S_EMAIL`, `S_PASSWORD`) VALUES
('ankit@gmail.com', 'manoj111'),
('m@gmail.com', 'ifiehe'),
('manojpanjwani111@gmail.com', 'manoj111');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STUDENT_NAME` varchar(50) NOT NULL,
  `STUDENT_EMAIL` varchar(100) NOT NULL,
  `STUDENT_USERNAME` varchar(15) NOT NULL,
  `STUDENT_PASSWORD` varchar(15) NOT NULL,
  `STUDENT_PHONE` int(11) NOT NULL,
  `STUDENT_STATE` varchar(20) NOT NULL,
  `STUDENT_ZIP` int(6) NOT NULL,
  `STUDENT_GENDER` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STUDENT_NAME`, `STUDENT_EMAIL`, `STUDENT_USERNAME`, `STUDENT_PASSWORD`, `STUDENT_PHONE`, `STUDENT_STATE`, `STUDENT_ZIP`, `STUDENT_GENDER`) VALUES
('aryanpadeny1', 'ad@gmail.com', 'aryanp', 'maoaeef', 418414, 'up', 371032, 'male'),
('ankit kumar', 'ankit@gmail.com', 'ankit_03', 'manoj111', 639191910, 'UP', 226054, 'Male'),
('aryan', 'aryanpandey@gmail.com', 'aryan', 'manojpanjwani', 631411412, 'mumbai', 0, ''),
('dfaw', 'm@gmail.com', 'sdfs', 'ifiehe', 239528, 'nf', 226723, 'apple'),
('manoj panjwani', 'manojpanjwani111@gmail.com', 'mojo_03', 'manoj111', 639191914, 'uttar pradesh', 226023, 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`COLLEGE_ID`,`BRANCH_ID`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`COLLEGE_ID`);

--
-- Indexes for table `master_admin`
--
ALTER TABLE `master_admin`
  ADD PRIMARY KEY (`a_email`);

--
-- Indexes for table `master_student`
--
ALTER TABLE `master_student`
  ADD PRIMARY KEY (`S_EMAIL`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STUDENT_EMAIL`),
  ADD UNIQUE KEY `STUDENT_USERNAME` (`STUDENT_USERNAME`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
