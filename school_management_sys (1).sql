-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 12, 2019 at 05:07 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicstaff`
--

DROP TABLE IF EXISTS `academicstaff`;
CREATE TABLE IF NOT EXISTS `academicstaff` (
  `empId` int(11) NOT NULL,
  `isbn` varchar(200) NOT NULL,
  `cid` varchar(5) NOT NULL,
  PRIMARY KEY (`empId`),
  KEY `academicstaff_ibfk_1` (`isbn`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `academic_subject`
--

DROP TABLE IF EXISTS `academic_subject`;
CREATE TABLE IF NOT EXISTS `academic_subject` (
  `empId` varchar(15) NOT NULL,
  `sid` varchar(200) NOT NULL,
  PRIMARY KEY (`empId`,`sid`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `isbn` varchar(200) NOT NULL,
  `bname` varchar(200) NOT NULL,
  `NoOfCopy` int(151) DEFAULT NULL,
  `author` varchar(200) NOT NULL,
  `issuedDate` date DEFAULT NULL,
  `dateDue` date DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`isbn`, `bname`, `NoOfCopy`, `author`, `issuedDate`, `dateDue`) VALUES
('002', 'eeee', NULL, 'egdf', NULL, NULL),
('testbook', 'book', 10, 'rtyyyy', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `cId` varchar(50) NOT NULL,
  `toolNo` varchar(50) NOT NULL,
  `cName` varchar(200) NOT NULL,
  `empid` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`cId`,`toolNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cId`, `toolNo`, `cName`, `empid`) VALUES
('13M2', '1002', '13M2', 'ttt');

-- --------------------------------------------------------

--
-- Table structure for table `dataentrycontroller`
--

DROP TABLE IF EXISTS `dataentrycontroller`;
CREATE TABLE IF NOT EXISTS `dataentrycontroller` (
  `dEmpId` varchar(150) NOT NULL,
  `recordId` varchar(100) NOT NULL,
  PRIMARY KEY (`dEmpId`,`recordId`),
  KEY `recordId` (`recordId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataentrycontroller`
--

INSERT INTO `dataentrycontroller` (`dEmpId`, `recordId`) VALUES
('testdemp', 'testfinance');

-- --------------------------------------------------------

--
-- Table structure for table `dec_inventory`
--

DROP TABLE IF EXISTS `dec_inventory`;
CREATE TABLE IF NOT EXISTS `dec_inventory` (
  `dEmpId` varchar(50) NOT NULL,
  `toolNo` varchar(50) NOT NULL,
  KEY `dEmpId` (`dEmpId`),
  KEY `toolNo` (`toolNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `empId` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `dob` date NOT NULL,
  `joinDate` date NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phoneNo` int(11) NOT NULL,
  `idetails` varchar(100) NOT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empId`, `name`, `address`, `dob`, `joinDate`, `gender`, `phoneNo`, `idetails`, `Email`, `Password`) VALUES
