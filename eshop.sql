-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Фев 20 2024 г., 13:31
-- Версия сервера: 8.0.36-0ubuntu0.22.04.1
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `eshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int UNSIGNED NOT NULL COMMENT 'Уникальный идентификатор',
  `username` varchar(50) NOT NULL COMMENT 'Имя администратора',
  `password` varchar(100) NOT NULL COMMENT 'Пароль администратора',
  `auth_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `name`, `content`, `keywords`, `description`, `image`) VALUES
(1, 'Первый бренд', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, '9b4c58507c7de74c5bef7bdbc9c6dced.jpg'),
(2, 'Второй бренд', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, '4fb8f8d310776747a99f61fae923092c.png'),
(3, 'Третий бренд', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, 'f91d8a4098b4b84bee30c04aa40cbb54.jpg'),
(4, 'Четвертый бренд', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, '5d906c885341f4ff39d466733f6ad386.png');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL COMMENT 'Уникальный идентификатор',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Родительская категория',
  `name` varchar(255) NOT NULL COMMENT 'Наименование категории',
  `content` varchar(255) DEFAULT NULL COMMENT 'Описание категории',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'Мета-тег keywords',
  `description` varchar(255) DEFAULT NULL COMMENT 'Мета-тег description',
  `image` varchar(255) DEFAULT NULL COMMENT 'Имя файла изображения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `content`, `keywords`, `description`, `image`) VALUES
