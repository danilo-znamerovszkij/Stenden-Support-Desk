-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 26 2018 г., 03:35
-- Версия сервера: 10.1.26-MariaDB
-- Версия PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ssd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Wish'),
(2, 'Query'),
(3, 'Crash'),
(4, 'Functional problem'),
(5, 'Technical problem');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`) VALUES
(1, 'Stenden'),
(2, 'HMC'),
(3, 'ABC-Hek'),
(4, 'Van krootwijk'),
(5, 'Childcare  Foundation Emmen'),
(6, 'SC Angelso'),
(7, '0900-discussie platform en forum met 37 spreker in 2 dagen'),
(8, 'Duif '),
(9, 'Eekhout schilderwerken'),
(10, 'Klussenbus jansen en jansen'),
(11, 'captain spoor'),
(12, 'DS and PD'),
(13, 'Corp stoeptegels'),
(14, 'EFG'),
(15, 'Schaefer Inc'),
(16, 'Hills and Sons'),
(17, 'Green-Marquardt'),
(18, 'Witting-Price'),
(19, 'Gulgowski Ltd'),
(20, 'Rippin, Hauck and Lind'),
(21, 'Kozey Inc'),
(22, 'Farrell, McCullough and Monahan'),
(23, 'Gleason and Sons'),
(24, 'Wilderman-Auer'),
(25, 'Parisian Ltd'),
(26, 'Morar and Sons'),
(27, 'Champlin and Sons'),
(28, 'Will-Fay'),
(29, 'Harris Inc'),
(30, 'Durgan-Satterfield'),
(31, 'Cole LLC'),
(32, 'Mertz PLC'),
(33, 'Murazik-Pouros'),
(34, 'Streich, Friesen and Kessler'),
(35, 'Schimmel PLC'),
(36, 'Hahn and Sons'),
(37, 'Lueilwitz LLC'),
(38, 'Heaney, Mueller and Schimmel'),
(39, 'Runolfsdottir, Hickle and McClure'),
(40, 'Kris Group'),
(41, 'Ortiz-Fritsch'),
(42, 'Bailey Group'),
(43, 'Waelchi-Nicolas'),
(44, 'Smitham Inc'),
(45, 'Feil-Barton'),
(46, 'Stiedemann Ltd'),
(47, 'Stracke-Mitchell'),
(48, 'Bayer Group'),
(49, 'Schulist, Reilly and Russel'),
(50, 'Funk PLC');

-- --------------------------------------------------------

--
-- Структура таблицы `incident`
--

CREATE TABLE `incident` (
  `incident_id` int(11) NOT NULL,
  `client_id` int(5) DEFAULT NULL,
  `operator_id` int(5) DEFAULT NULL,
  `status_id` int(11) DEFAULT '1',
  `category_id` int(11) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `solution` varchar(4000) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `incident`
--

INSERT INTO `incident` (`incident_id`, `client_id`, `operator_id`, `status_id`, `category_id`, `description`, `solution`, `start_date`, `end_date`) VALUES
(1, 10, 1, 4, 5, 'For some reason my computer screen stays black no matter how many times I press the power button', 'Plug in the computer to the closest outlet', '1988-09-20 18:27:56', NULL),
(2, 29, 2, 3, 5, 'ALL OF MY TEXT CONSTANTLY APPEARS IN ALL CAPITAL LETTERS, HELP ME!!!', 'Turn off the caps lock', '1976-09-12 00:31:45', NULL),
(3, 29, 2, 2, 5, 'The computers in the company don\'t turn on anymore after pluging in the last computer. How do we solve it?', 'Plug them in on different outlets.', '2004-05-01 01:37:29', NULL),
(4, 23, 1, 3, 4, 'The letter after A in the alpha*et isn\'t working anymore on my key-*oard anymore. Can you help me?', '', '2014-06-15 14:05:02', NULL),
(5, 20, 1, 4, 4, 'There is no display after I log in?', 'Make sure you monitor is connected to a power source. After refreshing the page. If nothing changes log out of the system and log back in. If the problem persists reinstall the system\r\n', '2005-02-10 21:10:51', NULL),
(6, 45, 1, 5, 4, 'There is no display after I log in?', 'Make sure you monitor is connected to a power source. After refresh the page. If nothing changes log out of the system and log back in. If the problem persists reinstall the system\r\n', '2015-08-15 18:57:21', NULL),
(7, 18, 2, 2, 3, 'What do I do if my backup is lost?\r\n', 'Send us a ticket and we will re upload your backup into the system', '2016-04-07 12:22:56', NULL),
(8, 48, 1, 4, 5, 'What do I do when I can’t see my database?', 'Log out of the system and then log back in. If the problem persists please send a ticket to us', '2004-08-27 07:28:22', NULL),
(9, 48, NULL, 1, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '1980-09-13 09:50:23', NULL),
(10, 38, 1, 2, 1, 'What if my details are incorrect\r\n', 'Send us a ticket within the correct information and we will update your details\r\n', '2006-08-09 06:43:09', NULL),
(11, 18, 2, 3, 1, 'What if my details are incorrect\r\n', 'Send us a ticket within the correct information and we will update your details\r\n', '2009-11-23 03:08:48', NULL),
(12, 36, 1, 4, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '1997-02-02 12:15:07', NULL),
(13, 32, 1, 3, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '2007-10-19 13:33:42', NULL),
(14, 3, 1, 6, 5, 'What do I do when I can’t see my database?', 'Log out of the system and then log back in. If the problem persists please send a ticket to us', '1978-07-13 17:13:35', NULL),
(15, 13, 2, 2, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '2012-11-12 05:54:00', NULL),
(16, 38, 1, 6, 1, 'What if my details are incorrect\r\n', 'Send us a ticket within the correct information and we will update your details\r\n', '1977-02-11 00:41:47', NULL),
(17, 44, 2, 3, 4, 'There is no display after I log in?', 'Make sure you monitor is connected to a power source. After refresh the page. If nothing changes log out of the system and log back in. If the problem persists reinstall the system', '1980-02-03 01:55:41', NULL),
(18, 16, 1, 2, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '1993-03-14 14:11:33', NULL),
(19, 36, 2, 4, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '1972-03-09 04:39:15', NULL),
(20, 33, NULL, 1, 5, 'Repellat sed sed voluptas aliquam sed omnis architecto voluptates. Dolor totam ullam reprehenderit sit. Voluptatem tenetur magnam dolorem corrupti id laudantium. Voluptatem explicabo omnis et.', NULL, '1971-11-10 00:17:36', NULL),
(21, 42, NULL, 1, 5, 'Ea et nostrum corrupti qui unde. Est quis eos quod cum.', NULL, '1975-04-19 08:00:21', NULL),
(22, 35, 51, 2, 5, 'Quia expedita suscipit odio ut culpa. Tempore nobis doloribus voluptate eius voluptatibus. A et qui a a assumenda.', 'gbgfb', '2017-03-08 09:38:44', NULL),
(23, 28, NULL, 1, 5, 'Ipsa repellendus quia aliquid iste ex itaque. Id ut enim labore. Impedit quia nostrum non laboriosam quaerat laborum facilis provident. Sit sunt sit adipisci voluptatem dolorem ullam sed.', NULL, '1994-03-08 17:47:29', NULL),
(24, 15, NULL, 1, 5, 'Magni voluptatibus illum at est. Mollitia ut quasi ratione.', NULL, '2006-07-09 18:36:45', NULL),
(26, 32, NULL, 1, 5, 'Ducimus sit repellat earum aut qui sunt. Esse temporibus deserunt nemo iusto. Quia voluptatem vitae aut sint quia eos qui eum.', NULL, '1974-06-20 17:02:20', NULL),
(27, 29, NULL, 1, 5, 'Et sint ea maiores quis impedit. Eum veniam nulla beatae voluptas expedita cupiditate officia in. Possimus ipsa totam quisquam doloribus qui dicta architecto.', NULL, '1995-05-13 02:59:55', NULL),
(28, 13, NULL, 1, 5, 'Quam aliquid placeat hic culpa aut. Et sapiente sed quis. Eum occaecati sit nostrum.', NULL, '1994-10-02 18:32:33', NULL),
(29, 39, NULL, 1, 5, 'Sit occaecati repudiandae fugiat iure repellendus. Dolor vitae voluptatem eos quia iure praesentium libero. Cupiditate dolorem saepe hic doloribus et vel est vel.', NULL, '1998-11-14 14:30:50', NULL),
(30, 11, NULL, 1, 5, 'Eligendi soluta quod modi ut id animi. Et nulla soluta temporibus quis harum. Similique veniam voluptatum laboriosam. Dolore ea nemo consequatur.', NULL, '2013-03-09 13:21:05', NULL),
(31, 40, NULL, 1, 5, 'Adipisci rerum numquam iure illo ut cumque. In expedita eaque molestiae dolor atque ratione. Voluptatem quia et et cumque.', NULL, '1991-09-01 12:42:43', NULL),
(80, 33, 2, 3, 4, 'Repellat sed sed voluptas aliquam sed omnis architecto voluptates. Dolor totam ullam reprehenderit sit. Voluptatem tenetur magnam dolorem corrupti id laudantium. Voluptatem explicabo omnis et.', 'Asperiores et temporibus perferendis incidunt fugiat. Cupiditate id saepe quidem facilis necessitatibus enim a.', '1971-11-09 23:17:36', NULL),
(101, 3, 1, NULL, NULL, 'it crashed', 'help', '2018-01-24 13:05:27', NULL),
(109, 37, 1, 5, 2, NULL, 'reboot again', '2018-01-25 23:48:53', NULL),
(110, 37, 1, 5, 1, 'cannot log in', 'try changing password', '2018-01-26 00:49:32', NULL),
(138, 42, 2, 5, 3, 'What do I do if my backup is lost?\r\n', 'Send us a ticket and we will re upload your backup into the system', '1975-04-19 06:00:21', NULL),
(139, 35, 1, 6, 3, 'What do I do if my backup is lost?\r\n', 'Send us a ticket and we will re upload your backup into the system', '2017-03-08 08:38:44', NULL),
(140, 28, 2, 6, 3, 'What do I do if my backup is lost?\r\n', 'Send us a ticket and we will re upload your backup into the system', '1994-03-08 16:47:29', NULL),
(141, 15, 1, 3, 1, 'What if my details are incorrect\r\n', 'Send us a ticket within the correct information and we will update your details\r\n', '2006-07-09 16:36:45', NULL),
(142, 50, 2, 6, 3, 'What do I do if my backup is lost?\r\n\r\n', 'Send us a ticket and we will re upload your backup into the system', '2013-11-05 03:06:45', NULL),
(163, 37, NULL, 1, 1, 'wanna sleep', NULL, '2018-01-26 02:34:32', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `license`
--

CREATE TABLE `license` (
  `id` int(5) NOT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `contact_id` int(11) NOT NULL,
  `product_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `license`
