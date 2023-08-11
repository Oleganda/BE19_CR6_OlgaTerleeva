-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 11, 2023 at 02:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BE19_CR6_bigEventsOlgaTerleeva`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230811073037', '2023-08-11 07:30:45', 21);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `image`, `capacity`, `email`, `phone`, `address`, `website`, `type`) VALUES
(1, 'Theater im Park am Belvedere 2023', '2023-05-25 19:00:00', 'The private garden of Palais Schwarzenberg - a beautiful, two-hectare English natural garden in the 3rd district is also open in 2023 for communal cultural enjoyment under the open sky. Surrounded by over 100-year-old plane trees, one of Vienna\'s summer stages will be staged from May 25 to September 16, 2023.', 'https://www.stadt-wien.at/fileadmin/content/pics/01_Oberes_Belvedere_03_Oberes-Belvedere_Nordseite_Brunnen_c_Eva-Wuerdinger.jpg.pagespeed.ce.99Xk1TvNn8.jpg', 200, 'belveder@belvedere.com', '+43 1 588 93 40', 'Prinz-Eugen-Straße, Ecke Plößlgasse  1030 Wien', 'theaterimpark.at/programm-tickets', 'Theatre'),
(2, 'Glitz and Glamour. 200 Years of Lobmeyr', '2023-08-25 17:00:00', 'Since 1823, the Viennese glass manufacturer J. & L. Lobmeyr  has stood for artistic, masterfully executed glasses, drinking  services, chandeliers, and decorative objects of fine dining. Over the course of six generations, the Lobmeyr family has managed  to combine tradition with innovation and to shape glass design far beyond the borders of Austria with designs by creative minds such as Theophil Hansen, Josef Hoffmann, Adolf Loos, Lotte Fink, Marianne Rath, Michael Anastassiades, Max Lamb, POLKA, Martino Gamper, and Sebastian Menschhorn.', 'https://events.wien.info/media/full/Lobmeyer_Luster.jpeg', 60, 'mak@mak.com', '+43 1 711 36 08', 'MAK-Ausstellungshalle Stubenring 5 1010 Wien', 'www.mak.at', 'Theatre'),
(3, 'Musikverein - Guided Tour', '2023-09-02 16:12:00', 'As one of the world\'s most beautiful concert halls and most decorative and striking buildings on Vienna\'s Ringstrasse, the Musikverein can be best appreciated in the setting of a concert. However, the Gesellschaft der Musikfreunde is also opening the doors of this magnificent building for public tours.', 'https://events.wien.info/media/full/MV_GrosserSaal1_1.jpg', 300, 'music@music.com', '+43 1 505 81 90', 'Venue Musikvereinsplatz 1 1010 Wien', 'www.musikverein.at/guided tours', 'Music'),
(4, 'Blitz Free Dance Lessons', '2023-08-12 16:00:00', 'More than 150 years ago, Johann \"Schani\" Strauss made the Vienna Waltz famous around the world. Today, the dreams of millions of ball attendees are set to three-quarter time. Learn how to waltz at the place where it was invented -- at a \"Blitz\" dance lesson in Vienna.', 'https://www.wien.info/resource/image/290538/3x2/1100/733/c13e46f6bbed927ca009247f74128267/8575B70C0CC53B37CFF9FE69568AD6E7/40310-tanzendes-paar-palais-tanz-walzer.webp', 20, 'office@tanzschulerueff.at', '+43 1 405 26 69', 'Friedrich-Schmidt-Platz 4 1080 Vienna', NULL, 'Music'),
(5, 'Venue Bars on the Gürtel', '2023-08-26 21:00:00', 'In and in front of the venues on Lerchenfelder & Hernalser Gürtel, between Alser Straße and Thaliastraße, more than 30 artists will provide a lively party atmosphere on 4 open-air stages.\r\n\r\nOn the occasion of the 25th anniversary of the Nightwalk, there will be an exhibition on the diverse history of the event and for the first time a night market with designers and artists who will exhibit and sell their works until 10 pm.\r\n\r\nAdmission free!', 'https://events.wien.info/media/full/g%C3%BCrtel_1.jpg', 100, 'bars@bar.com', 'www.guertelnightwalk.at', 'Lerchenfelder, Hernalser Gürtel 1080 Wien', 'www.facebook.com/GuertelNightwalk', 'Music'),
(6, 'RENDEZ-VOUS. Picasso, Chagall, Klein and the times', '2023-09-13 16:00:00', 'This year’s summer exhibition at the Heidi Horten Collection invites you to rendezvous with artists from the collection whose lives were touched by France; the exhibition follows them there to places representing a significant stage in their artistic development.  Taken together, the importance of Paris is reflected – but also that of the Midi, the south of France — as catalyst and breeding ground for the emergence and dissemination of significant art movements of the twentieth century.', 'https://events.wien.info/media/full/HortenCollection-Marc-Chagall-HHC-Web.jpg', 400, 'museum@museum.com', '+43 5839 32 44', 'Hanuschgasse 3 1010 Wien', 'hortencollection.com', 'Museum'),
(7, 'Rock Me Amadeus - The Falco Musical', '2023-10-16 16:30:00', 'World premiere on October 7, 2023: the eventful life of pop superstar Falco is coming to the musical stage at the Ronacher Theater. “Rock Me Amadeus - The Falco Musical” is an homage to the exceptional Austrian artist, featuring his greatest hits and four new songs.\r\n\r\nBig musical news from Vienna: the new Falco musical is coming to the Ronacher Theater this fall. The latest creation of the Vereinigten Bühnen Wien tells the exciting story of the young Viennese musician Hans Hölzel and his journey to becoming the global star “Falco”.', 'https://www.wien.info/resource/image/455918/3x2/1100/733/6dc14d2cbce75b3c3ea33e46f4073a97/98627E904B2E8DEA478DEDF2AB9CDBA5/rock-me-amadeus-falco-musical-sujet.webp', 500, 'kundenservice@wien-ticket.at', '+43-1-588 8500', 'Seilerstätte 9 1010 Vienna', 'http://www.musicalvienna.at', 'Dance'),
(8, 'Theater an der Stadt Wien', '2023-08-21 17:30:00', 'Music theater and opera from the Early Baroque to today – of the highest quality and in modern aesthetics – are the specialty of Theater an der Wien. As a seasonal opera house, there are regular premieres as well as concertante operas, concerts, and new music theater formats.', 'https://www.wien.info/resource/image/311376/3x2/1100/733/bdf450b5f52ab675fde44c2bdcec17be/C6AEC8FFDAC3AF45448412CD32E5F3B0/theater-an-der-wien-eingang-aussen.webp', 600, 'office@halleneg.at', '+43 1 524 33 21 0', 'Museumsplatz 1 1070 Vienna', 'http://www.halleneg.at', 'Museum');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
