-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 30, 2018 at 10:39 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
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

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `subtitle`, `description`, `img`, `img_desc`, `id_type`, `place`, `time`, `pdf`) VALUES
(0000000001, 'Schwarzdorn', 'Schönheit im weissen Kleid', 'Erlebe den Schwarzdorn in all seinen Facetten und mit allen Sinnen. Erfahre in dem Kurs in der freien Natur, wo der Schwarzdorn wächst, was du aus ihm gewinnen kannst und warum sogar Feen am Schwarzdorn ihre Freude haben. \r\nWir verbringen den ganzen Tag draussen beim blühenden Schwarzdorn, kochen zum Zmittag gemeinsam eine Suppe und lernen die Pflanze aus den verschiedensten Blickwinkeln kennen. Je nach Ernteertrag machen wir aus dem Schwarzdorn einen erfrischenden Drink oder stellen ein Kosmetik-Produkt her. Es erwartet dich ein Tag voller Wissen und Aktivität rund um die Schönheit im weissen Kleid.', 'course-1_200x200.png', 'course-1_600x800.png', 0000000001, 'Worblaufen', '10:00h - ca. 16:00h', NULL),
(0000000002, 'Brennessel', 'zart und bissig', 'Eine unscheinbare Pflanze tritt ins Rampenlicht. Lerne die Brennessel in ihrer Vielseitigkeit kennen, stelle daraus ein Shampoo her oder koche aus der Pflanze eine Suppe. \r\nWir widmen uns der Pflanze, die sich vom Arme Leute-Essen zur Gourmet-Pflanze gewandelt hat. Sie hat in Frankreich sogar schon einen Krieg ausgelöst und ist heute als Entschlackungsmittel äusserst beliebt. Wie immer mitten in der freien Natur, nehmen wir die Pflanze unter die Lupe, die weit mehr kann, als auf der Haut unangenehm zu brennen.', 'course-2_200x200.png', 'course-2_600x800.png', 0000000001, 'Umgebung Stadt Bern', '10:00h - ca. 16:00h', NULL),
(0000000003, 'Holunder', 'wo Frau Holle wohnt', 'Wer liebt ihn nicht, den Holunder? Bekannt als Sirup und als Dessert, steckt noch viel mehr Wunderbares in dieser Pflanze. Erfahre, wie er als Medizin gute Dienste leistet und geniesse seine wohlriechenden Blüten.\r\nWir nähern uns der Pflanze an, die schon Frau Holle verzaubert hat und in der die Geister der Ahnen wohnen. Je nachdem, wie viel Holunder wir im Kurs pflücken, kreieren wir ein feines Dessert oder stellen einen Sirup-Ansatz her. Wie in allen Pflanzenlabor-Kursen üblich, wirst du auch den Holunder danach mit ganz neuen Augen sehen.', 'course-3_200x200.png', 'course-3_600x800.png', 0000000001, 'Umgebung Stadt Bern', '10:00h - ca. 16:00h', NULL),
(0000000004, 'Goldrute', 'invasiv und golden', 'Golden in ihrer Erscheinung, sind die Goldruten dekorativ und als Färbemittel beliebt. Lerne aber auch deren Wirksamkeit kennen, so etwa als Allzweckwaffe gegen Blasen- und Nierenbeschwerden.\r\nWir begeben und auf die Spuren der Goldruten und befassen uns in der freien Natur mit verschiedenen Ansichten über invasive Neophyten, zu denen die grossen Goldruten gehören. Sind sie nun wirklich Fluch oder manchmal auch Segen? Die Goldruten als Frühlingsdelikatesse sind ebenso Thema wie das Ansetzen einer Goldruten-Tinktur.', 'course-4_200x200.png', 'course-4_600x800.png', 0000000001, 'Umgebung Stadt Bern', '10:00h - ca. 16:00h', NULL),
(0000000005, 'Pflanzenspaziergang', 'Ja was wächst den da', 'Spazieren und erfahren was so alles wächst.', '', NULL, 0000000002, 'Bermer', '18:00 - 20:00', NULL);

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

--
-- Dumping data for table `class_dates`
--

