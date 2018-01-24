--- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 22, 2018 alle 17:28
-- Versione del server: 10.1.26-MariaDB
-- Versione PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssd`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `incident`
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
-- Dump dei dati per la tabella `incident`
--

INSERT INTO `incident` (`incident_id`, `client_id`, `operator_id`, `status_id`, `category_id`, `description`, `solution`, `start_date`, `end_date`) VALUES
(1, 10, 1, 4, 5, 'For some reason my computer screen stays black no matter how many times I press the power button', 'Plug in the computer to the closest outlet', '1988-09-20 20:27:56', '0000-00-00 00:00:00'),
(2, 29, 2, 3, 5, 'ALL OF MY TEXT CONSTANTLY APPEARS IN ALL CAPITAL LETTERS, HELP ME!!!', 'Turn off the caps lock', '1976-09-12 02:31:45', '0000-00-00 00:00:00'),
(3, 29, 2, 2, 5, 'The computers in the company don\'t turn on anymore after pluging in the last computer. How do we solve it?', 'Plug them in on different outlets.', '2004-05-01 03:37:29', '0000-00-00 00:00:00'),
(4, 23, 1, 3, 4, 'The letter after A in the alpha*et isn\'t working anymore on my key-*oard anymore. Can you help me?', '', '2014-06-15 16:05:02', '0000-00-00 00:00:00'),
(5, 20, 1, 4, 4, 'There is no display after I log in?', 'Make sure you monitor is connected to a power source. After refreshing the page. If nothing changes log out of the system and log back in. If the problem persists reinstall the system\r\n', '2005-02-10 22:10:51', '0000-00-00 00:00:00'),
(6, 45, 1, 5, 4, 'There is no display after I log in?', 'Make sure you monitor is connected to a power source. After refresh the page. If nothing changes log out of the system and log back in. If the problem persists reinstall the system\r\n', '2015-08-15 20:57:21', '0000-00-00 00:00:00'),
(7, 18, 2, 2, 3, 'What do I do if my backup is lost?\r\n', 'Send us a ticket and we will re upload your backup into the system', '2016-04-07 14:22:56', '0000-00-00 00:00:00'),
(8, 48, 1, 4, 5, 'What do I do when I can’t see my database?', 'Log out of the system and then log back in. If the problem persists please send a ticket to us', '2004-08-27 09:28:22', '0000-00-00 00:00:00'),
(9, 48, NULL, 1, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '1980-09-13 11:50:23', '0000-00-00 00:00:00'),
(10, 38, 1, 2, 1, 'What if my details are incorrect\r\n', 'Send us a ticket within the correct information and we will update your details\r\n', '2006-08-09 08:43:09', '0000-00-00 00:00:00'),
(11, 18, 2, 3, 1, 'What if my details are incorrect\r\n', 'Send us a ticket within the correct information and we will update your details\r\n', '2009-11-23 04:08:48', '0000-00-00 00:00:00'),
(12, 36, 1, 4, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '1997-02-02 13:15:07', '0000-00-00 00:00:00'),
(13, 32, 1, 3, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '2007-10-19 15:33:42', '0000-00-00 00:00:00'),
(14, 3, 1, 6, 5, 'What do I do when I can’t see my database?', 'Log out of the system and then log back in. If the problem persists please send a ticket to us', '1978-07-13 19:13:35', '0000-00-00 00:00:00'),
(15, 13, 2, 2, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '2012-11-12 06:54:00', '0000-00-00 00:00:00'),
(16, 38, 1, 6, 1, 'What if my details are incorrect\r\n', 'Send us a ticket within the correct information and we will update your details\r\n', '1977-02-11 01:41:47', '0000-00-00 00:00:00'),
(17, 44, 2, 3, 4, 'There is no display after I log in?', 'Make sure you monitor is connected to a power source. After refresh the page. If nothing changes log out of the system and log back in. If the problem persists reinstall the system', '1980-02-03 02:55:41', '0000-00-00 00:00:00'),
(18, 16, 1, 2, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '1993-03-14 15:11:33', '0000-00-00 00:00:00'),
(19, 36, 2, 4, 2, 'What do I do if my ticket does not submit?\r\n', 'Refresh the page, if the problem persists then log out and log back into the system', '1972-03-09 05:39:15', '0000-00-00 00:00:00'),
(20, 33, 2, 3, 4, 'Repellat sed sed voluptas aliquam sed omnis architecto voluptates. Dolor totam ullam reprehenderit sit. Voluptatem tenetur magnam dolorem corrupti id laudantium. Voluptatem explicabo omnis et.', 'Asperiores et temporibus perferendis incidunt fugiat. Cupiditate id saepe quidem facilis necessitatibus enim a.', '1971-11-10 00:17:36', '0000-00-00 00:00:00'),
(21, 42, 2, 5, 3, 'What do I do if my backup is lost?\r\n', 'Send us a ticket and we will re upload your backup into the system', '1975-04-19 08:00:21', '0000-00-00 00:00:00'),
(22, 35, 1, 6, 3, 'What do I do if my backup is lost?\r\n', 'Send us a ticket and we will re upload your backup into the system', '2017-03-08 09:38:44', '0000-00-00 00:00:00'),
(23, 28, 2, 6, 3, 'What do I do if my backup is lost?\r\n', 'Send us a ticket and we will re upload your backup into the system', '1994-03-08 17:47:29', '0000-00-00 00:00:00'),
(24, 15, 1, 3, 1, 'What if my details are incorrect\r\n', 'Send us a ticket within the correct information and we will update your details\r\n', '2006-07-09 18:36:45', '0000-00-00 00:00:00'),
(25, 50, 2, 6, 3, 'What do I do if my backup is lost?\r\n\r\n', 'Send us a ticket and we will re upload your backup into the system', '2013-11-05 04:06:45', '0000-00-00 00:00:00'),
(26, 32, 1, 4, 5, 'Ducimus sit repellat earum aut qui sunt. Esse temporibus deserunt nemo iusto. Quia voluptatem vitae aut sint quia eos qui eum.', 'At rerum unde labore commodi. Magnam quia dignissimos qui earum assumenda et dolores rerum. Sit eos et laudantium praesentium repellat quis et et. Similique et et autem sit quo repellat cupiditate.', '1974-06-20 17:02:20', '0000-00-00 00:00:00'),
(27, 29, 1, 5, 3, 'Et sint ea maiores quis impedit. Eum veniam nulla beatae voluptas expedita cupiditate officia in. Possimus ipsa totam quisquam doloribus qui dicta architecto.', 'Omnis facere sequi et eos ut. Vel repellendus veniam repudiandae quas est et. Asperiores impedit aperiam impedit occaecati et repudiandae.', '1995-05-13 02:59:55', '0000-00-00 00:00:00'),
(28, 13, 1, 3, 2, 'Quam aliquid placeat hic culpa aut. Et sapiente sed quis. Eum occaecati sit nostrum.', 'Deserunt exercitationem quis est. Velit maiores vitae similique dolorum. At dolores ea inventore eos. Exercitationem aut et nesciunt officiis.', '1994-10-02 18:32:33', '0000-00-00 00:00:00'),
(29, 39, 1, 3, 4, 'Sit occaecati repudiandae fugiat iure repellendus. Dolor vitae voluptatem eos quia iure praesentium libero. Cupiditate dolorem saepe hic doloribus et vel est vel.', 'Soluta molestiae expedita sit ut eos pariatur. Culpa rerum amet omnis magni et deleniti.', '1998-11-14 14:30:50', '0000-00-00 00:00:00'),
(30, 11, 2, 4, 5, 'Eligendi soluta quod modi ut id animi. Et nulla soluta temporibus quis harum. Similique veniam voluptatum laboriosam. Dolore ea nemo consequatur.', 'Molestiae in soluta velit maiores ullam. Et vel delectus est magni. Iste libero iusto qui.', '2013-03-09 13:21:05', '0000-00-00 00:00:00'),
(31, 40, 1, 4, 2, 'Adipisci rerum numquam iure illo ut cumque. In expedita eaque molestiae dolor atque ratione. Voluptatem quia et et cumque.', 'Eaque error tempore dolores quaerat eveniet sit error. Rerum suscipit accusamus rem non asperiores et. Voluptas pariatur et voluptas illum unde.', '1991-09-01 12:42:43', '0000-00-00 00:00:00'),
(32, 8, 1, 4, 4, 'Quas a veritatis voluptatem aut dolores blanditiis. Eaque tempora illum velit sapiente. Nesciunt autem architecto sunt error et aliquam. Delectus est ea eaque dolorum hic iure repudiandae.', 'Fugit ut sit illo iusto culpa ut. Qui libero accusamus numquam placeat asperiores. Eum quod voluptas maiores fugiat atque voluptates.', '2014-11-29 06:34:51', '0000-00-00 00:00:00'),
(33, 17, 1, 5, 3, 'Facilis eum veritatis soluta quibusdam. Impedit at culpa debitis. Est eaque fugit distinctio possimus.', 'Ullam voluptate sunt eligendi autem. Cumque consequatur exercitationem dolore. Distinctio sit perspiciatis fugiat delectus laborum sit. Non illo odio quia temporibus corporis.', '2003-02-27 01:20:01', '0000-00-00 00:00:00'),
(34, 47, 2, 5, 1, 'Voluptatem perspiciatis omnis minima quo nulla. Omnis dolor vitae omnis iste rerum nostrum. Natus hic facere tenetur quia doloribus est. Fugit rerum ut eveniet consequatur.', 'Odit distinctio laboriosam dolore rem ipsam. Voluptas eligendi ipsam aut harum cupiditate quisquam adipisci. Dolorem et inventore quia beatae illum.', '1975-10-30 17:32:39', '0000-00-00 00:00:00'),
(35, 32, 1, 2, 3, 'Cum quibusdam optio excepturi voluptate blanditiis nemo. Labore similique tempora non tempora in eaque enim. Omnis assumenda deserunt natus ad eveniet et doloribus. Aliquid sit quae sed.', 'Sed placeat voluptatem et. Et sed deserunt dignissimos aut et. Expedita id enim non fugiat necessitatibus nemo. Dicta dolorum qui voluptas similique non sed perspiciatis.', '1970-03-31 13:23:19', '0000-00-00 00:00:00'),
(36, 21, 2, 2, 5, 'Qui quia explicabo hic rem atque maxime. Neque tempora et molestiae. Rerum tempora neque quis error quaerat ducimus doloribus.', 'Nemo distinctio perspiciatis similique quas suscipit. Facere temporibus nobis rem tenetur est.', '1994-11-08 11:07:59', '0000-00-00 00:00:00'),
(37, 43, 2, 3, 1, 'Dolor quibusdam non et nobis. Dolores nobis et sapiente sint voluptatem in dignissimos officia. Quia autem sed et vero eius nemo magni autem.', 'Consequatur nam debitis sed nihil omnis blanditiis. Doloremque iste vel omnis sed enim commodi nihil. Placeat suscipit illum non quis voluptatibus.', '2008-03-29 18:37:16', '0000-00-00 00:00:00'),
(38, 43, NULL, 1, 1, 'Placeat fugit animi deleniti placeat. Error quibusdam sint dolorum neque hic. Quo et dolor repudiandae est architecto. Voluptas aut eaque et dolor commodi labore.', 'Fugiat error eum illo hic quia non voluptatem. Id consequatur provident tenetur eos quia.', '2001-09-15 05:17:34', '0000-00-00 00:00:00'),
(39, 47, 2, 2, 5, 'Omnis consequuntur est et exercitationem. Non eum dolorum voluptatem assumenda accusamus. Maiores voluptas iste qui officiis maiores. Officiis cum voluptatum quidem.', 'Ipsa adipisci fugiat sed nobis doloremque veritatis odit. Velit id nihil architecto et quia ut tenetur. Ullam quisquam et asperiores et id aut a. Laudantium est dolores aperiam odit at.', '1986-04-29 09:47:43', '0000-00-00 00:00:00'),
(40, 28, NULL, 1, 1, 'Saepe ea et nobis iure natus. Eos non ut sed ut dolores sit. Numquam pariatur et optio inventore qui occaecati alias velit.', 'Enim assumenda fugit fugit culpa natus. Facere ex id omnis voluptatem similique est et. Dolores veniam vel sint voluptatem aut ullam rerum.', '1977-09-17 12:40:06', '0000-00-00 00:00:00'),
(41, 29, 2, 3, 3, 'Atque animi corrupti quia eos quo ea. Sed rerum quia incidunt aut in dolores. Tempora iste qui corporis voluptas officiis cumque velit reprehenderit.', 'Ut nesciunt quaerat numquam ut deserunt vel. Quaerat debitis modi et non atque error iusto rerum. Quia vel voluptas porro temporibus nisi aut laborum.', '1983-06-09 10:03:12', '0000-00-00 00:00:00'),
(42, 13, 1, 5, 4, 'Ut culpa similique ut quam commodi omnis culpa. Quo vel voluptatum esse qui veritatis debitis perferendis. Facere qui vel ullam ducimus.', 'Aut inventore accusamus aut nihil. Sit et dolores ut et eum ab porro. Ut rerum ab quo reiciendis.', '2000-03-17 19:01:22', '0000-00-00 00:00:00'),
(43, 14, 1, 4, 3, 'Consequatur pariatur optio sunt repellat libero vel voluptatibus illo. Eos id praesentium beatae quod et. Ullam doloribus natus fugit magnam. Et et voluptas exercitationem corrupti.', 'Saepe accusamus modi et. Et quae voluptatibus nihil eos ipsa. Vero non dolor adipisci saepe in ut. Facilis et numquam corrupti voluptas id.', '1988-06-12 10:50:34', '0000-00-00 00:00:00'),
(44, 31, 1, 2, 3, 'Iste unde labore ut culpa. Temporibus quibusdam iste ut perferendis nihil.', 'Assumenda autem ab est minus qui quibusdam deleniti. Consectetur sunt est in maxime quia autem aperiam ut. Omnis praesentium cumque dicta nulla rerum.', '1985-10-21 20:59:31', '0000-00-00 00:00:00'),
(45, 48, 2, 5, 4, 'Facilis in maiores quibusdam laudantium qui dolorum maxime. Sed fugit sed ad illo. Porro veniam asperiores blanditiis voluptatem. Temporibus in fuga quia consectetur. Ab magni modi debitis qui.', 'Autem reprehenderit qui minima voluptatem repellendus commodi soluta. Reprehenderit dolor quasi facilis quasi.', '1974-11-01 06:22:03', '0000-00-00 00:00:00'),
(46, 45, 1, 2, 4, 'Vel eligendi unde porro repudiandae suscipit. Voluptas occaecati et blanditiis. Assumenda quia dolores quas iusto minus suscipit.', 'Illo natus itaque aut hic odio numquam eaque. Fugit quia dolores cupiditate voluptates nostrum illum sed. Praesentium velit quia sequi iste. Facilis ut odit ipsam facilis molestias.', '1984-02-09 08:49:17', '0000-00-00 00:00:00'),
(47, 14, 1, 5, 3, 'Distinctio id qui in neque modi et vero. Perspiciatis fugiat ad maiores enim odit culpa voluptatem. Ea fuga omnis id alias.', 'Atque excepturi nisi eligendi ut dolores velit aut. Soluta accusamus dolores recusandae. Sapiente voluptatem eos dolore exercitationem error. Est pariatur libero vel facilis.', '1987-03-10 20:49:56', '0000-00-00 00:00:00'),
(48, 38, 2, 5, 4, 'Qui non fugiat quia dolore. Pariatur fuga iusto quis mollitia. Iure nobis et voluptatum et iure vero dolorem. Aut doloremque at eos quia quo laudantium non.', 'Itaque aut hic velit aut odit. Et ullam tempora maxime praesentium in voluptate. Omnis cumque delectus eum aperiam rem incidunt eligendi.', '2005-01-18 12:49:38', '0000-00-00 00:00:00'),
(49, 25, 2, 4, 1, 'Magnam officia assumenda qui atque repudiandae perferendis excepturi. Rem tempore quia commodi.', 'Est labore et eligendi ex. Sint modi in nobis quo quae vitae iusto. Exercitationem est quo sit quia quia omnis in. Accusantium ad id et et vel occaecati explicabo.', '1971-07-05 09:39:09', '0000-00-00 00:00:00'),
(50, 13, NULL, 1, 2, 'Omnis doloremque consequuntur dolorum perspiciatis officia maxime laborum. Sequi deleniti ipsa provident consequuntur doloribus id sapiente. Molestias itaque doloribus aut facilis aspernatur.', 'Omnis expedita maxime eum. Deserunt quasi ipsam voluptatum fuga earum est. Vero magni illo cupiditate.', '2014-09-28 03:49:22', '0000-00-00 00:00:00'),
(51, 31, 2, 4, 1, 'Aut voluptatibus nemo voluptatum sapiente voluptatum cum nisi. Commodi iste maiores non assumenda consequatur maxime eum. Tempora quo expedita eius nemo.', 'Quasi in mollitia deleniti eveniet animi et quisquam sunt. Eius distinctio hic id. Vero qui id asperiores voluptates.', '1985-07-18 13:56:58', '0000-00-00 00:00:00'),
(52, 41, NULL, 1, 1, 'Et ad illo aspernatur rerum omnis. Ea perferendis placeat et deleniti architecto quod. Mollitia fugiat nesciunt repudiandae porro veniam.', 'Placeat eligendi omnis asperiores iure id. Quibusdam pariatur enim aut ducimus. Vel ut soluta voluptatem aut quaerat.', '1994-02-17 18:28:25', '0000-00-00 00:00:00'),
(53, 33, 1, 6, 2, 'Vel saepe ullam sint qui. Dolor eum sint voluptas nisi fugiat. Enim asperiores necessitatibus labore. Delectus officiis optio enim amet repudiandae facilis eveniet.', 'Commodi ea earum accusamus aut excepturi assumenda. Impedit mollitia molestiae ipsa dolores sapiente aliquam autem. Blanditiis pariatur non est mollitia corporis.', '1987-12-27 17:05:29', '0000-00-00 00:00:00'),
(54, 28, 1, 5, 5, 'Et omnis earum iste nam. Nesciunt libero odit vel dicta. Ut corporis tempora aut quia aut nobis corporis est. Reprehenderit consequatur itaque beatae enim.', 'Aut nesciunt aut laudantium voluptas non. In beatae libero voluptas autem a ipsa. Ex sit nulla optio sapiente. Est repellat officia quo et debitis suscipit. Debitis dolorum optio a voluptatibus qui.', '2014-03-28 19:51:57', '0000-00-00 00:00:00'),
(55, 11, 1, 6, 3, 'Eos harum qui asperiores laborum et similique qui. Porro qui rerum similique. Autem perferendis omnis labore magnam.', 'Vitae nemo reiciendis blanditiis numquam. Aut cum dolores temporibus ea ut in.', '2013-07-18 07:50:26', '0000-00-00 00:00:00'),
(56, 27, 1, 3, 1, 'Et autem consequatur neque voluptatem laudantium et. Sed veritatis perferendis consequuntur omnis sunt. Laboriosam quam veniam aspernatur sapiente quia eveniet aut. Est ipsum labore non.', 'Non quis soluta dolor cum. Quod vero quod explicabo non ducimus aut. Cupiditate consequatur iste qui nisi autem. Id eligendi perspiciatis eaque est qui quo est.', '2002-06-08 19:38:27', '0000-00-00 00:00:00'),
(57, 11, 2, 5, 5, 'Velit et dolore reprehenderit quod maiores dicta. Modi ut consequatur distinctio rerum repudiandae aliquid. Totam sequi occaecati perspiciatis iste. Eos sit voluptas libero.', 'Nihil dignissimos reiciendis earum similique. Aut eum vel neque non exercitationem. Laudantium maxime voluptas et fuga occaecati dolore.', '1980-03-10 15:29:52', '0000-00-00 00:00:00'),
(58, 20, 1, 6, 5, 'Libero et et tenetur et voluptate natus aut. Voluptates dolore fugiat quia quo cumque sunt. Quas amet et nihil nostrum doloremque.', 'Qui velit repudiandae dolores. Vitae autem doloribus sed sed. Corrupti repellat et et officia. Ad harum qui voluptatem sit dolores et debitis.', '1987-02-19 04:54:02', '0000-00-00 00:00:00'),
(59, 12, 2, 5, 3, 'Aut accusamus quisquam maiores. Minima facere voluptatem minima quia dolorem et fugiat. Accusantium error ex atque magni accusantium maiores perferendis id. Et quis occaecati quo et.', 'Quibusdam aliquam rem adipisci magni distinctio et dignissimos. Aut et consequatur quasi velit numquam id. Beatae necessitatibus qui aut enim quaerat.', '1995-01-17 13:44:59', '0000-00-00 00:00:00'),
(60, 16, 2, 6, 1, 'Et quo pariatur hic saepe natus. Cupiditate molestiae aliquid dicta necessitatibus delectus soluta dolores. Et voluptatibus quisquam quis rerum. Quisquam quo rerum quae assumenda enim.', 'Quas libero fugit quas ut delectus et repellat. Sit deserunt sed dignissimos illo incidunt. Blanditiis consequuntur nemo voluptas molestias laborum vel velit. Earum repellat doloremque dolorem sint.', '1978-07-17 04:06:32', '0000-00-00 00:00:00'),
(61, 45, 2, 2, 4, 'Dolores accusamus consequatur qui aperiam dolores et. Possimus sit omnis impedit labore molestiae quidem. Molestiae nostrum quia sint est ut mollitia. Possimus mollitia ratione labore sed.', 'Quia quod officiis et nihil exercitationem velit corrupti. Velit porro earum aliquid. Omnis aut quia nobis et voluptatem consectetur nemo. Non aspernatur ullam voluptatum expedita.', '1999-11-25 22:31:46', '0000-00-00 00:00:00'),
(62, 44, 1, 3, 2, 'Facilis omnis nemo id voluptate fugiat molestias. Quaerat voluptatum ea ab tempore atque ad. Sint vel nesciunt ut veniam error est. Molestiae iure ipsa blanditiis minus nulla a. Fuga qui nobis ipsum.', 'At deserunt nulla quis ea sit alias et. Est distinctio nesciunt possimus omnis rerum. Rerum quia assumenda iusto quas. Et quod corporis natus et officiis.', '1988-11-13 13:02:14', '0000-00-00 00:00:00'),
(63, 49, 1, 6, 2, 'Beatae et sed consequatur porro numquam cum minus. Amet neque non enim et quod quis eos. Qui aut cupiditate dicta rerum.', 'Veritatis qui ipsa omnis ea. Dolor et natus soluta ea assumenda. Harum ipsa id est quia omnis distinctio. Nemo quasi et fuga et. Aut earum doloremque dolorum quia quod iusto.', '1983-01-09 16:23:26', '0000-00-00 00:00:00'),
(64, 17, NULL, 1, 2, 'Doloremque ducimus delectus nemo pariatur est accusamus doloribus. Nam quae sit vel totam aut quo sint. Magnam officiis voluptas quam soluta. In architecto consequuntur ullam laudantium.', 'Minus soluta iste odit asperiores similique voluptatum fuga. Sint qui eligendi est odit facilis quaerat. Dolore iure et dolores ullam praesentium.', '2003-02-01 12:57:50', '0000-00-00 00:00:00'),
(65, 42, 1, 4, 4, 'Cum aut quia aut itaque. Libero similique aliquam nesciunt quae doloribus eos voluptatem. Amet aut corporis voluptatem dolor qui ducimus. Modi optio assumenda ipsum et omnis.', 'Et officiis eum excepturi tempore dolorem unde nisi. Labore blanditiis qui harum. Exercitationem ipsa dignissimos eum aliquid consectetur voluptatum aperiam. Molestiae vel ea inventore veniam.', '2002-08-04 11:02:32', '0000-00-00 00:00:00'),
(66, 5, 1, 5, 4, 'Dolor porro voluptatum possimus. Commodi possimus et in dolores enim. Omnis quasi distinctio ducimus ducimus nostrum quidem. Sequi fugit voluptate quae explicabo officia perspiciatis tempore.', 'Labore velit quod et vel aliquam quas aspernatur odit. Ut officiis est aut et. Doloremque qui totam qui aut. Nesciunt ad voluptas reprehenderit quia commodi velit aperiam cupiditate.', '1971-04-05 18:00:11', '0000-00-00 00:00:00'),
(67, 7, 2, 6, 5, 'Aut sint est similique ratione laborum veritatis quasi. Ut laborum unde illum illum facere sit in. Dolores est ex voluptatem quam quas.', 'Quia odit illum minima debitis officia et magni. Vel eos voluptate porro voluptatum est. Soluta aut quo perspiciatis et. Placeat cupiditate hic sit enim reprehenderit.', '1981-10-18 05:08:53', '0000-00-00 00:00:00'),
(68, 30, NULL, 1, 4, 'Eius eos nam ipsum minima voluptatem. Et adipisci fugit fugit reiciendis sint. Similique nam consequatur occaecati blanditiis et et. Omnis quia aliquid voluptatem nisi a praesentium.', 'Blanditiis non facilis ea qui quaerat repudiandae. Porro voluptatum quis ipsa aspernatur beatae debitis. Rerum harum minima hic et debitis. Totam eligendi velit et quia voluptas.', '1975-04-18 06:46:34', '0000-00-00 00:00:00'),
(69, 16, 1, 3, 3, 'Sed reprehenderit nemo aperiam voluptatem et. Perspiciatis voluptates officia perspiciatis. Quas provident omnis at. Temporibus harum doloremque beatae mollitia est voluptas illo.', 'Et quod aut illo culpa provident. Tempore molestiae non consectetur molestiae. Voluptatibus et corporis consequatur totam occaecati et ut.', '1983-09-27 13:22:42', '0000-00-00 00:00:00'),
(70, 6, NULL, 1, 4, 'Distinctio doloribus et sed pariatur soluta quos rerum. Consequatur cupiditate modi veniam quia. Ducimus quasi fugiat maiores vero iusto.', 'Fugiat omnis maxime repudiandae adipisci. Ea omnis maxime nisi amet quia ex aut. Ipsum hic quaerat alias qui eos aut iusto.', '1994-06-02 20:29:59', '0000-00-00 00:00:00'),
(71, 5, 2, 6, 5, 'Neque esse est nisi facere id cumque. Assumenda exercitationem eum optio autem. Sunt rerum explicabo sint quo accusantium.', 'Sint sint enim et a magni. Possimus minima animi voluptas beatae asperiores qui voluptas. Sit voluptatibus architecto assumenda occaecati omnis.', '2001-01-03 15:46:25', '0000-00-00 00:00:00'),
(72, 34, NULL, 1, 5, 'Exercitationem praesentium sit assumenda voluptate quis. Et vel fuga numquam deleniti nobis. Eveniet et impedit qui porro.', 'Soluta non laboriosam corrupti veniam. Fuga unde impedit dolores natus corrupti voluptas. Voluptatem veniam dolores est.', '2012-12-10 03:16:09', '0000-00-00 00:00:00'),
(73, 47, 2, 2, 1, 'Impedit eveniet quod enim necessitatibus. Officiis aut odio nulla quis incidunt et. Possimus quis et et dolores. Eum dolore neque omnis maiores.', 'Omnis expedita quia quia molestiae vitae rerum nisi. Quis dolore itaque iste corrupti cumque repellat. Sequi non optio voluptatem aut soluta.', '1984-04-22 13:52:22', '0000-00-00 00:00:00'),
(74, 4, 1, 5, 5, 'Vel dolore ut unde labore accusamus. Quod quia ut consequatur voluptate aut et. Repellendus in reiciendis nam nostrum adipisci. Delectus blanditiis aliquid ad debitis itaque.', 'Quas dolorum aliquam vel similique. Ut rerum fuga voluptatem ab. Id ipsam beatae vitae voluptates. Error odio natus ut aspernatur.', '2017-03-02 16:42:54', '0000-00-00 00:00:00'),
(75, 46, 1, 2, 1, 'Eius autem quia molestias laborum natus aut. Ratione pariatur molestiae numquam quam nisi est itaque. Doloribus totam eveniet blanditiis voluptate.', 'Recusandae sunt nobis unde reiciendis aut. Neque labore voluptatem id vero quam dicta. Est unde explicabo fugiat et. Aut est explicabo ratione quisquam aut sit. Debitis dolor est dignissimos dolorem.', '2005-06-02 16:14:40', '0000-00-00 00:00:00'),
(76, 31, NULL, 1, 5, 'Aut iste et at et. Dolor mollitia atque asperiores. Sapiente voluptas et quo dolor repellat exercitationem. Assumenda adipisci rerum officia perspiciatis explicabo sint.', 'Iusto ut recusandae odio sit quibusdam dignissimos ad. Dignissimos placeat quia molestiae et eos. Maiores blanditiis id ut distinctio quidem id. Et earum reprehenderit sapiente qui soluta in.', '1972-03-14 11:06:49', '0000-00-00 00:00:00'),
(77, 48, 1, 2, 3, 'Distinctio maxime odit dolorem repudiandae itaque magnam repellendus. Velit et vel et eos sint non sapiente. Ut assumenda eligendi est.', 'Qui ut animi officia commodi harum commodi. Rerum consequatur veniam saepe porro illo aut. Pariatur cupiditate est et tenetur. Accusamus ducimus nam quae et et numquam.', '1982-10-14 08:02:34', '0000-00-00 00:00:00'),
(78, 27, 2, 3, 4, 'Consequatur cupiditate corrupti et aut quasi quo nobis quos. Rerum doloremque dolorem dolores dolorem natus. Quisquam sed consectetur sunt. Natus voluptatem aperiam consectetur eius nihil.', 'Nihil sed vitae optio sunt est aut occaecati. Blanditiis ipsam facilis dolor et sit suscipit ut.', '1999-04-27 22:45:11', '0000-00-00 00:00:00'),
(79, 17, 2, 3, 3, 'Suscipit nesciunt est fugiat omnis ab facere. Provident blanditiis maiores accusamus numquam quo. Vel cumque magni eaque ut aut.', 'Dicta doloribus illo ad aperiam consequatur eum officiis. Placeat sed ratione quasi voluptatem autem hic aut. Inventore voluptatem rerum non natus blanditiis. Quod quia laborum dolores libero.', '1972-02-16 00:44:18', '0000-00-00 00:00:00'),
(80, 48, 2, 6, 2, 'Et ut autem et rem repellat et. Culpa laudantium illo possimus totam omnis omnis quis. Enim eos nam optio est. Assumenda adipisci laboriosam et atque assumenda similique tempore.', 'Eligendi repellendus necessitatibus non omnis consectetur. Tempora quo est mollitia ipsum atque in corrupti. Eos corrupti fuga sed dolor recusandae tempora. Voluptatem sint fuga est sint sequi.', '1977-10-11 12:57:20', '0000-00-00 00:00:00'),
(81, 29, 2, 3, 1, 'Quasi id molestias dolore animi consequuntur dolor. Sunt doloribus dolore sit ea laboriosam ea. Suscipit nisi sed consequuntur deserunt aut occaecati.', 'Eum impedit quae id mollitia laborum saepe veritatis. Earum non minima et ipsum. Cumque sit animi natus omnis repudiandae explicabo quis et. Maiores aperiam in rerum vero soluta pariatur in nisi.', '1977-02-03 07:30:58', '0000-00-00 00:00:00'),
(82, 36, 2, 4, 5, 'Consequuntur atque et omnis rerum soluta. Porro aliquam minima fugit eaque velit exercitationem dolores. Distinctio repellat error rerum ipsam ea.', 'Velit molestiae repellendus soluta voluptatem nobis iste nemo aspernatur. Optio beatae et dolore iusto iste. Totam voluptatibus labore sed sunt consequatur. Hic inventore eaque autem dolorem.', '1976-06-06 17:43:18', '0000-00-00 00:00:00'),
(83, 13, NULL, 1, 4, 'Occaecati quis occaecati reiciendis quos architecto. Excepturi molestiae ipsa fugit et et similique tempora. Et quos at animi corporis cupiditate nihil.', 'Eos totam temporibus dolores magnam nam nisi. Ut asperiores earum laboriosam quidem. Sed accusamus temporibus nostrum. Est et et excepturi et ipsam sapiente debitis.', '1986-06-23 16:57:45', '0000-00-00 00:00:00'),
(84, 44, 1, 4, 1, 'Nihil quia est voluptate maxime sapiente dolores vel. Cumque et at veritatis eaque et aut. Quaerat eligendi qui enim est voluptas. Possimus et sunt sint porro optio ut voluptatibus voluptatem.', 'Maxime dignissimos et quia dolor sequi inventore. Vel enim ipsum laudantium non et. Asperiores occaecati deserunt quam quo. In eum voluptates aliquam nisi libero itaque quis.', '2008-10-01 19:00:01', '0000-00-00 00:00:00'),
(85, 24, 2, 6, 2, 'Quis velit fuga ut suscipit suscipit voluptates. Molestiae eum facilis ea sit officia rem.', 'Ullam qui numquam dignissimos modi ut. Debitis veniam voluptatibus fuga voluptates magni non. Delectus aut itaque fugit quae et omnis aut. Porro laborum officiis laudantium velit et possimus optio.', '1976-03-31 07:12:59', '0000-00-00 00:00:00'),
(86, 25, 1, 4, 2, 'Eos dicta iusto et voluptatem. Aut eum nostrum sed accusamus rerum. Quasi eum ut nam harum et. Amet eveniet et aut eos omnis et maxime.', 'Eaque ipsa est reprehenderit tempora. Tempore numquam aspernatur maxime veniam voluptatem quia. Nobis dolorem porro aut ex ipsa.', '2009-07-13 15:50:15', '0000-00-00 00:00:00'),
(87, 7, 2, 4, 2, 'Ut nihil sint architecto molestias nihil ut. Est sint delectus et. Quia cumque expedita illum quis veritatis voluptatem possimus. Et laborum tempore et voluptates.', 'Rerum in quas repudiandae distinctio dolores non nihil exercitationem. Dolores voluptatum officiis voluptas hic repudiandae cum.', '1997-12-23 04:38:07', '0000-00-00 00:00:00'),
(88, 20, 1, 5, 4, 'Enim minus aspernatur beatae animi tempora. Sapiente esse minus culpa voluptatem ut aut sit recusandae. Eveniet fuga velit voluptas omnis. Magnam aperiam molestiae et alias nobis quam.', 'Facere illo cum facilis et est mollitia quos. Enim molestiae ipsa veniam perspiciatis tenetur cumque. Tempora eum non eum reprehenderit voluptatem accusantium voluptatem eum.', '1994-06-28 16:34:35', '0000-00-00 00:00:00'),
(89, 37, 1, 3, 5, 'Quo dicta recusandae consequatur laboriosam. Soluta quibusdam est optio pariatur sunt magnam. Sit et nobis ipsum rerum esse. Omnis dolorem corporis quam incidunt fugit totam commodi.', 'Saepe officia id voluptatum aut iure. Vitae voluptatem vel cum veniam. Velit architecto in nam dolorum repellat consequuntur. Voluptatem doloremque qui enim recusandae tenetur vel.', '1974-06-30 22:49:06', '0000-00-00 00:00:00'),
(90, 3, 1, 6, 3, 'Hic repudiandae qui perspiciatis aliquam ipsam aspernatur suscipit. Nihil sed ut quae sequi aperiam numquam. Voluptatibus omnis eos quo deserunt sed ut.', 'Sapiente ipsam assumenda atque odit dolores qui. In voluptas omnis porro et adipisci. Vel dolorum molestiae quis delectus vel esse.', '1997-05-12 20:52:40', '0000-00-00 00:00:00'),
(91, 14, 1, 3, 1, 'Officia aut velit soluta numquam officia. Ipsum et recusandae fuga ipsam et dolore. Illo animi eos incidunt autem soluta. Aut voluptatum aut et.', 'Libero at libero quas molestiae quisquam excepturi. Dolores repellendus facere in quo dolor eaque. Commodi aut ut libero sit. Aliquid vel sit nam aut ut dolor.', '1975-10-03 01:42:06', '0000-00-00 00:00:00'),
(92, 6, 1, 3, 4, 'Laboriosam magnam eveniet explicabo voluptatum possimus excepturi tenetur. Esse iusto voluptatem sed possimus consequuntur vero.', 'Et voluptatem quasi in numquam accusamus occaecati magni. Velit voluptatibus fugiat consequatur architecto minus. Tempore labore qui nobis saepe ut ut eveniet.', '1974-02-06 04:29:19', '0000-00-00 00:00:00'),
(93, 43, NULL, 1, 4, 'Expedita qui autem ab quae dolores. Alias molestias in incidunt amet id.', 'Quis a aut aspernatur fugit eveniet quo. Quod accusamus distinctio incidunt vel necessitatibus consequatur distinctio. Est ratione maxime odio.', '2006-11-07 19:26:10', '0000-00-00 00:00:00'),
(94, 34, 2, 4, 4, 'Perspiciatis porro qui debitis. Eum laudantium corporis expedita voluptas. Necessitatibus dolore aut et culpa cum. Aperiam ut sunt consequatur.', 'Blanditiis omnis sit ducimus iusto consequatur at. Ullam odio qui laborum illum illo nemo. Iure debitis non odio architecto.', '2007-01-29 14:41:06', '0000-00-00 00:00:00'),
(95, 34, 1, 3, 1, 'Et eos soluta aspernatur error facilis. Repellendus ea quaerat illo ea est tempore quibusdam. At dolorem dolorem architecto esse. Repudiandae ullam quo et earum et voluptatem.', 'Iste velit quo sit vero. Reiciendis cum dolore qui asperiores ut. Commodi quidem non saepe odit iste totam nam.', '1982-03-31 00:59:46', '0000-00-00 00:00:00'),
(96, 44, 1, 5, 5, 'Molestias vel voluptas sed. Voluptas officiis vero autem. Ut odit quaerat impedit distinctio voluptatem at fuga. Vel et temporibus enim voluptate necessitatibus perspiciatis.', 'Soluta quis facere aliquid laborum. Commodi quos doloribus doloremque qui reiciendis cumque saepe. Sit ut quo quibusdam sunt.', '2003-04-10 08:04:16', '0000-00-00 00:00:00'),
(97, 12, 2, 5, 5, 'Officiis enim mollitia voluptatem iusto. Debitis velit odio distinctio tenetur eaque minima numquam aut. Esse debitis dignissimos natus et.', 'Aut et hic qui quia. A corrupti consequuntur ipsa quidem sit amet. Ipsa ex tempore sed aliquid vel.', '1999-10-30 07:19:17', '0000-00-00 00:00:00'),
(98, 49, 2, 2, 3, 'Et doloribus quia magni vel. Vitae molestiae voluptatem quasi in debitis similique et. Eveniet sed dolorum velit porro ipsum eos omnis velit.', 'Dolor saepe asperiores maxime necessitatibus mollitia. Ut ea veritatis illo voluptatem. Aut ut sed assumenda nesciunt magnam. Velit a culpa minus non.', '2010-10-26 13:41:11', '0000-00-00 00:00:00'),
(99, 47, 2, 6, 5, 'Id accusantium ex eum voluptas. Commodi odio debitis a libero quaerat fuga sit vitae. Temporibus laboriosam saepe perferendis quia consequatur sapiente aut praesentium.', 'Ducimus officiis et similique enim non ut. Voluptatum eum doloremque et voluptate. Occaecati necessitatibus debitis omnis qui facilis. Non vero eveniet quod adipisci.', '2009-08-16 05:22:37', '0000-00-00 00:00:00'),
(100, 45, 2, 3, 3, 'Commodi quas necessitatibus officiis ducimus ut et voluptatibus. Et tempore pariatur saepe deleniti ea aut. Et qui quo voluptatum recusandae ut accusamus.', 'Itaque expedita rem minus eveniet. Mollitia iure unde et similique ratione est. Et libero et rerum a. Et repudiandae aut aliquam maxime suscipit.', '1994-05-28 18:54:00', '0000-00-00 00:00:00');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `operator_id` (`operator_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `client` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `incident_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `incident_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `operator` FOREIGN KEY (`operator_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;