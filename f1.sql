-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2013 at 06:35 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `f1`
--
CREATE DATABASE IF NOT EXISTS `f1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `f1`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` smallint(6) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `position` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `position`) VALUES
(1, 'php', '', 1),
(2, 'html5', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pm`
--

CREATE TABLE IF NOT EXISTS `pm` (
  `id` bigint(20) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pm`
--

INSERT INTO `pm` (`id`, `id2`, `title`, `user1`, `user2`, `message`, `timestamp`, `user1read`, `user2read`) VALUES
(1, 1, 'test', 1, 2, 'testing', 1378548517, 'yes', 'yes'),
(1, 2, '', 2, 0, 'working', 1378548558, '', ''),
(1, 3, '', 2, 0, 'working', 1378548608, '', ''),
(4, 1, 'work', 2, 1, 'working', 1378548718, 'yes', 'yes'),
(5, 1, 'heloo', 1, 2, 'hiiiiiiiiiii', 1378631412, 'yes', 'yes'),
(6, 1, 'hats off', 1, 3, 'fuck u', 1380969665, 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `parent` smallint(6) NOT NULL,
  `id` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `message` longtext NOT NULL,
  `authorid` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `timestamp2` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`parent`, `id`, `id2`, `title`, `message`, `authorid`, `timestamp`, `timestamp2`) VALUES
(1, 2, 1, 'working', '<img src="http://www.gravatar.com/avatar/cd5fd8162b8daa87ed341ce589969c57?d=http%3A%2F%2Fen.gravatar.com%2Fuserimage%2F52673634%2Fdee1fc6f391b9e90a14e7d24a05235d1.jpg&amp;s=200" alt="Image" />', 1, 1380969197, 1380969197),
(1, 1, 1, 'install', 'how to install wamp', 1, 1380968972, 1380968972);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `signup_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `avatar`, `signup_date`) VALUES
(1, 'varadhan', 'd348f28cdf0e7be129910f28e2ba9cc840c752f0', 'varadhan1995nitt@gmail.com', 'http://www.gravatar.com/avatar/cd5fd8162b8daa87ed341ce589969c57?d=http%3A%2F%2Fen.gravatar.com%2Fuserimage%2F52673634%2Fdee1fc6f391b9e90a14e7d24a05235d1.jpg&s=200', 1378534630),
(2, 'santhosh', '0806b0927a65802677e1bc58a740a42f957953d7', 'kmenon10@gmail.com', '', 1378535414),
(3, 'ananth', '7dc108d19a2513f6455353af182b9e4d3b794ec9', 'ananth@gmail.com', '', 1378740929);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
