-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2018 at 09:10 PM
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

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `subtitle`, `img`, `id_type`, `place`, `time`) VALUES
(0000000001, 'Schwarzdorn', 'in weissem Kleid', 'placeholder_media.jpg', 1, 'Umgebung Stadt Bern', '10:00h - 16:00h'),
(0000000002, 'Brennessel', 'zart und bissig', 'placeholder_media.jpg', 1, 'Umgebung Stadt Bern', '10:00h – 16:00h'),
(0000000003, 'Hollunder', 'wo Frau Holle wohnt', 'placeholder_media.jpg', 1, 'Umgebung Stadt Bern', '10:00h - 16:00h'),
(0000000004, 'Kanadische Goldrute', 'invasiv und golden', 'placeholder_media.jpg', 1, 'Umgebung Stadt Bern', '10:00h - 16:00h'),
(0000000005, 'Test Vorbei', 'test', 'placeholder_media.jpg', 1, 'bla', 'gwuag'),
(0000000006, 'Test alles vorbei', 'schwupps', 'placeholder_media.jpg', 1, 'dsa', 'dasdasd');

--
-- Dumping data for table `class_dates`
--

INSERT INTO `class_dates` (`id`, `id_class`, `date`, `places_max`, `places_booked`) VALUES
(0000000001, 0000000001, '2018-03-25', 8, 0),
(0000000002, 0000000001, '2018-03-31', 8, 0),
(0000000003, 0000000001, '2018-04-07', 8, 0),
(0000000004, 0000000002, '2018-05-06', 8, 0),
(0000000005, 0000000002, '2018-05-12', 8, 0),
(0000000006, 0000000002, '2018-05-19', 8, 0),
(0000000007, 0000000003, '2018-06-03', 8, 0),
(0000000008, 0000000003, '2018-06-09', 8, 0),
(0000000009, 0000000003, '2018-06-16', 8, 0),
(0000000010, 0000000004, '2018-07-24', 8, 0),
(0000000011, 0000000004, '2018-07-21', 8, 0),
(0000000012, 0000000004, '2018-07-29', 8, 0),
(0000000013, 0000000005, '2018-02-08', 8, 8),
(0000000014, 0000000005, '2018-02-21', 8, 5),
(0000000015, 0000000005, '2018-02-01', 8, 0),
(0000000016, 0000000006, '2018-01-01', 8, 8),
(0000000017, 0000000006, '2018-01-27', 8, 5),
(0000000018, 0000000005, '2018-10-17', 8, 0),
(0000000019, 0000000005, '2018-06-14', 8, 1);

--
-- Dumping data for table `class_type`
--

INSERT INTO `class_type` (`id`, `name`) VALUES
(0000000001, 'Pflanzenausflug');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
