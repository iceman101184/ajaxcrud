-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2013 at 10:14 PM
-- Server version: 5.0.96-community
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ajaxcrud_demos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblAttendee`
--

CREATE TABLE IF NOT EXISTS `tblAttendee` (
  `pkAttendeeID` int(11) NOT NULL auto_increment,
  `fldFirstName` varchar(25) default NULL,
  `fldLastName` varchar(35) default NULL,
  `fldPhone` varchar(25) default NULL,
  `fldAttending` tinyint(4) default NULL,
  `fldEventDate` date default NULL,
  `fldWillBeLate` tinyint(4) default NULL,
  `fldTimeArriving` varchar(15) default NULL,
  PRIMARY KEY  (`pkAttendeeID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblAttendee`
--

INSERT INTO `tblAttendee` (`pkAttendeeID`, `fldFirstName`, `fldLastName`, `fldPhone`, `fldAttending`, `fldEventDate`, `fldWillBeLate`, `fldTimeArriving`) VALUES
(1, 'Sean', 'Dempsey', '(603) 978-8841', 1, '2013-05-08', NULL, NULL),
(2, 'Jing', 'Ling', '', 1, '2013-05-08', NULL, NULL),
(3, 'Christian', 'Diehl', '', 0, NULL, NULL, NULL),
(4, 'Patrick', 'Whisper', '', 1, NULL, NULL, NULL),
(5, 'Ian', 'Cole', '', 1, '2013-05-08', NULL, NULL),
(6, 'Jeff', 'Heim', '', 0, NULL, NULL, NULL),
(7, 'Brian', 'Not going stop checking my name', '', 0, NULL, NULL, NULL),
(8, 'Norma', 'Madrid', '', 0, NULL, NULL, NULL),
(9, 'Aleksandr', 'Lassonde', '(603) 848-2589', 1, '2013-05-08', NULL, NULL),
(10, 'Jeff', 'Nolin', '', 0, NULL, NULL, NULL),
(11, 'Erik', 'Williams', '', 0, NULL, NULL, NULL),
(28, 'Norma', '\"Capital of Spain\"', '', 0, '2013-05-15', 0, ''),
(21, 'Ian', 'Cole Train', '', 0, '2013-05-15', 0, ''),
(22, 'Sasha', 'Lassonder', '', 0, '2013-05-15', 0, '17:30'),
(23, 'Patrick', 'Walker Texas Ranger', '', 0, '2013-05-15', 0, ''),
(25, 'Jeff', 'Heim', '', 0, '2013-05-15', 1, '06:15'),
(26, 'Rye Bread', 'Catalano', '', 0, '2013-05-15', 0, ''),
(27, 'Sean', 'Dempsey', '', 0, '2013-05-15', 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
