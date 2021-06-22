-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 11:15 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u2_egzaminas`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `courseId` int(11) NOT NULL,
  `comment` varchar(225) COLLATE utf16_lithuanian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`courseId`, `comment`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons'),
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons'),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons'),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons'),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo cons');

-- --------------------------------------------------------

--
-- Table structure for table `coursesinfo`
--

CREATE TABLE `coursesinfo` (
  `courseId` int(11) NOT NULL,
  `author` varchar(40) COLLATE utf16_lithuanian_ci NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `courseName` varchar(40) COLLATE utf16_lithuanian_ci NOT NULL,
  `shortDesc` varchar(40) COLLATE utf16_lithuanian_ci NOT NULL,
  `longDesc` varchar(255) COLLATE utf16_lithuanian_ci DEFAULT NULL,
  `popularity` int(11) DEFAULT NULL,
  `imgSrc` varchar(255) COLLATE utf16_lithuanian_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Dumping data for table `coursesinfo`
--

INSERT INTO `coursesinfo` (`courseId`, `author`, `createDate`, `courseName`, `shortDesc`, `longDesc`, `popularity`, `imgSrc`, `price`) VALUES
(1, 'Jonas Jonaitis', '2021-06-22 12:04:22', 'PHP Pagrindai', 'Trumpas PHP kursas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 100, 'img/php.jpg', 200),
(2, 'Petras Petraitis', '2021-06-22 12:04:22', 'HTML/CSS Įvadas', 'Įvadas į frontend', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 2000, 'img/css.jpg', 100),
(3, 'Andrius Andriukaitis', '2021-06-22 12:06:50', 'Pažintis su Git', 'Įvadas į GIT ir GITHUB', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 5, 'img/git.jpg', 20),
(4, 'Paulius Pauliukaitis', '2021-06-22 12:06:50', 'JavaScript Žaliems', 'JavaScript pradedantiesiems', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 80, 'img/js.jpg', 800);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `courseId` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_lithuanian_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`courseId`, `rating`) VALUES
(1, 5),
(1, 5),
(1, 5),
(1, 4),
(1, 5),
(1, 3),
(2, 5),
(2, 1),
(2, 3),
(3, 5),
(2, 5),
(2, 5),
(4, 5),
(2, 3),
(2, 2),
(2, 5),
(2, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `coursesinfo`
--
ALTER TABLE `coursesinfo`
  ADD PRIMARY KEY (`courseId`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD KEY `courseId` (`courseId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `coursesinfo` (`courseId`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `coursesinfo` (`courseId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
