-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 08, 2018 at 11:33 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pflanzenlabor`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `name` varchar(100) NOT NULL COMMENT 'name of the class',
  `subtitle` varchar(200) NOT NULL COMMENT 'short descriptive sentence to describe the class',
  `description` longtext NOT NULL COMMENT 'a verbose description of the class',
  `img` varchar(100) NOT NULL COMMENT 'name of the small list image to be displayed',
  `img_desc` varchar(100) DEFAULT NULL COMMENT 'name of the image to be displayed in the description text',
  `id_type` int(11) NOT NULL COMMENT 'id of the class type (e.g Pflanzenausflug)',
  `place` varchar(200) NOT NULL COMMENT 'where does the class take place (e.g. Umgebung Bern)',
  `time` varchar(100) NOT NULL COMMENT 'how long does the class last (e.g 10:00 - 16:00)',
  `pdf` varchar(100) DEFAULT NULL COMMENT 'name of the pdf file to be downloaded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains all class descriptions (class instances are created with the class_dates table)';

-- --------------------------------------------------------

--
-- Table structure for table `class_dates`
--

CREATE TABLE `class_dates` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `id_class` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'the unique id of a class',
  `date` date NOT NULL COMMENT 'the date of the class',
  `places_max` smallint(6) NOT NULL DEFAULT '8' COMMENT 'maximal available places',
  `places_booked` smallint(6) NOT NULL DEFAULT '0' COMMENT 'slots that are already booked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains all dates of classes. Each date creates an instance of the linked class.';

-- --------------------------------------------------------

--
-- Table structure for table `class_section`
--

CREATE TABLE `class_section` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `id_class` int(11) UNSIGNED ZEROFILL NOT NULL COMMENT 'refers to a class',
  `id_section` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'refers to a section'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class_type`
--

CREATE TABLE `class_type` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `name` varchar(100) NOT NULL COMMENT 'name of the class type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='class types serve as tags to group classes that are similar in some aspects';

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `id_section_type` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'use this filed to link a class section to a section type.',
  `id_section_title` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'use this field to link a class section to a section title',
  `content` longtext NOT NULL COMMENT 'here comes to content of a class section. It is rendered according to the choosen section type.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains all class sections. Don''t hesitate to reuse sections for multiple classes.';

-- --------------------------------------------------------

--
-- Table structure for table `section_title`
--

CREATE TABLE `section_title` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `title` varchar(100) NOT NULL COMMENT 'the title of a class section. Before creating a new title check wheter a similar one already exists in this table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains all titles of class sections';

-- --------------------------------------------------------

--
-- Table structure for table `section_type`
--

CREATE TABLE `section_type` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `type` varchar(100) NOT NULL COMMENT 'depending on the chosen type, the content of a section is interpreted differently. This is useful to have some control over the apperance of the text.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='this is a bit tricky: this table must rarely be modified. It is used to indicate how the content of a section wil be displayed.';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`);

--
-- Indexes for table `class_dates`
--
ALTER TABLE `class_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_class` (`id_class`);

--
-- Indexes for table `class_section`
--
ALTER TABLE `class_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_class` (`id_class`),
  ADD KEY `id_section` (`id_section`);

--
-- Indexes for table `class_type`
--
ALTER TABLE `class_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_section_title` (`id_section_type`),
  ADD KEY `id_section_title_2` (`id_section_title`);

--
-- Indexes for table `section_title`
--
ALTER TABLE `section_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_type`
--
ALTER TABLE `section_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `class_dates`
--
ALTER TABLE `class_dates`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `class_type`
--
ALTER TABLE `class_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `section_title`
--
ALTER TABLE `section_title`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `section_type`
--
ALTER TABLE `section_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
