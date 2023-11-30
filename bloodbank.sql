-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 12:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `adv_id` int(100) NOT NULL,
  `camp_title` varchar(100) NOT NULL,
  `org_by` varchar(100) NOT NULL,
  `pic` varchar(700) NOT NULL,
  `detail` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`adv_id`, `camp_title`, `org_by`, `pic`, `detail`) VALUES
(1, 'university of central missouri', 'ucm health center', '2.jpg', 'Blood donation camp Organised by UCM.  One who donate get certificate by UCM\nThat can help you also to gets blood in jeopard time');

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `bg_id` int(100) NOT NULL,
  `bg_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(1, 'O+'),
(2, 'O-'),
(3, 'AB+'),
(4, 'AB-'),
(5, 'A+'),
(6, 'A-'),
(7, 'B+'),
(8, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE `camp` (
  `camp_id` int(100) NOT NULL,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `state` int(100) NOT NULL,
  `city` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `state`, `city`, `pic`, `detail`) VALUES
(1, 'university of central missouri', 'ucm health center', 1, 1, 'blood_donation_camp.jpg', 'A Blood Donation Camp at university of central missouri organized by ucm health center , Missouri.'),
(2, ' Wichita University', 'Wichita University', 2, 3, 'B.D camp 034.jpg', 'A Blood Donation Camp at wichita University organized by whichita University , Kansas.'),
(3, 'University of Missouri Kansas City', 'UMKC Club', 2, 3, 'p36.jpg', 'A Blood Donation Camp at University of Missouri Kansas City, Phagwara organized by UMKC Club, Kansas.'),
(4, 'Saint Louis University', 'Human Welfare Society', 1, 2, 'p38_2.jpg', 'A Blood Donation Camp at Saint Louis university, jalandhar organized by Human Welfare Society, Saint Louis.\n ');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `pin_code`, `district`, `state`) VALUES
(1, 'Lees summit', '19033', 'missouri', 1),
(2, 'Saint Louis', '121001', 'Sanit Louis', 2),
(3, 'Kansas', '144001', 'Kansas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `row_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`row_id`, `name`, `email`, `mobile`, `subj`) VALUES
(1, 'charan', 'charan@gmail.com', '98889619909', 'save life'),
(2, 'ashok', 'ashok@yahoo.com', '9888889765', 'save life'),
(3, 'meghana', 'meghana@gmail.com', '9463958058', 'give blood'),
(4, 'srikanth', 'srikanth@gmail.com', '9216291294', 'save life'),
(5, 'akash', 'akash@gmail.com', '8790675438', 'give me a blood');

-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

