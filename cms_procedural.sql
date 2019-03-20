-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2019 at 04:53 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

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
(54, 16, '2019 Game-Changing Predictions for IT and Business', 'Jacqueline Prause', '2019-03-19', 'business-prediction-01.jpg', '<section id=\"main\" class=\"content-section\">\r\n<article id=\"post-151039\" class=\"post-151039 post type-post status-publish format-standard has-post-thumbnail hentry category-corporate category-marketing category-technology tag-2019-predictions tag-coffee-break-with-game-changers tag-sap-radio sapn-display-homepage-hero sapn-display-top-stories sapn-display-hero sapn-type-feature-article\">\r\n<div class=\"entry-content\">\r\n<p class=\"lead\">Get ready for an exciting year ahead in 2019! On the streets, expect to see a wider array of specialized electric vehicles. In the skies, drones equipped with environmental artificial intelligence (AI) will soar to protect our forests and waterways. In the news, issues of ethics and privacy will continue to dominate the conversation of the day. And if you value simplicity, authenticity, and trust, then this may be the &ldquo;Era of You.&rdquo;</p>\r\n<p>These are some of the predictions heard on<strong>&nbsp;Game-Changers Radio 2019 Predictions,</strong><strong>Presented by SAP</strong>, during the first three installments of a six-part series, which aired live on December 5, 12, and 19, 2018. Host Bonnie D. Graham asked 42 leading experts, academics, and business influencers to share their predictions for what the coming year holds for industry, business, technology, and the world. A handful of the most fascinating predictions, in the opinion of this blogger, are captured here.&nbsp;These predictions are the experts&rsquo; personal points of view and do not necessarily represent the views of SAP.</p>\r\n<hr />\r\n<p><a href=\"https://news.sap.com/tags/2018-predictions/\"><em>Take a look back at the 2018 predictions!</em></a></p>\r\n<hr />\r\n<h2><strong>What These Thought Leaders Foresee</strong></h2>\r\n<p><strong>1.</strong>&nbsp;For 2019 the story is&nbsp;<strong>electric vehicles</strong>, personal choice, and purpose. We&rsquo;re seeing a plethora of electric vehicles that are unique to different people and use cases, instead of mass produced for everybody. These vehicles are not just customized to people&rsquo;s tastes, but also personalized to their passions and purpose. A lot of people feel good about wind and solar energy driving vehicles. It&rsquo;s exciting and it got here faster than anyone thought.</p>\r\n<p><em>&ndash; Ellen Sasson, Automotive Industry Advisor, SAP</em></p>\r\n<p><strong>2.&nbsp;</strong>We are going to see organizations come to grips with&nbsp;<strong>AI, big data, and analytics</strong>options. It&rsquo;s going to really start to take off in 2019. Individuals are starting to grasp how great this can be for their companies, for their staff, and for the entities that they interact with on a day-to-day basis.</p>\r\n<p><em>&ndash; Chris Carter, Founder and CEO, Approyo</em></p>\r\n<p><strong>3.&nbsp;</strong>We&rsquo;re in an on-demand personalized economy, where we are accustomed to being able to get what we want when we want it. That is going to carry over into technology consulting for&nbsp;<strong>small and midsized businesses</strong>. You&rsquo;re going to see more on-demand development services.</p>\r\n<p><em>&ndash; Sam Smith, Director of Sales and Marketing, Stellar One Consulting</em></p>\r\n<p><strong>4.&nbsp;</strong>You&rsquo;re going to see advancements in&nbsp;<strong>environmental AI</strong>. That includes things like tree-planting drones that will plant seeds quickly after forest fires. You&rsquo;re going to see fire-warning drones that monitor where a spark may catch on. You&rsquo;re going to see micro-gridding communities that are using and sharing solar between each other&rsquo;s homes. Carbon capture technologies are going to increase in 2019.</p>\r\n<p><em>&ndash; Gray Scott, Futurist</em></p>\r\n<p><strong>5.&nbsp;</strong>This going to be the&nbsp;<strong>Era of You</strong>. It comes down to three very simple words&mdash;simplicity, authenticity, and trust. We are moving into an era where people want simplicity because they want to self-cocoon themselves in terms of their data and everything else. People are craving authenticity and trust. Whether it be an app, software, or tool &ndash; make it simple for you to be able to have an authentic, trustworthy relationship with one other person. We&rsquo;ve moved from broadcast media down to narrow media; now it&rsquo;s down to one-to-one media.</p>\r\n<p><em>&ndash; Mark Hunter, &ldquo;The Sales Hunter&rdquo; at www.TheSalesHunter.com</em></p>\r\n<p><strong>6.&nbsp;</strong>Things are going to heat up in the&nbsp;<strong>talent wars</strong>&nbsp;due to the employment rate. There will be increasingly intellectual perks for the early-end careers and the high-end potentials. Companies will ask their employees to be ambassadors of their organization to attract talent. There will be a dramatic increase in&nbsp;<strong>virtual ideation</strong>. It will become much more sophisticated and include asynchronous ideation, meaning people will be able to ideate on their own time. They&rsquo;ll be able to roleplay by themselves and do thought experiments as they incorporate virtual reality into the triggers on how to generate ideas.</p>\r\n<p><em>&ndash; Bryan W. Mattimore, Co-Founder and Chief Idea Guy, The Growth Engine Company &amp; Innovation Agency</em></p>\r\n<p><strong>7. Ethics of AI</strong>&nbsp;is going to become increasingly important in 2019 and will lead to a lot more discussions involving concepts like moral code or possibly something like machine consciousness. And for&nbsp;<strong>data privacy</strong>. we&rsquo;re going to see more in the United States following in the footsteps of GDPR, focusing on gaining consent, greater transparency, and information for consumers about their rights to their data.</p>\r\n<p><em>&ndash; Juliet Henry, Vice Preside of Data Privacy and Protection, EPI-USE America</em></p>\r\n<p><strong>8.</strong>&nbsp;In&nbsp;<strong>manufacturing</strong>, we&rsquo;re seeing a shift to Product-as-a-Service. People are starting to sell the outcomes of their products, as opposed to the products themselves. We&rsquo;re also seeing a shift from mass manufacturing to lot sizes of one. In&nbsp;<strong>energy</strong>, we&rsquo;re seeing a shift to connected energy, the rise of renewables, and a shift to storage. Connected energy is impacted by the rollout of IoT and connected devices. Renewables and storage are coming on board because of economic reasons. In&nbsp;<strong>transportation</strong>, we&rsquo;re seeing a shift to connected vehicles, the rise of electrification transportation, and a shift to autonomous transportation.</p>\r\n<p><em>&ndash;&nbsp;</em><em>Tom Raftery, Global Vice President, SAP</em></p>\r\n<p><strong>9.&nbsp;</strong>We are in the era of the intelligent enterprise. In 2019, the pressure is going to be on intelligent&nbsp;<strong>robotics process automation</strong>&nbsp;(RPA): How do I automate my business processes in a much more intelligent way? And&nbsp;<strong>blockchain</strong>&nbsp;on the enterprise supply chain is really going to change the world.</p>\r\n<p><em>&ndash;&nbsp;</em><em>Devraj Bardhan, Global Leader &ndash; Digital Studio for SAP, IBM</em></p>\r\n<p><strong>10.</strong>&nbsp;Conversational<strong>&nbsp;commerce</strong>&nbsp;will grow significantly as a marketing strategy. It will result in radical changes in the way people communicate and how marketing is done. As more businesses adopt messaging solutions, this will open the door for growth in conversational commerce.&nbsp;<strong>Chatbot AI</strong>&nbsp;will evolve in 2019. And&nbsp;<strong>smart phones</strong>&nbsp;are going to get smarter. They already play a big role in our lives. They may evolve to become our &ldquo;agony aunts&rdquo; or counselors, or take the place of teachers and textbooks.</p>\r\n<p><em>&ndash;&nbsp;</em><em>Harpreet Singh, Senior Manager, Deloitte Consulting</em></p>\r\n<p><strong>11.&nbsp;</strong>We are at a radical disruption of&nbsp;<strong>telecom</strong>. The first satellites have been launched a couple of weeks ago for real IoT-over-satellite. We&rsquo;re always talking about connected assets, but we still have the problem that we don&rsquo;t have one network for worldwide connectivity at very low power consumption with massive bandwidth. Now, we can start to do IoT in space. And we&rsquo;re just a couple of months away from the first initiative that will give Internet with worldwide coverage for everyone for free. There will be a radical shift in the telecom business model.</p>\r\n<p><em>&ndash;&nbsp;</em><em>Frederick Ronse, Founder and CEO, Ovinto</em></p>\r\n<p><strong>12.&nbsp;</strong>We will see a renaissance for technology in&nbsp;<strong>mental health</strong>. The recently authorized&nbsp;<a href=\"https://www.healthcareitnews.com/news/senate-passes-bill-allowing-cms-create-incentives-behavioral-health-ehrs\" target=\"_blank\" rel=\"noopener\">pilot</a>&nbsp;by CMS to incentivize behavioral health providers to adopt electronic health records (EHR) technology will drive unprecedented growth in the field. First, we&rsquo;re going to see the integration of behavioral health into general medical, which is where it always should have been. Second, we&rsquo;re going to see macro-population health solutions created from micro individual-level mental health treatments. The quality of care is going to leap forward.</p>\r\n<p><em>&ndash;&nbsp;</em><em>Hudson Harris, Chief Engagement Officer, HarrisLogic</em></p>\r\n<h2><strong>SAP Game-Changers Radio 2019 Predictions Special: Upcoming Shows</strong></h2>\r\n<p>For more insightful predictions that can impact you and your business in 2019 and beyond, listen to all six episodes of&nbsp;<strong>SAP&rsquo;s Game-Changers Radio 2019 Predictions Special</strong>.</p>\r\n<p>In case you missed previous episodes, you can listen to recordings of&nbsp;<a href=\"https://www.voiceamerica.com/episode/110891/gamechangers-crystal-ball-2019-predictions-part-1\" target=\"_blank\" rel=\"noopener\">Part 1</a>,&nbsp;<a href=\"https://www.voiceamerica.com/episode/111041/game-changers-radio-2019-predictions-part-2\" target=\"_blank\" rel=\"noopener\">Part 2</a>, and&nbsp;<a href=\"https://www.voiceamerica.com/episode/112232/game-changers-crystal-ball-2019-predictions-part-3\" target=\"_blank\" rel=\"noopener\">Part 3</a>&nbsp;of the series.</p>\r\n<p>Listen live to the remaining three shows of the series on Wednesdays,<strong>&nbsp;January 9, 16, and 23</strong>&nbsp;at 11:00 a.m. ET/ 8:00 a.m. PT at&nbsp;<a href=\"http://spr.ly/SAPRadio\" target=\"_blank\" rel=\"noopener\"><strong>http://spr.ly/SAPRadio</strong></a>&nbsp;or&nbsp;<a href=\"http://www.voiceamerica.com/show/1981/coffee-break-with-game-changers-presented-by-sap\" target=\"_blank\" rel=\"noopener\">here</a>.</p>\r\n<hr />\r\n<p><em>Experts&rsquo; predictions have been edited and condensed for this space.</em></p>\r\n</div>\r\n<div class=\"entry-footer\"><span class=\"tags-links\">Tags:&nbsp;<a href=\"https://news.sap.com/tags/2019-predictions/\" rel=\"tag\">2019 Predictions</a>,&nbsp;<a href=\"https://news.sap.com/tags/coffee-break-with-game-changers/\" rel=\"tag\">Coffee Break with Game Changers</a>,&nbsp;<a href=\"https://news.sap.com/tags/sap-radio/\" rel=\"tag\">SAP Radio</a></span></div>\r\n</article>\r\n</section>\r\n<aside id=\"secondary\" class=\"widget-area\">\r\n<section id=\"inpsyde-sapn-related-content-2\" class=\"widget widget_inpsyde-sapn-related-content\">\r\n<div class=\"related-content-container\">\r\n<ul data-position=\"top\">\r\n<li><img src=\"https://news.sap.com/wp-content/blogs.dir/1/files/Related_282497_Headphones_C.jpg\" /><br /><a href=\"https://www.voiceamerica.com/episode/110891/gamechangers-crystal-ball-2019-predictions-part-1\">Listen to part 1 of SAP&rsquo;s Game-Changers Radio 2019 Predictions Special</a></li>\r\n</ul>\r\n<ul data-position=\"middle\">\r\n<li><img src=\"https://news.sap.com/wp-content/blogs.dir/1/files/Related_281266_MachineLearning_C.jpg\" /><br /><a href=\"https://www.voiceamerica.com/episode/111041/game-changers-radio-2019-predictions-part-2\">Listen to part 2 of SAP&rsquo;s Game-Changers Radio 2019 Predictions Special</a></li>\r\n</ul>\r\n<ul data-position=\"bottom\">\r\n<li><img src=\"https://news.sap.com/wp-content/blogs.dir/1/files/Related_282254_P-wand_C.jpg\" /><br /><a href=\"https://www.voiceamerica.com/episode/112232/game-changers-crystal-ball-2019-predictions-part-3\">Listen to part 3 SAP&rsquo;s Game-Changers Radio 2019 Predictions Special</a></li>\r\n</ul>\r\n</div>\r\n</section>\r\n</aside>', 'test post', 0, 'publish', 0),
(55, 16, 'More 2019 Game-Changing Predictions for IT and Business', 'Jacqueline Prause', '2019-03-19', 'productivity-hard-work-quotes16.jpg', '<section id=\"main\" class=\"content-section\">\r\n<article id=\"post-152178\" class=\"post-152178 post type-post status-publish format-standard has-post-thumbnail hentry category-corporate category-marketing tag-2019-predictions tag-coffee-break-with-game-changers tag-experience-economy tag-sap-radio tag-trust sapn-display-top-stories sapn-display-hero sapn-type-feature-article\">\r\n<div class=\"entry-content\">\r\n<p class=\"lead\">We&rsquo;re just one month into 2019 and it&rsquo;s still anybody&rsquo;s guess as to what might happen next. In business, we should expect more attention given to data, trust, and the experience economy. In society, we can look forward to less plastic, more streaming, and even bigger, brighter cities.</p>\r\n<p>These are some of the predictions heard on<strong>&nbsp;Game-Changers Radio 2019 Predictions,</strong><strong>Presented by SAP</strong>, during the final three installments of a six-part series, which aired live on January 9, 16, and 23, 2019 and featured predictions from more than 80 thought leaders. Host Bonnie D. Graham asked dozens of leading experts, academics, and business influencers to share their predictions for what the coming year holds for industry, business, technology, and the world.</p>\r\n<p>A handful of the most fascinating predictions are captured here.&nbsp;These predictions are the experts&rsquo; personal points of view and do not necessarily represent the views of SAP.</p>\r\n<h2><strong>What These Thought Leaders Foresee</strong></h2>\r\n<p><strong>1.</strong>&nbsp;Companies that use&nbsp;<strong>data</strong>&nbsp;for good and provide a rich experience &ndash; while treating data ethically &ndash; will win this year. People are becoming more attuned to protecting their data and they&rsquo;re going to support businesses that abide by the rules. Trust, privacy, and transparency are extremely important for acquiring and retaining customers. Customers expect a positive experience or they will take their business elsewhere. So companies should to pay attention to data, or they run the financial risk of not abiding by the regulations, but also, and perhaps more importantly, customer attrition.</p>\r\n<p><em>&ndash; Tina Rosario, head of Data Transparency,<br />chief data officer, SAP EMEA</em></p>\r\n<p><strong>2.&nbsp;</strong>There are three macro-level forces that are going to set the stage for things to come. The first is&nbsp;<strong>convergence</strong>. In 2019 we&rsquo;re going to see more and more convergence across science, technology, society, politics, the environment, economy, and ethics. This will be a year that launches us into a period of significant change. The second one is increased&nbsp;<strong>acceleration</strong>, as things occur like increasing virtual cycles and building blocks, like artificial intelligence (AI), mature. The third is&nbsp;<strong>techno-philanthropists</strong>: wealthy individuals who are starting to spend their wealth on energy and renewables.</p>\r\n<p><em>&ndash; &nbsp;Frank Diana, principal, Future of Business, TCS</em></p>\r\n<p><strong>3.&nbsp;</strong>The next step in the evolution of storytelling is&nbsp;<strong>streaming</strong>. Theaters are always going to draw crowds for big budget special effects films, but smaller films that are either dramas, comedy pieces, or international films will get bigger audiences through streaming. There is a good example with a film called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bird_Box_(film)\" target=\"_blank\" rel=\"noopener\">Bird Box</a>, which was consumed by 45 million Netflix accounts within the first seven days. The way that film awards are handed out will need to be reclassified and redefined in terms of what becomes eligible for awards and how filmmakers market the distribution of their films.</p>\r\n<p><em>&ndash; Casey Ryan, partner service advisor,<br />Partner Service Delivery, SAP<br /></em></p>\r\n<p><strong>4.&nbsp;</strong>Twenty years ago, pundits predicted the demise of big cities as tech allowed people to live and work anywhere. What happened is exactly the opposite. As the gig economy took off, those home workers began to congregate together and find a common culture in cities. Now in 2019, Amazon and Google are following those young people with moves to New York City and Washington, D.C. This trend is accelerating the biggest demographic shift in history, with tremendous disruption to cities and rural areas. In 2019, tech will also make cities more livable and rational with startups like&nbsp;<a href=\"https://www.sidewalklabs.com/\">Sidewalk Labs</a>&nbsp;focused on making cities run better and faster.</p>\r\n<p><em>&ndash; Jesse Samberg, shared services fellow,<br />IBM Center for the Business of Government</em></p>\r\n<p><strong>5.</strong>&nbsp;There will be three game-changing aspects: innovation, data, and experience.&nbsp;<strong>Innovation</strong>&nbsp;refers to how companies improve their products and bring technology into the componentry to serve and change their business models.&nbsp;<strong>Data</strong>&nbsp;refers to how we deal with quantity in the data economy. Providing an exceptional&nbsp;<strong>experience</strong>&nbsp;means that everyone who services any demographic or community is going to have to put that experience front and center. We must think about what that experience creates and how we drive our businesses and organizations around it.</p>\r\n<p><em>&ndash; Shannon Platz, global vice president, Platform Solutions Ecosystem<br />GTM and Readiness, SAP<br /></em></p>\r\n<p><strong>6.&nbsp;</strong>This will be the year we hit a tipping point where&nbsp;<strong>purpose&nbsp;</strong>orientation for social and environmental programs &ndash; commonly called&nbsp;<strong>sustainability</strong>&nbsp;programs &ndash; moves from being a reputational aspect for corporations to being of critical importance. We&rsquo;re starting to see more customers ask and care about sustainability. More investors are looking to see how companies are performing in these areas and looking for programmatic strength. Also, as companies recognize that to make an impact on global challenges, they must move beyond their own organizations, we&rsquo;re going to see&nbsp;<strong>catalytic collaboration</strong>, which is how these global leaders partner together, listen to a variety of voices, and then innovate to make even further changes.</p>\r\n<p><em>&ndash; Dr. John Frey, strategist, HPE</em></p>\r\n<p><strong>7.&nbsp;</strong>We&rsquo;re going to see a combination of&nbsp;<strong>content, Big Data, and innovative technologies</strong>, like machine learning and predictive analytics. It&rsquo;s been said that &ldquo;content is king.&rdquo; This is no more than true now with the capabilities machine learning and predictive analytics, and our abilities to store and comprehend large amounts of data. In 2019, we&rsquo;ll see a network of content that is enabled by technology to allow us to start to bring together commerce and regulation around the world.</p>\r\n<p><em>&ndash; Chris Carlstead, lead,<br />Partnerships and Alliances, Thomson Reuters</em></p>\r\n<p><strong>8</strong>. The European Union has put out a directive that&nbsp;<strong>single-use plastics</strong>&nbsp;will be banned by 2025. Many corporations are also putting out commitments around avoidance of single-use plastics. My prediction is that more of these scattered initiatives will consolidate during 2019. They will focus not on cleaning up, but on solving problems in the beginning by looking at substitutes for plastics and oils, sustainable design, sustainable supply chains, and integrating the waste toward secondary feedstock. The regulations about plastics will tighten. Consumers will increasingly change their behavior toward avoidance. That will drive more corporations toward circularity, as they see the potential reputational risk and the opportunity to control supply cost&nbsp;and create brand differentiation.</p>\r\n<p><em>&ndash; Will Ritzrau, director of Sustainability, SAP</em></p>\r\n<p><strong>9.&nbsp;</strong>By 2025, up to 50 percent of data science activities will be automated by<strong>&nbsp;AI&nbsp;</strong>and&nbsp;<strong>machine learning</strong>&nbsp;techniques, easing the acute talent shortage. Up to 40 percent of development teams will be using augmented machine learning techniques to build models and incorporate AI capabilities into their applications. As AI and machine learning become more pervasive and we auto-generate some of these models, the potential for catastrophic events increases, which will lead to an intense focus on AI governance.</p>\r\n<p><em>&ndash; Rita Sallam, VP analyst and Gartner fellow, Gartner</em></p>\r\n<p><strong>10.&nbsp;</strong>In 2019, we&rsquo;ll see the rise of the&nbsp;<strong>experience economy</strong>&nbsp;and the relevance of&nbsp;<strong>trust</strong>. Companies will begin to invest in technology so that they can pursue new value creation along two strategic dimensions. The first is how to create and infuse processes with intelligence so that they can better engage with their customers and earn their trust by delivering value on the customer&rsquo;s terms. The second is how to design and scale the delivery of new levels of convenience and consumer experience.</p>\r\n<p><em>&ndash; Lori Mitchell-Keller, co-president, SAP Industries</em></p>\r\n<p><strong>11.</strong>&nbsp;This year will be the start of the&nbsp;<strong>golden age for human intelligence</strong>. Over the years, it&rsquo;s been perfectly clear what business people want: easy, intuitive access to all the data they need to run the business. The technology however just hasn&rsquo;t been there. We&rsquo;ve now reached a tipping point and the technology has finally caught up with our aspirations. These technologies are transforming every aspect of the business. Just as the Mechanical Era allowed a single farmer to plow hundreds of acres using a single tractor, we&rsquo;re now poised to see the same thing, but with algorithms augmenting human intelligence.</p>\r\n<p><em>&ndash; Timo Elliott, innovation evangelist, SAP</em></p>\r\n<p><strong>12.&nbsp;</strong>This will be the year of the&nbsp;<strong>democratization of AI</strong>. AI will be present in many devices, applications, and services. We will find more ways to automate and streamline what we do. To do that in the right way, we need to overcome some hurdles. Foremost is the lack of appropriate data and the talent shortage. There are three technology observations to consider, because we are not talking about one large-scale AI, but hundreds. First, a lot of&nbsp;<strong>data scientists</strong>&nbsp;will come from the consumer world, not only the expert realm. Second, there are a lot of&nbsp;<strong>development projects</strong>&nbsp;that already include AI. Third, we already see&nbsp;<strong>autonomous solutions</strong>, like autonomous cars. From a software perspective, we&rsquo;ll start to see autonomous solutions too in the near future.</p>\r\n<p><em>&ndash; Sven Denecken, senior vice president, SAP S/4HANA Cloud<br />Product Management and Co-Innovation, SAP</em></p>\r\n<h2><strong>SAP Game-Changers Radio 2019 Predictions Special</strong></h2>\r\n<p>For insightful predictions that can impact you and your business in 2019 and beyond, listen to recordings of all six episodes of the&nbsp;<strong>SAP&rsquo;s Game-Changers Radio 2019 Predictions Special:</strong>&nbsp;<a href=\"https://www.voiceamerica.com/episode/110891/gamechangers-crystal-ball-2019-predictions-part-1\" target=\"_blank\" rel=\"noopener\">Part 1</a>&nbsp;|<a href=\"https://www.voiceamerica.com/episode/111041/game-changers-radio-2019-predictions-part-2\" target=\"_blank\" rel=\"noopener\">Part 2</a>&nbsp;|&nbsp;<a href=\"https://www.voiceamerica.com/episode/112232/game-changers-crystal-ball-2019-predictions-part-3\" target=\"_blank\" rel=\"noopener\">Part 3</a>&nbsp;|&nbsp;<a href=\"https://www.voiceamerica.com/episode/112660/game-changers-radio-2019-predictions-part-4\" target=\"_blank\" rel=\"noopener\">Part 4</a>&nbsp;|&nbsp;<a href=\"https://www.voiceamerica.com/episode/112660/game-changers-radio-2019-predictions-part-5\" target=\"_blank\" rel=\"noopener\">Part 5</a>&nbsp;|&nbsp;<a href=\"https://www.voiceamerica.com/episode/112660/game-changers-radio-2019-predictions-part-6\" target=\"_blank\" rel=\"noopener\">Part 6</a>.</p>\r\n<p>Coffee Break with Game-Changers airs live on Wednesdays at 11:00 a.m. ET/ 8:00 a.m. PT at&nbsp;<a href=\"http://spr.ly/SAPRadio\" target=\"_blank\" rel=\"noopener\"><strong>spr.ly/SAPRadio</strong></a>&nbsp;or&nbsp;<a href=\"http://www.voiceamerica.com/show/1981/coffee-break-with-game-changers-presented-by-sap\" target=\"_blank\" rel=\"noopener\">here</a>.</p>\r\n<hr />\r\n<p><em>Experts&rsquo; predictions have been edited and condensed for this space.</em></p>\r\n</div>\r\n<div class=\"entry-footer\"><span class=\"tags-links\">Tags:&nbsp;<a href=\"https://news.sap.com/tags/2019-predictions/\" rel=\"tag\">2019 Predictions</a>,&nbsp;<a href=\"https://news.sap.com/tags/coffee-break-with-game-changers/\" rel=\"tag\">Coffee Break with Game Changers</a>,&nbsp;<a href=\"https://news.sap.com/tags/experience-economy/\" rel=\"tag\">Experience Economy</a>,&nbsp;<a href=\"https://news.sap.com/tags/sap-radio/\" rel=\"tag\">SAP Radio</a>,&nbsp;<a href=\"https://news.sap.com/tags/trust/\" rel=\"tag\">trust</a></span></div>\r\n</article>\r\n</section>\r\n<aside id=\"secondary\" class=\"widget-area\">\r\n<section id=\"inpsyde-sapn-related-content-2\" class=\"widget widget_inpsyde-sapn-related-content\">\r\n<div class=\"related-content-container\">\r\n<ul data-position=\"top\">\r\n<li><img src=\"https://news.sap.com/wp-content/blogs.dir/1/files/Related_281043_Search_C-1.jpg\" /><br /><a href=\"https://news.sap.com/2019/01/2019-predictions-game-changing-it-business/\">Read the first installment of 2019 predictions</a></li>\r\n</ul>\r\n<ul data-position=\"middle\">\r\n<li><img src=\"https://news.sap.com/wp-content/blogs.dir/1/files/Related_282054_Microphone2_C.jpg\" /><br /><a href=\"http://spr.ly/SAPRadio\">Listen to SAP Radio</a></li>\r\n</ul>\r\n<ul data-position=\"bottom\">\r\n<li><img src=\"https://news.sap.com/wp-content/blogs.dir/1/files/Related_281022_Mail_C2.jpg\" /><br /><a href=\"https://www.sap.com/cmp/nl/sap-news-center-newsletter/index.html\">Subscribe to the SAP News Center newsletter</a></li>\r\n</ul>\r\n</div>\r\n</section>\r\n</aside>', 'test post', 0, 'publish', 0);

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
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
