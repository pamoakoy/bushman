-- phpMyAdmin SQL Dump
-- version 3.3.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2011 at 02:55 PM
-- Server version: 5.1.54
-- PHP Version: 5.3.5-1ubuntu7.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xoaxoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `lines_s`
--

CREATE TABLE IF NOT EXISTS `lines_s` (
  `id` varchar(255) NOT NULL,
  `book` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lines_s`
--


-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `book` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--


-- --------------------------------------------------------

--
-- Table structure for table `segmentation_jobs`
--

CREATE TABLE IF NOT EXISTS `segmentation_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '-1',
  `user` varchar(255) DEFAULT NULL,
  `guassian` int(11) DEFAULT '30',
  `line_add` int(11) DEFAULT '0',
  `line_del` int(11) DEFAULT '0',
  `line_drag` int(11) DEFAULT '0',
  `word_add` int(11) DEFAULT '0',
  `word_del` int(11) DEFAULT '0',
  `word_drag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `page` (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `segmentation_jobs`
--


-- --------------------------------------------------------

--
-- Table structure for table `transcription_jobs`
--

CREATE TABLE IF NOT EXISTS `transcription_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `line` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `transcription_jobs`
--


-- --------------------------------------------------------

--
-- Table structure for table `userCake_Groups`
--

CREATE TABLE IF NOT EXISTS `userCake_Groups` (
  `Group_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Group_Name` varchar(255) NOT NULL,
  PRIMARY KEY (`Group_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userCake_Groups`
--


-- --------------------------------------------------------

--
-- Table structure for table `userCake_Users`
--

CREATE TABLE IF NOT EXISTS `userCake_Users` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(150) NOT NULL,
  `Username_Clean` varchar(150) NOT NULL,
  `RealName` varchar(255) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `ActivationToken` varchar(225) NOT NULL,
  `LastActivationRequest` int(11) NOT NULL,
  `LostPasswordRequest` int(1) NOT NULL DEFAULT '0',
  `Active` int(1) NOT NULL,
  `Group_ID` int(11) NOT NULL,
  `SignUpDate` int(11) NOT NULL,
  `LastSignIn` int(11) NOT NULL,
  `seg_count` int(11) NOT NULL DEFAULT '0',
  `trans_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`User_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `userCake_Users`
--

