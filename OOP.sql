-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.0
-- Время создания: Мар 18 2025 г., 21:35
-- Версия сервера: 8.0.35
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `OOP`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standart user', ''),
(2, 'Administrator', '{\"admin\":1}');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `group_id` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `group_id`) VALUES
(2, '', 'Nukos', 'pass', 1),
(3, '', 'Ainur', 'secret', 1),
(4, '', 'Ainur', 'secret', 1),
(5, '', 'Ainur5', 'secret5', 1),
(6, '', 'marlin', '$2y$10$n1vXoGFZSl6ywECtkh5AD.6rSSxrF6k/BgjKTxMCzcaO7A.auFx/q', 1),
(7, 'runia87@mail.ru', 'Ainur9', '$2y$10$Xsz7gRRgCbPxCUTYldMZgOBRDaYEqARu1Em/LmxJY9EgZZZn4JyXa', 1),
(8, 'uuu@mail.ru', 'Ainur10', '$2y$10$zl65fRueyKfwje0Zd2ZBpeM7QwccT/o14jHYAKe8OqmBGjHdaDJAu', 1),
(9, 'ttt@mail.ru', 'Sarybay Ainur', '$2y$10$QvJRe505c3/ivk8/RWrLPeBByyxXH4HjF4S.OTpFlNaCk3jEE2XES', 1),
(10, 'azharturak@yandex.kz', 'Alina', '$2y$10$wpdyDKjEBRtCs04RbfmGae4QAaScfu732SbpEua54NjQWA9ZO0zE.', 1),
(11, 'arica.grace@smartadminwebapp.com', 'Laura', '$2y$10$lGYQvdW9SA0YS7xNRar9cudc/KgmJLNw/G1IcNuJPJOLhVruv1Kdy', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user_cookies`
--

CREATE TABLE `user_cookies` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `user_cookies`
--

INSERT INTO `user_cookies` (`id`, `user_id`, `hash`) VALUES
(1, 8, 'be096c38f923869f08721bf2fb271f0e8f8c67a917ba9337ad083856112c9c49'),
(2, 9, '985c0d10ebc71369458ae8a3b89caf551eee9c7ffa60abb63a732dc1357d5f0f'),
(3, 10, '4c21feb242bb2503fb3a71cb6837aa1cd044975b9ed0d4e0d2b13d19b598578f'),
(4, 7, 'f035e4b7cf27abf31e916ffceeb4d6717b8cc515d79d942d7e209f38700207a2'),
(5, 11, '724ce9467aa6916e99957a0422c5411387810d807954c5066d9e75e07bc0d279');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_cookies`
--
ALTER TABLE `user_cookies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `user_cookies`
--
ALTER TABLE `user_cookies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
