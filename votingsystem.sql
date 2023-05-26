-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 06:10 AM
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
-- Database: `votingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminname` varchar(50) NOT NULL,
  `adminpass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminname`, `adminpass`) VALUES
('test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `adminacc`
--

CREATE TABLE `adminacc` (
  `adminname` varchar(50) NOT NULL,
  `adminpass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminacc`
--

INSERT INTO `adminacc` (`adminname`, `adminpass`) VALUES
('test', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `audi`
--

CREATE TABLE `audi` (
  `audi_no` varchar(11) NOT NULL,
  `audi_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidatename` varchar(50) NOT NULL,
  `candidatestudentnumber` varchar(50) NOT NULL,
  `candidateage` varchar(50) NOT NULL,
  `candidategender` varchar(10) NOT NULL,
  `candidatecourse` varchar(50) NOT NULL,
  `candidateposition` varchar(50) NOT NULL,
  `candidatepartylist` varchar(50) NOT NULL,
  `candidatepicture` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidatename`, `candidatestudentnumber`, `candidateage`, `candidategender`, `candidatecourse`, `candidateposition`, `candidatepartylist`, `candidatepicture`) VALUES
('Joi I. Mijares', '20-01248', '21', 'Female', 'Bacherlor of Science in Computer Science', 'President', 'C2020', '20-01248.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `current`
--

CREATE TABLE `current` (
  `pres` varchar(50) NOT NULL,
  `vpresi` varchar(50) NOT NULL,
  `vprese` varchar(50) NOT NULL,
  `gensec` varchar(50) NOT NULL,
  `depsec` varchar(50) NOT NULL,
  `trea` varchar(50) NOT NULL,
  `audi` varchar(50) NOT NULL,
  `piom` varchar(50) NOT NULL,
  `piof` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `current`
--

INSERT INTO `current` (`pres`, `vpresi`, `vprese`, `gensec`, `depsec`, `trea`, `audi`, `piom`, `piof`) VALUES
('Randel Batarina', 'Rizarine Malanay', 'Layca Ricafort', 'Cherrylyn Tatoy', 'Paulina Jhenia Marie Angala', 'Micah Joy Yulo', 'Franz Emmalnuel Olerma', 'Vmar Hebreo', 'Nicole Aramil');

-- --------------------------------------------------------

--
-- Table structure for table `depsec`
--

CREATE TABLE `depsec` (
  `depsec_no` varchar(11) NOT NULL,
  `depsec_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gensec`
--

CREATE TABLE `gensec` (
  `gensec_no` varchar(11) NOT NULL,
  `gensec_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listpartylist`
--

CREATE TABLE `listpartylist` (
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listpartylist`
--

INSERT INTO `listpartylist` (`partylist`) VALUES
('C2020');

-- --------------------------------------------------------

--
-- Table structure for table `piof`
--

CREATE TABLE `piof` (
  `piof_no` varchar(11) NOT NULL,
  `piof_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `piom`
--

CREATE TABLE `piom` (
  `piom_no` varchar(11) NOT NULL,
  `piom_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `president`
--

CREATE TABLE `president` (
  `pres_no` varchar(11) NOT NULL,
  `pres_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `president`
--

INSERT INTO `president` (`pres_no`, `pres_name`, `votes`, `partylist`) VALUES
('20-01248', 'Joi I. Mijares', 0, 'C2020');

-- --------------------------------------------------------

--
-- Table structure for table `setsched`
--

CREATE TABLE `setsched` (
  `deadline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setsched`
--

INSERT INTO `setsched` (`deadline`) VALUES
('2023-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `studentlist`
--

CREATE TABLE `studentlist` (
  `studentname` varchar(50) NOT NULL,
  `studentnumber` varchar(11) NOT NULL,
  `studentemail` varchar(50) NOT NULL,
  `studentcourse` varchar(50) NOT NULL,
  `studentyear` varchar(10) NOT NULL,
  `studentsection` varchar(5) NOT NULL,
  `studentcontactnumber` varchar(13) NOT NULL,
  `studentpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentlist`
--

INSERT INTO `studentlist` (`studentname`, `studentnumber`, `studentemail`, `studentcourse`, `studentyear`, `studentsection`, `studentcontactnumber`, `studentpassword`) VALUES
('Kobe Suarez', '20-01428', 'cuterakker26@gmail.com', 'Bachelor of Science in Computer Science', '3rd Year', 'C2020', '09998620864', 'fiAzOrfJX8');

-- --------------------------------------------------------

--
-- Table structure for table `studentvote`
--

CREATE TABLE `studentvote` (
  `sno` varchar(11) NOT NULL,
  `votedpres` varchar(11) NOT NULL,
  `votedvprese` varchar(11) NOT NULL,
  `votedvpresi` varchar(11) NOT NULL,
  `votedgs` varchar(11) NOT NULL,
  `votedds` varchar(11) NOT NULL,
  `votedtrea` varchar(11) NOT NULL,
  `votedaudi` varchar(11) NOT NULL,
  `votedpiom` varchar(11) NOT NULL,
  `votedpiof` varchar(11) NOT NULL,
  `vstatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentvote`
--

INSERT INTO `studentvote` (`sno`, `votedpres`, `votedvprese`, `votedvpresi`, `votedgs`, `votedds`, `votedtrea`, `votedaudi`, `votedpiom`, `votedpiof`, `vstatus`) VALUES
('20-01428', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Not Voted');

-- --------------------------------------------------------

--
-- Table structure for table `totalvotestracker`
--

CREATE TABLE `totalvotestracker` (
  `pres` varchar(50) DEFAULT NULL,
  `pres_totalvote` int(10) DEFAULT NULL,
  `vpresi` varchar(50) DEFAULT NULL,
  `vpresi_totalvote` int(10) DEFAULT NULL,
  `vprese` varchar(50) DEFAULT NULL,
  `vprese_totalvote` int(10) DEFAULT NULL,
  `gensec` varchar(50) DEFAULT NULL,
  `gensec_totalvote` int(10) DEFAULT NULL,
  `depsec` varchar(50) DEFAULT NULL,
  `depsec_totalvote` int(10) DEFAULT NULL,
  `trea` varchar(50) DEFAULT NULL,
  `trea_totalvote` int(10) DEFAULT NULL,
  `audi` varchar(50) DEFAULT NULL,
  `audi_totalvote` int(10) DEFAULT NULL,
  `piom` varchar(50) DEFAULT NULL,
  `piom_totalvote` int(10) DEFAULT NULL,
  `piof` varchar(50) DEFAULT NULL,
  `piof_totalvote` int(10) DEFAULT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trea`
--

CREATE TABLE `trea` (
  `trea_no` varchar(11) NOT NULL,
  `trea_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vprese`
--

CREATE TABLE `vprese` (
  `vprese_no` varchar(11) NOT NULL,
  `vprese_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vpresi`
--

CREATE TABLE `vpresi` (
  `vpresi_no` varchar(11) NOT NULL,
  `vpresi_name` varchar(50) NOT NULL,
  `votes` int(11) NOT NULL,
  `partylist` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audi`
--
ALTER TABLE `audi`
  ADD UNIQUE KEY `partylist` (`partylist`),
  ADD UNIQUE KEY `audi_no` (`audi_no`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD UNIQUE KEY `candidatestudentnumber` (`candidatestudentnumber`);

--
-- Indexes for table `depsec`
--
ALTER TABLE `depsec`
  ADD UNIQUE KEY `partylist` (`partylist`),
  ADD UNIQUE KEY `depsec_no` (`depsec_no`);

--
-- Indexes for table `gensec`
--
ALTER TABLE `gensec`
  ADD UNIQUE KEY `partylist` (`partylist`),
  ADD UNIQUE KEY `gensec_no` (`gensec_no`);

--
-- Indexes for table `piof`
--
ALTER TABLE `piof`
  ADD UNIQUE KEY `partylist` (`partylist`),
  ADD UNIQUE KEY `piof_no` (`piof_no`);

--
-- Indexes for table `piom`
--
ALTER TABLE `piom`
  ADD UNIQUE KEY `partylist` (`partylist`),
  ADD UNIQUE KEY `piom_no` (`piom_no`);

--
-- Indexes for table `president`
--
ALTER TABLE `president`
  ADD UNIQUE KEY `partylist` (`partylist`),
  ADD UNIQUE KEY `pres_no` (`pres_no`);

--
-- Indexes for table `studentlist`
--
ALTER TABLE `studentlist`
  ADD UNIQUE KEY `studentnumber` (`studentnumber`);

--
-- Indexes for table `studentvote`
--
ALTER TABLE `studentvote`
  ADD KEY `studentnumber` (`sno`);

--
-- Indexes for table `totalvotestracker`
--
ALTER TABLE `totalvotestracker`
  ADD UNIQUE KEY `partylist` (`partylist`),
  ADD KEY `audi` (`audi`);

--
-- Indexes for table `trea`
--
ALTER TABLE `trea`
  ADD UNIQUE KEY `partylist` (`partylist`),
  ADD UNIQUE KEY `trea_no` (`trea_no`);

--
-- Indexes for table `vprese`
--
ALTER TABLE `vprese`
  ADD UNIQUE KEY `partylist` (`partylist`),
  ADD UNIQUE KEY `vprese_no` (`vprese_no`);

--
-- Indexes for table `vpresi`
--
ALTER TABLE `vpresi`
  ADD UNIQUE KEY `partylist` (`partylist`),
  ADD UNIQUE KEY `vpresi_no` (`vpresi_no`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `studentvote`
--
ALTER TABLE `studentvote`
  ADD CONSTRAINT `studentnumber` FOREIGN KEY (`sno`) REFERENCES `studentlist` (`studentnumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
