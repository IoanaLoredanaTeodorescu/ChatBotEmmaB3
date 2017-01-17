-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: fenrir
-- Generation Time: Dec 20, 2016 at 11:11 PM
-- Server version: 5.1.73-1
-- PHP Version: 5.2.6-1+lenny16

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `IAchatboot`
--

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE IF NOT EXISTS `hobbies` (
  `hobby_id` int(11) NOT NULL AUTO_INCREMENT,
  `hobby` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`hobby_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`hobby_id`, `hobby`) VALUES
(1, 'I like to travel');

-- --------------------------------------------------------

--
-- Table structure for table `jokes`
--

CREATE TABLE IF NOT EXISTS `jokes` (
  `joke_id` int(11) NOT NULL AUTO_INCREMENT,
  `joke` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`joke_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `jokes`
--

INSERT INTO `jokes` (`joke_id`, `joke`) VALUES
(3, 'Why did the bee get married? Because he found his honey.'),
(4, 'What do you call two fat people having a chat? -- A heavy discussion'),
(5, 'How do you make holy water? You boil the hell out of it.'),
(6, 'What''s the difference between snowmen and snowladies? Snowballs'),
(7, 'I am a nobody, nobody is perfect, therefore I am perfect.'),
(8, 'Light travels faster than sound. This is why some people appear bright until they speak.'),
(9, 'What did the 0 said to the 8? Nice Belt!'),
(10, 'I''d tell you a chemistry joke but I know I wouldn''t get a reaction.'),
(11, 'I am so poor I can''t even pay attention.'),
(12, 'I asked God for a bike, but I know God doesn''t work that way. So I stole a bike and asked for forgiveness.'),
(13, 'I used to think I was indecisive, but now I''m not too sure.'),
(14, 'I changed my password to "incorrect". So whenever I forget what it is the computer will say "Your password is incorrect".'),
(15, 'I started out with nothing, and I still have most of it.'),
(16, 'Team work is important; it helps to put the blame on someone else.'),
(17, 'Artificial intelligence is no match for natural stupidity.'),
(18, 'Is google a woman? Because it won''t let you finish your sentence without coming up with other suggestions.'),
(19, 'If I wanted to kill myself I''d climb your ego and jump to your IQ.'),
(20, 'A clean house is the sign of a broken computer.');

-- --------------------------------------------------------

--
-- Table structure for table `memories`
--

CREATE TABLE IF NOT EXISTS `memories` (
  `memory_id` int(11) NOT NULL AUTO_INCREMENT,
  `memory` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`memory_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `memories`
--

INSERT INTO `memories` (`memory_id`, `memory`) VALUES
(1, 'I remember');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `person_id` int(11) NOT NULL,
  `movie` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`person_id`, `movie`) VALUES
(1, 'Birdemic #best special effects'),
(1, 'Birdemic 2');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
  `person_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `religion` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `age` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `eyes_color` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `hair_color` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`person_id`, `first_name`, `last_name`, `status`, `city`, `country`, `nationality`, `religion`, `age`, `eyes_color`, `hair_color`) VALUES
(1, 'Ciprian', 'Andrei', 'bored', 'Iasi', 'Romania', 'roman', NULL, '21', 'brown', 'black');

-- --------------------------------------------------------

--
-- Table structure for table `persons_link_hobbies`
--

CREATE TABLE IF NOT EXISTS `persons_link_hobbies` (
  `person_id` int(11) NOT NULL,
  `hobby_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `persons_link_hobbies`
--

INSERT INTO `persons_link_hobbies` (`person_id`, `hobby_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `persons_link_memories`
--

CREATE TABLE IF NOT EXISTS `persons_link_memories` (
  `person_id` int(11) NOT NULL,
  `memory_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `persons_link_memories`
--

INSERT INTO `persons_link_memories` (`person_id`, `memory_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `person_id` int(11) NOT NULL,
  `song` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
