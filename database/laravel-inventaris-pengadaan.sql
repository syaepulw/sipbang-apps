-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2025 at 01:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Meja', 'meja', '7HDpnzQSFjYVh4ACJm9vvZxoXcXPl7ivuDix5FHJ.png', '2025-06-29 20:11:56', '2025-06-29 20:11:56'),
(2, 'Kursi', 'kursi', '1ar0vzLqq8DkwxNNKHeSfB8ts9mo1S2cP0gTyoVp.jpg', '2025-07-10 20:47:58', '2025-07-10 20:47:58'),
(3, 'Laptop', 'laptop', 'IIn85mvt22Uc3EDl8bG9kkJZ3OKtkm1C3QY1KZ58.jpg', '2025-07-10 21:00:15', '2025-07-10 21:00:15'),
(4, 'Monitor Gaming', 'monitor-gaming', 'hnCS1Sac6gSDMmhH4ARYDHm7PIZYYoo0ivvedqF1.jpg', '2025-07-14 20:07:51', '2025-07-14 20:07:51'),
(5, 'Mouse Gaming', 'mouse-gaming', 'tlTG5aeUfvyLsBpzA16UUYxggps6YznhxAu73vVx.png', '2025-07-16 20:35:12', '2025-07-16 20:35:12'),
(6, 'PC 1 set', 'pc-1-set', 'M4Ra17ukqRobh7QRtYczmndIliKUwPo3qKBfqhcu.jpg', '2025-07-16 20:49:02', '2025-07-16 20:49:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_19_021700_create_categories_table', 1),
(7, '2022_05_20_152415_create_suppliers_table', 1),
(8, '2022_05_21_115535_create_products_table', 1),
(9, '2022_06_02_023929_create_carts_table', 1),
(10, '2022_06_02_083045_create_transactions_table', 1),
(11, '2022_06_02_083409_create_transaction_details_table', 1),
(12, '2022_06_05_130429_create_vehicles_table', 1),
(13, '2022_06_06_032916_create_rents_table', 1),
(14, '2022_06_08_010711_create_permission_tables', 1),
(15, '2022_06_08_025026_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'Menunggu Konfirmasi',
  `image` varchar(255) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `quantity`, `status`, `image`, `unit`, `created_at`, `updated_at`) VALUES
