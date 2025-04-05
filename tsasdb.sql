-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2025 at 02:23 PM
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
-- Database: `tsasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8270707598, ' admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2024-02-10 11:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `ID` int(10) NOT NULL,
  `CourseName` varchar(200) DEFAULT NULL,
  `BranchName` varchar(200) DEFAULT NULL,
  `Shift` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`ID`, `CourseName`, `BranchName`, `Shift`, `CreationDate`) VALUES
(15, 'BCA, MCA', 'Computer Applications', 'Shift-I & Shift-II', '2024-03-18 17:42:23'),
(17, 'B.Sc, M.Sc', 'Chemistry', 'Shift-I & Shift-II', '2024-03-18 17:42:28'),
(19, 'B.Sc, M.Sc', 'Zology', 'Shift-I', '2024-03-18 17:42:32'),
(21, 'B.Sc, M.Sc', 'Computer Science', 'Shift-I & Shift-II', '2024-03-18 17:42:37'),
(23, 'B.Sc, M.Sc', 'Mathametics', 'Shift-I & Shift-II', '2024-03-18 17:42:46'),
(25, 'BA, MA', 'Tamil', 'Shift-I & Shift-II', '2024-03-18 17:42:52'),
(27, 'BA, MA', 'English', 'Shift-I & Shift-II', '2024-03-18 17:42:56'),
(29, 'BA, MA', 'History', 'Shift-I & Shift-II', '2024-03-20 04:44:11'),
(30, 'B.Com. M.Com', 'Commerce', 'Shift-I & Shift-II', '2024-03-20 04:45:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblsuballocation`
--

