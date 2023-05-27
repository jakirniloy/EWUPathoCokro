-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 09:31 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(3) NOT NULL,
  `cat_id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tag` text NOT NULL,
  `admin` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `rate` tinyint(2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `cat_id`, `title`, `content`, `tag`, `admin`, `status`, `rate`, `image`, `date`) VALUES
(55, 27, '১৬২ তম জন্মদিনে কবিগুরু রবীন্দ্রনাথ ঠাকুরের প্রতি রইল গভীর শ্রদ্ধা!', 'এক শতাব্দীর ও আগের ক্যালেন্ডারের কোন এক ২৫ শে বৈশাখে কলকাতার জোড়াসাঁকোর ঠাকুর পরিবারে সোনার চামচ মুখে জন্ম নেন বাংলা সাহিত্যের এক উল্লেখযোগ্য মানুষ। মাত্র ৮ বছর বয়সে কাব্যরচনা শুরু করেন এই জাদুকর। এরপর তার সোনার তরী তে চেপে সাহিত্য ও শিল্পচর্চার এমন কোন শাখা নেই যাতে তিনি বিচরন করেন নি। আভিজাত্য,জমিদারি সামলেও তাঁর লেখায় রেখেছেন আনন্দ, বিষাদ, আক্ষেপ, প্রণয়, যুদ্ধ, প্রতিবাদ প্রতিটি আবেগের সুনিপুণ কারুকার্য। আঁচড় হোক রং-তুলি কিংবা কালি দোয়াত এর, হোক নাট্যমঞ্চ হোক রাজনীতি সবকিছুর গাম্ভীর্যের পাল্লা যেন ভারী করেছেন নিজের গুণের প্রভাবে...\"ঠাঁই নাই, ঠাঁই নাই-- ছোটো সে তরীআমারি সোনার ধানে গিয়েছে ভরি।শ্রাবণগগন ঘিরেঘন মেঘ ঘুরে ফিরে,শূন্য নদীর তীরেরহিনু পড়ি--যাহা ছিল নিয়ে গেল সোনার তরী।\"১৬২ তম জন্মদিনে কবিগুরু রবীন্দ্রনাথ ঠাকুরের প্রতি রইল গভীর শ্রদ্ধা।', 'Club news', 'admin', 1, 1, '883256.jpg', '2023-05-19 19:16:40'),
(56, 27, 'মা দিবস', 'সৃষ্টিকর্তা প্রদত্ত আমাদের জন্য সবচেয়ে বড় উপহার মা; যার মমতা-শাসন জড়িয়ে থাকে আমাদের এই ক্ষু্দ্র জীবনে। মায়ের আঁচলেই আমরা খুঁজতে যাই সমস্ত মানসিক শান্তি, ভুলতে চাই সব ব্যর্থতা। পৃথিবীর প্রতিটা পরিবর্তনের যুদ্ধক্ষেত্রে সকল মায়েরাই তাদের সন্তানদের অনুপ্রেরণা দিয়ে উৎসর্গ করেন...বিপ্লব ঘটে...সবাই বিজয়োল্লাসে মগ্ন আর হৃদয়ে রক্তক্ষরণ নিয়ে অশ্রু মুছে স্মৃতিতে ভর দিয়ে এগিয়ে যান প্রতিটি মা। আর সেই রত্নগর্ভা মায়ের কোল খালি হবার, বা \"মা\" এর মত মধুর ডাক শুনতে না পাবার বেদনা বোধহয় একমাত্র তিনি ছাড়া পৃথিবীর আর কেউ অনুভব করবে না!ভালো থাকুক প্রতিটি মা।।', 'Club news', 'admin', 1, 0, '450461.jpg', '2023-05-19 19:19:11'),
(57, 27, 'পাঠচক্র - ইস্ট ওয়েস্ট বিশ্ববিদ্যালয় বাংলা সাহিত্য সংঘের পক্ষ থেকে দ্বিতীয় বারের মতো আয়োজিত হয়ে গেলো', 'পাঠচক্র - ইস্ট ওয়েস্ট বিশ্ববিদ্যালয় বাংলা সাহিত্য সংঘের পক্ষ থেকে দ্বিতীয় বারের মতো আয়োজিত হয়ে গেলো \"ইফতার মাহফিল ২০২৩\"। করোনাকাল পরবর্তী সময় সবার অংশগ্রহণের মাধ্যমে জমজমাট ছিল ইফতারের এই আয়োজনটি। আমাদের সকলের প্রিয় এবং সম্মানীয় কামরুল হাসান স্যারের গল্পে মুখর হয়ে ছিল যেন পুরাটা সন্ধ্যা। রোজার শুদ্ধতার মাঝে এমন প্রাণ খোলা আড্ডা আমাদের জন্য দিয়ে গেছে একগুচ্ছ ভালো লাগার অনুভূতি আর তৃপ্তি। আমাদের এই ইফতার মাহফিলটি সম্পূর্ণভাবে সফল করতে যাদের অবদান প্রথম সারির দিকে তার মধ্যে \" Roshik Bhoj \" অন্যতম। আমাদের মতো যারা বিরিয়ানি-প্রেমী তাদের মনে জায়গা করে নিয়েছে \"রসিক ভোজ\"। তাদের জানাই অসংখ্য ধন্যবাদ এবং শুভ কামনা।', 'Club news', 'admin', 1, 0, '172693.jpg', '2023-05-19 19:23:04'),
(58, 24, '\"মুক্তিপথের প্রবাহ\" শীঘ্রই মুক্তি পেতে যাচ্ছে  পাঠচক্র - ইস্ট ওয়েস্ট বিশ্ববিদ্যালয় এর পর্দায়!', 'ধরুন, আপনার ঘরে ঢুকে কেউ আপনাকে ছিনতাই করে/মেরে গেলো। আপনি কি করবেন? ধরুন, আপনার বোনকে কেউ বাজে কথা বললো। আপনার রিয়েকশন কি হবে? আবার ধরুন, আপনার বাড়ীতে কেও এসে যা না তাই করে যাচ্ছে, আপনি কি তাদের আটকাবেন না? এখন বাড়ীর জায়গায় দেশের কথা ভাবুন?!এমন বাস্তব ও বর্তমান প্রেক্ষাপট ভিত্তিক শর্টফিল্ম \"মুক্তিপথের প্রবাহ\" শীঘ্রই মুক্তি পেতে যাচ্ছে  পাঠচক্র - ইস্ট ওয়েস্ট বিশ্ববিদ্যালয় এর পর্দায়!', 'Club Annoucements', 'admin', 1, 0, '163729.jpg', '2023-05-19 19:26:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(2) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `create_time`, `admin_name`) VALUES
(24, 'Club Annoucements', 1, '2023-05-19 19:09:20', 'admin'),
(25, 'Poems', 1, '2023-05-19 19:09:30', 'admin'),
(26, 'Short Story', 1, '2023-05-19 19:09:51', 'admin'),
(27, 'Club News', 1, '2023-05-19 19:09:59', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(5) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(2) NOT NULL,
  `email_id` int(2) NOT NULL,
  `user` varchar(50) NOT NULL,
  `reply` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(2) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `postdisplay` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `logo`, `title`, `footer`, `postdisplay`) VALUES
(1, 'ppp.png', 'পাঠচক্র', '2023 © Developed by : ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(2) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `footerlink` varchar(255) NOT NULL,
  `footertxt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twitter`, `instagram`, `linkedin`, `github`, `footerlink`, `footertxt`) VALUES
(1, 'https://github.com/jakirniloy', 'https://github.com/jakirniloy', 'https://github.com/jakirniloy', 'https://github.com/jakirniloy', 'https://github.com/jakirniloy', 'https://github.com/jakirniloy', 'Jakir');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `role` tinyint(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `email`, `password`, `image`, `bio`, `role`, `date`) VALUES
(6, 'MD JAKIR HOSSAIN', 'Niloy', 'admin', 'mdjakirhossen13@2gmail.com', '123456', 'pp.png', 'Hello.I\'m jakir.I\'m a tech enthusiast guy. Personally ', 1, '2023-04-27 14:36:53'),
(10, '', '', 'jakir', 'jakir@gmail.com', '123456', '', '', 2, '2023-05-08 18:53:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
