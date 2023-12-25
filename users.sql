-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 25 2023 г., 01:06
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `opoves`
--

CREATE TABLE `opoves` (
  `id` bigint(20) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `users_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `opoves`
--

INSERT INTO `opoves` (`id`, `text`, `users_id`) VALUES
(1, 'фыв', 2),
(2, 'asdasd', 4),
(3, 'asdas', 2),
(4, 'фывфывфы', 2),
(5, 'фывыфвфывыфвфывфы', 2),
(7, 'цйцу', 2),
(10, 'фывфывфы', 8),
(11, '', 11),
(13, 'цйу', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `password`, `username`) VALUES
(1, '$2a$10$8499xjp10fn900yJhn6ZauVxsQ/bIfjyPptJl9fiEyPsT7DKU/iom', 'zzz'),
(2, '$2a$10$VZN72MMkm90s.ZKfKA.iVer2SWSCxvT1DA8vSgRpB29i1DAW38XQC', 'vvv'),
(3, '$2a$10$ExPQOyS7Iz58Z14x9sSs5.ILKpUS2Qar1m7tGyhVJ6CJsqOeUSFcS', '123'),
(4, '$2a$10$i89wsMwoECHy4lGE721lR.4.DVkavY8dP.t5KwR0NKOR/dtY6y8lG', '12'),
(6, '$2a$10$x1pumxIh4jC85HDGE88g8.A1Espgln2r02IquQZlpT4ByrAPAbLzu', '123'),
(7, '$2a$10$jghLsHMHkmUeisG84FNXSO6qDI72B10QDiR0AEAh/ffujkVh5FFDS', 'aa'),
(8, '$2a$10$s1IkVk4fRvHcShNo0mwZTuI4ku/22RMQUkM4GXqKz7FYRU3IVeQey', 'aa'),
(9, '$2a$10$dgahss4RVvK1V7zvZYXv3OP7.VsSSD3FNGEfqbRzoKiFhqcr3QDoG', 'admin'),
(10, '$2a$10$wkTnpzso2jzwS0zmIMW1V.iLxKC/qLn3kirU2/qG/5AxwBRu0A4qG', 'xx'),
(11, '$2a$10$vPz67kP2Fls5rwbAeabYVueVc8mT29iRaIthIZvr1JCQ1hA66VK2C', 'xx'),
(12, '$2a$10$MYupGi388mWebzr99OfCheA2KoIrpqvywgSu2cvagIcbQsaT61y5G', 'cc'),
(13, '$2a$10$Amk1JcFlkYUsDK62/LdmWu6NE4wfVsGySLIDTA.16bqr78ZK9i46i', '12'),
(14, '$2a$10$qbkXo7Trs0pCtXTOC0N/Le8nwyhYvVt/mZxPEmeiVhY3oDB0FY8oC', 'vvv'),
(15, '$2a$10$TTPIHQtJNaPAoVp4CY98xOVHCKkEbE7kP.3TZRClSQhqiIsibfUza', 'vvv'),
(16, '$2a$10$T72u3G4FZeFycPflXmrwbO.JmFyuHQOCm0bJEQuEmePLRd0OjLyV6', 'g');

-- --------------------------------------------------------

--
-- Структура таблицы `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `roles` enum('ADMIN','USER') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `roles`) VALUES
(1, 'USER'),
(2, 'USER'),
(3, 'USER'),
(4, 'USER'),
(6, 'USER'),
(7, 'USER'),
(8, 'USER'),
(9, 'ADMIN'),
(10, 'USER'),
(11, 'USER'),
(12, 'USER'),
(13, 'USER'),
(14, 'USER'),
(15, 'USER'),
(16, 'USER');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `opoves`
--
ALTER TABLE `opoves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK85j6c275qblloumgrb95m3beu` (`users_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FK2o0jvgh89lemvvo17cbqvdxaa` (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `opoves`
--
ALTER TABLE `opoves`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `opoves`
--
ALTER TABLE `opoves`
  ADD CONSTRAINT `FK85j6c275qblloumgrb95m3beu` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