CREATE TABLE `tblsuballocation` (
  `ID` int(5) NOT NULL,
  `CourseID` int(5) DEFAULT NULL,
  `Teacherempid` varchar(100) DEFAULT NULL,
  `Subid` int(5) DEFAULT NULL,
  `Years` varchar(10) DEFAULT NULL,
  `AllocationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsuballocation`
--

INSERT INTO `tblsuballocation` (`ID`, `CourseID`, `Teacherempid`, `Subid`, `Years`, `AllocationDate`) VALUES
(27, 15, 'CA1001', 33, '2023-2024', '2024-03-20 02:15:35'),
(29, 15, 'CA1002', 41, '2023-2024', '2024-03-20 02:16:05'),
(30, 15, 'CA1002', 38, '2023-2024', '2024-03-20 02:16:34'),
(31, 15, 'CA1001', 40, '2023-2024', '2024-03-20 02:17:00'),
(36, 15, 'CA1005', 39, '2023-2024', '2024-03-20 02:22:07'),
(38, 15, 'CA1002', 49, '2023-2024', '2024-03-20 05:07:51'),
(39, 15, 'CA1001', 51, '2023-2024', '2024-03-20 05:08:07'),
(40, 15, 'CA1003', 52, '2023-2024', '2024-03-20 05:08:30'),
(41, 15, 'CA1003', 50, '2023-2024', '2024-03-20 05:08:43'),
(42, 15, 'CA1004', 50, '2023-2024', '2024-03-20 05:08:57'),
(45, 15, 'CA1004', 52, '2023-2024', '2024-03-20 05:14:21'),
(46, 15, 'CA1005', 51, '2023-2024', '2024-03-20 05:14:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `ID` int(5) NOT NULL,
  `CourseID` int(5) DEFAULT NULL,
  `SubjectFullname` varchar(200) DEFAULT NULL,
  `Course` varchar(10) DEFAULT NULL,
  `Year` varchar(10) DEFAULT NULL,
  `Semester` varchar(10) DEFAULT NULL,
  `SubjectCode` varchar(200) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubject`
--

INSERT INTO `tblsubject` (`ID`, `CourseID`, `SubjectFullname`, `Course`, `Year`, `Semester`, `SubjectCode`, `Date`, `CreationDate`) VALUES
(30, 15, 'Foundations of Computer Applications', 'BCA', 'I', 'I-Sem', '21UCA01', '2024-03-17', '2024-03-18 11:10:32'),
(31, 15, 'Office Automation Lab', 'BCA', 'I', 'I-Sem', '21UCAP1', '2024-03-17', '2024-03-18 11:12:35'),
(33, 15, 'C Programming Lab', 'BCA', 'I', 'II-Sem', '21UCAP2', '2024-03-17', '2024-03-18 15:24:06'),
(34, 15, 'Data Structures and OOPS Lab (C++)', 'BCA', 'II', 'III-Sem', '21UCAP3', '2024-03-17', '2024-03-18 15:28:31'),
(35, 15, 'Data and file Structures', 'BCA', 'II', 'III-Sem', '21UCA02', '2024-03-17', '2024-03-18 15:29:50'),
(36, 15, 'Computer Architecture', 'BCA', 'II', 'III-Sem', '21UCA04', '2024-03-17', '2024-03-18 15:30:12'),
(37, 15, 'Object Oriented Programming Using C++', 'BCA', 'II', 'III-Sem', '21UCA05', '2024-03-17', '2024-03-18 17:35:04'),
(38, 15, 'VB.NET Programming', 'BCA', 'II', 'IV-Sem', '21UCA06', '2024-03-17', '2024-03-18 17:35:55'),
(39, 15, 'Software Engineering', 'BCA', 'II', 'IV-Sem', '21UCA07', '2024-03-17', '2024-03-18 17:36:21'),
(40, 15, 'Relational database Management System', 'BCA', 'II', 'IV-Sem', '21UCA08', '2024-03-17', '2024-03-18 17:36:34'),
(41, 15, 'Visual Basic.Net & RDBMS Lab', 'BCA', 'II', 'IV-Sem', '21UCAP4', '2024-03-17', '2024-03-18 17:36:38'),
(42, 15, 'Operating System', 'BCA', 'III', 'V-Sem', '21UCA09', '2024-03-17', '2024-03-18 17:36:41'),
(43, 15, 'Computer Networks', 'BCA', 'III', 'V-Sem', '21UCA10', '2024-03-17', '2024-03-18 17:36:44'),
(44, 15, 'Core Java Programming', 'BCA', 'III', 'V-Sem', '21UCA011', '2024-03-17', '2024-03-18 17:36:47'),
(45, 15, 'Graphics and Multimedia System', 'BCA', 'III', 'V-Sem', '21UCAM2', '2024-03-17', '2024-03-18 17:36:49'),
(46, 15, 'Unix and Shell Programming', 'BCA', 'III', 'V-Sem', '21UCAM3', '2024-03-17', '2024-03-18 17:36:52'),
(47, 15, 'Programming in Python', 'BCA', 'III', 'VI-Sem', '21UCAP6', '2024-03-17', '2024-03-18 17:36:54'),
(48, 15, 'Software Development Lab', 'BCA', 'III', 'VI-Sem', '21UCAPR', '2024-03-17', '2024-03-18 17:36:57'),
(49, 15, 'Open Source Software', 'BCA', 'III', 'VI-Sem', '21UCA12', '2024-03-17', '2024-03-18 17:37:01'),
(50, 15, 'Python Programming', 'BCA', 'III', 'VI-Sem', '21UCA13', '2024-03-17', '2024-03-18 17:37:03'),
(51, 15, 'Software Testing', 'BCA', 'III', 'VI-Sem', '21UCAM5', '2024-03-17', '2024-03-18 17:37:08'),
(52, 15, 'Big Data Analytics', 'BCA', 'III', 'VI-Sem', '21UCAM7', '2024-03-17', '2024-03-18 17:37:11'),
(56, 20, 'Genetics', NULL, 'I', 'II-Sem', '21PZL04', '2024-03-18', '2024-03-18 04:25:21'),
(57, 20, 'Genetics', NULL, 'I', 'II-Sem', '21PZL04', '2024-03-18', '2024-03-18 04:25:21'),
(58, 20, 'Developmental Biology', NULL, 'I', 'II-Sem', '21PZL05', '2024-03-18', '2024-03-18 04:26:05'),
(59, 20, 'Immunology', NULL, 'I', 'II-Sem', '21PZL06', '2024-03-18', '2024-03-18 04:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `ID` int(10) NOT NULL,
  `EmpID` varchar(50) DEFAULT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Gender` varchar(200) DEFAULT NULL,
  `Dob` varchar(200) DEFAULT NULL,
  `CourseID` int(5) DEFAULT NULL,
  `Shift` varchar(10) DEFAULT NULL,
  `Religion` varchar(200) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Qualification` varchar(100) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `ProfilePic` varchar(200) DEFAULT NULL,
  `JoiningDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblteacher`
--

INSERT INTO `tblteacher` (`ID`, `EmpID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Gender`, `Dob`, `CourseID`, `Shift`, `Religion`, `Address`, `Qualification`, `Password`, `ProfilePic`, `JoiningDate`) VALUES
(7, 'CA1001', 'PREETHA', 'C', 9080423136, 'preetha.gl@gacsalem7.ac.in', 'Female', '1981-06-19', 15, 'Shift-II', 'HINDU', 'salem-7', 'MCA ,M.Phil.,', NULL,  '2024-03-18 11:36:43'),
(8, 'CA1002', 'GEETHA', 'K', 9677444046, 'geetha.gl@gacsalem7.ac.in', 'Female', '1981-10-16', 15, 'Shift-II', 'HINDU', 'Salem-10', 'MCA ,M.Phil., SET.,', NULL,  '2024-03-20 05:01:52'),
(9, 'CA1003', 'SELVAKUMAR', 'M', 9944556773, 'selvakumar.gl@gacsalem7.ac.in', 'Male', '1985-07-17', 15, 'Shift-II', 'HINDU', 'Salem 6', NULL, NULL, '2024-03-17 17:53:36'),
(10, 'CA1004', 'GANDHIRAJA', 'V', 9344214829, 'mrvgandhiraja@gacsalem7.ac.in', 'Male', '1979-04-29', 15, 'Shift-I', 'HINDU', 'Salem-11', NULL, NULL,  '2024-03-17 18:02:46'),
(11, 'CA1005', 'RAJALAKSHMI', 'A', 9025441815, 'a.rajalakshmigl@gacsalem7.ac.in', 'Female', '1992-04-03', 15, 'Shift-I', 'HINDU', 'Salem-03', NULL, NULL, '2024-03-17 18:05:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsuballocation`
--
ALTER TABLE `tblsuballocation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblsuballocation`
--
ALTER TABLE `tblsuballocation`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tblteacher`
--
ALTER TABLE `tblteacher`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
