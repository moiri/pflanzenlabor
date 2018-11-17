-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 02, 2018 at 03:07 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pflanzenlabor_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `date` date NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `link` varchar(250) NOT NULL,
  `link_label` varchar(100) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `impressions`
--

CREATE TABLE `impressions` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `id_class` int(10) UNSIGNED ZEROFILL DEFAULT NULL COMMENT 'a link to the class this impression refers to',
  `title` varchar(100) DEFAULT NULL COMMENT 'the title of the impression. If left empty the title of the linked class is used',
  `subtitle` varchar(200) DEFAULT NULL COMMENT 'the subtitle of the impression. If left empty the subtitle of the linked class is used',
  `description` longtext NOT NULL COMMENT 'a description of the impression event'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `impressions_content`
--

CREATE TABLE `impressions_content` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `id_impressions` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'link to an impressionen event',
  `name` varchar(100) NOT NULL COMMENT 'can be anything. This is here to help creating the links.',
  `id_type` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'the type of a quadrätli',
  `position` tinyint(4) NOT NULL COMMENT 'the position of the quadrätli in a impression event'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `impressions_content_type`
--

CREATE TABLE `impressions_content_type` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `impressions_fields`
--

CREATE TABLE `impressions_fields` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `id_impressions_content` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'link to the quadrätli of an event',
  `content` longtext NOT NULL COMMENT 'content of quadrätli in an impression event',
  `id_type` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'the type of the content'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `impressions_fields_type`
--

CREATE TABLE `impressions_fields_type` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `packets`
--

CREATE TABLE `packets` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `img_path` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `user_packets_order`
--

CREATE TABLE `user_packets_order` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_user` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_packets` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_payment` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `is_ordered` tinyint(1) NOT NULL DEFAULT '0',
  `is_payed` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(500) DEFAULT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `d_first_name` varchar(100) NOT NULL,
  `d_last_name` varchar(100) NOT NULL,
  `d_street` varchar(100) NOT NULL,
  `d_street_number` varchar(10) NOT NULL,
  `d_zip` varchar(10) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `g_first_name` varchar(100) NOT NULL,
  `g_last_name` varchar(100) NOT NULL,
  `g_street` varchar(100) NOT NULL,
  `g_street_number` varchar(10) NOT NULL,
  `g_zip` varchar(10) NOT NULL,
  `g_city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `vaucher_types`
--

CREATE TABLE `vaucher_types` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `img_path` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `position` int(4) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `impressions`
--
ALTER TABLE `impressions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_class` (`id_class`);

--
-- Indexes for table `impressions_content`
--
ALTER TABLE `impressions_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_impressions` (`id_impressions`);

--
-- Indexes for table `impressions_content_type`
--
ALTER TABLE `impressions_content_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `impressions_fields`
--
ALTER TABLE `impressions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_impressions_content` (`id_impressions_content`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `impressions_fields_type`
--
ALTER TABLE `impressions_fields_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packets`
--
ALTER TABLE `packets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_packets_order`
--
ALTER TABLE `user_packets_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_packets` (`id_packets`),
  ADD KEY `id_payment` (`id_payment`);

--
-- Indexes for table `vaucher_types`
--
ALTER TABLE `vaucher_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `impressions`
--
ALTER TABLE `impressions`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `impressions_content`
--
ALTER TABLE `impressions_content`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `impressions_content_type`
--
ALTER TABLE `impressions_content_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `impressions_fields`
--
ALTER TABLE `impressions_fields`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `impressions_fields_type`
--
ALTER TABLE `impressions_fields_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `packets`
--
ALTER TABLE `packets`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_packets_order`
--
ALTER TABLE `user_packets_order`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vaucher_types`
--
ALTER TABLE `vaucher_types`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `impressions`
--
ALTER TABLE `impressions`
  ADD CONSTRAINT `fk_impressions_id_class` FOREIGN KEY (`id_class`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `impressions_content`
--
ALTER TABLE `impressions_content`
  ADD CONSTRAINT `fk_impressions_content_id_impressions` FOREIGN KEY (`id_impressions`) REFERENCES `impressions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_impressions_content_id_type` FOREIGN KEY (`id_type`) REFERENCES `impressions_content_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `impressions_fields`
--
ALTER TABLE `impressions_fields`
  ADD CONSTRAINT `fk_impressions_fields_id_impressions_content` FOREIGN KEY (`id_impressions_content`) REFERENCES `impressions_content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_impressions_fields_id_type` FOREIGN KEY (`id_type`) REFERENCES `impressions_fields_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_packets_order`
--
ALTER TABLE `user_packets_order`
  ADD CONSTRAINT `fk_user_packets_order_id_packets` FOREIGN KEY (`id_packets`) REFERENCES `packets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_packets_order_id_payment` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