CREATE TABLE `donarregistration` (
  `donar_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `email`, `pwd`, `pic`) VALUES
(1, 'charan', 'male', '23', '9878989898', 1, 'charan@gmail.com', 123, '1 (980).jpg'),
(2, 'ashok', 'male', '22', '7878689876', 8, 'ashok@gmail.com', 123, '1 (983).jpg'),
(3, 'meghana', 'female', '20', '9463958058', 2, 'meghana@yahoo.com', 123, '1.jpg'),
(4, 'saketh', 'male', '21', '9888961990', 3, 'saketh@gmail.com', 123, '1 (999).jpg'),
(5, 'srikanth', 'male', '22', '9876505652', 8, 'srikanth@gmail.com', 123, '1 (998).jpg'),
(6, 'Manu', 'female', '20', '9779730479', 4, 'Manu@yahoo.com', 123, '1 (997).jpg'),
(7, 'akash', 'male', '22', '01823280290', 1, 'akash@gmail.com', 123, '1 (996).jpg'),
(8, 'Abhishek', 'male', '24', '0123456780', 4, 'abhi@ymail.com', 123, '1 (995).jpg'),
(9, 'vandana', 'female', '26', '9295769630', 4, 'vandana@yahoo.com', 123, '1 (994).jpg'),
(10, 'kumar', 'male', '26', '9878967543', 5, 'kumar@yahoo.com', 123, '1 (993).jpg'),
(11, 'vicky', 'male', '24', '9445678765', 6, 'vicky@gmail.com', 123, '1 (992).jpg'),
(12, 'Sohil', 'male', '20', '8591824296', 5, 'Sohil@gmail.com', 123, '1 (991).jpg'),
(13, 'samuel', 'male', '25', '9594918765', 7, 'samuel@gmail.com', 123, '1 (990).jpg'),
(14, 'Vinay', 'male', '24', '01824230721', 2, 'vinny786@gmail.com', 123, '1 (989).jpg'),
(15, 'Rakesh', 'male', '19', '8781846758', 5, 'rbhatia@ymail.com', 123, '1 (988).jpg'),
(16, 'Rahul', 'male', '25', '9216291294', 6, 'raulban@gmail.com', 123, '1 (981).jpg'),
(17, 'Prabhas', 'male', '24', '2345678798', 7, 'prabh786@gmail.com', 123, '1 (977).jpg'),
(18, 'Radha', 'female', '25', '9889786545', 1, 'ridhi@ymail.com', 123, '1 (982).jpg'),
(19, 'Preethi', 'female', '28', '8427429079', 2, 'preet22@yahoo.com', 123, '1 (978).jpg'),
(20, 'mounika', 'female', '35', '9888976570', 3, 'mouna@yahoo.com', 123, '1 (975).jpg'),
(21, 'charan', 'male', '20', '9463958058', 6, 'charan01@yahoo.com', 123, '1 (979).jpg'),
(22, 'ashok', 'male', '20', '9463958058', 7, 'ashok98@yahoo.com', 123, '1 (976).jpg'),
(23, 'ashok', 'male', '22', '7878689876', 3, 'ashok677@gmail', 123, '1 (984).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donation_id` int(100) NOT NULL,
  `camp_id` int(100) NOT NULL,
  `ddate` datetime NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(1, 1, '2023-09-05 00:00:00', 20, 'A Blood Donation Camp at university of central missouri organized by ucm health center , missouri', 'charan@gmail.com'),
(2, 2, '2023-11-29 00:00:00', 30, 'A Blood Donation Camp at Wichita University organized by Wichita University , Kansas.', 'pabhas@gmail.com'),
(3, 3, '2024-12-01 00:00:00', 25, 'A Blood Donation Camp at UMKC, Phagwara organized by UMKC Club, Kansas.', 'meghana@gmail.com'),
(4, 4, '2023-10-31 00:00:00', 22, 'A Blood Donation Camp at Saint Louis university, Saint Louis organized by Human Welfare Society, Missouri.\r\n ', 'ashok@gmail.com'),
(5, 1, '2023-11-17 00:00:00', 27, 'A Blood Donation Camp at Wichita university...', 'saketh@gmail.com'),
(6, 2, '2023-09-29 00:00:00', 17, 'save life', 'srikanth@gmail.com'),
(7, 3, '2023-10-18 00:00:00', 10, 'give blood', 'saketh@gmail.com'),
(8, 4, '2023-12-05 00:00:00', 22, 'save life', 'akash@gmail.com'),
(9, 1, '2023-11-19 16:54:37', 444, 'save life', 'manu@gmail.com'),
(10, 2, '2023-10-25 00:00:00', 20, 'save life', 'charan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `camp_id` int(100) NOT NULL,
  `pic_id` int(100) NOT NULL,
  `title` varchar(400) NOT NULL,
  `pic` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`camp_id`, `pic_id`, `title`, `pic`) VALUES
(4, 15, 'pic 1', 'p48_2.jpg'),
(4, 16, 'pic 2', 'p11 (1).jpg'),
(4, 17, 'pic 3', 'p141.jpg'),
(4, 18, 'pic 5', 'p177_2.jpg'),
(4, 19, 'pic 6', 'p279.jpg'),
(3, 20, 'pic 8', 'p246.jpg'),
(4, 21, 'pic 9', 'p82.jpg'),
(2, 22, 'pic 2', 'p82.jpg'),
(2, 23, 'pic 3', 'p93.jpg'),
(2, 24, 'pic 6', 'p148.jpg'),
(2, 25, 'pic 7', 'pamrik@ymail.com1 (2).jpg'),
(2, 26, 'pic 8', 'slider4.jpg'),
(2, 27, 'pic 9', 'slider7.jpg'),
(1, 28, 'pic 2', 'slider8.jpg'),
(1, 29, 'pic 3', 'slider3.jpg'),
(1, 30, 'pic 4', 'donation.jpg'),
(1, 31, 'pic 3', 'Blood-Donation2.jpg'),
(1, 32, 'pic 4', 'blood-donation-.jpg'),
(1, 33, 'pic 6', 'blood-donation.jpg'),
(3, 34, 'pic 1', 'resizedBlood donation (1).jpg'),
(3, 35, 'pic 2', 'Blood-donation-camp.jpg'),
(3, 36, 'pic 4', '3.jpg'),
(3, 37, 'pic 5', '4.jpg'),
(3, 38, 'pic 7', '5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `detail`) VALUES
(1, 'blood donate', 'give blood give bloodgive blood'),
(2, 'blood bank', 'blooooddddd\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE `requestes` (
  `req_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` int(100) NOT NULL,
  `reqdate` datetime NOT NULL,
  `detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`req_id`, `name`, `gender`, `age`, `mobile`, `email`, `bgroup`, `reqdate`, `detail`) VALUES
(1, 'harish', 'male', '24', '987654578', 'harish@gmail.com', 1, '2023-04-24 00:00:00', 'i need blood'),
(2, 'vandana', 'female', '22', '9898986789', 'vandana@gmail.com', 1, '2023-12-31 00:00:00', 'i need blood'),
(3, 'akhil', 'male', '24', '6757876589', 'akhil@gmail.com', 7, '2024-01-19 00:00:00', 'i need blood'),
(19, 'sirisha', 'female', '25', '6780876897', 'siri@gmail.com', 5, '2024-02-12 00:00:00', 'i need blood');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(100) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Missouri'),
(2, 'Kansas'),
(3, 'Texas'),
(4, 'Arkansas'),
(5, 'Oklahoma');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pwd`, `typeofuser`) VALUES
('charan', 'charan', 'Admin'),
('meghana', 'meghana', 'General'),
('akash', 'akash', 'General'),
('srikanth', 'srikanth', 'General'),
('ashok', 'ashok', 'General'),
('saketh', 'saketh', 'General');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `camp`
--
ALTER TABLE `camp`
  ADD PRIMARY KEY (`camp_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `donarregistration`
--
ALTER TABLE `donarregistration`
  ADD PRIMARY KEY (`donar_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donation_id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`pic_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `requestes`
--
ALTER TABLE `requestes`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `adv_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `bg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `camp`
--
ALTER TABLE `camp`
  MODIFY `camp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `row_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donarregistration`
--
ALTER TABLE `donarregistration`
  MODIFY `donar_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donation_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `pic_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `requestes`
--
ALTER TABLE `requestes`
  MODIFY `req_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
