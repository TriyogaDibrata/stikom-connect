-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 10, 2019 at 06:11 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stico`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2018_11_29_235937_create_pengaduans_tables', 2),
(12, '2018_11_30_005123_create_kategori_table', 3),
(13, '2018_11_30_005507_create_status_table', 4),
(14, '2018_11_30_024611_create_komentar_table', 5),
(15, '2018_11_30_044005_create_files_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Informasi', NULL, NULL),
(2, 'Lingkungan', NULL, NULL),
(3, 'Keluhan', NULL, NULL),
(4, 'Apresiasi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00e4659e91c1398c57da4f1f4a6cfd5183da7f43ea93c0ad560ea681cd561521677dc955f854c6e4', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:33:11', '2018-11-27 17:33:11', '2019-11-28 01:33:11'),
('01279ef3add418bb3bf1e68337ebfaf08426f3b53951f6adbfa78406cb8c4af48d73f51c571081e0', 1, 1, 'nApp', '[]', 0, '2018-11-26 18:28:13', '2018-11-26 18:28:13', '2019-11-27 02:28:13'),
('078cdc219ea0a7b0b7e1321c0c7278f6fab0fcb8d3c9fbfaee174bcc60bf9ea2840c40643f434225', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:48:56', '2018-11-26 23:48:56', '2019-11-27 07:48:56'),
('0a1867c1c19aa87303926380dc4234c3f23b3a179758078a16024aa8b00b5368c7eb536e316c1e60', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:35:58', '2018-11-27 17:35:58', '2019-11-28 01:35:58'),
('0c0d2ea28fcf0a3381dc50a222adff8901b7c1771ce72ed27eb31934f9d0bc865b08e7f9b7d61706', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:43:09', '2018-11-26 23:43:09', '2019-11-27 07:43:09'),
('0e6653a9adffd81a73a366c3a8e24e1fc3215e2f8c1ec57e623bd6d77247a3c5efc1d45b9860b110', 2, 1, 'nApp', '[]', 0, '2019-04-26 05:39:05', '2019-04-26 05:39:05', '2020-04-26 13:39:05'),
('1319261b51e3bb5f5827961471722b4b332a0e7caf26a6be152046367662d8be6e029a106b175372', 1, 1, 'nApp', '[]', 0, '2018-11-29 15:07:25', '2018-11-29 15:07:25', '2019-11-29 23:07:25'),
('145f079d411e890183b9f229c7aa023b49dc4f103832a8d120e261918c0f5870e58878ed40258652', 2, 1, 'nApp', '[]', 0, '2018-11-28 21:50:09', '2018-11-28 21:50:09', '2019-11-29 05:50:09'),
('15a7161d57d2222ca0f962a7f8e58885e1aeab1ce39433e11a066a8e35a45173d811dc763eaa7bfa', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:45:22', '2018-11-26 23:45:22', '2019-11-27 07:45:22'),
('1741dc991fa2d7f8ab8cd3ba1722c1f1962fb65b67b2fb041c4cc5f32cd00dbe8fd1cef72237a99b', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:48:22', '2018-11-26 22:48:22', '2019-11-27 06:48:22'),
('1bb2d0b6457a694e838955c5d8c4cd04edf388373cea735dc06149686becbdfbfd521fb2100dfaf4', 1, 1, 'nApp', '[]', 0, '2018-11-28 23:29:39', '2018-11-28 23:29:39', '2019-11-29 07:29:39'),
('1ee18125fd2bafabdae739978c5c12de9e6ba42725d7a4c3e841ab3b12773a983daf1eea926a072c', 2, 1, 'nApp', '[]', 0, '2018-11-28 23:21:04', '2018-11-28 23:21:04', '2019-11-29 07:21:04'),
('2215c33d28725c69a9400d32fbc5f7525e381bc395da425b8346607e81964790055026e6c994a32c', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:37:19', '2018-11-26 23:37:19', '2019-11-27 07:37:19'),
('2324a18a4a4a5d89ffa11ea1000a632e023d13274b5f8dea107ce84224dcb2b692110da53788ec3d', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:56:21', '2018-11-26 22:56:21', '2019-11-27 06:56:21'),
('233c87e54c637698c55334f50a4b3516c95ef51874da6a790927c07700cb283938487d3ddb7ce1c6', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:40:52', '2018-11-26 23:40:52', '2019-11-27 07:40:52'),
('241849ae1a0b0fe574d79524e22068d4930166591dde33f3705165e32e9cf83e01c33e73b8cab5c4', 1, 1, 'nApp', '[]', 0, '2018-11-28 23:30:54', '2018-11-28 23:30:54', '2019-11-29 07:30:54'),
('25a109bf4f1eefee50151eb61df11d9f5991059eb33e025a9059d7427a8f9769d0ee9874bbc6d783', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:40:57', '2018-11-26 22:40:57', '2019-11-27 06:40:57'),
('272b7ad7856ccbff7b71ce27b22b3df78ccba93f910a89e656ffa7baf62b73dccc2476d503af3b34', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:04:48', '2018-11-27 17:04:48', '2019-11-28 01:04:48'),
('2913fea0da61b61c92ffaa84ee76a6412013eab88610abc281f5861289a01032ce3195c64153eab9', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:15:18', '2018-11-27 17:15:18', '2019-11-28 01:15:18'),
('29f9e2a64b1a5e12bb727f8dd31a00e1aa952b5023e34e74c5defe18a75b083a3498a1141dd61a29', 1, 1, 'nApp', '[]', 0, '2018-12-04 20:20:37', '2018-12-04 20:20:37', '2019-12-05 04:20:37'),
('2b9f95f4633e89618e5b316304604ffce24d41ee9658573c7b6d2b052d91e97b631d7295bc1b76a9', 1, 1, 'nApp', '[]', 0, '2018-11-28 19:30:53', '2018-11-28 19:30:53', '2019-11-29 03:30:53'),
('2de9555d35b41b3ad9ae3bdde6986917fbf819c2cf1157fcd8641a8456c9c7f6e0fd06d293289779', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:12:29', '2018-11-27 17:12:29', '2019-11-28 01:12:29'),
('2ef68cabed15e5a4763374077fda707291c7fff0570e4826c2dcd46a686587b7b270df6d655a38c2', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:26:34', '2018-11-27 17:26:34', '2019-11-28 01:26:34'),
('2f876e375bd05d76e0fa4f8dcb06cf8698bc943518a58be1f2526e738859829c1cb6effcaeb047fd', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:18:30', '2018-11-27 17:18:30', '2019-11-28 01:18:30'),
('321f05fafc47804811e710ad192dbffc89580985b83e8fb276151775576e7546940ae2bd7d3a4ed2', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:06:28', '2018-11-27 17:06:28', '2019-11-28 01:06:28'),
('32e8f343bf4eae423bb27c7fd1768ab06c12e53896d4d1af2f6b92a072b4bfd6cee16c2d0840eb5f', 2, 1, 'nApp', '[]', 0, '2018-11-28 23:15:39', '2018-11-28 23:15:39', '2019-11-29 07:15:39'),
('33268287cbe8826f8981c0a82338565c02bebd428a28f1f461adf354d4a2a3c1f587f4364e69d6c8', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:39:03', '2018-11-27 17:39:03', '2019-11-28 01:39:03'),
('33e343cadeebf9f54431d49569f9f0c3ac255e56b16a69e691d5790a07d505ed8ed2cdcb659b61a4', 29, 1, 'nApp', '[]', 0, '2019-04-26 06:40:05', '2019-04-26 06:40:05', '2020-04-26 14:40:05'),
('3557a6cf6348a2dc0031cbcf965a035c085aa67b5c46a181971a71598c1d20b1cdb3b9071ab87300', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:33:31', '2018-11-27 16:33:31', '2019-11-28 00:33:31'),
('377c82f53615fc3c1fca18e23ac9bce2e7edc53156f05069e70c04390dcf8d172c1ef1d31fc69979', 2, 1, 'nApp', '[]', 0, '2019-04-22 23:12:01', '2019-04-22 23:12:01', '2020-04-23 07:12:01'),
('3963120bfa77c33a9595ebccc29123c8e14a26b0c001a2ef28de81b422d1efae99841bc8399aa3a1', 1, 1, 'nApp', '[]', 0, '2018-12-04 20:22:15', '2018-12-04 20:22:15', '2019-12-05 04:22:15'),
('3c6d24faf88cb36052db3092cd29abe9ddd984d61e0f5097d68da78077d83fb1bd0f645c08e2f29b', 31, 1, 'nApp', '[]', 0, '2019-04-26 10:03:00', '2019-04-26 10:03:00', '2020-04-26 18:03:00'),
('3dc0c6188e110c434aed24d60ca54e5d6d7c85f1fe3639446147b9175d069deea3caae444ffd48b9', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:58:34', '2018-11-27 16:58:34', '2019-11-28 00:58:34'),
('3e54e112a5d6f9d02dcad69babc60a4650bd3ef9035d961a78d3b30990b9a6bb8638a00c3be5e556', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:07:15', '2018-11-27 17:07:15', '2019-11-28 01:07:15'),
('3ff5805bb1bbf3068b812ffb0eee8bb5d1f1f262bbecd69456aef578ef45ca20baff39901380b3ea', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:16:57', '2018-11-27 16:16:57', '2019-11-28 00:16:57'),
('416d05f221df15825860d03bf7d07d3b2b4b521148abceb5180afe3fa229c6e2b6dac43a7f51c43c', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:13:01', '2018-11-27 17:13:01', '2019-11-28 01:13:01'),
('48f548c4a377864330d655c03ffbe29c5193c86a280cf3f6203c0fc13a7811f0093ba1de9a7e46f9', 2, 1, 'nApp', '[]', 0, '2019-04-26 05:22:54', '2019-04-26 05:22:54', '2020-04-26 13:22:54'),
('4965e8e7d7b30a221df612dbabcbd0aa8f70653cf47a32a3520996bb29b6d03b9441c63a74fe7fdb', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:59:51', '2018-11-26 22:59:51', '2019-11-27 06:59:51'),
('4c957404aa731b045cea6ec3177331f5d729930acb7a8ea8a5d215911da1b464ec4a394df76d8e89', 28, 1, 'nApp', '[]', 0, '2019-04-26 06:38:57', '2019-04-26 06:38:57', '2020-04-26 14:38:57'),
('4e693e691bad719961ee09f1bc5299b98f7734c4a10518ded1cc3fe09a468b416a45ecf230f36268', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:23:01', '2018-11-27 17:23:01', '2019-11-28 01:23:01'),
('4edd1e6ecb6567b66339408768deb4f5d7aa3c3972d6f5febf7a287a2dcc39a3934367e9acdb1a28', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:22:03', '2018-11-27 17:22:03', '2019-11-28 01:22:03'),
('50238e1ab02fcb6091e2d153c6271bf8eec9dfa282d1c9380add23add00148f0390e20c541772e9b', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:32:32', '2018-11-26 23:32:32', '2019-11-27 07:32:32'),
('54bb36d77a9e53f3ce87fab802a82c769fed7d901b568622670361ee7e44a9f05f8a84d681e8dbc1', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:46:23', '2018-11-26 23:46:23', '2019-11-27 07:46:23'),
('55b193d7baaf20c45526d32fc67055eeb94bd2b0fcf4b6e5caa530f69696888a6bc914394fb0a8e6', 1, 1, 'nApp', '[]', 0, '2018-11-28 23:29:35', '2018-11-28 23:29:35', '2019-11-29 07:29:35'),
('57ec3f439c02af2f2cd7f82aa4932e32d02976568b99d3e29e612b310db2799ddb15569a7b2c4c51', 2, 1, 'nApp', '[]', 0, '2019-04-24 21:58:03', '2019-04-24 21:58:03', '2020-04-25 05:58:03'),
('5817d69d1de88cbb5f276f80215d52b3393289189be3b7469e7b10185cec521a91d9ec5353337987', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:53:45', '2018-11-26 22:53:45', '2019-11-27 06:53:45'),
('5b2e12a97b074b29797655e0c7af46e4dd53e5ed3d8ad82f424e9605d9cf22da1cab056c06dc3796', 27, 1, 'nApp', '[]', 0, '2019-04-26 06:30:46', '2019-04-26 06:30:46', '2020-04-26 14:30:46'),
('5b74dd68bc3a12322a4ae9978d017236ff9b6d511edfb7dcb6a33dcf32da7af89540713f5a90ffef', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:48:10', '2018-11-26 23:48:10', '2019-11-27 07:48:10'),
('5c28d1cfc779dd891a39342d34c9ed06437db34edece433627bed8e34aa9f786d5d41881a2fb7744', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:31:31', '2018-11-26 23:31:31', '2019-11-27 07:31:31'),
('5ef919de3ae6d85bab4cc231c900afaecbfc74aa324c66934152e1c9ea301106a9e27da901aa824b', 1, 1, 'nApp', '[]', 0, '2018-11-28 23:28:43', '2018-11-28 23:28:43', '2019-11-29 07:28:43'),
('63a8d9c2463fdb3cda0a63604678b4c6fdc149bc209bbd80e4bc7fec5fc74467849e032a66614e3c', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:47:15', '2018-11-26 22:47:15', '2019-11-27 06:47:15'),
('63bba0b6421511554496f56f3897aec3c52fc4b1b46cfb9b8ccee2889eca8e00573550523f545f1f', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:59:34', '2018-11-27 16:59:34', '2019-11-28 00:59:34'),
('668145c3d93220bc21e97219b33d3f945a5fbde587fce26c0938fb84abeb567dc5401cc210d75ab8', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:45:56', '2018-11-26 23:45:56', '2019-11-27 07:45:56'),
('6731a12098646702b704f9eb5bc646e73fb769eebe7a6a0527395eb26796fd6c83dd04eb62482471', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:48:07', '2018-11-27 16:48:07', '2019-11-28 00:48:07'),
('67585e50a453b60c958d4a75695ba0b48524433ee7c308d06dbf6c4c35868d3d8ee85ef743f5e96b', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:12:23', '2018-11-27 17:12:23', '2019-11-28 01:12:23'),
('6821181649fdf52f7d79a1d2ae5726d18e8b7ac53fc5849c1226b349abeee115d8bf28a287ecd46a', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:53:52', '2018-11-26 22:53:52', '2019-11-27 06:53:52'),
('68b0b252de48f409f47fe36ca99f905b7db4ca65991af672917db7e3fa06334fdff5674dbff9535b', 1, 1, 'nApp', '[]', 0, '2018-11-29 15:07:23', '2018-11-29 15:07:23', '2019-11-29 23:07:23'),
('6b09539edf47c3b150cc3b5bab86e5dacf8ff3b9580cf9141805661c846e6264bab93a30056f94d3', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:02:34', '2018-11-26 23:02:34', '2019-11-27 07:02:34'),
('6b64fedf3091a68a6bef90a8a39d8dca72a1fe2c3ac81dc882dd702b30485a31910fd11b26d88792', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:16:58', '2018-11-27 17:16:58', '2019-11-28 01:16:58'),
('6c306a1eea8d4f8e99cc98e2059d5f50478b15554480c3525f05c4b40ab5103e8240e6782d1bc158', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:31:58', '2018-11-27 16:31:58', '2019-11-28 00:31:58'),
('73b716bb0e40e7a3e7128612a34959451b04403723068b60834f38655068dd84314e74ba9cd35d4d', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:28:27', '2018-11-27 17:28:27', '2019-11-28 01:28:27'),
('747613dae676f69c7bae9354a6d7c9e18ce77ebef3c047db92988478b8e64a440cf624db64248333', 2, 1, 'nApp', '[]', 0, '2018-11-28 23:23:38', '2018-11-28 23:23:38', '2019-11-29 07:23:38'),
('75b728e7a3ebb0f581b63652ef7930aceac3b899389159380346644d1070ac11d242357c9a7ec670', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:04:51', '2018-11-27 17:04:51', '2019-11-28 01:04:51'),
('7749c27a075f98f3592b944ffaa5c5e353465e7d64181f5c501ac935f92d07614fe9490b9708db85', 1, 1, 'nApp', '[]', 0, '2018-11-28 23:30:45', '2018-11-28 23:30:45', '2019-11-29 07:30:45'),
('78768a29befb59d8683f77c71aabdaf50a480c7df76cc609420f517c5b62aa5fc275bd5a94ca4bc2', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:33:29', '2018-11-26 23:33:29', '2019-11-27 07:33:29'),
('792916871e893e5ac851aba15198fad028a47c42f814c9e14eb9c9374b35f6557dfbd94d97ae1f34', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:23:03', '2018-11-27 17:23:03', '2019-11-28 01:23:03'),
('7953031a0d365b78002a487181d5fc82f800b83882ced62fbf5be3596715d6413b798a0ab890207c', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:11:46', '2018-11-26 23:11:46', '2019-11-27 07:11:46'),
('806042178f94bf2aa9b147aaa695955aa5c3e5cceded43e0b451ec8e8fee3244831bae0e6d9a34fd', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:28:24', '2018-11-27 17:28:24', '2019-11-28 01:28:24'),
('84f581d9f3f366f9534c2453c8047568e21b98199da973cedb3b3d7cb75d0a81374b986179aa8b6b', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:33:27', '2018-11-27 16:33:27', '2019-11-28 00:33:27'),
('8876d9b0dd142b0f9fbb86f2ffa2a0ab88a04e765abe258d1c414a0357bac216644c81f9d4a07c32', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:53:48', '2018-11-26 22:53:48', '2019-11-27 06:53:48'),
('88b8dce19a71211da3c053e90748032c930951d9a8bb063f933738ec85f18040095b7da855c9065b', 1, 1, 'nApp', '[]', 0, '2018-11-28 17:29:37', '2018-11-28 17:29:37', '2019-11-29 01:29:37'),
('88ca3953260791c650f269970295212a3a0c5c03998c0ff43b8e583324dec6abca77faf7d962f87e', 1, 1, 'nApp', '[]', 0, '2018-11-28 23:28:46', '2018-11-28 23:28:46', '2019-11-29 07:28:46'),
('8bc2e1f31bf8dc56fbdcbb4cd6b1d60284897945e9cf3f10414a84635a54c948c6dbb245a74f74ff', 1, 1, 'nApp', '[]', 0, '2018-11-28 23:21:43', '2018-11-28 23:21:43', '2019-11-29 07:21:43'),
('8d36647ea1aac2e225cec434b291f63021c7f91f45c5305f0c968d5464b9fb4741f19f9b8a2abd87', 2, 1, 'nApp', '[]', 0, '2018-11-28 23:15:50', '2018-11-28 23:15:50', '2019-11-29 07:15:50'),
('8de0b5cecc890aedf560dd1034ad50562199722cb05dc5deb3b26c3bfd3d970bfed140d2d596d4c5', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:43:57', '2018-11-26 22:43:57', '2019-11-27 06:43:57'),
('8e7ca1c49cc75ac3c7f278ced476d8b77fdcd7bedf4703677b498e85e6714a668fe0f6265523391d', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:38:47', '2018-11-27 17:38:47', '2019-11-28 01:38:47'),
('8f3579ca7eaf04b470aeb2ed22c874ce01c6132b7b2972537845a52225c9205511fa351d4034895a', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:36:14', '2018-11-27 17:36:14', '2019-11-28 01:36:14'),
('9157ce1d4d3fcc4ea1044380bb07c214850d1b1164d335d1880595131dbfc8ec01be7c5673a09c61', 2, 1, 'nApp', '[]', 0, '2018-11-28 23:20:43', '2018-11-28 23:20:43', '2019-11-29 07:20:43'),
('91c25bd41a97e5083dfb2c0ab1ac10b9276787dd57fe37087756f4551825d7e85317e257335facd4', 2, 1, 'nApp', '[]', 0, '2018-11-28 23:21:07', '2018-11-28 23:21:07', '2019-11-29 07:21:07'),
('92c2a39e834589fe61e5d9fe2223177e120a79ca0b5b6c8db755ea4518cd2f0c573d55c8cf78f085', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:16:51', '2018-11-27 16:16:51', '2019-11-28 00:16:51'),
('95e1fee8fe854d06f373ae9ebf264061e3414419b86ed02ed9c869a45f64531bb889b927f030747b', 32, 1, 'nApp', '[]', 0, '2019-04-26 10:06:14', '2019-04-26 10:06:14', '2020-04-26 18:06:14'),
('9a1c300defaf461e4b38124ad732670c89f103079f7544bbbcc13d01e83bf3bdce9000cd3728c3d9', 2, 1, 'nApp', '[]', 0, '2019-04-26 05:21:23', '2019-04-26 05:21:23', '2020-04-26 13:21:23'),
('9d524141dbb016e10381745c17d77788a85ca2658194877ee3643b6bd5318f0a8b0d9a4d84c98464', 1, 1, 'nApp', '[]', 0, '2018-11-27 15:56:42', '2018-11-27 15:56:42', '2019-11-27 23:56:42'),
('a022fcedf2f145174671695e0c1a1072c4c17e4a4390bc3f1d61e18f81cc9bee003044eb3bf2be9a', 30, 1, 'nApp', '[]', 0, '2019-04-26 09:13:40', '2019-04-26 09:13:40', '2020-04-26 17:13:40'),
('a1fd35fe2df9cb72e0f2a73ae0a06abecc8d2d23d31f774026b784797989ced6ea94d059637a45ac', 2, 1, 'nApp', '[]', 0, '2018-11-29 15:37:52', '2018-11-29 15:37:52', '2019-11-29 23:37:52'),
('a3fb0240360adf82253f8de472bf5baebe4ce28c111f97a89a2b313b38343f8273a95a4363ee668f', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:32:04', '2018-11-27 16:32:04', '2019-11-28 00:32:04'),
('a40922ae15ab19a964c9fc1cbf6ad08f823adfa4844eb0f00cacb424d9cef36e2219ee077ee570a0', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:17:31', '2018-11-27 16:17:31', '2019-11-28 00:17:31'),
('a5b39fca0f518e79bcb8e2aca1e4f41691ec24b68104b5624178c62497427713b900d81876cdf430', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:30:50', '2018-11-26 23:30:50', '2019-11-27 07:30:50'),
('a837ee33fae24cd25a17e2d5ec8f240d707e89cf81eefd3dec961f2aff729952d4995d75a4f2108d', 28, 1, 'nApp', '[]', 0, '2019-04-26 06:38:57', '2019-04-26 06:38:57', '2020-04-26 14:38:57'),
('aa024e8de9b753f2a0d530147b2c35610cd2eb6c22cf671db4754d4dc5ad6d8139ca58ab276716ae', 30, 1, 'nApp', '[]', 0, '2019-04-26 09:14:08', '2019-04-26 09:14:08', '2020-04-26 17:14:08'),
('afce3bc8285f99143a30bf08feb6e0e451f8e69bda7fa3caa41798acd64407079ef254e9fd660a9b', 1, 1, 'nApp', '[]', 0, '2018-11-26 18:14:32', '2018-11-26 18:14:32', '2019-11-27 02:14:32'),
('b0257cfec975a54e286af1a466bc3c0d5c35183dedb9d4a800ae599deb71b63d885c8b10df497d45', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:18:26', '2018-11-27 17:18:26', '2019-11-28 01:18:26'),
('b06b9375fd6b12a980307a92261ec0b48a1bcc9bd28c41689ab52682aac75dc81c3f3ae5fed81eb7', 2, 1, 'nApp', '[]', 0, '2018-11-28 23:16:16', '2018-11-28 23:16:16', '2019-11-29 07:16:16'),
('b322e72e8d2c4428f0f56a7c6c7636224ba351a541b0082dc7026b22c5f08f85abfebcbda08ca44e', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:00:12', '2018-11-26 23:00:12', '2019-11-27 07:00:12'),
('b497c54940c9d0e17a614da8795cc8331072c4631a324c00208639bbdc70e46c9b5d642dc729ed98', 2, 1, 'nApp', '[]', 0, '2019-04-24 22:07:21', '2019-04-24 22:07:21', '2020-04-25 06:07:21'),
('b4f0f2fa181f25216b405bdb276ed7122c6459d80df720e594556eeecd5639c62ad488686d1a1922', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:49:46', '2018-11-26 23:49:46', '2019-11-27 07:49:46'),
('b55184e0dacda3f13894ab55242a3dbb48eecae1b29b5e1a333e9525197be396d0826077fcb89fe9', 2, 1, 'nApp', '[]', 0, '2019-04-26 05:40:55', '2019-04-26 05:40:55', '2020-04-26 13:40:55'),
('ba78f57277b207ecfe15bd5323a9e84fccb0df7d4238257cc53a64019b31b8f1e17f784855373742', 2, 1, 'nApp', '[]', 0, '2019-04-26 05:12:43', '2019-04-26 05:12:43', '2020-04-26 13:12:43'),
('ba9df9645990b30d669495775dd3599efea9dd4bf11ed7b3c1bb7145b276d4eb850ae6e2a6d3441d', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:23:25', '2018-11-27 17:23:25', '2019-11-28 01:23:25'),
('c128598bec2c21dcdfb7d46acf723d450f45a71ed67dcbd5d50944b6820bbb60ee5af53b0ee9bbe8', 1, 1, 'nApp', '[]', 0, '2018-12-04 20:22:17', '2018-12-04 20:22:17', '2019-12-05 04:22:17'),
('c24f57cdd188f66ae2eaed548a0e481e9a5d7b46fbb53874bda6dca5579019e6b35c192cf55ca596', 2, 1, 'nApp', '[]', 0, '2019-04-26 06:34:31', '2019-04-26 06:34:31', '2020-04-26 14:34:31'),
('c27d6247f08f02d2622c8d9517737db5583a05f8aed30dfd3300f1b989732a3008e4a26ccfeebc9a', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:59:36', '2018-11-27 16:59:36', '2019-11-28 00:59:36'),
('c4540ac5ccb156f90dafe81dda446ae4c46d0bc4e260ece23e4c4a4252b7d6d2632d3c9ba6723a93', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:36:47', '2018-11-26 23:36:47', '2019-11-27 07:36:47'),
('c61db624a32c8fd4c665d7a7164b614fd98f49bb35b74e677208c3377733e0e945a4596a47e0d831', 29, 1, 'nApp', '[]', 0, '2019-04-26 06:40:05', '2019-04-26 06:40:05', '2020-04-26 14:40:05'),
('c6f7a2e7f4d1bb0441973f80973f81210c545b53ed75c8945b61bda3b8d6aae8deb6afc8f0eb9c63', 1, 1, 'nApp', '[]', 0, '2018-11-28 23:21:41', '2018-11-28 23:21:41', '2019-11-29 07:21:41'),
('c83554f22cb55761ca880b057ece212b2394f60d606a270c99e80bd9956948f39e532df66105e10c', 2, 1, 'nApp', '[]', 0, '2018-11-28 21:39:43', '2018-11-28 21:39:43', '2019-11-29 05:39:43'),
('cad0f3b64c84a1849386b0d714ac8cacca0443d4fa26f21e9fd7786a01eae2f34d01f034dcd5548f', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:39:22', '2018-11-27 17:39:22', '2019-11-28 01:39:22'),
('cd97bb4e215fe4138cde9a52be3c32f7c6bd815263ee5f51874d22be8463ba1cda3e93deddbed3b9', 1, 1, 'nApp', '[]', 0, '2018-11-28 21:20:28', '2018-11-28 21:20:28', '2019-11-29 05:20:28'),
('ce811d77c1de99d34591136d10a01d68fd240347d2be004422a095f13223d02aae48f962171d9b13', 2, 1, 'nApp', '[]', 0, '2019-04-26 05:13:58', '2019-04-26 05:13:58', '2020-04-26 13:13:58'),
('d1a0d3e6c7517c1018b320ee0ab1b0b32ebbc92b548b78e16bc0ec8ecc6b92506018f8c099bee013', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:49:19', '2018-11-26 23:49:19', '2019-11-27 07:49:19'),
('d2b7b9657939b296b67235cb04da8da693ed0c96a79c96faa98df33206d1dd807f4e9a8d0b97f169', 2, 1, 'nApp', '[]', 0, '2018-11-28 23:20:46', '2018-11-28 23:20:46', '2019-11-29 07:20:46'),
('d3c36e86481f402473ab406ef2c102f085c3d41f83f9738e12dbd95d71904d87e730212164741de6', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:09:53', '2018-11-26 23:09:53', '2019-11-27 07:09:53'),
('ddf5b4f1e32be7c0cece41755fcebd5b9224fd605659d914f87031212fbbe86bc871ee00ea1b5b99', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:46:40', '2018-11-26 23:46:40', '2019-11-27 07:46:40'),
('e089a30d4e4b579b297297a61ac4aebb876435f55a11da7814f7694f11c6ea1831de992ecb504244', 1, 1, 'nApp', '[]', 0, '2018-11-26 23:08:14', '2018-11-26 23:08:14', '2019-11-27 07:08:14'),
('e1b442042ce85fbe7779a7c6f0d777cce2386f5ecf84c0685d640d3983bd44a165f52fefb8536a16', 30, 1, 'nApp', '[]', 0, '2019-04-26 09:13:40', '2019-04-26 09:13:40', '2020-04-26 17:13:40'),
('e29e3cee4b8fd5e7670b4c0a0c7474a4830fdf4d40a015da60c117f949546b2bc6e45db0f65d46cc', 1, 1, 'nApp', '[]', 0, '2018-11-28 23:23:25', '2018-11-28 23:23:25', '2019-11-29 07:23:25'),
('e2c7159161bfccb438e401ff8e821a618a38f701da377cefa786c9168e5ba50b6ca74272baf7ca77', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:18:02', '2018-11-27 16:18:02', '2019-11-28 00:18:02'),
('e4dfc86bb503bd436945cc083c0252ded14fd4b3366db14e59ea0b43ff3a465c78cf352173788b6e', 31, 1, 'nApp', '[]', 0, '2019-04-26 10:03:00', '2019-04-26 10:03:00', '2020-04-26 18:03:00'),
('ec4794d1e0b5e11619cc2506e590100c2ab366a3f2b3ab091839a9bb771738d2e4539b990c268318', 1, 1, 'nApp', '[]', 0, '2018-11-27 16:20:37', '2018-11-27 16:20:37', '2019-11-28 00:20:37'),
('ee0becbdf928af1a258852c36dc0fe10f91a416d2dac431bc6278fe1c5e0590ccfa10eabfb82a704', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:26:36', '2018-11-27 17:26:36', '2019-11-28 01:26:36'),
('f04c5c2fe9990e08bd20be3b387f7bf5c9160d3c37802a1e575eafbb0aff9d8975773e3a43ba9f6d', 2, 1, 'nApp', '[]', 0, '2019-04-26 05:41:28', '2019-04-26 05:41:28', '2020-04-26 13:41:28'),
('f12f76741ac0b988c4f0b5df36a2f1541f5e1c29b2203180c75920b5ebda36479a6bbc40988baec3', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:42:27', '2018-11-26 22:42:27', '2019-11-27 06:42:27'),
('f3a5275cb7ddf60fc324a7db2a68240c8e0df076f09941c12277bab793b723b042d9299375b097b3', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:22:06', '2018-11-27 17:22:06', '2019-11-28 01:22:06'),
('f6c200cf8d7d7d34476cb0f451d191a1ce51d098535826886d309c74f035a6c4e5920f0f0b562061', 2, 1, 'nApp', '[]', 0, '2018-11-28 23:23:13', '2018-11-28 23:23:13', '2019-11-29 07:23:13'),
('f7f360c6d41a5508980efa82ad01c539d065f9d1919a15919fba93d8e9777eb8b97f7a7c21c7cd26', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:50:01', '2018-11-26 22:50:01', '2019-11-27 06:50:01'),
('f887005240d71d055d663f931cea32fc85d760330ec8a1489379d82a7cccc5a82698d45aea34a3b2', 1, 1, 'nApp', '[]', 0, '2018-11-28 17:41:26', '2018-11-28 17:41:26', '2019-11-29 01:41:26'),
('f92553c9ad535fdda0a90b75cee82caac5b6159e71720e4be2352d4c49ad172e0fd0cb696a329c69', 1, 1, 'nApp', '[]', 0, '2018-11-26 22:42:04', '2018-11-26 22:42:04', '2019-11-27 06:42:04'),
('f9498a209934e6dd1caa57010041cdaf790aca7bf7d1cb123f386c5dcd16485f6a6c6b53a0004202', 32, 1, 'nApp', '[]', 0, '2019-04-26 10:06:14', '2019-04-26 10:06:14', '2020-04-26 18:06:14'),
('fa187d666c80b823e79d661ddc8c75cb961142dce93663e813ebd806d845efbe94782919aea1eead', 1, 1, 'nApp', '[]', 0, '2018-11-28 21:20:43', '2018-11-28 21:20:43', '2019-11-29 05:20:43'),
('fd9fa2cfc8fc1da3e70ab6ccb4cee4e6d9a5db3d017f6e28e4c055c4e982cd4510183332d19c1c5a', 1, 1, 'nApp', '[]', 0, '2018-11-27 17:15:20', '2018-11-27 17:15:20', '2019-11-28 01:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '3wgA1WacWClv6NYPQf2VammbH6D368O5tOwCpIrs', 'http://localhost', 1, 0, 0, '2018-11-26 18:05:28', '2018-11-26 18:05:28'),
(2, NULL, 'Laravel Password Grant Client', 'vxXNQMLtrYU8Xd8MwFGxVyCzMpQqRGfLScyzkzCE', 'http://localhost', 0, 1, 0, '2018-11-26 18:05:28', '2018-11-26 18:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-11-26 18:05:28', '2018-11-26 18:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_files`
--

