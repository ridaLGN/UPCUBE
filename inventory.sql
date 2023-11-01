-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 01 nov. 2023 à 16:04
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `inventory`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Cement', 1, 7, NULL, '2023-10-13 21:20:58', NULL),
(4, 'LED TV', 1, 7, NULL, '2023-10-13 21:21:18', NULL),
(5, 'Smart Phone', 1, 7, NULL, '2023-10-13 21:21:44', NULL),
(6, 'Steel', 1, 7, NULL, '2023-10-13 21:22:03', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `customer_image` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `name`, `customer_image`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Ali', 'upload/customer/1779024635574971.jpg', '0677554433', 'Ali@gmail.com', 'Morrocco', 1, 7, NULL, '2023-10-06 15:35:03', NULL),
(2, 'MohamedAli', 'upload/customer/1779024831976239.png', '0678789898', 'Mohamed@gmail.com', 'Morrocco', 1, 7, 7, '2023-10-06 15:38:10', '2023-10-06 15:41:55'),
(4, 'Mosstapha', 'upload/customer/1779025260821022.jpg', '0677554433', 'Mostapha@gmail.com', 'Morroco', 1, 7, NULL, '2023-10-06 15:44:59', NULL),
(5, 'Rida', 'upload/customer/1779680489333176.jpg', '0637587746', 'Rida@gmail.com', 'Tanger', 1, 7, NULL, '2023-10-13 21:19:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `date`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(4, '1', '2023-10-30', NULL, 0, 7, NULL, '2023-10-30 21:36:26', '2023-10-30 21:36:26'),
(5, '2', '2023-10-30', 'laast one', 0, 7, NULL, '2023-10-30 21:36:56', '2023-10-30 21:36:56'),
(6, '3', '2023-10-12', NULL, 0, 7, NULL, '2023-10-30 23:11:55', '2023-10-30 23:11:55'),
(7, '4', '2023-10-31', 'ert', 0, 7, NULL, '2023-10-30 23:12:58', '2023-10-30 23:12:58'),
(9, '6', '2023-10-31', NULL, 0, 7, NULL, '2023-10-30 23:19:17', '2023-10-30 23:19:17'),
(11, '8', '2023-10-31', NULL, 0, 7, NULL, '2023-10-30 23:42:18', '2023-10-30 23:42:18'),
(12, '9', '2023-10-31', NULL, 0, 7, NULL, '2023-10-30 23:49:35', '2023-10-30 23:49:35'),
(13, '10', '2023-10-31', NULL, 0, 7, NULL, '2023-10-31 00:01:13', '2023-10-31 00:01:13'),
(14, '11', '2023-10-31', NULL, 0, 7, NULL, '2023-10-31 00:13:47', '2023-10-31 00:13:47'),
(15, '12', '2023-10-31', NULL, 0, 7, NULL, '2023-10-31 00:15:15', '2023-10-31 00:15:15'),
(16, '13', '2023-10-31', NULL, 0, 7, NULL, '2023-10-31 00:16:58', '2023-10-31 00:16:58'),
(18, '14', '2023-10-31', 'how', 0, 7, NULL, '2023-10-31 09:05:00', '2023-10-31 09:05:00'),
(20, '15', '2023-10-31', NULL, 0, 7, NULL, '2023-10-31 19:15:01', '2023-10-31 19:15:01');

-- --------------------------------------------------------

--
-- Structure de la table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `selling_qty` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `date`, `invoice_id`, `category_id`, `product_id`, `selling_qty`, `unit_price`, `selling_price`, `status`, `created_at`, `updated_at`) VALUES
(1, '2023-10-30', 4, 5, 9, 2, 4567, 9134, 1, '2023-10-30 21:36:26', '2023-10-30 21:36:26'),
(2, '2023-10-30', 5, 3, 6, 1, 30000, 30000, 1, '2023-10-30 21:36:56', '2023-10-30 21:36:56'),
(3, '2023-10-12', 6, 3, 6, 1, 3344, 3344, 1, '2023-10-30 23:11:55', '2023-10-30 23:11:55'),
(4, '2023-10-31', 7, 5, 8, 1, 444, 444, 1, '2023-10-30 23:12:58', '2023-10-30 23:12:58'),
(6, '2023-10-31', 9, 5, 8, NULL, NULL, 0, 1, '2023-10-30 23:19:17', '2023-10-30 23:19:17'),
(8, '2023-10-31', 11, 5, 8, NULL, NULL, 0, 1, '2023-10-30 23:42:18', '2023-10-30 23:42:18'),
(9, '2023-10-31', 12, 5, 8, 1, 132675, 132675, 1, '2023-10-30 23:49:35', '2023-10-30 23:49:35'),
(10, '2023-10-31', 13, 5, 8, NULL, NULL, 0, 1, '2023-10-31 00:01:13', '2023-10-31 00:01:13'),
(11, '2023-10-31', 14, 5, 8, 2, 45, 90, 1, '2023-10-31 00:13:47', '2023-10-31 00:13:47'),
(12, '2023-10-31', 15, 5, 8, 1, 34, 34, 1, '2023-10-31 00:15:15', '2023-10-31 00:15:15'),
(13, '2023-10-31', 16, 5, 8, 4, 5, 20, 1, '2023-10-31 00:16:58', '2023-10-31 00:16:58'),
(15, '2023-10-31', 18, 5, 9, 2, 300, 600, 1, '2023-10-31 09:05:00', '2023-10-31 09:05:00'),
(16, '2023-10-31', 20, 3, 5, 21, 3, 63, 1, '2023-10-31 19:15:01', '2023-10-31 19:15:01');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_05_151328_create_suppliers_table', 2),
(7, '2023_10_06_154524_create_customers_table', 3),
(8, '2023_10_12_204153_create_units_table', 4),
(9, '2023_10_13_104451_create_categories_table', 5),
(10, '2023_10_13_165406_create_purchases_table', 6),
(11, '2023_10_13_195657_create_products_table', 7),
(12, '2023_10_15_195552_create_purchases_table', 8),
(13, '2023_10_16_234535_create_invoices_table', 9),
(14, '2023_10_16_235108_create_invoice_details_table', 9),
(15, '2023_10_16_235738_create_payments_table', 9),
(16, '2023_10_17_000134_create_payment_details_table', 9),
(17, '2023_10_30_223148_create_invoice_details_table', 10);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `paid_status` varchar(51) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `customer_id`, `paid_status`, `paid_amount`, `due_amount`, `total_amount`, `discount_amount`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, 'partial_paid', NULL, 9134, 9134, NULL, '2023-10-30 21:36:26', '2023-10-30 21:36:26'),
(2, 5, 2, 'full_due', 0, 30000, 30000, NULL, '2023-10-30 21:36:56', '2023-10-30 21:36:56'),
(3, 6, 1, 'full_due', 0, 3344, 3344, NULL, '2023-10-30 23:11:55', '2023-10-30 23:11:55'),
(4, 7, 5, 'partial_paid', 22, 422, 444, NULL, '2023-10-30 23:12:58', '2023-10-30 23:12:58'),
(6, 9, NULL, NULL, NULL, NULL, 0, NULL, '2023-10-30 23:19:17', '2023-10-30 23:19:17'),
(8, 11, NULL, NULL, NULL, NULL, 0, NULL, '2023-10-30 23:42:18', '2023-10-30 23:42:18'),
(9, 12, 4, 'full_due', 0, 132675, 132675, NULL, '2023-10-30 23:49:35', '2023-10-30 23:49:35'),
(10, 13, NULL, NULL, NULL, NULL, 0, NULL, '2023-10-31 00:01:13', '2023-10-31 00:01:13'),
(11, 14, NULL, NULL, NULL, NULL, 90, NULL, '2023-10-31 00:13:47', '2023-10-31 00:13:47'),
(12, 15, NULL, NULL, NULL, NULL, 34, NULL, '2023-10-31 00:15:15', '2023-10-31 00:15:15'),
(13, 16, 4, 'full_due', 0, 20, 20, NULL, '2023-10-31 00:16:58', '2023-10-31 00:16:58'),
(15, 18, 4, 'partial_paid', 22, 578, 600, NULL, '2023-10-31 09:05:00', '2023-10-31 09:05:00'),
(16, 20, 2, 'full_due', 0, 63, 63, NULL, '2023-10-31 19:15:01', '2023-10-31 19:15:01');

