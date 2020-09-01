-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2020 at 12:12 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(10) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `author_email` varchar(30) NOT NULL,
  `cover_picture` varchar(100) NOT NULL,
  `dt_publish` date NOT NULL,
  `review` text NOT NULL,
  `isbn_number` text NOT NULL,
  `price` float NOT NULL,
  `type` int(10) NOT NULL,
  `rating` int(10) NOT NULL,
  `is_paperback` tinyint(1) NOT NULL,
  `is_hardback` tinyint(1) NOT NULL,
  `is_ebook` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `dt_modified` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_name`, `author_email`, `cover_picture`, `dt_publish`, `review`, `isbn_number`, `price`, `type`, `rating`, `is_paperback`, `is_hardback`, `is_ebook`, `in_stock`, `dt_modified`) VALUES
(1, 'Artificial Intelligence  A Modern Approach', 'Peter-Norvig@mail.com', '51JYTR9QSTL.jpg', '1994-12-13', '   Simple: It covers the subject very broadly, even if you focus on one approach, that minimum will give an insight of others, laying a great concise foundation. Its an amazing book, hence term the AI Bible.', '1247853569874', 1200, 3, 4, 1, 0, 1, 0, '2020-09-01 10:07:27.702852'),
(2, 'The Silent Widow', 'Sidney_Sheldon@mail.com', 'The Silent Widow.jpg', '2018-06-13', '     The first few chapters may not feel that much interesting but the fun is when you keep reading and gradually suspense will develop in you and will not let you leave the book in between. Great suspense built. The more number of characters may confuse you at some point but then it is still worth reading. Go for it if you want to read something thrilling and full of suspense.', '9874526984125', 399, 2, 5, 1, 0, 0, 1, '2020-09-01 10:11:15.975014'),
(3, 'The Alchemist', 'Paulo-Coelho@mail.com', '410llGwMZGL._SX328_BO1,204,203,200_.jpg', '1988-06-16', ' The Alchemist by Paulo Coelho is an inspirational story of Santiago, a youthful Spanish shepherd in the rolling hills of Andalusia. The boy has deep attachment with his flock but realizing that they are devoid of aesthetic sense and appreciation for nature which he beholds, loves and admires, the course of his life changes. His parents life is associated with struggle in a country which people from far away fantasize and romanticize but for them is not a place of dream and charm.', '5478126987452', 650, 2, 3, 0, 1, 1, 1, '2020-09-01 10:14:25.046434'),
(4, 'A Thousand Splendid Suns', 'Khaled_Hosseini@write.com', 'spl.jpg', '2007-05-22', ' After having read the other two books,And the Mountains echoed and The Kite Runner,I knew I had to read this  irresistible creation.\r\nA thought provoking and mind blowing read,only hardest of hearts can fail to move.A saga of two women fighting against all odds, after having faced them,this shows us that behind every burqa there is a human being.', '5471245896355', 899, 2, 5, 1, 0, 0, 1, '2020-09-01 20:45:48.272261'),
(5, 'Twilight ', 'Stephenie-@twilight.com', 'twilight.jpg', '2005-10-05', ' This is one of those books that can be reread millions of time. A supernatural theme with a perfect blend of romance makes it one of the best young adult fantasy fiction novel. Deeply seductive and irresistibly compelling, love triangle of a vampire,  werewolf and human is a total new plot which is amazingly perfect. The beautiful description makes you visualize every single details as if you are living through it and can actually feel the emotions crashing over you. ', '4578963214587', 1000, 2, 5, 1, 0, 1, 1, '2020-09-01 20:46:41.107345'),
(6, 'National Geographic', 'national@geographic.com', 'national-geographic-cover-2018-june-planet-or-plastic.ngsversion.1526422170896.adapt.1900.1.jpg', '1983-06-22', '  National Geographic is the official magazine of the National Geographic Society. It has been published continuously since its first issue in 1888, nine months after the Society itself was founded. It primarily contains articles about science, geography, history, and world culture.', '1524789632485', 200, 1, 5, 1, 0, 0, 1, '2020-09-01 10:26:47.383209'),
(7, 'Jaws', 'PeterBenchley@jaws.com', 'jaw.jpg', '1974-02-07', '  Jaws is a 1974 novel by American writer Peter Benchley. It tells the story of a great white shark that preys upon a small resort town and the voyage of three men trying to kill it. The novel grew out of Benchleys interest in shark attacks after he learned about the exploits of shark fisherman Frank Mundus in 1964. ', '7896325415289', 500, 2, 2, 0, 1, 1, 0, '2020-09-01 10:29:31.278891'),
(8, 'Carrie', 'StephenKing@mail.com', 'carrie.jpg', '2005-06-01', ' Carrie is a very fascinating book. The book is centered around a high school girl named Carrie who is constantly abused by her mother who just so happens to be very religious, and the girls at her school. She later finds out she has telekinetic powers and thats where the story really gets fun. The book makes a superpower seem like an everyday thing for Carrie which is very unique to the whole story. Lastly, If you like books that are somewhat realistic but with a superpower like spin to it then', '2456987452369', 480, 2, 4, 1, 0, 1, 1, '2020-09-01 10:32:25.494584'),
(9, 'Rainmaker', 'JohnGrisham@mail.com', 'Rainmaker.jpg', '1995-10-13', '  The Rainmaker is a 1995 novel by John Grisham. This was Grishams sixth novel. It differs from most of his other novels in that it is written almost completely in the simple present tense.', '1258963548782', 750, 2, 4, 1, 0, 0, 0, '2020-09-01 10:35:24.285570'),
(10, 'Harry Potter and the Philosophers Stone', 'J.K.Rowling@mail.com', 'Harry-Potter.jpg', '1997-06-26', ' I highly recommend Harry Potter to those who enjoy whimsical fantasy novel reads that can easily captivate you into an intense and layered storyline of loss and hardship but also happiness and victory. The Harry Potter series is very well-executed, with exciting plot twists and odd questions. Even when the series is over, there are still questions to be asked and answered.', '3541258963245', 920, 2, 1, 0, 1, 1, 0, '2020-09-01 15:20:42.939394'),
(11, 'The Omen', 'DavidSeltzer@mail.com', 'theomen.jpg', '1974-04-10', ' Rating this one is tough for me, and Ive had a hard time deciding between three stars or four, but ultimately felt like this novel doesnt measure up to other similar ones Ive given four stars to, so its three stars. Which is not to say its bad. I recall the virtually social craze that swept America when this film came out and I believe, the book actually followed, which is rare. And I recall that when I saw the film at a young age, I was properly creeped out so at that time', '7852963245896', 599, 2, 4, 1, 0, 1, 0, '2020-09-01 15:21:42.981466'),
(12, 'What Happened at Midnights', 'FranklinW.Dixon@mail.com', 'Hardy boys.jpg', '1931-05-20', ' This story opens with Chet Morton giving the Hardy boys and their chums a lesson on how to use the new automat which just opened in their hometown of Bayport. While jostling one another the boys bump into a blonde haired man. Later, while wrestling with the boys from Crabb Corners, Joe Hardy falls against the blonde man again causing him to drop his package which is later revealed to contain diamonds he is smuggling.', '1452639874525', 420, 2, 4, 0, 1, 1, 0, '2020-09-01 19:48:56.811378');

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `bkcat_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`bkcat_id`, `book_id`, `cat_id`) VALUES
(1, 1, 5),
(2, 2, 1),
(3, 3, 9),
(4, 4, 2),
(5, 5, 10),
(6, 6, 5),
(7, 7, 7),
(8, 8, 3),
(9, 9, 6),
(10, 10, 8),
(11, 11, 1),
(12, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `category`) VALUES
(1, 'Mystery'),
(2, 'Fantasy'),
(3, 'Horror'),
(4, 'Fiction'),
(5, 'Education'),
(6, 'Suspense'),
(7, 'Classic'),
(8, 'Drama'),
(9, 'Action'),
(10, 'Romance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`bkcat_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `bkcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD CONSTRAINT `book_categories_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `book_categories_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
