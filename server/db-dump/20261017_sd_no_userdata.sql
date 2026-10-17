-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 17, 2026 at 11:47 AM
-- Server version: 5.7.36-39-log
-- PHP Version: 7.2.34-59+freexian12.1+php+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `date`, `name`, `comment`, `link`, `link_label`, `enabled`) VALUES
(0000000003, '2018-11-30', 'Lea Fankhauser', 'Ist Textildesignerin, braucht morgens Kaffee, entwirft Socken, stickt Früchte und Gemüse.', 'https://www.instagram.com/leafank/', 'Instagram @leafank', 0),
(0000000004, '2019-01-31', 'Selina Schärer', 'Ist Textildesignerin, füllt ein Skizzenbuch nach dem anderen, bedruckt alles, liebt Gepunktetes und Seifenblasen.', 'https://deskgram.net/selinsgi', 'Instagram @selinsgi', 0),
(0000000005, '2019-03-31', 'Ernesto Nicola Nicolai', 'Ist freischaffender Künstler, liebt kochen, verbringt viel Zeit in der Natur mit fischen und Pilze sammeln, betreibt Freelance Art Handling und malt gerne zum Thema Pilze.', 'mailto:ernestonicola@nicolai.ch', 'E-Mail Adresse', 0),
(0000000008, '2019-05-31', 'Pavla Hodulak', 'Kreiert Ausmalbilder, inspiriert von der Nautur.', 'http://louky.de/', 'Website louky.de', 0),
(0000000010, '2019-07-31', 'Annina Ras', 'Liebt die Natur, lebt in Frankreich und wohnt in einem Tiny House.', '', '', 0),
(0000000011, '2019-09-30', 'Michael Kühni', 'Arbeitet als Illustrator und Gestalter in Bern.', 'https://michaelkuehni.ch', 'Website michaelkuehni.ch', 0),
(0000000012, '2019-11-30', 'Yasemin Günay', 'Ist Gamedesignerin und Grafikerin (koboldgames.ch). Nebst dem Gestalten und Gamen, geht sie am liebsten mit ihren beiden Katzen in der Natur spazieren. ', 'https://www.instagram.com/rynoalesca/', 'Instagram @rynoalesca', 0),
(0000000013, '2020-01-31', 'Giovina Nicolai', 'Pflanzenlaborantin. Liebt Regenwetter und die Formen der Natur.', 'https://www.instagram.com/pflanzenlabor/', 'Instagram @pflanzenlabor', 0),
(0000000014, '2020-03-31', 'Silvan Zurbriggen', 'Grafiker und Illustrator im Atelier Opak in Bern.', 'https://www.opak.cc/#/workList', 'Website opak', 0),
(0000000015, '2020-05-31', 'Kaspar Bucher', 'Freischaffender Künstler mit Schwerpunkten in Objektkunst, Installation und Zeichnung. Mit Fokus auf Ortsbezogene Arbeiten.', 'https://www.kasparbucher.ch/work-en.html', 'Website Kaspar Bucher', 0),
(0000000016, '2020-07-31', 'Kaspar Manz', 'Hat ursprünglich Game Design studiert und arbeitet nun in Zürich an der Schnittstelle von durchdachter Gestaltung, elegantem Code und packendem Storytelling.', 'https://xeophin.net/worlds', 'Website Xeophin', 0),
(0000000017, '2020-09-30', 'Zora Berweger', 'Leipziger Künstlerin aus Bern. Macht Installationen, Malerei, Objekte, Zeichnungen.', 'http://www.zoraberweger.com/home_german.html', 'Website Zora Berweger', 0),
(0000000018, '2020-11-30', 'Katharina Shepherd-Kobel', 'Künstlerin und Lehrerin der japanischen Tuschemalerei und Zenmeditation. Schätzt die Natur und den ständigen Kontakt mit Pflanzen und Tieren im Wechsel der Jahreszeiten.', 'http://www.tuschmalerei.ch/', 'Website Tuschmalerei', 0),
(0000000019, '2021-01-31', 'Eveline Aschwanden', 'Die Frage, was uns wirklich heilt, treibt Eveline immer wieder an – und in die Welt hinaus. In diesem Feld ist sie eine Seelenforscherin und Prozessbegleiterin. Ihr Herzensanliegen ist die Wiederverbindung mit der Natur und damit die Rückkehr zur eigenen wahren Natur. Pflanzen zu malen ist für sie ein Weg zu jener Verbindung.', 'http://www.evelineaschwanden.ch/', 'Website Prozessbegleitung', 0),
(0000000020, '2021-03-31', 'Sonja Hassold', 'Ist eine auf Botanik spezialisierte Biologin und leitet Botanikexkursionen. Sie liebt das kreieren von kreativ-visuellen Dingen, die Fotographie sowie tropische Regenwälder.', 'https://www.botanikexkursionen.ch/', 'Website Botanikexkursionen', 0),
(0000000021, '2021-05-31', 'Romana', 'Begleiterin zu Kraftorten - Natur-Geomantie & Erdheilung-Raumreinigung - Kräuterfachfrau - Pflanzenkommunikation & Meditation - ewige Sucherin der Essenz & vieles mehr... \r\nWechselnde Angebote & Inspirationen teilt sie per Email (Newsletter 1x im Monat) - \"Freude zu teilen bedeutet, sie zu vermehren!\" \r\n', 'mailto:rama108@bluewin.ch', 'E-Mail Adresse', 0),
(0000000022, '2021-07-31', 'Franziska Fahrni-Habegger', 'Ist Grafikerin. Sie verweilt gerne mit Stift und Papier vor Pflanzen, um durch Zeit und Strich den jeweiligen Pflanzen zu begegnen. Mit satzlangen Bildtiteln unterstreicht sie, die aufs Papier gebrachte, Stimmung.', 'https://fahrniska.ch/projects', 'Website Franziska Fahrni-Habegger', 0),
(0000000023, '2021-09-30', 'Kurt Hostettler', 'Lebte von 1921 bis 2013 in Bern. Sein Herz schlug für die Kunst und für die Berge. Als Maler ging es ihm nicht darum, bestimmte Berge abzubilden, sondern die Gefühle und Gedanken seiner Bergerfahrungen eine Gestalt zu geben. Gearbeitet hat er als technischer Beamter bei der PTT.', '', '', 0),
(0000000025, '2021-11-30', 'Sandra Julius', 'Leidenschaftliche freelance Fotografin - Grafikerin - selfmade Älplerin - Näherin - gelernte Ethnologin - Soziologin - Ökologin - hobby Wandererin - Reiserin - Schreiberin - Entdeckerin', 'https://www.sandrajulius.ch/', 'Website Sandra Jullius', 0),
(0000000026, '2022-01-31', 'Sarah Lorenzi', 'Sarah ist Handarbeits- und Zeichnungslehrerin und hat eine zweijährige Ausbildung zur Illustratorin an der SKDZ (Schule für Kunst und Design Zürich) absolviert.\r\nSie wohnt mit ihrem Mann, 3 Kindern und 5 Spitzhaubenhühnern in Burgdorf.\r\n', '', '', 0),
(0000000027, '2022-03-31', 'Fabienne Bertschinger', 'Die Liebe zum genauen betrachten, hat Fabienne auf den Weg des Gestaltens gebracht. Seit 2015 arbeitet Fabienne selbständig im Bereich klassische, wissenschaftliche und populärwissenschaftliche Illustrationen aus den Bereichen Archäologie, Zoologie, Botanik und Infographik.', 'http://www.bertschinger-illustration.ch/de/', 'Website Bertschinger Illustration', 0),
(0000000028, '2022-05-31', 'Simone Glauser', 'Simone kreiert Bilder - dazu benützt sie diverse Techniken wie Malerei, Drucktechniken wie Cyanotype oder Nitrodrucke, Rauminstallationen und Animationen. Stimmungsvolle Bilder zum Eintauchen.', 'https://www.simoneglauser.art/', 'Website Simone Glauser', 0),
(0000000029, '2022-07-31', 'Anna Schmid', 'Freischaffende Illustratorin in Basel', 'http://www.anna-schmid.ch/', 'Website Anna-Schmid', 0),
(0000000030, '2022-09-30', 'Danja Leimgruber', 'Liebt das zeichnen und ihre Zimmerpflanzen. Macht eine Ausbildung an der Hochschule für Künste Bern in visueller Kommunikation.', 'https://www.instagram.com/njachel/', 'Instagram @njachel', 0),
(0000000031, '2022-11-30', 'Maria Magdalena Graber', 'Künstlerin - malt auch auf deinen Wunsch - wird inspiriert durch die kraftvolle Natur, wie Berge, Bäume, Tiere und Landschaften.', 'https://mariamagdalena.ch/', 'Website Mariamagdalena', 0),
(0000000033, '2023-01-31', 'Sandra Staub', 'Ist Illustratorin, Grafikdesignerin und Wandkünstlerin mit einem flair für ausdrucksvolle und zugleich schlichter visueller Sprache.', 'https://www.sandrastaub.com/', 'Website Sandra Staub', 0),
(0000000034, '2023-03-31', 'Giovina Nicolai', 'Pflanzenlaborantin - Liebt Regenwetter und die Formen der Natur - nebst allen botanischen illustrationen für die Informationskarten der Pflanzenpäckli, hat sie bereits die Vertiefungskarte #07 gestaltet.', 'https://www.instagram.com/pflanzenlabor/', 'Instagram @pflanzenlabor', 0),
(0000000035, '2023-05-31', 'Katharina Bosshard', 'Mediale Lebensberaterin - \"Die Sprache des Lebens, wie auch die Sprache unserer Psyche sind innere und symbolische Bilder, die wir in Form von Gedankenmustern und Erfahrungen in uns tragen.\"', 'https://katharinabosshard.ch/', 'Website Katharina Bosshard', 0),
(0000000036, '2023-07-31', 'Manuela Lanz', 'Lebensbegleiterin und Ritualleiterin. Geht achtsam und wertschätzend durchs Leben und geniesst den vielfältigen Zugang zur Welt der Pflanzen.', 'https://elkaela.ch/', 'Website Elkaela', 0),
(0000000037, '2023-09-30', 'Simone Glauser', 'Simone kreiert Bilder - dazu benützt sie diverse Techniken wie Malerei, Drucktechniken wie Cyanotype oder Nitrodrucke, Rauminstallationen und Animationen. Stimmungsvolle Bilder zum Eintauchen.\r\nBereits für das Pflanzenpäckli #21 hat sie die Vertiefungskarte gestaltet.', 'https://www.simoneglauser.art/', 'Website Simone Glauser', 0),
(0000000039, '2023-11-30', 'Giovina Nicolai', 'Pflanzenlaborantin - Liebt Regenwetter und die Formen der Natur - nebst allen botanischen illustrationen für die Informationskarten der Pflanzenpäckli, gestaltet sie auch gerne kreative Interpretationen der Pflanzen.', 'https://www.instagram.com/pflanzenlabor/', 'Instagram @pflanzenlabor', 0);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'set to ''1'' if class is enabled or to ''0'' if the class is disabled.',
  `name` varchar(100) NOT NULL COMMENT 'name of the class',
  `subtitle` varchar(200) NOT NULL COMMENT 'short descriptive sentence to describe the class',
  `description` longtext NOT NULL COMMENT 'a verbose description of the class',
  `img` varchar(100) NOT NULL COMMENT 'name of the small list image to be displayed',
  `img_desc` varchar(100) DEFAULT NULL COMMENT 'name of the image to be displayed in the description text',
  `id_type` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'id of the class type (e.g Pflanzenausflug)',
  `id_section_dates` int(10) UNSIGNED ZEROFILL NOT NULL DEFAULT '0000000005' COMMENT 'The mandatory date section id (this should be id 5)',
  `id_section_preview` int(10) UNSIGNED ZEROFILL NOT NULL DEFAULT '0000000015' COMMENT 'The mandatory preview section id. The default fallback id is 15',
  `place` varchar(200) NOT NULL COMMENT 'where does the class take place (e.g. Umgebung Bern)',
  `time` varchar(100) NOT NULL COMMENT 'how long does the class last (e.g 10:00 - 16:00)',
  `pdf` varchar(100) DEFAULT NULL COMMENT 'name of the pdf file to be downloaded'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains all class descriptions (class instances are created with the class_dates table)';

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `enabled`, `name`, `subtitle`, `description`, `img`, `img_desc`, `id_type`, `id_section_dates`, `id_section_preview`, `place`, `time`, `pdf`) VALUES
(0000000001, 0, 'Schwarzdorn', 'Schönheit im weissen Kleid', 'Erlebe den Schwarzdorn in all seinen Facetten und mit allen Sinnen. Erfahre in dem Kurs in der freien Natur, wo der Schwarzdorn wächst, was du aus ihm gewinnen kannst und warum sogar Feen am Schwarzdorn ihre Freude haben. \r\nWir verbringen den ganzen Tag draussen beim blühenden Schwarzdorn, kochen zum Zmittag gemeinsam eine Suppe und lernen die Pflanze aus den verschiedensten Blickwinkeln kennen. Je nach Ernteertrag machen wir aus dem Schwarzdorn einen erfrischenden Drink oder stellen ein Kosmetik-Produkt her. Es erwartet dich ein Tag voller Wissen und Aktivität rund um die Schönheit im weissen Kleid.', 'course-1_200x200.png', 'course-1_600x800.png', 0000000001, 0000000005, 0000000011, 'Worblaufen', '10:00h - ca. 16:00h', NULL),
(0000000002, 0, 'Brennnessel', 'zart und bissig', 'Eine unscheinbare Pflanze tritt ins Rampenlicht. Lerne die Brennnessel in ihrer Vielseitigkeit kennen, stelle daraus ein Shampoo her oder koche aus der Pflanze eine Suppe.\r\n\r\nWir widmen uns der Pflanze, die sich vom Arme Leute-Essen zur Gourmet-Pflanze gewandelt hat. Sie hat in Frankreich sogar schon einen Krieg ausgelöst und ist heute als Entschlackungsmittel äusserst beliebt. Wie immer mitten in der freien Natur, nehmen wir die Pflanze unter die Lupe, die weit mehr kann, als auf der Haut unangenehm zu brennen.', 'course-2_200x200.png', 'course-2_600x800.png', 0000000001, 0000000005, 0000000011, 'Eymatt bei Bern', '10:00h - ca. 16:00h', NULL),
(0000000003, 0, 'Holunder', 'wo Frau Holle wohnt', 'Wer liebt ihn nicht, den Holunder? Bekannt als Sirup und als Dessert, steckt noch viel mehr Wunderbares in dieser Pflanze. Erfahre, wie er als Medizin gute Dienste leistet und geniesse seine wohlriechenden Blüten.\r\n\r\nWir nähern uns der Pflanze an, die schon Frau Holle verzaubert hat und in der die Geister der Ahnen wohnen. Je nachdem, wie viel Holunder wir im Kurs pflücken, kreieren wir ein feines Dessert oder stellen einen Sirup-Ansatz her. Wie in allen Pflanzenlabor-Kursen üblich, wirst du auch den Holunder danach mit ganz neuen Augen sehen.', 'course-3_200x200.png', 'course-3_600x800.png', 0000000001, 0000000005, 0000000012, 'Gurten', '10:00h - ca. 16:00h', NULL),
(0000000004, 0, 'Goldrute', 'invasiv und golden', 'Golden in ihrer Erscheinung, sind die Goldruten dekorativ und einige sehr invasiv.\r\n\r\nWir begeben uns auf die Spuren der Echten Goldrute sowie den zwei grossen, invasiven Goldruten. In der freien Natur befassen wir uns mit verschiedenen Aspekten wie der heutigen Situation von invasiven Neophyten,  der Farbstoffgewinnung, dem Einsatz als Frühlingsdelikatessen und vielem mehr.', 'course-4_200x200.png', 'course-4_600x800.png', 0000000001, 0000000005, 0000000014, 'Gurten', '10:00h - ca. 16:00h', NULL),
(0000000005, 0, 'Sommerbummel', 'was wächst um uns herum?', 'An einem abendlichen Spaziergang entdecken wir die Pflanzen, welche urban und naturnah - vor der Haustür - wachsen. Gemeinsam entdecken wir die vielfältige Umgebung und nutzen diese Gelegenheit, um gegenseitig unser Wissen und unsere Erfahrungen über die Pflanzenwelt auszutauschen.', 'course-5_200x200.png', 'course-5_600x800.png', 0000000002, 0000000005, 0000000014, 'Umgebung Stadt Bern', '18:00h - ca. 20:00h', NULL),
(0000000006, 0, 'Herbstpromenade', 'was für Früchte hängen da?', 'An einem abendlichen Spaziergang entdecken wir die Pflanzen, welche urban und naturnah - vor der Haustür - wachsen.\r\nDer Herbst zeigt sich in einer Fülle von Früchten, im abwerfen des Laubes und im vorbereiten auf die ruhige Winterzeit. Gemeinsam entdecken wir diese vielfältige Erscheinungsform in unserer Umgebung. Wir nutzen diese Gelegenheit, um gegenseitig unser Wissen und unsere Erfahrungen über die Pflanzenwelt auszutauschen.', 'course-6_200x200.png', 'course-6_600x800.png', 0000000002, 0000000005, 0000000017, 'Umgebung Stadt Bern', '16:00h - ca. 18:00h', NULL),
(0000000007, 0, 'Brennnesselsamen', 'nussig und potent', 'Die Ernte und Verarbeitung der Brennnesselsamen stehen im Zentrum dieser Pflanzenwerkstatt.\r\n\r\nJe nach Ernteertrag stellen wir, wie immer in der freien Natur, verschiedene Köstlichkeiten her - für unser z\'Vieri sowie zum nach Hause nehmen. Nebst den gustatorischen Erfahrungen lernen wir die vielfältigen Nutzen der Pflanze kennen - Interdisziplinär und mit allen Sinnen.', 'course-7_200x200.png', 'course-7_600x800.png', 0000000003, 0000000005, 0000000017, 'Eymatt bei Bern', '13:00h - ca. 16:00h', NULL),
(0000000008, 0, 'Winterentdeckungstour', 'was für Silhouetten stehen da?', 'Die Pflanzenüberreste zeigen sich in faszinierenden, silhouettenreichen Gestalten. Im Winter können wir die Natur in ihrer Ruhephase beobachten.\r\n\r\nWir spazieren zusammen durch ein urbanes oder naturnahes Gebiet in der umgebung Stadt Bern und lassen die Vielfalt der schlummernden Pflanzen auf uns wirken. Dies gibt uns gelegenheit unsere Erfahrungen und unser Wissen über die Pflanzenwelt auszutauschen.', 'course-winter_200x200.png', 'course-winter_600x800.png', 0000000002, 0000000005, 0000000018, 'Umgebung Stadt Bern', '15:00h - ca. 17:00h', NULL),
(0000000009, 0, 'Frühlingsstreifzug', 'was spriesst aus der Erde?', 'Nach der kalten Ruhephase entwickeln sich die Pflanzen für einen neuen Jahreskreislauf. Im Frühling, mit den länger werdenden Tagen, können wir das Pflanzenreich in ihrem spriessen und gedeihen beobachten.\r\n\r\nAn einem abendlichen Spaziergang entdecken wir die Pflanzen, welche urban und naturnah - vor der Haustür - wachsen. Gemeinsam entdecken wir die vielfältige Umgebung und nutzen diese Gelegenheit, um gegenseitig unser Wissen und unsere Erfahrungen über die Pflanzenwelt auszutauschen.', 'course-frühling_200x200.png', 'course-frühling_600x800.png', 0000000002, 0000000005, 0000000011, 'Oberburg', '18:00h - ca. 20:00h', NULL),
(0000000010, 0, 'Schwarzdornblüten', 'Schönheit im weissen Kleid', 'In der dreistündigen Werkstatt befassen wir uns mit einem Frühblüher, dem Schwarzdorn.\r\n\r\nBei einer Hecke üben wir uns im Bestimmen des Strauches und erfahren was ihn mit Schneewittchen verbindet. Je nach Ernteertrag stellen wir Verschiedenes aus den Blüten her. Das gemeinsame Zvieri wird mit einem Schlehen-Drink abgerundet.\r\n\r\nEs erwartet dich eine Werkstatt voller Wissen und Aktivität rund um die Schönheit im weissen Kleid.\r\n', 'course-1_200x200.png', 'course-1_600x800.png', 0000000003, 0000000005, 0000000011, 'Worblaufen', '13:00h - ca. 16:00h', NULL),
(0000000011, 0, 'Löwenzahn', 'Frühlingsputz und vieles mehr', 'In den (hoffentlich sonnigen) Frühlingstagen betrachten wir die vielfältigen Nutzen des Löwenzahns. Die vielen Volksnamen weisen darauf hin, wie Butterblume, Saurüssel, Seichkraut, Himmelslampe, Hexenmilch, Höllenspiegel und Hahnenspeck.\r\n\r\nErfahre verschiedene Anwendungen für den Frühlingsputz unseres Körpers und kulinarische Einsatzmöglichkeiten wie Blütnestängelspagetti und wie wir ihn in unser Zmittag integrieren.\r\n\r\nNebst vielem anderen betrachten wir den ökologischen Einfluss dieser Pflanze sowie die Symbolkraft dieser sonnigen Blume.', 'course-taraxacum-marz_200x200.png', 'course-taraxacum-marz_600x800.png', 0000000001, 0000000005, 0000000011, 'Umgebung Bern', '10:00h - ca. 16:00h', NULL),
(0000000012, 0, 'Waldmeisterblüten', 'Wonne mit himmlischem Duft', 'In der dreistündigen Werkstatt befassen wir uns mit DER Maipflanze, dem Waldmeister.\r\n\r\nNebst kulinarischen Zubereitungen erfährst du weitere praktische Nutzen dieses kleinen Krautes. Erfahre, während du zum Zvieri Maibowle trinkst, was diese mit Liebesmittel und Rattengift gemeinsam hat.', 'course-galium_200x200.png', 'course-galium_600x800.png', 0000000003, 0000000005, 0000000011, 'Eymatt bei Bern', '13:00h - ca. 16:00h', NULL),
(0000000013, 0, 'Löwenzahnblüten', 'von Löwen und Schweinen', 'Der Löwenzahn, auf Berndeutsch \"Söiblume\" (Schweineblume) ist eine allgegenwärtiges Unkraut. Das Schöne an diesem Kraut ist, dass man es von Kopf bis Fuss verwenden kann und es von Kopf bis Fuss auf den Körper Einfluss hat.\r\n\r\nIn dieser Werkstatt werden wir das \"löwische\" wie auch das \"schweinische\" dieser Blume erfahren, sie draussen verarbeiten und die milde Bitterkeit des Löwenzahnes kennen lernen.\r\n\r\nAuf interdisziplinärer Weise werden wir dieser altbekannten Pflanze neu begegnen - mit allen Sinnen.', 'course-taraxacum-juni_200x200.png', 'course-taraxacum-juni_600x800 .png', 0000000003, 0000000005, 0000000011, 'Infozentrum Eichholz, Wabern', '13:00h - ca. 16:00h', 'Corona Schutzkonzept Taraxacum.pdf'),
(0000000014, 0, 'Holunderbeeren', 'saftig und munter', 'Die reifen Holunderbeeren künden das Ende des Sommers und den Beginn des Frühherbstes an. In dieser Werkstatt ernten wir die sonnengetränkten Beeren und verarbeiten sie, um uns damit im Winter gesund zu halten. Kulinarische und mystische Geschichten kommen dabei nicht zu kurz.\r\n\r\nLass dich von der nährenden Seite von Frau Holle überraschen.', 'course-sambucus-aug_200x200.png', 'course-sambucus-aug_600x800.png', 0000000003, 0000000005, 0000000017, 'Umbebung Bern', '13:00h - ca. 16:00h', NULL),
(0000000015, 0, 'Schafgarbe', 'bitter und aromatisch', 'Während dieser dreistündigen Werkstatt tauchen wir in die Welt der Schafgarbe ein - mit allen Sinnen. Wir schauen, wie die Schafgarbe als Heil- und Räucherpflanze angewendet werden kann und wie sie uns eine wertvolle Begleiterin in vielen Lebenssituationen sein kann.\r\n\r\nNebst dem Ernten, verarbeiten wir die Schafgarbe in ein Elixier und in ein hautpflegendes Kosmetikum - auch in kulinarischer Form werden wir die Schafgarbe erfahren. Abgerundet wird diese Werkstatt wie immer mit spannenden und sagenhaften Geschichten dieses Krautes.', 'course-achillea_200x200.png', 'course-achillea_600x800.png', 0000000003, 0000000005, 0000000015, 'Naturzentrum Eichholz, Wabern', '13:00h - ca. 16:00h', NULL),
(0000000016, 0, 'Hopfen', 'und andere Biergewürze', 'Bevor mit dem Deutschen Reinheitsgebot das Zeitalter des Hopfens begann, wurden verschiedenste Kräuter zum würzen von Bier verwendet. An diesem Spaziergang erfahren wir von der Vielfalt des Bierwürzens und dessen Hintergründe. Dabei betrachten wir nicht nur die Wildkräuter, die um uns herum spriessen, sondern auch ferner wachsende, traditionelle Biergewürze.\r\n\r\nUnd wer sich danach mit einem Bier und Bretzel erfrischen will - wir beenden unseren gemeinsamen Spaziergang in der Nähe der Brauerei Wabräu.', 'course-aqui-humulus_200x200.png', 'course-aqui-humulus_600x800.png', 0000000002, 0000000005, 0000000015, 'Wabern', '17:00h-19:00h', NULL),
(0000000017, 0, 'Bambusprinz und Aschenputtel', 'von Pflanzen und Märchen', 'Der Winter ist die schönste Jahreszeit für Märchen. So widmet sich diese Führung den Pflanzen in den Märchen. Von den Haselnüssen von Aschenputtel bis zu verwunschenem Bambus. Dies im Namen des [Vereins Aquilegia](!http://www.aquilegia.ch/) im Botanischen Garten der Universität Bern.', 'course-aqui-marli_200x200.png', 'course-aqui-marli_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18:00h-19:00h; So 14:00h-15:00h', NULL),
(0000000018, 0, 'Destillieren', 'Lavendelduft und Lavendelwasser', 'Ein Abend in Zusammenarbeit mit dem Heilpflanzenatelier von Ulrike Toma. Zusammen werden wir mit einer Alembic-Destille Lavendelwasser destillieren und daraus einen Duftspray oder ein Gesichtstonic herstellen. Abgerundet wird alles mit feinen Snacks und Getränken.', 'course-ulli-lavandula_200x200.png', 'course-ulli-lavandula_600x800.png', 0000000004, 0000000005, 0000000015, 'Heilpflanzen Atelier von Ulrike Toma', 'Fr 17:00h - 20:00h', NULL),
(0000000019, 0, 'Schwarzdorn', 'Ein vielfältiger Strauch', 'Die dunkeln Früchte des Schwarzdons, Vorfahren der Pflaumen, werden seit jeher von den Menschen genutzt.\r\n\r\nIn der Winterzeit symbolisiert er ein Zugang zur Anderswelt. Die Fruchtreife ist um die Zeit von Samhain (Halloween), wenn die Welten der Lebenden und Toten nah beieinander sind. Wir werden diese Schattenseiten des Strauches betrachten und aus den Früchten feine Getränke herstellen.\r\n\r\nAm wärmenden Feuer werden wir weiter die Vielfalt dieses dornig-sparrigen Strauches erfahren: Wie die irischen Schwarzdorn-Feenwesen betrunkene Wanderer in die Irre führen; welche Tricks die zusammenziehenden Früchte fein und süss machen; welchen Einfluss diese Sträucher für die Biodiversität haben und weshalb es Unklück bringt, Schwarzdorn zu schneiden...', 'course-schlehe_200x200.png', 'course-schlehe_600x800.png', 0000000001, 0000000005, 0000000018, 'Umgebung Bern', '10:00h - ca. 16:00h', NULL),
(0000000020, 0, 'Am Lagerfeuer', 'zusammen über Pflanzen berichten', 'Die dunkle Jahreshälfte lädt zum Geschichten erzählen ein. Sowie zum Verarbeiten von Pflanzenbegegnungen, welche in der hellen Jahreszeit erlebt wurden.\r\n\r\nWir treffen uns um ein Lagerfeuer zu entzünden, ein einfaches Getränk darauf zu kochen und um Pflanzengeschichten auszutauschen. Es soll ein gegenseitiger Austausch stattfinden, wo man Texte zum Vorlesen mitbringen, Geschichten und Erfahrungen erzählen kann und auch Raum ist, um einfach zuzuhöhren und das Feuer zu betrachten.\r\n\r\nDie Lagerfeuer finden anstelle der Pflanzenspaziergänge statt - So zu sagen Pflanzenspaziergänge in Gedanken ;)\r\n\r\n', 'course-lager_200x200.png', 'course-lager_600x800.png', 0000000002, 0000000005, 0000000018, 'Rehhag Wäldchen Bümpliz', '18:00h - ca. 20:00h', NULL),
(0000000021, 0, 'Rauhnächte', 'Räucherkugeln herstellen', 'Die Rauhnächte - die Zeit zwischen den Jahren. Diese Zeit eignet sich um Altes abzuschliessen und Neues zu starten - dies gilt für Projekte sowie für Gewohnheiten.\r\n\r\nAn dieser Werkstatt werden wir 12 individuelle Räucherkugeln erstellen, mit jeweils einer handgeschreibenen Botschaft im Herzen der Kugel. Somit kann an jeder Rauhnacht eine Kugel verräuchert werden und bewusst auf das darin enthaltene Thema einzugehen.\r\n\r\nAbgerundet wird die Werkstatt mit einer Einführung übers Räuchern und über die Rauhnächte.', 'course-rauhnacht_200x200.png', 'course-rauhnacht_600x800.png', 0000000003, 0000000005, 0000000018, 'Zürich 14-17h', 'Wabern 15-18h', NULL),
(0000000022, 0, 'Erika Ale', 'ein Kräuterbier brauen', 'Wir brauen zusammen – unter freiem Himmel – ein Ale mit Erikablüten. Währenddessen erfahren wir die Grundlagen über die Handwerkskunst des Bierbrauens. Ergänzt wird der Brautag mit altem und neuem Bierwissen.\r\n\r\nZum Mittagessen wird es von Andrea Suppe und Treberspezialitãten geben.\r\n\r\nAuf den Britischen Inseln fand man alte Überreste des wohl ältesten europäischen Bieres - und es wurde, statt mit Hopfen, mit Erika gebraut. Inspiriert von diesem Fund werden wir ein (etwas moderneres) Bier mit Erika brauen.\r\n\r\nEtwa ein Monat nach dem Brautag kann das trinkfertige, in Flaschen abgefüllte Bier abgeholt werden.', 'course-erika-ale_200x200.png', 'course-erika-ale_600x800.png', 0000000005, 0000000005, 0000000011, 'Wabräu in Wabern', '10:00h - ca. 16:00h', ''),
(0000000023, 0, 'Holunderblüten Bier', 'ein Kräuterbier brauen', 'Wir brauen zusammen – unter freiem Himmel – ein Bier mit Holunderblüten. Währenddessen erfahren wir die Grundlagen über die Handwerkskunst des Bierbrauens. Ergänzt wird der Brautag mit altem, neuem und kuriosem Bierwissen. Zusätzlich steht der Holunder im Zentrum, unserem Hauptgewürz. Auch hier wird der Tag ergänzt mit altem, neuem und kuriosem Wissen um dieses vielfältige Gehölz.\r\n\r\nDie Zugabe von Holunderblüten in Bier war vor allem im 18. Jahrhundert beliebt, in Europa und Amerika. Geschmacklich eine wunderbare Ergänzung zu einem hellen Bier, mythologisch spannend im Bezug zu Liebesorakel...\r\n\r\nEtwa ein Monat nach dem Brautag ist das trinkfertige, in Flaschen abgefüllte Holunder-Bier abholbereit.', 'course-holunder-bier_200x200.png', 'course-holunder-bier_600x800.png', 0000000005, 0000000005, 0000000015, 'Schaffhausen', '10:00h -ca. 16:00h', NULL),
(0000000024, 1, 'Artemisia Amber', 'braue dein Beifussbier', 'An diesem Bierbrautag kreieren wir ein Amber-Bier mit Artemisia vulgaris - dem Beifuss.\r\nDies ist ein Biergewürz, welches bereits vor dem Hopfenzeitalter genutzt wurde und ein vielfältiges Spektrum an Aromen und Wirkungen aufweist. Ergänzt wird der Brautag mit altem und neuem, mit praktischem und kuriosem Bierwissen. Tauche ein, in die uralte und vielschichtige Welt der Braukunst.\r\n\r\nZum Mittagessen serviert uns Andrea Suppe und Malztreber-Spezialitäten.\r\n\r\nVorfreude gärt\r\nEinen Monat nach dem Brautag kann das Bier in Flaschen abgefüllt nach Hause genommen werden.\r\n', 'course-beifuss-amber_200x200.png', 'course-beifuss-amber_600x800.png', 0000000005, 0000000005, 0000000015, 'Wabern', '10:00h - ca. 16:00h', NULL),
(0000000025, 0, 'Schachtelhalm', 'urtümlich und standhaft', 'Während drei Stunden verweilen wir in der Welt dieser urtümlichen Sporenpflanze und betrachten sie aus verschiedenen Blickwinkeln. Wir erfahren kurioses und wissenswertes über sie - wie sie die Erde früher und heute prägt und was wohl die Zukunft bringt.\r\n\r\nDiese Werkstatt beinhaltet folgende Schwerpunkte:\r\n- Ernte des Acker-Schachtelhalm\r\n- Verarbeitung für Lebensmittel (zu feinem Pulver und dessen Weiterverwendung als Tee und Nahrungsergänzung)\r\n- Z\'vieri mit Leckereien aus Schachtelhalm\r\n- Botanische Betrachtung des Acker-Schachtelhalmes und der weiteren Arten\r\n- Interdisziplinäre Betrachtung des Schachtelhalmes wie Geschichte, Kulinarik, Medizin, Mythologie, Handwerk und Kosmetik. \r\n', 'course-equisetum_200x200.png', 'course-equisetum_600x800.png', 0000000003, 0000000005, 0000000015, 'Wabern', '13:00h - ca. 16.00h', NULL),
(0000000026, 0, 'Waldmeister', 'Wonne mit himmlischem Duft', 'In dieser Exkursion befassen wir uns mit DER Maipflanze, dem Waldmeister.\r\n\r\nNebst kulinarischen Zubereitungen erfährst du weitere praktische Nutzen dieses kleinen Krautes. Zum z\'Mittag werden wir - auf offenem Feuer- gemeinsam eine Frühlingssuppe kochen und zum z\'Vieri werden wir mit der traditionellen Maibowle anstossen, dazu erfährst du, was der Waldmeister mit Liebesmittel und Rattengift verbindet.', 'course-galium_200x200.png', 'course-galium_600x800.png', 0000000001, 0000000005, 0000000011, 'Eymatt bei Bern', '10:00h - ca. 16:00h', NULL),
(0000000027, 0, 'Aloe vera', 'Werkstatt zu Frischekosmetik', 'Aloe Vera als Frischekosmetik.\r\nDie Aloe Vera ist eine Superpflanze, die es geschafft hat, seit Jahrzehnten erfolgreich auf dem Markt zu sein.\r\nDoch was kann sie wirklich?\r\nIn dieser Werkstatt, mit der erfahrenen Drogistin Giovina Nicolai, vertiefen wir unser Wissen zu dieser Pflanze und lernen praktische Anwendungen für den Alltag. Ein Aloe Vera-Blatt ist pflegende Naturkosmetik pur - ohne jegliche Zusatzstoffe wie Stabilisatoren oder Konservierungsmittel.\r\nHier geht es nicht um stark parfümierte, weisse Crèmes in hübschen Tiegel, sondern um rohe, vitale Frische von Aloeblättern. Eine etwas andere Angehensweise zum Thema Kosmetik.\r\nWir stellen selber Kosmetik her welche wir nach Hause nehmen dürfen.', 'course-aloe_200x200.png', 'course-aloe_600x800.png', 0000000003, 0000000005, 0000000015, 'Wichtrach', '19:00h - 22:000h', NULL),
(0000000028, 0, 'Sherlock Holmes und Miss Marple', 'mörderische Pflanzen aus Krimis', 'In vielen Krimis wird mit Pflanzen gemordet, vergiftet, getäuscht. Trotz dem grossen Hauptackt haben sie meist nur eine Nebenrolle. In der stündigen Führung werden diese Pflanzen ins Rampenlicht gestellt. Dies im Namen des [Vereins Aquilegia](!http://www.aquilegia.ch/) im Botanischen Garten der Universität Bern.\r\n\r\nBild: Stechapfel - Datura inoxia', 'datura-inoxa_200x200.png', 'datura-inoxa_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18:00h-19:00h; So 14:00h-15:00h', NULL),
(0000000029, 0, 'Aloe vera', 'Naturkosmetik pur', 'Die Wüstenlilie Aloe vera wächst bei vielen auf der Fensterbank. Und falls nicht, so kennt man sie aus Jogurth, Hautcremes und Getränken. Eine Super-Pflanze, die es geschafft hat, seit Jahrzehnten erfolgreich auf dem Markt zu sein. Doch was kann sie wirklich?\r\n\r\nIn dieser Werkstatt vertiefen wir unser Wissen zu dieser Pflanze und lernen praktische Anwendungen für den Alltag. Ein Aloe vera Blatt ist Naturkosmetik pur - ohne jegliche Zusatzstoffe wie Stabilisatoren oder Konservierungsmittel.\r\n\r\nHier geht es nicht um stark parfümierte, weisse Cremes in hübschen Tiegel - sondern um rohe, gschlüddrige, vitale Frische von Aloeblättern. Eine etwas andere Angehensweise zum Thema Kosmetik.\r\n\r\nDiese Werkstatt findet drinnen statt.', 'course-aloe_200x200.png', 'course-aloe_600x800.png', 0000000003, 0000000005, 0000000015, 'Raum Bern', '3 Stunden', NULL),
(0000000030, 0, 'Bier mit wildem Hopfen', 'ein wildes Helles brauen', 'Wir brauen zusammen – unter freiem Himmel – ein Bier mit wild gesammeltem Hopfen. Währenddessen erfahren wir die Grundlagen über die Handwerkskunst des Bierbrauens. Ergänzt wird der Brautag mit altem und neuem Bierwissen. Wir lassen uns von den Aromen des wilden Hopfen überraschen und vergleichen ihn mit den gezüchteten Hopfensorten, welche normalerweise für Bier verwendet werden.\r\n\r\nNebst dem Brauhandwerk nehmen wir die einheimische Hopfenpflanze genauer unter die Lupe und erfahren, wie sie geerntet und gelagert werden kann.\r\n\r\nEtwa ein Monat nach dem Brautag ist das wilde Hopfenbier, in Flaschen abgefüllt abholbereit.\r\n', 'course-humulus-helles_200x200.png', 'course-humulus-helles_600x800.png', 0000000005, 0000000005, 0000000015, 'Wabern', '10:00h - ca. 16:30h', NULL),
(0000000031, 0, 'Hexensalbe und Flugbalsam', 'Pfanzen der sagenumworbenen Salbe', 'An diesem Pflanzenspaziergang dreht sich alles um Hexenpflanzen - um die Zutaten der Hexensalben, ihrem Ursprung und ihrer Bedeutung.', 'datura-inoxa_200x200.png', 'datura-inoxa_600x800.png', 0000000002, 0000000005, 0000000015, 'Öko Gärtnerei Maurer, Münsingen', '14:00h-16:00h', NULL),
(0000000032, 0, 'Nordamerikanische Goldruten', 'durch ein Artprojekt die Biodiversität fördern', 'Hast du dich jemals gefragt, ob es beim Management von invasiven Neophyten auch einen kreativen, kampffreien Ansatz gibt? Oder ob man die anfallende Biomasse beim jäten auch (zwischen-)nutzen könnte?\r\n\r\nDie nordamerikanischen Goldurten werden als Invasive Neophyten auf der Freisetzungsverodrnung aufgelistet und International bekämpft. Da es wichtig ist, die Verbreitung dieser Arten unter Kontrolle zu halten, werden wir in diesem Workshop die Goldrute zuerst jäten, bevor wir uns ressourcenorientiert mit ihr auseinandersetzen.\r\n\r\nSo kann die Goldrute dank ihres intensiven gelben Farbstoffs zur Farbgewinnung genutzt werden. In diesem Workshop werden wir die Vielfalt dieser Pflanze – sowohl in positiver, wie auch in negativer Hinsicht - in den Mittelpunkt stellen und lernen, sie auf kreative Weise im Kunsthandwerk zu nutzen.\r\n\r\nKursaspekte:\r\n- Nordamerikanische Goldruten und ihre Reisne in die Schweiz\r\n- Philosophische Betrachtung der Thematik Invasive Neophyten, inkl. Diskussion\r\n- Jäten/Ernten der Goldruten auf der Pro Natura Brache beim Bahnhof Burgdorf\r\n- Gewinnen des gelben Farbstoffes, mit Einführung in die Welt der Naturfarben\r\n- Textiles Färben von Tragetaschen und Furoshiki Tücher\r\n- Bedrucken der gefärbten Projekte mit Siebdruck\r\n', 'course-4_200x200.png', 'course-solidago-pronatura_600x800.png', 0000000003, 0000000005, 0000000015, 'Bahnhof Burgdorf', '09:00h - ca. 14:00h', NULL),
(0000000033, 0, 'Erika Ale', 'braue dein wildes Kräuterbier', 'Wir brauen zusammen – in der wohnlichen Atmosphäre des wilden Gärtners in Zürich West – ein Ale mit rosa violetten Erikablüten. Das Sträuchlein mit dem Mädchennamen wird auch Schneeheide ge­nannt und wächst in den Schweizer Alpen. Gesammelt von Giovina, unserer Workshopleiterin, findet es an diesem Wochenende seinen Weg in die Stadt.\r\n\r\nGiovina Nicolai, die mit uns in Zürich West maischt, kocht und absiebt, erzählt uns altes und neues Wissen über das 6000-jährige Handwerk und Kurioses aus längst vergangener Brauzeit. Auf den Britischen Inseln fand man Überreste des\r\nwohl ältesten europäischen Bieres – und es wurde statt mit Hopfen mit Erika gebraut. Inspiriert von diesem Fund werden wir ein etwas moderne­res Bier mit Erika brauen. Dabei schenkt Giovina von ihrem vorbereiteten Erika Ale zum Degustieren aus.\r\n\r\nVorfreude gärt\r\nIn einem Monat sind dann drei Liter Bier pro Teil­nehmer trinkfertig und können im wilden Gärtner abgeholt werden.', 'course-erika-ale_200x200.png', 'course-erika-ale-wild_600x800.png', 0000000005, 0000000005, 0000000015, 'zum wilden Gärtner, Zürich', '10:00h - ca. 17:00h', NULL),
(0000000034, 0, 'Pink Sour', 'von weiblichen Aspekten im Bier', 'Wir brauen zusammen – unter freiem Himmel – ein florales, pinkiges Sauerbier mit Hibiskusblüten und Erika. Währenddessen erfahren wir die Grundlagen über die Handwerkskunst des Bierbrauens. Ergänzt wird der Brautag mit altem und neuem Bierwissen:\r\n\r\nDieser Brautag steht ganz im Zeichen von starker Weiblichkeit, welche stark im Bier und der Biergeschichte verankert ist. Am Brautag sind natürlich alle Geschlechter willkommen - denn einen weiblichen Anteil besitzt jede Person.\r\n\r\nVorfreude gärt\r\nEtwa ein Monat nach dem Brautag ist das trinkfertige, in Flaschen abgefüllte Bier abholbereit. Mild in der Hopfenbittere, erfrischend leicht säuerlich im Geschmack und schön Pink.', 'course-pink-sour_200x200.png', 'course-pink-sour_600x800.png', 0000000005, 0000000005, 0000000014, 'Wabräu in Wabern', '10:00h - ca. 16:00h', NULL),
(0000000035, 0, 'Schafgarben Bier', 'ein wildes Helles brauen', 'Wir brauen zusammen – unter freiem Himmel – ein Bier mit wild gesammelter Schafgarbe. Währenddessen erfahren wir die Grundlagen über die Handwerkskunst des Bierbrauens. Ergänzt wird der Brautag mit altem und neuem Bierwissen.\r\n\r\nNebst dem Brauhandwerk nehmen wir die aromatische und heilende Kraft der Schafgarbe genauer unter die Lupe. Eine traditionelle Braupflanze, welche auch in den alten Grut Kräuterbieren verwendet wurde.\r\n\r\nEtwa ein Monat nach dem Brautag ist das Schafgarbenbier, in Flaschen abgefüllt abholbereit.\r\n', 'course-humulus-helles_200x200.png', 'course-schafgarbe-helles_600x800.png', 0000000005, 0000000005, 0000000015, 'Wabräu, Wabern', '10:00h - ca. 16:30h', NULL),
(0000000036, 0, 'Kräuterbiere', 'für die Jahreskreis Feste', 'Die vier grossen Jahreskreis Feste - die Frühlings- und Herbst-Tagundnachtgleichen und die Sommer- und Winter-Sonnenwenden - sind vier wundervolle Ankerpunkte im Jahreszyklus. Wir brauen dazu Kräuterbiere, um darauf anzustossen.\r\nIn gemütlicher und besinnlicher Atmosphäre brauen wir jeweils einen Monat vorher den Sud, damit das gegärte Bier eine Woche vor den jeweiligen Jahreskreis Festen abholbereit ist.\r\n\r\n**Zur Sommer-Sonnenwende - 21. Juni** kreieren wir das Bier \"Eldermother\" mit Holunderblüten. Nebst der mythologischen Bedeutung des Holunders und des Sommers, befassen wir uns mit dem Hintergrund von Kräuterzugaben.\r\n\r\n**Zur Herbst-Tagundnachtgleiche - 23. September** betrachten wir den Holunder aus herbstlicher Sicht und brauen aus dessen Beeren das \"Eldermother\'s Blood\". Zusätzlicher Themenschwerpunkt sind die Getreidezugaben (Malze) - die Fülle und Ernte des kommenden Herbstes.\r\n\r\n**Zur Winter-Sonnenwende - 21. Dezember** brauen wir ein dunkles Bier mit passenden Wurzeln wie Engels- und Nelkenwurz. Nebst den winterlichen Themen wie Dunkelheit und Wurzelernte, befassen wir uns mit der alchemistischen Transformation und der dazugehörigen Hefe.\r\n\r\n**Zur Frühlings-Tagundnachtgleiche - 20. März** brauen wir ein Erika Ale, mit der Frühblüte der Schneeheide und der Spätblüte der Besenheide. Themenschwerpunkt wird das Frühlingserwachen sein und die wichtigste Zutat des Brauens, dem Wasser - unser Lebenselixier', 'course-jahreskreisfeste_200x200.png', 'course-jahreskreisfeste_600x800.png', 0000000005, 0000000005, 0000000011, 'Naturzentrum Eichholz, Wabern', '10:00h - ca. 16:30h', NULL),
(0000000037, 0, 'Lavendel Stout', 'ein dunkles Kräuterbier brauen', 'Wir brauen zusammen – unter freiem Himmel – ein winterliches, dunkles Bier. Währenddessen erfahren wir die Grundlagen über die Handwerkskunst des Bierbrauens. Ergänzt wird der Brautag mit altem und neuem Bierwissen.\r\n\r\nDunkel wie die Jahreszeit, soll unser Bier sein. Der Lavendel bringt einen Hauch von Sommer hinein - dem Gefühl, dass hellere Tage wieder kommen. Überraschend in dieser Kombination ist, dass weniger die blumigen sondern die erdigen Komponenten des Lavendels bei diesem Bier zum Vorschein kommen.\r\n\r\nEtwa ein Monat nach dem Brautag kann das trinkfertige, in Flaschen abgefüllte Bier abgeholt werden.', 'course-lavendel-stout_200x200.png', 'course-lavendel-stout_600x800.png', 0000000005, 0000000005, 0000000017, 'Wabräu in Wabern', '10:00h - ca. 16:30h', NULL),
(0000000038, 0, 'Einjähriges Berufskraut', 'durch ein Artprojekt die Biodiversität fördern', 'Invasive, gebietsfremde Pflanzen erlangen in letzter Zeit viel Aufmerksamkeit und werden häufig mit einem Verlust der Artenvielfalt in Verbindung gebracht. Eine dieser umstrittenen Pflanzen ist das einjährige Berufskraut. Da es wichtig ist, die Verbreitung dieser Arten unter Kontrolle zu halten, werden wir in diesem Workshop das Berufskraut zuerst jäten, bevor wir uns ressourcenorientiert mit ihm auseinandersetzen.\r\n\r\nSo kann aus dem Berufskraut zum Beispiel ein grauer Farbstoff gewonnen werden. In diesem Workshop werden wir die Vielfalt dieser Pflanze – sowohl in positiver, wie auch in negativer Hinsicht – in den Mittelpunkt stellen und lernen, sie auf kreative Weise im Kunsthandwerk zu nutzen.\r\n\r\nKursaspekte:\r\n- Berufskräuter und ihre Reise in die Schweiz\r\n- Einführung in die Thematik von Invasiven Neophyten\r\n- Jäten/Ernten des Berufskrauts auf der Pro Natura Brache beim Bahnhof Burgdorf\r\n- Gewinnen des grauen Farbstoffes, mit Einführung in die Welt der Naturfarben\r\n- Einfärben einer Stofftasche sowie eines Furoshiki Tuches\r\n- Bearbeitung der Stoffprojekte mit Siebdruck (auf Basis von Eisenbeize)\r\n', '00_Platzhalter_200x200.png', '00_Platzhalter_600x800.png', 0000000003, 0000000005, 0000000015, 'Bahnhof Burgdorf', '09:00h - ca. 14:00h', NULL),
(0000000039, 0, 'Schmetterlingsstrauch', 'durch ein Artprojekt die Biodiversität fördern', 'Invasive, gebietsfremde Pflanzen erlangen in letzter Zeit viel Aufmerksamkeit und werden häufig mit einem Verlust der Artenvielfalt in Verbindung gebracht. Eine dieser umstrittenen Pflanzen ist der Schmetterlingsstrauch. \r\n\r\nDa es wichtig ist die Verbreitung dieser Arten unter Kontrolle zu halten, werden wir uns in diesem Workshop mit ihnen auseinandersetzen.\r\n\r\nZum Beispiel kann aus dem Schmetterlingsstrauch ein gelber bis grüner Farbstoff gewonnen werden. In diesem Workshop werden wir die Vielfalt dieser Pflanze – sowohl in positiver, wie auch in negativer Hinsicht - in den Mittelpunkt stellen und lernen, sie auf kreative Weise im Kunsthandwerk zu nutzen.\r\n\r\nKursaspekte:\r\n- Schmetterlingsstrauch und seine Reise in die Schweiz\r\n- Bekämpfungs- und Umgangsarten von Invasiven Neophyten\r\n- Entfernen/Ernten des Schmetterlingsstrauchs auf der Pro Natura Brache beim Bahnhof Burgdorf\r\n- Gewinnen des Farbstoffes, mit Einführung in die Welt der Naturfarben\r\n- Einfärben von Socken und eines Furoshiki Tuches\r\n- Bearbeitung der Stoffprodukte mit japanischer Shibori Technik (mit Eisenbeize)\r\n', '00_Platzhalter_200x200.png', '00_Platzhalter_600x800.png', 0000000003, 0000000005, 0000000015, 'Bahnhof Burgdorf', '09:00h - ca. 14:00h', NULL),
(0000000040, 0, 'Pflanzenspaziergänge', 'abendliche Entdeckungstour', 'An abendlichen Spaziergängen entdecken wir die Pflanzen, welche urban und naturnah - vor der Haustür - wachsen. Gemeinsam entdecken wir die vielfältige Umgebung im Wechsel der Jahreszeit.\r\n\r\nDie Spaziergänge werden abwechselnd von verschiedenen Pflanzen-Fachleuten geführt. Somit erhalten wir vielfältige Betrachtungsweisen der Pflanzenwelt - welches einen ganzheitlichen Zugang fördert.\r\n\r\nAn jedem Spaziergang wird eine Artenliste erstellt, mit den angetroffenen Pflanzen. In digitaler Form wird diese den Kursteilnehmer*innen nach dem Spaziergang zugesendet.', 'course-spaz-sommer_400x400.png', 'course-spaz-sommer_600x800.png', 0000000002, 0000000005, 0000000015, 'Umgebung Stadt Bern', '18:00h - ca. 20:00h', NULL),
(0000000041, 0, 'Die Basis unserer Heilpflanzenkunde', 'von der Materia Medica von Dioskurides', 'An den stündigen Führungen im Botanischen Garten Bern erhalten wir einen Einblick, in eins der ältesten europäischen Heilpflanzenbücher - der Materia Medica von Pedanios Dioskurides. Ein mit Rezepten gefülltes Pflanzenbuch, welches die Heilpflanzenkunde der heutigen Zeit stark geprägt hat.', '00_Platzhalter_200x200.png', '00_Platzhalter_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18:00h-19:00h; So 14:00h-15:00h', NULL),
(0000000042, 0, 'Pflanzenspaziergänge', 'morgendliche Entdeckungstour', 'An morgendlichen Spaziergängen entdecken wir die Pflanzen, welche urban und naturnah - vor der Haustür - wachsen. Gemeinsam entdecken wir die vielfältige Umgebung im Wechsel der Jahreszeit.\r\n\r\nDie Spaziergänge werden abwechselnd von verschiedenen Pflanzen-Fachleuten geführt. Somit erhalten wir vielfältige Betrachtungsweisen der Pflanzenwelt - welches einen ganzheitlichen Zugang fördert.\r\n\r\nAn jedem Spaziergang wird eine Artenliste erstellt, mit den angetroffenen Pflanzen. In digitaler Form wird diese den Kursteilnehmer*innen nach dem Spaziergang zugesendet.', 'course-spaz-sommer_400x400.png', 'course-spaz-sommer_600x800.png', 0000000002, 0000000005, 0000000017, 'Umgebung Stadt Bern', '09:00h - ca. 11:00h', NULL),
(0000000043, 0, 'Eldermothers Blood', 'ein Holunderbeeren Bier', 'An diesem Brautag kreieren wir gemeinsam ein nährendes Bier mit Holunderbeeren - das Eldermother Blood.\r\n\r\nGebraut wird es im Zeichen der Herbst-Tagundnachtgleiche, der Fülle des Herbstes, des Erntedankes. Brautechnische Themenschwerpunkte sind die Getreidezugaben (Malze). Ansonsten gehen wir weniger in die Brautechnick, sondern fokusiern uns auf ein herbstlich-stimmungsvolles Gebräu.\r\n\r\nAusgeschmückt wird der Brautag mit passenden Märchen von der Märchenerzählerin Claudia Büttler.\r\n\r\nEin Monat nach dem Brautag wird das Bier trinkfertig abholbereit sein - passend, um damit auf die Herbst-Tagundnachtgleiche anzustossen.', 'course-jahreskreisfeste_Blood-200x200.png', 'Jahreskreis-Eldermothers-Blood.jpg', 0000000005, 0000000005, 0000000014, 'Naturzentrum Eichholz, Wabern', '10:00h - ca. 16:30h', NULL),
(0000000044, 0, 'Gundelreben Bock', 'ein Kräuterbier brauen', 'Wir brauen zusammen – unter freiem Himmel – ein Bockbier mit Gundelrebe. Währenddessen erfahren wir die Grundlagen über die Handwerkskunst des Bierbrauens. Ergänzt wird der Brautag mit altem und neuem Bierwissen.\r\n\r\nZum Mittagessen wird es von Andrea Suppe und Treberspezialitãten geben.\r\n\r\nDie Gundelrebe war ein klassisches Biergewürz der Britischen Inseln und galt als lebensverlängerndes Tonikum - ein vielseitiges, verspieltes Aroma welches zu erforschen ist...\r\n\r\nEtwa ein Monat nach dem Brautag kann das trinkfertige, in Flaschen abgefüllte Bier abgeholt werden.', 'course-erika-ale_200x200.png', 'course-erika-ale_600x800.png', 0000000005, 0000000005, 0000000017, 'Wabräu in Wabern', '10:00h - ca. 16:30h', NULL),
(0000000045, 0, 'Frühlingsbier', 'ein Erika Ale brauen', 'Wir brauen zusammen – unter freiem Himmel – ein frühlingshaftes Ale mit Erikablüten. Zusammen gehen wir auf die Suche nach den ersten Frühlingszeichen, um diese ins Bier zu brauen. Erika ist eins der ältesten Braugewürze des europäischen Raumes. Eine blumig-harzige Aromareise in die schneebedeckten Alpen zur Schneeheide und auf die windigen Highlands zur Besenheide.\r\n\r\nAls zusätzliches Vertiefungsthema wird das Lebenselixier Wasser angeschaut. Trinkbereit um auf die Frühlings-Tagundnachtgleiche anzustossen.\r\n\r\nEtwa ein Monat nach dem Brautag kann das trinkfertige, in Flaschen abgefüllte Bier abgeholt werden.\r\n\r\nDieser Brautag kann auch als Serie mit den weiteren drei Jahreskreis-Bieren gebucht werden.', 'course-erika-ale_200x200.png', 'course-erika-ale_600x800.png', 0000000005, 0000000005, 0000000017, 'Wabräu in Wabern', '10:00h - ca. 16:30h', NULL),
(0000000046, 0, 'Beifuss Amber', 'ein Herbstbier brauen', 'Wir brauen zusammen – unter freiem Himmel – ein Bier mit Beifusskraut. Zusammen gehen wir auf die Suche nach den ersten Herbstzeichen, um diese ins Bier zu brauen.  Die Namenspatin; die Göttin der Jagd und Vegetation könnte für den Beifuss (Artemisia vulgaris) nicht passender sein. Eine aromatische Kombination für ein volles Herbstbier.\r\n\r\nAls thematisches Vertiefungsthema werden Getreide und Malz angeschaut. Trinkbereit um auf die Herbst-Tagundnachtgleiche anzustossen.\r\n\r\nEtwa ein Monat nach dem Brautag ist das trinkfertige, in Flaschen abgefüllte Bier abholbereit.', 'course-beifuss-amber_200x200.png', 'course-beifuss-amber_600x800.png', 0000000005, 0000000005, 0000000014, 'Wabräu in Wabern', '10:00h - ca. 16:30h', NULL),
(0000000047, 0, 'Sommerbier', 'ein Holunderbier brauen', 'Wir brauen zusammen – unter freiem Himmel – ein Bier mit Holunderblüten. Ein Helles mit dem blumigen Bouquet der Holunderblüten. Zusammen gehen wir auf die Suche nach den ersten Sommerzeichen, um diese ins Bier zu brauen. \r\n\r\nAls zusätzliches Vertiefungsthema wird die Zugabe von Braugewürzen angeschaut. Trinkbereit um auf die Sommer-Sonnenwende anzustossen.\r\n\r\nEtwa ein Monat nach dem Brautag ist das trinkfertige, in Flaschen abgefüllte Holunder-Bier abholbereit.\r\n\r\nDieser Brautag kann auch als Serie mit den weiteren drei Jahreskreis-Bieren gebucht werden.', 'course-holunder-bier_200x200.png', 'course-holunder-bier_600x800.png', 0000000005, 0000000005, 0000000015, 'Wabern', '10:00h - ca. 16:30h', NULL),
(0000000048, 0, 'Wurzelbier', 'ein dunkles Winterbier brauen', 'Wir brauen zusammen – unter freiem Himmel – ein dunkles Wurzelbier. Zusammen gehen wir auf die Suche nach den ersten Winterzeichen, um diese ins Bier zu brauen - in die Tiefen eines dunklen Bieres mit passenden Wurzeln wie Engels- und Nelkenwurz. Trinkbereit um auf die Winter-Sonnenwende anzustossen.\r\n\r\nAls zusätzliches Vertiefungsthema werden wir die alchemistische Transformation, die Gärung betrachten\r\n\r\nEtwa ein Monat nach dem Brautag kann das trinkfertige, in Flaschen abgefüllte Bier abgeholt werden.', 'course-lavendel-stout_200x200.png', 'course-winterbier_600x800.png', 0000000005, 0000000005, 0000000018, 'Wabräu in Wabern', '10:00h - ca. 16:30h', NULL),
(0000000049, 0, 'Gundelreben Bock', 'das magische Biergewürz', 'Wir brauen zusammen – unter freiem Himmel – ein Bier mit frischem Gundelrebenkraut. Die Gundelrebe war ein traditionelles Biergewürz auf den Britischen Inseln und galt dort als lebensverlängerndes Tonikum. Der blaublühende Frühlingsbote besitzt ein vielseitiges, verspieltes Aroma welches zu erkunden gilt. Währenddessen erfahren wir die Grundlagen über die Handwerkskunst des Bierbrauens. Ergänzt wird der Brautag mit altem und neuem Bierwissen.\r\n\r\nEtwa ein Monat nach dem Brautag ist das trinkfertige, in Flaschen abgefüllte Bier abholbereit.\r\n', 'course-jahreskreisfeste_200x200.png', 'course-gundelreben-bock_600x800.png', 0000000005, 0000000005, 0000000011, 'Biohof Gutenbrünnen, Toffen', '10:00h - ca. 16:00h', NULL),
(0000000050, 0, 'Story Thyme', 'Schnittpunkt von Mensch und Pflanze erkunden', 'Diese Treffen in kleiner Gruppe sind eine Kollaboration zwischen dem Pflanzenlabor und Amanda Blair von Limited Edition of One.\r\n\r\nIn jedem Treffen steht eine andere Pflanze im Zentrum. Gemeinsam gehen wir auf spielerische Entdeckungstour zu unserem Wissen der Pflanzen. Es ist eine Kombination zwischen Reflexion, kreativem Denken, Coaching und Kommunikation. Ein Raum, der Selbstentwicklung und Perspektiven fördert und nicht zuletzt neue Zugangsmöglichkeiten zu sich und zur Pflanzenwelt öffnet.\r\n\r\nAlles was du dazu brauchst ist Interesse und eine Prise kindliche Neugier :)', 'course-story-thyme_200x200.png', 'course-story-thyme-600x800.png', 0000000003, 0000000005, 0000000015, 'Wabern', '18:30h - 21:00h', NULL),
(0000000051, 0, 'Pflanzentinten', 'Farbvielfalt der Pflanzen entdecken', 'In diesen Treffen, in kleinen Gurppen, erkunden wir gemeinsam die Farbpalette der Pflanzenwelt.\r\nWir bestimmen und ernten unser Pflanzenmaterial, welches wir (wenn möglich auf offenem Feuer) zu Naturtinten verarbeiten. \r\n\r\nNebst der Auseinandersetzung der Farbdiversität, steht die Auseinandersetzung mit der Pflanze im Zentrum - durch visuelles Gestalten mit den kreierten Farben. Wie immer im Pflanzenlabor, wird das Ganze gespickt mit verschiedenstem Pflanzenwissen.\r\n\r\nWährend den sechs Treffen, tauchen wir immer tiefer in die Welt ein, welche am Boden des Tintenfasses liegt :)\r\n\r\n(Das Datum auf dem Anmeldebutton ist jeweils das Startdatum einer Sechser-Serie.)', 'course-pflanzentinte_400x400.png', 'course-pflanzentinte_600x800.png', 0000000003, 0000000005, 0000000012, 'Umgebung Bern', '18:30h - 21:00h', NULL),
(0000000052, 0, 'Mit den 5 Elementen durch die Jahreszeiten', 'Kurszyklus 2024', 'Wie nimmst du die Jahreszeiten und die Übergänge dazwischen wahr? \r\nIn diesem Jahreskurs navigierst du durch die saisonalen Eigenschaften und du erhältst Einblicke in die Europäische und Chinesische Naturheilkunde. Du hast die Möglichkeit die Jahreszeit mit allen Sinnen, in Bewegung und in der Reflexion zu erfahren. \r\nDu verbringst jeweils einen Tag in jeder Jahreszeit mit Gedankenanstössen aus der 5-Elemente-Lehre, mit Körper- und Wahrnehmungsübungen und dem was wir in der Natur finden.\r\n\r\nSa 23.03.24 | Holz | Frühling | Aufrichtige Ausrichtung\r\nSa 15.06.24 | Feuer | Sommer | Blühende Begeisterung\r\nSa 24.08.24 | Erde | Spätsommer | Kartographie der Dankbarkeit\r\nSa 19.10.24 | Metall | Herbst | Mein Wertschätzungsraum\r\nSa 30.11.24 | Wasser | Winter | Bewegte Stille\r\n\r\nUm alle 5 Elemente in den Jahreszeiten ganzheitlich zu erfahren, empfehlen wir die Teilnahme des gesammten Zyklus.', 'course-elemente-24_200x200.png', 'course-elemente-24_600x800.png', 0000000003, 0000000005, 0000000011, 'Bougerie, Burgernziel', '9:30h - 16.30h', '24-Flyer-5-Elemente.pdf'),
(0000000053, 0, 'Etwas Farbe im grauen Januar', 'über Pflanzentinten', 'Auf der Suche nach versteckten Farben in der Pflanzenwelt, streifen wir in einer stündigen Führung durch den Botanischen Garten Bern. Eine kleine Einführung in die Vielfalt der pflanzenbasierten Tinten. Organisiert wird diese Führung vom Verein [Aquilegia](!https://www.aquilegia.ch/)', 'course-pflanzentinte_400x400.png', 'course-pflanzentinte_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', '14:00h - 15:00h', NULL),
(0000000054, 0, 'Hexenbier', 'von magischen und rituellen Bierkräutern', 'An dieser stündigen Führung durch den Botanischen Garten Bern dreht sich alles um Hexenpflanzen - um das geheimnissvolle Gebräu im Hexenkessel. Denn bei genauerem hinschauen haben die Wurzeln des Bierbrauens viel mit unserer Vergangenheit der Hexen gemein.', 'datura-inoxa_200x200.png', 'datura-inoxa_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18:00h-19:00h | So 14:00h-15:00h', NULL),
(0000000055, 0, 'Wildkräuterküche', 'an der Emme mit Pronatura', 'Gemeinsam erkunden wir die Pflanzenwelt, welche der Emme entlang wächst. Wir bestimmen essbare Wildkräuter und vergleichen die Merkmale, um Verwechslungen zu vermeiden. Nach dem Ernten verarbeiten wir die Kräuter zu einem saisonalen Zvieri mit Wildkräutertee.', 'course-7_200x200.png', 'course-7_600x800.png', 0000000003, 0000000005, 0000000015, 'Oberburg an der Emme', '13:30h - 16:30h', NULL),
(0000000056, 0, 'Wildkräuterspaziergang', 'in Wichtrach mit dem Frauenverein', 'An diesem Wildkräuter-Spaziergang entdecken wir die Pflanzen, welche urban und naturnah - vor der Haustür - wachsen. Gemeinsam entdecken wir die vielfältige Umgebung mit ihren oft unscheinbaren und dennnoch wohlbekannten Gewächsen. Der Betrachtungswinkel auf die Pflanzen ist ganzheitlich - von Botanik, dessen Wirkungen über Kurioses bis zu Mythologischem. Zudem eignet sich im Frühling auch immer einen Extrablick in die Wildkräuterküche. Anschliessend geniessen wir gemeinsam einen Tee für welchen wir die Kräuter und Pflanzen vorher sammeln.\r\n\r\n\r\n', 'course-7_200x200.png', 'course-7_600x800.png', 0000000002, 0000000005, 0000000015, 'Wichtrach', '13:30h - 16:30h', NULL),
(0000000057, 0, 'Erika Amber', 'braue dein wildes Blumenbier', 'Wir brauen zusammen ein Ale mit rosa-violetten Erikablüten. Auf den Britischen Inseln fand man Überreste des wohl ältesten europäischen Bieres – und es wurde statt mit Hopfen mit Erika gebraut. Inspiriert von diesem Fund werden wir ein etwas moderne­res Bier mit Erika brauen. Nebst dem Handwerk des Bierbrauens erfahren wir altes und neues; parktisches und kurioses über die Braukunst und dessen Zutaten. Lass dich entführen auf eine blumig-harzige Aromareise in die windigen Highlands zur Besenheide.\r\n\r\nVorfreude gärt\r\nEtwa ein Monat nach dem Brautag kann das trinkfertige, in Flaschen abgefüllte Bier abgeholt werden.', 'course-erika-ale_200x200.png', 'course-erika-ale_600x800.png', 0000000005, 0000000005, 0000000011, 'Wabern', '10:00h - ca. 16:00h', NULL),
(0000000058, 0, 'Wildkräuterspaziergang', 'botanische Entdeckungstour durch Bremgarten', 'Auf einem Spaziergang – geleitet von Giovina Nicolai vom Pflanzenlabor.ch – entdecken wir die Pflanzen, welche urban und naturnah vor unseren Haustüren wachsen. Gemeinsam entdecken wir die vielfältige Umgebung im Wechsel der Jahreszeit und wir erhalten dabei einen ganzheitlichen Zugang zur Pflanzenwelt. Im Wonnemonat Mai liegt der Schwerpunkt auf essbaren Wildkräutern.\r\n\r\nEs wird eine Artenliste  mit den angetroffenen Pflanzen erstellt, welche den TeilnehmerInnen nach dem Spaziergang in digitaler Form zugesendet wird.', 'course-7_200x200.png', 'course-7_600x800.png', 0000000002, 0000000005, 0000000015, 'Vormittags-Führung: 10-12h', 'Nachmittags-Führung: 13:30-15:30h', NULL),
(0000000059, 0, 'Brauzirkel', 'gemeinsam Kräuterbiere brauen', 'Hast du Lust, wiedermal zu brauen? ...ein Kräuterbier zu testen? ...mit Bier- und Pflanzeninteressierten auszutauschen? ...einen gemütlichen Brautag draussen zu verbringen?\r\n\r\nIn gemütlich-geselliger Runde brauen wir gemeinsam ein Kräuterbier - experimentieren Inklusive. Dieser Tag ist nicht als Kurs strukturiert, sondern als lockerer Tag, welchen wir gemeinsam gestalten und zusammen brauen, inkl. Auf- und Abbau der Brauanlage. Der Brautag findet wie gewohnt unter freiem Himmel statt, soweit dies das Wetter zulässt.\r\n\r\nFür ein einfaches Z\'mittag wird gesorgt - direkt vom Bio-Hof von Anna.\r\nWer will kann gerne ein-zwei Flaschen Bier mitbringen, um gemeinsam zu degustieren.\r\n\r\nBrauwissen wird für den Zirkel vorausgesetzt. Um zu erlernen, wie ein Bier gebraut wird, eignen sich alle anderen Braukurse vom Pfanzenlabor.', 'course-humulus-helles_200x200.png', 'course-humulus-helles_600x800.png', 0000000005, 0000000005, 0000000015, 'Toffen', '10:00h - ca. 16:00h', NULL),
(0000000060, 1, 'Rauhnächte', 'Räucherkugeln herstellen', 'Die Dunkle Zeit des Jahres, ganz besonders die Rauhnächte ist eine geeignete Zeit, zu Reflektieren, Altes abzuschliessen und Wege einzuschlagen um Neues zu starten - dies gilt für Projekte sowie für Gewohnheiten.\r\n\r\nIn dieser vierstündigen Werkstatt werden wir je 12 individuelle Räucherkugeln erstellen, mit jeweils einer handgeschreibenen Botschaft im Herzen der Kugel. Somit kann an jeder Rauhnacht eine Kugel verräuchert werden um bewusst auf das darin enthaltene Thema einzugehen.\r\n\r\nDie Werkstatt beinhaltet:\r\n- Einführung ins Räuchern\r\n- Übersicht über die Rauhnacht Tradition\r\n- Vorstellung typischer einheimischer Räucherpflanzen\r\n- Unterstützung zur Findung der 12 Botschaften\r\n- Erstellen der 12 Räucherkugeln', 'course-rauhnacht_200x200.png', 'course-rauhnacht_600x800.png', 0000000003, 0000000005, 0000000018, 'Wabräu, Wabern bei Bern', '14:00h - 18:00h', NULL),
(0000000061, 0, 'Rauhnacht Spaziergang', 'und welche Pflanzen uns dabei begleiten können', 'In einer stündigen Führung durch den Botanischen Garten Bern haben wir einen Raum um Pflanzenbegleiter der Rauhnächte kennen zu lernen und zu erfahren.\r\n\r\nDie Rauhnächte - die Zeit zwischen den Jahren- sind eine alte europäische Tradition um Altes abzuschliessen und Neues zu starten - dies gilt für Projekte sowie für Gewohnheiten.', 'course-rauhnacht_200x200.png', 'course-rauhnacht_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18h | So 14h', NULL),
(0000000062, 0, 'Sinneswahrnehmungen von Pflanzen', 'sinnieren über Wahrnehmungen', 'Wie sind wir Menschen historisch geprägt, wenn es um unsere Wahrnehmung über Pflanzen geht?. Was sagt die heutige Wissenschaft dazu?\nIn einer stündigen Führung durch den Botanischen Garten Bern haben wir einen Raum um über die verschiedenen Wahrnehmungen von Pflanzen (und Menschen) zu sinnieren. Vorgestellt anhand einiger Pflanzenbeispielen.', 'course-taraxacum-juni_200x200.png', 'course-taraxacum-marz_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18h | So 14h', NULL);
INSERT INTO `classes` (`id`, `enabled`, `name`, `subtitle`, `description`, `img`, `img_desc`, `id_type`, `id_section_dates`, `id_section_preview`, `place`, `time`, `pdf`) VALUES
(0000000063, 0, 'Fest der 5 Elemente', 'Zelebrieren der 5 Energien', 'Ein Erlebnisabend, der die 5 Elemente feiert und die Sinne zelebriert.\r\n\r\nHolz, Feuer, Erde, Metall und Wasser stehen im Mittelpunkt: sie werden durch Bewegung, Musik, Körperwahrnehmung und Gedankenanstösse untermalt und einzeln hervorgehoben durch eine exklusive Köstlichkeit aus der kaiserlichen Tradition der japanischen Teezeremonie (durch einen [Kaiseki](!https://de.wikipedia.org/wiki/Kaiseki) Koch zubereitet).\r\n\r\nGemeinsam bewegen wir uns in einen neuen Jahreszyklus hinein und finden sinnstiftende Inspirationen für die kommenden Jahreszeiten. ', 'course_5elemente_200x200.png', 'hov_course_5elemente_200x200.png', 0000000003, 0000000005, 0000000018, 'Atelier 14B, Falkenplatz', '18:00h - ca. 21.30h', ''),
(0000000064, 1, 'Wildkräuter Tavolata', 'Frühlingsgenuss mit wildem Grün', 'Ein gemeinsames geniessen der grünen Vielfalt! Jeweils am letzten April Wochenende bieten wir, Anna und Giovina, eine Wildkräuter Tavolata an.\r\n\r\nLass dich verwöhnen von einem frühlingshaften 4-Gang-Menü im alten \"Ofehüsli\" des Biohofs Gutenbrünnen - alles zum Thema Wildkräuter. Vor dem Essen spazieren wir über Matte und Waldrand der biodiversen Landwirtschaft. Wir erhalten Einblicke, was zu beachten ist beim Sammeln von Wildkräutern und werden den Pflanzen begegnen, die wir kurz darauf auf unseren Tellern wiederfinden.\r\n\r\nDas Wildkräuter 4-Gang-Menü wird von Anna zubereitet, mit Lebensmittel aus hofeigener Produktion, und kann mit oder ohne Fleisch genossen werden.\r\n\r\nAuch die Getränke sind wildkräuterhaft Aromatisiert, ob Kräuterwasser, -bier oder -tee.', 'course-tavolata_200x200.png', 'course-tavolata_600x800.png', 0000000004, 0000000005, 0000000011, 'Biohof Gutenbrünnen, Toffen', 'Sa ab 16:00h | So ab 10:00h', ''),
(0000000065, 0, 'Kreislauf der 5 Elemente', 'ein Erlebnistag', 'An diesem Tag begleiten wir dich auf einem Spaziergang zu allen 4 Himmelsrichtungen. Wir üben Qi Gong im Freien, erfahren Pflanzenzusammenhänge zu den 5 Elementen, tauschen uns aus und geniessen die Natur in der städtischen Umgebung. Somit finden wir einen Weg zu unserem Zentrum. Aus den Himmelsrichtungen und der eigenen Mitte ergeben sich die 5 Elemente, über deren Zusammenhänge wir im Verlauf des Tages mehr erfahren. \r\n\r\nWir verbringen ca. 2 Stunden im Gehen mit angepassten Pausen. Einen Snack und Tee wird es für eine erste Pause geben.', 'course-elemente-24_200x200.png', 'course-elemente-24_600x800.png', 0000000001, 0000000005, 0000000015, 'Bern', '9:30h - ca 16.30h', ''),
(0000000066, 0, 'Eldermothers Blood', 'ein Holunderbeeren Bier', 'An diesem Brautag kreieren wir gemeinsam ein herbstliches Bier mit Holunderbeeren - Eldermothers Blood.\r\n\r\nDieser Brautag beinhaltet nebst den brautechnischen Details auch die Symbolkraft des Holunders - das Blut der Holunderhexe.\r\n\r\nTypisch für die Pflanzenlabor Brautage, findet er draussen statt, natürlich in der nähe vom Holunder. Bei kaltem und regnerischem Wetter haben wir ein gemütliches Plätzchen im trockenen. Denn diesmal findet er in Toffen statt, auf dem Bio Bauernhof Gutenbrünnen. Die Bäuerin Anna Mosimann wird uns mit einem Zmittag und einem Zvieri verwöhnen.\r\n\r\nVorfreude gärt:\r\nEin Monat nach dem Brautag wird das Bier trinkfertig abholbereit sein - auf dem Bio Bauernhof Gutenbrünnen in Toffen oder in der Wabräu Brauerei in Wabern.\r\n\r\nLass dich entführen in einen vielfältigen Tag rund um das Hexengebräu \"Eldermothers Blood\"', 'course-eldermothers-blood_200x200.png', 'course-eldermothers-blood_600x800.png', 0000000005, 0000000005, 0000000015, 'Biohof Gutenbrünnen, Toffen', '10:00h - ca. 16:00h', NULL),
(0000000067, 0, 'Winterlich Erhellendes', 'von Rauhnächten bis Weihnachten', 'In einer stündigen Führung durch den Botanischen Garten Bern begegnen wir unseren Winterpflanzen. Pflanzen, welche zur Weihnachtszeit eine wichtige Rolle spielen und Pflanzen, welche während den Rauhnächten Verwendung finden.\r\nEgal wer was in dieser Saison feiert, die Pflanzen helfen uns, uns auf unsere Basis zu besinnen.\r\n\r\n', 'course-rauhnacht_200x200.png', 'course-rauhnacht_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18h | So 14h', NULL),
(0000000068, 0, 'Pflanzenbegegnungen', 'Jahreszyklus 2025', 'In diesem Jahreszyklus erfahren wir verschiedenste Möglichkeiten, Pflanzen zu begegnen. Jede Person hat eine ganz persönliche Art und Angehensweise mit anderen Lebewesen in Kontakt und in Beziehung zu treten – und diese Vielfalt wollen wir entdecken, beobachten, ausprobieren – aus den unterschiedlichsten Perspektiven.\r\n\r\nDas Ziel dieses Zykluses ist, seinen persönlichen Weg und Zugang zu der Vielfalt der Pflanzenwelt zu finden und dabei genügend Praxis aufzubauen, um dies für sich weiterführen zu können.\r\n\r\n**Erste Einblicke ins Programm 2025**\r\n6 Tageskurse, ein online Abendkurs und Inputs für individuelle Übungen zwischen den Kursen.\r\n\r\n*Sa 18. Januar | 10h-16h* | **Erstes eintauchen in die Pflanzenwelt**\r\n\r\n*So 30. März | 10-16h* | **Sensorische Pflanzenentdeckungen** | mit Gastauftritt von [Lukas Niederhauser](!https://www.forumsensorik.ch), Sensoriker und Kaffeeröster\r\n\r\n*Mo 5. Mai (Verschiebungsdaten möglich) | Online Abendkurs | 18-20h* | **Kommunikation mit Pflanzen** | geleitet durch [Beatrice Bissig-Odermatt](!https://www.hof-neufallenbach.ch), Bäuerin und Pflanzenflüsterin\r\n\r\n*Sa 31. Mai | 10-16h* | **Die Kraft der Einmaligkeit** | mit Gastauftritt von [Amanda Blair](!https://www.limitededitionofone.co.uk), Transformational Coach und Einmaligkeitsförderin\r\n		\r\n*Sa 21. Juni | 10-16h* | **Pflanzen begegnen durch visuelles Gestalten** | mit Gastauftritt von [Franziska Fahrni-Habegger](!https://fahrniska.ch), Grafikerin und Illustratorin\r\n		\r\n*Sa 6. September | 10-16h* | **Faszination Botanik** | mit Gastauftritt von Claudia Huber, Biologin und Naturpädagogin\r\n\r\n*Sa 8. November | 14-20h* | **Geschichten tragen weiter** | mit Gastauftritt von [Claudia Büttler](!https://www.erzaehlmirmehr.ch), Märchenerzählerin und Musikantin\r\n', 'course-spaz-sommer_400x400.png', 'course-spaz-sommer_600x800.png', 0000000001, 0000000005, 0000000015, 'Umgebung Stadt Bern', 'mit ÖV erreichbar', NULL),
(0000000069, 0, 'Hexengewächse', 'von Liebesmittel bis Mörderpflanzen', 'An diesem Pflanzenspaziergang im Botanischen Garten Bern dreht sich alles um Hexenpflanzen - um die Zutaten der berüchtigten Zaubertränke von Liebesmittel bis zu tödlichen Giften.', 'datura-inoxa_200x200.png', 'datura-inoxa_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18h-19h | So 14h-15h', NULL),
(0000000070, 0, 'Pflanzenspaziergang', 'abendliche Entdeckungstour', 'An diesem abendlichen Spaziergang begegnen wir den Maipflanzen im Bremgartenwald. Mit offenen Sinnen lernen wir die Pflanzen (besser) kennen, ob botanisch, heilpflanzenkundlich, kulinarisch oder mythologisch. Ziel ist, einen kleinen Einblick in die unendlichen Möglichkeiten zu erhalten, wie Pflanzen wahrgenommen werden können.\r\n\r\nAm Spaziergang erstellen wir eine visuelle Artenliste. Zeichnungskenntnisse sind dafür nicht notwendig, nach dem Spaziergang wird die Seite noch aufbereitet, bevor sie an die Kursteilnehmer*innen zugesendet wird.', 'course-spaz-sommer_400x400.png', 'course-spaz-sommer_600x800.png', 0000000002, 0000000005, 0000000015, 'Bremgartenwald', '18:00h - ca. 20:00h', NULL),
(0000000071, 0, 'Nature Journaling', 'Pflanzenbegegnungen', 'Mit Stift und Papier ausgerüstet begeben wir uns nach draussen und erkunden unsere Pflanzenwelt. Mit Aufmerksamkeit, Raum und Zeit lassen wir Begegnungen mit Pflanzen entstehen, die wir in Bild und Text aufs Papier bringen.\r\n\r\nDabei geht es ums Beobachten und nicht um Zeichnungstechniken - ums visualisieren und nicht um hübsche Endresultate.\r\n\r\nUmrahmt wird ein solches Treffen mit Inputs, Inspirationen und Übungen um Pflanzenbegegnungen von diversen Blickwinkeln wahrzunehmen. ', 'course-pflanzentinte_400x400.png', 'course-pflanzentinte_600x800.png', 0000000003, 0000000005, 0000000015, 'Oberburg und Burgdorf', '9:30h - 12:00h', NULL),
(0000000072, 0, 'Bierpflanzen und Schnapsideen', 'Pflanzen, Alkohol und deren Liaison', 'An dieser stündigen Führung durch den Botanischen Garten Bern dreht sich alles um Gewächse die dem Bier oder ausgewählten Spirituosen ihren jeweiligen Geist verleihen.\r\nWir werden über den Bierglasrand schauen, wo Pflanzen jenseits von Hopfen und Malz gedeihen und ihren Einsatz fanden oder immer noch finden.\r\nProst - auf die Vielfalt!', 'course-jahreskreisfeste_200x200.png', 'course-jahreskreisfeste_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18:00h-19:00h | So 14:00h-15:00h', NULL),
(0000000073, 0, 'Die dunkle Jahreshälfte', 'in die Atmosphäre der Rauhnächte eintauchen', 'Der Herbst ist gekommen und die Tage sind spürbar kürzer. Es ist Zeit, alles ruhiger anzugehen und den Blick langsam nach innen zu richten - was im Alltag jedoch nicht immer einfach ist.\r\n\r\nAn diesem Kurs werden wir gemeinsam in die Stimmung der dunklen Jahreshälfte eintauchen, begleitet von der Märchenerzählerin Claudia Büttler. Wir befassen uns mit einzelnen Räucherpflanzen, durch Wissen, Geruch und Wahrnehmung. Zudem werden wir uns in die Rauhnächte einstimmen - als alte Tradition und wie diese angepasst in den heutigen Alltag integriert werden können.', 'course-rauhnacht_200x200.png', 'course-rauhnacht_600x800.png', 0000000003, 0000000005, 0000000018, 'Bern', '15:00h - 18:00h', NULL),
(0000000074, 1, 'Märchenfeuer und Pflanzenkraft', 'ein gemeinsamer Feuerabend', 'Zusammen ums Feuer sitzen\r\nTee geniessen\r\nGeschichten lauschen\r\nund Pflanzenwissen erfahren\r\nin der Natur - mit den Jahreszeiten.\r\n\r\nDiese gemütlichen Abende sind gespickt mit humorvollen Geschichten und spannenden Pflanzenwahrnehmungen. Ein Genuss, im Einfachen zusammenzusitzen.\r\n\r\n', 'course-lager_200x200.png', 'Maerli-u-Pflanzen_600x800.png', 0000000004, 0000000005, 0000000011, 'Umgebung Burgdorf', '19h-21h | im Juni 20:30h-22:30h', NULL),
(0000000075, 1, 'Nature Journaling', 'gemeinsam malen', 'Nature Journaling - das beobachten und auf Papier bringen der Umgebung - eröffnet die Möglichkeit, der Natur neu zu begegnen. Dabei geht es in erster Linie um die Auseinandersetzung und nur entfernt um zeichnerische Techniken.\r\n\r\nDieses Angebot ist für alle, die sich fürs Nature Journaling gerne mit anderen Menschen treffen und eine Regelmässigkeit geniessen.\r\n\r\nWir treffen uns, schwärmen aus zum beobachten und skizzieren, und kommen am Ende wieder zusammen um gegenseitig auszutauschen. Diese Nature Journaling Treffen finden alle drei Wochen statt.\r\n\r\nPsst: Und hier noch ein kleiner Zukunfts-Ausblick: Wenn sich genügend Interessierte finden, werde ich jeweils eine Stunde vor dem Nature Journaling Treffen einen Kursblock einbauen, mit verschiedenen Inputs zur Pflanzenwelt und Tintenherstellung.', 'course-nature-journaling_200x200.png', 'course-nature-journaling_600x800.png', 0000000004, 0000000005, 0000000015, 'Umgebung Oberburg und Burgdorf', '10:10h - 11:30h', NULL),
(0000000076, 0, 'Die Nuancen des Sommers', 'von Naturfarben bis Pflanzenchemie', 'Auf der Suche nach versteckten Farben in der Pflanzenwelt, streifen wir in einer stündigen Führung durch den Botanischen Garten Bern. Eine kleine Einführung in die Vielfalt der pflanzenbasierten Tinten. Organisiert wird diese Führung vom Verein [Aquilegia](!https://www.aquilegia.ch/)', 'course-pflanzentinte_400x400.png', 'course-pflanzentinte_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18h-19h | So 14h - 15h', NULL),
(0000000077, 1, 'Klang und Flora', 'eine musikalische Pflanzenbegegnung', 'Neugierde, Auseinandersetzung und Zeit mit anderen lässt Beziehung entstehen. Mit dem Projekt Klang und Flora öffnen wir den Raum, um durch Höhren, Schauen und Neugierde, neue Wege zu gehen, um sich auf Pflanzen einzulassen. Giovina vom Pflanzenlabor führt dabei in die Natur und zu den Pflanzen hin und das Trio Meklin-Nicolai-Weiss öffnet mit Klängen den Raum für neue Verbindungen. Jedes mal einzigartig, persönlich, individuell.', 'klang-flora_200x200.png', 'course-klang-flora_600x800.png', 0000000002, 0000000005, 0000000015, 'Naturzentrum Eichholz Pro Natura', '9:00h - 10:00h | 11:00h - 12:00h', NULL),
(0000000078, 0, 'Spätsommer Tavolata', 'mit Wildkräuter Spaziergang', 'Lass dich verwöhnen von einem sommerlichen 4-Gang-Menü im alten \"Ofehüsli\" des Biohofs Gutenbrünnen. Vor dem Essen spazieren wir über Matte und Waldrand der biodiversen Landwirtschaft und erhalten Einblicke in die saisonale Pflanzenwelt. Das eine oder andere Wildkraut wird sich auch im Menü wiederfinden.\r\n\r\nDas sommerliche 4-Gang-Menü wird von Anna zubereitet, mit Lebensmitteln aus hofeigener Produktion, und kann mit oder ohne Fleisch genossen werden.', 'course-tavolata_200x200.png', 'course-tavolata_600x800.png', 0000000004, 0000000005, 0000000015, 'Biohof Gutenbrünnen, Toffen', '10:00h bis ca 14:00h', ''),
(0000000079, 0, 'Zurück zu den Wurzeln', 'Herbstzeit von Pflanze und Mensch', 'Fruchtreife, Laubblätter und Wurzelkraft.\r\nDen Herbst in seinen vielfältigen Facetten betrachten, anhand verschiedener Pflanzen die im Botanischen Garten Bern gedeihen. Dabei geht es genauso um die Funkionen für die Pflanzen, wie auch um den Bezug mit uns Menschen. Ein seit ewigs bestehendes Zusammenspiel von Pflanzen und Menschen - Willkommen Herbst. ', 'course-winter_200x200.png', 'course-zurueck-zu-den-wurzeln_600x800.png', 0000000002, 0000000005, 0000000015, 'Botanischer Garten Bern', 'Mi 18-19h | So 14-15h', NULL),
(0000000080, 0, 'Märchen und Pflanzenkraft', 'Kunsthalle Kids', 'Inspiriert von den Ausstellungen in der Kunsthalle Bern tauchen wir in verschiedene Geschichten ein. Zusammen mit Claudia Büttler (Erzählerin) und Giovina Nicolai (Pflanzenlaborantin) lauschen wir den Märchen und zeichnen Pflanzenwelten.\r\n\r\nBild: Pflanzenwelten (mit Naturfarben aus Tagetes, Schwarzdorn und Baumnuss, und Buntstiften)', 'course-pflanzentinte_400x400.png', 'Kunsthalle_600x800.png', 0000000003, 0000000005, 0000000015, 'Kunsthalle Bern', '14:30h - 16:30h', NULL),
(0000000081, 1, 'Tintenherstellung und Nature Journaling', 'im Schlosspark Bümpliz', 'Gemeinsam ernten und kreieren wir eine saisonale Pflanzentinte und erfahren währenddessen die Basics der Tintenherstellung aus Pflanzen.\r\n\r\nMit der Tinte ausgerüstet widmen wir uns dem Nature Journaling - dem beobachten und auf Papier bringen der Umgebung. Dabei geht es in erster Linie um die Auseinandersetzung und nur entfernt um zeichnerische Techniken.', 'course-nature-journaling_200x200.png', 'course-nature-journaling_600x800.png', 0000000004, 0000000005, 0000000015, 'Schlosspark Bümpliz', '14h - 16:30h', NULL),
(0000000082, 0, 'Wildpflanzenspaziergang', 'durch Quartier und Schlosspark Bümpliz', 'Ob im Park oder in der Quartierstrasse, überall sind wilde Gewächse zu finden. An diesem zweistündigen Pflanzenspaziergang legen wir unser Augenmerk auf die Unverwüstlichen, die zu unseren Füssen wachsen und unser Leben bunter erscheinen lassen.', 'course-6_200x200.png', 'course-6_600x800.png', 0000000002, 0000000005, 0000000015, 'Schlosspark Bümpliz', '14h - 16h', NULL);

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
  `places_booked` smallint(6) NOT NULL DEFAULT '0' COMMENT 'slots that are already booked',
  `is_open` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'if set to 1 the dates are not clickable and the badge contains the text "ohne Anmeldung"',
  `external_url` varchar(100) DEFAULT NULL COMMENT 'A link to an external enrollment page. If set, cklicking on a date will link to this URL instead of the internal enrollemnt page'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='contains all dates of classes. Each date creates an instance of the linked class.';

--
-- Dumping data for table `class_dates`
--

INSERT INTO `class_dates` (`id`, `id_class`, `date`, `paypal_key`, `places_max`, `places_booked`, `is_open`, `external_url`) VALUES
(0000000001, 0000000001, '2018-03-25', 'XK6GASLQVMTXJ', 8, 4, 0, NULL),
(0000000002, 0000000001, '2018-03-31', 'GDUVY3AYW4YMQ', 8, 5, 0, NULL),
(0000000003, 0000000001, '2018-04-07', '6RXNK4TJQKRR8', 8, 2, 0, NULL),
(0000000004, 0000000002, '2018-05-06', 'NEF4L65HURBYE', 8, 5, 0, NULL),
(0000000005, 0000000002, '2018-05-12', 'VC55W5XG9WQKE', 8, 8, 0, NULL),
(0000000006, 0000000002, '2018-05-19', 'XS3T9DZ9EX38E', 8, 1, 0, NULL),
(0000000007, 0000000003, '2018-06-03', 'P4MM47HGPRLXW', 8, 8, 0, NULL),
(0000000008, 0000000003, '2018-06-09', '3Y9SKQTEX68SY', 8, 8, 0, NULL),
(0000000009, 0000000003, '2018-06-16', '394H5JR8FGWBJ', 8, 4, 0, NULL),
(0000000010, 0000000004, '2018-07-14', '6B8DL6MZA8HEC', 8, 8, 0, NULL),
(0000000011, 0000000004, '2018-07-21', 'TLWUQ8EYA7UPG', 8, 8, 0, NULL),
(0000000012, 0000000004, '2018-07-29', '3PGN268BP58LG', 8, 5, 0, NULL),
(0000000013, 0000000005, '2018-07-19', 'G9CUNG5NSAGM2', 8, 4, 0, NULL),
(0000000014, 0000000005, '2018-08-02', 'DX5UU75T9EH6L', 8, 4, 0, NULL),
(0000000015, 0000000005, '2018-08-16', 'LUKNL6U6YVLNU', 8, 2, 0, NULL),
(0000000016, 0000000005, '2018-08-30', 'CNPM777XFAEY4', 8, 3, 0, NULL),
(0000000017, 0000000005, '2018-09-13', 'EUDCDKE7NRLFQ', 8, 3, 0, NULL),
(0000000018, 0000000006, '2018-09-27', 'BFPT3TWLACYES', 8, 4, 0, NULL),
(0000000019, 0000000006, '2018-10-12', 'ZLMFD3YLQJ5YN', 8, 8, 0, NULL),
(0000000020, 0000000007, '2018-09-29', 'X2PXRHWYS7QLC', 8, 8, 0, NULL),
(0000000021, 0000000007, '2019-10-12', 'DFSQSMBUWDKAA', 0, 0, 0, NULL),
(0000000022, 0000000003, '2019-06-23', 'GSJBE3ZL5AYRQ', 8, 2, 0, NULL),
(0000000023, 0000000005, '2019-07-04', 'JJTJXPD9PK3BE', 8, 3, 0, NULL),
(0000000024, 0000000005, '2019-09-11', 'JJTJXPD9PK3BE', 10, 6, 0, NULL),
(0000000025, 0000000005, '2019-08-29', 'JJTJXPD9PK3BE', 8, 8, 0, NULL),
(0000000026, 0000000005, '2019-08-14', 'JJTJXPD9PK3BE', 8, 3, 0, NULL),
(0000000028, 0000000005, '2019-07-17', 'JJTJXPD9PK3BE', 8, 2, 0, NULL),
(0000000029, 0000000002, '2019-05-18', 'GSJBE3ZL5AYRQ', 0, 0, 0, NULL),
(0000000030, 0000000004, '2019-07-28', 'GSJBE3ZL5AYRQ', 0, 0, 0, NULL),
(0000000031, 0000000010, '2019-04-13', 'DFSQSMBUWDKAA', 8, 6, 0, NULL),
(0000000032, 0000000009, '2019-03-27', 'JJTJXPD9PK3BE', 8, 4, 0, NULL),
(0000000033, 0000000009, '2019-04-11', 'JJTJXPD9PK3BE', 8, 3, 0, NULL),
(0000000034, 0000000009, '2019-04-24', 'JJTJXPD9PK3BE', 8, 1, 0, NULL),
(0000000035, 0000000009, '2019-05-09', 'JJTJXPD9PK3BE', 8, 8, 0, NULL),
(0000000036, 0000000009, '2019-05-22', 'JJTJXPD9PK3BE', 10, 5, 0, NULL),
(0000000037, 0000000009, '2019-06-06', 'JJTJXPD9PK3BE', 10, 5, 0, NULL),
(0000000038, 0000000009, '2019-06-19', 'JJTJXPD9PK3BE', 10, 2, 0, NULL),
(0000000039, 0000000011, '2019-03-03', 'GSJBE3ZL5AYRQ', 8, 4, 0, NULL),
(0000000040, 0000000012, '2019-05-04', 'DFSQSMBUWDKAA', 8, 6, 0, NULL),
(0000000041, 0000000013, '2019-08-31', 'DFSQSMBUWDKAA', 0, 0, 0, NULL),
(0000000042, 0000000014, '2019-08-10', 'DFSQSMBUWDKAA', 8, 6, 0, NULL),
(0000000043, 0000000015, '2019-09-08', 'DFSQSMBUWDKAA', 8, 8, 0, NULL),
(0000000044, 0000000016, '2019-09-18', '', 20, 0, 1, NULL),
(0000000045, 0000000016, '2019-09-22', '', 20, 0, 1, NULL),
(0000000046, 0000000017, '2019-12-11', '', 20, 0, 1, NULL),
(0000000047, 0000000017, '2019-12-15', '', 20, 0, 1, NULL),
(0000000049, 0000000018, '2019-09-13', '', 20, 0, 1, NULL),
(0000000050, 0000000006, '2019-09-26', 'JJTJXPD9PK3BE', 10, 4, 0, NULL),
(0000000051, 0000000006, '2019-10-09', 'JJTJXPD9PK3BE', 10, 4, 0, NULL),
(0000000052, 0000000006, '2019-10-24', 'JJTJXPD9PK3BE', 10, 1, 0, NULL),
(0000000053, 0000000020, '2019-11-06', 'JJTJXPD9PK3BE', 10, 0, 0, NULL),
(0000000054, 0000000020, '2019-11-21', 'JJTJXPD9PK3BE', 10, 0, 0, NULL),
(0000000055, 0000000020, '2019-12-04', 'JJTJXPD9PK3BE', 10, 2, 0, NULL),
(0000000056, 0000000020, '2019-12-19', 'JJTJXPD9PK3BE', 1, 1, 0, NULL),
(0000000057, 0000000019, '2019-11-16', 'GSJBE3ZL5AYRQ', 1, 1, 0, NULL),
(0000000058, 0000000021, '2019-12-20', 'DFSQSMBUWDKAA', 8, 8, 0, NULL),
(0000000059, 0000000021, '2020-12-20', 'DFSQSMBUWDKAA', 9, 9, 0, NULL),
(0000000060, 0000000021, '2020-12-19', 'DFSQSMBUWDKAA', 8, 8, 0, NULL),
(0000000061, 0000000022, '2020-04-05', 'CW5EFAMB8QGUQ', 8, 7, 0, NULL),
(0000000062, 0000000026, '2020-05-02', 'DFSQSMBUWDKAA', 8, 0, 0, NULL),
(0000000063, 0000000023, '2020-06-07', 'CW5EFAMB8QGUQ', 8, 5, 0, NULL),
(0000000064, 0000000024, '2020-08-02', 'CW5EFAMB8QGUQ', 8, 8, 0, NULL),
(0000000065, 0000000025, '2020-07-05', 'DFSQSMBUWDKAA', 8, 8, 0, NULL),
(0000000066, 0000000002, '2020-03-21', 'GSJBE3ZL5AYRQ', 8, 1, 0, NULL),
(0000000069, 0000000009, '2020-03-05', 'JJTJXPD9PK3BE', 10, 5, 0, NULL),
(0000000070, 0000000009, '2020-03-18', 'JJTJXPD9PK3BE', 10, 4, 0, NULL),
(0000000071, 0000000009, '2020-04-02', 'JJTJXPD9PK3BE', 10, 2, 0, NULL),
(0000000072, 0000000009, '2020-04-15', 'JJTJXPD9PK3BE', 10, 0, 0, NULL),
(0000000074, 0000000005, '2020-05-13', 'JJTJXPD9PK3BE', 10, 0, 0, NULL),
(0000000075, 0000000005, '2020-05-28', 'JJTJXPD9PK3BE', 10, 0, 0, NULL),
(0000000076, 0000000005, '2020-06-11', 'JJTJXPD9PK3BE', 10, 5, 0, NULL),
(0000000077, 0000000005, '2020-06-25', 'JJTJXPD9PK3BE', 10, 4, 0, NULL),
(0000000078, 0000000013, '2020-05-24', 'DFSQSMBUWDKAA', 8, 4, 0, NULL),
(0000000079, 0000000027, '2020-02-22', 'DFSQSMBUWDKAA', 8, 8, 0, NULL),
(0000000080, 0000000028, '2020-06-10', '', 20, 0, 1, NULL),
(0000000081, 0000000028, '2020-06-14', '', 20, 0, 1, NULL),
(0000000082, 0000000027, '2020-03-13', 'DFSQSMBUWDKAA', 8, 4, 0, NULL),
(0000000083, 0000000022, '2020-06-14', 'CW5EFAMB8QGUQ', 8, 8, 0, NULL),
(0000000084, 0000000029, '2021-02-13', 'DFSQSMBUWDKAA', 0, 0, 0, NULL),
(0000000086, 0000000029, '2021-02-14', 'DFSQSMBUWDKAA', 0, 0, 0, NULL),
(0000000087, 0000000013, '2021-04-11', 'DFSQSMBUWDKAA', 10, 10, 0, NULL),
(0000000088, 0000000026, '2021-05-02', 'GSJBE3ZL5AYRQ', 1, 1, 0, NULL),
(0000000089, 0000000025, '2021-08-21', 'DFSQSMBUWDKAA', 9, 9, 0, NULL),
(0000000090, 0000000007, '2021-10-09', 'DFSQSMBUWDKAA', 9, 9, 0, NULL),
(0000000091, 0000000007, '2021-10-10', 'DFSQSMBUWDKAA', 9, 9, 0, NULL),
(0000000092, 0000000030, '2021-09-26', 'CW5EFAMB8QGUQ', 9, 9, 0, NULL),
(0000000093, 0000000008, '2020-11-19', 'JJTJXPD9PK3BE', 9, 2, 0, NULL),
(0000000094, 0000000008, '2020-12-05', 'JJTJXPD9PK3BE', 9, 9, 0, NULL),
(0000000095, 0000000022, '2021-03-21', 'CW5EFAMB8QGUQ', 8, 5, 0, NULL),
(0000000096, 0000000024, '2021-07-25', 'CW5EFAMB8QGUQ', 9, 9, 0, NULL),
(0000000097, 0000000009, '2021-04-27', 'JJTJXPD9PK3BE', 11, 11, 0, NULL),
(0000000098, 0000000009, '2021-06-01', 'JJTJXPD9PK3BE', 10, 3, 0, NULL),
(0000000099, 0000000031, '2021-06-16', '', 14, 4, 0, NULL),
(0000000100, 0000000031, '2021-06-20', '', 14, 2, 0, NULL),
(0000000101, 0000000032, '2021-08-22', '', 18, 8, 0, NULL),
(0000000102, 0000000033, '2021-09-18', '', 9, 0, 0, 'https://www.foodzurich.com/de/events/12270/braue-dein-wildes-kr%C3%A4uterbier-das-erika-ale'),
(0000000103, 0000000033, '2021-09-19', '', 9, 0, 0, 'https://www.foodzurich.com/de/events/12270/braue-dein-wildes-kr%C3%A4uterbier-das-erika-ale'),
(0000000104, 0000000006, '2021-09-04', 'BFPT3TWLACYES', 0, 0, 0, NULL),
(0000000105, 0000000021, '2021-12-11', '', 9, 9, 0, NULL),
(0000000106, 0000000021, '2021-12-10', '', 9, 9, 0, NULL),
(0000000107, 0000000006, '2021-09-29', 'BFPT3TWLACYES', 12, 1, 0, NULL),
(0000000108, 0000000022, '2022-09-25', '', 0, 0, 0, NULL),
(0000000109, 0000000034, '2022-04-03', '', 11, 11, 0, NULL),
(0000000110, 0000000035, '2022-05-29', '', 11, 7, 0, NULL),
(0000000111, 0000000015, '2022-07-16', 'DFSQSMBUWDKAA', 0, 0, 0, NULL),
(0000000112, 0000000045, '2023-02-12', '', 10, 6, 0, NULL),
(0000000113, 0000000036, '2022-05-15', '', 10, 8, 0, NULL),
(0000000115, 0000000036, '2022-11-20', '', 10, 9, 0, NULL),
(0000000116, 0000000021, '2022-09-07', '', 0, 0, 0, NULL),
(0000000117, 0000000037, '2022-10-09', '', 10, 10, 0, NULL),
(0000000118, 0000000021, '2022-12-18', '', 11, 11, 0, NULL),
(0000000119, 0000000032, '2022-08-20', '', 0, 0, 0, NULL),
(0000000120, 0000000038, '2022-06-12', '', 18, 3, 0, NULL),
(0000000121, 0000000039, '2022-07-03', '', 1, 1, 0, NULL),
(0000000122, 0000000040, '2022-04-05', '', 12, 4, 0, NULL),
(0000000123, 0000000040, '2022-05-03', '', 12, 7, 0, NULL),
(0000000124, 0000000040, '2022-06-07', '', 12, 12, 0, NULL),
(0000000125, 0000000040, '2022-07-05', '', 12, 3, 0, NULL),
(0000000126, 0000000040, '2022-08-02', '', 12, 4, 0, NULL),
(0000000127, 0000000040, '2022-09-13', '', 12, 3, 0, NULL),
(0000000128, 0000000041, '2022-04-20', '', 20, 0, 1, NULL),
(0000000129, 0000000041, '2022-04-24', '', 20, 0, 1, NULL),
(0000000130, 0000000042, '2022-10-02', '', 12, 0, 0, NULL),
(0000000131, 0000000042, '2022-11-06', '', 0, 0, 0, NULL),
(0000000132, 0000000042, '2022-12-04', '', 12, 5, 0, NULL),
(0000000133, 0000000042, '2023-01-15', '', 1, 1, 0, NULL),
(0000000134, 0000000042, '2023-02-05', '', 2, 2, 0, NULL),
(0000000136, 0000000016, '2022-09-04', '', 12, 3, 0, NULL),
(0000000137, 0000000031, '2022-06-04', '', 12, 7, 0, NULL),
(0000000138, 0000000029, '2022-09-17', '', 2, 2, 0, NULL),
(0000000139, 0000000043, '2022-08-21', '', 11, 4, 0, NULL),
(0000000140, 0000000021, '2022-11-26', '', 10, 10, 0, 'https://www.pflanzenfreund.ch/rauhnaechte-workshop'),
(0000000141, 0000000021, '2022-12-03', '', 10, 10, 0, 'https://www.pflanzenfreund.ch/rauhnaechte-workshop'),
(0000000142, 0000000034, '2023-06-18', '', 11, 4, 0, NULL),
(0000000144, 0000000046, '2023-08-20', '', 0, 0, 0, NULL),
(0000000145, 0000000047, '2023-05-21', '', 0, 0, 0, NULL),
(0000000146, 0000000048, '2023-11-19', '', 10, 7, 0, NULL),
(0000000147, 0000000049, '2023-03-19', '', 10, 9, 0, NULL),
(0000000148, 0000000016, '2023-09-15', 'GDUVY3AYW4YMQ', 11, 0, 0, NULL),
(0000000149, 0000000050, '2023-01-17', 'XK6GASLQVMTXJ', 6, 6, 0, NULL),
(0000000150, 0000000051, '2023-03-14', '', 8, 4, 0, NULL),
(0000000151, 0000000025, '2023-08-13', 'XK6GASLQVMTXJ', 0, 0, 0, NULL),
(0000000152, 0000000052, '2023-03-17', '', 10, 0, 0, 'https://www.punkt-genau.ch/kontakt'),
(0000000153, 0000000040, '2023-03-07', '', 0, 0, 0, NULL),
(0000000154, 0000000040, '2023-04-04', '', 12, 1, 0, NULL),
(0000000155, 0000000040, '2023-05-02', '', 12, 1, 0, NULL),
(0000000156, 0000000040, '2023-06-06', '', 12, 11, 0, NULL),
(0000000157, 0000000053, '2023-01-29', '', 12, 0, 1, NULL),
(0000000158, 0000000054, '2023-07-05', '', 12, 0, 1, NULL),
(0000000159, 0000000054, '2023-07-09', '', 12, 0, 1, NULL),
(0000000160, 0000000055, '2023-04-22', 'GDUVY3AYW4YMQ', 9, 9, 0, NULL),
(0000000161, 0000000056, '2023-04-29', '', 14, 0, 0, 'https://www.frauenverein-wichtrach.ch/kurse/kurs-1/'),
(0000000162, 0000000057, '2024-09-15', '', 10, 8, 0, NULL),
(0000000163, 0000000049, '2024-04-28', '', 10, 10, 0, NULL),
(0000000164, 0000000058, '2023-05-13', '', 24, 24, 0, NULL),
(0000000165, 0000000058, '0000-00-00', '', 12, 0, 1, NULL),
(0000000166, 0000000059, '2023-05-21', '', 11, 2, 0, NULL),
(0000000167, 0000000059, '2023-09-03', '', 0, 0, 0, NULL),
(0000000168, 0000000027, '2023-09-01', 'XK6GASLQVMTXJ', 10, 0, 0, 'https://www.wichtrach.ch/de/veranstaltungen/732_aloe-vera---frischekosmetik'),
(0000000169, 0000000024, '2023-09-10', '', 10, 0, 0, 'https://www.wichtrach.ch/de/veranstaltungen/733_beifuss-amber-bierbraukurs'),
(0000000170, 0000000060, '2023-12-16', '', 9, 9, 0, NULL),
(0000000171, 0000000061, '2023-11-29', 'XK6GASLQVMTXJ', 14, 0, 1, NULL),
(0000000172, 0000000061, '2023-12-03', 'XK6GASLQVMTXJ', 14, 0, 1, NULL),
(0000000173, 0000000062, '2024-07-10', 'XK6GASLQVMTXJ', 14, 0, 1, NULL),
(0000000174, 0000000062, '2024-07-14', 'XK6GASLQVMTXJ', 14, 0, 1, NULL),
(0000000175, 0000000063, '2024-02-17', '', 15, 0, 0, 'https://www.punkt-genau.ch/kontakt'),
(0000000176, 0000000052, '2024-03-23', 'XK6GASLQVMTXJ', 14, 0, 0, 'https://www.punkt-genau.ch/kontakt'),
(0000000177, 0000000052, '2024-06-15', 'XK6GASLQVMTXJ', 14, 0, 0, 'https://www.punkt-genau.ch/kontakt'),
(0000000178, 0000000052, '2024-08-24', 'XK6GASLQVMTXJ', 14, 0, 0, 'https://www.punkt-genau.ch/kontakt'),
(0000000179, 0000000052, '2024-10-19', 'XK6GASLQVMTXJ', 14, 0, 0, 'https://www.punkt-genau.ch/kontakt'),
(0000000180, 0000000052, '2024-11-30', 'XK6GASLQVMTXJ', 14, 0, 0, 'https://www.punkt-genau.ch/kontakt'),
(0000000181, 0000000064, '2024-05-04', '', 12, 0, 0, 'https://biohof-gutenbruennen.ch/kontakt/'),
(0000000182, 0000000064, '2024-05-05', '', 12, 0, 0, 'https://biohof-gutenbruennen.ch/kontakt/'),
(0000000183, 0000000064, '2025-04-26', '', 10, 0, 0, 'https://biohof-gutenbruennen.ch/kontakt/'),
(0000000184, 0000000060, '2024-11-16', '', 9, 9, 0, NULL),
(0000000185, 0000000065, '2024-08-24', '', 12, 8, 0, NULL),
(0000000186, 0000000066, '2024-10-26', '', 9, 9, 0, NULL),
(0000000187, 0000000067, '2024-12-11', '', 0, 0, 1, NULL),
(0000000188, 0000000067, '2024-12-15', '', 0, 0, 1, NULL),
(0000000189, 0000000060, '2024-11-17', '', 9, 9, 0, NULL),
(0000000190, 0000000023, '2025-05-25', 'XK6GASLQVMTXJ', 8, 8, 0, NULL),
(0000000191, 0000000068, '2025-01-18', 'XK6GASLQVMTXJ', 8, 1, 0, NULL),
(0000000192, 0000000024, '2025-08-17', '', 8, 8, 0, NULL),
(0000000194, 0000000059, '2025-03-22', '', 9, 0, 0, NULL),
(0000000195, 0000000064, '2025-04-27', '', 10, 0, 0, 'https://biohof-gutenbruennen.ch/kontakt/'),
(0000000196, 0000000069, '2025-07-09', '', 0, 0, 1, NULL),
(0000000197, 0000000069, '2025-07-13', '', 0, 0, 1, NULL),
(0000000198, 0000000070, '2025-05-21', '', 14, 7, 0, NULL),
(0000000199, 0000000071, '2025-05-27', '', 6, 0, 0, NULL),
(0000000200, 0000000071, '2025-06-24', '', 0, 0, 0, NULL),
(0000000201, 0000000071, '2025-07-29', '', 6, 2, 0, NULL),
(0000000202, 0000000060, '2025-11-22', '', 9, 9, 0, NULL),
(0000000203, 0000000059, '2025-03-23', '', 9, 0, 0, NULL),
(0000000205, 0000000072, '2025-09-10', '', 0, 0, 1, NULL),
(0000000206, 0000000072, '2025-09-14', '', 0, 0, 1, NULL),
(0000000207, 0000000073, '2025-11-08', '', 0, 0, 0, NULL),
(0000000208, 0000000064, '2026-05-02', '', 10, 0, 0, 'https://biohof-gutenbruennen.ch/kontakt/'),
(0000000209, 0000000064, '2026-05-03', '', 10, 0, 0, 'https://biohof-gutenbruennen.ch/kontakt/'),
(0000000210, 0000000074, '2026-03-28', '', 14, 7, 0, ''),
(0000000211, 0000000074, '2026-06-27', '', 14, 1, 0, ''),
(0000000212, 0000000074, '2026-10-10', '', 14, 7, 0, ''),
(0000000213, 0000000074, '2026-12-12', '', 14, 1, 0, ''),
(0000000214, 0000000022, '2026-04-18', '', 0, 0, 0, ''),
(0000000215, 0000000044, '2026-04-19', '', 6, 5, 0, ''),
(0000000216, 0000000024, '2026-08-23', '', 10, 10, 0, ''),
(0000000217, 0000000075, '2026-04-21', '', 20, 1, 0, ''),
(0000000218, 0000000075, '2026-05-12', '', 20, 1, 0, ''),
(0000000219, 0000000075, '2026-06-02', '', 20, 3, 0, ''),
(0000000220, 0000000075, '2026-06-23', '', 20, 1, 0, ''),
(0000000221, 0000000076, '2026-06-24', '', 0, 0, 1, ''),
(0000000222, 0000000076, '2026-06-28', '', 0, 0, 1, ''),
(0000000223, 0000000077, '2026-08-16', '', 24, 14, 0, ''),
(0000000224, 0000000034, '2026-08-22', '', 10, 3, 0, ''),
(0000000225, 0000000075, '2026-07-14', '', 20, 3, 0, ''),
(0000000226, 0000000075, '2026-08-25', '', 20, 1, 0, ''),
(0000000227, 0000000075, '2026-09-15', '', 20, 0, 0, ''),
(0000000228, 0000000078, '2026-09-05', '', 12, 0, 0, 'https://biohof-gutenbruennen.ch/kontakt/'),
(0000000229, 0000000075, '2026-08-04', '', 0, 0, 0, ''),
(0000000230, 0000000079, '2026-09-16', '', 0, 0, 1, ''),
(0000000231, 0000000079, '2026-09-20', '', 0, 0, 1, ''),
(0000000232, 0000000064, '2027-04-24', '', 12, 0, 0, 'https://biohof-gutenbruennen.ch/kontakt/'),
(0000000233, 0000000080, '2026-08-19', '', 12, 0, 0, 'https://kunsthallebern.ch/de/collective-learning/2026-8-19-kunsthalle-kids'),
(0000000234, 0000000081, '2026-10-09', '', 14, 0, 0, 'https://www.pinprinza.ch/programm'),
(0000000235, 0000000082, '2026-09-11', '', 14, 0, 0, 'https://www.pinprinza.ch/programm'),
(0000000236, 0000000060, '2026-11-21', '', 12, 1, 0, ''),
(0000000237, 0000000060, '2026-11-22', '', 12, 9, 0, ''),
(0000000238, 0000000075, '2026-10-06', '', 20, 0, 0, ''),
(0000000239, 0000000075, '2026-10-27', '', 20, 0, 0, ''),
(0000000240, 0000000075, '2026-11-17', '', 20, 0, 0, ''),
(0000000241, 0000000075, '2026-12-08', '', 20, 0, 0, ''),
(0000000242, 0000000075, '2026-12-29', '', 0, 0, 0, ''),
(0000000243, 0000000075, '2027-01-19', '', 14, 0, 0, '');

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
(0000000006, 0000000002, 0000000004),
(0000000007, 0000000002, 0000000003),
(0000000009, 0000000002, 0000000007),
(0000000010, 0000000002, 0000000001),
(0000000012, 0000000003, 0000000004),
(0000000013, 0000000003, 0000000003),
(0000000014, 0000000003, 0000000002),
(0000000015, 0000000003, 0000000001),
(0000000017, 0000000004, 0000000004),
(0000000018, 0000000004, 0000000003),
(0000000019, 0000000004, 0000000002),
(0000000020, 0000000004, 0000000001),
(0000000032, 0000000005, 0000000008),
(0000000033, 0000000005, 0000000009),
(0000000034, 0000000005, 0000000010),
(0000000035, 0000000005, 0000000002),
(0000000037, 0000000005, 0000000013),
(0000000038, 0000000008, 0000000008),
(0000000039, 0000000006, 0000000009),
(0000000040, 0000000008, 0000000010),
(0000000041, 0000000006, 0000000002),
(0000000044, 0000000007, 0000000004),
(0000000045, 0000000007, 0000000003),
(0000000046, 0000000007, 0000000002),
(0000000047, 0000000007, 0000000019),
(0000000049, 0000000006, 0000000008),
(0000000050, 0000000008, 0000000002),
(0000000051, 0000000006, 0000000010),
(0000000052, 0000000008, 0000000009),
(0000000053, 0000000010, 0000000004),
(0000000054, 0000000010, 0000000019),
(0000000055, 0000000010, 0000000003),
(0000000057, 0000000009, 0000000021),
(0000000058, 0000000009, 0000000010),
(0000000059, 0000000009, 0000000002),
(0000000062, 0000000009, 0000000008),
(0000000063, 0000000009, 0000000009),
(0000000064, 0000000011, 0000000001),
(0000000065, 0000000011, 0000000003),
(0000000066, 0000000011, 0000000002),
(0000000067, 0000000011, 0000000004),
(0000000068, 0000000012, 0000000004),
(0000000069, 0000000012, 0000000003),
(0000000070, 0000000012, 0000000019),
(0000000071, 0000000012, 0000000002),
(0000000072, 0000000013, 0000000004),
(0000000073, 0000000013, 0000000003),
(0000000074, 0000000013, 0000000019),
(0000000075, 0000000013, 0000000002),
(0000000076, 0000000014, 0000000004),
(0000000077, 0000000014, 0000000003),
(0000000078, 0000000014, 0000000019),
(0000000079, 0000000014, 0000000002),
(0000000080, 0000000015, 0000000004),
(0000000081, 0000000015, 0000000003),
(0000000082, 0000000015, 0000000019),
(0000000083, 0000000015, 0000000002),
(0000000084, 0000000016, 0000000002),
(0000000085, 0000000016, 0000000076),
(0000000086, 0000000017, 0000000022),
(0000000087, 0000000017, 0000000023),
(0000000088, 0000000018, 0000000024),
(0000000089, 0000000018, 0000000025),
(0000000090, 0000000018, 0000000026),
(0000000091, 0000000017, 0000000027),
(0000000092, 0000000016, 0000000080),
(0000000093, 0000000019, 0000000001),
(0000000094, 0000000019, 0000000003),
(0000000095, 0000000019, 0000000002),
(0000000096, 0000000019, 0000000004),
(0000000097, 0000000020, 0000000008),
(0000000098, 0000000020, 0000000028),
(0000000099, 0000000020, 0000000029),
(0000000100, 0000000020, 0000000030),
(0000000101, 0000000020, 0000000031),
(0000000102, 0000000021, 0000000032),
(0000000103, 0000000021, 0000000051),
(0000000104, 0000000021, 0000000002),
(0000000105, 0000000022, 0000000109),
(0000000106, 0000000022, 0000000047),
(0000000107, 0000000022, 0000000037),
(0000000108, 0000000022, 0000000040),
(0000000109, 0000000022, 0000000058),
(0000000115, 0000000023, 0000000040),
(0000000116, 0000000023, 0000000058),
(0000000117, 0000000024, 0000000109),
(0000000119, 0000000024, 0000000047),
(0000000120, 0000000024, 0000000037),
(0000000121, 0000000024, 0000000040),
(0000000122, 0000000025, 0000000019),
(0000000123, 0000000025, 0000000036),
(0000000124, 0000000025, 0000000002),
(0000000125, 0000000024, 0000000058),
(0000000126, 0000000025, 0000000004),
(0000000127, 0000000027, 0000000100),
(0000000128, 0000000027, 0000000042),
(0000000129, 0000000027, 0000000002),
(0000000130, 0000000028, 0000000022),
(0000000131, 0000000028, 0000000023),
(0000000132, 0000000028, 0000000027),
(0000000135, 0000000029, 0000000084),
(0000000136, 0000000029, 0000000002),
(0000000138, 0000000013, 0000000036),
(0000000139, 0000000007, 0000000044),
(0000000141, 0000000008, 0000000045),
(0000000143, 0000000006, 0000000016),
(0000000144, 0000000030, 0000000035),
(0000000145, 0000000030, 0000000047),
(0000000146, 0000000030, 0000000037),
(0000000147, 0000000030, 0000000040),
(0000000148, 0000000030, 0000000058),
(0000000150, 0000000026, 0000000004),
(0000000151, 0000000026, 0000000003),
(0000000152, 0000000026, 0000000002),
(0000000153, 0000000026, 0000000001),
(0000000154, 0000000013, 0000000048),
(0000000156, 0000000013, 0000000049),
(0000000160, 0000000033, 0000000038),
(0000000161, 0000000033, 0000000051),
(0000000162, 0000000032, 0000000055),
(0000000163, 0000000032, 0000000052),
(0000000164, 0000000032, 0000000053),
(0000000165, 0000000032, 0000000039),
(0000000166, 0000000032, 0000000002),
(0000000167, 0000000032, 0000000003),
(0000000168, 0000000032, 0000000056),
(0000000169, 0000000033, 0000000060),
(0000000170, 0000000033, 0000000057),
(0000000171, 0000000033, 0000000058),
(0000000172, 0000000033, 0000000002),
(0000000173, 0000000033, 0000000061),
(0000000174, 0000000021, 0000000062),
(0000000178, 0000000024, 0000000125),
(0000000179, 0000000034, 0000000109),
(0000000180, 0000000034, 0000000047),
(0000000181, 0000000034, 0000000037),
(0000000182, 0000000034, 0000000040),
(0000000183, 0000000034, 0000000058),
(0000000184, 0000000034, 0000000125),
(0000000186, 0000000030, 0000000066),
(0000000187, 0000000035, 0000000035),
(0000000188, 0000000035, 0000000047),
(0000000189, 0000000035, 0000000037),
(0000000190, 0000000035, 0000000040),
(0000000191, 0000000035, 0000000058),
(0000000192, 0000000035, 0000000066),
(0000000193, 0000000015, 0000000036),
(0000000194, 0000000036, 0000000066),
(0000000196, 0000000036, 0000000058),
(0000000197, 0000000036, 0000000040),
(0000000198, 0000000036, 0000000079),
(0000000199, 0000000036, 0000000036),
(0000000200, 0000000036, 0000000067),
(0000000201, 0000000036, 0000000068),
(0000000202, 0000000037, 0000000035),
(0000000203, 0000000037, 0000000047),
(0000000204, 0000000037, 0000000037),
(0000000205, 0000000037, 0000000040),
(0000000206, 0000000037, 0000000058),
(0000000207, 0000000037, 0000000066),
(0000000208, 0000000038, 0000000055),
(0000000209, 0000000038, 0000000052),
(0000000210, 0000000038, 0000000053),
(0000000211, 0000000038, 0000000039),
(0000000212, 0000000038, 0000000002),
(0000000213, 0000000038, 0000000054),
(0000000214, 0000000038, 0000000056),
(0000000215, 0000000039, 0000000055),
(0000000216, 0000000039, 0000000052),
(0000000217, 0000000039, 0000000053),
(0000000218, 0000000039, 0000000039),
(0000000219, 0000000039, 0000000002),
(0000000220, 0000000039, 0000000054),
(0000000221, 0000000039, 0000000056),
(0000000222, 0000000040, 0000000009),
(0000000223, 0000000040, 0000000010),
(0000000224, 0000000040, 0000000002),
(0000000225, 0000000040, 0000000008),
(0000000226, 0000000040, 0000000069),
(0000000227, 0000000040, 0000000070),
(0000000228, 0000000029, 0000000071),
(0000000230, 0000000041, 0000000022),
(0000000231, 0000000041, 0000000023),
(0000000232, 0000000041, 0000000027),
(0000000233, 0000000041, 0000000002),
(0000000234, 0000000042, 0000000009),
(0000000235, 0000000042, 0000000010),
(0000000236, 0000000042, 0000000002),
(0000000237, 0000000042, 0000000008),
(0000000238, 0000000042, 0000000075),
(0000000239, 0000000042, 0000000073),
(0000000240, 0000000040, 0000000076),
(0000000241, 0000000042, 0000000076),
(0000000242, 0000000016, 0000000003),
(0000000243, 0000000016, 0000000004),
(0000000244, 0000000031, 0000000002),
(0000000245, 0000000031, 0000000076),
(0000000246, 0000000031, 0000000077),
(0000000247, 0000000031, 0000000003),
(0000000248, 0000000031, 0000000004),
(0000000249, 0000000016, 0000000008),
(0000000250, 0000000031, 0000000008),
(0000000251, 0000000043, 0000000066),
(0000000252, 0000000043, 0000000058),
(0000000253, 0000000043, 0000000040),
(0000000254, 0000000043, 0000000048),
(0000000255, 0000000043, 0000000036),
(0000000256, 0000000043, 0000000035),
(0000000257, 0000000043, 0000000068),
(0000000258, 0000000043, 0000000078),
(0000000259, 0000000045, 0000000078),
(0000000260, 0000000045, 0000000040),
(0000000261, 0000000045, 0000000035),
(0000000262, 0000000045, 0000000066),
(0000000263, 0000000045, 0000000068),
(0000000264, 0000000045, 0000000058),
(0000000265, 0000000045, 0000000047),
(0000000266, 0000000045, 0000000079),
(0000000268, 0000000046, 0000000040),
(0000000269, 0000000046, 0000000035),
(0000000270, 0000000046, 0000000066),
(0000000271, 0000000046, 0000000037),
(0000000272, 0000000046, 0000000058),
(0000000273, 0000000046, 0000000047),
(0000000274, 0000000047, 0000000078),
(0000000275, 0000000047, 0000000040),
(0000000276, 0000000047, 0000000035),
(0000000277, 0000000047, 0000000066),
(0000000278, 0000000047, 0000000068),
(0000000279, 0000000047, 0000000058),
(0000000280, 0000000047, 0000000036),
(0000000282, 0000000048, 0000000040),
(0000000283, 0000000048, 0000000035),
(0000000284, 0000000048, 0000000066),
(0000000285, 0000000048, 0000000037),
(0000000286, 0000000048, 0000000058),
(0000000287, 0000000048, 0000000047),
(0000000288, 0000000049, 0000000035),
(0000000289, 0000000049, 0000000115),
(0000000290, 0000000049, 0000000037),
(0000000291, 0000000049, 0000000040),
(0000000292, 0000000049, 0000000058),
(0000000293, 0000000049, 0000000116),
(0000000294, 0000000050, 0000000084),
(0000000295, 0000000050, 0000000082),
(0000000296, 0000000050, 0000000081),
(0000000297, 0000000050, 0000000060),
(0000000298, 0000000050, 0000000029),
(0000000299, 0000000046, 0000000083),
(0000000300, 0000000051, 0000000085),
(0000000301, 0000000051, 0000000043),
(0000000302, 0000000051, 0000000007),
(0000000303, 0000000051, 0000000086),
(0000000304, 0000000051, 0000000087),
(0000000306, 0000000051, 0000000088),
(0000000307, 0000000025, 0000000003),
(0000000310, 0000000048, 0000000090),
(0000000311, 0000000052, 0000000091),
(0000000313, 0000000052, 0000000093),
(0000000315, 0000000052, 0000000095),
(0000000316, 0000000053, 0000000022),
(0000000317, 0000000053, 0000000023),
(0000000318, 0000000053, 0000000027),
(0000000319, 0000000053, 0000000096),
(0000000320, 0000000054, 0000000022),
(0000000321, 0000000054, 0000000023),
(0000000322, 0000000054, 0000000027),
(0000000323, 0000000054, 0000000096),
(0000000324, 0000000055, 0000000019),
(0000000325, 0000000055, 0000000055),
(0000000326, 0000000055, 0000000002),
(0000000327, 0000000055, 0000000003),
(0000000328, 0000000055, 0000000097),
(0000000329, 0000000056, 0000000002),
(0000000330, 0000000056, 0000000003),
(0000000331, 0000000056, 0000000098),
(0000000332, 0000000056, 0000000099),
(0000000333, 0000000056, 0000000100),
(0000000335, 0000000058, 0000000003),
(0000000336, 0000000058, 0000000101),
(0000000337, 0000000058, 0000000102),
(0000000338, 0000000058, 0000000103),
(0000000339, 0000000058, 0000000104),
(0000000340, 0000000059, 0000000115),
(0000000341, 0000000059, 0000000068),
(0000000342, 0000000059, 0000000040),
(0000000343, 0000000059, 0000000058),
(0000000344, 0000000059, 0000000105),
(0000000345, 0000000027, 0000000098),
(0000000346, 0000000057, 0000000040),
(0000000347, 0000000057, 0000000035),
(0000000348, 0000000057, 0000000066),
(0000000349, 0000000057, 0000000037),
(0000000350, 0000000057, 0000000058),
(0000000351, 0000000057, 0000000047),
(0000000352, 0000000060, 0000000108),
(0000000353, 0000000060, 0000000047),
(0000000354, 0000000060, 0000000002),
(0000000355, 0000000060, 0000000062),
(0000000357, 0000000061, 0000000022),
(0000000358, 0000000061, 0000000023),
(0000000359, 0000000061, 0000000027),
(0000000361, 0000000061, 0000000062),
(0000000362, 0000000063, 0000000109),
(0000000363, 0000000063, 0000000110),
(0000000364, 0000000063, 0000000111),
(0000000365, 0000000052, 0000000112),
(0000000366, 0000000052, 0000000002),
(0000000367, 0000000052, 0000000113),
(0000000369, 0000000064, 0000000115),
(0000000371, 0000000064, 0000000116),
(0000000372, 0000000064, 0000000117),
(0000000373, 0000000064, 0000000118),
(0000000374, 0000000062, 0000000027),
(0000000375, 0000000062, 0000000023),
(0000000377, 0000000062, 0000000022),
(0000000378, 0000000065, 0000000095),
(0000000379, 0000000065, 0000000002),
(0000000380, 0000000065, 0000000119),
(0000000381, 0000000065, 0000000120),
(0000000382, 0000000065, 0000000121),
(0000000383, 0000000065, 0000000039),
(0000000384, 0000000066, 0000000115),
(0000000385, 0000000066, 0000000058),
(0000000386, 0000000066, 0000000037),
(0000000387, 0000000066, 0000000035),
(0000000388, 0000000066, 0000000116),
(0000000389, 0000000067, 0000000022),
(0000000390, 0000000067, 0000000027),
(0000000391, 0000000067, 0000000023),
(0000000392, 0000000067, 0000000062),
(0000000393, 0000000068, 0000000122),
(0000000394, 0000000068, 0000000043),
(0000000395, 0000000068, 0000000029),
(0000000396, 0000000068, 0000000123),
(0000000397, 0000000068, 0000000124),
(0000000399, 0000000069, 0000000022),
(0000000400, 0000000069, 0000000023),
(0000000401, 0000000069, 0000000002),
(0000000402, 0000000069, 0000000096),
(0000000403, 0000000070, 0000000010),
(0000000404, 0000000070, 0000000002),
(0000000405, 0000000070, 0000000008),
(0000000406, 0000000070, 0000000127),
(0000000407, 0000000070, 0000000003),
(0000000408, 0000000070, 0000000025),
(0000000409, 0000000071, 0000000027),
(0000000410, 0000000071, 0000000097),
(0000000411, 0000000071, 0000000007),
(0000000412, 0000000071, 0000000003),
(0000000414, 0000000071, 0000000128),
(0000000415, 0000000072, 0000000002),
(0000000416, 0000000072, 0000000023),
(0000000417, 0000000072, 0000000022),
(0000000418, 0000000072, 0000000027),
(0000000419, 0000000072, 0000000121),
(0000000420, 0000000073, 0000000047),
(0000000421, 0000000073, 0000000079),
(0000000422, 0000000073, 0000000062),
(0000000423, 0000000073, 0000000098),
(0000000424, 0000000073, 0000000002),
(0000000425, 0000000064, 0000000114),
(0000000426, 0000000074, 0000000129),
(0000000427, 0000000074, 0000000026),
(0000000428, 0000000074, 0000000037),
(0000000429, 0000000074, 0000000031),
(0000000430, 0000000074, 0000000100),
(0000000431, 0000000074, 0000000130),
(0000000432, 0000000044, 0000000109),
(0000000433, 0000000044, 0000000047),
(0000000434, 0000000044, 0000000037),
(0000000435, 0000000044, 0000000040),
(0000000436, 0000000044, 0000000058),
(0000000437, 0000000075, 0000000024),
(0000000438, 0000000075, 0000000026),
(0000000439, 0000000075, 0000000031),
(0000000440, 0000000075, 0000000128),
(0000000442, 0000000075, 0000000064),
(0000000443, 0000000075, 0000000131),
(0000000444, 0000000076, 0000000022),
(0000000445, 0000000076, 0000000027),
(0000000446, 0000000076, 0000000023),
(0000000447, 0000000077, 0000000027),
(0000000448, 0000000077, 0000000036),
(0000000449, 0000000077, 0000000131),
(0000000450, 0000000077, 0000000040),
(0000000451, 0000000077, 0000000132),
(0000000452, 0000000078, 0000000115),
(0000000453, 0000000078, 0000000117),
(0000000454, 0000000078, 0000000118),
(0000000455, 0000000078, 0000000114),
(0000000456, 0000000078, 0000000133),
(0000000457, 0000000079, 0000000022),
(0000000458, 0000000079, 0000000023),
(0000000459, 0000000079, 0000000002),
(0000000460, 0000000079, 0000000027),
(0000000461, 0000000080, 0000000134),
(0000000462, 0000000080, 0000000135),
(0000000463, 0000000080, 0000000136),
(0000000464, 0000000080, 0000000137),
(0000000465, 0000000080, 0000000138),
(0000000466, 0000000081, 0000000139),
(0000000467, 0000000081, 0000000140),
(0000000468, 0000000081, 0000000131),
(0000000469, 0000000081, 0000000031),
(0000000470, 0000000081, 0000000087),
(0000000471, 0000000081, 0000000141),
(0000000472, 0000000082, 0000000141),
(0000000473, 0000000082, 0000000004),
(0000000474, 0000000082, 0000000131),
(0000000475, 0000000082, 0000000140),
(0000000476, 0000000082, 0000000142),
(0000000477, 0000000081, 0000000143),
(0000000478, 0000000082, 0000000143);

-- --------------------------------------------------------

--
-- Table structure for table `class_type`
--

CREATE TABLE `class_type` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `name` varchar(100) NOT NULL COMMENT 'name of the class type',
  `paypal_key` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='class types serve as tags to group classes that are similar in some aspects';

--
-- Dumping data for table `class_type`
--

INSERT INTO `class_type` (`id`, `name`, `paypal_key`) VALUES
(0000000001, 'Pflanzenexkursion', 'GSJBE3ZL5AYRQ'),
(0000000002, 'Pflanzenspaziergang', 'JJTJXPD9PK3BE'),
(0000000003, 'Pflanzenwerkstatt', 'DFSQSMBUWDKAA'),
(0000000004, 'Diverses', ''),
(0000000005, 'Bierbrau Kurs', 'CW5EFAMB8QGUQ'),
(0000000006, 'Teetrunk', '');

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
(0000000004, 'alkoholfrei');

-- --------------------------------------------------------

--
-- Table structure for table `impressions`
--

CREATE TABLE `impressions` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT 'increments automatically, do not touch this',
  `id_class` int(10) UNSIGNED ZEROFILL DEFAULT NULL COMMENT 'a link to the class this impression refers to',
  `title` varchar(100) DEFAULT NULL COMMENT 'the title of the impression. If left empty the title of the linked class is used',
  `subtitle` varchar(200) DEFAULT NULL COMMENT 'the subtitle of the impression. If left empty the subtitle of the linked class is used',
  `description` longtext NOT NULL COMMENT 'a description of the impression event',
  `position` int(4) NOT NULL COMMENT 'the position of the impression event'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `impressions`
--

INSERT INTO `impressions` (`id`, `id_class`, `title`, `subtitle`, `description`, `position`) VALUES
(0000000003, 0000000010, 'Schwarzdorn', 'Schönheit im weissen Kleid', 'Zum Thema Schwarzdorn, auch Schlehe genannt, fanden ende März und anfang April 2018 die ersten Pflanzenexkursionen vom Pflanzenlabor statt.\r\n\r\nDer kalte Januar hat die Blütezeit des Schwarzdorns etwas nach hinten verschoben. So konnten wir, mit Lupe ausgerüstet, die Knospen studieren und uns in der Bestimmung üben. Am Mittag haben wir junge, frische Frühlingskräuter gesammelt und damit über dem Feuer eine Suppe gekocht. Schwarzdorn-Tinte wurde nach einer alten Rezeptur aus dem 12. Jahrhundert nachgebraut und ergab ein wunderschönes Fuchsbraun.\r\n\r\nDanke allen Teilnehmenden, dass ihr mit mir die ersten Pflanzenexkursionen miterlebt und mitgestaltet habt.', 0),
(0000000004, 0000000002, NULL, NULL, 'Am Sonntag 6. Mai 2018 fand eine Pflanzenexkursion zum Thema Brennnessel statt.\r\nNach dem Aufstieg in den idyllischen Riedernwald verbrachten wir den Tag auf einer sonnigen Waldlichtung. Wir ernteten viel junge Brennnesseltriebe und verarbeiteten diese in ein Zmittag. Wir beobachteten Schmetterlinge und Raupen, welche auf den Brennnesseln wohnen, stellten ein Brennnesselshampoo her und genossen Märchen - natürlich über die Brennnessel.', 10),
(0000000005, 0000000003, NULL, NULL, 'Die Exkursion mitte Juni 2018 stand im Zeichen des Holunders.\r\n\r\nAm Rande einer Holunderhecke entfachten wir unser Feuer und präparierten die Holunderblüten für ein Holundersalz. Im Sonnenschein auf einer Wiese thematisierten wir die vielfältigen Themen zu diesem köstlich-giftigen Baum, erfuhren weshalb er kaum Schädlinge hat und was passiert, wenn man die Blüten über die linke Schulter wirft. Diesen sommerlichen Tag beendeten wir mit einem auf dem Feuer gebackenen Holunderblütenkuchen.', 20),
(0000000006, 0000000005, NULL, NULL, 'Mitte August 2018 hatten wir einen besonderen Pflanzenspaziergang. Es war die Zeit des Altweibersommers, in welcher traditionell die letzten Heilkräuter gesammelt und zu Sträussen zusammengebunden werden.\r\n\r\nIn diesem Sinne sammelten auch wir aromatische Pflanzen und banden sie zu kleinen Teesträussen zusammen. ', 40),
(0000000007, 0000000004, NULL, NULL, 'Im Juli 2018, in sommerlichem Sonnenschein, fand eine Pflanzenexkursion über die Goldrute statt.\r\n\r\nNebst der bekannten und häufig vorkommenden grossen Goldruten betrachteten wir auch die kleinere echte Goldrute, welche beide am Südhang des Gurtens zu finden sind. Im Schatten der Bäume genossen wir ein Picknick, thematisierten Heilwirkung und ivnasive Neophyten und stellten einen intensiv gelben Farbstoff aus Goldrutenblüten her.', 30),
(0000000008, 0000000007, NULL, NULL, 'Die erste Pflanzenwerkstatt war zugleich der letzte Kurs im der Saison 2018. Dieser fand ende September statt, und thematisierte Brennnesselsamen.\r\n\r\nAuf der Waldlichtung, zwischen grossen Buchen, richteten wir unsere Werkstatt ein. Nebst verschiedenen Dipps fürs Zvieri stellten wir Energiekugeln und eine Salzmischung her - natürlich alles aus Brennnesselsamen.', 50),
(0000000009, 0000000013, 'Löwenzahn', 'Frühlingsputz und vieles mehr', 'Die Exkursion am 3. März war ein wunderbarer Start in die Saison 2019 mit mildem Wetter und viel Löwenzahn. Die zarten Blättchen sind erst vor wenigen Tagen aus der Erde gesprossen und schmeckten erfrischend und leicht bitter. Zudem verarbeiteten und degustierten wir die Wurzel in verschiedenen Arten.\r\n\r\n\"So ein milder früher Frühlingstag im Wald und am Wasser mit interessierten Frauen und einer charmanten, vielwissenden Exkursionsleiterin. Mit jeder Pflanze die Du vorstellst tut sich mir eine neue Welt auf – auch wenn ich diverse Details wieder vergesse, habe ich das Gefühl diese Pflanze sei nun eine gute Bekannte … So wie ich Deine Kurse bisher erlebt habe, war der Tag wieder sehr abwechslungsreich: Lernen, Beobachten, Sammeln, Herstellen, Geniessen – wirklich für Kopf, Hand und Herz!\" - Trix', 60),
(0000000010, 0000000010, NULL, NULL, 'Die dreistündige Werkstatt fand am Samstag 13. April 2019 bei sonnigem Wetter statt. Mitten in der Blütenpracht des Schwarzdorns waren die Hecken weiss verzaubert. Wie im Gedicht \"Das Frühlingsmahl\" in der 1. und 5. Strophe:', 70),
(0000000011, 0000000026, 'Waldmeisterblüten', NULL, 'Im wonnemonat Mai (Samstag 4. Mai 2019) stiegen wir viele Treppenstufen den Buchenwald hinauf um den Waldmeister aufzusuchen. Wir labten uns am himmlischen Duft des kleinen Krautes, erstellten eine Nachtcreme und genossen zum Apero ein Glas Maibowle. Das Wetter war mild mit uns, einige Stunden nach der Werkstatt schneite es - May the 4. be with you!', 80),
(0000000013, NULL, 'Zu Besuch bei Ulrike Toma', 'Sommerkräuter', 'Am 29. Juni 2019 habe nicht ich eine Exkursion geleitet, sondern war zu Besuch bei Ulrike Tomas Heilpflanzen Atelier. Sie leitete eine Workshop im Bremgartenwald zum Thema Sommerkräuter. Es war ein schöner, sonniger Tag mit vielen Heilkräutern. Ulli hat uns die Wander-Destille vorgeführt und mit uns verschiedene Cremen und Fluids hergestellt. Danke Ulli, für den spannenden Tag!\r\n\r\nNeu kann man das Heilpflanzen Atelier mit vieln naturkosmetischen Produkten in der Länggasse in Bern finden. Details dazu findest du auf Ullis Website [Ulrike Toma](!https://www.frauen-sachen.ch/) ', 90),
(0000000014, 0000000014, '', '', 'Neben jedem Haus sollte ein Holunder stehen. Mit diesem Motto hat die Werkstatt am 10. August 2019 in urbanem Gebiet stattgefunden. Auf verlassenen Schrebergärten haben wir Sommerkräuter gesammelt und den grossen Holunderbaum betrachtet. Um uns auf den kommenden Herbst und Winter vorzubereiten, haben wir zwei Elixiere hergestellt, welche unser Immunsystem unterstützen werden.\r\n\r\nDanke allen Teilnehmerinnen, für diesen schönen Holunder Nachmittag!', 100),
(0000000015, NULL, 'Fantastische Pflanzen', 'aus der Welt des Schwarzen Auges', 'Nicht nur reale Pflanzen verzaubern - auch die Pflanzen des Pen-and-Paper-Rollenspiel *[Das Schwarze Auge](https://de.wikipedia.org/wiki/Das_Schwarze_Auge)* (DSA) von Ulisses Spiele.\r\n\r\nFür dessen Kontinent Aventurien durfte ich die Konzeptarbeit der Flora illustrieren, was eine wunderbare Arbeit war.\r\n\r\nIn dieser Fantasy Welt ist es ziemlich abenteuerlich, auf Pflanzensuche zu gehen - Der Wasserrausch zum Beispiel ist eine Wasserpflanze und kann zur Blütezeit Taucher in einen tiefen Schlaf versetzen. Konsumiert man die süsse Frucht des Merach Strauches mit Alkohol ist sie giftig. Weiter Pflanzen, schleudern ätzende Samen meterweit, bilden Fallgrubensysteme mit ihren Wurzeln oder verschlingen ganze Menschen... Doch für einen aventurischen Helden lohnt es sich allemal, dieses Risiko auf sich zu nehmen: Nothilf zum Beispiel neutralisiert Gifte (und hilft bei Verbrennungen). Und findet man eine äusserst seltene Alveranie, kann diese ein Wunder wirken...\r\n\r\nUntenstehend ein paar Fotos der abgedruckten Pflanzen.', 110),
(0000000016, 0000000015, '', '', 'Der 8. September 2019 war ein kalter und windiger aber wunderschöer Tag. (Zumindest während der Werkstatt – Eine Stunde nachdem die Werkstatt beendet war, entleerte sich eine riesige Wolke mit Regen und Gewitter über Bern.)\r\nViele Pflanzen blühen zu dieser Jahreszeit nicht mehr – Die Schafgarbe jedoch zeigt sich auch jetzt noch. Dieser widmeten wir uns während drei Stunden und stellten ein Tonic, ein Lippenstift und eine Salbe daraus her.', 120),
(0000000017, 0000000021, '', '', 'Kurz vor der Wintersonnenwende 2019 verbrachten wir einen Abend im Heilpflanzen Atelier in der Länggasse. Bei einem warmen Tee erfuhren die Teilnehmerinnen verschiedenes über die Rauhnächte. Wir stellten aus, meist heimischen Kräutern und Harzen, Räucherkugeln her, welche jeweils mit einer persönlichen Botschaft versehen waren.\r\n\r\nIch hoffe ihr hattet alle eine gute Rauhnachts-Zeit und einen schönen Start ins Neue Jahr!', 130),
(0000000018, NULL, '2019', 'Ein Rückblick', 'Die zweite Saison des Pflanzenlabor ist zu Ende und ich schaue voller Freude auf dieses Jahr zurück.\r\nHerzlichen Dank an alle, die das Pflanzenlabor unterstützt haben - Sei es durch Besuche an Kursen, durch Pflanzenpäckli, Worte, Zeit oder Gedanken. MERCI :)\r\nIn den Bildern ein Überblick, was in dieser Saison geschehen ist.', 140),
(0000000019, NULL, 'Pflanzenpäckli', 'Ein Abo um Pflanzen kennen zu lernen', 'Ein Pflanzenpäckli ist eine wundervolle Möglichkeit, eine Pflanze einmal anders kennen zu lernen. In vier Schritten wirst du an eine Pflanze geführt.\r\nERFAHREN: Beginnen wirst du mit einem Teekraut, ohne dass der Name der Pflanze bekannt ist. Eine Anleitung um aufmerksam Tee zu trinken, begleitet dich dabei.\r\nBEFASSEN: Beim zweiten Schritt gibt eine schwarzweisse Pflanzendarstellung und ein Zitat einen weiteren Eindruck über die Pflanze. Du hast nochmald eine Gelegenheit, dich mit der noch unbekannten Pflanze auseinander zu setzen.\r\nINFORMIEREN: Eine botanische Zeichnung und allgemeine Infos - inkl. Name - werden dir zur Pflanze vorgestellt.\r\nVERTIEFEN: Zum Schluss gibt es eine visuelle interpretation der Pflanze, jeweils von einem anderen Künstler, einer anderen Künstlerin. Und einen Text, welcher ein spezifisches Thema der Pflanze aufgreift.\r\n\r\nEin [Pflanzenpäckli Abo](https://www.pflanzenlabor.ch/paeckli_angebot) besteht aus 6 Päckli, also 6 verschiedenen Pflanzen, welche während einem Jahr zu dir nach Hause gesendet werden.', 150),
(0000000020, 0000000029, '', '', 'Am 22. Februar 2020 war der Auftakt der neuen Pflanzenlabor Saison mit einer bekannten Exotin, der Aloe vera. So früh im Jahr fand die Werkstatt drinnen statt, im Heilpflanzen Atelier von Ulrike Toma in der Länggasse. Es war ein intensiver Abend mit Informationen über geschichtliche, kulturelle, medizinische und kosmetische Aspekte der Wüstenlilie. Zudem stand die Handhabung des geernteten Blattes und deren Anwendungsmöglichkeiten im Vordergurnd.', 160),
(0000000021, NULL, 'Künstler für das Pflanzenpäckli #08', 'Silvan Zurbriggen', 'Für die frühlingshafte Pflanzenpäckli-Ausgabe im März 2020 hat Silvan Zurbriggen die Kunstkarte gestaltet.\r\nSilvan ist Grafiker und Illustrator im [Atelier Opak](https://www.opak.cc/#/workList) in Bern. Untenstehend eine kleine Auswahl seiner Arbeiten:\r\nPS: Es ist jederzeit möglich, ein Jahresabo des Pflanzenpäckli zu starten.', 170),
(0000000022, 0000000022, 'Bierbrauen', 'Geschäftsausflug von opak', 'Ein Geschäftsausflug vom Grafik und Illustrations Atelier [opak](https://www.opak.cc/#/workList) zum Bier brauen. Am 9. März 2020 brauten wir zusammen draussen, im [Infozentrum Eichholz](https://iz-eichholz.ch/) ein Amberbier. Die Stimmung war ausgelassen, das Wetter hingegen wechselhaft von Sonnenschein bis Hagel. ', 180),
(0000000023, NULL, 'Grusskarten', 'neu im Sortiment', 'Dieses Grusskarten Set (3 Stück, jeweils A5) beinhaltet drei Kunstkarten aus der Pflanzenpäckli Serie 2019. Das Kartenset kann über die Seite [\"Päckli\"](https://www.pflanzenlabor.ch/paeckli_angebot) oder direkt per [E-Mail](https://www.pflanzenlabor.ch/kontakt) bestellt werden.\r\nDie Sommerlinde, illustriert von Annina Ras.\r\nDie kanadische Goldrute, illustriert von Michael Kühni.\r\nDie Schafgarbe, illustriert von Yasemin Günay.', 190),
(0000000024, 0000000005, 'Sommerbummel', 'in Sonnenschein', 'Sommerliche Abende draussen verbringen ist einfach wunderbar. Das Wetter ist mild, abends ist es noch lange hell und kleine Ausflüge in die Pflanzenwelt machen einen solchen Spaziergang zu einem Genuss. Dieser zweistündige Spaziergang hat beim Aargauerstalden beim Rosengarten statt gefunden - mit vielen Wiesenblumen.', 200),
(0000000025, NULL, 'Hydrolate', 'Pflanzenwässer', 'Wir haben den Sommer eingefangen, mit Wasser destilliert und in Flaschen gefüllt. In Kooperation mit dem [Heilfpanzenatelier](https://www.frauen-sachen.ch/) von Ulrike und [Stadteier](https://www.stadteier.ch/) von Jan und Fabiana wurden aromatische Pflanzenwasser - die Hydrolate - erstellt. Die destillierten Wirk- und Aromastoffe der Pflanze können so ideal auf den Körper und in den Raum gesprüht werden.\r\n\r\nVerkauft werden sie (solange Vorrat) im Heilpflanzenatelier und bei Stadteier.', 210),
(0000000026, NULL, 'Adventskalender', 'mit 24 Pflanzen-Grusskarten', 'Für den Dezember 2020 hat das Pflanzenlabor einen Adventskalender zusammengestellt. Er besteht aus 24 Grusskarten mit pflanzlichen Sujets. Pro Adventskalender gibt es jeweils zehn A5 Kunstkarten von verschiedenen Künstler*innen, welche für die Pflanzenpäckli illustriert haben. Zudem gibt es zehn A5 Faltkarten mit illustrierten Pflanzen von Giovina Nicolai, ebenfalls aus dem Pflanzenpäckli. So wie je vier handgedruckte Lino-Schnitte, jede Karte ein Einzelstück.\r\n\r\nAuf dass die kleinen Dinge im Leben grosses bewirken - wie zum Beispiel ein versendeter Gruss.\r\n\r\nEs wurde nur eine kleine Menge davon hergestellt, es hat solange der Vorrat reicht. Zur Bestellung bitte [hier](https://www.pflanzenlabor.ch/paeckli_angebot) klicken.', 220),
(0000000027, 0000000008, '', '', 'Weiss in Weiss in Weiss...\r\nMitten im Schnee, zwischen Hecken und Schneemann fand am 5. Dezember 2020 ein Winter-Spaziergang statt.\r\nTrotz Kälte ein idyllischer Rundgang bei den Gehölzen auf der grossen Allmend.', 230),
(0000000028, 0000000021, '', '', 'In den Rauhnächten zu räuchern, scheint nach diesem Corona-intensivem Jahr besonders wichtig. Erst recht, wenn die regulären Rauhnacht-Kurse wieder abgesagt werden mussten. Entsprechend stellte das Pflanzenlabor Sets zusammen, damit die Räucherkugeln zuhause hergestellt werden konnten. Diese - inklusiv den eingearbeiteten Wünschen - konnten dann während den Rauhnächten 20/21 verräuchert werden.\r\n\r\nNächsten Winter werden die Sets wieder im Angebot sein - Danke für all eure Bestellungen!\r\n\r\nAuf ein pflanzenreiches, glückliches neues Jahr!', 240),
(0000000029, 0000000022, '', '', 'In kleiner Gruppe, bei sonnigem, kaltem Wetter konnten wir am 21. März ein Erika Ale brauen. Von der Sandsteinarena beim [Wabräu](https://www.wabraeu.ch/giovina-nicolai.html) reisten wir in eine lang vergangene Zeit zu den Erikaheiden der Highlands und brauten ein Ale mit Gerste und Roggen - und natürlich pinkem Erika.\r\nBis das Ale gegoren und trinkfertig ist, dauert es nun einen Monat. Nach hause nehmen konnte man hingegen den anfallenden Maischetreber um daraus Bort, Riegel oder Grissini zu backen.\r\nDanke allen Teilnehmer*innen!', 250),
(0000000030, 0000000032, '', '', 'Am 22. August 2021 hat die Werkstatt über und mit der kanadischen Goldrute stattgefunden.\r\n\r\nOrganisiert wurde der Anlass vom Naturschutzverein Pro Natura (Sektion Unteremmental) und dem Pflanzenlabor. Als Leiterinnen waren Giovina Nicolai (Pflanzenlaborantin) und Lisanna Schmidt (Biologin mit Fokus auf invasive Flora und Fauna, und Designerin) vor Ort.\r\n\r\nAm Sonntag morgen trafen wir uns bei der alten SBB Brache beim Bahnhof Burgdorf. Seit der Entfernung der Gleise, wachsen auf dieser Fläche lebensstarke Pionierpflanzen, welche ohne viel Nähstoffe zwischen  Steinen gedeihen - so auch die kanadische Goldrute.\r\n\r\nNach einer Einleitung zur aktuellen Situation über Invasive Neophyten, vor allem der kanadischen Goldrute wurde diese während gut einer Stunde von der Brachfläche entfernt. Es entstand eine fröhliche Goldrutenstimmung – Eine Balance aus hemmungslosem Ernten und respektvollem Jäten.\r\n\r\nIm zweiten Teil der Werkstatt wurden die Blüte für 1h gekocht – einerseits um den gelben Farbstoff zu gewinnen, andererseits um die Nachreifung der Samen und somit die Reproduzierbarkeit der Blüten zu verhindern. Daraus entstanden gelbe Stoffe sowie gelbe Tinte.\r\n\r\nAlle Kursteilnehmerinnen gingen in guter Stimmung mit einer gelben Tragtasche nach hause – Inspiriert, dass die Biodiversität durch Kreativität geschützt werden kann.\r\n\r\nPS: Wir gehen diesem Thema weiter nach - freut euch auf ein spannendes Programm im 2022 :)', 270),
(0000000031, NULL, 'Frisch aus dem Garten Natur', 'im Pflanzenfreund', 'Pflanzentipps quer durchs Jahr - frisch aus dem Garten Natur vom Pflanzenlabor. Veröffentlicht werden diese Pflanzeninspirationen im [Pflanzenfreund](!https://www.pflanzenfreund.ch/)-Blog, das unabhängige Gartenmagazin mit Ecken und Kanten.\r\n\r\n\r\n- [Birkensaft gegen Winterblues](!https://www.pflanzenfreund.ch/blog/birkensaft-gegen-wintermuedigkeit)\r\n- [Tee aus dem Blumenrasen - Gundelrebe](!https://www.pflanzenfreund.ch/blog/ein-teekraut-aus-dem-blumenrasen)\r\n- [Basis für Teemischungen - Brombeere](!https://www.pflanzenfreund.ch/blog/pflanzenlabor-brombeerblaetter-teemischung)\r\n- [Königin der Quellen - Mädesüss](!https://www.pflanzenfreund.ch/blog/pflanzenlabor-maedesuess-aspirin)\r\n- [Nektarmedizin für Insekten - Erika](!https://www.pflanzenfreund.ch/blog/pflanzenlabor-erika-calluna-vulgaris)\r\n- [Zauberhaft verhext - Holunder](!https://www.pflanzenfreund.ch/blog/pflanzenlabor-sambucus-nigra)\r\n\r\nWenn du keine weiteren Berichte verpassen willst, kannst du dich beim [Pflanzenfreund Newsletter](https://www.pflanzenfreund.ch/newsletter) anmelden.\r\n', 280),
(0000000032, 0000000033, '', '', 'Erikapflanzen zieren ab Herbst unzählige Fenstersimse - der einzige Gebrauch dieser Pflanze?\r\nErika Ale brauen im [wilden Gärtner in Zürich West](!https://wildergaertner.ch/) - umringt mit Gartenkisten voll blühender Erika. Dieser Brautag fand am 18. September 2021 statt. Der Brauteil fand draussen im Hinterhof statt - passend für eine erste Einführung in die Welt des Brauens, da so viele Hobbybrauer ihr erstes Gebräu im Hinterhof starteten. Der zweite Teil, wie auch das Mittagessen von [Ribelli](!https://www.ribelli-restaurant.com/) war in der Gärtnerei zwischen handgeschmiedeten Werkzeugen und Zimmerpflanzen.\r\n\r\nMerci für die Fotos an Franziska, Anne und Marcel', 290),
(0000000033, 0000000007, '', '', 'Letzte Ernte vor dem Einwintern - Brennnesselsamen aus dem Bremgartenwald für viel Energie in den nächsten Monaten. Diese Werkstatt wurde doppelt durchgeführt, am 9. und am 10. Oktober 2021. Die Fotos stammen vom 9. Oktober.\r\nMerci für eure aktive Teilnahme, merci für das schöne Wetter.', 300),
(0000000034, 0000000013, '', '', 'Frühling - erste warme Sonnenstrahlen - Löwenzahnblüten überall.\r\nDie ganzheitliche Kraft dieser lebensstarken Pflanze haben wir eingefangen und verarbeitet an der Löwenzahnblüten Werkstatt im April 2021. Im idyllischen [Naturzentrum Eichholz](!https://www.pronatura-be.ch/de/zentrum-eichholz), begleitet von der Märchenerzählerin [Claudia Büttler](!https://www.erzaehlmirmehr.ch/).', 260),
(0000000035, NULL, 'Pflanzenpäckli', 'lass dich auf eine Pflanzenreise entführen', 'Nächste Woche wird die #18 versendet - seit drei Jahren kreiert das Pflanzenlabor die Pflanzenpäckli. Jeden zweiten Monat wird eine neue Pflanze versendet - als Tee, in Bild und Text. Um die Abonnent*innen auf eine Pflanzenreise zu entführen - für die Sinne und den Geist.\r\n\r\nViel Herzblut und Arbeitsstunden fliessen in die jeweiligen Päckli hinein - Herzlichen Dank allen, die dieses Projekt ermöglichen!\r\n\r\n**Bild \"Befassen\":** [Lea](!https://www.instagram.com/leafank/?hl=en)\r\n**Bild \"Informieren\":** [Giovina](!https://www.pflanzenlabor.ch/giovina)\r\n**Bild \"Vertiefen\":** Jeweils eine andere [Künstler*in](!https://www.pflanzenlabor.ch/paeckli_kuenstler)\r\n**Text:** Giovina, Romain\r\n**Layout:** [Luca](!https://www.opak.cc/#/workList)\r\n**Konzeptarbeit:** Giovina, Lea, Nicole, Luca\r\n**Druck:** [Printzessin](!https://www.printzessin.ch/) aus Belp\r\n\r\n\r\nPflanzenpäckli können einzeln oder als Abonnement [bestellt](!https://www.pflanzenlabor.ch/paeckli_angebot) werden.', 310),
(0000000036, NULL, 'Rauhnacht Räucherkugel Set', 'zum selbermachen', 'Die Rauhnacht Räucherkugel Sets werden wieder (in kleiner Menge, von Hand) hergestellt. Um das 2021 gut abzuschliessen und das 2022 stimmig zu starten. Beim erstellen der 12 Räucherkugeln können in jede eine Botschaft via Wunschzettel eingearbeitet werden.\r\n\r\nDie [Vorbestellung](!https://www.pflanzenlabor.ch/paeckli_angebot) ist während dem November offen, versendet werden die Sets anfangs Dezember.', 320),
(0000000037, 0000000029, 'Aloe vera Pflanzen', 'Naturkosmetik im Topf', 'Der Vorfrühling hat mit Haselblüte und Winterlingen begonnen. Im warmen Wohnzimmer kann man - mit etwas Glück - in den nächsten Wochen die Aloe vera blühen sehen, denn auch Zimmerpflanzen reagieren auf die länger werdenden Tagen. Falls sich jemand eine Aloe vera (Aloe barbadensis, gelb blühend) in die Wohnung hohlen möchte, kann von untenstehenden Fotos eine erwerben. Bestellung gerne via [Mail.](!https://www.pflanzenlabor.ch/kontakt)\r\n\r\nFalls du Aloe vera Gel zu kosmetischen Zwecken mal testen möchtest, kann bis ende Februar 2022 ein [Aloe vera Hautpflegeset](!https://www.pflanzenlabor.ch/paeckli_angebot) bestellt werden.\r\n\r\nEinzelne Aloe vera Blätter können im [Heilpflanzenatelier](!https://www.frauen-sachen.ch/) in der Länggasse erworbern werden.\r\n\r\n**Details zu den Pflanzen**\r\n**Baby** - CHF 12.- - Topfdurchmeser ca 12cm, besitzen ca 7 Blätter.\r\n**Jung Adult** - CHF 65.- - ca 3 Jahre alt, von Topfrand bis Pflanzenzpitze ca 40 cm\r\n**Adult** - CHF 80.- - ca 5 Jahre alt, von Topfrand bis Pflanzenspitze ca 50cm\r\n**Mutterpflanze** - CHF 150.- - Ausgewachsene Pflanze, von Topfrand bis Pflanzenspitze >60cm\r\nNach Vereinbarung können die Pflanzen jeweils ab Donnerstag abgeholt werden - in Oberburg oder in der Länggasse in Bern.', 330),
(0000000038, 0000000040, '', '', 'Anfangs April 2022 war der erste Pflanzenspaziergang der neuen Serie \"Pflanzenspaziergänge durchs ganze Jahr\" Diesen Dienstag Abend am idyllischen Gäbelbach entlang, zwischen grossen Siedlungen hindurch, im abendlichen Licht der Frühlingssonne.\r\n\r\nDanke allen Teilnehmerinnen für den bereichernden Austausch und euren wundervollen Beiträgen zur visuellen Artenliste. (Untenstehend die drei ersten Pflanzen aus der entstandenen Liste)\r\n\r\n**Infos zu den Pflanzenspaziergängen**\r\nDie zweistündigen Entdeckungstouren finden in der Umgebung Bern statt - mal naturnah, mal urban. Ziel ist, sich der unerschöpfliche Vielfalt unserer Pflanzenwelt zu nähern. Diese Begegnungen sollen so vielfältig wie die Gewächse selbst sein - mal botanisch, mal historisch, mal handwerklich, mal kulinarisch, mal kurios, mal experimentativ... Das kollektive erstellen einer visuellen Artenliste ist eine Möglichkeit, die Pflanzenwelt genau zu betrachten. Da auch jeder Mensch einen anderen Zugang zu den Pflanzen hat, werden die monatlichen Spaziergänge abwechselnd von verschiedenen Personen durchgeführt.', 340),
(0000000039, 0000000034, '', '', 'In sonniger Kälte verbrachten wir den Brautag am 4. April 2022 bei der [Brauerei Wabräu](!https://www.wabraeu.ch/) und brauten unser Pink Sour. Dieser Brautag stand ganz im Zeichen der weiblichen Prinzipien - aus Sicht des Bieres, des Brauens und aus historischer Perspektive. Begleitet wurden wir dabei von [Eveline Aschwanden](!https://www.evelineaschwanden.ch/), welche uns Inputs zu weiblichen Prinzipien gab, die wir später ins Bier gaben :) Kulinarisch wurden wir aus der Hexenküche von Andrea verwöhnt.\r\nProst auf die Fülle!\r\n\r\nMerci für die Fotos von Nina und Anette.', 350),
(0000000040, 0000000041, '', '', 'Die warmen Frühlingstage locken einem wieder nach draussen - hier in den [Botanischen Garten Bern](!https://www.boga.unibe.ch/) an eine Führung des [Aquilegia Vereins](!https://www.aquilegia.ch/). Die stündige Führung behandelte die 2000 Jahre alten Schriften von Dioskurides, die Materia medica. Diese umfasst über 600 Heilpflanzen und unzählige Rezepte - eine wahre Perle auch in der heutigen Heilkunde.\r\n\r\nÜber den Venushaar Farn (Adiantum capillus-veneris) aus de materia medica von Pedanios Dioskurides, übersetzt von Julius Berendes, 1902\r\n\r\n*\"Es treibt weder Stengel, noch Blüthe, noch Frucht. Die Wurzel ist nutzlos. Die Abkochung des Krautes als Trank hat die Kraft, bei Asthma, Engbrüstigkeit, Gelbsucht, Pilzkrankheit und Harnverhaltung zu helfen. Sie zertrümmert ferner den Stein, stellt den Durchfall und hilft gegen den Biss giftiger Thiere, mit Wein getrunken auch bei Magenfluss. Sie befördert die Menstruation und die Reinigung der Wöchnerinnen, auch hemmt sie Blutauswurf. Roh wird es (das Adianton) als Umschlag, bei Bissen giftiger Tliiere benutzt, befördert nach der Fuchskrankheit den Haarwuchs und vertheilt Drüsen am Halse. Mit Lauge vertreibt es Schorf und bösen Grind, mit Ladanum, Myrrhensalbe, Hysop und Wein hält es den Ausfall der Haare auf, ebenso die Abkochung desselben mit Lauge und Wein aufgestrichen. Unter das Futter gemischt macht es die Hähne und Wachteln kampflustiger. Zum Gedeihen der Schafe wird es auch an die Schafställe gepflanzt. Es wächst an schattigen Orten, an feuchten Mauern und bei Quellen.\"*\r\n\r\nDanke Beatrix für die Fotos.', 360),
(0000000041, 0000000040, '', '', 'Anfangs Mai führte der Pflanzenspaziergang durch einen frühlingshaften Buchenwald, in welchem die Dipl. Drogistin und Alchimistin [Martina Bürgi](!https://www.instagram.com/martinabuergi/) die Waldflora vorstellte - mit Schwerpunkt von essbaren Wildkräutern.\r\n\r\nUntenstehend drei Pflanzen, welche während dem Spaziergang auf der visuellen Artenliste entstanden, welche gemeinsam kreiert wurde.', 370),
(0000000042, NULL, 'Heilpflanzenportraits', 'im Pflanzenfreund', 'Auch dieses Jahr stelle ich wild wachsende Pflanzeninspirationen im Gartenmagazin [Pflanzenfreund](!https://www.pflanzenfreund.ch/) vor. Jeweils ausführlich in der Printausgabe, ergänzt mit einer praktischen Anwendung im Blog.\r\n\r\n- [Klatschmohn - verwandte einer Rauschdroge](!https://www.pflanzenfreund.ch/blog/pflanzenlabor-papaver-rhoeas) für die Mai 2022 Ausgabe\r\n- [Gundelrebe - vom Hopfen verdrängt](!https://www.pflanzenfreund.ch/blog/pflanzenlabor-glechoma-hederacea) für die April 2022 Ausgabe\r\n- [Acker Schachtelhalm - Schatzkammer für die Gesundheit](!https://www.pflanzenfreund.ch/blog/pflanzenlabor-equisetum-arvense) für die März 2022 Ausgabe\r\n- [Wilde Möhre - wie ein gedeckter Tisch](!https://www.pflanzenfreund.ch/blog/pflanzenlabor-daucus-carota) für die Februar 2022 Ausgabe\r\n- [Eibisch - die Wurzeln der Marshmallows](!https://www.pflanzenfreund.ch/blog/pflanzenlabor-eibisch) Blogbeitrag Dezember 2021\r\n\r\nWenn du die kommenden Berichte nicht verpassen willst, kannst du dich beim [Pflanzenfreund Newsletter](https://www.pflanzenfreund.ch/newsletter) anmelden und das [Magazin abonnieren](!https://www.pflanzenfreund.ch/abo).\r\n', 380),
(0000000043, 0000000054, 'Hopfen', 'das grüne Gold', 'Hopfen (Humulus lupulus) ist eine Schlingpflanze, welche zur Familie der Hanfgewächse (Cannabaceae) gehört. Wie beim Hanf ist auch der Hopfen zweihäusig, es gibt also männliche und weibliche Pflanzen. Zum Bierbrauen und in der Medizin werden die weiblichen Blütenzapfen verwendet. In der Phytotherapie wird der Hopfen meist in Kombination mit anderen beruhigenden Pflanzen verwendet wie Passionsblume, Lavendel, Melisse oder Baldrian.\r\n\r\nSie wächst an Hecken und Waldrändern und mag Sonne bis Halbschatten. Anbaugebiete sind zwischen dem 35. und 55. Breitengrad.\r\n\r\nFalls du mehr über dieses grüne Gold erfahren möchtest, kannst du das passende Pflanzenpäckli bestellen. Notiere dafür bei der [Bestellung](!https://www.pflanzenlabor.ch/paeckli_angebot) eines \"Einzelpäckli\", dass du den Hopfen möchtest.\r\n\r\nUnd natürlich ist der Hopfen auch in all den Kräuter Brautagen mit dabei. Das [aktuelle Angebot](!https://www.pflanzenlabor.ch/kurse) findest du auf dem Programm des Pflanzenlabors.', 390),
(0000000044, NULL, 'Bisamkraut', 'als Ahnenpflanze', '*Die Möglichkeiten, Pflanzen zu begegnen, sind unerschöpflich. Eine Möglichkeit davon ist das Suchen nach Familiengeschichten. Ich nehme dich mit auf eine ganz persönliche Reise in die Vergangenheit meiner Ahnen – und zur Bekanntschaft mit dem Bisamkraut.*\r\n\r\nEs gibt Pflanzen, wie zum Beispiel der schwarze Holunder (Sambucus nigra), die füllen Bücher wie auch Kräuterregale von Heilpflanzenbetrieben. Und es gibt andere Kräuter, bei denen ist es schwierig, an Informationen zu gelangen. So zum Beispiel das Bisamkraut (Adoxa moschatellina) –  ein relativ häufig vorkommendes Frühlingsblümchen.\r\n\r\n**Botanische Familiengeschichte**\r\n\r\nBotanisch gehört das Pflänzchen zur selben Familie wie Holunder (Sambucus) und Schneeball (Viburum) – zu den Adoxaceae, den Moschuskrautgewächsen. Die Gattung Adoxa beinhaltet vier Arten, wobei die andern drei nur in einzelnen Gebieten Chinas vorkommen. Das Bisamkraut hingegen wächst in Europa, Asien und Nordamerika.\r\nIm März und April blüht es schlicht in hellem Grün. Da es gerne an ähnlichen Orten wächst wie das Busch-Windröschen (Anemone nemorosa) wird es gerne übersehen, weil sie in Größe und Blattform ähnlich sind. Eine genaue Betrachtung lohnt sich, denn in der Geometrie des Blütenaufbaus ist dieses Zärtchen sehr beeindruckend. Mit fünf Blüten bildet es einen Blumen-Würfel mit ca. 5mm kleinen Blüten. Zur Samenreife lässt es den Samenstand hängen, damit dieser den Boden berührt und von Kleintieren gut erreicht werden kann.\r\n\r\nBlicken wir zum Cousin des Bisamkrautes, zum schwarzen Holunder. Diesem wird nachgesagt, in Verbindung mit der mythischen Figur Frau Holle zu stehen. Und wie diese Göttin stellt auch der Holunderbaum einen Sitz der Ahnen und Familien dar. Einen Ort, an welchem die Seelen der Familienmitglieder ruhen können. Dies war einer von vielen Gründen, weshalb ein Holunderbaum vor dem Haus in großer Ehre gehalten wurde.\r\n\r\n**Familiäre Botanikgeschichte**\r\n\r\nMeine Ahnengeschichte, so hat es sich herausgestellt, scheint sich nicht nur im Holunder zu zeigen, sondern auch im einzigen Kräutlein dieser Pflanzenfamilie, dem Bisamkraut. Nämlich durch ein kleines Herbarium, welches Jahrhunderte vom einen Estrich zum anderen gewandert ist, und schlussendlich von einem Botaniker aus der Familie, Peter Zimmermann, aufbereitet wurde: Die Pflanzensammlung für Frieda Egg, Frühling 1878. (Meiner Ur-Ur-Großmutter)\r\n\r\nDiese Pflanzensammlung eröffnet mir einige Bruchstücke aus dem Leben meines Ur-Ur-Ur-Großvaters und meiner Ur-Ur-Großmutter – plötzlich wird eine Familiengeschichte lebendig, ein Relikt aus längst vergangener Zeit:\r\nWir befinden uns in der zweiten Hälfte des 19. Jahrhundert, die Industrialisierung hat bereits begonnen und viele wissenschaftliche Erkenntnisse wie die Evolutionstheorie entststehen. Sie stellen einen starken Gegensatz zu den vorherrschenden religiösen Ansichten dar. Kurz nach der Geburt von Frieda Egg im Jahre 1870 starb ihre Mutter an Tuberkulose. Friedas Vater, Christian Egg, starb an selbiger Krankheit, als Frieda 10 Jahre alt war.\r\n\r\nZwei Jahre vor seinem Tod erstellte Christian Egg mit seiner Tochter zusammen ein kleines Herbarium mit Pflanzen, die in ihrer Umgebung wuchsen. Christian war dazumal bereits krank – ich stelle mir vor, dass er eine Ahnung von seinem Tod hatte und mit seiner Tochter nochmals eine schöne Zeit verbringen wollte. Da Christians Vater und Großvater als „Wurzel und Windpulver Sammler“ arbeiteten, vermute ich, war in der Familie ein breites Pflanzenwissen vorhanden, das er seiner Tochter mitgeben wollte. Frieda war übrigens das erste Mädchen dieser Zeit, welches von Ringgenberg nach Interlaken in die Sekundarschule gehen konnte.\r\n\r\n**Begegnungen in der Jetzt-Zeit**\r\n\r\nIn dieser gemeinsam erstellten Pflanzensammlung mit 38 Kräutern war auch das Bisamkraut aufgeführt. Während der Aufbereitung des Herbars im Jahr 1991 notierte Peter Zimmermann: „Das Herbar enthält für mich überraschend das Moschuskraut (Adoxa moschatinella). Dieses ist wohl über die ganze Schweiz verbreitet, ist aber mit seinen unscheinbaren grünen, würfelförmigen fünfblütigen Blütenstand nur schwer zu erkennen. Ich habe die Pflanze in meinen bisher 30 Sammlerjahren gerade zweimal angetroffen.“\r\n\r\nIch erinnere mich noch gut, wie freudig ich war, als ich an einem Frühlingstag im Jura ganz unverhofft das erste Bisamkraut entdeckte – 150 Jahre nachdem Frieda Egg ihr Blümchen fand. Ich selbst war kürzlich Mutter und leitete einen Kurs über essbare Wildkräuter. Meine Mutter begleitete mich um zum Kind zu schauen, welches ich noch stillte – und mir so diesen Arbeitstag erst ermöglichte. Meine Tochter schlief gerade auf dem Waldboden unter einem Regenschirm, denn es nieselte den ganzen Tag, als unmittelbar neben ihr das Kräutlein blühte. Auch hier erschien das Bisamkraut in einem magischen Moment, der wichtig für meine neue Familie war.\r\n\r\nSo gibt es Pflanzen, welche in der Literatur eher spärlich dokumentiert sind, bei genauem Hinschauen jedoch viele Geschichten eröffnen – oft ganz persönliche. Und so erfreue ich mich jeden Frühling, das Bisamkraut zu begrüßen, ist es doch meine ganz persönliche Ahnenpflanze.\r\n\r\n*Erstveröffentlichung dieses Textes war in der Onlinezeitschrift [Wildpflanzenmagazin](!https://www.essbare-wildpflanzen.de/magazin.html) März 2022*', 400),
(0000000045, 0000000055, '', '', 'Am Samstag 22.4.23 konnten wir in typischem Aprilwetter Wildkräuter für die Küche sammeln. In Oberburg, begleitet vom Botaniker Christian von Pro Natura. Vor Regen geschützt in einem Holz-Tipi, bereiteten wir in Gruppen ein Zvieri daraus vor. Danke allen Beteiligten für euren Einsatz!\r\n\r\nPS: Pro Natura Sektion Unteremmental (bei der ich auch mit dabei bin) sucht Aktive für in den Vorstand. Bei Interesse gerne direkt bei mir melden.', 410),
(0000000046, NULL, 'Künstlerin für das Pflanzenpäckli #28', 'Manuela Lanz', 'Manuela Lanz ist Lebensbegleiterin und Ritualleiterin. Sie geht achtsam und wertschätzend durchs Leben und geniesst den vielfältigen Zugang zu den Menschen. Den Zugang zur Welt der Pflanzen geniesst sie unter anderem durch die Sprache der Farbstifte in botanischen Zeichnungen. \r\n\r\nManuela bietet Lebensbegleitungen, Rituale und Workshops an, um seinen eigenen Weg zu finden. Dafür geht sie achtsam, wertschätzend und Bewusstseins fördernd vor und lässt dem Gegenüber viel Raum zur eigenen Entfaltung. Als ausgebildete spirituelle Sterbebegleiterin bietet sie viel Raum zum Thema Endlichkeit.\r\n\r\nFür die Pflanze im Pflanzenpckli #28 hat sie sich tief mit dem kleinen Kraut auseinander gesetzt, die Pflanze botanisch mit Farbstift und Pigmentliner wiedergegeben, ergänzt mit einer symbolischen Darstellung im Hintergrund.\r\n\r\n[Website Elkaela](!https://elkaela.ch/)', 420),
(0000000047, 0000000064, '', '', 'Die Wildkräuter Tavolata war ein Genuss - für Körper und Seele. Die Stimmung der Besucher*innen war heiter und die Pflanzen, welche auf dem Spaziergang betrachtet wurden, konnten im 3-Gang Menü verkostet werden.\r\n\r\nAnna und mir hat dieses Wochenende im Frühling 2024 so spass gemacht, dass wir es nächstes Jahr wieder durchführen werden - Reserviert euch also das letzte Wochenende im April.', 430),
(0000000048, NULL, 'Rückblick 2024', 'ein Jahresrückblick', 'Die 7. Saison des Pflanzenlabors liegt hinter uns - herzlichen Dank an alle, die daran Teilgenommen haben!', 440),
(0000000049, 0000000070, '', '', 'Die Pflanzenspaziergänge vom Pflanzenlabor gehen zwei Stunden und führen durch natur- oder stadtnahe Gebiete von Bern, oder selten auch mal von Burgdorf. Dabei entstehen jeweils visuelle Artenlisten, gezeichnet durch die Kursteilnehmer*innen, welche in Nacharbeit mit Farbe und wissenschaftlichen Namen ergänzt werden. Hier ein kleiner Ausschnitt, von den unterschiedlichen Pflanzenwahrnehmungen, die dabei entstanden sind - allesamt wunderschön. Danke allen, die mutig waren und den Stift in die Hand nahmen!\r\n\r\nPS: Momentan biete ich die Spaziergänge nur sporadisch an, sie können jedoch auch für geschlossene Gruppen gebucht werden. Bei Interesse gerne kontaktieren.', 450),
(0000000050, NULL, 'Pflanzenpäckli', 'es war ein tolles Projekt', 'Das Projekt der Pflanzenpäckli habe ich vor mehr als 7 Jahren gestartet – im November 2018 wurde das erste Päckli mir der Besenheide (Calluna vulgaris) versendet. Danach folgten 30 weitere Pflanzenportraits. Jeweils mit einem Teesachet ohne Namen, um der Pflanze mit den Sinnen zu begegnen. Gefolgt von weiteren drei Kapiteln, welche auf vielfältige Weise die Pflanze, nun auch mit Name, vorstellte – künstlerisch, sachlich, poetisch und persönlich.\r\nDie Pflanzenpäckli in dieser Form produziere ich nun nicht mehr – die zugrunde liegende Idee entwickelt sich jedoch stets weiter im Pflanzenlabor: Ein Raum, der zu Verbindung mit der Pflanzenwelt einlädt, in persönlicher und individueller Form.\r\n*Ein herzliches Danke an alle, die Teil dieses Projektes waren: Den Abonnent:innen und Schenker:innen der Abos; den Künstler:innen: Lea Fankhauser, Selina Schärer, Ernesto Nicola Nicolai, Pavla Hodulak, Annina Ras, Michael Kühni, Yasemin Günay, Silvan Zurbriggen, Kaspar Bucher, Kaspar Manz, Zora Berweger, Katharina Sheperd-Kobel, Eveline Aschwanden, Sonja Hassold, Romana, Franziska Fahrni-Habegger, Kurt Hostettler (R.I.P.), Sandra Julius, Sarah Lorenzi, Fabienne Bertschinger, Simone Glauser, Anna Schmid, Danja Leimgruber, Maria Magdalena Graber, Sandra Staub, Katharina Bosshard, Manuela Lanz; den Texter:innen: Lea Fankhauser, Nicole Huber, Nicole Häfliger, Romain Gautier, Carmen Hocker, Franziska Oswald, Michael Jutzi; Luca Nicolai für das Layout und die Grafik und Regula Joller, Beatrix Nicolai, Orfeo Nicolai, Simon Maurer, Leyla und Finn für die helfenden Hände und den mentalen Support. DANKE!*\r\n\r\nPsst: Letzte Stücke und Karten können im Onlineshop noch erworben werden.', 460),
(0000000051, NULL, 'Naturtagebuch', 'von Lusi Luchs', '**Stellt euch mal vor:**\r\n\r\nKürzlich war ich mit meinen Kindern Leyla und Finn im Wald und wir sind **Lusi Luchs** begegnet. Lusi, das Luchsenkind, hat uns von seinem grossen Wunsch erzählt: dass wir Menschen wieder mehr in der Natur sind und uns als das fühlen, was wir sind – ein Teil von ihr. Und eine Idee wie umsetzen, lieferte er gleich mit: ein **Naturtagebuch**. Also rausgehen, die Natur beobachten und dokumentieren – mit Schreiben, Malen, Fotografieren, Einkleben, Zählen und was uns sonst noch alles so einfällt. Kurzerhand haben Leyla, Finn und ich beschlossen, den kleinen Luchs bei seinem grossen Wunsch zu unterstützen. Nebst dem Führen unserer eigenen Naturtagebücher, laden wir ALLE ein, selbst ein Naturtagebuch zu kreieren. Egal ob gross oder klein, jung oder alt, allein oder in einer Gruppe. **Alle sind willkommen!** Egal ob regelmässig oder sporadisch, detailgetreu oder abstrakt, ernsthaft oder lustig-verspielt. Alles ist erlaubt!\r\n\r\n\r\n*Und wie du dein Naturtagebuch anlegen sollst?*\r\nDas Wichtigste: Geh hinaus in die Natur, egal ob in idyllischer Landschaft, am Strassenrand oder direkt vor der Haustür. Vielleicht legst du aus Naturmaterialien ein Mandala und klebst ein Foto davon ins Naturtagebuch. Oder du lauschst den Vogelstimmen und notierst sie in Noten oder Farbflecken. Vielleicht betrachtest du eine Pflanze ganz genau und zeichnest sie ab oder du beobachtest in den nächsten Wochen wie sich ein Baum verändert. **Einfach starten**, egal wie – lass dich treiben und inspirieren, experimentiere, beobachte, sei mittendrin und sei neugierig!\r\n\r\n\r\n*Lusi Luchs hat sich auch etwas ausgedacht, um dich dabei zusätzlich zu motivieren:*\r\nHie und da werden wir dir ein paar **Inspirationen** von Lusi Luchs via Mail weiterleiten. **Damit das klappt: schicke dem Pflanzenlabor dafür deine Mailadresse**.\r\n\r\n*Psst: Für dein Naturtagebuch wirst du etwas erhalten!*\r\nDafür brauchst du dein Naturtagebuch bloss bis am **31. Oktober** an Lusi Luchs zu schicken. Er wird jedes anschauen und sein Lieblingsstück mit einen Preis versehen. Natürlich werden alle Naturtagebücher wieder zurückgesendet, und natürlich wird bei jedem ein kleines Dankeschön-Geschenk beiliegen.\r\n\r\n**Hast du Bekannte, die bei diesem Projekt vielleicht auch mitmachen möchten? Super! Erzähl ihnen von Lusi Luchs\' Idee, damit es noch viel mehr Naturtagebücher gibt!**\r\n\r\n\r\nSo, nun wollen wir noch die gepressten Blumen vom letzten Spaziergang einkleben und wünschen dir einen entdeckungsreichen Start mit den ersten Seiten deines Naturtagebuchs!\r\n\r\nLiebe Grüsse\r\nLeyla, Finn, Giovina\r\nund – aus dem Wald winkend – Lusi Luchs\r\n\r\n\r\nGesponsert, übrigens, wird dieses Naturtagebuch-Projekt vom Pflanzenlabor. Dort kannst du dich auch melden, falls du Fragen zum Naturtagebuch hast.\r\n\r\n', 470),
(0000000052, NULL, 'Naturtagebuch', 'Sommerinspiration', 'Lusi Luchs das Luchsenkind tänzelt vor Freude im Wald herum - aus Freude über die Rückmeldungen und die gestarteten Naturtagebücher!\r\nWer die Sommerinspiration zum Naturtagebuch von Lusi Luchs via Mail erhalten möchte, kann sich via **info<at>pflanzenlabor.ch** mit **\"JA NATURTAGEBUCH\"** anmelden. Eine detailiertere Beschreibung über das Projekt des Naturtagebuchs findest du im vergangenen Impressionen Beitrag.', 480),
(0000000053, NULL, 'Naturtagebuch', 'Herbstinspiration', 'Es herbstet und bis Ende Oktober kannst du dein Naturtagebuch Lusi Luchs zeigen - und dafür erhältst du ein kleines Mitmachgeschenk sowie eine Teilnahmeurkunde. Wie das funktioniert, erfährst du im aktuellen Newsletter von Lusi Luchs. Melde dich dafür im Pflanzenlabor-Newsletter an mit dem Kommentar \"Naturtagebuch\".\r\n\r\nLusi Luchs freut sich schon riesig, auf die eintreffenden Bücher und ist fleissig am Geschenke basteln. Unterdessen hier ein kleiner Einblick in die Herbstinspiration des aktuellen Newsletters und einige Naturtagebuch Einträge.', 490);

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

--
-- Dumping data for table `impressions_content`
--

INSERT INTO `impressions_content` (`id`, `id_impressions`, `name`, `id_type`, `position`) VALUES
(0000000007, 0000000003, 'Schwarzdorn_herbs', 0000000003, 1),
(0000000008, 0000000003, 'Schwarzdorn_esther', 0000000004, 7),
(0000000009, 0000000003, 'Schwarzdorn_bark', 0000000003, 3),
(0000000010, 0000000003, 'Schwarzdorn_bud', 0000000003, 4),
(0000000011, 0000000003, 'Schwarzdorn_pot', 0000000003, 5),
(0000000012, 0000000003, 'Schwarzdorn_ink', 0000000003, 6),
(0000000013, 0000000004, 'Brennnessel_giancarlo', 0000000004, 3),
(0000000014, 0000000004, 'Brennnessel_plant', 0000000003, 2),
(0000000015, 0000000004, 'Brennnessel_food', 0000000003, 1),
(0000000016, 0000000005, 'Holunder-Bluete', 0000000003, 1),
(0000000017, 0000000005, 'Holunder-Braeteln', 0000000003, 2),
(0000000018, 0000000005, 'Holunder-Salz', 0000000003, 3),
(0000000019, 0000000005, 'Holunder-zupfen', 0000000003, 4),
(0000000020, 0000000005, 'Holunder-Kuchen', 0000000003, 5),
(0000000021, 0000000005, 'Holunder-Backofen', 0000000003, 6),
(0000000022, 0000000006, 'Teestrauss', 0000000003, 1),
(0000000023, 0000000006, 'Teestrauss Detail', 0000000003, 3),
(0000000024, 0000000006, 'Teestrauss-Annkatrin', 0000000004, 4),
(0000000025, 0000000007, 'Goldrute-Gri', 0000000004, 7),
(0000000026, 0000000007, 'Goldrute Rezept', 0000000003, 4),
(0000000027, 0000000007, 'Goldrute Karten', 0000000003, 6),
(0000000028, 0000000007, 'Goldrute-Rosmarie', 0000000003, 5),
(0000000029, 0000000007, 'Goldrute Echte', 0000000003, 2),
(0000000030, 0000000007, 'Goldrute kochen', 0000000003, 3),
(0000000031, 0000000008, 'B-Samen-1', 0000000003, 1),
(0000000032, 0000000008, 'B-Samen-2', 0000000003, 2),
(0000000033, 0000000008, 'B-Samen-3', 0000000003, 3),
(0000000034, 0000000008, 'B-Samen-4', 0000000003, 4),
(0000000035, 0000000008, 'B-Samen-5-Zitat', 0000000004, 10),
(0000000036, 0000000008, 'B-Samen-6', 0000000003, 6),
(0000000037, 0000000008, 'B-Samen-7', 0000000003, 7),
(0000000038, 0000000008, 'B-Samen-8', 0000000003, 8),
(0000000039, 0000000008, 'B-Samen-9', 0000000003, 9),
(0000000040, 0000000009, 'LZ-EX-19-Junge Blätter\r\n', 0000000003, 1),
(0000000041, 0000000009, 'LZ-EX-19-Am Wasser\r\n', 0000000003, 2),
(0000000042, 0000000009, 'LZ-EX-19-Frische Wurzeln\r\n', 0000000003, 3),
(0000000043, 0000000009, 'LZ-EX-19-Schneiden\r\n', 0000000003, 4),
(0000000044, 0000000009, 'LZ-EX-19-Schneiden Hand\r\n', 0000000003, 5),
(0000000045, 0000000009, 'LZ-EX-19-Getrocknete Wurzeln\r\n', 0000000003, 6),
(0000000046, 0000000009, 'LZ-EX-19-Rösten\r\n', 0000000003, 7),
(0000000047, 0000000009, 'LZ-EX-19-Salat\r\n', 0000000003, 8),
(0000000048, 0000000009, 'LZ-EX-19-Zitat Bettina\r\n', 0000000004, 9),
(0000000049, 0000000010, 'Schwarzdorn-Bl-19-1 Busch\r\n', 0000000003, 2),
(0000000050, 0000000010, 'Schwarzdorn-Bl-19-2 Gruppe\r\n', 0000000003, 3),
(0000000051, 0000000010, 'Schwarzdorn-Bl-19-3 Essen\r\n', 0000000003, 4),
(0000000052, 0000000010, 'Schwarzdorn-Bl-19-4 Drinkmaking\r\n', 0000000003, 5),
(0000000053, 0000000010, 'Schwarzdorn-Bl-19-5 Drink', 0000000003, 6),
(0000000054, 0000000010, 'Schwarzdorn-Bl-19-5 Gedicht', 0000000004, 1),
(0000000055, 0000000011, 'Waldm-19-5-4_1.png - Waldmeister', 0000000003, 1),
(0000000056, 0000000011, 'Zitat Edith', 0000000004, 10),
(0000000057, 0000000011, 'Waldm-19-5-4_3.png - ernten\r\n', 0000000003, 3),
(0000000058, 0000000011, 'Waldm-19-5-4_4.png - Strauss', 0000000003, 4),
(0000000059, 0000000011, 'Waldm-19-5-4_5.png - Platzli\r\n', 0000000003, 5),
(0000000060, 0000000011, 'Waldm-19-5-4_6.png - Trocknen', 0000000003, 6),
(0000000061, 0000000011, 'Waldm-19-5-4_7.png - Bowle ansetzen', 0000000003, 7),
(0000000062, 0000000011, 'Waldm-19-5-4_8.png - Werkstatt', 0000000003, 8),
(0000000063, 0000000011, 'Waldm-19-5-4_9.png - Apero', 0000000003, 9),
(0000000064, 0000000013, 'Ulli-19-1_600.png - Wald', 0000000003, 1),
(0000000065, 0000000013, 'Ulli-19-2_600.png - Flyer', 0000000003, 2),
(0000000066, 0000000013, 'Ulli-19-3_600.png - Ulli', 0000000003, 3),
(0000000067, 0000000013, 'Ulli-19-4_600.png - Notiz', 0000000003, 4),
(0000000068, 0000000013, 'Ulli-19-5_600.png - schneiden', 0000000003, 5),
(0000000069, 0000000013, 'Ulli-19-6_600.png - Oel', 0000000003, 6),
(0000000070, 0000000014, 'Nachbars Kinder und Nachbars Holunder, bannest du nie auf Dauer; schliessest du hnen die Türe, oh Wu', 0000000004, 9),
(0000000071, 0000000014, 'Holunder-19-1_600.png - Beeren', 0000000003, 1),
(0000000072, 0000000014, 'Holunder-19-2_600.png - Ernten', 0000000003, 2),
(0000000073, 0000000014, 'Holunder-19-3_600.png - Tisch', 0000000003, 3),
(0000000074, 0000000014, 'Holunder-19-4_600.png - Infus', 0000000003, 4),
(0000000075, 0000000014, 'Holunder-19-5_600.png - Rezeptur', 0000000003, 5),
(0000000076, 0000000014, 'Holunder-19-6_600.png - Preparieren', 0000000003, 6),
(0000000077, 0000000014, 'Holunder-19-7_600.png - Oxymel', 0000000003, 7),
(0000000078, 0000000014, 'Holunder-19-8_600.png - Elixier', 0000000003, 8),
(0000000079, 0000000015, 'Aventurische Boten', 0000000003, 0),
(0000000080, 0000000015, 'Aventurischer Bote 1', 0000000003, 10),
(0000000081, 0000000015, 'Aventurischer Bote 2', 0000000003, 20),
(0000000082, 0000000015, 'Aventurischer Bote 3', 0000000003, 30),
(0000000083, 0000000015, 'Aventurischer Bote 4', 0000000003, 40),
(0000000084, 0000000015, 'Jaguarlilie', 0000000003, 80),
(0000000085, 0000000015, 'Buch 1', 0000000003, 60),
(0000000086, 0000000015, 'Buch 2', 0000000003, 70),
(0000000087, 0000000015, 'Buch Titel', 0000000003, 50),
(0000000088, 0000000016, 'Schafgarbe', 0000000003, 0),
(0000000089, 0000000016, 'Ernte', 0000000003, 30),
(0000000090, 0000000016, 'Buntbrache', 0000000003, 20),
(0000000091, 0000000016, 'Lippenstift', 0000000003, 40),
(0000000092, 0000000016, 'Maisfeld', 0000000003, 10),
(0000000093, 0000000016, 'Joslyn', 0000000004, 50),
(0000000094, 0000000017, 'Tisch', 0000000003, 0),
(0000000095, 0000000017, 'Mörser', 0000000003, 10),
(0000000096, 0000000017, 'Räucherkugel', 0000000003, 20),
(0000000097, 0000000018, 'März', 0000000003, 20),
(0000000098, 0000000018, 'April', 0000000003, 30),
(0000000099, 0000000018, 'Mai', 0000000003, 40),
(0000000100, 0000000018, 'Juni', 0000000003, 60),
(0000000101, 0000000018, 'August', 0000000003, 70),
(0000000102, 0000000018, 'September', 0000000003, 90),
(0000000103, 0000000018, 'Dezember', 0000000003, 120),
(0000000104, 0000000018, 'Frühlingsstreifzüge', 0000000003, 10),
(0000000105, 0000000018, 'Sommerbummel', 0000000003, 50),
(0000000106, 0000000018, 'Herbstpromenade', 0000000003, 80),
(0000000107, 0000000018, 'Lagerfeuer', 0000000003, 127),
(0000000108, 0000000018, 'Pflanzenpäckli', 0000000003, 0),
(0000000109, 0000000018, 'Hopfen - BoGa Bern', 0000000003, 100),
(0000000110, 0000000018, 'Märchen - BoGa Bern', 0000000003, 127),
(0000000111, 0000000018, 'Destillieren - Ulli', 0000000003, 110),
(0000000112, 0000000019, 'Pflanzenpäckli per Post zugestellt', 0000000003, 0),
(0000000113, 0000000019, 'Erfahren: unbekannter Tee trinken', 0000000003, 10),
(0000000114, 0000000019, 'Befassen: betrachten, ausmalen, annähern', 0000000003, 20),
(0000000115, 0000000019, 'Informieren: Name und Facts lesen', 0000000003, 30),
(0000000116, 0000000019, 'Vertiefen: Detailinformation und künstlerische Interpretation', 0000000003, 40),
(0000000117, 0000000019, 'Feedback', 0000000004, 50),
(0000000118, 0000000020, 'Zitat Trix', 0000000004, 0),
(0000000119, 0000000020, 'Aloe Bild', 0000000003, 10),
(0000000120, 0000000020, 'Aloe Gel', 0000000003, 20),
(0000000121, 0000000021, 'Plakat für Transhelvetica', 0000000003, 0),
(0000000122, 0000000021, 'Seite aus „Mani Matter Liederbuch“', 0000000003, 10),
(0000000123, 0000000021, 'Illustration „Chaumont“', 0000000003, 20),
(0000000124, 0000000022, 'Brauübersicht', 0000000003, 0),
(0000000125, 0000000022, 'Schroten', 0000000003, 10),
(0000000126, 0000000022, 'Maischen', 0000000003, 20),
(0000000127, 0000000022, 'IZE', 0000000003, 30),
(0000000128, 0000000022, 'brautheorie', 0000000003, 40),
(0000000129, 0000000022, 'Gärtank', 0000000003, 50),
(0000000130, 0000000023, '04', 0000000003, 0),
(0000000131, 0000000023, '05', 0000000003, 10),
(0000000132, 0000000023, '06', 0000000003, 20),
(0000000133, 0000000024, 'Aargauer-1', 0000000003, 20),
(0000000134, 0000000024, 'Aargauer-2', 0000000003, 10),
(0000000135, 0000000024, 'Aargauer-3', 0000000003, 0),
(0000000136, 0000000024, 'Aargauer-4', 0000000003, 40),
(0000000137, 0000000024, 'Aargauer-5', 0000000003, 30),
(0000000138, 0000000024, 'Aargauer-6', 0000000003, 50),
(0000000139, 0000000025, 'Thymian Hydrolat', 0000000003, 0),
(0000000140, 0000000025, 'Destille', 0000000003, 0),
(0000000141, 0000000025, 'Lavendel', 0000000003, 20),
(0000000142, 0000000026, 'Kunst-1', 0000000003, 0),
(0000000143, 0000000026, 'Kunst-2', 0000000003, 10),
(0000000144, 0000000026, 'Infokarte', 0000000003, 20),
(0000000145, 0000000026, 'Linoschnitt', 0000000003, 30),
(0000000146, 0000000026, 'Linokarte', 0000000003, 40),
(0000000147, 0000000026, 'Linodetail', 0000000003, 50),
(0000000148, 0000000027, 'Alle', 0000000003, 0),
(0000000149, 0000000027, 'Schwarzdorn', 0000000003, 10),
(0000000150, 0000000027, 'Gio', 0000000003, 20),
(0000000151, 0000000028, 'Skizze', 0000000003, 0),
(0000000152, 0000000028, 'Rauchern Trix', 0000000003, 30),
(0000000153, 0000000028, 'Rauchern Gio', 0000000003, 50),
(0000000154, 0000000028, 'Zitat Mary', 0000000004, 40),
(0000000155, 0000000028, 'Schachteln', 0000000003, 10),
(0000000156, 0000000028, 'Kugeln machen', 0000000003, 20),
(0000000157, 0000000029, 'Gio Wabräu', 0000000003, 0),
(0000000158, 0000000029, 'Andrea Schroten', 0000000003, 10),
(0000000159, 0000000029, 'Einmaischen', 0000000003, 20),
(0000000160, 0000000029, 'Gio Erika', 0000000003, 30),
(0000000161, 0000000029, 'Zitat Andrea', 0000000004, 40),
(0000000162, 0000000029, 'Brot', 0000000003, 50),
(0000000163, 0000000030, 'nähen und planen', 0000000003, 0),
(0000000164, 0000000030, 'Goldrute jäten und ernten', 0000000003, 20),
(0000000165, 0000000030, 'Goldrute jäten und ernten', 0000000003, 30),
(0000000167, 0000000030, 'Brachareal Burgdorf', 0000000003, 10),
(0000000168, 0000000030, 'Einkochen', 0000000003, 60),
(0000000169, 0000000030, 'Zmittagpause', 0000000003, 50),
(0000000170, 0000000030, 'Farbbeispiele', 0000000003, 70),
(0000000171, 0000000030, 'Tragtasche und Furoshikituch', 0000000003, 80),
(0000000172, 0000000030, 'Andi', 0000000004, 40),
(0000000173, 0000000031, 'Birke', 0000000003, 0),
(0000000174, 0000000031, 'Gundelrebe', 0000000003, 10),
(0000000175, 0000000031, 'Brombeere', 0000000003, 20),
(0000000176, 0000000031, 'Mädesüss', 0000000003, 30),
(0000000177, 0000000031, 'Heidekraut', 0000000003, 40),
(0000000178, 0000000031, 'Holunder', 0000000003, 50),
(0000000179, 0000000032, 'Brauevent-Werbung', 0000000003, 0),
(0000000180, 0000000032, 'Alle am brauen', 0000000003, 10),
(0000000181, 0000000032, 'Hefe', 0000000003, 20),
(0000000182, 0000000032, 'Sud klären', 0000000003, 30),
(0000000183, 0000000032, 'Marcel', 0000000004, 40),
(0000000184, 0000000032, 'Würze kochen', 0000000003, 50),
(0000000185, 0000000032, 'Mitten im Brauen', 0000000003, 60),
(0000000186, 0000000032, 'Degu', 0000000003, 70),
(0000000187, 0000000032, 'Treberbrot', 0000000003, 80),
(0000000188, 0000000033, 'Energiekugel-2', 0000000003, 50),
(0000000189, 0000000033, 'Energiekugel-1', 0000000003, 40),
(0000000190, 0000000033, 'Wald-1', 0000000003, 0),
(0000000191, 0000000033, 'Wald-2', 0000000003, 10),
(0000000192, 0000000033, 'Brennnessel-Chips-1', 0000000003, 20),
(0000000193, 0000000033, 'Brennnessel-Chips-2', 0000000003, 30),
(0000000194, 0000000034, 'Lowenzahn Mauer', 0000000003, 0),
(0000000195, 0000000034, 'Lowenzahn Ernte', 0000000003, 10),
(0000000196, 0000000034, 'Lowenzahn Verarbeitung', 0000000003, 20),
(0000000197, 0000000034, 'Lowenzahn Elixier', 0000000003, 30),
(0000000198, 0000000034, 'Lowenzahn Marchen', 0000000003, 40),
(0000000199, 0000000034, 'Lowenzahn Illu', 0000000003, 50),
(0000000200, 0000000035, 'Titel', 0000000003, 0),
(0000000201, 0000000035, 'Intro', 0000000003, 10),
(0000000202, 0000000035, 'Befassen', 0000000003, 30),
(0000000203, 0000000035, 'Erfahren', 0000000003, 20),
(0000000204, 0000000035, 'Informieren', 0000000003, 40),
(0000000205, 0000000035, 'Vertiefen', 0000000003, 50),
(0000000206, 0000000035, 'Fotos', 0000000003, 60),
(0000000207, 0000000035, 'Tee trinken', 0000000003, 70),
(0000000208, 0000000035, 'PP-Tilia-Foto.jpg', 0000000003, 80),
(0000000209, 0000000036, 'Räucherkugel', 0000000003, 30),
(0000000210, 0000000036, 'Set Skizze', 0000000003, 40),
(0000000211, 0000000036, 'Räucherkugel herstellen', 0000000003, 20),
(0000000212, 0000000036, 'Mischung vorbereiten', 0000000003, 0),
(0000000213, 0000000036, 'mögliche Aufbewahrung', 0000000003, 50),
(0000000214, 0000000036, 'Zitat', 0000000004, 10),
(0000000215, 0000000037, 'Baby - 9', 0000000003, 0),
(0000000216, 0000000037, 'Jung Adult - 8', 0000000003, 30),
(0000000217, 0000000037, 'Mutterpflanze - 3', 0000000003, 80),
(0000000218, 0000000037, 'Jung Adult - 6', 0000000003, 20),
(0000000219, 0000000037, 'Jung Adult - 2', 0000000003, 10),
(0000000220, 0000000037, 'Adult - 7', 0000000003, 70),
(0000000221, 0000000037, 'Adult - 1', 0000000003, 40),
(0000000222, 0000000037, 'Adult - 4', 0000000003, 50),
(0000000223, 0000000037, 'Adult - 5', 0000000003, 60),
(0000000224, 0000000038, 'Schlüsselblume', 0000000003, 0),
(0000000225, 0000000038, 'Aronstab und Bärlauch', 0000000003, 10),
(0000000226, 0000000038, 'Busch-Windröschen', 0000000003, 20),
(0000000227, 0000000039, '1', 0000000003, 0),
(0000000228, 0000000039, '2', 0000000003, 10),
(0000000229, 0000000039, '3', 0000000003, 20),
(0000000230, 0000000039, '4', 0000000003, 30),
(0000000231, 0000000039, '5', 0000000003, 50),
(0000000232, 0000000039, '6', 0000000004, 40),
(0000000233, 0000000039, '7', 0000000003, 60),
(0000000234, 0000000039, '8', 0000000003, 70),
(0000000235, 0000000039, '9', 0000000003, 110),
(0000000236, 0000000040, 'Gruppe-1', 0000000003, 0),
(0000000237, 0000000040, 'Gruppe-2', 0000000003, 20),
(0000000238, 0000000040, 'Ulli', 0000000004, 10),
(0000000239, 0000000039, 'Abfüllen', 0000000003, 80),
(0000000240, 0000000039, 'Caping', 0000000003, 90),
(0000000241, 0000000039, 'Flaschen', 0000000003, 100),
(0000000242, 0000000041, 'Fig 04', 0000000003, 0),
(0000000243, 0000000041, 'Fig 05', 0000000003, 10),
(0000000244, 0000000041, 'Fig 06', 0000000003, 20),
(0000000245, 0000000042, 'Klatschmohn', 0000000003, 0),
(0000000246, 0000000042, 'Gundelrebe', 0000000003, 10),
(0000000247, 0000000042, 'Schachtelhalm', 0000000003, 20),
(0000000248, 0000000042, 'Möhre', 0000000003, 30),
(0000000249, 0000000042, 'Zitat', 0000000004, 40),
(0000000250, 0000000042, 'malve', 0000000003, 50),
(0000000251, 0000000043, 'Hopfenbluete', 0000000003, 0),
(0000000252, 0000000043, 'Hopfenzapfen', 0000000003, 10),
(0000000253, 0000000043, 'Hopfenernte-Detail', 0000000003, 20),
(0000000254, 0000000043, 'Hopfenernte', 0000000003, 30),
(0000000255, 0000000043, 'Hopfenharz', 0000000003, 40),
(0000000256, 0000000043, 'Hopfentee', 0000000003, 50),
(0000000257, 0000000044, 'Bisamkraut und Buschwindröschen', 0000000003, 30),
(0000000258, 0000000044, 'Bisamkraut auf Papier', 0000000003, 0),
(0000000259, 0000000044, 'Buschwindröschen auf Papier', 0000000003, 10),
(0000000260, 0000000044, 'Frieda als Kind', 0000000003, 40),
(0000000261, 0000000044, 'Herbar', 0000000003, 50),
(0000000262, 0000000044, 'Steckbrief', 0000000004, 20),
(0000000263, 0000000045, '1', 0000000003, 0),
(0000000264, 0000000045, '2', 0000000003, 10),
(0000000265, 0000000045, '3', 0000000003, 20),
(0000000266, 0000000045, '4', 0000000003, 30),
(0000000267, 0000000045, '5', 0000000003, 40),
(0000000268, 0000000045, '6', 0000000003, 50),
(0000000269, 0000000045, '7', 0000000003, 60),
(0000000270, 0000000045, '8', 0000000003, 70),
(0000000271, 0000000045, '9', 0000000003, 80),
(0000000272, 0000000046, 'Foto Manuela', 0000000003, 0),
(0000000273, 0000000046, 'Bildausschnitt Hexenkraut', 0000000003, 10),
(0000000274, 0000000046, 'Föhrenzapfen', 0000000003, 20),
(0000000275, 0000000047, '1', 0000000003, 0),
(0000000276, 0000000047, '2', 0000000003, 10),
(0000000277, 0000000047, '3', 0000000003, 20),
(0000000278, 0000000047, '4', 0000000003, 30),
(0000000279, 0000000047, '5', 0000000003, 40),
(0000000280, 0000000047, '6', 0000000003, 50),
(0000000281, 0000000047, '7', 0000000003, 60),
(0000000282, 0000000047, '8', 0000000003, 70),
(0000000283, 0000000047, '9', 0000000003, 80),
(0000000284, 0000000048, 'Fest der 5 Elemente', 0000000003, 0),
(0000000285, 0000000048, 'Gundelreben Bock', 0000000003, 10),
(0000000286, 0000000048, 'Tavolata', 0000000003, 20),
(0000000287, 0000000048, 'Aqui Sinneswahrnehmung', 0000000003, 30),
(0000000288, 0000000048, 'Kreislauf der 5 Elemente', 0000000003, 40),
(0000000289, 0000000048, 'Erika Ale', 0000000003, 50),
(0000000290, 0000000048, 'Eldermothers Blood', 0000000003, 60),
(0000000291, 0000000048, 'Rauhnächte WS', 0000000003, 70),
(0000000292, 0000000048, 'Aqui Winter', 0000000003, 80),
(0000000293, 0000000048, 'Pflanzenpäckli', 0000000003, 90),
(0000000294, 0000000048, 'Räucherkugeln', 0000000003, 100),
(0000000295, 0000000048, 'Pflanzenfreund', 0000000003, 110),
(0000000296, 0000000049, 'Überblick', 0000000003, 0),
(0000000297, 0000000049, 'Überblick', 0000000003, 10),
(0000000298, 0000000049, 'Überblick', 0000000003, 20),
(0000000299, 0000000049, 'Überblick', 0000000003, 30),
(0000000300, 0000000049, 'Zitat', 0000000004, 40),
(0000000301, 0000000049, 'Überblick', 0000000003, 50),
(0000000302, 0000000049, 'Überblick', 0000000003, 60),
(0000000303, 0000000049, 'Überblick', 0000000003, 70),
(0000000304, 0000000049, 'Überblick', 0000000003, 80),
(0000000305, 0000000050, 'Pflanzenpäckli-1', 0000000003, 0),
(0000000306, 0000000050, 'Feedback', 0000000004, 10),
(0000000307, 0000000050, 'Feedback 2', 0000000004, 40),
(0000000308, 0000000050, 'Pflanzenpäckli 3', 0000000003, 20),
(0000000309, 0000000050, 'Pflanzenpäckli 4', 0000000003, 30),
(0000000310, 0000000050, 'Pflanzenpäckli ende', 0000000003, 50),
(0000000311, 0000000051, 'Finn Baum', 0000000003, 0),
(0000000312, 0000000051, 'Finn Kaulquappe', 0000000003, 10),
(0000000313, 0000000051, 'Finn Regenbogen', 0000000003, 20),
(0000000314, 0000000051, 'Leyla Schlange', 0000000003, 30),
(0000000315, 0000000051, 'Leyla Schmetterling', 0000000003, 40),
(0000000316, 0000000051, 'Leyla Kleeblatt', 0000000003, 50),
(0000000317, 0000000051, 'Gio Salbei', 0000000003, 60),
(0000000318, 0000000051, 'Gio Merkurialis', 0000000003, 70),
(0000000319, 0000000051, 'Gio Aronstab', 0000000003, 80),
(0000000320, 0000000052, 'Holunder', 0000000003, 0),
(0000000321, 0000000052, 'Zitat', 0000000004, 10),
(0000000322, 0000000052, 'Ahorn Trix', 0000000003, 20),
(0000000323, 0000000053, 'Vögel', 0000000003, 20),
(0000000324, 0000000053, 'Pilz', 0000000003, 10),
(0000000325, 0000000053, 'Inspiration', 0000000003, 0),
(0000000326, 0000000053, 'Tiger', 0000000003, 30),
(0000000327, 0000000053, 'toll', 0000000004, 40),
(0000000328, 0000000053, 'ufer', 0000000003, 50);

-- --------------------------------------------------------

--
-- Table structure for table `impressions_content_type`
--

CREATE TABLE `impressions_content_type` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `impressions_content_type`
--

INSERT INTO `impressions_content_type` (`id`, `name`) VALUES
(0000000003, 'image'),
(0000000004, 'cite');

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

--
-- Dumping data for table `impressions_fields`
--

INSERT INTO `impressions_fields` (`id`, `id_impressions_content`, `content`, `id_type`) VALUES
(0000000012, 0000000007, 'Schwarzdorn-Impr-18-1_500x500.png', 0000000005),
(0000000013, 0000000007, 'Gesammelte Frühlingskräuter', 0000000006),
(0000000014, 0000000008, '\"Es ist schön deine Freude und Begeisterung zu spüren und den Raum den du dir und uns dafür gibst, so vielfältig die Welt dieser Pflanze kennen zu lernen und zu erfahren.\"', 0000000007),
(0000000015, 0000000008, 'Esther', 0000000008),
(0000000016, 0000000009, 'Schwarzdorn-Impr-18-2_500x500.png', 0000000005),
(0000000017, 0000000009, 'Schwarzdornrinde präparieren', 0000000006),
(0000000018, 0000000010, 'Schwarzdorn-Impr-18-3_500x500.png', 0000000005),
(0000000019, 0000000010, 'Schwarzdorn Knospen', 0000000006),
(0000000020, 0000000011, 'Schwarzdorn-Impr-18-4_500x500.png', 0000000005),
(0000000021, 0000000011, 'Schwarzdorntinte kochen', 0000000006),
(0000000022, 0000000012, 'Schwarzdorn-Impr-18-5_500x500.png', 0000000005),
(0000000023, 0000000012, 'Schwarzdorntinte', 0000000006),
(0000000024, 0000000015, 'Brennnessel-Impr-18-1_500x500.png', 0000000005),
(0000000025, 0000000015, 'Z\'mittag mit Brennnesselbällchen', 0000000006),
(0000000026, 0000000013, '\"Es war sehr schön für mich - und sehr lehrreich - im Pflanzenlabor bei dir. Die Art, wie du uns zur Achtsamkeit auf die Pflanze und ihr Umfeld führst, ist sehr schön. Sehr gerne komme ich noch an weitere Labors :-)\"', 0000000007),
(0000000027, 0000000013, 'Giancarlo', 0000000008),
(0000000028, 0000000014, 'Brennnessel-Impr-18-2_500x500.png', 0000000005),
(0000000029, 0000000014, 'Brennnessel im Frühling', 0000000006),
(0000000030, 0000000021, 'Holunderkuchen im Backofen', 0000000006),
(0000000031, 0000000016, 'Holunderblüten', 0000000006),
(0000000032, 0000000017, 'Bräteln', 0000000006),
(0000000033, 0000000020, 'Holunderblütenkuchen', 0000000006),
(0000000034, 0000000018, 'Vorbereiten für Salzmischung', 0000000006),
(0000000035, 0000000019, 'Holunderblüten zupfen', 0000000006),
(0000000036, 0000000021, 'Holunder-18-6_500.png', 0000000005),
(0000000037, 0000000016, 'Holunder-18-1_500.png', 0000000005),
(0000000038, 0000000017, 'Holunder-18-2_500.png', 0000000005),
(0000000039, 0000000020, 'Holunder-18-5_500.png', 0000000005),
(0000000040, 0000000018, 'Holunder-18-3_500.png', 0000000005),
(0000000041, 0000000019, 'Holunder-18-4_500.png', 0000000005),
(0000000042, 0000000022, 'Spaziergang-18-1_500.png', 0000000005),
(0000000043, 0000000023, 'Spaziergang-18-3_500.png', 0000000005),
(0000000044, 0000000024, '\"Ich genoss den abendlichen Spaziergang sehr. Gerade auch, weil es so selten geworden ist, diese Stunden, wo keine Pflichten erledigt werden müssen, sondern einfach Zeit für dieses eine Vorhaben und offen sein für das, was einem begegnet. Ich liebe das.\"', 0000000007),
(0000000045, 0000000024, 'Annkatrin', 0000000008),
(0000000046, 0000000022, 'Teesträusse', 0000000006),
(0000000047, 0000000023, 'Teesträusse', 0000000006),
(0000000048, 0000000025, '\"No einisch äs grosses Dankeschön für ä Goldruetekurs. Äs het ume einisch meh gfägt, isch spannend gsi u sehr informativ. Mis Komplimänt.\"', 0000000007),
(0000000049, 0000000025, 'Gri', 0000000008),
(0000000050, 0000000027, 'Postkarten mit Goldrutengelb', 0000000006),
(0000000051, 0000000026, 'Rezept und \"Pinsel\" für Goldrutenfarbe', 0000000006),
(0000000052, 0000000027, 'Goldrute-18-6_500.png', 0000000005),
(0000000053, 0000000026, 'Goldrute-18-4_500.png', 0000000005),
(0000000054, 0000000028, 'Goldrute-18-R_500.png', 0000000005),
(0000000055, 0000000029, 'Goldrute-18-2_500.png', 0000000005),
(0000000056, 0000000030, 'Goldrute-18-3_500.png', 0000000005),
(0000000057, 0000000028, 'Am Postkarten kreieren', 0000000006),
(0000000058, 0000000029, 'Echte Goldrute', 0000000006),
(0000000059, 0000000030, 'Erstellen des Farbstoffes', 0000000006),
(0000000060, 0000000031, 'Werkstatt auf Buchen-Baumstrunk', 0000000006),
(0000000061, 0000000032, 'Salzmischung zubereiten', 0000000006),
(0000000062, 0000000033, 'Brennnesselsamen Dip herstellen', 0000000006),
(0000000063, 0000000034, 'Brennnesselsamen', 0000000006),
(0000000064, 0000000036, 'Brennnesselsamen Dip', 0000000006),
(0000000065, 0000000037, 'Werkstatt im Wald', 0000000006),
(0000000066, 0000000039, 'Werkstatt im Wald', 0000000006),
(0000000067, 0000000038, 'Brennnesseltee', 0000000006),
(0000000068, 0000000031, 'BSamen-18-1_500.png', 0000000005),
(0000000069, 0000000032, 'BSamen-18-2_500.png', 0000000005),
(0000000070, 0000000033, 'BSamen-18-3_500.png', 0000000005),
(0000000071, 0000000034, 'BSamen-18-4_500.png', 0000000005),
(0000000072, 0000000036, 'BSamen-18-6_500.png', 0000000005),
(0000000073, 0000000037, 'BSamen-18-7_500.png', 0000000005),
(0000000074, 0000000038, 'BSamen-18-8_500.png', 0000000005),
(0000000075, 0000000039, 'BSamen-18-9_500.png', 0000000005),
(0000000076, 0000000035, 'Beatrix', 0000000008),
(0000000077, 0000000035, '\"Es war ein so schöner, anregender Nachmittag in diesem lauschigen Wald!\"', 0000000007),
(0000000078, 0000000044, 'LZ-EX-19-05-500.png', 0000000005),
(0000000079, 0000000043, 'LZ-EX-19-04-500.png', 0000000005),
(0000000080, 0000000047, 'LZ-EX-19-08-500.png', 0000000005),
(0000000081, 0000000046, 'LZ-EX-19-07-500.png', 0000000005),
(0000000082, 0000000040, 'LZ-EX-19-01-500.png', 0000000005),
(0000000083, 0000000045, 'LZ-EX-19-06-500.png', 0000000005),
(0000000084, 0000000042, 'LZ-EX-19-03-500.png', 0000000005),
(0000000085, 0000000048, '\"wir hatten ja vielleicht wetterglück, gestern!\r\ndanke für den lehrreichen und beschaulichen tag.\"', 0000000007),
(0000000086, 0000000041, 'LZ-EX-19-02-500.png', 0000000005),
(0000000087, 0000000044, 'Löwenzahnwurzeln schneiden', 0000000006),
(0000000088, 0000000043, 'An der Sonne Wurzeln schneiden', 0000000006),
(0000000089, 0000000047, 'Kartoffelsalat mit Löwenzahnblätter', 0000000006),
(0000000090, 0000000046, 'Rösten von Löwenzahnwurzeln und Eicheln', 0000000006),
(0000000091, 0000000040, 'Junger Löwenzahn', 0000000006),
(0000000092, 0000000045, 'Getrocknete Wurzeln von letztem Herbst', 0000000006),
(0000000093, 0000000042, 'Frisch geerntete Wurzeln', 0000000006),
(0000000094, 0000000048, 'Bettina', 0000000008),
(0000000095, 0000000041, 'Ernte wird gewaschen und vorbereitet', 0000000006),
(0000000097, 0000000049, 'Schwarzdorn-Bl-19-1.png', 0000000005),
(0000000098, 0000000050, 'Schwarzdorn-Bl-19-2.png', 0000000005),
(0000000099, 0000000051, 'Schwarzdorn-Bl-19-3.png', 0000000005),
(0000000100, 0000000052, 'Schwarzdorn-Bl-19-4.png', 0000000005),
(0000000101, 0000000053, 'Schwarzdorn-Bl-19-5.png', 0000000005),
(0000000102, 0000000049, 'Blühender Schwarzdornstrauch', 0000000006),
(0000000103, 0000000050, 'Werkstatt in urbaner Natur', 0000000006),
(0000000104, 0000000051, 'Griesschöpfli mit Blütensirup', 0000000006),
(0000000105, 0000000052, 'Herstellen des Schlehendrinks', 0000000006),
(0000000106, 0000000053, 'Drink aus Schlehenelixier', 0000000006),
(0000000107, 0000000054, 'Wer hat die weissen Tücher\r\nGebreitet über das Land?\r\nDie weissen, duftenden Tücher\r\nMit ihrem grünen Rand?\r\n\r\nWie strömts aus allen Blüten\r\nHerab von Strauch und Baum!\r\nUnd jede Blüt’ ein Becher\r\nVoll süsser Düfte Schaum!', 0000000007),
(0000000108, 0000000054, 'Wilhelm Müller 1794 - 1827', 0000000008),
(0000000109, 0000000055, 'Waldm-19-5-4_1.png', 0000000005),
(0000000110, 0000000055, 'Waldmeister', 0000000006),
(0000000113, 0000000057, 'Waldm-19-5-4_3.png', 0000000005),
(0000000114, 0000000057, 'Waldmeisterernte', 0000000006),
(0000000115, 0000000058, 'Waldm-19-5-4_4.png', 0000000005),
(0000000116, 0000000058, 'Sträusschen', 0000000006),
(0000000117, 0000000059, 'Waldm-19-5-4_5.png', 0000000005),
(0000000118, 0000000059, 'Waldlichtung', 0000000006),
(0000000119, 0000000060, 'Waldm-19-5-4_6.png', 0000000005),
(0000000120, 0000000060, 'Geernteter Waldmeister', 0000000006),
(0000000121, 0000000061, 'Waldm-19-5-4_7.png', 0000000005),
(0000000122, 0000000061, 'Maibowle ansetzen', 0000000006),
(0000000123, 0000000062, 'Werkstatt', 0000000006),
(0000000124, 0000000062, 'Waldm-19-5-4_8.png', 0000000005),
(0000000125, 0000000063, 'Waldm-19-5-4_9.png', 0000000005),
(0000000126, 0000000063, 'Apero', 0000000006),
(0000000127, 0000000056, 'Edith', 0000000008),
(0000000128, 0000000056, '\"Ich habe den Nachmittag rund um den Waldmeister sehr genossen - es war mir eine Herzensfreude! Fühle mich sehr angeregt neue Sachen auszuprobieren.\"', 0000000007),
(0000000129, 0000000064, 'Ulli-19-1_600.png', 0000000005),
(0000000130, 0000000065, 'Ulli-19-2_600.png', 0000000005),
(0000000131, 0000000066, 'Ulli-19-3_600.png', 0000000005),
(0000000132, 0000000067, 'Ulli-19-4_600.png', 0000000005),
(0000000133, 0000000068, 'Ulli-19-5_600.png', 0000000005),
(0000000134, 0000000069, 'Ulli-19-6_600.png', 0000000005),
(0000000135, 0000000064, 'Im Bremgartenwald', 0000000006),
(0000000136, 0000000065, 'Das Programm vom Heilpflanzen Atelier', 0000000006),
(0000000137, 0000000066, 'Ulli demonstriert die Destille', 0000000006),
(0000000138, 0000000067, 'Johanniskraut Notizen', 0000000006),
(0000000139, 0000000068, 'Vorbereiten des Johanniskraut Rotöl', 0000000006),
(0000000140, 0000000069, 'Johanniskraut Blüten in Olivenöl', 0000000006),
(0000000141, 0000000071, 'Holunder-19-1_600.png', 0000000005),
(0000000142, 0000000072, 'Holunder-19-2_600.png', 0000000005),
(0000000143, 0000000073, 'Holunder-19-3_600.png', 0000000005),
(0000000144, 0000000074, 'Holunder-19-4_600.png', 0000000005),
(0000000145, 0000000075, 'Holunder-19-5_600.png', 0000000005),
(0000000146, 0000000076, 'Holunder-19-6_600.png', 0000000005),
(0000000147, 0000000077, 'Holunder-19-7_600.png', 0000000005),
(0000000148, 0000000078, 'Holunder-19-8_600.png', 0000000005),
(0000000149, 0000000070, 'Nachbars Kinder und Nachbars Holunder, bannest du nie auf Dauer;\r\n\r\nschliessest du hnen die Türe, oh Wunder, klettern sie über die Mauer.', 0000000007),
(0000000150, 0000000071, 'Holunderbeeren', 0000000006),
(0000000151, 0000000072, 'Kräuterernte', 0000000006),
(0000000152, 0000000073, 'Werkstatt im Vorpark', 0000000006),
(0000000153, 0000000074, 'Kräuterauszug', 0000000006),
(0000000154, 0000000075, 'Vorbereitung des Oxymel', 0000000006),
(0000000155, 0000000076, 'Ribbeln der wilden Rüeblisamen ', 0000000006),
(0000000156, 0000000078, 'Oxymel aus Essig und Honig', 0000000006),
(0000000157, 0000000070, 'Alte Volksweisheit', 0000000008),
(0000000158, 0000000077, 'Letzte Schritte fürs Elixier', 0000000006),
(0000000159, 0000000079, 'DSA-1.png', 0000000005),
(0000000160, 0000000079, 'DSA Magazine: Aventurischer Bote', 0000000006),
(0000000161, 0000000080, 'DSA-2.png', 0000000005),
(0000000162, 0000000080, 'Nr 161: Nothilf', 0000000006),
(0000000163, 0000000081, 'DSA-3.png', 0000000005),
(0000000164, 0000000081, 'Nr 162: Wasserrausch', 0000000006),
(0000000165, 0000000082, 'DSA-4.png', 0000000005),
(0000000166, 0000000082, 'Nr 163: Merach Strauch', 0000000006),
(0000000167, 0000000083, 'DSA-5.png', 0000000005),
(0000000168, 0000000083, 'Nr 164: Vierblättrige Einbeere', 0000000006),
(0000000169, 0000000084, 'DSA-X.png', 0000000005),
(0000000170, 0000000084, 'Jaguarlilie', 0000000006),
(0000000171, 0000000085, 'DSA-7.png', 0000000005),
(0000000172, 0000000085, 'Pflanzenwelt Aventuriens 1', 0000000006),
(0000000173, 0000000086, 'DSA-8.png', 0000000005),
(0000000174, 0000000086, 'Pflanzenwelt Aventuriens 2', 0000000006),
(0000000175, 0000000087, 'DSA-6.png', 0000000005),
(0000000176, 0000000087, 'Buch: Die Kunst des Schwarzen Auges', 0000000006),
(0000000177, 0000000088, 'Schafg-Blume-500.png', 0000000005),
(0000000178, 0000000088, 'Schafgarbe', 0000000006),
(0000000179, 0000000089, 'Schafg-Ernte-500.png', 0000000005),
(0000000180, 0000000089, '... zwischen Wildpflanzen', 0000000006),
(0000000181, 0000000090, 'Schafg-Feld-500.png', 0000000005),
(0000000182, 0000000090, 'Schafgarbenernte...', 0000000006),
(0000000183, 0000000091, 'Schafg-Lippenstift-500.png', 0000000005),
(0000000184, 0000000091, 'Herstellung des Lippenstifts', 0000000006),
(0000000185, 0000000092, 'Schafg-Maisfeld-500.png', 0000000005),
(0000000186, 0000000092, 'Am erzählen', 0000000006),
(0000000187, 0000000093, '\"Anyone can use nature‘s pharmacy to heal and nurture himself/herself and Giovina is one of the best experts that can help you gain more knowledge of healing herbs and spices in a fun and easy way.\"', 0000000007),
(0000000188, 0000000093, 'Joslyn Yang', 0000000008),
(0000000189, 0000000094, 'Rauh-19-1.png', 0000000005),
(0000000190, 0000000094, 'Herstellung von Räucherkugeln', 0000000006),
(0000000191, 0000000095, 'Rauh-19-2.png', 0000000005),
(0000000192, 0000000095, 'Mörsern von Harz und Kräutern', 0000000006),
(0000000193, 0000000096, 'Rauh-19-3.png', 0000000005),
(0000000194, 0000000096, 'Räucherkugeln mit Schachtel', 0000000006),
(0000000195, 0000000097, 'Maerz.png', 0000000005),
(0000000196, 0000000097, 'Löwenzahn Exkursion - März', 0000000006),
(0000000197, 0000000098, 'April.png', 0000000005),
(0000000198, 0000000098, 'Schwarzdornblüten Werkstatt - Apil', 0000000006),
(0000000199, 0000000099, 'Mai.png', 0000000005),
(0000000200, 0000000099, 'Waldmeisterblüten Werkstatt - Mai', 0000000006),
(0000000201, 0000000100, 'Juni.png', 0000000005),
(0000000202, 0000000100, 'Holunder Exkursion - Juni', 0000000006),
(0000000203, 0000000101, 'August.png', 0000000005),
(0000000204, 0000000101, 'Holunderbeeren Werkstatt - August', 0000000006),
(0000000205, 0000000102, 'September.png', 0000000005),
(0000000206, 0000000102, 'Schafgarbenkraut Werkstatt - September', 0000000006),
(0000000207, 0000000103, 'Dezember.png', 0000000005),
(0000000208, 0000000103, 'Rauhnächte Werkstatt - Dezember', 0000000006),
(0000000209, 0000000104, 'Fruehling.png', 0000000005),
(0000000210, 0000000104, 'Frühlingsstreifzüge - Spaziergänge', 0000000006),
(0000000211, 0000000105, 'Sommer.png', 0000000005),
(0000000212, 0000000105, 'Sommerbummel - Spaziergänge', 0000000006),
(0000000213, 0000000106, 'Herbst.png', 0000000005),
(0000000214, 0000000106, 'Herbstpromenade - Spaziergänge', 0000000006),
(0000000215, 0000000107, 'Winter.png', 0000000005),
(0000000216, 0000000107, 'Lagerfeuer - Spaziergang', 0000000006),
(0000000217, 0000000108, 'Paeckli.png', 0000000005),
(0000000218, 0000000108, 'Pflanzenpäckli', 0000000006),
(0000000219, 0000000109, 'Hopfen.png', 0000000005),
(0000000220, 0000000109, 'Bierkräuter - BoGa Bern', 0000000006),
(0000000221, 0000000110, 'Maerchen.png', 0000000005),
(0000000222, 0000000110, 'Pflanzenmärchen - BoGa Bern', 0000000006),
(0000000223, 0000000111, 'Destillieren.png', 0000000005),
(0000000224, 0000000111, 'Lavendelhydrolat - Heilpflanzen Atelier', 0000000006),
(0000000225, 0000000112, 'paeckli-1.png', 0000000005),
(0000000226, 0000000112, 'Pflanzenpäckli per Post zugestellt', 0000000006),
(0000000227, 0000000113, 'paeckli-2.png', 0000000005),
(0000000228, 0000000113, 'Erfahren', 0000000006),
(0000000229, 0000000114, 'paeckli-3.png', 0000000005),
(0000000230, 0000000114, 'Befassen', 0000000006),
(0000000231, 0000000115, 'paeckli-4.png', 0000000005),
(0000000232, 0000000115, 'Informieren', 0000000006),
(0000000233, 0000000116, 'paeckli-5.png', 0000000005),
(0000000234, 0000000116, 'Vertiefen', 0000000006),
(0000000235, 0000000117, '\"Tausend Dank für das wunderschöne Paket! Ich bin total begeistert. So soll Phytotherapie gelernt werden - mit allen Sinnen, Intuition und Wissen.\"', 0000000007),
(0000000236, 0000000117, 'Lili', 0000000008),
(0000000237, 0000000118, '\"Seit sechs Jahren sind sie meine Wohngenossen, die Aloe veras. Ich kenne sie recht gut – hab’ ich jedenfalls geglaubt.\r\n\r\nHeute Morgen aber, nach der Aloe vera Werkstatt, sehe ich sie nochmals viel facettenreicher.\"', 0000000007),
(0000000238, 0000000118, 'Trix', 0000000008),
(0000000239, 0000000119, 'aloe-bild.png', 0000000005),
(0000000240, 0000000119, 'Aloe vera', 0000000006),
(0000000241, 0000000120, 'aloe-gel.png', 0000000005),
(0000000242, 0000000120, 'Frischer Aloe Gel', 0000000006),
(0000000243, 0000000121, '09-Silvan-Trans.png', 0000000005),
(0000000244, 0000000121, 'Plakat für Transhelvetica', 0000000006),
(0000000245, 0000000122, '09-Silvan-Matter.png', 0000000005),
(0000000246, 0000000122, 'Seite aus „Mani Matter Liederbuch“', 0000000006),
(0000000247, 0000000123, '09-Silvan-Chaumont.png', 0000000005),
(0000000248, 0000000123, 'Illustration „Chaumont“', 0000000006),
(0000000249, 0000000124, 'brauen-01.png', 0000000005),
(0000000250, 0000000124, 'Einführung ins Bierbrauen', 0000000006),
(0000000251, 0000000125, 'brauen-02.png', 0000000005),
(0000000252, 0000000125, 'Malz schroten', 0000000006),
(0000000253, 0000000126, 'brauen-03.png', 0000000005),
(0000000254, 0000000126, 'Maischen', 0000000006),
(0000000255, 0000000127, 'brauen-04.png', 0000000005),
(0000000256, 0000000127, 'Bier brauen im Infozentrum Eichholz', 0000000006),
(0000000257, 0000000128, 'brauen-05.png', 0000000005),
(0000000258, 0000000128, 'Etwas mehr Brautheorie', 0000000006),
(0000000259, 0000000129, 'brauen-06.png', 0000000005),
(0000000260, 0000000129, 'Gärtank', 0000000006),
(0000000261, 0000000130, 'card-4_500x500.png', 0000000005),
(0000000262, 0000000130, 'Sommerlinde', 0000000006),
(0000000263, 0000000131, 'card-5_500x500.png', 0000000005),
(0000000264, 0000000131, 'Kanadische Goldrute', 0000000006),
(0000000265, 0000000132, 'card-6_500x500.png', 0000000005),
(0000000266, 0000000132, 'Schafgarbe', 0000000006),
(0000000267, 0000000133, 'Aargauer-1-500.png', 0000000005),
(0000000268, 0000000133, 'Von Bäumen und Blumen', 0000000006),
(0000000269, 0000000134, 'Aargauer-2-500.png', 0000000005),
(0000000270, 0000000134, 'Wiesensalbei', 0000000006),
(0000000271, 0000000135, 'Aargauer-3-500.png', 0000000005),
(0000000272, 0000000135, 'Auf der Pflanzensuche', 0000000006),
(0000000273, 0000000136, 'Aargauer-4-500.png', 0000000005),
(0000000274, 0000000136, 'Pflanzen zu Bestimmen', 0000000006),
(0000000275, 0000000137, 'Aargauer-5-500.png', 0000000005),
(0000000276, 0000000137, 'Am Gorillaweg', 0000000006),
(0000000277, 0000000138, 'Aargauer-6-500.png', 0000000005),
(0000000278, 0000000138, 'Pflanzenfunde', 0000000006),
(0000000279, 0000000139, 'Hydrolate-3.png', 0000000005),
(0000000280, 0000000139, 'Quendel (wilder Thymian) Hydrolat', 0000000006),
(0000000281, 0000000140, 'Hydrolate-2.png', 0000000005),
(0000000282, 0000000140, 'Kupferdestille', 0000000006),
(0000000283, 0000000141, 'Hydrolate-1.png', 0000000005),
(0000000284, 0000000141, 'Getrockneter Lavendel', 0000000006),
(0000000285, 0000000142, 'Advent-6.png', 0000000005),
(0000000286, 0000000142, 'Kunstkarten von Silvan und Michi', 0000000006),
(0000000287, 0000000143, 'Advent-2.png', 0000000005),
(0000000288, 0000000143, 'Kunstkarten von Yasemin und Annina', 0000000006),
(0000000289, 0000000144, 'Advent-1.png', 0000000005),
(0000000290, 0000000144, 'Botanische Illustrationen von Giovina', 0000000006),
(0000000291, 0000000145, 'Advent-4.png', 0000000005),
(0000000292, 0000000145, 'Vorbereiten für Linoschnitt', 0000000006),
(0000000293, 0000000146, 'Advent-3.png', 0000000005),
(0000000294, 0000000146, 'Handgedruckte Lino-Kunstkarten', 0000000006),
(0000000295, 0000000147, 'Advent-5.png', 0000000005),
(0000000296, 0000000147, 'Detailansicht eines Linodruckes', 0000000006),
(0000000297, 0000000148, 'Allmend-Alle.png', 0000000005),
(0000000298, 0000000148, 'Spaziergang auf der Grossen Allmend', 0000000006),
(0000000299, 0000000149, 'Allmend-Schwarzdorn.png', 0000000005),
(0000000300, 0000000149, 'Schwarzdorn Ernte', 0000000006),
(0000000301, 0000000150, 'Allmend-Gio.png', 0000000005),
(0000000302, 0000000150, 'Bäume im Winterhimmel', 0000000006),
(0000000303, 0000000151, 'Raucherset-logo-500.png', 0000000005),
(0000000304, 0000000151, 'Skizze für das Räucherset', 0000000006),
(0000000305, 0000000152, 'Rauchern-600.jpg', 0000000005),
(0000000306, 0000000152, 'Räucherkugel mit Moos bestreut', 0000000006),
(0000000307, 0000000153, 'Rauchern-2-600.jpg', 0000000005),
(0000000308, 0000000153, 'Räuchern vor dem Winterhimmel', 0000000006),
(0000000309, 0000000154, 'Es rise merci für das wunderschöne Päckli! Mit soviu liebi zum Detail hesch du die Sache parat gmacht. Mir hei hüt aso totau dr Plousch gha bim Chugeli mache u Wünsch drichnätte. U bin chnätte u chugele isch d Nase totau verwöhnt worde. Fröie mi grad fescht ufd Rauhnächt.', 0000000007),
(0000000310, 0000000154, 'Mary', 0000000008),
(0000000311, 0000000155, 'Schachtel-400.jpg', 0000000005),
(0000000312, 0000000155, 'Vorbereitungen mit Schachteln falten', 0000000006),
(0000000313, 0000000156, 'Kugeln-machen-400.jpg', 0000000005),
(0000000314, 0000000156, 'Räucherkugeln erstellen', 0000000006),
(0000000315, 0000000157, '21-3-Erika-1.jpg', 0000000005),
(0000000316, 0000000157, 'Einführung in den Brauprozess', 0000000006),
(0000000317, 0000000158, '21-3-Erika-2.jpg', 0000000005),
(0000000318, 0000000158, 'Schroten des Malzes', 0000000006),
(0000000319, 0000000159, '21-3-Erika-3.jpg', 0000000005),
(0000000320, 0000000159, 'Einmaischen', 0000000006),
(0000000321, 0000000160, '21-3-Erika-4.jpg', 0000000005),
(0000000322, 0000000160, 'Erika - Erica vulgaris - Schneeheide', 0000000006),
(0000000323, 0000000161, 'Das Wabräu ist ein gemütlicher Ecken und trotz den coronigen und auch wettrigen Umständen hat mir der ganze Kurs sehr gefallen - vielleicht grad weil und mit diesen Umständen! Es war einfach so toll, wieder so etwas schönes erleben zu dürfen nach diesen kargen Zeiten, diesem kargen Jahr!', 0000000007),
(0000000324, 0000000161, 'Andrea', 0000000008),
(0000000325, 0000000162, '21-3-Erika-6.jpg', 0000000005),
(0000000326, 0000000162, 'Treberbrot', 0000000006),
(0000000327, 0000000163, 'Solidago_2621.png', 0000000005),
(0000000328, 0000000163, 'nähen und planen', 0000000006),
(0000000329, 0000000164, 'Solidago_6897.png', 0000000005),
(0000000330, 0000000164, 'gejätete Goldrute', 0000000006),
(0000000331, 0000000165, 'Solidago_6957.png', 0000000005),
(0000000332, 0000000165, 'Blütenschnitt vor der gejäteten Brache', 0000000006),
(0000000335, 0000000167, 'Solidago_6946.png', 0000000005),
(0000000336, 0000000167, 'SBB Brachenareal Burgdorf', 0000000006),
(0000000337, 0000000168, 'Solidago_6982.png', 0000000005),
(0000000338, 0000000168, 'Blüten kochen', 0000000006),
(0000000339, 0000000169, 'Solidago_6984.png', 0000000005),
(0000000340, 0000000169, 'Zmittagspause', 0000000006),
(0000000341, 0000000170, 'Solidago_6985.png', 0000000005),
(0000000342, 0000000170, 'Pflanzenfarben', 0000000006),
(0000000343, 0000000171, 'Solidago_E6988.png', 0000000005),
(0000000344, 0000000171, 'Eingefärbte Stoffe', 0000000006),
(0000000345, 0000000172, 'War DAS! ein toller Kurs, der Goldrutenkurs. Das war genau mein Ding - das hätte ich nicht erwartet….', 0000000007),
(0000000346, 0000000172, 'Andi', 0000000008),
(0000000347, 0000000173, 'PF-Birke.jpg', 0000000005),
(0000000348, 0000000173, 'Birke', 0000000006),
(0000000349, 0000000174, 'PF-Gundelrebe.jpg', 0000000005),
(0000000350, 0000000174, 'Gundelrebe', 0000000006),
(0000000351, 0000000175, 'PF-Brombeere.jpg', 0000000005),
(0000000352, 0000000175, 'Brombeere', 0000000006),
(0000000353, 0000000176, 'PF-Mädesüss.jpg', 0000000005),
(0000000354, 0000000176, 'Mädesüss', 0000000006),
(0000000355, 0000000177, 'PF-Besenheide.jpg', 0000000005),
(0000000356, 0000000177, 'Besenheide', 0000000006),
(0000000357, 0000000178, 'PF-Holunder.jpg', 0000000005),
(0000000358, 0000000178, 'Holunder', 0000000006),
(0000000359, 0000000179, 'Erika-Wild-1.png', 0000000005),
(0000000360, 0000000179, 'Erika Ale Braukurs im wilden Gärtner', 0000000006),
(0000000361, 0000000180, 'Erika-Wild-2.png', 0000000005),
(0000000362, 0000000180, 'Am Braukessel im Hinterhof in Zürich', 0000000006),
(0000000363, 0000000181, 'Erika-Wild-3.png', 0000000005),
(0000000364, 0000000181, 'Angesetzte Hefe, Malz, Erika', 0000000006),
(0000000365, 0000000182, 'Erika-Wild-4.png', 0000000005),
(0000000366, 0000000182, 'Sud klären', 0000000006),
(0000000367, 0000000183, 'Ich habe bei und mit euch einen ganz tollen Samstag verbracht.\r\n\r\nDie Stimmung und das Ambiente waren einmalig und das Kursmaterial top.\r\n\r\nAuf das Bier bin ich gespannt und mit dem Treber bin ich fleissig am Experimentieren.', 0000000007),
(0000000368, 0000000183, 'Marcel', 0000000008),
(0000000369, 0000000184, 'Erika-Wild-6.png', 0000000005),
(0000000370, 0000000184, 'Würze kochen', 0000000006),
(0000000371, 0000000185, 'Erika-Wild-7.png', 0000000005),
(0000000372, 0000000185, 'Mitten im Brauen und Erzählen', 0000000006),
(0000000373, 0000000186, 'Erika-Wild-8.png', 0000000005),
(0000000374, 0000000186, 'Vorbereitung zur Bierdegustation', 0000000006),
(0000000375, 0000000187, 'Erika-Wild-9.png', 0000000005),
(0000000376, 0000000187, 'Brot aus Malztreber', 0000000006),
(0000000377, 0000000188, 'B-Samen-21-6.png', 0000000005),
(0000000378, 0000000188, 'Energiekugeln mit Brennnesselsamen', 0000000006),
(0000000379, 0000000189, 'B-Samen-21-5.png', 0000000005),
(0000000380, 0000000189, 'Energiekugeln mit Brennnesselsamen', 0000000006),
(0000000381, 0000000190, 'B-Samen-21-1.png', 0000000005),
(0000000382, 0000000190, 'Im Bremgartenwald', 0000000006),
(0000000383, 0000000191, 'B-Samen-21-2.png', 0000000005),
(0000000384, 0000000191, 'Im Bremgartenwald', 0000000006),
(0000000385, 0000000192, 'B-Samen-21-3.png', 0000000005),
(0000000386, 0000000192, 'Brennnessel-Crisps', 0000000006),
(0000000387, 0000000193, 'B-Samen-21-4.png', 0000000005),
(0000000388, 0000000193, 'Brennnessel-Crisps', 0000000006),
(0000000389, 0000000194, 'Lowenzahn-21-1.png', 0000000005),
(0000000390, 0000000194, 'Löwenzahn wächst überall', 0000000006),
(0000000391, 0000000195, 'Lowenzahn-21-2.png', 0000000005),
(0000000392, 0000000195, 'Ernte', 0000000006),
(0000000393, 0000000196, 'Lowenzahn-21-3.png', 0000000005),
(0000000394, 0000000196, 'Verarbeiten zu einem Elixier', 0000000006),
(0000000395, 0000000197, 'Lowenzahn-21-4.png', 0000000005),
(0000000396, 0000000197, 'Elixier Vorbereitung', 0000000006),
(0000000397, 0000000198, 'Lowenzahn-21-5.png', 0000000005),
(0000000398, 0000000198, 'Märchen von Claudia Büttler', 0000000006),
(0000000399, 0000000199, 'Lowenzahn-21-6.png', 0000000005),
(0000000400, 0000000199, 'Löwenzahn - Taraxacum officinale', 0000000006),
(0000000401, 0000000200, 'PP-Titel.jpg', 0000000005),
(0000000402, 0000000200, 'Spitzwegerich - Plantago lanceolata', 0000000006),
(0000000403, 0000000201, 'PP-Intro.jpg', 0000000005),
(0000000404, 0000000201, 'Silbermantel - Alchemilla alpina', 0000000006),
(0000000405, 0000000202, 'PP-Befassen.jpg', 0000000005),
(0000000406, 0000000202, 'Schafgarbe - Achillea millefolium', 0000000006),
(0000000407, 0000000203, 'PP-Erfahren.jpg', 0000000005),
(0000000408, 0000000203, 'Storchenschnabel - Geranium robertianum', 0000000006),
(0000000409, 0000000204, 'PP-Informieren.jpg', 0000000005),
(0000000410, 0000000204, 'Weissdorn - Crataegus monogyna', 0000000006),
(0000000411, 0000000205, 'PP-Vertiefen.jpg', 0000000005),
(0000000412, 0000000205, 'Ringelblume - Calendula officinalis', 0000000006),
(0000000413, 0000000206, 'PP-4er.jpg', 0000000005),
(0000000414, 0000000206, 'Die vier Schritte des Pflanzenpäckli', 0000000006),
(0000000415, 0000000207, 'PP-Tee trinken.jpg', 0000000005),
(0000000416, 0000000207, 'Beim Tee trinken', 0000000006),
(0000000417, 0000000208, 'PP-Tilia-Foto.jpg', 0000000005),
(0000000418, 0000000208, 'Pflanzenpäckli', 0000000006),
(0000000419, 0000000209, 'Rauchern-600.jpg', 0000000005),
(0000000420, 0000000209, 'Räuchern einer Kugel', 0000000006),
(0000000421, 0000000210, 'Raucherset-logo-500.png', 0000000005),
(0000000422, 0000000210, 'Skizze des Räucherset', 0000000006),
(0000000423, 0000000211, 'Rauch-Kneten-700.jpg', 0000000005),
(0000000424, 0000000211, 'Kneten einer Räucherkugel', 0000000006),
(0000000425, 0000000212, 'Rauch-Gio-700.jpg', 0000000005),
(0000000426, 0000000212, 'Mischung vorbereiten', 0000000006),
(0000000427, 0000000213, 'Rauch-Origami.jpg', 0000000005),
(0000000428, 0000000213, 'Aufbewahren in Origamibox', 0000000006),
(0000000429, 0000000214, 'Ich war überwältigt ob der liebevollen Verpackung und Gestaltung. Mir (und der beschenkten Person) hat es sehr gut gefallen und wir haben die Rauhnächte genossen.', 0000000007),
(0000000430, 0000000214, 'Regula', 0000000008),
(0000000431, 0000000215, 'Aloe-22-9.png', 0000000005),
(0000000432, 0000000215, '#9 - Baby - Topfdurchmesser 12cm', 0000000006),
(0000000433, 0000000216, 'Aloe-22-8.png', 0000000005),
(0000000434, 0000000216, '#8 - Jung Adult - Topfdurchmesser 21cm - 10% Rabatt wegen abgebrochenem Blatt', 0000000006),
(0000000435, 0000000217, 'Aloe-22-3.png', 0000000005),
(0000000436, 0000000217, '#3 - Mutterpflanze - Topfdurchmesser ca 32cm', 0000000006),
(0000000437, 0000000218, 'Aloe-22-6.png', 0000000005),
(0000000438, 0000000218, '#6 - Jung Adult - Topfdurchmesser 22cm', 0000000006),
(0000000439, 0000000219, 'Aloe-22-2.png', 0000000005),
(0000000440, 0000000219, '#2 - Jung Adult - Topfdurchmesser 19cm', 0000000006),
(0000000441, 0000000220, 'Aloe-22-7.png', 0000000005),
(0000000442, 0000000220, '#7 - Adult - Topfdurchmesser 21cm', 0000000006),
(0000000443, 0000000221, 'Aloe-22-1.png', 0000000005),
(0000000444, 0000000221, '#1 - Adult - Topfdurchmesser 21cm, hoch', 0000000006),
(0000000445, 0000000222, 'Aloe-22-4.png', 0000000005),
(0000000446, 0000000222, '#4 - Adult - Topfdurchmesser 21cm, hoch', 0000000006),
(0000000447, 0000000223, 'Aloe-22-5.png', 0000000005),
(0000000448, 0000000223, '#5 - Adult - Topfdurchmesser 21cm, hoch', 0000000006),
(0000000449, 0000000224, '22-04-05-fig01.png', 0000000005),
(0000000450, 0000000224, 'Primula eliator', 0000000006),
(0000000451, 0000000225, '22-04-05-fig02.png', 0000000005),
(0000000452, 0000000225, 'Arum maculatum und Allium ursinum', 0000000006),
(0000000453, 0000000226, '22-04-05-fig03.png', 0000000005),
(0000000454, 0000000226, 'Anemone nemorosa', 0000000006),
(0000000455, 0000000227, 'Pink-1-22.png', 0000000005),
(0000000456, 0000000227, 'Brautheorie am Feuer', 0000000006),
(0000000457, 0000000228, 'Pink-2-22.png', 0000000005),
(0000000458, 0000000228, 'Maischebottich', 0000000006),
(0000000459, 0000000229, 'Pink-3-22.png', 0000000005),
(0000000460, 0000000229, 'Jodprobe zum Stärkenachweis', 0000000006),
(0000000461, 0000000230, 'Pink-4-22.png', 0000000005),
(0000000462, 0000000230, 'Läutern', 0000000006),
(0000000463, 0000000231, 'Pink-5-22.png', 0000000005),
(0000000464, 0000000231, 'Läutern', 0000000006),
(0000000465, 0000000232, 'Für mich hast du Geschichte neu geschrieben und erlebbar gemacht. Überhaupt, der ganze Tag war sehr im Fluss und angenehm rhythmisiert. Das Tun, das Zuhören, deine wunderbaren Infobilder, die Fülle an Wissen aus der du schöpfen kannst und mit uns teilst, das Essen - einfach alles ein Genuss', 0000000007),
(0000000466, 0000000232, 'Therese', 0000000008),
(0000000467, 0000000233, 'Pink-7-22.png', 0000000005),
(0000000468, 0000000233, 'Würzekochen', 0000000006),
(0000000469, 0000000234, 'Pink-8-22.png', 0000000005),
(0000000470, 0000000234, 'Zugabe von Kräutern und Wünschen', 0000000006),
(0000000471, 0000000235, 'Pink-9-22.png', 0000000005),
(0000000472, 0000000235, 'Prost!', 0000000006),
(0000000473, 0000000236, 'Dioskurides-04-22.png', 0000000005),
(0000000474, 0000000236, 'Beim Holunder', 0000000006),
(0000000475, 0000000237, 'Dioskurides-04-22_2.png', 0000000005),
(0000000476, 0000000237, 'Beim Heilkräutergarten', 0000000006),
(0000000477, 0000000238, 'Auch für Heilpflanzenkennerinnen hast du immer wieder eine neue Pflanzengeschichte bereit.', 0000000007),
(0000000478, 0000000238, 'Ulli', 0000000008),
(0000000479, 0000000239, 'Pink-10-22.png', 0000000005),
(0000000480, 0000000239, 'Nach der Gärung folgt die Abfüllung', 0000000006),
(0000000481, 0000000240, 'Pink-11-22.png', 0000000005),
(0000000482, 0000000240, 'Verschliessen der Flaschen mit Kronkorken', 0000000006),
(0000000483, 0000000241, 'Pink-12-22.png', 0000000005),
(0000000484, 0000000241, 'Flaschennachgärung für Kohlensäure', 0000000006),
(0000000485, 0000000242, '22-05-03-fig04.png', 0000000005),
(0000000486, 0000000242, 'Löwenzahn', 0000000006),
(0000000487, 0000000243, '22-05-03-fig05.png', 0000000005),
(0000000488, 0000000243, 'Knoblauchsrauke', 0000000006),
(0000000489, 0000000244, '22-05-03-fig06.png', 0000000005),
(0000000490, 0000000244, 'Schaumkraut', 0000000006),
(0000000491, 0000000245, 'klatschmohn.png', 0000000005),
(0000000492, 0000000245, 'Klatschmohn', 0000000006),
(0000000493, 0000000246, 'gundelrebe.png', 0000000005),
(0000000494, 0000000246, 'Gundelrebe', 0000000006),
(0000000495, 0000000247, 'schachtelhalm.png', 0000000005),
(0000000496, 0000000247, 'Acker Schachtelhalm', 0000000006),
(0000000497, 0000000248, 'moehre.png', 0000000005),
(0000000498, 0000000248, 'Wilde Möhre', 0000000006),
(0000000499, 0000000249, 'Diese Gartenzeitschrift inspiriert mich – als Balkongärtnerin und Naturliebhaberin. Das Magazin ist vielfältig, fröhlich und informativ. Die Blattmacherinnen sind wahrlich Pflanzen- (und Tier-)freunde – Freunde des Gartens und der Biodiversität.', 0000000007),
(0000000500, 0000000249, 'Giovina', 0000000008),
(0000000501, 0000000250, 'eibisch.png', 0000000005),
(0000000502, 0000000250, 'Eibisch', 0000000006),
(0000000503, 0000000251, 'Hopfenbluete.jpg', 0000000005),
(0000000504, 0000000251, 'Hopfen in junger Blüte', 0000000006),
(0000000505, 0000000252, 'Hopfenzapfen.jpg', 0000000005),
(0000000506, 0000000252, 'Hopfen zu Zapfen ausgereift', 0000000006),
(0000000507, 0000000253, 'Hopfenernte-Detail.jpg', 0000000005),
(0000000508, 0000000253, 'getrocknete Hopfenzapfen', 0000000006),
(0000000509, 0000000254, 'Hopfenernte.jpg', 0000000005),
(0000000510, 0000000254, 'Hopfenernte - grünes Gold', 0000000006),
(0000000511, 0000000255, 'Hopfenharz.jpg', 0000000005),
(0000000512, 0000000255, 'das wahre grüne Gold - Hopfenharz', 0000000006),
(0000000513, 0000000256, 'Hopfentee.jpg', 0000000005),
(0000000514, 0000000256, 'Hopfen als Tee', 0000000006),
(0000000515, 0000000257, 'Bisamkraut-1.png', 0000000005),
(0000000516, 0000000257, 'Buschwindröschen in grünem Samenstand neben Bisamkraut', 0000000006),
(0000000517, 0000000258, 'Bisamkraut-2.png', 0000000005),
(0000000518, 0000000258, 'Bisamkraut - Adoxa moschatellina', 0000000006),
(0000000519, 0000000259, 'Bisamkraut-3.png', 0000000005),
(0000000520, 0000000259, 'Buschwindröschen - Anemone nemorosa', 0000000006),
(0000000521, 0000000260, 'Bisamkraut-4.png', 0000000005),
(0000000522, 0000000260, 'Frieda Egg und ihr Bruder', 0000000006),
(0000000523, 0000000261, 'Bisamkraut-5.png', 0000000005),
(0000000524, 0000000261, 'Herbarbeleg von Frieda Egg', 0000000006),
(0000000525, 0000000262, 'Größe: 5 bis 15cm\r\nVerbreitung: Meist vegetativ durch Wurzelrhizom. Samen werden vermutlich von Ameisen und anderen Käfern verbreitet.\r\nVorkommen: feuchte, schattige Wälder als Frühlingsblume. Oft an Bachläufen. Zieht sich im Sommer in die Erde zurück.', 0000000007),
(0000000526, 0000000262, 'Kurzsteckbrief Adoxa moschatellina', 0000000008),
(0000000527, 0000000263, '1-suchen.png', 0000000005),
(0000000528, 0000000263, 'Kräuterernte', 0000000006),
(0000000529, 0000000264, '2-suchen.png', 0000000005),
(0000000530, 0000000264, 'Giovina und Christian beim erzählen', 0000000006),
(0000000531, 0000000265, '3-zvieri-vorbereiten.png', 0000000005),
(0000000532, 0000000265, 'Bitteres Schaumkraut - Cardamine amara', 0000000006),
(0000000533, 0000000266, '4-zvieri-vorbereiten.png', 0000000005),
(0000000534, 0000000266, 'gewaschene Kräuter', 0000000006),
(0000000535, 0000000267, '5-zvieri-vorbereiten.png', 0000000005),
(0000000536, 0000000267, 'Zubereiten auf dem Feuer', 0000000006),
(0000000537, 0000000268, '6-zvieri.png', 0000000005),
(0000000538, 0000000268, 'Beinwell-Täschli und geschälte Stängel', 0000000006),
(0000000539, 0000000269, '7-zvieri.png', 0000000005),
(0000000540, 0000000269, 'Ricottabällchen mit bitterem Schaumkraut', 0000000006),
(0000000541, 0000000270, '8-zvieri.png', 0000000005),
(0000000542, 0000000270, 'Omeletten-Häppchen mit Labkräutern', 0000000006),
(0000000543, 0000000271, '9-zvieri.png', 0000000005),
(0000000544, 0000000271, 'Crackers mit verschiedenen Giersch-Variationen', 0000000006),
(0000000545, 0000000272, 'Nr-28-01.png', 0000000005),
(0000000546, 0000000272, 'Manuela Lanz', 0000000006),
(0000000547, 0000000273, 'Nr-28-02.png', 0000000005),
(0000000548, 0000000273, 'Detail der Pflanze #28', 0000000006),
(0000000549, 0000000274, 'Nr-28-03.png', 0000000005),
(0000000550, 0000000274, 'Föhrenzapfen', 0000000006),
(0000000551, 0000000275, 'Tavolata-24-1.jpg', 0000000005),
(0000000552, 0000000275, 'Apero mit Schachtelhalmkolben und Sticks mit diversen Knobli-Aroma', 0000000006),
(0000000553, 0000000276, 'Tavolata-24-2.jpg', 0000000005),
(0000000554, 0000000276, 'Bockbier mit Mädesüss und Kräuterwasser mit Gundelrebe', 0000000006),
(0000000555, 0000000277, 'Tavolata-24-3.jpg', 0000000005),
(0000000556, 0000000277, 'Aussicht', 0000000006),
(0000000557, 0000000278, 'Tavolata-24-4.jpg', 0000000005),
(0000000558, 0000000278, 'Pulled Pork mit gehackten Kräutern wie Wiesen-Labkraut', 0000000006),
(0000000559, 0000000279, 'Tavolata-24-5.jpg', 0000000005),
(0000000560, 0000000279, 'Brennnesselsuppe mit Eierstich und Hopfensprossen', 0000000006),
(0000000561, 0000000280, 'Tavolata-24-6.jpg', 0000000005),
(0000000562, 0000000280, 'Dinkelotto mit Haxe und Chips aus Giersch und Wiesenknopf', 0000000006),
(0000000563, 0000000281, 'Tavolata-24-7.jpg', 0000000005),
(0000000564, 0000000281, 'Beleuchtung im Ofenhüsli', 0000000006),
(0000000565, 0000000282, 'Tavolata-24-8.jpg', 0000000005),
(0000000566, 0000000282, 'Waldmeisterglace auf Hagebuttemus und Brezel', 0000000006),
(0000000567, 0000000283, 'Tavolata-24-9.jpg', 0000000005),
(0000000568, 0000000283, 'Ofehüsli', 0000000006),
(0000000569, 0000000284, '2024-01_1000.png', 0000000005),
(0000000570, 0000000284, 'Fest der 5 Elemente im Februar', 0000000006),
(0000000571, 0000000285, '2024-02_1000.png', 0000000005),
(0000000572, 0000000285, 'Brautag für ein Gundelreben Bock im April', 0000000006),
(0000000573, 0000000286, '2024-03_1000.png', 0000000005),
(0000000574, 0000000286, 'Wildkräuter Tavolata im Mai', 0000000006),
(0000000575, 0000000287, '2024-04_1000.png', 0000000005),
(0000000576, 0000000287, 'BoGa Führung zu Sinneswahrnehmungen von Pflanzen', 0000000006),
(0000000577, 0000000288, '2024-05_1000.png', 0000000005),
(0000000578, 0000000288, 'Kreislauf der 5 Elemente im August', 0000000006),
(0000000579, 0000000289, '2024-06_1000.png', 0000000005),
(0000000580, 0000000289, 'Brautag für ein Erika Ale im September', 0000000006),
(0000000581, 0000000290, '2024-07_1000.png', 0000000005),
(0000000582, 0000000290, 'Brautag für das Eldermother\'s Blood', 0000000006),
(0000000583, 0000000291, '2024-08_1000.png', 0000000005),
(0000000584, 0000000291, 'Workshops zu den Rauhnächten im November', 0000000006),
(0000000585, 0000000292, '2024-09_1000.png', 0000000005),
(0000000586, 0000000292, 'BoGa Führung zu Weih- und Rauhnachtspflanzen', 0000000006),
(0000000587, 0000000293, '2024-10_1000.png', 0000000005),
(0000000588, 0000000293, 'Pflanzenpäckli Abonnements', 0000000006),
(0000000589, 0000000294, '2024-11_1000.png', 0000000005),
(0000000590, 0000000294, 'Räucherkugel Sets für Zuhause', 0000000006),
(0000000591, 0000000295, '2024-12_1000.png', 0000000005),
(0000000592, 0000000295, 'Pflanzenportraits für den Pflanzenfreund', 0000000006),
(0000000593, 0000000296, 'Spaz-Argauerstalden-6-23.jpg', 0000000005),
(0000000594, 0000000296, 'Am Argauerstalden im Juni', 0000000006),
(0000000595, 0000000297, 'Spaz-Bremer-8-22.jpg', 0000000005),
(0000000596, 0000000297, 'Im Bremgartenwald im August', 0000000006),
(0000000597, 0000000298, 'Spaz-Bremgarten-5-23.jpg', 0000000005),
(0000000598, 0000000298, 'In Bremgarten an der Aare im Mai', 0000000006),
(0000000599, 0000000299, 'Spaz-Lormoos-6-22.jpg', 0000000005),
(0000000600, 0000000299, 'Im Lörmoos im Juni', 0000000006),
(0000000601, 0000000300, 'Vielen herzlichen Dank für den lehrreichen Morgen am Montag. Es war nicht nur sehr interessant, sondern auch sehr gut gemacht, sympathisch, ein wunderbares Konzept.', 0000000007),
(0000000602, 0000000300, 'Manuela', 0000000008),
(0000000603, 0000000301, 'Spaz-Konizbergwald-4-23.jpg', 0000000005),
(0000000604, 0000000301, 'Beim Könizbergwald im April', 0000000006),
(0000000605, 0000000302, 'Spaz-Gurtental-6-24.jpg', 0000000005),
(0000000606, 0000000302, 'Im Gurtentäli im Juni', 0000000006),
(0000000607, 0000000303, 'Spaz-Egelsee-12-22.jpg', 0000000005),
(0000000608, 0000000303, 'Beim Egelsee im Dezember', 0000000006),
(0000000609, 0000000304, 'Spaz-Bremgartenwald-5-25.jpg', 0000000005),
(0000000610, 0000000304, 'Im Bremgartenwald im Mai', 0000000006),
(0000000611, 0000000305, 'Abo-gelb-1.jpg', 0000000005),
(0000000612, 0000000305, 'Pflanzenpäckli', 0000000006),
(0000000613, 0000000306, 'Ihre Pflanzenpäckli schenkten mir einen Moment der Besinnung und Ruhe, Entdeckung und Wissen.\r\nHerzlichen Dank dafür. Ich habe es genossen.', 0000000007),
(0000000614, 0000000306, 'Susan', 0000000008),
(0000000615, 0000000307, 'Danke liebes PflanzenpäckliTeam für all die anregenden Hinweise, für die schönen Zeichnungen und das künstlerische „Einfangen“ des jeweiligen Pflanzenwesens.  Die Zeit mit euch war ein sinnlicher Genuss.', 0000000007),
(0000000616, 0000000307, 'Katharina', 0000000008),
(0000000617, 0000000308, 'Abo-gelb-3.jpg', 0000000005),
(0000000618, 0000000308, 'Tee trinken', 0000000006),
(0000000619, 0000000309, 'Pflanzenpackli-Erika.jpg', 0000000005),
(0000000620, 0000000309, 'Erika Päckli', 0000000006),
(0000000621, 0000000310, 'Bundle-Portrait.jpg', 0000000005),
(0000000622, 0000000310, 'Pflanzenportrait', 0000000006),
(0000000623, 0000000311, 'NJ-F-Baum.jpg', 0000000005),
(0000000624, 0000000311, 'Baum mit Regenbogenast (Finn, 5J)', 0000000006),
(0000000625, 0000000312, 'NJ-F-Quappen.jpg', 0000000005),
(0000000626, 0000000312, 'Kaulquappen im Teich (Finn, 5j)', 0000000006),
(0000000627, 0000000313, 'NJ-F-Regenbogen.jpg', 0000000005),
(0000000628, 0000000313, 'Regenbogen (Finn, 5j)', 0000000006),
(0000000629, 0000000314, 'NJ-L-Schlange.jpg', 0000000005),
(0000000630, 0000000314, 'Kreuzotter (Leyla, 7j)', 0000000006),
(0000000631, 0000000315, 'NJ-L-Schmetterling.jpg', 0000000005),
(0000000632, 0000000315, 'Schmetterling aus Blätter-Druck (Leyla, 6j)', 0000000006),
(0000000633, 0000000316, 'NJ-L-Kleeblatt.jpg', 0000000005),
(0000000634, 0000000316, 'Kleeblatt und Regenbogenwolke (Leyla, 5j)', 0000000006),
(0000000635, 0000000317, 'NJ-G-Salbei.jpg', 0000000005),
(0000000636, 0000000317, 'Monoprint mit Wiesensalbei (Gio)', 0000000006),
(0000000637, 0000000318, 'NJ-G-Merkurialis.jpg', 0000000005),
(0000000638, 0000000318, 'Bingelkraut mit blauer Saftfarbe (Gio)', 0000000006),
(0000000639, 0000000319, 'NJ-G-Aron2.jpg', 0000000005),
(0000000640, 0000000319, 'Aronstab im Frühling (Gio)', 0000000006),
(0000000641, 0000000320, 'NJ-Holunder-inspiration.jpg', 0000000005),
(0000000642, 0000000320, 'Kleiner Einblick in die Sommerinspiration', 0000000006),
(0000000643, 0000000321, 'Es ist als ob ihr mich gehört habt! - wunderbar. Ihr habt von uns 3 riesengrosse okeys: wir danken für die passgenaue Inspiration.\r\n\r\nLiebe Grüsse und Juhee!', 0000000007),
(0000000644, 0000000321, 'Michi', 0000000008),
(0000000645, 0000000322, 'NJ-Ahorn-Trix.jpg', 0000000005),
(0000000646, 0000000322, 'Spitzahorn (Trix)', 0000000006),
(0000000647, 0000000323, 'Trix-Vogel-5.jpg', 0000000005),
(0000000648, 0000000323, 'Vogelbeobachtung (Trix)', 0000000006),
(0000000649, 0000000324, 'NJ-L-Pilz.jpg', 0000000005),
(0000000650, 0000000324, 'Herbstzeit (Leyla 7J)', 0000000006),
(0000000651, 0000000325, 'NJ-Herbst-1.png', 0000000005),
(0000000652, 0000000325, 'Ausschnit der Herbstinspiration', 0000000006),
(0000000653, 0000000326, 'Tiger.jpg', 0000000005),
(0000000654, 0000000326, 'Besuch im Museum (Gio und Leyla 7J)', 0000000006),
(0000000655, 0000000327, 'Merci Lusi Luchs!', 0000000007),
(0000000656, 0000000327, 'Eva', 0000000008),
(0000000657, 0000000328, 'Uferpflanzen.jpg', 0000000005),
(0000000658, 0000000328, 'Uferpflanzen an der Emme (Gio)', 0000000006);

-- --------------------------------------------------------

--
-- Table structure for table `impressions_fields_type`
--

CREATE TABLE `impressions_fields_type` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_impressions_content_type` int(10) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `impressions_fields_type`
--

INSERT INTO `impressions_fields_type` (`id`, `name`, `id_impressions_content_type`) VALUES
(0000000005, 'img_path', 0000000003),
(0000000006, 'img_caption', 0000000003),
(0000000007, 'cite', 0000000004),
(0000000008, 'cite_name', 0000000004);

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
  `paypal_key` varchar(20) NOT NULL,
  `position` tinyint(4) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packets`
--

INSERT INTO `packets` (`id`, `name`, `description`, `img_path`, `price`, `paypal_key`, `position`, `enabled`) VALUES
(00000000005, 'Pflanzenpäckli Jahres-Abo', 'Während einem Jahr erhalte ich sechs Pflanzenpäckli per Post zugestellt.\r\n\r\nBezahle dafür einen Betrag zwischen CHF 90.- und 120.-, deiner Lebenssituation entsprechend.', 'packets/packet-self_100x100.png', 'CHF 90.- bis 120.-', '', 10, 0),
(00000000006, 'Pflanzenpäckli Jahres-Abo zum Verschenken', 'Während einem Jahr erhält die beschenkte Person sechs Pflanzenpäckli per Post zugestellt.\r\n\r\nSchreibe im Buchungsformular einen Grusstext, welcher im Pflanzenlabor von Hand auf ein Kärtchen übertragen wird. Dieses wird im ersten der sechs Pflanzenpäckli beigelegt.\r\n\r\nBezahle dafür einen Betrag zwischen CHF 90.- und 120.-, deiner Lebenssituation entsprechend.', 'packets/packet-gift_100x100.png', 'CHF 90.- bis 120.-', '', 20, 0),
(00000000007, 'Partner Abo', 'Die Pflanzenentdeckungen zu zweit erleben. Sechs Pflanzenpäckli pro Jahr, der Tee sowie die Ausmalkarte ist jeweils in doppelter Ausführung vorhanden.\r\n\r\nBezahle dafür einen Betrag zwischen CHF 120.- und 150.-, deiner Lebenssituation entsprechend.', 'packets/packet-partner_100x100.png', 'CHF 120.- bis 150.-', '', 30, 0),
(00000000008, 'Ein Abo für mich, ein Abo zum Verschenken', 'Dir selber und jemand anderem eine Freude bereiten.\r\n\r\nBezahle dafür einen Betrag zwischen CHF 170.- und 200.-, deiner Lebenssituation entsprechend.', 'packets/packet-me-gift_100x100.png', 'CHF 170.- bis 200.-', 'W4U9TGAXTE7EW', 25, 0),
(00000000009, 'Doppel-Päckli', 'Dieses Doppel-Päckli enthält zwei winterliche Pflanzenbegegnungen. Die Nummer #18 und #24. Eins angenehm säuerlich-aromatisch und eins süsslich-verwöhnend.\r\n\r\nEin wunderschönes Geschenk für Pflanzeninteressierte und Teegeniesser.\r\n\r\nWinterangebot für 2022/23 - nur solange Vorrat.', 'packets/packet-00_100x100.png', 'CHF 32.-', '', 7, 0),
(00000000010, 'Ein überraschungs Pflanzenpäckli', 'Ein einzelnes Pflanzenpäckli bestellen und sich zuhause von einer Pflanze überraschen lassen.\r\n\r\nBezahle dafür einen Betrag zwischen CHF 18.- und 23.-, deiner Lebenssituation entsprechend.', 'packets/packet-00_100x100.png', 'CHF 18.- bis 23.-', '', 50, 0),
(00000000011, 'Grusskarten A5', 'Grusskartenset aus der Pflanzenpäckli Serie 2019 mit der Sommerlinde von Annina Ras, kanadische Goldruten von Michael Kühni und die Schafgarbe mit Achilles von Yasemin Günay', 'packets/cards-4-6_100x100.png', 'CHF 9.-', 'DN6UEMFW6QB2Q', 60, 0),
(00000000012, 'Adventskalender A5', 'Mit 24 Pflanzen-Grusskarten doppelte Freude bereiten.\r\nZum einen während dem Entdecken der jeweiligen Karte; zum anderen die Freude der Empfänger*in beim erhalten einer Grusskarte per Post.\r\n\r\nDer ideale Adventskalender um in dieser seltsamen Zeit soziale Kontakte zu pflegen :) \r\n\r\nInhalt:\r\n10x Künstlerkarten (Mit Sujets aus den Pflanzenpäckli)\r\n10X Botanische Illustrationen (Mit Sujets aus den Pflanzenpäckli)\r\n4x Handgedruckte Linoschnitte', 'packets/advent_100x100.png', 'CHF 59.-', '', 65, 0),
(00000000013, 'Pflanzenpäckli Winteraktion', '6 verschiedene Pflanzenpäckli zum Preis von 90.00 CHF statt für 108.00 CHF. Zum selber geniessen oder/und um anderen eine Freude zu bereiten.', 'packets/packet-me-gift_100x100.png', 'CHF 90.-', 'W4U9TGAXTE7EW', 52, 0),
(00000000014, 'Rauhnacht Räucherset Vorbestellung', 'Ein Räucherset um 12 Räucherkugeln mit Wunschzettel herzustellen. Abgestimmt für die Rauhnächte 2023.\r\n\r\nInhalt:\r\n- Anleitung über die Rauhnächte und die Herstellung der Räucherkugeln.\r\n- Räuchermischung zur Herstellung von 12 Räucherkugeln\r\n- 12 Wunschzettel\r\n- 3 zusätzliche Räucherpulver\r\n- Bindemittel Gummi Arabicum\r\n- Räuchersand\r\n- Streichhölzer\r\n- 12 Räucherkohlen\r\n\r\nBezahle dafür einen Betrag zwischen CHF 39.- und 59.-, deiner Lebenssituation entsprechend.\r\n\r\nDie Anzahl der Räuchersets ist begrenzt und stammt zum grössten Teil aus hiesiger, achtsamer Wildsammlung.\r\n\r\nVersand: Anfangs Dezember', 'packets/rauhnacht-500.png', 'CHF 39.- bis 59.- (plus 7.- Porto)', '', 5, 0),
(00000000015, 'Rauhnacht Räucherset (24)', 'Ein Räucherset um 24 Räucherkugeln mit Wunschzettel herzustellen. Abgestimmt auf die Rauhnächte 2020.\r\n24 Kugeln um zu zweit für die Rauhnächte vorzubereiten oder um alle 12 Kugeln doppelt herzustellen - 12 für die Rauhnächte und die weiteren 12 um im folgenden Jahr jeden Monat das entsprechende Thema erneut zu bearbeiten.\r\n\r\nInhalt:\r\n\r\n- Eine 5 seitige Anleitung über die Rauhnächte und die Herstellung der Räucherkugeln.\r\n- Räuchermischung zur Herstellung von 24 Räucherkugeln\r\n- 24 Wunschzettel\r\n- 4 Zusätzliche Räucherpulver\r\n- Gummi Arabicum\r\n- Räuchersand\r\n- Streichhölzer\r\n- 24 Räucherkohlen', 'packets/rauhnacht-500.png', 'CHF 69.-', 'LYD4BTWWGLJK4', 64, 0),
(00000000016, 'Aloe vera Hautpflege Set', 'Mit diesem Set erhälst du einen Überblick über die Verarbeitung eines frischen Aloe Blattes und dessen kosmetischen Anwendungen. Nebst der Gewinnung des Aloe vera Gels kannst du eine ursprüngliche Schüttel-Lotion herstellen.\r\nZudem ist eine kleine Jungpflanze beigelegt, die du einpflanzen kannst - Für eine nachhaltige Kosmetikanwendung.\r\nWichtig: Falls du eine samtige, weisse, parfümierte Bodylotion erwartest, ist dieses Set nicht das Richtige. In diesem Set geht es um frischen, vitalen, schleimigen Pflanzenrohstoff, welches ohne Konservierungstoffe, Emulgatoren oder Stabilisatoren verarbeitet wird - Es geht um ursprüngliche Frischkosmetik.\r\n\r\nInhalt des Sets:\r\n\r\n- Eine 4 seitige Anleitung über die Verarbeitung und kosmetische Anwendung von Aloe vera Gel, sowie einpflanz und pflege Hinweise für die Topfpflanze.\r\n- Ein frisches Aloe vera Blatt (in zwei Teilen)\r\n- Eine Jungpflanze (ca 6 Monate alt)\r\n- Ein leeres 30ml Glasfläschchen um die Lotion zu mischen\r\n- Ein 30ml Glasfläschchen mit Pflegeöl\r\n- Ein 30ml Glasfläschchen mit Glycerin 85%\r\n- Streichhölzer und Recheaudkerze\r\n\r\nBestellbar bis ende Februar 2022\r\nLieferung in erster Märzhälfte 2022', 'packets/aloeset-500.png', 'CHF 39.-', 'PNRPAVFYLZ7XN', 4, 0),
(00000000017, 'Rauhnacht Räucherset - limitierte Edition von 3 Stück', 'Der Preis dieses Räucherset ist in erster Linie zur Unterstützung des Pflanzenlabor. Als Dankeschön wird dieses Set wo immer möglich von Hand gefertigt (Lino-Druck auf Karton, handbemaltes Einpackpapier...) UND als Bindemittel wird hiesiges Gummi aus einer wilden Prunus-Art verwendet. Dies ist nicht ganz einfach zu sammeln, wenn es ohne Verletzung der Bäume geschieht, weshalb es lediglich 3 Sets für die Rauhnächte 2022 gibt.\r\n\r\nEin Räucherset um 12 Räucherkugeln mit Wunschzettel herzustellen. Abgestimmt für die Rauhnächte 2022.\r\n\r\nInhalt:\r\n- Anleitung über die Rauhnächte und die Herstellung der Räucherkugeln.\r\n- Räuchermischung zur Herstellung von 12 Räucherkugeln\r\n- 12 Wunschzettel\r\n- 3 zusätzliche Räucherpulver\r\n- Bindemittel Gummi aus Prunus-Art, aus dem Emmental\r\n- Räuchersand\r\n- Streichhölzer\r\n- 12 Räucherkohlen\r\n\r\nVersand: Anfangs Dezember', 'packets/rauhnacht-500.png', 'CHF 120.-', '', 6, 0),
(00000000018, 'Abo Angebot Winter 2021', 'Während einem Jahr erhält die beschenkte Person sechs Pflanzenpäckli per Post zugestellt. Start: Januar 2022\r\n\r\nWird bis am Mittwoch 15. Dezember bestellt, erhälst du ein Überraschungs-Pflanzenpäckli zusätzlich zugestellt - für dich, oder um der beschenkten Person als Geschenkpäckli fürs Abo zu überreichen.\r\n\r\nBezahle dafür einen Betrag zwischen CHF 90.- und 120.-, deiner Lebenssituation entsprechend.', 'packets/packet-gift_100x100.png', 'CHF 90.- bis 120.-', '', 9, 0),
(00000000019, 'Alle Pflanzenlabor Produkte', 'Alle Pflanzenlabor Produkte können nun über diesen Webshop gekauft werden:\r\nhttps://pflanzenlabor.sumupstore.com/produkte', 'packets/packet-self_100x100.png', '', '', 1, 1);

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
(0000000002, 0000000001, 0000000003, 'Jede interessierte, erwachsene oder jugendliche Person ist willkommen. Der Kursinhalt beinhaltet verschiedene Aspekte und eignet sich somit für Leute mit oder ohne Vorkenntnisse.'),
(0000000003, 0000000001, 0000000004, 'Der Kurs findet bei (fast) jeder Witterung draussen statt.\nBitte entsprechende Kleidung anziehen.'),
(0000000004, 0000000003, 0000000005, 'Gute Schuhe.\nSchreibzeug für Notizen.\nKleider und Schutzausrüstung dem Wetter entsprechend.'),
(0000000005, 0000000004, 0000000006, 'print_class_dates'),
(0000000007, 0000000001, 0000000003, 'Jede interessierte, erwachsene oder jugendliche Person ist willkommen. Der Kursinhalt beinhaltet verschiedene Aspekte und eignet sich somit für Leute mit oder ohne Vorkenntnisse.\r\nAuch der gestalterische Teil eignet sich für alle, mit oder ohne Vorkenntnisse. '),
(0000000008, 0000000001, 0000000001, 'Richtpreis: CHF 44.-\r\nJe nach finanzieller Lebenssituation kann ein Betrag zwischen CHF 22.- und CHF 66.- gewählt werden.'),
(0000000009, 0000000001, 0000000004, 'Der Kurs findet bei (fast) jeder Witterung draussen statt. Bitte entsprechende Kleidung anziehen.\nDer genaue Treffpunkt wird ca eine Woche im Voraus bekannt gegeben. Er ist in der Umgebung Stadt Bern und mit ÖV erreichbar. Angemeldete Personen werden per E-Mail über Details informiert.\n'),
(0000000010, 0000000003, 0000000005, 'Gute Schuhe\nKleider und Schutzausrüstung dem Wetter entsprechend\nEtwas zu trinken\nEv. Schreibzeug für Notizen\nEv. Bestimmungsbuch\nEv. Taschenmesser und Lupe'),
(0000000011, 0000000001, 0000000007, 'Die nächsten Anlässe finden im folgenden Frühling statt.\r\nGenaue Daten folgen.'),
(0000000012, 0000000001, 0000000007, 'Die nächsten Anlässe finden im folgenden Frühsommer statt.\r\nGenaue Daten folgen.'),
(0000000013, 0000000003, 0000000008, 'Sommerbummel - Daten und Orte folgen.'),
(0000000014, 0000000001, 0000000007, 'Die nächsten Anlässe finden im folgenden Sommer statt.\r\nGenaue Daten folgen.'),
(0000000015, 0000000001, 0000000007, 'Momentan sind keine Durchführungen geplant. Bei Interesse bitte melden.'),
(0000000016, 0000000003, 0000000008, 'Herbstpromenaden\r\nSamstag 4. Sept. 21 -> Eichholz\r\nMittwoch 29. Sept. 21 -> Grosse Allmend'),
(0000000017, 0000000001, 0000000007, 'Die nächsten Anlässe finden im folgenden Herbst statt.\r\nGenaue Daten folgen.'),
(0000000018, 0000000001, 0000000007, 'Die nächsten Anlässe finden im folgenden Winter statt.\r\nGenaue Daten folgen.'),
(0000000019, 0000000001, 0000000001, 'CHF 60.- plus 15.- Materialkosten'),
(0000000021, 0000000003, 0000000008, 'Frühlingsspaziergang\r\nDi 1.Juni 2021 | Oberburg Emmengebiet\r\nWeitere Daten und Orte folgen.'),
(0000000022, 0000000005, 0000000011, 'Der Verein Aquilegia führt monatlich öffentliche Führungen im Botanischen Garten Bern durch. Diese können ohne Anmeldung besucht werden und basieren auf Kollekte.\r\n\r\nInfos siehe unter [BoGa Agenda](!https://www.boga.unibe.ch/agenda/oeffentliche_fuehrungen___exkursionen/index_ger.html) '),
(0000000023, 0000000001, 0000000002, 'Vor dem Palmenhaus des Botanischen Garten Bern. Altenbergrain 21, 3013 Bern.'),
(0000000024, 0000000001, 0000000001, 'Kostenlos'),
(0000000025, 0000000005, 0000000011, 'Dieser Pflanzenlabor Spaziergang ist Teil des Vorprogrammes des 2. Kräuterfestivals vom [Hof Neufallenbach](!https://hof-neufallenbach.ch/).'),
(0000000026, 0000000005, 0000000002, 'Wenn im Info-Mail nach Anmeldung nicht anders erwähnt: Bei der Lochbachbrücke neben dem Schacherütiweg.'),
(0000000027, 0000000001, 0000000001, 'Kollekte'),
(0000000028, 0000000001, 0000000002, 'Bümpliz Endstation Tram 7.\r\nZusammen gehen wir zu einer Feuerstelle im Rehhag Wäldchen.'),
(0000000029, 0000000001, 0000000003, 'Jede erwachsene und jugendliche Person, mit interesse am Austausch von Pflanzenwissen ist willkommen.'),
(0000000030, 0000000003, 0000000005, 'Gute Schuhe.\nKleider und Schutzausrüstung dem Wetter entsprechend.\nTaschenlampe.\nev. Taschenmesser.\nev. eine Pflanzengeschichte.'),
(0000000031, 0000000001, 0000000004, 'Das Treffen findet bei jeder Witterung statt. Bei zu unangenehmem Wetter werden wir einen Teil nach drinnen verlegen.'),
(0000000032, 0000000001, 0000000001, 'CHF 90.-- (inkl. Material für Räucherkugeln, Kursunterlagen und Raummiete)'),
(0000000035, 0000000001, 0000000001, 'CHF 120.- + 60.- Verpflegung, Material- und Mietkosten)'),
(0000000036, 0000000005, 0000000002, 'Pro Natura Zentrum Eichholz,\r\n\r\nStrandweg 60,\r\n\r\n3084 Wabern\r\n\r\n[Website](!https://www.pronatura-be.ch/de/zentrum-eichholz)'),
(0000000037, 0000000001, 0000000003, 'Jede erwachsene, interessierte Person mit oder ohne Vorkentnisse ist willkommen.'),
(0000000038, 0000000001, 0000000004, 'Der Brauteil findet draussen statt, der Rest des Kurses zum grössten Teil drinnen.\n'),
(0000000039, 0000000003, 0000000005, 'Zmittag Verpflegung\r\nGenügend zu trinken\r\nGute Schuhe\r\nKleider und Schutzausrüstung dem Wetter entsprechend\r\nSchreibzeug für Notizen\r\nEin Tuch oder ein Wanderkissen zum draufsitzen\r\nBadsachen, falls du dich in der Mittagspause in der Aare treiben lassen willst'),
(0000000040, 0000000001, 0000000004, 'Der Kurs findet bei jeder Witterung draussen statt.\nBei regnerischem Wetter unter einem geschützten Dach.'),
(0000000041, 0000000001, 0000000002, 'Der genaue Treffpunkt wird ca eine Woche vor dem Spaziergang per E-Mail bekannt gegeben. Alle Orte sind in der Region Bern mit dem öffentlichen Verkehr erreichbar.'),
(0000000042, 0000000005, 0000000002, 'Die Aloe vera Werkstatt findet jeweils drinnen statt.\r\nGenauer Ort folgt.'),
(0000000043, 0000000001, 0000000002, 'Genauer Treffpunkt folgt.\r\n\r\nUmgebung Bern.\r\n\r\nErreichbar mit ÖV.'),
(0000000044, 0000000001, 0000000002, 'Postautostation Eymatt bei Bern, Camping\r\n\r\nPostautolinie 101 und 107'),
(0000000045, 0000000003, 0000000008, 'Winterentdeckungstour\r\nDo 19.11.20 Paul Klee Zentrum\r\nSa 05.12.20 Grosse Allmend'),
(0000000046, 0000000005, 0000000009, 'Wegen der aktuellen COVID Situation findet die Werkstatt nicht statt.\r\n\r\nDie Pflanze kannst du dennoch erfahren - mit einem Werkstatt-Set zu dir nach hause gesendet. Das [Angebot](https://www.pflanzenlabor.ch/paeckli_angebot) ist nur kurz Verfügbar.'),
(0000000047, 0000000005, 0000000002, 'Brauerei [Wabräu](!https://www.wabraeu.ch/wo-wir-sind.html)\r\n\r\nGurtenbrauerei 30\r\n\r\n3084 Wabern\r\n'),
(0000000048, 0000000005, 0000000011, 'An dieser Werkstatt begleitet uns die Märchenerzählerin Claudia Büttler.\r\n\r\n[Website erzählmirmehr](https://www.erzaehlmirmehr.ch/)'),
(0000000049, 0000000005, 0000000010, '[Verhaltensinfo wegen Corona](!https://www.pflanzenlabor.ch/downloads/Corona-Schutzkonzept-Taraxacum.pdf)'),
(0000000050, 0000000005, 0000000009, 'Für die aktuelle Führung bitte (Coronabedingt) anmelden. -> Beim Onlineformular auf \"Rechnung\" klicken. Es wird keine Rechnung gestellt, die Führung basiert auf Kollekte.\r\n\r\nEs gilt Maskenpflicht, sowie die aktuellen Bestimmungen.\r\n\r\nInfos siehe unter [BoGa Agenda](!http://www.boga.unibe.ch/agenda/oeffentliche_fuehrungen)\r\n\r\nDer Verein Aquilegia führt monatlich öffentliche Führungen im Botanischen Garten Bern durch.'),
(0000000051, 0000000005, 0000000002, '[Opak, Grafik und Illustration](!https://www.opak.cc/#/workList/contact)\r\n\r\nGurtenbrauerei 28\r\n\r\n3084 Köniz/Wabern\r\n'),
(0000000052, 0000000001, 0000000001, 'CHF 80.- plus 15.- Materialkosten'),
(0000000053, 0000000005, 0000000002, 'Vor der [Velostation Intact](!https://www.wir-bringens.ch/produkte-dienstleistungen/velostation.html) am Bahnhof Burgdorf\r\n\r\nBucherstrasse 6, 3401 Burgdorf'),
(0000000054, 0000000001, 0000000004, 'Der Kurs findet bei jeder Witterung statt. Der erste Teil findet draussen statt - bitte entsprechende Kleidung anziehen. Der zweite Teil findet drinnen statt.'),
(0000000055, 0000000005, 0000000011, 'Diese Werkstatt wird organisiert vom Verein [Pro Natura Regionalsektion Unteremmental](https://www.pronatura-be.ch/de/unteremmental)\r\n\r\nDie Leiter*innen der Werkstatt sind:\r\n- Giovina Nicolai, Pflanzenlaborantin, Drogistin\r\n- Christian Hedinger, Botaniker'),
(0000000056, 0000000005, 0000000010, 'Nordamerikanische Goldruten - mehr als nur invasive Neophyten? [Zeitungsbericht](!https://www.pflanzenlabor.ch/downloads/Nordamerikanische-Goldruten-dRegion.pdf) über Nordamerikanische Goldruten in D\'Region vom Dienstag 13. Juli 2021\r\n\r\nSchöne Neue Pflanzenwelt? [Infobroschüre](!http://www.neophyt.ch/pdf/Ausstellung_Neophyten_BOGA.pdf) über Invasive Neophyten vom Botanischen Garten Bern'),
(0000000057, 0000000001, 0000000001, 'CHF 190.-- (inkl. Kursmaterial, Mittagessen und Bier)'),
(0000000058, 0000000005, 0000000005, 'Am Brautag\r\n- Gute Schuhe\r\n- Kleider und Schutzausrüstung dem Wetter entsprechend\r\n- Schreibzeug für Notizen\r\n- Ev. leeres Tupperware für Malztreber'),
(0000000060, 0000000005, 0000000011, 'Kollaboration mit [Limited Edition of One](!https://www.limitededitionofone.co.uk/)\r\n\r\nAmanda Blair motiviert Menschen, ihre jeweilige Einmaligkeit zu erkennen und zu leben. Als Transformational Coach mit jahrzehnte langer Erfahrung, greift sie dafür in ihre kreativ-verspielte Trickkiste an Herangehensweisen. '),
(0000000061, 0000000005, 0000000010, '[Kursausschreibung](!https://www.pflanzenlabor.ch/downloads/FlyerErika.pdf) (Flyer pdf) vom wilden Gärtner für die Braukurse.'),
(0000000062, 0000000005, 0000000009, 'Du hast an den Kurstagen keine Zeit, möchtest aber dennnoch Räucherkugeln herstellen?\r\n\r\nIn der ersten Dezemberwoche versende ich [Sets um die Rauhnacht-Räucherkugeln selber herzustellen](!https://pflanzenlabor.sumupstore.com/produkte). Genaue Infos und Vorverkaufsmöglichkeit werde ich via Newsletter bekannt geben.'),
(0000000063, 0000000005, 0000000002, '[Öko Maurer Gärtnerei](!https://www.maurerblumen.ch/)\r\n\r\nBernstrasse 17, 3110 Münsingen\r\n\r\nZu Fuss 10 Minuten vom Bahnhof Münsingen entfernt.'),
(0000000064, 0000000005, 0000000008, 'In Emmen-Nähe Burgdorf Süd.'),
(0000000065, 0000000005, 0000000011, 'Am Freitagabend begleitet uns die Märchenerzählerin Claudia Büttler.\r\n\r\n[Website erzählmirmehr](https://www.erzaehlmirmehr.ch/)'),
(0000000066, 0000000005, 0000000010, 'Das [Gesammtprogramm der Heckenbrauerei](!https://www.pflanzenlabor.ch/downloads/Bier_Flyer_2023_leporello_A6.pdf) als PDF\r\n\r\n[Herrin über Hopfen und Malz](!https://www.pflanzenlabor.ch/downloads/Herrin-uber-Hopfen-und-Malz.pdf), ein Portrait von der Zeitschrift Pflanzenfreund während eines Brautages. '),
(0000000067, 0000000005, 0000000001, '**4 Brautage - Ein ganzer Jahreskreis**\r\nCHF 640.- (CHF 160.-/Brautag)\r\n\r\n**3 Brautage**\r\nCHF 510.- (CHF 170.-/Brautag)\r\n\r\n**2 Brautage**\r\nCHF 340.- (CHF 170.-/Brautag)\r\n\r\n**1 Brautag**\r\nCHF 180.-\r\n\r\nBitte für jeden Brautag einzeln anmelden. Für Anmeldungen, welche am selben Tag getätigt werden, gelten die obenstehenden Reduktionen.'),
(0000000068, 0000000001, 0000000003, 'Jede interessierte, erwachsene Person ist willkommen. Voraussetzung ist ein Basiswissen über das Bierbrauen - zum Beispiel durch einen regulären Braukus vom Pflanzenlabor.'),
(0000000069, 0000000005, 0000000011, 'Die Spaziergänge (Dienstagabend) werden durch folgende Personen geleitet:\r\n\r\n- Giovina Nicolai\r\n- Martina Bürgi (April)'),
(0000000070, 0000000005, 0000000008, 'Pflanzenspaziergänge Dienstagabend\r\n\r\n- März - Könizbergwald\r\n- April - Reichenbachwald (essbare Wildpflanzen)\r\n- Mai - Lörmoos (Moorpflanzen, Fleischfressende)\r\n- Juni - Rosengarten/Aargauerstalden\r\n- Juli - Elfenau\r\n- August - Bremgartenwald West\r\n- September - grosse Allmend'),
(0000000071, 0000000005, 0000000010, '[Stellenausschrieb](!https://www.pflanzenlabor.ch/downloads/Aloe-stelle.pdf) zur Leitung von Aloe vera Werkstätten.\r\n\r\n[Aloe vera im Blumentopf](!https://www.pflanzenlabor.ch/downloads/Aloe-pflege.pdf) Eine Pflegeanleitung für die Aloe Pflanze zuhause.\r\n\r\n[Aloe vera Gel filetieren](!https://www.pflanzenlabor.ch/downloads/Aloe-filetieren.pdf) Eine Schritt für Schritt Anleitung, wie das Gel aus einem Blatt gewonnen wird.'),
(0000000072, 0000000005, 0000000011, 'An diesem Brautag begleitet uns Eveline Aschwanden. Sie ist Prozessbegleiterin und setzt sich seit Jahren mit weiblichen und männlichen Prinzipien auseinander.\r\n\r\n[Website Prozessbegleitung](!https://www.evelineaschwanden.ch/)\r\n'),
(0000000073, 0000000005, 0000000008, 'Pflanzenspaziergänge Sonntagmorgen\r\n\r\n- Okt - Wyssloch, Schosshalde\r\n- Nov - Rehhaghölzli, Bümpliz\r\n- Dez - Egelsee - mit Martina\r\n- Jan - Gurten\r\n- Feb - Länggasse'),
(0000000075, 0000000005, 0000000011, 'Die Spaziergänge (Sonntagmorgen) werden abwechselnd von folgenden Personen geführt:\r\n\r\n- Giovina Nicolai\r\n- Lisanna Schmidt\r\n- Martina Bürgi'),
(0000000076, 0000000005, 0000000010, 'Spezialangebot vom 1. Januar bis 30. Juni 2023:\r\nKooperation von Sprouts, Heilpflanzenatelier, Essbar u Achtsam und dem Pflanzenlabor\r\n\r\nInfos zu dem [Naturbegegnungs Abos](!https://www.pflanzenlabor.ch/downloads/4-er-Abo-Potpourri.pdf)\r\n\r\nAktuelles [Programm aller Naturbegegnungen](!https://www.pflanzenlabor.ch/downloads/Programm-Naturbegegnungen.pdf) als PDF\r\n'),
(0000000077, 0000000005, 0000000002, '[Kulturgarten Rossboden](!http://www.kulturgarten.ch), beim Blumenmandala.\r\n\r\nDer grosse und wilde Kulturgarten ist Teil der [Öko Gärtnerei Maurer](!https://www.maurerblumen.ch/) und liegt zu Fuss 5 Minuten vom Bahnhof Münsingen entfernt.'),
(0000000078, 0000000005, 0000000009, 'Dieser Brautag ist Teil der 4-er Serie der Jahreskreis-Fest Biere. Bei einer Buchung aller vier Brautage gibt es total eine Preisreduktion von CHF 60.-'),
(0000000079, 0000000005, 0000000012, 'Mit Gastauftritt von Claudia Büttler, Erzählerin von Märchen, Mythen und Sagen.\r\n\r\n[Website erzählmirmehr](!https://www.erzaehlmirmehr.ch/)'),
(0000000080, 0000000005, 0000000002, 'Vor der Talstation des Gurtenbähnli\r\n\r\n3084 Wabern\r\n'),
(0000000081, 0000000003, 0000000005, 'Schreibzeug für persönliche Notizen'),
(0000000082, 0000000005, 0000000008, '[opak](!https://www.opak.cc)\r\n\r\nAtelier für Grafik und Illustration\r\n\r\nGurtenbrauerei 28\r\n\r\n3084 Wabern'),
(0000000083, 0000000005, 0000000012, 'Amanda Blair motiviert Menschen, ihre jeweilige Einmaligkeit zu erkennen und zu leben. Als Transformational Coach mit jahrzehnte langer Erfahrung, greift sie dafür in ihre kreativ-verspielte Trickkiste an Herangehensweisen.\r\n\r\nvon [Limited Edition of One](!https://www.limitededitionofone.co.uk/)'),
(0000000084, 0000000001, 0000000001, 'CHF 70.- plus 25.- für Materialkosten und Raummiete'),
(0000000085, 0000000001, 0000000001, 'CHF 300.- plus 60.- Materialkosten und Miete'),
(0000000086, 0000000001, 0000000004, 'Der Kurs findet je nach Wetter und Jahreszeit draussen oder drinnen statt. Genaue Details werden jeweils vor den Kursen mitgeteilt.\n'),
(0000000087, 0000000005, 0000000005, '- Persönliches Zeichnungsmaterial wie Papier, Pinsel, Aquarellfarbe, Stifte...\r\n- Ein Grundstock an Pinseln und Aquarellpapier wird zu Verfügung stehen'),
(0000000088, 0000000005, 0000000009, 'Daten der Kursserie mit Start am 14. März 2023\r\n\r\n- 14. März 2023\r\n- 28. März 2023\r\n- 11. April 2023\r\n- 18. April 2023\r\n- 25. April 2023\r\n- 09. Mai 2023'),
(0000000089, 0000000005, 0000000012, 'Mit Gastauftritt von Martina Bürgi, dipl. Drogistin mit einem Flair für die Wildkräuterküche.'),
(0000000090, 0000000005, 0000000012, 'Mit Gastauftritt von Désirée Schmid, dipl. Drogistin, welche uns die vernetzten Sichtweisen der Alchemie aufzeigt.\r\n\r\n[Website Cosmoplants](!https://www.cosmosplants.ch/)'),
(0000000091, 0000000005, 0000000009, 'Um alle 5 Elemente in den Jahreszeiten ganzheitlich zu erfahren, empfehlen wir die Teilnahme des gesammten Zyklus.\r\n\r\nEinzelbuchungen sind jedoch ebenfalls möglich (Preise ohne Reduktion)\r\n\r\nAnmeldung via [Praxis Punktgenau](!https://www.punkt-genau.ch/kontakt)'),
(0000000092, 0000000001, 0000000001, 'Gesamtpaket CHF 560.- inkl. Kursmaterial,\r\nvegetarische, saisonale Häppchen und Raummiete'),
(0000000093, 0000000005, 0000000008, '[Bougerie](!https://bougerie.ch/)\r\n\r\nBornweg 7\r\n\r\n3006 Bern'),
(0000000094, 0000000005, 0000000010, 'Weitere Infos zu Nature Journaling sind unter folgenden Links zu finden:\r\n\r\n[Wild Wonder Foundation](!https://www.wildwonder.org/) von John Muir Laws mit vielen Ressourcen zum Thema (in Englisch)\r\n\r\n[Wieder Wilder Werden](!https://wiederwilderwerden.de/) von Verena Hillgärtner mit Tipps und Ideen (in Deutsch)'),
(0000000095, 0000000005, 0000000011, 'Die 5 Elemente - Angebote sind eine Zusammenarbeit von:\r\n\r\nKarin Bracher, Bewegungspädagogin und Qi Gong Lehrerin, [Bougerie](!https://www.bougerie.ch)\r\n\r\nNina Pessina, Naturheilpraktikerin TCM, [Punkt-Genau](!https://www.punkt-genau.ch)\r\n\r\nGiovina Nicolai, Pflanzenlaborantin, Drogistin, Bierbrauerin'),
(0000000096, 0000000005, 0000000010, 'Das [aktuelle Programm von Aquilegia](!https://www.pflanzenlabor.ch/downloads/Programm-Aquilegia.pdf) erhälst du hier als PDF.'),
(0000000097, 0000000005, 0000000002, 'An der Emme bei Oberburg, neben dem Lochbachspielplatz (\"Tipi\" Spili)\n'),
(0000000098, 0000000001, 0000000001, 'Richtpreis: CHF 99.-\r\nJe nach finanzieller Lebenssituation kannst du einen Preis zwischen CHF 77.- und CHF 122.- wählen.'),
(0000000099, 0000000005, 0000000002, 'Genauer Treffpunkt wird nach Anmeldung angegeben\n\nUmgebung Burgdorf Süd\n\nEv. mit ca 20 Min Gehzeit von ÖV Station\n'),
(0000000100, 0000000005, 0000000011, 'Die Feuerabende sind eine Zusammenarbeit von\r\n\r\nClaudia Büttler, [Märchenerzählerin](!https://www.erzaehlmirmehr.ch/)\r\n\r\nGiovina Nicolai, Pflanzenlaborantin'),
(0000000101, 0000000001, 0000000001, 'Kostenlose Teilnahme für Mitglieder von ProBremgarten und für EinwohnerInnen aus Bremgarten und Herrenschwanden.\r\n\r\nÜbrige TeilnehmerInnen: CHF 40.00\r\n\r\n(Auch für die kostenlose Anmeldung auf \"Zur Kasse\" klicken)'),
(0000000102, 0000000001, 0000000002, 'Treffpunkt:\r\nBushaltestelle Fährstrasse (Buslinie 21), unter den Bäumen\r\n\r\nEndpunkt:\r\nBushaltestelle Seftau im Ländli (Buslinie 33) '),
(0000000103, 0000000005, 0000000009, '**Bei der Anmeldung bitte angeben ob:**\r\n**Morgens von 9-10h oder Vormittags von 11-12h**'),
(0000000104, 0000000005, 0000000011, 'Dieser Anlass wurde organisiert vom Quartierverein [ProBremgarten](!https://www.probremgarten.ch/)'),
(0000000105, 0000000001, 0000000001, 'CHF 60.- + 60.- Verpflegung, Material- und Mietkosten'),
(0000000106, 0000000005, 0000000008, 'Die Brauzirkel finden in Wabern statt. Entweder im [Pro Natura Zentrum Eichholz](!https://www.pronatura-be.ch/de/zentrum-eichholz) oder in der [Brauerei Wabräu](!https://www.wabraeu.ch/).'),
(0000000107, 0000000001, 0000000001, 'CHF 200.- (inkl. Material und Bier)\r\nCHF 190.- (inkl. Material und Bier) für Mitglieder des Frauenvereins Wichtrach '),
(0000000108, 0000000001, 0000000001, 'Richtpreis CHF 140.-- (inkl. Material für die Räucherkugeln, Kursunterlagen und Raummiete)\r\nJe nach finanzieller Lebenslage kann ein Beitrag zwischen CHF 100.-- und 180.-- gewählt werden.'),
(0000000109, 0000000001, 0000000001, 'Richtpreis: CHF 180.-\r\nJe nach finanzieller Lebenslage kann ein Betrag zwischen CHF 140.- bis 220.- gewählt werden.'),
(0000000110, 0000000001, 0000000002, 'Atelier 14B (Haupt Verlag)\r\nFalkenplatz 14\r\n3001 Bern'),
(0000000111, 0000000005, 0000000011, 'Der Abend ist aus Freude und im Austausch entstanden zwischen\r\n\r\n- Nina Pessina, Akupunktur Therapeutin, [Punkt-Genau](!www.punkt-genau.ch)\r\n- Karin Bracher, Bewegungspädagogin und Qi Gong Lehrerin, [Bougerie](!www.bougerie.ch)\r\n- Giovina Nicolai Pfanzenlaborantin, Drogistin, Bierbrauerin\r\n- Timo Pfäffli Kaiseki Koch'),
(0000000112, 0000000001, 0000000001, 'Richtpreis: CHF 280.- pro Tag\r\nEinzeln oder als Gesamtpaket (CHF 1200.- anstatt 1400.-) zahlbar.\r\nIm Kurspreis inbegriffen sind Kursunterlagen sowie saisonale Häppchen.'),
(0000000113, 0000000005, 0000000010, 'Flyer als PDF für den [Kurszyklus 2024 - Mit den 5 Elementen durch die Jahreszeiten](!https://www.pflanzenlabor.ch/downloads/24-Flyer-5-Elemente.pdf)'),
(0000000114, 0000000001, 0000000001, 'CHF 150.-- (exkl. Getränke)'),
(0000000115, 0000000005, 0000000008, '[Biohof Gutenbrünnen](!https://biohof-gutenbruennen.ch/)\r\n\r\nFamilie Mosimann Kiener\r\n\r\nGutenbrünnenweg 40\r\n\r\n3125 Toffen'),
(0000000116, 0000000005, 0000000011, 'Dieser Tag ist eine Zusammenarbeit von\r\n\r\n- Anna Mosimann, Bäuerin, Biohof Gutenbrünnen\r\n- Giovina Nicolai, Pfanzenlaborantin, Drogistin, Bierbrauerin'),
(0000000117, 0000000001, 0000000004, 'Der (ca 2 stündige ) Pflanzenspaziergang findet draussen in der nahen Umgebung statt, bei garstigem Wetter angepasst an einem geschützten Ort.\r\n\r\nDas anschliessende Essen findet im gemütlichen \"Ofehüsli\" statt, an einem gemeinsamen Tisch mit bis zu 12 Personen.\r\n\r\n'),
(0000000118, 0000000005, 0000000009, 'Bitte lasst uns bei der Anmeldung wissen, falls ihr Essensrestriktionen habt, damit wir das Menü gut planen können.'),
(0000000119, 0000000001, 0000000001, 'Je nach finanzieller Lage kannst du einen für dich stimmigen Betrag zwischen CHF 80.- bis 180.- wählen'),
(0000000120, 0000000001, 0000000002, 'Beginn: Schosshalde Busstation Nr 12\r\n\r\nAbschluss des Tages: Dalmazimätteli, Park am Wasser (10 Min. zu Fuss entfernt sind Marzili-Bahn oder Helvetiaplatz mit Bus 19 / Tram 6, 7, 8) '),
(0000000121, 0000000001, 0000000004, 'Der Kurs findet bei jeder Witterung statt. Bei sehr anspruchsvollem Wetter, wird das Programm zu einem Teil drinnen stattfinden. Der Treffpunkt bleibt in jedem Fall gleich.'),
(0000000122, 0000000005, 0000000001, 'CHF 900.- frühbucher Sonderpreis: für Anmeldungen, auch wenn das Programm noch nicht genauer beschrieben ist.\r\n\r\nDer reguläre Preis von CHF 1200.- wird gültig, sobald die Programm Details aufgeschaltet werden.'),
(0000000123, 0000000005, 0000000011, 'Um die Vielfalt von Angehensweisen zu Pflanzenbegegnungen aufzeigen zu können, werden verschiedene Personen ihren persönlichen Weg aufzeigen. Die verschiedenen Gastauftritte sind im Hauptbeschrieb ersichtlich.'),
(0000000124, 0000000005, 0000000009, 'Der Anmeldebutton für den 18. Januar gilt als Anmeldung für den gesammten Jahreszyklus 2025. Der Besuch von Einzeltagen ist nicht vorgesehen.'),
(0000000125, 0000000005, 0000000011, 'Für das Mittagessen und die weitere Verpflegung schaut Andrea Bosshard - oft verarbeitet sie auf kreative Weise auch Biertreber in unser Gericht. '),
(0000000126, 0000000005, 0000000010, 'Flyer als PDF für die [Wildkräuter Tavolata](!https://www.pflanzenlabor.ch/downloads/Flyer_Tavolata_25.pdf)'),
(0000000127, 0000000001, 0000000002, 'Halen Spielplatz\r\n\r\n4 Fussminuten von der Endstation Länggasse (Bus 20) entfernt.'),
(0000000128, 0000000005, 0000000005, '- Persönliche Ausrüstung zum malen wie Notizbuch, Bleistift, Radiergummi, Fineliner, Wasserfarbe, Buntstifte oder ähnlichem\n\n- Gute Schuhe\n- Kleider und Schutzausrüstung dem Wetter entsprechend\n- Ev. kleine Verpflegung / Trinkflasche für Zwischendurch\n- Ev. Skizzierstuhl oder Unterlage um am Boden zu sitzen'),
(0000000129, 0000000001, 0000000001, 'CHF 25.--'),
(0000000130, 0000000005, 0000000010, 'Flyer als PDF für [Märchenfeuer und Pflanzenkraft 2026](!https://www.pflanzenlabor.ch/downloads/Maerli&Pflanzen.pdf)'),
(0000000131, 0000000001, 0000000003, 'Jede interessierte Person ist willkommen. Wenn Hindernisse jeglicher Art auftreten, die zu Unsicherheit führt, gerne mit mir Kontakt aufnehmen.\nAuch interessierte Kinder sind in Begleitung einer erwachsenen Person herzlich willkommen.'),
(0000000132, 0000000005, 0000000011, 'Dieses Klangprojekt ist eine Zusammenarbeit von:\r\n\r\n[**Trio Meklin-Nicolai-Weiss**](!https://unitrecords.com/artists/meniwe--anna-kaisa-meklin--giancarlo-nicolai--sandra-weiss)\r\n\r\nAnna-Kaisa Meklin mit Viola da Gamba & Stimme\r\n\r\nGiancarlo Nicolai mit Laudes & präparierten Saiteninstrumenten\r\n\r\nSandra Weiss mit Fagott & Saxophon\r\n\r\n**Pflanzenlabor**\r\n\r\nGiovina Nicolai, Pfanzenlaborantin'),
(0000000133, 0000000005, 0000000009, 'An diesem Anlass wird ein Fotograf vor Ort sein, welcher den gesammten Tag - für eine Reportage - fotografisch festhält.\r\nWer nicht fotografiert werden will, soll sich besser an der kommenden Wildkräuter Tavolata im Frühling anmelden.'),
(0000000134, 0000000001, 0000000001, 'CHF 5.- pro Kind'),
(0000000135, 0000000005, 0000000002, 'Kunsthalle Bern\r\nHelvetiaplatz 1\r\n3005 Bern\r\n'),
(0000000136, 0000000001, 0000000003, 'Kinder ab 8 Jahren'),
(0000000137, 0000000005, 0000000005, 'Bitte Kleider anziehen, die einen Farbspritzer abbekommen dürfen.'),
(0000000138, 0000000005, 0000000011, 'Organisiert und Angeboten durch die\r\n\r\n[Kunsthalle Bern](!https://kunsthallebern.ch/de)\r\n\r\nmit\r\n\r\nClaudia Büttler, [Märchenerzählerin](!https://www.erzaehlmirmehr.ch/)\r\n\r\nGiovina Nicolai, Pflanzenlaborantin'),
(0000000139, 0000000001, 0000000001, 'Kollekte\r\n(Richtpreis: CHF 35.- inkl. Material)'),
(0000000140, 0000000005, 0000000002, 'Im Schlosspark Bümpliz\r\n\r\n[Cafébar Pinprinza](!https://www.pinprinza.ch/)\r\n\r\nBümplizstrasse 97a\r\n\r\n3018 Bern\r\n'),
(0000000141, 0000000005, 0000000011, 'Organisiert und Angeboten durch den Verein\r\n\r\n[Kulturspielplatz Pinprinza](!https://www.pinprinza.ch/verein)'),
(0000000142, 0000000001, 0000000001, 'Kollekte\r\n(Richtpreis: CHF 25.-)'),
(0000000143, 0000000005, 0000000009, 'Falls der Kurs auf der Website von Pinprinza noch nicht aufgeschaltet ist, kann direkt über czutter(at)outlook.com angemeldet werden.');

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
(0000000001, 'Kosten', 20),
(0000000002, 'Treffpunkt', 35),
(0000000003, 'Teilnehmende', 50),
(0000000004, 'Wetter und Durchführung', 30),
(0000000005, 'Ausrüstung und Kleidung', 40),
(0000000006, 'Anmeldung', 10),
(0000000007, 'Vorschau', 15),
(0000000008, 'Ort', 36),
(0000000009, 'Aktuelle Info', 5),
(0000000010, 'Downloads und Links', 100),
(0000000011, 'Leitung und Organisation', 45),
(0000000012, 'Special Guest', 21);

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
(0000000004, 'dates'),
(0000000005, 'markdown');

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
  `email` varchar(100) NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: the user wants to receive news, 0: otherwise'
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

-- --------------------------------------------------------

--
-- Table structure for table `user_vauchers_order`
--

CREATE TABLE `user_vauchers_order` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_user` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_vauchers` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `id_vaucher_type` int(10) UNSIGNED ZEROFILL NOT NULL,
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
  `d_city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vauchers`
--

CREATE TABLE `vauchers` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_vaucher_type` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_user` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `id_date` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `code` varchar(8) CHARACTER SET utf8 NOT NULL,
  `claimed` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vaucher_types`
--

CREATE TABLE `vaucher_types` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_class_type` int(10) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `img_path` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `paypal_key` varchar(20) NOT NULL,
  `position` int(4) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vaucher_types`
--

INSERT INTO `vaucher_types` (`id`, `id_class_type`, `name`, `description`, `img_path`, `price`, `paypal_key`, `position`, `enabled`) VALUES
(0000000001, 0000000002, 'Pflanzenspaziergang', 'Verschenke einen zweistündigen abendlichen Pflanzenspaziergang.\r\n\r\nAuf diesem Spaziergang schauen wir in der Umgebung der Stadt Bern, was um uns herum wächst. Falls nötig bestimmen wir Pflanzen gemeinsam und nutzen diese Gelegenheit, unser Pflanzenwissen auszutauschen.', 'vauchers/vaucher-pflanzenspaziergang_100x100.png', 'CHF 20.-', 'LJ5VQYDAJ67XQ', 30, 0),
(0000000002, 0000000003, 'Pflanzenwerkstatt', 'Verschenke eine dreistündige Pflanzenwerkstatt.\r\n\r\nErnte und Verarbeitung einer Pflanze stehen hier im Zentrum. Je nach Ernteertrag stellen wir, wie immer in der freien Natur, verschiedene Produkte und Delikatessen her. Abgerundet wird dieser Nachmittag mit einem Zvieri, sowie spannenden bis skurrilen Details zur betreffenden Pflanze.', 'vauchers/vaucher-pflanzenwerkstatt_100x100.png', 'CHF 60.-', '2ANWGQNR83K2U', 20, 0),
(0000000003, 0000000001, 'Pflanzenexkursion', 'Verschenke eine sechsstündige Pflanzenexkursion.\r\n\r\nExkursionen sind das Herzstück des Pflanzenlabors. Auf ihnen betrachten wir jeweils eine Pflanze und lernen sie kennen– mit mehreren Sinnen. Wir thematisieren dazu Botanik, Medizin, Geschichte, Anwendungsbereiche, Mystisches, Märchenhaftes und vieles mehr. Wie immer sind wir draussen bei der entsprechenden Pflanze. Ein Mittagessen (meist gekocht über dem Feuer) ist inbegriffen.', 'vauchers/vaucher-pflanzenexkursion_100x100.png', 'CHF 120.-', '4S69F2YXQQEM6', 10, 0),
(0000000004, 0000000005, 'Bierbrau Kurs', 'Verschenke einen Bierbrau Kurs\r\n\r\nAn einem Brautag brauen wir zusammen ein Kräuterbier. Dabei erfährst du hilfreiche Brautipps so wie historische Geschichten über die alte Kunst des Brauens.\r\n\r\nEinen Monat später kann das fertig gegärte Bier abgehohlt werden.', 'vauchers/vaucher-braukurs_100x100.png', 'CHF 180.-', 'MR5FXQKUNVPC6', 15, 0),
(0000000005, 0000000006, 'Teetrunk', 'Verschenke zwei Stunden Teetrunk.\r\n\r\nWährend dieser Zeit werden wir eine Pflanze erfahren - mit allen Sinnen.\r\nMit einer Tasse Tee beginnen wir die Reise um eine Pflanze kennen zu lernen. Mit den Sinnen erfahren und aufmerksam zu Beobachten wird unser Hauptfokus sein. Begleitet mit wissenswertem und kuriosem über die jeweilige Pflanze.\r\n\r\nWer die Pflanzenpäckli vom Pflanzenlabor bereits kennt: Dies ist die Live-Version davon.', 'vauchers/vaucher-teetrunk_100x100.png', 'CHF 50.-', '', 22, 0),
(0000000006, 0000000002, 'Pflanzenspaziergang Abo', 'Verschenke ein Abo für 4 Pflanzenspaziergänge.\r\n\r\nAuf den monatlichen Spaziergängen erfahren wir was in der Umgebung Stadt Bern wächst.\r\n\r\nEin Abo ist während 6 Monaten gültig. ', 'vauchers/vaucher-pflanzenspaziergang_100x100.png', 'CHF 120.-', 'LJ5VQYDAJ67XQ', 30, 0),
(0000000007, 0000000002, 'Pflanzenspaziergang Einzeln', 'Verschenke einen zweistündigen Pflanzenspaziergang in der Umgebung Stadt Bern.', 'vauchers/vaucher-pflanzenspaziergang_100x100.png', 'CHF 45.-', 'LJ5VQYDAJ67XQ', 35, 0),
(0000000008, 0000000002, 'Naturbegegnung 4-er Abo', 'Verschenke ein Abo für 4 Naturbegegnungen im Raum Bern.\r\n\r\nDies ist eine Kooperation von Sprouts, Heilpflanzenatelier, Essbar u Achtsam und dem Pflanzenlabor.\r\n\r\nEin Abo ist gültig zwischen 1.1.2023 bis 30.6.2023\r\n\r\nDas aktuelle Programm findest du unter folgendem Link:\r\nwww.pflanzenlabor.ch/downloads/Programm-Naturbegegnungen.pdf\r\n\r\nEinen detailierten Abo-Beschrieb findest du unter folgendem Link:\r\nwww.pflanzenlabor.ch/downloads/4-er-Abo-Potpourri.pdf', 'vauchers/vaucher-pflanzenspaziergang_100x100.png', 'CHF 160.-', 'LJ5VQYDAJ67XQ', 30, 0),
(0000000009, 0000000004, 'Gutscheine über den Webshop beziehen', 'Gutscheine können ab sofort direkt über den Webshop vom Pflanzenlabor gekauft werden:\r\nhttps://pflanzenlabor.sumupstore.com/produkte', 'vauchers/vaucher-braukurs_100x100.png', '', 'MR5FXQKUNVPC6', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_section_dates` (`id_section_dates`),
  ADD KEY `id_section_preview` (`id_section_preview`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_impressions_content_type` (`id_impressions_content_type`);

--
-- Indexes for table `packets`
--
ALTER TABLE `packets`
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
-- Indexes for table `user_packets_order`
--
ALTER TABLE `user_packets_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_packets` (`id_packets`),
  ADD KEY `id_payment` (`id_payment`);

--
-- Indexes for table `user_vauchers_order`
--
ALTER TABLE `user_vauchers_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_payment` (`id_payment`),
  ADD KEY `id_vauchers` (`id_vauchers`),
  ADD KEY `id_vaucher_type` (`id_vaucher_type`);

--
-- Indexes for table `vauchers`
--
ALTER TABLE `vauchers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_date` (`id_date`),
  ADD KEY `id_vaucher_type` (`id_vaucher_type`);

--
-- Indexes for table `vaucher_types`
--
ALTER TABLE `vaucher_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_class_type` (`id_class_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `class_dates`
--
ALTER TABLE `class_dates`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=479;

--
-- AUTO_INCREMENT for table `class_type`
--
ALTER TABLE `class_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `impressions`
--
ALTER TABLE `impressions`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `impressions_content`
--
ALTER TABLE `impressions_content`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `impressions_content_type`
--
ALTER TABLE `impressions_content_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `impressions_fields`
--
ALTER TABLE `impressions_fields`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=659;

--
-- AUTO_INCREMENT for table `impressions_fields_type`
--
ALTER TABLE `impressions_fields_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `packets`
--
ALTER TABLE `packets`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `section_title`
--
ALTER TABLE `section_title`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `section_type`
--
ALTER TABLE `section_type`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT 'increments automatically, do not touch this', AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `user_packets_order`
--
ALTER TABLE `user_packets_order`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_vauchers_order`
--
ALTER TABLE `user_vauchers_order`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vauchers`
--
ALTER TABLE `vauchers`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaucher_types`
--
ALTER TABLE `vaucher_types`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_fk_id_section_dates` FOREIGN KEY (`id_section_dates`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `classes_fk_id_section_preview` FOREIGN KEY (`id_section_preview`) REFERENCES `sections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
-- Constraints for table `impressions_fields_type`
--
ALTER TABLE `impressions_fields_type`
  ADD CONSTRAINT `fk_impressions_fields_type_id_impressions_content_type` FOREIGN KEY (`id_impressions_content_type`) REFERENCES `impressions_content_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `user_vauchers_order`
--
ALTER TABLE `user_vauchers_order`
  ADD CONSTRAINT `fk_user_vauchers_order_id_payment` FOREIGN KEY (`id_payment`) REFERENCES `payment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_vauchers_order_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_vauchers_order_id_vaucher_type` FOREIGN KEY (`id_vaucher_type`) REFERENCES `vaucher_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user_vauchers_order_id_vauchers` FOREIGN KEY (`id_vauchers`) REFERENCES `vauchers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vauchers`
--
ALTER TABLE `vauchers`
  ADD CONSTRAINT `vauchers_fk_id_date` FOREIGN KEY (`id_date`) REFERENCES `class_dates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `vauchers_fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `vauchers_fk_id_vaucher_type` FOREIGN KEY (`id_vaucher_type`) REFERENCES `vaucher_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vaucher_types`
--
ALTER TABLE `vaucher_types`
  ADD CONSTRAINT `fk_vaucher_types_id_class_type` FOREIGN KEY (`id_class_type`) REFERENCES `class_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
