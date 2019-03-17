-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2019 at 05:06 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_procedural`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(16, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_post_id` int(11) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 51, 'Aquiline Padilla', 'aquiline_padilla@gmail.com', 'Your post was a good read.', 'approved', '2019-03-16'),
(2, 51, 'Aquiline Padilla', 'aquiline_padilla@gmail.com', 'Your post was a good read.', 'unapproved', '2019-03-16'),
(3, 51, 'Aquiline Padilla', 'aquiline_padilla@gmail.com', 'Your post was a good read.', 'unapproved', '2019-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(51, 16, '2019 Game-Changing Predictions for IT and Business', 'Jacqueline Prause', '2019-03-16', 'business-prediction-01.jpg', 'Get ready for an exciting year ahead in 2019! On the streets, expect to see a wider array of specialized electric vehicles. In the skies, drones equipped with environmental artificial intelligence (AI) will soar to protect our forests and waterways. In the news, issues of ethics and privacy will continue to dominate the conversation of the day. And if you value simplicity, authenticity, and trust, then this may be the â€œEra of You.â€\r\n<br><br>\r\nThese are some of the predictions heard on Game-Changers Radio 2019 Predictions, Presented by SAP, during the first three installments of a six-part series, which aired live on December 5, 12, and 19, 2018. Host Bonnie D. Graham asked 42 leading experts, academics, and business influencers to share their predictions for what the coming year holds for industry, business, technology, and the world. A handful of the most fascinating predictions, in the opinion of this blogger, are captured here. These predictions are the expertsâ€™ personal points of view and do not necessarily represent the views of SAP.\r\n<br><br><br>\r\nTake a look back at the 2018 predictions!\r\n<br><br>\r\nWhat These Thought Leaders Foresee\r\n<br><br>\r\n1. For 2019 the story is electric vehicles, personal choice, and purpose. Weâ€™re seeing a plethora of electric vehicles that are unique to different people and use cases, instead of mass produced for everybody. These vehicles are not just customized to peopleâ€™s tastes, but also personalized to their passions and purpose. A lot of people feel good about wind and solar energy driving vehicles. Itâ€™s exciting and it got here faster than anyone thought.\r\n<br><br>\r\nâ€“ Ellen Sasson, Automotive Industry Advisor, SAP\r\n<br><br>\r\n2. We are going to see organizations come to grips with AI, big data, and analytics options. Itâ€™s going to really start to take off in 2019. Individuals are starting to grasp how great this can be for their companies, for their staff, and for the entities that they interact with on a day-to-day basis.\r\n<br><br>\r\nâ€“ Chris Carter, Founder and CEO, Approyo\r\n<br><br>\r\n3. Weâ€™re in an on-demand personalized economy, where we are accustomed to being able to get what we want when we want it. That is going to carry over into technology consulting for small and midsized businesses. Youâ€™re going to see more on-demand development services.\r\n<br><br>\r\nâ€“ Sam Smith, Director of Sales and Marketing, Stellar One Consulting\r\n<br><br>\r\n4. Youâ€™re going to see advancements in environmental AI. That includes things like tree-planting drones that will plant seeds quickly after forest fires. Youâ€™re going to see fire-warning drones that monitor where a spark may catch on. Youâ€™re going to see micro-gridding communities that are using and sharing solar between each otherâ€™s homes. Carbon capture technologies are going to increase in 2019.\r\n<br><br>\r\nâ€“ Gray Scott, Futurist\r\n<br><br>\r\n5. This going to be the Era of You. It comes down to three very simple wordsâ€”simplicity, authenticity, and trust. We are moving into an era where people want simplicity because they want to self-cocoon themselves in terms of their data and everything else. People are craving authenticity and trust. Whether it be an app, software, or tool â€“ make it simple for you to be able to have an authentic, trustworthy relationship with one other person. Weâ€™ve moved from broadcast media down to narrow media; now itâ€™s down to one-to-one media.\r\n<br><br>\r\nâ€“ Mark Hunter, â€œThe Sales Hunterâ€ at www.TheSalesHunter.com\r\n<br><br>\r\n6. Things are going to heat up in the talent wars due to the employment rate. There will be increasingly intellectual perks for the early-end careers and the high-end potentials. Companies will ask their employees to be ambassadors of their organization to attract talent. There will be a dramatic increase in virtual ideation. It will become much more sophisticated and include asynchronous ideation, meaning people will be able to ideate on their own time. Theyâ€™ll be able to roleplay by themselves and do thought experiments as they incorporate virtual reality into the triggers on how to generate ideas.\r\n<br><br>\r\nâ€“ Bryan W. Mattimore, Co-Founder and Chief Idea Guy, The Growth Engine Company & Innovation Agency\r\n<br><br>\r\n7. Ethics of AI is going to become increasingly important in 2019 and will lead to a lot more discussions involving concepts like moral code or possibly something like machine consciousness. And for data privacy. weâ€™re going to see more in the United States following in the footsteps of GDPR, focusing on gaining consent, greater transparency, and information for consumers about their rights to their data.\r\n\r\nâ€“ Juliet Henry, Vice Preside of Data Privacy and Protection, EPI-USE America\r\n\r\n8. In manufacturing, weâ€™re seeing a shift to Product-as-a-Service. People are starting to sell the outcomes of their products, as opposed to the products themselves. Weâ€™re also seeing a shift from mass manufacturing to lot sizes of one. In energy, weâ€™re seeing a shift to connected energy, the rise of renewables, and a shift to storage. Connected energy is impacted by the rollout of IoT and connected devices. Renewables and storage are coming on board because of economic reasons. In transportation, weâ€™re seeing a shift to connected vehicles, the rise of electrification transportation, and a shift to autonomous transportation.\r\n<br><br>\r\nâ€“ Tom Raftery, Global Vice President, SAP\r\n<br><br>\r\n9. We are in the era of the intelligent enterprise. In 2019, the pressure is going to be on intelligent robotics process automation (RPA): How do I automate my business processes in a much more intelligent way? And blockchain on the enterprise supply chain is really going to change the world.\r\n<br><br>\r\nâ€“ Devraj Bardhan, Global Leader â€“ Digital Studio for SAP, IBM\r\n<br><br>\r\n10. Conversational commerce will grow significantly as a marketing strategy. It will result in radical changes in the way people communicate and how marketing is done. As more businesses adopt messaging solutions, this will open the door for growth in conversational commerce. Chatbot AI will evolve in 2019. And smart phones are going to get smarter. They already play a big role in our lives. They may evolve to become our â€œagony auntsâ€ or counselors, or take the place of teachers and textbooks.\r\n<br><br>\r\nâ€“ Harpreet Singh, Senior Manager, Deloitte Consulting\r\n<br><br>\r\n11. We are at a radical disruption of telecom. The first satellites have been launched a couple of weeks ago for real IoT-over-satellite. Weâ€™re always talking about connected assets, but we still have the problem that we donâ€™t have one network for worldwide connectivity at very low power consumption with massive bandwidth. Now, we can start to do IoT in space. And weâ€™re just a couple of months away from the first initiative that will give Internet with worldwide coverage for everyone for free. There will be a radical shift in the telecom business model.\r\n<br><br>\r\nâ€“ Frederick Ronse, Founder and CEO, Ovinto\r\n<br><br>\r\n12. We will see a renaissance for technology in mental health. The recently authorized pilot by CMS to incentivize behavioral health providers to adopt electronic health records (EHR) technology will drive unprecedented growth in the field. First, weâ€™re going to see the integration of behavioral health into general medical, which is where it always should have been. Second, weâ€™re going to see macro-population health solutions created from micro individual-level mental health treatments. The quality of care is going to leap forward.\r\n<br><br>\r\nâ€“ Hudson Harris, Chief Engagement Officer, HarrisLogic\r\n<br><br>\r\nSAP Game-Changers Radio 2019 Predictions Special: Upcoming Shows\r\nFor more insightful predictions that can impact you and your business in 2019 and beyond, listen to all six episodes of SAPâ€™s Game-Changers Radio 2019 Predictions Special.\r\n<br><br>\r\nIn case you missed previous episodes, you can listen to recordings of Part 1, Part 2, and Part 3 of the series.\r\n<br><br>\r\nListen live to the remaining three shows of the series on Wednesdays, January 9, 16, and 23 at 11:00 a.m. ET/ 8:00 a.m. PT at http://spr.ly/SAPRadio or here.\r\n\r\nExpertsâ€™ predictions have been edited and condensed for this space.', '2019 Predictions, Coffee Break with Game Changers, SAP Radio, IT', 3, 'publish', 0),
(52, 16, 'IQnet Internet Cafe', 'Jessa Balbin', '2019-03-16', 'business-prediction-01.jpg', '<b>INTRODUCTION</b>\r\n<br><br>\r\nIn order to predict the success of a business venture, the characteristics of a new ventures should be profound.\r\nCreating a business venture is a risk but somewhat if prediction is quite analyzed properly then success will be easily confirmed or rather if a business without predicting success will profoundly result to easy failure, so having adjustments before creating a business venture is must.\r\n<br><br>\r\n<b>INTERVIEW</b>\r\n<br><br>\r\n<b>Name of Business:</b> IQNet computer shop\r\n<br>\r\n<b>Employees:</b> 2\r\n<br>\r\n<b>Net Income:</b> Php 2000-3000 per day.\r\n<br><br><br>\r\nWhere did you get the name of business: Simple thinking of the relation to business.\r\n<br><br>\r\nReason of putting up a business: To support the family and get the income needed.\r\n<br><br>\r\nHow did you start: Started as a small business with 5 computers and it succeeded and bought new PCâ€™s and expanded a bit of the place.\r\n<br><br>\r\nChallenges encountered: Business competition and sometimes the demand is low.\r\n<br><br>\r\nSolâ€™n to challenges: Patience and positive attitude.\r\n<br><br>\r\nPlans to take the business to the next level: undecided\r\n<br><br>\r\nPartnership: Maybe if opportunity comes.\r\n<br><br>\r\nBusiness strategies: Promo and fair pricing.\r\n<br><br>\r\nPossible predictions: Always stick to the business strategies or planning other strategies for better performance.\r\n<br><br>\r\nDo you think prediction can really ensure the success of your business? Why?\r\n<br><br>                                \r\nYes, because our ways of managing and our business are predictable enough for our success.\r\nWhat do the business offer?\r\nBusiness Information\r\nServices offered\r\nAmenitties\r\nPictures\r\n', '', 0, 'publish', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`) VALUES
(16, 'jackhenry', '$2y$10$5XkwzYxWIap.Dc7T8/WdJOoiZP7CyQ.wSly51GhFyMya9y2H0HwTy', 'Jack Henry', 'Sadang', 'jackhenrysadang22@gmail.com', '', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(36, 'utkc2adc0j7gntilbssrkcc7de', 1550296495),
(37, 'irq1ua4ojgpdllejm5htkmorvn', 1550295093);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