(1, 2, 'Monitor', 2, 'Barang Telah Tersedia', 'w6aFGsNnjF3B4Wg1wsdwl285PgjvifUf6IUJyVKs.png', 'Unit', '2025-06-29 20:15:27', '2025-06-29 20:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'index-dashboard', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(2, 'index-product', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(3, 'create-product', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(4, 'delete-product', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(5, 'update-product', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(6, 'index-category', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(7, 'create-category', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(8, 'delete-category', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(9, 'update-category', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(10, 'index-supplier', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(11, 'create-supplier', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(12, 'delete-supplier', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(13, 'update-supplier', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(14, 'index-vehicle', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(15, 'create-vehicle', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(16, 'delete-vehicle', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(17, 'update-vehicle', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(18, 'index-stock', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(19, 'create-stock', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(20, 'index-permission', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(21, 'create-permission', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(22, 'delete-permission', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(23, 'update-permission', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(24, 'index-role', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(25, 'create-role', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(26, 'delete-role', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(27, 'update-role', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(28, 'index-user', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(29, 'create-user', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(30, 'delete-user', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(31, 'update-user', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(32, 'index-order', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(33, 'create-order', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(34, 'index-rent', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(35, 'create-rent', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(36, 'index-transaction', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(37, 'create-transaction', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `supplier_id`, `name`, `slug`, `description`, `quantity`, `image`, `unit`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Meja Komputer', 'meja-komputer', 'Meja Komputer Premium', 5, 'sOQZveKED81dc94RXPaEFWQNDzcaG8jJG8NFtQPk.png', 'Unit', '2025-06-29 20:12:45', '2025-06-29 20:14:48'),
(3, 1, 3, 'Meja Gaming 1', 'meja-gaming-1', 'Ciptakan ruang kerja atau gaming yang terorganisir dengan baik dan nyaman menggunakan TaffHOME Meja Komputer. Meja ini dirancang untuk memberikan kenyamanan maksimal serta fungsionalitas yang luar biasa bagi pengguna komputer, laptop, dan perangkat lainnya. Dengan desain yang modern dan minimalis, meja ini tidak hanya menambah estetika ruangan Anda tetapi juga meningkatkan produktivitas Anda dalam bekerja, belajar, atau bermain game. Hadir dengan lubang kabel yang inovatif dan struktur yang kokoh, TaffHOME adalah solusi sempurna untuk kebutuhan meja multifungsi Anda.', 65, 'EaeaaqjD9m4SlIV2NdRZb4AWI7lGzCwx0OmfLdeM.jpg', 'Unit', '2025-07-10 20:42:55', '2025-07-17 16:28:41'),
(4, 1, 3, 'Meja Gaming 2', 'meja-gaming-2', 'TaffHOME Meja Komputer Gaming Laptop PC Desk Frame with Cable Hole 120x60cm - FH-3 - Black', 60, 'Ki4dvKYeOQOyu6opiOvGDcaWEjfwDskxsxRbLN9T.jpg', 'Unit', '2025-07-10 20:44:46', '2025-07-17 16:24:29'),
(5, 2, 3, 'Homedoki Kursi Gaming Pro 1', 'homedoki-kursi-gaming-kursi-kantor-kursi-putar-kursi-ergonomis-kursi-kerja', 'Homedoki Kursi Gaming / Kursi Kantor / Kursi Putar/ Kursi Ergonomis / Kursi Kerja', 80, '7wSQjTOqF1nfJVXLNk9HIiwe61nO4RWuoM2UGsjH.jpg', 'Unit', '2025-07-10 20:49:04', '2025-07-17 16:24:34'),
(6, 2, 3, 'Kursi Informa Trevor Kursi Gaming', 'kursi-informa-trevor-kursi-gaming', 'Kursi Informa Trevor Kursi Gaming Pro Series 2', 60, 'xCYBRlQaBlSS150H9B9y8l6uQgZF4yp13I62rtwl.png', 'Unit', '2025-07-10 20:51:49', '2025-07-17 16:22:24'),
(7, 2, 3, 'KURSI GAMING DA RACING E ROYAL', 'kursi-gaming-da-racing-e-royal', 'KURSI GAMING DA RACING E ROYAL Premium series Gaming Pro', 65, '5dteacU1HHovf4vdmTnmkb73u25hW6NQHlKb0gAm.jpg', 'Unit', '2025-07-10 20:52:52', '2025-07-17 16:22:31'),
(8, 2, 1, 'Kursi Kantor', 'kursi-kantor', 'Kursi Kantor Taktikal 1', 55, 'd1I458DB8y5HebqF0AKOQUArvIajhhGPS6PxkJs9.jpg', 'Unit', '2025-07-10 21:01:36', '2025-07-17 16:22:35'),
(9, 3, 3, 'Laptop Gaming Acer dengan NVIDIA GeForce RTX 3000 Series', 'laptop-gaming-acer-dengan-nvidia-geforce-rtx-3000-series', 'Laptop Gaming Acer dengan NVIDIA GeForce RTX 3000 Series Pro Mekanikal', 80, 'xq6HkwmTXP1yFbrjql7LWeMKlQchTqvdjR1kRNEQ.png', 'Unit', '2025-07-10 21:02:41', '2025-07-17 16:22:41'),
(10, 3, 2, 'ACER NITRO 5', 'acer-nitro-5', 'ACER NITRO 5 AN515-57-79SC i7 11800H 16GB 512GB SSD RTX 3060 6GB 15.6″ FHD IPS W10 OHS', 54, 'CgpYUYaXm2fKXbmOyhp5xmS2dwkaWDS6KQFrREFY.jpg', 'Unit', '2025-07-10 21:06:13', '2025-07-17 16:22:46'),
(11, 3, 2, 'Lenovo Legion 5 16IRX9-BWID', 'lenovo-legion-5-16irx9-bwid', 'Lenovo Legion 5 16IRX9-BWID/Core i7-14650HX/16GB/512GB SSD/RTX4050 6GB/16″ WQXGA 165Hz/Win 11 Home+OHS 2021/Luna Grey', 67, 'SCQ5vtGJkXlkteKW6SX6wPXJHPohwtXqoGgR89x3.png', 'Unit', '2025-07-10 21:09:18', '2025-07-17 16:22:51'),
(12, 4, 3, 'LENOVO LEGION R25i-30 24.5-inch', 'lenovo-legion-r25i-30-245-inch', 'LENOVO LEGION R25i-30 24.5-inch, FHD (1920x1080), IPS, 165Hz (180Hz OC), 1ms Gaming Monitor\r\n- 24.5\" Diagonal LED Widescreen\r\n- Resolusi Full HD (1920x1080)\r\n- IPS panel frameless\r\n- Refresh rate: 165 Hz (180Hz Overclock)\r\n- Response time: 0.5ms (MPRT)\r\n- AMD FreeSync Premium\r\n- Wall mountable\r\n- Built-in speaker\r\n- Ergonomic Stand: lift, tilt, pivot, and swivel\r\n- 2x HDMI, 1x DisplayPort Input, 1x Audio out\r\n- 3 tahun garansi hardware LENOVO Indonesi', 80, 'NBOOU9k4nLPD3oxTfH8zs7ebeP191khYtC9RKxKY.jpg', 'Unit', '2025-07-14 20:10:42', '2025-07-17 16:22:59'),
(13, 4, 3, 'Monitor Asus ROG Strix XG259QN Gaming', 'monitor-asus-rog-strix-xg259qn-gaming', 'Spesifikasi :, Panel Size (inch) : 24.5, Aspect Ratio : 16:9, Color Space (sRGB) : 110%, Panel Type : IPS, True Resolution : 1920x1080,', 90, '0w65llVTaFeBGuj4MEiUhSHzbyRzmrcX0MJlrofH.png', 'Unit', '2025-07-16 20:33:01', '2025-07-17 16:23:02'),
(14, 5, 3, 'Logitech Mouse Gaming', 'logitech-mouse-gaming', 'Logitech Mouse Gaming Proteus Core Tunable G502', 87, 'LEHjoNtNijzY6kpsNF8FtrvWbEJVm6MqTJN0bf17.jpg', 'Pcs', '2025-07-16 20:36:54', '2025-07-17 16:23:05'),
(15, 5, 3, 'Mouse Gaming G502 X LIGHTSPEED WIRELESS', 'mouse-gaming-g502-x-lightspeed-wireless', 'Mouse Gaming  G502 X LIGHTSPEED WIRELESS Pro', 76, 'JfEqvmRnTBd30ruw09TGqNGFzFWjhBRGEkI83Fgd.jpg', 'Pcs', '2025-07-16 20:45:13', '2025-07-17 16:23:12'),
(16, 6, 3, 'PC editing gaming core i5 monitor 24 inc full set', 'pc-editing-gaming-core-i5-monitor-24-inc-full-set', 'PC editing gaming core i5 monitor 24 inc PSU super Pro, Mouse, Keyboard Gaming Premium', 45, 'IRbAVIJhO8CvcpJvWN9tATDuaGM75byQolqfJzAV.jpg', 'Unit', '2025-07-16 20:49:42', '2025-07-17 16:23:16'),
(17, 6, 3, 'PC Gaming Fullset Core i7', 'pc-gaming-fullset-core-i7', 'PC Gaming Fullset Core i7 860 Ram 16gb HDD SSD GTX 750 TI 4GB Monitor 24 Inch / komputer gaming Pro Premium', 89, 'I3fT9sD0mXIX12vM3ZXxzplRHlhfYdsj3E3NGDXj.jpg', 'Unit', '2025-07-16 20:51:12', '2025-07-17 16:23:20'),
(18, 6, 3, 'RISING STAR SERIES PC VOID', 'rising-star-series-pc-void', 'PC Gaming fullset DDR4 yang tentunya dengan monitor 24\" 165HZ IPS FHD yang memberikan performa gaming kamu makin GG. Performa tinggi dengan harga yang rendah hanya dapat kamu temukan di Paket PC RISING STARS SERIES', 45, '65IXeOXvi0hQdhWIOswpCAWAYqZNyqPBDYXy04jT.jpg', 'Unit', '2025-07-16 20:51:58', '2025-07-17 16:23:26'),
(19, 6, 3, 'Vibox VI-112 Gaming PC Bundle', 'vibox-vi-112-gaming-pc-bundle', 'Vibox VI-112 Gaming PC Bundle • AMD Ryzen 3 3200GE 4.0GHz • Radeon Vega 8 • 16GB RAM • 1TB SSD • Windows 11 • 21.5\" Monitor • WiFi • Prebuilt', 56, 'SPHZ7RBCSt9RO0Pdu9J8pZ8YVH0uXN4oqwuPLyM8.jpg', 'Unit', '2025-07-17 16:15:50', '2025-07-17 16:23:33'),
(20, 6, 3, 'Komputer GAMING PC ARGB VENTUM Ryzen 9', 'komputer-gaming-pc-argb-ventum-ryzen-9', 'Komputer GAMING PC ARGB VENTUM Ryzen 9 5900X RTX 4060Ti 32GB SSD 1TB nVme WIFI 27\" W11 DLSS 3, Procesor - AMD Ryzen 9 5900X - 12 rdzeni, 24 wątki, 4,8Ghz', 89, 'G7paQcN8HQO8h0xMKAQmGpVvCGzWR2hZt4lvkzHz.jpg', 'Unit', '2025-07-17 16:16:42', '2025-07-17 16:23:37');

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `requirement` text NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Kendaraan Sedang Digunakan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(2, 'Customer', 'web', '2025-06-29 19:58:21', '2025-06-29 19:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `telp`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Kasep-Meuble', '0812232323', 'Konoha', '2025-06-29 20:12:09', '2025-07-10 20:40:10'),
(2, 'QIA-Suply', '0856565656', 'Konoha Selatan', '2025-07-10 20:41:40', '2025-07-10 20:41:40'),
(3, 'Zakgh-gaming', '0856565656', 'Konoha Barat', '2025-07-10 20:42:07', '2025-07-10 20:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `invoice`, `created_at`, `updated_at`) VALUES
(1, 2, 'INV-R3B1218B', '2025-06-29 20:14:48', '2025-06-29 20:14:48'),
(2, 4, 'INV-13E1J8EQ', '2025-07-17 16:26:44', '2025-07-17 16:26:44'),
(3, 4, 'INV-X8FK6S5T', '2025-07-17 16:28:41', '2025-07-17 16:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-06-29 20:14:48', '2025-06-29 20:14:48'),
(2, 2, 3, 1, '2025-07-17 16:26:44', '2025-07-17 16:26:44'),
(3, 3, 3, 4, '2025-07-17 16:28:41', '2025-07-17 16:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `department` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `avatar`, `department`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$NNsWc4wcExSa7fHA7dY8TuI0tjWtbFZYWOACrbcL7uOxA19whhOZ.', NULL, NULL, NULL, NULL, 'Umum', NULL, '2025-06-29 19:58:21', '2025-06-29 19:58:21'),
(2, 'Kucuy', 'kucuy@gmail.com', NULL, '$2y$10$pCO1e7I0rPgvPjiDrlrjB.udu08ie4Gj3Dt.ltdvmj4ZGlPNgz2kC', NULL, NULL, NULL, 'A0iljbbmJvpXlzH00dugpjZ6fe9tFVheSSo2AeWM.jpg', 'Umum', NULL, '2025-06-29 20:13:55', '2025-06-29 20:14:22'),
(4, 'kimpul', 'kimpul@gmail.com', NULL, '$2y$10$PIlH5Ui4qew2mfVec1gEFuyQ55ZG7rPD4ToP98JygqF/xyxNbMHBW', NULL, NULL, NULL, 'utRaUuSxS8djhOLjZ5yXCWW7igPyDEY84M6E4jIW.png', 'Kepatuhan Internal', NULL, '2025-07-17 16:26:10', '2025-07-17 16:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `license_plat` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `condition` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rents_user_id_foreign` (`user_id`),
  ADD KEY `rents_vehicle_id_foreign` (`vehicle_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rents`
--
ALTER TABLE `rents`
  ADD CONSTRAINT `rents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `rents_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
