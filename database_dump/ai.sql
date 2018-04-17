-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 05:08 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai`
--
CREATE DATABASE IF NOT EXISTS `ai` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ai`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `questionid` int(11) NOT NULL,
  `adding` varchar(15) NOT NULL,
  `subtracting` varchar(15) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `questionid`, `adding`, `subtracting`, `content`) VALUES
(1, 1, '8, 8, 1', '9', 'Red'),
(2, 1, '4, 1, 1', '', 'Green'),
(3, 1, '3', '1', 'Yellow'),
(4, 1, '7, 9, 9', '3', 'Brown'),
(5, 1, '7, 7, 9', '3, 6', 'Color is not real, but is instead an illusion created subconsciously for our satisfaction.'),
(6, 2, '4, 2', '9', 'Little, if any. Everything is by the book with me.'),
(7, 2, '9, 1', '', 'Handy for my creative thinking. I use it when I work sometimes.'),
(8, 2, '9,  7', '', 'Without it, I would have no friends.'),
(9, 2, '9, 9, 3', '5', 'Can\'t answer, thinking about who I\'ll run into while I fly home with my wings this evening.'),
(10, 3, '5, 4, 4', '2, 6', 'Study really hard.'),
(11, 3, '2, 4', '', 'At the last second, of course.'),
(12, 3, '2, 2', '4', 'Ignore it and play. It will all work out somehow.'),
(13, 4, '4, 4, 1, 5', '7', 'Yes'),
(14, 4, '7, 8, 8', '4, 4', 'No'),
(15, 5, '4, 4, 2', '6, 8', 'Full'),
(16, 5, '8, 1, 1', '3', 'Half'),
(17, 5, '6, 9, 1', '4, 2', 'A little'),
(18, 6, '6, 8, 3', '1', 'The big box'),
(19, 6, '1, 2, 2, 9', '6 ', 'The little one'),
(20, 7, '6, 8, 8, ', '9, 3', 'Say thank you.'),
(21, 7, '7, 9,  3', '4, 5', 'Say thanks with a joke.'),
(22, 7, '4, 1', '3, 6', 'Say thanks, but be cool.'),
(23, 7, '5, 4 ', '', 'Insult them because that\'s what friends do.'),
(24, 8, '8, 8', '3', 'Turn it in to the police!'),
(25, 8, '3, 3, 2', '1', 'I\'m rich!'),
(26, 8, '1, 4', '2  ', 'Is anyone watching?'),
(27, 9, '2, 2, 2, 4', '1', 'Yes.'),
(28, 9, '8, 8, 9, 1', '', 'No!'),
(29, 10, '2, 2, 4, 4', '1', 'Yank open the door.'),
(30, 10, '9, 3, 6', '2', 'Scream in unison'),
(31, 11, '8, 2', 'Imagination', 'The beach.'),
(32, 11, '9, 5', '8', 'Shopping.'),
(33, 11, '7, 7, 9', '8', 'Anywhere but here.'),
(34, 12, '3, 3, 2', '1', 'HAHA! Yes. Very funny!'),
(35, 12, '4, 4, 1', '3', 'Could you say that again?'),
(36, 12, '8, 7', '2, 3', 'Right… Well, I gotta go.'),
(37, 13, '3, 3, 3', '1', 'Yes'),
(38, 13, '7, 4', '3, 9', 'No'),
(39, 14, '2, 2, 4 ', '8, 8', 'Face up to the bully.'),
(40, 14, '1', '2, 6, 5', 'Caution the bully from afar.'),
(41, 14, '5, 5', '8', 'Abuse the bully from behind.'),
(42, 15, '3, 9, 7', '1', 'Love them!'),
(43, 15, '1', '', 'A little. I\'ll have a sensible chuckle every now and then.'),
(44, 15, '4', '3', 'Not really.'),
(45, 16, '8, 8', '4, 5', 'Scream and run.'),
(46, 16, '6, 4, 1', '2', 'Close the lid without a word.'),
(47, 16, '2, 2, 9', '5, 1', 'Shake hands with it.'),
(48, 17, '6, 6 ', '', 'Thumb'),
(49, 17, '1, 1', '', 'Index finger'),
(50, 17, '3, 3', '', 'Middle finger'),
(51, 17, '8, 1 ', '', 'Ring finger'),
(52, 17, '7, 7  ', '', 'Little finger'),
(53, 18, '6, 6, 3', '9, 1', 'Spend it now.'),
(54, 18, '1, 9, 4', '6', 'Save it.'),
(55, 18, '8, 3', '1 ', 'Give it away.'),
(56, 19, '5, 6', '1', 'Open it right away!'),
(57, 19, '9, 9, 4, 1', '6, 5', 'No. Could be a trap!'),
(58, 19, '7, 7', '3, 6', 'It\'s probably empty anyway knowing my luck.'),
(59, 20, '2, 2, 2', '7, 7', 'Bravely declare my love.'),
(60, 20, '1, 8', '7', 'Might say hello…'),
(61, 20, '3, 3, 2', '1', 'Pull a prank for attention.'),
(62, 20, '7, 7, 8', '2', 'Look from afar. I don\'t stand a chance.');

