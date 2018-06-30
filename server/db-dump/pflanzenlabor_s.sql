-- phpMyAdmin SQL Dump
-- version 4.8.1-dev
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 30, 2018 at 11:44 AM
-- Server version: 5.7.20-19-log
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u146415db1`
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
  `id_type` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'id of the class type (e.g Pflanzenausflug)',
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
  `paypal_key` varchar(20) NOT NULL COMMENT 'the button id from paypal',
  `places_max` smallint(6) NOT NULL DEFAULT '8' COMMENT 'maximal available places',
  `places_booked` smallint(6) NOT NULL DEFAULT '0' COMMENT 'slots that are already booked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains all dates of classes. Each date creates an instance of the linked class.';

-- --------------------------------------------------------

--
-- Table structure for table `class_section`
--

CREATE TABLE `class_section` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `id_class` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'refers to a class',
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
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `name` varchar(100) NOT NULL COMMENT 'different types of food incompatibilities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `title` varchar(100) NOT NULL COMMENT 'the title of a class section. Before creating a new title check wheter a similar one already exists in this table',
  `layout` tinyint(4) NOT NULL COMMENT 'specifies the order in which the titles are displayed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains all titles of class sections';

-- --------------------------------------------------------

--
-- Table structure for table `section_type`
--

CREATE TABLE `section_type` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `type` varchar(100) NOT NULL COMMENT 'depending on the chosen type, the content of a section is interpreted differently. This is useful to have some control over the apperance of the text.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='this is a bit tricky: this table must rarely be modified. It is used to indicate how the content of a section wil be displayed.';

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `street_number` varchar(10) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_class_dates`
--

CREATE TABLE `user_class_dates` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_user` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_class_dates` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_payment` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `is_booked` int(1) NOT NULL DEFAULT '0',
  `is_payed` tinyint(1) NOT NULL DEFAULT '0',
  `check_custom` varchar(100) DEFAULT NULL,
  `comment` longtext,
  `enroll_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_class_dates_food`
--

CREATE TABLE `user_class_dates_food` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `id_user` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'primary id of the class_dates table',
  `id_class_dates` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_food` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'primary id of the food table',
  `is_checked` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vauchers`
--

CREATE TABLE `vauchers` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_user` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `id_date` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `code` varchar(8) NOT NULL,
  `claimed` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_class_dates`
--
ALTER TABLE `user_class_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_class_dates` (`id_class_dates`),
  ADD KEY `id_payment` (`id_payment`);

--
-- Indexes for table `user_class_dates_food`
--
ALTER TABLE `user_class_dates_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_food` (`id_food`),
  ADD KEY `id_class_dates` (`id_class_dates`);

--
-- Indexes for table `vauchers`
--
ALTER TABLE `vauchers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_date` (`id_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this';

--
-- AUTO_INCREMENT for table `class_dates`
--
ALTER TABLE `class_dates`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this';

--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this';

--
-- AUTO_INCREMENT for table `class_type`
--
ALTER TABLE `class_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this';

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this';

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this';

--
-- AUTO_INCREMENT for table `section_title`
--
ALTER TABLE `section_title`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this';

--
-- AUTO_INCREMENT for table `section_type`
--
ALTER TABLE `section_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this';

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_class_dates`
--
ALTER TABLE `user_class_dates`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_class_dates_food`
--
ALTER TABLE `user_class_dates_food`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_fk_id_type` FOREIGN KEY (`id_type`) REFERENCES `class_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `class_dates`
--
ALTER TABLE `class_dates`
  ADD CONSTRAINT `class_dates_fk_id_class` FOREIGN KEY (`id_class`) REFERENCES `classes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `class_section`
--
ALTER TABLE `class_section`
  ADD CONSTRAINT `class_section_fk_id_class` FOREIGN KEY (`id_class`) REFERENCES `classes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `class_section_fk_id_section` FOREIGN KEY (`id_section`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_fk_id_section_title` FOREIGN KEY (`id_section_title`) REFERENCES `section_title` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sections_fk_id_section_type` FOREIGN KEY (`id_section_type`) REFERENCES `section_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_class_dates`
--
ALTER TABLE `user_class_dates`
  ADD CONSTRAINT `user_class_dates_fk_id_class_dates` FOREIGN KEY (`id_class_dates`) REFERENCES `class_dates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_class_dates_fk_id_payment` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_class_dates_fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_class_dates_food`
--
ALTER TABLE `user_class_dates_food`
  ADD CONSTRAINT `user_class_dates_food_fk_id_class_dates` FOREIGN KEY (`id_class_dates`) REFERENCES `class_dates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_class_dates_food_fk_id_food` FOREIGN KEY (`id_food`) REFERENCES `food` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_class_dates_food_fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vauchers`
--
ALTER TABLE `vauchers`
  ADD CONSTRAINT `vauchers_fk_id_date` FOREIGN KEY (`id_date`) REFERENCES `class_dates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `vauchers_fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
