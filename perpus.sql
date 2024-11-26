-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2024 pada 01.39
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `BukuID` bigint(20) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` varchar(255) NOT NULL,
  `NamaKategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`BukuID`, `id_kategori`, `judul`, `penulis`, `penerbit`, `tahun_terbit`, `NamaKategori`) VALUES
(7, NULL, 'Said di eue kuda', 'Alamak', 'syahid.co', '2024', 'Nyata'),
(8, NULL, 'Syahid  Raja Kocok', 'syahid', 'syahid.co', '2025', 'Nyata'),
(9, NULL, 'Syahid Hilang Burung', 'Rusdi', 'LostBall Inc.', '2024', 'Nyata'),
(10, NULL, 'said suka anak anak', 'Mursyid', 'LostBall Inc.', '2024', 'Nyata'),
(11, NULL, 'Said Dating Sim (Include Gay S*x)', 'Rusdi', 'Jomok PLTD', '2025', 'Nyata');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin1@gmail.com|127.0.0.1', 'i:1;', 1732579531),
('admin1@gmail.com|127.0.0.1:timer', 'i:1732579531;', 1732579531),
('alpan@gmail.com|127.0.0.1', 'i:1;', 1727926536),
('alpan@gmail.com|127.0.0.1:timer', 'i:1727926536;', 1727926536),
('evan01@gmail.com|127.0.0.1', 'i:1;', 1727926583),
('evan01@gmail.com|127.0.0.1:timer', 'i:1727926583;', 1727926583),
('kyukuru@gmail.com|127.0.0.1', 'i:1;', 1727925297),
('kyukuru@gmail.com|127.0.0.1:timer', 'i:1727925297;', 1727925297),
('kyun@gmail.com|127.0.0.1', 'i:1;', 1727925312),
('kyun@gmail.com|127.0.0.1:timer', 'i:1727925312;', 1727925312),
('kyunkuru@gmail.com|127.0.0.1', 'i:1;', 1732579525),
('kyunkuru@gmail.com|127.0.0.1:timer', 'i:1732579525;', 1732579525),
('user1@gmail.com|127.0.0.1', 'i:1;', 1727918753),
('user1@gmail.com|127.0.0.1:timer', 'i:1727918753;', 1727918753),
('user2@gmail.com|127.0.0.1', 'i:2;', 1727923176),
('user2@gmail.com|127.0.0.1:timer', 'i:1727923176;', 1727923176),
('user3@gmail.com|127.0.0.1', 'i:1;', 1727923428),
('user3@gmail.com|127.0.0.1:timer', 'i:1727923428;', 1727923428);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NamaKategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `NamaKategori`, `created_at`, `updated_at`) VALUES
(1, 'FIKSI', '2024-11-12 11:07:17', '2024-11-12 11:07:17'),
(2, 'Nyata', NULL, NULL),
(222, 'Politik', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksipibadi`
--

CREATE TABLE `koleksipibadi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_buku` int(10) UNSIGNED NOT NULL,
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_19_001155_create_role', 2),
(5, '2024_09_19_001512_update_user', 2),
(6, '2024_09_19_004217_update_roles', 3),
(7, '2024_09_19_022840_role', 3),
(8, '2024_10_01_021331_updatetable_role', 4),
(11, '2024_10_29_055901_create_buku', 5),
(12, '2024_10_29_055908_create_kategori', 5),
(15, '2024_10_29_055922_create_ulasan', 6),
(16, '2024_10_29_055943_create_peminjaman', 7),
(19, '2024_10_29_060005_create_kategoribuku_relasi', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `UserID` bigint(20) UNSIGNED NOT NULL,
  `BukuID` bigint(20) UNSIGNED NOT NULL,
  `TanggalPeminjaman` varchar(255) NOT NULL,
  `TanggalPengembalian` varchar(255) NOT NULL,
  `StatusPeminjaman` enum('dipinjam','dikembalikan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('admin','petugas','user') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `role`, `created_at`, `updated_at`) VALUES
(2, 5, 'petugas', '2024-10-02 17:25:57', '2024-10-02 17:25:57'),
(3, 6, 'user', '2024-10-02 17:26:55', '2024-10-02 17:26:55'),
(6, 9, 'admin', '2024-10-02 19:37:02', '2024-10-02 19:37:02'),
(10, 13, 'petugas', '2024-10-15 17:18:23', '2024-10-15 17:18:23'),
(11, 14, 'user', '2024-10-15 17:18:53', '2024-10-15 17:18:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FTlNPF94fXsd9eSrDySJ18nGh8VLuHYaIcbzIOGL', 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUnhadzJZVDBvb3AySVhnR3NFVUMxaklVQkhLZkZocUR0U2dEZmpPRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9idWt1Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTY7fQ==', 1732580830);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasan`
--

CREATE TABLE `ulasan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `ulasan` text NOT NULL,
  `rating` int(11) NOT NULL,
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
  `username` varchar(255) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `hp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `alamat`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `nama_lengkap`, `hp`) VALUES
(5, 'alpan', 'wwwwww', 'awwawaaw', 'imyu@gmail.com', NULL, '$2y$12$WBbuerXmWZUxE1w8mxr1Ku.KwuHgBe44UwXue8S1zlXmqNJ4S4uE6', NULL, '2024-10-02 17:25:57', '2024-11-25 16:25:02', 'im yu', '121212112'),
(6, 'kyukuru', '', NULL, 'kyukuru01@gmail.com', NULL, '$2y$12$on2xIgPUehjAbpBAr/n1P.dktRBfCBm7aaCvsg3GyZg3R3MBr2b4m', NULL, '2024-10-02 17:26:55', '2024-10-02 17:26:55', 'kyukuru', '081122334455'),
(9, 'evan01', '', NULL, 'evan@gmail.com', NULL, '$2y$12$2OSQ9eL.PfhddKcGOxlV6uPEL9vua1OkmVm/Ib5/WfDOV67ahsExm', NULL, '2024-10-02 19:37:02', '2024-10-02 19:37:02', 'evan', '12345678'),
(13, 'aziz01', '', NULL, 'aziz@gmail.com', NULL, '$2y$12$SjlmwVZqFH/OM.4H2tEN3uInf36VhymmGx3Flh.Alu3FyjPUI/l6O', NULL, '2024-10-15 17:18:23', '2024-10-15 17:18:23', 'aziz sapu', '12345678'),
(14, 'fahri', '', NULL, 'fahri@gmail.com', NULL, '$2y$12$p6FD0E8bC/VBKhw7yAMyAeG./cqFPYN3S3vpG1vlqC8VtkCntMT72', NULL, '2024-10-15 17:18:53', '2024-10-15 18:06:16', 'fahri', '123456789'),
(15, 'Test User', '', NULL, 'test@example.com', '2024-10-30 18:18:25', '$2y$12$QE2MYsZ9iXnh00.NtEmRZeh.gw9MrnO5o0wR0NFd.y7fD8E8VTLYa', 'cUizxhc6Yr', '2024-10-30 18:18:25', '2024-10-30 18:18:25', NULL, NULL),
(16, 'wafi', '', NULL, 'user3@gmail.com', NULL, '$2y$12$7BCAcbLA.b5qQ8wOK1Aar.SK6wg2BwhVDeMO0z/SY9AenX.WlKDtq', NULL, '2024-11-25 16:08:03', '2024-11-25 16:08:03', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`BukuID`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `koleksipibadi`
--
ALTER TABLE `koleksipibadi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BukuID` (`BukuID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
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
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `BukuID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT untuk tabel `koleksipibadi`
--
ALTER TABLE `koleksipibadi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`) ON DELETE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
