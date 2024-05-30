-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-05-30 15:55:38
-- サーバのバージョン： 10.4.24-MariaDB
-- PHP のバージョン: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `bulletin_board`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `board`
--

CREATE TABLE `board` (
  `id` int(11) NOT NULL,
  `user_key` text NOT NULL,
  `title` varchar(20) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `board`
--

INSERT INTO `board` (`id`, `user_key`, `title`, `body`, `date`) VALUES
(1, '1460318498c1f53bb880ce2e6d9ef64b', 'テスト1', 'ダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキスト', '2023-12-05 06:03:45'),
(8, 'fa4fc15be64ad60e4b085340d6a33f20', 'title', 'texttexttexttexttexttexttext', '2024-01-23 06:20:46'),
(9, '022e694b75eda9b5b1804de4cea0112a', '0000', '00000000000000000', '2024-01-23 06:21:24'),
(10, '022e694b75eda9b5b1804de4cea0112a', 'タイトル', 'テキストテキストテキストテキストテキスト', '2024-01-23 06:56:53'),
(12, 'fa4fc15be64ad60e4b085340d6a33f20', 'タイトル', 'だみーてきすとだみーてきすとだみーてきすと', '2024-01-23 06:24:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `boards`
--

CREATE TABLE `boards` (
  `id` int(11) NOT NULL,
  `user_key` text NOT NULL,
  `title` varchar(20) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `boards`
--

INSERT INTO `boards` (`id`, `user_key`, `title`, `body`, `date`) VALUES
(1, '1460318498c1f53bb880ce2e6d9ef64b', 'テスト1', 'ダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキスト', '2023-12-05 06:03:45'),
(8, 'fa4fc15be64ad60e4b085340d6a33f20', 'title', 'texttexttexttexttexttexttext', '2024-01-23 06:20:46'),
(9, '022e694b75eda9b5b1804de4cea0112a', '0000', '00000000000000000', '2024-01-23 06:21:24'),
(10, '022e694b75eda9b5b1804de4cea0112a', 'タイトル', 'テキストテキストテキストテキストテキスト', '2024-01-23 06:56:53'),
(12, 'fa4fc15be64ad60e4b085340d6a33f20', 'タイトル', 'だみーてきすとだみーてきすとだみーてきすと', '2024-01-23 06:24:43');

-- --------------------------------------------------------

--
-- テーブルの構造 `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `user_key` text NOT NULL,
  `delete_flag` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `favorite`
--

INSERT INTO `favorite` (`id`, `board_id`, `user_key`, `delete_flag`, `create_date`, `update_date`) VALUES
(1, 2, 'b642b4217b34b1e8d3bd915fc65c4452', 0, '2023-12-05 07:29:51', '2023-12-05 07:41:05'),
(2, 1, 'b642b4217b34b1e8d3bd915fc65c4452', 0, '2023-12-05 07:30:22', '2023-12-05 07:40:13'),
(11, 3, '022e694b75eda9b5b1804de4cea0112a', 0, '2024-01-09 05:12:53', '2024-01-09 06:30:11'),
(12, 2, '022e694b75eda9b5b1804de4cea0112a', 0, '2024-01-09 06:40:57', '2024-01-09 06:41:58'),
(13, 4, '022e694b75eda9b5b1804de4cea0112a', 0, '2024-01-09 06:43:45', '2024-01-23 05:32:08'),
(14, 1, '022e694b75eda9b5b1804de4cea0112a', 0, '2024-01-16 06:22:51', '2024-01-16 06:40:14'),
(15, 6, '022e694b75eda9b5b1804de4cea0112a', 1, '2024-01-16 06:25:51', '2024-01-23 05:43:15'),
(16, 7, '022e694b75eda9b5b1804de4cea0112a', 0, '2024-01-16 07:27:49', '2024-01-16 07:27:49'),
(17, 10, '022e694b75eda9b5b1804de4cea0112a', 1, '2024-01-23 06:48:34', '2024-01-23 07:01:55'),
(18, 9, '022e694b75eda9b5b1804de4cea0112a', 0, '2024-01-23 07:01:34', '2024-01-23 07:01:34'),
(19, 12, '022e694b75eda9b5b1804de4cea0112a', 0, '2024-01-23 07:01:56', '2024-01-23 07:01:56');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `user_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_key`) VALUES
(1, 'test', 'test@test.com', '$2y$10$TmXKdITKoExNp9.NfKJOb.K3ppGkEkR3w8GA.u5Dvy3HaiNl2lHQO', 'b642b4217b34b1e8d3bd915fc65c4452'),
(2, 'user', 'user@test.com', '$2y$10$zdUJ0Ig/nGR48rJk4ptCWOKdzRiX2WpT87J2vtvPeW5yvPh1NIOEC', '1460318498c1f53bb880ce2e6d9ef64b'),
(3, '000', '000@000', '$2y$10$9tcFCeg0xFb5S3ll09hkf.Byo14iT3GU355VYF75B1yb8XcSb7knO', '022e694b75eda9b5b1804de4cea0112a'),
(4, 'asd', 'asd@asd', '$2y$10$ro/m4SAvZ6k2sf6y9AqaS.HXul7V.j5zcDPa0cZpwhJBv41ksJ8EW', 'fa4fc15be64ad60e4b085340d6a33f20');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- テーブルの AUTO_INCREMENT `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
