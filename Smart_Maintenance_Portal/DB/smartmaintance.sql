-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 11:52 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartmaintance`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcom`
--

CREATE TABLE IF NOT EXISTS `addcom` (
`id` int(10) NOT NULL,
  `title` varchar(40) NOT NULL,
  `desc` varchar(40) NOT NULL,
  `department` varchar(20) NOT NULL,
  `date` varchar(10) NOT NULL,
  `image` blob NOT NULL,
  `email` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `addcom`
--

INSERT INTO `addcom` (`id`, `title`, `desc`, `department`, `date`, `image`, `email`, `status`) VALUES
(5, 'electrical power', 'electricity cut ', 'electrical', '2222-12-11', 0x4368727973616e7468656d756d2e6a7067, 'jaykumar@gmail.com', 'Completed'),
(6, 'water supply', 'water supply pipe broken', 'water', '2022-02-11', 0x4465736572742e6a7067, 'kuldeep@gmail.com', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `aemail` varchar(20) NOT NULL,
  `apass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aemail`, `apass`) VALUES
('Admin@gmail.com', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`id` int(10) NOT NULL,
  `comment` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `deptdetail`
--

CREATE TABLE IF NOT EXISTS `deptdetail` (
`id` int(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `deptname` varchar(40) NOT NULL,
  `taluka` varchar(40) NOT NULL,
  `district` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `deptdetail`
--

INSERT INTO `deptdetail` (`id`, `email`, `password`, `deptname`, `taluka`, `district`, `address`, `mobile`) VALUES
(3, 'jay@gmail.com', '123', 'water', '12345678', 'shirpur', 'shirpur', 'dhule'),
(4, 'kr@gmail.com', '123', 'electrical', '987654321', 'shirpur', 'shirpur', 'dhule'),
(5, 'dipak@gmail.com', '123', 'road', '33333333', 'shirpur', 'shirpur', 'dhule');

-- --------------------------------------------------------

--
-- Table structure for table `helpcontact`
--

CREATE TABLE IF NOT EXISTS `helpcontact` (
  `name` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `helpcontact`
--

INSERT INTO `helpcontact` (`name`, `contact`) VALUES
('admin', '8876537');

-- --------------------------------------------------------

--
-- Table structure for table `road`
--

CREATE TABLE IF NOT EXISTS `road` (
`id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `location` varchar(40) NOT NULL,
  `department` varchar(20) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `road`
--

INSERT INTO `road` (`id`, `name`, `location`, `department`, `date`) VALUES
(1, 'ganesh', 'shirpur', 'hemant', '121212'),
(2, 'shirpur-dhule', 'shirpur', 'road', '2022-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `password`, `address`) VALUES
(1, 'kuldeep', '7499652325', 'kuldeep@gmail.com', '1234', 'shirpur'),
(2, 'jaykumar', '1234567890', 'jaykumar@gmail.com', '12345', 'shirpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcom`
--
ALTER TABLE `addcom`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deptdetail`
--
ALTER TABLE `deptdetail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `road`
--
ALTER TABLE `road`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcom`
--
ALTER TABLE `addcom`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deptdetail`
--
ALTER TABLE `deptdetail`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `road`
--
ALTER TABLE `road`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
