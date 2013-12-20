-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2013 at 06:27 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cd`
--
CREATE DATABASE IF NOT EXISTS `cd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cd`;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `issuing_date` varchar(10) NOT NULL,
  `description` text,
  `price` int(5) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `id_author` int(10) NOT NULL,
  `id_type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `id_author` (`id_author`),
  UNIQUE KEY `id_author_2` (`id_author`),
  KEY `fk1_type_id` (`id_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `name`, `issuing_date`, `description`, `price`, `img_url`, `id_author`, `id_type`) VALUES
(1, '1st Amendment', '2013.0', NULL, 7, 'WebRoot/dec/img/cd1.jpg', 2, 1),
(2, 'Disorganized Fun', '2009.0', NULL, 13, 'WebRoot/dec/img/cd2.jpg', 9, 8),
(3, 'Rappalachia', '2012.0', NULL, 15, 'WebRoot/dec/img/cd3.jpg', 10, 10),
(4, 'Tim Warfield s Jazzy Christmas', '2012.0', NULL, 17, 'WebRoot/dec/img/cd4.jpg', 11, 3),
(5, 'Love, Gratitude and Other Distractions', '2013.0', NULL, 18, 'WebRoot/dec/img/cd5.jpg', 12, 8),
(6, 'Hangin With Dr. Wu: Texas Blues Project, Vol. 4', '2013.0', NULL, 15, 'WebRoot/dec/img/cd6.jpg', 13, 2),
(7, 'If It Aint Here When I Get Back', '2013.0', NULL, 15, 'WebRoot/dec/img/cd7.jpg', 14, 1),
(8, 'Dismantle the Sun', '2012.0', NULL, 12, 'WebRoot/dec/img/cd8.jpg', 15, 2),
(9, 'Lucky Devil', '2010.0', NULL, 15, 'WebRoot/dec/img/cd9.jpg', 16, 3),
(10, 'Archangel', '2011.0', NULL, 18, 'WebRoot/dec/img/cd10.jpg', 17, 4),
(11, 'Sacred Cello', '2006.0', NULL, 13, 'WebRoot/dec/img/cd11.jpg', 18, 1),
(12, 'Bonnie & Clyde', '2012.0', NULL, 15, 'WebRoot/dec/img/cd12.jpg', 19, 4),
(13, 'In the Christmas Mood', '2012.0', NULL, 13, 'WebRoot/dec/img/cd13.jpg', 20, 5),
(14, 'Christmas with Cantus', '2011.0', NULL, 20, 'WebRoot/dec/img/cd14.jpg', 21, 4),
(15, 'Tidings of Comfort and Joy', '2013.0', NULL, 17, 'WebRoot/dec/img/cd15.jpg', 22, 1),
(16, 'Glorious Christmas', '2013.0', NULL, 13, 'WebRoot/dec/img/cd16.jpg', 23, 5),
(19, 'Foolers  Gold', '2013.0', 'Both a step toward the future and a step back in time, this sophomore release will have your toes tapping and your heart singing along.', 15, 'WebRoot/dec/img/cd17.jpg', 24, 3),
(20, 'Sketches of Spain', '2013.0', 'The Grammy winner takes on and transcends the physical, creative, and conceptual challenges of Miles Davis-Gil Evans milestone recording and makes a powerful musical statement of his own.', 16, 'WebRoot/dec/img/cd18.jpg', 25, 3),
(21, 'Dreams in Apartments', '2013.0', 'Possessing a voice filled with delicious subtleties and striking authenticity, Harms creates a dream-like songscape of sensual interpretations of familiar jazz ballads, mixed with soulful, pop-influenced originals.', 13, 'WebRoot/dec/img/cd19.jpg', 26, 3),
(22, 'Multipurpose Trap', '2013.0', 'Complex progressive jazz-rock with saxophone, violin, and mellotron', 13, 'WebRoot/dec/img/cd20.jpg', 27, 6),
(23, 'Best Slow Jams - Volume One', '2008.0', 'A re-compilation of the Whispers most romantic songs.', 15, 'WebRoot/dec/img/cd21.jpg', 28, 7),
(24, 'Yuletide Hideaway', '2013.0', 'A wam, inviting holiday collection from 4-Time Grammy Nominee Karrin Allyson.', 12, 'WebRoot/dec/img/cd22.jpg', 29, 3),
(25, 'Jason Gould', '2012.0', 'test3', 10, 'WebRoot/dec/img/cd23.jpg', 30, 8),
(26, 'Rise Up', '2009.0', 'The Band s first studio album, Rise Up captures the high energy of the live big band experience, while bringing special studio-only features like guest vocalists. The best yet, we bring you a vibrant and eclectic mix of the unexpected in a marching band.', 15, 'WebRoot/dec/img/cd24.jpg', 31, 3),
(27, 'Habit That You Blame', '2013.0', 'Gavlyn s previously unreleased EP exclusively on Broken Complex Records.', 7, 'WebRoot/dec/img/cd25.jpg', 32, 9),
(28, 'Monochrome Skies', '2012.0', 'An atmospheric and melodic listening experience from start to finish. It begins animated, but slowly takes you on a journey through the tempest that represents many of society''s woes, the struggles of everyday life, and the power of complex cryptic lyrics', 13, 'WebRoot/dec/img/cd26.jpg', 33, 9),
(29, 'The Way', '2011.0', 'A hybrid sound of orchestral score, world instrumentation, and driving percussion.', 12, 'WebRoot/dec/img/cd27.jpg', 34, 4),
(30, 'Fire & Ice', '2013.0', 'TRIPLE SIX MAFIA FOUNDING MEMBER  LORD INFAMOUS  TEAMS UP WITH MONEY BY ANY MEANZ CEO J-P ON THIS CD  FIRE & ICE . ENTIRELY PRODUCED BY LIL AWREE WHO HAS PRODUCED TRACKS FOR  JUICY J ,  PROJECT PAT ,  LIL WYTE  & MORE!', 10, 'WebRoot/dec/img/cd28.jpg', 35, 9),
(31, 'Ghetto Testimony', '2013.0', 'Good music', 10, 'WebRoot/dec/img/cd29.jpg', 36, 9);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(1, '1st Amendment'),
(27, 'Birds and Buildings'),
(14, 'Bruce Molsky'),
(21, 'Cantus'),
(36, 'Doughboy Roc'),
(13, 'Dr. Wu  and Friends'),
(33, 'Epidemic'),
(15, 'Eric Steckel'),
(10, 'Gangstagrass'),
(32, 'Gavlyn'),
(2, 'Ghostryder'),
(30, 'Jason Gould'),
(29, 'Karrin Allyson'),
(35, 'Lord Infamous & Jp'),
(31, 'MarchFourth Marching Band'),
(23, 'Matthew L. Fisher'),
(24, 'Meschiya Lake and the Little Bfes'),
(16, 'Meschiya Lake and the Little Big Horns'),
(26, 'Nancy Harms'),
(25, 'Nicholas Payton'),
(9, 'Ronald Jenkees'),
(18, 'Steven Sharp Nelson'),
(20, 'The Glenn Miller Orchestra'),
(22, 'The Trail Band'),
(28, 'The Whispers'),
(11, 'Tim Warfield'),
(17, 'Two Steps From Hell'),
(19, 'Various Artists, Don Black & Frank Wildhorn'),
(12, 'Will Lee'),
(34, 'Zack Hemsey');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE IF NOT EXISTS `song` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `id_Album` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk2_album_id` (`id_Album`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`id`, `name`, `description`, `id_Album`) VALUES
(1, 'Struggle', NULL, 1),
(2, 'Disorganized Fun', NULL, 2),
(3, 'Gunslinging Rambler Feauring R-Son', NULL, 3),
(4, 'Santa Clause Is Coming to Town', NULL, 4),
(5, 'Gratitude', NULL, 5),
(6, 'Need a Witness', NULL, 6),
(7, 'Wreck of the Dandenong', NULL, 7),
(8, 'Mississippi River', NULL, 8),
(9, 'I am Alone Because I love You', NULL, 9),
(10, 'Mercy in Darkness', NULL, 10),
(11, 'Jesu, Joy of Mas Desiring', NULL, 11),
(12, 'Picture Show', NULL, 12),
(13, 'Sleigh Ride', NULL, 13),
(14, 'Nowell! Nowell! This is the Salutacion', NULL, 14),
(15, 'Up On the Housetop', NULL, 15),
(16, 'Glorious Christmas', NULL, 16),
(17, 'Catch Em Young', NULL, 19),
(18, 'Concierto De Aranjuez', NULL, 20),
(19, 'Weight of the World', NULL, 21),
(20, 'The Dumb Fish', NULL, 22),
(21, 'Give It To Me', NULL, 23),
(22, 'Yuletide Hideaway', NULL, 24),
(23, 'Morning Prayer', NULL, 25),
(24, 'Ninth Ward Calling', NULL, 26),
(25, 'Habit That You Blame', NULL, 27),
(26, 'Intro', NULL, 28),
(27, 'Vengeance', NULL, 29),
(28, 'Intro (Fire & Ice)', NULL, 30),
(29, 'Ghetto Testimony', NULL, 31);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(2, 'blues'),
(4, 'classical'),
(10, 'country'),
(1, 'folk'),
(9, 'hip-hop'),
(5, 'holiday'),
(3, 'jazz'),
(8, 'pop'),
(7, 'R&B'),
(6, 'rock');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) DEFAULT NULL,
  `psw` varchar(20) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `phonenum` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `fk1_author_id` FOREIGN KEY (`id_author`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `fk1_type_id` FOREIGN KEY (`id_type`) REFERENCES `type` (`id`);

--
-- Constraints for table `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `fk2_album_id` FOREIGN KEY (`id_Album`) REFERENCES `album` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
