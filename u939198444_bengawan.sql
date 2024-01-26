-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 26 Jan 2024 pada 08.23
-- Versi server: 10.6.14-MariaDB-cll-lve
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u939198444_bengawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahans`
--

CREATE TABLE `bahans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_bahan` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahan_produks`
--

CREATE TABLE `bahan_produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `bahan_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pesanans`
--

CREATE TABLE `detail_pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pesanan_id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `kode_pesanan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_pesanans`
--

INSERT INTO `detail_pesanans` (`id`, `pesanan_id`, `produk_id`, `jumlah`, `total_harga`, `kode_pesanan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 4500000, 'pesanan-2-953', '2023-04-17 08:08:32', '2023-04-17 08:08:32'),
(2, 1, 2, 1, 4000000, 'pesanan-2-953', '2023-04-17 08:08:32', '2023-04-17 08:08:32'),
(3, 2, 1, 1, 4500000, 'pesanan-2-296', '2023-04-23 11:58:17', '2023-04-23 11:58:17'),
(9, 8, 2, 1, 4000000, 'pesanan-2-83', '2023-04-23 17:09:34', '2023-04-23 17:09:34'),
(10, 9, 1, 1, 4500000, 'pesanan-2-581', '2023-05-13 19:03:46', '2023-05-13 19:03:46'),
(11, 10, 2, 1, 4000000, 'pesanan-2-640', '2023-05-16 11:10:27', '2023-05-16 11:10:27'),
(12, 11, 2, 1, 4000000, 'pesanan-2-831', '2023-06-05 14:23:42', '2023-06-05 14:23:42'),
(13, 12, 1, 1, 4500000, 'pesanan-2-134', '2023-06-05 14:26:37', '2023-06-05 14:26:37'),
(14, 13, 1, 1, 4500000, 'pesanan-2-472', '2023-06-26 11:37:53', '2023-06-26 11:37:53'),
(15, 14, 1, 2, 9000000, 'pesanan-2-253', '2023-06-27 18:38:23', '2023-06-27 18:38:23'),
(16, 15, 1, 1, 4500000, 'pesanan-2-685', '2023-06-27 19:06:41', '2023-06-27 19:06:41'),
(17, 16, 2, 1, 4000000, 'pesanan-2-677', '2023-07-03 10:26:42', '2023-07-03 10:26:42'),
(18, 17, 2, 1, 4000000, 'pesanan-2-968', '2023-07-03 10:47:48', '2023-07-03 10:47:48'),
(19, 18, 1, 1, 4500000, 'pesanan-2-804', '2023-07-29 12:55:29', '2023-07-29 12:55:29'),
(20, 19, 3, 1, 75000, 'pesanan-2-10', '2023-10-03 14:08:13', '2023-10-03 14:08:13'),
(21, 20, 1, 3, 13500000, 'pesanan-2-148', '2024-01-26 13:34:42', '2024-01-26 13:34:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `jenisbayars`
--

CREATE TABLE `jenisbayars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jenisbayars`
--

INSERT INTO `jenisbayars` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Bayar Ditempat', NULL, NULL),
(2, 'Transfer', NULL, NULL),
(3, 'belum', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar_kat` varchar(255) NOT NULL,
  `nama_kat` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `gambar_kat`, `nama_kat`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'kat/1682336626-545208.jpg', 'Komputer Pc', 'komputer-pc', '2023-04-15 07:08:39', '2023-04-24 11:43:46'),
