-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2018 at 12:05 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `SNO` int(2) NOT NULL,
  `Year` varchar(2) NOT NULL,
  `Subject` text NOT NULL,
  `SUB` varchar(5) NOT NULL,
  `Assignment1` text NOT NULL,
  `Assignment2` text NOT NULL,
  `Assignment3` text NOT NULL,
  `Assignment4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`SNO`, `Year`, `Subject`, `SUB`, `Assignment1`, `Assignment2`, `Assignment3`, `Assignment4`) VALUES
(1, 'SE', 'se_cg', 'CG', 'Explain DDA line algorithm.\nExplain Bresenham’s line algorithm.\nExplain Bsp-line curve.\n', 'Explain scan line fill algorithm.\nExplain flood-fill algorithm.\n', 'Explain Cohen-Sutherland line clipping.\nExplain Liang-Barsky line clipping.\nExplain window to viewport transformations.\n', 'Explain Weiler-Atherton polygon clipping.\nExplain Goraud and Phong shading.'),
(2, 'SE', 'se_coa', 'COA', 'Explain Von Neumann Architecture.\r\nExplain Evolution of computers.\r\nExplain performance measure of computer architecture.', 'Explain CPU architecture.\r\nDifference between RISC and CISC architecture.\r\nExplain micro operations and concepts of nano programing.\r\n', '1. Explain cache memory. \r\n2. Explain virtual memory. \r\nExplain Segmentation and paging.', 'Explain pipeline hazards.'),
(3, 'SE', 'se_aoa', 'AOA', 'Explain Space and Time Complexity. Analyse Selection sort. Explain Strassens matrix multiplication.', 'Explain fractional knapsack problem.\r\nExplain 0/1 knapsack problem.\r\nExplain All Pair Shortest Path algorithm.\r\n', 'Explain N-Queen Problem.\r\nExplain sum of subsets.\r\nExplain graph coloring.\r\n', 'Explain Rabin-Karp algorithm.\r\nExplain Knuth-Morris-Pratt algorithm.'),
(4, 'SE', 'se_os', 'OS', 'What is relationships between OS and Hardware?\nExplain features of Operating Systems.\nExplain Multiprogramming and it’s advantages.\n', 'What are differences between Real-time processing and batch processing?\nDifferences between multiprogramming and multiprocessing.\nExplain Process scheduling.\n', 'Explain time slicing.\nWhat is Shortest Remaining time scheduling ?\nWhat are different principles which must be considered while selection of scheduling algorithm?\n', 'What are differences between paging and allocation ?\nExplain various allocation algorithms.\nExplain Semaphores.\n'),
(5, 'SE', 'se_ostl', 'OSTL', '1.Write palindrome program in python.\n2.List out benefits of python Programming.\n', '1.Write a program to print first 100 prime numbers.\n2.Write a program to display sum upto n integers.', '', ''),
(6, 'SE', 'se_maths', 'MATHS', 'Solve University Question Paper 2017', 'Solve University Question Paper 2016', '', ''),
(7, 'TE', 'te_dd', 'DD', 'Explain Distributed Databases system & its design issues.\nExplanation location and replication transparency.\nWhat is fragmentation? Explain PHF, HF, VF and DF.\n', 'Explain Anomalies of concurrency in details.\nExplain centralized and distributed deadlock detection algorithm.\n', 'Explain Query Optimization.\nExplain Architecture for heterogeneous database.\n', ''),
(8, 'TE', 'te_se', 'SE', 'Define software engineering. Explain in brief software engineering process framework.\nExplain incremental model & prototype model for software development with merits and demerits.\nWrite suitable application of different software process models.\nExplain Spiral model with merits and demerits.', 'Explain COCOMO model.\nExplain different categories of software risk.\nExplain process of risk projection.\nExplain change control and version control.', 'Explain different types of software maintenance.\nWhat is coupling and cohesion ? Explain different types.\nExplain different metrics used for maintaining software quality.\nExplain  basic path technique in detail.\n', 'Explain service oriented software engineering.\nExplain attributes of web based system and applications.'),
(9, 'TE', 'te_spcc', 'SPCC', 'Explain with example various elements of assembly language\nExplain forward reference problem with example\nDesign 2 pass assembler on IBM-360 machine with detailed flowchart  & database\nExplain design of single pass assembler with flowchart & databases\n', 'Explain features of macro with example\nExplain 2-pass macroprocessor with its database\nExplain compile & go loader with advantage and disadvantage\nExplain basic functions of loader\nExplain design of 2-pass direct linking loader\n', '', ''),
(10, 'TE', 'te_mcc', 'MCC', 'Draw and explain EM spectrum for communication\nWrite a short  note on satellite orbits\nWrite the characteristics of  SIM\nDraw and explain GPRS architecture\nDifferentiate GSM and GPRS\n', 'List the entities of mobile IP & describe data transfer from a mobile node to a fixed note and vice-versa\nExplain agent advertisement in mobile IP\nExplain IP in IP technique of encapsulation of mobile IP packet\nCompare between indirect,snooping and mobile TCP\n', '', ''),
(11, 'BE', 'be_hmi', 'HMI', '1.Explain Implementation model and mental model\r\n2.Define Goal directed design.\r\n3.Describe benefits of good UI.\r\n', '1.Explain GeSalt principles.\r\n2.Draw and explain interaction styles.\r\n3.Explain Communication model\r\n', '', ''),
(12, 'BE', 'be_pds', 'PDS', '1.Explain different types of distributed system.\n2.Explain Remote procedure call.\n3.Explain different type of message oriented communication.\n', '1.Explain election algorithms.\n2.Explain Code migration.\n3.Explain physical clock synchronization with examples.\n', '1.Describe features of good distributed system.\n2.Explain Hadoop file system.\n3.Explain data centric models.\n', ''),
(13, 'BE', 'be_dwm', 'DWM', '1. Explain FP growth algorithm with help of example  \r\n2. Explain Multilevel and multi-dimensional association rules  ', '1. Define data warehouse & Explain architecture of data warehouse with suitable block diagram.\r\n 2. Distinguish between OLAP & OLTP\r\n 3. Explain OLAP models in detail', '1. Explain ETL of data warehousing in detail\r\n2. Explain data cleaning in detail. \r\n3. Explain data reduction in detail. \r\n4. Explain data Transformation in detail', '1.TEST'),
(14, 'BE', 'be_ml', 'ML', '1.What is machine learning? Explain its types. 2.Describe issues in machine learning', '1.Explain linear regresssion. 2.List out application of machine learning. 3.Explain Dimensionality Reduction.', '1.Write steps for developing a machine learning application 2.Write a short note on CART', ''),
(15, 'BE', 'be_df', 'DF', '1.Explain Data forensic. 2.Explain types of data forensic.', '1.Desribe relation between CyberSecurity and forensics', 'Case study on any topic', '');

-- --------------------------------------------------------

--
-- Table structure for table `be_dwm`
--

CREATE TABLE `be_dwm` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL,
  `2018-04-04` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_dwm`
--