INSERT INTO `class_dates` (`id`, `id_class`, `date`, `paypal_key`, `places_max`, `places_booked`) VALUES
(0000000001, 0000000001, '2018-03-25', 'XK6GASLQVMTXJ', 8, 4),
(0000000002, 0000000001, '2018-03-31', 'GDUVY3AYW4YMQ', 8, 5),
(0000000003, 0000000001, '2018-04-07', '6RXNK4TJQKRR8', 8, 2),
(0000000004, 0000000002, '2018-05-06', 'NEF4L65HURBYE', 8, 8),
(0000000005, 0000000002, '2018-05-12', '4QMXYKYEHG48E', 8, 2),
(0000000006, 0000000002, '2018-05-19', 'XS3T9DZ9EX38E', 8, 6),
(0000000007, 0000000003, '2018-06-03', 'P4MM47HGPRLXW', 8, 2),
(0000000008, 0000000003, '2018-06-09', '3Y9SKQTEX68SY', 8, 2),
(0000000009, 0000000003, '2018-06-16', 'U649UMM4PE2AE', 8, 1),
(0000000010, 0000000004, '2018-07-14', '6B8DL6MZA8HEC', 8, 0),
(0000000011, 0000000004, '2018-07-21', 'TLWUQ8EYA7UPG', 8, 0),
(0000000012, 0000000004, '2018-07-29', '3PGN268BP58LG', 8, 0),
(0000000013, 0000000005, '2018-06-28', '', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_section`
--

CREATE TABLE `class_section` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `id_class` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'refers to a class',
  `id_section` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'refers to a section'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(0000000020, 0000000004, 0000000001),
(0000000021, 0000000005, 0000000006),
(0000000022, 0000000005, 0000000003),
(0000000023, 0000000005, 0000000002),
(0000000024, 0000000005, 0000000005),
(0000000025, 0000000005, 0000000004);

-- --------------------------------------------------------

--
-- Table structure for table `class_type`
--

CREATE TABLE `class_type` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `name` varchar(100) NOT NULL COMMENT 'name of the class type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='class types serve as tags to group classes that are similar in some aspects';

--
-- Dumping data for table `class_type`
--

INSERT INTO `class_type` (`id`, `name`) VALUES
(0000000001, 'Pflanzenexkursion'),
(0000000002, 'Pflanzenspaziergang');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `name` varchar(100) NOT NULL COMMENT 'different types of food incompatibilities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`) VALUES
(0000000001, 'vegetarisch'),
(0000000002, 'glutenfrei'),
(0000000003, 'lactosefrei'),
(0000000004, 'alkoholfrei'),
(0000000005, 'vegan');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `type`) VALUES
(0000000001, 'PayPal'),
(0000000002, 'Bill'),
(0000000003, 'Vaucher');

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

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `id_section_type`, `id_section_title`, `content`) VALUES
(0000000001, 0000000001, 0000000001, 'CHF 120.-- (inkl. Kursmaterial und Mittagessen)'),
(0000000002, 0000000001, 0000000003, 'Jede erwachsene, interessierte Person, mit oder ohne Vorkenntnisse ist willkommen.'),
(0000000003, 0000000001, 0000000004, 'Der Kurs findet bei (fast) jeder Witterung draussen statt. Bitte entsprechende Kleidung anziehen. Je nach Wetter wird das Programm angepasst.'),
(0000000004, 0000000003, 0000000005, 'Gute Schuhe.\r\nEv. Schreibzeug für Notizen.\r\nEtwas zu trinken.\r\nKleider und Schutzausrüstung dem Wetter entsprechend.'),
(0000000005, 0000000004, 0000000006, 'print_class_dates'),
(0000000006, 0000000001, 0000000001, 'CHF 20.--');

-- --------------------------------------------------------

--
-- Table structure for table `section_title`
--

CREATE TABLE `section_title` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `title` varchar(100) NOT NULL COMMENT 'the title of a class section. Before creating a new title check wheter a similar one already exists in this table',
  `layout` tinyint(4) NOT NULL COMMENT 'specifies the order in which the titles are displayed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains all titles of class sections';

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

-- --------------------------------------------------------

--
-- Table structure for table `section_type`
--

CREATE TABLE `section_type` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `type` varchar(100) NOT NULL COMMENT 'depending on the chosen type, the content of a section is interpreted differently. This is useful to have some control over the apperance of the text.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='this is a bit tricky: this table must rarely be modified. It is used to indicate how the content of a section wil be displayed.';

--
-- Dumping data for table `section_type`
--

