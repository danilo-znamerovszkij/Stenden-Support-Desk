-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 24, 2018 at 04:55 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ssd`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Wish'),
(2, 'Query'),
(3, 'Crash'),
(4, 'Functional problem'),
(5, 'Technical problem');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
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
-- Table structure for table `incident`
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
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident_id`, `client_id`, `operator_id`, `status_id`, `category_id`, `description`, `solution`, `start_date`, `end_date`) VALUES
(1, 10, 1, 4, 1, 'Impedit assumenda voluptas sunt perferendis consequuntur. Ab rerum est necessitatibus ipsam et reiciendis assumenda. Quo quis quis consequatur non quaerat.', 'Ut fuga culpa dolore vitae commodi non et excepturi. Officia voluptas delectus nesciunt nihil sit magnam. Pariatur et veniam eum provident vero tenetur.', '1988-09-20 20:27:56', '0000-00-00 00:00:00'),
(2, 29, 2, 3, 5, 'Dicta repellat hic adipisci quo et qui fugit. Deleniti et tempore et blanditiis pariatur odit. Delectus dolor dicta dolor ipsam.', 'Libero dolores corporis enim minima. Possimus eos aut voluptate quo nihil. Mollitia aut deserunt nostrum velit unde nam aut. Sunt quo atque asperiores qui inventore aut.', '1976-09-12 02:31:45', '0000-00-00 00:00:00'),
(3, 29, 2, 2, 5, 'Enim sit fugit quia qui nesciunt ut. Vitae corporis deserunt vitae repellat est. Nostrum libero omnis consequatur cum sed.', 'Quia voluptates commodi deleniti quis quia. Consequatur aperiam nesciunt nisi iusto laudantium. Saepe rerum recusandae animi aut amet non autem.', '2004-05-01 03:37:29', '0000-00-00 00:00:00'),
(4, 23, 1, 3, 4, 'Autem est harum quod vitae veritatis. Consequatur provident aut eligendi voluptas molestias omnis maiores et. Consequatur a quasi temporibus esse dolor autem porro.', 'Ut eum provident non aut quo earum. Perferendis vitae quo laudantium quia. Suscipit officiis sit aut ut illo.', '2014-06-15 16:05:02', '0000-00-00 00:00:00'),
(5, 20, 1, 4, 4, 'Mollitia dolores nihil mollitia voluptas. Enim dolor minus omnis qui. Animi ipsa odio commodi itaque illum saepe voluptate aut.', 'Beatae recusandae architecto aliquam ut nobis reiciendis. Voluptatibus ad quo et aliquam eligendi. Est autem vero rem velit quod. Minus ad molestiae dolores voluptatem quia.', '2005-02-10 22:10:51', '0000-00-00 00:00:00'),
(6, 45, 1, 5, 4, 'Dignissimos tempora est totam molestiae consequatur aut aut recusandae. Magnam aut ad consequatur nostrum maiores. Fugit natus nihil sint. Est ut qui veritatis accusamus ipsa.', 'Fugiat debitis consectetur enim quaerat fuga. Expedita eius officia earum dolorem explicabo reprehenderit culpa et. Labore ut non est asperiores. Quisquam maxime ad corrupti amet nam.', '2015-08-15 20:57:21', '0000-00-00 00:00:00'),
(7, 18, 2, 2, 3, 'Nemo quo et totam incidunt culpa modi necessitatibus. Ut quia quisquam laboriosam qui ea unde. Assumenda aspernatur ullam et voluptatum. Tenetur rerum qui quis iusto vero modi ullam.', 'Totam eos nam enim illo et quia. Laboriosam modi et voluptas. Ipsum ipsam perferendis pariatur a corporis illum dolorum.', '2016-04-07 14:22:56', '0000-00-00 00:00:00'),
(8, 48, 1, 4, 5, 'Dolores aut soluta dolorum. Adipisci soluta voluptatum rerum quidem est aliquid. Vel voluptate perferendis ab voluptatibus corrupti. Qui molestias provident sit id. Est quia rem quia veniam animi.', 'Provident qui et sed veniam. Fuga optio dolor minima. Aut et ut incidunt. Sit et quia et quam consequatur debitis. Accusamus nemo dolor vel et maiores temporibus.', '2004-08-27 09:28:22', '0000-00-00 00:00:00'),
(9, 48, NULL, 1, 2, 'Tempore blanditiis laborum ipsa harum. Voluptas eum voluptatibus ab perspiciatis modi expedita. Ipsam harum ut quod eveniet a et.', 'Qui minima sint et. Quia sint sunt perferendis ut cum. Assumenda explicabo alias excepturi sed laboriosam ipsum aut.', '1980-09-13 11:50:23', '0000-00-00 00:00:00'),
(10, 38, 1, 2, 1, 'Maxime eaque similique nesciunt quod. Aliquid magnam aperiam est libero. Aut ea dignissimos ducimus omnis.', 'Distinctio rerum ipsam ab nostrum. Labore et sed qui facilis rerum quo. Quia iste consectetur in aliquid. Tenetur ut necessitatibus enim nesciunt minus non unde aut.', '2006-08-09 08:43:09', '0000-00-00 00:00:00'),
(11, 18, 2, 3, 1, 'A sapiente porro magnam molestiae aut. Et libero voluptate voluptatem sed eaque facere expedita. Minima est illum dolores.', 'Praesentium sapiente accusamus harum dicta voluptas velit. Autem consequatur quae quod consequatur quia qui necessitatibus. Animi asperiores vero ad et sed.', '2009-11-23 04:08:48', '0000-00-00 00:00:00'),
(12, 36, 1, 4, 2, 'Molestiae et autem eius consectetur possimus deleniti. Aspernatur ut quia id facilis voluptatem. Architecto molestias aperiam expedita molestias laudantium.', 'Blanditiis laudantium ut est ea. Quia repellat unde culpa reiciendis.', '1997-02-02 13:15:07', '0000-00-00 00:00:00'),
(13, 32, 1, 3, 2, 'Et repellendus perferendis sed quod. Repellat nostrum iusto non omnis sint pariatur adipisci.', 'Qui similique dolorem quas tenetur commodi qui repudiandae. Dolorum aut odit voluptatum non suscipit. Eum corporis sunt reprehenderit adipisci ipsa nostrum sequi voluptas.', '2007-10-19 15:33:42', '0000-00-00 00:00:00'),
(14, 3, 1, 6, 5, 'Vero qui voluptas mollitia beatae. Iste consectetur sint quod nesciunt neque et enim optio.', 'Quas distinctio quisquam labore ab quod corrupti cum. Omnis non minus impedit enim magni qui omnis sint. Et quis non et laudantium.', '1978-07-13 19:13:35', '0000-00-00 00:00:00'),
(15, 13, 2, 2, 2, 'Laudantium accusantium nesciunt eligendi in ab. Voluptas doloribus exercitationem mollitia vel. Totam quibusdam non eveniet molestiae aut iste deleniti ducimus.', 'Placeat ut et alias et ipsum autem et. Ut corporis eveniet atque numquam omnis maiores et. Sequi laboriosam quis qui in perspiciatis enim quos.', '2012-11-12 06:54:00', '0000-00-00 00:00:00'),
(16, 38, 1, 6, 1, 'Provident sunt dolore est architecto porro sit beatae. Eveniet et sint et. Deleniti eos eveniet rerum ad.', 'Nihil sunt eius architecto dolores. Rem possimus molestias fuga sed. Unde maiores est aliquam. Rem omnis labore et commodi est minima sit.', '1977-02-11 01:41:47', '0000-00-00 00:00:00'),
(17, 44, 2, 3, 4, 'Voluptatem ex laudantium repellendus rem ut sit. Facere non earum consequatur ut voluptates numquam sequi. Rerum et ipsa iste sunt in. Illum quam libero aut molestias consequatur molestiae.', 'Aut sint consectetur voluptatibus rem. Est assumenda repellat vero molestias placeat maiores porro. Doloremque provident et hic nobis. Animi voluptatem alias sed ut dignissimos.', '1980-02-03 02:55:41', '0000-00-00 00:00:00'),
(18, 16, 1, 2, 2, 'Optio ex accusamus et architecto accusamus. Voluptas labore facilis natus atque eaque. Nam ut ea maxime voluptatem. Quasi esse autem autem temporibus rerum.', 'Quo non architecto et occaecati qui tempora et. Quia qui minima illum et. Et ab odio non incidunt asperiores suscipit natus. Repudiandae consequatur illum iusto.', '1993-03-14 15:11:33', '0000-00-00 00:00:00'),
(19, 36, 2, 4, 2, 'Sit autem animi et deserunt. Laudantium sit et eveniet. Maiores unde et quia corrupti. Harum tenetur quia quo ipsa.', 'Odio excepturi non molestias quia quam. Quis aut earum necessitatibus quo quo dignissimos pariatur. Cupiditate id aspernatur ut sed sapiente occaecati velit.', '1972-03-09 05:39:15', '0000-00-00 00:00:00'),
(20, 33, 2, 3, 4, 'Repellat sed sed voluptas aliquam sed omnis architecto voluptates. Dolor totam ullam reprehenderit sit. Voluptatem tenetur magnam dolorem corrupti id laudantium. Voluptatem explicabo omnis et.', 'Asperiores et temporibus perferendis incidunt fugiat. Cupiditate id saepe quidem facilis necessitatibus enim a.', '1971-11-10 00:17:36', '0000-00-00 00:00:00'),
(21, 42, 2, 5, 3, 'Ea et nostrum corrupti qui unde. Est quis eos quod cum.', 'Et in expedita laborum quia dolorem vel veniam ea. Est quo debitis occaecati ipsa nam doloribus quia. Non nobis aperiam doloribus enim. Ullam delectus unde similique.', '1975-04-19 08:00:21', '0000-00-00 00:00:00'),
(22, 35, 1, 6, 3, 'Quia expedita suscipit odio ut culpa. Tempore nobis doloribus voluptate eius voluptatibus. A et qui a a assumenda.', 'Omnis iste non maiores adipisci et dicta repudiandae. Nihil repellat corrupti accusantium ut. Quaerat veritatis sunt quia veritatis qui qui aut.', '2017-03-08 09:38:44', '0000-00-00 00:00:00'),
(23, 28, 2, 6, 3, 'Ipsa repellendus quia aliquid iste ex itaque. Id ut enim labore. Impedit quia nostrum non laboriosam quaerat laborum facilis provident. Sit sunt sit adipisci voluptatem dolorem ullam sed.', 'Voluptatem aut dolor consequatur laborum. Reiciendis vel autem quia doloremque. Nobis molestias esse labore quia. Nihil deleniti soluta inventore ut commodi.', '1994-03-08 17:47:29', '0000-00-00 00:00:00'),
(24, 15, 1, 3, 1, 'Magni voluptatibus illum at est. Mollitia ut quasi ratione.', 'Rerum doloribus autem quam recusandae laborum exercitationem ipsam. Saepe autem voluptatum aut qui nemo. Reiciendis ipsam quasi repudiandae.', '2006-07-09 18:36:45', '0000-00-00 00:00:00'),
(25, 50, 2, 6, 3, 'Aspernatur corrupti quam molestiae expedita et veritatis molestiae. Est vel dolores qui ut. Omnis eveniet nihil sint est repudiandae.', 'Placeat qui consequatur dicta. Officia dolor et qui facilis et quia corrupti. Corporis nihil provident quidem eligendi. Molestiae error voluptatum nostrum quae consectetur.', '2013-11-05 04:06:45', '0000-00-00 00:00:00'),
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

