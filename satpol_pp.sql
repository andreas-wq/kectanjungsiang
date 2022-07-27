-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 27, 2022 at 05:15 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `kecamatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `agendas`
--

CREATE TABLE `agendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` int(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `hit` bigint(20) NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agendas`
--

INSERT INTO `agendas` (`id`, `id_kecamatan`, `title`, `description`, `slug`, `img`, `location`, `start_date`, `end_date`, `status`, `hit`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(13, NULL, 'Mengikuti Pelaksanaan Musrenbang RKPD Kab.Subang Tahun 2023', 'Kegiatan Musrenbang ini akan dihadiri oleh semua OPD dan lembaga terkait dengan total undangan mencapai 45 undangan dan dapat diikuti&nbsp; melalui zoom online selama pelaksanaan kegiatan yang bertempat di Fave Hotel Subang', 'mengikuti-pelaksanaan-musrenbang-rkpd-kabsubang-tahun-2023', 'gbuKQjOVIEJOmmMR2H0L3qZyuh4Y70rIqH36KEkj.jpg', 'Fave Hotel', '2022-03-24 08:00:00', '2022-03-24 12:00:00', 'show', 29, 'Operator Admin Website', NULL, '2022-03-23 07:43:36', '2022-05-30 07:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit` bigint(20) NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `id_kecamatan`, `title`, `slug`, `thumbnail`, `description`, `hit`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Kegiatan Review dan Analisis Data Penyusunan Peta Ketahanan dan Kerentanan Pangan Kecamatan di Kabupaten Subang', 'kegiatan-review-dan-analisis-data-penyusunan-peta-ketahanan-dan-kerentanan-pangan-kecamatan-di-kabupaten-subang', 'y42E8bSnS2wyN6nvvXSajlTH1H3ZoGzxoWpx78FA.jpg', 'Kegiatan Review dan Analisis Data Penyusunan Peta Ketahanan dan Kerentanan Pangan Kecamatan di Kabupaten Subang Bulan September 2021', 0, 'Operator Admin Website', NULL, 'show', '2022-03-23 06:07:28', '2022-03-23 06:07:28'),
(3, NULL, 'Kegiatan Pemanfaatan Pekarangan Pangan Lestari di Halaman Kantor Dinas Ketahanan Pangan', 'kegiatan-pemanfaatan-pekarangan-pangan-lestari-di-halaman-kantor-dinas-ketahanan-pangan', 'mKRhhs6z9ikpUWnINn3iOWGNwViH79dSdPUQcRBe.jpg', 'Kegiatan penanaman dan pemeliharaan tanaman kangkung dan cabe di halaman bidang penganekaragaman konsumsi dan keamanan pangan', 0, 'Operator Admin Website', NULL, 'show', '2022-03-23 06:10:48', '2022-03-23 06:10:48'),
(4, NULL, 'Buku Peta Ketahanan dan Kerentanan Pangan di Kabupaten Subang Tahun 2021', 'buku-peta-ketahanan-dan-kerentanan-pangan-di-kabupaten-subang-tahun-2021', 'OJO7Wvk6og6cb2lsD6pORzuRD6kMK7wDWpiYi99n.jpg', 'Buku Peta Ketahanan dan Kerentanan Pangan di Kabupaten Subang Tahun 2021', 0, 'Operator Admin Website', NULL, 'show', '2022-03-23 06:16:35', '2022-03-23 06:16:35'),
(5, NULL, 'Penjelasan Teknis Kegiatan Penyediaan Infrastruktur Lumbung Pangan DAK 2022', 'penjelasan-teknis-kegiatan-penyediaan-infrastruktur-lumbung-pangan-dak-2022', 'mvGqzC2zRj1tP8V7hdw4FYLSkvNYvYWY5zVgMNHc.jpg', 'Penjelasan Teknis Kegiatan Penyediaan Infrastruktur Lumbung Pangan DAK 2022 di Aula Dinas Ketahanan Pangan', 0, 'Operator Admin Website', NULL, 'show', '2022-03-23 06:19:24', '2022-03-23 06:19:24'),
(6, NULL, 'Kegiatan Audit Lapang Registrasi PSAT PDUK ke Gapoktan Maju Jaya di Kecamatan Cipeundeuy Subang', 'kegiatan-audit-lapang-registrasi-psat-pduk-ke-gapoktan-maju-jaya-di-kecamatan-cipeundeuy-subang', 'ZZndjZEqNh47O1smCbf8QMs1w9TVcNSoQSDEK75Y.jpg', 'Kegiatan Audit Lapang Registrasi PSAT PDUK (Pangan Segar Asal Tumbuhan Produk Dalam Negeri Usaha Kecil)  ke Gapoktan Maju Jaya di Kecamatan Cipeundeuy Subang', 0, 'Operator Admin Website', NULL, 'show', '2022-03-23 06:22:12', '2022-03-23 06:22:12'),
(7, NULL, 'Kegiatan Audit dan Pengambilan Sampel Manggis untuk Sertifikasi Prima 3', 'kegiatan-audit-dan-pengambilan-sampel-manggis-untuk-sertifikasi-prima-3', 'VVSmapMQ8jVXKY8JBbqnJTWGPrXx836otr6Y6rcF.jpg', 'Kegiatan Audit dan Pengambilan Sampel Manggis untuk Sertifikasi Prima 3 di Kecamatan Sagalaherang bekerja sama dengan Otoritas Kompeten Keamanan Pangan (OKKPD) Provinsi Jawa Barat', 0, 'Operator Admin Website', NULL, 'show', '2022-03-23 06:26:53', '2022-03-23 06:26:53'),
(8, NULL, 'Kegiatan Panen Terong dan Paria di Halaman Belakang Dinas Ketahanan Pangan', 'kegiatan-panen-terong-dan-paria-di-halaman-belakang-dinas-ketahanan-pangan', 'qHS16VfY8wsd7ZIABayckZfEE12yE8Gy4N5ntkec.jpg', 'Dalam rangka pemanfaatan lahan pekarangan kantor Dinas Ketahanan Pangan, dilakukan penanaman berbagai jenis sayuran diantaranya kangkung, terong dan paria sehingga hasil panen dapat dimanfaatkan oleh seluruh staff dan pejabat dinas', 0, 'Operator Admin Website', NULL, 'show', '2022-03-23 06:34:52', '2022-03-23 06:34:52'),
(9, NULL, 'Ketahanan Pangan Terjamin dengan Food Estate / Kawasan Lumbung Pangan', 'ketahanan-pangan-terjamin-dengan-food-estate-kawasan-lumbung-pangan', 'BGvNgZ8KpynJliQtcZAn5MbHahTSLrxhX080D4jo.jpg', 'Lumbung Pangan Masyarakat Untuk Pemenuhan Kebutuhan Beras Di Masyarakat', 0, 'Operator Admin Website', NULL, 'show', '2022-03-28 02:10:30', '2022-03-28 02:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` int(20) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `hit` bigint(20) NOT NULL DEFAULT '0',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `id_kecamatan`, `title`, `description`, `slug`, `img`, `thumbnail`, `file`, `status`, `hit`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(13, NULL, 'tes', '<p>dada</p>', 'tes', '11072022-(tes).jpeg', '11072022-(tes).jpeg', NULL, 'show', 0, 'Super Admin Website', 'Super Admin Website', '2022-07-11 02:41:50', '2022-07-11 02:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `hit` bigint(20) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `id_kecamatan`, `category_id`, `title`, `slug`, `short_description`, `content`, `img`, `thumbnail`, `created_by`, `updated_by`, `status`, `hit`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'tes', 'tes', 'zxXZX', '<p>ZXxzx</p>', '210322-(tes).pdf', '210322-(tes).pdf', 'Super Admin Website', NULL, 'show', 0, '2022-03-21 06:41:02', '2022-03-21 06:36:40', '2022-03-21 06:41:02'),
(2, NULL, 1, 'tes', 'tes', 'sdasfda', '<p>dasd</p>', '210322-(tes).jpg', '210322-(tes).jpg', 'Super Admin Website', NULL, 'show', 0, '2022-03-21 06:45:31', '2022-03-21 06:44:11', '2022-03-21 06:45:31'),
(3, NULL, 1, 'sadgaisjgd', 'sadgaisjgd', 'sdad', '<p>dasd</p>', '210322-(sadgaisjgd).png', '210322-(sadgaisjgd).png', 'Super Admin Website', NULL, 'show', 0, '2022-03-21 06:45:36', '2022-03-21 06:45:12', '2022-03-21 06:45:36'),
(4, NULL, 1, 'POLA PANGAN HARAPAN (PPH)', 'pola-pangan-harapan-pph', 'Salah satu parameter sederhana, untuk menilai tingkat keanekaragaman dan mutu gizi ketersediaan dan konsumsi pangan penduduk di suatu wilayah', '<p><span class=\"ILfuVd\"><span class=\"hgKElc\"><strong>Pola Pangan Harapan</strong> (PPH) atau Desirable Dietary Pattern (DDP) adalah susunan keragaman <strong>pangan</strong> yang didasarkan pada sumbangan energi dari kelompok <strong>pangan</strong> utama pada tingkat ketersediaan maupun konsumsi <strong>pangan</strong>.</span></span></p>\r\n<div class=\"wWOJcd\" tabindex=\"0\" role=\"button\" aria-expanded=\"true\" aria-controls=\"exacc_kE07YunqKNjNz7sP7si7uAw8\" aria-labelledby=\"exacc_kE07YunqKNjNz7sP7si7uAw7\">\r\n<div id=\"exacc_kE07YunqKNjNz7sP7si7uAw7\" class=\"iDjcJe IX9Lgd wwB5gf\" style=\"transform: translate3d(0px, 0px, 0px);\">Apa itu skor PPH?</div>\r\n<div class=\"r21Kzd\" style=\"visibility: hidden;\" data-ved=\"2ahUKEwjp8rKi1tz2AhXY5nMBHW7kDscQuk56BAgVEAE\" data-hveid=\"CBUQAQ\">&nbsp;</div>\r\n</div>\r\n<div id=\"exacc_kE07YunqKNjNz7sP7si7uAw8\" class=\"MBtdbb\" style=\"display: block;\" data-ved=\"2ahUKEwjp8rKi1tz2AhXY5nMBHW7kDscQ7NUEegQIFRAD\">\r\n<div class=\"ymu2Hb\">\r\n<div id=\"_kE07YunqKNjNz7sP7si7uAw27\" class=\"t0bRye r2fjmd\" style=\"opacity: 1;\" data-ved=\"2ahUKEwjp8rKi1tz2AhXY5nMBHW7kDscQu04oAHoECBUQBA\" data-hveid=\"CBUQBA\">\r\n<div id=\"WEB_ANSWERS_RESULT_12_kE07YunqKNjNz7sP7si7uAw__3\">\r\n<div class=\"wDYxhc\" style=\"clear: none;\" data-md=\"61\">\r\n<div class=\"LGOjhe\" role=\"heading\" aria-level=\"3\" data-hveid=\"CAYQAA\" data-attrid=\"wa:/description\"><span class=\"ILfuVd\"><span class=\"hgKElc\">Definisi : <strong>Skor PPH</strong> merupakan indikator mutu gizi dan keragaman konsumsi pangan sehingga dapat digunakan untuk merencanakan kebutuhan konsumsi pangan. <strong>Skor PPH</strong> maksimal adalah 100. Semakin tinggi <strong>skor PPH</strong>, maka semakin beragam dan seimbang konsumsi pangan penduduk.</span></span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '230322-(pOLAPANGANHARAPAN(PPH)).JPG', '230322-(pOLAPANGANHARAPAN(PPH)).JPG', 'Operator Admin Website', NULL, 'show', 35, NULL, '2022-03-23 16:41:02', '2022-05-30 07:10:41'),
(5, NULL, 1, 'Anjuran Komposisi Makanan untuk Memenuhi Angka Kecukupan Gizi (AKG) Berdasarkan Kelompok Umur dan Jenis Kelamin (dalam Bentuk Porsi) part.1', 'anjuran-komposisi-makanan-untuk-memenuhi-angka-kecukupan-gizi-akg-berdasarkan-kelompok-umur-dan-jenis-kelamin-dalam-bentuk-porsi-part1', 'Salah satu parameter sederhana, untuk menilai tingkat keanekaragaman dan mutu gizi ketersediaan dan konsumsi pangan penduduk di suatu wilayah', '<p>-</p>', '060422-(anjuranKomposisiMakananUntukMemenuhiAngkaKecukupanGizi(AKG)BerdasarkanKelompokUmurDanJenisKelamin(dalamBentukPorsi)).png', '060422-(anjuranKomposisiMakananUntukMemenuhiAngkaKecukupanGizi(AKG)BerdasarkanKelompokUmurDanJenisKelamin(dalamBentukPorsi)).png', 'Operator Admin Website', NULL, 'show', 31, NULL, '2022-04-06 02:04:12', '2022-06-22 07:01:58'),
(6, NULL, 1, 'Anjuran Komposisi Makanan untuk Memenuhi Angka Kecukupan Gizi (AKG) Berdasarkan Kelompok Umur dan Jenis Kelamin (dalam Bentuk Porsi) part.2', 'anjuran-komposisi-makanan-untuk-memenuhi-angka-kecukupan-gizi-akg-berdasarkan-kelompok-umur-dan-jenis-kelamin-dalam-bentuk-porsi-part2', 'Salah satu parameter sederhana, untuk menilai tingkat keanekaragaman dan mutu gizi ketersediaan dan konsumsi pangan penduduk di suatu wilayah', '<p>-</p>', '060422-(anjuranKomposisiMakananUntukMemenuhiAngkaKecukupanGizi(AKG)BerdasarkanKelompokUmurDanJenisKelamin(dalamBentukPorsi)Part.2).png', '060422-(anjuranKomposisiMakananUntukMemenuhiAngkaKecukupanGizi(AKG)BerdasarkanKelompokUmurDanJenisKelamin(dalamBentukPorsi)Part.2).png', 'Operator Admin Website', NULL, 'show', 26, NULL, '2022-04-06 02:06:02', '2022-05-30 07:10:28'),
(7, NULL, 1, 'SISTEM KETAHANAN PANGAN NASIONAL', 'sistem-ketahanan-pangan-nasional', 'kondisi terpenuhinya pangan bagi negara sampai dengan perseorangan, yang tercermin dari tersedianya Pangan yang cukup, baik jumlah maupun mutunya, aman, beragam, bergizi, merata, dan terjangkau serta tidak bertentangan dengan agama, keyakinan, dan budaya ', '<p>-</p>', '060422-(sISTEMKETAHANANPANGANNASIONAL).png', '060422-(sISTEMKETAHANANPANGANNASIONAL).png', 'Operator Admin Website', NULL, 'show', 31, NULL, '2022-04-06 02:17:42', '2022-05-30 07:10:34'),
(8, NULL, 1, 'tes', 'tes', '1sdsfa', '<p>asdadafa</p>', '110722-(tes).jpeg', '110722-(tes).jpeg', 'Super Admin Website', NULL, 'show', 0, NULL, '2022-07-11 02:20:13', '2022-07-11 02:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE `article_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `id_kecamatan`, `name`, `slug`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Food For Life', 'food-for-life', 'Operator Admin Website', 'Operator Admin Website', 'show', '2022-03-17 07:18:22', '2022-04-06 01:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_publik`
--

CREATE TABLE `dashboard_publik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `tipe` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_publik`
--

INSERT INTO `dashboard_publik` (`id`, `title`, `slug`, `img`, `file`, `description`, `created_by`, `updated_by`, `status`, `tipe`, `created_at`, `updated_at`) VALUES
(3, 'Laporan Harga Pangan_Dinas Ketahanan Pangan_ tgl. 17 Maret 2022', 'laporan-harga-pangan-dinas-ketahanan-pangan-tgl-17-maret-2022', NULL, '23032022-(laporan-harga-pangan-dinas-ketahanan-pangan-tgl-17-maret-2022).pdf', '<table style=\"height: 1383.8px;\" width=\"801\">\r\n<tbody>\r\n<tr style=\"height: 21.4px;\">\r\n<td style=\"height: 21.4px; text-align: center;\" colspan=\"9\" width=\"607\"><span style=\"color: #000000;\"><strong>DAFTAR ISIAN RATA-RATA BEBERAPA BAHAN POKOK</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 21.4px;\">\r\n<td style=\"height: 21.4px; text-align: center;\" colspan=\"9\"><span style=\"color: #000000;\"><strong>DINAS KETAHANAN PANGAN</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 21.4px;\">\r\n<td style=\"height: 21.4px; text-align: center;\" colspan=\"9\"><span style=\"color: #000000;\"><strong>KABUPATEN SUBANG</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 21.4px;\">\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 21.4px;\">\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.8px;\">\r\n<td style=\"height: 43.8px;\" colspan=\"4\"><span style=\"color: #000000;\"><strong>Nama Pasar : Pasar Baru (Belakang Terminal) Subang&nbsp;</strong></span></td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 21.39px;\">\r\n<td style=\"height: 21.39px;\" colspan=\"2\"><span style=\"color: #000000;\"><strong>Nama Petugas Survey&nbsp;</strong></span></td>\r\n<td style=\"height: 21.39px;\" colspan=\"2\"><span style=\"color: #000000;\"><strong>: IMAS SUHARTINI</strong></span></td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 21.4px;\">\r\n<td style=\"height: 21.4px;\" colspan=\"2\"><span style=\"color: #000000;\"><strong>Tanggal</strong></span></td>\r\n<td style=\"height: 21.4px;\" colspan=\"2\"><span style=\"color: #000000;\"><strong>: 17 Maret&nbsp; 2022</strong></span></td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\" colspan=\"2\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 25.7px;\">\r\n<td style=\"height: 51.4px;\" rowspan=\"2\"><span style=\"color: #169179;\"><strong>NO</strong></span></td>\r\n<td style=\"height: 51.4px;\" rowspan=\"2\"><span style=\"color: #169179;\"><strong>Komoditas</strong></span></td>\r\n<td style=\"height: 51.4px;\" rowspan=\"2\" width=\"114\"><span style=\"color: #169179;\"><strong>Asal Komoditi</strong></span></td>\r\n<td style=\"height: 51.4px;\" rowspan=\"2\" width=\"90\"><span style=\"color: #169179;\"><strong>Pasokan Belanja /Minggu</strong></span></td>\r\n<td style=\"height: 25.7px;\" colspan=\"2\"><span style=\"color: #169179;\"><strong>Harga</strong></span></td>\r\n<td style=\"height: 25.7px;\" colspan=\"2\"><span style=\"color: #169179;\"><strong>Perubahan</strong></span></td>\r\n<td style=\"height: 51.4px;\" rowspan=\"2\"><span style=\"color: #169179;\"><strong>Keterangan</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 25.7px;\">\r\n<td style=\"height: 25.7px;\"><span style=\"color: #169179;\"><strong>Kemarin</strong></span></td>\r\n<td style=\"height: 25.7px;\"><span style=\"color: #169179;\"><strong>Hari ini</strong></span></td>\r\n<td style=\"height: 25.7px;\"><span style=\"color: #169179;\"><strong>Rp</strong></span></td>\r\n<td style=\"height: 25.7px;\"><span style=\"color: #169179;\"><strong>%</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>1</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>BERAS PREMIUM(Termahal)</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>Kab. Subang</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;1 ton&nbsp;&nbsp;</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.8px;\">\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>BERAS MEDIUM</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>Kab. Subang</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;2 ton&nbsp;&nbsp;</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10,000</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10,000</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>BERAS TERMURAH</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>Kab. Subang</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;2 ton&nbsp;&nbsp;</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>2</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>GULA PASIR</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>Jakarta</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;-&nbsp;</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 21.4px;\">\r\n<td style=\"height: 21.4px;\"><span style=\"color: #169179;\"><strong>3</strong></span></td>\r\n<td style=\"height: 21.4px;\"><span style=\"color: #169179;\"><strong>MINYAK GORENG</strong></span></td>\r\n<td style=\"height: 21.4px;\"><span style=\"color: #169179;\"><strong>Jakarta</strong></span></td>\r\n<td style=\"height: 21.4px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n<td style=\"height: 21.4px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.8px;\">\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>-kemasan (BIMOLI)</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\" width=\"145\"><span style=\"color: #169179;\"><strong>kosong&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>- tanpa merk</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 16,500</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 17,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (500)</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (3)</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>naik&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>4</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>DAGING SAPI</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>Pati</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp; 130,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp; 130,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.8px;\">\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>5</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>DAGING AYAM BROILER</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>Kab. Subang</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;4 kw&nbsp;&nbsp;</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 36,000</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 36,000</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 66.2px;\">\r\n<td style=\"height: 66.2px;\"><span style=\"color: #169179;\"><strong>6</strong></span></td>\r\n<td style=\"height: 66.2px;\"><span style=\"color: #169179;\"><strong>TELUR AYAM BROILER</strong></span></td>\r\n<td style=\"height: 66.2px;\" width=\"114\"><span style=\"color: #169179;\"><strong>Kab. Subang, Blitar</strong></span></td>\r\n<td style=\"height: 66.2px;\"><span style=\"color: #169179;\"><strong>&nbsp;2 kw&nbsp;&nbsp;</strong></span></td>\r\n<td style=\"height: 66.2px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25,000</strong></span></td>\r\n<td style=\"height: 66.2px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25,000</strong></span></td>\r\n<td style=\"height: 66.2px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 66.2px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 66.2px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>7</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>CABE MERAH</strong></span></td>\r\n<td style=\"height: 43.79px;\" width=\"114\"><span style=\"color: #169179;\"><strong>Bandung, Cikopo</strong></span></td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-Kriting</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;20 kg&nbsp;&nbsp;</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-Biasa</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;60 kg&nbsp;&nbsp;</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 60,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp; 10,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 17</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>turun&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 43.8px;\">\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>8</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>CABE RAWIT</strong></span></td>\r\n<td style=\"height: 43.8px;\" width=\"114\"><span style=\"color: #169179;\"><strong>Bandung, Cikopo</strong></span></td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-Hijau</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;30 kg&nbsp;&nbsp;</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-Merah</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;80 kg&nbsp;&nbsp;</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 70,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 60,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp; 10,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>turun&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>9</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>BAWANG MERAH</strong></span></td>\r\n<td style=\"height: 43.79px;\" width=\"114\"><span style=\"color: #169179;\"><strong>Bandung, Cikopo</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>2 kw&nbsp;</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 35,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp; 3,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>turun&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>10</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>BAWANG PUTIH</strong></span></td>\r\n<td style=\"height: 43.79px;\" width=\"114\"><span style=\"color: #169179;\"><strong>Bandung, Cikopo</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>3 kw&nbsp;</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 30,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp; (2,000)</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (7)</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>naik&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 43.8px;\">\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>11</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>KACANG KEDELAI</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>Jakarta</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14,000</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14,000</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.8px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>12</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>IKAN MAS&nbsp;</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>Kab. Subang</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>13</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>IKAN NILA</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>Kab. Subang</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>-</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 33,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 33,000</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</strong></span></td>\r\n<td style=\"height: 43.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 21.39px;\">\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n<td style=\"height: 21.39px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 21.4px;\">\r\n<td style=\"height: 21.4px;\" colspan=\"9\"><span style=\"color: #169179;\"><strong>Keterangan:&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 88.59px;\">\r\n<td style=\"height: 88.59px;\"><span style=\"color: #169179;\"><strong>1</strong></span></td>\r\n<td style=\"height: 88.59px;\" colspan=\"8\" width=\"558\"><span style=\"color: #169179;\"><strong>komoditi minyak goreng&nbsp; pada saat ini mengalami kelangkaan dikarenakan ad pembatasan pasokan dalam pengiriman dari distributor k para pedagang, dan dengan d cabut y peraturan HET harga minyak goreng semakin melambung tinggi. sehingga DKUPP mengadakan Operasi pasar k para pedagang yg d selenggarakan oleh kemendagri yg bekerja sama dg indag prov jabar,</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 43.8px;\">\r\n<td style=\"height: 43.8px;\"><span style=\"color: #169179;\"><strong>2</strong></span></td>\r\n<td style=\"height: 43.8px;\" colspan=\"8\"><span style=\"color: #169179;\"><strong>komoditi pada cabe di pasar tradisional mengalami fluktuasi harga dikarenakan cuaca dan kenaikan biaya angkut,&nbsp;</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 43.79px;\">\r\n<td style=\"height: 43.79px;\"><span style=\"color: #169179;\"><strong>3</strong></span></td>\r\n<td style=\"height: 43.79px;\" colspan=\"8\"><span style=\"color: #169179;\"><strong>komoditi gula pada saat ini ad sedikit kenaikan dari harga HET Rp 13.000 dan skrg harga gula Rp 14.000,&nbsp;</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Operator Admin Website', 'Super Admin Website', 'show', 1, '2022-03-23 14:18:39', '2022-03-31 04:22:02'),
(4, 'DATA KETERSEDIAAN STOK PERIODE TANGGAL 17 MARET 2022 PERUM BULOG CABANG SUBANG', 'data-ketersediaan-stok-periode-tanggal-17-maret-2022-perum-bulog-cabang-subang', NULL, '23032022-(data-ketersediaan-stok-periode-tanggal-17-maret-2022-perum-bulog-cabang-subang).pdf', '<p>DATA KETERSEDIAAN STOK PERIODE TANGGAL 17 MARET 2022<br />PERUM BULOG CABANG SUBANG</p>', 'Operator Admin Website', 'Super Admin Website', 'show', 1, '2022-03-23 14:24:02', '2022-03-31 04:22:43'),
(5, 'Database Lumbung Pangan Masyarakat (LPM) Kabupaten Subang Tahun 2022', 'database-lumbung-pangan-masyarakat-lpm-kabupaten-subang-tahun-2022', NULL, '23032022-(database-lumbung-pangan-masyarakat-lpm-kabupaten-subang-tahun-2022).pdf', '<p>Database Lumbung Pangan Masyarakat (LPM) Kabupaten Subang Tahun 2022</p>', 'Operator Admin Website', 'Super Admin Website', 'show', 1, '2022-03-23 15:03:23', '2022-03-31 04:22:58'),
(6, 'Data Kawasan Rumah Pangan Lestari Kab.Subang Tahun 2010-2021', 'data-kawasan-rumah-pangan-lestari-kabsubang-tahun-2010-2021', NULL, '23032022-(data-kawasan-rumah-pangan-lestari-kabsubang-tahun-2010-2021).pdf', '<p>Kawasan Rumah Pangan Lestari (KRPL) merupakan program pengembangan model rumah pangan yang dibangun dalam suatu kawasan (dusun, desa, kecamatan) dengan prinsip pemanfaatan pekarangan yang ramah lingkungan untuk pemenuhan kebutuhan pangan dan gizi keluarga melalui penyediaan aneka sayur dan buah serta sumber protein hewani. Disamping itu pembangunan KRPL diharapkan mampu meningkatkan pendapatan keluarga sehingga dapat mengurangi biaya untuk pemenuhan kebutuhan sehari-hari dan meningkatkan biaya untuk pendidikan. KRPL juga dimaksudkan untuk membudayakan masyarakat mengkonsumsi makanan yang beragam, bergizi seimbang dan aman (B2SA).</p>', 'Operator Admin Website', 'Super Admin Website', 'show', 1, '2022-03-23 15:06:05', '2022-03-31 04:23:17'),
(7, 'DATA KELOMPOK LUPM & TOKO TANI INDONESIA (TTI) KABUPATEN SUBANG TAHUN 2016-2019', 'data-kelompok-lupm-toko-tani-indonesia-tti-kabupaten-subang-tahun-2016-2019', NULL, '23032022-(data-kelompok-lupm-toko-tani-indonesia-tti-kabupaten-subang-tahun-2016-2019).pdf', '<p><span style=\"font-size: 10.5pt;\"><span style=\"font-family: Helvetica;\"><span style=\"color: #222222;\">Toko Tani Indonesia adalah salah satu usaha pemerintah memotong rantai pasok pangan. Dengan rantai pasokan yang makin pendek, diharapkan harga barang juga akan turun. </span></span></span></p>', 'Operator Admin Website', 'Super Admin Website', 'show', 1, '2022-03-23 15:11:00', '2022-03-31 04:25:21'),
(8, 'Situasi Ketersediaan Pangan di Kabupaten Subang Tahun 2021', 'situasi-ketersediaan-pangan-di-kabupaten-subang-tahun-2021', NULL, '23032022-(situasi-ketersediaan-pangan-di-kabupaten-subang-tahun-2021).pdf', '<p>Pengertian&nbsp;<strong>ketahanan pangan</strong>, tidak lepas dari UU No. 18/2012 tentang Pangan. Disebutkan dalam UU tersebut bahwa Ketahanan Pangan adalah&nbsp;<em>&ldquo;kondisi terpenuhinya Pangan bagi negara sampai dengan perseorangan, yang tercermin dari tersedianya pangan yang cukup, baik jumlah maupun mutunya, aman, beragam, bergizi, merata, dan terjangkau serta tidak bertentangan dengan agama, keyakinan, dan budaya masyarakat, untuk dapat hidup sehat, aktif, dan produktif secara berkelanjutan&rdquo;</em>.</p>', 'Operator Admin Website', 'Super Admin Website', 'show', 1, '2022-03-23 15:15:35', '2022-03-31 04:24:23'),
(9, 'Perkembangan Rata-Rata Konsumsi Energi di Kabupaten Subang Tahun 2016 - 2021', 'perkembangan-rata-rata-konsumsi-energi-di-kabupaten-subang-tahun-2016-2021', NULL, '23032022-(perkembangan-rata-rata-konsumsi-energi-di-kabupaten-subang-tahun-2016-2021).pdf', '<p><strong>Angka Kecukupan Gizi (AKG)</strong> adalah suatu nilai yang menunjukkan <strong>kebutuhan rata-rata zat gizi tertentu</strong> yang harus dipenuhi setiap hari bagi hampir semua orang dengan karakteristik tertentu yang meliputi umur, jenis kelamin, tingkat aktivitas fisik, dan kondisi fisiologis, untuk hidup sehat.</p>', 'Operator Admin Website', 'Super Admin Website', 'show', 1, '2022-03-23 15:20:52', '2022-03-31 03:50:27');
INSERT INTO `dashboard_publik` (`id`, `title`, `slug`, `img`, `file`, `description`, `created_by`, `updated_by`, `status`, `tipe`, `created_at`, `updated_at`) VALUES
(10, 'Laporan Harga Pangan Pokok Di Pasar Baru Subang', 'laporan-harga-pangan-pokok-di-pasar-baru-subang', NULL, '28032022-(laporan-harga-pangan-pokok-di-pasar-baru-subang).pdf', '<table style=\"height: 1195.8px;\" width=\"894\">\r\n<tbody>\r\n<tr style=\"height: 22.4px;\">\r\n<td style=\"height: 22.4px; text-align: center;\" colspan=\"11\" width=\"894\">DAFTAR ISIAN RATA-RATA BEBERAPA BAHAN POKOK</td>\r\n</tr>\r\n<tr style=\"height: 22.4px;\">\r\n<td style=\"height: 22.4px; text-align: center;\" colspan=\"11\">DINAS KETAHANAN PANGAN</td>\r\n</tr>\r\n<tr style=\"height: 22.4px;\">\r\n<td style=\"height: 22.4px; text-align: center;\" colspan=\"11\">KABUPATEN SUBANG</td>\r\n</tr>\r\n<tr style=\"height: 22.4px;\">\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 22.4px;\">\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.8px;\">\r\n<td style=\"height: 44.8px;\" colspan=\"4\">Nama Pasar : Pasar Baru (Belakang Terminal) Subang&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 22.39px;\">\r\n<td style=\"height: 22.39px;\" colspan=\"2\">Nama Petugas Survey&nbsp;</td>\r\n<td style=\"height: 22.39px;\" colspan=\"2\">: IMAS SUHARTINI</td>\r\n<td style=\"height: 22.39px;\">&nbsp;</td>\r\n<td style=\"height: 22.39px;\">&nbsp;</td>\r\n<td style=\"height: 22.39px;\">&nbsp;</td>\r\n<td style=\"height: 22.39px;\">&nbsp;</td>\r\n<td style=\"height: 22.39px;\">&nbsp;</td>\r\n<td style=\"height: 22.39px;\">&nbsp;</td>\r\n<td style=\"height: 22.39px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 22.4px;\">\r\n<td style=\"height: 22.4px;\" colspan=\"2\">Tanggal</td>\r\n<td style=\"height: 22.4px;\" colspan=\"2\">: 24 Maret&nbsp; 2022</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\" colspan=\"2\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 26.7px;\">\r\n<td style=\"height: 53.4px;\" rowspan=\"2\">NO</td>\r\n<td style=\"height: 53.4px;\" rowspan=\"2\">Komoditas</td>\r\n<td style=\"height: 53.4px;\" rowspan=\"2\" width=\"114\">Asal Komoditi</td>\r\n<td style=\"height: 53.4px;\" rowspan=\"2\" width=\"90\">Pasokan Belanja /Minggu</td>\r\n<td style=\"height: 53.4px;\" rowspan=\"2\" width=\"54\">Stok/Mgg</td>\r\n<td style=\"height: 53.4px;\" rowspan=\"2\" width=\"55\">Harga Beli</td>\r\n<td style=\"height: 26.7px;\" colspan=\"2\">Harga</td>\r\n<td style=\"height: 26.7px;\" colspan=\"2\">Perubahan</td>\r\n<td style=\"height: 53.4px;\" rowspan=\"2\">Keterangan</td>\r\n</tr>\r\n<tr style=\"height: 26.7px;\">\r\n<td style=\"height: 26.7px;\">Kemarin</td>\r\n<td style=\"height: 26.7px;\">Hari ini</td>\r\n<td style=\"height: 26.7px;\">Rp</td>\r\n<td style=\"height: 26.7px;\">%</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">1</td>\r\n<td style=\"height: 44.79px;\">BERAS PREMIUM(Termahal)</td>\r\n<td style=\"height: 44.79px;\">Kab. Subang</td>\r\n<td style=\"height: 44.79px;\">&nbsp;5 ton&nbsp;&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;2 ton&nbsp;&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.8px;\">\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">BERAS MEDIUM</td>\r\n<td style=\"height: 44.8px;\">Kab. Subang</td>\r\n<td style=\"height: 44.8px;\">&nbsp;5 ton&nbsp;&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;3 ton&nbsp;&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10,000</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10,000</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">BERAS TERMURAH</td>\r\n<td style=\"height: 44.79px;\">Kab. Subang</td>\r\n<td style=\"height: 44.79px;\">&nbsp;2 ton&nbsp;&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 9,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">2</td>\r\n<td style=\"height: 44.79px;\">GULA PASIR</td>\r\n<td style=\"height: 44.79px;\">Jakarta</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 22.4px;\">\r\n<td style=\"height: 22.4px;\">3</td>\r\n<td style=\"height: 22.4px;\">MINYAK GORENG</td>\r\n<td style=\"height: 22.4px;\">Jakarta</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n<td style=\"height: 22.4px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.8px;\">\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">-kemasan (BIMOLI) (1 Liter)</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25,000</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 24,000</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1,000</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4</td>\r\n<td style=\"height: 44.8px;\" width=\"58\">turun&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">- tanpa merk (1 Liter)</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 19,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 19,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">4</td>\r\n<td style=\"height: 44.79px;\">DAGING SAPI</td>\r\n<td style=\"height: 44.79px;\">Pati</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp; 130,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp; 130,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.8px;\">\r\n<td style=\"height: 44.8px;\">5</td>\r\n<td style=\"height: 44.8px;\">DAGING AYAM BROILER</td>\r\n<td style=\"height: 44.8px;\">Kab. Subang</td>\r\n<td style=\"height: 44.8px;\">&nbsp;5 kw&nbsp;&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 35,000</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 36,000</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (1,000)</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (3)</td>\r\n<td style=\"height: 44.8px;\">naik&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 67.2px;\">\r\n<td style=\"height: 67.2px;\">6</td>\r\n<td style=\"height: 67.2px;\">TELUR AYAM BROILER</td>\r\n<td style=\"height: 67.2px;\" width=\"114\">Kab. Subang, Blitar</td>\r\n<td style=\"height: 67.2px;\">&nbsp;2 kw&nbsp;&nbsp;</td>\r\n<td style=\"height: 67.2px;\">&nbsp;</td>\r\n<td style=\"height: 67.2px;\">&nbsp;</td>\r\n<td style=\"height: 67.2px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25,000</td>\r\n<td style=\"height: 67.2px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 25,000</td>\r\n<td style=\"height: 67.2px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 67.2px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 67.2px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">7</td>\r\n<td style=\"height: 44.79px;\">CABE MERAH</td>\r\n<td style=\"height: 44.79px;\" width=\"114\">Bandung, Cikopo</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">-Kriting</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;20 kg&nbsp;&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">-Biasa</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;30 kg&nbsp;&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.8px;\">\r\n<td style=\"height: 44.8px;\">8</td>\r\n<td style=\"height: 44.8px;\">CABE RAWIT</td>\r\n<td style=\"height: 44.8px;\" width=\"114\">Bandung, Cikopo</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">-Hijau</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;40 kg&nbsp;&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 45,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">-Merah</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;50 kg&nbsp;&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 60,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 55,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8</td>\r\n<td style=\"height: 44.79px;\">turun&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">9</td>\r\n<td style=\"height: 44.79px;\">BAWANG MERAH</td>\r\n<td style=\"height: 44.79px;\" width=\"114\">Bandung, Cikopo</td>\r\n<td style=\"height: 44.79px;\">3 kw&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">10</td>\r\n<td style=\"height: 44.79px;\">BAWANG PUTIH</td>\r\n<td style=\"height: 44.79px;\" width=\"114\">Bandung, Cikopo</td>\r\n<td style=\"height: 44.79px;\">5 kw&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.8px;\">\r\n<td style=\"height: 44.8px;\">11</td>\r\n<td style=\"height: 44.8px;\">KACANG KEDELAI</td>\r\n<td style=\"height: 44.8px;\">Jakarta</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14,000</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 14,000</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.8px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.8px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">12</td>\r\n<td style=\"height: 44.79px;\">IKAN MAS&nbsp;</td>\r\n<td style=\"height: 44.79px;\">Kab. Subang</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 32,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 44.79px;\">\r\n<td style=\"height: 44.79px;\">13</td>\r\n<td style=\"height: 44.79px;\">IKAN NILA</td>\r\n<td style=\"height: 44.79px;\">Kab. Subang</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 33,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 33,000</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -</td>\r\n<td style=\"height: 44.79px;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Operator Admin Website', 'Super Admin Website', 'show', 1, '2022-03-28 02:17:52', '2022-03-31 03:49:54'),
(11, 'Data Ketersediaan Stok Pangan Pokok di Bulog Per 24Maret2022', 'data-ketersediaan-stok-pangan-pokok-di-bulog-per-24maret2022', NULL, '28032022-(data-ketersediaan-stok-pangan-pokok-di-bulog-per-24maret2022).pdf', '<p>-</p>', 'Operator Admin Website', 'Super Admin Website', 'show', 1, '2022-03-28 02:21:20', '2022-03-31 03:45:20'),
(13, 'Laporan harian Stok Pangan di Bulog Cabang Subang 30.03.22', 'laporan-harian-stok-pangan-di-bulog-cabang-subang-300322', NULL, '02042022-(laporan-harian-stok-pangan-di-bulog-cabang-subang-300322).pdf', '<p>-</p>', 'Operator Admin Website', 'Operator Admin Website', 'show', 1, '2022-04-02 07:28:11', '2022-04-02 07:30:51'),
(14, 'laporan harga Disketpan Kab. Subang 30.03.2022', 'laporan-harga-disketpan-kab-subang-30032022', NULL, '02042022-(laporan-harga-disketpan-kab-subang-30032022).pdf', '<p>-</p>', 'Operator Admin Website', 'Operator Admin Website', 'show', 1, '2022-04-02 07:29:53', '2022-04-02 07:31:13'),
(15, 'laporan harga Disketpan Kab. Subang, 21 April 2022', 'laporan-harga-disketpan-kab-subang-21-april-2022', NULL, '21042022-(laporan-harga-disketpan-kab-subang-21-april-2022).pdf', '<p>-</p>', 'Operator Admin Website', 'Operator Admin Website', 'show', 1, '2022-04-21 04:43:58', '2022-04-21 04:44:15'),
(16, 'DATA STOK PANGAN TGL 21-04-2022', 'data-stok-pangan-tgl-21-04-2022', NULL, '21042022-(data-stok-pangan-tgl-21-04-2022).pdf', '<p>-</p>', 'Operator Admin Website', NULL, 'show', 1, '2022-04-21 04:45:05', '2022-04-21 04:45:05'),
(17, 'Sistem kewaspadaan dan gizi (SKPG)', 'sistem-kewaspadaan-dan-gizi-skpg', NULL, '21042022-(sistem-kewaspadaan-dan-gizi-skpg).pdf', '<p>Sistem kewaspadaan dan gizi (SKPG) merupakan suatu sistem pendeteksian dan pengolahan infomasi tentang<br />situasi pangan dan gizi yang berjalan terus menerus. Tujuan dilaksanakannya SKPG adalah untuk menyediakan<br />data dan informasi tentang keadaan pangan dan gizi secara rutin yang digunakan untuk pengambilan keputusan<br />pemerintah di berbagai tingkat administrasi yang berkaitan dengan penyusunan prioritas&Acirc; dan pengaturan sumber<br />daya dan dana dalam memenuhi kebutuhan program pangan dan gizi dan menghasilkan situasi pangan dan gizi di<br />suatu daerah. Data yang digunakan adalah data sekunder yang diperoleh dari BPS Kabupaten Batu Bara, Dinas<br />Pertanian, Bappeda, Dinas Pengendalian Penduduk dan Keluarga Berencana, dan Dinas Kesehatan. Dengan rumus<br />tertentu, data-data tersebut dihitung hingga menghasilkan skor untuk mendapatkan peta wilayah yang termasuk<br />rawan, waspada, aman.</p>', 'Operator Admin Website', NULL, 'show', 0, '2022-04-21 05:34:23', '2022-04-21 05:34:23'),
(18, 'laporan harga Disketpan Kab. Subang 2022, 9 juni22', 'laporan-harga-disketpan-kab-subang-2022-9-juni22', NULL, '28062022-(laporan-harga-disketpan-kab-subang-2022-9-juni22).pdf', '<p>laporan harga Disketpan Kab. Subang 2022, 9 juni22</p>', 'Operator Admin Website', NULL, 'show', 0, '2022-06-28 04:37:10', '2022-06-28 04:37:10'),
(19, 'laporan harga Disketpan Kab. Subang 2022, 13 juni 2022', 'laporan-harga-disketpan-kab-subang-2022-13-juni-2022', NULL, '28062022-(laporan-harga-disketpan-kab-subang-2022-13-juni-2022).pdf', '<p>laporan harga Disketpan Kab. Subang 2022, 13 juni 2022</p>', 'Operator Admin Website', NULL, 'show', 1, '2022-06-28 04:37:56', '2022-06-28 04:37:56'),
(20, 'laporan harga Disketpan Kab. Subang 2022, 16 Juni 2022', 'laporan-harga-disketpan-kab-subang-2022-16-juni-2022', NULL, '28062022-(laporan-harga-disketpan-kab-subang-2022-16-juni-2022).pdf', '<p>laporan harga Disketpan Kab. Subang 2022, 16 Juni 2022</p>', 'Operator Admin Website', NULL, 'show', 1, '2022-06-28 04:38:27', '2022-06-28 04:38:27'),
(21, 'laporan harga Disketpan Kab. Subang 23 Juni 2022', 'laporan-harga-disketpan-kab-subang-23-juni-2022', NULL, '28062022-(laporan-harga-disketpan-kab-subang-23-juni-2022).pdf', '<p>laporan harga Disketpan Kab. Subang 23 Juni 2022</p>', 'Operator Admin Website', NULL, 'show', 1, '2022-06-28 04:41:04', '2022-06-28 04:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `desas`
--

CREATE TABLE `desas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `desas`
--

INSERT INTO `desas` (`id`, `id_kecamatan`, `name`, `created_at`, `updated_at`) VALUES
(30, NULL, 'Anggasari', '2022-02-18 07:11:03', '2022-02-19 05:58:15'),
(31, NULL, 'Babakan Wanakerta', '2022-02-18 07:11:03', '2022-02-19 07:40:37'),
(32, NULL, 'Balingbing', '2022-02-18 07:11:03', '2022-02-19 06:55:44'),
(33, NULL, 'Bantarsari', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(34, NULL, 'Belendung', '2022-02-18 07:11:03', '2022-02-19 07:22:16'),
(35, NULL, 'Binong', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(36, NULL, 'Blanakan', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(37, NULL, 'Ciasem hilir', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(38, NULL, 'Ciasem Tengah', '2022-02-18 07:11:03', '2022-02-19 07:16:30'),
(39, NULL, 'Ciater', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(40, NULL, 'Cibalandong', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(41, NULL, 'Cibuluh', '2022-02-18 07:11:03', '2022-02-19 07:15:16'),
(42, NULL, 'Cidahu', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(43, NULL, 'Cigadog', '2022-02-18 07:11:03', '2022-02-19 07:07:02'),
(44, NULL, 'Cigadung', '2022-02-18 07:11:03', '2022-02-19 06:59:02'),
(45, NULL, 'Cijambe', '2022-02-18 07:11:03', '2022-02-19 07:12:25'),
(46, NULL, 'Cijengkol', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(47, NULL, 'Cikujang ', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(48, NULL, 'Cimanggu', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(49, NULL, 'Cimehmal', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(50, NULL, 'Cinangsi', '2022-02-18 07:11:03', '2022-02-19 06:55:08'),
(51, NULL, 'Cirangkong', '2022-02-18 07:11:03', '2022-02-19 07:36:33'),
(52, NULL, 'Cisaga', '2022-02-18 07:11:03', '2022-02-19 07:30:55'),
(53, NULL, 'Cisampih', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(54, NULL, 'Citamekar', '2022-02-18 07:11:03', '2022-02-19 06:58:18'),
(55, NULL, 'Compreng', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(56, NULL, 'Cupunagara', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(57, NULL, 'Curugrendeng', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(58, NULL, 'Dangdeur', '2022-02-18 07:11:03', '2022-02-19 07:03:31'),
(59, NULL, 'Darmaga', '2022-02-18 07:11:03', '2022-02-19 07:16:50'),
(60, NULL, 'Dawuan Kidul', '2022-02-18 07:11:03', '2022-02-19 06:57:21'),
(61, NULL, 'Dukuh', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(62, NULL, 'Gardusayang', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(63, NULL, 'Gembor', '2022-02-18 07:11:03', '2022-02-19 06:57:05'),
(64, NULL, 'Gunung Sari', '2022-02-18 07:11:03', '2022-02-19 07:36:58'),
(65, NULL, 'Gunung sembung', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(66, NULL, 'Gunungtua', '2022-02-18 07:11:03', '2022-02-19 07:01:43'),
(67, NULL, 'Jambalaer', '2022-02-18 07:11:03', '2022-02-19 07:27:18'),
(68, NULL, 'Jatibaru', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(69, NULL, 'Jatireja', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(70, NULL, 'Kalijati barat', '2022-02-18 07:11:03', '2022-02-19 07:35:12'),
(71, NULL, 'Kalijati Timur', '2022-02-18 07:11:03', '2022-02-19 07:34:40'),
(72, NULL, 'Kaliwadas', '2022-02-18 07:11:03', '2022-02-19 07:41:07'),
(73, NULL, 'Kamarung', '2022-02-18 07:11:03', '2022-02-19 07:35:40'),
(74, NULL, 'Karanganyar', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(75, NULL, 'Karanghegar', '2022-02-18 07:11:03', '2022-02-19 07:08:51'),
(76, NULL, 'Karangmukti', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(77, NULL, 'Kasomalang Kulon', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(78, NULL, 'Kasomalang Wetan', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(79, NULL, 'Kaunganten', '2022-02-18 07:11:03', '2022-02-19 07:23:31'),
(80, NULL, 'Kediri', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(81, NULL, 'Kemarung', '2022-02-18 07:11:03', '2022-02-19 07:17:42'),
(82, NULL, 'Kiarasari', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(83, NULL, 'Kihiyang', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(84, NULL, 'Kumpay', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(85, NULL, 'Legon Wetan', '2022-02-18 07:11:03', '2022-02-19 07:00:18'),
(86, NULL, 'Leles', '2022-02-18 07:11:03', '2022-02-19 07:10:42'),
(87, NULL, 'Lengkong', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(88, NULL, 'Majasari', '2022-02-18 07:11:03', '2022-02-19 07:34:21'),
(89, NULL, 'Manyeti', '2022-02-18 07:11:03', '2022-02-19 07:12:49'),
(90, NULL, 'Marengmang', '2022-02-18 07:11:03', '2022-02-19 07:27:47'),
(91, NULL, 'Margasari', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(92, NULL, 'Mayang', '2022-02-18 07:11:03', '2022-02-19 06:58:41'),
(94, NULL, 'Mekarsari', '2022-02-18 07:11:03', '2022-02-19 06:59:55'),
(95, NULL, 'Mulyasari', '2022-02-18 07:11:03', '2022-02-19 07:11:40'),
(96, NULL, 'Nagrog', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(97, NULL, 'Neglasari', '2022-02-18 07:11:03', '2022-02-19 07:38:28'),
(98, NULL, 'Pagon', '2022-02-18 07:11:03', '2022-02-19 07:39:02'),
(99, NULL, 'Pakuhaji', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(100, NULL, 'Palasari', '2022-02-18 07:11:03', '2022-02-19 07:04:56'),
(101, NULL, 'Pamanukan', '2022-02-18 07:11:03', '2022-02-19 06:59:18'),
(102, NULL, 'Parapatan', '2022-02-18 07:11:03', '2022-02-19 07:39:35'),
(103, NULL, 'Parung', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(104, NULL, 'Pasanggarahan', '2022-02-18 07:11:03', '2022-02-19 06:53:25'),
(105, NULL, 'Pasirkareumbi', '2022-02-18 07:11:03', '2022-02-19 06:52:57'),
(107, NULL, 'Ponggang', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(108, NULL, 'Purwadadi Timur', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(109, NULL, 'Rawalele', '2022-02-18 07:11:03', '2022-02-19 07:24:24'),
(110, NULL, 'Sadawana', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(111, NULL, 'Salamjaya', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(112, NULL, 'Sarireja', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(113, NULL, 'Simpar', '2022-02-18 07:11:03', '2022-02-19 06:56:13'),
(114, NULL, 'Sindangsari', '2022-02-18 07:11:03', '2022-02-19 07:31:52'),
(115, NULL, 'Situsari', '2022-02-18 07:11:03', '2022-02-19 07:20:57'),
(116, NULL, 'Soklat', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(117, NULL, 'Subang', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(118, NULL, 'Sukahurip', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(119, NULL, 'Sukakerti', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(120, NULL, 'Sukamelang', '2022-02-18 07:11:03', '2022-02-19 07:14:36'),
(121, NULL, 'Sukamulya', '2022-02-18 07:11:03', '2022-02-19 07:18:31'),
(122, NULL, 'Sumbersari', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(123, NULL, 'Tanggulun Timur', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(124, NULL, 'Tanjolaya', '2022-02-18 07:11:03', '2022-02-19 07:07:58'),
(125, NULL, 'Tanjungtiga', '2022-02-18 07:11:03', '2022-02-19 07:06:46'),
(126, NULL, 'Tanjungwangi', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(127, NULL, 'Wanajaya', '2022-02-18 07:11:03', '2022-02-18 07:11:03'),
(128, NULL, 'Wanareja', '2022-02-18 07:11:03', '2022-02-19 07:19:06'),
(130, NULL, 'Mayangan', '2022-02-19 06:33:19', '2022-02-19 06:33:19'),
(131, NULL, 'tes', '2022-07-11 07:58:18', '2022-07-11 07:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `kelompok` int(2) DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `id_kecamatan`, `name`, `slug`, `description`, `img`, `status`, `kelompok`, `created_at`, `updated_at`) VALUES
(14, NULL, 'Bidang Penganekaragaman, Konsumsi dan Keamanan Pangan', 'bidang-penganekaragaman-konsumsi-dan-keamanan-pangan', 'Bidang Penganekaragaman Konsumsi dan Keamanan Pangan mempunyai tugas pokok menyelenggarakan pengkajian bahan kebijakan teknis dan fasilitasi peningkatan penganekaragaman konsumsi serta keamanan pangan.', 'ifPkB4FAmqHQeIOwpNBi5UGWmMjAor8z8MLWi9mc.jpg', 'show', 2, '2022-01-25 05:15:17', '2022-03-17 14:11:19'),
(15, NULL, 'BIdang Distribusi dan Cadangan Pangan', 'bidang-distribusi-dan-cadangan-pangan', 'Bidang  Distribusi  dan  Cadangan Pangan  mempunyai tugas  pokok menyelenggarakan pengkajian bahan kebijakan teknis dan fasilitasi distribusi, cadangan dan pengendalian harga pangan.', 'yBqFOSFdYuW83mGnEMuKapiAw4MvhcUvq7NJbCGD.jpg', 'show', 2, '2022-01-25 05:16:01', '2022-03-25 04:38:10'),
(16, NULL, 'Bidang Ketersediaan dan Kerawanan Pangan', 'bidang-ketersediaan-dan-kerawanan-pangan', 'Bidang  Ketersediaan  dan  Kerawanan  Pangan  mempunyai tugas pokok menyelenggarakan pengkajian bahan kebijakan teknis dan fasilitasi ketersediaan dan penanggulangan kerawanan pangan.', 'syGb0Rm9eXLGKPvM6F850RJsoT8M2yHEAn2YLPhr.jpg', 'show', 2, '2022-01-25 05:16:47', '2022-03-17 14:10:52'),
(17, NULL, 'Kelompok Jabatan Fungsional', 'kelompok-jabatan-fungsional', 'Ahli Pertama, Ahli Muda, Ahli Madya dan Ahli Utama.\r\n- Kedudukan yang menunjukkan tugas, tanggung jawab, wewenang dan hak seseorang pegawai negeri sipil dalam suatu organisasi yang pelaksanaan tugasnya di dasarkan atas keahlian dan atau keterampilan tertentu serta bersifat mandiri yang kenaikan pangkatnya didasarkan pada angka kredit.', 'kS4hyptGBKVaEO8GDI1b0YNjlDGNTPzzvoXAKDHW.png', 'show', 1, '2022-02-10 16:58:38', '2022-03-17 14:05:11'),
(18, NULL, 'Sub Bagian Perencanaan, Umum dan Kepegawaian', 'sub-bagian-perencanaan-umum-dan-kepegawaian', 'Sub Bagian Perencanaan, Umum dan Kepegawaian mempunyai tugas pokok melaksanakan pengelolaan administrasi kepegawaian, ketatalaksanaan, umum, perlengkapan dan koordinasi perencanaan.', 'bGXuwvMmExVrcMPo0Xu009iLg7HuQsKbPvsGFLQ0.jpg', 'show', 1, '2022-02-10 16:58:59', '2022-03-17 14:03:33'),
(19, NULL, 'Sub Bagian Keuangan dan Aset', 'sub-bagian-keuangan-dan-aset', 'Sub Bagian Keuangan dan Aset mempunyai tugas pokok melaksanakan pengelolaan administrasi keuangan dan Aset di lingkungan Dinas', 'va8wzgfHNVcJQtkDXuPWkpcvchz8XX9KYkLqYK2j.jpg', 'show', 1, '2022-03-17 06:49:47', '2022-03-17 13:52:52'),
(20, NULL, 'Kelompok Jabatan Fungsional Bidang', 'kelompok-jabatan-fungsional-bidang', 'Ahli Pertama, Ahli Muda, Ahli Madya dan Ahli Utama.\r\n\r\n- Kedudukan yang menunjukkan tugas, tanggung jawab, wewenang dan hak seseorang pegawai negeri sipil dalam suatu organisasi yang pelaksanaan tugasnya di dasarkan atas keahlian dan atau keterampilan tertentu serta bersifat mandiri yang kenaikan pangkatnya didasarkan pada angka kredit.', 'tjkd5H1s3mObVjMJgtp0M0DRQ1YxzCDwOZrJab4E.jpg', 'show', 2, '2022-03-17 08:01:26', '2022-03-25 04:38:39'),
(21, NULL, 'Sekretaris Dinas', 'sekretaris-dinas', 'Sekretaris Membawahi Subbagian Perencanaan, Umum dan Kepegawaian dan Subbagian Keuangan dan Aset', 'lFlErU7pdJE2xo5o86ltM9JLZ5G3GJUWqDRM3MKB.png', 'show', 1, '2022-03-23 01:32:15', '2022-03-25 03:38:42'),
(23, NULL, 'Kepala Dinas', 'kepala-dinas', 'Kepala  Dinas  mempunyai  tugas  pokok  merumuskan,  menetapkan, memimpin, mengkordinasikan dan mengendalikan pelaksanaan kegiatan tugas pokok Dinas serta mengkoordinasikan dan membina UPT/UPTD.', 'alzbDJDNxbtIm5ZrFZ98r5nQ2ToCHhnfLDiuB2XW.png', 'show', 1, '2022-03-25 03:36:00', '2022-03-25 03:36:17');

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inboxes`
--

CREATE TABLE `inboxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info_graphics`
--

CREATE TABLE `info_graphics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit` bigint(20) NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_graphics`
--

INSERT INTO `info_graphics` (`id`, `id_kecamatan`, `title`, `slug`, `img`, `thumbnail`, `description`, `hit`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Ketahanan Pangan Terjamin dengan Food Estate / Kawasan Lumbung Pangan', 'ketahanan-pangan-terjamin-dengan-food-estate-kawasan-lumbung-pangan', 'Nj1vtmnUFFKrM2BVcM9E9vFZ7xv7R3jq7I1yizW7.jpg', 'Nj1vtmnUFFKrM2BVcM9E9vFZ7xv7R3jq7I1yizW7.jpg', 'Program Lumbung Pangan Nasional (Food Estate) dimulai sejak 2020 untuk menghadapi ancaman lingkungan yang dapat memengaruhi produksi pangan', 0, 'Operator Admin Website', NULL, 'show', '2022-03-23 16:31:57', '2022-03-23 16:31:57');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` bigint(20) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `konsumsi`
--

CREATE TABLE `konsumsi` (
  `id` bigint(20) NOT NULL,
  `pangan_id` bigint(20) DEFAULT NULL,
  `tipe` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `kkal` varchar(50) DEFAULT NULL,
  `persen` varchar(50) DEFAULT NULL,
  `ake` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsumsi`
--

INSERT INTO `konsumsi` (`id`, `pangan_id`, `tipe`, `tahun`, `kkal`, `persen`, `ake`, `created_at`, `updated_at`) VALUES
(382, 1, 'energi', '2016', '1525.8', '64.3', '71.0', NULL, NULL),
(383, 2, 'energi', '2016', '22.9', '1.0', '1.1', NULL, NULL),
(384, 3, 'energi', '2016', '261.3', '11.0', '12.2', NULL, NULL),
(385, 4, 'energi', '2016', '265.4', '11.2', '12.3', NULL, NULL),
(386, 5, 'energi', '2016', '16.5', '0.7', '0.8', NULL, NULL),
(387, 6, 'energi', '2016', '44.0', '1.9', '2.0', NULL, NULL),
(388, 7, 'energi', '2016', '91.0', '3.8', '4.2', NULL, NULL),
(389, 8, 'energi', '2016', '98.1', '4.1', '4.6', NULL, NULL),
(390, 9, 'energi', '2016', '46.4', '2.0', '2.2', NULL, NULL),
(391, 1, 'energi', '2017', '1366.5', '62.4', '63.6', NULL, NULL),
(392, 2, 'energi', '2017', '55.5', '2.5', '2.6', NULL, NULL),
(393, 3, 'energi', '2017', '242.1', '11.1', '11.3', NULL, NULL),
(394, 4, 'energi', '2017', '261.8', '12.0', '12.2', NULL, NULL),
(395, 5, 'energi', '2017', '15.5', '0.7', '0.7', NULL, NULL),
(396, 6, 'energi', '2017', '57.8', '2.6', '2.7', NULL, NULL),
(397, 7, 'energi', '2017', '66.3', '3.0', '3.1', NULL, NULL),
(398, 8, 'energi', '2017', '88.1', '4.0', '4.1', NULL, NULL),
(399, 9, 'energi', '2017', '36.2', '1.7', '1.7', NULL, NULL),
(400, 1, 'energi', '2018', '1567.2', '67.5', '72.9', NULL, NULL),
(401, 2, 'energi', '2018', '19.4', '0.8', '0.9', NULL, NULL),
(402, 3, 'energi', '2018', '245.0', '10.5', '11.4', NULL, NULL),
(403, 4, 'energi', '2018', '214.8', '9.2', '10.0', NULL, NULL),
(404, 5, 'energi', '2018', '5.5', '0.2', '0.3', NULL, NULL),
(405, 6, 'energi', '2018', '53.9', '2.3', '2.5', NULL, NULL),
(406, 7, 'energi', '2018', '47.6', '2.0', '2.2', NULL, NULL),
(407, 8, 'energi', '2018', '104.9', '4.5', '4.9', NULL, NULL),
(408, 9, 'energi', '2018', '64.3', '2.8', '3.0', NULL, NULL),
(409, 1, 'energi', '2019', '1487.6', '66.1', '69.2', NULL, NULL),
(410, 2, 'energi', '2019', '22.1', '1.0', '1.0', NULL, NULL),
(411, 3, 'energi', '2019', '262.5', '11.7', '12.2', NULL, NULL),
(412, 4, 'energi', '2019', '215.0', '9.5', '10.0', NULL, NULL),
(413, 5, 'energi', '2019', '5.3', '0.2', '0.2', NULL, NULL),
(414, 6, 'energi', '2019', '50.5', '2.2', '2.3', NULL, NULL),
(415, 7, 'energi', '2019', '43.1', '1.9', '2.0', NULL, NULL),
(416, 8, 'energi', '2019', '96.5', '4.3', '4.5', NULL, NULL),
(417, 9, 'energi', '2019', '69.1', '3.1', '3.2', NULL, NULL),
(418, 1, 'energi', '2020', '1496.8', '66.1', '69.6', NULL, '2022-03-22 13:45:18'),
(419, 2, 'energi', '2020', '30.7', '1.4', '1.4', NULL, '2022-03-22 13:47:02'),
(420, 3, 'energi', '2020', '251.4', '11.1', '11.7', NULL, '2022-03-22 13:48:02'),
(421, 4, 'energi', '2020', '218.8', '9.7', '10.2', NULL, '2022-03-22 13:51:36'),
(422, 5, 'energi', '2020', '4.4', '0.2', '0.2', NULL, '2022-03-22 13:52:17'),
(423, 6, 'energi', '2020', '63.3', '2.8', '2.9', NULL, '2022-03-22 13:52:59'),
(424, 7, 'energi', '2020', '45.5', '2.0', '2.1', NULL, '2022-03-22 13:53:43'),
(425, 8, 'energi', '2020', '86.8', '3.8', '4', NULL, '2022-03-22 13:54:27'),
(426, 9, 'energi', '2020', '68', '2.9', '3.1', NULL, '2022-03-22 13:55:11'),
(427, 1, 'protein', '2016', '34.3', '49.3', '60.1', NULL, NULL),
(428, 2, 'protein', '2016', '0.2', '0.3', '0.4', NULL, NULL),
(429, 3, 'protein', '2016', '25.5', '36.7', '44.8', NULL, NULL),
(430, 4, 'protein', '2016', '0.0', '0.0', '0.0', NULL, NULL),
(431, 5, 'protein', '2016', '0.4', '0.5', '0.6', NULL, NULL),
(432, 6, 'protein', '2016', '4.4', '6.3', '7.7', NULL, NULL),
(433, 7, 'protein', '2016', '0.2', '0.3', '0.4', NULL, NULL),
(434, 8, 'protein', '2016', '3.3', '4.7', '5.7', NULL, NULL),
(435, 9, 'protein', '2016', '1.2', '1.8', '2.2', NULL, NULL),
(436, 1, 'protein', '2017', '31.0', '62.4', '54.4', NULL, NULL),
(437, 2, 'protein', '2017', '0.5', '2.5', '0.9', NULL, NULL),
(438, 3, 'protein', '2017', '21.5', '11.1', '37.7', NULL, NULL),
(439, 4, 'protein', '2017', '0.0', '12.0', '0.0', NULL, NULL),
(440, 5, 'protein', '2017', '0.3', '0.7', '0.5', NULL, NULL),
(441, 6, 'protein', '2017', '5.9', '2.6', '10.4', NULL, NULL),
(442, 7, 'protein', '2017', '0.1', '3.0', '0.2', NULL, NULL),
(443, 8, 'protein', '2017', '2.9', '4.0', '5.0', NULL, NULL),
(444, 9, 'protein', '2017', '1.1', '1.7', '1.9', NULL, NULL),
(445, 1, 'protein', '2018', '36.0', '67.5', '63.2', NULL, NULL),
(446, 2, 'protein', '2018', '0.2', '0.8', '0.3', NULL, NULL),
(447, 3, 'protein', '2018', '22.3', '10.5', '39.1', NULL, NULL),
(448, 4, 'protein', '2018', '0.0', '9.2', '0.0', NULL, NULL),
(449, 5, 'protein', '2018', '0.1', '0.2', '0.3', NULL, NULL),
(450, 6, 'protein', '2018', '5.4', '2.3', '9.5', NULL, NULL),
(451, 7, 'protein', '2018', '0.1', '2.0', '0.2', NULL, NULL),
(452, 8, 'protein', '2018', '3.7', '4.5', '6.6', NULL, NULL),
(453, 9, 'protein', '2018', '1.4', '2.8', '2.5', NULL, NULL),
(454, 1, 'protein', '2019', '34.3', '66.1', '60.3', NULL, NULL),
(455, 2, 'protein', '2019', '0.2', '1.0', '0.4', NULL, NULL),
(456, 3, 'protein', '2019', '22.9', '11.7', '40.2', NULL, NULL),
(457, 4, 'protein', '2019', '0.0', '9.5', '0.1', NULL, NULL),
(458, 5, 'protein', '2019', '0.1', '0.2', '0.2', NULL, NULL),
(459, 6, 'protein', '2019', '5.0', '2.2', '8.8', NULL, NULL),
(460, 7, 'protein', '2019', '0.1', '1.9', '0.1', NULL, NULL),
(461, 8, 'protein', '2019', '3.4', '4.3', '6.0', NULL, NULL),
(462, 9, 'protein', '2019', '1.5', '3.1', '2.6', NULL, NULL),
(463, 1, 'protein', '2020', '34.6', '66.1', '60.7', NULL, NULL),
(464, 2, 'protein', '2020', '0.3', '1.4', '0.5', NULL, NULL),
(465, 3, 'protein', '2020', '22.1', '11.1', '38.8', NULL, NULL),
(466, 4, 'protein', '2020', '0.0', '9.7', '0.0', NULL, NULL),
(467, 5, 'protein', '2020', '0.1', '0.2', '0.2', NULL, NULL),
(468, 6, 'protein', '2020', '6.1', '2.8', '10.8', NULL, NULL),
(469, 7, 'protein', '2020', '0.1', '2.0', '0.2', NULL, NULL),
(470, 8, 'protein', '2020', '3.3', '3.8', '5.7', NULL, NULL),
(471, 9, 'protein', '2020', '1.5', '2.9', '2.6', NULL, NULL),
(472, 1, 'energi', '2021', '1436', '63.3', '68.4', '2022-03-22 13:40:16', '2022-03-22 13:40:16'),
(473, 2, 'energi', '2021', '35', '1.5', '1.7', '2022-03-22 13:58:35', '2022-03-22 13:58:35'),
(474, 3, 'energi', '2021', '267', '11.7', '12.7', '2022-03-22 13:59:13', '2022-03-22 13:59:13'),
(475, 4, 'energi', '2021', '255', '11.2', '12.1', '2022-03-22 14:00:03', '2022-03-22 14:00:03'),
(476, 5, 'energi', '2021', '3', '0.2', '0.2', '2022-03-22 14:00:41', '2022-03-22 14:00:41'),
(477, 6, 'energi', '2021', '54', '2.4', '2.6', '2022-03-22 14:01:27', '2022-03-22 14:01:27'),
(478, 7, 'energi', '2021', '47', '2.1', '2.2', '2022-03-22 14:02:00', '2022-03-22 14:02:00'),
(479, 8, 'energi', '2021', '110', '4.9', '5.3', '2022-03-22 14:02:57', '2022-03-22 14:02:57'),
(480, 9, 'energi', '2021', '63', '2.8', '3.1', '2022-03-22 14:05:17', '2022-03-22 14:05:17'),
(481, 1, 'protein', '2021', '32.9', '63.3', '57.7', '2022-03-22 14:06:54', '2022-03-22 14:06:54'),
(482, 2, 'protein', '2021', '0.3', '1.5', '0.6', '2022-03-22 14:07:29', '2022-03-22 14:07:29'),
(483, 3, 'protein', '2021', '24.8', '11.7', '43.6', '2022-03-22 14:08:07', '2022-03-22 14:08:07'),
(484, 4, 'protein', '2021', '0', '11.2', '0.1', '2022-03-22 14:08:45', '2022-03-22 14:08:45'),
(485, 5, 'protein', '2021', '0.1', '0.2', '0.2', '2022-03-22 14:09:27', '2022-03-22 14:09:27'),
(486, 6, 'protein', '2021', '5.4', '2.4', '9.5', '2022-03-22 14:10:03', '2022-03-22 14:10:03'),
(487, 7, 'protein', '2021', '0.1', '2.1', '0.2', '2022-03-22 14:10:44', '2022-03-22 14:10:44'),
(488, 8, 'protein', '2021', '3.9', '4.9', '6.9', '2022-03-22 14:11:26', '2022-03-22 14:11:26'),
(489, 9, 'protein', '2021', '1.4', '2.8', '2.4', '2022-03-22 14:12:00', '2022-03-22 14:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2021_01_26_030030_create_categories_table', 1),
(6, '2021_01_26_030051_create_articles_table', 1),
(7, '2021_01_26_030342_create_agendas_table', 1),
(8, '2021_01_26_030401_create_announcements_table', 1),
(9, '2021_01_26_032946_create_news_table', 1),
(10, '2021_01_26_033020_create_profiles_table', 1),
(11, '2021_01_26_033052_create_tags_table', 1),
(12, '2021_01_26_033118_create_inboxes_table', 1),
(13, '2021_01_26_033204_create_albums_table', 1),
(14, '2021_01_26_033219_create_fotos_table', 1),
(15, '2021_01_26_033231_create_videos_table', 1),
(16, '2021_01_26_033358_create_comments_table', 1),
(17, '2021_01_26_033419_create_sliders_table', 1),
(18, '2021_01_26_033744_create_info_graphics_table', 1),
(19, '2021_01_26_040406_create_article_tags_table', 1),
(20, '2021_01_26_060224_create_visitors_table', 1),
(21, '2021_02_15_050020_create_permission_tables', 1),
(22, '2021_02_24_131525_create_website_table', 1),
(23, '2021_02_24_132420_create_social_media_table', 1),
(24, '2021_02_27_001708_create_fields_table', 1),
(25, '2021_02_28_010019_create_staff_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `hit` bigint(20) NOT NULL DEFAULT '0',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pangan`
--

CREATE TABLE `pangan` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pangan`
--

INSERT INTO `pangan` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Padi-padian', NULL, NULL),
(2, 'Umbi-umbian', NULL, NULL),
(3, 'Pangan Hewani', NULL, NULL),
(4, 'Minyak dan Lemak', NULL, NULL),
(5, 'Buah/Biji Berminyak', NULL, NULL),
(6, 'Kacang-kacangan', NULL, NULL),
(7, 'Gula', NULL, NULL),
(8, 'Sayur dan Buah', NULL, NULL),
(9, 'Lain-lain', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pbb_pembayaran`
--

CREATE TABLE `pbb_pembayaran` (
  `id` bigint(20) NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `desa_id` bigint(20) NOT NULL,
  `sppt_pembayaran` double NOT NULL,
  `jumlah_pembayaran` double NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pbb_pokok`
--

CREATE TABLE `pbb_pokok` (
  `id` bigint(20) NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `kode` varchar(255) NOT NULL,
  `desa_id` bigint(20) NOT NULL,
  `sppt_pokok` double(20,2) NOT NULL,
  `jumlah_pokok` double(20,2) NOT NULL,
  `tahun` int(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pbb_pokok`
--

INSERT INTO `pbb_pokok` (`id`, `id_kecamatan`, `kode`, `desa_id`, `sppt_pokok`, `jumlah_pokok`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 0, 'tes', 32, 1231234.00, 123123.00, 2131, '2022-07-13 18:39:11', '2022-07-13 18:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `pelayanan`
--

CREATE TABLE `pelayanan` (
  `id` bigint(20) NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `img` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `created_by` varchar(225) NOT NULL,
  `updated_by` varchar(225) NOT NULL,
  `status` enum('show','hide') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelayanan`
--

INSERT INTO `pelayanan` (`id`, `id_kecamatan`, `title`, `slug`, `img`, `file`, `description`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'tes', 'tes', '12072022-(tes).jpeg', '12072022-(tes).pdf', '<p>dsadada</p>', 'Super Admin Website', '', 'show', '2022-07-12 03:27:37', '2022-07-12 03:27:37'),
(2, NULL, 'sdasda', 'sdasda', '12072022-(sdasda).jpeg', '12072022-(sdasda).pdf', '<p>dasda</p>', 'Super Admin Website', '', 'show', '2022-07-12 03:36:09', '2022-07-12 03:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manipulate-master-settings', 'web', '2022-01-20 10:55:49', '2022-01-20 10:55:49'),
(2, 'manipulate-master-datas', 'web', '2022-01-20 10:55:49', '2022-01-20 10:55:49'),
(3, 'manipulate-master-roles', 'web', '2022-01-20 10:55:49', '2022-01-20 10:55:49'),
(4, 'manipulate-master-users', 'web', '2022-01-20 10:55:49', '2022-01-20 10:55:49'),
(5, 'manipulate-content', 'web', '2022-01-20 10:55:49', '2022-01-20 10:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `title`, `slug`, `img`, `file`, `description`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(8, 'SEJARAH DINAS KETAHANAN PANGAN KABUPATEN SUBANG', 'sejarah-dinas-ketahanan-pangan-kabupaten-subang', '22032022-(sejarah-dinas-ketahanan-pangan-kabupaten-subang).jpeg', NULL, '<div class=\"blog__desc\">\r\n<p dir=\"ltr\" style=\"text-align: justify;\"><strong><span style=\"color: #2dc26b; background-color: #ffffff;\"><big>Berdasarkan Undang-Undang No 18 Tahun 2012 tentang pangan, ketahanan pangan adalah kondisi terpenuhinya pangan bagi negara sampai dengan perorangan, yang tercemin dari tersedianya pangan yang cukup baik jumlah maupun mutunya, aman beragam, bergizi, merata, dan terjangkau serta tidak bertentangan dengan agama, keyakinan, dan budaya masyarakat, untuk dapat hidup sehat, aktif, dan produktif secara berkelanjutan.</big></span></strong></p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\"><strong><span style=\"color: #2dc26b; background-color: #ffffff;\"><big>Berdasarkan Peraturan Daerah Kabupaten Subang Nomor 8 Tahun 2008 tentang Organisasi dan Tata Kerja Lembaga Teknis Daerah di Lingkungan Pemerintah Kabupaten Subang maka dibentuklah Badan Pelaksana Penyuluhan Pertanian Perikanan Kehutanan dan Ketahanan Pangan (BP4KKP).</big></span></strong></p>\r\n<p dir=\"ltr\" style=\"text-align: justify;\"><strong><span style=\"color: #2dc26b; background-color: #ffffff;\"><big>Lembaga ini berlangsung sampai dengan Bulan Desember 2016, dan pada Bulan Januari 2017 namanya berubah menjadi Dinas Ketahanan Pangan sesuai dengan Peraturan Daerah Kabupaten Subang Nomor 7 Tahun 2016 tentang Pembentukan dan Susunan Perangkat Daerah Kabupaten Subang dan Peraturan Bupati Nomor 32 Tahun 2016 tentang Susunan Organisasi Perangkat Daerah Dinas.</big></span></strong></p>\r\n</div>', 'Operator Admin Website', 'Operator Admin Website', 'show', '2022-03-22 14:31:48', '2022-03-22 14:33:41'),
(10, 'TUGAS DAN FUNGSI', 'tugas-dan-fungsi', '22032022-(tugas-dan-fungsi).jpeg', NULL, '<div class=\"blog__desc\"><span style=\"color: #169179;\"><span style=\"font-weight: bold; font-size: 16px;\">TUGAS</span>&nbsp;</span><br />\r\n<p><span style=\"color: #169179;\"><big>Dinas Ketahanan Pangan mempunyai tugas pokok menyelenggarakan perumusan dan pelaksanaan urusan Pemerintahan Daerah Bidang Ketahanan pangan berdasarkan asas otonomi, dekonsentrasi dan tugas pembantuan.</big></span></p>\r\n<br /><br /><span style=\"color: #169179;\"><span style=\"font-weight: bold; font-size: 16px;\">FUNGSI</span>&nbsp;</span><br />\r\n<p style=\"text-align: justify;\"><span style=\"color: #169179;\"><big>Untuk menyelenggarakan tugas pokoknya Dinas Ketahanan Pangan mempunyai fungsi :<br />1. Penyelenggaraan perumusan dan penetapan kebijakan teknis bidang ketahanan pangan;<br />2. Penyelenggaraan pemberian dukungan atas penyelenggaraan Pemerintahan Daerah bidang ketahanan pangan meliputi kesekretariatan, ketersediaan dan kerawanan pangan, konsumsi dan keamanan pangan, serta distribusi dan harga pangan;<br />3. Penyelenggaraan koordinasi dan pembinaan UPT/UPTD.</big></span></p>\r\n</div>', 'Operator Admin Website', NULL, 'show', '2022-03-22 14:41:52', '2022-03-22 14:41:52'),
(11, 'VISI DAN MISI', 'visi-dan-misi', '22032022-(visi-dan-misi).png', NULL, '<div class=\"blog__desc\" style=\"text-align: justify;\"><span style=\"color: #169179;\"><span style=\"font-weight: bold; font-size: 16px;\">VISI</span>&nbsp;</span><br />\r\n<p style=\"text-align: justify;\"><span style=\"color: #169179;\"><big>&ldquo;Kabupaten Subang Yang Bersih, Maju, Sejahtera&nbsp; dan Berkarakter&rdquo;</big></span></p>\r\n<br /><br /><span style=\"color: #169179;\"><span style=\"font-weight: bold; font-size: 16px;\">MISI</span>&nbsp;</span><br />\r\n<p style=\"text-align: justify;\"><span style=\"color: #169179;\"><big>&ldquo;Panca Jimat &ndash; Akur untuk Subang Lebih Makmur&rdquo; yaitu :</big></span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"color: #169179;\"><big>Misi I :<br />Mewujudkan pemerintahan yang bersih dari korupsi, kolusi, dan nepotisme, terbuka, serta pelayan masyarakat;</big></span><br /><span style=\"color: #169179;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #169179;\"><big>Misi 2 :<br />Meningkatkan pembangunan infrastruktur, penataan ruang berkarakter kebudayaan lokal dan pemerataan pembangunan perdesaan;</big></span><br /><span style=\"color: #169179;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #169179;\"><big>Misi 3 :<br />Meningkatkan kualitas pendidikan untuk menciptakan sumber daya manusia yang handal dan berdaya saing serta perluasan lapangan kerja;</big></span><br /><span style=\"color: #169179;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #169179;\"><big>Misi 4 :<br />Meningkatnya kesejahteraan masyarakat melalui pembangunan bidang pertanian, ekonomi kerakyatan, industri kreatif, perikanan dan kelautan, serta penggalian potensi berbasis budaya dan kearifan lokal;</big></span><br /><span style=\"color: #169179;\">&nbsp;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #169179;\"><big>Misi 5 :<br />Meningkatkan kualitas layanan kesehatan masyarakat dan lingkungan hidup.</big></span></p>\r\n</div>', 'Operator Admin Website', NULL, 'show', '2022-03-22 14:43:35', '2022-03-22 14:43:35'),
(12, 'STRUKTUR ORGANISASI', 'struktur-organisasi', '23032022-(struktur-organisasi).JPG', NULL, '<p>DINAS KETAHANAN PANGAN KABUPATEN SUBANG</p>', 'Operator Admin Website', 'Operator Admin Website', 'show', '2022-03-22 14:51:26', '2022-03-23 16:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'operator', 'web', '2022-01-20 10:55:49', '2022-01-20 10:55:49'),
(2, 'admin', 'web', '2022-01-20 10:55:49', '2022-01-20 10:55:49'),
(3, 'super-admin', 'web', '2022-01-20 10:55:49', '2022-01-20 10:55:49');

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
(2, 1),
(5, 1),
(1, 2),
(2, 2),
(4, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `img`, `uploaded_by`, `status`, `created_at`, `updated_at`) VALUES
(12, 'dkp', '<p>-</p>', 'WaiSaGF9wTfW2lXahJ40R4Z2O9Baw03tqelZyhFf.jpg', 'Super Admin Website', 'show', '2022-02-10 17:02:17', '2022-03-17 14:32:59'),
(25, 'Lumbung Pangan Masyarakat (LPM)', '<p>Lumbung pangan merupakan lembaga cadangan pangan di daerah perdesaan, berperan dalam mengatasi kerawanan pangan masyarakat.<b></b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></p>', 'N7lS0pBFFGoqzqmVF8gUCZzRW3wojK3QtPVe93fX.jpg', 'Operator Admin Website', 'show', '2022-03-17 14:39:55', '2022-03-17 14:39:55'),
(27, 'Pekarangan Pangan Lestari (P2L)', '<p>Kegiatan yang dilaksanakan kelompok masyarakat yang secara \r\nbersama-sama mengusahakan&nbsp; lahan pekarangan sebagai sumber pangan secara\r\n berkelanjutan untuk meningkatan ketersediaan dan aksesibilitas.</p>', 'dbgEoudC9KOE3y8oK6uTRa23fHXZcwfQYsDYk9wp.jpg', 'Operator Admin Website', 'show', '2022-03-17 14:48:59', '2022-03-17 14:48:59'),
(28, 'Pangan Beragam, Bergizi, Seimbang, dan Aman (B2SA)', '<p>Konsumsi Pangan Beragam, Bergizi, Seimbang dan Aman.<br></p>', 'HBw1QRFDxTG0ElQ7t3n8SbBywYnsomcJDShEhqXE.png', 'Operator Admin Website', 'show', '2022-03-17 14:56:26', '2022-03-17 14:56:26'),
(29, 'Serealia', '<p><span class=\"sc-gZMcBi dkFIte\">Tanaman serealia adalah tumbuhan dari \r\nkeluarga Poaceae yang menghasilkan biji-bijian sebagai bahan makanan \r\nsumber karbohidrat. Jenis-jenis serealia yang biasa kita konsumsi adalah\r\n padi, gandum, hingga jagung.</span>', 'RrPVWTgY7jwWegnj96vGSt63F7VtJALdJSansaQ8.webp', 'Operator Admin Website', 'show', '2022-03-17 14:57:46', '2022-03-17 14:57:46'),
(30, 'World Food Day', '<p><span class=\"ILfuVd NA6bn UiGGAb\"><span class=\"hgKElc\"><b>Hari Pangan Sedunia</b>\r\n atau World Food Day diperingati setiap tanggal 16 Oktober setiap \r\ntahunnya. Tanggal tersebut dipilih karena merupakan lahirnya Organisasi <b>Pangan</b> dan Pertanian P', '1kvFotftWCyiSdkpCXpwSItRieRJpjTi3b91G5mL.jpg', 'Operator Admin Website', 'show', '2022-03-17 15:07:11', '2022-03-17 15:07:11'),
(31, 'Keluarga Besar Dinas Ketahanan Pangan Kab. Subang', '<p>Seluruh pejabat dan staff Dinas Ketahanan Pangan setelah melaksanakan Kegiatan Apel Pagi di Halaman Kantor Dinas Ketahanan Pangan</p>', 'C9MsNwqHoaTIJ86hpIf7rNpcLxEclN1TONSTjprm.jpg', 'Operator Admin Website', 'show', '2022-03-28 01:33:34', '2022-03-28 01:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `icon`, `url`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'fab fa-facebook-f', 'https://www.facebook.com/profile.php?id=100076967223290', 'Admin Website', NULL, 'show', '2022-03-28 01:41:57', '2022-03-28 01:41:57'),
(2, 'twitter', 'fab fa-twitter', 'https://twitter.com/Disketpansubang', 'Admin Website', NULL, 'show', '2022-03-28 01:48:45', '2022-03-28 01:48:45'),
(3, 'instagram', 'fab fa-instagram', 'https://www.instagram.com/disketpan.kabsubang/', 'Admin Website', NULL, 'show', '2022-03-28 02:02:58', '2022-03-28 02:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `field_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthplace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `golongan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kadis` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `kategori` enum('guru','non-guru') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `id_kecamatan`, `field_id`, `nip`, `name`, `birthplace`, `birthday`, `gender`, `photo`, `phone`, `email`, `position`, `golongan`, `address`, `kadis`, `status`, `kategori`, `created_at`, `updated_at`) VALUES
(4, NULL, 14, '19661109 199303 2 005', 'Dra. Dedeh Ratnasih, M.AP.', 'Bandung', '1966-11-09', 'male', 'eS9ijFa4xOl3qrNzNb5DiFZOOhrNFS0rUq3VhHYX.jpg', '085221206742', 'dedehratnasih062@gmail.com', 'Kepala Bidang Penganekaragaman Konsumsi dan Keamanan Pangan', 'Pembina/ IV/a', 'Jl.Karya Bakti IV No.299 Rt 55/14, Kel.Sukamelang, Subang', '0', 'show', 'non-guru', '2022-03-22 07:50:27', '2022-03-25 02:43:17'),
(5, NULL, 15, '197201102002121005', 'Asep Yachrodi Sutiawan, ST, M.Si', 'Subang', '1976-03-23', 'male', NULL, '0', 'a', 'Kepala Bidang Distribusi dan Cadangan Pangan', 'Pembina/ IV/a', 'a', '0', 'show', 'non-guru', '2022-03-23 01:30:04', '2022-03-23 01:30:04'),
(6, NULL, 21, '197010101998032001', 'Ratna Komara, SP, M.Si', 'Subang', '1970-03-23', 'male', 'YERSEDMJG6mUqqB5lm3x3pY9TCh82Og1ynP3TZdW.jpg', '-', 'a', 'Sekretaris Dinas Ketahanan Pangan', 'Pembina / IV/a', 'a', '0', 'show', 'non-guru', '2022-03-23 01:34:46', '2022-03-25 01:45:04'),
(7, NULL, 23, '196503231992031006', 'Dr. H. Hendrawan, SP, MM', 'Pandeglang', '1965-03-23', 'male', 'aKkmmUUKvpqNa8QtOrTHBZQtFvbUOoop41cBo8P5.jpg', '-', 'email.com', 'Kepala Dinas Ketahanan Pangan', 'Pembina Tk.I/ IV/b', 'a', '0', 'show', 'non-guru', '2022-03-23 01:36:23', '2022-03-25 03:38:11'),
(8, NULL, 18, '198909222020121001', 'Yogi Septiana, ST', 'Subang', '1989-09-22', 'male', 'HQqiKgvUXc4c8H2EveQzS5zQoP4rqFsEf3hAIG4b.jpg', '081288756282', 'yogi.septina@subang.go.id', 'Penyuluh Pangan', 'III a', 'Perum.GSk 1 Blok B No.2 Rt 91/26, Jl.Panji, Cigadung, Subang', '0', 'show', 'non-guru', '2022-03-25 01:12:13', '2022-03-25 01:12:13'),
(9, NULL, 16, '196902041994021001', 'Drs. Dasman', 'Subang', '1969-02-04', 'male', 'e00HAxoZ8oFxscbVyM0Wj4aBZ1AByMGtBJj6D9Z9.jpg', '085220409169', 'dasmankbks@gmail.com', 'Kepala Bidang Ketersediaan dan Kerawanan Pangan', 'Pembina / IVa', 'Kelurahan sukamelang RT 21 RW 04 KEC/ Kab Subang', '0', 'show', 'non-guru', '2022-03-25 01:57:35', '2022-03-25 01:57:35'),
(10, NULL, 18, '199402192020122007', 'Nur Fitri Handayani, STP', 'Subang', '1994-02-19', 'male', 'JEc2jV6AXYuuLY9TlE15ulZFcMDf8Ozgdofdm9X6.jpg', '0', '-', 'Penyuluh Pangan', 'IIIa / Penata Muda', 'Subang', '0', 'show', 'non-guru', '2022-03-25 02:08:13', '2022-03-25 02:08:13'),
(11, NULL, 14, '19780828 201411 2 002', 'Eka Budiawati,SP', 'Subang', '1978-08-28', 'male', 'r4T9giS2jfqK4oiEmwSxvkGpZ7kNCAn5HpmHgevl.jpg', '-', '-', 'Analis Pola Konsumsi Pangan Masyarakat', 'IIIa/Penata Muda', '-', '0', 'show', 'non-guru', '2022-03-25 02:12:49', '2022-03-25 02:12:49'),
(12, NULL, 18, '198111032014112001', 'Eka Setiawati, SP', 'Subang', '1981-11-03', 'male', 'WJ49z3cmuQPxzriGRd7MYCGyFcNkdLpXqcjrKejG.jpg', '-', '-', 'Penyusun Kebutuhan Rumah Tangga Kantor', 'III B Penata Muda TK. I', '-', '0', 'show', 'guru', '2022-03-25 02:15:51', '2022-03-25 03:37:38'),
(13, NULL, 17, '197101122007012005', 'IMAS YULIATIN,S.Sos', 'Subang', '1971-01-12', 'male', '4RbBGFwlZmzs2AaFmaBDm5nUBggDWwjJOwx6M1VC.jpg', '-', '-', 'Analis Keuangan Pusat dan Daerah Ahli Muda', 'III/d/Penata TK.I', '-', '0', 'show', 'non-guru', '2022-03-25 02:21:01', '2022-03-25 02:21:01'),
(14, NULL, 16, '196907162010011001', 'Suhardi Sobar, A.md', 'Subang', '1969-07-16', 'male', 'ORGfLErAFSKTh10Jexpe4MBgBnUKhpZPeTgKVBB1.jpg', '-', '-', 'Pelaksana', 'Penata Muda III/a', '-', '0', 'show', 'non-guru', '2022-03-25 02:27:05', '2022-03-25 02:27:05'),
(15, NULL, 15, '197708102010012002', 'LIS IKA HARTITA, SP', 'Subang', '1977-08-10', 'male', 'sb4iQ7Xk54Il2i9UiiwVwBVwzmSvHS54HppFLZmv.jpg', '-', 'lisika.mulyadi77@gmail.com', 'Pengawas Harga Pangan', 'Penata /IIIc', '-', '0', 'show', 'non-guru', '2022-03-25 02:30:37', '2022-03-25 02:30:37'),
(16, NULL, 16, '198412112014111002', 'Andi Somantri, SP', 'Subang', '1984-12-11', 'male', 'E15FBx5fN5CjbTviAWcTpTvPGMEjLqlndmb1DD3B.jpg', '-', 'somantriandi.as@gmail.com', 'Analis Pangan', 'Penata Muda (III/a)', '-', '0', 'show', 'non-guru', '2022-03-25 02:36:53', '2022-03-25 02:36:53'),
(17, NULL, 14, '197812192014111002', 'Uci Sanusi', 'Subang', '1978-12-19', 'male', 'eKw5tS9ZRrFc1e9NMSiwEgCMMpoQpkYrkdz9Y6VZ.jpg', '-', 'kakanguci@gmail.com', 'Pengadministrasi umum', 'II b/ Pengatur Muda TK.I', '-', '0', 'show', 'non-guru', '2022-03-25 02:42:09', '2022-03-25 02:42:09'),
(18, NULL, 18, '19720829 199803 2 002', 'Neni Nursetiani,S.Sos', 'Subang', '1972-08-29', 'male', 'xuCAjjhs3CK8KDGOgen00MKtdYjy85ajYbznjhfs.jpg', '-', 'ninoyneni72@gmail.com', 'Kasubag Perencanaan, Umum dan Kepegawaian', 'Penata TK I / IIId', '-', '0', 'show', 'non-guru', '2022-03-25 02:49:39', '2022-03-25 02:49:39'),
(19, NULL, 19, '198511012014112001', 'Tika setiawati,A.Md', 'Subang', '1985-11-01', 'male', 'i5YXuNxHUK9CmUjwwD10Jb2lyGedvz493AsWSlXn.jpg', '-', 'tikasetiawati01@gmail.com', 'Pengelola gaji', 'Pengatur Tk I/IId', '-', '0', 'show', 'non-guru', '2022-03-25 02:52:50', '2022-03-25 03:34:43'),
(20, NULL, 15, '19771202 2014112001', 'Sri Dewi Puspa Anggraeni, S.TP.,MM', 'Subang', '1977-12-02', 'male', '1DylOxGzPpdly3lQb3pbPCPOEOV1zlwaXMpUDoJ7.jpg', '-', 'sridewi277@gmail.com', 'Pengawas Harga pangan', 'III b / Penata Muda Tk. I', '-', '0', 'show', 'non-guru', '2022-03-25 03:02:27', '2022-03-25 03:02:27'),
(21, NULL, 20, '198911012020122004', 'Nila Pratika Dewi, SP', 'Pacitan', '1989-11-01', 'male', 'M3SJ6R3BADSjX8zW5szPpZ2FJ1ZAM1t5rcDtloIb.jpg', '-', 'nilapratikadewi@gmail.com', 'Analis Ketahanan Pangan Ahli Pertama', 'Penata Muda/IIIa', '-', '0', 'show', 'non-guru', '2022-03-25 03:08:25', '2022-03-25 04:41:49'),
(22, NULL, 19, '19800525 201411 1 002', 'Sandy Purnama Adjie, SH', 'Subang', '1980-05-25', 'male', 'Oa5yFVrEkF0VZ5sTxoLCgdFmCuvNb1P8BLAPodHH.jpg', '-', 'sandyadjie@gmail.com', 'Bendahara Pengeluaran', 'III b / Penata Muda Tk. I', '-', '0', 'show', 'non-guru', '2022-03-25 03:10:49', '2022-03-25 03:33:29'),
(23, NULL, 15, '198407282009021006', 'Wiyatna Sembada Putra, S.P.,M.M.', 'Subang', '1984-07-28', 'male', 'vMgNtnOTB5pfCVqwr0YiY205euVBBaQW9jaKnVos.jpg', '-', 'babep03tr4@gmail.com', 'Pengawas Harga pangan', 'III b / Penata Muda Tk. I', '-', '0', 'show', 'non-guru', '2022-03-25 03:13:37', '2022-03-25 03:13:37'),
(24, NULL, 16, '19760276 200701 2 008', 'EMI RUSMIYANTI, STP', 'Subang', '1976-02-07', 'male', 'Jt4oPEy3Qq3J3PRHJPpzvxdti4tbiGS3lSMwjmvl.jpg', '-', 'emirusmiyanti76@gmail.com', 'Analis Pangan', 'III d / Penata Tk 1', '-', '0', 'show', 'non-guru', '2022-03-25 03:16:58', '2022-03-25 03:16:58'),
(25, NULL, 20, '196710191990031005', 'Joko Waluyo', 'Subang', '1967-10-19', 'male', 'Qp2YoKJWbOBwodHcnbSy81IQcHLl3YSFguaj1ElV.jpg', '-', 'pakjokosubang123@gmail.com', 'Analis Ketahanan Pangan Ahli Muda', 'IIId / Penata tingkat I', '-', '0', 'show', 'non-guru', '2022-03-25 03:34:28', '2022-03-25 04:40:52'),
(26, NULL, 16, '198207182014112002', 'Wulan Widiayu', 'Subang', '1982-07-18', 'male', 'eETJ195ogHgujo6P4fmL2sb8GlVNQzwyoo1Mcs6e.jpg', '-', 'wulan.widiayu82@gmail.com', 'Pengadministrasi umum', 'Pengatur Muda Tk. I/IIb', '-', '0', 'show', 'non-guru', '2022-03-25 03:39:54', '2022-03-25 03:40:13'),
(27, NULL, 20, '197103252006041010', 'Carsam Hermawan, STP', 'Subang', '1971-03-25', 'male', 'RzYkGXsZe1EzWXh5Ob3zNFhNVEhIfmU1xFmUMqMz.jpg', '-', 'carsamhermawan74@gmail.com', 'Analis Ketahanan Pangan Ahli Muda', 'Penata Tk.I/ III/d', '-', '0', 'show', 'non-guru', '2022-03-25 03:45:05', '2022-03-25 03:59:03'),
(28, NULL, 20, '19660608 198802 2 002', 'Nurjanah, SP, M.Si', 'Karawang', '1966-06-08', 'male', '4yLepKXuwHvGUIf0IZBL9QUEaSoH6T4s2pMlT99h.jpg', '-', 'sutiknonurjanah@gmail.com', 'Analis Ketahanan Pangan Ahli Muda', 'Penata Tk.I/ III/d', '-', '0', 'show', 'non-guru', '2022-03-25 03:47:00', '2022-03-25 04:20:04'),
(29, NULL, 20, '19780204 201001 2 002', 'Imas Maslamah, S.AN', 'Subang', '1978-02-04', 'male', 'DsZpLiSFUbJhmPzJRbEwY6NUoeDViMc0ko8rKSLG.jpg', '-', 'keisyadinda82@gmail.com', 'Analis Ketahanan Pangan Ahli Muda', 'Penata/ III/c', '-', '0', 'show', 'non-guru', '2022-03-25 03:49:35', '2022-03-25 03:52:06'),
(30, NULL, 20, '19660301 200701 2 011', 'Ir. Siti Aisah', 'Subang', '1966-03-01', 'male', 'jvXb5PybQA2qOk3hNCaVXb9QLotwCAzm8aNDu66L.jpg', '-', 'sitiaisahsubang66@gmail.com', 'Analis Ketahanan Pangan Ahli Muda', 'Penata Tk.I/ III/d', '-', '0', 'show', 'non-guru', '2022-03-25 03:50:51', '2022-03-25 03:57:24'),
(31, NULL, 20, '19650308 199303 1 007', 'H. Karman Sugiono, SP', 'Subang', '1965-03-08', 'male', 'R9vXFedYOfrzT9pcJO7nbu5RwSlY5ZwrSVkipDgU.jpg', '-', 'karmansugiono1965@gmail.com', 'Ahli Ketahanan Pangan Ahli Muda', 'Penata Tk.I/ III/d', '-', '0', 'show', 'non-guru', '2022-03-25 03:52:32', '2022-03-25 04:23:12'),
(32, NULL, 20, '19830710 201001 2 010', 'Ai Nurhicmah, S.H, M.Ap', 'Cianjur', '1983-07-10', 'male', 'STokReLmBLuOkswgTmdE38RR3R3f5aqWnINBj2Ls.jpg', '-', 'ai.nurhicmah17@gmail.com', 'Analis Ketahanan Pangan Ahli Muda', 'Penata/ III/c', '-', '0', 'show', 'non-guru', '2022-03-25 03:55:07', '2022-03-25 04:24:56'),
(33, NULL, 20, '19720322 200501 2 001', 'Vini Pisonia, SP, MM', 'Subang', '1972-03-22', 'male', 'KalI7n6GPhkkQARI4cVztRODAYgDPNytNgfgPK0l.jpg', '-', 'vinipisonia70@gmail.com', 'Analis Ketahanan Pangan Ahli Muda', 'Pembina/ IV/a', '-', '0', 'show', 'non-guru', '2022-03-25 03:56:26', '2022-03-25 04:27:21'),
(34, NULL, 20, '19640306 198708 1 002', 'Sirod Yudin, SP', 'Subang', '1964-03-06', 'male', 'gOoT2bAe2ijfsvjDQ0TUwdWbpDGV9AfgvlJIvZ1K.jpg', '-', '-', 'Analis Ketahanan Pangan Ahli Muda', 'Penata Tk.I/ III/d', '-', '0', 'show', 'non-guru', '2022-03-25 03:57:47', '2022-03-25 04:32:48'),
(35, NULL, 19, '197207092014112001', 'Nur\'aeni', 'Bandung', '1972-07-09', 'male', 'OEloq2sk9F85OyFmW7vZwkqZ7GIfq0RGCe9WGN9D.jpg', '-', 'nuraenikalijati@gmail.com', 'Pengadministrasi Keuangan', 'Pengatur Muda Tk.I/IIb', '-', '0', 'show', 'non-guru', '2022-03-25 04:48:23', '2022-03-25 04:48:23'),
(36, NULL, 15, '197805192014111001', 'Agus Abdul Kholik', 'Subang', '1978-05-19', 'male', 'Z8ZmCG6e21Fd2iTrYsxycn4kyhYq7TKKxQOMRgAM.jpg', '-', 'agusabdul78@gmail.com', 'Pengadministrasi umum', 'II b/ Pengatur Muda TK.I', '-', '0', 'show', 'non-guru', '2022-03-25 04:50:45', '2022-03-25 04:50:45'),
(37, NULL, 19, '198001042014111001', 'Data, A.Md', 'Subang', '1980-01-04', 'male', 'WWqnc2bwnHB6qB2mpIiggLnVUvFbUbIT1fTss5Kn.png', '-', 'datasuyana8@gmail.com', 'Pengelola Akuntansi', 'IId/Pengatur Tk.I', '-', '0', 'show', 'non-guru', '2022-03-25 04:52:51', '2022-03-25 04:52:51'),
(38, NULL, 14, '19761128 201001 2 002', 'Ika Rohika, SP.', 'Ciamis', '1976-11-28', 'male', 'UHtOQJOUrto5xSUYjc6gQo3lKkxUF1EU6MLiQj1I.jpg', '-', 'ikarohikakevin@gmail.com', 'Analis Pola Konsumsi Pangan Masyarakat', 'IIIc / Penata', '-', '0', 'show', 'non-guru', '2022-03-25 04:55:25', '2022-03-25 04:55:25'),
(39, NULL, 19, '19700910 200701 1 009', 'Budi Setiawan, SE', 'Subang', '1970-09-10', 'male', 'crU6glPMT5Rv8Z6NEFLFKLpzCs0orP37TwcedI9T.jpg', '-', 'setiawanbudd1970@gmail.com', 'Pengurus barang', 'Penata Tk. I/IIId', '-', '0', 'show', 'non-guru', '2022-03-25 04:58:58', '2022-03-25 04:58:58'),
(40, NULL, 14, '198112092011012002', 'Irma Liswati, S.P., MM', 'Bandung', '1981-12-09', 'male', 'itNoStfn55mwVesMuITRXg1z4alPqekaxQ6hRnqj.jpg', '-', 'semfeat_ir@yahoo.com', 'Analis Pola Konsumsi Pangan Masyarakat', 'IIIc / Penata', '-', '0', 'show', 'non-guru', '2022-03-25 05:01:04', '2022-03-25 05:01:04'),
(41, NULL, 18, '198405092008011003', 'Ruslan Saripudin', 'Subang', '1984-05-09', 'male', '6G9DfOqzQ429BW1ta9DvoQiF5PAAkVMwP4pGjJKk.jpg', '-', 'ruslansaripudin@gmail.com', 'Pengelola Kepegawaian', 'IId/Pengatur Tk.I', '-', '0', 'show', 'non-guru', '2022-03-25 05:03:26', '2022-03-25 05:03:26'),
(42, NULL, 18, '197308252006041013', 'Ilham Agus Gunawan, A.Md', 'Sukabumi', '1973-08-23', 'male', 'FwuGf7oNfyp8tX0EJrfQoIzivePuPoB3HyCBhv3B.jpg', '-', 'gunawania8@gmail.com', 'Pengelola Dokumentasi', 'III b / Penata Muda Tk. I', '-', '0', 'show', 'non-guru', '2022-03-25 05:05:51', '2022-03-25 05:05:51'),
(43, NULL, 14, '19800106 201411 2 001', 'Wini Sri Suminar', 'Subang', '1980-01-06', 'male', 'QVYZfPvZOQPOe0eTWePQsK6QVYwEeFP04VSSb050.jpg', '-', 'winisrisuminar@gmail.com', 'Pengadministrasi umum', 'Pengatur MudaTk. I, II/b', '-', '0', 'show', 'non-guru', '2022-03-25 05:08:22', '2022-03-25 05:08:22'),
(44, NULL, 16, '-', 'Indri Kridania Irma', 'Subang', '1979-07-11', 'male', 'moZwmapiHBzQ6jyuFuDZGuzv8lJC3AySZTR2wFog.jpg', '-', 'indrikridanaiairma@gmail.com', 'Tenaga Honorer', '-', '-', '0', 'show', 'non-guru', '2022-03-25 05:10:42', '2022-03-25 05:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `id_kecamatan`, `name`, `slug`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, '#KonsumsiPanganBeragamBergiziSeimbangdanAman', 'konsumsipanganberagambergiziseimbangdanaman', 'Operator Admin Website', NULL, 'show', '2022-03-17 07:19:54', '2022-03-17 07:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_kecamatan`, `name`, `username`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Super Admin Website', 'suadmin', 'suadmin@gmail.com', NULL, '$2y$10$W3/7AOEzsyAx3y5gPOsdd.Q/Xq5GdWACzbv610QndjHk6ZIiOQ1Tm', NULL, NULL, NULL, '2022-01-20 10:55:50', '2022-01-20 10:55:50'),
(2, NULL, 'Admin Website', 'admin', 'admin@gmail.com', NULL, '$2y$10$QMZI6ksIPPYSi9xbgVY/u.Ficew2j3x5iL6ZM8oZwdwMSAA7E9rCS', NULL, NULL, NULL, '2022-01-20 10:55:50', '2022-01-20 10:55:50'),
(3, NULL, 'Operator Admin Website', 'operator', 'operator@gmail.com', NULL, '$2y$10$J7/oqrZI4qzLq9qvW.SB.uuiw7z.Bysk2zIqgwq7xW.HfqlBp1NQi', NULL, NULL, NULL, '2022-01-20 10:55:50', '2022-01-20 10:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit` bigint(20) NOT NULL DEFAULT '0',
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `id_kecamatan`, `title`, `slug`, `thumbnail`, `description`, `url`, `hit`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Ulang Tahun ke 74 Kabupaten Subang', 'ulang-tahun-ke-74-kabupaten-subang', 'OGDuNzC867iV60OamTer5PwV0j9kh4TM6OIbffdr.jpg', 'Wilujeng Milangkala ke 74 Kabupaten Subang. Semoga selalu Jaya, Istimewa, Sejahtera', 'https://www.instagram.com/p/Cb89EoHlfKw/', 0, 'Operator Admin Website', NULL, 'show', '2022-04-05 14:23:04', '2022-04-05 14:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit` bigint(20) NOT NULL,
  `online` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `date`, `ip`, `hit`, `online`, `created_at`, `updated_at`) VALUES
(1, '2022-01-20', '127.0.0.1', 125, '1642683408', NULL, '2022-01-20 12:56:48'),
(2, '2022-01-21', '127.0.0.1', 46, '1642750904', NULL, '2022-01-21 07:41:44'),
(3, '2022-01-24', '127.0.0.1', 34, '1643012032', NULL, '2022-01-24 08:13:52'),
(4, '2022-01-25', '127.0.0.1', 145, '1643088716', NULL, '2022-01-25 05:31:56'),
(5, '2022-01-26', '127.0.0.1', 107, '1643186645', NULL, '2022-01-26 08:44:05'),
(6, '2022-01-27', '127.0.0.1', 55, '1643281958', NULL, '2022-01-27 11:12:38'),
(7, '2022-01-28', '127.0.0.1', 33, '1643311142', NULL, '2022-01-27 19:19:02'),
(8, '2022-02-06', '103.156.88.45', 1, '1644166748', NULL, NULL),
(9, '2022-02-07', '114.124.188.114', 14, '1644176759', NULL, '2022-02-06 19:45:59'),
(10, '2022-02-07', '114.124.188.96', 2, '1644167136', NULL, '2022-02-06 17:05:36'),
(11, '2022-02-07', '103.156.88.45', 1, '1644167729', NULL, NULL),
(12, '2022-02-07', '114.124.161.34', 12, '1644175744', NULL, '2022-02-06 19:29:04'),
(13, '2022-02-07', '114.124.163.114', 19, '1644176722', NULL, '2022-02-06 19:45:22'),
(14, '2022-02-07', '114.124.216.108', 1, '1644176871', NULL, NULL),
(15, '2022-02-07', '114.124.217.119', 2, '1644178412', NULL, '2022-02-06 20:13:32'),
(16, '2022-02-08', '103.156.88.45', 11, '1644308174', NULL, '2022-02-08 08:16:14'),
(17, '2022-02-08', '18.206.55.48', 6, '1644304381', NULL, '2022-02-08 07:13:01'),
(18, '2022-02-08', '100.26.52.66', 2, '1644318629', NULL, '2022-02-08 11:10:29'),
(19, '2022-02-09', '176.113.43.75', 1, '1644340396', NULL, NULL),
(20, '2022-02-09', '103.156.88.45', 3, '1644367528', NULL, '2022-02-09 00:45:28'),
(21, '2022-02-09', '18.206.55.48', 6, '1644383494', NULL, '2022-02-09 05:11:34'),
(22, '2022-02-09', '100.26.52.66', 2, '1644388013', NULL, '2022-02-09 06:26:53'),
(23, '2022-02-10', '162.142.125.211', 1, '1644483419', NULL, NULL),
(24, '2022-02-10', '65.154.226.165', 1, '1644483441', NULL, NULL),
(25, '2022-02-10', '133.242.174.119', 2, '1644491372', NULL, '2022-02-10 11:09:32'),
(26, '2022-02-10', '133.242.140.127', 2, '1644491372', NULL, '2022-02-10 11:09:32'),
(27, '2022-02-10', '114.124.130.10', 5, '1644512319', NULL, '2022-02-10 16:58:39'),
(28, '2022-02-10', '114.124.131.10', 7, '1644512399', NULL, '2022-02-10 16:59:59'),
(29, '2022-02-10', '114.124.131.74', 2, '1644512387', NULL, '2022-02-10 16:59:47'),
(30, '2022-02-11', '114.124.131.10', 5, '1644512606', NULL, '2022-02-10 17:03:26'),
(31, '2022-02-11', '114.124.130.10', 7, '1644512471', NULL, '2022-02-10 17:01:11'),
(32, '2022-02-11', '114.124.131.74', 4, '1644512610', NULL, '2022-02-10 17:03:30'),
(33, '2022-02-11', '89.104.110.129', 1, '1644513616', NULL, NULL),
(34, '2022-02-12', '45.90.63.73', 1, '1644599726', NULL, NULL),
(35, '2022-02-12', '18.206.55.48', 6, '1644614073', NULL, '2022-02-11 21:14:33'),
(36, '2022-02-12', '100.26.52.66', 2, '1644616449', NULL, '2022-02-11 21:54:09'),
(37, '2022-02-13', '18.206.55.48', 3, '1644723554', NULL, '2022-02-13 03:39:14'),
(38, '2022-02-13', '100.26.52.66', 1, '1644738423', NULL, NULL),
(39, '2022-02-14', '18.206.55.48', 3, '1644784670', NULL, '2022-02-13 20:37:50'),
(40, '2022-02-14', '100.26.52.66', 1, '1644796386', NULL, NULL),
(41, '2022-02-14', '103.156.88.45', 4, '1644828369', NULL, '2022-02-14 08:46:09'),
(42, '2022-02-15', '103.156.88.45', 4, '1644895616', NULL, '2022-02-15 03:26:56'),
(43, '2022-02-15', '18.206.55.48', 3, '1644903109', NULL, '2022-02-15 05:31:49'),
(44, '2022-02-15', '100.26.52.66', 1, '1644903386', NULL, NULL),
(45, '2022-02-17', '103.156.88.45', 1, '1645066011', NULL, NULL),
(46, '2022-02-20', '92.118.160.13', 1, '1645368195', NULL, NULL),
(47, '2022-02-21', '92.118.160.13', 1, '1645423371', NULL, NULL),
(48, '2022-02-22', '103.156.88.130', 3, '1645518392', NULL, '2022-02-22 08:26:32'),
(49, '2022-02-22', '34.77.162.21', 1, '1645510420', NULL, NULL),
(50, '2022-02-24', '18.206.55.48', 3, '1645680252', NULL, '2022-02-24 05:24:12'),
(51, '2022-02-24', '103.156.88.130', 3, '1645689693', NULL, '2022-02-24 08:01:33'),
(52, '2022-02-24', '54.227.32.154', 1, '1645690320', NULL, NULL),
(53, '2022-02-25', '34.77.162.4', 1, '1645792348', NULL, NULL),
(54, '2022-02-26', '34.86.35.25', 1, '1645863061', NULL, NULL),
(55, '2022-02-27', '92.118.160.1', 1, '1645918992', NULL, NULL),
(56, '2022-03-01', '34.86.35.3', 1, '1646088851', NULL, NULL),
(57, '2022-03-01', '103.156.88.254', 3, '1646110126', NULL, '2022-03-01 04:48:46'),
(58, '2022-03-01', '92.118.160.9', 1, '1646112261', NULL, NULL),
(59, '2022-03-01', '18.206.55.48', 3, '1646121772', NULL, '2022-03-01 08:02:52'),
(60, '2022-03-01', '54.227.32.154', 1, '1646128057', NULL, NULL),
(61, '2022-03-02', '103.156.88.254', 4, '1646192231', NULL, '2022-03-02 03:37:11'),
(62, '2022-03-02', '34.86.35.4', 1, '1646214377', NULL, NULL),
(63, '2022-03-04', '103.156.88.254', 5, '1646387208', NULL, '2022-03-04 09:46:48'),
(64, '2022-03-04', '18.206.55.48', 3, '1646401458', NULL, '2022-03-04 13:44:18'),
(65, '2022-03-04', '54.227.32.154', 1, '1646401549', NULL, NULL),
(66, '2022-03-08', '128.199.122.170', 2, '1646686609', NULL, '2022-03-07 20:56:50'),
(67, '2022-03-08', '36.74.43.22', 3, '1646725335', NULL, '2022-03-08 07:42:15'),
(68, '2022-03-08', '103.156.88.254', 6128, '1646743095', NULL, '2022-03-08 12:38:15'),
(69, '2022-03-08', '169.60.2.105', 1, '1646705749', NULL, NULL),
(70, '2022-03-09', '103.156.88.254', 2, '1646799862', NULL, '2022-03-09 04:24:22'),
(71, '2022-03-13', '162.142.125.9', 2, '1647123651', NULL, '2022-03-12 22:20:51'),
(72, '2022-03-16', '103.156.88.254', 484, '1647396166', NULL, '2022-03-16 02:02:46'),
(73, '2022-03-16', '114.124.195.27', 4, '1647446787', NULL, '2022-03-16 16:06:27'),
(74, '2022-03-16', '114.124.195.91', 3, '1647446455', NULL, '2022-03-16 16:00:55'),
(75, '2022-03-16', '114.124.195.155', 4, '1647446496', NULL, '2022-03-16 16:01:36'),
(76, '2022-03-17', '103.156.88.254', 200, '1647506925', NULL, '2022-03-17 08:48:45'),
(77, '2022-03-17', '36.74.44.74', 32, '1647523168', NULL, '2022-03-17 13:19:28'),
(78, '2022-03-17', '180.252.22.20', 108, '1647529856', NULL, '2022-03-17 15:10:56'),
(79, '2022-03-17', '114.124.195.74', 1, '1647531712', NULL, NULL),
(80, '2022-03-17', '114.124.195.10', 1, '1647531742', NULL, NULL),
(81, '2022-03-18', '103.156.88.254', 15, '1647585266', NULL, '2022-03-18 06:34:26'),
(82, '2022-03-20', '167.248.133.47', 2, '1647710863', NULL, '2022-03-19 17:27:43'),
(83, '2022-03-21', '114.124.195.101', 2, '1647801104', NULL, '2022-03-20 18:31:44'),
(84, '2022-03-21', '103.156.88.254', 243, '1647845643', NULL, '2022-03-21 06:54:03'),
(85, '2022-03-22', '51.158.118.231', 1, '1647908463', NULL, NULL),
(86, '2022-03-22', '103.156.88.254', 4077, '1647933773', NULL, '2022-03-22 07:22:53'),
(87, '2022-03-22', '36.74.42.142', 5, '1647923837', NULL, '2022-03-22 04:37:17'),
(88, '2022-03-22', '36.74.44.238', 22, '1647936743', NULL, '2022-03-22 08:12:23'),
(89, '2022-03-22', '36.74.42.8', 222, '1647960826', NULL, '2022-03-22 14:53:46'),
(90, '2022-03-22', '169.60.172.116', 1, '1647960788', NULL, NULL),
(91, '2022-03-23', '36.74.40.154', 64, '1648013938', NULL, '2022-03-23 05:38:58'),
(92, '2022-03-23', '114.122.71.123', 2, '1647999496', NULL, '2022-03-23 01:38:16'),
(93, '2022-03-23', '103.156.88.254', 726, '1648016515', NULL, '2022-03-23 06:21:55'),
(94, '2022-03-23', '36.74.43.40', 48, '1648021416', NULL, '2022-03-23 07:43:36'),
(95, '2022-03-23', '36.74.42.8', 138, '1648053904', NULL, '2022-03-23 16:45:04'),
(96, '2022-03-23', '114.124.195.165', 2, '1648054311', NULL, '2022-03-23 16:51:51'),
(97, '2022-03-24', '114.124.195.101', 1, '1648054895', NULL, NULL),
(98, '2022-03-24', '180.241.242.178', 5, '1648098327', NULL, '2022-03-24 05:05:27'),
(99, '2022-03-24', '180.241.241.120', 4, '1648098563', NULL, '2022-03-24 05:09:23'),
(100, '2022-03-24', '180.241.240.60', 4, '1648098371', NULL, '2022-03-24 05:06:11'),
(101, '2022-03-24', '180.241.243.69', 4, '1648098574', NULL, '2022-03-24 05:09:34'),
(102, '2022-03-25', '114.124.131.52', 3, '1648143592', NULL, '2022-03-24 17:39:52'),
(103, '2022-03-25', '114.124.131.116', 1, '1648143431', NULL, NULL),
(104, '2022-03-25', '114.124.130.52', 4, '1648143638', NULL, '2022-03-24 17:40:38'),
(105, '2022-03-25', '36.74.40.179', 4, '1648158882', NULL, '2022-03-24 21:54:42'),
(106, '2022-03-25', '36.74.47.54', 17, '1648179569', NULL, '2022-03-25 03:39:29'),
(107, '2022-03-25', '36.75.202.131', 151, '1648182984', NULL, '2022-03-25 04:36:24'),
(108, '2022-03-25', '36.74.47.212', 1, '1648170226', NULL, NULL),
(109, '2022-03-25', '36.74.46.115', 3, '1648170640', NULL, '2022-03-25 01:10:40'),
(110, '2022-03-25', '36.74.47.68', 91, '1648183563', NULL, '2022-03-25 04:46:03'),
(111, '2022-03-25', '36.74.46.49', 59, '1648180287', NULL, '2022-03-25 03:51:27'),
(112, '2022-03-25', '169.60.172.114', 1, '1648180812', NULL, NULL),
(113, '2022-03-25', '169.48.198.40', 1, '1648180814', NULL, NULL),
(114, '2022-03-25', '36.74.46.43', 45, '1648183386', NULL, '2022-03-25 04:43:06'),
(115, '2022-03-25', '169.60.2.125', 2, '1648183034', NULL, '2022-03-25 04:37:14'),
(116, '2022-03-25', '169.48.198.34', 1, '1648182914', NULL, NULL),
(117, '2022-03-25', '36.74.47.135', 64, '1648185772', NULL, '2022-03-25 05:22:52'),
(118, '2022-03-25', '180.241.242.77', 3, '1648185762', NULL, '2022-03-25 05:22:42'),
(119, '2022-03-25', '180.241.243.138', 2, '1648185755', NULL, '2022-03-25 05:22:35'),
(120, '2022-03-25', '103.156.88.138', 3, '1648191067', NULL, '2022-03-25 06:51:07'),
(121, '2022-03-26', '114.124.188.85', 1, '1648261010', NULL, NULL),
(122, '2022-03-27', '116.90.214.14', 187, '1648399928', NULL, '2022-03-27 16:52:08'),
(123, '2022-03-27', '114.124.131.115', 3, '1648359689', NULL, '2022-03-27 05:41:29'),
(124, '2022-03-28', '116.90.214.14', 56, '1648425507', NULL, '2022-03-27 23:58:27'),
(125, '2022-03-28', '103.156.88.254', 51, '1648458544', NULL, '2022-03-28 09:09:04'),
(126, '2022-03-28', '103.156.88.138', 36, '1648431714', NULL, '2022-03-28 01:41:54'),
(127, '2022-03-28', '36.74.47.85', 63, '1648434171', NULL, '2022-03-28 02:22:52'),
(128, '2022-03-28', '36.74.78.231', 31, '1648433315', NULL, '2022-03-28 02:08:35'),
(129, '2022-03-28', '31.13.127.11', 1, '1648432304', NULL, NULL),
(130, '2022-03-28', '69.171.231.116', 1, '1648432305', NULL, NULL),
(131, '2022-03-28', '36.74.46.58', 1, '1648439721', NULL, NULL),
(132, '2022-03-28', '36.74.47.236', 1, '1648439729', NULL, NULL),
(133, '2022-03-29', '34.96.130.25', 1, '1648516657', NULL, NULL),
(134, '2022-03-29', '36.74.47.239', 4, '1648518149', NULL, '2022-03-29 01:42:29'),
(135, '2022-03-29', '36.74.46.121', 1, '1648517946', NULL, NULL),
(136, '2022-03-29', '114.124.131.9', 1, '1648567864', NULL, NULL),
(137, '2022-03-30', '34.96.130.29', 1, '1648578971', NULL, NULL),
(138, '2022-03-30', '103.156.88.254', 7, '1648621894', NULL, '2022-03-30 06:31:34'),
(139, '2022-03-31', '103.156.88.254', 88, '1648713473', NULL, '2022-03-31 07:57:53'),
(140, '2022-03-31', '103.156.88.138', 20, '1648699689', NULL, '2022-03-31 04:08:09'),
(141, '2022-03-31', '36.72.233.141', 9, '1648690927', NULL, '2022-03-31 01:42:07'),
(142, '2022-03-31', '36.74.47.35', 5, '1648691135', NULL, '2022-03-31 01:45:35'),
(143, '2022-03-31', '36.74.46.182', 8, '1648691199', NULL, '2022-03-31 01:46:39'),
(144, '2022-03-31', '114.124.131.97', 13, '1648699986', NULL, '2022-03-31 04:13:06'),
(145, '2022-03-31', '114.124.130.33', 12, '1648699992', NULL, '2022-03-31 04:13:12'),
(146, '2022-03-31', '114.124.131.33', 3, '1648699783', NULL, '2022-03-31 04:09:43'),
(147, '2022-04-01', '34.77.162.0', 1, '1648754846', NULL, NULL),
(148, '2022-04-01', '103.156.88.254', 3, '1648777654', NULL, '2022-04-01 01:47:34'),
(149, '2022-04-01', '34.77.162.10', 1, '1648794265', NULL, NULL),
(150, '2022-04-02', '114.122.103.192', 40, '1648884693', NULL, '2022-04-02 07:31:33'),
(151, '2022-04-03', '114.124.131.48', 1, '1648975607', NULL, NULL),
(152, '2022-04-03', '92.118.160.17', 1, '1648995320', NULL, NULL),
(153, '2022-04-04', '92.118.160.57', 1, '1649021131', NULL, NULL),
(154, '2022-04-04', '36.74.47.135', 1, '1649037323', NULL, NULL),
(155, '2022-04-04', '114.122.102.131', 6, '1649039795', NULL, '2022-04-04 02:36:35'),
(156, '2022-04-04', '103.156.88.254', 3, '1649053687', NULL, '2022-04-04 06:28:07'),
(157, '2022-04-04', '36.74.46.72', 1, '1649053664', NULL, NULL),
(158, '2022-04-04', '114.124.131.25', 1, '1649075809', NULL, NULL),
(159, '2022-04-05', '114.122.70.62', 20, '1649130862', NULL, '2022-04-05 03:54:22'),
(160, '2022-04-05', '114.122.70.48', 1, '1649130629', NULL, NULL),
(161, '2022-04-05', '36.78.22.208', 39, '1649133938', NULL, '2022-04-05 04:45:38'),
(162, '2022-04-05', '36.75.210.203', 25, '1649131471', NULL, '2022-04-05 04:04:31'),
(163, '2022-04-05', '103.156.88.138', 2, '1649131060', NULL, '2022-04-05 03:57:40'),
(164, '2022-04-05', '114.122.102.157', 5, '1649131025', NULL, '2022-04-05 03:57:05'),
(165, '2022-04-05', '114.122.68.86', 2, '1649131384', NULL, '2022-04-05 04:03:04'),
(166, '2022-04-05', '114.122.106.118', 1, '1649138267', NULL, NULL),
(167, '2022-04-05', '36.74.41.1', 29, '1649168624', NULL, '2022-04-05 14:23:44'),
(168, '2022-04-06', '64.225.11.100', 1, '1649186940', NULL, NULL),
(169, '2022-04-06', '36.74.41.3', 5, '1649197138', NULL, '2022-04-05 22:18:58'),
(170, '2022-04-06', '34.96.130.6', 1, '1649209455', NULL, NULL),
(171, '2022-04-06', '36.74.46.79', 38, '1649213040', NULL, '2022-04-06 02:44:00'),
(172, '2022-04-06', '36.75.210.203', 6, '1649211500', NULL, '2022-04-06 02:18:20'),
(173, '2022-04-06', '34.86.35.26', 1, '1649209828', NULL, NULL),
(174, '2022-04-07', '36.75.210.203', 2, '1649306334', NULL, '2022-04-07 04:38:54'),
(175, '2022-04-08', '180.252.21.111', 10, '1649403344', NULL, '2022-04-08 07:35:44'),
(176, '2022-04-08', '180.252.21.111', 10, '1649403344', NULL, '2022-04-08 07:35:44'),
(177, '2022-04-08', '162.243.4.24', 1, '1649403336', NULL, NULL),
(178, '2022-04-08', '103.156.88.254', 1, '1649405569', NULL, NULL),
(179, '2022-04-08', '162.142.125.210', 2, '1649432921', NULL, '2022-04-08 15:48:41'),
(180, '2022-04-09', '92.118.160.41', 1, '1649439828', NULL, NULL),
(181, '2022-04-09', '34.96.130.29', 1, '1649446916', NULL, NULL),
(182, '2022-04-09', '92.118.160.5', 1, '1649501192', NULL, NULL),
(183, '2022-04-11', '51.81.167.146', 1, '1649613142', NULL, NULL),
(184, '2022-04-11', '205.169.39.1', 1, '1649613212', NULL, NULL),
(185, '2022-04-11', '179.43.169.181', 3, '1649613400', NULL, '2022-04-10 17:56:40'),
(186, '2022-04-11', '45.154.255.147', 1, '1649613722', NULL, NULL),
(187, '2022-04-11', '133.242.140.127', 1, '1649620345', NULL, NULL),
(188, '2022-04-11', '133.242.174.119', 1, '1649620346', NULL, NULL),
(189, '2022-04-12', '89.104.101.150', 1, '1649698122', NULL, NULL),
(190, '2022-04-12', '151.106.120.184', 2, '1649714383', NULL, '2022-04-11 21:59:43'),
(191, '2022-04-12', '36.74.47.38', 2, '1649730652', NULL, '2022-04-12 02:30:52'),
(192, '2022-04-13', '176.53.223.111', 1, '1649785044', NULL, NULL),
(193, '2022-04-13', '51.81.167.146', 1, '1649798721', NULL, NULL),
(194, '2022-04-13', '36.78.219.88', 4, '1649815090', NULL, '2022-04-13 01:58:10'),
(195, '2022-04-13', '114.122.71.49', 1, '1649815108', NULL, NULL),
(196, '2022-04-13', '114.5.254.202', 7, '1649815627', NULL, '2022-04-13 02:07:07'),
(197, '2022-04-13', '162.243.4.24', 1, '1649815330', NULL, NULL),
(198, '2022-04-13', '36.74.42.1', 8, '1649815617', NULL, '2022-04-13 02:06:57'),
(199, '2022-04-13', '103.156.88.254', 71, '1649836148', NULL, '2022-04-13 07:49:08'),
(200, '2022-04-14', '103.156.88.254', 2, '1649916576', NULL, '2022-04-14 06:09:36'),
(201, '2022-04-15', '198.235.24.139', 1, '1650013711', NULL, NULL),
(202, '2022-04-15', '198.235.24.154', 1, '1650017251', NULL, NULL),
(203, '2022-04-16', '114.124.238.33', 1, '1650117106', NULL, NULL),
(204, '2022-04-18', '65.154.226.171', 1, '1650215631', NULL, NULL),
(205, '2022-04-19', '205.210.31.137', 1, '1650336458', NULL, NULL),
(206, '2022-04-19', '103.156.88.254', 2, '1650339468', NULL, '2022-04-19 03:37:48'),
(207, '2022-04-19', '180.252.16.251', 1, '1650383600', NULL, NULL),
(208, '2022-04-20', '114.122.73.152', 1, '1650423598', NULL, NULL),
(209, '2022-04-20', '114.124.210.100', 1, '1650424980', NULL, NULL),
(210, '2022-04-20', '198.235.24.8', 1, '1650439099', NULL, NULL),
(211, '2022-04-20', '114.124.215.209', 1, '1650453379', NULL, NULL),
(212, '2022-04-20', '114.124.131.16', 1, '1650468769', NULL, NULL),
(213, '2022-04-20', '114.124.131.80', 1, '1650468781', NULL, NULL),
(214, '2022-04-20', '114.124.130.16', 4, '1650472409', NULL, '2022-04-20 16:33:29'),
(215, '2022-04-21', '36.74.43.35', 1, '1650488600', NULL, NULL),
(216, '2022-04-21', '36.74.45.118', 47, '1650525349', NULL, '2022-04-21 07:15:49'),
(217, '2022-04-21', '180.244.160.156', 1, '1650517513', NULL, NULL),
(218, '2022-04-21', '198.235.24.142', 1, '1650534840', NULL, NULL),
(219, '2022-04-21', '36.77.123.29', 3, '1650547851', NULL, '2022-04-21 13:30:51'),
(220, '2022-04-22', '198.235.24.22', 1, '1650574079', NULL, NULL),
(221, '2022-04-22', '44.200.59.16', 1, '1650598782', NULL, NULL),
(222, '2022-04-22', '180.252.30.234', 2, '1650600862', NULL, '2022-04-22 04:14:22'),
(223, '2022-04-22', '198.235.24.137', 1, '1650631038', NULL, NULL),
(224, '2022-04-22', '36.77.123.29', 1, '1650633345', NULL, NULL),
(225, '2022-04-23', '198.235.24.134', 1, '1650699434', NULL, NULL),
(226, '2022-04-23', '51.15.195.246', 1, '1650702769', NULL, NULL),
(227, '2022-04-23', '36.77.123.29', 1, '1650708938', NULL, NULL),
(228, '2022-04-23', '69.171.231.120', 1, '1650708975', NULL, NULL),
(229, '2022-04-23', '69.171.231.3', 1, '1650708975', NULL, NULL),
(230, '2022-04-23', '69.171.231.3', 1, '1650708975', NULL, NULL),
(231, '2022-04-23', '69.171.231.2', 1, '1650708975', NULL, NULL),
(232, '2022-04-23', '69.171.231.117', 1, '1650708976', NULL, NULL),
(233, '2022-04-24', '114.124.245.252', 1, '1650742537', NULL, NULL),
(234, '2022-04-25', '205.210.31.161', 1, '1650826856', NULL, NULL),
(235, '2022-04-25', '103.156.88.254', 3, '1650846171', NULL, '2022-04-25 00:22:51'),
(236, '2022-04-25', '103.156.88.138', 6, '1650850247', NULL, '2022-04-25 01:30:47'),
(237, '2022-04-26', '205.210.31.158', 1, '1650908357', NULL, NULL),
(238, '2022-04-26', '103.156.88.254', 4, '1650960126', NULL, '2022-04-26 08:02:06'),
(239, '2022-04-26', '182.253.127.183', 1, '1650953930', NULL, NULL),
(240, '2022-04-26', '173.252.95.120', 1, '1650953933', NULL, NULL),
(241, '2022-04-26', '149.154.161.16', 1, '1650964251', NULL, NULL),
(242, '2022-04-26', '205.210.31.156', 1, '1650980529', NULL, NULL),
(243, '2022-04-27', '103.156.88.254', 4, '1651039214', NULL, '2022-04-27 06:00:14'),
(244, '2022-04-27', '198.235.24.28', 1, '1651058718', NULL, NULL),
(245, '2022-04-29', '198.235.24.139', 1, '1651234505', NULL, NULL),
(246, '2022-04-29', '205.210.31.17', 1, '1651235973', NULL, NULL),
(247, '2022-05-02', '162.142.125.212', 2, '1651505344', NULL, '2022-05-02 15:29:05'),
(248, '2022-05-03', '198.235.24.15', 1, '1651516394', NULL, NULL),
(249, '2022-05-03', '198.235.24.19', 1, '1651519192', NULL, NULL),
(250, '2022-05-03', '161.35.189.97', 1, '1651542856', NULL, NULL),
(251, '2022-05-07', '162.142.125.210', 1, '1651857045', NULL, NULL),
(252, '2022-05-07', '162.142.125.210', 1, '1651857045', NULL, NULL),
(253, '2022-05-08', '173.252.95.3', 1, '1651984661', NULL, NULL),
(254, '2022-05-08', '104.131.15.115', 1, '1652027169', NULL, NULL),
(255, '2022-05-09', '36.74.42.182', 6, '1652062483', NULL, '2022-05-09 02:14:43'),
(256, '2022-05-11', '44.200.185.9', 3, '1652253841', NULL, '2022-05-11 07:24:01'),
(257, '2022-05-11', '35.215.39.199', 3, '1652254247', NULL, '2022-05-11 07:30:47'),
(258, '2022-05-15', '173.252.95.6', 1, '1652561936', NULL, NULL),
(259, '2022-05-18', '103.78.73.107', 1, '1652837100', NULL, NULL),
(260, '2022-05-18', '173.252.95.117', 1, '1652837115', NULL, NULL),
(261, '2022-05-24', '103.156.88.254', 21, '1653378068', NULL, '2022-05-24 07:41:08'),
(262, '2022-05-26', '114.124.131.126', 2, '1653576806', NULL, '2022-05-26 14:53:26'),
(263, '2022-05-26', '114.124.130.62', 1, '1653576812', NULL, NULL),
(264, '2022-05-27', '128.199.90.184', 2, '1653615988', NULL, '2022-05-27 01:46:28'),
(265, '2022-05-27', '103.156.88.254', 21, '1653625694', NULL, '2022-05-27 04:28:14'),
(266, '2022-05-28', '51.15.195.246', 1, '1653684643', NULL, NULL),
(267, '2022-05-30', '103.156.88.254', 1888, '1653894764', NULL, '2022-05-30 07:12:44'),
(268, '2022-05-30', '36.74.40.239', 4, '1653877534', NULL, '2022-05-30 02:25:34'),
(269, '2022-05-30', '27.115.124.70', 1, '1653877468', NULL, NULL),
(270, '2022-05-30', '180.163.220.3', 1, '1653877484', NULL, NULL),
(271, '2022-05-30', '42.236.10.75', 2, '1653877529', NULL, '2022-05-30 02:25:29'),
(272, '2022-05-30', '27.115.124.38', 1, '1653877529', NULL, NULL),
(273, '2022-06-01', '162.142.125.9', 2, '1654047808', NULL, '2022-06-01 01:43:28'),
(274, '2022-06-01', '64.225.1.246', 1, '1654085143', NULL, NULL),
(275, '2022-06-02', '137.184.11.224', 2, '1654147748', NULL, '2022-06-02 05:29:08'),
(276, '2022-06-03', '137.184.11.224', 2, '1654231546', NULL, '2022-06-03 04:45:46'),
(277, '2022-06-06', '157.245.212.49', 1, '1654459422', NULL, NULL),
(278, '2022-06-06', '137.184.11.224', 3, '1654500848', NULL, '2022-06-06 07:34:08'),
(279, '2022-06-07', '103.156.88.254', 1, '1654583435', NULL, NULL),
(280, '2022-06-08', '137.184.11.224', 1, '1654670138', NULL, NULL),
(281, '2022-06-08', '103.156.88.254', 1, '1654671913', NULL, NULL),
(282, '2022-06-08', '44.193.113.38', 2, '1654671986', NULL, '2022-06-08 07:06:26'),
(283, '2022-06-08', '107.23.77.110', 1, '1654672076', NULL, NULL),
(284, '2022-06-08', '198.235.24.34', 1, '1654681600', NULL, NULL),
(285, '2022-06-09', '103.156.88.254', 9, '1654755705', NULL, '2022-06-09 06:21:45'),
(286, '2022-06-09', '137.184.11.224', 1, '1654755712', NULL, NULL),
(287, '2022-06-09', '151.236.220.252', 1, '1654776801', NULL, NULL),
(288, '2022-06-10', '179.43.169.181', 1, '1654797232', NULL, NULL),
(289, '2022-06-10', '51.81.167.146', 1, '1654797236', NULL, NULL),
(290, '2022-06-10', '133.242.140.127', 2, '1654804338', NULL, '2022-06-09 19:52:18'),
(291, '2022-06-10', '133.242.174.119', 2, '1654804338', NULL, '2022-06-09 19:52:18'),
(292, '2022-06-10', '216.218.191.228', 1, '1654810167', NULL, NULL),
(293, '2022-06-10', '137.184.11.224', 1, '1654834403', NULL, NULL),
(294, '2022-06-10', '114.122.102.128', 1, '1654835103', NULL, NULL),
(295, '2022-06-10', '69.171.249.9', 1, '1654835105', NULL, NULL),
(296, '2022-06-10', '51.255.62.9', 1, '1654846560', NULL, NULL),
(297, '2022-06-10', '51.254.49.102', 1, '1654854024', NULL, NULL),
(298, '2022-06-10', '205.210.31.6', 1, '1654874092', NULL, NULL),
(299, '2022-06-11', '176.113.42.191', 1, '1654881795', NULL, NULL),
(300, '2022-06-11', '114.122.107.235', 1, '1654928123', NULL, NULL),
(301, '2022-06-12', '51.255.62.6', 1, '1654997972', NULL, NULL),
(302, '2022-06-12', '51.254.49.100', 1, '1655002962', NULL, NULL),
(303, '2022-06-13', '198.235.24.156', 1, '1655074814', NULL, NULL),
(304, '2022-06-13', '180.244.136.244', 6, '1655093838', NULL, '2022-06-13 04:17:18'),
(305, '2022-06-13', '114.122.106.148', 1, '1655107576', NULL, NULL),
(306, '2022-06-13', '114.122.106.138', 1, '1655110652', NULL, NULL),
(307, '2022-06-13', '137.184.11.168', 1, '1655112095', NULL, NULL),
(308, '2022-06-14', '198.235.24.158', 1, '1655178342', NULL, NULL),
(309, '2022-06-14', '198.235.24.140', 1, '1655178955', NULL, NULL),
(310, '2022-06-14', '137.184.11.168', 1, '1655186145', NULL, NULL),
(311, '2022-06-14', '114.122.71.153', 1, '1655214372', NULL, NULL),
(312, '2022-06-16', '36.65.243.107', 3, '1655361729', NULL, '2022-06-16 06:42:09'),
(313, '2022-06-17', '205.169.39.4', 1, '1655400025', NULL, NULL),
(314, '2022-06-17', '3.135.216.17', 3, '1655429070', NULL, '2022-06-17 01:24:30'),
(315, '2022-06-18', '198.235.24.18', 1, '1655493172', NULL, NULL),
(316, '2022-06-18', '137.184.11.168', 1, '1655538635', NULL, NULL),
(317, '2022-06-19', '114.122.69.255', 1, '1655586540', NULL, NULL),
(318, '2022-06-19', '198.235.24.161', 1, '1655629200', NULL, NULL),
(319, '2022-06-21', '198.235.24.20', 1, '1655825990', NULL, NULL),
(320, '2022-06-21', '198.235.24.151', 1, '1655829103', NULL, NULL),
(321, '2022-06-22', '173.252.79.13', 1, '1655871834', NULL, NULL),
(322, '2022-06-22', '103.156.88.254', 30, '1655881318', NULL, '2022-06-22 07:01:58'),
(323, '2022-06-22', '137.184.11.168', 1, '1655897174', NULL, NULL),
(324, '2022-06-22', '205.210.31.17', 1, '1655913679', NULL, NULL),
(325, '2022-06-23', '205.210.31.133', 1, '1655928605', NULL, NULL),
(326, '2022-06-23', '35.219.137.69', 1, '1655940621', NULL, NULL),
(327, '2022-06-23', '198.235.24.138', 1, '1655942640', NULL, NULL),
(328, '2022-06-23', '36.90.217.33', 1, '1655976711', NULL, NULL),
(329, '2022-06-24', '103.156.88.254', 9, '1656036766', NULL, '2022-06-24 02:12:47'),
(330, '2022-06-24', '198.235.24.144', 1, '1656088156', NULL, NULL),
(331, '2022-06-25', '198.235.24.158', 1, '1656115195', NULL, NULL),
(332, '2022-06-26', '162.142.125.8', 2, '1656200535', NULL, '2022-06-25 23:42:15'),
(333, '2022-06-26', '205.210.31.145', 1, '1656233555', NULL, NULL),
(334, '2022-06-26', '137.184.11.168', 1, '1656256208', NULL, NULL),
(335, '2022-06-28', '103.156.88.254', 4, '1656403309', NULL, '2022-06-28 08:01:49'),
(336, '2022-06-28', '36.74.40.122', 29, '1656391264', NULL, '2022-06-28 04:41:05'),
(337, '2022-06-28', '192.241.137.43', 1, '1656390406', NULL, NULL),
(338, '2022-06-29', '205.210.31.147', 1, '1656441261', NULL, NULL),
(339, '2022-06-29', '103.156.88.254', 1, '1656474742', NULL, NULL),
(340, '2022-06-29', '114.124.240.162', 1, '1656516167', NULL, NULL),
(341, '2022-06-30', '167.94.138.61', 2, '1656537656', NULL, '2022-06-29 21:20:56'),
(342, '2022-06-30', '103.156.88.254', 10, '1656574825', NULL, '2022-06-30 07:40:25'),
(343, '2022-06-30', '103.105.33.72', 4, '1656566924', NULL, '2022-06-30 05:28:44'),
(344, '2022-06-30', '216.244.66.229', 1, '1656573702', NULL, NULL),
(345, '2022-06-30', '115.178.215.208', 1, '1656574636', NULL, NULL),
(346, '2022-06-30', '103.105.33.123', 5, '1656574874', NULL, '2022-06-30 07:41:14'),
(347, '2022-06-30', '114.124.239.159', 1, '1656598580', NULL, NULL),
(348, '2022-07-01', '127.0.0.1', 50, '1656661519', NULL, '2022-07-01 07:45:19'),
(349, '2022-07-04', '127.0.0.1', 6, '1656923816', NULL, '2022-07-04 08:36:56'),
(350, '2022-07-11', '127.0.0.1', 94, '1657526298', NULL, '2022-07-11 07:58:18'),
(351, '2022-07-12', '127.0.0.1', 56, '1657609224', NULL, '2022-07-12 07:00:24'),
(352, '2022-07-13', '127.0.0.1', 1, '1657729776', NULL, NULL),
(353, '2022-07-14', '127.0.0.1', 36, '1657737763', NULL, '2022-07-13 18:42:43'),
(354, '2022-07-27', '127.0.0.1', 10, '1658930372', NULL, '2022-07-27 13:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_kecamatan` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`id`, `id_kecamatan`, `name`, `phone`, `fax`, `email`, `logo`, `favicon`, `description`, `address`, `tagline`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dinas Ketahan Pangan Kabupaten Subang', '(0260) 4113251 / 421910', 'ok', 'disketpan@subang.go.id', 'qQdEAcjOmoMXxqyFFciE7ndu3jy2KPc0KLSUPzIG.png', 'lO9LWqyqeX1uKvV3vmP1dg4XQAFVAmwkAmgnNYm4.png', 'Dinas Ketahanan Pangan Kabupaten Subang', 'Jalan Palabuan No 11 Sukamelang Subang', '#SubagJawara#KonsumsiPanganLokal#BeragamBergiziSeimbangAman(B2SA)#FoodEstate#PemanfaatanPekaranganPanganLestari(P2L)', 'Admin Website', '2022-01-20 11:01:27', '2022-03-28 02:06:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_publik`
--
ALTER TABLE `dashboard_publik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desas`
--
ALTER TABLE `desas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fotos_album_id_foreign` (`album_id`);

--
-- Indexes for table `inboxes`
--
ALTER TABLE `inboxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_graphics`
--
ALTER TABLE `info_graphics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konsumsi`
--
ALTER TABLE `konsumsi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pangan_id` (`pangan_id`);

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
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pangan`
--
ALTER TABLE `pangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pbb_pokok`
--
ALTER TABLE `pbb_pokok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelayanan`
--
ALTER TABLE `pelayanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_nip_unique` (`nip`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_publik`
--
ALTER TABLE `dashboard_publik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `desas`
--
ALTER TABLE `desas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inboxes`
--
ALTER TABLE `inboxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `info_graphics`
--
ALTER TABLE `info_graphics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `konsumsi`
--
ALTER TABLE `konsumsi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pangan`
--
ALTER TABLE `pangan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pbb_pokok`
--
ALTER TABLE `pbb_pokok`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelayanan`
--
ALTER TABLE `pelayanan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `konsumsi`
--
ALTER TABLE `konsumsi`
  ADD CONSTRAINT `FK__pangan` FOREIGN KEY (`pangan_id`) REFERENCES `pangan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
