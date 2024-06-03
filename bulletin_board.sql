-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-06-03 08:29:11
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
(2, '1460318498c1f53bb880ce2e6d9ef64b', 'テスト2', 'ダミーテキスト', '2023-12-05 06:03:54'),
(25, '0adc40561e105f284b46242dc10f67b0', 'title', 'だみーてきすとだみーてきすとだみーてきすとだみーてきすとだみーてきすとだみーてきすとだみーてきすとだみーてきすと', '2024-06-03 08:18:15'),
(26, 'fa4fc15be64ad60e4b085340d6a33f20', 'タイトル', 'texttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttexttext', '2024-06-03 08:19:05'),
(27, '022e694b75eda9b5b1804de4cea0112a', 'あいうえお', 'あいうえおかきくけこさしすせそたちつてとなにぬねの', '2024-06-03 08:20:10'),
(28, '21e93e63d43bf2b4be14890008157f0f', 'タイトル1', 'テキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト', '2024-06-03 08:22:52'),
(29, '022e694b75eda9b5b1804de4cea0112a', 'ダミーテキスト', 'ダミーテキストダミーテキストダミーテキストダミーテキストダミーテキストダミーテキスト', '2024-06-03 08:23:36');

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
(11, 6, '022e694b75eda9b5b1804de4cea0112a', 1, '2024-01-18 13:28:10', '2024-01-18 13:29:01'),
(12, 4, '022e694b75eda9b5b1804de4cea0112a', 1, '2024-01-18 13:28:13', '2024-01-18 13:28:37'),
(13, 3, '022e694b75eda9b5b1804de4cea0112a', 0, '2024-01-18 13:28:47', '2024-01-18 13:38:03'),
(14, 2, '022e694b75eda9b5b1804de4cea0112a', 0, '2024-01-18 13:29:11', '2024-01-18 13:29:11'),
(15, 5, '022e694b75eda9b5b1804de4cea0112a', 0, '2024-01-18 13:29:15', '2024-01-18 13:29:15'),
(16, 8, '99b57c9e872e5239790cb11ac890c445', 1, '2024-01-28 06:35:28', '2024-01-29 15:33:15'),
(17, 6, '99b57c9e872e5239790cb11ac890c445', 1, '2024-01-28 06:35:29', '2024-01-29 15:33:16'),
(18, 5, '99b57c9e872e5239790cb11ac890c445', 1, '2024-01-28 06:35:31', '2024-01-29 15:33:17'),
(19, 13, 'e659c9da8654eec334e91a91e4f84560', 1, '2024-01-28 14:34:01', '2024-01-28 14:44:45'),
(20, 11, 'e659c9da8654eec334e91a91e4f84560', 0, '2024-01-28 14:34:02', '2024-01-28 14:45:08'),
(21, 9, 'e659c9da8654eec334e91a91e4f84560', 0, '2024-01-28 14:34:04', '2024-01-28 14:44:55'),
(22, 12, 'e659c9da8654eec334e91a91e4f84560', 0, '2024-01-28 14:38:10', '2024-01-28 14:45:09'),
(23, 10, 'e659c9da8654eec334e91a91e4f84560', 1, '2024-01-28 14:38:12', '2024-01-28 14:44:46'),
(24, 14, '089c39798d247ddb7a2e29ebf92d6124', 0, '2024-01-29 08:33:11', '2024-01-29 08:33:43'),
(25, 12, '089c39798d247ddb7a2e29ebf92d6124', 0, '2024-01-29 08:33:47', '2024-01-29 08:33:47'),
(26, 11, '089c39798d247ddb7a2e29ebf92d6124', 0, '2024-01-29 08:33:47', '2024-01-29 08:33:47'),
(27, 16, '089c39798d247ddb7a2e29ebf92d6124', 0, '2024-01-29 12:35:15', '2024-01-29 12:35:15'),
(28, 7, '089c39798d247ddb7a2e29ebf92d6124', 0, '2024-01-29 12:35:42', '2024-01-29 12:35:42'),
(29, 6, '089c39798d247ddb7a2e29ebf92d6124', 0, '2024-01-29 12:35:42', '2024-01-29 12:35:42'),
(30, 17, 'e659c9da8654eec334e91a91e4f84560', 0, '2024-01-29 15:25:46', '2024-01-29 15:25:46'),
(31, 8, 'e659c9da8654eec334e91a91e4f84560', 0, '2024-01-29 15:26:13', '2024-01-29 15:26:13'),
(32, 7, 'e659c9da8654eec334e91a91e4f84560', 0, '2024-01-29 15:26:14', '2024-01-29 15:26:14'),
(33, 18, '99b57c9e872e5239790cb11ac890c445', 1, '2024-01-29 15:28:54', '2024-01-29 15:33:18'),
(34, 19, '21e93e63d43bf2b4be14890008157f0f', 1, '2024-01-29 15:36:44', '2024-01-29 15:37:05'),
(35, 8, '21e93e63d43bf2b4be14890008157f0f', 0, '2024-01-29 15:37:20', '2024-01-29 15:37:20'),
(36, 7, '21e93e63d43bf2b4be14890008157f0f', 0, '2024-01-29 15:37:21', '2024-01-29 15:37:21'),
(37, 6, '21e93e63d43bf2b4be14890008157f0f', 0, '2024-01-29 15:37:22', '2024-01-29 15:37:22'),
(38, 20, 'e659c9da8654eec334e91a91e4f84560', 0, '2024-01-30 01:57:58', '2024-01-30 01:57:58'),
(39, 21, '660a187cd4e7c1983bffb74dc1b74770', 0, '2024-01-30 02:08:56', '2024-01-30 02:08:56'),
(40, 8, '660a187cd4e7c1983bffb74dc1b74770', 0, '2024-01-30 02:09:33', '2024-01-30 02:09:33'),
(41, 7, '660a187cd4e7c1983bffb74dc1b74770', 0, '2024-01-30 02:09:34', '2024-01-30 02:09:34');

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
(3, '000', '000@000', '$2y$10$Bp8nIpHFQfqioVhz0aACvuH/imxFrdhiyXRx1zPH13oAEgswLahJq', '022e694b75eda9b5b1804de4cea0112a'),
(4, 'asd', 'asd@asd', '$2y$10$58h0xBrlMACKjQbk1VmVgeBSl2poapX97e24hEbtnbmsQuz5mj9Uy', 'fa4fc15be64ad60e4b085340d6a33f20'),
(13, '444', '444@444', '$2y$10$pQlGlT3yOyLaHBcOir7cQeYnN6ipDZhXHFlrpQY/USK5M/wvB7G2K', '21e93e63d43bf2b4be14890008157f0f'),
(14, '222', '222@222', '$2y$10$ORqETdDsgF3XmcI6qQTz8.ciI97IhCYwNDG8Q0vElKROfJ573KvM2', 'e659c9da8654eec334e91a91e4f84560'),
(15, '555', '555@555', '$2y$10$PP0aC6aK7QE0JK0ZvdyVFeipXZz59mFjVb7a8wT6PmRpNVceNacJy', '660a187cd4e7c1983bffb74dc1b74770');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `board`
--
ALTER TABLE `board`
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
-- テーブルの AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- テーブルの AUTO_INCREMENT `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