INSERT INTO `be_dwm` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`, `2018-04-04`) VALUES
(1, 'BE01', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(2, 'BE02', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(3, 'BE03', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(4, 'BE04', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(5, 'BE05', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(6, 'BE06', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(7, 'BE07', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'BE08', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'BE09', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(10, 'BE10', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'BE11', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 'BE12', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 'BE13', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(14, 'BE14', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'BE15', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'BE16', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(17, 'BE17', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(18, 'BE18', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'BE19', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(20, 'BE20', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'BE21', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(22, 'BE22', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 'BE23', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(24, 'BE24', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'BE25', 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 'BE26', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'BE27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'BE28', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 'BE29', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(30, 'BE30', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'BE31', 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(32, 'BE32', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(33, 'BE33', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(34, 'BE34', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(35, 'BE35', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(36, 'BE36', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'BE37', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(38, 'BE38', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(39, 'BE39', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'BE40', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(41, 'BE41', 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(42, 'BE42', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 'BE43', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(44, 'BE44', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 'BE45', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 'BE46', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'BE47', 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(48, 'BE48', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 'BE49', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(50, 'BE50', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(51, 'BE51', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 'BE52', 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(53, 'BE53', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(54, 'BE54', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(55, 'BE55', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(56, 'BE56', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'BE57', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(58, 'BE58', 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(59, 'BE59', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'BE60', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(61, 'BE61', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'BE62', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(63, 'BE63', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'BE64', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(65, 'BE65', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(66, 'BE66', 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'BE67', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'BE68', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'BE69', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(70, 'BE70', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(71, 'BE71', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'BE72', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `be_elec`
--

CREATE TABLE `be_elec` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL,
  `2018-04-03` int(1) NOT NULL,
  `2018-04-05` int(1) NOT NULL,
  `2018-04-04` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `be_elec`
--

INSERT INTO `be_elec` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`, `2018-04-03`, `2018-04-05`, `2018-04-04`) VALUES
(1, 'BE01', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(2, 'BE02', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'BE03', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 'BE04', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(5, 'BE05', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(6, 'BE06', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(7, 'BE07', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'BE08', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'BE09', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(10, 'BE10', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'BE11', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 'BE12', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 'BE13', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(14, 'BE14', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'BE15', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'BE16', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(17, 'BE17', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(18, 'BE18', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'BE19', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(20, 'BE20', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'BE21', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(22, 'BE22', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 'BE23', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(24, 'BE24', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'BE25', 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 'BE26', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'BE27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'BE28', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 'BE29', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(30, 'BE30', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'BE31', 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(32, 'BE32', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(33, 'BE33', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(34, 'BE34', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(35, 'BE35', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(36, 'BE36', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'BE37', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(38, 'BE38', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(39, 'BE39', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'BE40', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(41, 'BE41', 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(42, 'BE42', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(43, 'BE43', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(44, 'BE44', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(45, 'BE45', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(46, 'BE46', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(47, 'BE47', 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(48, 'BE48', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(49, 'BE49', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(50, 'BE50', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(51, 'BE51', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(52, 'BE52', 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(53, 'BE53', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(54, 'BE54', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(55, 'BE55', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(56, 'BE56', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(57, 'BE57', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(58, 'BE58', 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(59, 'BE59', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(60, 'BE60', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(61, 'BE61', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(62, 'BE62', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(63, 'BE63', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(64, 'BE64', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(65, 'BE65', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(66, 'BE66', 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(67, 'BE67', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(68, 'BE68', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(69, 'BE69', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(70, 'BE70', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(71, 'BE71', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(72, 'BE72', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `be_hmi`
--

CREATE TABLE `be_hmi` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_hmi`
--

INSERT INTO `be_hmi` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`) VALUES
(1, 'BE01', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(2, 'BE02', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'BE03', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 'BE04', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(5, 'BE05', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(6, 'BE06', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(7, 'BE07', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'BE08', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'BE09', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(10, 'BE10', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(11, 'BE11', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(12, 'BE12', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 'BE13', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(14, 'BE14', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'BE15', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'BE16', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(17, 'BE17', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(18, 'BE18', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'BE19', 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(20, 'BE20', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(21, 'BE21', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(22, 'BE22', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(23, 'BE23', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(24, 'BE24', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'BE25', 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 'BE26', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(27, 'BE27', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'BE28', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 'BE29', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(30, 'BE30', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'BE31', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(32, 'BE32', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(33, 'BE33', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(34, 'BE34', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(35, 'BE35', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(36, 'BE36', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'BE37', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(38, 'BE38', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(39, 'BE39', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'BE40', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(41, 'BE41', 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(42, 'BE42', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(43, 'BE43', 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(44, 'BE44', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(45, 'BE45', 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(46, 'BE46', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'BE47', 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(48, 'BE48', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(49, 'BE49', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(50, 'BE50', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(51, 'BE51', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(52, 'BE52', 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(53, 'BE53', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(54, 'BE54', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(55, 'BE55', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(56, 'BE56', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'BE57', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(58, 'BE58', 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(59, 'BE59', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'BE60', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(61, 'BE61', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'BE62', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(63, 'BE63', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'BE64', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(65, 'BE65', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(66, 'BE66', 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'BE67', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'BE68', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'BE69', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(70, 'BE70', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(71, 'BE71', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'BE72', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `be_marks`
--

CREATE TABLE `be_marks` (
  `RollNo` varchar(4) NOT NULL,
  `DWM` int(2) NOT NULL,
  `PDS` int(2) NOT NULL,
  `HMI` int(2) NOT NULL,
  `ELEC` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_marks`
--

INSERT INTO `be_marks` (`RollNo`, `DWM`, `PDS`, `HMI`, `ELEC`) VALUES
('BE01', 20, 7, 7, 19),
('BE02', 10, 10, 2, 12),
('BE03', 20, 13, 11, 20),
('BE04', 10, 2, 2, 20),
('BE05', 4, 17, 17, 0),
('BE06', 1, 12, 16, 0),
('BE07', 1, 0, 10, 0),
('BE08', 11, 16, 20, 0),
('BE09', 10, 4, 19, 0),
('BE10', 8, 16, 7, 0),
('BE11', 8, 1, 18, 0),
('BE12', 10, 7, 4, 0),
('BE13', 7, 12, 20, 0),
('BE14', 18, 17, 2, 0),
('BE15', 13, 20, 6, 15),
('BE16', 11, 20, 20, 0),
('BE17', 20, 13, 18, 0),
('BE18', 1, 2, 4, 0),
('BE19', 10, 5, 15, 0),
('BE20', 6, 3, 10, 0),
('BE21', 11, 15, 4, 0),
('BE22', 16, 6, 15, 0),
('BE23', 14, 20, 20, 0),
('BE24', 7, 17, 16, 0),
('BE25', 0, 5, 19, 0),
('BE26', 6, 3, 18, 0),
('BE27', 12, 16, 13, 20),
('BE28', 17, 4, 1, 18),
('BE29', 6, 9, 19, 0),
('BE30', 19, 15, 20, 0),
('BE31', 20, 2, 1, 0),
('BE32', 11, 15, 4, 0),
('BE33', 16, 10, 19, 0),
('BE34', 0, 16, 5, 0),
('BE35', 1, 3, 6, 15),
('BE36', 15, 11, 16, 0),
('BE37', 18, 15, 7, 0),
('BE38', 11, 17, 0, 0),
('BE39', 15, 12, 11, 0),
('BE40', 0, 0, 7, 0),
('BE41', 8, 0, 18, 20),
('BE42', 11, 3, 17, 20),
('BE43', 9, 10, 0, 18),
('BE44', 8, 6, 17, 17),
('BE45', 5, 5, 8, 0),
('BE46', 14, 11, 14, 0),
('BE47', 9, 16, 1, 0),
('BE48', 0, 0, 12, 0),
('BE49', 13, 0, 5, 0),
('BE50', 20, 19, 18, 0),
('BE51', 8, 15, 17, 0),
('BE52', 16, 0, 17, 0),
('BE53', 12, 12, 13, 0),
('BE54', 15, 6, 14, 0),
('BE55', 1, 18, 9, 0),
('BE56', 1, 2, 12, 0),
('BE57', 12, 2, 3, 0),
('BE58', 12, 13, 17, 0),
('BE59', 7, 20, 7, 0),
('BE60', 2, 3, 8, 0),
('BE61', 16, 7, 0, 0),
('BE62', 0, 18, 19, 0),
('BE63', 4, 0, 3, 0),
('BE64', 6, 16, 17, 0),
('BE65', 12, 4, 3, 0),
('BE66', 20, 17, 17, 0),
('BE67', 13, 12, 12, 0),
('BE68', 16, 1, 20, 0),
('BE69', 0, 4, 9, 0),
('BE70', 15, 12, 5, 0),
('BE71', 9, 5, 18, 0),
('BE72', 19, 13, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `be_pds`
--

CREATE TABLE `be_pds` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_pds`
--

INSERT INTO `be_pds` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`) VALUES
(1, 'BE01', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(2, 'BE02', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'BE03', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 'BE04', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(5, 'BE05', 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(6, 'BE06', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(7, 'BE07', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'BE08', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'BE09', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(10, 'BE10', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(11, 'BE11', 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(12, 'BE12', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 'BE13', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(14, 'BE14', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'BE15', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'BE16', 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(17, 'BE17', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(18, 'BE18', 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'BE19', 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(20, 'BE20', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(21, 'BE21', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(22, 'BE22', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(23, 'BE23', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(24, 'BE24', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'BE25', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 'BE26', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(27, 'BE27', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'BE28', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 'BE29', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(30, 'BE30', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'BE31', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(32, 'BE32', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(33, 'BE33', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(34, 'BE34', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(35, 'BE35', 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(36, 'BE36', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'BE37', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(38, 'BE38', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(39, 'BE39', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'BE40', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(41, 'BE41', 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(42, 'BE42', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(43, 'BE43', 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(44, 'BE44', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(45, 'BE45', 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(46, 'BE46', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'BE47', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(48, 'BE48', 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(49, 'BE49', 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(50, 'BE50', 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(51, 'BE51', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(52, 'BE52', 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(53, 'BE53', 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(54, 'BE54', 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(55, 'BE55', 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(56, 'BE56', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'BE57', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(58, 'BE58', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(59, 'BE59', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'BE60', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(61, 'BE61', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'BE62', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(63, 'BE63', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'BE64', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(65, 'BE65', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(66, 'BE66', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'BE67', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'BE68', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'BE69', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(70, 'BE70', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(71, 'BE71', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'BE72', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `be_quiz`
--

CREATE TABLE `be_quiz` (
  `QNO` int(1) NOT NULL,
  `Question` text NOT NULL,
  `Option1` text NOT NULL,
  `Option2` text NOT NULL,
  `Option3` text NOT NULL,
  `Option4` text NOT NULL,
  `OptionC` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_quiz`
--

INSERT INTO `be_quiz` (`QNO`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `OptionC`) VALUES
(1, '1. The primary interactive method of communication used by humans is:', 'reading', 'writing', 'speaking', 'all of the mentioned', 'speaking'),
(2, '2. Elementary linguistic units which are smaller than words are:', 'allophones', 'phonemes', 'syllables', 'all of the mentioned', 'all of the mentioned'),
(3, '3. In LISP, the atom that stands for “true” is', 't', 'ml', 'y', 'time', 't'),
(4, '4. A mouse device may be:', 'electro-chemical', 'mechanical', 'optical', 'both mechanical and optical', 'both mechanical and optical'),
(5, '5. An expert system differs from a database program in that only an expert system:', 'contains declarative knowledge', 'contains procedural knowledge', 'features the retrieval of stored information', 'expects users to draw their own conclusions', 'contains procedural knowledge'),
(6, '1. Data scrubbing is which of the following?', 'A process to reject data from the data warehouse and to create the necessary indexes', 'A process to load the data in the data warehouse and to create the necessary indexes', 'A process to upgrade the quality of data after it is moved into a data warehouse', 'A process to upgrade the quality of data before it is moved into a data warehouse', 'A process to upgrade the quality of data before it is moved into a data warehouse'),
(7, '2. The @active data warehouse architecture includes which of the following?', 'At least one data mart', 'Data that can extracted from numerous internal and external sources', 'Near real-time updates', 'All of the above.', 'All of the above.'),
(8, '3. A goal of data mining includes which of the following?', 'To explain some observed event or condition', 'To confirm that data exists', 'To analyze data for expected relationships', 'To create a new data warehouse', 'To explain some observed event or condition'),
(9, '4. An operational system is which of the following?', 'A system that is used to run the business in real time and is based on historical data.', 'A system that is used to run the business in real time and is based on current data.', 'A system that is used to support decision making and is based on current data.', 'A system that is used to support decision making and is based on historical data.', 'A system that is used to run the business in real time and is based on current data.'),
(10, '5. A data warehouse is which of the following?', 'Can be updated by end users.', 'Contains numerous naming conventions and formats.', 'Organized around important subject areas.', 'Contains only current data.', 'Organized around important subject areas.'),
(11, '1. In distributed system each processor has its own', 'local memory', 'clock', 'both local memory and clock', 'none of the mentioned', 'both local memory and clock'),
(12, '2. If one site fails in distributed system', 'the remaining sites can continue operating', 'all the sites will stop working', 'directly connected sites will stop working', 'none of the mentioned', 'the remaining sites can continue operating'),
(13, '3. Network operating system runs on', 'server', 'every system in the network', 'both server and every system in the network', 'none of the mentioned', 'server'),
(14, '4. Logical extension of computation migration is', 'process migration', 'system migration', 'thread migration', 'data migration', 'process migration'),
(15, '5. Processes on the remote systems are identified by', 'host ID', 'host name and identifier', 'identifier', 'process ID', 'host name and identifier'),
(16, '1. Machine learning is', 'The autonomous acquisition of knowledge through the use of computer programs', 'The autonomous acquisition of knowledge through the use of manual programs', 'The selective acquisition of knowledge through the use of computer programs', 'The selective acquisition of knowledge through the use of manual programs', 'The autonomous acquisition of knowledge through the use of computer programs'),
(17, '2. Factors which affect the performance of learner system does not include', 'Representation scheme used', 'Training scenario', 'Type of feedback', 'Good data structures', 'Good data structures'),
(18, '3. Different learning methods does not include', 'Memorization', 'Analogy', 'Deduction', 'Introduction', 'Introduction'),
(19, '4. In language understanding, the levels of knowledge that does not include', 'Phonological', 'Syntactic', 'Empirical', 'Logical', 'Empirical'),
(20, '5. A model of language consists of the categories which does not include', 'Language units', 'Role structure of units', 'System constraints', 'Structural units', 'Structural units');

-- --------------------------------------------------------

--
-- Table structure for table `be_quiz1`
--

CREATE TABLE `be_quiz1` (
  `QNO` int(1) NOT NULL,
  `Question` text NOT NULL,
  `Option1` text NOT NULL,
  `Option2` text NOT NULL,
  `Option3` text NOT NULL,
  `Option4` text NOT NULL,
  `OptionC` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_quiz1`
--

INSERT INTO `be_quiz1` (`QNO`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `OptionC`) VALUES
(1, '1. The primary interactive method of communication used by humans is:', 'reading', 'writing', 'speaking', 'all of the mentioned', 'speaking'),
(2, '2. Elementary linguistic units which are smaller than words are:', 'allophones', 'phonemes', 'syllables', 'all of the mentioned', 'all of the mentioned'),
(3, '3. In LISP, the atom that stands for “true” is', 't', 'ml', 'y', 'time', 't'),
(4, '4. A mouse device may be:', 'electro-chemical', 'mechanical', 'optical', 'both mechanical and optical', 'both mechanical and optical'),
(5, '5. An expert system differs from a database program in that only an expert system:', 'contains declarative knowledge', 'contains procedural knowledge', 'features the retrieval of stored information', 'expects users to draw their own conclusions', 'contains procedural knowledge'),
(6, '1. Data scrubbing is which of the following?', 'A process to reject data from the data warehouse and to create the necessary indexes', 'A process to load the data in the data warehouse and to create the necessary indexes', 'A process to upgrade the quality of data after it is moved into a data warehouse', 'A process to upgrade the quality of data before it is moved into a data warehouse', 'A process to upgrade the quality of data before it is moved into a data warehouse'),
(7, '2. The @active data warehouse architecture includes which of the following?', 'At least one data mart', 'Data that can extracted from numerous internal and external sources', 'Near real-time updates', 'All of the above.', 'All of the above.'),
(8, '3. A goal of data mining includes which of the following?', 'To explain some observed event or condition', 'To confirm that data exists', 'To analyze data for expected relationships', 'To create a new data warehouse', 'To explain some observed event or condition'),
(9, '4. An operational system is which of the following?', 'A system that is used to run the business in real time and is based on historical data.', 'A system that is used to run the business in real time and is based on current data.', 'A system that is used to support decision making and is based on current data.', 'A system that is used to support decision making and is based on historical data.', 'A system that is used to run the business in real time and is based on current data.'),
(10, '5. A data warehouse is which of the following?', 'Can be updated by end users.', 'Contains numerous naming conventions and formats.', 'Organized around important subject areas.', 'Contains only current data.', 'Organized around important subject areas.'),
(11, '1. In distributed system each processor has its own', 'local memory', 'clock', 'both local memory and clock', 'none of the mentioned', 'both local memory and clock'),
(12, '2. If one site fails in distributed system', 'the remaining sites can continue operating', 'all the sites will stop working', 'directly connected sites will stop working', 'none of the mentioned', 'the remaining sites can continue operating'),
(13, '3. Network operating system runs on', 'server', 'every system in the network', 'both server and every system in the network', 'none of the mentioned', 'server'),
(14, '4. Logical extension of computation migration is', 'process migration', 'system migration', 'thread migration', 'data migration', 'process migration'),
(15, '5. Processes on the remote systems are identified by', 'host ID', 'host name and identifier', 'identifier', 'process ID', 'host name and identifier'),
(16, '1. There are three c\'s in computer forensics. Which is one of the three?', 'Control', 'Chance', 'Chains', 'Core', 'Control'),
(17, '2. You are suppose to maintain three types of records. Which answer is not a record?', 'Chain of custody', 'Documentation of the crime scene', 'Searching the crime scene', 'Document your actions', 'Searching the crime scene'),
(18, '3. Physical Forensics Discipline include which of the following?', 'Bloodstain', 'Eating', 'Searching', 'Watching', 'Bloodstain'),
(19, '4. Which is not a step in the scientific method?', 'Raise a question.', 'Test the hypotheses', 'Wait to test', 'Draw a conclusion', 'Wait to test'),
(20, '5. What happens when first securing the area?', 'Start looking for evidence', 'Make sure that the crime scene is safe', 'Gather evidence', 'Make sure computer is on', 'Make sure that the crime scene is safe');

-- --------------------------------------------------------

--
-- Table structure for table `be_quizmarks`
--

CREATE TABLE `be_quizmarks` (
  `ID` varchar(4) NOT NULL,
  `DWM` int(1) NOT NULL,
  `PDS` int(1) NOT NULL,
  `HMI` int(1) NOT NULL,
  `ELEC` int(1) NOT NULL,
  `DONE` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `be_quizmarks`
--

INSERT INTO `be_quizmarks` (`ID`, `DWM`, `PDS`, `HMI`, `ELEC`, `DONE`) VALUES
('BE01', 0, 1, 1, 2, 0),
('BE02', 0, 0, 0, 0, 0),
('BE03', 1, 1, 0, 1, 0),
('BE04', 0, 0, 0, 0, 0),
('BE05', 3, 1, 4, 0, 0),
('BE06', 0, 0, 0, 0, 0),
('BE07', 0, 0, 0, 0, 0),
('BE08', 0, 0, 0, 0, 0),
('BE09', 0, 0, 0, 0, 0),
('BE10', 0, 0, 0, 0, 0),
('BE11', 0, 0, 0, 0, 0),
('BE12', 0, 0, 0, 0, 0),
('BE13', 2, 0, 0, 1, 0),
('BE14', 0, 0, 0, 0, 0),
('BE15', 0, 0, 0, 0, 0),
('BE16', 0, 0, 0, 0, 0),
('BE17', 0, 0, 0, 0, 0),
('BE18', 0, 0, 0, 0, 0),
('BE19', 0, 0, 0, 0, 0),
('BE20', 0, 0, 0, 0, 0),
('BE21', 0, 0, 0, 0, 0),
('BE22', 0, 0, 0, 0, 0),
('BE23', 0, 0, 0, 0, 0),
('BE24', 0, 0, 0, 0, 0),
('BE25', 0, 0, 0, 0, 0),
('BE26', 0, 0, 0, 0, 0),
('BE27', 0, 0, 0, 0, 0),
('BE28', 0, 0, 0, 0, 0),
('BE29', 0, 0, 0, 0, 0),
('BE30', 0, 0, 0, 0, 0),
('BE31', 5, 5, 4, 5, 0),
('BE32', 0, 0, 0, 0, 0),
('BE33', 0, 0, 0, 0, 0),
('BE34', 0, 0, 0, 0, 0),
('BE35', 0, 0, 0, 0, 0),
('BE36', 0, 0, 0, 0, 0),
('BE37', 0, 0, 0, 0, 0),
('BE38', 0, 0, 0, 0, 0),
('BE39', 0, 0, 0, 0, 0),
('BE40', 0, 0, 0, 0, 0),
('BE41', 2, 0, 0, 2, 0),
('BE42', 0, 0, 0, 0, 0),
('BE43', 0, 0, 0, 0, 0),
('BE44', 0, 0, 0, 0, 0),
('BE45', 1, 0, 0, 2, 0),
('BE46', 2, 0, 2, 1, 0),
('BE47', 0, 0, 0, 0, 0),
('BE48', 0, 0, 0, 0, 0),
('BE49', 0, 0, 0, 0, 0),
('BE50', 3, 3, 4, 1, 0),
('BE51', 1, 1, 0, 0, 0),
('BE52', 0, 0, 0, 0, 0),
('BE53', 0, 0, 0, 0, 0),
('BE54', 0, 0, 0, 0, 0),
('BE55', 0, 0, 0, 0, 0),
('BE56', 0, 0, 0, 0, 0),
('BE57', 0, 0, 0, 0, 0),
('BE58', 0, 0, 0, 0, 0),
('BE59', 2, 0, 0, 2, 0),
('BE60', 0, 0, 0, 0, 0),
('BE61', 0, 0, 0, 0, 0),
('BE62', 0, 0, 0, 0, 0),
('BE63', 0, 0, 0, 0, 0),
('BE64', 0, 0, 0, 0, 0),
('BE65', 0, 0, 0, 0, 0),
('BE66', 0, 0, 0, 0, 0),
('BE67', 0, 0, 0, 0, 0),
('BE68', 0, 0, 0, 0, 0),
('BE69', 0, 0, 0, 0, 0),
('BE70', 0, 0, 0, 0, 0),
('BE71', 0, 0, 0, 0, 0),
('BE72', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `compsstaff`
--

CREATE TABLE `compsstaff` (
  `ID` varchar(3) NOT NULL,
  `Password` varchar(3) NOT NULL,
  `Name` text NOT NULL,
  `EmailID` text NOT NULL,
  `ContactNo` varchar(10) NOT NULL,
  `S1` varchar(8) NOT NULL,
  `S2` varchar(8) NOT NULL,
  `S3` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compsstaff`
--

INSERT INTO `compsstaff` (`ID`, `Password`, `Name`, `EmailID`, `ContactNo`, `S1`, `S2`, `S3`) VALUES
('C01', 'C01', 'DR. SWAPNA BORDE', 'swapna.borde@vcet.edu.in', '9876543210', 'BE_DWM', '', ''),
('C02', 'C02', 'MR. VIKRANT AGASKAR', 'vikrant.agaskar@vcet.edu.in', '9876543210', 'SE_OS', '', ''),
('C03', 'C03', 'MR. ANIL HINGMIRE', 'anil.hingmire@vcet.edu.in', '9876543210', 'TE_SPCC', 'BE_HMI', 'BE_CC'),
('C04', 'C04', 'MS. SANGITA CHAUDHARI', 'sangita.chaudhari@vcet.edu.in', '9876543210', 'BE_PDS', '', ''),
('C05', 'C05', 'MS. SMITA JAWALE', 'smita.jawale@vcet.edu.in', '9876543210', 'TE_DD', '', ''),
('C06', 'C06', 'MR. SUNIL KATKAR', 'sunil.katkar@vcet.edu.in', '9876543210', 'SE_COA', 'SE_CG', ''),
('C07', 'C07', 'MS. SWEETY RUPANI', 'sweety.rupani@vcet.edu.in', '9876543210', 'SE_AOA', 'SE_OSTL', ''),
('C08', 'C08', 'MS. PRIYA SAVE', 'priya.save@vcet.edu.in', '9876543210', 'BE_HMI', '', ''),
('C09', 'C09', 'MS. KRUNALI VARTAK', 'krunali.vartak@vcet.edu.in', '9876543210', 'SE_COA', 'TE_SE', ''),
('C10', 'C10', 'MR. SANKET PATIL', 'sanket.patil@vcet.edu.in', '9876543210', 'TE_MCC', '', ''),
('C11', 'C11', 'MS. SNEHA MHATRE', 'sneha.mhatre@vcet.edu.in', '9876543210', 'TE_MCC', '', ''),
('C12', 'C12', 'MS. KOMAL NAIK', 'komal.naik@vcet.edu.in', '9876543210', 'SE_AOA', 'BE_ELEC', ''),
('C13', 'C13', 'MS. SHRADDHA SARODE', 'shraddha.sarode@gmail.com', '9876543210', 'SE_OS', 'BE_ELEC', ''),
('C14', 'C14', 'PRANALI SAPRE', 'pranali.sapre@vcet.edu.in', '9876543210', 'SE_MATHS', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `QNO` int(1) NOT NULL,
  `Questions` text NOT NULL,
  `SE_AOA1` int(11) NOT NULL,
  `SE_COA1` int(11) NOT NULL,
  `SE_CG` int(11) NOT NULL,
  `SE_OSTL` int(11) NOT NULL,
  `SE_OS1` int(11) NOT NULL,
  `SE_MATHS` int(11) NOT NULL,
  `SE_COA2` int(3) NOT NULL,
  `SE_AOA2` int(3) NOT NULL,
  `SE_OS2` int(3) NOT NULL,
  `TE_SPCC` int(11) NOT NULL,
  `TE_MCC1` int(11) NOT NULL,
  `TE_DD` int(11) NOT NULL,
  `TE_SE` int(11) NOT NULL,
  `TE_MCC2` int(11) NOT NULL,
  `BE_DWM` int(11) NOT NULL,
  `BE_PDS` int(11) NOT NULL,
  `BE_HMI` int(11) NOT NULL,
  `BE_ELEC1` int(11) NOT NULL,
  `BE_ELEC2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`QNO`, `Questions`, `SE_AOA1`, `SE_COA1`, `SE_CG`, `SE_OSTL`, `SE_OS1`, `SE_MATHS`, `SE_COA2`, `SE_AOA2`, `SE_OS2`, `TE_SPCC`, `TE_MCC1`, `TE_DD`, `TE_SE`, `TE_MCC2`, `BE_DWM`, `BE_PDS`, `BE_HMI`, `BE_ELEC1`, `BE_ELEC2`) VALUES
(1, 'Subject coverage', 274, 227, 205, 226, 261, 233, 219, 242, 271, 277, 230, 290, 247, 294, 277, 266, 289, 136, 100),
(2, 'Knowledge of subject', 244, 239, 251, 223, 255, 223, 239, 270, 247, 231, 242, 246, 297, 287, 235, 277, 247, 152, 115),
(3, 'Control over students', 271, 246, 237, 210, 264, 220, 210, 249, 263, 283, 225, 291, 235, 234, 252, 254, 239, 150, 103),
(4, 'Provision of practical knowledge', 272, 225, 204, 273, 242, 249, 249, 226, 253, 296, 229, 239, 237, 265, 246, 255, 236, 94, 117),
(5, 'Timing of lectures', 246, 204, 204, 229, 246, 230, 248, 223, 252, 247, 283, 244, 255, 289, 261, 273, 283, 100, 110),
(6, 'Solving problem of students', 232, 240, 272, 238, 208, 274, 242, 261, 253, 254, 288, 262, 279, 254, 256, 279, 254, 118, 117),
(7, 'Presentation skills', 210, 230, 206, 233, 210, 251, 270, 262, 213, 269, 274, 243, 298, 273, 254, 275, 271, 112, 99);

-- --------------------------------------------------------

--
-- Table structure for table `feedgiven`
--

CREATE TABLE `feedgiven` (
  `ID` varchar(4) NOT NULL,
  `value` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedgiven`
--

INSERT INTO `feedgiven` (`ID`, `value`) VALUES
('SE01', 1),
('SE02', 1),
('SE03', 1),
('SE04', 1),
('SE05', 1),
('SE06', 1),
('SE07', 1),
('SE08', 1),
('SE09', 1),
('SE10', 1),
('SE11', 1),
('SE12', 1),
('SE13', 1),
('SE14', 1),
('SE15', 1),
('SE16', 1),
('SE17', 1),
('SE18', 1),
('SE19', 1),
('SE20', 1),
('SE21', 1),
('SE22', 1),
('SE23', 1),
('SE24', 1),
('SE25', 1),
('SE26', 1),
('SE27', 1),
('SE28', 1),
('SE29', 1),
('SE30', 1),
('SE31', 1),
('SE32', 1),
('SE33', 1),
('SE34', 1),
('SE35', 1),
('SE36', 1),
('SE37', 1),
('SE38', 1),
('SE39', 1),
('SE40', 1),
('SE41', 1),
('SE42', 1),
('SE43', 1),
('SE44', 1),
('SE45', 1),
('SE46', 1),
('SE47', 1),
('SE48', 1),
('SE49', 1),
('SE50', 1),
('SE51', 1),
('SE52', 1),
('SE53', 1),
('SE54', 1),
('SE55', 1),
('SE56', 1),
('SE57', 1),
('SE58', 1),
('SE59', 1),
('SE60', 1),
('SE61', 1),
('SE62', 1),
('SE63', 1),
('SE64', 1),
('SE65', 1),
('SE66', 1),
('SE67', 1),
('SE68', 1),
('SE69', 1),
('SE70', 1),
('SE71', 1),
('SE72', 1),
('SE73', 1),
('SE74', 1),
('TE01', 0),
('TE02', 0),
('TE03', 0),
('TE04', 1),
('TE05', 1),
('TE06', 1),
('TE07', 1),
('TE08', 1),
('TE09', 1),
('TE10', 1),
('TE11', 1),
('TE12', 1),
('TE13', 1),
('TE14', 1),
('TE15', 1),
('TE16', 1),
('TE17', 1),
('TE18', 1),
('TE19', 1),
('TE20', 1),
('TE21', 1),
('TE22', 1),
('TE23', 1),
('TE24', 1),
('TE25', 1),
('TE26', 1),
('TE27', 1),
('TE28', 1),
('TE29', 1),
('TE30', 1),
('TE31', 1),
('TE32', 1),
('TE33', 1),
('TE34', 1),
('TE35', 1),
('TE36', 1),
('TE37', 1),
('TE38', 1),
('TE39', 1),
('TE40', 1),
('TE41', 1),
('TE42', 1),
('TE43', 1),
('TE44', 1),
('TE45', 1),
('TE46', 1),
('TE47', 1),
('TE48', 1),
('TE49', 1),
('TE50', 1),
('TE51', 1),
('TE52', 1),
('TE53', 1),
('TE54', 1),
('TE55', 1),
('TE56', 1),
('TE57', 1),
('TE58', 1),
('TE59', 1),
('TE60', 1),
('TE61', 1),
('TE62', 1),
('TE63', 1),
('TE64', 1),
('TE65', 1),
('TE66', 1),
('TE67', 1),
('TE68', 1),
('TE69', 1),
('TE70', 1),
('TE71', 1),
('TE72', 1),
('TE73', 1),
('TE74', 1),
('TE75', 1),
('TE76', 1),
('TE77', 1),
('BE01', 0),
('BE02', 0),
('BE03', 1),
('BE04', 1),
('BE05', 1),
('BE06', 1),
('BE07', 1),
('BE08', 1),
('BE09', 1),
('BE10', 1),
('BE11', 1),
('BE12', 1),
('BE13', 1),
('BE14', 1),
('BE15', 1),
('BE16', 1),
('BE17', 1),
('BE18', 1),
('BE19', 1),
('BE20', 1),
('BE21', 1),
('BE22', 1),
('BE23', 1),
('BE24', 1),
('BE25', 1),
('BE26', 1),
('BE27', 1),
('BE28', 1),
('BE29', 1),
('BE30', 1),
('BE31', 1),
('BE32', 1),
('BE33', 1),
('BE34', 1),
('BE35', 1),
('BE36', 1),
('BE37', 1),
('BE38', 1),
('BE39', 1),
('BE40', 1),
('BE41', 0),
('BE42', 0),
('BE43', 1),
('BE44', 1),
('BE45', 1),
('BE46', 1),
('BE47', 1),
('BE48', 1),
('BE49', 1),
('BE50', 1),
('BE51', 1),
('BE52', 1),
('BE53', 1),
('BE54', 1),
('BE55', 1),
('BE56', 1),
('BE57', 1),
('BE58', 1),
('BE59', 1),
('BE60', 1),
('BE61', 1),
('BE62', 1),
('BE63', 1),
('BE64', 1),
('BE65', 1),
('BE66', 1),
('BE67', 1),
('BE68', 1),
('BE69', 1),
('BE70', 1),
('BE71', 1),
('BE72', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `No` int(11) NOT NULL,
  `Year` varchar(2) NOT NULL,
  `Notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`No`, `Year`, `Notice`) VALUES
(1, 'SE', '\nSubmit your OS project topics on or before 7th feb.\r\n\r\nAOA Notes available in xerox center.\r\n\r\nOSTL Assignment 1 submission date 16th Feb\r\n\nTEST CASE\r\n'),
(2, 'TE', '\nConfirm  your elective subject for this sem  before 11th January.\r\n\r\nDD Miniproject presentation on 2nd March '),
(3, 'BE', '\nBE project topics to be submitted on or before 15th feb.\r\n\r\nCollect your defaulter letter at 1.15pm 3rd March\r\n\r\nBE project presentation on 10th April\r\n\r\nBlackbook submission on 12th April');

-- --------------------------------------------------------

--
-- Table structure for table `se_aoa`
--

CREATE TABLE `se_aoa` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL,
  `2018-04-02` int(1) NOT NULL,
  `2018-04-03` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se_aoa`
--

INSERT INTO `se_aoa` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`, `2018-04-02`, `2018-04-03`) VALUES
(1, 'SE01', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'SE02', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'SE03', 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 'SE04', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(5, 'SE05', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(6, 'SE06', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(7, 'SE07', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'SE08', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'SE09', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(10, 'SE10', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'SE11', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 'SE12', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 'SE13', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(14, 'SE14', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'SE15', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'SE16', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(17, 'SE17', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(18, 'SE18', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'SE19', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(20, 'SE20', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'SE21', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(22, 'SE22', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 'SE23', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(24, 'SE24', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'SE25', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 'SE26', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'SE27', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'SE28', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 'SE29', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(30, 'SE30', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'SE31', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(32, 'SE32', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(33, 'SE33', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(34, 'SE34', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(35, 'SE35', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(36, 'SE36', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'SE37', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(38, 'SE38', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(39, 'SE39', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'SE40', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(41, 'SE41', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(42, 'SE42', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 'SE43', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(44, 'SE44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 'SE45', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 'SE46', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'SE47', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(48, 'SE48', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 'SE49', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(50, 'SE50', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(51, 'SE51', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 'SE52', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(53, 'SE53', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(54, 'SE54', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(55, 'SE55', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(56, 'SE56', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'SE57', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(58, 'SE58', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(59, 'SE59', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'SE60', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(61, 'SE61', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'SE62', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(63, 'SE63', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'SE64', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(65, 'SE65', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(66, 'SE66', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'SE67', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'SE68', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'SE69', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(70, 'SE70', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(71, 'SE71', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'SE72', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 'SE73', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(74, 'SE74', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `se_cg`
--

CREATE TABLE `se_cg` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se_cg`
--

INSERT INTO `se_cg` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`) VALUES
(1, 'SE01', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'SE02', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'SE03', 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(4, 'SE04', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(5, 'SE05', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(6, 'SE06', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(7, 'SE07', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'SE08', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'SE09', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(10, 'SE10', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'SE11', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 'SE12', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(13, 'SE13', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(14, 'SE14', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'SE15', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'SE16', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(17, 'SE17', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(18, 'SE18', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'SE19', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(20, 'SE20', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'SE21', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(22, 'SE22', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(23, 'SE23', 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(24, 'SE24', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'SE25', 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(26, 'SE26', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'SE27', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'SE28', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(29, 'SE29', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(30, 'SE30', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'SE31', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(32, 'SE32', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(33, 'SE33', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(34, 'SE34', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(35, 'SE35', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(36, 'SE36', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'SE37', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(38, 'SE38', 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(39, 'SE39', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'SE40', 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(41, 'SE41', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(42, 'SE42', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 'SE43', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(44, 'SE44', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 'SE45', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 'SE46', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'SE47', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(48, 'SE48', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 'SE49', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(50, 'SE50', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(51, 'SE51', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 'SE52', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(53, 'SE53', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(54, 'SE54', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(55, 'SE55', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(56, 'SE56', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'SE57', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(58, 'SE58', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(59, 'SE59', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'SE60', 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(61, 'SE61', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'SE62', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(63, 'SE63', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'SE64', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(65, 'SE65', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(66, 'SE66', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'SE67', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'SE68', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'SE69', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(70, 'SE70', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(71, 'SE71', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'SE72', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 'SE73', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(74, 'SE74', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `se_coa`
--

CREATE TABLE `se_coa` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL,
  `2018-04-05` int(1) NOT NULL,
  `2018-04-06` int(1) NOT NULL,
  `2018-04-08` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se_coa`
--

INSERT INTO `se_coa` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`, `2018-04-05`, `2018-04-06`, `2018-04-08`) VALUES
(1, 'SE01', 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0),
(2, 'SE02', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0),
(3, 'SE03', 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
(4, 'SE04', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(5, 'SE05', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1),
(6, 'SE06', 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1),
(7, 'SE07', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(8, 'SE08', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(9, 'SE09', 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
(10, 'SE10', 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1),
(11, 'SE11', 0, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1),
(12, 'SE12', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1),
(13, 'SE13', 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
(14, 'SE14', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'SE15', 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1),
(16, 'SE16', 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1),
(17, 'SE17', 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1),
(18, 'SE18', 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1, 1),
(19, 'SE19', 1, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1),
(20, 'SE20', 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1),
(21, 'SE21', 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(22, 'SE22', 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(23, 'SE23', 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1),
(24, 'SE24', 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1),
(25, 'SE25', 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1),
(26, 'SE26', 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1),
(27, 'SE27', 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1),
(28, 'SE28', 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1),
(29, 'SE29', 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1),
(30, 'SE30', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'SE31', 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1),
(32, 'SE32', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(33, 'SE33', 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1),
(34, 'SE34', 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1),
(35, 'SE35', 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1),
(36, 'SE36', 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1),
(37, 'SE37', 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1),
(38, 'SE38', 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1),
(39, 'SE39', 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1),
(40, 'SE40', 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1),
(41, 'SE41', 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1),
(42, 'SE42', 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1),
(43, 'SE43', 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1),
(44, 'SE44', 1, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1),
(45, 'SE45', 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 1),
(46, 'SE46', 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1),
(47, 'SE47', 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1),
(48, 'SE48', 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 'SE49', 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1),
(50, 'SE50', 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1),
(51, 'SE51', 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1),
(52, 'SE52', 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(53, 'SE53', 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1),
(54, 'SE54', 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1),
(55, 'SE55', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1),
(56, 'SE56', 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1),
(57, 'SE57', 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1),
(58, 'SE58', 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1),
(59, 'SE59', 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(60, 'SE60', 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(61, 'SE61', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'SE62', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(63, 'SE63', 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1),
(64, 'SE64', 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1),
(65, 'SE65', 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(66, 'SE66', 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1),
(67, 'SE67', 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1),
(68, 'SE68', 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1),
(69, 'SE69', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1),
(70, 'SE70', 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1),
(71, 'SE71', 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1),
(72, 'SE72', 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1),
(73, 'SE73', 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1),
(74, 'SE74', 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `se_marks`
--

CREATE TABLE `se_marks` (
  `RollNo` varchar(4) NOT NULL,
  `COA` int(2) NOT NULL,
  `AOA` int(2) NOT NULL,
  `CG` int(2) NOT NULL,
  `OSTL` int(2) NOT NULL,
  `OS` int(2) NOT NULL,
  `MATHS` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se_marks`
--

INSERT INTO `se_marks` (`RollNo`, `COA`, `AOA`, `CG`, `OSTL`, `OS`, `MATHS`) VALUES
('SE01', 20, 15, 19, 19, 19, 1),
('SE02', 16, 10, 17, 20, 15, 2),
('SE03', 17, 13, 16, 17, 20, 17),
('SE04', 18, 12, 20, 4, 9, 5),
('SE05', 20, 17, 19, 19, 4, 18),
('SE06', 8, 12, 7, 11, 20, 7),
('SE07', 9, 8, 0, 18, 17, 15),
('SE08', 20, 16, 17, 20, 7, 5),
('SE09', 1, 4, 14, 15, 14, 2),
('SE10', 15, 16, 7, 16, 12, 7),
('SE11', 10, 1, 17, 4, 2, 7),
('SE12', 16, 7, 19, 0, 19, 17),
('SE13', 11, 12, 18, 0, 3, 19),
('SE14', 12, 17, 9, 9, 16, 20),
('SE15', 7, 20, 20, 1, 7, 20),
('SE16', 8, 20, 18, 20, 17, 17),
('SE17', 4, 13, 7, 17, 13, 20),
('SE18', 13, 2, 20, 0, 6, 16),
('SE19', 17, 5, 2, 2, 20, 5),
('SE20', 14, 3, 8, 18, 16, 0),
('SE21', 4, 15, 12, 7, 3, 17),
('SE22', 20, 6, 14, 12, 17, 18),
('SE23', 1, 20, 4, 18, 20, 14),
('SE24', 2, 17, 16, 18, 18, 4),
('SE25', 15, 5, 19, 17, 17, 18),
('SE26', 16, 3, 20, 10, 18, 17),
('SE27', 6, 16, 14, 19, 8, 3),
('SE28', 1, 4, 3, 17, 17, 20),
('SE29', 16, 9, 12, 2, 2, 15),
('SE30', 1, 15, 3, 17, 11, 18),
('SE31', 2, 2, 5, 3, 13, 17),
('SE32', 16, 15, 2, 6, 1, 8),
('SE33', 1, 10, 15, 20, 17, 9),
('SE34', 9, 16, 18, 1, 4, 3),
('SE35', 8, 3, 7, 14, 16, 10),
('SE36', 11, 11, 14, 7, 1, 1),
('SE37', 13, 15, 15, 14, 1, 4),
('SE38', 12, 17, 2, 8, 5, 4),
('SE39', 8, 12, 4, 4, 20, 4),
('SE40', 6, 0, 10, 3, 17, 8),
('SE41', 6, 0, 6, 8, 10, 14),
('SE42', 1, 3, 1, 13, 2, 2),
('SE43', 6, 10, 1, 14, 17, 9),
('SE44', 11, 6, 5, 18, 12, 18),
('SE45', 9, 5, 4, 17, 20, 7),
('SE46', 17, 11, 10, 15, 10, 6),
('SE47', 13, 16, 19, 18, 4, 11),
('SE48', 0, 0, 18, 4, 15, 18),
('SE49', 10, 0, 17, 16, 0, 19),
('SE50', 9, 19, 3, 10, 3, 1),
('SE51', 12, 15, 13, 7, 1, 19),
('SE52', 6, 0, 10, 10, 4, 14),
('SE53', 1, 12, 1, 5, 18, 18),
('SE54', 11, 6, 17, 12, 9, 19),
('SE55', 6, 18, 18, 11, 0, 3),
('SE56', 20, 2, 9, 17, 17, 14),
('SE57', 7, 2, 3, 5, 10, 4),
('SE58', 0, 13, 17, 3, 8, 10),
('SE59', 10, 20, 4, 12, 14, 10),
('SE60', 13, 3, 13, 20, 7, 17),
('SE61', 16, 7, 8, 6, 19, 0),
('SE62', 18, 18, 18, 19, 19, 19),
('SE63', 19, 0, 7, 1, 12, 12),
('SE64', 10, 16, 0, 2, 18, 1),
('SE65', 14, 4, 0, 7, 5, 11),
('SE66', 19, 17, 11, 1, 11, 17),
('SE67', 18, 12, 16, 9, 14, 12),
('SE68', 11, 1, 18, 3, 4, 7),
('SE69', 8, 4, 4, 17, 18, 13),
('SE70', 0, 12, 17, 16, 7, 10),
('SE71', 20, 5, 5, 7, 7, 16),
('SE72', 9, 13, 20, 19, 19, 17),
('SE73', 0, 7, 10, 17, 10, 20),
('SE74', 11, 16, 17, 18, 14, 3);

-- --------------------------------------------------------

--
-- Table structure for table `se_maths`
--

CREATE TABLE `se_maths` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se_maths`
--

INSERT INTO `se_maths` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`) VALUES
(1, 'SE01', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'SE02', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'SE03', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(4, 'SE04', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(5, 'SE05', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(6, 'SE06', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(7, 'SE07', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'SE08', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'SE09', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(10, 'SE10', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'SE11', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 'SE12', 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(13, 'SE13', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(14, 'SE14', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'SE15', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'SE16', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(17, 'SE17', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(18, 'SE18', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'SE19', 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(20, 'SE20', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'SE21', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(22, 'SE22', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(23, 'SE23', 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(24, 'SE24', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'SE25', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(26, 'SE26', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'SE27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'SE28', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(29, 'SE29', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(30, 'SE30', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'SE31', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(32, 'SE32', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(33, 'SE33', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(34, 'SE34', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(35, 'SE35', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(36, 'SE36', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'SE37', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(38, 'SE38', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(39, 'SE39', 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'SE40', 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(41, 'SE41', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(42, 'SE42', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 'SE43', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(44, 'SE44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 'SE45', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 'SE46', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'SE47', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(48, 'SE48', 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 'SE49', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(50, 'SE50', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(51, 'SE51', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 'SE52', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(53, 'SE53', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(54, 'SE54', 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(55, 'SE55', 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(56, 'SE56', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'SE57', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(58, 'SE58', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(59, 'SE59', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'SE60', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(61, 'SE61', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'SE62', 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(63, 'SE63', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'SE64', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(65, 'SE65', 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(66, 'SE66', 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'SE67', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'SE68', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'SE69', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(70, 'SE70', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(71, 'SE71', 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'SE72', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 'SE73', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(74, 'SE74', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `se_os`
--

CREATE TABLE `se_os` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL,
  `2018-04-02` int(1) NOT NULL,
  `2018-04-05` int(1) NOT NULL,
  `2018-04-03` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se_os`
--

INSERT INTO `se_os` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`, `2018-04-02`, `2018-04-05`, `2018-04-03`) VALUES
(1, 'SE01', 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(2, 'SE02', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'SE03', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(4, 'SE04', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(5, 'SE05', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(6, 'SE06', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(7, 'SE07', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'SE08', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'SE09', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(10, 'SE10', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'SE11', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(12, 'SE12', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 'SE13', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(14, 'SE14', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'SE15', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'SE16', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(17, 'SE17', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(18, 'SE18', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'SE19', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(20, 'SE20', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'SE21', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(22, 'SE22', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 'SE23', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(24, 'SE24', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'SE25', 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 'SE26', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'SE27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'SE28', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 'SE29', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(30, 'SE30', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'SE31', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(32, 'SE32', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(33, 'SE33', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(34, 'SE34', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(35, 'SE35', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(36, 'SE36', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'SE37', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(38, 'SE38', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(39, 'SE39', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'SE40', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(41, 'SE41', 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(42, 'SE42', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 'SE43', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(44, 'SE44', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 'SE45', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 'SE46', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'SE47', 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(48, 'SE48', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 'SE49', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(50, 'SE50', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(51, 'SE51', 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 'SE52', 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(53, 'SE53', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(54, 'SE54', 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(55, 'SE55', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(56, 'SE56', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'SE57', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(58, 'SE58', 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(59, 'SE59', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'SE60', 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(61, 'SE61', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'SE62', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(63, 'SE63', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'SE64', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(65, 'SE65', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(66, 'SE66', 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'SE67', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'SE68', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'SE69', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(70, 'SE70', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(71, 'SE71', 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'SE72', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 'SE73', 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(74, 'SE74', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `se_ostl`
--

CREATE TABLE `se_ostl` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se_ostl`
--

INSERT INTO `se_ostl` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`) VALUES
(1, 'SE01', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'SE02', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'SE03', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(4, 'SE04', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(5, 'SE05', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(6, 'SE06', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(7, 'SE07', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'SE08', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'SE09', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(10, 'SE10', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'SE11', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 'SE12', 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(13, 'SE13', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(14, 'SE14', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'SE15', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'SE16', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(17, 'SE17', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(18, 'SE18', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'SE19', 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(20, 'SE20', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'SE21', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(22, 'SE22', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(23, 'SE23', 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(24, 'SE24', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'SE25', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(26, 'SE26', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'SE27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'SE28', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(29, 'SE29', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(30, 'SE30', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'SE31', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(32, 'SE32', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(33, 'SE33', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(34, 'SE34', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(35, 'SE35', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(36, 'SE36', 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'SE37', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(38, 'SE38', 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(39, 'SE39', 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'SE40', 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(41, 'SE41', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(42, 'SE42', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 'SE43', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(44, 'SE44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 'SE45', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 'SE46', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'SE47', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(48, 'SE48', 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 'SE49', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(50, 'SE50', 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(51, 'SE51', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 'SE52', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(53, 'SE53', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(54, 'SE54', 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(55, 'SE55', 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(56, 'SE56', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'SE57', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(58, 'SE58', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(59, 'SE59', 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'SE60', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(61, 'SE61', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'SE62', 1, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(63, 'SE63', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'SE64', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(65, 'SE65', 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(66, 'SE66', 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'SE67', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'SE68', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'SE69', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(70, 'SE70', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(71, 'SE71', 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'SE72', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 'SE73', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(74, 'SE74', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `se_quiz`
--

CREATE TABLE `se_quiz` (
  `QNO` int(1) NOT NULL,
  `Question` text NOT NULL,
  `Option1` text NOT NULL,
  `Option2` text NOT NULL,
  `Option3` text NOT NULL,
  `Option4` text NOT NULL,
  `OptionC` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se_quiz`
--

INSERT INTO `se_quiz` (`QNO`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `OptionC`) VALUES
(1, '1.  ______ is used in operating system to separate mechanism from policy', 'Single level implementation', 'Two level implementation', 'Multi level implementation', 'None', 'Two level implementation'),
(2, '2. The operating system creates _____ from the physical computer', 'Virtual space', 'Virtual computers', 'Virtual device', 'None', 'Virtual computers'),
(3, '3. Which is built directly on the hardware?', 'Computer Environment', 'Application Software', 'Operating System', 'Database System', 'Operating System'),
(4, '4. The primary purpose of an operating system is:', 'To make the most efficient use of the computer hardware', 'To allow people to use the computer', 'To keep systems programmers employed', 'To make computers easier to use', 'To make the most efficient use of the computer hardware'),
(5, '5. Which runs on computer hardware and serve as platform for other software to run on?', 'Operating System', 'Application Software', 'System Software', 'All', 'Operating System'),
(6, '1. The ______ format is usually used to store data.', 'BCD', 'Decimal', 'Hexadecimal', 'Octal', 'BCD'),
(7, '2. The 8-bit encoding format used to store data in a computer is ______', 'ASCII', 'EBCDIC', 'ANCI', 'USCII', 'EBCDIC'),
(8, '3. A source program is usually in _______', 'Assembly language', 'Machine level language', 'High-level language', 'Natural language', 'High-level language'),
(9, '4. Which memory device is generally made of semi-conductors?', 'RAM', 'Hard-disk', 'Floppy disk', 'Cd disk', 'RAM'),
(10, '5. The small extremely fast, RAM’s are called as _______', 'Cache', 'Heaps', 'Accumulators', 'Stacks', 'Cache'),
(11, '1. The basic attributes of a straight line segment are', 'Type', 'Width', 'Color', 'All of these', 'All of these'),
(12, '2. A dashed line could be displayed by generating_________.', 'Inter dash spacing', 'Very short dashes', 'Both a and b', 'A or B', 'Inter dash spacing'),
(13, '3. A dotted line can be displayed by generating', ' Very short dashes with spacing equal to and greater than dash size', 'Very long dashes with spacing equal to or greater than dash size', 'Very short dashes with spacing equal to and greater than dash size', 'Dots', 'Very short dashes with spacing equal to and greater than dash size'),
(14, '4. In an application program, to set line-type attributes the following statement is used.', 'SetLinetype(lt)', 'setLinetype(lt)', 'SETLINETYPE(lt)', 'SETLINE()', 'setLinetype(lt)'),
(15, '5. The algorithm which displays line-type attributes by plotting pixel spans is', 'Raster line algorithm', 'Raster scan algorithm', 'Random line algorithm', 'Random scan algorithm', 'Raster line algorithm'),
(16, '1. The worst-case time complexity of Quick Sort is________.', 'O(n2)', 'O(log n)', 'O(n)', 'O(n logn)', 'O(n2)'),
(17, '2. The worst-case time complexity of Bubble Sort is________.', 'O(n2)', 'O(log n)', 'O(n)', 'O(n logn)', 'O(n2)'),
(18, '3. The worst-case time complexity of Merge Sort is________.', 'O(n2)', 'O(log n)', 'O(n)', 'O(n logn)', 'O(n logn)'),
(19, '4. Which of the following sorting procedures is the slowest?', 'Quick sort', 'Heap sort', 'Shell sort', 'Bubble sort', 'Bubble sort'),
(20, '5. Two main measures for the efficiency of an algorithm are', 'Processor and memory', 'Complexity and capacity', 'Time and space', 'Data and space', 'Time and space');

-- --------------------------------------------------------

--
-- Table structure for table `se_quizmarks`
--

CREATE TABLE `se_quizmarks` (
  `ID` varchar(4) NOT NULL,
  `COA` int(1) NOT NULL,
  `AOA` int(1) NOT NULL,
  `CG` int(1) NOT NULL,
  `OS` int(1) NOT NULL,
  `DONE` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `se_quizmarks`
--

INSERT INTO `se_quizmarks` (`ID`, `COA`, `AOA`, `CG`, `OS`, `DONE`) VALUES
('SE01', 1, 0, 1, 2, 1),
('SE02', 0, 0, 0, 0, 0),
('SE03', 5, 1, 1, 4, 0),
('SE04', 0, 0, 0, 0, 0),
('SE05', 0, 0, 0, 0, 0),
('SE06', 0, 0, 0, 0, 0),
('SE07', 0, 0, 0, 0, 0),
('SE08', 0, 0, 0, 0, 0),
('SE09', 0, 0, 0, 0, 0),
('SE10', 0, 0, 0, 0, 0),
('SE11', 0, 0, 0, 0, 0),
('SE12', 0, 0, 0, 0, 0),
('SE13', 0, 0, 0, 0, 0),
('SE14', 0, 0, 0, 0, 0),
('SE15', 0, 0, 0, 0, 0),
('SE16', 0, 0, 0, 0, 0),
('SE17', 0, 0, 0, 0, 0),
('SE18', 0, 0, 0, 0, 0),
('SE19', 0, 0, 0, 0, 0),
('SE20', 0, 0, 0, 0, 0),
('SE21', 0, 0, 0, 0, 0),
('SE22', 0, 0, 0, 0, 0),
('SE23', 0, 0, 0, 0, 0),
('SE24', 0, 0, 0, 0, 0),
('SE25', 0, 0, 0, 0, 0),
('SE26', 0, 0, 0, 0, 0),
('SE27', 0, 0, 0, 0, 0),
('SE28', 0, 0, 0, 0, 0),
('SE29', 0, 0, 0, 0, 0),
('SE30', 0, 0, 0, 0, 0),
('SE31', 1, 1, 1, 0, 0),
('SE32', 0, 0, 0, 0, 0),
('SE33', 0, 0, 0, 0, 0),
('SE34', 0, 0, 0, 0, 0),
('SE35', 0, 0, 0, 0, 0),
('SE36', 0, 0, 0, 0, 0),
('SE37', 0, 0, 0, 0, 0),
('SE38', 0, 0, 0, 0, 0),
('SE39', 0, 0, 0, 0, 0),
('SE40', 1, 0, 1, 1, 1),
('SE41', 0, 0, 0, 0, 0),
('SE42', 0, 0, 0, 0, 0),
('SE43', 0, 0, 0, 0, 0),
('SE44', 0, 0, 0, 0, 0),
('SE45', 0, 0, 0, 0, 0),
('SE46', 0, 0, 0, 0, 0),
('SE47', 0, 0, 0, 0, 0),
('SE48', 0, 0, 0, 0, 0),
('SE49', 0, 0, 0, 0, 0),
('SE50', 0, 0, 0, 0, 0),
('SE51', 0, 0, 0, 0, 0),
('SE52', 0, 0, 0, 0, 0),
('SE53', 0, 0, 0, 0, 0),
('SE54', 0, 0, 0, 0, 0),
('SE55', 0, 0, 0, 0, 0),
('SE56', 0, 0, 0, 0, 0),
('SE57', 0, 0, 0, 0, 0),
('SE58', 0, 0, 0, 0, 0),
('SE59', 0, 0, 0, 0, 0),
('SE60', 0, 0, 0, 0, 0),
('SE61', 0, 0, 0, 0, 0),
('SE62', 0, 0, 0, 0, 0),
('SE63', 0, 0, 0, 0, 0),
('SE64', 0, 0, 0, 0, 0),
('SE65', 0, 0, 0, 0, 0),
('SE66', 0, 0, 0, 0, 0),
('SE67', 0, 0, 0, 0, 0),
('SE68', 0, 0, 0, 0, 0),
('SE69', 0, 0, 0, 0, 0),
('SE70', 0, 0, 0, 0, 0),
('SE71', 0, 0, 0, 0, 0),
('SE72', 0, 0, 0, 0, 0),
('SE73', 0, 0, 0, 0, 0),
('SE74', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `te`
--

CREATE TABLE `te` (
  `NO` int(2) NOT NULL,
  `YEAR` varchar(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `Password` varchar(4) NOT NULL,
  `Name` text NOT NULL,
  `DOB` date NOT NULL,
  `EmailID` text NOT NULL,
  `ContactNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `te`
--

INSERT INTO `te` (`NO`, `YEAR`, `ID`, `Password`, `Name`, `DOB`, `EmailID`, `ContactNo`) VALUES
(152, 'BE', 'BE01', 'BE01', 'AIL ADITYA', '1998-04-14', 'becomps@gmail.com', '9876543210'),
(153, 'BE', 'BE02', 'BE02', 'AWARI PARTH', '1996-02-25', 'becomps@gmail.com', '9876543210'),
(154, 'BE', 'BE03', 'BE03', 'BANDE AKSHAY', '1996-11-21', 'becomps@gmail.com', '9876543210'),
(155, 'BE', 'BE04', 'BE04', 'BHUJBAL AKSHAY', '1997-10-20', 'becomps@gmail.com', '9876543210'),
(156, 'BE', 'BE05', 'BE05', 'CHAUDHARI GEET', '1998-11-24', 'becomps@gmail.com', '9876543210'),
(157, 'BE', 'BE06', 'BE06', 'DEVULKAR SAHIL', '1998-07-20', 'becomps@gmail.com', '9876543210'),
(158, 'BE', 'BE07', 'BE07', 'DHAYADE PRIYANKA', '1996-07-17', 'becomps@gmail.com', '9876543210'),
(159, 'BE', 'BE08', 'BE08', 'GADEKAR AISHWARYA', '1998-02-01', 'becomps@gmail.com', '9876543210'),
(160, 'BE', 'BE09', 'BE09', 'GHARAT BHARVI', '1998-11-18', 'becomps@gmail.com', '9876543210'),
(161, 'BE', 'BE10', 'BE10', 'GHARAT BHAVIKA', '1996-08-05', 'becomps@gmail.com', '9876543210'),
(162, 'BE', 'BE11', 'BE11', 'GHARAT KSHITIJA', '1998-08-08', 'becomps@gmail.com', '9876543210'),
(163, 'BE', 'BE12', 'BE12', 'GOHIL GAURAV', '1996-07-28', 'becomps@gmail.com', '9876543210'),
(164, 'BE', 'BE13', 'BE13', 'GUPTA TEJAS', '1996-03-27', 'becomps@gmail.com', '9876543210'),
(165, 'BE', 'BE14', 'BE14', 'INGLE TANVI', '1996-03-07', 'becomps@gmail.com', '9876543210'),
(166, 'BE', 'BE15', 'BE15', 'JADHAV DHANANJAY', '1997-05-14', 'becomps@gmail.com', '9876543210'),
(167, 'BE', 'BE16', 'BE16', 'JOSHI UTKARSH', '1998-09-22', 'becomps@gmail.com', '9876543210'),
(168, 'BE', 'BE17', 'BE17', 'KADULKAR JITESH', '1997-07-07', 'becomps@gmail.com', '9876543210'),
(169, 'BE', 'BE18', 'BE18', 'KAMBLI AKASH', '1998-02-26', 'becomps@gmail.com', '9876543210'),
(170, 'BE', 'BE19', 'BE19', 'KHAN SHAHBAZ', '1996-07-11', 'becomps@gmail.com', '9876543210'),
(171, 'BE', 'BE20', 'BE20', 'LAL HIMANSHU', '1996-10-01', 'becomps@gmail.com', '9876543210'),
(172, 'BE', 'BE21', 'BE21', 'LOPES DOMINIC', '1998-04-20', 'becomps@gmail.com', '9876543210'),
(173, 'BE', 'BE22', 'BE22', 'MEGHA', '1997-09-08', 'becomps@gmail.com', '9876543210'),
(174, 'BE', 'BE23', 'BE23', 'MISTRY GEVIN', '1998-12-12', 'becomps@gmail.com', '9876543210'),
(175, 'BE', 'BE24', 'BE24', 'PADAM KUNAL', '1997-05-28', 'becomps@gmail.com', '9876543210'),
(176, 'BE', 'BE25', 'BE25', 'PATIL ANUJ', '1996-01-17', 'becomps@gmail.com', '9876543210'),
(177, 'BE', 'BE26', 'BE26', 'PATIL ARADHYA', '1998-12-11', 'becomps@gmail.com', '9876543210'),
(178, 'BE', 'BE27', 'BE27', 'THETHI NAVJYOT KAUR', '1997-07-01', 'becomps@gmail.com', '9876543210'),
(179, 'BE', 'BE28', 'BE28', 'RATHOD ASHWINI', '1996-05-30', 'becomps@gmail.com', '9876543210'),
(180, 'BE', 'BE29', 'BE29', 'SANGALE NIRMITI', '1997-12-29', 'becomps@gmail.com', '9876543210'),
(181, 'BE', 'BE30', 'BE30', 'SAVE SANCHIT', '1998-04-24', 'becomps@gmail.com', '9876543210'),
(182, 'BE', 'BE31', 'BE31', 'THAKRE MANOJ', '1996-01-07', 'becomps@gmail.com', '9876543210'),
(183, 'BE', 'BE32', 'BE32', 'THAKUR VIGNESH', '1996-01-05', 'becomps@gmail.com', '9876543210'),
(184, 'BE', 'BE33', 'BE33', 'TRIVEDI JAVNEEL', '1996-06-07', 'becomps@gmail.com', '9876543210'),
(185, 'BE', 'BE34', 'BE34', 'VORA JEET', '1998-02-12', 'becomps@gmail.com', '9876543210'),
(186, 'BE', 'BE35', 'BE35', 'VORA SANDESH', '1997-03-04', 'becomps@gmail.com', '9876543210'),
(187, 'BE', 'BE36', 'BE36', 'CHAUDHARI OMKAR', '1996-10-17', 'becomps@gmail.com', '9876543210'),
(188, 'BE', 'BE37', 'BE37', 'CHOWDHARY RINKU', '1996-08-09', 'becomps@gmail.com', '9876543210'),
(189, 'BE', 'BE38', 'BE38', 'CHURI SANIKA', '1998-08-02', 'becomps@gmail.com', '9876543210'),
(190, 'BE', 'BE39', 'BE39', 'FERNANDES REUBEN', '1997-02-24', 'becomps@gmail.com', '9876543210'),
(191, 'BE', 'BE40', 'BE40', 'GANDHI NEEL', '1997-09-27', 'becomps@gmail.com', '9876543210'),
(192, 'BE', 'BE41', 'BE41', 'GHOSH TITHI', '1997-03-03', 'becomps@gmail.com', '9876543210'),
(193, 'BE', 'BE42', 'BE42', 'GOREGAONKAR MANOJ', '1996-02-01', 'becomps@gmail.com', '9876543210'),
(194, 'BE', 'BE43', 'BE43', 'GUJRATHI KAPILESH', '1998-01-20', 'becomps@gmail.com', '9876543210'),
(195, 'BE', 'BE44', 'BE44', 'KARGUTKAR PRIYANKA', '1997-12-31', 'becomps@gmail.com', '9876543210'),
(196, 'BE', 'BE45', 'BE45', 'KATUDIA PARIMAL', '1996-05-08', 'becomps@gmail.com', '9876543210'),
(197, 'BE', 'BE46', 'BE46', 'MALEKAR VIRAJ', '1996-05-11', 'becomps@gmail.com', '9876543210'),
(198, 'BE', 'BE47', 'BE47', 'MAURYA SHAILESH', '1996-01-07', 'becomps@gmail.com', '9876543210'),
(199, 'BE', 'BE48', 'BE48', 'MULLAKODI SHEETAL ', '1996-04-05', 'becomps@gmail.com', '9876543210'),
(200, 'BE', 'BE49', 'BE49', 'NACHANKAR PRASHAUNSA', '1998-10-24', 'becomps@gmail.com', '9876543210'),
(201, 'BE', 'BE50', 'BE50', 'NAIK RADHIKA', '1998-03-08', 'becomps@gmail.com', '9876543210'),
(202, 'BE', 'BE51', 'BE51', 'PADHYE KETAKI', '1997-05-30', 'becomps@gmail.com', '9876543210'),
(203, 'BE', 'BE52', 'BE52', 'PAKHARE MAYURI', '1998-10-26', 'becomps@gmail.com', '9876543210'),
(204, 'BE', 'BE53', 'BE53', 'PARADKAR SHREYAS', '1997-07-19', 'becomps@gmail.com', '9876543210'),
(205, 'BE', 'BE54', 'BE54', 'PARMAR TUSHAR', '1996-06-18', 'becomps@gmail.com', '9876543210'),
(206, 'BE', 'BE55', 'BE55', 'PATEL AFZAL', '1996-09-05', 'becomps@gmail.com', '9876543210'),
(207, 'BE', 'BE56', 'BE56', 'PAWAR VIKASBHAI', '1997-07-10', 'becomps@gmail.com', '9876543210'),
(208, 'BE', 'BE57', 'BE57', 'RAUT NIVEDHA', '1996-04-24', 'becomps@gmail.com', '9876543210'),
(209, 'BE', 'BE58', 'BE58', 'SARAWGI SAGAR', '1996-03-10', 'becomps@gmail.com', '9876543210'),
(210, 'BE', 'BE59', 'BE59', 'SAWANT NINAD', '1997-12-21', 'becomps@gmail.com', '9876543210'),
(211, 'BE', 'BE60', 'BE60', 'SHAH MANASI', '1997-10-18', 'becomps@gmail.com', '9876543210'),
(212, 'BE', 'BE61', 'BE61', 'SHENOY RAKSHA', '1996-06-25', 'becomps@gmail.com', '9876543210'),
(213, 'BE', 'BE62', 'BE62', 'SHETTY AKSHATA', '1997-09-09', 'becomps@gmail.com', '9876543210'),
(214, 'BE', 'BE63', 'BE63', 'SHINGADE RAVINA', '1996-02-06', 'becomps@gmail.com', '9876543210'),
(215, 'BE', 'BE64', 'BE64', 'SINGH DEEKSHA', '1996-07-10', 'becomps@gmail.com', '9876543210'),
(216, 'BE', 'BE65', 'BE65', 'SINGH PRACHI', '1996-08-19', 'becomps@gmail.com', '9876543210'),
(217, 'BE', 'BE66', 'BE66', 'SOMANI MAYUR', '1998-12-29', 'becomps@gmail.com', '9876543210'),
(218, 'BE', 'BE67', 'BE67', 'SURTI HITESH', '1996-01-16', 'becomps@gmail.com', '9876543210'),
(219, 'BE', 'BE68', 'BE68', 'THAKAR VIRAL ', '1996-05-16', 'becomps@gmail.com', '9876543210'),
(220, 'BE', 'BE69', 'BE69', 'PATIL RITESH', '1998-10-19', 'becomps@gmail.com', '9876543210'),
(221, 'BE', 'BE70', 'BE70', 'VARTAK SACHIDANANAD', '1998-09-28', 'becomps@gmail.com', '9876543210'),
(222, 'BE', 'BE71', 'BE71', 'VARTAK YURAJ', '1998-12-21', 'becomps@gmail.com', '9876543210'),
(223, 'BE', 'BE72', 'BE72', 'YADAV JYOTI', '1997-06-21', 'becomps@gmail.com', '9876543210'),
(1, 'SE', 'SE01', 'SE01', 'AJGAONKAR SAIHITA S', '1996-01-30', 'secomps@gmail.com', '9876543210'),
(2, 'SE', 'SE02', 'SE02', 'AKHTAR AREEB MOHD S', '1998-10-17', 'secomps@gmail.com', '9876543210'),
(3, 'SE', 'SE03', 'SE03', 'AYER SHEETAL', '1996-03-22', 'secomps@gmail.com', '9876543210'),
(4, 'SE', 'SE04', 'SE04', 'BHOSALE PRANAV M', '1997-06-05', 'secomps@gmail.com', '9876543210'),
(5, 'SE', 'SE05', 'SE05', 'BIJUR ADITHYA G', '1996-12-16', 'secomps@gmail.com', '9876543210'),
(6, 'SE', 'SE06', 'SE06', 'BODKE GAURI P', '1998-07-07', 'secomps@gmail.com', '9876543210'),
(7, 'SE', 'SE07', 'SE07', 'CHAVAN NILESH G', '1998-11-04', 'secomps@gmail.com', '9876543210'),
(8, 'SE', 'SE08', 'SE08', 'CHILE VEDASHREE ', '1997-03-01', 'secomps@gmail.com', '9876543210'),
(9, 'SE', 'SE09', 'SE09', 'CHOUDHARY DINESH M', '1998-06-06', 'secomps@gmail.com', '9876543210'),
(10, 'SE', 'SE10', 'SE10', 'CHURI HINDAVI D', '1998-03-12', 'secomps@gmail.com', '9876543210'),
(11, 'SE', 'SE11', 'SE11', 'DERE NEHA NILESH', '1997-07-04', 'secomps@gmail.com', '9876543210'),
(12, 'SE', 'SE12', 'SE12', 'DEVIKAR VINAY SURESH', '1998-06-30', 'secomps@gmail.com', '9876543210'),
(13, 'SE', 'SE13', 'SE13', 'DHANVE PANKAJ P', '1998-05-28', 'secomps@gmail.com', '9876543210'),
(14, 'SE', 'SE14', 'SE14', 'GAIKWAD RAHUL S', '1996-01-26', 'secomps@gmail.com', '9876543210'),
(15, 'SE', 'SE15', 'SE15', 'GHELANI JASH MAYUR', '1997-07-21', 'secomps@gmail.com', '9876543210'),
(16, 'SE', 'SE16', 'SE16', 'GOSAVI DIKSHA PRAMOD', '1998-10-10', 'secomps@gmail.com', '9876543210'),
(17, 'SE', 'SE17', 'SE17', 'INAMDAR MEHJABEEN R', '1996-07-18', 'secomps@gmail.com', '9876543210'),
(18, 'SE', 'SE18', 'SE18', 'JADHAV SAIRAJ PRAKASH', '1997-05-30', 'secomps@gmail.com', '9876543210'),
(19, 'SE', 'SE19', 'SE19', 'JAIN MOKSH MANISH', '1998-08-30', 'secomps@gmail.com', '9876543210'),
(20, 'SE', 'SE20', 'SE20', 'JAIN RITIK PRAHALAD', '1998-09-19', 'secomps@gmail.com', '9876543210'),
(21, 'SE', 'SE21', 'SE21', 'JHA AGRANEE INDRAJIT', '1996-06-22', 'secomps@gmail.com', '9876543210'),
(22, 'SE', 'SE22', 'SE22', 'KARUVATH JINISHA G', '1997-03-02', 'secomps@gmail.com', '9876543210'),
(23, 'SE', 'SE23', 'SE23', 'KHADYE SHRADDHA B', '1998-10-24', 'secomps@gmail.com', '9876543210'),
(24, 'SE', 'SE24', 'SE24', 'KHANDURI SONIKA J', '1997-06-05', 'secomps@gmail.com', '9876543210'),
(25, 'SE', 'SE25', 'SE25', 'KHANOLKAR ADITI', '1997-02-01', 'secomps@gmail.com', '9876543210'),
(26, 'SE', 'SE26', 'SE26', 'KHEDKAR VIKAS P', '1998-11-27', 'secomps@gmail.com', '9876543210'),
(27, 'SE', 'SE27', 'SE27', 'KHUMAN PARAG SUNIL', '1997-09-21', 'secomps@gmail.com', '9876543210'),
(28, 'SE', 'SE28', 'SE28', 'MAJALIKAR PRARTHANA D', '1998-02-14', 'secomps@gmail.com', '9876543210'),
(29, 'SE', 'SE29', 'SE29', 'MANJREKAR SARVESH ', '1997-07-06', 'secomps@gmail.com', '9876543210'),
(30, 'SE', 'SE30', 'SE30', 'MAURYA ANKIT HANSRAJ', '1997-05-12', 'secomps@gmail.com', '9876543210'),
(31, 'SE', 'SE31', 'SE31', 'MESHRAM PRAJAKTA R', '1997-09-05', 'secomps@gmail.com', '9876543210'),
(32, 'SE', 'SE32', 'SE32', 'MOHAMMAD SAIF M', '1996-02-22', 'secomps@gmail.com', '9876543210'),
(33, 'SE', 'SE33', 'SE33', 'MORE VHITESH BALU', '1996-10-13', 'secomps@gmail.com', '9876543210'),
(34, 'SE', 'SE34', 'SE34', 'NAIK ATUL ANUPAM', '1996-06-13', 'secomps@gmail.com', '9876543210'),
(35, 'SE', 'SE35', 'SE35', 'NAIK SAIESH RAJESH', '1997-04-11', 'secomps@gmail.com', '9876543210'),
(36, 'SE', 'SE36', 'SE36', 'NAIR KAVYA P', '1997-05-26', 'secomps@gmail.com', '9876543210'),
(37, 'SE', 'SE37', 'SE37', 'NAIR MALAVIKA P', '1997-02-04', 'secomps@gmail.com', '9876543210'),
(38, 'SE', 'SE38', 'SE38', 'NAYAKA POOJA RAJUBHAI', '1996-09-24', 'secomps@gmail.com', '9876543210'),
(39, 'SE', 'SE39', 'SE39', 'PANJRI JUNEETH NITIN', '1996-06-06', 'secomps@gmail.com', '9876543210'),
(40, 'SE', 'SE40', 'SE40', 'PARIKH POOJA', '1998-05-07', 'secomps@gmail.com', '9876543210'),
(41, 'SE', 'SE41', 'SE41', 'PATIL CHINMAY ', '1998-09-23', 'secomps@gmail.com', '9876543210'),
(42, 'SE', 'SE42', 'SE42', 'PATIL KETAN BHASKAR', '1998-01-15', 'secomps@gmail.com', '9876543210'),
(43, 'SE', 'SE43', 'SE43', 'PATIL KETAN SHAILENDRA', '1997-04-28', 'secomps@gmail.com', '9876543210'),
(44, 'SE', 'SE44', 'SE44', 'PATIL KRUNAL RAJAN', '1998-05-31', 'secomps@gmail.com', '9876543210'),
(45, 'SE', 'SE45', 'SE45', 'PATIL MANALI AJAY', '1998-04-05', 'secomps@gmail.com', '9876543210'),
(46, 'SE', 'SE46', 'SE46', 'PATIL NIMESH MAHENDRA', '1997-06-04', 'secomps@gmail.com', '9876543210'),
(47, 'SE', 'SE47', 'SE47', 'PATIL PRACHITI ', '1998-06-02', 'secomps@gmail.com', '9876543210'),
(48, 'SE', 'SE48', 'SE48', 'PATIL RIYA ', '1998-11-29', 'secomps@gmail.com', '9876543210'),
(49, 'SE', 'SE49', 'SE49', 'PATIL SHUBHAM D', '1997-08-19', 'secomps@gmail.com', '9876543210'),
(50, 'SE', 'SE50', 'SE50', 'PATIL SRUSHTI ASHOK', '1996-05-02', 'secomps@gmail.com', '9876543210'),
(51, 'SE', 'SE51', 'SE51', 'PISE OMKAR NARAYAN', '1997-10-04', 'secomps@gmail.com', '9876543210'),
(52, 'SE', 'SE52', 'SE52', 'RAO KRITIKA SUJAY', '1998-06-01', 'secomps@gmail.com', '9876543210'),
(53, 'SE', 'SE53', 'SE53', 'RATHOD PIYAL NITIN', '1996-08-25', 'secomps@gmail.com', '9876543210'),
(54, 'SE', 'SE54', 'SE54', 'SAWANT SAMRUDDHI R', '1998-09-10', 'secomps@gmail.com', '9876543210'),
(55, 'SE', 'SE55', 'SE55', 'SAWANT VANDAN SANJAY', '1996-11-15', 'secomps@gmail.com', '9876543210'),
(56, 'SE', 'SE56', 'SE56', 'SHARMA DINESH SURESH', '1998-01-02', 'secomps@gmail.com', '9876543210'),
(57, 'SE', 'SE57', 'SE57', 'SHILWANT CHIRAG C', '1996-05-06', 'secomps@gmail.com', '9876543210'),
(58, 'SE', 'SE58', 'SE58', 'SHINDE MANISH ', '1997-05-02', 'secomps@gmail.com', '9876543210'),
(59, 'SE', 'SE59', 'SE59', 'SHINGALA ANIRUDH R', '1996-05-04', 'secomps@gmail.com', '9876543210'),
(60, 'SE', 'SE60', 'SE60', 'SINGH ANIKET S', '1998-10-22', 'secomps@gmail.com', '9876543210'),
(61, 'SE', 'SE61', 'SE61', 'SINGH CHANDRAKISHOR I', '1998-04-20', 'secomps@gmail.com', '9876543210'),
(62, 'SE', 'SE62', 'SE62', 'SINHA RONITH VIJAY', '1998-06-25', 'secomps@gmail.com', '9876543210'),
(63, 'SE', 'SE63', 'SE63', 'SURATKAR MADHAVI ', '1998-12-12', 'secomps@gmail.com', '9876543210'),
(64, 'SE', 'SE64', 'SE64', 'TATKARE GAURI', '1998-11-28', 'secomps@gmail.com', '9876543210'),
(65, 'SE', 'SE65', 'SE65', 'THAKUR SHASHANK VIJAY', '1996-06-02', 'secomps@gmail.com', '9876543210'),
(66, 'SE', 'SE66', 'SE66', 'URUNKAR SANSKRUTI ', '1996-07-26', 'secomps@gmail.com', '9876543210'),
(67, 'SE', 'SE67', 'SE67', 'VAIDYA SWAPNEEL ', '1998-09-27', 'secomps@gmail.com', '9876543210'),
(68, 'SE', 'SE68', 'SE68', 'VALAKI AKSHAYKUMAR J', '1998-12-25', 'secomps@gmail.com', '9876543210'),
(69, 'SE', 'SE69', 'SE69', 'VARTAK SANCHIT S', '1998-03-18', 'secomps@gmail.com', '9876543210'),
(70, 'SE', 'SE70', 'SE70', 'VERMA ANANG UMESH', '1996-05-04', 'secomps@gmail.com', '9876543210'),
(71, 'SE', 'SE71', 'SE71', 'WADEKAR HIMANSHU S ', '1996-11-03', 'secomps@gmail.com', '9876543210'),
(72, 'SE', 'SE72', 'SE72', 'YADAV AKASH ARJUN', '1996-09-17', 'secomps@gmail.com', '9876543210'),
(73, 'SE', 'SE73', 'SE73', 'YELKAR POOJA SURESH', '1996-06-24', 'secomps@gmail.com', '9876543210'),
(74, 'SE', 'SE74', 'SE74', 'ZURANGE RAJESHWARI', '1997-01-18', 'secomps@gmail.com', '9876543210'),
(75, 'TE', 'TE01', 'TE01', 'ACHARYA SHREENIDHI ', '1997-12-29', 'tecomps@gmail.com', '9876543210'),
(76, 'TE', 'TE02', 'TE02', 'ANARSE TEJAS GANESH', '1997-08-08', 'tecomps@gmail.com', '9876543210'),
(77, 'TE', 'TE03', 'TE03', 'ANCHULE KIRAN D', '1998-11-05', 'tecomps@gmail.com', '9876543210'),
(78, 'TE', 'TE04', 'TE04', 'BHALE REKHA B', '1996-02-04', 'tecomps@gmail.com', '9876543210'),
(79, 'TE', 'TE05', 'TE05', 'BHATADE RACHANA', '1996-11-30', 'tecomps@gmail.com', '9876543210'),
(80, 'TE', 'TE06', 'TE06', 'BHUSAWAR AMEY J', '1998-09-10', 'tecomps@gmail.com', '9876543210'),
(81, 'TE', 'TE07', 'TE07', 'CHAL RUBITA R', '1996-10-17', 'tecomps@gmail.com', '9876543210'),
(82, 'TE', 'TE08', 'TE08', 'DALVI SANKETA S', '1998-10-23', 'tecomps@gmail.com', '9876543210'),
(83, 'TE', 'TE09', 'TE09', 'DEORE SARIKA GOVIND', '1998-07-31', 'tecomps@gmail.com', '9876543210'),
(84, 'TE', 'TE10', 'TE10', 'DHODI PRIYA', '1997-05-18', 'tecomps@gmail.com', '9876543210'),
(85, 'TE', 'TE11', 'TE11', 'DHONDE DIPALI', '1998-04-29', 'tecomps@gmail.com', '9876543210'),
(86, 'TE', 'TE12', 'TE12', 'GADKARI AJINKYA', '1998-08-23', 'tecomps@gmail.com', '9876543210'),
(87, 'TE', 'TE13', 'TE13', 'GAIKWAD ANISH A', '1996-02-08', 'tecomps@gmail.com', '9876543210'),
(88, 'TE', 'TE14', 'TE14', 'GANVIR ANIKET VIJAY ', '1997-09-10', 'tecomps@gmail.com', '9876543210'),
(89, 'TE', 'TE15', 'TE15', 'HALIM NAJIBA R', '1997-03-16', 'tecomps@gmail.com', '9876543210'),
(90, 'TE', 'TE16', 'TE16', 'JAGAD PRATIK DEEPAK', '1998-08-24', 'tecomps@gmail.com', '9876543210'),
(91, 'TE', 'TE17', 'TE17', 'JHA AMITKUMAR U', '1998-10-17', 'tecomps@gmail.com', '9876543210'),
(92, 'TE', 'TE18', 'TE18', 'JHA SHWETA ', '1998-03-01', 'tecomps@gmail.com', '9876543210'),
(93, 'TE', 'TE19', 'TE19', 'JOSHI YASH', '1998-10-28', 'tecomps@gmail.com', '9876543210'),
(94, 'TE', 'TE20', 'TE20', 'KADAM AMIT', '1996-10-13', 'tecomps@gmail.com', '9876543210'),
(95, 'TE', 'TE21', 'TE21', 'KALLA KARAN ', '1996-12-29', 'tecomps@gmail.com', '9876543210'),
(96, 'TE', 'TE22', 'TE22', 'KANSARE PRASAD S', '1997-10-31', 'tecomps@gmail.com', '9876543210'),
(97, 'TE', 'TE23', 'TE23', 'KASALEKAR VIKAS', '1997-05-04', 'tecomps@gmail.com', '9876543210'),
(98, 'TE', 'TE24', 'TE24', 'KAZI ARHAM MUSHTAQ', '1997-07-13', 'tecomps@gmail.com', '9876543210'),
(99, 'TE', 'TE25', 'TE25', 'KHARPADE UMESH', '1996-03-14', 'tecomps@gmail.com', '9876543210'),
(100, 'TE', 'TE26', 'TE26', 'KHAUNT AMAN', '1996-12-11', 'tecomps@gmail.com', '9876543210'),
(101, 'TE', 'TE27', 'TE27', 'KUCHA RAHUL M', '1996-06-28', 'tecomps@gmail.com', '9876543210'),
(102, 'TE', 'TE28', 'TE28', 'LAD YASH RAJENDRA', '1996-12-18', 'tecomps@gmail.com', '9876543210'),
(103, 'TE', 'TE29', 'TE29', 'MAISURIA VARUN T', '1997-06-09', 'tecomps@gmail.com', '9876543210'),
(104, 'TE', 'TE30', 'TE30', 'MALANKAR SHUBHAM ', '1997-05-19', 'tecomps@gmail.com', '9876543210'),
(105, 'TE', 'TE31', 'TE31', 'MALI JETAL', '1996-10-06', 'tecomps@gmail.com', '9876543210'),
(106, 'TE', 'TE32', 'TE32', 'MANGUKIYA MILAN ', '1998-10-03', 'tecomps@gmail.com', '9876543210'),
(107, 'TE', 'TE33', 'TE33', 'MANKAR JUHI', '1997-06-06', 'tecomps@gmail.com', '9876543210'),
(108, 'TE', 'TE34', 'TE34', 'MATKAR PRANALI', '1996-02-01', 'tecomps@gmail.com', '9876543210'),
(109, 'TE', 'TE35', 'TE35', 'MATKAR TANVI M', '1998-12-27', 'tecomps@gmail.com', '9876543210'),
(110, 'TE', 'TE36', 'TE36', 'MHATRE SNEHAL R', '1997-04-20', 'tecomps@gmail.com', '9876543210'),
(111, 'TE', 'TE37', 'TE37', 'NAIK JUIELY UMESH', '1996-07-16', 'tecomps@gmail.com', '9876543210'),
(112, 'TE', 'TE38', 'TE38', 'NAKTE PRIYA', '1996-07-30', 'tecomps@gmail.com', '9876543210'),
(113, 'TE', 'TE39', 'TE39', 'NIKUMBH AJAY SANJAY', '1996-07-15', 'tecomps@gmail.com', '9876543210'),
(114, 'TE', 'TE40', 'TE40', 'PANDIT CHINMAYEE', '1998-09-15', 'tecomps@gmail.com', '9876543210'),
(115, 'TE', 'TE41', 'TE41', 'PANIKKASSERY NIKHIL ', '1996-05-25', 'tecomps@gmail.com', '9876543210'),
(116, 'TE', 'TE42', 'TE42', 'PAREKH KALINDI VIJESH', '1997-10-25', 'tecomps@gmail.com', '9876543210'),
(117, 'TE', 'TE43', 'TE43', 'PARMAR PRATIK M', '1997-04-15', 'tecomps@gmail.com', '9876543210'),
(118, 'TE', 'TE44', 'TE44', 'PASALKAR ANAGHA', '1996-04-13', 'tecomps@gmail.com', '9876543210'),
(119, 'TE', 'TE45', 'TE45', 'PATANGE YASH SANJIV', '1996-05-28', 'tecomps@gmail.com', '9876543210'),
(120, 'TE', 'TE46', 'TE46', 'PATEL TEJAS VINOD', '1996-10-25', 'tecomps@gmail.com', '9876543210'),
(121, 'TE', 'TE47', 'TE47', 'PATIL RAJAS B', '1998-04-01', 'tecomps@gmail.com', '9876543210'),
(122, 'TE', 'TE48', 'TE48', 'PATIL VRISHALI K', '1996-12-16', 'tecomps@gmail.com', '9876543210'),
(123, 'TE', 'TE49', 'TE49', 'PHADKE MAITREYEE V', '1996-12-02', 'tecomps@gmail.com', '9876543210'),
(124, 'TE', 'TE50', 'TE50', 'PORWAL PRASHANT', '1996-11-16', 'tecomps@gmail.com', '9876543210'),
(125, 'TE', 'TE51', 'TE51', 'RANA NAITIK ', '1996-06-26', 'tecomps@gmail.com', '9876543210'),
(126, 'TE', 'TE52', 'TE52', 'RAUT AKHIL SAMIP', '1996-02-01', 'tecomps@gmail.com', '9876543210'),
(127, 'TE', 'TE53', 'TE53', 'RAWAT ABHISHEKSINGH ', '1997-12-05', 'tecomps@gmail.com', '9876543210'),
(128, 'TE', 'TE54', 'TE54', 'SALGAONKAR KIRAN M', '1997-05-15', 'tecomps@gmail.com', '9876543210'),
(129, 'TE', 'TE55', 'TE55', 'SALIAN PRITISH P', '1997-07-22', 'tecomps@gmail.com', '9876543210'),
(130, 'TE', 'TE56', 'TE56', 'SALVE SIDDHESH N', '1996-01-07', 'tecomps@gmail.com', '9876543210'),
(131, 'TE', 'TE57', 'TE57', 'SANKHE NITIN', '1997-03-04', 'tecomps@gmail.com', '9876543210'),
(132, 'TE', 'TE58', 'TE58', 'SARAIYA ESHAANEE K', '1998-11-14', 'tecomps@gmail.com', '9876543210'),
(133, 'TE', 'TE59', 'TE59', 'SARAK ONKAR', '1997-09-21', 'tecomps@gmail.com', '9876543210'),
(134, 'TE', 'TE60', 'TE60', 'SHARMA SANJEEVKUMAR', '1998-04-08', 'tecomps@gmail.com', '9876543210'),
(135, 'TE', 'TE61', 'TE61', 'SHENOY SANDEEP', '1998-08-01', 'tecomps@gmail.com', '9876543210'),
(136, 'TE', 'TE62', 'TE62', 'SHETH KAUSHAL G', '1996-08-27', 'tecomps@gmail.com', '9876543210'),
(137, 'TE', 'TE63', 'TE63', 'SHINDE SHRADDHA', '1996-11-01', 'tecomps@gmail.com', '9876543210'),
(138, 'TE', 'TE64', 'TE64', 'SINGH ANUJ DINESH', '1997-11-09', 'tecomps@gmail.com', '9876543210'),
(139, 'TE', 'TE65', 'TE65', 'SOLANKI POOJA PRAVIN', '1998-07-04', 'tecomps@gmail.com', '9876543210'),
(140, 'TE', 'TE66', 'TE66', 'THORAT SHIVANI R', '1996-07-30', 'tecomps@gmail.com', '9876543210'),
(141, 'TE', 'TE67', 'TE67', 'TIWARI RAHUL ', '1998-05-17', 'tecomps@gmail.com', '9876543210'),
(142, 'TE', 'TE68', 'TE68', 'TRIVEDI HAET NIRAV', '1996-05-21', 'tecomps@gmail.com', '9876543210'),
(143, 'TE', 'TE69', 'TE69', 'TRIVEDI TIRTH D', '1997-12-25', 'tecomps@gmail.com', '9876543210'),
(144, 'TE', 'TE70', 'TE70', 'VERMA DEEPANSHU ', '1996-09-15', 'tecomps@gmail.com', '9876543210'),
(145, 'TE', 'TE71', 'TE71', 'VISHAL PALVE', '1996-05-07', 'tecomps@gmail.com', '9876543210'),
(146, 'TE', 'TE72', 'TE72', 'WADEKAR PRATIK D', '1996-02-26', 'tecomps@gmail.com', '9876543210'),
(147, 'TE', 'TE73', 'TE73', 'WAGH RUCHITA', '1996-07-29', 'tecomps@gmail.com', '9876543210'),
(148, 'TE', 'TE74', 'TE74', 'WANI SHUBHAM ', '1996-06-09', 'tecomps@gmail.com', '9876543210'),
(149, 'TE', 'TE75', 'TE75', 'YADAV MAYUR GOVIND', '1997-04-13', 'tecomps@gmail.com', '9876543210'),
(150, 'TE', 'TE76', 'TE76', 'YADAV RITWIK', '1997-10-15', 'tecomps@gmail.com', '9876543210'),
(151, 'TE', 'TE77', 'TE77', 'YADAV SAMEER JAY P', '1996-08-13', 'tecomps@gmail.com', '9876543210');

-- --------------------------------------------------------

--
-- Table structure for table `te_dd`
--

CREATE TABLE `te_dd` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL,
  `2018-04-03` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `te_dd`
--

INSERT INTO `te_dd` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`, `2018-04-03`) VALUES
(1, 'TE01', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'TE02', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'TE03', 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(4, 'TE04', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(5, 'TE05', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(6, 'TE06', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(7, 'TE07', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'TE08', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'TE09', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(10, 'TE10', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'TE11', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 'TE12', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(13, 'TE13', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(14, 'TE14', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'TE15', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'TE16', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(17, 'TE17', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(18, 'TE18', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'TE19', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(20, 'TE20', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'TE21', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(22, 'TE22', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(23, 'TE23', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(24, 'TE24', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'TE25', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(26, 'TE26', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'TE27', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'TE28', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(29, 'TE29', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(30, 'TE30', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'TE31', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(32, 'TE32', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(33, 'TE33', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(34, 'TE34', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(35, 'TE35', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(36, 'TE36', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'TE37', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(38, 'TE38', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(39, 'TE39', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'TE40', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(41, 'TE41', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(42, 'TE42', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 'TE43', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(44, 'TE44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 'TE45', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 'TE46', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'TE47', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(48, 'TE48', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 'TE49', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(50, 'TE50', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(51, 'TE51', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 'TE52', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(53, 'TE53', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(54, 'TE54', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(55, 'TE55', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(56, 'TE56', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'TE57', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(58, 'TE58', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1),
(59, 'TE59', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'TE60', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(61, 'TE61', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'TE62', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(63, 'TE63', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'TE64', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(65, 'TE65', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(66, 'TE66', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'TE67', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'TE68', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'TE69', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(70, 'TE70', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(71, 'TE71', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'TE72', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 'TE73', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(74, 'TE74', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(75, 'TE75', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(76, 'TE76', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(77, 'TE77', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `te_marks`
--

CREATE TABLE `te_marks` (
  `RollNo` varchar(4) NOT NULL,
  `DD` int(2) NOT NULL,
  `SE` int(2) NOT NULL,
  `MCC` int(2) NOT NULL,
  `SPCC` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `te_marks`
--

INSERT INTO `te_marks` (`RollNo`, `DD`, `SE`, `MCC`, `SPCC`) VALUES
('TE01', 1, 20, 18, 15),
('TE02', 8, 20, 12, 15),
('TE03', 10, 20, 14, 15),
('TE04', 8, 20, 16, 15),
('TE05', 6, 20, 3, 16),
('TE06', 18, 14, 0, 17),
('TE07', 9, 4, 1, 8),
('TE08', 7, 9, 17, 19),
('TE09', 6, 4, 2, 2),
('TE10', 2, 8, 16, 1),
('TE11', 16, 0, 11, 18),
('TE12', 12, 2, 12, 18),
('TE13', 8, 10, 6, 7),
('TE14', 9, 9, 2, 0),
('TE15', 20, 8, 7, 1),
('TE16', 0, 20, 6, 17),
('TE17', 16, 14, 17, 12),
('TE18', 16, 8, 12, 10),
('TE19', 8, 8, 13, 2),
('TE20', 17, 14, 0, 10),
('TE21', 12, 8, 17, 18),
('TE22', 18, 4, 16, 17),
('TE23', 4, 5, 3, 0),
('TE24', 14, 11, 16, 18),
('TE25', 15, 20, 18, 7),
('TE26', 7, 5, 13, 3),
('TE27', 13, 17, 10, 9),
('TE28', 11, 16, 20, 17),
('TE29', 12, 11, 17, 11),
('TE30', 12, 3, 18, 20),
('TE31', 20, 0, 19, 14),
('TE32', 13, 4, 12, 17),
('TE33', 9, 1, 0, 1),
('TE34', 10, 20, 15, 16),
('TE35', 9, 12, 15, 14),
('TE36', 1, 15, 7, 4),
('TE37', 17, 17, 2, 12),
('TE38', 11, 15, 0, 14),
('TE39', 11, 2, 15, 11),
('TE40', 1, 13, 12, 3),
('TE41', 12, 8, 10, 4),
('TE42', 16, 0, 0, 3),
('TE43', 19, 12, 1, 1),
('TE44', 5, 9, 4, 19),
('TE45', 0, 4, 2, 13),
('TE46', 20, 9, 13, 0),
('TE47', 6, 18, 11, 15),
('TE48', 13, 20, 4, 17),
('TE49', 12, 15, 20, 10),
('TE50', 1, 2, 7, 18),
('TE51', 1, 1, 15, 5),
('TE52', 7, 9, 12, 20),
('TE53', 10, 3, 2, 18),
('TE54', 6, 2, 5, 9),
('TE55', 10, 8, 4, 16),
('TE56', 13, 10, 11, 17),
('TE57', 8, 19, 7, 7),
('TE58', 19, 15, 6, 4),
('TE59', 11, 3, 5, 4),
('TE60', 6, 14, 12, 20),
('TE61', 4, 13, 3, 2),
('TE62', 11, 11, 16, 7),
('TE63', 0, 17, 16, 17),
('TE64', 11, 8, 18, 13),
('TE65', 0, 11, 4, 20),
('TE66', 0, 0, 5, 18),
('TE67', 20, 0, 13, 15),
('TE68', 2, 2, 10, 19),
('TE69', 15, 7, 18, 20),
('TE70', 9, 5, 3, 19),
('TE71', 16, 3, 5, 5),
('TE72', 14, 2, 9, 6),
('TE73', 14, 10, 6, 12),
('TE74', 1, 9, 20, 14),
('TE75', 1, 2, 17, 19),
('TE76', 0, 4, 7, 3),
('TE77', 15, 6, 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `te_mcc`
--

CREATE TABLE `te_mcc` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `te_mcc`
--

INSERT INTO `te_mcc` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`) VALUES
(1, 'TE01', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'TE02', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'TE03', 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(4, 'TE04', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(5, 'TE05', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(6, 'TE06', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(7, 'TE07', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'TE08', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'TE09', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(10, 'TE10', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'TE11', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 'TE12', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(13, 'TE13', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(14, 'TE14', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'TE15', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'TE16', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(17, 'TE17', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(18, 'TE18', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'TE19', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(20, 'TE20', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'TE21', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(22, 'TE22', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(23, 'TE23', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(24, 'TE24', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'TE25', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(26, 'TE26', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'TE27', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'TE28', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(29, 'TE29', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(30, 'TE30', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'TE31', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(32, 'TE32', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(33, 'TE33', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(34, 'TE34', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(35, 'TE35', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(36, 'TE36', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'TE37', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(38, 'TE38', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(39, 'TE39', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'TE40', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(41, 'TE41', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(42, 'TE42', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 'TE43', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(44, 'TE44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 'TE45', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 'TE46', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'TE47', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(48, 'TE48', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 'TE49', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(50, 'TE50', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(51, 'TE51', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 'TE52', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(53, 'TE53', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(54, 'TE54', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(55, 'TE55', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(56, 'TE56', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'TE57', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(58, 'TE58', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(59, 'TE59', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'TE60', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(61, 'TE61', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'TE62', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(63, 'TE63', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'TE64', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(65, 'TE65', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(66, 'TE66', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'TE67', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'TE68', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'TE69', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(70, 'TE70', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(71, 'TE71', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'TE72', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 'TE73', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(74, 'TE74', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(75, 'TE75', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(76, 'TE76', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(77, 'TE77', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `te_quiz`
--

CREATE TABLE `te_quiz` (
  `QNO` int(1) NOT NULL,
  `Question` text NOT NULL,
  `Option1` text NOT NULL,
  `Option2` text NOT NULL,
  `Option3` text NOT NULL,
  `Option4` text NOT NULL,
  `OptionC` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `te_quiz`
--

INSERT INTO `te_quiz` (`QNO`, `Question`, `Option1`, `Option2`, `Option3`, `Option4`, `OptionC`) VALUES
(1, '1. A distributed database has which of the following advantages over a centralized database?', 'Software cost', 'Software complexity', 'Slow Response', 'Modular growth', 'Modular growth'),
(2, '2. An autonomous homogenous environment is which of the following?', 'The same DBMS is at each node and each DBMS works independently.', 'The same DBMS is at each node and a central DBMS coordinates database access', 'A different DBMS is at each node and each DBMS works independently.', 'A different DBMS is at each node and a central DBMS coordinates database access.', 'A different DBMS is at each node and a central DBMS coordinates database access.'),
(3, '3. A transaction manager is which of the following?', 'Maintains a log of transactions', 'Maintains before and after database images', 'Maintains appropriate concurrency control', 'All of the above.', 'All of the above.'),
(4, '4. Location transparency allows for which of the following?', 'Users to treat the data as if it is at one location', 'Programmers to treat the data as if it is at one location', 'Managers to treat the data as if it is at one location', 'All of the above.', 'All of the above.'),
(5, '5. A heterogeneous distributed database is which of the following?', 'The same DBMS is used at each location and data are not distributed across all nodes.', 'The same DBMS is used at each location and data are distributed across all nodes.', 'A different DBMS is used at each location and data are not distributed across all nodes.', 'A different DBMS is used at each location and data are distributed across all nodes.', 'A different DBMS is used at each location and data are distributed across all nodes.'),
(6, '1 . What is memory in Computer ?', 'is a sequence of instructions', 'is the device where information is stored', 'is an device that performs a sequence of operations specified by instructions in memory', 'none of these', 'is the device where information is stored'),
(7, '2 . Assembler is a machine dependent, because of?', 'Argument list array(ALA)', 'Macro definition table(MDT)', 'Pseudo operation table(POT)', 'Mnemonics operation table(MOT)', 'Mnemonics operation table(MOT)'),
(8, '3 . A program -', 'is a sequence of instructions', 'is the device where information is stored', 'is a device that performs a sequence of operations specified by instructions in memory', 'none of these', 'is a sequence of instructions'),
(9, '4 . Macro processor is an inbuilt function of -', 'Assembler', 'Loader', 'Linker', 'Editor', 'Assembler'),
(10, '5 . A processor-', 'is a sequence of instructions', 'is the device where information is stored', 'is a device that performs a sequence of operations specified by instructions in memory', 'none of these', 'is a device that performs a sequence of operations specified by instructions in memory'),
(11, '1 . What is a DFD ?', 'The primary output of the system design phase', 'Mainly used at systems specification stage', 'The modern version of flowchart', 'All of the above', 'The primary output of the system design phase'),
(12, '2 . Checking quality of software in both simulated and live environments is known as', 'Validity', 'Usability', 'Checking', 'Validation', 'Validation'),
(13, '3 . The system should provide which thing, to avoid error in transcription and transposition, during data entry?', 'Batch totals', 'A check digit', 'A hand totals', 'All of these', 'All of these'),
(14, '4 . DFD shows', 'The processes', 'The flow of data', 'The areas where they are stored', 'All of the above', 'All of the above'),
(15, '5 . The time lag, between initiating a query and receiving a response is called', 'Waiting time', 'Response time', 'Processing time', 'Turn around time', 'Response time'),
(16, '1. 3G W-CDMA is also known as', 'UMTS', 'DECT', 'DCS-1800', 'ETACS', 'UMTS'),
(17, '2. Commonly used mode for 3G networks is', 'TDMA', 'FDMA', 'TDD', 'FDD', 'FDD'),
(18, '3. The minimum spectrum allocation required for W-CDMA is', '5MHz', '2MHz', '500KHz', '100KHz', '5MHz'),
(19, '4. CDMA2000 1xEV provides high speed data access with channel allocation of', '5MHz', '50 MHz', '1.25 MHz', '4MHz', '1.25 MHz'),
(20, '5. In TD-SDMA, there is a frame of _______ milliseconds and the frame is divided into _____ time slots.', '5,7', '7,5', '2,5', '5,2', '5,7');

-- --------------------------------------------------------

--
-- Table structure for table `te_quizmarks`
--

CREATE TABLE `te_quizmarks` (
  `ID` varchar(4) NOT NULL,
  `DD` int(1) NOT NULL,
  `SPCC` int(1) NOT NULL,
  `SE` int(1) NOT NULL,
  `MCC` int(1) NOT NULL,
  `DONE` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `te_quizmarks`
--

INSERT INTO `te_quizmarks` (`ID`, `DD`, `SPCC`, `SE`, `MCC`, `DONE`) VALUES
('TE01', 0, 3, 3, 1, 0),
('TE02', 0, 0, 0, 1, 0),
('TE03', 1, 1, 0, 1, 0),
('TE04', 0, 0, 0, 0, 0),
('TE05', 0, 0, 0, 0, 0),
('TE06', 0, 0, 0, 0, 0),
('TE07', 0, 0, 0, 0, 0),
('TE08', 0, 0, 0, 0, 0),
('TE09', 0, 0, 0, 0, 0),
('TE10', 0, 0, 0, 0, 0),
('TE11', 0, 0, 0, 0, 0),
('TE12', 0, 0, 0, 0, 0),
('TE13', 0, 0, 0, 0, 0),
('TE14', 0, 0, 0, 0, 0),
('TE15', 4, 2, 1, 1, 0),
('TE16', 0, 0, 0, 0, 0),
('TE17', 0, 0, 0, 0, 0),
('TE18', 0, 0, 0, 0, 0),
('TE19', 0, 0, 0, 0, 0),
('TE20', 0, 0, 0, 0, 0),
('TE21', 0, 0, 0, 0, 0),
('TE22', 0, 0, 0, 0, 0),
('TE23', 0, 0, 0, 0, 0),
('TE24', 0, 0, 0, 0, 0),
('TE25', 0, 0, 0, 0, 0),
('TE26', 0, 0, 0, 0, 0),
('TE27', 0, 0, 0, 0, 0),
('TE28', 1, 1, 0, 1, 1),
('TE29', 0, 0, 0, 0, 0),
('TE30', 0, 0, 0, 0, 0),
('TE31', 0, 0, 0, 0, 0),
('TE32', 4, 0, 1, 1, 1),
('TE33', 1, 1, 0, 0, 0),
('TE34', 0, 0, 0, 0, 0),
('TE35', 0, 0, 0, 0, 0),
('TE36', 0, 0, 0, 0, 0),
('TE37', 0, 0, 0, 0, 0),
('TE38', 0, 0, 0, 0, 0),
('TE39', 0, 2, 0, 1, 1),
('TE40', 0, 0, 0, 0, 0),
('TE41', 0, 1, 0, 0, 1),
('TE42', 0, 1, 1, 1, 0),
('TE43', 0, 1, 0, 1, 0),
('TE44', 0, 0, 0, 0, 0),
('TE45', 0, 0, 0, 0, 0),
('TE46', 0, 0, 0, 0, 0),
('TE47', 0, 0, 0, 0, 0),
('TE48', 0, 0, 0, 0, 0),
('TE49', 0, 0, 0, 0, 0),
('TE50', 1, 1, 0, 1, 0),
('TE51', 0, 0, 0, 0, 0),
('TE52', 0, 0, 0, 0, 0),
('TE53', 0, 0, 0, 0, 0),
('TE54', 0, 1, 0, 1, 1),
('TE55', 4, 4, 4, 5, 0),
('TE56', 4, 4, 5, 5, 0),
('TE57', 0, 0, 0, 0, 0),
('TE58', 4, 2, 3, 4, 1),
('TE59', 0, 0, 0, 0, 0),
('TE60', 0, 0, 0, 0, 0),
('TE61', 0, 0, 0, 0, 0),
('TE62', 0, 0, 0, 0, 0),
('TE63', 0, 0, 0, 0, 0),
('TE64', 0, 0, 0, 0, 0),
('TE65', 0, 0, 0, 0, 0),
('TE66', 0, 0, 0, 0, 0),
('TE67', 0, 0, 0, 0, 0),
('TE68', 0, 0, 0, 0, 0),
('TE69', 0, 0, 0, 0, 0),
('TE70', 0, 0, 0, 0, 0),
('TE71', 0, 0, 0, 0, 0),
('TE72', 0, 0, 0, 0, 0),
('TE73', 0, 0, 0, 0, 0),
('TE74', 0, 0, 0, 0, 0),
('TE75', 0, 0, 0, 0, 0),
('TE76', 0, 0, 0, 0, 0),
('TE77', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `te_se`
--

CREATE TABLE `te_se` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `te_se`
--

INSERT INTO `te_se` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`) VALUES
(1, 'TE01', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'TE02', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(3, 'TE03', 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(4, 'TE04', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(5, 'TE05', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(6, 'TE06', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(7, 'TE07', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(8, 'TE08', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(9, 'TE09', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(10, 'TE10', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(11, 'TE11', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(12, 'TE12', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(13, 'TE13', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(14, 'TE14', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(15, 'TE15', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(16, 'TE16', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(17, 'TE17', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(18, 'TE18', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(19, 'TE19', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(20, 'TE20', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(21, 'TE21', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(22, 'TE22', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(23, 'TE23', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(24, 'TE24', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(25, 'TE25', 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(26, 'TE26', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(27, 'TE27', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(28, 'TE28', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(29, 'TE29', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(30, 'TE30', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(31, 'TE31', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(32, 'TE32', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(33, 'TE33', 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(34, 'TE34', 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(35, 'TE35', 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(36, 'TE36', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(37, 'TE37', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(38, 'TE38', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(39, 'TE39', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(40, 'TE40', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(41, 'TE41', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(42, 'TE42', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(43, 'TE43', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(44, 'TE44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(45, 'TE45', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(46, 'TE46', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(47, 'TE47', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(48, 'TE48', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(49, 'TE49', 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(50, 'TE50', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(51, 'TE51', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(52, 'TE52', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(53, 'TE53', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(54, 'TE54', 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(55, 'TE55', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(56, 'TE56', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(57, 'TE57', 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(58, 'TE58', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(59, 'TE59', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(60, 'TE60', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(61, 'TE61', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'TE62', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(63, 'TE63', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(64, 'TE64', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(65, 'TE65', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(66, 'TE66', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(67, 'TE67', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(68, 'TE68', 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(69, 'TE69', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(70, 'TE70', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(71, 'TE71', 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(72, 'TE72', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(73, 'TE73', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(74, 'TE74', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0),
(75, 'TE75', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(76, 'TE76', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1),
(77, 'TE77', 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `te_spcc`
--

CREATE TABLE `te_spcc` (
  `No` int(2) NOT NULL,
  `ID` varchar(4) NOT NULL,
  `2018-03-12` int(1) NOT NULL,
  `2018-03-13` int(1) NOT NULL,
  `2018-03-14` int(1) NOT NULL,
  `2018-03-15` int(1) NOT NULL,
  `2018-03-16` int(1) NOT NULL,
  `2018-03-19` int(1) NOT NULL,
  `2018-03-20` int(1) NOT NULL,
  `2018-03-21` int(1) NOT NULL,
  `2018-03-22` int(1) NOT NULL,
  `2018-03-23` int(1) NOT NULL,
  `2018-03-26` int(1) NOT NULL,
  `2018-03-27` int(1) NOT NULL,
  `2018-03-28` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `te_spcc`
--

INSERT INTO `te_spcc` (`No`, `ID`, `2018-03-12`, `2018-03-13`, `2018-03-14`, `2018-03-15`, `2018-03-16`, `2018-03-19`, `2018-03-20`, `2018-03-21`, `2018-03-22`, `2018-03-23`, `2018-03-26`, `2018-03-27`, `2018-03-28`) VALUES
(1, 'TE01', 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1),
(2, 'TE02', 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1),
(3, 'TE03', 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1),
(4, 'TE04', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0),
(5, 'TE05', 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0),
(6, 'TE06', 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0),
(7, 'TE07', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(8, 'TE08', 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1),
(9, 'TE09', 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0),
(10, 'TE10', 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1),
(11, 'TE11', 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1),
(12, 'TE12', 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1),
(13, 'TE13', 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0),
(14, 'TE14', 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1),
(15, 'TE15', 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1),
(16, 'TE16', 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0),
(17, 'TE17', 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0),
(18, 'TE18', 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
(19, 'TE19', 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0),
(20, 'TE20', 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1),
(21, 'TE21', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(22, 'TE22', 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1),
(23, 'TE23', 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0),
(24, 'TE24', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(25, 'TE25', 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1),
(26, 'TE26', 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1),
(27, 'TE27', 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1),
(28, 'TE28', 0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1),
(29, 'TE29', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0),
(30, 'TE30', 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1),
(31, 'TE31', 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 0),
(32, 'TE32', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1),
(33, 'TE33', 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0),
(34, 'TE34', 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0),
(35, 'TE35', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1),
(36, 'TE36', 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1),
(37, 'TE37', 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0),
(38, 'TE38', 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1),
(39, 'TE39', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1),
(40, 'TE40', 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1),
(41, 'TE41', 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0),
(42, 'TE42', 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1),
(43, 'TE43', 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0),
(44, 'TE44', 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
(45, 'TE45', 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 0, 1),
(46, 'TE46', 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1),
(47, 'TE47', 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0),
(48, 'TE48', 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1),
(49, 'TE49', 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0),
(50, 'TE50', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(51, 'TE51', 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1),
(52, 'TE52', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(53, 'TE53', 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0),
(54, 'TE54', 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0),
(55, 'TE55', 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1),
(56, 'TE56', 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1),
(57, 'TE57', 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0),
(58, 'TE58', 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0),
(59, 'TE59', 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
(60, 'TE60', 0, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1),
(61, 'TE61', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(62, 'TE62', 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1),
(63, 'TE63', 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
(64, 'TE64', 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 0),
(65, 'TE65', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
(66, 'TE66', 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
(67, 'TE67', 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(68, 'TE68', 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1),
(69, 'TE69', 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 1),
(70, 'TE70', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0),
(71, 'TE71', 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1),
(72, 'TE72', 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1),
(73, 'TE73', 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1),
(74, 'TE74', 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0),
(75, 'TE75', 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1),
(76, 'TE76', 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1),
(77, 'TE77', 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD UNIQUE KEY `SNO` (`SNO`);

--
-- Indexes for table `compsstaff`
--
ALTER TABLE `compsstaff`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD KEY `No` (`No`);

--
-- Indexes for table `te`
--
ALTER TABLE `te`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `te_dd`
--
ALTER TABLE `te_dd`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `te_mcc`
--
ALTER TABLE `te_mcc`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `te_se`
--
ALTER TABLE `te_se`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `te_spcc`
--
ALTER TABLE `te_spcc`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
