-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Nov 2019 um 23:04
-- Server-Version: 10.4.8-MariaDB
-- PHP-Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_robert_flunger_biglibrary`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `biglibrary`
--

CREATE TABLE `biglibrary` (
  `ISBN` varchar(50) NOT NULL,
  `title` varchar(120) NOT NULL,
  `image` varchar(250) NOT NULL,
  `published_on` date NOT NULL,
  `description` varchar(250) NOT NULL,
  `media_type` enum('Book','CD','DVD') DEFAULT NULL,
  `availability` enum('available','reserved') DEFAULT NULL,
  `author_surname` varchar(30) NOT NULL,
  `author_firstname` varchar(30) NOT NULL,
  `publisher_name` varchar(30) NOT NULL,
  `publisher_address` varchar(100) NOT NULL,
  `publisher_ZIP` varchar(25) NOT NULL,
  `publisher_size` enum('small','medium','large') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `biglibrary`
--

INSERT INTO `biglibrary` (`ISBN`, `title`, `image`, `published_on`, `description`, `media_type`, `availability`, `author_surname`, `author_firstname`, `publisher_name`, `publisher_address`, `publisher_ZIP`, `publisher_size`) VALUES
('9780316478526', 'Talking to Strangers: What We Should Know about the People We Don\'t Know', 'https://images-na.ssl-images-amazon.com/images/I/4186LIB65oL._SX334_BO1,204,203,200_.jpg', '2019-09-10', 'Malcolm Gladwell, host of the podcast Revisionist History and author of the #1 New York Times bestseller Outliers, offers a powerful examination of our interactions with strangers -- and why they often go wrong.', 'Book', 'reserved', 'Gladwell', 'Malcolm', 'Little, Brown and Company', '53 State St, Boston', 'MA 02109', 'medium'),
('9781484219959', 'PHP Objects, Patterns, and Practice', 'https://images-na.ssl-images-amazon.com/images/I/51NG-ZskTBL._SX348_BO1,204,203,200_.jpg', '2016-12-20', 'Aided by three key elements: object fundamentals, design principles, and best practices, you\'ll learn how to develop elegant and rock solid systems using PHP.', 'Book', 'available', 'Zandstra', 'Matt', 'Apress Media LLC', '233 Spring Street', 'NY 10013', 'large'),
('9781491978917', 'Learning PHP, MySQL & JavaScript: With jQuery, CSS & HTML5 (Learning PHP, MYSQL, Javascript, CSS & HTML5)', 'https://images-na.ssl-images-amazon.com/images/I/51H8DtU-WTL._SX379_BO1,204,203,200_.jpg', '2018-06-30', 'Build interactive, data-driven websites with the potent combination of open source technologies and web standards, even if you have only basic HTML knowledge.', 'Book', 'available', 'Nixon', 'Robin', 'O\'Reilly UK Ltd', 'Gostrey House Union Road Farnham', 'GU9 7PT', 'medium'),
('9781983475986', 'Professional PHP: Building maintainable and secure applications', 'https://images-na.ssl-images-amazon.com/images/I/41GRZ-ywg4L._SX331_BO1,204,203,200_.jpg', '2018-02-08', 'In this book you will learn how to write clean and maintainable object-oriented code, start a new project from scratch, implement a layered architecture and protect your application from XSS, CSRF and other attacks', 'Book', 'reserved', 'Louys', 'Patrick', 'CreateSpace Independent', 'Scott\'s Valley, California', '95060', 'small'),
('B00000DR52', 'The Last Emperor', 'https://images-na.ssl-images-amazon.com/images/I/51jULcU2WLL._PJautoripBadge,BottomRight,4,-40_OU11__.jpg', '1988-01-11', 'Für Bertoluccis opulente Filmhistorie über Chinas letzten Kaiser erschlossen Sakamoto, Byrne und der Chines Cong Su eine weitere Dimension: Tradition und Moderne meisterlich gekreuzt.', 'CD', 'available', 'Byrne', 'David', 'Virgin (Universal Music)', '364–366\r\nKensington High Street, London', 'W14 8NS', 'large'),
('B009PF93LS', 'Christmas', 'https://images-na.ssl-images-amazon.com/images/I/51Jx6guI8EL._PJautoripBadge,BottomRight,4,-40_OU11__.jpg', '2012-11-23', 'Michael Bublé ist zurück mit einer neuen Version seines Megasellers Christmas , dem erfolgreichsten Weihnachtsalbum aller Zeiten.', 'CD', 'reserved', 'Buble', 'Michael', 'Reprise Records (Warner)', '3300 Warner Blvd Burbank', 'CA 91505', 'large'),
('B07GRLPXPB', 'A Star is born Soundtrack', 'https://images-na.ssl-images-amazon.com/images/I/71yYMF5sxsL._SL1089_.jpg', '2018-10-05', 'Superstars Lady Gaga und Bradley Cooper haben sich zusammengeschlossen, um den 30er-Jahre Filmklassiker \"A Star Is Born\" neu zu verfilmen.', 'CD', 'available', 'Cooper', 'Bradley', 'Interscope (Universal Music)', '2220 Colorado Ave, Santa Monica', 'CA 90404', 'large'),
('B07T1G32HW', 'Aladdin', 'https://images-na.ssl-images-amazon.com/images/I/81zddMLIeaL._SY550_.jpg', '2019-09-10', 'Experience the thrilling live-action adaptation of the characters and tale you know and love from Disney\'s animated classic.', 'DVD', 'available', 'Ritchie', 'Guy', 'Walt Disney Studios', '3900 W Alameda Ave Burbank', 'CA 91505', 'large'),
('B07TPYXN78', 'IT: Chapter Two', 'https://images-na.ssl-images-amazon.com/images/I/81UOkx66E8L._SY550_.jpg', '2019-12-10', 'Because every 27 years evil revisits the town of Derry, Maine, “It Chapter Two” brings the characters—who’ve long since gone their separate ways—back together as adults, nearly three decades after the events of the first film.', 'DVD', 'reserved', 'Muschietti', 'Andy', 'Warner Brothers', '4000 Warner Boulevard Burbank', 'CA 91522', 'large'),
('B07XVFMQK4', 'Downtown Abbey', 'https://images-na.ssl-images-amazon.com/images/I/81ny2Sjna2L._SY550_.jpg', '2019-12-17', 'The worldwide phenomenon Downton Abbey, becomes a grand motion picture event, as the beloved Crawleys and their intrepid staff prepare for the most important moment of their lives.', 'DVD', 'available', 'Engler', 'Michael', 'Universal Pictures Home', '111 Universal Hollywood Dr', 'CA 91608', 'large');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `biglibrary`
--
ALTER TABLE `biglibrary`
  ADD PRIMARY KEY (`ISBN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
