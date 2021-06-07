-- Adminer 4.7.8 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `products_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `carts` (`id`, `users_id`, `products_id`, `created_at`, `updated_at`) VALUES
(15,	3,	8,	'2021-04-29 01:09:30',	'2021-04-29 01:09:30');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2014_10_12_200000_add_two_factor_columns_to_users_table',	1),
(4,	'2019_08_19_000000_create_failed_jobs_table',	1),
(5,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(6,	'2021_03_31_144944_create_sessions_table',	1),
(7,	'2021_04_01_125229_add_roles_to_users_table',	2),
(8,	'2021_04_01_125942_create_products_table',	3),
(9,	'2021_04_01_130451_create_product_galleries_table',	4),
(10,	'2021_04_01_131000_create_carts_table',	5),
(11,	'2021_04_01_133025_create_transactions_table',	6),
(12,	'2021_04_01_133712_create_transaction_items_table',	7),
(13,	'2021_04_29_070027_create_transactions_table',	8);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `price`, `description`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1,	'Celana',	200000,	'<p>Mantap</p>',	'celana',	'2021-04-28 07:52:33',	NULL,	'2021-04-28 07:52:33'),
(2,	'Rown',	150000,	'<p>Baju Distro&nbsp;</p>',	'rown',	NULL,	'2021-04-07 05:52:57',	'2021-04-07 05:52:57'),
(3,	'Masker Murah',	12000,	'<p>Masker Sensi Box</p>',	'masker-murah',	NULL,	'2021-04-07 05:53:59',	'2021-04-07 05:53:59'),
(4,	'Koko',	123456,	'<p>Baju Muslim</p>',	'koko',	NULL,	'2021-04-07 06:39:04',	'2021-04-07 06:39:04'),
(5,	'Jas Hujan',	210000,	'<p>mantol hujan</p>',	'jas-hujan',	NULL,	'2021-04-07 06:39:33',	'2021-04-07 06:39:33'),
(6,	'Baju Tidur',	57500,	'<p>Pijama</p>',	'baju-tidur',	'2021-04-07 06:56:56',	'2021-04-07 06:39:59',	'2021-04-07 06:56:56'),
(7,	'Kursi Gaming',	650000,	'<p>Kursi Murah</p>',	'kursi-gaming',	NULL,	'2021-04-08 07:39:25',	'2021-04-11 23:38:54'),
(8,	'Lukisan',	123321,	'<p>lukisan dinding</p>',	'lukisan',	NULL,	'2021-04-25 22:58:54',	'2021-04-25 22:58:54'),
(9,	'HP',	3200000,	'<p>HandPhone</p>',	'hp',	'2021-04-28 07:54:55',	'2021-04-28 07:54:11',	'2021-04-28 07:54:55'),
(10,	'HandPhone',	3500000,	'<p><em>Please note that this A2412 iPhone 12 Pro Max is compatible with 5G NR bands n1, n2, n3, n5, n7, n8, n12, n20, n25, n28, n38, n40, n41, n66, n77, n78, and n79. It is not compatible with 5G NR band n71 (600 MHz) or 5G NR mmWave bands n260 and n261. It is sold in mainland China, Hong Kong, and Macao. It is technically compatible with carriers around the world, but unlike other iPhone 12 models, it lacks eSIM capability and instead supports dual nano-SIMs.</em></p>',	'handphone',	NULL,	'2021-04-28 08:00:48',	'2021-04-29 07:16:20');

DROP TABLE IF EXISTS `product_galleries`;
CREATE TABLE `product_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` bigint(20) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `product_galleries` (`id`, `products_id`, `url`, `is_featured`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7,	1,	'public/gallery/3fC9jisEbmZJBTOHl70VRMdzNNPKUBq1AxGVPlWy.jpg',	0,	'2021-04-25 23:20:30',	'2021-04-25 23:19:03',	'2021-04-25 23:20:30'),
(8,	1,	'public/gallery/ZLSj8wcbVw76HpKr1eWDxwAenfZozp6RosxWmUT2.jpg',	0,	'2021-04-28 07:53:00',	'2021-04-25 23:21:01',	'2021-04-28 07:53:00'),
(9,	8,	'public/gallery/jxLDHkpm8HzulV2vhxRc20cQZMMqHtbj2W1Vhr45.jpg',	0,	NULL,	'2021-04-28 07:49:36',	'2021-04-28 07:49:36'),
(10,	7,	'public/gallery/NTrVtOIam7RhRqIf0WqUL1Pl40RApnYzy9wU9M4H.jpg',	0,	NULL,	'2021-04-28 07:50:54',	'2021-04-28 07:50:54'),
(11,	5,	'public/gallery/yy4xIUCXoD2VQYDGQtT76rtqn8chGacdOw0r6kgY.jpg',	0,	NULL,	'2021-04-28 07:52:11',	'2021-04-28 07:52:11'),
(12,	5,	'public/gallery/vq2Xqk5wm63CSh1PIUqm82RwMFNPsZoOVXF9TSne.jpg',	0,	NULL,	'2021-04-28 07:52:11',	'2021-04-28 07:52:11'),
(13,	9,	'public/gallery/fNNxwIaHSVyuFCJgaLQl5WTEY74J53z2umtZyyJi.jpg',	0,	'2021-04-28 07:55:10',	'2021-04-28 07:54:27',	'2021-04-28 07:55:10'),
(14,	9,	'public/gallery/AoQVZCjglAAR9TcUuyfEF169vf1CLElhtHtjqYVB.jpg',	0,	'2021-04-28 07:55:15',	'2021-04-28 07:54:27',	'2021-04-28 07:55:15'),
(15,	2,	'public/gallery/68Y47Wtbp891rXxNPV3JqbxwdX6TMlhmtggogM8R.jpg',	0,	NULL,	'2021-04-28 08:00:59',	'2021-04-28 08:00:59'),
(16,	3,	'public/gallery/y4cC93bElHYE7BA0VsqthlCErrAiTeWgJu7WzR6B.jpg',	0,	NULL,	'2021-04-28 08:01:18',	'2021-04-28 08:01:18'),
(17,	4,	'public/gallery/iV47WMH25G02LYNMRWN1Qd3PPf5BnsbJfVgJlG0M.jpg',	0,	NULL,	'2021-04-28 08:01:34',	'2021-04-28 08:01:34'),
(18,	10,	'public/gallery/2vaTofKogUl7OKWuKuhLuzzyU4xwM5hJrF6Oo7tw.jpg',	0,	NULL,	'2021-04-28 08:01:58',	'2021-04-28 08:01:58'),
(19,	10,	'public/gallery/CiNEITkccjHh6y8jNMphmtm7riCPEaqyWUhIMQQJ.jpg',	0,	NULL,	'2021-04-28 08:01:58',	'2021-04-28 08:01:58');

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3DD3cGiuSxLgjlKCF9akPMilNrRtQdai24kKSlnO',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36 Edg/90.0.818.56',	'YToyOntzOjY6Il90b2tlbiI7czo0MDoibWhicDV5bEN0SkZpclhKT0tzRHJYdEdOZXdsd25DSnE5NXlEZkFhViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',	1620602096),
('9iugN8NUt3h63ZrjvBoVE8cEFsRXeSAOem5yFvM7',	NULL,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36 Edg/91.0.864.37',	'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjhwc0pYZDdoM0tvc0gxdTVGOVNhZDA3djl0cE5PZGdpaE84aWZwWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9sdXhzcGFjZS50ZXN0Ijt9fQ==',	1622729028),
('IUpex1ru6NHXWzBasR5WzfVDGdFNXtYkVhdTutCp',	1,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36 Edg/91.0.864.37',	'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiS1pmOGFHenZsd05Bekd3N3lNUEpLY09Zam96TDhVbGRnV3pxOGE0cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9sdXhzcGFjZS50ZXN0L2Rhc2hib2FyZC9wcm9kdWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJC5jY3FrVFp5NGNEMG9teE5MWDBkdmV1dGIxY2I4Z0ZpUUNuYnlLT0FsMW52RXpSdDhDLjJPIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQuY2Nxa1RaeTRjRDBvbXhOTFgwZHZldXRiMWNiOGdGaVFDbmJ5S09BbDFudkV6UnQ4Qy4yTyI7fQ==',	1623025537),
('ThezSSn8CD2880Y4DCD4DsERcg9nK08oTWBgi7Lp',	1,	'127.0.0.1',	'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36 Edg/90.0.818.49',	'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiMmNXN01rUU5QWVV0RlNUdUNEbXRDN2xXYTRQeVdYZXZBMWN6bER4TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjA6Imh0dHA6Ly9sdXhzcGFjZS50ZXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQuY2Nxa1RaeTRjRDBvbXhOTFgwZHZldXRiMWNiOGdGaVFDbmJ5S09BbDFudkV6UnQ4Qy4yTyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkLmNjcWtUWnk0Y0Qwb214TkxYMGR2ZXV0YjFjYjhnRmlRQ25ieUtPQWwxbnZFelJ0OEMuMk8iO30=',	1619707284);

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MIDTRANS',
  `payment_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` bigint(20) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transactions` (`id`, `users_id`, `name`, `email`, `address`, `phone`, `font`, `courier`, `payment`, `payment_url`, `total_price`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6,	1,	'adamibnu',	'adamibnu157@gmail.com',	'Karanganyar',	'088806657881',	NULL,	NULL,	'MIDTRANS',	'https://app.sandbox.midtrans.com/snap/v2/vtweb/27b8cf15-e92c-47aa-8475-6ef20a3b150e',	3500000,	'PENDING',	NULL,	'2021-04-29 07:12:57',	'2021-04-29 07:12:57');

DROP TABLE IF EXISTS `transaction_items`;
CREATE TABLE `transaction_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` bigint(20) unsigned NOT NULL,
  `products_id` bigint(20) unsigned NOT NULL,
  `transactions_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `transaction_items` (`id`, `users_id`, `products_id`, `transactions_id`, `created_at`, `updated_at`) VALUES
(8,	2,	8,	9,	'2021-04-28 23:41:44',	'2021-04-28 23:41:44'),
(9,	3,	8,	10,	'2021-04-28 23:48:28',	'2021-04-28 23:48:28'),
(10,	1,	10,	1,	'2021-04-29 00:05:18',	'2021-04-29 00:05:18'),
(11,	1,	8,	2,	'2021-04-29 07:10:36',	'2021-04-29 07:10:36'),
(12,	1,	10,	2,	'2021-04-29 07:10:36',	'2021-04-29 07:10:36'),
(13,	1,	10,	2,	'2021-04-29 07:10:36',	'2021-04-29 07:10:36'),
(14,	1,	10,	6,	'2021-04-29 07:12:57',	'2021-04-29 07:12:57');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2021-06-07 13:12:23
