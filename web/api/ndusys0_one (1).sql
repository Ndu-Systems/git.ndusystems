-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2017 at 12:15 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ndusys0_one`
--

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `datesent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `msg`, `datesent`) VALUES
(7, 'test email\r\n\nRegards\nName :Freedom Khanyile  Cell : 746958064 Email : nduduzo.nkululeko@yahoo.com , From: nduduzo.nkululeko@yahoo.com\r\nCC: freedom.khanyile1@gmail.com', 'Friday 18th of August 2017 05:02:14 AM'),
(8, 'test email\r\n\nRegards\nName :Freedom Khanyile  Cell : 746958064 Email : nduduzo.nkululeko@yahoo.com , From: nduduzo.nkululeko@yahoo.com\r\nCC: freedom.khanyile1@gmail.com', 'Friday 18th of August 2017 05:02:51 AM'),
(9, 'sa\r\n\nRegards\nName :Freedom Khanyile  Cell : 746958064 Email : nduduzo.nkululeko@yahoo.com , From: nduduzo.nkululeko@yahoo.com\r\nCC: freedom.khanyile1@gmail.com', 'Monday 21st of August 2017 01:19:05 PM'),
(10, 'http://www.free-css.com/free-css-templates/page217/megakit\n\n\r\n\nRegards\nName :ndu  Cell : 823802 Email : ndu@mail.com , From: ndu@mail.com\r\nCC: freedom.khanyile1@gmail.com', 'Wednesday 30th of August 2017 02:39:07 PM'),
(11, 'I was approached by someone he wants a simple radio station mobile app for more specs you can contact him \nmuza@webmail.co.za \nmobile 0733766369\r\n\nRegards\nName :Thapelo  Cell : 0727400911 Email : tfmorupane@gmail.com , From: tfmorupane@gmail.com\r\nCC: freedom.khanyile1@gmail.com', 'Thursday 7th of September 2017 10:37:31 AM'),
(12, 'hello I have someone from jozi who s in need for a website/system\n\nRegards\n\nMaziya loh\r\n\nRegards\nName :Siphiwe  Cell : 0824732764 Email : maziya.sphiwe@gmail.com , From: maziya.sphiwe@gmail.com\r\nCC: freedom.khanyile1@gmail.com', 'Tuesday 26th of September 2017 09:43:36 AM'),
(13, 'Test m17093099298057 3333\n28-30-32\r\n\nRegards\nName :Freedom Khanyile  Cell : 746958064 Email : nduduzo.nkululeko@yahoo.com , From: nduduzo.nkululeko@yahoo.com\r\nCC: freedom.khanyile1@gmail.com', 'Saturday 30th of September 2017 11:10:14 AM');

-- --------------------------------------------------------

--
-- Table structure for table `fearured`
--

CREATE TABLE `fearured` (
  `id` int(10) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `pass` varchar(20) NOT NULL,
  `image` text NOT NULL,
  `notes` text NOT NULL,
  `date_created` text NOT NULL,
  `weburl` text NOT NULL,
  `status` varchar(25) NOT NULL,
  `city` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fearured`
--

INSERT INTO `fearured` (`id`, `name`, `email`, `tel`, `address`, `pass`, `image`, `notes`, `date_created`, `weburl`, `status`, `city`) VALUES
(1, 'Ndu Systems', 'info@ndu-systems.net', '011464546', 'Maboneng', 'pass', 'http://localhost:8080/git.ndusystems/web/images/3.jpg', 'Webs', '', 'ndu-systems.net', '', ''),
(4, 'Google', 'info@google.com', '4454646', '163 5th St, Sandhurst, Sandton, 2196', 'ssss', 'http://localhost:8080/git.ndusystems/web/api/uploads/1511954035icon.PNG\r\n', 'Sandton City is a shopping center in Sandton, Johannesburg, South Africa. It was founded and owned by the property development company Rapp and Maister. The center opened its doors to the public on September 12, 1973. The center has a gross leasable area of 128,000 m2 (1,380,000 sq ft) of retail', '2017-11-29T11:13:55.608Z', 'https://www.google.co.za/', 'Active', 'Sandton');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`) VALUES
(1, 'Ndumiso', 'ndu@mail.com', 'pass'),
(2, 'dsds', 'john@mail.com', ''),
(3, 'Freedom Khanyile', 'freedom@mail.com', 'opass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fearured`
--
ALTER TABLE `fearured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `fearured`
--
ALTER TABLE `fearured`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
