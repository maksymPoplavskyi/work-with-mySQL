-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: mysql:3306
-- Время создания: Ноя 24 2019 г., 00:31
-- Версия сервера: 5.6.46
-- Версия PHP: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `beetroot`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `password` varchar(32) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `password`, `date`, `status`) VALUES
(1, 'admin', '2019-11-23 22:12:16', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `date`, `status`) VALUES
(1, 'cat', '2019-11-20 16:55:59', 1),
(2, 'cat cat', '2019-11-20 16:56:16', 1),
(3, 'cat cat cat', '2019-11-20 16:56:21', 1),
(5, 'yohohopediki', '2019-11-21 13:38:23', 1),
(7, 'zxc', '2019-11-22 01:19:49', 1),
(9, 'yo', '2019-11-22 01:46:30', 1),
(10, 'nigger', '2019-11-22 02:00:22', 1),
(11, 'what up', '2019-11-24 00:27:52', 1),
(12, 'boy', '2019-11-24 00:28:14', 1),
(13, 'qwerty', '2019-11-24 00:28:40', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(18) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `count` tinyint(99) UNSIGNED NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `count`, `category_id`, `date`, `status`) VALUES
(11, 'qwe', '123', 1, 5, '2019-11-22 01:44:04', 1),
(12, 'qwe1', 'qwe1', 25, 1, '2019-11-22 01:44:22', 1),
(13, 'qwe2', 'qwe2', 0, 1, '2019-11-22 01:44:48', 1),
(14, 'qwe3', 'qwe3', 0, 1, '2019-11-22 01:45:03', 1),
(15, 'nigger1', 'black', 99, 10, '2019-11-22 02:00:39', 1),
(16, 'nigger2', 'black', 100, 10, '2019-11-22 02:01:20', 1),
(17, 'iphone7', 'yellow', 12, 12, '2019-11-24 00:29:19', 1),
(18, 'iphone7', 'gold', 5, 12, '2019-11-24 00:29:45', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `city` varchar(18) NOT NULL,
  `address` varchar(56) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `city`, `address`, `date`) VALUES
(30, '123@mail.ru', '202cb962ac59075b964b07152d234b70', 'qwe', 'asd', '2019-11-23 21:24:10'),
(31, 'qwe@mail.ua', '76d80224611fc919a5d54f0ff9fba446', 'qwe', 'qwe', '2019-11-23 21:24:43'),
(32, 'asd@mail.ru', '7815696ecbf1c96e6894b779456d330e', 'asd', 'asd', '2019-11-23 21:24:53'),
(35, 'ww@mail.ru', '4eae35f1b35977a00ebd8086c259d4c9', 'city', 'address', '2019-11-24 00:19:09');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
