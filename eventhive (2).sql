-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 02:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventhive`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_detail`
--

CREATE TABLE `event_detail` (
  `sno` int(11) NOT NULL,
  `event_id` varchar(122) NOT NULL,
  `user_name` varchar(110) NOT NULL,
  `event_name` varchar(110) NOT NULL,
  `event_type` varchar(110) NOT NULL,
  `event_location` varchar(112) NOT NULL,
  `event_venue` varchar(112) NOT NULL,
  `event_date` varchar(44) NOT NULL,
  `event_start` varchar(70) NOT NULL,
  `event_end` varchar(120) NOT NULL,
  `event_approver` varchar(110) NOT NULL,
  `req_for_joining` mediumtext NOT NULL,
  `event_description` longtext NOT NULL,
  `event_status` varchar(55) NOT NULL,
  `event_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_detail`
--

INSERT INTO `event_detail` (`sno`, `event_id`, `user_name`, `event_name`, `event_type`, `event_location`, `event_venue`, `event_date`, `event_start`, `event_end`, `event_approver`, `req_for_joining`, `event_description`, `event_status`, `event_img`) VALUES
(1, 'EHive9154058', 'ankitsharma', 'Web DEv', 'Collab Event', 'BBD University', 'Floor 2, Room 210', '2024-12-18', '2:00 pm', '3:00 pm', 'ankitsharma', 'You should have react knowledge and a laptop ', 'DevFest is a series of global developer conferences\r\n                                 hosted by Google Developer Groups (GDGs) around \r\n                                the world. These events bring together dev', 'approved', ''),
(4, 'EVH12133443', 'vishalsingh', 'App dev hack', 'hackathon', 'BBD University', 'Floor 5, Room 510', '12-12-24', '11:30', '02:30', 'vishalsingh', 'Come with a laptop', 'Join us for a thrilling 24-hour hackathon where innovation knows no bounds! Collaborate with brilliant minds, solve real-world problems, and build groundbreaking projects.', 'approved', ''),
(8, 'EHive6329748', 'ankitsharma', 'H Block', 'dsadasd', 'BBD University H-Block', 'sddsadsa', '2024-12-27', '10:30 Am', '4:00 pm', 'ankitsharma', 'Hello', 'sdsadsad', 'approved', ''),
(12, 'EHive6177123', 'ankitsharma', 'test event', 'test', 'BBD University H-Block', 'floor 3, room 201', '2024-12-11', '1:30 pm', '3:00 pm', 'vishalsingh', 'no req', 'no discription', 'approved', ''),
(13, 'EHive2194630', 'ankitsharma', 'testing', 'testing', 'BBD University', 'testing', '2024-12-19', '11:00 Am', '10:30 Am', 'vishalsingh', 'testing', 'testing', 'approved', 'src/upload/6751ddbac6c7f7.61513977.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `joined_events`
--

CREATE TABLE `joined_events` (
  `sno` int(33) NOT NULL,
  `user_name` varchar(110) NOT NULL,
  `event_id` varchar(110) NOT NULL,
  `join_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `joined_events`
--

INSERT INTO `joined_events` (`sno`, `user_name`, `event_id`, `join_status`) VALUES
(1, 'sasdsad', 'sadsad', 0),
(3, 'ankitsharma', 'EHive2194630', 1),
(4, 'ankitsharma', 'EHive6177123', 1),
(5, 'vishalsingh', 'EHive6177123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `sno` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `coordinate` varchar(255) NOT NULL,
  `place_img` varchar(221) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`sno`, `name`, `coordinate`, `place_img`) VALUES
(1, 'BBD University', '81.05907530791517, 26.888545268230786', 'src/locationimg/university.png'),
(2, 'BBD ITM', '81.05664708398355, 26.888009352239074', 'src/locationimg/bbditm.png'),
(3, 'BBD University H-Block', '81.0591415382849, 26.887277324040436', 'src/locationimg/h-block.png'),
(4, 'BBD Stadium', '81.05872662077684, 26.88394252413874', 'src/locationimg/stadium.png'),
(5, 'BBD Auditorium', '81.05888077561306, 26.886005155255123', 'src/locationimg/auditorium.png'),
(6, 'Canteen', '81.05800118795383, 26.887754807626173', 'src/locationimg/canteen.jpeg'),
(7, 'BBDEC', '81.05766195622938, 26.887001959587472', 'src/locationimg/bbdec.jpeg'),
(8, 'BBDNIIT', '81.05914457236543, 26.886266970270267', 'src/locationimg/bbdniit.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `sno` int(33) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(110) NOT NULL,
  `email` varchar(112) NOT NULL,
  `password` varchar(211) NOT NULL,
  `location` varchar(110) NOT NULL,
  `course` varchar(110) NOT NULL,
  `branch` varchar(110) NOT NULL,
  `year` int(55) NOT NULL,
  `about_me` longtext NOT NULL,
  `expertise` varchar(110) NOT NULL,
  `github` varchar(110) NOT NULL,
  `linkedin` varchar(110) NOT NULL,
  `institution` varchar(110) NOT NULL,
  `skills` varchar(220) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`sno`, `name`, `username`, `email`, `password`, `location`, `course`, `branch`, `year`, `about_me`, `expertise`, `github`, `linkedin`, `institution`, `skills`, `img`) VALUES
(3, 'Ankit Sharma', 'ankitsharma', 'ankitengineer@bbdu.ac.in', 'ea27d018ffb841df66ae2915542afa4f', ' Lucknow                           ', 'Bachelor of Technology                           ', 'Computer Science Engineering                           ', 3, 'My name is Ankit, and I am a Full Stack Developer with expertise in building dynamic and responsive web applications. I specialize in both frontend and backend technologies, ensuring seamless integration and functionality across platforms.\r\n\r\nOn the frontend, I excel in crafting user-friendly interfaces using HTML, CSS, JavaScript, and modern frameworks like React or Angular. For the backend, I have strong experience with PHP, Node.js, and databases such as MySQL and MongoDB.\r\n\r\nI am passionate about coding, solving complex problems, and staying updated with the latest trends in technology. Whether it\'s creating a custom website, developing APIs, or working on full-stack solutions, I enjoy bringing ideas to life.\r\n\r\nFeel free to reach out if you’d like to collaborate or discuss projects!\r\n', ' Full-Stack Development                           ', 'github.com/akcode7', 'linkedin.com/akcode7', 'Babu Banarasi Das University                           ', 'Javascript, PHP', 'src/upload/6751d134d6df15.36425514.jpeg'),
(4, 'Vishal Singh', 'vishalsingh', 'vishalsingh932001@bbdu.ac.in', '25d55ad283aa400af464c76d713c07ad', '', '', '', 0, '', '', '', '', '', '', ''),
(5, 'Ashish Sharma', 'ashish', 'ashishsharma@bbdu.ac.in', '25d55ad283aa400af464c76d713c07ad', ' ', ' ', ' ', 0, '', ' ', ' ', ' ', ' ', 'Vue JS, React, Angular, Laravel', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event_detail`
--
ALTER TABLE `event_detail`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `joined_events`
--
ALTER TABLE `joined_events`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event_detail`
--
ALTER TABLE `event_detail`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `joined_events`
--
ALTER TABLE `joined_events`
  MODIFY `sno` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `sno` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
