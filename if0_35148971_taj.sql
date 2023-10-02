-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql204.byetcluster.com
-- Generation Time: Oct 02, 2023 at 03:46 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_35148971_taj`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Programming'),
(6, 'Education'),
(7, 'Higher Studies'),
(9, 'Travelling');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(2, 'Ainuddin', 'Chowdhury', 'ainuddin@gmail.com', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Lati', 0, '2018-01-29 03:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Asad Mondall');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`, `image`) VALUES
(1, 'About Me', '<p>This is Sumaia Islam Taj. I am studying in Computer Science &amp; Engineering at the University of Barishal.I would like to work in the field of software development &amp; web development . I am too much dedicated to utilize my expertise in programming, configuration and troubleshooting ofcomputer-related issues to obtain maximum performance in my objective. I like to reading, travelling &amp; crafting.</p>\r\n<p>\"</p>\r\n<p>\"</p>', 'upload/me.jpg'),
(2, 'Privacy', '<p><strong>Last updated: September 2 october, 2023</strong></p>\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy.</p>\r\n<p>\"</p>', 'upload/pp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `tittle`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(1, 1, '10 Best Programming  Languages to learn in 2023 ', '<p>A programming language is a way for programmers (developers) to communicate with computers. Programming languages consist of a set of rules that allows string values to be converted into various ways of generating machine code, or, in the case of visual programming languages, graphical elements.</p>\r\n<h2><span style=\"font-size: medium;\"><strong>What Are the Best Programming Languages to Learn in 2023?</strong></span></h2>\r\n<h2><span style=\"font-size: small;\"><strong></strong>Below is a list of the most popular and best programming languages that will be in demand in 2023.</span></h2>\r\n<p>JavaScript is a high-level programming language that is one of the core technologies of the World Wide Web. It is used as a client-side programming language by 97.8 percent of all websites. JavaScript was originally used only to develop web browsers, but they are now used for server-side website deployments and non-web browser applications as well.</p>\r\n<h2><strong>1. Javascript</strong></h2>\r\n<p>Javascript was created in 1995 and was initially known as LiveScript. However, Java was a very popular language at that time, so it was advertised as a &ldquo;younger brother&rdquo; of Java. As it evolved over time, JavaScript became a fully independent language. Nowadays, JavaScript is often confused with Java, and although there are some similarities between them, the two languages are distinct.Javascript is the most popular programming language in the world and is in high demand among various organizations. The average Java developer earns around $112,152 each year.</p>\r\n<h2><strong>2. Python</strong></h2>\r\n<p>Python is one of the most popular programming languages today and is easy for beginners to learn because of its readability. It is a free, open-source programming language with extensive support modules and community development, easy integration with web services, user-friendly data structures, and GUI-based desktop applications. It is a popular programming language for machine learning and deep learning applications. Python is used to develop 2D imaging and 3D animation packages like Blender, Inkscape, and Autodesk. It has also been used to create popular video games, including Civilization IV, Vegas Trike, and Toontown. Python is used for scientific and computational applications like FreeCAD and Abacus and by popular websites like YouTube, Quora, Pinterest, and Instagram. Python developers earn average annual salaries of about $109,092.</p>\r\n<h2><strong>3. GO</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Go was developed by Google in 2007 for APIs and web applications. Go has recently become one of the fastest-growing programming languages due to its simplicity, as well as its ability to handle multicore and networked systems and massive codebases. Go, also known as Golang, was created to meet the needs of programmers working on large projects. It has gained popularity among many large IT companies thanks to its simple and modern structure and syntax familiarity. Companies using Go as their programming language include Google, Uber, Twitch, Dropbox, among many others. Go is also gaining in popularity among data scientists because of its agility and performance. Go developers can earn an average annual salary of $141,654, and hitting up to $261,000.</p>\r\n<h2><strong>4. Java</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Java is one of the most popular programming languages used today. Owned by Oracle Corporation, this general-purpose programming language with its object-oriented structure has become a standard for applications that can be used regardless of platform (e.g., Mac, Windows, Android, iOS, etc.) because of its Write Once, Run Anywhere (WORA) capabilities. As a result, Java is recognized for its portability across platforms, from mainframe data centers to smartphones. Today there are more than 3 billion devices running applications built with Java. Java is widely used in web and application development as well as big data. Java is also used on the backend of several popular websites, including Google, Amazon, Twitter, and YouTube. It is also extensively used in hundreds of applications. New Java frameworks like Spring, Struts, and Hibernate are also very popular. With millions of Java developers worldwide, there are hundreds of ways to learn Java. Also, Java programmers have an extensive online community and support each other to solve problems. Java is a more complex language to learn, but experienced developers with Java coding skills are in high demand. The average Java developer earns around $109,225 each year.</p>\r\n<h2><strong>5. Kotlin</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Kotlin is a general-purpose programming language originally developed and unveiled as Project Kotlin by JetBrains in 2011. The first version was officially released in 2016. It is interoperable with Java and supports functional programming languages. Kotlin is used extensively for Android apps, web application, desktop application, and server-side application development. Kotlin was built to be better than Java, and people who use this language are convinced. Most of the Google applications are based on Kotlin. Some companies using Kotlin as their programming language include Coursera, Pinterest, PostMates among many others. Kotlin developers earn an average of $136,000 a year, with the potential to earn up to $171,500</p>\r\n<h2><strong>6. PHP</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>PHP is an open-source programming language created in 1990. Many web developers find it essential to learn PHP, as this language is used to build more than 80% of websites on the Internet, including notable sites like Facebook and Yahoo. Programmers mainly use PHP mainly to write server-side scripts. But developers can also use this language to write command-line scripts, and programmers with high-level PHP coding skills can also use it to develop desktop applications. PHP is considered a relatively easy language to learn for beginning developers. PHP professionals have access to several dedicated online communities, making it easy to get support and answers to questions. On average, PHP programmers earn average annual salaries of about $107,409.</p>\r\n<h2><strong>7. C#</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Developed by Microsoft, C# rose to fame in the 2000s for supporting the concepts of object-oriented programming. It is one of the most used programming languages for the .NET framework. Anders Hejlsberg, the creator of C#, says the language is more like C++ than Java. C# is best suited for applications on Windows, Android, and iOS, as it takes the help of the integrated development environment product, Microsoft Visual C++. C# is used on the back end of several popular websites like Bing, Dell, Visual Studio, and MarketWatch. C# developers earn around $111,760 per year.</p>\r\n<h2><strong>8. Swift</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>A few years ago, Swift made the top 10 in the monthly TIOBE Index ranking of popular programming languages. Apple developed Swift in 2014 for Linux and Mac applications. An open-source programming language that is easy to learn, Swift supports almost everything from the programming language Objective-C. Swift requires fewer coding skills compared with other programming languages, and it can be used with IBM Swift Sandbox and IBM Bluemix. Swift is used in popular iOS apps like WordPress, Mozilla Firefox, SoundCloud, and even in the game Flappy Bird. Professionals who develop iOS applications take home average annual salaries of around $106,652</p>\r\n<h2><strong>9. R</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>R is an open-source language that is essentially a different version of the S language. Much of the code that developers write for S runs on R without modification. Applications built in R are used for processing statistics, including linear and nonlinear modeling, calculation, testing, visualization, and analysis. Applications coded using R can interface with a number of databases and process both structured and unstructured data. R has a moderate learning curve and is not as easy for beginners to pick up as some other languages in this article. However, like other open-source programming languages, R boasts an active online community of developers, which is always a plus when learning new coding skills. On average, R developers earn average annual salaries of about $90,940.</p>\r\n<h2><strong>10. Ruby</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>If you want to start with a language that is known for being relatively simple to learn, consider Ruby. Developed in the 1990s, it was designed to have a more human-friendly syntax while still being flexible from the standpoint of its object-oriented architecture that supports procedural and functional programming notation. A web-application framework that is implemented in Ruby is Ruby on Rails (&ldquo;RoR&rdquo;). Ruby developers tout it for being an easy language to write in and also for the relatively short learning time required. These attributes have led to a large community of Ruby developers and a growing interest in the language among beginning developers. The average salary for a Ruby developer is around $121,000 per year.</p>', 'upload/8606a6f164.png', 'Taj', 'programming, python, java, PHP, Ruby', '2023-10-02 06:31:31', 1),
(6, 6, 'Education ', '\r\n<h2><b>What is Education?</h2></b><br>\r\n<p>Education can be thought of as the transmission of the values and accumulated knowledge of a society. In this sense, it is equivalent to what social scientists term socialization or enculturation.<br>\r\nChildren—whether conceived among New Guinea tribespeople, the Renaissance Florentines, or the middle classes of Manhattan—are born without culture. Education is designed to guide them in learning a culture, molding their behaviour in the ways of adulthood, and directing them toward their eventual role in society. In the most primitive cultures, there is often little formal learning—little of what one would ordinarily call school or classes or teachers. Instead, the entire environment and all activities are frequently viewed as school and classes, and many or all adults act as teachers. As societies grow more complex, however, the quantity of knowledge to be passed on from one generation to the next becomes more than any one person can know, and, hence, there must evolve more selective and efficient means of cultural transmission. The outcome is formal education—the school and the specialist called the teacher.\r\n\r\n\r\nAs society becomes ever more complex and schools become ever more institutionalized, educational experience becomes less directly related to daily life, less a matter of showing and learning in the context of the workaday world, and more abstracted from practice, more a matter of distilling, telling, and learning things out of context. This concentration of learning in a formal atmosphere allows children to learn far more of their culture than they are able to do by merely observing and imitating. As society gradually attaches more and more importance to education, it also tries to formulate the overall objectives, content, organization, and strategies of education. Literature becomes laden with advice on the rearing of the younger generation. In short, there develop philosophies and theories of education.</p>\r\n<br>\r\n<h2><b>Education in primitive and early civilized cultures</h2></b><br>\r\n<p>The term education can be applied to primitive cultures only in the sense of enculturation, which is the process of cultural transmission. A primitive person, whose culture is the totality of his universe, has a relatively fixed sense of cultural continuity and timelessness. The model of life is relatively static and absolute, and it is transmitted from one generation to another with little deviation. As for prehistoric education, it can only be inferred from educational practices in surviving primitive cultures.</p><br>\r\n<p>The purpose of primitive education is thus to guide children to becoming good members of their tribe or band. There is a marked emphasis upon training for citizenship, because primitive people are highly concerned with the growth of individuals as tribal members and the thorough comprehension of their way of life during passage from prepuberty to postpuberty.</p><br>', 'upload/edu.jpg', 'Taj', 'education, learning', '2023-10-02 06:32:56', 1),
(7, 7, 'Top universities in the US for computer science', '<h2><strong>10. Cornell University</strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Part of the prestigious Ivy League group, Cornell University is currently ranked 19th in the world for computer science, earning a high score in the H-index.<br /> Its department of computer science was established in 1965, making it one of the oldest of its kind in the country. Based in Ithaca, the university runs a technology-focused graduate campus in New York City, known as Cornell Tech.</p>\r\n<h2><strong>9. Columbia University </strong></h2>\r\n<p>&nbsp;</p>\r\n<p>Also in the state of New York is Columbia University, ranking 18th and earning its best score in the research citations per paper indicator. <br /> Most graduates from Columbia&rsquo;s computer science go into positions in computer science with industry or government. Others choose to continue their education or go into other careers in business administration, medicine or other professional studies.</p>\r\n<h2><strong>8. University of California, Los Angeles (UCLA) </strong></h2>\r\n<p>Eighth in the US and 17th globally for computer science is The University of California, Los Angeles (UCLA). UCLA earns high scores across most of the indicators, particularly in the H-index and research citations per paper indicators, reflecting the quality of the school&rsquo;s research.<br /> Its computer science faculty is part of the UCLA Henry Samueli School of Engineering and Applied Science. It is credited as being &lsquo;the birthplace of the internet&rsquo;, as the first transmission of what would become the internet was sent from the university&rsquo;s Boelter Hall in 1969.</p>\r\n<h2><strong>7. University of Washington </strong></h2>\r\n<p>Rising three positions to 15th place globally, University of Washington is the seventh best university in the US this year. The school earns its highest score in the research citations per paper and H-index indicators. The University of Washington&rsquo;s college of computer science and engineering was established as an inter-college graduate program in 1967. Undergraduates often participate in research, with 33 students at the university winning the Computing Research Association Undergraduate Research Award over a decade, more than any other program in the nation.</p>\r\n<h2><strong>6. Princeton University </strong></h2>\r\n<p>Ranked 14th in the world for computer science and sixth in the US is Princeton University. Earning near-perfect scores across each of the indicators, the university performs particularly well in the research citations per paper and the H-index indicators.<br /> Princeton University&rsquo;s computer science department is part of the university&rsquo;s School of Engineering and Applied Science, in which 1,900 students are enrolled. Its alumni include &lsquo;father of computer science&rsquo; Alan Turing, computer scientists Alonzo Church and John von Neumann, and Amazon CEO and founder Jeff Bezos.</p>\r\n<h2><strong>5. Harvard University </strong></h2>\r\n<p>Harvard University ranks seventh in the world and fifth in the UK Harvard UniversityUS. Its computer science department is part of the John A. Paulson School of Engineering and Applied Sciences (founded in 1847, with computer science courses available from 1984).<br /> Famous technology magnates to have studied at Harvard include Microsoft founder Bill Gates and Facebook founder Mark Zuckerberg (both of whom famously &lsquo;dropped out&rsquo; to pursue their careers in tech).</p>\r\n<h2><strong>4. University of California, Berkeley (UCB)</strong></h2>\r\n<p>The University of California, Berkeley is ranked fifth in the world and fourth in the US for computer science this year. Like MIT, Berkeley combines its computer science school with electrical engineering. <br /> The Turing Award, known as the &lsquo;Nobel Prize in computing&rsquo; has been awarded to 11 alumni and 10 past and present faculty members of Berkeley, including Douglas Engelbart, the inventor of the computer mouse.</p>\r\n<h2><strong>3. Carnegie Mellon University </strong></h2>\r\n<p>Coming third in the US for its computer science course is Carnegie Mellon University, based in the city of Pittsburgh, Pennsylvania. Carnegie Mellon University earns a perfect score in the academic reputation indicator &ndash; the best school in the US for this indicator.<br /> Its School of Computer Science is based at the Gates and Hillman Centers, a US$98 million complex which opened in 2009 and has achieved LEED Gold certification for its high levels of sustainability.</p>\r\n<h2><strong>2. Stanford University </strong></h2>\r\n<p>Ranked second for computer science both in the US and globally, Stanford University&rsquo;s setting near the famous Silicon Valley in California makes it unique amongst these top universities in the US, with many of the world&rsquo;s largest high-tech corporations right on its doorstep.<br /> Stanford&rsquo;s computer science department was founded in 1965 and is part of the university&rsquo;s School of Engineering.</p>\r\n<h2><strong>1. Massachusetts Institute of Technology (MIT) </strong></h2>\r\n<p>The Massachusetts Institute of Technology (MIT) offers the world&rsquo;s best computer science programme for another year running. MIT&rsquo;s computer science department, combined with electrical engineering, is the largest department at the institution.<br /> The university is well-known for its innovative research in this area, with its computer science faculty and researchers having made fundamental contributions to cybernetics, artificial intelligence, computer languages, machine learning, robotics, and cryptography. MIT earns its highest score in the employer reputation indicator this year.</p>', 'upload/higher.jpg', 'Taj', 'top ranked universities in us, higher studies', '2023-10-02 06:30:54', 1),
(9, 9, 'Tourist Places In Bangladesh', '<h2><strong>Popular tourist spots of Bangladesh</strong></h2>\r\n<p><br /> <br /><strong>Sajek Valley, Rangamati</strong></p>\r\n<p>Sajek Valley is currently one of the most popular tour destinations for travelers. It is located in the biggest union of Bangladesh, Baghaichari Upazila of Rangamati district, which is 70 kilometers away from Khagrachari district and 40 kilometers from Dighinalala.<br /> In Sajek, the clouds like white cotton, the beautiful mountain in a row fascinate the visitors. Konglak hill is another major attraction for tourists, where the Karnafuli River originates, the Lusai Hills of India can be seen. Sajek is beautiful in all the season. According to the seasons, it gets a new color but the rainy, autumn, and late autumn are the best time to travel Sajek.</p>\r\n<p><br /><strong>Kuakata</strong></p>\r\n<p>Kuakata sea beach Known as Sagar Kannya or the Daughter of the sea, is famous for its panoramic sea beach. This beach is a lovely mixture of picturesque natural beauty, blue sky and sandy beach. Here people can see 100 years old Buddhist temple and two wells of about 200 years old.</p>\r\n<p><br /><strong>Sundarbans Mangrove Forest</strong></p>\r\n<p>The Sundarbans, the largest in the world measuring about 40,000 sq km is a mangrove area in the delta formed by the confluence of the Ganges, Brahmaputra and Meghna Rivers in Bangladesh\'s Khulna Division. <br /> The days in between the months of October and March are considered as the best time to visit the Sundarbans, a UNESCO World Heritage Site, as the weather during these days are more pleasant. Hit hard by coronavirus, tourism-based businesses in the Sundarbans are waiting for reopening as they suffered huge losses over the past five months. The government restricted tourist gatherings in the Sundarbans on March 19 to prevent the spread of coronavirus.</p>\r\n<p><br /><strong>Cox\'s Bazar</strong></p>\r\n<p>Cox\'s Bazar sea beach located at Cox\'s Bazar, known as the longest natural sea beach in the world running 150 kilometres (93 mi). After being closed for about five months due to coronavirus Cox\'s Bazar sea beach reopened from August 17 on a limited scale. <br /> It is the most visited tourist destination in Bangladesh. Every year millions of foreigner and local visitors visit the beach to enjoy their holidays. People can enjoy sunrise and sunset view in this beach because the sea changes color in those time. Warm shark free water is best for swimming and sunbathing. It is always crowded by tourists. Near the beach, there are hundreds of shops selling souvenirs and beach accessories to the tourists</p>', 'upload/st.jpg', 'Taj', 'saintmartin, cox\'s bazar, srimongol, best tourist spot', '2023-10-02 06:30:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'University Of Barishal', 'upload/slider/bu.jpg'),
(2, 'Ocean (Animated)', 'upload/slider/ocean.png'),
(3, 'Forests', 'upload/slider/photo.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gh`) VALUES
(1, 'https://www.facebook.com/sumaiaislam.taj', '', '', 'https://github.com/taj034?fbclid=IwAR00sO24W2YsJNoHrZq8NOB1J_pZk3oobbrtY1MdyMDiOJ-Acw7fuaNybfk');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Md. Asad Mondall', 'asad', '81dc9bdb52d04dc20036dbd8313ed055', 'asad428161@gmail.com', '<p> Hey, I am admin. I own this site!!</p>', 0),
(2, 'Rashedul Islam', 'rashed', '6074c6aa3488f3c2dddff2a7ca821aab', 'rashed1122@gmail.com', '<p> Hey, I am an Author!!</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Taj&#039;s Personal Blog', 'Journey To the Infinity', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
