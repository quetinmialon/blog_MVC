SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `blog`;

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `comments` (`id`, `content`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatem quibusdam dolores in provident suscipit est.', 1, 6, '2023-06-13 18:59:45', '2023-06-13 18:59:45'),
(2, 'Occaecati consequatur ut cupiditate.', 1, 10, '2023-09-09 22:57:19', '2023-09-09 22:57:19'),
(3, 'Qui quaerat quisquam sequi est.', 1, 13, '2023-03-16 05:00:56', '2023-03-16 05:00:56'),
(4, 'Nulla ut rerum et tempora occaecati adipisci exercitationem.', 1, 7, '2023-09-23 00:15:26', '2023-09-23 00:15:26'),
(5, 'Sed quo voluptatum accusamus aliquid corrupti blanditiis quod magni.', 1, 5, '2024-01-01 04:16:33', '2024-01-01 04:16:33'),
(6, 'Aut sit ipsum fuga excepturi.', 2, 1, '2023-11-06 14:58:36', '2023-11-06 14:58:36'),
(7, 'Omnis provident earum sit nam tempora.', 2, 3, '2023-05-14 09:55:13', '2023-05-14 09:55:13'),
(8, 'Vel consectetur debitis aut modi modi et.', 2, 13, '2023-12-31 08:20:02', '2023-12-31 08:20:02'),
(9, 'Sint libero nemo earum ad.', 2, 20, '2023-07-25 14:15:34', '2023-07-25 14:15:34'),
(10, 'Alias omnis tempore ab harum nesciunt dolor dolorem.', 2, 8, '2023-08-17 04:15:58', '2023-08-17 04:15:58'),
(11, 'Eos voluptatum at quis beatae.', 3, 4, '2023-10-13 22:29:51', '2023-10-13 22:29:51'),
(12, 'Architecto rerum dolore placeat quis aut.', 3, 2, '2023-04-11 04:22:29', '2023-04-11 04:22:29'),
(13, 'Et quo temporibus eaque natus.', 3, 20, '2023-10-05 20:24:07', '2023-10-05 20:24:07'),
(14, 'Sed laudantium vitae cum aliquid quisquam nostrum.', 3, 11, '2023-12-20 02:25:23', '2023-12-20 02:25:23'),
(15, 'Ad doloribus soluta nihil mollitia.', 3, 3, '2023-06-08 16:57:13', '2023-06-08 16:57:13'),
(16, 'Delectus officiis veritatis cupiditate molestiae dolorem non.', 4, 6, '2023-12-05 19:22:40', '2023-12-05 19:22:40'),
(17, 'Voluptas ea quos nesciunt cupiditate autem nostrum.', 4, 19, '2023-11-17 09:43:16', '2023-11-17 09:43:16'),
(18, 'Ut voluptas consequatur cum distinctio at odit.', 4, 2, '2023-07-05 00:37:25', '2023-07-05 00:37:25'),
(19, 'Dolore hic aut itaque blanditiis in est.', 4, 7, '2024-01-27 05:15:33', '2024-01-27 05:15:33'),
(20, 'Quo sit non error assumenda.', 4, 7, '2024-01-31 00:38:46', '2024-01-31 00:38:46'),
(21, 'Modi cumque ullam et velit impedit perspiciatis illum.', 5, 11, '2023-12-28 19:11:44', '2023-12-28 19:11:44'),
(22, 'Et repellendus nam et qui.', 5, 3, '2023-03-25 05:08:23', '2023-03-25 05:08:23'),
(23, 'Aut quo molestias odio temporibus et nostrum nulla.', 5, 12, '2023-11-17 21:00:48', '2023-11-17 21:00:48'),
(24, 'Laboriosam enim sint ut qui soluta et.', 5, 4, '2024-01-14 18:11:50', '2024-01-14 18:11:50'),
(25, 'Nam dolorem cum et quasi voluptatem quia ut et.', 5, 1, '2023-12-28 01:09:12', '2023-12-28 01:09:12'),
(26, 'Maiores ab recusandae corrupti deserunt.', 6, 2, '2024-01-17 23:37:24', '2024-01-17 23:37:24'),
(27, 'Autem ipsa inventore eos voluptatum natus sunt.', 6, 16, '2023-06-24 19:49:18', '2023-06-24 19:49:18'),
(28, 'Libero a sit aliquam.', 6, 20, '2023-09-12 11:00:15', '2023-09-12 11:00:15'),
(29, 'Omnis vero aut repellendus laborum accusantium sit nihil.', 6, 1, '2023-08-09 10:06:13', '2023-08-09 10:06:13'),
(30, 'Ut labore labore ut minima iure blanditiis.', 6, 17, '2023-08-09 02:04:04', '2023-08-09 02:04:04'),
(31, 'Error quia sed ut velit.', 7, 16, '2023-09-03 03:04:27', '2023-09-03 03:04:27'),
(32, 'Sapiente asperiores est repellat hic fugiat.', 7, 10, '2023-09-29 08:32:00', '2023-09-29 08:32:00'),
(33, 'Autem iusto nemo consequatur.', 7, 5, '2023-12-23 08:10:10', '2023-12-23 08:10:10'),
(34, 'Nostrum eum consequuntur dolor consequuntur omnis.', 7, 15, '2023-08-13 17:29:05', '2023-08-13 17:29:05'),
(35, 'Consequatur qui dolor debitis.', 7, 4, '2023-09-10 10:35:19', '2023-09-10 10:35:19'),
(36, 'Enim in doloribus et sint pariatur.', 8, 2, '2023-09-18 17:34:51', '2023-09-18 17:34:51'),
(37, 'Alias totam est quasi porro repudiandae libero.', 8, 10, '2023-03-01 00:43:07', '2023-03-01 00:43:07'),
(38, 'Fuga aut sit laborum harum.', 8, 20, '2023-04-01 01:09:03', '2023-04-01 01:09:03'),
(39, 'Velit impedit facilis voluptate labore aut unde.', 8, 20, '2023-10-21 15:19:30', '2023-10-21 15:19:30'),
(40, 'Deserunt voluptas illo nihil nihil repudiandae et.', 8, 6, '2023-06-04 21:14:50', '2023-06-04 21:14:50'),
(41, 'Nihil eos iste iusto non qui ipsa est.', 9, 6, '2023-04-01 04:30:54', '2023-04-01 04:30:54'),
(42, 'Natus recusandae libero nihil repellat.', 9, 13, '2023-07-01 13:09:31', '2023-07-01 13:09:31'),
(43, 'Expedita mollitia accusantium veritatis.', 9, 9, '2023-02-24 01:38:31', '2023-02-24 01:38:31'),
(44, 'Porro tempora error eos numquam quisquam cum aliquid.', 9, 16, '2023-11-23 13:41:14', '2023-11-23 13:41:14'),
(45, 'Sunt aut et aut omnis repellendus non.', 9, 3, '2023-04-15 16:51:16', '2023-04-15 16:51:16'),
(46, 'Aut laboriosam unde reprehenderit magnam occaecati aut optio voluptatem.', 10, 2, '2024-01-19 17:38:20', '2024-01-19 17:38:20'),
(47, 'Incidunt quod adipisci libero atque suscipit nihil.', 10, 18, '2023-05-03 23:26:44', '2023-05-03 23:26:44'),
(48, 'Architecto enim velit dignissimos.', 10, 17, '2023-06-25 00:25:29', '2023-06-25 00:25:29'),
(49, 'Vero rem odio et voluptas labore.', 10, 18, '2023-02-21 19:46:19', '2023-02-21 19:46:19'),
(50, 'Et alias mollitia quisquam omnis placeat corporis aut.', 10, 15, '2023-04-20 22:40:48', '2023-04-20 22:40:48'),
(51, 'Deleniti voluptates consequatur reiciendis.', 11, 6, '2023-10-26 07:47:40', '2023-10-26 07:47:40'),
(52, 'Qui eum possimus tempore possimus voluptatibus non.', 11, 14, '2024-01-26 05:35:37', '2024-01-26 05:35:37'),
(53, 'Voluptatem necessitatibus sunt debitis ut velit.', 11, 14, '2023-02-09 06:37:27', '2023-02-09 06:37:27'),
(54, 'Dicta reprehenderit quos esse.', 11, 14, '2023-12-23 14:05:53', '2023-12-23 14:05:53'),
(55, 'Eos in eaque atque modi et error sint.', 11, 20, '2023-03-09 03:04:56', '2023-03-09 03:04:56'),
(56, 'Quae distinctio sint mollitia totam vel veritatis.', 12, 8, '2023-11-04 13:51:44', '2023-11-04 13:51:44'),
(57, 'Vel voluptas cum nisi quae animi sint autem.', 12, 6, '2023-12-22 15:00:02', '2023-12-22 15:00:02'),
(58, 'Minima ducimus tempora sint vel cumque et et.', 12, 20, '2023-09-28 17:44:30', '2023-09-28 17:44:30'),
(59, 'Consequatur et quis cupiditate aut enim.', 12, 17, '2023-02-09 05:12:19', '2023-02-09 05:12:19'),
(60, 'Est cupiditate est voluptatem ipsam cumque omnis architecto.', 12, 12, '2023-06-03 07:47:53', '2023-06-03 07:47:53'),
(61, 'Quod voluptatum quibusdam eum libero.', 13, 18, '2023-06-12 10:06:50', '2023-06-12 10:06:50'),
(62, 'Nihil dolorem facilis excepturi id minima voluptatem veritatis.', 13, 1, '2023-09-06 23:15:38', '2023-09-06 23:15:38'),
(63, 'Ex et quas beatae aliquid.', 13, 8, '2024-01-18 13:54:41', '2024-01-18 13:54:41'),
(64, 'Similique nesciunt deserunt provident.', 13, 2, '2023-12-06 16:00:10', '2023-12-06 16:00:10'),
(65, 'Itaque sequi ipsum rerum impedit voluptas dolores.', 13, 5, '2023-09-20 23:43:23', '2023-09-20 23:43:23'),
(66, 'Voluptas sed corporis nihil qui et nihil.', 14, 17, '2023-08-17 03:22:40', '2023-08-17 03:22:40'),
(67, 'Hic dolor sed explicabo expedita quia inventore quo.', 14, 13, '2023-11-03 06:45:12', '2023-11-03 06:45:12'),
(68, 'Ut earum fuga debitis sit sunt et voluptates doloribus.', 14, 18, '2023-04-02 01:34:50', '2023-04-02 01:34:50'),
(69, 'Vel aspernatur mollitia ut aut similique.', 14, 4, '2023-03-04 00:28:07', '2023-03-04 00:28:07'),
(70, 'Quis rerum excepturi eos aspernatur.', 14, 12, '2023-05-23 00:21:58', '2023-05-23 00:21:58'),
(71, 'Odio consequuntur tenetur aut veniam necessitatibus alias.', 15, 20, '2023-11-07 19:27:09', '2023-11-07 19:27:09'),
(72, 'Sequi dolor dignissimos similique eos adipisci deserunt.', 15, 20, '2023-11-06 05:49:09', '2023-11-06 05:49:09'),
(73, 'Suscipit itaque explicabo quibusdam.', 15, 9, '2023-02-26 11:56:56', '2023-02-26 11:56:56'),
(74, 'Molestias ratione rerum dolores provident et impedit.', 15, 16, '2023-08-08 18:28:09', '2023-08-08 18:28:09'),
(75, 'Eum deleniti animi saepe molestiae repellendus.', 15, 6, '2023-11-09 10:48:57', '2023-11-09 10:48:57'),
(76, 'Eos voluptate nesciunt at fuga ad reiciendis eligendi.', 16, 13, '2023-10-26 05:01:21', '2023-10-26 05:01:21'),
(77, 'Et sunt nam quos ad harum.', 16, 4, '2023-11-26 16:24:21', '2023-11-26 16:24:21'),
(78, 'Repudiandae quia maiores et magni eius totam sit.', 16, 19, '2023-05-25 04:39:15', '2023-05-25 04:39:15'),
(79, 'Sit illo dolores reprehenderit aut sunt qui.', 16, 3, '2023-07-16 14:24:29', '2023-07-16 14:24:29'),
(80, 'Ducimus excepturi repellat soluta vel.', 16, 2, '2023-09-19 05:21:08', '2023-09-19 05:21:08'),
(81, 'Fugiat aut deserunt nobis velit repudiandae.', 17, 14, '2023-06-16 14:36:00', '2023-06-16 14:36:00'),
(82, 'Quia explicabo non et eum.', 17, 3, '2023-12-30 13:15:33', '2023-12-30 13:15:33'),
(83, 'Ad laborum et praesentium sit.', 17, 8, '2023-02-25 03:47:18', '2023-02-25 03:47:18'),
(84, 'Debitis sit tempora ut ut repudiandae eius veniam qui.', 17, 16, '2023-12-04 05:13:21', '2023-12-04 05:13:21'),
(85, 'Fugit ut dolorum amet et.', 17, 2, '2023-12-24 01:56:30', '2023-12-24 01:56:30'),
(86, 'Voluptatem sapiente est at ipsam qui et.', 18, 1, '2023-04-26 18:35:36', '2023-04-26 18:35:36'),
(87, 'Culpa pariatur eos qui et deleniti saepe est.', 18, 6, '2023-04-25 16:40:55', '2023-04-25 16:40:55'),
(88, 'Sunt magni consequatur omnis unde quo non eius sit.', 18, 4, '2023-06-07 15:24:17', '2023-06-07 15:24:17'),
(89, 'Omnis magnam libero nihil aut repellendus quibusdam et.', 18, 10, '2023-10-29 06:09:13', '2023-10-29 06:09:13'),
(90, 'At odio consequatur omnis ipsa sapiente voluptatibus autem.', 18, 7, '2023-12-09 08:21:07', '2023-12-09 08:21:07'),
(91, 'Nemo consequatur eveniet ducimus quae officiis.', 19, 13, '2023-03-16 02:03:50', '2023-03-16 02:03:50'),
(92, 'Cupiditate laboriosam ducimus omnis fuga similique facilis.', 19, 20, '2023-08-05 04:28:04', '2023-08-05 04:28:04'),
(93, 'Illum in consequatur et quae.', 19, 11, '2023-11-12 00:51:23', '2023-11-12 00:51:23'),
(94, 'Sunt quos officia praesentium iste.', 19, 5, '2023-12-14 21:18:03', '2023-12-14 21:18:03'),
(95, 'Quia nihil deserunt voluptas fugiat iste rerum nobis accusantium.', 19, 19, '2023-07-11 12:10:04', '2023-07-11 12:10:04'),
(96, 'Facilis eum sint occaecati consequuntur.', 20, 9, '2023-07-08 18:24:30', '2023-07-08 18:24:30'),
(97, 'Mollitia qui et nulla corrupti qui.', 20, 18, '2024-01-05 10:56:57', '2024-01-05 10:56:57'),
(98, 'Ut nam id nemo commodi error.', 20, 16, '2023-10-09 15:46:28', '2023-10-09 15:46:28'),
(99, 'Vero veniam natus atque officia.', 20, 9, '2023-09-14 05:35:33', '2023-09-14 05:35:33'),
(100, 'Doloribus sint similique ut quam.', 20, 15, '2023-10-28 02:15:04', '2023-10-28 02:15:04');

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `posts` (`id`, `title`, `slug`, `excerpt`, `content`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'Et magni ea ipsam sed id qui quidem.', 'et-magni-ea-ipsam-sed-id-qui-quidem', 'Consectetur quo nam maiores. Autem et deserunt vero in nobis.\n\nImpedit facere sed voluptas ipsa aut. Et nostrum porro deserunt ut quaerat. Et distinct...', 'Consectetur quo nam maiores. Autem et deserunt vero in nobis.\n\nImpedit facere sed voluptas ipsa aut. Et nostrum porro deserunt ut quaerat. Et distinctio totam aut ut optio.\n\nQui est omnis sint cum sunt iste. Dolorem necessitatibus delectus sint consectetur est eum. Occaecati rerum magni non. Distinctio rem ut necessitatibus numquam tempora enim eius.', 'https://via.placeholder.com/640x480.png/00dd44?text=tenetur', '2023-11-19 02:41:56', '2023-11-19 02:41:56'),
(2, 'Voluptatibus animi animi corrupti qui cumque vel ratione.', 'voluptatibus-animi-animi-corrupti-qui-cumque-vel-ratione', 'Nobis atque expedita repellat quos vel. Error ullam et ea rem mollitia. Sunt illum nemo suscipit et ut pariatur. Nobis esse perferendis magnam distinc...', 'Nobis atque expedita repellat quos vel. Error ullam et ea rem mollitia. Sunt illum nemo suscipit et ut pariatur. Nobis esse perferendis magnam distinctio laboriosam omnis commodi.\n\nQui rerum id nam et numquam. Itaque fugit asperiores non maiores dignissimos cupiditate occaecati. Dolorem dolore nemo velit velit dignissimos dolor culpa numquam. Accusantium quia distinctio error labore id ratione et.\n\nRem maiores facilis ratione quos nemo a. Fugiat rem qui enim ex autem. Odit quas reiciendis non sapiente nihil odit fugiat.', 'https://via.placeholder.com/640x480.png/00ff33?text=eius', '2023-08-31 11:48:00', '2023-08-31 11:48:00'),
(3, 'Pariatur nulla quam illo aliquid omnis rem.', 'pariatur-nulla-quam-illo-aliquid-omnis-rem', 'Odio eius sint odit totam quos hic. Aut nihil voluptas minima qui non quia enim. Ea quasi beatae provident tempore. Non ratione deleniti error et volu...', 'Odio eius sint odit totam quos hic. Aut nihil voluptas minima qui non quia enim. Ea quasi beatae provident tempore. Non ratione deleniti error et voluptate repellendus.\n\nEst dolore eaque adipisci. Impedit sequi eveniet ipsa.\n\nMagni ut nam enim rerum. Natus aut aut neque vel possimus fuga doloremque cumque. Ex ea dolorum minus. Animi sit error quis quisquam.', 'https://via.placeholder.com/640x480.png/005533?text=sapiente', '2023-05-01 00:36:14', '2023-05-01 00:36:14'),
(4, 'Voluptatem debitis dolorum animi aut maxime.', 'voluptatem-debitis-dolorum-animi-aut-maxime', 'Dolor voluptatem facilis nam quo tempore. Rerum earum tempora reprehenderit autem voluptatem praesentium aspernatur eos. Distinctio cum dolore aut vol...', 'Dolor voluptatem facilis nam quo tempore. Rerum earum tempora reprehenderit autem voluptatem praesentium aspernatur eos. Distinctio cum dolore aut voluptas minus et fugiat.\n\nVel molestias et ut totam aspernatur. Natus qui laboriosam voluptate facilis ea. Pariatur odio nobis voluptatem dignissimos.\n\nTenetur veniam hic fuga labore unde quidem alias dolorem. Quaerat deserunt nemo odit est. Totam est eos nemo quidem. Error illo ad voluptatem.', 'https://via.placeholder.com/640x480.png/0055ee?text=voluptas', '2023-04-25 05:38:04', '2023-04-25 05:38:04'),
(5, 'Libero dignissimos dolorum tempora rem autem quo.', 'libero-dignissimos-dolorum-tempora-rem-autem-quo', 'Nemo sint aliquid officia optio molestiae. Veritatis perferendis deleniti ratione.\n\nDolore quibusdam mollitia tempora. Hic reprehenderit modi eos sit...', 'Nemo sint aliquid officia optio molestiae. Veritatis perferendis deleniti ratione.\n\nDolore quibusdam mollitia tempora. Hic reprehenderit modi eos sit autem autem necessitatibus. Voluptatibus voluptatem quo deleniti corporis quasi quaerat soluta. Sed eum velit quis nihil fugiat.\n\nSint illum voluptatum culpa quis enim. Illo tenetur aut rerum unde doloribus in. Laborum cupiditate est quia inventore.', 'https://via.placeholder.com/640x480.png/0099ee?text=accusamus', '2023-10-17 09:31:49', '2023-10-17 09:31:49'),
(6, 'Nemo nisi consectetur eveniet beatae doloribus.', 'nemo-nisi-consectetur-eveniet-beatae-doloribus', 'Quos sapiente nulla magni deleniti. Excepturi quae in alias ut ut eveniet. Error est repudiandae debitis dicta animi est.\n\nMolestiae optio et animi sa...', 'Quos sapiente nulla magni deleniti. Excepturi quae in alias ut ut eveniet. Error est repudiandae debitis dicta animi est.\n\nMolestiae optio et animi sapiente occaecati perspiciatis. Assumenda at vero sint et distinctio. Sit velit vel quos laboriosam.\n\nPossimus animi sed omnis modi. Omnis qui aut expedita repellendus voluptatibus molestias. Error minus et suscipit dolor est placeat.', 'https://via.placeholder.com/640x480.png/007755?text=minima', '2023-02-26 22:50:54', '2023-02-26 22:50:54'),
(7, 'Illum quaerat vero voluptatum veniam accusamus sed vero.', 'illum-quaerat-vero-voluptatum-veniam-accusamus-sed-vero', 'Et excepturi similique sit ab. Et nemo quaerat qui accusantium consequuntur. Odio sapiente sit eum. Minus eveniet quaerat labore aut.\n\nNihil accusanti...', 'Et excepturi similique sit ab. Et nemo quaerat qui accusantium consequuntur. Odio sapiente sit eum. Minus eveniet quaerat labore aut.\n\nNihil accusantium voluptates sint odio iure nihil maxime sed. Molestias eius qui molestiae qui consequatur consequuntur. Minima maiores iure odio optio perspiciatis quis quia odio. Recusandae modi exercitationem facilis ipsam et animi sint cum. Voluptatem ut assumenda ducimus laboriosam animi occaecati maiores.\n\nDolorum minima sequi rem at. Voluptatum deleniti quia inventore aut id. Atque voluptate est maxime.', 'https://via.placeholder.com/640x480.png/00ee66?text=et', '2023-08-18 00:03:05', '2023-08-18 00:03:05'),
(8, 'Expedita quaerat doloribus repudiandae ea.', 'expedita-quaerat-doloribus-repudiandae-ea', 'Veniam inventore non aut quo blanditiis et excepturi. Facilis quo perspiciatis dolorem ut ducimus omnis sed. Sit officiis nobis exercitationem. Sapien...', 'Veniam inventore non aut quo blanditiis et excepturi. Facilis quo perspiciatis dolorem ut ducimus omnis sed. Sit officiis nobis exercitationem. Sapiente et deserunt veniam sapiente vitae.\n\nFugit sequi quos temporibus corrupti. Et quos repellendus reiciendis autem. Animi soluta rerum eos temporibus maiores ea. Odit est quisquam debitis praesentium.\n\nUt eum harum perspiciatis vitae corrupti. Et quam beatae ut eius. Et at nam autem dolores aspernatur. Minima aspernatur quod qui quibusdam vero quis.', 'https://via.placeholder.com/640x480.png/0011dd?text=sint', '2023-05-09 21:11:33', '2023-05-09 21:11:33'),
(9, 'Magni reiciendis itaque sit sed iusto nesciunt.', 'magni-reiciendis-itaque-sit-sed-iusto-nesciunt', 'Possimus excepturi blanditiis et officia illum non. Soluta velit molestias minus velit ab. Necessitatibus et omnis modi quia blanditiis aliquam quos....', 'Possimus excepturi blanditiis et officia illum non. Soluta velit molestias minus velit ab. Necessitatibus et omnis modi quia blanditiis aliquam quos.\n\nAut ut voluptas reprehenderit reprehenderit totam voluptatem id dolor. Qui nihil mollitia et quo id. Sint possimus molestiae vel est pariatur deleniti. Quo minus voluptas facere ipsa et adipisci.\n\nLaboriosam ullam dolorem praesentium et. Velit iste hic sequi aut sunt quo rerum. Illum omnis ut aliquid tempora quae adipisci.', 'https://via.placeholder.com/640x480.png/008844?text=et', '2023-09-12 11:51:37', '2023-09-12 11:51:37'),
(10, 'Quis sed sed quia officiis ex facere voluptatem.', 'quis-sed-sed-quia-officiis-ex-facere-voluptatem', 'Natus aut ab ad cum. Est non architecto aut hic libero.\n\nIpsam quia aperiam et nesciunt facere. Ipsum ut est fugiat nulla id eligendi doloribus. Conse...', 'Natus aut ab ad cum. Est non architecto aut hic libero.\n\nIpsam quia aperiam et nesciunt facere. Ipsum ut est fugiat nulla id eligendi doloribus. Consectetur omnis dolorem vero ut officia reiciendis laudantium. Ratione dolores voluptates mollitia magni voluptates dolores.\n\nVeritatis qui ut dolores dolore velit. Ea accusantium nisi ut earum suscipit et. Sunt corporis dolores iusto quis sed ut.', 'https://via.placeholder.com/640x480.png/0055dd?text=aut', '2023-04-19 23:36:15', '2023-04-19 23:36:15'),
(11, 'Repellendus rerum totam omnis non qui quis.', 'repellendus-rerum-totam-omnis-non-qui-quis', 'Veniam aspernatur architecto dolor hic accusantium est quis. Impedit ab veniam asperiores est maxime. Ipsa eius possimus natus iure nemo. Repellendus...', 'Veniam aspernatur architecto dolor hic accusantium est quis. Impedit ab veniam asperiores est maxime. Ipsa eius possimus natus iure nemo. Repellendus veritatis laborum commodi necessitatibus eos omnis consequatur.\n\nProvident nisi saepe voluptate est perferendis laborum. Ducimus commodi aut quas at sapiente nostrum aut.\n\nNon omnis eaque cumque ea impedit mollitia natus dolorem. Magni est sapiente voluptate eum beatae officia. Quia eos omnis nemo velit. Iste error esse voluptatem molestiae non qui.', 'https://via.placeholder.com/640x480.png/0099bb?text=et', '2023-05-09 01:52:33', '2023-05-09 01:52:33'),
(12, 'Omnis cum voluptas eos dolor totam.', 'omnis-cum-voluptas-eos-dolor-totam', 'Hic est et vel nemo hic labore. Quo aut optio dolor iusto sit nisi. Provident officia non eum voluptates rerum.\n\nOccaecati aut asperiores omnis perspi...', 'Hic est et vel nemo hic labore. Quo aut optio dolor iusto sit nisi. Provident officia non eum voluptates rerum.\n\nOccaecati aut asperiores omnis perspiciatis eos ipsum. Magnam rerum harum saepe et.\n\nA voluptate aut nesciunt sunt. Officia eligendi iste facere aspernatur dolorem et. Consequatur similique et quis quasi architecto.', 'https://via.placeholder.com/640x480.png/009933?text=consequatur', '2023-12-18 06:35:23', '2023-12-18 06:35:23'),
(13, 'Qui ut qui nesciunt dicta debitis quos et eius.', 'qui-ut-qui-nesciunt-dicta-debitis-quos-et-eius', 'Beatae excepturi voluptas eos aut distinctio. Quas optio repellendus sapiente at. Aspernatur vero id molestias nostrum.\n\nQui voluptas sed itaque adipi...', 'Beatae excepturi voluptas eos aut distinctio. Quas optio repellendus sapiente at. Aspernatur vero id molestias nostrum.\n\nQui voluptas sed itaque adipisci sunt consequuntur occaecati sapiente. Nihil dicta suscipit magni placeat. Quo laborum iusto quos.\n\nId magnam officiis maiores dolorem ipsam omnis. Vero magni earum non tempora id tempore. Soluta nulla molestias temporibus quis. Corrupti veniam culpa ducimus rerum eos et et tempora.', 'https://via.placeholder.com/640x480.png/004444?text=qui', '2024-01-25 06:17:26', '2024-01-25 06:17:26'),
(14, 'Doloribus reprehenderit nobis voluptatem molestiae laudantium deleniti.', 'doloribus-reprehenderit-nobis-voluptatem-molestiae-laudantium-deleniti', 'Quis non culpa voluptas reiciendis quas qui. Ut ipsam consequatur sit doloribus et. Eligendi velit inventore qui. Quaerat iusto eveniet non assumenda...', 'Quis non culpa voluptas reiciendis quas qui. Ut ipsam consequatur sit doloribus et. Eligendi velit inventore qui. Quaerat iusto eveniet non assumenda esse sint.\n\nRerum dolorem consequatur consectetur eveniet voluptas et. Nulla aut quia sint ipsa. Consequatur fugiat quo ab autem. Quia et quod quam sunt dicta nihil.\n\nUllam rerum consectetur repellat voluptatem dolor. Ut rem dolorem neque molestiae. Qui ipsam consequatur excepturi dolorum.', 'https://via.placeholder.com/640x480.png/002255?text=repudiandae', '2023-11-03 00:58:36', '2023-11-03 00:58:36'),
(15, 'Est ad dolores fuga magni ut soluta.', 'est-ad-dolores-fuga-magni-ut-soluta', 'Odio ut repellat ullam veritatis non ipsum. Autem ut voluptas ipsa aut dolor explicabo. Eaque et deleniti molestiae. Occaecati nihil qui quia optio om...', 'Odio ut repellat ullam veritatis non ipsum. Autem ut voluptas ipsa aut dolor explicabo. Eaque et deleniti molestiae. Occaecati nihil qui quia optio omnis consectetur officiis.\n\nExpedita ut voluptas autem nemo. Sunt quaerat velit placeat consectetur corporis. Rerum consequatur animi asperiores ut. Ipsam totam similique ut.\n\nFugit cupiditate odio eaque. Aut eveniet pariatur sunt tempora. Eum repellendus excepturi dolorem esse. Voluptatem qui voluptatum quia ut ut fugit iusto.', 'https://via.placeholder.com/640x480.png/0066bb?text=eum', '2023-03-16 03:03:06', '2023-03-16 03:03:06'),
(16, 'Est magni voluptatum hic assumenda aspernatur.', 'est-magni-voluptatum-hic-assumenda-aspernatur', 'Soluta praesentium repellat velit nostrum quae suscipit. Ut sit quia sequi et consequatur possimus. Quidem tempore voluptatem minus facilis voluptatib...', 'Soluta praesentium repellat velit nostrum quae suscipit. Ut sit quia sequi et consequatur possimus. Quidem tempore voluptatem minus facilis voluptatibus est voluptate. Et eum atque et velit assumenda.\n\nVitae quasi ut ullam laudantium deleniti. Incidunt et odit rerum ratione. Voluptatem labore rem consequatur quia ut.\n\nNihil quasi ipsam omnis voluptas sit et modi. Dolore harum nam temporibus neque molestias repellat eum eligendi. Enim iste ut sit.', 'https://via.placeholder.com/640x480.png/0066bb?text=quia', '2024-01-31 13:52:50', '2024-01-31 13:52:50'),
(17, 'Dolores officiis similique sapiente vitae.', 'dolores-officiis-similique-sapiente-vitae', 'Aliquam repudiandae tenetur quas sit ut. Recusandae dolores sit magnam error dicta mollitia qui. Recusandae illo eos est dolores dolores. Quas nam fac...', 'Aliquam repudiandae tenetur quas sit ut. Recusandae dolores sit magnam error dicta mollitia qui. Recusandae illo eos est dolores dolores. Quas nam facilis omnis tempore maiores in aliquam.\n\nEst facere at voluptates ex cum tempora dicta. Et ut tempore in repellendus et odit id cum. Ea dolores aut laboriosam. Quam et quia sed excepturi.\n\nMagnam dolorum dolores perferendis sit nesciunt. Quisquam doloribus tenetur laboriosam iste enim officia. Error impedit nulla sit consectetur aperiam id et. Ipsa enim delectus velit praesentium animi amet.', 'https://via.placeholder.com/640x480.png/006699?text=illum', '2023-09-29 15:30:42', '2023-09-29 15:30:42'),
(18, 'Fugit vel occaecati ratione ut.', 'fugit-vel-occaecati-ratione-ut', 'Eius voluptas aspernatur dignissimos dicta ipsum optio perferendis. Quibusdam consequatur blanditiis vel natus. Accusantium occaecati rerum illum sit...', 'Eius voluptas aspernatur dignissimos dicta ipsum optio perferendis. Quibusdam consequatur blanditiis vel natus. Accusantium occaecati rerum illum sit beatae. Est facilis dolorem ab delectus qui perferendis numquam.\n\nOmnis delectus dolorem alias asperiores iusto voluptate. Repellendus et illum sed laudantium praesentium.\n\nQuidem est qui voluptas. Sed dolorem nihil velit voluptas ipsum dolorem. Vel eveniet reiciendis molestias omnis voluptates voluptatum fugit. Aspernatur fuga laboriosam distinctio voluptatem sit et suscipit.', 'https://via.placeholder.com/640x480.png/0055cc?text=consectetur', '2023-12-05 07:48:03', '2023-12-05 07:48:03'),
(19, 'Et autem beatae dicta qui dignissimos.', 'et-autem-beatae-dicta-qui-dignissimos', 'Aut laborum et magni. Amet natus repellendus sapiente repellendus et. Qui ea deserunt et consequatur expedita minus.\n\nEt debitis facere non sed volupt...', 'Aut laborum et magni. Amet natus repellendus sapiente repellendus et. Qui ea deserunt et consequatur expedita minus.\n\nEt debitis facere non sed voluptas assumenda ullam assumenda. Est ut culpa quasi beatae. Commodi odit aperiam earum voluptatum illo exercitationem dolore.\n\nVelit aut natus qui inventore assumenda. Autem iure deleniti doloremque dicta. Est pariatur eos nemo nobis consectetur aut. Dignissimos animi explicabo ut. Ut fugiat unde dolorem veritatis est illum accusamus.', 'https://via.placeholder.com/640x480.png/0000aa?text=incidunt', '2023-04-11 07:16:39', '2023-04-11 07:16:39'),
(20, 'Soluta sed sed rem ab ducimus dolore voluptatem.', 'soluta-sed-sed-rem-ab-ducimus-dolore-voluptatem', 'Ratione repellat nihil rerum est laborum dolorum cupiditate. Aut voluptatem aspernatur quam. Enim ab harum maxime in. Quis dolores temporibus facilis...', 'Ratione repellat nihil rerum est laborum dolorum cupiditate. Aut voluptatem aspernatur quam. Enim ab harum maxime in. Quis dolores temporibus facilis reprehenderit itaque perspiciatis.\n\nQuis corrupti et non sint. Temporibus voluptatem debitis explicabo tempore libero consequatur. Ducimus error sed laudantium. Vitae officia rem natus itaque.\n\nEa reiciendis eum est eius. Ex velit magnam inventore vel.', 'https://via.placeholder.com/640x480.png/0000aa?text=omnis', '2023-05-18 00:54:00', '2023-05-18 00:54:00');

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','default') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Margaret Dupont', 'baudry.adrienne@example.com', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(2, 'Pauline Lemoine', 'nlaporte@example.org', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(3, 'Jules Raynaud', 'alex.leroy@example.org', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(4, 'Emmanuel Etienne', 'william.roussel@example.net', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(5, 'Philippe Guillaume', 'langlois.benoit@example.net', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(6, 'Emmanuelle De Sousa', 'susanne.costa@example.com', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(7, 'Eugène du Leroy', 'benjamin76@example.org', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(8, 'Louis de la Pereira', 'lecoq.nath@example.net', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(9, 'Sophie Ollivier', 'michelle.baron@example.org', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(10, 'Marc Chevallier', 'jacques.riou@example.org', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(11, 'Laurent Pereira', 'gregoire15@example.net', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(12, 'Dominique Allain', 'genevieve94@example.com', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(13, 'Hugues Grondin', 'franck.charpentier@example.org', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(14, 'Claudine Guyon', 'marion.elise@example.org', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(15, 'Marine Renaud', 'guibert.jerome@example.org', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(16, 'Danielle-Claire Sanchez', 'yves10@example.com', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(17, 'Nathalie de Olivier', 'vlecoq@example.net', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(18, 'Geneviève Giraud', 'ldasilva@example.org', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(19, 'Martin Berger', 'kgregoire@example.net', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50'),
(20, 'Philippe Morin', 'qjulien@example.com', 'default', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2024-02-08 09:21:50', '2024-02-08 09:21:50');


ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);


ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;


ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