CREATE TABLE `t_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `laporan_id` int(11) NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_files`
--

INSERT INTO `t_files` (`id`, `laporan_id`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://lorempixel.com/640/480/?67591', NULL, NULL),
(2, 1, 'https://lorempixel.com/640/480/?14283', NULL, NULL),
(3, 1, 'https://lorempixel.com/640/480/?88604', NULL, NULL),
(4, 1, 'https://lorempixel.com/640/480/?39672', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_komentar`
--

CREATE TABLE `t_komentar` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `laporan_id` int(11) NOT NULL,
  `komentar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_laporans`
--

CREATE TABLE `t_laporans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_laporans`
--

INSERT INTO `t_laporans` (`id`, `kategori_id`, `user_id`, `topik`, `uraian`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tenetur sed incidunt maiores iste vel perferendis.', 'Aut dolorum enim ullam voluptatem. Commodi totam molestiae ut ipsum. Tenetur iusto minima voluptas velit.', NULL, NULL),
(2, 1, 2, 'Sapiente architecto harum mollitia corporis quod eum.', 'Corporis laudantium sit cupiditate dolorem omnis vel. Dolore est tenetur voluptate pariatur natus. Eum omnis id consequatur ea voluptatem. Dignissimos blanditiis vero fuga aut quia.', NULL, NULL),
(3, 1, 2, 'Rem sed labore numquam non nesciunt sed.', 'Aliquid rem itaque vel veniam eveniet repellendus repellat. Impedit sed distinctio doloremque eveniet sit sint. Quas asperiores nemo assumenda vel maiores aut.', NULL, NULL),
(4, 1, 1, 'Voluptates et est quia laboriosam.', 'Praesentium minima et autem vel nemo et eos repellendus. Nihil reprehenderit non tenetur deserunt. Cum et unde reiciendis deserunt aliquam.', NULL, NULL),
(5, 1, 1, 'Dolorem alias quisquam libero quisquam beatae alias.', 'Quod et similique et ut et debitis quod. Harum excepturi voluptatem debitis unde eaque quo. Omnis rem officia corporis dicta. Recusandae id ipsa non qui possimus accusamus aliquid voluptates.', NULL, NULL),
(6, 1, 1, 'Placeat quae autem ratione cum.', 'Ullam corporis laborum sunt quia fugit et maxime. Aut vel quae eveniet molestias. Modi praesentium magnam ipsum beatae est non a.', NULL, NULL),
(7, 1, 2, 'Expedita nisi aut sint ut maxime.', 'Voluptas similique atque ratione veritatis. Repellat voluptate praesentium id commodi debitis. Quam quas temporibus consequatur.', NULL, NULL),
(8, 1, 2, 'Ab itaque repudiandae dolores est optio autem rerum.', 'Architecto eum distinctio asperiores incidunt et quis corporis. Praesentium ea ea et non. Excepturi quis eum optio quo. Ipsam et architecto sint ut. Beatae iste veniam ipsa commodi placeat animi est.', NULL, NULL),
(9, 1, 1, 'Consectetur pariatur commodi earum earum nostrum quo.', 'Id et et qui. Beatae occaecati ipsum laudantium omnis aut porro ullam. Amet omnis distinctio deleniti consectetur veritatis et architecto. Tempora dolorum iste laboriosam.', NULL, NULL),
(10, 1, 2, 'Sed consequatur consectetur laborum at vero.', 'Et voluptatem sit quo occaecati eveniet et. Voluptatem reiciendis excepturi rerum numquam rerum architecto. Aspernatur nostrum ratione ut et cumque iure cupiditate.', NULL, NULL),
(11, 1, 1, 'At cupiditate qui accusantium.', 'Praesentium nisi quidem ut eaque. Ut et sit incidunt consequatur nulla aut. Nemo eaque quisquam id sunt iure provident ut. Aut alias illum ab in rerum qui animi.', NULL, NULL),
(12, 1, 2, 'Quis quo rem maxime recusandae.', 'Et repellendus in nulla vero quo facere. Autem occaecati sit sapiente at dolor ex. Eligendi velit voluptate asperiores quos pariatur maiores rerum et.', NULL, NULL),
(13, 1, 2, 'Non sunt id molestiae culpa.', 'Tempora voluptatem exercitationem nihil aperiam. Non ut nam voluptas velit. Quisquam qui iure vel laboriosam sed dolore enim. Impedit et et corrupti repellat quis sequi ratione.', NULL, NULL),
(14, 1, 5, 'Libero esse consequatur quo ipsum natus.', 'Mollitia tempora quia voluptatem consequatur. Porro eos in sed molestiae vero ea. Sed vel dolores et illum fuga. Eos labore necessitatibus dolores sapiente perspiciatis ea perferendis velit.', NULL, NULL),
(15, 1, 8, 'Pariatur mollitia cum ipsum earum ea.', 'Mollitia rem nostrum omnis odit. Rerum vitae quasi sunt eius. Aliquid blanditiis consequuntur occaecati ipsam dolor odit. Voluptatibus dignissimos eos aut consequatur.', NULL, NULL),
(16, 1, 3, 'Cum voluptatibus inventore iusto alias.', 'Et eaque libero nobis natus magni exercitationem repellat. Adipisci sit sequi omnis architecto debitis perspiciatis laudantium veniam.', NULL, NULL),
(17, 1, 7, 'Quo quos sint in provident itaque.', 'Dolor sit fuga nobis. Dolores consequuntur et rerum qui dolorum molestiae. Non architecto aut animi et rerum nostrum atque et.', NULL, NULL),
(18, 1, 0, 'Voluptas consectetur vitae vero voluptate architecto velit.', 'Quia est libero impedit distinctio error odit aperiam modi. Dolore eveniet velit voluptas accusantium. Labore quis amet et temporibus at ut in. Quis eum aspernatur dicta iure magni nam et.', NULL, NULL),
(19, 1, 3, 'Natus ut aliquid quibusdam cupiditate.', 'Non harum maxime consequatur ut impedit. Veritatis et ut ut perspiciatis sint. Aspernatur harum molestiae culpa hic alias debitis ab.', NULL, NULL),
(20, 1, 7, 'Consequatur repellendus tempora facilis totam sequi quos.', 'Quam suscipit est nemo iusto. Temporibus eius mollitia fuga natus unde corporis. Voluptas placeat reprehenderit nam eos impedit cum.', NULL, NULL),
(21, 1, 9, 'Ipsa minima sit ab reprehenderit eligendi aspernatur tempore.', 'Delectus neque molestiae repudiandae magni. Suscipit velit incidunt nemo sit quia aspernatur est. Delectus labore vel ut sint non magnam.', NULL, NULL),
(22, 1, 1, 'Dolore consequuntur iusto corrupti quod eius magnam fugit.', 'Veniam labore est vitae inventore quia dolores earum. Sed aspernatur natus quia qui ea laboriosam id officia. Voluptas aut explicabo ipsum hic quos quas omnis id. Eos ut itaque doloribus aspernatur.', NULL, NULL),
(23, 1, 9, 'Esse at dolorem eum nostrum dolores hic enim.', 'Illo ab maxime autem est aut est dolores. Sunt possimus quod maiores temporibus quia. Sunt et ex voluptates ipsam dolore earum qui. Officia et labore eum omnis repudiandae est molestias.', NULL, NULL),
(24, 1, 2, 'Cumque est dicta minima consequatur similique consequatur.', 'Odio sequi itaque vitae quod eius. Aut fuga id possimus aut dolore illo alias aperiam. Earum dolorem est eius vitae.', NULL, NULL),
(25, 1, 1, 'Omnis nemo iure rerum quia.', 'Architecto mollitia labore repellendus praesentium id. Sit est tempora ut voluptates. Occaecati rerum non doloribus eveniet. Voluptatem rerum nesciunt est accusamus. Praesentium totam aut veniam cum.', NULL, NULL),
(26, 1, 4, 'Repellendus ut nobis autem veritatis maiores at alias alias.', 'Eaque eos vel velit fugiat dolorem unde. Sunt voluptas molestiae sunt eius ut. Consequatur voluptatem libero quo perferendis.', NULL, NULL),
(27, 1, 6, 'Id minus vitae similique rerum et et.', 'Deserunt ut non neque alias. Qui quisquam et eligendi. Veniam est est nesciunt non et sed. Eaque ut quaerat sequi fugit laudantium.', NULL, NULL),
(28, 1, 7, 'Adipisci suscipit reiciendis maiores ut non.', 'Qui ducimus est corporis dolorem et voluptatem voluptate. Quod earum aliquam quis consectetur odit omnis. Dicta facilis ratione expedita in. Et consectetur ex nesciunt facilis beatae qui ea nihil.', NULL, NULL),
(29, 1, 2, 'Voluptatibus architecto odit reprehenderit.', 'Eos officiis fugiat magnam libero iure aut quo ut. Autem ex recusandae ea sunt quis. Sed dolore tempore aut est.', NULL, NULL),
(30, 1, 8, 'Qui sit officia odio est quis laborum molestiae.', 'Saepe nobis exercitationem iure non quasi et sequi. Et harum provident ut nemo nulla.', NULL, NULL),
(31, 1, 9, 'Reiciendis et voluptatem sequi aperiam similique.', 'Sunt veritatis qui odit quis dolores est. Non sequi dolorum voluptatem ea quod numquam molestias. Rem dolor tempora placeat veniam. Iusto aspernatur rerum odio quibusdam minus possimus.', NULL, NULL),
(32, 1, 4, 'Dicta quisquam aliquid in accusamus alias.', 'Ullam in id aut non enim id. Ipsa nihil et sapiente aliquid adipisci commodi et eos. In temporibus molestiae odio aut molestias et. Totam rerum inventore qui magni reprehenderit praesentium.', NULL, NULL),
(33, 1, 2, 'Cumque ducimus earum libero accusantium voluptas assumenda autem saepe.', 'Earum recusandae eius qui fuga. Et accusantium voluptates officiis doloribus qui et voluptatem. Sequi qui neque deleniti nostrum voluptas qui.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jorge test', 'jorge@test.com', NULL, '$2y$10$fuRXPAru4txtphJdoRjB7uiXztgAvTgYUU70EdE9YO84A0TiH6iEm', NULL, '2018-11-26 18:14:32', '2018-11-26 18:14:32'),
(2, 'diablo alexandro', 'diablo@test.com', NULL, '$2y$10$kq.Qk7ognw3Z.G0SpOFTIuoHK1erSPQw.HXwr173hV4N5vfaJJ2vu', NULL, '2018-11-28 21:39:43', '2018-11-28 21:39:43'),
(4, 'Dr. Ignacio Kshlerin I', 'lempi.lynch@toy.com', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Prof. Rosemary Ullrich', 'treutel.greg@zemlak.biz', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, '0000-00-00 00:00:00', NULL),
(6, 'Ms. Vilma Reynolds PhD', 'brekke.lexi@yahoo.com', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, NULL, NULL),
(7, 'Peggie Greenfelder', 'filiberto.hackett@hotmail.com', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, NULL, NULL),
(8, 'Gene Schmitt', 'michale53@yahoo.com', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, NULL, NULL),
(9, 'Noel Prohaska', 'titus74@hotmail.com', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, NULL, NULL),
(10, 'Jasen Pouros DDS', 'bfay@gmail.com', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, NULL, NULL),
(11, 'Prof. Kendall Walker DDS', 'pmurphy@hotmail.com', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, NULL, NULL),
(12, 'Myriam Wintheiser', 'dledner@morissette.info', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, NULL, NULL),
(13, 'Dameon Trantow', 'ptowne@okeefe.org', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, NULL, NULL),
(14, 'Mr. Jovani Kertzmann', 'marianna.yost@hotmail.com', NULL, '$2y$10$0UvAH.spRSogBUB21aHuour12u24bGLvVQeYPPBV9r7aKMAcl.7aO', NULL, NULL, NULL),
(15, 'Mr. Jess Wiegand IV', 'grady.chase@yahoo.com', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(16, 'Araceli Eichmann', 'irunolfsson@stiedemann.com', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(17, 'Kevin Tremblay', 'omurphy@hotmail.com', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(18, 'Prof. Benjamin Muller', 'ignatius94@boyer.info', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(19, 'Willis Beahan', 'tjohnston@yahoo.com', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(20, 'Mr. Blaze Mayert Sr.', 'federico.hand@klocko.com', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(21, 'Mr. Zackery Auer PhD', 'hoppe.joyce@jenkins.com', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(22, 'Domenico Parker', 'adah.batz@bogan.com', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(23, 'Marisa Homenick', 'virgie92@pacocha.net', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(24, 'Miss Lessie Mills DDS', 'kassandra71@crist.biz', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(25, 'Eldred Ruecker', 'wwilderman@hotmail.com', NULL, '$2y$10$0MwYiCZd2F66u/dtUKnrT.v1W2nNFgUyBnooxCXJumb72xWveIzQy', NULL, NULL, NULL),
(27, 'test', 'test@test.com', NULL, '$2y$10$JSPskyRTraTH4i/S1WaK4upXLLWSOZnJ0iPkoinUctoqeQmF/4tvG', NULL, '2019-04-26 06:30:46', '2019-04-26 06:30:46'),
(28, 'test yoww', 'test1231321@gmail.com', NULL, '$2y$10$MrMv832niHxPuLgO98qLAe7gYZaO7SZyeleZyLQSWuXjNv7ZGlBs6', NULL, '2019-04-26 06:38:57', '2019-04-26 06:38:57'),
(29, 'magic can happend', 'heaven@gmail.com', NULL, '$2y$10$qgOG1mnwWBlRib9xOHcp4erUnIYqo90LLmffaMp4.QX1xne1w/fN.', NULL, '2019-04-26 06:40:05', '2019-04-26 06:40:05'),
(30, 'Alit Kusumawijaya', 'alitkusuma@gmail.com', NULL, '$2y$10$729Kcda2AK3sBDhBQj/JmeXtZpvq1XGBwpUNq2A8WFwXniqQD0FGe', NULL, '2019-04-26 09:13:40', '2019-04-26 09:13:40'),
(31, 'saya anda', 'sayaanda@gmail.com', NULL, '$2y$10$.3o7Op5layMhtmgkmbn.leu2jo9B.nl1jL3ZzWc2P/IafOY9aMLLa', NULL, '2019-04-26 10:03:00', '2019-04-26 10:03:00'),
(32, 'saya adalah tuhan', 'tuhan@gmail.com', NULL, '$2y$10$H7XVq/M7Apzs8RvSJec5j.M5V5LNNThy8NJFCbu80hvEgOAuIznRW', NULL, '2019-04-26 10:06:14', '2019-04-26 10:06:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `t_files`
--
ALTER TABLE `t_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_komentar`
--
ALTER TABLE `t_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_laporans`
--
ALTER TABLE `t_laporans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_files`
--
ALTER TABLE `t_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_komentar`
--
ALTER TABLE `t_komentar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_laporans`
--
ALTER TABLE `t_laporans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
