-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2018 at 12:18 PM
-- Server version: 5.7.20-19-log
-- PHP Version: 5.5.38-1~dotdeb+7.1

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

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `subtitle`, `description`, `img`, `img_desc`, `id_type`, `place`, `time`, `pdf`) VALUES
(0000000001, 'Schwarzdorn', 'in weissem Kleid', 'Lerne die vielfältigen Facetten des Schwarzdorns in der Blütezeit kennen – Mit allen Sinnen.\r\nWir werden den ganzen Tag draussen verbringen und zusammen am Mittag eine Suppe am Feuer essen. Du wirst verschiedene Facetten des Schwarzdornes erfahren, als ökologisch wichtiger Schmetterlingsbaum, als Drink, und was er mit Schneewittchen zu tun hat.\r\nErfahre wie der Schwarzdorn bestimmt wird und wo er draussen zu finden ist. Wir werden verschiedene Verwendungsgebiete anschauen und etwas daraus herstellen.', 'course-1_200x200.png', 'course-1_600x800.png', 0000000001, 'Worblaufen', '10:00h - 16:00h', NULL),
(0000000002, 'Brennessel', 'zart und bissig', 'Der Kursbeschrieb folgt in Kürze.', 'course-2_200x200.png', 'course-2_600x800.png', 0000000001, 'Umgebung Stadt Bern', '10:00h - 16:00h', NULL),
(0000000003, 'Holunder', 'wo Frau Holle wohnt', 'Der Kursbeschrieb folgt in Kürze.', 'course-3_200x200.png', 'course-3_600x800.png', 0000000001, 'Umgebung Stadt Bern', '10:00h - 16:00h', NULL),
(0000000004, 'Goldrute', 'invasiv und golden', 'Der Kursbeschrieb folgt in Kürze.', 'course-4_200x200.png', 'course-4_600x800.png', 0000000001, 'Umgebung Stadt Bern', '10:00h - 16:00h', NULL);

--
-- Dumping data for table `class_dates`
--

INSERT INTO `class_dates` (`id`, `id_class`, `date`, `paypal_key`, `places_max`, `places_booked`) VALUES
(0000000001, 0000000001, '2018-03-25', 'XK6GASLQVMTXJ', 8, 4),
(0000000002, 0000000001, '2018-03-31', 'GDUVY3AYW4YMQ', 8, 0),
(0000000003, 0000000001, '2018-04-07', '6RXNK4TJQKRR8', 8, 0),
(0000000004, 0000000002, '2018-05-06', 'NEF4L65HURBYE', 8, 0),
(0000000005, 0000000002, '2018-05-12', 'VC55W5XG9WQKE', 8, 0),
(0000000006, 0000000002, '2018-05-19', 'XS3T9DZ9EX38E', 8, 0),
(0000000007, 0000000003, '2018-06-03', 'P4MM47HGPRLXW', 8, 0),
(0000000008, 0000000003, '2018-06-09', '3Y9SKQTEX68SY', 8, 0),
(0000000009, 0000000003, '2018-06-16', '394H5JR8FGWBJ', 8, 0),
(0000000010, 0000000004, '2018-07-14', '6B8DL6MZA8HEC', 8, 0),
(0000000011, 0000000004, '2018-07-21', 'TLWUQ8EYA7UPG', 8, 0),
(0000000012, 0000000004, '2018-07-29', '3PGN268BP58LG', 8, 0);

--
-- Dumping data for table `class_section`
--

INSERT INTO `class_section` (`id`, `id_class`, `id_section`) VALUES
(0000000001, 0000000001, 0000000004),
(0000000002, 0000000001, 0000000001),
(0000000003, 0000000001, 0000000003),
(0000000004, 0000000001, 0000000002),
(0000000005, 0000000001, 0000000005),
(0000000006, 0000000002, 0000000004),
(0000000007, 0000000002, 0000000003),
(0000000008, 0000000002, 0000000005),
(0000000009, 0000000002, 0000000002),
(0000000010, 0000000002, 0000000001),
(0000000011, 0000000003, 0000000005),
(0000000012, 0000000003, 0000000004),
(0000000013, 0000000003, 0000000003),
(0000000014, 0000000003, 0000000002),
(0000000015, 0000000003, 0000000001),
(0000000016, 0000000004, 0000000005),
(0000000017, 0000000004, 0000000004),
(0000000018, 0000000004, 0000000003),
(0000000019, 0000000004, 0000000002),
(0000000020, 0000000004, 0000000001);

--
-- Dumping data for table `class_type`
--

