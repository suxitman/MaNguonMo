-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2019 at 02:07 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$cC0Q24nf0KdfvFNrzshSHujaR6bEZKjsDaAQzJtBPsEKZvtjAYQ8W', 'phpgurukulofficial@gmail.com', 1, '2018-05-27 17:51:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'Hollywood', 'Hollywood News', '2018-06-06 10:28:09', '2019-03-18 01:18:34', 1),
(3, 'Sports', 'Related to sports news', '2018-06-06 10:35:09', '2018-06-14 11:11:55', 1),
(5, 'Entertainment', 'Entertainment related  News', '2018-06-14 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'Politics', 'Politics', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'Business', 'Business', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 1),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 11:27:06', 0),
(4, '7', 'Tien', 'Tien@gmail.com', 'football', '2019-03-18 12:57:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About News Portal', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">NHAT TIEN CNPM</span></font>', '2018-06-30 18:01:03', '2019-03-22 16:32:55'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>Ho Chi Minh city, Viet Nam</p><p><b>Phone Number : </b>01234567890</p><p><b>Email: </b>suxitman@gmail.com</p>', '2018-06-30 18:01:36', '2019-03-22 16:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(10, 'China should quickly get out of its huge US trade problem', 7, 9, 'Beijing\'s incantations about \"win-win cooperation\" and its alleged search of a harmonious \"great power relationship\" ring hollow when confronted with an unwisely excessive and systematic trade surplus China maintains with the United States.\r\n\r\nAll that talk is blatantly at odds with China\'s $794.4 billion trade surplus on its U.S. goods trade since the current administration took the helm in Washington in January 2017.\r\n\r\nOne can also be forgiven for taking that as a brazen provocation of an American government pledging to stop the accelerating growth of its foreign debt, and to protect the little employment that remains in America\'s devastated import-competing manufacturing industries.\r\n\r\nLike all excesses, this one too can badly backfire on China. And it\'s not clear what China\'s economic and political interests are served as Beijing keeps deliberately pushing the U.S.-China trade relationship into a growing and unsustainable imbalance.', '2018-06-30 19:08:56', '2019-03-18 14:36:55', 1, 'Tata-Steel,-Thyssenkrupp-Finalise-Landmark-Steel-Deal', 'china.jpg'),
(11, 'Why Are So Many Farmers Markets Failing? Because The Market Is Saturated', 7, 9, 'When the Nipomo Certified Farmers\' Market started in 2005, shoppers were eager to purchase fresh fruits and vegetables, as well as pastured meats and eggs, directly from farmers in central California.\r\n\r\nBut the market was small an average of 16 vendors set up tables every Sunday making it harder for farmers to sell enough produce to make attending worthwhile.\r\n\r\n\"The market in Santa Maria is 7 miles in one direction [from Nipomo], and the market in Arroyo Grande is 7 miles in the other direction. Both are bigger markets, so shoppers often went to those markets instead,\" explains market manager and farmer Glenn Johnson.\r\n\r\nThe decision to host the market on Sundays also proved detrimental. Many of the farmers participated in six or more additional markets each week and wanted Sundays to rest, says Johnson.\r\n\r\nIn 2018, with attendance down and just five vendors signed on to sell produce, organizers of the Nipomo Certified Farmers\' Market decided to shut down the event at the end of last season.\r\n\r\nNationwide, the number of farmers markets increased from 2,000 in 1994 to more than 8,600 in 2019, which led to a major problem: There are too few farmers to populate the market stalls and too few customers filling their canvas bags with fresh produce at each market. Reports of farmers markets closing have affected communities from Norco, Calif., to Reno, Nev., to Allouez, Wis.', '2018-06-30 19:10:36', '2019-03-18 14:19:25', 1, 'Why-re-So-Many-Farmers-Markets-Failing? Because-The-Market-Is-Saturated\r\n', 'id11.jpg'),
(12, 'Another big Brexit week begins. What is expected?', 6, 7, 'London, United Kingdom - Last week\'s Brexit drama led to MPs opting to delay the European Union divorce at least until the end of June.\r\n\r\nHowever, the decision is not unilateral and any extension of Article 50 of the EU treaty - which allows members to leave the bloc - must be approved unanimously by all 27 remaining states.\r\n\r\nThe next opportunity for EU leaders to discuss the issue will be at a two-day European Council (EC) meeting starting on Thursday - just a week before the current Brexit deadline of March 29.\r\n\r\nBut it is not yet clear whether this meeting will prove decisive, or how long the granted extension will be.\r\n\r\nAfter Prime Minister Theresa May\'s deal with the EU was voted down by parliament for the second time this year, MPs also cast a non-binding vote to rule out a no-deal Brexit. \r\n\r\nThe option of a disorderly departure at the end of March remains on the table, however, as no deal is the default legal position under Article 50.\r\n\r\nLooking further ahead, European Parliament elections are expected to take place between May 23 and 26', '2018-06-30 19:11:44', '2019-03-18 14:12:19', 1, 'Another-big-Brexit-week-begins.-What-is-expected?', '7d25301223e75fd015b23171aa01e12c.jpg'),
(13, 'The likely Ireland starting team for tonights crucial showdown with Georgia and the 11 we would like to see', 3, 4, '<div class=\"p402_hide\" style=\"margin: 0px 0px 15px; padding: 0px;\"><p style=\"padding: 0px;\">Mick McCarthy wants his goal-shy Ireland midfielders to throw off the shackles against Georgia tonight and show the attacking spirit they need to get to Euro 2020.</p></div><div class=\"p402_hide\" style=\"margin: 0px 0px 15px; padding: 0px;\"><p style=\"margin-bottom: 15px; padding: 0px;\">McCarthy (60) admits he will be nervous when he takes charge of the Republic in a home game for the first time since his reign ended in defeat, in Dublin, back in 2002.</p><p style=\"margin-bottom: 15px; padding: 0px;\">Georgia come to Lansdowne Road with a habit of causing Ireland problems and confidence is high after winning their Nations League group.</p><p style=\"margin-bottom: 15px; padding: 0px;\">McCarthy needs goals, with just one scored by Ireland in the last five internationals and he wants his midfield players to go for the jugular and score.</p></div>', '2019-03-26 09:46:40', '2019-03-26 09:52:00', 1, 'The-likely-Ireland-starting-team-for-tonights-crucial-showdown-with-Georgia-and-the-11-we-would-like-to-see', 'aea4ed397e496b90d7f19b5bff15f302.jpg'),
(14, 'Trailer For â€œToy Story 4â€ Brings Back Your Old Friends', 5, 3, '<p style=\"margin-bottom: 10px; padding: 0px; border: 0px; vertical-align: baseline;\">Earlier in the week, a New Trailer dropped for Pixarâ€™s hotly anticipated sequel Toy Story 4. Apologies for not getting to it sooner, but weâ€™re here now. Personally, Iâ€™ve long been of two minds about this effort. On the one hand, Toy Story is my favorite animated franchise and some of the finest hours within the Pixar oeuvre. On the other hand, Toy Story 3 wrapped up the series brilliantly, with such a perfect ending it can be almost impossible to duplicate. Well, this Trailer is out and seeks to show why a new outing is necessary. You can see it at the end of the post, as youâ€™d expect, so read on for more on Toy Story 4â€¦</p><p style=\"margin-bottom: 10px; padding: 0px; border: 0px; vertical-align: baseline;\">The film is the latest installment in the Toy Story franchise. Here, the adventures of our favorite toys continue on, though in a whole new way. Here is the plot synopsis thatâ€™s floating around on the web: â€œWoody, Buzz Lightyear and the rest of the gang embark on a road trip with Bonnie and a new toy named Forky. The adventurous journey turns into an unexpected reunion as Woodyâ€™s slight detour leads him to his long-lost friend Bo Peep. As Woody and Bo discuss the old days, they soon start to realize that theyâ€™re worlds apart when it comes to what they want from life as a toy.â€ Woody (voice of Tom Hanks), Buzz Lightyear (voice of Tim Allen), and the rest of the toys are living a happy life with Bonnie. However, when they wind up on a road trip and find their long-lost cohort Bo Peep (voice of Annie Potts), another adventure begins, one that includes a new friend in Forky (voice of Tony Hale). Josh Cooley directs a script penned by Stephany Folsom, based on the original story by the grouping of Pete Doctor, John Lasseter, Andrew Stanton, and Lee Unkrich (Rashida Jones and Will McCormack originally wrote this screenplay). Randy Newman once again composes the score, while the supporting voices include the likes of Patricia Arquette, Jodie Benson, Blake Clark, Joan Cusack, Timothy Dalton, Jeff Garlin, Estelle Harris, Christina Hendricks, Bonnie Hunt, Keegan-Michael Key, Laurie Metcalf, Jordan Peele, John Ratzenberger, Keanu Reeves, Kristen Schaal, Wallace Shawn, and more.</p>', '2019-03-26 13:00:31', NULL, 1, 'Trailer-For-â€œToy-Story-4â€-Brings-Back-Your-Old-Friends', '786b9ef9ad612c5811c07da447a5a0f4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Hollywood ', 'Hollywood ', '2018-06-22 15:45:38', '2019-03-18 01:20:02', 1),
(4, 3, 'Soccer', 'Soccer\r\n\r\n', '2018-06-30 09:00:43', '2019-03-18 14:59:46', 1),
(5, 3, 'Football', 'Football', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Television', 'TeleVision', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 1),
(7, 6, 'international', 'interational', '2018-06-30 19:04:29', '2019-03-19 01:11:23', 1),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'international', 'international', '2018-06-30 19:08:42', '2019-03-19 01:10:55', 0),
(10, 6, 'international', 'international', '2019-03-19 01:10:19', '2019-03-19 01:11:05', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
