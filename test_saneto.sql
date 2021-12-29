-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 29 2021 г., 16:48
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_saneto`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int NOT NULL,
  `author_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `author_name`) VALUES
(1, 'Author - 1'),
(2, 'Author - 2\r\n'),
(3, 'Bektur - 3'),
(4, 'Author - 4'),
(5, 'Author - 5\r\n'),
(6, 'Bektur - 6');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Собака 2'),
(2, 'Собака'),
(3, 'рыба 2'),
(4, 'Муха 2'),
(5, 'Муха'),
(6, 'Бык 2'),
(7, 'Кит ');

-- --------------------------------------------------------

--
-- Структура таблицы `singles`
--

CREATE TABLE `singles` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `data` datetime NOT NULL,
  `views` int NOT NULL,
  `comments` int NOT NULL,
  `category_id` int NOT NULL,
  `author_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `singles`
--

INSERT INTO `singles` (`id`, `title`, `text`, `img`, `data`, `views`, `comments`, `category_id`, `author_id`) VALUES
(1, 'Lorem, ipsum dolor. 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?', 'img/img-1.png', '2016-12-15 07:14:00', 4, 22, 7, 1),
(2, 'Lorem, ipsum dolor. 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?', 'img/img-2.jpg', '2011-10-25 02:33:00', 225, 11, 2, 4),
(3, 'Lorem, ipsum dolor. 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?', 'img/img-3.jpg', '2011-10-25 02:33:00', 446, 33, 3, 5),
(4, 'Lorem, ipsum dolor. 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?', 'img/img-2.jpg', '1999-09-09 00:00:00', 1034, 99, 6, 2),
(5, 'Lorem, ipsum dolor. 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?', 'img/img-3.jpg', '1999-09-09 00:00:00', 1016, 99, 5, 3),
(6, 'Lorem, ipsum dolor. 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat sapiente, expedita assumenda nisi voluptatum, dolorum ab blanditiis iusto a repudiandae laboriosam fugiat est praesentium perspiciatis sed voluptate. Ad culpa natus architecto necessitatibus dolores?', 'img/img-1.png', '2016-12-15 07:14:00', 3, 22, 4, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `singles`
--
ALTER TABLE `singles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `singles`
--
ALTER TABLE `singles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