--

INSERT INTO `license` (`id`, `purchase_date`, `contact_id`, `product_name`) VALUES
(1, '2018-01-12 19:47:48', 2, 'Microsoft Widnows');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `incident_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sent_dateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`message_id`, `message`, `incident_id`, `user_id`, `sent_dateTime`) VALUES
(28, 'it didn\'t work!!!', 109, 37, '2018-01-26 01:46:16'),
(29, 'already tried', 110, 37, '2018-01-26 01:50:35'),
(30, 'still not able', 110, 37, '2018-01-26 01:57:18'),
(31, '', 110, 1, '2018-01-26 02:07:44'),
(32, 'check your email, we send you the link', 110, 1, '2018-01-26 02:13:08');

-- --------------------------------------------------------

--
-- Структура таблицы `position`
--

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL,
  `position_Role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `position`
--

INSERT INTO `position` (`position_id`, `position_Role`) VALUES
(1, 'Client'),
(2, 'Operator'),
(3, 'Team Leader'),
(4, 'Security Operator'),
(5, 'Super Admin'),
(6, 'No license');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Not assigned'),
(2, 'Pending'),
(3, 'Forwarded to Engineer'),
(4, 'Forwarded to Account Manager'),
(5, 'Resolved'),
(6, 'Closed');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `isEmployee` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(60) NOT NULL,
  `has_maintenance_license` tinyint(1) NOT NULL DEFAULT '0',
  `position_id` int(5) NOT NULL,
  `contact_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `isEmployee`, `name`, `phone`, `email`, `username`, `password`, `has_maintenance_license`, `position_id`, `contact_id`) VALUES
(1, 1, 'Rene Laan', '051231231231', 'rene.laan@stenden.com', 'rene', 'laan', 0, 3, 1),
(2, 1, 'Bob Saget', '2134kj231', 'asdkjh@kjhsdaf.com', 'employee', 'employee', 1, 2, 1),
(3, 0, 'Henri Kuvalis', '(794) 664-9281 ', 'raynor.luna@hotmail.com', 'ohansen', 'password', 1, 1, 18),
(4, 0, 'Monica Stokes IV', '1-254-737-4199 ', 'elliot.funk@watsica.net', 'tito.keeling', 'password', 1, 1, 18),
(5, 0, 'Delphia Maggio', '(421) 810-5908 ', 'zbuckridge@hotmail.com', 'shania18', 'password', 1, 1, 37),
(6, 0, 'Dr. Jessyca Hand II', '482.964.7657 x9', 'guido43@yahoo.com', 'beahan.ned', 'password', 0, 6, 19),
(7, 0, 'Mr. Ola Connelly Sr.', '(342) 490-3586 ', 'odavis@weber.com', 'lzemlak', 'password', 0, 6, 30),
(8, 0, 'Dianna Walter', '236.680.2775', 'tremblay.felicia@yahoo.com', 'pedro52', 'password', 0, 6, 34),
(9, 0, 'Alda Moen', '+1-506-761-9416', 'clarissa64@sanford.com', 'hullrich', 'password', 0, 6, 34),
(10, 0, 'Zander Bartell', '(616) 994-9864 ', 'rschroeder@yahoo.com', 'genesis69', 'password', 0, 6, 8),
(11, 0, 'Una Funk', '230-891-3713 x3', 'gerard.mcclure@yahoo.com', 'armand.senger', 'password', 0, 6, 39),
(12, 0, 'Prof. Athena Wehner IV', '+1-306-344-6599', 'ywalsh@hotmail.com', 'douglas.oconner', 'password', 0, 6, 26),
(13, 0, 'Mr. Graham Turner IV', '1-585-644-3050', 'hfritsch@bruen.com', 'beahan.providenci', 'password', 0, 6, 45),
(14, 0, 'Miss Lucy Nolan DDS', '315.285.0193', 'minerva15@kub.com', 'karl62', 'password', 0, 6, 6),
(15, 0, 'Romaine Fritsch', '+1.517.559.3958', 'ostroman@hotmail.com', 'nya.mcdermott', 'password', 0, 6, 32),
(16, 0, 'Morris Pollich', '931-752-4104 x7', 'keira19@yahoo.com', 'tmills', 'password', 0, 6, 10),
(17, 0, 'Alden Oberbrunner', '+1-241-955-8974', 'daugherty.humberto@hotmail.com', 'josh.trantow', 'password', 0, 6, 23),
(18, 0, 'Genesis Wunsch', '1-561-863-8452', 'aoconnell@hotmail.com', 'mayert.rosetta', 'password', 0, 6, 29),
(19, 0, 'Sydney Hansen', '(694) 557-0817', 'ibrahim01@hamill.biz', 'brandyn.bosco', 'password', 0, 6, 24),
(20, 0, 'Rico Schmeler', '620-442-9700 x7', 'itzel16@yahoo.com', 'herman.windler', 'password', 0, 6, 5),
(21, 0, 'Miss Colleen Shields PhD', '+1 (329) 936-67', 'lulu97@hotmail.com', 'murazik.josefina', 'password', 0, 6, 49),
(22, 0, 'Dave Mayert', '+1-431-254-7530', 'ckassulke@yahoo.com', 'schulist.velva', 'password', 0, 6, 16),
(23, 0, 'Prof. Tressa Donnelly', '832-823-4692', 'zdickinson@gmail.com', 'bhuel', 'password', 1, 1, 27),
(24, 0, 'Missouri Robel', '(465) 376-5048', 'adams.mazie@stamm.net', 'halvorson.carolyn', 'password', 1, 1, 4),
(25, 0, 'Effie Toy II', '959.353.1773 x6', 'egrimes@gmail.com', 'ywyman', 'password', 0, 6, 15),
(26, 0, 'Pasquale Willms', '1-471-620-3578', 'judah.brekke@huels.org', 'yasmin14', 'password', 0, 6, 3),
(27, 0, 'Howell Marks', '297.582.2489', 'mohammad64@gaylord.biz', 'pouros.darwin', 'password', 1, 1, 11),
(28, 0, 'Braden Boehm', '204-876-0104', 'joaquin79@olson.com', 'hickle.maximo', 'password', 1, 1, 48),
(29, 0, 'Prof. Tina Huel IV', '(368) 986-9130 ', 'sbode@powlowski.com', 'carolanne49', 'password', 1, 1, 3),
(30, 0, 'Mrs. Viola Miller IV', '+1.753.483.3449', 'wyman.ally@stokes.biz', 'paul13', 'password', 0, 6, 4),
(31, 0, 'Royal Dooley', '1-581-789-2146', 'berniece.gaylord@ebert.biz', 'berry16', 'password', 0, 6, 10),
(32, 0, 'Cordie Bogan', '767-241-0309 x1', 'evert.johnson@hamill.com', 'rvandervort', 'password', 0, 6, 5),
(33, 0, 'Dorthy Hegmann', '402.605.5707', 'nfeeney@mann.com', 'jcollins', 'password', 0, 6, 39),
(34, 0, 'Ms. Georgiana DuBuque III', '(794) 718-9574 ', 'elva26@romaguera.com', 'johnny62', 'password', 0, 6, 32),
(35, 0, 'Addison Brekke', '864-360-7596', 'ylangosh@hotmail.com', 'lbeer', 'password', 0, 6, 14),
(36, 0, 'Mrs. Janie West V', '1-654-531-9581 ', 'renner.litzy@yahoo.com', 'mavis98', 'password', 0, 6, 18),
(37, 0, 'Dr. Graciela Sanford', '1-549-683-4540 ', 'fae.gaylord@stamm.com', 'vswift', 'password', 1, 1, 30),
(38, 0, 'Rhea Little', '782-300-1090 x4', 'bernier.trever@gmail.com', 'deshawn.hermann', 'password', 0, 6, 50),
(39, 0, 'Rosario Swaniawski', '443-574-2190 x9', 'antonia51@gmail.com', 'umayer', 'password', 1, 1, 42),
(40, 0, 'Mrs. Era Batz DVM', '1-709-452-3565 ', 'swillms@pollich.biz', 'ogutmann', 'password', 0, 6, 24),
(41, 0, 'Eric Carter MD', '1-406-817-5282 ', 'gokeefe@kuhlman.info', 'wisozk.laurianne', 'password', 0, 6, 9),
(42, 0, 'Eladio Kuhn', '(860) 960-2064 ', 'carmine59@lemke.com', 'uhoppe', 'password', 0, 6, 4),
(43, 0, 'Brayan Jast Sr.', '(561) 849-0441', 'bins.carol@boehm.com', 'yking', 'password', 0, 6, 30),
(44, 0, 'Ms. Kaya Schmitt', '+18933719282', 'wunsch.briana@hotmail.com', 'albina43', 'password', 0, 6, 19),
(45, 0, 'Madisyn Mayer', '841.599.5874 x1', 'kemmer.sofia@olson.com', 'krystal.kuhic', 'password', 0, 6, 3),
(46, 0, 'Major Considine PhD', '1-219-839-8540 ', 'flossie65@bins.biz', 'emard.laisha', 'password', 1, 1, 39),
(47, 0, 'Maynard Zboncak', '+1-825-512-3188', 'karolann53@mitchell.com', 'brandyn.gleason', 'password', 0, 6, 29),
(48, 0, 'Juliet Pfeffer', '1-809-948-1936 ', 'taya46@daugherty.org', 'jacobi.carolyne', 'password', 1, 1, 43),
(49, 0, 'Jovany Bernier', '753-859-0035 x8', 'jkub@schuster.com', 'zreinger', 'password', 0, 6, 26),
(50, 0, 'Elroy McLaughlin', '(492) 555-9096 ', 'rmraz@windler.com', 'scot35', 'password', 1, 1, 40),
(51, 1, 'John', '+318925689', 'security@john.com', 'security', '1234', 0, 4, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Индексы таблицы `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `operator_id` (`operator_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `incident_fk` (`incident_id`),
  ADD KEY `user_fk` (`user_id`);

--
-- Индексы таблицы `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_fk` (`position_id`),
  ADD KEY `contact_fk` (`contact_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT для таблицы `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT для таблицы `license`
--
ALTER TABLE `license`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `client` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `incident_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `incident_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `operator` FOREIGN KEY (`operator_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `incident_fk` FOREIGN KEY (`incident_id`) REFERENCES `incident` (`incident_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `contact_fk` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`),
  ADD CONSTRAINT `position_fk` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
