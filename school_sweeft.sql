-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 12:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_sweeft`
--

-- --------------------------------------------------------

--
-- Table structure for table `pupil`
--

CREATE TABLE `pupil` (
  `ID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `gender` enum('MALE','FEMALE','','') NOT NULL,
  `school_year` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pupil`
--

INSERT INTO `pupil` (`ID`, `name`, `lname`, `gender`, `school_year`) VALUES
(1, 'Petre', 'Khardaziani', 'MALE', 12),
(2, 'Giorgi', 'Rokva', 'MALE', 11),
(3, 'Giga', 'Kurtanidze', 'MALE', 6),
(4, 'Nino', 'Khundadze', 'FEMALE', 1),
(5, 'Giorgi', 'Mosashvili', 'MALE', 8),
(6, 'Mariam', 'Janashia', 'FEMALE', 6);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `ID` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `gender` enum('MALE','FEMALE') NOT NULL,
  `subject` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`ID`, `name`, `lname`, `gender`, `subject`) VALUES
(1, 'Elene', 'Kukhianidze', 'FEMALE', 'Georgian'),
(2, 'Madona', 'Sanikidze', 'FEMALE', 'History'),
(3, 'Ramaz', 'Bochorishvili', 'MALE', 'Math'),
(4, 'Temuri', 'Janashia', 'MALE', 'Geography'),
(5, 'Nana', 'Abuladze', 'FEMALE', 'Bilogy'),
(6, 'Lali', 'Amardashvili', 'FEMALE', 'Chemistry'),
(7, 'Nato', 'Tatrishvili', 'FEMALE', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `teacherID` int(11) NOT NULL,
  `school_year` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`teacherID`, `school_year`) VALUES
(6, 11),
(4, 6),
(7, 8),
(6, 8),
(4, 3),
(2, 1),
(1, 11),
(2, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pupil`
--
ALTER TABLE `pupil`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD KEY `teacherID` (`teacherID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pupil`
--
ALTER TABLE `pupil`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
