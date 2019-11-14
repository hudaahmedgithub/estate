-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 02:01 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `pincode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(10) UNSIGNED NOT NULL,
  `bu_price` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `statu_id` int(11) NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(11) NOT NULL,
  `bu_square` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `bu_small_dis` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `bu_large_dis` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `bu_status` tinyint(1) NOT NULL DEFAULT 1,
  `bu_floor` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `bu_price`, `type_id`, `statu_id`, `image`, `country_id`, `bu_square`, `bu_small_dis`, `bu_large_dis`, `bu_status`, `bu_floor`, `user_id`, `created_at`, `updated_at`, `name`, `phone`, `email`) VALUES
(5, '2300', 1, 1, 'HsMbF1uV2rL4jk57LxmUQyn4sGpdE01VKauOfeWk.jpeg', 1, '100', 'shop in hoseny', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit Lorem ipsum dolor sit amet, consectetur adipisicing', 1, 1, 2, '2019-11-12 10:39:05', '2019-11-12 10:39:51', 'huda', 1009349157, 'huda@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'saloon', '2019-11-10 03:37:24', '2019-11-10 03:37:24'),
(2, 'sofra', '2019-11-10 04:29:40', '2019-11-10 04:29:40'),
(3, 'room', '2019-11-10 04:31:36', '2019-11-10 04:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'minia', NULL, NULL),
(2, 'fayoom', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'hi', '2019-11-11 01:58:55', '2019-11-11 01:58:55'),
(2, 3, 'hi huda', '2019-11-11 02:03:06', '2019-11-11 02:03:06'),
(3, 2, '3amla eh', '2019-11-11 02:03:46', '2019-11-11 02:03:46'),
(4, 3, 'elhamed allah', '2019-11-11 02:03:59', '2019-11-11 02:03:59'),
(5, 2, 'hh', '2019-11-12 05:49:36', '2019-11-12 05:49:36'),
(6, 3, 'ggg', '2019-11-12 05:50:15', '2019-11-12 05:50:15'),
(7, 3, 'ertyui', '2019-11-12 05:50:33', '2019-11-12 05:50:33'),
(8, 2, 'fff', '2019-11-12 05:50:44', '2019-11-12 05:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_resets_table', 1),
(39, '2019_10_24_144406_create_site_settings_table', 1),
(40, '2019_10_24_171308_create_bus_table', 1),
(41, '2019_10_25_143131_laratrust_setup_tables', 1),
(42, '2019_10_12_150009_create_products_table', 2),
(43, '2019_10_12_165204_create_categories_table', 2),
(44, '2019_10_12_172226_create_orders_product_table', 2),
(45, '2019_10_12_172239_create_orders_table', 2),
(46, '2019_10_12_172259_create_address_table', 2),
(47, '2019_10_12_172549_create_wishlist_table', 2),
(48, '2019_10_12_172638_create_recommends_table', 2),
(49, '2019_10_14_155824_create_order_products_table', 2),
(50, '2019_10_31_182538_create_operations_table', 2),
(51, '2019_11_02_014147_create_contacts_table', 2),
(52, '2019_11_04_011827_create_countries_table', 2),
(53, '2019_11_05_185150_create_messages_table', 2),
(54, '2019_10_12_124650_add_admin_column_to_users', 3),
(55, '2019_11_11_040607_create_musers_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `musers`
--

CREATE TABLE `musers` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `operation_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.png',
  `category_id` int(10) UNSIGNED NOT NULL,
  `small_dis` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `large_dis` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `musers`
--

