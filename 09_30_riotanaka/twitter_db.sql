-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2020 年 7 月 02 日 14:43
-- サーバのバージョン： 5.7.26
-- PHP のバージョン: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `twitter_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `following`
--

CREATE TABLE `following` (
  `follow_id` int(11) NOT NULL,
  `followed` varchar(30) NOT NULL,
  `follower` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `following`
--

INSERT INTO `following` (`follow_id`, `followed`, `follower`) VALUES
(1, 'duolingo', 'siri'),
(5, 'pikapikaaaaaa', 'siri'),
(6, 'duolingo', 'negi_alien'),
(12, 'pikapikaaaaaa', 'duolingo'),
(13, 'duolingo', 'pikapikaaaaaa'),
(14, 'siri', 'pikapikaaaaaa'),
(16, 'siri', 'negi_alien'),
(17, 'negi_alien', 'siri');

-- --------------------------------------------------------

--
-- テーブルの構造 `tweet_content`
--

CREATE TABLE `tweet_content` (
  `tweet_num` int(11) NOT NULL,
  `id` int(10) NOT NULL,
  `tweet` varchar(140) NOT NULL,
  `indate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `tweet_content`
--

INSERT INTO `tweet_content` (`tweet_num`, `id`, `tweet`, `indate`) VALUES
(30, 117, '10万ボルト', '2020-06-18 19:40:11.000000'),
(31, 117, '効果はばつぐんだ！', '2020-06-18 19:40:20.000000'),
(32, 117, 'はかいこうせん', '2020-06-18 19:41:01.000000'),
(34, 117, 'ぴーかぴかー', '2020-06-18 19:42:11.000000'),
(35, 131, 'ねぎあげます', '2020-06-18 19:47:57.000000'),
(36, 131, 'ねぎ', '2020-06-18 19:48:03.000000'),
(37, 131, 'ぎかい', '2020-06-18 19:49:12.000000'),
(38, 131, 'いぶしぎん', '2020-06-18 19:49:19.000000'),
(39, 132, 'Hi! It\'s Duo. \r\n\r\nIt\'s time for your daily English lesson. Take 5 minutes now to complete it.', '2020-06-18 19:59:48.000000'),
(40, 132, 'Hi! It\'s Duo. It\'s time for your daily English lesson. Take 5 minutes now to complete it.', '2020-06-18 19:59:52.000000'),
(41, 132, 'Hi! It\'s Duo. It\'s time for your daily English lesson. Take 5 minutes now to complete it.', '2020-06-18 19:59:56.000000'),
(42, 132, 'Hi! It\'s Duo. It\'s time for your daily English lesson. Take 5 minutes now to complete it.', '2020-06-18 19:59:58.000000'),
(43, 132, 'Hi! It\'s Duo. It\'s time for your daily English lesson. Take 5 minutes now to complete it.', '2020-06-18 20:00:04.000000'),
(44, 133, 'Hey you', '2020-06-18 20:07:19.000000'),
(45, 133, 'what time is it', '2020-06-18 20:07:42.000000'),
(46, 133, 'where is cambodia', '2020-06-18 20:08:04.000000'),
(47, 133, 'who is greta thunberg', '2020-06-18 20:09:51.000000'),
(48, 133, 'say something funny', '2020-06-18 20:10:03.000000'),
(49, 133, 'say anything', '2020-06-18 20:10:12.000000'),
(50, 117, 'G\'s！', '2020-06-20 15:07:24.000000'),
(51, 134, 'はいじめてのついーと', '2020-06-20 18:38:16.000000'),
(52, 132, '今日の天気は？', '2020-06-30 06:34:26.000000'),
(53, 132, 'hey', '2020-06-30 06:39:51.000000'),
(54, 132, 'How are you', '2020-06-30 06:40:00.000000'),
(55, 132, 'fffff', '2020-06-30 07:04:19.000000'),
(56, 133, 'HOLA!', '2020-07-01 22:04:24.000000'),
(57, 133, 'Why are you so stupid?', '2020-07-01 22:10:18.000000'),
(58, 133, 'what the hell are you talking about', '2020-07-01 22:11:26.000000');

-- --------------------------------------------------------

--
-- テーブルの構造 `twitter_account`
--

CREATE TABLE `twitter_account` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `name` varchar(24) DEFAULT NULL,
  `bio` text,
  `profile_picture` varchar(50) DEFAULT NULL,
  `background_image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `twitter_account`
--

INSERT INTO `twitter_account` (`id`, `email`, `password`, `username`, `name`, `bio`, `profile_picture`, `background_image`) VALUES
(117, 'pika@pi.pi', 'raicyuninaritai', 'pikapikaaaaaa', 'Pikachu', 'ぴっぴかちゅう', 'profile.jpg', 'pikachu.jpg'),
(131, 'negi@ne.gi', 'nasunohogasuki', 'negi_alien', 'ねぎ星人', '特徴：くちい | 好きなもの：ねぎ', 'negi.jpg', 'negi-bg.jpg'),
(132, 'duo@lingo.go', 'duolingooo', 'duolingo', 'Duo Lingoda', 'Time to learn English', 'duo_pic.jpg', 'duo_bg.jpg'),
(133, 'siri@apple.com', '32ogOGo3voe8g', 'siri', 'Siri', 'I\'m just a machine to answer your stupid questions.', 'siri_pic.jpg', 'siri_bg.jpg');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `following`
--
ALTER TABLE `following`
  ADD PRIMARY KEY (`follow_id`);

--
-- テーブルのインデックス `tweet_content`
--
ALTER TABLE `tweet_content`
  ADD PRIMARY KEY (`tweet_num`);

--
-- テーブルのインデックス `twitter_account`
--
ALTER TABLE `twitter_account`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `following`
--
ALTER TABLE `following`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- テーブルのAUTO_INCREMENT `tweet_content`
--
ALTER TABLE `tweet_content`
  MODIFY `tweet_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- テーブルのAUTO_INCREMENT `twitter_account`
--
ALTER TABLE `twitter_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
