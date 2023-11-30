-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2023 at 04:24 AM
-- Server version: 5.7.24
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
-- Table structure for table `autonumber`
--

CREATE TABLE `autonumber` (
  `id` int(11) NOT NULL,
  `autoname` varchar(30) NOT NULL,
  `strnum` int(11) NOT NULL,
  `increment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `autonumber`
--

INSERT INTO `autonumber` (`id`, `autoname`, `strnum`, `increment`) VALUES
(1, 'trans', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_code` varchar(30) NOT NULL,
  `emp_fname` varchar(60) DEFAULT NULL,
  `emp_lname` varchar(60) DEFAULT NULL,
  `emp_mname` varchar(60) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` bigint(20) DEFAULT '0',
  `status` varchar(30) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(100) DEFAULT NULL,
  `emp_sex` varchar(10) DEFAULT NULL,
  `emp_age` int(3) DEFAULT NULL,
  `emerg_contct` bigint(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_code`, `emp_fname`, `emp_lname`, `emp_mname`, `address`, `contact`, `status`, `birth_date`, `birth_place`, `emp_sex`, `emp_age`, `emerg_contct`) VALUES
('009', 'Imran', 'malik', 'jnr', '236 Mn', 3089567421, 'Bachelor', '1994-01-28', 'AP', 'Male', 28, 3089567421),
('010', 'Josh', 'Butler', 'Hitler', '098 East', 1235674890, 'Bachelor', '1994-01-28', 'London', 'Male', 28, 1235674890);

-- --------------------------------------------------------

--
-- Table structure for table `employee_workinfo`
--

CREATE TABLE `employee_workinfo` (
  `id` int(10) NOT NULL,
  `emp_code` varchar(10) NOT NULL,
  `d_rate` int(30) DEFAULT NULL,
  `p_method` varchar(60) DEFAULT NULL,
  `position` varchar(60) DEFAULT NULL,
  `w_status` varchar(60) DEFAULT NULL,
  `d_hired` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_workinfo`
--

INSERT INTO `employee_workinfo` (`id`, `emp_code`, `d_rate`, `p_method`, `position`, `w_status`, `d_hired`) VALUES
(19, '009', 390, 'Monthly', 'Vp', 'Active', '2023-04-10'),
(20, '010', 945, 'Monthly', 'Senior Engineer', 'Active', '2023-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `other_deduction`
--

CREATE TABLE `other_deduction` (
  `KEY` int(11) NOT NULL,
  `trans_id` varchar(30) NOT NULL,
  `emp_code` varchar(10) DEFAULT NULL,
  `deduct1` varchar(60) DEFAULT NULL,
  `ded_amount1` varchar(30) DEFAULT NULL,
  `deduct2` varchar(60) DEFAULT NULL,
  `ded_amount2` varchar(30) DEFAULT NULL,
  `deduct3` varchar(60) DEFAULT NULL,
  `ded_amount3` varchar(30) DEFAULT NULL,
  `deduct4` varchar(60) DEFAULT NULL,
  `ded_amount4` varchar(30) DEFAULT NULL,
  `total_ded` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_deduction`
--

INSERT INTO `other_deduction` (`KEY`, `trans_id`, `emp_code`, `deduct1`, `ded_amount1`, `deduct2`, `ded_amount2`, `deduct3`, `ded_amount3`, `deduct4`, `ded_amount4`, `total_ded`) VALUES
(9, 'trans8', '009', '', '0', '', '0', '', '', '', '', 0),
(10, 'trans9', '010', 'Damage', '80', '', '0', '', '', '', '', 80),
(11, 'trans10', '010', '', '0', '', '0', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `KEY` int(11) NOT NULL,
  `emp_code` varchar(10) NOT NULL,
  `num_days` int(30) DEFAULT NULL,
  `r_wage` int(30) DEFAULT NULL,
  `overtime` int(30) DEFAULT NULL,
  `hol_pay` int(30) DEFAULT NULL,
  `gross_sal` int(30) DEFAULT NULL,
  `cash_ad` int(30) DEFAULT NULL,
  `bread_vale` varchar(30) DEFAULT NULL,
  `philhealth` int(30) DEFAULT NULL,
  `pag-ibig` int(30) DEFAULT NULL,
  `net_income` int(30) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `dateissued` date NOT NULL,
  `trans_id` varchar(30) NOT NULL DEFAULT '0',
  `user_id` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`KEY`, `emp_code`, `num_days`, `r_wage`, `overtime`, `hol_pay`, `gross_sal`, `cash_ad`, `bread_vale`, `philhealth`, `pag-ibig`, `net_income`, `remarks`, `dateissued`, `trans_id`, `user_id`) VALUES
(1, '001', 30, 12000, 50, 0, 12050, 1500, '', 20, 10, 10520, 'Great at batting', '2023-04-10', 'trans0', NULL),
(2, '002', 31, 15531, 626, 1002, 17159, 1000, '', 50, 90, 16019, 'King of everyone', '2023-04-10', 'trans1', NULL),
(3, '003', 29, 14413, 0, 0, 14413, 0, '', 0, 0, 14413, '', '2023-04-10', 'trans2', NULL),
(4, '004', 28, 19600, 1663, 0, 21263, 0, '', 0, 0, 21263, '', '2023-04-10', 'trans3', NULL),
(5, '005', 30, 15000, 0, 0, 15000, 0, '', 0, 0, 15000, '', '2023-04-10', 'trans4', NULL),
(6, '006', 28, 19600, 0, 0, 19600, 0, '', 0, 0, 19600, '', '2023-04-10', 'trans5', NULL),
(7, '007', 20, 19980, 0, 0, 19980, 0, '', 0, 0, 19980, '', '2023-04-10', 'trans6', NULL),
(8, '008', 31, 23715, 0, 0, 23715, 0, '', 0, 0, 23715, '', '2023-04-10', 'trans7', NULL),
(9, '009', 28, 10920, 0, 0, 10920, 0, '', 0, 0, 10920, '', '2023-04-10', 'trans8', NULL),
(10, '010', 30, 28350, 0, 0, 28350, 0, '', 0, 0, 28270, '', '2023-04-10', 'trans9', NULL),
(11, '010', 3, 2835, 236, 945, 4016, 0, '', 0, 0, 4016, '', '2023-04-20', 'trans10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(30) NOT NULL,
  `name` text,
  `username` varchar(60) DEFAULT NULL,
  `pass` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `pass`) VALUES
(22, 'Sai Tejaswi M', 'admin', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autonumber`
--
ALTER TABLE `autonumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_code`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);

--
-- Indexes for table `employee_workinfo`
--
ALTER TABLE `employee_workinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emp_code_2` (`emp_code`),
  ADD KEY `emp_code` (`emp_code`);

--
-- Indexes for table `other_deduction`
--
ALTER TABLE `other_deduction`
  ADD PRIMARY KEY (`KEY`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`KEY`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `trans_id` (`trans_id`),
  ADD KEY `emp_code` (`emp_code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autonumber`
--
ALTER TABLE `autonumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_workinfo`
--
ALTER TABLE `employee_workinfo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `other_deduction`
--
ALTER TABLE `other_deduction`
  MODIFY `KEY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `KEY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