(2, 'kat/1682333005-825784.png', 'Buku', 'buku', '2023-04-24 10:43:25', '2023-04-24 10:43:25'),
(3, 'kat/1682335146-732108.jpg', 'ATK', 'atk', '2023-04-24 11:14:42', '2023-04-24 11:19:06'),
(4, 'kat/1682336578-677651.png', 'Laptop', 'laptop', '2023-04-24 11:42:58', '2023-04-24 11:42:58'),
(5, 'kat/1682336663-203251.png', 'Aksesoris', 'aksesoris', '2023-04-24 11:44:23', '2023-04-24 11:44:23'),
(6, 'kat/1682338168-613274.png', 'Printer', 'printer', '2023-04-24 12:09:28', '2023-04-24 12:09:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produks`
--

CREATE TABLE `kategori_produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_produks`
--

INSERT INTO `kategori_produks` (`id`, `produk_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 2, '2023-04-25 00:31:58', '2023-04-25 00:31:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjangs`
--

CREATE TABLE `keranjangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_16_133409_create_pelanggans_table', 1),
(6, '2023_01_16_155504_create_bahans_table', 1),
(7, '2023_01_16_155755_create_produks_table', 1),
(8, '2023_01_17_043958_create_bahan_produks_table', 1),
(9, '2023_01_17_125237_create_stoks_table', 1),
(10, '2023_01_17_133527_create_produksis_table', 1),
(11, '2023_01_18_113531_create_keranjangs_table', 1),
(12, '2023_01_18_124832_add_user_id_to_pelanggans_table', 1),
(13, '2023_01_19_034816_create_pesanans_table', 1),
(14, '2023_01_19_035410_create_detail_pesanans_table', 1),
(15, '2023_04_15_142704_create_kategoris_table', 2),
(16, '2023_04_15_164558_create_kategori_produks_table', 3),
(17, '2023_04_16_200235_create_pembelians_table', 4),
(18, '2023_04_16_202159_add_tanggal_beli_to_pembelians_table', 5),
(19, '2023_04_17_164414_create_jenisbayars_table', 6),
(20, '2023_04_17_163859_create_pembayarans_table', 7),
(22, '2023_04_18_092041_add_pesanan_id_to_pembayarans_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `nama_pelanggan`, `alamat`, `no_telp`, `email`, `gambar`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Pelanggan', 'JL. Garuda', '345345345', 'pelanggan1@gmail.com', 'images/1681566255.jpg', 'aktif', '2023-04-15 05:44:15', '2023-04-15 06:22:03', 2),
(2, 'askar', 'merpati', '081234143233', 'askar@gmail.com', 'images/16827950756_user_image.png', 'aktif', '2023-04-30 03:04:35', '2023-04-30 03:04:35', 6),
(3, 'made', 'Desa Rahanggada', '082143453667', 'made@gmail.com', 'images/16827953927_user_image.png', 'aktif', '2023-04-30 03:09:52', '2023-04-30 03:09:52', 7),
(4, 'made1', 'jalan garuda', '082143453665', 'made1@gmail.com', 'images/16827959108_user_image.png', 'aktif', '2023-04-30 03:18:30', '2023-04-30 03:18:30', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pemilik_rekening` varchar(255) DEFAULT NULL,
  `nama_bank` varchar(255) DEFAULT NULL,
  `nominal` varchar(255) DEFAULT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `status` enum('diproses','diterima','ditolak') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jenisbayar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pesanan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `kode_pesanan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `pemilik_rekening`, `nama_bank`, `nominal`, `bukti_pembayaran`, `status`, `created_at`, `updated_at`, `jenisbayar_id`, `pesanan_id`, `kode_pesanan`) VALUES
(1, 'Ardi', 'BRI', '4500000', 'assets1/img/cod.png', 'diterima', '2023-04-18 20:10:32', '2023-04-25 06:59:41', 1, NULL, 'pesanan-2-953'),
(2, 'wawan', 'bri', '4500000', 'images/168226918129563.png', 'diterima', NULL, '2023-06-27 18:33:36', 2, NULL, 'pesanan-2-296'),
(8, NULL, NULL, NULL, NULL, 'diproses', '2023-04-23 17:09:34', '2023-04-23 17:09:34', 3, NULL, 'pesanan-2-83'),
(9, NULL, NULL, NULL, 'assets1/img/cod.png', 'diterima', '2023-05-13 19:03:46', '2023-05-13 19:05:17', 1, NULL, 'pesanan-2-581'),
(10, NULL, NULL, NULL, 'assets1/img/cod.png', 'diterima', '2023-05-16 11:10:27', '2023-06-19 12:03:41', 1, NULL, 'pesanan-2-640'),
(11, NULL, NULL, NULL, 'assets1/img/cod.png', 'diproses', '2023-06-05 14:23:42', '2023-06-05 14:24:07', 1, NULL, 'pesanan-2-831'),
(12, NULL, NULL, NULL, 'assets1/img/cod.png', 'diproses', '2023-06-05 14:26:37', '2023-06-26 11:59:19', 1, NULL, 'pesanan-2-134'),
(13, NULL, NULL, NULL, 'assets1/img/cod.png', 'diterima', '2023-06-26 11:37:53', '2023-06-26 11:38:51', 1, NULL, 'pesanan-2-472'),
(14, NULL, NULL, NULL, 'assets1/img/cod.png', 'diterima', '2023-06-27 18:38:23', '2023-06-27 18:44:01', 1, NULL, 'pesanan-2-253'),
(15, NULL, NULL, NULL, 'assets1/img/cod.png', 'ditolak', '2023-06-27 19:06:41', '2023-06-27 19:13:25', 1, NULL, 'pesanan-2-685'),
(16, NULL, NULL, NULL, 'assets1/img/cod.png', 'diterima', '2023-07-03 10:26:42', '2023-07-03 10:28:42', 1, NULL, 'pesanan-2-677'),
(17, NULL, NULL, NULL, 'assets1/img/cod.png', 'diterima', '2023-07-03 10:47:48', '2023-07-03 10:49:48', 1, NULL, 'pesanan-2-968'),
(18, NULL, NULL, NULL, 'assets1/img/cod.png', 'diterima', '2023-07-29 12:55:29', '2023-07-29 12:57:37', 1, NULL, 'pesanan-2-804'),
(19, NULL, NULL, NULL, 'assets1/img/cod.png', 'diproses', '2023-10-03 14:08:13', '2023-10-03 14:08:57', 1, NULL, 'pesanan-2-10'),
(20, NULL, NULL, NULL, NULL, 'diproses', '2024-01-26 13:34:42', '2024-01-26 13:34:42', 3, NULL, 'pesanan-2-148');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelians`
--

CREATE TABLE `pembelians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_beli` date NOT NULL DEFAULT '2023-04-16',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_beli` bigint(20) NOT NULL,
  `harga_beli_satuan` bigint(20) NOT NULL,
  `total_harga_beli` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembelians`
--

INSERT INTO `pembelians` (`id`, `tanggal_beli`, `user_id`, `produk_id`, `jumlah_beli`, `harga_beli_satuan`, `total_harga_beli`, `created_at`, `updated_at`) VALUES
(1, '2023-04-16', 1, 1, 3, 4000000, 12000000, '2023-04-16 20:19:43', '2023-04-16 20:19:43'),
(2, '2023-04-17', 1, 1, 1, 4000000, 4000000, '2023-04-16 12:54:17', '2023-04-16 12:54:17'),
(3, '2023-04-17', 1, 1, 2, 4100000, 8200000, '2023-04-16 12:57:58', '2023-04-16 12:57:58'),
(4, '2023-05-13', 1, 2, 3, 6000000, 18000000, '2023-05-13 19:08:30', '2023-05-13 19:08:30'),
(5, '2023-06-28', 1, 3, 8, 75000, 600000, '2023-07-03 10:36:50', '2023-07-03 10:36:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_pesanan` varchar(255) NOT NULL,
  `total_harga1` int(11) NOT NULL,
  `status_pesanan` enum('menunggu','diproses','dikirim','selesai','batal') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `kode_pesanan`, `total_harga1`, `status_pesanan`, `created_at`, `updated_at`) VALUES
(1, 2, 'pesanan-2-953', 8500000, 'selesai', '2023-04-17 08:08:32', '2023-04-25 07:42:33'),
(2, 2, 'pesanan-2-296', 4500000, 'selesai', '2023-04-23 11:58:17', '2023-06-27 18:51:56'),
(8, 2, 'pesanan-2-83', 4000000, 'batal', '2023-04-23 17:09:34', '2023-06-19 12:04:39'),
(9, 2, 'pesanan-2-581', 4500000, 'selesai', '2023-05-13 19:03:46', '2023-05-13 19:05:59'),
(10, 2, 'pesanan-2-640', 4000000, 'selesai', '2023-05-16 11:10:27', '2023-06-19 12:04:19'),
(11, 2, 'pesanan-2-831', 4000000, 'selesai', '2023-06-05 14:23:42', '2023-06-19 12:04:28'),
(12, 2, 'pesanan-2-134', 4500000, 'batal', '2023-06-05 14:26:37', '2023-06-27 18:27:41'),
(13, 2, 'pesanan-2-472', 4500000, 'selesai', '2023-06-26 11:37:53', '2023-06-26 11:46:33'),
(14, 2, 'pesanan-2-253', 9000000, 'selesai', '2023-06-27 18:38:23', '2023-06-27 18:44:18'),
(15, 2, 'pesanan-2-685', 4500000, 'batal', '2023-06-27 19:06:41', '2023-06-27 19:13:25'),
(16, 2, 'pesanan-2-677', 4000000, 'selesai', '2023-07-03 10:26:42', '2023-07-03 10:28:56'),
(17, 2, 'pesanan-2-968', 4000000, 'selesai', '2023-07-03 10:47:48', '2023-07-03 10:50:22'),
(18, 2, 'pesanan-2-804', 4500000, 'selesai', '2023-07-29 12:55:29', '2023-07-29 12:57:45'),
(19, 2, 'pesanan-2-10', 75000, 'selesai', '2023-10-03 14:08:13', '2023-10-03 14:09:44'),
(20, 2, 'pesanan-2-148', 13500000, 'menunggu', '2024-01-26 13:34:42', '2024-01-26 13:34:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar1` text NOT NULL,
  `gambar2` text DEFAULT NULL,
  `gambar3` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id`, `nama_produk`, `stok`, `harga`, `deskripsi`, `gambar1`, `gambar2`, `gambar3`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Komputer RAM 4GB SSD 1TB', 12, 4500000, 'RAM 4GB, SSD 1TB, Processor i5.', 'images/1681579219.8637350825181jpg', 'images/1681579219.8637350825181jpg', 'images/1681579219.8637350825181jpg', 'aktif', '2023-04-15 09:20:19', '2023-07-29 12:57:45'),
(2, 'RAM 4GB SSD 1TB', 9, 4000000, 'RAM 4GB, SSD 1TB, Processor i3.', 'images/1681579219.8637350825181jpg', 'images/1681579219.8637350825181jpg', 'images/1681579219.8637350825181jpg', 'aktif', '2023-04-15 09:20:19', '2023-07-03 10:50:22'),
(3, 'Novel Pulang Karya Tere Liye', 7, 75000, 'Di sini, para penjahat dibesarkan sejak buaian. Dilatih lewat kebohongan. Dididik dengan kemunafikan. Diajarkan melalui ketidakpedulian. Di sini, semua bisa diatur sepanjang ada uangnya. Yang bodoh bisa menjadi pintar seketika. Yang tidak layak bisa segera memenuhi syarat. Yang bersalah bisa jadi benar. Yang bengkok bisa diluruskan. Tidak suka lurus? Mari dibengkokkan lagi. Di sini, di Tanah Para Bandit, tidak ada lagi beda antara penjahat bejat dengan tuan nyonya terhormat. Mencuri, merampok hak orang lain, lumrah saja. Ayo, jangan terlalu serius, Kawan. Kita berpesta malam ini. Buku ini adalah buku ke-7 dari serial aksi Tere Liye. Setelah: Negeri Para Bedebah, Negeri Di Ujung Tanduk, Pulang, Pergi, Pulang-Pergi, dan Bedebah Di Ujung Tanduk.', 'images/buku.png', 'images/1682382718.4208535782761jpg', NULL, 'aktif', '2023-04-25 00:31:58', '2023-10-03 14:09:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produksis`
--

CREATE TABLE `produksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah_produksi` int(11) NOT NULL,
  `total_produksi` int(11) NOT NULL,
  `tanggal_produksi` date NOT NULL,
  `tanggal_expired` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stoks`
--

CREATE TABLE `stoks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bahan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `tanggal_expired` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'pelanggan',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2023-04-08 12:08:39', '$2y$10$bCv4lcXbctBAdNB0DL5X8.bFKxkiD38a8VS/KAtcj7iUTN4rhsBeW', 'admin', 'wOC1Py8fMNvXofhoLxVXFORaLZ71ki4GJgF95orvvIXmJ2tNDgWWm3jBnIxq', '2023-04-08 12:08:39', '2023-04-08 12:08:39'),
(2, 'Pelanggan', 'pelanggan@gmail.com', NULL, '$2y$10$GjxjuOFwH/EtGS7fzbtkWev89tnHOKWN4z9DYD2vsVvsl.hEoGVoO', 'pelanggan', NULL, '2023-04-15 05:41:41', '2023-04-15 05:41:41'),
(6, 'askar', 'askar@gmail.com', NULL, '$2y$10$U8xn/mrUFmQPW6bu0HHwJeiLJ8Gr32TV4ybKsOeSLqkFBvmJPib6e', 'pelanggan', NULL, '2023-04-30 03:04:35', '2023-04-30 03:04:35'),
(7, 'made', 'made@gmail.com', NULL, '$2y$10$pH0zskibPw4CYyX/W8qKweAbKxnautTBSaLyGZ8aEmcvt7aG1dby6', 'pelanggan', NULL, '2023-04-30 03:09:52', '2023-04-30 03:09:52'),
(8, 'made1', 'made1@gmail.com', NULL, '$2y$10$y7bBawlIZAM3X9L.nQ5VTeLAUOn7QNIcJk5e9nHZzR8u7SD/4KTD2', 'pelanggan', NULL, '2023-04-30 03:18:30', '2023-04-30 03:18:30'),
(9, 'pimpinan', 'pimpinan@gmail.com', '2023-06-20 01:01:44', '$2y$10$RpcNutOWxfQl/8QgU4aL.uolTlCcjzXTJPxaGcksI/MU80VvjkJ6.', 'pimpinan', 'Fu1FMKlSB5', '2023-06-20 01:01:44', '2023-06-20 01:01:44');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bahans`
--
ALTER TABLE `bahans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bahan_produks`
--
ALTER TABLE `bahan_produks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bahan_produks_produk_id_foreign` (`produk_id`),
  ADD KEY `bahan_produks_bahan_id_foreign` (`bahan_id`);

--
-- Indeks untuk tabel `detail_pesanans`
--
ALTER TABLE `detail_pesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_pesanans_pesanan_id_foreign` (`pesanan_id`),
  ADD KEY `detail_pesanans_produk_id_foreign` (`produk_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jenisbayars`
--
ALTER TABLE `jenisbayars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_produks`
--
ALTER TABLE `kategori_produks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_produks_produk_id_foreign` (`produk_id`),
  ADD KEY `kategori_produks_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `keranjangs`
--
ALTER TABLE `keranjangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelanggans_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayarans_jenisbayar_id_foreign` (`jenisbayar_id`),
  ADD KEY `pembayarans_pesanan_id_foreign` (`pesanan_id`);

--
-- Indeks untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembelians_user_id_foreign` (`user_id`),
  ADD KEY `pembelians_produk_id_foreign` (`produk_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pesanans_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produksis`
--
ALTER TABLE `produksis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stoks`
--
ALTER TABLE `stoks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bahans`
--
ALTER TABLE `bahans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bahan_produks`
--
ALTER TABLE `bahan_produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detail_pesanans`
--
ALTER TABLE `detail_pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenisbayars`
--
ALTER TABLE `jenisbayars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_produks`
--
ALTER TABLE `kategori_produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `keranjangs`
--
ALTER TABLE `keranjangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `produks`
--
ALTER TABLE `produks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `produksis`
--
ALTER TABLE `produksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stoks`
--
ALTER TABLE `stoks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bahan_produks`
--
ALTER TABLE `bahan_produks`
  ADD CONSTRAINT `bahan_produks_bahan_id_foreign` FOREIGN KEY (`bahan_id`) REFERENCES `bahans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bahan_produks_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pesanans`
--
ALTER TABLE `detail_pesanans`
  ADD CONSTRAINT `detail_pesanans_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_pesanans_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kategori_produks`
--
ALTER TABLE `kategori_produks`
  ADD CONSTRAINT `kategori_produks_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kategori_produks_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD CONSTRAINT `pelanggans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD CONSTRAINT `pembayarans_jenisbayar_id_foreign` FOREIGN KEY (`jenisbayar_id`) REFERENCES `jenisbayars` (`id`),
  ADD CONSTRAINT `pembayarans_pesanan_id_foreign` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanans` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembelians`
--
ALTER TABLE `pembelians`
  ADD CONSTRAINT `pembelians_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembelians_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  ADD CONSTRAINT `pesanans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