INSERT INTO `section_type` (`id`, `type`) VALUES
(0000000001, 'plain text'),
(0000000002, 'map'),
(0000000003, 'list'),
(0000000004, 'dates');

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

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `street`, `street_number`, `zip`, `city`, `phone`, `email`) VALUES
(0000000001, 'Silja', 'Neuhaus', 'Juraweg', '5', '3013', 'Bern', '079 484 44 01', 'info@pflanzenlabor.ch'),
(0000000002, 'Norah', 'Bolliger', 'Beispielweg', '1A', '3000', 'Bern', '0795663019', 'giovina.nicolai@gmail.com'),
(0000000003, 'Giancarlo', 'Nicolai', 'Beispielweg', '1A', '3000', 'Basel', '0794534048', 'info@pflanzenlabor.ch'),
(0000000004, 'Esther', 'Unbekannt', 'Beispielweg', '1A', '3000', 'Basel', '079 123 45 67', 'info@pflanzenlabor.ch'),
(0000000005, 'Beatrix', 'Nicolai', 'Altenbergstrasse ', '50', '3013', 'Bern', '031 332 82 19', 'beatrix.nicolai@bluewin.ch'),
(0000000006, 'Beatrix', 'Nicolai', 'Altenbergstrasse', '50', '3013', 'Bern', '031 332 82 19', 'beatrix.nicolai@bluewin.ch'),
(0000000007, 'Gri', 'Maurer', 'Steinhofstrasse', '33', '3400', 'Burgdorf', '079 111 22 33', 'info@pflanzenlabor.ch'),
(0000000008, 'Katrin', 'Affolter', 'In der Längasse', '1A', '3012', 'Bern', '079 222 33 44', 'info@pflanzenlabor.ch'),
(0000000009, 'Alex', 'Alex', 'Bei der Tiefenau', '1A', '3000', 'Bern', '079 333 44 55', 'info@pflanzenlabor.ch'),
(0000000010, 'Rosmarie ', 'Bütikofer', 'Beispielweg', '1A', '3000', 'Utzenstorf', '079 444 55 66', 'info@pflanzenlabor.ch'),
(0000000012, 'Beatrix', 'Nicolai', 'Altenbergstrasse ', '50', '3013', 'Bern', '077 447 09 46', 'beatrix.nicolai@bluewin.ch'),
(0000000013, 'Andrea', 'Bosshard', 'Bäckereiweg ', '1', '3012', 'Bern', '079 901 95 55', 'andrea.charlotte@gmail.com'),
(0000000014, 'Katrin', 'Lüthi', 'Neufeldstrasse', '103', '3012', 'Bern', '079 734 42 75', 'katrin.luethi@protonmail.com'),
(0000000015, 'Beatrix', 'Nicolai', 'Altenbergstrasse', '50', '3013', 'Bern', '031 332 82 19', 'beatrix.nicolai@bluewin.ch'),
(0000000016, 'Beatrix', 'Nicolai', 'Altenbergstrasse', '50', '3013', 'Bern', '031 332 82 19', 'beatrix.nicolai@bluewin.ch'),
(0000000055, 'Simon', 'Maurer', 'Alemannenstrasse', '40', '3018', 'Bern', '012345678', 'moirelein@gmail.com'),
(0000000056, 'Hanuele', 'Maurer', 'Alemannenstrasse', '40', '3018', 'Bern', '012345678', 'moirelein@gmail.com'),
(0000000057, 'Wotuele', 'Maurer', 'Alemannenstrasse', '40', '3018', 'Bern', '012345678', 'moirelein@gmail.com'),
(0000000058, 'If', 'sadklj', 'lkjal', 'lkjsal', 'lksja', 'llskdj', 'lkjs', 'moirelein@gmail.com');

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

--
-- Dumping data for table `user_class_dates`
--