-- --------------------------------------------------------

--
-- Structure de la table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payment_details`
--

INSERT INTO `payment_details` (`id`, `invoice_id`, `current_paid_amount`, `date`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, '2023-10-30', NULL, '2023-10-30 21:36:26', '2023-10-30 21:36:26'),
(2, 5, 0, '2023-10-30', NULL, '2023-10-30 21:36:56', '2023-10-30 21:36:56'),
(3, 6, 0, '2023-10-12', NULL, '2023-10-30 23:11:55', '2023-10-30 23:11:55'),
(4, 7, 22, '2023-10-31', NULL, '2023-10-30 23:12:58', '2023-10-30 23:12:58'),
(6, 9, NULL, '2023-10-31', NULL, '2023-10-30 23:19:17', '2023-10-30 23:19:17'),
(8, 11, NULL, '2023-10-31', NULL, '2023-10-30 23:42:18', '2023-10-30 23:42:18'),
(9, 12, 0, '2023-10-31', NULL, '2023-10-30 23:49:35', '2023-10-30 23:49:35'),
(10, 13, NULL, '2023-10-31', NULL, '2023-10-31 00:01:13', '2023-10-31 00:01:13'),
(11, 14, NULL, '2023-10-31', NULL, '2023-10-31 00:13:47', '2023-10-31 00:13:47'),
(12, 15, NULL, '2023-10-31', NULL, '2023-10-31 00:15:15', '2023-10-31 00:15:15'),
(13, 16, 0, '2023-10-31', NULL, '2023-10-31 00:16:58', '2023-10-31 00:16:58'),
(15, 18, 22, '2023-10-31', NULL, '2023-10-31 09:05:00', '2023-10-31 09:05:00'),
(16, 20, 0, '2023-10-31', NULL, '2023-10-31 19:15:01', '2023-10-31 19:15:01');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `supplier_id`, `unit_id`, `category_id`, `name`, `quantity`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 5, 4, 6, 'bosundora Steel', 0, 1, 7, NULL, '2023-10-13 21:23:30', NULL),
(4, 6, 4, 6, 'KSRM Steel', 0, 1, 7, NULL, '2023-10-13 21:24:20', NULL),
(5, 7, 4, 3, 'bosundora cement', 0, 1, 7, NULL, '2023-10-13 21:25:06', NULL),
(6, 8, 2, 3, 'Holcim cement', 0, 1, 7, NULL, '2023-10-13 21:25:58', NULL),
(7, 9, 2, 3, 'Madina Cement', 0, 1, 7, NULL, '2023-10-13 21:26:36', NULL),
(8, 5, 4, 5, 'iphone 15 Pro Max', 0, 1, 7, NULL, '2023-10-13 21:27:21', NULL),
(9, 6, 4, 5, 'Sumsung s22', 0, 1, 7, NULL, '2023-10-13 21:28:18', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `category_id`, `product_id`, `purchase_no`, `date`, `description`, `buying_qty`, `unit_price`, `buying_price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 9, 3, 6, 'r-0001', '2023-09-27', 'Nice Product', 1, 250, 250, 0, 7, NULL, '2023-10-16 12:15:15', '2023-10-16 12:15:15'),
(2, 5, 5, 8, 'M-0002', '2023-09-27', 'Nice Product', 2, 1000, 2000, 0, 7, NULL, '2023-10-16 12:15:15', '2023-10-16 12:15:15');

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 'MohamedAmin', '0610203040', 'Mohamed@gmail.com', 'Marrakech, Sinko', 1, 7, NULL, '2023-10-13 21:12:03', NULL),
(6, 'Oussama', '0620104030', 'Oussama@gmail.com', 'Marrakech les portes de guiliz', 1, 7, NULL, '2023-10-13 21:12:57', NULL),
(7, 'Simo', '0630402010', 'Simo@gmail.com', 'Casablanca', 1, 7, NULL, '2023-10-13 21:15:06', NULL),
(8, 'Abdwahab', '0690603000', 'Abdwahab@gmail.com', 'Rabat', 1, 7, NULL, '2023-10-13 21:15:55', NULL),
(9, 'Rida', '0677553322', 'Rida@gmail.com', 'Tanger', 1, 7, NULL, '2023-10-13 21:17:02', NULL),
(10, 'chaimae', '0634567890', 'chaimae@gmail.com', 'sidiIfni', 1, 7, NULL, '2023-10-30 15:43:02', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'GM', 1, 7, NULL, '2023-10-12 20:26:38', NULL),
(2, 'KG', 1, 7, NULL, '2023-10-12 20:26:45', NULL),
(4, 'PCG', 1, 7, NULL, '2023-10-12 20:47:15', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@gmail.com', '2022-03-09 17:16:01', '$2y$10$rGET1JC4RHIml.EboWuABOxzgNGUB9EQZLTQsjOf2NkkKiOKlCEOi', 'user', '202203112055download.jpg', 'AEe7IjaEFf1qlITAqy3Ehgh0KQKtWPb7AFtyXynJ7IECGEaNKLlcXczBWYsS', '2022-03-09 16:27:03', '2022-03-11 15:08:45'),
(2, 'Kazi', 'kazi@gmail.com', '2022-03-09 17:14:32', '$2y$10$cdhHGJTOuPvl5jIlTKInWuk57U0fOnWuTpX8S4IU47H1jOYiMTa4C', 'kazi', '202203112033ariyan.jpg', NULL, '2022-03-09 17:12:44', '2022-03-11 15:57:21'),
(4, 'Demo', 'demo@gmail.com', '2022-03-09 17:54:03', '$2y$10$Ne1R842eJJw7VpVZ.jv31ulN12pHgAVKvx9JiB1nNfABYU/EwbvVy', 'demo', NULL, NULL, '2022-03-09 17:53:48', '2022-03-09 17:54:03'),
(5, 'TEST', 'test@gmail.com', '2022-03-10 14:14:10', '$2y$10$6pvyEf0zI1lnLrZLA8f2sO36IaTsRJizUrpT9Tp1IrZKRlZlCAYEO', 'test', NULL, NULL, '2022-03-10 13:52:07', '2022-03-10 14:14:10'),
(6, 'rida', 'rida@gmail.com', NULL, '$2y$10$0BjYg8OrTFduquIhJq5x5e63bK9Qh6aWOZB.ujSp41j7FhQOU4k/e', 'rida', NULL, NULL, '2023-09-24 22:10:03', '2023-09-24 22:10:03'),
(7, 'rida', 'ridalagnaoui@gmail.com', NULL, '$2y$10$k/3Hze/lRaj.P3G.fp3IxOxSwoJUXKFvwWB9LputPI/GNR8VlS97.', 'lagnaoui', NULL, NULL, '2023-10-05 14:04:38', '2023-10-05 14:04:38'),
(8, 'noaman', 'noaman@gmail.com', NULL, '$2y$10$8C./Y1DUNcCetsqJBqzApOQh50ChfCyLkAI8GOVKy1PB4H6W.4n36', 'noaman', NULL, NULL, '2023-10-16 21:58:35', '2023-10-16 21:58:35');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
