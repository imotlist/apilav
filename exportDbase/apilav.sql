-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2019 pada 09.19
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apilav`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Sunt dolorem animi doloribus unde numquam quia.', 'Totam aspernatur qui perspiciatis cupiditate non. Accusamus ad fuga atque quasi cupiditate voluptas eos et. Qui qui in sapiente rerum. Qui dolorum tenetur iste quia repudiandae odit quo.', '2019-01-02 05:18:44', '2019-01-02 05:18:44'),
(3, 'Test Title', 'Test Body', '2019-01-02 05:18:44', '2019-01-02 08:07:15'),
(4, 'Officia qui optio perferendis enim quam.', 'Mollitia dicta sequi facilis dolor sint odio. Dicta et qui ipsum ea. Est suscipit iste porro quas nesciunt consequatur quisquam. Alias rerum corrupti quasi id quia qui iste quae.', '2019-01-02 05:18:44', '2019-01-02 05:18:44'),
(5, 'Quis temporibus aut sit voluptas et.', 'Exercitationem ducimus aut a voluptatum. Omnis tempore et et perferendis debitis tempore. Esse tenetur omnis dolor enim non maiores suscipit.', '2019-01-02 05:18:44', '2019-01-02 05:18:44'),
(6, 'Qui ut rerum quos quo provident.', 'Totam porro occaecati nobis ut id. Molestiae qui ducimus eum repellendus nam voluptas illum. Est eius molestiae dolorem porro dignissimos id unde itaque.', '2019-01-02 05:18:44', '2019-01-02 05:18:44'),
(7, 'Ut maxime ab perferendis inventore.', 'Quos perspiciatis necessitatibus repellat ullam fugit autem. Ut natus nobis sed qui. Facilis nam quos et. Minima minima exercitationem qui similique maiores.', '2019-01-02 05:18:44', '2019-01-02 05:18:44'),
(8, 'Qui tempora totam earum quo qui.', 'Rem dolores rem ut praesentium iure sequi. Corrupti eaque nam maiores sunt. Quo autem numquam et omnis.', '2019-01-02 05:18:44', '2019-01-02 05:18:44'),
(9, 'Iure neque sint ut qui repellat.', 'Adipisci est sunt eveniet ut ipsa magnam nihil. Soluta magni ut aliquid et.', '2019-01-02 05:18:45', '2019-01-02 05:18:45'),
(10, 'Quia officia nihil dolores in aperiam.', 'Maxime accusamus autem eligendi nostrum unde. Temporibus totam ipsum eos quasi qui officiis similique. Doloremque maiores quidem numquam aut voluptatem.', '2019-01-02 05:18:45', '2019-01-02 05:18:45'),
(11, 'Qui est quasi eos sit adipisci.', 'Omnis aperiam sint possimus et commodi ullam quidem. Natus voluptatem voluptate ut nulla et eligendi. In qui quisquam qui debitis ut est. Quas minus hic voluptatem perferendis et quia ut.', '2019-01-02 05:18:45', '2019-01-02 05:18:45'),
(12, 'Maiores impedit consequuntur qui repellat cumque.', 'Voluptatibus reiciendis omnis quisquam omnis labore qui. Harum omnis et inventore est numquam. Officiis nesciunt non maxime omnis omnis ut.', '2019-01-02 05:18:45', '2019-01-02 05:18:45'),
(13, 'Officia magni molestiae ducimus.', 'Dolore fugiat unde temporibus fugiat iure quis. Dolorem quo temporibus doloremque rerum. Voluptas aut ut in rerum id sint. Ipsum aut enim est est.', '2019-01-02 05:18:45', '2019-01-02 05:18:45'),
(14, 'Nobis ut consequatur rerum molestiae officiis.', 'Asperiores quod accusantium deserunt consectetur doloremque ut quia. Eum quisquam blanditiis expedita ipsum ut deleniti quisquam. Ut doloremque labore nostrum nulla rem aut.', '2019-01-02 05:18:45', '2019-01-02 05:18:45'),
(15, 'Id voluptatibus explicabo voluptas.', 'Dolor ipsa dolor velit voluptatem et eveniet temporibus. Voluptatibus placeat ratione commodi repellendus hic. Sit id impedit possimus enim.', '2019-01-02 05:18:45', '2019-01-02 05:18:45'),
(16, 'Sit ab architecto doloribus necessitatibus.', 'Aut consectetur ea nemo rem vel. Harum asperiores aspernatur quis dolorem voluptatum et necessitatibus. Totam modi tenetur earum exercitationem accusamus ea error.', '2019-01-02 05:18:45', '2019-01-02 05:18:45'),
(17, 'Distinctio aut quae dolorem amet dolore.', 'Sit natus hic iusto ipsam. Adipisci omnis magni id fugiat odio reiciendis. Sit hic nihil sed eius illum ea. Eveniet expedita ea eum dolorem quo.', '2019-01-02 05:18:45', '2019-01-02 05:18:45'),
(18, 'Et occaecati repudiandae temporibus.', 'Et quasi ea ex repellat. Voluptatem libero tenetur perspiciatis esse molestiae voluptatem. Natus autem consequatur deleniti unde.', '2019-01-02 05:18:45', '2019-01-02 05:18:45'),
(19, 'Non dicta qui voluptatem ratione.', 'Dolores aperiam numquam velit. Facere similique tempora magnam ut ut aut voluptas enim. Ut dolore asperiores ut saepe.', '2019-01-02 05:19:27', '2019-01-02 05:19:27'),
(20, 'Consequatur delectus quia voluptas quis.', 'Facilis dicta sit harum ullam eos quasi. Sed expedita magnam sed ipsam. Vero repudiandae eaque rem. Est repellat quia odio ut et delectus et.', '2019-01-02 05:19:27', '2019-01-02 05:19:27'),
(21, 'Ut in blanditiis facere nesciunt provident et.', 'Non vel laudantium et. Expedita natus optio et qui. Atque animi recusandae ut autem. Suscipit iure quis aut eum quia voluptas sunt.', '2019-01-02 05:19:27', '2019-01-02 05:19:27'),
(22, 'Ipsam quia laboriosam quos.', 'Ea magnam sit et magnam molestias doloremque vel. Laboriosam tempore fugit est amet. Possimus blanditiis voluptatibus repellat.', '2019-01-02 05:19:27', '2019-01-02 05:19:27'),
(23, 'Labore id quam quis assumenda laborum atque.', 'Saepe facilis molestiae hic vero beatae. Alias numquam veritatis rerum vitae commodi. Qui nisi eius aspernatur natus voluptatem possimus in.', '2019-01-02 05:19:27', '2019-01-02 05:19:27'),
(24, 'Sunt reprehenderit placeat reiciendis eum.', 'Iure earum similique nam aut velit animi recusandae. Illum dignissimos in sint exercitationem doloremque. Laborum omnis esse quaerat ut sit.', '2019-01-02 05:19:27', '2019-01-02 05:19:27'),
(25, 'Voluptate reprehenderit ratione iure hic.', 'Nihil libero ipsa iure dolore iusto ex dolore. Saepe modi illum aut sit. Animi at nobis natus hic eaque. Accusamus quos consequuntur ut et dolor et aut. Excepturi iste quia sunt nulla.', '2019-01-02 05:19:27', '2019-01-02 05:19:27'),
(26, 'Iusto sequi illo deleniti.', 'Iure ut dolorem quis cupiditate. Fuga dolores unde dicta excepturi quos ut. In assumenda aut quia quisquam.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(27, 'Cum ipsa eius officia voluptas distinctio eos.', 'Minima voluptas labore enim eum non. Facere excepturi maiores qui. Similique eum dolores dolor corrupti est non.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(28, 'Et dolor quasi temporibus autem beatae.', 'Quia qui facere voluptatum est porro fuga fugit. Non fugit iusto quo aliquid maiores. Dolores quas aut deserunt est veniam eius quod.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(29, 'Nulla et quia doloribus aut soluta ut.', 'Vel eos nemo laboriosam quaerat. Sunt enim quo quam ut. Ipsum incidunt quaerat possimus officiis ut doloribus voluptate.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(30, 'Facere eos et architecto consequatur.', 'Ipsam cupiditate consectetur explicabo ea rerum nulla. Est in nisi ducimus et. Amet asperiores doloribus et vel aut. Exercitationem rerum recusandae nesciunt.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(31, 'Perferendis ut voluptatem molestiae et.', 'Velit ea rerum vero ut quo voluptate ea. Vel laborum et odit pariatur dignissimos aperiam aut sed. Voluptatem consequuntur et odit veniam.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(32, 'Quaerat qui et et aut. Voluptates ipsam sint sit.', 'Quia dolorem eveniet dolorem ex. Maiores perferendis praesentium aliquam quas a reprehenderit iusto ut. Error magnam et sunt est eum.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(33, 'Harum sed assumenda voluptatum mollitia.', 'Et rerum ab sunt ut. At ea voluptatibus earum libero dolorum. Consequatur et tempora temporibus ducimus. Sapiente ut non rerum reprehenderit ut.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(34, 'Illum quae repudiandae soluta est aut amet.', 'Ex et quia et et ipsam. Atque qui voluptas incidunt officia. Illo aspernatur tempore molestias omnis minus voluptatem. Itaque porro quia quaerat facere non officiis ea.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(35, 'Voluptatum omnis magni maiores ut in omnis.', 'Qui quia unde qui adipisci quidem. Veritatis velit velit aut autem quas. Et dolores sed ea nesciunt id voluptatibus.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(36, 'Cupiditate esse animi quo placeat.', 'Ut aperiam eum ut rem rem quisquam iusto. Et a eum cupiditate delectus facere voluptatem. Nisi impedit et error et.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(37, 'Explicabo voluptate blanditiis nostrum omnis hic.', 'Qui rem unde aut rem et. Sed ea cumque non voluptatem aperiam praesentium dolor. Aut temporibus commodi ab omnis saepe.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(38, 'Reiciendis ipsa minima suscipit enim debitis.', 'Reprehenderit non itaque eligendi mollitia ea ab quos. Eligendi doloremque excepturi doloribus reprehenderit. Soluta at cum vel. Ut voluptas id voluptatem harum magnam.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(39, 'Voluptate magni cum vel iure corporis saepe.', 'Odit ut est repellendus id id est ut. Amet laborum accusamus voluptatem et ipsum et. Sint suscipit aspernatur ratione dolorum nam autem nihil.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(40, 'Ut voluptas ut neque vel.', 'Error quo ducimus modi ut. Illo quis molestiae dolorum quis eaque. At numquam eius et quis.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(41, 'Ex est occaecati ut itaque.', 'Culpa omnis reiciendis repellendus aut sed sed. Eligendi qui tempore repellendus iusto.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(42, 'Assumenda eos sint rerum.', 'Earum modi libero cupiditate cupiditate ut occaecati vero. Aut qui nihil sit aut non quas quis. Occaecati eum dignissimos qui accusantium vel id.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(43, 'Occaecati architecto molestias maxime ipsum.', 'Omnis ipsam perferendis eius occaecati et perspiciatis est. Dolorum quas odit ab ipsam earum. Perferendis numquam culpa quia at. Odit maxime sunt recusandae molestiae quod.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(44, 'Sit molestiae at ad totam ducimus.', 'Vel aut quasi sapiente et vel. Quisquam nihil et tempore et omnis assumenda. Natus aliquid quaerat sit eum labore pariatur. Ratione et ipsum dignissimos commodi.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(45, 'Sit quae placeat eligendi.', 'Tempore sint cum laborum quis ea quas eum. Blanditiis minima commodi consequatur ipsum vel. Animi vel exercitationem qui laudantium voluptatem.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(46, 'Velit dolorem autem magnam similique atque.', 'Corrupti dicta maxime magnam voluptas minus non. Sequi quisquam magni consequatur quo. Tenetur et eos voluptas harum beatae rerum maxime voluptatum. Et voluptatibus nobis deserunt ea et.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(47, 'Eos voluptatibus dolorem officia placeat.', 'Nobis ut et eveniet. Aut vitae voluptatem sit et harum.', '2019-01-02 05:19:28', '2019-01-02 05:19:28'),
(48, 'Dolor qui excepturi dolore et.', 'Laboriosam quia asperiores a ducimus ipsa quidem quia. Maxime doloremque aliquam enim consequatur et cum quisquam molestias. Ab itaque sed consequuntur consequatur.', '2019-01-02 05:19:29', '2019-01-02 05:19:29'),
(49, 'Test Title', 'Test Body', '2019-01-02 06:30:26', '2019-01-02 06:30:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_order`
--