INSERT INTO `user_class_dates` (`id`, `id_user`, `id_class_dates`, `id_payment`, `is_booked`, `is_payed`, `check_custom`, `comment`, `enroll_date`) VALUES
(0000000001, 0000000001, 0000000001, 0000000002, 0, 0, '', 'Ist eingeladen', '2018-05-26 17:51:28'),
(0000000002, 0000000002, 0000000001, 0000000002, 0, 0, '', '', '2018-05-26 17:51:28'),
(0000000003, 0000000003, 0000000001, 0000000002, 0, 0, '', 'Test', '2018-05-26 17:51:28'),
(0000000004, 0000000004, 0000000001, 0000000002, 0, 0, '', '', '2018-05-26 17:51:28'),
(0000000005, 0000000005, 0000000002, NULL, 0, 0, '', 'Ich freue mich auf den Kurs und die Website ist super!', '2018-05-26 17:51:28'),
(0000000006, 0000000006, 0000000002, NULL, 0, 0, '', '… bis dann, ich freue mich sehr!\r\n(die 60.– ist mein Start-Sponsoring)\r\nLiebe Grüsse', '2018-05-26 17:51:28'),
(0000000007, 0000000007, 0000000002, 0000000002, 0, 0, '', '', '2018-05-26 17:51:28'),
(0000000008, 0000000008, 0000000002, 0000000002, 0, 0, '', '', '2018-05-26 17:51:28'),
(0000000009, 0000000009, 0000000002, 0000000002, 0, 0, '', '', '2018-05-26 17:51:28'),
(0000000010, 0000000010, 0000000002, 0000000002, 0, 0, '', '', '2018-05-26 17:51:28'),
(0000000012, 0000000012, 0000000002, 0000000001, 0, 1, '', 'ich bin gespannt freue mich!', '2018-05-26 17:51:28'),
(0000000013, 0000000013, 0000000003, 0000000001, 0, 1, '', '', '2018-05-26 17:51:28'),
(0000000014, 0000000014, 0000000003, 0000000002, 0, 0, '', '', '2018-05-26 17:51:28'),
(0000000015, 0000000015, 0000000006, 0000000001, 0, 1, '', '… falls es am 6. und 12. Mai regnet, sind wir ev. am 19. in den Ferien, dann würde ich auf eine dieser zwei Daten vorverschieben …', '2018-05-26 17:51:28'),
(0000000016, 0000000016, 0000000008, 0000000001, 0, 1, '', '', '2018-05-26 17:51:28'),
(0000000059, 0000000055, 0000000009, 0000000002, 1, 0, '', 'keine Bemerkung', '2018-05-27 13:45:38'),
(0000000060, 0000000056, 0000000009, 0000000002, 1, 0, '', 'keine Bemerkung', '2018-05-27 17:59:37'),
(0000000061, 0000000057, 0000000009, 0000000003, 1, 1, '', 'keine Bemerkung', '2018-05-27 20:35:42'),
(0000000062, 0000000057, 0000000010, NULL, 0, 0, '', 'keine Bemerkung', '2018-05-27 15:47:40'),
(0000000064, 0000000058, 0000000009, 0000000002, 1, 0, '', 'keine Bemerkung', '2018-06-05 20:37:41');

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
(0000000025, 0000000005, 0000000002, 0000000005, 0),
(0000000026, 0000000006, 0000000002, 0000000001, 0),
(0000000027, 0000000006, 0000000002, 0000000002, 0),
(0000000028, 0000000006, 0000000002, 0000000003, 0),
(0000000029, 0000000006, 0000000002, 0000000004, 0),
(0000000030, 0000000006, 0000000002, 0000000005, 0),
(0000000031, 0000000007, 0000000002, 0000000001, 0),
(0000000032, 0000000007, 0000000002, 0000000002, 0),
(0000000033, 0000000007, 0000000002, 0000000003, 0),
(0000000034, 0000000007, 0000000002, 0000000004, 0),
(0000000035, 0000000007, 0000000002, 0000000005, 0),
(0000000036, 0000000008, 0000000002, 0000000001, 1),
(0000000037, 0000000008, 0000000002, 0000000002, 0),
(0000000038, 0000000008, 0000000002, 0000000003, 0),
(0000000039, 0000000008, 0000000002, 0000000004, 0),
(0000000040, 0000000008, 0000000002, 0000000005, 0),
(0000000041, 0000000009, 0000000002, 0000000001, 1),
(0000000042, 0000000009, 0000000002, 0000000002, 0),
(0000000043, 0000000009, 0000000002, 0000000003, 0),
(0000000044, 0000000009, 0000000002, 0000000004, 0),
(0000000045, 0000000009, 0000000002, 0000000005, 0),
(0000000046, 0000000010, 0000000002, 0000000001, 0),
(0000000047, 0000000010, 0000000002, 0000000002, 0),
(0000000048, 0000000010, 0000000002, 0000000003, 0),
(0000000049, 0000000010, 0000000002, 0000000004, 0),
(0000000050, 0000000010, 0000000002, 0000000005, 0),
(0000000056, 0000000012, 0000000002, 0000000001, 0),
(0000000057, 0000000012, 0000000002, 0000000002, 0),
(0000000058, 0000000012, 0000000002, 0000000003, 0),
(0000000059, 0000000012, 0000000002, 0000000004, 0),
(0000000060, 0000000012, 0000000002, 0000000005, 0),
(0000000061, 0000000013, 0000000003, 0000000001, 0),
(0000000062, 0000000013, 0000000003, 0000000002, 0),
(0000000063, 0000000013, 0000000003, 0000000003, 0),
(0000000064, 0000000013, 0000000003, 0000000004, 0),
(0000000065, 0000000013, 0000000003, 0000000005, 0),
(0000000066, 0000000014, 0000000003, 0000000001, 1),
(0000000067, 0000000014, 0000000003, 0000000002, 0),
(0000000068, 0000000014, 0000000003, 0000000003, 0),
(0000000069, 0000000014, 0000000003, 0000000004, 0),
(0000000070, 0000000014, 0000000003, 0000000005, 0),
(0000000071, 0000000015, 0000000006, 0000000001, 0),
(0000000072, 0000000015, 0000000006, 0000000002, 0),
(0000000073, 0000000015, 0000000006, 0000000003, 0),
(0000000074, 0000000015, 0000000006, 0000000004, 0),
(0000000075, 0000000015, 0000000006, 0000000005, 0),
(0000000076, 0000000016, 0000000008, 0000000001, 0),
(0000000077, 0000000016, 0000000008, 0000000002, 0),
(0000000078, 0000000016, 0000000008, 0000000003, 0),
(0000000079, 0000000016, 0000000008, 0000000004, 0),
(0000000080, 0000000016, 0000000008, 0000000005, 0),
(0000000260, 0000000055, 0000000009, 0000000001, 1),
(0000000261, 0000000055, 0000000009, 0000000002, 0),
(0000000262, 0000000055, 0000000009, 0000000003, 0),
(0000000263, 0000000055, 0000000009, 0000000004, 0),
(0000000264, 0000000055, 0000000009, 0000000005, 0),
(0000000265, 0000000056, 0000000009, 0000000001, 1),
(0000000266, 0000000056, 0000000009, 0000000002, 0),
(0000000267, 0000000056, 0000000009, 0000000003, 0),
(0000000268, 0000000056, 0000000009, 0000000004, 1),
(0000000269, 0000000056, 0000000009, 0000000005, 0),
(0000000270, 0000000057, 0000000009, 0000000001, 1),
(0000000271, 0000000057, 0000000009, 0000000002, 0),
(0000000272, 0000000057, 0000000009, 0000000003, 0),
(0000000273, 0000000057, 0000000009, 0000000004, 0),
(0000000274, 0000000057, 0000000009, 0000000005, 0),
(0000000275, 0000000057, 0000000010, 0000000001, 0),
(0000000276, 0000000057, 0000000010, 0000000002, 0),
(0000000277, 0000000057, 0000000010, 0000000003, 0),
(0000000278, 0000000057, 0000000010, 0000000004, 1),
(0000000279, 0000000057, 0000000010, 0000000005, 1),
(0000000280, 0000000055, 0000000009, 0000000001, 0),
(0000000281, 0000000055, 0000000009, 0000000002, 0),
(0000000282, 0000000055, 0000000009, 0000000003, 0),
(0000000283, 0000000055, 0000000009, 0000000004, 1),
(0000000284, 0000000055, 0000000009, 0000000005, 0),
(0000000285, 0000000058, 0000000009, 0000000001, 0),
(0000000286, 0000000058, 0000000009, 0000000002, 0),
(0000000287, 0000000058, 0000000009, 0000000003, 0),
(0000000288, 0000000058, 0000000009, 0000000004, 0),
(0000000289, 0000000058, 0000000009, 0000000005, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vauchers`
--

INSERT INTO `vauchers` (`id`, `id_user`, `id_date`, `code`, `claimed`) VALUES
(0000000001, 0000000057, 0000000009, 'z3A7sCp9', '2018-05-27 20:35:42');

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
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `class_dates`
--
ALTER TABLE `class_dates`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `class_type`
--
ALTER TABLE `class_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `section_title`
--
ALTER TABLE `section_title`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `section_type`
--
ALTER TABLE `section_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `user_class_dates`
--
ALTER TABLE `user_class_dates`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `user_class_dates_food`
--
ALTER TABLE `user_class_dates_food`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=290;
--
-- AUTO_INCREMENT for table `vauchers`
--
ALTER TABLE `vauchers`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  ADD CONSTRAINT `user_class_dates_fk_id_class_dates` FOREIGN KEY (`id_class_dates`) REFERENCES `class_dates` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_class_dates_fk_id_payment` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_class_dates_fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_class_dates_food`
--
ALTER TABLE `user_class_dates_food`
  ADD CONSTRAINT `user_class_dates_food_fk_id_class_dates` FOREIGN KEY (`id_class_dates`) REFERENCES `class_dates` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_class_dates_food_fk_id_food` FOREIGN KEY (`id_food`) REFERENCES `food` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_class_dates_food_fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `vauchers`
--
ALTER TABLE `vauchers`
  ADD CONSTRAINT `vauchers_fk_id_date` FOREIGN KEY (`id_date`) REFERENCES `class_dates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `vauchers_fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
