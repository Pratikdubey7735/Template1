-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2024 at 07:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gardner`
--

-- --------------------------------------------------------

--
-- Table structure for table `gard_enquiry`
--

CREATE TABLE `gard_enquiry` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gard_enquiry`
--

INSERT INTO `gard_enquiry` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `added_date`) VALUES
(1, 'Rakesh kumar', 'krrakesh014@gmail.com', 9999008877, 'sdfdsf', 'dsdf', '2023-08-08 02:16:24'),
(2, 'Anshul Gopal Malviya', 'anshulkingmalviya@gmail.com', 9999008877, 's', 's', '2024-11-23 01:13:12'),
(3, 'Anshul Gopal Maslviya', 'ansshulkingmalviya@gmail.com', 9999008877, 'sssss', 'sssss', '2024-11-23 01:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `gard_login`
--

CREATE TABLE `gard_login` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `passwd` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gard_login`
--

INSERT INTO `gard_login` (`id`, `username`, `passwd`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `gard_projectcat`
--

CREATE TABLE `gard_projectcat` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gard_projectcat`
--

INSERT INTO `gard_projectcat` (`id`, `name`, `status`, `added_date`, `modified_date`) VALUES
(1, 'Completed Projects', 1, '2023-03-13 12:46:01', '2023-03-13 12:51:06'),
(3, 'Ongoing Projects', 1, '2023-08-08 08:57:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gard_projects`
--

CREATE TABLE `gard_projects` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gard_projects`
--

INSERT INTO `gard_projects` (`id`, `cat_id`, `name`, `image`, `status`, `added_date`, `modified_date`) VALUES
(2, 1, 'Lorem ipsum dolor sit amet', 'service-1.jpg', 1, '2023-03-13 12:58:42', '2023-03-13 01:04:45'),
(3, 1, 'Lorem ipsum dolor sit amet', '1613340.jpg', 1, '2023-08-08 01:52:46', '0000-00-00 00:00:00'),
(4, 1, 'Lorem ipsum dolor sit amet', '2018-tata-nexon-geneva-edition-4k-hd-e0d8.jpg', 1, '2023-08-08 01:53:06', '0000-00-00 00:00:00'),
(5, 3, 'Lorem ipsum dolor sit amet', '22_10.jpg', 1, '2023-08-08 01:53:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gard_services`
--

CREATE TABLE `gard_services` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gard_services`
--

INSERT INTO `gard_services` (`id`, `name`, `description`, `icon`, `image`, `status`, `added_date`, `modified_date`) VALUES
(1, 'Landscaping 34few', '<span>Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</span>', 'icon-3.png', '2013_skoda_rapid_5.jpg', 1, '2023-03-13 12:43:15', '0000-00-00 00:00:00'),
(5, 'Landscaping 34few', '<span>Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</span>', 'icon-3.png', '2013_skoda_rapid_5.jpg', 1, '2023-03-13 12:43:15', '0000-00-00 00:00:00'),
(6, 'Landscaping 34few', '<span>Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</span>', 'icon-3.png', '2013_skoda_rapid_5.jpg', 1, '2023-03-13 12:43:15', '0000-00-00 00:00:00'),
(7, 'Landscaping 34few', '<span>Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</span>', 'icon-3.png', '2013_skoda_rapid_5.jpg', 1, '2023-03-13 12:43:15', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gard_sitesettings`
--

CREATE TABLE `gard_sitesettings` (
  `id` int(11) NOT NULL,
  `phone1` bigint(10) NOT NULL,
  `phone2` bigint(10) NOT NULL,
  `email` text NOT NULL,
  `fb` text NOT NULL,
  `tw` text NOT NULL,
  `insta` text NOT NULL,
  `youtube` text NOT NULL,
  `linkedin` text NOT NULL,
  `address` text NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gard_sitesettings`
--

INSERT INTO `gard_sitesettings` (`id`, `phone1`, `phone2`, `email`, `fb`, `tw`, `insta`, `youtube`, `linkedin`, `address`, `logo`, `favicon`) VALUES
(1, 7709447767, 7709447767, 'ceo@unizz.tech', 'Unizztech', '#', '#', '#', '#', 'Nagpur', 'PATHAK_WEBSITE_LOGO.png', 'PATHAK_WEBSITE_LOGO.png');

-- --------------------------------------------------------

--
-- Table structure for table `gard_slider`
--

CREATE TABLE `gard_slider` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `heading` text NOT NULL,
  `url` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gard_slider`
--

INSERT INTO `gard_slider` (`id`, `image`, `heading`, `url`, `status`, `added_date`, `modified_date`) VALUES
(5, 'carousel-1.jpg', 'Lorem ipsum dolor sit amet', 'unizz.tech', 1, '2024-11-24 12:47:35', NULL),
(6, 'carousel-2.jpg', 'Lorem ipsum dolor sit amet', 'unizz.tech', 1, '2024-11-24 12:48:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gard_team`
--

CREATE TABLE `gard_team` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `desgination` text NOT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gard_team`
--

INSERT INTO `gard_team` (`id`, `name`, `desgination`, `image`, `status`, `added_date`, `modified_date`) VALUES
(1, 'Doris Jordan ewfsdfds', 'Landscape Designer', 'team-1.jpg', 1, '2023-03-13 01:12:46', '0000-00-00 00:00:00'),
(2, 'Doris Jordan ewfsdfds', 'Landscape Designer', 'team-1.jpg', 1, '2023-03-13 01:12:46', '0000-00-00 00:00:00'),
(3, 'Doris Jordan ewfsdfds', 'Landscape Designer', 'team-1.jpg', 1, '2023-03-13 01:12:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gard_testimonials`
--

CREATE TABLE `gard_testimonials` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` text NOT NULL,
  `profession` text NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gard_testimonials`
--

INSERT INTO `gard_testimonials` (`id`, `image`, `name`, `profession`, `description`, `status`, `added_date`, `modified_date`) VALUES
(1, 'testimonial-2.jpg', 'Rahul Goyal ewfdsfds', 'Web Developer', '<span>Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat.</span>', 1, '2023-03-13 01:17:07', '2023-03-13 01:22:46'),
(2, 'PATHAK_WEBSITE_LOGO.png', 'Anshul Gopal Malviya', 'SDE', 'Dolores sed duo clita tempor justo dolor et stet lorem kasd labore dolore lorem ipsum. At lorem lorem magna ut et, nonumy et labore et tempor diam tempor erat.', 1, '2024-11-24 10:47:39', '2024-11-24 10:48:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gard_enquiry`
--
ALTER TABLE `gard_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gard_login`
--
ALTER TABLE `gard_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gard_projectcat`
--
ALTER TABLE `gard_projectcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gard_projects`
--
ALTER TABLE `gard_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gard_services`
--
ALTER TABLE `gard_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gard_sitesettings`
--
ALTER TABLE `gard_sitesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gard_slider`
--
ALTER TABLE `gard_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gard_team`
--
ALTER TABLE `gard_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gard_testimonials`
--
ALTER TABLE `gard_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gard_enquiry`
--
ALTER TABLE `gard_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gard_login`
--
ALTER TABLE `gard_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gard_projectcat`
--
ALTER TABLE `gard_projectcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gard_projects`
--
ALTER TABLE `gard_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gard_services`
--
ALTER TABLE `gard_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gard_sitesettings`
--
ALTER TABLE `gard_sitesettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gard_slider`
--
ALTER TABLE `gard_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gard_team`
--
ALTER TABLE `gard_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gard_testimonials`
--
ALTER TABLE `gard_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