-- --------------------------------------------------------

--
-- Table structure for table `personalities`
--

CREATE TABLE `personalities` (
  `id` int(11) NOT NULL,
  `trait_name` varchar(200) NOT NULL,
  `film` varchar(200) NOT NULL,
  `game` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalities`
--

INSERT INTO `personalities` (`id`, `trait_name`, `film`, `game`) VALUES
(1, 'observant', 'Mystery, Crime, Sci-fi', 'Strategy, Role-playing'),
(2, 'confident', 'Superhero, Adventure, Action-Adventure, Horror', 'Sports, Adventure'),
(3, 'jolly', 'Comedy, Animation, Fantasy', 'Adventure'),
(4, 'hardy', 'Thriller, Crime', 'Action, Strategy'),
(5, 'aggressive', 'Drama, Action, Thriller', 'Action, Shooter'),
(6, 'hasty', 'Superhero, Action-comedy, Horror', 'Action-Adventure, Horror'),
(7, 'lonely', 'Romance, Comedy, Fantasy', 'Adventure, Action-Adventure'),
(8, 'docile', 'Romance', 'Role-playing, Action'),
(9, 'imaginative', 'Fantasy, Sci-fi, Animation', 'Role-playing, Adventure, Action-adventure');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `type`, `content`) VALUES
(1, 'Multiple Choice', 'What color is an apple?'),
(2, 'Multiple Choice', 'How would you rate your level of imagination?'),
(3, 'Multiple Choice', 'A test is coming up. How do you study for it?'),
(4, 'Multiple Choice', 'When the going gets tough, do you get going?'),
(5, 'Multiple Choice', 'You find a bucket and decide to put water in it. How high will you fill it?'),
(6, 'Multiple Choice', 'Given the choice of two gifts, which one will you take?'),
(7, 'Multiple Choice', 'A friend brought over something you\'d forgotten. How do you thank your friend?'),
(8, 'Multiple Choice', 'There is a wallet at the side of a road.'),
(9, 'Multiple Choice', 'You\'re going bungee jumping for the first time. Since it\'s scary, you decide to test the jump with a doll... And the bungee cord snaps! Will you still try to make a jump anyway?'),
(10, 'Multiple Choice', 'There is a scream behind a door. How do you react?'),
(11, 'Multiple Choice', 'It is summer holidays. Where would you like to go?'),
(12, 'Multiple Choice', 'A foreign person has started up a conversation with you. To be honest, you don\'t have a clue what this fellow is saying. How do you reply?'),
(13, 'Multiple Choice', 'Do you like pranks?'),
(14, 'Multiple Choice', 'Your friend is being bullied! What do you do?'),
(15, 'Multiple Choice', 'Do you like groan-inducing puns?'),
(16, 'Multiple Choice', 'A human hand extends out of a toilet! What would you do?'),
(17, 'Multiple Choice', 'With your right hand, grab any finger on your left. Which finger did you grab?'),
(18, 'Multiple Choice', 'You win a lottery! What do you do with the money?'),
(19, 'Multiple Choice', 'You come across a treasure chest! What do you do?'),
(20, 'Multiple Choice', 'There is a person you like... But there\'s no opportunity to get close. What do you do?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personalities`
--
ALTER TABLE `personalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `personalities`
--
ALTER TABLE `personalities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
