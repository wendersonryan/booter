-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2011 at 05:17 AM
-- Server version: 5.0.91
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `redefine_v3`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `booter_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--


-- --------------------------------------------------------

--
-- Table structure for table `getshells`
--

CREATE TABLE IF NOT EXISTS `getshells` (
  `URL` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `getshells`
--


-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `username` text NOT NULL,
  `ip` text NOT NULL,
  `time` text NOT NULL,
  `port` text NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(1000) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(1000) NOT NULL,
  `author` varchar(1000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `news`
--


-- --------------------------------------------------------

--
-- Table structure for table `postshells`
--

CREATE TABLE IF NOT EXISTS `postshells` (
  `URL` varchar(9001) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postshells`
--


-- --------------------------------------------------------

--
-- Table structure for table `shellpool`
--

CREATE TABLE IF NOT EXISTS `shellpool` (
  `url` varchar(254) NOT NULL,
  `uts` int(15) NOT NULL default '0',
  `tbl` varchar(32) NOT NULL,
  `qry` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shellpool`
--


-- --------------------------------------------------------

--
-- Table structure for table `slowloris`
--

CREATE TABLE IF NOT EXISTS `slowloris` (
  `URL` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slowloris`
--


-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE IF NOT EXISTS `updates` (
  `id` int(10) NOT NULL auto_increment,
  `message` varchar(1000) NOT NULL,
  `date` varchar(1000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `updates`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL auto_increment,
  `md5_id` varchar(200) collate latin1_general_ci NOT NULL default '',
  `full_name` tinytext collate latin1_general_ci NOT NULL,
  `user_name` varchar(200) collate latin1_general_ci NOT NULL default '',
  `user_email` varchar(220) collate latin1_general_ci NOT NULL default '',
  `user_level` tinyint(4) NOT NULL default '1',
  `pwd` varchar(220) collate latin1_general_ci NOT NULL default '',
  `address` text collate latin1_general_ci NOT NULL,
  `country` varchar(200) collate latin1_general_ci NOT NULL default '',
  `tel` varchar(200) collate latin1_general_ci NOT NULL default '',
  `fax` varchar(200) collate latin1_general_ci NOT NULL default '',
  `website` text collate latin1_general_ci NOT NULL,
  `date` varchar(1000) collate latin1_general_ci NOT NULL,
  `users_ip` varchar(200) collate latin1_general_ci NOT NULL default '',
  `approved` int(1) NOT NULL default '0',
  `activation_code` int(10) NOT NULL default '0',
  `banned` int(1) NOT NULL default '0',
  `ckey` varchar(220) collate latin1_general_ci NOT NULL default '',
  `ctime` varchar(220) collate latin1_general_ci NOT NULL default '',
  `myAttacks` varchar(5000) collate latin1_general_ci NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_email` (`user_email`),
  FULLTEXT KEY `idx_search` (`full_name`,`address`,`user_email`,`user_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `users`
--