CREATE TABLE `d_order` (
  `d_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `d_jml` int(11) NOT NULL,
  `d_subtotal` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(100) NOT NULL,
  `create_at` int(11) NOT NULL,
  `update_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `klien`
--

CREATE TABLE `klien` (
  `k_id` int(11) NOT NULL,
  `k_username` varchar(100) NOT NULL,
  `k_fullname` text NOT NULL,
  `k_email` varchar(100) NOT NULL,
  `k_alamat` text NOT NULL,
  `k_profile` varchar(200) NOT NULL,
  `k_password` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 2),
(3, '2018_12_29_002755_mitra_migration', 3),
(4, '2019_01_02_115309_create_articles_table', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mitra`
--

CREATE TABLE `mitra` (
  `m_id` int(10) NOT NULL,
  `m_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_pemilik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_status` int(11) NOT NULL,
  `m_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mitra`
--

INSERT INTO `mitra` (`m_id`, `m_nama`, `m_email`, `m_alamat`, `m_telp`, `m_pemilik`, `m_status`, `m_password`, `created_at`, `updated_at`) VALUES
(1, 'Prima', 'prima@gmail.com', 'Malang', '08xx', 'Cong Hiu Ji', 1, 'prima123', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `produk_nama` varchar(200) NOT NULL,
  `produk_desc` text NOT NULL,
  `produk_harga` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_order`
--

CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL,
  `k_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `order_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@admin.com', NULL, '$2y$10$kOakVGK4JIOVzSP7vfD0nuKpl2u/uoATPUJaTq74DURIkU5oC6xGC', NULL, '2018-12-28 09:38:23', '2018-12-28 09:38:23');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `d_order`
--
ALTER TABLE `d_order`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `orderRel` (`order_id`);

--
-- Indeks untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `klien`
--
ALTER TABLE `klien`
  ADD PRIMARY KEY (`k_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`m_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`),
  ADD KEY `kategoriRel` (`kategori_id`);

--
-- Indeks untuk tabel `t_order`
--
ALTER TABLE `t_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `d_order`
--
ALTER TABLE `d_order`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `klien`
--
ALTER TABLE `klien`
  MODIFY `k_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mitra`
--
ALTER TABLE `mitra`
  MODIFY `m_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `t_order`
--
ALTER TABLE `t_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `d_order`
--
ALTER TABLE `d_order`
  ADD CONSTRAINT `orderRel` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`);

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `kategoriRel` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_produk` (`kategori_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