(1, 0, 'Одежда', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '5bfe0f430aad6d549c4bfcaa32e117de.jpg'),
(2, 0, 'Обувь', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', '', '', 'd77ec409b09b2d5962991f94649c89cc.jpg'),
(3, 1, 'Мужская одежда', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(4, 1, 'Женская одежда', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(5, 1, 'Детская одежда', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'f1e2f84404651efef4bde3d004d0e9d8.jpg'),
(6, 2, 'Мужская обувь', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(7, 2, 'Женская обувь', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(8, 2, 'Детская обувь', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(9, 3, 'Мужская летняя одежда', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(10, 3, 'Мужская зимняя одежда', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', '', '', NULL),
(11, 4, 'Женская летняя одежда', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(12, 4, 'Женская зимняя одежда', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(13, 5, 'Детская летняя одежда', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(14, 5, 'Детская зимняя одежда', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(15, 6, 'Мужская летняя обувь', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(16, 6, 'Мужская зимняя обувь', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(17, 7, 'Женская летняя обувь', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(18, 7, 'Женская зимняя обувь', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(19, 8, 'Детская летняя обувь', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(20, 8, 'Детская зимняя обувь', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(21, 0, 'Сумки', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit', '7f0e5fa4bd55dee4101dc6db614bd95b.jpg'),
(22, 21, 'Сумки мужские', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(23, 21, 'Сумки женские', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int UNSIGNED NOT NULL COMMENT 'Идентификатор заказа',
  `user_id` int NOT NULL DEFAULT '0' COMMENT 'Идентификатор пользователя',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT 'Имя и фамилия покупателя',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT 'Почта покупателя',
  `phone` varchar(50) NOT NULL DEFAULT '' COMMENT 'Телефон покупателя',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Адрес доставки',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'Комментарий к заказу',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Сумма заказа',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Статус заказа',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата и время создания',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата и время обновления'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `comment`, `amount`, `status`, `created`, `updated`) VALUES
(1, 0, 'Николай Степанов', 'stepanov@mail.ru', '+7 (495) 123-45-67', 'Москва, улица Лавочкина, дом 7, кв.41', 'Комментарий к заказу', '2112.46', 0, '2019-08-07 13:26:00', '2019-09-02 06:59:26'),
(2, 0, 'Андрей Семенов', 'semenov@mail.ru', '+7 (926) 765-43-21', 'Москва, улица Строителей, дом 5, кв.17', 'Комментарий к заказу', '1056.23', 4, '2019-08-07 13:57:53', '2019-08-30 12:02:56'),
(3, 0, 'Евгений Токмаков', 'evgeniy@mail.ru', '+7 (926) 555-55-55', 'Москва, Онежская улица, дом 11, кв.23', 'Комментарий к заказу', '2280.46', 2, '2019-08-07 16:36:06', '2019-08-28 09:59:35'),
(4, 0, 'Евгений Токмаков', 'evgeniy@mail.ru', '+7 (926) 555-55-55', 'Москва, Онежская улица, дом 11, кв.23', '2-ой подъезд, 4-ый этаж', '1056.23', 3, '2019-08-17 10:18:04', '2019-08-28 09:59:48'),
(5, 0, 'Евгений Токмаков', 'evgeniy@mail.ru', '+7 (926) 555-55-55', 'Москва, Онежская улица, дом 11, кв.23', '2-ой подъезд, 4-ый этаж', '1056.23', 0, '2019-08-17 10:19:55', '2019-08-30 09:48:51'),
(6, 0, 'Евгений Токмаков', 'evgeniy@mail.ru', '+7 (926) 555-55-55', 'Москва, Онежская улица, дом 11, кв.23', '2-ой подъезд, 4-ый этаж', '1056.23', 4, '2019-08-17 10:24:00', '2019-08-28 10:10:12'),
(7, 0, 'Сергей Иванов', 'ivanov@mail.ru', '+7 (926) 987-65-43', 'Москва, Флотская улица, дом 12, кв.72', '2-ой подъезд, 4-ый этаж', '2168.46', 1, '2019-08-17 10:28:47', '2019-08-30 09:48:01'),
(8, 0, 'Евгений Токмаков', 'tokmakov@example.com', '+7 (123) 456-78-90', 'г Москва, ул Онежская, д 123, кв 456', 'Какой-то комментарий к заказу', '2500.00', 0, '2021-11-19 10:43:44', '2021-11-19 10:43:44');

-- --------------------------------------------------------

--
-- Структура таблицы `order_item`
--

CREATE TABLE `order_item` (
  `id` int UNSIGNED NOT NULL COMMENT 'Идентификатор элемента',
  `order_id` int UNSIGNED NOT NULL COMMENT 'Идентификатор заказа',
  `product_id` int UNSIGNED NOT NULL COMMENT 'Идентификатор товара',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Наименование товара',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Цена товара',
  `quantity` smallint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Количество в заказе',
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Стоимость = Цена * Кол-во'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `name`, `price`, `quantity`, `cost`) VALUES
(1, 2, 1, 'Мужская летняя одежда 1', '1000.23', 1, '1000.23'),
(2, 2, 2, 'Мужская летняя одежда 2', '56.00', 1, '56.00'),
(3, 3, 1, 'Мужская летняя одежда 1', '1000.23', 2, '2000.46'),
(4, 3, 2, 'Мужская летняя одежда 2', '56.00', 5, '280.00'),
(5, 4, 1, 'Мужская летняя одежда 1', '1000.23', 1, '1000.23'),
(6, 4, 2, 'Мужская летняя одежда 2', '56.00', 1, '56.00'),
(7, 5, 1, 'Мужская летняя одежда 1', '1000.23', 1, '1000.23'),
(8, 5, 2, 'Мужская летняя одежда 2', '56.00', 1, '56.00'),
(9, 6, 1, 'Мужская летняя одежда 1', '1000.23', 1, '1000.23'),
(10, 6, 2, 'Мужская летняя одежда 2', '56.00', 1, '56.00'),
(11, 7, 1, 'Мужская летняя одежда 1', '1000.23', 2, '2000.46'),
(12, 7, 2, 'Мужская летняя одежда 2', '56.00', 3, '168.00'),
(13, 8, 10, 'Мужская летняя футболка 10', '450.00', 2, '900.00'),
(14, 8, 11, 'Мужская летняя футболка 11', '800.00', 2, '1600.00');

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int UNSIGNED NOT NULL COMMENT 'Уникальный идентификатор',
  `parent_id` int UNSIGNED NOT NULL COMMENT 'Родительская страница',
  `name` varchar(100) NOT NULL COMMENT 'Заголовок страницы',
  `slug` varchar(100) NOT NULL COMMENT 'Для создания ссылки',
  `content` text COMMENT 'Содержимое страницы',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'Мета-тег keywords',
  `description` varchar(255) DEFAULT NULL COMMENT 'Мета-тег description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `parent_id`, `name`, `slug`, `content`, `keywords`, `description`) VALUES
(1, 0, 'Оплата', 'payment', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(2, 0, 'Доставка', 'delivery', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n', '', ''),
(3, 0, 'Гарантия', 'guarantee', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n', '', ''),
(4, 3, 'Первая дочерняя страница (гарантия)', 'guarantee-first-child', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n', '', ''),
(5, 2, 'Первая дочерняя страница (доставка)', 'delivery-first-child', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n', '', ''),
(6, 1, 'Первая дочерняя страница (оплата)', 'payment-first-child', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n', '', ''),
(7, 1, 'Вторая дочерняя страница (оплата)', 'payment-second-child', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n', '', ''),
(8, 2, 'Вторая дочерняя страница (доставка)', 'delivery-second-child', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n', '', ''),
(9, 3, 'Вторая дочерняя страница (гарантия)', 'guarantee-second-child', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n', '', ''),
(10, 0, 'Контакты', 'contact', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n', '', ''),
(11, 10, 'Первая дочерняя страница (контакты)', 'contact-first-child', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n', '', ''),
(12, 10, 'Вторая дочерняя страница (контакты)', 'contact-second-child', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int UNSIGNED NOT NULL COMMENT 'Уникальный идентификатор',
  `category_id` int UNSIGNED NOT NULL COMMENT 'Родительская категория',
  `brand_id` int UNSIGNED NOT NULL COMMENT 'Идентификатор бренда',
  `name` varchar(255) NOT NULL COMMENT 'Наименование товара',
  `content` text COMMENT 'Описание товара',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Цена товара',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'Мета-тег keywords',
  `description` varchar(255) DEFAULT NULL COMMENT 'Мета-тег description',
  `image` varchar(255) DEFAULT NULL COMMENT 'Имя файла изображения',
  `hit` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Лидер продаж?',
  `new` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Новый товар?',
  `sale` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Распродажа?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `brand_id`, `name`, `content`, `price`, `keywords`, `description`, `image`, `hit`, `new`, `sale`) VALUES
(1, 9, 1, 'Мужская летняя футболка 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '1000.00', '', '', '3f04db334e71c881550fc0533fe66d6b.jpg', 1, 1, 0),
(2, 9, 2, 'Мужская летняя футболка 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '700.00', '', '', '466c903a108212263a8905d249724e4e.jpg', 1, 1, 1),
(3, 9, 3, 'Мужская летняя футболка 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '620.00', '', '', '4c48f78151a03036ad383c5e5bae0caf.jpg', 0, 0, 0),
(4, 9, 4, 'Мужская летняя футболка 4', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '800.00', '', '', 'fd41b815a1ce0d39b3771cc97f0da247.jpg', 0, 0, 0),
(5, 9, 3, 'Мужская летняя футболка 5', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '900.00', '', '', '772f26b057f3d2b2665ee92f649f0bc0.jpg', 1, 0, 0),
(6, 9, 2, 'Мужская летняя футболка 6', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '500.00', '', '', 'c40546d44d2b5b796626d540be2fa25f.jpg', 0, 0, 1),
(7, 9, 3, 'Мужская летняя футболка 7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '750.00', '', '', '89f47e9897900b1e27222b3d9920701d.jpg', 1, 0, 0),
(8, 9, 3, 'Мужская летняя футболка 8', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '950.00', '', '', '032c6a246bb60f40472b2b9559509e60.jpg', 0, 1, 0),
(9, 9, 4, 'Мужская летняя футболка 9', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '800.00', '', '', '6bab7f0f412dd30a2b1716ac106dc3b3.jpg', 0, 1, 1),
(10, 9, 4, 'Мужская летняя футболка 10', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '450.00', '', '', 'd1b8c85bdc75c9db76cd0fff8b0c6f0b.jpg', 0, 0, 1),
(11, 9, 4, 'Мужская летняя футболка 11', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '800.00', '', '', '28526743401f75ee8e46c3435a1aee31.jpg', 0, 1, 0),
(12, 9, 4, 'Мужская летняя футболка 12', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n', '550.00', '', '', '693bddec815f114496d940c2da3ab6be.jpg', 0, 1, 1),
(17, 16, 1, 'Мужские зимние ботинки', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '5000.00', '', '', 'e6d0a1d2c519a8f7a17827cfe856e797.jpg', 1, 1, 1),
(18, 16, 2, 'Мужские зимние ботинки', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '6000.00', '', '', 'e41c3e44b694813051dbd50dee24c1e6.jpg', 0, 1, 0),
(19, 16, 3, 'Мужские зимние ботинки', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '3000.00', '', '', 'ff3181e2be402c08882679962378d1fc.jpg', 0, 0, 1),
(20, 16, 4, 'Мужские зимние ботинки', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '7000.00', '', '', '803fcd56b8ebdb782b4b5e5166704008.jpg', 0, 0, 0),
(21, 16, 1, 'Мужские зимние ботинки', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '6500.00', '', '', '76355752bed9c0bfd2e1619a87efb5e3.jpg', 0, 1, 0),
(22, 16, 1, 'Мужские зимние ботинки', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '3400.00', '', '', '028f2a2a3598f48e3bd913b0787ee8d1.jpg', 0, 0, 1),
(23, 16, 3, 'Мужские зимние ботинки', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '6700.00', '', '', '43e90240b4a1eff4bdd13c5a0f9ff3ee.jpg', 0, 0, 0),
(24, 15, 2, 'Мужские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '4000.00', '', '', '49a09060929fbd34ae17c773d2dbf11e.jpg', 0, 1, 0),
(25, 15, 3, 'Мужские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '3500.00', '', '', '7ba00d340bef5ff0ecea9829cea74c0c.jpg', 0, 0, 0),
(26, 15, 4, 'Мужские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '2500.00', '', '', 'bec72abb687a82ecea9cb68fa598ee2e.jpg', 0, 0, 1),
(27, 15, 2, 'Мужские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '3700.00', '', '', 'cd91f899d4f99aa7228044c1807cf914.jpg', 0, 0, 0),
(28, 15, 1, 'Мужские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '3400.00', '', '', 'ada665cee81bf06783be740a6bdfc8c9.jpg', 0, 1, 0),
(29, 15, 3, 'Мужские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '2900.00', '', '', '240b3ad29f051532fb9aab21a8676965.jpg', 0, 0, 0),
(30, 15, 2, 'Мужские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '3900.00', '', '', '5ae2bc8b385a1d1e7810de45a14c65ef.jpg', 1, 0, 0),
(31, 17, 1, 'Женские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '4500.00', '', '', '49384976a5e49049c2ad777f5da20e3d.jpg', 0, 1, 0),
(32, 17, 2, 'Женские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '4200.00', '', '', '3313b653a26e166a0d8780e443a740d0.jpg', 1, 0, 0),
(33, 17, 3, 'Женские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '3900.00', '', '', '7c7e64210742e2450d765decf98da43b.jpg', 0, 1, 0),
(34, 17, 3, 'Женские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '2900.00', '', '', 'db0a87ba776242c077f6c1ed5e085436.jpg', 0, 0, 1),
(35, 17, 3, 'Женские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '3300.00', '', '', '4ae10d47bba7371e2d01910ce806ceca.jpg', 0, 0, 0),
(36, 17, 1, 'Женские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '4100.00', '', '', 'daac273c211cf7b2e73b3255c1d2c1b8.jpg', 1, 0, 0),
(37, 17, 4, 'Женские летние туфли', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '3600.00', '', '', '443e344f68c97c011f349414fe093049.jpg', 0, 0, 0),
(38, 18, 1, 'Женские зимние сапоги', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '5700.00', '', '', 'b4c36a09cc3f9f8e82fa055c595e740c.jpg', 0, 1, 0),
(39, 18, 2, 'Женские зимние сапоги', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '5300.00', '', '', 'c20c5b3831c2c843de9fd9e62a488630.jpg', 0, 0, 0),
(40, 18, 3, 'Женские зимние сапоги', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '5500.00', '', '', 'fa3702fee2cef64ff70b8a42cffc7e8f.jpg', 1, 0, 0),
(41, 18, 4, 'Женские зимние сапоги', '', '3100.00', '', '', 'afabcc9cd55319fd81cdbb27fb8c6636.jpg', 1, 0, 1),
(42, 18, 2, 'Женские зимние сапоги', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '5700.00', '', '', '77b0f7824923516a95875c6bb3e823a6.jpg', 0, 0, 0),
(43, 18, 2, 'Женские зимние сапоги', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '5400.00', '', '', '0d398840db81eb4e026fb4b00f9b58be.jpg', 0, 0, 0),
(44, 18, 3, 'Женские зимние сапоги', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n', '5900.00', '', '', '164b92fa0df4ea933d0f680fb531824f.jpg', 0, 1, 0),
(45, 10, 1, 'Мужская зимняя куртка 1', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '4000.00', '', '', 'f02b12234843d1dd3ac30db4623bdee6.jpg', 1, 0, 0),
(46, 10, 2, 'Мужская зимняя куртска 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '4500.00', '', '', 'aee885a4fb1c62ad3e22dd1ea2639a48.jpg', 0, 1, 0),
(47, 10, 3, 'Мужская зимняя куртка 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '5000.00', '', '', '478421bcec3e19324b28fb6b8cf80bc9.jpg', 0, 0, 0),
(48, 10, 4, 'Мужская зимняя куртка 4', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '5500.00', '', '', '6ad65a719c753d9e882a5de31fcf6314.jpg', 0, 0, 0),
(49, 10, 1, 'Мужская зимняя куртка 5', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '3000.00', '', '', 'a85f39340ce6979949dcc2776bb8ef85.jpg', 0, 0, 1),
(50, 10, 2, 'Мужская зимняя куртка 6', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '4900.00', '', '', '2667abe20459d9b75b38e2bf71c7f1e9.jpg', 1, 0, 0),
(51, 10, 3, 'Мужская зимняя куртка 7', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '5200.00', '', '', '0548dc57e383996005533c786766f8e6.jpg', 0, 0, 0),
(52, 12, 1, 'Женская зимняя куртка', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '4500.00', '', '', 'e557cb728ccb6f3bc27458a35f41354e.jpg', 1, 0, 0),
(53, 12, 2, 'Женская зимняя куртка 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '4900.00', '', '', '77d75afb0064559381b616a7cc502f8e.jpg', 0, 0, 0),
(54, 12, 3, 'Женская зимняя куртка 3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '5100.00', '', '', '0cd3678dbca73be717010b4210d86ac2.jpg', 0, 1, 0),
(55, 12, 4, 'Женская зимняя куртка 4', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '3000.00', '', '', '691bc767fdfcab3e4d00f9a950a8f868.jpg', 0, 0, 1),
(56, 12, 1, 'Женская зимняя куртка 5', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate ipsam odit placeat quam. Ab beatae deleniti distinctio dolorem fuga inventore laborum rerum voluptate. Minima neque numquam reprehenderit similique unde.</p>\r\n', '5400.00', '', '', 'c90b00b430a68198a81dd59d957cc0de.jpg', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL COMMENT 'Идентификатор пользователя',
  `email` varchar(50) NOT NULL COMMENT 'Адрес почты пользователя',
  `password` varchar(100) NOT NULL COMMENT 'Пароль пользователя'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'testeshop@mail.ru', 'test123456789'),
(2, 'test.eshop.inet@example.com', 'test123456789');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Уникальный идентификатор';

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Уникальный идентификатор', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор заказа', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор элемента', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Уникальный идентификатор', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Уникальный идентификатор', AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
