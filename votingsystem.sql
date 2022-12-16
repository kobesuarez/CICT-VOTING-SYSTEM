-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 11:04 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `adminuser` varchar(50) NOT NULL,
  `adminpass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`adminuser`, `adminpass`) VALUES
('eoitewircmrcle', 'aweithoerngrlngt');

-- --------------------------------------------------------

--
-- Table structure for table `audi`
--

CREATE TABLE `audi` (
  `audi_no` varchar(11) NOT NULL,
  `audi_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gensec`
--

CREATE TABLE `gensec` (
  `gensec_no` varchar(11) NOT NULL,
  `gensec_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `listpartylist`
--

CREATE TABLE `listpartylist` (
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `piof`
--

CREATE TABLE `piof` (
  `piof_no` varchar(11) NOT NULL,
  `piof_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `piom`
--

CREATE TABLE `piom` (
  `piom_no` varchar(11) NOT NULL,
  `piom_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `president`
--

CREATE TABLE `president` (
  `pres_no` varchar(11) NOT NULL,
  `pres_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `studentlist`
--

CREATE TABLE `studentlist` (
  `studentname` varchar(50) NOT NULL,
  `studentnumber` varchar(11) NOT NULL,
  `studentemail` varchar(50) NOT NULL,
  `studentyear` varchar(10) NOT NULL,
  `studentsection` varchar(5) NOT NULL,
  `studentcontactnumber` varchar(13) NOT NULL,
  `studentpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentlist`
--

INSERT INTO `studentlist` (`studentname`, `studentnumber`, `studentemail`, `studentyear`, `studentsection`, `studentcontactnumber`, `studentpassword`) VALUES
('Kobe Satur Suarez', '20-01421', 'kobe.suarez18@gmail.com', '4th Year', 'C2020', '09998620864', 'kobekobe'),
('Kobe Satur Suarez', '20-01428', 'kobe.suarez18@gmail.com', '1st Year', 'C2020', '09998620864', 'kboe');

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
  `vstatus` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentvote`
--

INSERT INTO `studentvote` (`sno`, `votedpres`, `votedvprese`, `votedvpresi`, `votedgs`, `votedds`, `votedtrea`, `votedaudi`, `votedpiom`, `votedpiof`, `vstatus`) VALUES
('20-01421', '1', '0', '1', '0', '0', '0', '0', '0', '0', 'Not Voted'),
('20-01428', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Voted');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `totalvotestracker`
--

INSERT INTO `totalvotestracker` (`pres`, `pres_totalvote`, `vpresi`, `vpresi_totalvote`, `vprese`, `vprese_totalvote`, `gensec`, `gensec_totalvote`, `depsec`, `depsec_totalvote`, `trea`, `trea_totalvote`, `audi`, `audi_totalvote`, `piom`, `piom_totalvote`, `piof`, `piof_totalvote`, `partylist`) VALUES
(NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, ''),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gay'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'J-line'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Leader'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Maknae'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No Jam Bros'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shiba'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The Alliance'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Twice'),
(NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Unnie');

-- --------------------------------------------------------

--
-- Table structure for table `trea`
--

CREATE TABLE `trea` (
  `trea_no` varchar(11) NOT NULL,
  `trea_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trea`
--

INSERT INTO `trea` (`trea_no`, `trea_name`, `votes`, `partylist`) VALUES
('20-00030', 'Dahyun W. Kim', 1, 'Maknae');

-- --------------------------------------------------------

--
-- Table structure for table `vprese`
--

CREATE TABLE `vprese` (
  `vprese_no` varchar(11) NOT NULL,
  `vprese_name` varchar(50) NOT NULL,
  `votes` int(5) NOT NULL,
  `partylist` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vprese`
--

INSERT INTO `vprese` (`vprese_no`, `vprese_name`, `votes`, `partylist`) VALUES
('20-00026', 'Nayeon M. Im', 1, 'Unnie');

-- --------------------------------------------------------

--
-- Table structure for table `vpresi`
--

CREATE TABLE `vpresi` (
  `vpresi_no` varchar(11) NOT NULL,
  `vpresi_name` varchar(50) NOT NULL,
  `votes` int(11) NOT NULL,
  `partylist` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vpresi`
--

INSERT INTO `vpresi` (`vpresi_no`, `vpresi_name`, `votes`, `partylist`) VALUES
('20-00001', 'Chaeyoung M. Son', 4, 'No Jam Bros');

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
-- Indexes for table `listpartylist`
--
ALTER TABLE `listpartylist`
  ADD UNIQUE KEY `partylist` (`partylist`);

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