-- --------------------------------------------------------

--
-- Table structure for table `license`
--

CREATE TABLE `license` (
  `id` int(5) NOT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `contact_id` int(11) NOT NULL,
  `product_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `license`
--

INSERT INTO `license` (`id`, `purchase_date`, `contact_id`, `product_name`) VALUES
(1, '2018-01-12 19:47:48', 2, 'Microsoft Widnows');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL,
  `position_Role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
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
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
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
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `isEmployee`, `name`, `phone`, `email`, `username`, `password`, `has_maintenance_license`, `position_id`, `contact_id`) VALUES
(1, 1, 'Rene laan', '051231231231', 'rene.laan@stenden.com', 'rene', 'laan', 0, 3, 1),
(2, 1, 'Bob Saget', '2134kj231', 'asdkjh@kjhsdaf.com', 'employee', 'employee', 0, 2, 1),
(3, 0, 'Henri Kuvalis', '(794) 664-9281 ', 'raynor.luna@hotmail.com', 'ohansen', 'password', 1, 1, 18),
(4, 0, 'Monica Stokes IV', '1-254-737-4199 ', 'elliot.funk@watsica.net', 'tito.keeling', 'password', 1, 1, 18),
(5, 0, 'Delphia Maggio', '(421) 810-5908 ', 'zbuckridge@hotmail.com', 'shania18', 'password', 1, 1, 37),
(6, 0, 'Dr. Jessyca Hand II', '482.964.7657 x9', 'guido43@yahoo.com', 'beahan.ned', 'password', 0, 1, 19),
(7, 0, 'Mr. Ola Connelly Sr.', '(342) 490-3586 ', 'odavis@weber.com', 'lzemlak', 'password', 0, 6, 30),
(8, 0, 'Dianna Walter', '236.680.2775', 'tremblay.felicia@yahoo.com', 'pedro52', 'password', 0, 1, 34),
(9, 0, 'Alda Moen', '+1-506-761-9416', 'clarissa64@sanford.com', 'hullrich', 'password', 0, 6, 34),
(10, 0, 'Zander Bartell', '(616) 994-9864 ', 'rschroeder@yahoo.com', 'genesis69', 'password', 0, 6, 8),
(11, 0, 'Una Funk', '230-891-3713 x3', 'gerard.mcclure@yahoo.com', 'armand.senger', 'password', 0, 1, 39),
(12, 0, 'Prof. Athena Wehner IV', '+1-306-344-6599', 'ywalsh@hotmail.com', 'douglas.oconner', 'password', 0, 6, 26),
(13, 0, 'Mr. Graham Turner IV', '1-585-644-3050', 'hfritsch@bruen.com', 'beahan.providenci', 'password', 0, 1, 45),
(14, 0, 'Miss Lucy Nolan DDS', '315.285.0193', 'minerva15@kub.com', 'karl62', 'password', 0, 1, 6),
(15, 0, 'Romaine Fritsch', '+1.517.559.3958', 'ostroman@hotmail.com', 'nya.mcdermott', 'password', 0, 1, 32),
(16, 0, 'Morris Pollich', '931-752-4104 x7', 'keira19@yahoo.com', 'tmills', 'password', 0, 1, 10),
(17, 0, 'Alden Oberbrunner', '+1-241-955-8974', 'daugherty.humberto@hotmail.com', 'josh.trantow', 'password', 0, 1, 23),
(18, 0, 'Genesis Wunsch', '1-561-863-8452', 'aoconnell@hotmail.com', 'mayert.rosetta', 'password', 0, 6, 29),
(19, 0, 'Sydney Hansen', '(694) 557-0817', 'ibrahim01@hamill.biz', 'brandyn.bosco', 'password', 0, 1, 24),
(20, 0, 'Rico Schmeler', '620-442-9700 x7', 'itzel16@yahoo.com', 'herman.windler', 'password', 0, 1, 5),
(21, 0, 'Miss Colleen Shields PhD', '+1 (329) 936-67', 'lulu97@hotmail.com', 'murazik.josefina', 'password', 0, 6, 49),
(22, 0, 'Dave Mayert', '+1-431-254-7530', 'ckassulke@yahoo.com', 'schulist.velva', 'password', 0, 1, 16),
(23, 0, 'Prof. Tressa Donnelly', '832-823-4692', 'zdickinson@gmail.com', 'bhuel', 'password', 1, 1, 27),
(24, 0, 'Missouri Robel', '(465) 376-5048', 'adams.mazie@stamm.net', 'halvorson.carolyn', 'password', 1, 6, 4),
(25, 0, 'Effie Toy II', '959.353.1773 x6', 'egrimes@gmail.com', 'ywyman', 'password', 0, 6, 15),
(26, 0, 'Pasquale Willms', '1-471-620-3578', 'judah.brekke@huels.org', 'yasmin14', 'password', 0, 6, 3),
(27, 0, 'Howell Marks', '297.582.2489', 'mohammad64@gaylord.biz', 'pouros.darwin', 'password', 1, 6, 11),
(28, 0, 'Braden Boehm', '204-876-0104', 'joaquin79@olson.com', 'hickle.maximo', 'password', 1, 6, 48),
(29, 0, 'Prof. Tina Huel IV', '(368) 986-9130 ', 'sbode@powlowski.com', 'carolanne49', 'password', 1, 1, 3),
(30, 0, 'Mrs. Viola Miller IV', '+1.753.483.3449', 'wyman.ally@stokes.biz', 'paul13', 'password', 0, 1, 4),
(31, 0, 'Royal Dooley', '1-581-789-2146', 'berniece.gaylord@ebert.biz', 'berry16', 'password', 0, 6, 10),
(32, 0, 'Cordie Bogan', '767-241-0309 x1', 'evert.johnson@hamill.com', 'rvandervort', 'password', 0, 6, 5),
(33, 0, 'Dorthy Hegmann', '402.605.5707', 'nfeeney@mann.com', 'jcollins', 'password', 0, 6, 39),
(34, 0, 'Ms. Georgiana DuBuque III', '(794) 718-9574 ', 'elva26@romaguera.com', 'johnny62', 'password', 0, 6, 32),
(35, 0, 'Addison Brekke', '864-360-7596', 'ylangosh@hotmail.com', 'lbeer', 'password', 0, 6, 14),
(36, 0, 'Mrs. Janie West V', '1-654-531-9581 ', 'renner.litzy@yahoo.com', 'mavis98', 'password', 0, 6, 18),
(37, 0, 'Dr. Graciela Sanford', '1-549-683-4540 ', 'fae.gaylord@stamm.com', 'vswift', 'password', 1, 1, 30),
(38, 0, 'Rhea Little', '782-300-1090 x4', 'bernier.trever@gmail.com', 'deshawn.hermann', 'password', 0, 1, 50),
(39, 0, 'Rosario Swaniawski', '443-574-2190 x9', 'antonia51@gmail.com', 'umayer', 'password', 1, 6, 42),
(40, 0, 'Mrs. Era Batz DVM', '1-709-452-3565 ', 'swillms@pollich.biz', 'ogutmann', 'password', 0, 6, 24),
(41, 0, 'Eric Carter MD', '1-406-817-5282 ', 'gokeefe@kuhlman.info', 'wisozk.laurianne', 'password', 0, 6, 9),
(42, 0, 'Eladio Kuhn', '(860) 960-2064 ', 'carmine59@lemke.com', 'uhoppe', 'password', 0, 1, 4),
(43, 0, 'Brayan Jast Sr.', '(561) 849-0441', 'bins.carol@boehm.com', 'yking', 'password', 0, 1, 30),
(44, 0, 'Ms. Kaya Schmitt', '+18933719282', 'wunsch.briana@hotmail.com', 'albina43', 'password', 0, 6, 19),
(45, 0, 'Madisyn Mayer', '841.599.5874 x1', 'kemmer.sofia@olson.com', 'krystal.kuhic', 'password', 0, 1, 3),
(46, 0, 'Major Considine PhD', '1-219-839-8540 ', 'flossie65@bins.biz', 'emard.laisha', 'password', 1, 6, 39),
(47, 0, 'Maynard Zboncak', '+1-825-512-3188', 'karolann53@mitchell.com', 'brandyn.gleason', 'password', 0, 6, 29),
(48, 0, 'Juliet Pfeffer', '1-809-948-1936 ', 'taya46@daugherty.org', 'jacobi.carolyne', 'password', 1, 6, 43),
(49, 0, 'Jovany Bernier', '753-859-0035 x8', 'jkub@schuster.com', 'zreinger', 'password', 0, 6, 26),
(50, 0, 'Elroy McLaughlin', '(492) 555-9096 ', 'rmraz@windler.com', 'scot35', 'password', 1, 6, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `incident`
--
ALTER TABLE `incident`
  ADD PRIMARY KEY (`incident_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `operator_id` (`operator_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_fk` (`position_id`),
  ADD KEY `contact_fk` (`contact_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `incident`
--
ALTER TABLE `incident`
  MODIFY `incident_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `license`
--
ALTER TABLE `license`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `incident`
--
ALTER TABLE `incident`
  ADD CONSTRAINT `client` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `incident_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `incident_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `operator` FOREIGN KEY (`operator_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `contact_fk` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`contact_id`),
  ADD CONSTRAINT `position_fk` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`) ON UPDATE CASCADE;
