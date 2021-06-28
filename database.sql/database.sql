-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 02:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cakeorder`
--

CREATE TABLE `cakeorder` (
  `id` int(11) NOT NULL,
  `cakeselect` varchar(50) NOT NULL,
  `kg` varchar(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `contactno` varchar(12) NOT NULL,
  `uname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cakeorder`
--

INSERT INTO `cakeorder` (`id`, `cakeselect`, `kg`, `quantity`, `date`, `time`, `contactno`, `uname`) VALUES
(1, 'Pound Cake', '3 KG', 'one', '2021-04-23', '21:34', '7558898939', 'jiju'),
(3, 'Red Velvet', '1 KG', 'two', '2021-04-22', '12:30', '7558898939', 'paru'),
(4, 'Opera Cake', '3 KG', 'one', '2021-04-20', '11:53', '7558898939', 'amrutha');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `uname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fullname`, `address`, `phone`, `uname`, `password`) VALUES
(1, 'jiju', 'waynadu', '23356544', 'jiju', 'jiju'),
(3, 'amrutha', 'thodupuzha', '2346767634', 'amrutha', 'amrutha'),
(4, 'aswin', 'thodupuzha', '2346767634', 'aswin', 'aswin'),
(5, 'paru', 'perumbavoor', '2346767634', 'paru', 'paru'),
(6, 'syama', 'kollam', '2346767634', 'syama', 'syama'),
(7, 'melbin', 'idukki', '2346767634', 'melbin', 'melbin');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fname`, `lname`, `age`) VALUES
(1, 'aswin', 'pushparaj', 24),
(2, 'ammu', 'ks', 20),
(3, 'appu', 'vs', 20),
(4, 'aswin', 'ps', 19),
(5, 'athul', 'raj', 24),
(6, 'athul', 'raj', 24),
(7, 'athul', 'raj', 24);

-- --------------------------------------------------------

--
-- Table structure for table `user905`
--

CREATE TABLE `user905` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user905`
--

INSERT INTO `user905` (`id`, `name`, `password`, `email`, `country`) VALUES
(1, 'ais', 'gvh', 'bvsayschi@gmail.com', 'India'),
(2, 'fytjfy', 'fchygtj', 'asd@gmail.com', 'India'),
(3, 'fsrtth', 'hgvyg', 'abff@gmail.com', 'India'),
(4, 'habrdh', 'jhsfu', 'jjfghfi@gmail.com', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cakeorder`
--
ALTER TABLE `cakeorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user905`
--
ALTER TABLE `user905`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cakeorder`
--
ALTER TABLE `cakeorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user905`
--
ALTER TABLE `user905`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
