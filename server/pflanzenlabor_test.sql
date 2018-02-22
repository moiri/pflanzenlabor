-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2018 at 08:29 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.25-0ubuntu0.16.04.1

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

INSERT INTO `classes` (`id`, `name`, `subtitle`, `description`, `img`, `img_desc`, `id_type`, `place`, `time`, `pdf`) VALUES
(0000000001, 'Schwarzdorn', 'in weissem Kleid', 'Lerne die vielfältigen Facetten des Schwarzdorns in der Blütezeit kennen – Mit allen Sinnen.\r\nWir werden den ganzen Tag draussen verbringen und zusammen am Mittag etwas picnicen. Du wirst verschiedene Facetten des Schwarzdornes erfahren, als ökologisch wichtiger Schmetterlingsbaum, als erfrischender Drink, und was er mit Schneewittchen zu tun hat.\r\nErfahre wie der Schwarzdorn bestimmt wird und wo er draussen zu finden ist. Wir werden verschiedene Verwendungsgebiete anschauen und etwas daraus herstellen.', 'course-1_media_300x300.png', 'course-1_600x800.png', 1, 'Umgebung Stadt Bern', '10:00h - 16:00h', NULL),
(0000000002, 'Brennessel', 'zart und bissig', '', 'placeholder_media.jpg', '', 1, 'Umgebung Stadt Bern', '10:00h – 16:00h', NULL),
(0000000003, 'Hollunder', 'wo Frau Holle wohnt', '', 'placeholder_media.jpg', '', 1, 'Umgebung Stadt Bern', '10:00h - 16:00h', NULL),
(0000000004, 'Kanadische Goldrute', 'invasiv und golden', '', 'placeholder_media.jpg', '', 1, 'Umgebung Stadt Bern', '10:00h - 16:00h', NULL),
(0000000005, 'Test Vorbei', 'test', '', 'placeholder_media.jpg', '', 1, 'bla', 'gwuag', NULL),
(0000000006, 'Test alles vorbei', 'schwupps', '', 'placeholder_media.jpg', '', 1, 'dsa', 'dasdasd', NULL);

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
(0000000013, 0000000005, '2018-05-17', 8, 8),
(0000000014, 0000000005, '2018-02-21', 8, 5),
(0000000015, 0000000005, '2018-02-01', 8, 0),
(0000000016, 0000000006, '2018-01-01', 8, 8),
(0000000017, 0000000006, '2018-01-27', 8, 5),
(0000000018, 0000000005, '2018-10-17', 8, 0),
(0000000019, 0000000005, '2018-06-14', 8, 1);

--
-- Dumping data for table `class_section`
--

INSERT INTO `class_section` (`id`, `id_class`, `id_section`) VALUES
(0000000001, 00000000001, 0000000004),
(0000000002, 00000000001, 0000000001),
(0000000003, 00000000001, 0000000003),
(0000000004, 00000000001, 0000000002),
(0000000005, 00000000001, 0000000005);

--
-- Dumping data for table `class_type`
--

INSERT INTO `class_type` (`id`, `name`) VALUES
(0000000001, 'Pflanzenausflug');

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `url`, `title`, `subtitle`, `description`) VALUES
(0000000001, 'home', 'Pflanzenlabor\r\n', 'Giovina Nicolai', 'Pflanzen in ihrem natürlichem Umfeld kennen lernen — mit allen Sinnen.'),
(0000000002, 'giovina', 'Giovina Nicolai', '', ''),
(0000000003, 'kontakt', 'Fragen, Anregungen, Grüsse', '', 'Netter Text der um Kontaktaufnahme bittet.'),
(0000000004, 'kurse', 'Kurse', '', 'An einem Pflanzenausflug werden wir eine Pflanze genauer betrachten — mit möglichst allen Sinnen, von möglichst vielen Facetten. Nebst dem sicheren bestimmen der Pflanze werden wir die Pflanze auch vor Ort verarbeiten.\r\nDie Pflanzenausflüge finden draussen statt, bei jedem Wetter. Je nach Witterung kann das Programm angepasst werden. '),
(0000000005, 'impressum', 'Impressum', '', '');

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `id_section_type`, `id_section_title`, `content`) VALUES
(0000000001, 0000000001, 0000000001, 'CHF 120.-- (ink. Material)'),
(0000000002, 0000000001, 0000000003, 'Jede erwachsene, interessierte Person, mit oder ohne Vorkenntnis ist willkommen.'),
(0000000003, 0000000001, 0000000004, 'Der Kurs findet bei jeder Witterung draussen statt. Bitte entsprechende Kleidung anziehen. Je nach Wetter wird das Programm angepasst.'),
(0000000004, 0000000003, 0000000005, 'Gute Schuhe.\r\nEv. Schreibzeug für notizen.\r\nEtwas zu trinken.\r\nEin Picnic\r\nKleider und Schutzausrüstung dem Wetter entsprechend.\r\nIm März kann es teilweise ziemlich kalt werden und wir werden den ganzen Tag draussen verbringen. Vergesst also Handschuhe, Halstuch und Kappe nicht.'),
(0000000005, 0000000004, 0000000006, 'print_class_dates');

--
-- Dumping data for table `section_title`
--

INSERT INTO `section_title` (`id`, `title`, `layout`) VALUES
(0000000001, 'Kosten', 2),
(0000000002, 'Treffpunkt', 6),
(0000000003, 'Teilnehmende', 5),
(0000000004, 'Bemerkung', 3),
(0000000005, 'Ausrüstung und Kleidung', 4),
(0000000006, 'Anmeldung', 1);

--
-- Dumping data for table `section_type`
--

INSERT INTO `section_type` (`id`, `type`) VALUES
(0000000001, 'plain text'),
(0000000002, 'map'),
(0000000003, 'list'),
(0000000004, 'dates');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