INSERT INTO `musers` (`id`, `price`, `operation_id`, `image`, `category_id`, `small_dis`, `country_id`, `large_dis`, `status`, `user_id`, `name`, `email`, `phone`, `created_at`, `updated_at`, `stock`, `qty`) VALUES
(4, '23000', 1, 'OrgAUDVBUznjNijoSz0URiPbHh3YPCq3FqkYdZ4I.jpeg', 2, 'sofra', 1, 'helper functions that you can call anywhere within your application. They make you workflow convenient for working with arrays & object.', 1, 2, 'huda', 'huda@gmail.com', '01009349157', '2019-11-11 04:45:38', '2019-11-11 04:45:38', 3, 1),
(6, '200000', 2, 'C0rSGCvINhcTo3beS4tuVbVtHZEU3BNamz2X10aL.jpeg', 2, 'entreat', 1, 'helper functions that you can call anywhere within your application. They make you workflow convenient for working', 1, 3, 'aya', 'aya@gmail.com', '010012345998', '2019-11-11 06:16:51', '2019-11-12 08:49:20', 5, 1),
(7, '23000', 2, 'wMAWbRvMto6FrPK2qu7tT5zFb5cRzUKWTPW8i5x5.jpeg', 2, 'saloon', 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit Lorem ipsum dolor sit amet, consectetur adipisicing', 1, 2, 'huda', 'huda@gmail.com', '01009349157', '2019-11-12 08:02:58', '2019-11-12 08:04:58', 4, 2),
(8, '23000', 1, 'xik5iJkRN3ncuI6BKnVJeyEO4xdRgga0zti8HCCx.jpeg', 2, 'saloon', 1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit Lorem ipsum dolor sit amet, consectetur adipisicing', 1, 2, 'huda', 'huda@gmail.com', '0123456789', '2019-11-12 09:17:04', '2019-11-12 09:17:04', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `operations`
--

CREATE TABLE `operations` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `operations`
--

INSERT INTO `operations` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'new', '2019-11-10 22:00:00', '2019-11-10 22:00:00'),
(2, 'old', '2019-11-10 22:00:00', '2019-11-10 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_product`
--

CREATE TABLE `orders_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create_categories', 'Create Categories', 'Create Categories', '2019-11-09 03:42:43', '2019-11-09 03:42:43'),
(2, 'read_categories', 'Read Categories', 'Read Categories', '2019-11-09 03:42:43', '2019-11-09 03:42:43'),
(3, 'update_categories', 'Update Categories', 'Update Categories', '2019-11-09 03:42:43', '2019-11-09 03:42:43'),
(4, 'delete_categories', 'Delete Categories', 'Delete Categories', '2019-11-09 03:42:43', '2019-11-09 03:42:43'),
(5, 'create_products', 'Create Products', 'Create Products', '2019-11-09 03:42:43', '2019-11-09 03:42:43'),
(6, 'read_products', 'Read Products', 'Read Products', '2019-11-09 03:42:43', '2019-11-09 03:42:43'),
(7, 'update_products', 'Update Products', 'Update Products', '2019-11-09 03:42:43', '2019-11-09 03:42:43'),
(8, 'delete_products', 'Delete Products', 'Delete Products', '2019-11-09 03:42:43', '2019-11-09 03:42:43'),
(9, 'create_clients', 'Create Clients', 'Create Clients', '2019-11-09 03:42:43', '2019-11-09 03:42:43'),
(10, 'read_clients', 'Read Clients', 'Read Clients', '2019-11-09 03:42:44', '2019-11-09 03:42:44'),
(11, 'update_clients', 'Update Clients', 'Update Clients', '2019-11-09 03:42:44', '2019-11-09 03:42:44'),
(12, 'delete_clients', 'Delete Clients', 'Delete Clients', '2019-11-09 03:42:44', '2019-11-09 03:42:44'),
(13, 'create_orders', 'Create Orders', 'Create Orders', '2019-11-09 03:42:44', '2019-11-09 03:42:44'),
(14, 'read_orders', 'Read Orders', 'Read Orders', '2019-11-09 03:42:44', '2019-11-09 03:42:44'),
(15, 'update_orders', 'Update Orders', 'Update Orders', '2019-11-09 03:42:44', '2019-11-09 03:42:44'),
(16, 'delete_orders', 'Delete Orders', 'Delete Orders', '2019-11-09 03:42:44', '2019-11-09 03:42:44'),
(17, 'create_users', 'Create Users', 'Create Users', '2019-11-09 03:42:44', '2019-11-09 03:42:44'),
(18, 'read_users', 'Read Users', 'Read Users', '2019-11-09 03:42:44', '2019-11-09 03:42:44'),
(19, 'update_users', 'Update Users', 'Update Users', '2019-11-09 03:42:44', '2019-11-09 03:42:44'),
(20, 'delete_users', 'Delete Users', 'Delete Users', '2019-11-09 03:42:44', '2019-11-09 03:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `pro_code` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `pro_price` double(8,2) NOT NULL,
  `pro_info` text COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp1_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_code`, `pro_price`, `pro_info`, `stock`, `category_id`, `image`, `sp1_price`, `created_at`, `updated_at`) VALUES
(1, 'lenovo', '1234', 1999.00, 'information', 3, 1, 'default.png', 2000, '2019-11-10 03:38:32', '2019-11-10 03:38:32'),
(2, 'saloon', '123', 23000.00, 'information', 5, 2, '44040622_1874629552629894_7671250630802931712_n.jpg', 25000, '2019-11-10 04:30:57', '2019-11-10 04:30:57'),
(3, 'room', '1234', 12000.00, 'information', 3, 3, '37790617_1176611579185531_3607678756619026432_n.jpg', 15000, '2019-11-10 04:32:17', '2019-11-10 04:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `recommends`
--

CREATE TABLE `recommends` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'Super Admin', 'Super Admin', '2019-11-09 03:42:42', '2019-11-09 03:42:42'),
(2, 'admin', 'Admin', 'Admin', '2019-11-09 03:42:46', '2019-11-09 03:42:46');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `namesetting` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'rent'),
(2, 'own');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'flat'),
(2, 'shop');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(1, 'super', 'super_admin@app.com', '$2y$10$EeXNKLwyVsnabYjVqBAj7uUBp/fXwIbjLzhJNIf5cg05x3bdA7pOK', NULL, '2019-11-09 03:42:46', '2019-11-09 03:42:46', NULL),
(2, 'huda', 'huda@gmail.com', '$2y$10$q85IRFxe8.CS762fAorz8.obisLrisnfKbAw8DOxcaogZClvpygfK', NULL, '2019-11-10 02:47:51', '2019-11-10 02:47:51', 1),
(3, 'aya', 'aya@gmail.com', '$2y$10$LBrFBCZi415a8lGDmY8sRePi7xHWVFPj1Io9cQ7NNphAiRLz3CAgC', NULL, '2019-11-11 02:02:49', '2019-11-11 02:02:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pro_id`, `created_at`, `updated_at`) VALUES
(3, 2, 2, '2019-11-12 05:59:27', '2019-11-12 05:59:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musers`
--
ALTER TABLE `musers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operations`
--
ALTER TABLE `operations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_product`
--
ALTER TABLE `orders_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommends`
--
ALTER TABLE `recommends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `musers`
--
ALTER TABLE `musers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `operations`
--
ALTER TABLE `operations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_product`
--
ALTER TABLE `orders_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recommends`
--
ALTER TABLE `recommends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