('1234', 'testdata', 'test', '2019-05-03', '2019-05-16', 1, 123456, '2019-05-22 00:00:00', 'admin@kcc.com', 'qwerty'),
('emp1', 'testemp', 'KANDY', '2019-03-01', '2019-03-02', 1, 11, '2019-03-01 00:00:00', '', ''),
('EP123', 'hngh', 'h', '1999-12-06', '2019-04-01', 0, 0, 'library', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employeedetails`
--

DROP TABLE IF EXISTS `employeedetails`;
CREATE TABLE IF NOT EXISTS `employeedetails` (
  `empId` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `noOfCildrens` int(11) NOT NULL,
  `guardianName` varchar(200) NOT NULL,
  `gPhoneNo` int(11) NOT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `eventId` varchar(50) NOT NULL,
  `eName` varchar(200) NOT NULL,
  `eDate` date NOT NULL,
  `cost` double NOT NULL,
  `eIncome` double NOT NULL,
  `empId` varchar(50) NOT NULL,
  `recordId` varchar(50) NOT NULL,
  PRIMARY KEY (`eventId`),
  KEY `empId` (`empId`),
  KEY `recordId` (`recordId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

DROP TABLE IF EXISTS `finance`;
CREATE TABLE IF NOT EXISTS `finance` (
  `recordId` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `sponserDetails` varchar(200) NOT NULL,
  `expenditure` double NOT NULL,
  `income` double NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`recordId`, `date`, `sponserDetails`, `expenditure`, `income`, `description`) VALUES
('testfinance', '2019-03-01', 'abc', 1000, 500, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `toolNo` varchar(50) NOT NULL,
  `itemType` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `toolName` varchar(200) NOT NULL,
  `invenType` varchar(50) NOT NULL,
  PRIMARY KEY (`toolNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nonacademic`
--

DROP TABLE IF EXISTS `nonacademic`;
CREATE TABLE IF NOT EXISTS `nonacademic` (
  `empId` varchar(50) NOT NULL,
  `salary` double NOT NULL,
  PRIMARY KEY (`empId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parentdetails`
--

DROP TABLE IF EXISTS `parentdetails`;
CREATE TABLE IF NOT EXISTS `parentdetails` (
  `parentId` varchar(150) NOT NULL,
  `pName` varchar(150) NOT NULL,
  `bday` varchar(150) NOT NULL,
  `occupation` varchar(150) NOT NULL,
  `conatctNo` int(11) NOT NULL,
  `indexNo` int(50) NOT NULL,
  PRIMARY KEY (`parentId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `pId` varchar(50) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `recordId` varchar(50) NOT NULL,
  `indexNo` int(50) NOT NULL,
  PRIMARY KEY (`pId`),
  KEY `recordId` (`recordId`),
  KEY `indexNo` (`indexNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `indexNo` int(100) NOT NULL,
  `name` varchar(150) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `address` varchar(500) NOT NULL,
  `bday` date NOT NULL,
  `phone` int(11) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `did` varchar(150) NOT NULL,
  `isbn` varchar(200) NOT NULL,
  PRIMARY KEY (`indexNo`),
  KEY `isbn` (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`indexNo`, `name`, `gender`, `address`, `bday`, `phone`, `cid`, `did`, `isbn`) VALUES
(1999000001, 'A.G.L.K karunaratne', 'male', '51/4 kegalle', '2000-03-11', 718226523, '13M1', 'abcd', 'testbook'),
(1999000002, 'E.M Rathnayake', 'female', '7/12 Jaffna', '2000-03-13', 710871071, '13M1', 'abcd', 'testbook'),
(1999000003, 'R.L.M.N Piyadasa', 'femal', '6/45 badulla', '2000-03-06', 715224855, '13M1', 'abcd', 'testbook'),
(1999000004, 'A.N.H Karunadasa', 'male', '7/21 kandy', '2000-04-16', 725448692, '13M1', 'abcd', 'testbook'),
(1999000005, 'B.N.M Perera', 'male', '21 nuwaraeliya', '2000-04-15', 765214689, '13M1', 'abcd', 'testbook'),
(1999000006, 'R.T Kaluarachchi', 'female', '04 galle', '2000-04-09', 754128569, '13M1', 'abcd', 'testbook'),
(1999000007, 'P.G.H Edirisinghe', 'female', '5/65 nigambo', '2000-04-24', 785463215, '13M1', 'abcd', 'testbook'),
(2006000001, 'D.G.M.I Dissanayake', 'male', '23/7 kandy', '2007-03-01', 770012348, '6B', 'abcd', 'testbook'),
(2006000003, 'K.T.Y Thalgahagoda', 'male', '8/8 negombo', '2007-05-08', 715445962, '6B', 'abcd', 'testbook'),
(2006000004, 'K.A.L Chanchala', 'female', '20 Kegalle', '2007-04-09', 715224685, '6B', 'abcd', 'testbook'),
(2006000005, 'S.G.H.I Sandaruwan', 'male', '5/85 Kurunegala', '2007-04-03', 725448692, '6B', 'abcd', 'testbook'),
(2006000006, 'S.L.K.M Ramanayake', 'male', '5/78 Kurunegala', '2007-09-13', 812456329, '6B', 'abcd', 'testbook'),
(2006000007, 'A.H.G Ahamad', 'male', '8/52 Kurunegala', '2007-06-18', 785663245, '6B', 'abcd', 'testbook'),
(2006000008, 'L.K.M Sirisena', 'female', '5/15 Wattegama', '2007-10-29', 718224695, '6B', 'abcd', 'testbook'),
(2006000009, 'S.J.F.T Shanumugam', 'male', '8/13 Wattala', '2007-11-11', 785442169, '6B', 'abcd', 'testbook'),
(2006000010, 'K.C.G.M Bhanuka', 'male', '1/20 Panadura', '2007-12-30', 725684463, '6B', 'abcd', 'testbook'),
(2007000001, 'D.G.M.I Dissanayake', 'male', '23/7 kandy', '2007-03-01', 770012348, '7A', 'abcd', 'testbook'),
(2007000002, 'K.T.Y Thalgahagoda', 'male', '8/8 negombo', '2007-05-08', 715445962, '7A', 'abcd', 'testbook'),
(2007000003, 'K.A.L Chanchala', 'female', '20 Kegalle', '2007-04-09', 715224685, '7A', 'abcd', 'testbook'),
(2007000004, 'S.G.H.I Sandaruwan', 'male', '5/85 Kurunegala', '2007-04-03', 725448692, '7A', 'abcd', 'testbook'),
(2007000005, 'S.L.K.M Ramanayake', 'male', '5/78 Kurunegala', '2007-09-13', 812456329, '7A', 'abcd', 'testbook'),
(2007000006, 'A.H.G Ahamad', 'male', '8/52 Kurunegala', '2007-06-18', 785663245, '7A', 'abcd', 'testbook'),
(2007000007, 'L.K.M Sirisena', 'female', '5/15 Wattegama', '2007-10-29', 718224695, '7A', 'abcd', 'testbook'),
(2007000008, 'S.J.F.T Shanumugam', 'male', '8/13 Wattala', '2007-11-11', 785442169, '7A', 'abcd', 'testbook'),
(2007000009, 'K.C.G.M Bhanuka', 'male', '1/20 Panadura', '2007-12-30', 725684463, '7A', 'abcd', 'testbook');

-- --------------------------------------------------------

--
-- Table structure for table `student_subject`
--

DROP TABLE IF EXISTS `student_subject`;
CREATE TABLE IF NOT EXISTS `student_subject` (
  `indexNo` int(11) NOT NULL,
  `cid` varchar(150) NOT NULL,
  `sid` varchar(15) NOT NULL,
  `term1` varchar(150) NOT NULL,
  `term2` varchar(150) NOT NULL,
  `term3` varchar(150) NOT NULL,
  UNIQUE KEY `indexNo` (`indexNo`,`cid`,`sid`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_subject`
--

INSERT INTO `student_subject` (`indexNo`, `cid`, `sid`, `term1`, `term2`, `term3`) VALUES
(1999000001, '13M1', 'CHEMISTRY', '76', '88', '22'),
(1999000001, '13M1', 'MATHEMATICS', '79', '', ''),
(1999000001, '13M1', 'PHYSICS', '65', '', ''),
(1999000002, '13M1', 'CHEMISTRY', '73', '88', '22'),
(1999000002, '13M1', 'MATHEMATICS', '46', '', ''),
(1999000002, '13M1', 'PHYSICS', '78', '', ''),
(1999000003, '13M1', 'CHEMISTRY', '89', '88', '2'),
(1999000003, '13M1', 'MATHEMATICS', '79', '', ''),
(1999000003, '13M1', 'PHYSICS', '54', '', ''),
(1999000004, '13M1', 'CHEMISTRY', '43', '88', '2'),
(1999000004, '13M1', 'MATHEMATICS', '13', '', ''),
(1999000004, '13M1', 'PHYSICS', '31', '', ''),
(1999000005, '13M1', 'CHEMISTRY', '13', '88', '2'),
(1999000005, '13M1', 'MATHEMATICS', '46', '', ''),
(1999000005, '13M1', 'PHYSICS', '64', '', ''),
(1999000006, '13M1', 'CHEMISTRY', '49', '88', '23'),
(1999000006, '13M1', 'MATHEMATICS', '79', '', ''),
(1999000006, '13M1', 'PHYSICS', '79', '', ''),
(1999000007, '13M1', 'CHEMISTRY', '53', '99', '2'),
(1999000007, '13M1', 'MATHEMATICS', '79', '', ''),
(2006000001, '6B', 'BUDDHISM', '79', '', ''),
(2006000001, '6B', 'DANCING', '65', '', ''),
(2006000001, '6B', 'ENGLISH', '34', '', ''),
(2006000001, '6B', 'GEOGRAPHY', '79', '', ''),
(2006000001, '6B', 'HEALTH', '46', '', ''),
(2006000001, '6B', 'HISTORY', '56', '', ''),
(2006000001, '6B', 'MATHEMATICS', '79', '', ''),
(2006000001, '6B', 'SCIENCE', '89', '', ''),
(2006000001, '6B', 'SINHALA', '49', '', ''),
(2006000003, '6B', 'BUDDHISM', '22', '', ''),
(2006000003, '6B', 'MATHEMATICS', '65', '', ''),
(2006000004, '6B', 'BUDDHISM', '22', '', ''),
(2006000004, '6B', 'MATHEMATICS', '34', '', ''),
(2006000005, '6B', 'BUDDHISM', '22', '', ''),
(2006000005, '6B', 'MATHEMATICS', '79', '', ''),
(2006000006, '6B', 'BUDDHISM', '22', '', ''),
(2006000006, '6B', 'MATHEMATICS', '46', '', ''),
(2006000007, '6B', 'BUDDHISM', '22', '', ''),
(2006000007, '6B', 'MATHEMATICS', '56', '', ''),
(2006000008, '6B', 'BUDDHISM', '22', '', ''),
(2006000008, '6B', 'MATHEMATICS', '89', '', ''),
(2006000009, '6B', 'BUDDHISM', '22', '', ''),
(2006000009, '6B', 'MATHEMATICS', '49', '', ''),
(2006000010, '6B', 'BUDDHISM', '22', '', ''),
(2006000010, '6B', 'MATHEMATICS', '26', '', ''),
(2007000001, '7A', 'ENGLISH', '99', '', ''),
(2007000002, '7A', 'ENGLISH', '99', '', ''),
(2007000003, '7A', 'ENGLISH', '99', '', ''),
(2007000004, '7A', 'ENGLISH', '99', '', ''),
(2007000005, '7A', 'ENGLISH', '99', '', ''),
(2007000006, '7A', 'ENGLISH', '99', '', ''),
(2007000007, '7A', 'ENGLISH', '99', '', ''),
(2007000008, '7A', 'ENGLISH', '99', '', ''),
(2007000009, '7A', 'ENGLISH', '99', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `sid` varchar(150) NOT NULL,
  `sname` varchar(150) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `sname`) VALUES
('ACCOUNTING', 'ACCOUNTING'),
('ART', 'ART'),
('BUDDHISM', 'BUDDHISM'),
('BUSSINESS_STUDIES', 'BUSSINESS_STUDIES'),
('CHEMISTRY', 'CHEMISTRY'),
('DANCING', 'DANCING'),
('ECONOMICS', 'ECONOMICS'),
('ENGLISH', 'ENGLISH'),
('GEOGRAPHY', 'GEOGRAPHY'),
('HEALTH', 'HEALTH'),
('HISTORY', 'HISTORY'),
('LOGIC', 'LOGIC'),
('MATHEMATICS', 'MATHEMATICS'),
('MUSIC', 'MUSIC'),
('PHYSICS', 'PHYSICS'),
('POLITICS', 'POLITICS'),
('SCIENCE', 'SCIENCE'),
('SINHALA', 'SINHALA'),
('TAMIL', 'TAMIL');

-- --------------------------------------------------------

--
-- Table structure for table `timetableimg`
--

DROP TABLE IF EXISTS `timetableimg`;
CREATE TABLE IF NOT EXISTS `timetableimg` (
  `timetable` longblob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
CREATE TABLE IF NOT EXISTS `transport` (
  `did` varchar(100) NOT NULL,
  `vehicleID` varchar(150) NOT NULL,
  `dname` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `availability` tinyint(1) DEFAULT NULL,
  `distance` double NOT NULL,
  `tdate` varchar(150) NOT NULL,
  `fee` double NOT NULL,
  `DempId` varchar(50) DEFAULT NULL,
  `recordId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`did`, `vehicleID`, `dname`, `description`, `availability`, `distance`, `tdate`, `fee`, `DempId`, `recordId`) VALUES
('12345', 'bus1', 'Nethmi', 'tgrfedws', NULL, 7, '2018-04-09', 3458, NULL, NULL),
('123456', 'bus1', 'jhgfdsbn', '23456', NULL, 8, '', 100, NULL, NULL),
('234', 'bus1', 'Navodya', 'tgrfrfed', NULL, 5, '', 1390, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academicstaff`
--
ALTER TABLE `academicstaff`
  ADD CONSTRAINT `academicstaff_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `books` (`isbn`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `academicstaff_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `class` (`cId`);

--
-- Constraints for table `academic_subject`
--
ALTER TABLE `academic_subject`
  ADD CONSTRAINT `academic_subject_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`),
  ADD CONSTRAINT `academic_subject_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `subject` (`sid`);

--
-- Constraints for table `dataentrycontroller`
--
ALTER TABLE `dataentrycontroller`
  ADD CONSTRAINT `dataentrycontroller_ibfk_1` FOREIGN KEY (`recordId`) REFERENCES `finance` (`recordId`);

--
-- Constraints for table `dec_inventory`
--
ALTER TABLE `dec_inventory`
  ADD CONSTRAINT `dec_inventory_ibfk_1` FOREIGN KEY (`dEmpId`) REFERENCES `employee` (`empId`),
  ADD CONSTRAINT `dec_inventory_ibfk_2` FOREIGN KEY (`toolNo`) REFERENCES `inventory` (`toolNo`);

--
-- Constraints for table `employeedetails`
--
ALTER TABLE `employeedetails`
  ADD CONSTRAINT `employeedetails_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`),
  ADD CONSTRAINT `event_ibfk_2` FOREIGN KEY (`recordId`) REFERENCES `finance` (`recordId`);

--
-- Constraints for table `nonacademic`
--
ALTER TABLE `nonacademic`
  ADD CONSTRAINT `nonacademic_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `employee` (`empId`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`recordId`) REFERENCES `finance` (`recordId`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`indexNo`) REFERENCES `student` (`indexNo`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`isbn`) REFERENCES `books` (`isbn`) ON DELETE NO ACTION;

--
-- Constraints for table `student_subject`
--
ALTER TABLE `student_subject`
  ADD CONSTRAINT `student_subject_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `subject` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
