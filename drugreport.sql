-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2017 at 10:28 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drugreport`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `email`, `Name`, `date`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', 'Admin Drugreport', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `text`, `picture`, `status`) VALUES
(1, 'dfhxf', '1482917902_autumn-110668_960_720.jpg', 1),
(3, 'dfhxf', '1482917985_autumn-110668_960_720.jpg', 1),
(5, 'dfhxf', '1482918085_autumn-110668_960_720.jpg', 1),
(6, 'dfhxf', '1482918099_autumn-110668_960_720.jpg', 1),
(10, 'hello', '1482923395_tree-117582_960_720.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_heading`
--

CREATE TABLE `tbl_heading` (
  `id` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_heading`
--

INSERT INTO `tbl_heading` (`id`, `heading`, `status`) VALUES
(1, 'The problem of life isn''t a miracle to solve', 1),
(2, 'Time and tide waits for none', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_linkdata`
--

CREATE TABLE `tbl_linkdata` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `section` tinyint(4) NOT NULL DEFAULT '1',
  `section_box` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_linkdata`
--

INSERT INTO `tbl_linkdata` (`id`, `name`, `link`, `picture`, `status`, `section`, `section_box`, `modified`, `created`) VALUES
(1, 'news deatil by user', 'http://google.com', '1482846261_Chrysanthemum.jpg', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'news deatil by user 3', 'http://google.com', '1482846261_Koala.jpg', 1, 3, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'news deatil by user 4', 'http://google.com', '', 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'news deatil by user 1', 'http://codeyiizen.com', '', 1, 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Trump Cheered at Christmas Eve Mass..', 'http://www.thegatewaypundit.com/2016/12/trump-cheered-at-christmas-eve-church-service-live-stream/', '', 1, 4, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'The truth about drug', 'http://www.drugfreeworld.org/drugfacts/the-truth-about-drugs.html', '', 1, 4, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'World drug report', 'https://www.unodc.org/wdr2016/', '', 1, 5, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '<p>!st one</p>', 'http://www.thegatewaypundit.com/2016/12/trump-cheered-at-christmas-eve-church-service-live-stream/', '1483539375_BingWallpaper-2016-12-16.jpg', 1, 4, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_section`
--

CREATE TABLE `tbl_section` (
  `Id` int(11) NOT NULL,
  `select_box` int(11) NOT NULL,
  `section_name` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_section`
--

INSERT INTO `tbl_section` (`Id`, `select_box`, `section_name`, `order_id`) VALUES
(2, 2, 'jay jay kisan', 1),
(4, 3, 'fghdgf djjfgufa jafhajfasa', 2),
(5, 4, 'sdsd funsuk wangduu', 2),
(8, 1, 'satymevv jayteee', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_text`
--

CREATE TABLE `tbl_text` (
  `Id` int(11) NOT NULL,
  `Header_Text` text NOT NULL,
  `Header_Link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_text`
--

INSERT INTO `tbl_text` (`Id`, `Header_Text`, `Header_Link`) VALUES
(2, 'About Drug Report Here .....', 'gdgg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `Id` int(11) NOT NULL,
  `video_link` text NOT NULL,
  `video_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`Id`, `video_link`, `video_text`) VALUES
(1, 'www.youtube.com', '<p>go yo youtube</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_heading`
--
ALTER TABLE `tbl_heading`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_linkdata`
--
ALTER TABLE `tbl_linkdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_section`
--
ALTER TABLE `tbl_section`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_text`
--
ALTER TABLE `tbl_text`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_heading`
--
ALTER TABLE `tbl_heading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_linkdata`
--
ALTER TABLE `tbl_linkdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_section`
--
ALTER TABLE `tbl_section`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_text`
--
ALTER TABLE `tbl_text`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