INSERT INTO `class_type` (`id`, `name`) VALUES
(0000000001, 'Pflanzenausflug');

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`) VALUES
(0000000001, 'vegetarisch'),
(0000000002, 'glutenfrei'),
(0000000003, 'lactosefrei'),
(0000000004, 'alkoholfrei'),
(0000000005, 'vegan');

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `type`) VALUES
(0000000001, 'PayPal'),
(0000000002, 'Bill');

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `id_section_type`, `id_section_title`, `content`) VALUES
(0000000001, 0000000001, 0000000001, 'CHF 120.-- (ink. Material)'),
(0000000002, 0000000001, 0000000003, 'Jede erwachsene, interessierte Person, mit oder ohne Vorkenntnisse ist willkommen.'),
(0000000003, 0000000001, 0000000004, 'Der Kurs findet bei jeder Witterung draussen statt. Bitte entsprechende Kleidung anziehen. Je nach Wetter wird das Programm angepasst.'),
(0000000004, 0000000003, 0000000005, 'Gute Schuhe.\r\nEv. Schreibzeug für Notizen.\r\nEtwas zu trinken.\r\nKleider und Schutzausrüstung dem Wetter entsprechend.'),
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

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `street`, `street_number`, `zip`, `city`, `phone`, `email`) VALUES
(0000000001, 'Silja', 'Neuhaus', 'Juraweg', '5', '3013', 'Bern', '079 484 44 01', 'info@pflanzenlabor.ch'),
(0000000002, 'Norah', 'Bolliger', 'Beispielweg', '1A', '3000', 'Bern', '0795663019', 'giovina.nicolai@gmail.com'),
(0000000003, 'Giancarlo', 'Nicolai', 'Beispielweg', '1A', '3000', 'Basel', '0794534048', 'info@pflanzenlabor.ch'),
(0000000004, 'Esther', 'Unbekannt', 'Beispielweg', '1A', '3000', 'Basel', '079 123 45 67', 'info@pflanzenlabor.ch'),
(0000000005, 'Beatrix', 'Nicolai', 'Altenbergstrasse ', '50', '3013', 'Bern', '031 332 82 19', 'beatrix.nicolai@bluewin.ch');

--
-- Dumping data for table `user_class_dates`
--

INSERT INTO `user_class_dates` (`id`, `id_user`, `id_class_dates`, `id_payment`, `is_payed`, `check_custom`, `comment`) VALUES
(0000000001, 0000000001, 0000000001, 0000000002, 0, '', 'Ist eingeladen'),
(0000000002, 0000000002, 0000000001, 0000000002, 0, '', ''),
(0000000003, 0000000003, 0000000001, 0000000002, 0, '', 'Test'),
(0000000004, 0000000004, 0000000001, 0000000002, 0, '', ''),
(0000000005, 0000000005, 0000000002, NULL, 0, '', 'Ich freue mich auf den Kurs und die Website ist super!');

--
-- Dumping data for table `user_class_dates_food`
--

INSERT INTO `user_class_dates_food` (`id`, `id_user`, `id_class_dates`, `id_food`, `is_checked`) VALUES
(0000000001, 0000000001, 0000000001, 0000000001, 0),
(0000000002, 0000000001, 0000000001, 0000000002, 0),
(0000000003, 0000000001, 0000000001, 0000000003, 0),
(0000000004, 0000000001, 0000000001, 0000000004, 0),
(0000000005, 0000000001, 0000000001, 0000000005, 0),
(0000000006, 0000000002, 0000000001, 0000000001, 0),
(0000000007, 0000000002, 0000000001, 0000000002, 0),
(0000000008, 0000000002, 0000000001, 0000000003, 0),
(0000000009, 0000000002, 0000000001, 0000000004, 0),
(0000000010, 0000000002, 0000000001, 0000000005, 0),
(0000000011, 0000000003, 0000000001, 0000000001, 0),
(0000000012, 0000000003, 0000000001, 0000000002, 0),
(0000000013, 0000000003, 0000000001, 0000000003, 1),
(0000000014, 0000000003, 0000000001, 0000000004, 0),
(0000000015, 0000000003, 0000000001, 0000000005, 0),
(0000000016, 0000000004, 0000000001, 0000000001, 0),
(0000000017, 0000000004, 0000000001, 0000000002, 0),
(0000000018, 0000000004, 0000000001, 0000000003, 0),
(0000000019, 0000000004, 0000000001, 0000000004, 0),
(0000000020, 0000000004, 0000000001, 0000000005, 0),
(0000000021, 0000000005, 0000000002, 0000000001, 0),
(0000000022, 0000000005, 0000000002, 0000000002, 0),
(0000000023, 0000000005, 0000000002, 0000000003, 0),
(0000000024, 0000000005, 0000000002, 0000000004, 0),
(0000000025, 0000000005, 0000000002, 0000000005, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
