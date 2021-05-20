-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 20 2021 г., 20:14
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chat_main`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `message` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `name`, `message`) VALUES
(152, 'dan', 'fdgg'),
(153, 'dan', 'hello, egor'),
(154, 'egor', 'Hello, Dan'),
(155, 'egor', 'how a u'),
(156, 'dan', 'norm'),
(157, 'egor', 'aaaaaaaaaaaaaaaaaa'),
(158, 'dan', 'mmmmmm'),
(159, 'egor123', 'dsfsdf'),
(160, '1111', 'werewr');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `name` varchar(32) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `token` varchar(32) DEFAULT NULL,
  `id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`name`, `login`, `password`, `token`, `id`) VALUES
('egor', 'egor', '123', '670a4b8ad3794694be0e3b688bc6d9b3', 1),
('vasya', 'vasya', '123', '3752dc7fc6c29218ec0976fa78b2db38', 2),
('sdcds', 'xzc', 'zxc', '3b4ecd7366e8a747b3cab8b5fd5b9d9d', 14),
('asdsad', 'asdsad', 'asdsa', '24840bcadcfd80bf5b4fd4d264bbb203', 15),
('dan', 'dan', 'dan', '77e0ea6c7117bb77a479e750e41b1a22', 16),
('danilbro', '123', 'asdasd', 'd665457a521907c81147561d056f8293', 17),
('ssssss', 'sssssss', 'sssssssss', '2c3e3dd28246fb1a0bda39cd8ef13b01', 18),
('asdsad', 'asdasd', 'sadasd', 'a05160eedc05cbddacce63a94dae7687', 19),
('egor', 'sadasd', 'asdasd', 'ed992911e66a3cdfce03cdaa5ae8689f', 20),
('shish', 'kake', 'sss', '8a8352052fe4dac458cf36e00757dbd9', 21),
('egor123', '123213', 'dddd', 'fcfe108d7a86941ca02e11426e3edf87', 22),
('1111', '1111', '1111', '6f4b040dc25c1ed887bf6e114a7d6b3f', 23);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
