-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Jun 2020 pada 03.13
-- Versi server: 10.3.23-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jetpedia_panelsmm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktifitas`
--

CREATE TABLE `aktifitas` (
  `id` int(4) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `aksi` enum('Masuk','Keluar') NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bca`
--

CREATE TABLE `bca` (
  `id` varchar(10) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bca`
--

INSERT INTO `bca` (`id`, `user_id`, `password`) VALUES
('S1', 'DAHRIANSHOR', '230695');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `icon` enum('PESANAN','LAYANAN','DEPOSIT','PENGGUNA','PROMO') COLLATE utf8_swedish_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `tipe` enum('INFO','PERINGATAN','PENTING') COLLATE utf8_swedish_ci NOT NULL,
  `konten` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `date`, `time`, `icon`, `title`, `tipe`, `konten`) VALUES
(1, '2020-04-12', '10:57:15', 'LAYANAN', 'penambahan layanan', 'INFO', 'Instagram Followers PROMO 6 [ DB Jetpedia ] [ TERMURAH ] LQ \r\nPesanan masuk tapi status masih pending( perubahan status delay lama)\r\njangan banyak kompline layanan promo ya bang.'),
(3, '2020-05-18', '16:32:37', 'PROMO', 'PROMO', 'INFO', 'Instagram Followers Indonesia Server 16 max 5000 ⚡️\r\nInstagram Followers PROMO 5 [ DB JETPEDIA ] [ TERMURAH ] LQ\r\nInstagram Followers PROMO 6 [ DB JETPEDIA ] [ TERMURAH ] LQ\r\nInstagram Followers PROMO 8 [ DB JETPEDIA ] [ TERMURAH ] ON OFF'),
(4, '2020-05-18', '16:36:37', 'PESANAN', 'Info Layanan sosmed', 'PERINGATAN', 'LAYANAN LANCAR YANG SUDAH DIGUNAKAN HARI INI.\r\nBUKAN MAKSUDNYA LAYANAN YANG LAIN GK LANCAR.\r\nKami Tidak Menjamin Lancar terus Karna bisa saja Tiba Tiba Server Overload Mungkin akan terjadi delay.'),
(5, '2020-05-21', '23:54:55', 'LAYANAN', 'Penurunan harga', 'INFO', 'Penurunan Harga\r\n1024 Instagram Followers Indonesia S21 [max500] on off.'),
(6, '2020-05-21', '23:56:33', 'LAYANAN', 'nonaktifkan Layanan', 'INFO', 'nonaktifkan Layanan\r\n1548 Instagram Likes MP 14 [ NO DROP ] Cheap fast\r\n1543 Instagram Likes MP 12 [ Max 5k ] Cheap'),
(7, '2020-05-21', '23:57:19', 'LAYANAN', 'Aktif lagi', 'PENTING', 'Aktif lagi\r\n1530 Youtube Views [ DAPAT Jam Tayang 500 jam ] [ Durasi Video 2 jam+ ]'),
(8, '2020-05-31', '16:07:14', 'LAYANAN', 'Nonaktifkan Layanan', 'INFO', 'kami Nonaktifkan Layanan sebagian untuk sementara sampai batas waktu tidak diketahui.\r\n\r\n1303 Tokopedia Feeds Comment\r\n1290 Shopee Indonesia Feeds Comments\r\n1264 Tokopedia wishlist/ Favorite [FEMALE] [TERMURAH] [5K]\r\n1038 Shopee Feeds Like Indonesia [1K][FEMALE]\r\n1338 Shopee Followers Server 2 NEW [2500] NODROP Recomended\r\n1337 Shopee Followers Server NEW [10K] NODROP\r\n1339 Shopee Likes Produk Server 2 NEW [1000] NODROP Recomended'),
(9, '2020-06-03', '00:37:28', 'LAYANAN', 'Update Layanan IG', 'INFO', 'id 29 instagram view Auto 1 [INSTANT]\r\nmin 50 menjadi 100\r\nid 32 instagram view Versi 1 [ Unlimited ] [ Superfast ]\r\nmin 100 menjadi 200\r\nid 1425 instagram view MP 1 [ 5 Million / Hour ] ( Recommended )\r\nmin 500 menjadi 100\r\nid 1484 instagram view MP 2 + Impressions [RANDOM]\r\nmin 500 menjadi 100'),
(10, '2020-06-03', '00:45:23', 'PESANAN', 'Maaf telat', 'PENTING', 'untuk pesanan produk layanan sosmed\r\nyg pending dari tgl 29-05-2020 sampai hari ini.\r\n\r\nAkan kami proses tgl 3\r\njadi kemungkinan kelar sekitar tgl 5 atau 6 an'),
(11, '2020-06-03', '10:27:51', 'LAYANAN', 'Penambahan Layanan', 'INFO', 'Layanan pulsa by.U sudah ada, komplit gan!!!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cek_akun`
--

CREATE TABLE `cek_akun` (
  `id` int(10) NOT NULL,
  `saldo` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `tipe` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `cek_akun`
--

INSERT INTO `cek_akun` (`id`, `saldo`, `date`, `time`, `tipe`, `provider`) VALUES
(1961, 189074, '2020-06-02', '23:41:01', 'TOP UP', 'DG-PULSA'),
(1962, 32773.49, '2020-06-02', '23:41:28', 'SOSMED', 'MEDANPEDIA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deposit`
--

CREATE TABLE `deposit` (
  `id` int(10) NOT NULL,
  `kode_deposit` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `pengirim` varchar(250) NOT NULL,
  `penerima` varchar(100) NOT NULL,
  `catatan` text NOT NULL,
  `jumlah_transfer` int(255) NOT NULL,
  `get_saldo` varchar(250) NOT NULL,
  `metode_isi_saldo` varchar(25) NOT NULL,
  `status` enum('Success','Pending','Error') NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_kode_undangan`
--

CREATE TABLE `harga_kode_undangan` (
  `id` int(2) NOT NULL,
  `level` varchar(50) NOT NULL,
  `harga` double NOT NULL,
  `saldo_sosmed` double NOT NULL,
  `saldo_top_up` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `harga_kode_undangan`
--

INSERT INTO `harga_kode_undangan` (`id`, `level`, `harga`, `saldo_sosmed`, `saldo_top_up`) VALUES
(1, 'Member', 20000, 5000, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_layanan`
--

CREATE TABLE `kategori_layanan` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `kode` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `tipe` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `server` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `kategori_layanan`
--

INSERT INTO `kategori_layanan` (`id`, `nama`, `kode`, `tipe`, `server`) VALUES
(1845, 'PLN PASCABAYAR', 'PLN PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(1846, 'HP PASCABAYAR', 'HP PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(1851, 'INTERNET PASCABAYAR', 'INTERNET PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(1853, 'BPJS KESEHATAN', 'BPJS KESEHATAN', 'Pascabayar', 'Pascabayar'),
(1854, 'MULTIFINANCE', 'MULTIFINANCE', 'Pascabayar', 'Pascabayar'),
(1859, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2574, 'Instagram Views', 'Instagram Views', 'Sosial Media', ''),
(2575, 'SoundCloud', 'SoundCloud', 'Sosial Media', ''),
(2576, 'Telegram', 'Telegram', 'Sosial Media', ''),
(2577, 'Google', 'Google', 'Sosial Media', ''),
(2578, 'Instagram Story Views', 'Instagram Story Views', 'Sosial Media', ''),
(2579, 'Instagram Live Video', 'Instagram Live Video', 'Sosial Media', ''),
(2580, 'Instagram Story / Impressions / Saves / Profile Visit', 'Instagram Story / Impressions / Saves / Profile Vi', 'Sosial Media', ''),
(2581, 'Twitter Views & Impressions', 'Twitter Views & Impressions', 'Sosial Media', ''),
(2582, 'Linkedin', 'Linkedin', 'Sosial Media', ''),
(2583, 'Website Traffic', 'Website Traffic', 'Sosial Media', ''),
(2584, 'Instagram TV', 'Instagram TV', 'Sosial Media', ''),
(2585, 'Youtube Likes / Dislikes / Shares', 'Youtube Likes / Dislikes / Shares', 'Sosial Media', ''),
(2586, 'Youtube Views', 'Youtube Views', 'Sosial Media', ''),
(2587, 'Facebook Video Views / Live Stream', 'Facebook Video Views / Live Stream', 'Sosial Media', ''),
(2588, 'Youtube View Target Negara', 'Youtube View Target Negara', 'Sosial Media', ''),
(2589, 'Spotify', 'Spotify', 'Sosial Media', ''),
(2590, 'Facebook Page / Website - Likes / Stars', 'Facebook Page / Website - Likes / Stars', 'Sosial Media', ''),
(2591, 'Followers Shopee/Tokopedia/Bukalapak', 'Followers Shopee/Tokopedia/Bukalapak', 'Sosial Media', ''),
(2592, 'Pinterest', 'Pinterest', 'Sosial Media', ''),
(2593, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia', 'Sosial Media', ''),
(2594, 'Instagram Like Komentar [ top koment ]', 'Instagram Like Komentar [ top koment ]', 'Sosial Media', ''),
(2595, 'Instagram Like Indonesia', 'Instagram Like Indonesia', 'Sosial Media', ''),
(2596, 'Instagram Likes', 'Instagram Likes', 'Sosial Media', ''),
(2597, 'Instagram Followers [ No Refill ]', 'Instagram Followers [ No Refill ]', 'Sosial Media', ''),
(2598, 'TIK TOK', 'TIK TOK', 'Sosial Media', ''),
(2599, 'Instagram Comments', 'Instagram Comments', 'Sosial Media', ''),
(2600, 'Youtube View Jam Tayang', 'Youtube View Jam Tayang', 'Sosial Media', ''),
(2601, '- PROMO - ON OFF', '- PROMO - ON OFF', 'Sosial Media', ''),
(2602, 'Youtube Subscribers', 'Youtube Subscribers', 'Sosial Media', ''),
(2603, 'Facebook Followers / Friends', 'Facebook Followers / Friends', 'Sosial Media', ''),
(2604, 'Facebook Post Likes / Comments / Shares', 'Facebook Post Likes / Comments / Shares', 'Sosial Media', ''),
(2605, 'Instagram Followers [guaranteed]', 'Instagram Followers [guaranteed]', 'Sosial Media', ''),
(2606, 'Twitter Followers', 'Twitter Followers', 'Sosial Media', ''),
(2607, 'Twitter Retweets', 'Twitter Retweets', 'Sosial Media', ''),
(2608, 'Twitch', 'Twitch', 'Sosial Media', ''),
(2609, 'Twitter Favorites', 'Twitter Favorites', 'Sosial Media', ''),
(2610, 'Likee app', 'Likee app', 'Sosial Media', ''),
(2611, 'PLN PASCABAYAR', 'PLN PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(2612, 'HP PASCABAYAR', 'HP PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(2613, 'HP PASCABAYAR', 'HP PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(2614, 'HP PASCABAYAR', 'HP PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(2615, 'HP PASCABAYAR', 'HP PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(2616, 'HP PASCABAYAR', 'HP PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(2617, 'INTERNET PASCABAYAR', 'INTERNET PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(2618, 'INTERNET PASCABAYAR', 'INTERNET PASCABAYAR', 'Pascabayar', 'Pascabayar'),
(2619, 'BPJS KESEHATAN', 'BPJS KESEHATAN', 'Pascabayar', 'Pascabayar'),
(2620, 'MULTIFINANCE', 'MULTIFINANCE', 'Pascabayar', 'Pascabayar'),
(2621, 'MULTIFINANCE', 'MULTIFINANCE', 'Pascabayar', 'Pascabayar'),
(2622, 'MULTIFINANCE', 'MULTIFINANCE', 'Pascabayar', 'Pascabayar'),
(2623, 'MULTIFINANCE', 'MULTIFINANCE', 'Pascabayar', 'Pascabayar'),
(2624, 'MULTIFINANCE', 'MULTIFINANCE', 'Pascabayar', 'Pascabayar'),
(2625, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2626, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2627, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2628, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2629, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2630, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2631, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2632, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2633, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2634, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2635, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2636, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2637, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2638, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2639, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2640, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2641, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2642, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2643, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2644, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2645, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2646, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2647, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2648, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2649, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2650, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2651, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2652, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2653, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2654, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2655, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2656, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2657, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2658, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2659, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2660, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2661, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2662, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2663, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2664, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2665, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2666, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2667, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2668, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2669, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2670, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2671, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2672, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2673, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2674, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2675, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2676, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2677, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2678, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2679, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2680, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2681, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2682, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2683, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2684, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2685, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2686, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2687, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2688, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2689, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2690, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2691, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2692, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2693, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2694, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2695, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2696, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2697, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2698, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2699, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2700, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2701, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2702, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2703, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2704, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2705, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2706, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2707, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2708, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2709, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2710, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2711, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2712, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2713, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2714, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2715, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2716, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2717, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2718, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2719, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2720, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2721, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2722, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2723, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2724, 'PDAM', 'PDAM', 'Pascabayar', 'Pascabayar'),
(2782, '', '', 'Top Up', ''),
(2783, '', '', 'Top Up', ''),
(2784, '', '', 'Top Up', ''),
(2785, 'TELKOMSEL', 'TELKOMSEL', 'Top Up', 'Pulsa'),
(2786, 'INDOSAT', 'INDOSAT', 'Top Up', 'Pulsa'),
(2787, 'TRI', 'TRI', 'Top Up', 'Pulsa'),
(2788, 'XL', 'XL', 'Top Up', 'Pulsa'),
(2789, 'TELKOMSEL', 'TELKOMSEL', 'Top Up', 'Data'),
(2790, 'INDOSAT', 'INDOSAT', 'Top Up', 'Data'),
(2791, 'AXIS', 'AXIS', 'Top Up', 'Pulsa'),
(2792, 'SMART', 'SMART', 'Top Up', 'Pulsa'),
(2793, 'PLN', 'PLN', 'Top Up', 'PLN'),
(2794, 'SHOPEE PAY', 'SHOPEE PAY', 'Top Up', 'E-Money'),
(2795, 'BRI BRIZZI', 'BRI BRIZZI', 'Top Up', 'E-Money'),
(2796, 'GRAB', 'GRAB', 'Top Up', 'E-Money'),
(2797, 'OVO', 'OVO', 'Top Up', 'E-Money'),
(2798, 'GO PAY', 'GO PAY', 'Top Up', 'E-Money'),
(2799, 'AXIS', 'AXIS', 'Top Up', 'Data'),
(2800, 'SMART', 'SMART', 'Top Up', 'Data'),
(2801, 'TRI', 'TRI', 'Top Up', 'Data'),
(2802, 'XL', 'XL', 'Top Up', 'Data'),
(2803, 'TELKOMSEL', 'TELKOMSEL', 'Top Up', 'Voucher'),
(2804, 'INDOSAT', 'INDOSAT', 'Top Up', 'Voucher'),
(2805, 'AXIS', 'AXIS', 'Top Up', 'Voucher'),
(2806, 'SMART', 'SMART', 'Top Up', 'Voucher'),
(2807, 'TRI', 'TRI', 'Top Up', 'Voucher'),
(2808, 'XL', 'XL', 'Top Up', 'Voucher'),
(2809, 'WIFI ID', 'WIFI ID', 'Top Up', 'Voucher'),
(2810, 'GOOGLE PLAY INDONESIA', 'GOOGLE PLAY INDONESIA', 'Top Up', 'Voucher'),
(2811, 'HAGO', 'HAGO', 'Top Up', 'Games'),
(2812, 'TELKOMSEL', 'TELKOMSEL', 'Top Up', 'Paket SMS Telpon'),
(2813, 'INDOSAT', 'INDOSAT', 'Top Up', 'Paket SMS Telpon'),
(2814, 'TRI', 'TRI', 'Top Up', 'Paket SMS Telpon'),
(2815, 'XL', 'XL', 'Top Up', 'Paket SMS Telpon'),
(2816, 'CHINA TOPUP', 'CHINA TOPUP', 'Top Up', 'Pulsa Internasional'),
(2817, 'MAXIS', 'MAXIS', 'Top Up', 'Pulsa Internasional'),
(2818, 'SMART PINOY', 'SMART PINOY', 'Top Up', 'Pulsa Internasional'),
(2819, 'DIGI', 'DIGI', 'Top Up', 'Pulsa Internasional'),
(2820, 'CELCOM', 'CELCOM', 'Top Up', 'Pulsa Internasional'),
(2821, 'UMOBILE', 'UMOBILE', 'Top Up', 'Pulsa Internasional'),
(2822, 'TUNETALK', 'TUNETALK', 'Top Up', 'Pulsa Internasional'),
(2823, 'Philippines - SMART', 'Philippines - SMART', 'Top Up', 'Pulsa Internasional'),
(2824, 'GLOBE', 'GLOBE', 'Top Up', 'Pulsa Internasional'),
(2825, 'SUN TELECOM', 'SUN TELECOM', 'Top Up', 'Pulsa Internasional'),
(2826, 'XOX', 'XOX', 'Top Up', 'Pulsa Internasional'),
(2827, 'SINGTEL', 'SINGTEL', 'Top Up', 'Pulsa Internasional'),
(2828, 'STARHUB', 'STARHUB', 'Top Up', 'Pulsa Internasional'),
(2829, 'M1', 'M1', 'Top Up', 'Pulsa Internasional'),
(2830, 'THAILAND TOPUP', 'THAILAND TOPUP', 'Top Up', 'Pulsa Internasional'),
(2831, 'VIETNAM TOPUP', 'VIETNAM TOPUP', 'Top Up', 'Vietnam Topup'),
(2832, 'MOBILE LEGEND', 'MOBILE LEGEND', 'Top Up', 'Games'),
(2833, 'FREE FIRE', 'FREE FIRE', 'Top Up', 'Games'),
(2834, 'Call of Duty MOBILE', 'Call of Duty MOBILE', 'Top Up', 'Games'),
(2835, 'Lords Mobile', 'Lords Mobile', 'Top Up', 'Games'),
(2836, 'DANA', 'DANA', 'Top Up', 'E-Money'),
(2837, 'LinkAja', 'LinkAja', 'Top Up', 'E-Money'),
(2838, 'MANDIRI E-TOLL', 'MANDIRI E-TOLL', 'Top Up', 'E-Money'),
(2839, 'by.U', 'by.U', 'Top Up', 'Pulsa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ketentuan_layanan`
--

CREATE TABLE `ketentuan_layanan` (
  `id` int(2) NOT NULL,
  `nomer` varchar(50) NOT NULL,
  `tipe` varchar(25) NOT NULL,
  `konten` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ketentuan_layanan`
--

INSERT INTO `ketentuan_layanan` (`id`, `nomer`, `tipe`, `konten`, `date`, `time`) VALUES
(1, '1', 'Umum', 'Dengan Mendaftar Dan Menggunakan Layanan Jetpedia, Anda Secara Otomatis Menyetujui Semua Ketentuan Layanan Kami. Kami Berhak Mengubah Ketentuan Layanan Ini Tanpa Pemberitahuan Terlebih Dahulu. Anda Diharapkan Membaca Semua Ketentuan Layanan Kami Sebelum Membuat Pesanan.', '2020-04-12', '10:53:48'),
(2, '2', 'Umum', 'Jetpedia Tidak Akan Bertanggung Jawab Jika Anda Mengalami Kerugian Dalam Bisnis Anda.', '2020-05-15', '17:12:56'),
(3, '3', 'Umum', 'Jetpedia Tidak Bertanggung Jawab Jika Anda Mengalami Nonaktif Akun Atau Penghapusan Kiriman Yang Dilakukan Oleh Instagram, Twitter, Facebook, Youtube, Dan Lain-Lain.', '2020-05-15', '17:13:05'),
(4, '1', 'Layanan', 'Jetpedia Hanya Digunakan Untuk Media Promosi Sosial Media, Pulsa PPOB, Voucher Game Dan Membantu Meningkatkan Penampilan Akun Anda Saja.', '2020-05-15', '17:13:19'),
(5, '2', 'Layanan', 'Jetpedia Tidak Menjamin Pengikut Baru Anda Berinteraksi Dengan Anda, Kami Hanya Menjamin Bahwa Anda Mendapat Pengikut Yang Anda Beli.', '2020-05-15', '17:13:32'),
(6, '3', 'Layanan', 'Jetpedia Tidak Menerima Permintaan, Pembatalan, & Pengembalian Dana Setelah Pesanan Masuk Ke Sistem Kami. Kami Memberikan Pengembalian Dana Yang Sesuai Jika Pesanan Tidak Dapat Diselesaikan.', '2020-05-15', '17:12:45'),
(7, '4', 'Layanan', 'Jetpedia Berhak Mensuspend Akun Anda, Apabila Akun Tersebut Di Perjual Belikan Dan Tanpa Pemberian Pengembalian Dana Dari Pihak Jetpedia', '2020-05-15', '17:12:13'),
(8, '4', 'Umum', 'Jetpedia mempunyai hak untuk merubah peraturan yang ada tanpa ada pemberitahuan sebelumnya. Kami harapkan anda untuk membaca ketentuan yang ada sebelum memesan/membeli agar anda tetap up to date dengan perubahan yang ada.', '2020-04-12', '11:53:48'),
(9, '5', 'Umum', 'Disclaimer: Jetpedia tidak akan bertanggung jawab untuk semua kerusakan pada akun anda atau bisnis anda.', '2020-04-12', '11:53:26'),
(10, '6', 'Umum', 'Liabilities: Jetpedia sama sekali tidak akan bertanggung jawab Jika Anda Memasukkan Nomor Hp/Data Yang Salah.', '2020-04-12', '11:53:09'),
(11, '7', 'Umum', 'Tidak dapat diuangkan kembali/refund.setelah sukses melakukan deposit,tidak ada cara untuk mengembalikannya lagi. Anda hanya dapat menggunakan saldo untuk membeli layanan yang ada di Jetpedia.', '2020-04-12', '11:54:26'),
(12, '8', 'Umum', 'Anda setuju bahwa sekali Anda menyelesaikan pembayaran, Anda tidak akan mengajukan sengketa atau tagihan balik melawan kami untuk alasan apapun.', '2020-04-12', '11:55:26'),
(13, '9', 'Umum', 'Jika Anda mengajukan sengketa atau tagihan terhadap kami setelah deposit, kami berhak untuk mengakhiri semua pesanan anda yang akan datang, membanned akun anda dari situs kami. Kami juga berhak untuk mengambil layanan kami yang dikirim ke akun Anda atau klien anda.', '2020-04-12', '11:56:26'),
(14, '10', 'Umum', 'Jika pengguna terbukti melakukan kecurangan saat melakukan pembayaran baik dalam pesanan maupun deposit, maka pihak Jetpedia akan langsung menonaktifkan akun terkait.', '2020-04-12', '11:59:26'),
(15, '5', 'Layanan', 'Kami tidak memberi jaminan pengikut baru anda akan berinteraksi dengan anda tetapi kami akan memberi garansi pada server tertentu untuk pengikut yang anda beli jika dalam kurun waktu yang ditentukan berkurang.', '2020-04-12', '12:52:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kode_undangan`
--

CREATE TABLE `kode_undangan` (
  `id` int(10) NOT NULL,
  `level` enum('Member') COLLATE utf8_swedish_ci NOT NULL,
  `uplink` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `kode` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `saldo_sosmed` int(10) NOT NULL,
  `saldo_top_up` int(10) NOT NULL,
  `status` enum('Belum Dipakai','Sudah Dipakai') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `kode_undangan`
--

INSERT INTO `kode_undangan` (`id`, `level`, `uplink`, `kode`, `saldo_sosmed`, `saldo_top_up`, `status`, `date`, `time`) VALUES
(1, 'Member', 'dahry', '7879505', 5000, 5000, 'Belum Dipakai', '2020-05-17', '17:09:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak_admin`
--

CREATE TABLE `kontak_admin` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` text NOT NULL,
  `deskripsi` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `jam_kerja` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `link_fb` varchar(100) NOT NULL,
  `link_ig` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak_admin`
--

INSERT INTO `kontak_admin` (`id`, `nama`, `jabatan`, `deskripsi`, `lokasi`, `jam_kerja`, `email`, `no_hp`, `link_fb`, `link_ig`) VALUES
(1, 'Dahri Anshor', 'Web Developer And Programmer', 'SILENT', 'Siwalan, Pekalongan, Jawa tengah, indonesia', '08:00 - 23:59 WIB', 'dahrianshor@gamil.com', '6285600899245', 'https://m.facebook.com/Jetpediaid-109645517421319/', 'https://www.instagram.com/jetpediaid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak_website`
--

CREATE TABLE `kontak_website` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `link_fb` varchar(100) NOT NULL,
  `link_ig` varchar(100) NOT NULL,
  `no_wa` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `jam_kerja` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kontak_website`
--

INSERT INTO `kontak_website` (`id`, `logo`, `link_fb`, `link_ig`, `no_wa`, `email`, `alamat`, `kode_pos`, `jam_kerja`) VALUES
(1, 'AR', 'https://m.facebook.com/Jetpediaid-109645517421319/', 'https://www.instagram.com/jetpediaid', '6282313062119', 'jetpediaid@gmail.com', 'Siwalan, Pekalongan, Jawa tengah, Indonesia', 51137, '08:00 - 22:00 WIB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan_pascabayar`
--

CREATE TABLE `layanan_pascabayar` (
  `id` int(10) NOT NULL,
  `service_id` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `provider_id` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `kategori` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `layanan` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Normal','Gangguan') COLLATE utf8_swedish_ci NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `tipe` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `server` varchar(25) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `layanan_pascabayar`
--

INSERT INTO `layanan_pascabayar` (`id`, `service_id`, `provider_id`, `kategori`, `layanan`, `status`, `provider`, `tipe`, `server`) VALUES
(50, '294', '294', 'PLN PASCABAYAR', 'Pln Pascabayar', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(51, '295', '295', 'HP PASCABAYAR', 'Halo Postpaid', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(52, '296', '296', 'HP PASCABAYAR', 'Matrix', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(53, '299', '299', 'HP PASCABAYAR', 'XL Postpaid', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(54, '298', '298', 'HP PASCABAYAR', 'Three Postpaid', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(55, '297', '297', 'HP PASCABAYAR', 'Smartfren Postpaid', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(56, '300', '300', 'INTERNET PASCABAYAR', 'SPEEDY', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(57, '301', '301', 'INTERNET PASCABAYAR', 'TELKOMPSTN', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(58, '302', '302', 'BPJS KESEHATAN', 'Bpjs Kesehatan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(59, '303', '303', 'MULTIFINANCE', 'Bussan Auto Finance', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(60, '304', '304', 'MULTIFINANCE', 'Columbia Finance', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(61, '305', '305', 'MULTIFINANCE', 'Mega Auto Finance', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(62, '306', '306', 'MULTIFINANCE', 'Mega Central Finance', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(63, '307', '307', 'MULTIFINANCE', 'Wom Finance', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(64, '316', '316', 'PDAM', 'Aetra', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(65, '317', '317', 'PDAM', 'Atb Batam', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(66, '318', '318', 'PDAM', 'Ats Palembang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(67, '319', '319', 'PDAM', 'Batang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(68, '320', '320', 'PDAM', 'Giri Menang Mataram', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(69, '321', '321', 'PDAM', 'Intan Banjar', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(70, '322', '322', 'PDAM', 'Kabupaten Balangan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(71, '323', '323', 'PDAM', 'Kabupaten Bandung', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(72, '324', '324', 'PDAM', 'Kabupaten Bandung Barat', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(73, '325', '325', 'PDAM', 'Kabupaten Bangkalan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(74, '326', '326', 'PDAM', 'Kabupaten Banyumas', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(75, '327', '327', 'PDAM', 'Kabupaten Banyuwangi', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(76, '415', '415', 'PDAM', 'kabupaten Barabai', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(77, '328', '328', 'PDAM', 'Kabupaten Batang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(78, '329', '329', 'PDAM', 'Kabupaten Blora', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(79, '330', '330', 'PDAM', 'Kabupaten Bogor', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(80, '331', '331', 'PDAM', 'Kabupaten Bojonegoro', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(81, '333', '333', 'PDAM', 'Kabupaten Boyolali', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(82, '332', '332', 'PDAM', 'Kabupaten Bondowoso', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(83, '334', '334', 'PDAM', 'Kabupaten Brebes', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(84, '335', '335', 'PDAM', 'Kabupaten Buleleng', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(85, '336', '336', 'PDAM', 'Kabupaten Ciamis', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(86, '338', '338', 'PDAM', 'Kabupaten Cianjur', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(87, '339', '339', 'PDAM', 'Kabupaten Cilacap', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(88, '340', '340', 'PDAM', 'Kabupaten Cirebon', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(89, '341', '341', 'PDAM', 'Kabupaten Gresik', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(90, '342', '342', 'PDAM', 'Kabupaten Grobongan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(91, '343', '343', 'PDAM', 'Kabupaten Jember', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(92, '416', '416', 'PDAM', 'kabupaten Jepara', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(93, '344', '344', 'PDAM', 'Kabupaten Jombang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(94, '345', '345', 'PDAM', 'Kabupaten Karanganyar', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(95, '346', '346', 'PDAM', 'Kabupaten Karawang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(96, '347', '347', 'PDAM', 'Kabupaten Kebumen', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(97, '348', '348', 'PDAM', 'Kabupaten Kendal', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(98, '349', '349', 'PDAM', 'Kabupaten Kisaran', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(99, '350', '350', 'PDAM', 'Kabupaten Klaten', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(100, '351', '351', 'PDAM', 'Kabupaten Klungkung', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(101, '352', '352', 'PDAM', 'Kabupaten Kulonprogo', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(102, '353', '353', 'PDAM', 'Kabupaten Kuningan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(103, '354', '354', 'PDAM', 'Kabupaten Lombok Tengah', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(104, '355', '355', 'PDAM', 'Kabupaten Lumajang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(105, '356', '356', 'PDAM', 'Kabupaten Malang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(106, '357', '357', 'PDAM', 'Kabupaten Mamuju', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(107, '358', '358', 'PDAM', 'Kabupaten Mojokerto', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(108, '359', '359', 'PDAM', 'Kabupaten Nias', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(109, '360', '360', 'PDAM', 'Kabupaten Pasaman', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(110, '361', '361', 'PDAM', 'Kabupaten Pati', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(111, '362', '362', 'PDAM', 'Kabupaten Pekalongan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(112, '363', '363', 'PDAM', 'Kabupaten Polewali Mandar', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(113, '364', '364', 'PDAM', 'Kabupaten Ponorogo', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(114, '365', '365', 'PDAM', 'Kabupaten Probolinggo', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(115, '366', '366', 'PDAM', 'Kabupaten Purbalingga', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(116, '367', '367', 'PDAM', 'Kabupaten Purworejo', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(117, '368', '368', 'PDAM', 'Kabupaten Rembang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(118, '369', '369', 'PDAM', 'Kabupaten Sampang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(119, '370', '370', 'PDAM', 'Kabupaten Semarang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(120, '372', '372', 'PDAM', 'Kabupaten Situbondo', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(121, '371', '371', 'PDAM', 'Kabupaten Sidoarjo', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(122, '373', '373', 'PDAM', 'Kabupaten Sleman', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(123, '374', '374', 'PDAM', 'Kabupaten Subang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(124, '375', '375', 'PDAM', 'Kabupaten Sukabumi', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(125, '376', '376', 'PDAM', 'Kabupaten Sukoharjo', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(126, '377', '377', 'PDAM', 'Kabupaten Sumedang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(127, '378', '378', 'PDAM', 'Kabupaten Takalar', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(128, '379', '379', 'PDAM', 'Kabupaten Tapin', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(129, '380', '380', 'PDAM', 'Kabupaten Tasikmalaya', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(130, '381', '381', 'PDAM', 'Kabupaten Temanggung', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(131, '382', '382', 'PDAM', 'Kabupaten Wonogiri', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(132, '383', '383', 'PDAM', 'Kabupaten Wonosobo', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(133, '384', '384', 'PDAM', 'Kota Balikpapan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(134, '385', '385', 'PDAM', 'Kota Bandar Lampung', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(135, '386', '386', 'PDAM', 'Kota Bandung', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(136, '387', '387', 'PDAM', 'Kota Banjar', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(137, '388', '388', 'PDAM', 'Kota Banjarmasin', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(138, '389', '389', 'PDAM', 'Kota Bekasi', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(139, '390', '390', 'PDAM', 'Kota Bogor', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(140, '391', '391', 'PDAM', 'Kota Cirebon', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(141, '392', '392', 'PDAM', 'Kota Denpasar', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(142, '393', '393', 'PDAM', 'Kota Depok', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(143, '409', '409', 'PDAM', 'Kota jayapura', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(144, '394', '394', 'PDAM', 'Kota Kediri', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(145, '395', '395', 'PDAM', 'Kota Madiun', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(146, '396', '396', 'PDAM', 'Kota Malang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(147, '397', '397', 'PDAM', 'Kota Manado', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(148, '398', '398', 'PDAM', 'Kota Mataram', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(149, '399', '399', 'PDAM', 'Kota Medan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(150, '400', '400', 'PDAM', 'Kota Palembang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(151, '401', '401', 'PDAM', 'Kota Pasuruan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(152, '402', '402', 'PDAM', 'Kota Probolinggo', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(153, '403', '403', 'PDAM', 'Kota Salatiga', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(154, '404', '404', 'PDAM', 'Kota Samarinda', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(155, '405', '405', 'PDAM', 'Kota Semarang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(156, '406', '406', 'PDAM', 'Kota Surabaya', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(157, '407', '407', 'PDAM', 'Kota Surakarta', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(158, '408', '408', 'PDAM', 'Kota Tangerang', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(159, '410', '410', 'PDAM', 'Palyja Jakarta', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(160, '411', '411', 'PDAM', 'Pangkalan Bun', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(161, '413', '413', 'PDAM', 'Tirta Khayangan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(162, '414', '414', 'PDAM', 'Tirtanadi Medan', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR'),
(163, '412', '412', 'PDAM', 'Tirta Intan Kabupaten Garut', 'Normal', 'DG-PULSA', 'Pascabayar', 'PASCABAYAR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan_pulsa`
--

CREATE TABLE `layanan_pulsa` (
  `id` int(10) NOT NULL,
  `service_id` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `provider_id` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `operator` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `layanan` text COLLATE utf8_swedish_ci NOT NULL,
  `deskripsi` text COLLATE utf8_swedish_ci NOT NULL,
  `harga` double NOT NULL,
  `harga_api` double NOT NULL,
  `status` enum('Normal','Gangguan') COLLATE utf8_swedish_ci NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `tipe` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `server` varchar(25) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `layanan_pulsa`
--

INSERT INTO `layanan_pulsa` (`id`, `service_id`, `provider_id`, `operator`, `layanan`, `deskripsi`, `harga`, `harga_api`, `status`, `provider`, `tipe`, `server`) VALUES
(7758, '2', '2', 'TELKOMSEL', 'Telkomsel 5.000', 'Pulsa Telkomsel Rp 5.000', 5295, 5105, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7759, '3', '3', 'TELKOMSEL', 'Telkomsel 10.000', 'Pulsa Telkomsel Rp 10.000', 9819, 9629, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7760, '4', '4', 'TELKOMSEL', 'Telkomsel 15.000', 'Pulsa Telkomsel Rp 15.000', 15180, 14990, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7761, '5', '5', 'TELKOMSEL', 'Telkomsel 20.000', 'Pulsa Telkomsel Rp 20.000', 19645, 19455, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7762, '6', '6', 'TELKOMSEL', 'Telkomsel 25.000', 'Pulsa Telkomsel Rp 25.000', 24430, 24240, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7763, '7', '7', 'TELKOMSEL', 'Telkomsel 30.000', 'Pulsa Telkomsel Rp 30.000', 29915, 29725, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7764, '9', '9', 'TELKOMSEL', 'Telkomsel 50.000', 'Pulsa Telkomsel Rp 50.000', 47870, 47680, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7765, '11', '11', 'TELKOMSEL', 'Telkomsel 100.000', 'Pulsa Telkomsel Rp 100.000', 95370, 95180, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7766, '12', '12', 'INDOSAT', 'Indosat 5.000', 'Pulsa Indosat Rp 5.000', 5895, 5705, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7767, '13', '13', 'INDOSAT', 'Indosat 10.000', 'Pulsa Indosat Rp 10.000', 10895, 10705, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7768, '14', '14', 'INDOSAT', 'Indosat 20.000', 'Pulsa Indosat Rp 20.000', 20055, 19865, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7769, '17', '17', 'INDOSAT', 'Indosat 50.000', 'Pulsa Indosat Rp 50.000', 49295, 49105, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7770, '18', '18', 'INDOSAT', 'Indosat 100.000', 'Pulsa Indosat Rp 100.000', 96395, 96205, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7771, '35', '35', 'TRI', 'Three 5.000', 'Pulsa Three Rp 5.000', 5370, 5180, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7772, '36', '36', 'TRI', 'Three 10.000', 'Pulsa Three Rp 10.000', 10320, 10130, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7773, '38', '38', 'TRI', 'Three 20.000', 'Pulsa Three Rp 20.000', 19270, 19080, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7774, '37', '37', 'TRI', 'Three 15.000', 'Pulsa Three Rp 15.000', 14950, 14760, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7775, '41', '41', 'TRI', 'Three 50.000', 'Pulsa Three Rp 50.000', 48670, 48480, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7776, '42', '42', 'TRI', 'Three 100.000', 'Pulsa Three Rp 100.000', 96870, 96680, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7777, '43', '43', 'XL', 'Xl 5.000', 'Pulsa Xl Rp 5.000', 5845, 5655, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7778, '44', '44', 'XL', 'Xl 10.000', 'Pulsa Xl Rp 10.000', 10770, 10580, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7779, '45', '45', 'XL', 'Xl 15.000', 'Pulsa Xl Rp 15.000', 15145, 14955, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7780, '46', '46', 'XL', 'Xl 25.000', 'Pulsa Xl Rp 25.000', 24980, 24790, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7781, '47', '47', 'XL', 'XL 30.000', 'Pulsa Xl Rp 30.000', 29960, 29770, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7782, '48', '48', 'XL', 'Xl 50.000', 'Pulsa Xl Rp 50.000', 49545, 49355, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7783, '49', '49', 'XL', 'Xl 100.000', 'Pulsa Xl Rp 100.000', 98495, 98305, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7784, '50', '50', 'TELKOMSEL', 'Telkomsel Data 1GB + Youtube + Game + Voucher AOV', 'Telkomsel Data 1GB + 500MB Youtube + 30GB Games + Voucher AOV 40 Diamond, 30 Hari', 24380, 24190, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7785, '51', '51', 'TELKOMSEL', 'Telkomsel Data 1GB 7 Hari', '-', 20270, 20080, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7786, '52', '52', 'TELKOMSEL', 'Telkomsel Data Flash 10.000', '50MB - 110MB sesuai zona, 7 Hari', 9370, 9180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7787, '53', '53', 'TELKOMSEL', 'Telkomsel Data Flash 68.000', '4.5 GB, 24Jam 30Hari', 68095, 67905, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7788, '54', '54', 'TELKOMSEL', 'Telkomsel Data Flash 85.000', '8 GB, 24Jam 30Hari', 85045, 84855, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7789, '55', '55', 'TELKOMSEL', 'Telkomsel Data Flash 100.000', '12 GB / 30 Hari', 90370, 90180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7790, '56', '56', 'TELKOMSEL', 'Telkomsel Data Flash 1 GB', '24Jam 30Hari', 18295, 18105, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7791, '57', '57', 'TELKOMSEL', 'Telkomsel Data Flash 2 GB', '24Jam 30Hari', 36020, 35830, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7792, '58', '58', 'TELKOMSEL', 'Telkomsel Data Flash 3 GB', '24Jam 30Hari', 50370, 50180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7793, '60', '60', 'TELKOMSEL', 'Telkomsel Data Flash 8 GB', '24 jam 30 Hari', 116370, 116180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7794, '67', '67', 'INDOSAT', 'Indosat 1GB 30 Hari', 'KUOTA 1GB 30 hari', 10205, 10015, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7795, '68', '68', 'INDOSAT', 'Indosat 2GB 30 Hari', 'KUOTA 2GB 30 hari', 20020, 19830, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7796, '69', '69', 'INDOSAT', 'Indosat 3GB 30 Hari', 'KUOTA 3GB 30 hari', 27370, 27180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7797, '70', '70', 'INDOSAT', 'Indosat 5GB 30 Hari', 'KUOTA 5GB 30 hari', 49970, 49780, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7798, '71', '71', 'INDOSAT', 'Indosat Freedom L', 'Kuota Dasar 4GB (2G/3G/4G) + Bonus 8GB (4G) + Kuota Aplikasi 2GB + 10GB kuota malam, Unlimited nelpon ke sesama Operator Indosat. Masa aktif 30 hari.', 88465, 88275, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7799, '72', '72', 'INDOSAT', 'Indosat Freedom M', 'Kuota Dasar 2GB (2G/3G/4G) + Bonus 3GB (4G) + 5GB Kuota malam + 2GB stream on, Kuota Aplikasi 2GB, Unlimited nelpon ke sesama Operator Indosat. Masa aktif 30 hari.', 60420, 60230, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7800, '73', '73', 'INDOSAT', 'Indosat Internet Unlimited + 1GB, 30 hari', 'Kuota Utama 1GB + Unlimited Aplikasi sehari-hari + Unlimited Streaming Spotify dan iFlix . Masa Aktif 30 hari', 24070, 23880, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7801, '74', '74', 'INDOSAT', 'Indosat Internet Unlimited + 2GB, 30 hari', 'Kuota Utama 2GB + Unlimited Aplikasi sehari-hari + Unlimited Streaming Spotify dan iFlix . Masa Aktif 30 hari', 38290, 38100, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7802, '75', '75', 'INDOSAT', 'Indosat Internet Unlimited + 3GB, 30 hari', 'Kuota Utama 3GB + Unlimited Aplikasi sehari-hari + Unlimited Streaming Spotify dan iFlix + Unlimited SMS ke IM3 Ooredoo . Masa Aktif 30 hari', 56770, 56580, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7803, '76', '76', 'INDOSAT', 'Indosat Internet Unlimited + 7GB, 30 hari', 'Kuota Utama 7GB + Unlimited Aplikasi sehari-hari + Unlimited Streaming Spotify dan iFlix + Unlimited SMS ke IM3 Ooredoo + Unlimited Youtube (via MyIM3) . Masa Aktif 30 hari', 76370, 76180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7804, '77', '77', 'INDOSAT', 'Indosat Internet Unlimited + 10GB, 30 hari', 'Kuota Utama 10GB + Unlimited Aplikasi sehari-hari + Unlimited Streaming Spotify dan iFlix + Unlimited SMS ke IM3 Ooredoo + Unlimited Nelpon ke IM3 Ooredoo + Unlimited Youtube (via MyIM3)', 95520, 95330, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7805, '78', '78', 'INDOSAT', 'Indosat Internet Unlimited + 15GB, 30 hari', 'Kuota Utama 15GB + Unlimited Aplikasi sehari-hari + Unlimited Streaming Spotify dan iFlix + Unlimited SMS ke IM3 Ooredoo + Unlimited Nelpon ke IM3 Ooredoo + Unlimited Youtube (via MyIM3)', 118865, 118675, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7806, '1', '1', 'TELKOMSEL', 'Telkomsel 1.000', 'Pulsa Telkomsel Rp 1.000', 1795, 1605, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7807, '8', '8', 'TELKOMSEL', 'Telkomsel 40.000', 'Pulsa Telkomsel Rp 40.000', 39595, 39405, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7808, '10', '10', 'TELKOMSEL', 'Telkomsel 75.000', 'Pulsa Telkomsel Rp 75.000', 73720, 73530, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7809, '15', '15', 'INDOSAT', 'Indosat 25.000', 'Pulsa Indosat Rp 25.000', 24755, 24565, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7810, '16', '16', 'INDOSAT', 'Indosat 30.000', 'Pulsa Indosat Rp 30.000', 29845, 29655, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7811, '19', '19', 'AXIS', 'Axis 15.000', 'Pulsa Axis Rp 15.000', 14720, 14530, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7812, '20', '20', 'AXIS', 'Axis 25.000', 'Pulsa Axis Rp 25.000', 24420, 24230, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7813, '21', '21', 'AXIS', 'Axis 30.000', 'Pulsa Axis Rp 30.000', 29960, 29770, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7814, '22', '22', 'AXIS', 'Axis 50.000', 'Pulsa Axis Rp 50.000', 49555, 49365, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7815, '23', '23', 'AXIS', 'Axis 100.000', 'Pulsa Axis Rp 100.000', 98595, 98405, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7816, '24', '24', 'SMART', 'Smart 5.000', 'Pulsa Smart Rp 5.000', 5170, 4980, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7817, '25', '25', 'SMART', 'Smart 10.000', 'Pulsa Smart Rp 10.000', 10220, 10030, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7818, '26', '26', 'SMART', 'Smart 20.000', 'Pulsa Smart Rp 20.000', 19995, 19805, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7819, '27', '27', 'SMART', 'Smart 25.000', 'Pulsa Smart Rp 25.000', 24695, 24505, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7820, '28', '28', 'SMART', 'Smart 30.000', '-', 29770, 29580, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7821, '29', '29', 'SMART', 'Smart 50.000', 'Pulsa Smart Rp 50.000', 49020, 48830, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7822, '30', '30', 'SMART', 'Smart 60.000', 'Pulsa Smart Rp 60.000', 58920, 58730, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7823, '31', '31', 'SMART', 'Smart 100.000', 'Pulsa Smart Rp 100.000', 97470, 97280, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7824, '32', '32', 'TRI', 'Three 1.000', 'Pulsa Three Rp 1.000', 1470, 1280, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7825, '33', '33', 'TRI', 'Three 2.000', 'Pulsa Three Rp 2.000', 2510, 2320, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7826, '39', '39', 'TRI', 'Three 25.000', 'Pulsa Three Rp 25.000', 24668, 24478, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7827, '40', '40', 'TRI', 'Three 30.000', 'Pulsa Three Rp 30.000', 29370, 29180, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7828, '34', '34', 'TRI', 'Three 3.000', 'Pulsa Three Rp 3.000', 3484, 3294, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(7829, '273', '273', 'PLN', 'PLN 20.000', 'PLN 20.000', 20385, 20195, 'Normal', 'DG-PULSA', 'PLN', 'TOP UP'),
(7830, '274', '274', 'PLN', 'PLN 50.000', 'PLN 50.000', 50400, 50210, 'Normal', 'DG-PULSA', 'PLN', 'TOP UP'),
(7831, '275', '275', 'PLN', 'PLN 100.000', 'PLN 100.000', 99270, 99080, 'Normal', 'DG-PULSA', 'PLN', 'TOP UP'),
(7832, '276', '276', 'PLN', 'PLN 200.000', 'PLN 200.000', 200400, 200210, 'Normal', 'DG-PULSA', 'PLN', 'TOP UP'),
(7833, '258', '258', 'SHOPEE PAY', 'SHOPEE PAY 10.000', 'SHOPEE PAY 10.000', 10465, 10275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7834, '259', '259', 'SHOPEE PAY', 'SHOPEE PAY 20.000', 'SHOPEE PAY 20.000', 20465, 20275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7835, '260', '260', 'SHOPEE PAY', 'SHOPEE PAY 25.000', 'SHOPEE PAY 25.000', 25465, 25275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7836, '261', '261', 'SHOPEE PAY', 'SHOPEE PAY 30.000', 'SHOPEE PAY 30.000', 30465, 30275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7837, '262', '262', 'SHOPEE PAY', 'SHOPEE PAY 40.000', 'SHOPEE PAY 40.000', 40465, 40275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7838, '263', '263', 'SHOPEE PAY', 'SHOPEE PAY 50.000', 'SHOPEE PAY 50.000', 50465, 50275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7839, '264', '264', 'SHOPEE PAY', 'SHOPEE PAY 60.000', 'SHOPEE PAY 60.000', 60465, 60275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7840, '265', '265', 'SHOPEE PAY', 'SHOPEE PAY 70.000', 'SHOPEE PAY 70.000', 70465, 70275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7841, '266', '266', 'SHOPEE PAY', 'SHOPEE PAY 75.000', 'SHOPEE PAY 75.000', 75465, 75275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7842, '267', '267', 'SHOPEE PAY', 'SHOPEE PAY 80.000', 'SHOPEE PAY 80.000', 80465, 80275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7843, '268', '268', 'SHOPEE PAY', 'SHOPEE PAY 90.000', 'SHOPEE PAY 90.000', 90465, 90275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7844, '269', '269', 'SHOPEE PAY', 'SHOPEE PAY 100.000', 'SHOPEE PAY 100.000', 100465, 100275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7845, '272', '272', 'BRI BRIZZI', 'BRIZZI 100.000', 'Saldo BRIZZI 100.000', 100770, 100580, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7846, '271', '271', 'BRI BRIZZI', 'BRIZZI 50.000', 'Saldo BRIZZI 50.000', 50770, 50580, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7847, '270', '270', 'BRI BRIZZI', 'BRIZZI 20.000', 'Saldo BRIZZI 20.000', 20770, 20580, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7848, '247', '247', 'GRAB', 'Grab driver 50.000', '-', 50870, 50680, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7849, '248', '248', 'GRAB', 'Grab penumpang 20.000', '-', 20245, 20055, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7850, '249', '249', 'GRAB', 'Grab penumpang 25.000', '-', 25245, 25055, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7851, '250', '250', 'GRAB', 'Grab penumpang 40.000', '-', 41070, 40880, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7852, '251', '251', 'GRAB', 'Grab penumpang 50.000', '-', 50270, 50080, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7853, '252', '252', 'GRAB', 'Grab penumpang 100.000', '-', 100320, 100130, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7854, '253', '253', 'GRAB', 'Grab penumpang 150.000', '-', 151070, 150880, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7855, '254', '254', 'GRAB', 'Grab driver 100.000', '-', 100870, 100680, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7856, '255', '255', 'GRAB', 'Grab driver 150.000', '-', 150870, 150680, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7857, '256', '256', 'GRAB', 'Grab driver 200.000', '-', 200920, 200730, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7858, '257', '257', 'GRAB', 'Grab driver 250.000', '-', 250920, 250730, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7859, '239', '239', 'OVO', 'OVO 10.000', '-', 10790, 10600, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7860, '240', '240', 'OVO', 'OVO 20.000', 'OVO 20.000', 20790, 20600, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7861, '241', '241', 'OVO', 'OVO 25.000', 'OVO 25.000', 25790, 25600, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7862, '242', '242', 'OVO', 'OVO 30.000', 'OVO 30.000', 30795, 30605, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7863, '423', '423', 'OVO', 'OVO 40.000', 'OVO 40.000', 40790, 40600, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7864, '244', '244', 'OVO', 'OVO 50.000', 'OVO 50.000', 50795, 50605, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7865, '245', '245', 'OVO', 'OVO 70.000', 'OVO 70.000', 70870, 70680, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7866, '246', '246', 'OVO', 'OVO 100.000', 'OVO 100.000', 100795, 100605, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7867, '220', '220', 'GO PAY', 'Go Pay 10.000', 'Masukan no HP', 10870, 10680, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7868, '221', '221', 'GO PAY', 'Go Pay 20.000', 'Masukan no HP', 20990, 20800, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7869, '222', '222', 'GO PAY', 'Go Pay 30.000', 'Masukan no HP', 30990, 30800, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7870, '223', '223', 'GO PAY', 'Go Pay 50.000', 'Masukan no HP', 51015, 50825, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7871, '224', '224', 'GO PAY', 'Go Pay 75.000', 'Masukan no HP', 75870, 75680, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7872, '225', '225', 'GO PAY', 'Go Pay 100.000', 'Masukan no HP', 100870, 100680, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7873, '226', '226', 'GO PAY', 'Go Pay 150.000', 'Masukan no HP', 150870, 150680, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7874, '227', '227', 'GO PAY', 'Go Pay 200.000', 'Masukan no HP', 201065, 200875, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7875, '228', '228', 'GO PAY', 'Go Pay Driver 10.000', 'KHUSUS DRIVER - Masukan no HP', 10470, 10280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7876, '229', '229', 'GO PAY', 'Go Pay Driver 25.000', 'KHUSUS DRIVER - Masukan no HP', 25470, 25280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7877, '230', '230', 'GO PAY', 'Go Pay Driver 20.000', 'KHUSUS DRIVER - Masukan no HP', 20470, 20280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7878, '231', '231', 'GO PAY', 'Go Pay Driver 50.000', 'KHUSUS DRIVER - Masukan no HP', 50470, 50280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7879, '232', '232', 'GO PAY', 'Go Pay Driver 75.000', 'KHUSUS DRIVER - Masukan no HP', 75470, 75280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7880, '233', '233', 'GO PAY', 'Go Pay Driver 100.000', 'KHUSUS DRIVER - Masukan no HP', 100470, 100280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7881, '234', '234', 'GO PAY', 'Go Pay Driver 150.000', 'KHUSUS DRIVER - Masukan no HP', 150470, 150280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7882, '235', '235', 'GO PAY', 'Go Pay Driver 200.000', 'KHUSUS DRIVER - Masukan no HP', 200470, 200280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7883, '236', '236', 'GO PAY', 'Go Pay Driver 250.000', 'KHUSUS DRIVER - Masukan no HP', 250470, 250280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7884, '237', '237', 'GO PAY', 'Go Pay Driver 300.000', 'KHUSUS DRIVER - Masukan no HP', 300470, 300280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(7885, '59', '59', 'TELKOMSEL', 'Telkomsel Data Flash 4 GB', '24Jam 30Hari', 69895, 69705, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7886, '61', '61', 'TELKOMSEL', 'Telkomsel Data Flash 12 GB', '24 jam 30 hari', 97695, 97505, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7887, '62', '62', 'TELKOMSEL', 'Telkomsel Paket COMBO 10GB', '10GB + 100 Menit Sesama + 100 sms Sesama (on net), berlaku 30 Hari', 97895, 97705, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7888, '63', '63', 'TELKOMSEL', 'Telkomsel Paket Internet Facebook 1GB / 7 Hari', '-', 17120, 16930, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7889, '64', '64', 'TELKOMSEL', 'Telkomsel Paket Internet Facebook 2GB / 7 Hari', '-', 21230, 21040, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7890, '65', '65', 'TELKOMSEL', 'Telkomsel Paket Internet Youtube 2GB / 7 Hari', '-', 21230, 21040, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7891, '66', '66', 'TELKOMSEL', 'Telkomsel Paket Internet Youtube 3GB / 7 Hari', '-', 25230, 25040, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7892, '79', '79', 'INDOSAT', 'Indosat Internet Unlimited JUMBO, 30 hari', 'Kuota Utama JUMBO + Unlimited Aplikasi sehari-hari + Unlimited Streaming Spotify dan iFlix + 100 SMS ke Semua Operator + Unlimited Nelpon + SMS ke Indosat + Unlimited Youtube', 142420, 142230, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7893, '81', '81', 'INDOSAT', 'Indosat Paket Yellow Internet 1GB 3 Hari', '-', 5170, 4980, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7894, '82', '82', 'INDOSAT', 'Indosat Paket Yellow Internet 1GB 7 Hari', '-', 9670, 9480, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7895, '83', '83', 'INDOSAT', 'Indosat Paket Yellow Internet 1GB 15 Hari', '-', 12870, 12680, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7896, '84', '84', 'INDOSAT', 'GIFT DATA 200MB', 'Kuota 24 jam, masa aktif 30 hari, bisa digabung dengan paket data yang sudah ada', 2375, 2185, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7897, '85', '85', 'INDOSAT', 'GIFT DATA 500 MB', 'Kuota 24 jam, masa aktif 30 hari, bisa digabung dengan paket data yang sudah ada', 5380, 5190, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7898, '86', '86', 'INDOSAT', 'GIFT DATA 1GB', 'Kuota 24 jam, masa aktif 30 hari, bisa digabung dengan paket data yang sudah ada', 10380, 10190, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7899, '87', '87', 'INDOSAT', 'GIFT DATA 2GB', 'Kuota 24 jam, masa aktif 30 hari, bisa digabung dengan paket data yang sudah ada', 20380, 20190, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7900, '88', '88', 'INDOSAT', 'GIFT DATA 3GB', 'Kuota 24 jam, masa aktif 30 hari, bisa digabung dengan paket data yang sudah ada', 30370, 30180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7901, '89', '89', 'INDOSAT', 'Freedom Combo 4GB 30 Hari', '4GB (2GB + 1GB Lokal, 1 GB Malam,Telepon 5 Mnt All 30hr) Paket hanya berlaku di area Jakarta, Botabek, West Java, Central Java, East Java, Kalimantan.', 24105, 23915, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7902, '90', '90', 'INDOSAT', 'Freedom Combo 8GB 30 Hari', '8GB (4GB + 2GB Lokal, 2 GB Malam, Telepon 20 Mnt All 30hr) Paket hanya berlaku di area Jakarta, Botabek, West Java, Central Java, East Java, Kalimantan.', 33345, 33155, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7903, '91', '91', 'INDOSAT', 'Freedom Internet 3GB 30Hr', 'INDOSAT DATA FREEDOM 3GB FULL 24 JAM NASIONAL, 30HARI', 23370, 23180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7904, '92', '92', 'INDOSAT', 'Freedom Internet 10GB 30Hr', 'INDOSAT DATA FREEDOM 10GB FULL 24 JAM NASIONAL, 30HARI', 46720, 46530, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7905, '93', '93', 'INDOSAT', 'Indosat 300MB 30 Hari', 'Indosat 300MB 30 Hari', 3370, 3180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7906, '94', '94', 'AXIS', 'BRONET 1GB', 'Kuota 1GB. 500 MB di 00-06 + 500 MB di 00 - 23.59', 13580, 13390, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7907, '95', '95', 'AXIS', 'BRONET 2GB', 'Kuota 2GB. 1 GB di 00-06 + 1 GB di 00 - 23.59', 22665, 22475, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7908, '96', '96', 'AXIS', 'BRONET 3GB', 'Kuota 3GB. 24 Jam', 28645, 28455, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7909, '97', '97', 'AXIS', 'BRONET 5GB', 'Kuota 5GB. 24 Jam', 42445, 42255, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7910, '98', '98', 'AXIS', 'BRONET 8 GB', 'Kuota 8 GB, Masa Aktif 30 Hari, 24 Jam', 56795, 56605, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7911, '99', '99', 'AXIS', 'OWSEM 1GB + 1GB 4G', 'BRONET 4G OWSEM 1GB+1GB(4G)+2GB Aplikasi, 24 jam 30HR', 17320, 17130, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7912, '100', '100', 'AXIS', 'BRONET 2GB 60 hari', '2GB Kuota utama bisa digunakan selama 24 jam, berlaku 60hari.', 24170, 23980, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7913, '101', '101', 'AXIS', 'BRONET 3GB 60 hari', '3GB Kuota utama bisa digunakan selama 24 jam, berlaku 60hari.', 30170, 29980, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7914, '102', '102', 'AXIS', 'BRONET 5GB 60 hari', '5GB Kuota utama bisa digunakan selama 24 jam, berlaku 60hari.', 44670, 44480, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7915, '104', '104', 'AXIS', 'BRONET 10GB 60 hari', '10GB Kuota utama bisa digunakan selama 24 jam, berlaku 60hari.', 70370, 70180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7916, '103', '103', 'AXIS', 'BRONET 8GB 60 hari', '8GB Kuota utama bisa digunakan selama 24 jam, berlaku 60hari.', 59370, 59180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7917, '105', '105', 'AXIS', 'Axis OWSEM 16GB + Unlimited Games 30hr', 'Kuota Internet 24jam 2Gb + Kuota Sosmed 4Gb (FB, Twitter, IG, Tiktok) + Kuota Musik 4Gb (Joox, Smule) + 6Gb Kuota Malam 00-06 + Kuota Games Unlimited 1Gb /day (FreeFire, Mobile Legends, AOV, ASPHALT Legends, Vain Glory, Modern Combat 5)', 39370, 39180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7918, '106', '106', 'SMART', 'Smart Internet 10.000', 'Kuota Internet sebesar 10rb selama 7 hari', 9845, 9655, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7919, '107', '107', 'SMART', 'Smart Internet 20.000', 'Kuota Internet sebesar 20rb selama 14 hari', 18825, 18635, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7920, '112', '112', 'SMART', 'Smart 16GB 30Hari ( 8GB Regular + 8GB Malam)', '-', 34795, 34605, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7921, '108', '108', 'SMART', 'Smart 3GB 7Hari ( 1.5GB Regular + 1.5GB Malam)', '-', 9770, 9580, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7922, '109', '109', 'SMART', 'Smart 4GB 14Hari ( 2GB Regular + 2GB Malam)', '-', 9830, 9640, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7923, '110', '110', 'SMART', 'Smart 8GB 14Hari ( 4GB Regular + 4GB Malam)', '-', 25870, 25680, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7924, '113', '113', 'SMART', 'SMART UNLIMITED FUP 1GB/HARI (30 HARI)', 'MASA AKTIF 30 HARI', 69320, 69130, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7925, '114', '114', 'SMART', 'Smart Data Evo 4GB+4GB(Mid) 14Hari', '-', 29845, 29655, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7926, '115', '115', 'SMART', 'Unlimited FUP 1GB/Hr (Masa aktif 5 hari)', '-', 18470, 18280, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7927, '116', '116', 'SMART', 'Unlimited FUP 500MB/hr (Masa aktif 28hari)', '-', 46595, 46405, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7928, '117', '117', 'TRI', 'Tri Mix Combo 2GB + 20 Menit', 'Paket Kombo Tri 2GB + 20 Menit telpon ke semua operator. Masa aktif 30 hari.', 35220, 35030, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7929, '118', '118', 'TRI', 'Tri Mix Kuota++ 2.25GB', '2.25GB mengikuti masa aktif sim', 51370, 51180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7930, '119', '119', 'TRI', 'Tri Mix Super 10GB', '2 GB (semua jaringan) + 8 GB (jaringan 4G), Masa Aktif 30 Hari', 51370, 51180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7931, '120', '120', 'TRI', 'Tri Mix Super 24GB', '26GB (4GB + 20GB 4G )', 89370, 89180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7932, '121', '121', 'TRI', 'Tri data 1GB 7 Hari', '-', 15370, 15180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7933, '122', '122', 'TRI', 'Tri data AON 1GB + Bonus 1GB', '-', 22395, 22205, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7934, '123', '123', 'TRI', 'Tri data AON 2GB + Bonus 4GB', '-', 36395, 36205, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7935, '124', '124', 'TRI', 'Tri data 1GB 14Hari', '-', 20870, 20680, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7936, '125', '125', 'TRI', 'Tri data AON 3GB + Bonus 6GB', '-', 63370, 63180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7937, '126', '126', 'TRI', 'Tri data AON 4GB + Bonus 6GB', '-', 70370, 70180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7938, '127', '127', 'TRI', 'Tri data AON 6GB + Bonus 12GB', '-', 83395, 83205, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7939, '128', '128', 'TRI', 'Tri data AON 8GB + Bonus 16GB', '-', 98370, 98180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7940, '129', '129', 'TRI', 'Tri data AON 10GB + Bonus 20GB', '-', 120395, 120205, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7941, '130', '130', 'TRI', 'AlwaysOn 2 GB', '2 GB Nasional, Pulsa 2k, Mengikuti Masa Aktif Kartu', 18369, 18179, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7942, '131', '131', 'TRI', 'AlwaysOn 3 GB', '3 GB Nasional, Pulsa 2k, Mengikuti Masa Aktif Kartu', 25570, 25380, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7943, '132', '132', 'TRI', 'LTE 33 GB', '3 GB semua jaringan, 30 GB 4G, 30 Hari', 110370, 110180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7944, '133', '133', 'TRI', 'LTE 66 GB', '6 GB semua jaringan, 60 GB 4G, 60 Hari', 170370, 170180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7945, '134', '134', 'TRI', 'Mini 5 GB 7 Hari', '2.5 GB Nasional, 2.5 GB (01.00 - 09.00), 7 Hari', 14369, 14179, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7946, '135', '135', 'TRI', '300 MB (semua jaringan) Mengikuti Masa Aktif Kartu', '-', 10620, 10430, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7947, '136', '136', 'TRI', '10 GB( Semua Jaringan) + 10GB ( Youtube + Netflix) 30 Hari', '-', 70620, 70430, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7948, '137', '137', 'XL', 'XL Data Mini 1GB', '1GB NASIONAL SEMUA JARINGAN, 7 HARI', 10070, 9880, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7949, '138', '138', 'XL', 'Hotrod xtra plus 5GB+1GB+1GB 30Hari', '-', 32270, 32080, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7950, '139', '139', 'XL', 'XL HOTROD 1.5 GB', 'Kuota 24 Jam 1.5GB. Masa aktif 30 hari.', 40370, 40180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7951, '140', '140', 'XL', 'XL HOTROD 3GB', '-', 48370, 48180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7952, '141', '141', 'XL', 'XL HOTROD 6GB', '-', 80370, 80180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7953, '142', '142', 'XL', 'XL HOTROD 8GB', '-', 104370, 104180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7954, '143', '143', 'XL', 'XL HOTROD 12GB', '-', 144370, 144180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7955, '144', '144', 'XL', 'XL HOTROD 16GB', '-', 194295, 194105, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7956, '145', '145', 'XL', 'XL XTRA Combo 5GB+5GB, 30hr', '5GB (2G/3G/4G) + Nelp Anynet 20 mins. Youtube 24 Jam 5GB. Youtube 01:00-06:00 Tanpa kuota FUP 5GB. Genflix,Yonder,Tribe 30 hari berlangganan.', 54870, 54680, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7957, '146', '146', 'XL', 'XL XTRA Combo 10GB+10GB, 30hr', '10GB (2G/3G/4G) + Nelp Anynet 40 mins. Youtube 24 Jam 10GB. Youtube 01:00-06:00 Tanpa kuota FUP 5GB. Genflix,Yonder,Tribe 30 hari berlangganan.', 81570, 81380, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7958, '147', '147', 'XL', 'XL XTRA Combo 15GB+15GB, 30hr', '15GB (2G/3G/4G) + Nelp Anynet 60 mins. Youtube 24 Jam 15GB. Youtube 01:00-06:00 Tanpa kuota FUP 5GB. Genflix,Yonder,Tribe 30 hari berlangganan.', 110270, 110080, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7959, '148', '148', 'XL', 'XTRA Combo VIP 5GB+5GB (30Hari)', 'Kuota Utama (2G/3G/4G) 5GB + Kuota YouTube 5GB + YouTube Tanpa Kuota Tanpa Batas 01:00-06:00 WIB + Nelpon ke Semua Operator 20Menit', 61233, 61043, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7960, '149', '149', 'XL', 'XTRA Combo VIP 10GB+10GB (30Hari)', 'Kuota Utama (2G/3G/4G) 10GB + Kuota YouTube 10GB + YouTube Tanpa Kuota Tanpa Batas 01:00-06:00 WIB + Nelpon ke Semua Operator 30Menit', 86705, 86515, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7961, '150', '150', 'XL', 'XTRA Combo BARU 5GB (30Hari)', 'Kuota Utama (2G/3G/4G) 5GB + Kuota YouTube 5GB + YouTube Tanpa Kuota 01:00-06:00 WIB + Nelpon ke Semua Operator 20Menit', 54495, 54305, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7962, '151', '151', 'XL', 'XTRA Combo BARU 10GB (30Hari)', 'Kuota Utama (2G/3G/4G) 10GB + Kuota YouTube 10GB + YouTube Tanpa Kuota 01:00-06:00 WIB + Nelpon ke Semua Operator 30Menit', 79995, 79805, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7963, '152', '152', 'XL', 'XTRA Combo BARU 15GB (30Hari)', 'Kuota Utama (2G/3G/4G) 15GB + Kuota YouTube\n15GB + YouTube Tanpa Kuota 01:00-06:00 WIB + Nelpon ke Semua Operator 40Menit', 111170, 110980, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7964, '153', '153', 'XL', 'XTRA Combo BARU 20GB (30Hari)', 'Kuota Utama (2G/3G/4G) 20GB + Kuota YouTube 20GB + YouTube Tanpa Kuota 00:01 - 06:00 WIB + Nelpon ke Semua Operator 60Menit', 157470, 157280, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7965, '154', '154', 'XL', 'XTRA Combo BARU 35GB', 'Kuota Utama (2G/3G/4G) 35GB + Kuota YouTube 35GB + YouTube Tanpa Kuota 01:00 - 06:00 WIB + Nelpon ke Semua Operator 90Menit', 213020, 212830, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7966, '155', '155', 'XL', 'Combo LITE 3.5 GB (Data)', '2,5GB + 1GB YOUTUBE', 25730, 25540, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7967, '156', '156', 'XL', 'Combo LITE 6 GB (Data)', '5GB + 1GB YOUTUBE', 36295, 36105, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7968, '308', '308', 'XL', 'Combo LITE 11 GB (Data)', '10GB + 1GB YOUTUBE', 58495, 58305, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7969, '309', '309', 'XL', 'Combo LITE 21 GB (Data)', '20GB + 1GB YOUTUBE', 92870, 92680, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7970, '310', '310', 'XL', 'XL Data 100MB 30 Hari', '100MB 30 Hari', 2420, 2230, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7971, '311', '311', 'XL', 'XL Data 500MB 30 Hari', 'XL Data 500MB 30 Hari', 6625, 6435, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7972, '312', '312', 'XL', 'XL Data 1GB 30 Hari', 'XL Data 1GB 30 Hari', 12880, 12690, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7973, '313', '313', 'XL', 'XL XTRA KUOTA 2 GB Joox', '2 GB Joox 30 Hari', 10205, 10015, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7974, '314', '314', 'XL', 'XL XTRA KUOTA 2 GB Facebook', '2 GB Facebook 30 Hari', 10205, 10015, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7975, '315', '315', 'XL', 'XL XTRA KUOTA 2 GB Youtube', '2 GB Youtube 30 Hari', 10205, 10015, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(7976, '159', '159', 'TELKOMSEL', 'Voucher Telkomsel Data 2.5GB', '2,5GB FLASH, 5 HARI', 18369, 18179, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7977, '158', '158', 'TELKOMSEL', 'Voucher Telkomsel Data 3.5GB', '3,5GB FLASH, 7 HARI', 25369, 25179, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7978, '157', '157', 'TELKOMSEL', 'Voucher Telkomsel Data 1GB 3 Hari', '1 GB Flash, 3 Hari', 14320, 14130, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7979, '161', '161', 'TELKOMSEL', 'Telkomsel Data Bulk 1.5GB', '1,5GB, 7 HARI', 26320, 26130, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7980, '160', '160', 'TELKOMSEL', 'Telkomsel Data Bulk 1 GB', '1GB, 5 HARI', 18320, 18130, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7981, '162', '162', 'TELKOMSEL', 'Telkomsel Data Bulk 2 GB', '2GB + 2GB OMG, 30 hari', 35470, 35280, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7982, '163', '163', 'TELKOMSEL', 'Telkomsel Data Bulk 4 GB', '-', 30470, 30280, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7983, '164', '164', 'TELKOMSEL', 'Telkomsel Data Bulk 6 GB', '6GB + 2GB OMG, 30 HARI', 58220, 58030, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7984, '165', '165', 'TELKOMSEL', 'Telkomsel Data Bulk 9 GB', '9GB + 2GB OMG, 30 HARI', 75220, 75030, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7985, '166', '166', 'TELKOMSEL', 'Telkomsel Data Bulk 10 GB', '10GB + 2GB OMG, 30 HARI', 65495, 65305, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7986, '167', '167', 'INDOSAT', 'Voucher Freedom Internet 18GB 30Hr', 'INDOSAT DATA FREEDOM 18GB FULL 24 JAM NASIONAL, 30HARI', 69370, 69180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7987, '168', '168', 'INDOSAT', 'Voucher Freedom Internet 10GB 30Hr', 'INDOSAT DATA FREEDOM 10GB FULL 24 JAM NASIONAL, 30HARI', 46515, 46325, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7988, '169', '169', 'INDOSAT', 'Indosat Internet Unlimited 3GB 30Hari', '*556*kode voucher# untuk aktivasi', 55790, 55600, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7989, '170', '170', 'AXIS', 'AIGO 1GB 24 JAM 30HR (Voucher)', '1 GB All Jaringan Berlaku 24 Jam Masa Aktif 30 Hari', 13030, 12840, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7990, '171', '171', 'AXIS', 'AIGO 2GB 24 JAM 30HR (Voucher)', '2 GB All Jaringan Berlaku 24 Jam Masa Aktif 30 Hari. Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', 22230, 22040, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7991, '172', '172', 'AXIS', 'AIGO 3GB 24 JAM 30HR (Voucher)', '3 GB All Jaringan Berlaku 24 Jam Masa Aktif 30 Hari. Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', 28045, 27855, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7992, '173', '173', 'AXIS', 'AIGO 5GB 24 JAM 30HR (Voucher)', '5 GB All Jaringan Berlaku 24 Jam Masa Aktif 30 Hari. Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', 41895, 41705, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7993, '174', '174', 'AXIS', 'AIGO 8GB 24 JAM 30HR (Voucher)', '8 GB All Jaringan Berlaku 24 Jam Masa Aktif 30 Hari. Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', 56295, 56105, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7994, '175', '175', 'AXIS', 'AIGO 25GB 24 JAM 60HR (Voucher)', '25 GB All Jaringan Berlaku 24 Jam Masa Aktif 60 Hari. Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', 86065, 85875, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7995, '176', '176', 'AXIS', 'AIGO MINI 1GB 24 JAM 5HR (Voucher)', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', 7920, 7730, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7996, '177', '177', 'AXIS', 'AIGO MINI 2GB 24 JAM 7HR (Voucher)', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', 14630, 14440, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7997, '178', '178', 'AXIS', 'AIGO MINI 3GB 24 JAM 15HR (Voucher)', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', 19130, 18940, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7998, '179', '179', 'AXIS', 'AIGO MINI 5GB 24 JAM 15HR (Voucher)', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk mengaktifkan paket', 30295, 30105, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(7999, '180', '180', 'AXIS', 'Voucher OWSEM 1GB + 1GB 4G', 'Voucher BRONET 4G OWSEM 1GB+1GB(4G)+2GB Games, 24 jam 30HR', 16780, 16590, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8000, '181', '181', 'AXIS', 'Voucher OWSEM 1GB + 3GB 4G', 'Voucher BRONET 4G OWSEM 1GB+3GB(4G)+4GB Games, 24 jam 30HR', 28290, 28100, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8001, '182', '182', 'AXIS', 'Voucher OWSEM 2GB + 6GB 4G', 'Voucher BRONET 4G OWSEM 2GB+6GB(4G)+8GB Games, 24 jam 30HR', 44795, 44605, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8002, '183', '183', 'AXIS', 'Voucher OWSEM 3GB + 9GB 4G', 'Voucher BRONET 4G OWSEM 3GB+9GB(4G)+12GB Games, 24 jam 30HR', 59445, 59255, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8003, '184', '184', 'SMART', 'Smartfren Voucher Data (1,25GB UTAMA + 1,75GB MALAM + 1GB CHAT, 7 HARI)', '-', 10130, 9940, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8004, '185', '185', 'SMART', 'Smartfren Voucher Data 5GB UTAMA + 5GB MALAM, 30 HARI', '-', 25290, 25100, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8005, '186', '186', 'SMART', 'Smartfren Voucher Data (8GB UTAMA + 8GB MALAM, 30 HARI)', '-', 34645, 34455, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8006, '187', '187', 'SMART', 'Smartfren Voucher Data (15GB UTAMA + 15GB MALAM, 30 HARI)', '-', 54170, 53980, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8007, '188', '188', 'SMART', 'Smartfren Voucher Data (30GB UTAMA + 30GB MALAM, 30 HARI)', '-', 93195, 93005, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8008, '190', '190', 'SMART', 'Smartfren Voucher Data (UNLIMITED FUP 500MB/HR, MASA AKTIF 28 HARI)', '-', 47195, 47005, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8009, '191', '191', 'SMART', 'Smartfren Voucher Data (UNLIMITED FUP 1GB/HR, MASA AKTIF 5 HARI)', '-', 17680, 17490, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8010, '189', '189', 'SMART', 'Smartfren Voucher Data (UNLIMITED FUP 1GB/HR, MASA AKTIF 30 HARI)', '-', 69465, 69275, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8011, '192', '192', 'TRI', 'Voucher Tri LTE 33GB', 'V-LTE 3GB+30GB 4G 30 Hari, Cara Input : *111*SNVOUCHER#', 105370, 105180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8012, '193', '193', 'TRI', 'Voucher Tri LTE 66GB', 'V-LTE 6GB+60GB 4G 60 Hari, Cara Input : *111*SNVOUCHER#', 180370, 180180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8013, '194', '194', 'TRI', 'Voucher AlwaysOn 10 GB + Unlimited', '10 GB Nasional, Mengikuti Masa Aktif Kartu, Unlimited Pukul 01.00 - 17.00 WIB', 82370, 82180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8014, '195', '195', 'TRI', 'Tri Data AON 1GB + 1GB 30Hr', 'Jangan lupa input *111*SN# agar customer mendapatkan paket data sesuai', 19870, 19680, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8015, '196', '196', 'TRI', 'Tri Data AON 2GB + 3GB 30Hr', 'Jangan lupa input *111*SN# agar customer mendapatkan paket data sesuai', 30370, 30180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8016, '197', '197', 'TRI', 'Tri Data AON 3GB + 6GB 30Hr', 'Jangan lupa input *111*SN# agar customer mendapatkan paket data sesuai', 50370, 50180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8017, '198', '198', 'TRI', 'Tri Data AON 5GB + 8GB 30Hr', 'Jangan lupa input *111*SN# agar customer mendapatkan paket data sesuai', 60370, 60180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8018, '199', '199', 'TRI', 'Tri Data AON 6GB + 12GB 30Hr', 'Jangan lupa input *111*SN# agar customer mendapatkan paket data sesuai', 75570, 75380, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8019, '200', '200', 'TRI', 'Voucher Tri 1GB + 500MB All Net 30 Hari', 'Claim Voucher dengan cara *111*SN#', 13369, 13179, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8020, '201', '201', 'TRI', 'Voucher Tri 1,5GB + 500MB All Net 30 Hari', 'Claim Voucher dengan cara *111*SN#', 33520, 33330, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8021, '202', '202', 'TRI', 'Voucher Tri 2GB + 1GB All Net 30 Hari', 'Claim Voucher dengan cara *111*SN#', 35370, 35180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8022, '203', '203', 'TRI', 'Voucher Tri 5GB + 1GB All Net 30 Hari', 'Claim Voucher dengan cara *111*SN#', 55370, 55180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8023, '204', '204', 'TRI', 'Voucher Tri 6GB + Unlimited 30 Hari', 'Unlimited pada jam 01.00 - 17.00, Claim Voucher dengan cara *111*SN#', 60370, 60180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8024, '205', '205', 'TRI', 'Voucher Tri 8GB + 14GB All Net + Unlimited Youtube 15 Hari', 'Claim Voucher dengan cara *111*SN#', 96370, 96180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8025, '206', '206', 'TRI', 'Voucher Tri 10GB + 20GB All Net + Unlimited Youtube 15 Hari', 'Claim Voucher dengan cara *111*SN#', 118320, 118130, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8026, '207', '207', 'TRI', 'Voucher Tri AMI 12 GB', 'Voucher Three 12GB 30 Hari + Unlimited Youtube 30 Hari', 64670, 64480, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8027, '208', '208', 'TRI', 'Voucher Tri AMI 4 GB', 'Voucher Three 4GB 30 Hari + Unlimited Youtube 7 Hari', 29470, 29280, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8028, '209', '209', 'TRI', 'Voucher Mini 1 GB 5 Hari', '1 GB Lokal, 5 Hari', 8869, 8679, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8029, '210', '210', 'TRI', 'Voucher Mini 1.5 GB 5 Hari', '1.5 GB Lokal, 5 Hari', 12220, 12030, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8030, '211', '211', 'TRI', 'Voucher AlwaysOn 1.5 GB', '1 GB Nasional, 500 MB lokal, Mengikuti Masa Aktif Kartu', 17370, 17180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8031, '467', '467', 'TRI', 'Voucher AlwaysOn 2 GB', '1.5 GB Nasional,500 MB lokal, Mengikuti Masa Aktif Kartu', 18330, 18140, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8032, '468', '468', 'TRI', 'Voucher AlwaysOn 3 GB', '2 GB Nasional, 1 GB lokal, Mengikuti Masa Aktif Kartu', 23895, 23705, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8033, '469', '469', 'TRI', 'Voucher AlwaysOn 6 GB', '5 GB Nasional, 1 GB lokal, Mengikuti Masa Aktif Kartu', 33595, 33405, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8034, '212', '212', 'XL', 'Voucher XL Data Mini 1GB', '1GB NASIONAL SEMUA JARINGAN, 7 HARI', 9970, 9780, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8035, '213', '213', 'XL', 'Voucher Combo LITE 3.5 GB', '2,5GB + 1GB YOUTUBE', 27369, 27179, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8036, '214', '214', 'XL', 'Voucher Combo LITE 6 GB', '5GB + 1GB YOUTUBE', 38369, 38179, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8037, '215', '215', 'XL', 'Voucher Combo LITE 11 GB', '10GB + 1GB YOUTUBE', 61369, 61179, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8038, '216', '216', 'XL', 'Voucher Combo LITE 21 GB', '20GB + 1GB YOUTUBE', 97369, 97179, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8039, '217', '217', 'XL', 'Voucher Combo LITE 31 GB', '30GB + 1GB YOUTUBE', 120369, 120179, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8040, '283', '283', 'WIFI ID', 'Akses wifi.id 1 hari', '6 Jam untuk Sumatera, Jawa, Balinusa. 4 jam untuk Kalimantan dan Sulawesi. 2 Jam untuk Maluku dan Papua. NB : Pelanggan akan terima notif sms berupa USER dan PASS dari Telkom', 4125, 3935, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8041, '284', '284', 'WIFI ID', 'Akses wifi.id 30 hari', 'NB : Pelanggan akan terima notif sms berupa USER dan PASS dari Telkom', 36995, 36805, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8042, '285', '285', 'WIFI ID', 'Akses wifi.id 7 hari', 'NB : Pelanggan akan terima notif sms berupa USER dan PASS dari Telkom', 15080, 14890, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8043, '278', '278', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 5.000 INDONESIA REGION', 'Google Play Gift Card Indonesia Rp. 5.000', 5325, 5135, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8044, '279', '279', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 20.000 INDONESIA REGION', 'Google Play Gift Card Indonesia Rp. 20.000', 20370, 20180, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8045, '280', '280', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 50.000 INDONESIA REGION', 'Google Play Gift Card Indonesia Rp. 50.000', 55870, 55680, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8046, '281', '281', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 100.000 INDONESIA REGION', 'Google Play Gift Card Indonesia Rp. 100.000', 109570, 109380, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8047, '282', '282', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 150.000 INDONESIA REGION', 'Google Play Gift Card Indonesia Rp. 150.000', 164158, 163968, 'Normal', 'DG-PULSA', 'Voucher', 'TOP UP'),
(8048, '287', '287', 'HAGO', 'Hago 3300 Diamonds', 'Masukkan Play ID Hago Anda', 985370, 985180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8049, '288', '288', 'HAGO', 'Hago 900 Diamonds', 'Masukkan Play ID Hago Anda', 280370, 280180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8050, '289', '289', 'HAGO', 'Hago 1650 Diamonds', 'Masukkan Play ID Hago Anda', 495370, 495180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8051, '290', '290', 'HAGO', 'Hago 375 Diamonds', 'Masukkan Play ID Hago Anda', 118370, 118180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8052, '291', '291', 'HAGO', 'Hago 225 Diamonds', 'Masukkan Play ID Hago Anda', 70370, 70180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8053, '292', '292', 'HAGO', 'Hago 6 Diamonds', 'Masukkan Play ID Hago Anda', 2370, 2180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8054, '293', '293', 'HAGO', 'Hago 45 Diamonds', 'Masukkan Play ID Hago Anda', 14370, 14180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8055, '286', '286', 'HAGO', 'Hago 90 Diamonds', 'Masukkan Play ID Hago Anda', 28370, 28180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8056, '316', '316', 'INDOSAT', 'Indosat 2.000', 'Pulsa Indosat Rp 2.000', 2410, 2220, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8057, '567', '567', 'TELKOMSEL', 'Telkomsel 200 SMS ke semua op 1 hari', 'Paket SMS - 200 SMS ke semua 1 hari', 1295, 1105, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8058, '568', '568', 'TELKOMSEL', 'Telepon Semua Op (20 menit, 1Hari)', 'Paket TELEPON - Telepon Semua Op (20 menit, 1Hari)', 5470, 5280, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8059, '569', '569', 'TELKOMSEL', '250 SMS ke semua op 1 hari', '250 SMS ke semua op 1 hari', 5785, 5595, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8060, '570', '570', 'TELKOMSEL', '500 SMS ke semua op 7 hari', '500 SMS ke semua op 7 hari', 10785, 10595, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8061, '571', '571', 'TELKOMSEL', '1500 SMS ke semua op 30 hari', '1500 SMS ke semua op 30 hari', 20820, 20630, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8062, '572', '572', 'TELKOMSEL', 'Telkomsel Telepon 5.000', 'Telepon 80 menit sesama, 20 menit semua op 1 Hari', 5445, 5255, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8063, '573', '573', 'TELKOMSEL', 'Telkomsel Telepon 10.000', 'Telepon 185 menit sesama, 15 menit semua operator (1 Hari)', 8395, 8205, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8064, '574', '574', 'TELKOMSEL', 'Telkomsel Telepon 20.000', 'Telepon 370 menit sesama, 30 menit semua op (3 Hari)', 14870, 14680, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8065, '575', '575', 'TELKOMSEL', 'Telkomsel Telepon 25.000', 'Telepon 550 menit sesama, 50 menit semua op (7 Hari)', 23620, 23430, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8066, '576', '576', 'TELKOMSEL', 'Telkomsel Telepon 50.000', 'Telepon 1200 menit sesama, 100 menit semua op (15 Hari)', 47395, 47205, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8067, '577', '577', 'TELKOMSEL', 'Telkomsel Telepon 80.000', 'Telepon 2000 menit sesama, 100 menit semua op (30 Hari)', 69970, 69780, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8068, '578', '578', 'TELKOMSEL', 'Telkomsel Telepon 130.000', 'Telepon 6250 menit sesama, 250 menit semua op (30 Hari)', 105395, 105205, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8069, '579', '579', 'TELKOMSEL', 'Telkomsel Telepon 170 menit sesama, 30 menit semua op 3 Hari', 'Telepon 170 menit sesama, 30 menit semua op 3 Hari', 10400, 10210, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8070, '580', '580', 'TELKOMSEL', 'Telkomsel Telepon 350 menit sesama, 50 menit semua op 7 Hari', 'Telepon 350 menit sesama, 50 menit semua op 7 Hari', 20370, 20180, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8071, '581', '581', 'TELKOMSEL', 'Telepon 1000 menit sesama, 100 menit semua op (30 Hari)', 'Telepon 1000 menit sesama, 100 menit semua op (30 Hari)', 50320, 50130, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8072, '583', '583', 'TELKOMSEL', 'Telkomsel 1000 SMS ke semua op 5 hari', 'Paket SMS - 1000 SMS ke semua 5 hari', 4895, 4705, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8073, '584', '584', 'TELKOMSEL', 'Telkomsel 1000 SMS ke semua op 15 hari', 'Paket SMS - 1000 SMS ke semua 15 hari', 15770, 15580, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8074, '585', '585', 'TELKOMSEL', 'Telkomsel 2000 SMS ke semua op 30 hari', 'Paket SMS - 2000 SMS ke semua 30 hari', 25765, 25575, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8075, '586', '586', 'INDOSAT', 'Indosat telepon unlimited sesama 30 Hari', 'Indosat telepon unlimited sesama 30 Hari', 10295, 10105, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8076, '587', '587', 'INDOSAT', '300 SMS sesama Indosat + 100 SMS operator lain', '300 SMS sesama Isat + 100 SMS operator lain', 6425, 6235, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8077, '588', '588', 'INDOSAT', '600 SMS sesama Isat + 200 SMS operator lain', '600 SMS sesama Isat + 200 SMS operator lain', 11969, 11779, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8078, '589', '589', 'INDOSAT', '1250 SMS sesama Isat + 250 SMS operator lain', '1250 SMS sesama Isat + 250 SMS operator lain 30 hari', 10494, 10304, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8079, '590', '590', 'INDOSAT', '2000 SMS sesama Isat + 500 SMS operator lain', '2000 SMS sesama Isat + 500 SMS operator lain', 27970, 27780, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8080, '591', '591', 'INDOSAT', 'Indosat telepon 1000 Menit Sesama Masa Aktif Paket 1 Hari', '-', 2495, 2305, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP');
INSERT INTO `layanan_pulsa` (`id`, `service_id`, `provider_id`, `operator`, `layanan`, `deskripsi`, `harga`, `harga_api`, `status`, `provider`, `tipe`, `server`) VALUES
(8081, '592', '592', 'INDOSAT', 'Indosat telepon unlimited sesama + 30 Menit All Operator Masa Aktif Paket 7 Hari', 'Indosat telepon unlimited sesama + 30 Menit All Operator Masa Aktif Paket 7 Hari', 12945, 12755, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8082, '593', '593', 'INDOSAT', 'Indosat telepon unlimited sesama + 50 Menit All Operator Masa Aktif Paket 7 Hari', '-', 17270, 17080, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8083, '594', '594', 'INDOSAT', 'Indosat telepon unlimited sesama + 60 Menit All Operator Masa Aktif Paket 30 Hari', 'Indosat telepon unlimited sesama + 60 Menit All Operator Masa Aktif Paket 30 Hari', 24420, 24230, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8084, '595', '595', 'INDOSAT', 'Indosat telepon unlimited sesama + 250 Menit All Operator  Masa Aktif Paket 30 Hari', '-', 48070, 47880, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8085, '596', '596', 'TRI', 'Tri Telepon 20 Menit Ke Semua Op 7 Hari', '-', 5445, 5255, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8086, '597', '597', 'TRI', 'Tri Telepon 60 Menit Ke Semua Op 7 Hari', '-', 15470, 15280, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8087, '598', '598', 'TRI', 'Tri Telepon 150 Menit Ke Semua Op 30 Hari', '-', 30490, 30300, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8088, '605', '605', 'XL', 'AnyNet 300 Menit 90 Hari', 'Bebas telepon ke semua operator selamat 300 Menit. Masa aktif 90 Hari.', 75370, 75180, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8089, '604', '604', 'XL', 'AnyNet 500 Menit 90 Hari', 'Bebas telepon ke semua operator selamat 500 Menit. Masa aktif 90 Hari.', 131970, 131780, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8090, '603', '603', 'XL', 'AnyNet 500 Menit 30 Hari', 'Bebas telepon ke semua operator selamat 500 Menit. Masa aktif 30 Hari.', 120370, 120180, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8091, '602', '602', 'XL', 'AnyNet 325 Menit 30 Hari', 'Bebas telepon ke semua operator selamat 325 Menit. Masa aktif 30 Hari.', 71620, 71430, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8092, '601', '601', 'XL', 'AnyNet 250 Menit 30 Hari', 'Bebas telepon ke semua operator selamat 250 Menit. Masa aktif 30 Hari.', 35370, 35180, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8093, '600', '600', 'XL', 'AnyNet 150 Menit 30 Hari', 'Bebas telepon ke semua operator selamat 150 Menit. Masa aktif 30 Hari.', 25370, 25180, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8094, '599', '599', 'XL', 'AnyNet 400 Menit 7 Hari', 'Bebas telepon ke semua operator selamat 400 Menit (370 Menit ke XL + 30 Menit ke Operator Lain). Masa aktif 7 Hari.', 10370, 10180, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8095, '470', '470', 'CHINA TOPUP', 'China 30', 'China 30', 100370, 100180, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8096, '471', '471', 'CHINA TOPUP', 'China 50', 'China 50', 150370, 150180, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8097, '472', '472', 'CHINA TOPUP', 'China 100', 'China 100', 300370, 300180, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8098, '473', '473', 'MAXIS', 'Maxis 5', 'Maxis 5', 20245, 20055, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8099, '474', '474', 'MAXIS', 'Maxis 10', 'Maxis 10', 40120, 39930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8100, '475', '475', 'MAXIS', 'Maxis 20', 'Maxis 20', 79870, 79680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8101, '476', '476', 'MAXIS', 'Maxis 30', 'Maxis 30', 119620, 119430, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8102, '477', '477', 'MAXIS', 'Maxis 50', 'Maxis 50', 199120, 198930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8103, '478', '478', 'MAXIS', 'Maxis 100', 'Maxis 100', 397870, 397680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8104, '509', '509', 'SMART PINOY', 'SMART PINOY 4', 'SMART PINOY 4', 41320, 41130, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8105, '510', '510', 'SMART PINOY', 'SMART PINOY 5', 'SMART PINOY 5', 51558, 51368, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8106, '511', '511', 'SMART PINOY', 'SMART PINOY 8', 'SMART PINOY 8', 82270, 82080, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8107, '512', '512', 'SMART PINOY', 'SMART PINOY 12', 'SMART PINOY 12', 123220, 123030, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8108, '479', '479', 'DIGI', 'Digi 5', 'Digi 5', 20245, 20055, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8109, '480', '480', 'DIGI', 'Digi 10', 'Digi 10', 40120, 39930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8110, '481', '481', 'DIGI', 'Digi 25', 'Digi 25', 99745, 99555, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8111, '482', '482', 'DIGI', 'Digi 30', 'Digi 30', 119620, 119430, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8112, '483', '483', 'DIGI', 'Digi 50', 'Digi 50', 199120, 198930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8113, '484', '484', 'DIGI', 'Digi 100', 'Digi 100', 397870, 397680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8114, '485', '485', 'CELCOM', 'Celcom 5', 'Celcom 5', 20245, 20055, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8115, '486', '486', 'CELCOM', 'Celcom 10', 'Celcom 10', 40120, 39930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8116, '487', '487', 'CELCOM', 'Celcom 15', 'Celcom 15', 59995, 59805, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8117, '488', '488', 'CELCOM', 'Celcom 20', 'Celcom 20', 79870, 79680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8118, '489', '489', 'CELCOM', 'Celcom 25', 'Celcom 25', 99745, 99555, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8119, '490', '490', 'CELCOM', 'Celcom 30', 'Celcom 30', 119620, 119430, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8120, '491', '491', 'CELCOM', 'Celcom 50', 'Celcom 50', 199120, 198930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8121, '492', '492', 'CELCOM', 'Celcom 100', 'Celcom 100', 397870, 397680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8122, '493', '493', 'UMOBILE', 'Umobile 5', 'Umobile 5', 20245, 20055, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8123, '494', '494', 'UMOBILE', 'Umobile 10', 'Umobile 10', 40120, 39930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8124, '495', '495', 'UMOBILE', 'Umobile 15', 'Umobile 15', 59995, 59805, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8125, '496', '496', 'UMOBILE', 'Umobile 20', 'Umobile 20', 79870, 79680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8126, '497', '497', 'UMOBILE', 'Umobile 25', 'Umobile 25', 99745, 99555, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8127, '498', '498', 'UMOBILE', 'Umobile 30', 'Umobile 30', 119620, 119430, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8128, '499', '499', 'UMOBILE', 'Umobile 50', 'Umobile 50', 199120, 198930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8129, '500', '500', 'UMOBILE', 'Umobile 100', 'Umobile 100', 397870, 397680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8130, '501', '501', 'TUNETALK', 'Tunetalk 5', 'Tunetalk 5', 20245, 20055, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8131, '502', '502', 'TUNETALK', 'Tunetalk 10', 'Tunetalk 10', 40120, 39930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8132, '503', '503', 'TUNETALK', 'Tunetalk 15', 'Tunetalk 15', 59995, 59805, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8133, '504', '504', 'TUNETALK', 'Tunetalk 20', 'Tunetalk 20', 79870, 79680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8134, '505', '505', 'TUNETALK', 'Tunetalk 25', 'Tunetalk 25', 99745, 99555, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8135, '506', '506', 'TUNETALK', 'Tunetalk 30', 'Tunetalk 30', 119620, 119430, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8136, '507', '507', 'TUNETALK', 'Tunetalk 50', 'Tunetalk 50', 199120, 198930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8137, '508', '508', 'TUNETALK', 'Tunetalk 100', 'Tunetalk 100', 397870, 397680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8138, '513', '513', 'Philippines - SMART', 'SMART 30', 'SMART 30', 14770, 14580, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8139, '514', '514', 'Philippines - SMART', 'SMART 50', 'SMART 50', 22450, 22260, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8140, '515', '515', 'Philippines - SMART', 'SMART 100', 'SMART 100', 38770, 38580, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8141, '516', '516', 'Philippines - SMART', 'SMART 200', 'SMART 200', 67570, 67380, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8142, '517', '517', 'Philippines - SMART', 'SMART 300', 'SMART 300', 105970, 105780, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8143, '518', '518', 'Philippines - SMART', 'SMART 500', 'SMART 500', 163570, 163380, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8144, '519', '519', 'GLOBE', 'Globe 30', 'Globe 30', 14770, 14580, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8145, '520', '520', 'GLOBE', 'Globe 50', 'Globe 50', 22450, 22260, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8146, '521', '521', 'GLOBE', 'Globe 100', 'Globe 100', 38770, 38580, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8147, '522', '522', 'GLOBE', 'Globe 200', 'Globe 200', 67570, 67380, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8148, '523', '523', 'GLOBE', 'Globe 300', 'Globe 300', 105970, 105780, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8149, '524', '524', 'GLOBE', 'Globe 500', 'Globe 500', 163570, 163380, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8150, '525', '525', 'SUN TELECOM', 'Sun Telecom 30', 'Sun Telecom 30', 14770, 14580, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8151, '526', '526', 'SUN TELECOM', 'Sun Telecom 50', 'Sun Telecom 50', 22450, 22260, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8152, '527', '527', 'SUN TELECOM', 'Sun Telecom 100', 'Sun Telecom 100', 38770, 38580, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8153, '528', '528', 'SUN TELECOM', 'Sun Telecom 200', 'Sun Telecom 200', 67570, 67380, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8154, '529', '529', 'SUN TELECOM', 'Sun Telecom 300', 'Sun Telecom 300', 105970, 105780, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8155, '530', '530', 'SUN TELECOM', 'Sun Telecom 500', 'Sun Telecom 500', 163570, 163380, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8156, '532', '532', 'XOX', 'XOX 10', 'XOX 10', 40120, 39930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8157, '533', '533', 'XOX', 'XOX 15', 'XOX 15', 59995, 59805, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8158, '534', '534', 'XOX', 'XOX 20', 'XOX 20', 79870, 79680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8159, '537', '537', 'XOX', 'XOX 50', 'XOX 50', 199120, 198930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8160, '538', '538', 'XOX', 'XOX 100', 'XOX 100', 397870, 397680, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8161, '539', '539', 'SINGTEL', 'Singtel 5', 'Singtel 5', 51558, 51368, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8162, '540', '540', 'SINGTEL', 'Singtel 10', 'Singtel 10', 102745, 102555, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8163, '541', '541', 'SINGTEL', 'Singtel 15', 'Singtel 15', 153933, 153743, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8164, '542', '542', 'SINGTEL', 'Singtel 18', 'Singtel 18', 184645, 184455, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8165, '543', '543', 'SINGTEL', 'Singtel 20', 'Singtel 20', 205120, 204930, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8166, '544', '544', 'SINGTEL', 'Singtel 22', 'Singtel 22', 225595, 225405, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8167, '545', '545', 'SINGTEL', 'Singtel 28', 'Singtel 28', 287020, 286830, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8168, '546', '546', 'SINGTEL', 'Singtel 50', 'Singtel 50', 512245, 512055, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8169, '547', '547', 'STARHUB', 'Starhub 2', 'Starhub 2', 20845, 20655, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8170, '548', '548', 'STARHUB', 'Starhub 5', 'Starhub 5', 51558, 51368, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8171, '549', '549', 'STARHUB', 'Starhub 10', 'Starhub 10', 102745, 102555, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8172, '550', '550', 'STARHUB', 'Starhub 15', 'Starhub 15', 153933, 153743, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8173, '551', '551', 'M1', 'M1 2', 'M1 2', 20845, 20655, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8174, '552', '552', 'M1', 'M1 5', 'M1 5', 51558, 51368, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8175, '553', '553', 'M1', 'M1 10', 'M1 10', 102745, 102555, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8176, '554', '554', 'M1', 'M1 15', 'M1 15', 153933, 153743, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8177, '555', '555', 'M1', 'M1 18', 'M1 18', 184645, 184455, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8178, '556', '556', 'THAILAND TOPUP', 'Thailand Topup 50', 'Thailand Topup 50', 30370, 30180, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8179, '557', '557', 'THAILAND TOPUP', 'Thailand Topup 100', 'Thailand Topup 100', 60370, 60180, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8180, '558', '558', 'THAILAND TOPUP', 'Thailand Topup 200', 'Thailand Topup 200', 120370, 120180, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8181, '559', '559', 'THAILAND TOPUP', 'Thailand Topup 300', 'Thailand Topup 300', 170370, 170180, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8182, '560', '560', 'VIETNAM TOPUP', 'Vietnam 10', '-', 14920, 14730, 'Normal', 'DG-PULSA', 'Vietnam Topup', 'TOP UP'),
(8183, '561', '561', 'VIETNAM TOPUP', 'Vietnam 20', '-', 29470, 29280, 'Normal', 'DG-PULSA', 'Vietnam Topup', 'TOP UP'),
(8184, '562', '562', 'VIETNAM TOPUP', 'Vietnam 30', '-', 39170, 38980, 'Normal', 'DG-PULSA', 'Vietnam Topup', 'TOP UP'),
(8185, '563', '563', 'VIETNAM TOPUP', 'Vietnam 50', '-', 58570, 58380, 'Normal', 'DG-PULSA', 'Vietnam Topup', 'TOP UP'),
(8186, '564', '564', 'VIETNAM TOPUP', 'Vietnam 100', '-', 97370, 97180, 'Normal', 'DG-PULSA', 'Vietnam Topup', 'TOP UP'),
(8187, '565', '565', 'VIETNAM TOPUP', 'Vietnam 200', '-', 170120, 169930, 'Normal', 'DG-PULSA', 'Vietnam Topup', 'TOP UP'),
(8188, '566', '566', 'VIETNAM TOPUP', 'Vietnam 300', '-', 242870, 242680, 'Normal', 'DG-PULSA', 'Vietnam Topup', 'TOP UP'),
(8189, '531', '531', 'XOX', 'XOX 5', 'XOX 5', 20245, 20055, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8190, '535', '535', 'XOX', 'XOX 25', 'XOX 25', 99745, 99555, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8191, '536', '536', 'XOX', 'XOX 30', 'XOX 30', 119620, 119430, 'Normal', 'DG-PULSA', 'Pulsa Internasional', 'TOP UP'),
(8192, '582', '582', 'TELKOMSEL', 'Telkomsel Paket Telepon 9000 menit On Net Masa Aktif 30 Hari', '-', 97345, 97155, 'Normal', 'DG-PULSA', 'Paket SMS Telpon', 'TOP UP'),
(8193, '417', '417', 'MOBILE LEGEND', 'MOBILELEGEND - 2010 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 485370, 485180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8194, '418', '418', 'MOBILE LEGEND', 'MOBILELEGEND - 36 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 10070, 9880, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8195, '419', '419', 'MOBILE LEGEND', 'MOBILELEGEND - 74 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 19770, 19580, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8196, '420', '420', 'MOBILE LEGEND', 'MOBILELEGEND - 568 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 145870, 145680, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8197, '421', '421', 'MOBILE LEGEND', 'MOBILELEGEND - 1159 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 291370, 291180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8198, '422', '422', 'MOBILE LEGEND', 'MOBILELEGEND - 12 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 3765, 3575, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8199, '435', '435', 'MOBILE LEGEND', 'MOBILELEGEND - 28 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 8130, 7940, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8200, '424', '424', 'MOBILE LEGEND', 'MOBILELEGEND - 85 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 22680, 22490, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8201, '425', '425', 'MOBILE LEGEND', 'MOBILELEGEND - 875 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 222870, 222680, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8202, '426', '426', 'MOBILE LEGEND', 'MOBILELEGEND - 3 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 1825, 1635, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8203, '427', '427', 'MOBILE LEGEND', 'MOBILELEGEND - 59 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 15890, 15700, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8204, '428', '428', 'MOBILE LEGEND', 'MOBILELEGEND - 170 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 44990, 44800, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8205, '429', '429', 'MOBILE LEGEND', 'MOBILELEGEND - 185 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 48870, 48680, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8206, '430', '430', 'MOBILE LEGEND', 'MOBILELEGEND - 222 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 58570, 58380, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8207, '431', '431', 'MOBILE LEGEND', 'MOBILELEGEND - 296 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 77970, 77780, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8208, '432', '432', 'MOBILE LEGEND', 'MOBILELEGEND - 370 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 97370, 97180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8209, '433', '433', 'MOBILE LEGEND', 'MOBILELEGEND - 4830 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 1164370, 1164180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8210, '434', '434', 'MOBILE LEGEND', 'MOBILELEGEND - 6050 Diamond', 'no pelanggan = gabungan antara user_id dan zone_id', 1455370, 1455180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8211, '437', '437', 'MOBILE LEGEND', 'Startlight Member Plus', '-', 290400, 290210, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8212, '438', '438', 'MOBILE LEGEND', 'Twilight Pass', '-', 145870, 145680, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8213, '439', '439', 'FREE FIRE', 'Free Fire 20 Diamond', 'Free Fire 20 Diamond', 4270, 4080, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8214, '440', '440', 'FREE FIRE', 'Free Fire 50 Diamond', 'Free Fire 50 Diamond', 7970, 7780, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8215, '441', '441', 'FREE FIRE', 'Free Fire 70 Diamond', 'Free Fire 70 Diamond', 9895, 9705, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8216, '442', '442', 'FREE FIRE', 'Free Fire 100 Diamond', 'Free Fire 100 Diamond', 16370, 16180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8217, '443', '443', 'FREE FIRE', 'Free Fire 140 Diamond', 'Free Fire 140 Diamond', 19370, 19180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8218, '444', '444', 'FREE FIRE', 'Free Fire 210 Diamond', 'Free Fire 210 Diamond', 33370, 33180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8219, '445', '445', 'FREE FIRE', 'Free Fire 355 Diamond', 'Free Fire 355 Diamond', 47570, 47380, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8220, '446', '446', 'FREE FIRE', 'Free Fire 510 Diamond', 'Free Fire 510 Diamond', 80370, 80180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8221, '448', '448', 'FREE FIRE', 'Free Fire 1075 Diamond', 'Free Fire 1075 Diamond', 172870, 172680, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8222, '447', '447', 'FREE FIRE', 'Free Fire 720 Diamond', 'Free Fire 720 Diamond', 94870, 94680, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8223, '449', '449', 'FREE FIRE', 'Free Fire 1450 Diamond', 'Free Fire 1450 Diamond', 189370, 189180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8224, '450', '450', 'FREE FIRE', 'Free Fire 2000 Diamond', 'Free Fire 2000 Diamond', 262470, 262280, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8225, '451', '451', 'FREE FIRE', 'Free Fire 2180 Diamond', 'Free Fire 2180 Diamond', 287470, 287280, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8226, '452', '452', 'FREE FIRE', 'Free Fire 3640 Diamond', 'Free Fire 3640 Diamond', 483095, 482905, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8227, '453', '453', 'Call of Duty MOBILE', 'COD 26 + 5 CP', 'Call of Duty Mobile 26 + 5 CP', 5220, 5030, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8228, '454', '454', 'Call of Duty MOBILE', 'COD 53 + 9 CP', 'Call of Duty Mobile 53 + 9 CP', 9375, 9185, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8229, '455', '455', 'Call of Duty MOBILE', 'COD 106 + 21 CP', 'Call of Duty Mobile 106 + 21 CP', 18380, 18190, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8230, '456', '456', 'Call of Duty MOBILE', 'COD 264 + 53 CP', 'Call of Duty Mobile 264 + 53 CP', 48870, 48680, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8231, '457', '457', 'Call of Duty MOBILE', 'COD 528 + 106 CP', 'Call of Duty Mobile 528 + 106 CP', 90395, 90205, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8232, '458', '458', 'Call of Duty MOBILE', 'COD 1056 + 317 CP', 'Call of Duty Mobile 1056 + 317 CP', 194370, 194180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8233, '459', '459', 'Call of Duty MOBILE', 'COD 1584 + 475 CP', 'Call of Duty Mobile 1584 + 475 CP', 291370, 291180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8234, '460', '460', 'Call of Duty MOBILE', 'COD 2640 + 924 CP', 'Call of Duty Mobile 2640 + 924 CP', 485370, 485180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8235, '461', '461', 'Lords Mobile', 'Lords Mobile 67 Diamonds', 'Lords Mobile 67 Diamonds', 10070, 9880, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8236, '462', '462', 'Lords Mobile', 'Lords Mobile 134 Diamonds', 'Lords Mobile 134 Diamonds', 19770, 19580, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8237, '463', '463', 'Lords Mobile', 'Lords Mobile 335 Diamonds', 'Lords Mobile 335 Diamonds', 48870, 48680, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8238, '464', '464', 'Lords Mobile', 'Lords Mobile 670 Diamonds', 'Lords Mobile 670 Diamonds', 97370, 97180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8239, '465', '465', 'Lords Mobile', 'Lords Mobile 2011 Diamonds', 'Lords Mobile 2011 Diamonds', 291370, 291180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8240, '466', '466', 'Lords Mobile', 'Lords Mobile 3352 Diamonds', 'Lords Mobile 3352 Diamonds', 485370, 485180, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8241, '613', '613', 'DANA', 'DANA Rp 10.000', '-', 10470, 10280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8242, '614', '614', 'DANA', 'DANA Rp 20.000', '-', 20445, 20255, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8243, '615', '615', 'DANA', 'DANA Rp 25.000', '-', 25445, 25255, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8244, '616', '616', 'DANA', 'DANA Rp 30.000', '-', 30445, 30255, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8245, '617', '617', 'DANA', 'DANA Rp 40.000', '-', 40445, 40255, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8246, '618', '618', 'DANA', 'DANA Rp 50.000', '-', 50445, 50255, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8247, '619', '619', 'DANA', 'DANA Rp 70.000', '-', 70570, 70380, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8248, '620', '620', 'DANA', 'DANA Rp 80.000', '-', 80570, 80380, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8249, '622', '622', 'DANA', 'DANA Rp 300.000', '-', 300470, 300280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8250, '621', '621', 'DANA', 'DANA Rp 100.000', '-', 100445, 100255, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8251, '623', '623', 'LinkAja', 'LinkAja Rp 10.000', '-', 10470, 10280, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8252, '624', '624', 'LinkAja', 'LinkAja Rp 20.000', '-', 20465, 20275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8253, '625', '625', 'LinkAja', 'LinkAja Rp 25.000', '-', 25465, 25275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8254, '626', '626', 'LinkAja', 'LinkAja Rp 30.000', '-', 30465, 30275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8255, '627', '627', 'LinkAja', 'LinkAja Rp 40.000', '-', 40465, 40275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8256, '628', '628', 'LinkAja', 'LinkAja Rp 50.000', '-', 50465, 50275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8257, '629', '629', 'LinkAja', 'LinkAja Rp 70.000', '-', 70645, 70455, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8258, '630', '630', 'LinkAja', 'LinkAja Rp 80.000', '-', 80465, 80275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8259, '631', '631', 'LinkAja', 'LinkAja Rp 100.000', '-', 100465, 100275, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8260, '606', '606', 'MANDIRI E-TOLL', 'Mandiri E-Toll 20.000', '-', 20970, 20780, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8261, '607', '607', 'MANDIRI E-TOLL', 'Mandiri E-Toll 25.000', '-', 25970, 25780, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8262, '608', '608', 'MANDIRI E-TOLL', 'Mandiri E-Toll 50.000', '-', 50970, 50780, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8263, '609', '609', 'MANDIRI E-TOLL', 'Mandiri E-Toll 75.000', '-', 76145, 75955, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8264, '610', '610', 'MANDIRI E-TOLL', 'Mandiri E-Toll 100.000', '-', 100970, 100780, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8265, '611', '611', 'MANDIRI E-TOLL', 'Mandiri E-Toll 150.000', '-', 151345, 151155, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8266, '612', '612', 'MANDIRI E-TOLL', 'Mandiri E-Toll 200.000', '-', 201145, 200955, 'Normal', 'DG-PULSA', 'E-Money', 'TOP UP'),
(8267, '277', '277', 'PLN', 'PLN 500.000', 'PLN 500.000', 500390, 500200, 'Gangguan', 'DG-PULSA', 'PLN', 'TOP UP'),
(8268, '633', '633', 'XL', 'XL Data 2GB 30 Hari', 'XL Data 2GB 30 Hari', 25395, 25205, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8269, '634', '634', 'XL', 'XL Data 3GB 30 Hari', 'XL Data 3GB 30 Hari', 37895, 37705, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8270, '635', '635', 'XL', 'XL Data 4GB 30 Hari', 'XL Data 4GB 30 Hari', 50395, 50205, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8271, '636', '636', 'XL', 'XL Data 5GB 30 Hari', 'XL Data 5GB 30 Hari', 56370, 56180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8272, '637', '637', 'XL', 'XL Data 6GB 30 Hari', 'XL Data 6GB 30 Hari', 88270, 88080, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8273, '638', '638', 'XL', 'XL Data 8GB 30 Hari', 'XL Data 8GB 30 Hari', 90370, 90180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8274, '632', '632', 'XL', 'XL Xtra Rejeki 65.000', 'Internet 3GB, WhatsApp/ LINE/ GO-JEK/ Waze unlimited, YouTube Unlimited (01:00-06:00 WIB), berlaku 30 Hari', 65370, 65180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8275, '639', '639', 'TELKOMSEL', 'Telkomsel Data 1GB + Youtube + Game + Voucher Mobile legends', 'Telkomsel Data 1GB + 500MB Youtube + 30GB Games + Voucher Mobile legends 56 Diamond, 30 Hari', 24380, 24190, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8276, '640', '640', 'TELKOMSEL', 'Telkomsel Data 1GB + Youtube + Game + Voucher Freefire', 'Telkomsel Data 1GB + 500MB Youtube + 30GB Games + Voucher Freefire 50 Diamond, 30 Hari', 24380, 24190, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8277, '641', '641', 'TELKOMSEL', '500 MB semua jaringan + bebas zona', '-', 14370, 14180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8278, '642', '642', 'TELKOMSEL', '750 MB semua jaringan + bebas zona', '-', 18970, 18780, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8279, '643', '643', 'TELKOMSEL', '1 GB semua jaringan + bebas zona', '-', 20295, 20105, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8280, '644', '644', 'TELKOMSEL', 'Telkomsel Data Flash 100 MB', '24 jam 7 hari', 5170, 4980, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8281, '645', '645', 'TELKOMSEL', '100 MB semua jaringan + bebas zona', '24 jam 30 hari', 8370, 8180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8282, '646', '646', 'TELKOMSEL', '250 MB semua jaringan + bebas zona', '24 jam 30 hari', 10370, 10180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8283, '647', '647', 'TELKOMSEL', 'Telkomsel Data Bulk 5 GB', 'Telkomsel 5 GB + 2GB OMG 30 Hari', 65520, 65330, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8284, '648', '648', 'TELKOMSEL', 'Telkomsel Data Bulk 8 GB', 'Telkomsel 8 GB + 2GB OMG 30 Hari', 87345, 87155, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8285, '649', '649', 'TELKOMSEL', 'Telkomsel Data Bulk 12 GB', 'Telkomsel 12 GB + 2 GB OMG 30 Hari', 97370, 97180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8286, '650', '650', 'TELKOMSEL', 'Telkomsel Data Bulk 17 GB', 'Telkomsel 17 GB + 2 GB OMG + 300 menit telepon + 100 sms (30 Hari)', 126370, 126180, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8287, '651', '651', 'TELKOMSEL', 'Telkomsel Data Bulk 25 GB', 'Telkomsel 25 GB + 2 GB OMG 30 Hari', 150495, 150305, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8288, '652', '652', 'TELKOMSEL', 'Telkomsel Data Bulk 28 GB', 'Telkomsel 28 GB + 2 GB OMG + 600 menit telepon + 200 sms (30 Hari)', 165520, 165330, 'Normal', 'DG-PULSA', 'Data', 'TOP UP'),
(8289, '653', '653', 'FREE FIRE', 'Free Fire 12 Diamond', 'Free Fire 12 Diamond', 2300, 2110, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8290, '654', '654', 'FREE FIRE', 'Free Fire 55 Diamond', 'Free Fire 55 Diamond', 9320, 9130, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8291, '655', '655', 'FREE FIRE', 'Free Fire 95 Diamond', 'Free Fire 95 Diamond', 15770, 15580, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8292, '657', '657', 'FREE FIRE', 'Free Fire 130 Diamond', 'Free Fire 130 Diamond', 21970, 21780, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8293, '658', '658', 'FREE FIRE', 'Free Fire 1200 Diamond', 'Free Fire 1200 Diamond', 198870, 198680, 'Normal', 'DG-PULSA', 'Games', 'TOP UP'),
(8294, '659', '659', 'TELKOMSEL', 'Telkomsel 2.000', 'Pulsa Telkomsel Rp 2.000', 3085, 2895, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8295, '660', '660', 'TELKOMSEL', 'Telkomsel 3.000', 'Pulsa Telkomsel Rp 3.000', 4000, 3810, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8296, '661', '661', 'AXIS', 'Axis 5.000', 'Pulsa Axis Rp 5.000', 5730, 5540, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8297, '662', '662', 'AXIS', 'Axis 10.000', 'Pulsa Axis Rp 10.000', 10630, 10440, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8298, '676', '676', 'by.U', 'by.U 5.000', 'pulsa by.U Rp 5.000', 5425, 5235, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8299, '675', '675', 'by.U', 'by.U 20.000', 'pulsa by.U Rp 20.000', 20395, 20205, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8300, '674', '674', 'by.U', 'by.U 10.000', 'pulsa by.U Rp 10.000', 10465, 10275, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8301, '664', '664', 'by.U', 'by.U 25.000', 'pulsa by.U Rp 25.000', 25180, 24990, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8302, '673', '673', 'by.U', 'by.U 50.000', 'pulsa by.U Rp 50.000', 49940, 49750, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8303, '672', '672', 'by.U', 'by.U 100.000', 'pulsa by.U Rp 100.000', 97870, 97680, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8304, '671', '671', 'by.U', 'by.U 6.000', '-', 6425, 6235, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8305, '670', '670', 'by.U', 'by.U 1.000', '-', 1425, 1235, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8306, '669', '669', 'by.U', 'by.U 2.000', '-', 2425, 2235, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8307, '668', '668', 'by.U', 'by.U 3.000', '-', 3425, 3235, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8308, '667', '667', 'by.U', 'by.U 4.000', '-', 4425, 4235, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8309, '666', '666', 'by.U', 'by.U 7.000', '-', 7425, 7235, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8310, '665', '665', 'by.U', 'by.U 8.000', '-', 8570, 8380, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP'),
(8311, '663', '663', 'by.U', 'by.U 9.000', '-', 9425, 9235, 'Normal', 'DG-PULSA', 'Pulsa', 'TOP UP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan_sosmed`
--

CREATE TABLE `layanan_sosmed` (
  `id` int(10) NOT NULL,
  `service_id` int(10) NOT NULL,
  `kategori` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `layanan` text COLLATE utf8_swedish_ci NOT NULL,
  `catatan` text COLLATE utf8_swedish_ci NOT NULL,
  `min` int(10) NOT NULL,
  `max` int(10) NOT NULL,
  `harga` double NOT NULL,
  `harga_api` double NOT NULL,
  `status` enum('Aktif','Tidak Aktif') COLLATE utf8_swedish_ci NOT NULL,
  `provider_id` int(10) NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `tipe` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `layanan_sosmed`
--

INSERT INTO `layanan_sosmed` (`id`, `service_id`, `kategori`, `layanan`, `catatan`, `min`, `max`, `harga`, `harga_api`, `status`, `provider_id`, `provider`, `tipe`) VALUES
(10454, 29, '', 'instagram view Auto 1 [INSTANT]', 'INSTANT', 100, 3000000, 700, 700, 'Aktif', 29, 'MEDANPEDIA', 'Sosial Media'),
(10455, 32, 'Instagram Views', 'instagram view Versi 1 [ Unlimited ] [ Superfast ]', '[ Unlimited ] [ Superfast ]', 200, 10000000, 2100, 2100, 'Aktif', 32, 'MEDANPEDIA', 'Sosial Media'),
(10456, 101, '', 'SoundCloud Plays [1.5M]', '  Real\r\n0-1 Hour Start!\r\n50K - 100K/Day\r\nMultiple of 100\r\nMinimum 100', 100, 1500000, 1400, 1400, 'Aktif', 101, 'MEDANPEDIA', 'Sosial Media'),
(10457, 102, 'SoundCloud', 'SoundCloud Plays [10M]', 'Real\r\n0-1 Hour Start!\r\n10K - 100K/Day\r\nMinimum 20', 20, 10000000, 2100, 2100, 'Aktif', 102, 'MEDANPEDIA', 'Sosial Media'),
(10458, 105, 'SoundCloud', 'Soundcloud - Likes ( S1 ) [ HQ ] ( INSTANT )', ' HQ Users, Non Drop. Order Will Be Start Instant.', 20, 40000, 28000, 28000, 'Aktif', 105, 'MEDANPEDIA', 'Sosial Media'),
(10459, 107, '', 'Telegram Channel Members [MAX 25K]', 'Only For Channels\r\nReal\r\n0-1 Hour Start!\r\n24-48 Hours Delivery\r\nMinimum 100', 100, 25000, 35000, 35000, 'Aktif', 107, 'MEDANPEDIA', 'Sosial Media'),
(10460, 108, 'Telegram', 'Telegram Post Views [10K] [Last 5]', 'Views Will Be Added To Your Last 5 Posts\r\nReal\r\n0-1 Hour Start!\r\n24 Hours Delivery\r\nMinimum 100', 100, 10000, 21000, 21000, 'Aktif', 108, 'MEDANPEDIA', 'Sosial Media'),
(10461, 113, '', 'Google Plus - Followers | Circles ( Max 5000)', 'Real\r\n0-1 Hour Start!\r\n6-24 Hours Finish!\r\nMinimum 100', 100, 5000, 168000, 168000, 'Aktif', 113, 'MEDANPEDIA', 'Sosial Media'),
(10462, 114, 'Google', 'Google Post +1 [ 2K ]', 'Real\r\n0-1 Hour Start!\r\n1-24 Hours Finish!\r\nMinimum 20', 20, 2000, 168000, 168000, 'Aktif', 114, 'MEDANPEDIA', 'Sosial Media'),
(10463, 115, '', 'Instagram Story Views [20K] [LAST STORY ONLY]', 'Views On The Last Story Posted ONLY !\r\nUsername Only\r\n0-1 Hour Start!\r\nUltra Fast!\r\nMinimum 20', 20, 20000, 3920, 3920, 'Aktif', 115, 'MEDANPEDIA', 'Sosial Media'),
(10464, 116, 'Instagram Story Views', 'Instagram - Story Views S1', '[ Username Only ] INSTANT', 100, 1000000, 8400, 8400, 'Aktif', 116, 'MEDANPEDIA', 'Sosial Media'),
(10465, 117, '', 'Instagram Live Video Likes ', 'Username Only\r\nNo Refill / No Refund\r\nLikes On Live Video\r\nFast Delivery\r\nMinimum 200', 200, 10000, 8400, 8400, 'Aktif', 117, 'MEDANPEDIA', 'Sosial Media'),
(10466, 118, 'Instagram Live Video', 'Instagram - Live Video Views', ' [ Username Only ] INSTANT', 25, 100000, 105000, 105000, 'Aktif', 118, 'MEDANPEDIA', 'Sosial Media'),
(10467, 120, '', 'Instagram Impressions [10M] [EXPLORE - HOME - LOCATION - PROFILE]', 'Impressions showing from ALL in the statistics (Explore, Home, Location ,Etc..)!\r\nInstant Start!\r\nFast Delivery!\r\nMinimum 100\r\nMaximum 10M', 100, 20000000, 2660, 2660, 'Aktif', 120, 'MEDANPEDIA', 'Sosial Media'),
(10468, 121, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram Impressions [1M]', 'Real\r\nInstant Delivery!\r\nMinimum 100', 100, 1000000, 2100, 2100, 'Aktif', 121, 'MEDANPEDIA', 'Sosial Media'),
(10469, 123, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram Saves ', 'No Refill / No Refund\r\n0-1 Hour Start!\r\n15K/Day\r\nMinimum 10', 10, 15000, 5600, 5600, 'Aktif', 123, 'MEDANPEDIA', 'Sosial Media'),
(10470, 138, '', 'Twitter Views Server 1 [1M]', 'Refill (30 Days Maximum) \r\n0-1 Hour Start! \r\n10K - 100K/Day \r\nMinimum 100', 100, 1000000, 14000, 14000, 'Aktif', 138, 'MEDANPEDIA', 'Sosial Media'),
(10471, 139, 'Twitter Views & Impressions', 'Twitter Impressions Server 1 [1M]', 'Refill (30 Days Maximum) \r\n0-1 Hour Start! \r\n10K - 100K/Day \r\nMinimum 100', 100, 1000000, 35000, 35000, 'Aktif', 139, 'MEDANPEDIA', 'Sosial Media'),
(10472, 141, '', 'Linkedin - Followers AUTO 1', 'instan', 100, 1000000, 198800, 198800, 'Aktif', 141, 'MEDANPEDIA', 'Sosial Media'),
(10473, 143, '', 'Website Traffic Server 2 [10M]', 'Super Cepat', 100, 10000000, 5600, 5600, 'Aktif', 143, 'MEDANPEDIA', 'Sosial Media'),
(10474, 158, '', 'Instagram TV Views Server 1', 'Instagram TV Views ! \r\nFull TV Video Link Needed ! \r\nINSTANT Start ! ', 50, 100000000, 1260, 1260, 'Aktif', 158, 'MEDANPEDIA', 'Sosial Media'),
(10475, 248, '', 'Youtube Like Versi 1', 'Likes can be over-delivered!\r\nReal\r\nNo Refill Guarantee\r\n25,000-100,000 Per day\r\nkami tidak ada garansi jika like langsung turun, no kompline\r\norder = berani tanggung resiko', 10, 400000, 105000, 105000, 'Aktif', 248, 'MEDANPEDIA', 'Sosial Media'),
(10476, 469, 'Telegram', 'Telegram - Channnel Members [ Max 100K]', 'Channel Only\r\n5k/day\r\nNo Refill\r\n1-12hrs start\r\nMin 100, Max 100k', 100, 100000, 49000, 49000, 'Aktif', 469, 'MEDANPEDIA', 'Sosial Media'),
(10477, 572, '', 'Youtube Views server 1 [ No Garansi ][ Fast ] ', 'Instan\r\nkecepatan 5k -20k/hari\r\nGK ADA GARANSI APAPUN! JIKA VIEW TURUN\r\nBELI? berani ambil resiko', 100, 100000, 16800, 16800, 'Aktif', 572, 'MEDANPEDIA', 'Sosial Media'),
(10478, 583, '', 'Facebook  Video Views S1 [INSTANT]', 'Best Service! \r\nStart 1-6hrs \r\n1MILLION TO 5MILLION PER DAY \r\nLIFE TIME GUARANTEED ', 500, 10000000, 3080, 3080, 'Aktif', 583, 'MEDANPEDIA', 'Sosial Media'),
(10479, 650, '', 'Youtube Views Negara AUSTRALIA ', 'Refill (Lifetime)\r\n1000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 650, 'MEDANPEDIA', 'Sosial Media'),
(10480, 652, 'Youtube View Target Negara', 'Youtube Views Negara BELGIUM ', 'Refill (Lifetime)\r\n3000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 652, 'MEDANPEDIA', 'Sosial Media'),
(10481, 653, 'Youtube View Target Negara', 'Youtube Views Negara BRAZIL', 'Refill (Lifetime)\r\n5000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 653, 'MEDANPEDIA', 'Sosial Media'),
(10482, 654, 'Youtube View Target Negara', 'Youtube Views Negara CANADA', 'Refill (Lifetime)\r\n10000/hari\r\nMinimum 1000', 1000, 10000000, 44800, 44800, 'Aktif', 654, 'MEDANPEDIA', 'Sosial Media'),
(10483, 658, 'Youtube View Target Negara', 'Youtube Views Negara FRANCE', 'Refill (Lifetime)\r\n3000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 658, 'MEDANPEDIA', 'Sosial Media'),
(10484, 659, 'Youtube View Target Negara', 'Youtube Views Negara GERMANY', 'Refill (Lifetime)\r\n5000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 659, 'MEDANPEDIA', 'Sosial Media'),
(10485, 666, 'Youtube View Target Negara', 'Youtube Views Negara ITALY ', 'Refill (Lifetime)\r\n3000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 666, 'MEDANPEDIA', 'Sosial Media'),
(10486, 667, 'Youtube View Target Negara', 'Youtube Views Negara JAPAN', 'Refill (Lifetime)\r\n5000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 667, 'MEDANPEDIA', 'Sosial Media'),
(10487, 668, 'Youtube View Target Negara', 'Youtube Views Negara MEXICO', 'Refill (Lifetime)\r\n3000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 668, 'MEDANPEDIA', 'Sosial Media'),
(10488, 671, 'Youtube View Target Negara', 'Youtube Views Negara PAKISTAN ', 'Refill (Lifetime)\r\n2000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 671, 'MEDANPEDIA', 'Sosial Media'),
(10489, 677, 'Youtube View Target Negara', 'Youtube Views Negara TAIWAN ', 'Refill (Lifetime)\r\n5000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 677, 'MEDANPEDIA', 'Sosial Media'),
(10490, 678, 'Youtube View Target Negara', 'Youtube Views Negara TURKEY', 'Refill (Lifetime)\r\n10000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 678, 'MEDANPEDIA', 'Sosial Media'),
(10491, 679, 'Youtube View Target Negara', 'Youtube Views Negara UK', 'Refill (Lifetime)\r\n5000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 679, 'MEDANPEDIA', 'Sosial Media'),
(10492, 681, 'Youtube View Target Negara', 'Youtube Views Negara AMERIKA', 'Refill (Lifetime)\r\n5000/hari\r\nMinimum 1000', 1000, 10000000, 51800, 51800, 'Aktif', 681, 'MEDANPEDIA', 'Sosial Media'),
(10493, 683, 'Youtube View Target Negara', 'Youtube Views Negara Vietnam ', 'Refill (Lifetime)\r\n5000/hari\r\nMinimum 1000', 1000, 10000000, 44800, 44800, 'Aktif', 683, 'MEDANPEDIA', 'Sosial Media'),
(10494, 725, '', 'Spotify Followers S1 [1M] min 1000', 'Start Time: Instant - 6 hours\r\nSpeed: 20K/ day \r\nRefill: no', 1000, 1000000, 38500, 38500, 'Aktif', 725, 'MEDANPEDIA', 'Sosial Media'),
(10495, 726, 'Spotify', 'Spotify Followers S2 [1M] min 20', 'Start Time: Instant - 6 hours\r\nSpeed: 20K/ day \r\nRefill: no', 20, 1000000, 61600, 61600, 'Aktif', 726, 'MEDANPEDIA', 'Sosial Media'),
(10496, 727, 'Spotify', 'Spotify Followers S3 [Super Fast] min 20', '100% High-Quality Account\r\nNo Drop - Life Time Guarantee\r\nInstant ( Avg 0-3 hrs ) \r\n500 to 5000 per 24 hour', 20, 1000000, 37800, 37800, 'Aktif', 727, 'MEDANPEDIA', 'Sosial Media'),
(10497, 728, 'Spotify', 'Spotify Plays S1', 'Spotify Plays S1', 1000, 1000000, 25900, 25900, 'Aktif', 728, 'MEDANPEDIA', 'Sosial Media'),
(10498, 729, 'Spotify', 'Spotify Playlists S1', 'Correct format: \r\nhttps://open.spotify.com/album/2beOdusX0eDgXQ7KdX8IVf\r\nhttps://open.spotify.com/playlist/4jHJBBSbRZp2SNFeHoJMfA', 50, 100000, 126000, 126000, 'Aktif', 729, 'MEDANPEDIA', 'Sosial Media'),
(10499, 730, 'Spotify', 'Spotify Playlists S2', 'Correct format: \r\nhttps://open.spotify.com/album/2beOdusX0eDgXQ7KdX8IVf\r\nhttps://open.spotify.com/playlist/4jHJBBSbRZp2SNFeHoJMfA', 5000, 1000000, 30800, 30800, 'Aktif', 730, 'MEDANPEDIA', 'Sosial Media'),
(10500, 735, 'Youtube View Target Negara', 'Youtube Views Negara Indonesia ', 'Lifetime Guarantee\r\nspeed 5-10k per day', 1000, 10000000, 44800, 44800, 'Aktif', 735, 'MEDANPEDIA', 'Sosial Media'),
(10501, 736, 'Youtube View Target Negara', 'Youtube Views Negara Malaysia ', 'Lifetime Guarantee\r\nspeed 5-10k per day', 1000, 10000000, 44800, 44800, 'Aktif', 736, 'MEDANPEDIA', 'Sosial Media'),
(10502, 768, 'Youtube Views', 'Youtube Views server 2 [ 50k-100k/day ] [ Lifetime Guarantee ] cheap', 'Start time: 0-3 hours\r\nJika status selesai tetapi view tidak ter update\r\nsilahkan klik like', 100, 10000000, 23800, 23800, 'Aktif', 768, 'MEDANPEDIA', 'Sosial Media'),
(10503, 771, '', 'Facebook Page Likes [ S 8 ] [20K] [R30]', 'Start Time: Instant - 1 hour\r\nSpeed: 5K/ day \r\nRefill: 30 days\r\nSpecs: Fast', 50, 20000, 224000, 224000, 'Aktif', 771, 'MEDANPEDIA', 'Sosial Media'),
(10504, 894, '', 'Shopee Likes Indonesia [3000] {produk}', 'Fast Process\r\nBot Female Indonesia\r\nuntuk profuk', 100, 3000, 9800, 9800, 'Aktif', 894, 'MEDANPEDIA', 'Sosial Media'),
(10505, 912, 'SoundCloud', 'SoundCloud Plays [10M] [S2]', 'Start Time: Instant - 12 hours\r\nSpeed: 3 to 5mil/ day \r\nSpecs: Full Link !', 50000, 10000000, 420, 420, 'Aktif', 912, 'MEDANPEDIA', 'Sosial Media'),
(10506, 914, '', 'Pinterest Followers', 'Pinterest Account Followers', 25, 100000, 53200, 53200, 'Aktif', 914, 'MEDANPEDIA', 'Sosial Media'),
(10507, 915, 'Pinterest', 'Pinterest Board Followers ', 'Pinterest Board Followers', 10, 250000, 53200, 53200, 'Aktif', 915, 'MEDANPEDIA', 'Sosial Media'),
(10508, 916, 'Pinterest', 'Pinterest Likes ', 'Pinterest Likes ', 22, 250000, 53200, 53200, 'Aktif', 916, 'MEDANPEDIA', 'Sosial Media'),
(10509, 917, 'Instagram Story Views', 'Instagram Story Views [9K] [1H - Ultra Fast! ]', 'All Stories\r\nUsername Only\r\n0-1 Hour Start! \r\nUltra Fast! \r\nMinimum 100', 250, 3000, 2800, 2800, 'Aktif', 917, 'MEDANPEDIA', 'Sosial Media'),
(10510, 922, 'Instagram Live Video', 'Instagram Live Video Comments Random', 'Username Only \r\nNo Refill / No Refund \r\nRandom Comments On Live Video \r\nFast Delivery \r\nMinimum 50', 100, 2000, 140000, 140000, 'Aktif', 922, 'MEDANPEDIA', 'Sosial Media'),
(10511, 923, 'Facebook Video Views / Live Stream', 'Facebook Video Views S2 [10M] ', '500K/ day ', 499, 100000000, 2100, 2100, 'Aktif', 923, 'MEDANPEDIA', 'Sosial Media'),
(10512, 925, 'Website Traffic', 'Indonesia Traffic from Google', 'Start Time: Instant - 12 hours\r\nSpeed: Up to 10K/ day \r\nSpecs:\r\n100% Real & Unique Traffic\r\nDesktop Traffic\r\nGoogle Analytics Supported\r\nLow bounce rates 15-20%\r\nYou can use bit.ly to track results\r\nNo Adult, Drugs or other harmful websites allowed\r\nLink Format: Full Website URL\r\n', 500, 50000, 11200, 11200, 'Aktif', 925, 'MEDANPEDIA', 'Sosial Media'),
(10513, 969, 'Youtube Views', 'Youtube  Views server 3 [ High Retention ]', 'High Retention Youtube Views\r\nRetention : 0-2 Minutes ( Average 30-60 Second )\r\n( Retention can go up or Down without any notice , According to youtube update )\r\nStart 0-6 hours\r\nBest Quality in the Whole Market\r\nRefill : Life Time', 1000, 10000000, 30100, 30100, 'Aktif', 969, 'MEDANPEDIA', 'Sosial Media'),
(10514, 999, 'Facebook Video Views / Live Stream', 'Facebook Video Views S4 [ Exclusive ] [ Cheapest In Market ]', 'Speed 500 - 2k / Day\r\n\r\n30 days refill\r\n\r\nInstant - 24 hours start', 300, 2000000000, 1820, 1820, 'Aktif', 999, 'MEDANPEDIA', 'Sosial Media'),
(10515, 1024, '', 'Instagram Followers Indonesia S21 [max500] on off', 'real indo\r\njika tidak bisa berarti lagi ada orderan yg banyak/ db lagi kami refresh', 100, 500, 63000, 63000, 'Aktif', 1024, 'MEDANPEDIA', 'Sosial Media'),
(10516, 1036, 'Followers Shopee/Tokopedia/Bukalapak', 'Tokopedia Followers [BOT] [20k]', 'High Quality\r\nIndonesia\r\nGunakan Link https://www.tokopedia.com/username\r\nJangan https://m.tokopedia.com/username Atau pun Yang Lain Bakal Kaga bisa\r\nFORMAT WAJIB https://www.tokopedia.com/username   (username ganti dengan usernam mu)', 50, 20000, 3500, 3500, 'Aktif', 1036, 'MEDANPEDIA', 'Sosial Media'),
(10517, 1037, 'Followers Shopee/Tokopedia/Bukalapak', 'Tokopedia Feeds Like [FEMALE] [BOT] [10K] ', 'Gunakan Link feed\r\ningat ini like feed bukan like produk gunakan link feed nya\r\nBot Indonesia\r\nHigh Quality\r\nFast Process\r\nNo Refill', 100, 10000, 4900, 4900, 'Aktif', 1037, 'MEDANPEDIA', 'Sosial Media'),
(10518, 1043, 'Instagram Story / Impressions / Saves / Profile Vi', 'Instagram kunjungan profil / Profile Visit', 'Profile Visit', 100, 100000, 10500, 10500, 'Aktif', 1043, 'MEDANPEDIA', 'Sosial Media'),
(10519, 1047, 'Followers Shopee/Tokopedia/Bukalapak', 'Tokopedia wishlist/ Favorite [ max 20k ]', 'gunakan link\r\nno refill', 100, 20000, 2800, 2800, 'Aktif', 1047, 'MEDANPEDIA', 'Sosial Media'),
(10520, 1059, 'Instagram TV', 'Instagram TV Views Server 2  [ SUPER FAST ]', 'no partial\r\nsuperfast\r\n1M/day', 50, 100000000, 840, 840, 'Aktif', 1059, 'MEDANPEDIA', 'Sosial Media'),
(10521, 1060, 'Instagram TV', 'Instagram TV Views Server 3 [ INSTANT ] ', 'IG TV Views \r\nReal Views \r\nSuper Fast\r\nInstant', 200, 5000000, 980, 980, 'Aktif', 1060, 'MEDANPEDIA', 'Sosial Media'),
(10522, 1087, '', 'Instagram Like Komentar FAST Server 2', 'Fast', 20, 10000, 30800, 30800, 'Aktif', 1087, 'MEDANPEDIA', 'Sosial Media'),
(10523, 1124, 'Youtube Views', 'Youtube Ranking Views V10 [ Recommended ][ 0 - 1 Mint Retention]', ' [ Lifetime Guarantee Views ]\r\n- Cheapest In Market\r\n- Start times : 0 - 1h ( Instant )\r\n- Non drop - Lifetime Guarantee Views\r\n- Speed 20k - 30k+ ( Some times will be Faster )\r\n- Retention : 0-1 Minutes +', 500, 10000000, 26600, 26600, 'Aktif', 1124, 'MEDANPEDIA', 'Sosial Media'),
(10524, 1161, '', 'Instagram Likes Indonesia Server 1 max 1000 [ on off ] ⚡️⚡️⚡️', 'Proses sesuai antian\r\ngud service\r\n', 100, 1000, 39200, 39200, 'Aktif', 1161, 'MEDANPEDIA', 'Sosial Media'),
(10525, 1169, '', 'Instagram Likes Server 3 [ Kualitas bagus ] [ Superfast ] ', 'fast', 10, 25000, 22400, 22400, 'Aktif', 1169, 'MEDANPEDIA', 'Sosial Media'),
(10526, 1179, 'Instagram TV', 'Instagram TV Views Server 5 [1M/day] [ Cheapest in market]', '[1M/day] [ Cheapest in market]', 500, 10000000, 1120, 1120, 'Aktif', 1179, 'MEDANPEDIA', 'Sosial Media'),
(10527, 1186, '', 'Instagram Followers Server 13 [ Layanan Beta 2 ] ', 'Quality: High Quality\r\nSpeed: 10k-15k per days\r\nStart time: Instant to 3hrs ( Some time delay if server overload or we update system)', 500, 5000, 61600, 61600, 'Aktif', 1186, 'MEDANPEDIA', 'Sosial Media'),
(10528, 1193, 'Instagram Views', 'instagram view Server 6  + Impressions', '+ Impressions', 100, 500000000, 350, 350, 'Aktif', 1193, 'MEDANPEDIA', 'Sosial Media'),
(10529, 1198, 'Instagram Story Views', 'Instagram - Story Views S2 [30K] [INSTANT - 30K/Day]', 'ALL STORIES !\r\nUSERNAME ONLY !\r\nINSTANT START !\r\nFAST DELIVERY !', 20, 30000, 1680, 1680, 'Aktif', 1198, 'MEDANPEDIA', 'Sosial Media'),
(10530, 1220, 'Instagram Followers [ No Refill ]', 'Instagram Followers JETPEDIA 3 [ Max - 15k ] [ No refill ] [ 3k/day ] ', 'No refill', 10, 15000, 21000, 21000, 'Aktif', 1220, 'MEDANPEDIA', 'Sosial Media'),
(10531, 1225, 'Spotify', 'Spotify Plays [ 1M ] Speed : 500 - 3500/D', '- Start Time: 1 - 12 Hours\r\n- Speed : 500 - 3500/D\r\n- Refill : Non Drop - LifeTime Guarantee\r\n- Best Service in the Market\r\n- Followers from TIER 1 countries only! USA/CA/EU/AU/NZ/UK.\r\n- Quality: HQ\r\n- Min/Max: 1000/1M', 1000, 1000000, 12600, 12600, 'Aktif', 1225, 'MEDANPEDIA', 'Sosial Media'),
(10532, 1238, 'Instagram Likes', 'Instagram Likes Server 15 [ Low Quality ] [ Murah ] ', '- Likes From fake profile\r\n- Speed 10k per Hrs\r\n- Start time 5 min to 1hrs\r\nNote : If ig update, it may not work till we fix', 100, 10000, 15400, 15400, 'Aktif', 1238, 'MEDANPEDIA', 'Sosial Media'),
(10533, 1240, '', 'TIK TOK FOLLOWERS S4 [ 30 days refill - Full URL ]', 'Complete URL \r\n30 days refill\r\nSpeed 2-5k/Day', 10, 15000, 161000, 161000, 'Aktif', 1240, 'MEDANPEDIA', 'Sosial Media'),
(10534, 1241, 'TIK TOK', 'TIK TOK Likes S5 [ 30 days refill - Full URL ] ', 'Complete URL \r\n30 days refill\r\nSpeed 2-5k/Day', 10, 15000, 161000, 161000, 'Aktif', 1241, 'MEDANPEDIA', 'Sosial Media'),
(10535, 1242, 'Youtube Views', 'Youtube Views V17 [ non drop ] [ recommended] ', '- Cheapest In Market after update\r\n- Start times : 0 - 1h ( Almost Instant )\r\n- Lifetime Guarantee Views\r\n- Speed 200k - 500k+ /D\r\n- Miexed Retention', 100, 10000000, 40600, 40600, 'Aktif', 1242, 'MEDANPEDIA', 'Sosial Media'),
(10536, 1247, 'Youtube Views', 'Youtube Views V19 Cheapest In Market after update', '- Cheapest In Market after update\r\n- Start times : 0 - 1h ( Almost Instant )\r\n- Min 500 - Max 5M\r\n- Non drop - Lifetime Guarantee Views\r\n- Speed 5k+ /D\r\n- Miexed Retention', 1000, 10000000, 40600, 40600, 'Aktif', 1247, 'MEDANPEDIA', 'Sosial Media'),
(10537, 1271, 'Instagram Story Views', 'Instagram - Story Views S3 All Story Views Fast ', 'instan', 100, 40000, 7000, 7000, 'Aktif', 1271, 'MEDANPEDIA', 'Sosial Media'),
(10538, 1282, 'Facebook Video Views / Live Stream', 'Facebook Video Views S5 Retention 20 seconds', '10K/day \r\nNo Refill', 100, 100000, 1400, 1400, 'Aktif', 1282, 'MEDANPEDIA', 'Sosial Media'),
(10539, 1283, 'Facebook Video Views / Live Stream', 'Facebook Video Views S6 Retention 40 seconds', '10K/day \r\nNo Refill', 100, 100000, 2800, 2800, 'Aktif', 1283, 'MEDANPEDIA', 'Sosial Media'),
(10540, 1284, 'Facebook Video Views / Live Stream', 'Facebook Video Views S7 Retention 60 seconds', '10K/day \r\nNo Refill', 100, 1000000, 3780, 3780, 'Aktif', 1284, 'MEDANPEDIA', 'Sosial Media'),
(10541, 1285, 'Facebook Video Views / Live Stream', 'Facebook Video Views S8  [ 100% retention ]', '10K/day \r\nNo Refill', 100, 1000000, 7000, 7000, 'Aktif', 1285, 'MEDANPEDIA', 'Sosial Media'),
(10542, 1287, 'Instagram Followers [ No Refill ]', 'Instagram Followers JETPEDIA 13 [ No Refill ] [ Cheapest ] ', 'Kualitas: Bagus\r\nKecepatan Normal: 5k-10k per hari\r\nwaktu mulai: Instant to 3 jam ( lebih lama jika overload )', 100, 10000, 10500, 10500, 'Aktif', 1287, 'MEDANPEDIA', 'Sosial Media'),
(10543, 1294, '', 'Instagram Custom Comments [ TERMURAH ] [CEPAT]', '- No Refill \r\n- Fast Delivery', 5, 1000, 378000, 378000, 'Aktif', 1294, 'MEDANPEDIA', 'Sosial Media'),
(10544, 1297, 'Instagram Like Indonesia', 'Instagram Likes Indonesia Server 10 max 500 [ MURAH ] ⚡️', 'Proses 1x24 jam\r\ntetapi paling lama jika pesanan banyak 1- 3 hari\r\nLimit pesanan perhari 300 jadi jika tidak bisa order berarti udah limit haria\r\nsilahkan di pesan esok hari\r\nReal indo\r\ntidak bisa untuk igtv!\r\nJangan di private saat proses pesanan berlangsung!', 100, 500, 7280, 7280, 'Aktif', 1297, 'MEDANPEDIA', 'Sosial Media'),
(10545, 1299, 'Instagram Followers [ No Refill ]', 'Instagram Followers JETPEDIA 14 [ Max 5K ] [ Cheapest ] ', '- Instant\r\n- Speed 2k -5k/D\r\n- No refill', 50, 5000, 23800, 23800, 'Aktif', 1299, 'MEDANPEDIA', 'Sosial Media'),
(10546, 1305, 'Instagram Followers [ No Refill ]', 'Instagram Followers JETPEDIA 15 [Speed 3K - 10K/D]', '- Instant Start\r\n- Speed : 3k -10k/D\r\n- No refill', 100, 15000, 19600, 19600, 'Aktif', 1305, 'MEDANPEDIA', 'Sosial Media'),
(10547, 1312, 'Instagram Likes', 'Instagram Likes Server 21 [SUPER FAST] [ real, active]', '- Super Fast\r\n- Real , active\r\n- Speed 5k -10k/H\r\n- No refill', 20, 15000, 16800, 16800, 'Aktif', 1312, 'MEDANPEDIA', 'Sosial Media'),
(10548, 1316, 'Facebook Page / Website - Likes / Stars', 'Facebook Page Likes [ S 11 ] [Refill 30] [Instant Start] Real', ' Refill 30 Days\r\nInstant Start\r\nSpeed : 5K / Day\r\nNon Drop Likes', 100, 10000, 238000, 238000, 'Aktif', 1316, 'MEDANPEDIA', 'Sosial Media'),
(10549, 1317, 'Instagram Followers [ No Refill ]', 'Instagram Followers JETPEDIA 16 [Max 15k] [ Instant ]', 'Instant\r\nSpeed 2k -7k/hari', 50, 15000, 16800, 16800, 'Aktif', 1317, 'MEDANPEDIA', 'Sosial Media'),
(10550, 1325, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Server 5 [max 1000] REAL AKTIF⚡ ', 'Proses normal 1x 24 jam\r\nproses bisa lebih lama jika delay\r\nmax 3 hari bisa kompline untuk canceled\r\ntergantung pada antrian juga\r\nReal indo, fresh db\r\nkemungkinan besar real pasif hanya 10%', 20, 1000, 71400, 71400, 'Aktif', 1325, 'MEDANPEDIA', 'Sosial Media'),
(10551, 1333, 'Facebook Page / Website - Likes / Stars', 'Facebook Page Likes [ S12 ] [16 Days Auto Refill]', ' Facebook Fan Page Likes\r\n( Min 500 And Max 50k )\r\nAuto-Refill if Likes Drop\r\n( Drop Ratio: 10% but we added Auto-Refill in Backend System )\r\n( Speed 5-10k Per Day )\r\nHigh Quality and Real Likes\r\nRefill : 15 Days Auto Refill', 500, 50000, 126000, 126000, 'Aktif', 1333, 'MEDANPEDIA', 'Sosial Media'),
(10552, 1334, '', 'Youtube Views [ Jam Tayang 2000 jam ] [ Durasi Video 2 jam+ ] [CEK Deskripsi]', '- Start time : 0 - 6h\r\n- Guarantee: 30 days Refill if any drop ( views or watch times )\r\n- High retention : 100 mins to 120 mins watch times ( Mean : for 1 view will get 100 mins to 120 mins watch times )\r\n- Use videos longer than 2 hours to get the best effect.\r\n\r\nNOTE :\r\n- The system does not have a separate counter, so it can only rely on the number of views in the video to determine. Therefore , Please put video for non-public mode while running views.\r\n- Anda dapat menggunakan beberapa video lebih dari 2 jam di saluran yang sama untuk memesan, jadi, ini dapat mempersingkat waktu untuk menyelesaikan 4000 jam.\r\nContoh: Menggunakan 4 video di saluran yang sama. Setiap pesanan video lebih dari 500 view. Hanya perlu 2 hari untuk menyelesaikan 4000 jam.', 100, 3000, 462000, 462000, 'Aktif', 1334, 'MEDANPEDIA', 'Sosial Media'),
(10553, 1335, 'Instagram Views', 'instagram view Server 11 [ + Impressions  ][ super fast ]', 'instan', 100, 1000000000, 126, 126, 'Aktif', 1335, 'MEDANPEDIA', 'Sosial Media'),
(10554, 1342, 'TIK TOK', 'TIK TOK FOLLOWERS S5 [ 30 days refill - Full URL ] ', '- Speed 5000 per day\r\n- Avatars Followers and Likes\r\n- 30 days warranty\r\n- instant start to 5 minute start Time\r\n( Contoh Target yang kamu masukin https://www.tiktok.com/@username )', 10, 30000, 119000, 119000, 'Aktif', 1342, 'MEDANPEDIA', 'Sosial Media'),
(10555, 1343, 'TIK TOK', 'TIK TOK Likes S6 [ 30 days refill - Full URL ] ', '- Speed 5000 per day\r\n- Avatars Followers and Likes\r\n- 30 days warranty\r\n- instant start to 5 minute start Time', 9, 30000, 119000, 119000, 'Aktif', 1343, 'MEDANPEDIA', 'Sosial Media'),
(10556, 1344, 'Instagram Likes', 'Instagram Likes Server 22 [SUPER FAST] [ INSTANT ] ', 'Fast\r\nKualitas gud', 100, 10000, 12600, 12600, 'Aktif', 1344, 'MEDANPEDIA', 'Sosial Media'),
(10557, 1347, 'Instagram Like Indonesia', 'Instagram Likes Indonesia Server 11 max 1000 REKOMENDED ⚡️⚡️⚡️⭐', 'Dapat Bonus like jika beruntung\r\nProses instan\r\nreal indo', 20, 1000, 18200, 18200, 'Aktif', 1347, 'MEDANPEDIA', 'Sosial Media'),
(10558, 1348, 'Followers Shopee/Tokopedia/Bukalapak', 'PAKET 1 shopee produk terjual  ( BACA DESKRIPSI )', 'hanya Untuk 1 produk\r\nmendapatkan 500 produk terjual,20 Love produk, Cashback\r\nmasukin target  username | password | Link Produk\r\nDan kirimkan idorder ke tiket biar pengerjaan lebih cepat\r\nProses 1-4 hari, tidak dihitung pada hari libur sabtu/minggu/hari besar', 1000, 1000, 231000, 231000, 'Aktif', 1348, 'MEDANPEDIA', 'Sosial Media'),
(10559, 1349, 'Followers Shopee/Tokopedia/Bukalapak', 'PAKET 2 shopee produk terjual ( BACA DESKRIPSI ) ', 'hanya Untuk 1 produk\r\nmendapatkan 1000 produk terjual,40 Love produk, Cashback\r\nmasukin target  username | password | Link Produk\r\nDan kirimkan idorder ke tiket biar pengerjaan lebih cepat\r\nProses 1-4 hari, tidak dihitung pada hari libur sabtu/minggu/hari besar', 1000, 1000, 420000, 420000, 'Aktif', 1349, 'MEDANPEDIA', 'Sosial Media'),
(10560, 1350, 'Followers Shopee/Tokopedia/Bukalapak', 'PAKET 3 shopee produk terjual ( BACA DESKRIPSI ) ', 'hanya Untuk 1 produk\r\nmendapatkan 1000 produk terjual,500 Love produk, Cashback\r\n500 followers shopee\r\nmasukin target  username | password | Link Produk\r\nDan kirimkan idorder ke tiket biar pengerjaan lebih cepat\r\nProses 1-4 hari, tidak dihitung pada hari libur sabtu/minggu/hari besar', 1000, 1000, 1066800, 1066800, 'Aktif', 1350, 'MEDANPEDIA', 'Sosial Media'),
(10561, 1351, 'Instagram Followers [ No Refill ]', 'Instagram Followers JETPEDIA 20 [HIGH Drop - No Refill ] ', 'fast masuk fast drop\r\n', 100, 15000, 12600, 12600, 'Aktif', 1351, 'MEDANPEDIA', 'Sosial Media'),
(10562, 1355, 'Facebook Page / Website - Likes / Stars', 'Facebook Page Likes Server 1  [ NO Refill ] 1-3k/day', '0-24 hours time to finish\r\nReal account', 100, 5000, 63000, 63000, 'Aktif', 1355, 'MEDANPEDIA', 'Sosial Media'),
(10563, 1356, 'Facebook Page / Website - Likes / Stars', 'Facebook Page Likes Server 2 [ 10 days refill] 5k/day ', 'Start time : 0 - 1h', 100, 1000, 98000, 98000, 'Aktif', 1356, 'MEDANPEDIA', 'Sosial Media'),
(10564, 1357, 'Facebook Page / Website - Likes / Stars', 'Facebook Page Likes Server 3 [ NO DROP ] 5k/hour', 'start - instant to 1 hour\r\nkemungkinan bisa  drop\r\nmakanya kami kasih garansi refill 30days', 50, 5000, 140000, 140000, 'Aktif', 1357, 'MEDANPEDIA', 'Sosial Media'),
(10565, 1365, 'Instagram Likes', 'Instagram Likes Pasif Jetpedia', 'Instant Start\r\nSuper Fast', 50, 5000, 18200, 18200, 'Aktif', 1365, 'MEDANPEDIA', 'Sosial Media'),
(10566, 1371, 'TIK TOK', 'TIK TOK View S6 [500K/day] ', '500K/day\r\nno refill', 5000, 1000000000, 350, 350, 'Aktif', 1371, 'MEDANPEDIA', 'Sosial Media'),
(10567, 1384, '', 'Instagram Likes PROMO 1 [ Superfast ][ SUPER MURAH ]', 'instant', 100, 10000, 4620, 4620, 'Aktif', 1384, 'MEDANPEDIA', 'Sosial Media'),
(10568, 1385, '- PROMO - ON OFF', 'Instagram Followers PROMO 1 [ No Refill ] [ TERMURAH, High Drop] ', 'drop 90 - 100%\r\nno kompline', 100, 10000, 7000, 7000, 'Aktif', 1385, 'MEDANPEDIA', 'Sosial Media'),
(10569, 1386, '- PROMO - ON OFF', 'Instagram Likes PROMO 2 [ Superfast ][ high quality ] ', 'high quality', 50, 10000, 5600, 5600, 'Aktif', 1386, 'MEDANPEDIA', 'Sosial Media'),
(10570, 1389, '- PROMO - ON OFF', 'Instagram Likes PROMO 3 [ Superfast ][ best Quality ] ', 'Instant start\r\nQualitas Bagus\r\nwuz wuz', 50, 50000, 12320, 12320, 'Aktif', 1389, 'MEDANPEDIA', 'Sosial Media'),
(10571, 1392, '- PROMO - ON OFF', 'Instagram Followers PROMO 3 [ No Refill ] [ TERMURAH ] ', 'HIGH DROP\r\nFAST', 100, 10000, 6160, 6160, 'Aktif', 1392, 'MEDANPEDIA', 'Sosial Media'),
(10572, 1393, '- PROMO - ON OFF', 'Instagram Likes PROMO 4 [ TERMURAH ] ', 'instan', 100, 10000, 3780, 3780, 'Aktif', 1393, 'MEDANPEDIA', 'Sosial Media'),
(10573, 1397, 'Instagram TV', 'Instagram TV Like Server 2 [ INSTANT ] ', 'Instant Start', 10, 15000, 11900, 11900, 'Aktif', 1397, 'MEDANPEDIA', 'Sosial Media'),
(10574, 1402, 'Youtube View Jam Tayang', 'Youtube Views [ DAPAT Jam Tayang 1000 jam ] [ Durasi Video 2 jam+ ] [CEK Deskripsi] ', 'KAMU KEMUNGKINAN DAPAT 1000 JAM TAYANG DALAM 2 HARI\r\nGuarantee: 30 days\r\nWAJIB GUNAKAN DURASI VIDEO 2jam lebih', 1000, 1000, 273000, 273000, 'Aktif', 1402, 'MEDANPEDIA', 'Sosial Media'),
(10575, 1403, 'Youtube View Jam Tayang', 'Youtube Views [ DAPAT Jam Tayang 2000 jam ] [ Durasi Video 2 jam+ ] [CEK Deskripsi] ', 'KAMU KEMUNGKINAN DAPAT 2000 JAM TAYANG DALAM 3 HARI\r\nGuarantee: 30 days\r\nWAJIB GUNAKAN DURASI VIDEO 2jam lebih', 1000, 1000, 518000, 518000, 'Aktif', 1403, 'MEDANPEDIA', 'Sosial Media'),
(10576, 1404, 'Youtube View Jam Tayang', 'Youtube Views [ DAPAT Jam Tayang 3000 jam ] [ Durasi Video 2 jam+ ] [CEK Deskripsi] ', 'KAMU KEMUNGKINAN DAPAT 3000 JAM TAYANG DALAM 4 HARI\r\nGuarantee: 30 days\r\nWAJIB GUNAKAN DURASI VIDEO 2jam lebih', 1000, 1000, 770000, 770000, 'Aktif', 1404, 'MEDANPEDIA', 'Sosial Media'),
(10577, 1405, 'Youtube View Jam Tayang', 'Youtube Views [ DAPAT Jam Tayang 4000 jam ] [ Durasi Video 2 jam+ ] [CEK Deskripsi] ', 'KAMU KEMUNGKINAN DAPAT 4000 JAM TAYANG DALAM 5 HARI\r\nGuarantee: 30 days\r\nWAJIB GUNAKAN DURASI VIDEO 2jam lebih', 1000, 1000, 1008000, 1008000, 'Aktif', 1405, 'MEDANPEDIA', 'Sosial Media'),
(10578, 1408, '- PROMO - ON OFF', 'Instagram Followers PROMO 4 [ DB JETPEDIA ] [ TERMURAH ] ', 'HIGH DROP\r\nNO KOMPLINE', 500, 3000, 5600, 5600, 'Aktif', 1408, 'MEDANPEDIA', 'Sosial Media'),
(10579, 1409, 'Instagram Views', 'instagram view Server 12 [ + Impressions ] ', 'INSTANT\r\nkemungkinan waktu proses 1 -12 jam\r\nbisa lebih cepat bisa lebih lama', 100, 100000000, 280, 280, 'Aktif', 1409, 'MEDANPEDIA', 'Sosial Media'),
(10580, 1411, 'Instagram Views', 'instagram view Server 14 [ 1 Million / Hour ]', 'Kemungkinan  kecepatan 1 juta / jam\r\nKemungkinan mulai 0-10 menir', 100, 1000000, 840, 840, 'Aktif', 1411, 'MEDANPEDIA', 'Sosial Media'),
(10581, 1415, 'Instagram Followers [ No Refill ]', 'Instagram Followers JETPEDIA 26 [Real Users- Less Drop - No Refill ]', 'Real Accounts\r\n2500/day\r\nStart 0-6 hours', 100, 2500, 49000, 49000, 'Aktif', 1415, 'MEDANPEDIA', 'Sosial Media'),
(10582, 1416, 'Instagram Followers [ No Refill ]', 'Instagram Followers JETPEDIA 27 [ Max 10K ] [Speed 10K/D]', '- Instant Start\r\n- Speed 10k/D\r\n- No refill', 20, 25000, 11200, 11200, 'Aktif', 1416, 'MEDANPEDIA', 'Sosial Media'),
(10583, 1421, 'Instagram Likes', ' Instagram Likes JETPEDIA 2 [Instant] Real [Max 5K]', 'Speed : 200 Likes / Hour\r\nNo Partial Issues\r\nOrders will be canceled if server overload.', 100, 5000, 25900, 25900, 'Aktif', 1421, 'MEDANPEDIA', 'Sosial Media'),
(10584, 1422, 'Instagram Likes', 'Instagram Likes JETPEDIA 3 [ 10k ] [ Instant - Start ]', ' Start time:\r\nFor orders under 1000 likes usually instant. If more than 1000 - may take some time, usually few hours\r\nSpeed is up to 100-200 per hour (can lower a bit when many orders)\r\nNo cancellation before 24 hours', 20, 5000, 33600, 33600, 'Aktif', 1422, 'MEDANPEDIA', 'Sosial Media'),
(10585, 1424, 'Instagram Likes', 'Instagram Likes JETPEDIA 5 [Cheapest and Super Fast] - WITH PP', 'Cheapest and Super Fast', 10, 100000, 4480, 4480, 'Aktif', 1424, 'MEDANPEDIA', 'Sosial Media'),
(10586, 1425, 'Instagram Views', 'instagram view JETPEDIA 1 [ 5 Million / Hour ] ( Recommended )', '5 Million / Hour', 100, 2500000, 1960, 1960, 'Aktif', 1425, 'MEDANPEDIA', 'Sosial Media'),
(10587, 1430, 'Youtube Views', 'Youtube Ranking Desktop Views JETPEDIA 2 [ Lifetime Guaranteed ]', ' 0-24 hour start time\r\n100k to 300k /day speed\r\nLifetime refill guarantee\r\n30-40 second watch time\r\nSafe to run with monetised videos\r\nWindows desktop watch page\r\nWorldwide viewers added in a non-stop natural pattern\r\nMust be unrestricted & open for all countries\r\nOK for VEVO\r\nIncremental Speed Based on Order Size\r\n500 Minimum order\r\n1 Million Maximum order', 500, 1000000, 33600, 33600, 'Aktif', 1430, 'MEDANPEDIA', 'Sosial Media'),
(10588, 1431, 'Youtube Views', 'Youtube Views JETPEDIA 3 [ Speed 200k+/D ] ', '- Start times : Instant\r\n- Min 200 - Max 10M\r\n- NON DROP - Lifetime guarantee views\r\n- Speed 200k+/D ( Speed will be slow if Youtube made an update )\r\n- Retention : 10 - 50 secs', 500, 10000000, 25200, 25200, 'Aktif', 1431, 'MEDANPEDIA', 'Sosial Media'),
(10589, 1436, 'Youtube Views', 'Youtube Views JETPEDIA 8 ( AUTO REFILL )[ recommended ] ', 'Start Time: Instant to 12 Hours\r\nSpeed: Up to 100K/ day\r\nRefill: Lifetime Guaranteed With Auto Refill Every 2 Hours !\r\nSpecs: 60 seconds+ retention\r\nSource: Mix of Web and Mobile traffic', 100, 10000000, 39200, 39200, 'Aktif', 1436, 'MEDANPEDIA', 'Sosial Media'),
(10590, 1437, '', 'Youtube Subscribe SERVER 1 MAX 1500 ', 'Start Time: Instant - 6 hours\r\nSpeed: 50/ day (natural pattern)\r\nRefill: 30 days Guaranteed\r\nSpecs: Real USA Users', 5, 1500, 315000, 315000, 'Aktif', 1437, 'MEDANPEDIA', 'Sosial Media'),
(10591, 1438, 'Youtube Subscribers', 'Youtube Subscribe SERVER 2 [ 50 days refill ] [ Recommended]', '50 days refill\r\n30-80 subs per day speed\r\nStart 0-24 hours some times if overloaded 48 hours', 50, 50000, 336000, 336000, 'Aktif', 1438, 'MEDANPEDIA', 'Sosial Media'),
(10592, 1443, '', 'Facebook Profile Follower JETPEDIA 1 [ No Refill ] beta test ', ' - Speed 1k/D\r\n- Start : 0 - 24h\r\n- hanya untuk followers profil ya bukan fanspage/halaman !\r\n- No Refill .', 100, 10000, 119000, 119000, 'Aktif', 1443, 'MEDANPEDIA', 'Sosial Media'),
(10593, 1444, 'Facebook Followers / Friends', 'Facebook Profile Follower JETPEDIA 2 [ R30Day ] ', '- Speed 1k/D\r\n- Start : 0 - 24h\r\n- Please place Profile followers ONLY , not Fan page likes.\r\n- 30 days refill', 100, 10000, 133000, 133000, 'Aktif', 1444, 'MEDANPEDIA', 'Sosial Media'),
(10594, 1445, '', 'Facebook Photo / Post Likes JETPEDIA1[ Start Instant ][Recommended]', 'Speed 5k per day\r\nNo refill', 25, 10000, 77000, 77000, 'Aktif', 1445, 'MEDANPEDIA', 'Sosial Media'),
(10595, 1446, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes JETPEDIA2  [Instant - 3 hour start] [NR]', 'speed = instant finish | quality = LQ | No Refill/Refund in any case', 20, 500, 33600, 33600, 'Aktif', 1446, 'MEDANPEDIA', 'Sosial Media'),
(10596, 1447, 'Facebook Post Likes / Comments / Shares', 'Facebook Custom Comments JETPEDIA 1 [ REAL - Max 2K ] ', '- Start time : 0 - 12h\r\n- Speed : 1k/D\r\n- Non drop so far - No refill\r\n- Min 5 - Max 2k', 5, 2000, 1498000, 1498000, 'Aktif', 1447, 'MEDANPEDIA', 'Sosial Media'),
(10597, 1448, 'Facebook Post Likes / Comments / Shares', 'Facebook Photo / Post Likes JETPEDIA3 [CHEAPEST] [10K]', 'No refill / refund\r\n0 - 48 Hours start\r\nARAB REAL', 100, 10000, 30800, 30800, 'Aktif', 1448, 'MEDANPEDIA', 'Sosial Media'),
(10598, 1449, 'Youtube Likes / Dislikes / Shares', 'Youtube Dislikes JETPEDIA 1  ', 'Dislikes can be over-delivered!\r\nReal\r\nNo Refill Guarantee\r\n25,000-100,000 Per day\r\nkami tidak ada garansi jika like langsung turun, no kompline\r\norder = berani tanggung resiko', 10, 400000, 203000, 203000, 'Aktif', 1449, 'MEDANPEDIA', 'Sosial Media'),
(10599, 1450, 'Youtube Likes / Dislikes / Shares', 'Youtube Like JETPEDIA 1 [5K] [R10]', 'Start Time: Up to 12 hours\r\nSpeed: 50/ day\r\nRefill: 10 days + Refill Button\r\nSpecs: Youtube video with at least 1 like', 5, 5000, 123200, 123200, 'Aktif', 1450, 'MEDANPEDIA', 'Sosial Media'),
(10600, 1451, 'Youtube Likes / Dislikes / Shares', 'Youtube Like JETPEDIA 2 [100K] [R30] ', 'Start Time: Up to 6 hours\r\nSpeed: 10k/ day\r\nRefill: 30 days\r\nSpecs: Normal Quality', 20, 100000, 161000, 161000, 'Aktif', 1451, 'MEDANPEDIA', 'Sosial Media'),
(10601, 1452, 'Youtube Likes / Dislikes / Shares', 'Youtube Dislikes JETPEDIA 2 [3K] [R10]', 'Youtube DisLikes [3K] [R10] ⚡♻', 5, 3000, 123200, 123200, 'Aktif', 1452, 'MEDANPEDIA', 'Sosial Media'),
(10602, 1453, 'Youtube Likes / Dislikes / Shares', 'Youtube Like JETPEDIA 3 [ 30 Days Refill - Max 5K ] [ Speed 100+/D ]', '- Start : 0 - 24 hours\r\n- Min: 50 - Max: 5K\r\n- Daily speed 50 - 200 ( Speed can slower if server overload, in this care must wait )\r\n- NON DROP so far - 30 days Refill Guarantee\r\n\r\nNOTE :\r\n- No Refund after order placed\r\n- No Refill if Old Likes Drop Below Start Count .', 10, 10000, 105000, 105000, 'Aktif', 1453, 'MEDANPEDIA', 'Sosial Media'),
(10603, 1454, 'Youtube Likes / Dislikes / Shares', 'Youtube Like JETPEDIA 4 [ TERMURAH ][ R30 - 10K ][ 200+/D ] ', '- Instant\r\n- Non drop -\r\n- Guarantee: 30 days refill if any drop\r\n- Speed 200+/D', 20, 10000, 93800, 93800, 'Aktif', 1454, 'MEDANPEDIA', 'Sosial Media'),
(10604, 1455, 'Youtube Likes / Dislikes / Shares', 'Youtube Like JETPEDIA 5 [ TERMURAH ][ NO REFILL- 10K ][ 10K+/D ]', '- Instant Start\r\n- Speed for now about 10K/D\r\n- No refill / No refund with any reason .', 20, 10000, 74200, 74200, 'Aktif', 1455, 'MEDANPEDIA', 'Sosial Media'),
(10605, 1456, 'SoundCloud', 'Soundcloud  Followers JETPEDIA 1 [ High Quality ] ~ Instant ', '[ High Quality ] ~ Instant\r\n', 20, 25000, 30800, 30800, 'Aktif', 1456, 'MEDANPEDIA', 'Sosial Media'),
(10606, 1457, 'SoundCloud', 'Soundcloud Followers JETPEDIA 2 [ USA ] ~ Instant ', 'Start Time: Instant - 12 hours\r\nSpeed: 1K-2K/ day\r\nRefill: 30 days\r\nSpecs: Mix Quality !', 100, 50000, 26600, 26600, 'Aktif', 1457, 'MEDANPEDIA', 'Sosial Media'),
(10607, 1458, 'Telegram', 'Telegram - Channnel Members [ Max  3K] ', ' Start Time: Instant - 1 hours\r\nSpeed: 24-48 Hours Delivery\r\nRefill: no\r\nSpecs: Only For Channels', 100, 3000, 30800, 30800, 'Aktif', 1458, 'MEDANPEDIA', 'Sosial Media'),
(10608, 1459, 'Telegram', 'Telegram Post Views [10K] [Last 1] ', 'Start Time: Instant - 1 hour\r\nSpeed: 10K to 20K/ day\r\nRefill: no\r\nSpecs: Latest Post\r\nSend Post Link Or channel id\r\nExample Link: https://t.me/link_example/994', 100, 200000, 2100, 2100, 'Aktif', 1459, 'MEDANPEDIA', 'Sosial Media'),
(10609, 1461, 'Facebook Page / Website - Likes / Stars', 'Facebook Page Likes Server 4 [ NO REFILL ] ', 'Max 5k\r\nINSTANT', 100, 1000, 60200, 60200, 'Aktif', 1461, 'MEDANPEDIA', 'Sosial Media'),
(10610, 1463, '', 'Instagram Followers Refill JETPEDIA 2 (6K) (30 days Refill ) ', ' 0-3 Hours Start\r\n2-3k/Day\r\n30 Days refill', 20, 6000, 119000, 119000, 'Aktif', 1463, 'MEDANPEDIA', 'Sosial Media'),
(10611, 1464, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill JETPEDIA 3 [REFILL 30] [5k/D]', '- Start Time : 1 - 30 mins\r\n- Speed 5k+/D\r\n- 30 days refill', 50, 20000, 105000, 105000, 'Aktif', 1464, 'MEDANPEDIA', 'Sosial Media'),
(10612, 1465, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill JETPEDIA 3 [REFILL 30] Real dan aktif', 'Start times : 0 - 2H\r\nSpeed/day : 1k+/D\r\nRefill Guarantee : 30 Days ( Refill Button )\r\nQuality : REAL', 20, 20000, 102200, 102200, 'Aktif', 1465, 'MEDANPEDIA', 'Sosial Media'),
(10613, 1474, '- PROMO - ON OFF', 'Instagram Likes PROMO 5 [ TERMURAH DI DUNIA ] ', '4k/hrs', 10, 50000, 2800, 2800, 'Aktif', 1474, 'MEDANPEDIA', 'Sosial Media'),
(10614, 1475, 'Instagram Like Indonesia', 'Instagram Likes Indonesia JETPEDIA 1 [ max 3k ] ', 'KEMUNGKINAN selesai pada 3 - 6 jam\r\nmax 24 jam\r\nbisa order 1k 3x untuk 1 foto\r\njadi max 3000', 50, 1000, 21000, 21000, 'Aktif', 1475, 'MEDANPEDIA', 'Sosial Media'),
(10615, 1476, 'Instagram Like Indonesia', 'Instagram Likes Indonesia JETPEDIA 2 [ MAX 10K ] ⚡️⚡️⚡️', 'KEMUNGKINAN selesai pada 3 - 6 jam\r\nmax 24 jam\r\nbisa order 1k 10x untuk 1 foto\r\njadi max 10.000 untuk 1 foto', 100, 1000, 36400, 36400, 'Aktif', 1476, 'MEDANPEDIA', 'Sosial Media'),
(10616, 1478, '- PROMO - ON OFF', 'Instagram Followers PROMO 5 [ DB JETPEDIA ] [ TERMURAH ] LQ', 'HIGH DROP\r\nLQ', 100, 10000, 4900, 4900, 'Aktif', 1478, 'MEDANPEDIA', 'Sosial Media'),
(10617, 1483, 'Youtube Views', 'Youtube Views JETPEDIA 10 [ HIGH RETENTION ] ', 'Mulai instan\r\n- Kecepatan 1k -5k / D\r\n- Garansi: LIFE TIME\r\n- Tampilan nyata dengan 40% - retensi 60', 500, 100000, 63000, 63000, 'Aktif', 1483, 'MEDANPEDIA', 'Sosial Media'),
(10618, 1484, 'Instagram Views', 'instagram view JETPEDIA 2 + Impressions [RANDOM]', '+ Impressions ', 100, 2500000, 980, 980, 'Aktif', 1484, 'MEDANPEDIA', 'Sosial Media'),
(10619, 1485, '- PROMO - ON OFF', 'Instagram Followers PROMO 6 [ DB JETPEDIA ] [ TERMURAH ] LQ ', 'BOT', 100, 10000, 3920, 3920, 'Aktif', 1485, 'MEDANPEDIA', 'Sosial Media'),
(10620, 1486, '- PROMO - ON OFF', 'Instagram Likes PROMO 8 [ TERMURAH DI DUNIA ]', '500/Hrs', 10, 5000, 2520, 2520, 'Aktif', 1486, 'MEDANPEDIA', 'Sosial Media'),
(10621, 1487, 'Youtube View Jam Tayang', 'Youtube Views [ Jam Tayang 1000 jam ] [ Durasi Video 1 jam+ ] [CEK Deskripsi] [ best service ]', '- Guarantee : 30 days\r\n- kecepatan 300 - 500/hari\r\n- Gunakan Durasi Video lebih dari 1 jam untuk mendapatkan hasil yang bagus\r\n- Jam tayang anda dapat sekitar 50 - 60 menit (rata rata 55 menit) untuk 1 penonton atau 1 view \r\nJika Anda memesan 1000 view kemungkinan mendapat 800 - 100 jam tayang\r\n- Sistem kami menghitung dari jumlah awal jadi jika ada penonton organik kami tidak bertanggung jawab\r\nCOntoh : jumlah awal nya 100 anda pesan 1000 view dan ada yang menonton video anda dan jumlah sudah memenuhi 1100 view kami tidak bertanggung jawab jika jam tayang tidak dapat \r\n\r\nNOTE :\r\n- Anda dapat menggunakan beberapa video lebih dari 1 jam di saluran yang sama untuk memesan, jadi, ini dapat mempersingkat waktu untuk menyelesaikan 4000 jam.\r\nContoh: Menggunakan 8 video di saluran yang sama. Setiap pesanan video lebih dari 500 view. Kemungkinan Hanya perlu 2 hari untuk menyelesaikan 4000 jam.', 100, 5000, 252000, 252000, 'Aktif', 1487, 'MEDANPEDIA', 'Sosial Media'),
(10622, 1489, 'Youtube Likes / Dislikes / Shares', 'Youtube Like JETPEDIA 5 [ Best Price in Market ][ 30 Days refill ]', 'Speed 200-400 Per Day\r\nRefill: 30 Days\r\nStart Time 0-2 hours', 20, 100000, 77000, 77000, 'Aktif', 1489, 'MEDANPEDIA', 'Sosial Media'),
(10623, 1490, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill JETPEDIA 12 [ REAL ] [ STABIL ] BONUS+++', 'Speed : 500-1000 / day, Small Order Deliver Faster\r\nGuaranteed: 30 days Guaranteed\r\nwaktu mulai 0 -5 jam\r\nExtra: 20 -30% Extra Delivers', 20, 20000, 96600, 96600, 'Aktif', 1490, 'MEDANPEDIA', 'Sosial Media'),
(10624, 1491, 'Youtube Views', 'Youtube Views JETPEDIA 11 [ Lifetime ] REKOMENDED GARANSI REFFUND', '- Waktu Mulai 0-5 menit [Instan]\r\n- Non drop tampilan youtube kecepatan 10k-100k / Hari\r\n- Jika drop untuk masalah pembaruan Youtube maka kami akan mengisi ulang dalam 1-2 hari,\r\n- Jika kami gagal mengisi ulang maka kami akan mengembalikan saldo\r\n- Retensi Atau tonton waktu 1-5 menit', 100, 10000000, 30800, 30800, 'Aktif', 1491, 'MEDANPEDIA', 'Sosial Media'),
(10625, 1493, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Server 12  [ 3K ] - REAL ', 'Proses sekitar 1-4 hari\r\nreal indo', 100, 1000, 54600, 54600, 'Aktif', 1493, 'MEDANPEDIA', 'Sosial Media'),
(10626, 1494, 'Instagram Likes', 'Instagram Likes JETPEDIA 6 [NO DROP] - INSTANT ', '- INSTANT \r\n- Speed 2k/D', 100, 5000, 18200, 18200, 'Aktif', 1494, 'MEDANPEDIA', 'Sosial Media'),
(10627, 1495, 'Instagram Likes', 'Instagram Likes JETPEDIA 7 [ Speed 10k/JAM] [ Good Quality ]', 'Kemungkinan tidak drop\r\nkualitas good\r\nSuper fast', 20, 50000, 13720, 13720, 'Aktif', 1495, 'MEDANPEDIA', 'Sosial Media'),
(10628, 1497, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill JETPEDIA 13 [ Real Mixed] [ 30 days refill ] ', 'kecepatan 3k/day\r\n30 days refill\r\nReal Mixed account', 50, 15000, 70000, 70000, 'Aktif', 1497, 'MEDANPEDIA', 'Sosial Media'),
(10629, 1500, 'Instagram Followers [ No Refill ]', 'Instagram Followers JETPEDIA 31 [ LESS DROP | DROP 10-20% ] ', '1k in 1 minutes\r\n80% real\r\nKemungkinan drop 10-20% jika anda memesan 1000+\r\n', 100, 5000, 47600, 47600, 'Aktif', 1500, 'MEDANPEDIA', 'Sosial Media'),
(10630, 1501, 'Instagram Likes', 'Instagram Likes JETPEDIA 9 [ Pakistan+asia+indo ] [ 40K ] ', '1k-2k/hour\r\n', 50, 40000, 14000, 14000, 'Aktif', 1501, 'MEDANPEDIA', 'Sosial Media'),
(10631, 1502, 'Telegram', 'Telegram Channnel Members [ Max 30K] Instant ', 'Syarat: tidak berlaku di saluran Porn, Bet, Finishing, dan Baru dan Kosong\r\nDrop sekitar 30%\r\nInstant Start\r\n20k / Day speed.\r\nOnly For Public Channels\r\nContoh link: https://t.me/Your_Channel_ID', 100, 30000, 22400, 22400, 'Aktif', 1502, 'MEDANPEDIA', 'Sosial Media'),
(10632, 1503, 'Telegram', 'Telegram Channnel Members [ Max 100K] Instant ', 'Syarat: tidak berlaku di saluran Porn\r\nDrop sekitar 30%\r\nInstant Start\r\n20k / Day speed.\r\nOnly For Public Channels\r\nContoh link: https://t.me/Your_Channel_ID', 100, 100000, 23800, 23800, 'Aktif', 1503, 'MEDANPEDIA', 'Sosial Media'),
(10633, 1505, 'Instagram Views', 'instagram view JETPEDIA 3 [ 100k/day ]', '100k/day\r\ncheap', 1000, 10000000, 238, 238, 'Aktif', 1505, 'MEDANPEDIA', 'Sosial Media'),
(10634, 1506, 'Instagram Story Views', 'Instagram - Story Views S4 All Story Views Cheap', 'Max 50k', 100, 50000, 980, 980, 'Aktif', 1506, 'MEDANPEDIA', 'Sosial Media'),
(10635, 1507, 'TIK TOK', 'TIK TOK View S7 [100K/day] ', 'cheap', 500, 1000000, 252, 252, 'Aktif', 1507, 'MEDANPEDIA', 'Sosial Media'),
(10636, 1509, 'Youtube Views', 'Youtube Views JETPEDIA 14 [ Working well ] ', 'Instant ( Start in some min only )\r\nLifetime Refill\r\n20k- 30K+/Day\r\nWorking well with very fast start', 500, 10000000, 42000, 42000, 'Aktif', 1509, 'MEDANPEDIA', 'Sosial Media'),
(10637, 1516, 'TIK TOK', 'TIK TOK Likes S7 [ Real Looking ] 1k-5k/day', 'No Refill', 100, 10000, 33180, 33180, 'Aktif', 1516, 'MEDANPEDIA', 'Sosial Media'),
(10638, 1517, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill Server 4 [ Real Mixed ] [ Refill 30 days ] ', 'Start 0 - 1H\r\n3K/days\r\n30 Days Refill ', 50, 15000, 72800, 72800, 'Aktif', 1517, 'MEDANPEDIA', 'Sosial Media'),
(10639, 1518, 'Youtube Likes / Dislikes / Shares', 'Youtube Like JETPEDIA 6 [ Best Seller ][ AUTO Refill ] ', 'Instant\r\n30 days refill\r\nSpeed 200+/hari', 20, 10000, 56000, 56000, 'Aktif', 1518, 'MEDANPEDIA', 'Sosial Media'),
(10640, 1520, 'Youtube Subscribers', 'Youtube Subscribe SERVER 9 [ best seller ] [ Refill 45 Days ]', '-Faster Youtube Subscribers Service\r\n-Speed: Average 40 - 70/day\r\n-if you place small amount of subscribers, speed can be slower\r\n- very good server', 100, 5000, 385000, 385000, 'Aktif', 1520, 'MEDANPEDIA', 'Sosial Media'),
(10641, 1522, 'Youtube Views', 'Youtube Views JETPEDIA 15 [ 90 days Refill ] Instan', '- Instant ( 0 -1h )\r\n- Speed 10k- 20K+/D\r\n- Retention : 1 - 3 mins watch times\r\n', 1000, 5000000, 29400, 29400, 'Aktif', 1522, 'MEDANPEDIA', 'Sosial Media'),
(10642, 1523, '- PROMO - ON OFF', 'Instagram Likes PROMO 9 [ TERMURAH DI DUNIA ] SUPERFAST', 'BOT profile\r\nFAST', 100, 20000, 3080, 3080, 'Aktif', 1523, 'MEDANPEDIA', 'Sosial Media'),
(10643, 1525, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill Server 5 [ Refill 30 days ] [ 10K/day ] ', 'Instant start\r\nSpeed 5k -15k/D', 100, 20000, 25200, 25200, 'Aktif', 1525, 'MEDANPEDIA', 'Sosial Media'),
(10644, 1526, 'Youtube Views', 'Youtube Views JETPEDIA 16 [ Retention 5 - 20 menit ] [ R30day - HR ]', 'Instant\r\nNON DROP - 30 Days refill if any drop\r\n10k - 30K/D\r\n5 - 25 Mins watch times ( Retention cant change if YT update )\r\nGood views for Ranking\r\n\r\nNOTE : Gunakan video yang durasi diatas 20 menit supaya mendapat retention yg lebih baik', 500, 1000000, 39200, 39200, 'Aktif', 1526, 'MEDANPEDIA', 'Sosial Media'),
(10645, 1529, 'Youtube Views', 'Youtube Views JETPEDIA 18 [ Retention 10 - 90 detik] [ 10k-20k/day] Lifetime ', '- Start times : 0 - 1h\r\n- Speed 20k+/D ( kecepatan bisa kapan aja down )\r\nNOTE : Server bekerja dengan baik buat sekarang', 500, 10000000, 25200, 25200, 'Aktif', 1529, 'MEDANPEDIA', 'Sosial Media'),
(10646, 1531, 'Instagram Followers [ No Refill ]', 'Instagram Followers JETPEDIA 33 [ NON DROP | BONUS 0-5% ] [ 2k/Day ]⚡️', 'waktu proses 0-1jam\r\nkecepatan 1k-3k/hari\r\nno drop\r\nkalo drop kemungkinan besar itu followers yang lain, bukan dari kami\r\nkalo drop kemungkinan sangat dikit dan no refill', 50, 100000, 168000, 168000, 'Aktif', 1531, 'MEDANPEDIA', 'Sosial Media'),
(10647, 1533, '', 'Twitter Followers Server 2 [ refill 30Days ] [ Real  ] ', 'Instant Start ( 0 - 2h )\r\nReal Users\r\nSpeed 100K - 1k/D', 10, 5000, 154000, 154000, 'Aktif', 1533, 'MEDANPEDIA', 'Sosial Media'),
(10648, 1534, 'Instagram Live Video', 'Instagram Live Video Views [ untuk durasi 10 menit ]', 'Mulai Instan \r\nGunakan username tanpa @ \r\nTempatkan pesanan setelah ditayangkan langsung dari Perangkat berbeda\r\nJangan jeda sesi langsung \r\nAmbil bukti screenshot jika tayangan langsung gagal \r\nkarena masalah terkait reffund.', 20, 2000, 56000, 56000, 'Aktif', 1534, 'MEDANPEDIA', 'Sosial Media'),
(10649, 1535, 'Instagram Live Video', 'Instagram Live Video Views [ untuk durasi 20 menit ]', 'Mulai Instan \r\nGunakan username tanpa @ \r\nTempatkan pesanan setelah ditayangkan langsung dari Perangkat berbeda\r\nJangan jeda sesi langsung \r\nAmbil bukti screenshot jika tayangan langsung gagal \r\nkarena masalah terkait reffund.', 20, 2000, 88200, 88200, 'Aktif', 1535, 'MEDANPEDIA', 'Sosial Media'),
(10650, 1536, 'Instagram Live Video', 'Instagram Live Video Views [ untuk durasi 30 menit ]', 'Mulai Instan \r\nGunakan username tanpa @ \r\nTempatkan pesanan setelah ditayangkan langsung dari Perangkat berbeda\r\nJangan jeda sesi langsung \r\nAmbil bukti screenshot jika tayangan langsung gagal \r\nkarena masalah terkait reffund.', 20, 2000, 119000, 119000, 'Aktif', 1536, 'MEDANPEDIA', 'Sosial Media');
INSERT INTO `layanan_sosmed` (`id`, `service_id`, `kategori`, `layanan`, `catatan`, `min`, `max`, `harga`, `harga_api`, `status`, `provider_id`, `provider`, `tipe`) VALUES
(10651, 1537, 'Facebook Video Views / Live Stream', 'Facebook Live Video Stream  Views [ untuk durasi 30 menit ]', '- Instant Start\r\n- Example : https://www.facebook.com/user/videos/ID\r\n- Live must be PUBLIC\r\n\r\nCATATAN!!! : - https://www.facebook.com/user/videos/ID\r\n                        - Bukan https://www.facebook.com/user/videos/ID/', 50, 5000, 259000, 259000, 'Aktif', 1537, 'MEDANPEDIA', 'Sosial Media'),
(10652, 1538, 'Facebook Video Views / Live Stream', 'Facebook Live Video Stream Views [ untuk durasi 60 menit ] ', '- Instant Start\r\n- Example : https://www.facebook.com/user/videos/ID\r\n- Live must be PUBLIC\r\n\r\nCATATAN!!! : - https://www.facebook.com/user/videos/ID\r\n                        - Bukan https://www.facebook.com/user/videos/ID/', 50, 5000, 518000, 518000, 'Aktif', 1538, 'MEDANPEDIA', 'Sosial Media'),
(10653, 1539, 'Facebook Video Views / Live Stream', 'Facebook Live Video Stream Views [ untuk durasi 90 menit ] ', '- Instant Start\r\n- Example : https://www.facebook.com/user/videos/ID\r\n- Live must be PUBLIC\r\n\r\nCATATAN!!! : - https://www.facebook.com/user/videos/ID\r\n                        - Bukan https://www.facebook.com/user/videos/ID/', 50, 5000, 770000, 770000, 'Aktif', 1539, 'MEDANPEDIA', 'Sosial Media'),
(10654, 1540, 'Facebook Video Views / Live Stream', 'Facebook Live Video Stream Views [ untuk durasi 120 menit ] ', '- Instant Start\r\n- Example : https://www.facebook.com/user/videos/ID\r\n- Live must be PUBLIC\r\n\r\nCATATAN!!! : - https://www.facebook.com/user/videos/ID\r\n                        - Bukan https://www.facebook.com/user/videos/ID/', 50, 5000, 1015000, 1015000, 'Aktif', 1540, 'MEDANPEDIA', 'Sosial Media'),
(10655, 1544, 'Instagram Followers [ No Refill ]', 'Instagram Followers Server 1 [ Max 10k ] cheap', 'Followers bisa drop kapan aja', 50, 10000, 7140, 7140, 'Aktif', 1544, 'MEDANPEDIA', 'Sosial Media'),
(10656, 1546, 'TIK TOK', 'TIK TOK View S9 [ superfast ] [ Trending + Viral Views]', 'Layanan ini berbeda dengan view lain\r\nkarena layanan ini bisa membuat trending dan viral video', 500, 1000000, 2800, 2800, 'Aktif', 1546, 'MEDANPEDIA', 'Sosial Media'),
(10657, 1547, 'Instagram Likes', 'Instagram Likes JETPEDIA 13 [ Max 5k ] Cheap fast', 'fast\r\n1k-2k/day', 10, 100000, 4620, 4620, 'Aktif', 1547, 'MEDANPEDIA', 'Sosial Media'),
(10658, 1549, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill Server 7 [ Real,active ] [ Refill 30D ][ Best Market ]⚡️⭐⭐', '- waktu mulai : 0 - 20 mins\r\n- Kecepatan 2 -3k/hari\r\n- 100% Real Bule\r\n- Less DROP', 100, 30000, 49000, 49000, 'Aktif', 1549, 'MEDANPEDIA', 'Sosial Media'),
(10659, 1550, 'Youtube Views', 'Youtube Views server 4 [ Auto Refill ][ 20k- 50k/day ] ', 'Guarantee : Lifetime\r\nRefill: Auto Refill [ No Drop ]\r\nRetention - 40 seconds to 4 minutes', 1000, 1000000, 27300, 27300, 'Aktif', 1550, 'MEDANPEDIA', 'Sosial Media'),
(10660, 1551, 'Youtube Views', 'Youtube Views server 5 [ Auto Refill ][ 20k/day ] [ min 200 ]', '- Instant\r\n- Guarantee : auto refill\r\n- retention 30 secs - 5 mins', 200, 1000000, 27300, 27300, 'Aktif', 1551, 'MEDANPEDIA', 'Sosial Media'),
(10661, 1553, 'Twitter Views & Impressions', 'Twitter Views Server 2 [ REAL - Max 15K ]⚡️⚡️', '- Instant start and order will completed in some min\r\n- No refill\r\n- All real data , No Bo , kemungkinan drop 10%', 20, 15000, 4900, 4900, 'Aktif', 1553, 'MEDANPEDIA', 'Sosial Media'),
(10662, 1555, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Server 16 max 5000 ⚡️', 'per order 2000\r\nmax bisa 5000 untuk 1 akun\r\nInstal\r\njika overload kemungkinan 1-3 hari\r\njarang terjadi\r\nReal', 100, 2000, 63000, 63000, 'Aktif', 1555, 'MEDANPEDIA', 'Sosial Media'),
(10663, 1556, '- PROMO - ON OFF', 'Instagram Followers PROMO 8 [ DB JETPEDIA ] [ TERMURAH ] ON OFF', 'Jika off jangan banyak kompline\r\ngunakan selagi bisa\r\nHIGH DROP', 10, 5000, 3080, 3080, 'Aktif', 1556, 'MEDANPEDIA', 'Sosial Media'),
(10664, 1560, 'Youtube Views', 'Youtube Live Stream Views [ REAL ][ BETA ]', '• Tampilan Aktif Nyata **\r\n• MULAI INSTAN\r\n• 100% Pemirsa Pengguna YouTube Manusia Nyata!\r\n• Tampilan Halaman Desktop Windows & Mobile Watch\r\n• 100% Lalu Lintas Unik dapat dimonetisasi!\r\n• Pemirsa Seluruh Dunia\r\n• Harus Tidak Terbatas & Terbuka untuk SEMUA negara\r\n• Retensi Acak\r\n• Rata-rata Bersamaan dan waktu tonton berdasarkan konten streaming langsung\r\n• Pengiriman Lebih Dijamin\r\n• penayangan dapat dikirim ke embed video streaming langsung yang dinonaktifkan\r\n• Sumber Lalu Lintas: Iklan Langsung\r\n\r\nCATATAN :\r\n- Layanan Beta - itu berarti layanan yang ditawarkan apa adanya tanpa jaminan isi ulang!\r\n- Tampilan dapat mencakup keterlibatan pengguna nyata - video Anda mungkin mendapatkan suka / tidak suka setiap hari, komentar, bagikan, pelanggan ,,, semua dibuat oleh pengguna YouTube nyata yang tidak kami kontrol!', 1000, 100000, 91000, 91000, 'Aktif', 1560, 'MEDANPEDIA', 'Sosial Media'),
(10665, 1562, '', 'Twitter Retweets Server 1 [ Max 3K ]⚡️⚡️', 'Top Quality UK Active Profiles\r\n7 day Auto Refill\r\n200 Per day\r\npesanan yang kami terima\r\ncontoh 100,200,300\r\njangan random seperti 201,732,390 tidak kami terima', 10, 3000, 39200, 39200, 'Aktif', 1562, 'MEDANPEDIA', 'Sosial Media'),
(10666, 1563, 'TIK TOK', 'TIK TOK FOLLOWERS Server 1  [ 30 days refill - Full URL ] ', '30 days refill guarantee\r\n100% bot with no profile pciture', 50, 50000, 77000, 77000, 'Aktif', 1563, 'MEDANPEDIA', 'Sosial Media'),
(10667, 1564, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill Server 8 [ Real,Mixed ] [ Refill 10D ][ Best Market ]⚡️⭐⭐ ', '- Mulai kali 1 - 6 jam\r\n- Kecepatan 20k / days\r\n- Non drop atau sedikit drop sejauh ini\r\n- Garansi: isi ulang 10 hari jika drop', 100, 50000, 64400, 64400, 'Aktif', 1564, 'MEDANPEDIA', 'Sosial Media'),
(10668, 1565, 'Instagram Likes', 'Instagram Likes JETPEDIA 15 [ NO DROP ] Max terbanyak', 'No Drop Likes\r\n1-3K / Hour', 100, 50000, 15400, 15400, 'Aktif', 1565, 'MEDANPEDIA', 'Sosial Media'),
(10669, 1568, 'Youtube Views', 'Youtube Views server 6 [ Auto Refill ][ EXCLUSIVE  ]', 'Speed: 20k- 50k/day\r\nGuarantee : Lifetime\r\nRefill: Auto Refill [ No Drop ]\r\nRetention - 40 seconds to 4 minutes', 1000, 1000000, 25900, 25900, 'Aktif', 1568, 'MEDANPEDIA', 'Sosial Media'),
(10670, 1569, 'Youtube Views', 'Youtube Views server 7 [ Auto Refill ][ EXCLUSIVE FAST ] ', '100k-200k/day\r\n40 sec - 4 minutes\r\nExternal\r\nLifetime Guaranteed', 500, 100000000, 28700, 28700, 'Aktif', 1569, 'MEDANPEDIA', 'Sosial Media'),
(10671, 1570, '', 'Twitch Followers 100K/days', 'No Drop & 30 Day Refill Guarantee!\r\nStarts in 5 minute\r\nStarting very fast!', 100, 500000, 12880, 12880, 'Aktif', 1570, 'MEDANPEDIA', 'Sosial Media'),
(10672, 1571, '- PROMO - ON OFF', 'Instagram Likes PROMO 11 [ NO DROP ] ', 'NON DROP', 50, 5000, 11200, 11200, 'Aktif', 1571, 'MEDANPEDIA', 'Sosial Media'),
(10673, 1573, '- PROMO - ON OFF', 'Instagram View GRATIS khusus Jetpedia', 'dilarang kompline!', 100, 200, 0, 0, 'Aktif', 1573, 'MEDANPEDIA', 'Sosial Media'),
(10674, 1574, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Server 17 max 1K⚡️  Real', 'Proses fast\r\nmax proses 3 hari baru kompline\r\nReal indo\r\nper akun max 1k', 50, 1000, 48300, 48300, 'Aktif', 1574, 'MEDANPEDIA', 'Sosial Media'),
(10675, 1575, 'Twitter Followers', 'Twitter Followers Server 3 [ auto refill 30Days ] [ Real - Mixed ] ', '- mulai 0-1 jam\r\n- Speed up to 200+ / day', 20, 1000, 77000, 77000, 'Aktif', 1575, 'MEDANPEDIA', 'Sosial Media'),
(10676, 1576, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Server 18 [ max 500 ] ', 'bisa order 2x di 1 akun\r\nreal proses max 3 hari\r\n', 100, 500, 37800, 37800, 'Aktif', 1576, 'MEDANPEDIA', 'Sosial Media'),
(10677, 1579, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill Server 9 [ Real,active ] [ Refill 30D ][ Best Market ]⚡️⭐⭐ ', '- waktu mulai : 0 - 20 mins \r\n- Kecepatan 2 -3k/hari \r\n- 100% Real Bule \r\n- Less DROP', 100, 30000, 51800, 51800, 'Aktif', 1579, 'MEDANPEDIA', 'Sosial Media'),
(10678, 1580, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Server 19 [ mix bule + indo ] DB FRESH', 'bule + indo real\r\nproses cepat', 200, 4500, 47600, 47600, 'Aktif', 1580, 'MEDANPEDIA', 'Sosial Media'),
(10679, 1581, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Server 20 [ mix bule + indo ] DB FRESH MAX2.5k', 'mix indo bule\r\n', 200, 2500, 40600, 40600, 'Aktif', 1581, 'MEDANPEDIA', 'Sosial Media'),
(10680, 1582, 'Youtube Subscribers', 'Youtube Subscribe SERVER 13 [ Refill 30Days ] [ BestMarket ] ⚡️⭐⭐', '- Instant Start\r\n- 100% REAL\r\n- Speed 170+ Per Day\r\n- NON DROP\r\n- Garansi: Isi Ulang 30 Hari jika ada 1 sub drop.\r\n- BEST SUBS !\r\n\r\nNOTE :\r\n- jika subs turun dari subs lama mu kami tidak ada refill!!\r\n\r\njika ragu silahkan pesan di yang subs nya hanya 1\r\nbiar bisa dibuktikan!', 20, 50000, 518000, 518000, 'Aktif', 1582, 'MEDANPEDIA', 'Sosial Media'),
(10681, 1583, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill Server 10 [ Refill 15D ][ FASTEST IN THE MARKET ]', '15 days Refill.', 50, 50000, 43400, 43400, 'Aktif', 1583, 'MEDANPEDIA', 'Sosial Media'),
(10682, 1584, 'Youtube Views', 'Youtube Views server 10 [ LIFETIME ][ FASTEST IN THE MARKET ]', 'Speed 1 Million Per Day\r\nInstant Start\r\nNON-Drop\r\nLife Time Guarantee', 1000, 100000000, 26600, 26600, 'Aktif', 1584, 'MEDANPEDIA', 'Sosial Media'),
(10683, 1585, 'Instagram Comments', 'Instagram Comments [Account 1 Verif/centang biru] [ 1Post ] [Baca Deskripsi] ', '- Random comment akun verif / centang biru , \r\n- kamu mendapatkan 1 comment random dari akun verif /centang biru\r\n- hanya bisa 1 komentar untuk 1 post untuk layanan ini\r\n- waktu mulai sekitar 1 -5 jam\r\nNote : jumlah pesanan 1000 anda tetap mendapat 1 komentar!\r\nDilarang postingan  tentang seksual/kekerasan/sara/rasis', 1000, 1000, 40600, 40600, 'Aktif', 1585, 'MEDANPEDIA', 'Sosial Media'),
(10684, 1586, 'Instagram Comments', 'Instagram 1 Comments random [Account Verif/centang biru] [Baca Deskripsi] ', '- Random comment akun verif / centang biru , \r\n- kamu mendapatkan 1 comment random dari akun verif /centang biru\r\n- waktu mulai sekitar 1 -5 jam\r\nNote : jumlah pesanan 1000 anda tetap mendapat 1 komentar!\r\nDilarang postingan  tentang seksual/kekerasan/sara/rasis', 1000, 1000, 53200, 53200, 'Aktif', 1586, 'MEDANPEDIA', 'Sosial Media'),
(10685, 1587, 'Instagram Comments', 'Instagram 3 Comments random [Account Verif/centang biru] [Baca Deskripsi] ', '- Random comment akun verif / centang biru , \r\n- kamu mendapatkan 3 comment random dari akun verif /centang biru\r\n- waktu mulai sekitar 1 -5 jam\r\nNote : jumlah pesanan 1000 anda tetap mendapat 3 komentar!\r\nDilarang postingan  tentang seksual/kekerasan/sara/rasis', 1000, 1000, 134400, 134400, 'Aktif', 1587, 'MEDANPEDIA', 'Sosial Media'),
(10686, 1588, 'Instagram Comments', 'Instagram 6 Comments random [Account Verif/centang biru] [Baca Deskripsi] ', '- Random comment akun verif / centang biru , \r\n- kamu mendapatkan 6 comment random dari akun verif /centang biru\r\n- waktu mulai sekitar 1 -5 jam\r\nNote : jumlah pesanan 1000 anda tetap mendapat 6 komentar!\r\nDilarang postingan  tentang seksual/kekerasan/sara/rasis', 1000, 1000, 235200, 235200, 'Aktif', 1588, 'MEDANPEDIA', 'Sosial Media'),
(10687, 1589, 'Instagram Comments', 'Instagram 10  Comments random [Account Verif/centang biru] [Baca Deskripsi] ', '- Random comment akun verif / centang biru , \r\n- kamu mendapatkan 10 comment random dari akun verif /centang biru\r\n- waktu mulai sekitar 1 -5 jam\r\nNote : jumlah pesanan 1000 anda tetap mendapat 10 komentar!\r\nDilarang postingan  tentang seksual/kekerasan/sara/rasis', 1000, 1000, 385000, 385000, 'Aktif', 1589, 'MEDANPEDIA', 'Sosial Media'),
(10688, 1591, 'Youtube Subscribers', 'Youtube Subscribe SERVER 15 [ R30D ] [High Quality] [ real ]', 'Kualitas bagus\r\nRefill 30Days \r\nKecepatan 200-300/day\r\ndatabase 50.000\r\njadi jika pesanan selesai anda bisa memesan lagi hinggal perakun/50rb\r\nReal Usa', 5, 2000, 399000, 399000, 'Aktif', 1591, 'MEDANPEDIA', 'Sosial Media'),
(10689, 1592, 'TIK TOK', 'TIK TOK Likes Server 1 [ 30 days refill  ] [ Cheap ] ', ' Speed:1k-5k/day\r\nGuarantee : 30 Days', 100, 10000, 19600, 19600, 'Aktif', 1592, 'MEDANPEDIA', 'Sosial Media'),
(10690, 1593, 'TIK TOK', 'TIK TOK FOLLOWERS Server 2 [ no refill ] [baca deskripsi]', '1k-5k/day\r\nGunakan link video untuk followers jangan link profil\r\nNo Guarantee', 100, 10000, 63000, 63000, 'Aktif', 1593, 'MEDANPEDIA', 'Sosial Media'),
(10691, 1594, '', 'Twitter Favourites/Likes Server 1', '1k/1hour\r\n', 100, 1000, 24500, 24500, 'Aktif', 1594, 'MEDANPEDIA', 'Sosial Media'),
(10692, 1595, 'Instagram TV', 'Instagram TV Views Server 6 [500K/day] [ Cheapest in the World ] ', '500K/day', 1000, 500000, 560, 560, 'Aktif', 1595, 'MEDANPEDIA', 'Sosial Media'),
(10693, 1597, 'Instagram Comments', 'Instagram Custom Comments Server 1 [ Cheap Service ]', 'proses mulai 0-8 jam\r\ngood layanan\r\nBot Account', 5, 10000, 93800, 93800, 'Aktif', 1597, 'MEDANPEDIA', 'Sosial Media'),
(10694, 1598, 'Instagram Like Indonesia', 'Instagram Likes JETPEDIA 16 [ Indian, asia, Indonesia]', 'akun dari Indonesia, India, China , Thailand like [ semual like mix tidak tertarget]', 50, 1500, 12740, 12740, 'Aktif', 1598, 'MEDANPEDIA', 'Sosial Media'),
(10695, 1599, 'Youtube Views', 'Youtube Views server 11 [ High retention ][ retention 25 - 30 minutes ] ', '- waktu mulai : 0 - 2 jam\r\n- Speed 500+/D\r\n- retention 25 - 30 minutes ( kemungkinan Rata rata 27 minutes).\r\n- Guarantee: 30 days\r\n- Traffic source : Direct', 200, 5000, 81200, 81200, 'Aktif', 1599, 'MEDANPEDIA', 'Sosial Media'),
(10696, 1601, '- PROMO - ON OFF', 'Instagram View  + Impression PROMO 1 [ CHEAP IN THE WORLD ]', 'INSTANT', 100, 10000, 84, 84, 'Aktif', 1601, 'MEDANPEDIA', 'Sosial Media'),
(10697, 1602, 'Youtube View Jam Tayang', 'Youtube Views [ Jam Tayang 4000 jam ] [ Durasi Video 1 jam+ ] ', 'waktu mulai 0-6jam\r\ngk bisa video bekas live\r\nHQ VIEWS\r\nWatch hours are Delivered in 1-4 days after placing order\r\nGuarantee : 30 Days Refill\r\nGunakan video durasi 1 jam+\r\ndo not remove or make video private after\r\n1000 quantity = 1000 jam tayang', 1000, 4000, 140000, 140000, 'Aktif', 1602, 'MEDANPEDIA', 'Sosial Media'),
(10698, 1603, 'Youtube View Jam Tayang', 'Youtube Views [ DAPAT Jam Tayang 500 jam ] [ Durasi Video 2 jam+ ', '- Anda akan mendapatkan waktu menonton 500 jam dalam 1 hari\r\n- Garansi: 30 hari\r\n- Silakan gunakan video yang memiliki durasi 2 jam atau lebih untuk memesan\r\n\r\nCATATAN:\r\n- Saat menggunakan layanan kami, jangan pada saat yang sama menggunakan layanan dari pihak ke-3 dan jika video menerima penayangan organik, Anda tidak akan mendapatkan cukup waktu tontonan. Kami tidak bertanggung jawab dalam kasus ini\r\n- Lebih baik gunakan video baru dan tidak ada tampilan organik untuk menjalankan waktu menonton.\r\n- Setelah Pesanan, kami tidak dapat refund / partial / canceled.', 1000, 1000, 135800, 135800, 'Aktif', 1603, 'MEDANPEDIA', 'Sosial Media'),
(10699, 1604, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia Server 21 [ External Server ] DB Max100k', 'Perday 500 an\r\njadi kalo order banyak bisa memakan waktu lama\r\n', 500, 100000, 70000, 70000, 'Aktif', 1604, 'MEDANPEDIA', 'Sosial Media'),
(10700, 1605, 'Instagram Followers [guaranteed]', 'Instagram Followers Refill Server 11 [ AUTO Refill 30D ][ Real ] ', '1k - 3K/Day\r\nauto refill\r\nkemungkinan drop : 20%', 100, 20000, 96600, 96600, 'Aktif', 1605, 'MEDANPEDIA', 'Sosial Media'),
(10701, 1606, '', 'Likee App Post Likes [Speed : 1k-2k/day]', 'contoh target :https://likee.com/@********/video/*********\r\nNo refill', 20, 10000, 74200, 74200, 'Aktif', 1606, 'MEDANPEDIA', 'Sosial Media'),
(10702, 1607, 'Likee app', 'Likee App Followers  [ 500-1k/day ]', 'contoh target https://likee.com/@********\r\nno refill', 20, 10000, 161000, 161000, 'Aktif', 1607, 'MEDANPEDIA', 'Sosial Media'),
(10703, 1608, 'Youtube Views', 'Youtube Views server 12 [ retention 5-20 minutes ] Lifetime Guarantee', 'Guarantee : Lifetime Guarantee\r\nSpeed - 5k-10k/day [ If overloaded 3k-5k/day]', 500, 1000000, 30800, 30800, 'Aktif', 1608, 'MEDANPEDIA', 'Sosial Media'),
(10704, 1609, '- PROMO - ON OFF', 'Instagram Likes PROMO 13 [ NO DROP ] FAST', 'real likes\r\njadi sangat jarang banget drop\r\nkecuali emang ada update system', 100, 1500, 8120, 8120, 'Aktif', 1609, 'MEDANPEDIA', 'Sosial Media'),
(10705, 1610, 'Youtube Views', 'Youtube Views server 13 [ No Garansi ][ Fast 50k/days ] ', 'Instan\r\nkecepatan 50k/hari\r\nLess Drop\r\nGK ADA GARANSI APAPUN! JIKA VIEW TURUN\r\nBELI? berani ambil resiko', 500, 100000, 13300, 13300, 'Aktif', 1610, 'MEDANPEDIA', 'Sosial Media'),
(10706, 1612, 'Followers Shopee/Tokopedia/Bukalapak', 'Shopee Followers Server 1 [2K] Fresh', 'username', 100, 1999, 32200, 32200, 'Aktif', 1612, 'MEDANPEDIA', 'Sosial Media'),
(10707, 1613, 'Followers Shopee/Tokopedia/Bukalapak', 'Shopee Followers Server 2 [1K] Fresh ', 'username', 100, 1000, 32200, 32200, 'Aktif', 1613, 'MEDANPEDIA', 'Sosial Media'),
(10708, 1615, 'Instagram Followers [ No Refill ]', 'Instagram Followers Server 2 [ Max 30k ] cheap instan ', 'Drop 50-100%\r\nInstant start and Instant Complete\r\nserver Stable', 100, 30000, 6300, 6300, 'Aktif', 1615, 'MEDANPEDIA', 'Sosial Media');

-- --------------------------------------------------------

--
-- Struktur dari tabel `metode_depo`
--

CREATE TABLE `metode_depo` (
  `id` int(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `catatan` text NOT NULL,
  `rate` varchar(255) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `tipe` enum('Transfer Pulsa','Transfer Bank') NOT NULL,
  `minimal` int(10) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `metode_depo`
--

INSERT INTO `metode_depo` (`id`, `provider`, `catatan`, `rate`, `nama_penerima`, `tujuan`, `tipe`, `minimal`, `status`) VALUES
(1, 'BRI', 'Metode transfer manual, silahkan isi saldo sesuai nominal dan penerima yang tertera di bawah ini, hubungi admin WA 085600899245 untuk melakukan konfirmasi pembayaran.', '1', '– DAHRI ANSHOR', '596601008210531', 'Transfer Bank', 20000, 'Aktif'),
(2, 'DANA', 'Metode transfer manual, silahkan isi saldo sesuai nominal dan penerima yang tertera di bawah ini, hubungi admin WA 085600899245 untuk melakukan konfirmasi pembayaran.', '1', '', '089652684800', 'Transfer Pulsa', 10000, 'Aktif'),
(3, 'OVO', 'Metode transfer manual, silahkan isi saldo sesuai nominal dan penerima yang tertera di bawah ini, hubungi admin WA 085600899245 untuk melakukan konfirmasi pembayaran.', '1', '', '089652684800', 'Transfer Pulsa', 10000, 'Aktif'),
(4, 'LINKAJA', 'Metode transfer manual, silahkan isi saldo sesuai nominal dan penerima yang tertera di bawah ini, hubungi admin WA 085600899245 untuk melakukan konfirmasi pembayaran.', '1', '', '085600899245', 'Transfer Pulsa', 10000, 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi`
--

CREATE TABLE `mutasi` (
  `id` int(11) NOT NULL,
  `kode_deposit` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `jumlah` int(255) NOT NULL,
  `saldo` varchar(250) NOT NULL,
  `status` enum('READ','UNREAD') NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi_bank`
--

CREATE TABLE `mutasi_bank` (
  `id` int(11) NOT NULL,
  `tipe` varchar(10) NOT NULL,
  `keterangan` text NOT NULL,
  `jumlah` double NOT NULL,
  `tanggal` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi_ovo`
--

CREATE TABLE `mutasi_ovo` (
  `id` int(11) NOT NULL,
  `user` varchar(80) NOT NULL,
  `code` varchar(50) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `account` varchar(80) NOT NULL,
  `amount` int(11) NOT NULL,
  `descript` text NOT NULL,
  `sender` varchar(80) NOT NULL,
  `date` varchar(80) NOT NULL,
  `status` enum('unread','read') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ovo`
--

CREATE TABLE `ovo` (
  `id` varchar(10) NOT NULL,
  `nomor` varchar(18) NOT NULL,
  `device` varchar(120) NOT NULL,
  `kode` varchar(4) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ovo`
--

INSERT INTO `ovo` (`id`, `nomor`, `device`, `kode`, `pin`, `token`) VALUES
('S1', '08965284800', '178ff920-b7fc-3b78-b57d-6049d2fea8e5', '9864', '0', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_pascabayar`
--

CREATE TABLE `pembelian_pascabayar` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `provider_oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `id_layanan` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `kategori` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `layanan` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `harga` double NOT NULL,
  `profit` double NOT NULL,
  `koin` double NOT NULL,
  `target` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `nama_penerima` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `deskripsi1` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `deskripsi2` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `deskripsi3` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `deskripsi4` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Pending','Error','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `place_from` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'WEB',
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `refund` enum('0','1') COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_pulsa`
--

CREATE TABLE `pembelian_pulsa` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `provider_oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `layanan` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `harga` double NOT NULL,
  `profit` double NOT NULL,
  `koin` double NOT NULL,
  `target` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Pending','Error','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `place_from` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'WEB',
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `refund` enum('0','1') COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_sosmed`
--

CREATE TABLE `pembelian_sosmed` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `provider_oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `layanan` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `target` text COLLATE utf8_swedish_ci NOT NULL,
  `jumlah` int(10) NOT NULL,
  `remains` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `start_count` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `harga` double NOT NULL,
  `profit` double NOT NULL,
  `koin` double NOT NULL,
  `status` enum('Pending','Processing','Error','Partial','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `place_from` enum('Website','API') COLLATE utf8_swedish_ci NOT NULL,
  `refund` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan_umum`
--

CREATE TABLE `pertanyaan_umum` (
  `id` int(4) NOT NULL,
  `number` varchar(25) NOT NULL,
  `tipe` text NOT NULL,
  `title` text NOT NULL,
  `konten` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pertanyaan_umum`
--

INSERT INTO `pertanyaan_umum` (`id`, `number`, `tipe`, `title`, `konten`) VALUES
(1, 'One', 'Akun', 'Bagaimana Cara Mengubah Data Profil Saya?', 'Pilih menu pojok atas deengan icon titik 3 dan pilih profile (Pengaturan akun).'),
(4, 'Four', 'Akun', 'Bagaimana Cara Ganti Kata Sandi?', 'Pilih menu pojok atas deengan icon titik 3 dan pilih profile (Pengaturan akun) setelah itu pilih ganti Password.'),
(5, 'Five', 'Akun', 'Bagaimana Cara Ganti PIN Transaksi?', 'Pilih menu pojok atas deengan icon titik 3 dan pilih profile (Pengaturan akun) setelah itu pilih ganti PIN.'),
(6, 'One', 'Pesanan', 'Bagaimana Cara Melihat Riwayat Pesanan Saya?', 'Isi Sendiri Lah Males W Ketik Panjang - Panjang :v'),
(7, 'Two', 'Pesanan', 'Bagaimana Cara Pesan Lewat API?', 'Isi Sendiri Lah Males W Ketik Panjang - Panjang :v'),
(9, 'One', 'Sosial Media', 'Bagaimana Cara Membuat Pesanan Layanan Sosial Media?', 'Pilih menu Sosmed dan pilih kategori layanan, setelah itu pilih pesanan layanan apa saja, dan Masukan target Tujuan menggunakan Username / Link setelah itu masukan jumlah pesanan, masukan PIN kamu dan Klik Submit / pesan.'),
(36, 'Two', 'Sosial Media', 'Apa itu Refill ?', 'Refill adalah isi ulang. Jika anda membeli layanan refill dan ternyata dalam beberapa hari followers berkurang, maka jika pesanan anda drop/turun anda bisa lapor melalui tiket dengan menyertakan id order dan request refill, jika nama layanan auto refill anda tidak perlu lapor ke admin karna proses refill otomatis tapi jika dalam 2x24 jam belum refill maka anda bisa lapor ke admin.'),
(19, 'One', 'Isi Saldo', 'Bagaimana Cara Isi Saldo?', 'Untuk melakukan deposit/isi saldo, Anda hanya perlu masuk terlebih dahulu ke akun Anda dan menuju halaman Deposit dengan mengklik menu yang sudah tersedia. Kami menyediakan Isi saldo melalui bank dan E-wallet.'),
(21, 'Three', 'Isi Saldo', 'Saya Sudah Transfer Sesuai Invoice Isi Saldo Tetapi Status Pending Terus?', 'Segera hubungi admin lewat pesan Tiket atau kontak WhatsApp 085600899245.'),
(22, 'Four', 'Isi Saldo', 'Bagaimana Jika Saya Isi Saldo Via Transfer Bank Namun Tidak Transfer Sesuai 3 Kode Unik?', 'Bila jumlalh transfer tidak sesuai kode unik, segera hubungi Admin lewat Tiket / WhatsApp,\r\nagar bisa di konfirmasi Depositnya.'),
(23, 'One', 'Koin', 'Bagaimana Cara Mendapatkan Koin?', 'Untuk mendapatkan koin anda harus membeli layanan pada Jetpedia.'),
(25, 'Three', 'Koin', 'Bagaimana Cara Tarik Koin Ke Saldo?', 'Pilih icon plus + Tarik koin, lalu pilih Tarik koin ke *Sosial Media *Top Up, Tulis jumlah koin yang akan kamu tarik, setelah itu masukan PIN kamu dan klik submit.'),
(30, 'One', 'Pengembalian Dana', 'Bagaimana Jika Status Saya Error/Partial Tapi Saldo Belum Kembali?', 'Di tunggu yang sabar system akan melakukan konfirmasi terlebih dahulu ke server.'),
(34, 'Two', 'Status', 'MENGAPA BISA PARTIAL?', 'Di karenakan Limit : Contoh jika satu layanan dengan maksimal 1.000 followers, kemudian anda membeli 1000 followers 2x di akun yang sama. kemungkinan besar akan terjadi partial.\r\nKarena akun (followers) yang ada di server tersebut hanya 1.000 followers.\r\nJadi anda tidak bisa mengirim 2000 followers walaupun dengan cara 1000 2x pemesanan.\r\nJika hal ini terjadi, silahkan gunakan server (Layanan) lainya.\r\nHal ini tidak berpengaruh jika berbeda akun.\r\n\r\nServer overload : Overload biasanya terjadi di layanan yang murah. Karena murah terlalu banyak pesanan yang masuk sehingga terjadi overload dan partial.\r\nUntuk pesanan partial, sisa saldo layanan yang tidak masuk akan otomatis kembali ke akun.'),
(32, 'One', 'Status', 'Tipe Status Apa Saja Yang Ada?', 'Jenis status pada layanan Jetpedia :\r\n\r\n- Pending : Pesanan/deposit sedang dalam antian di server. \r\n- Processing : Pesanan sedang dalam proses. \r\n- Success : Pesanan telah berhasil. \r\n- Partial : Pesanan Sudah terproses tapi tercancel. Dan anda hanya akan membayar layanan yang masuk saja. \r\n- Eror : Pesanan di batalkan, dan saldo akan otomatis kembali ke akun.'),
(33, 'One', 'API Dokumentasi', 'Apa Itu API Dokumentasi?', 'Isi Sendiri Lah Males W Ketik Panjang - Panjang :v'),
(35, 'Three', 'Status', 'Apa Itu Partial ?', 'Status Partial adalah ketika kami mengembalikan sebagian sisa-sisa pesanan. Terkadang karena beberapa alasan kami tidak dapat mengirimkan pesanan penuh, jadi kami mengembalikan Saldo sesuai jumlah yang belum terkirim kepada Anda. Contoh: Anda membeli pesanan dengan jumlah 1000 dan membebankan biaya 10.000, katakanlah kami mengirimkan 900 dan Kurang 100 tidak dapat kami kirim, maka kami akan \"Kembalikan saldo\" pesanan dan mengembalikan kurang 100 kepada Anda Kami mengembalikan saldo anda 1.000).');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan_tiket`
--

CREATE TABLE `pesan_tiket` (
  `id` int(10) NOT NULL,
  `id_tiket` int(10) NOT NULL,
  `pengirim` enum('Member','Admin') COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `pesan` text COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `update_terakhir` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `pesan_tiket`
--

INSERT INTO `pesan_tiket` (`id`, `id_tiket`, `pengirim`, `user`, `pesan`, `date`, `time`, `update_terakhir`) VALUES
(1, 2, 'Admin', 'demo', 'Oke sudah kak.', '2020-05-17', '11:48:32', '2020-05-17 11:48:32'),
(2, 2, 'Member', 'demo', 'Siap', '2020-05-17', '11:49:44', '2020-05-17 11:49:44'),
(3, 2, 'Admin', 'demo', 'Oke', '2020-05-17', '11:52:45', '2020-05-17 11:52:45'),
(4, 2, 'Member', 'demo', 'Yes', '2020-05-17', '17:14:25', '2020-05-17 17:14:25'),
(5, 3, 'Admin', 'Saidmuammar', 'Oke kak', '2020-05-18', '13:14:52', '2020-05-18 13:14:52'),
(6, 4, 'Admin', 'Saidmuammar', 'Di baca keterangannya gan, kalau order tidak bisa melakukan pembatalan,', '2020-05-18', '15:12:07', '2020-05-18 15:12:07'),
(7, 4, 'Admin', 'Saidmuammar', 'Semisal salah target, apabila gagal nanti otomatis saldo akan balik lagi.', '2020-05-18', '15:13:54', '2020-05-18 15:13:54'),
(8, 2, 'Member', 'demo', 'oke', '2020-05-18', '22:30:33', '2020-05-18 22:30:33'),
(9, 2, 'Admin', 'demo', 'cek', '2020-05-18', '22:31:39', '2020-05-18 22:31:39'),
(10, 2, 'Admin', 'demo', 'cek', '2020-05-18', '22:31:45', '2020-05-18 22:31:45'),
(11, 2, 'Member', 'demo', 'oke', '2020-05-18', '23:16:08', '2020-05-18 23:16:08'),
(12, 2, 'Member', 'demo', 'oke', '2020-05-18', '23:20:18', '2020-05-18 23:20:18'),
(13, 5, 'Admin', 'dahry23', 'Ok', '2020-05-19', '00:54:09', '2020-05-19 00:54:09'),
(14, 6, 'Admin', 'demo', 'Oke', '2020-05-20', '18:38:40', '2020-05-20 18:38:40'),
(15, 7, 'Admin', 'dahry', 'Ok', '2020-05-21', '12:35:34', '2020-05-21 12:35:34'),
(16, 7, 'Member', 'dahry', '9khg', '2020-05-23', '13:44:55', '2020-05-23 13:44:55'),
(17, 10, 'Admin', 'Ipang', 'Okke .Done', '2020-05-25', '07:16:35', '2020-05-25 07:16:35'),
(18, 10, 'Member', 'Ipang', 'Makasih', '2020-05-25', '07:35:03', '2020-05-25 07:35:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo_layanan`
--

CREATE TABLE `promo_layanan` (
  `id` int(10) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `layanan` varchar(100) NOT NULL,
  `harga_normal` int(11) NOT NULL,
  `harga_promo` int(11) NOT NULL,
  `tipe` enum('Sosial Media','Top Up') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `provider`
--

CREATE TABLE `provider` (
  `id` int(10) NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `api_id` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `provider`
--

INSERT INTO `provider` (`id`, `code`, `link`, `api_key`, `api_id`) VALUES
(1, 'MEDANPEDIA', 'https://medanpedia.co.id/api/', 'b7bde3-f01188-fd3279-54695a-9e7e7e', '6755');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provider_pulsa`
--

CREATE TABLE `provider_pulsa` (
  `id` int(10) NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(1100) COLLATE utf8_swedish_ci NOT NULL,
  `api_id` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `provider_pulsa`
--

INSERT INTO `provider_pulsa` (`id`, `code`, `link`, `api_key`, `api_id`) VALUES
(4, 'DG-PULSA', 'https://api.digiflazz.com/v1/transaction', '7fe1e054-9kk9-598f-0011-eafd578b1100', 'mexuxoWy9mvW');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_referral`
--

CREATE TABLE `riwayat_referral` (
  `id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `uplink` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `kode` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `jumlah` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_saldo_koin`
--

CREATE TABLE `riwayat_saldo_koin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tipe` enum('Koin','Saldo') NOT NULL,
  `aksi` enum('Penambahan Saldo','Pengurangan Saldo','Penambahan Koin','Pengurangan Koin') NOT NULL,
  `nominal` double NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_transfer`
--

CREATE TABLE `riwayat_transfer` (
  `id` int(10) NOT NULL,
  `tipe` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `pengirim` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `penerima` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `jumlah` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `riwayat_transfer`
--

INSERT INTO `riwayat_transfer` (`id`, `tipe`, `pengirim`, `penerima`, `jumlah`, `date`, `time`) VALUES
(1, 'Saldo Sosial Media', 'dahry', 'demo', 5000, '2020-05-17', '17:07:58'),
(2, 'Saldo Sosial Media', 'dahry', 'demo', 7900, '2020-05-18', '20:30:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semua_pembelian`
--

CREATE TABLE `semua_pembelian` (
  `id` int(10) NOT NULL,
  `id_order` varchar(50) NOT NULL,
  `id_pesan` varchar(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `layanan` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `target` varchar(50) NOT NULL,
  `status` enum('Pending','Processing','Error','Success') NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `place_from` enum('API','WEB') NOT NULL,
  `refund` enum('0','1') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_harga_untung`
--

CREATE TABLE `setting_harga_untung` (
  `id` int(11) NOT NULL,
  `kategori` enum('WEBSITE','API') NOT NULL,
  `tipe` enum('Sosial Media','Top Up') NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_harga_untung`
--

INSERT INTO `setting_harga_untung` (`id`, `kategori`, `tipe`, `harga`) VALUES
(1, 'WEBSITE', 'Sosial Media', 5000),
(2, 'API', 'Sosial Media', 1000),
(3, 'WEBSITE', 'Top Up', 370),
(4, 'API', 'Top Up', 180);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_koin`
--

CREATE TABLE `setting_koin` (
  `id` int(4) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `minimal` varchar(50) NOT NULL,
  `rate` varchar(25) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_koin`
--

INSERT INTO `setting_koin` (`id`, `tipe`, `minimal`, `rate`, `status`) VALUES
(1, 'Tarik Koin Ke Saldo', '10000', '1', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_koin_didapat`
--

CREATE TABLE `setting_koin_didapat` (
  `id` int(11) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_koin_didapat`
--

INSERT INTO `setting_koin_didapat` (`id`, `rate`, `status`) VALUES
(1, '0.010', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_rate`
--

CREATE TABLE `setting_rate` (
  `id` int(11) NOT NULL,
  `tipe` enum('Sosial Media','Top Up','Pascabayar') NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_rate`
--

INSERT INTO `setting_rate` (`id`, `tipe`, `rate`) VALUES
(1, 'Sosial Media', 5000),
(2, 'Top Up', 375),
(3, 'Pascabayar', 2000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_referral`
--

CREATE TABLE `setting_referral` (
  `id` int(4) NOT NULL,
  `jumlah` varchar(25) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_referral`
--

INSERT INTO `setting_referral` (`id`, `jumlah`, `status`) VALUES
(1, '1000', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_web`
--

CREATE TABLE `setting_web` (
  `id` int(11) NOT NULL,
  `nama_web` varchar(200) NOT NULL,
  `short_title` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `deskripsi_web` text NOT NULL,
  `kontak_utama` text NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `kode_pos` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_web`
--

INSERT INTO `setting_web` (`id`, `nama_web`, `short_title`, `title`, `deskripsi_web`, `kontak_utama`, `lokasi`, `kode_pos`, `date`, `time`) VALUES
(1, 'JETPEDIA', 'JETPEDIA.ID', 'Distributor Agen pulsa & Social Media Marketing H2H Termurah di Indonesia.', 'Jetpedia.id Adalah Website penyedia Layanan Social Media dan Pulsa All Operator seperti Kebutuhan Paket data, Token PLN, Voucher Game, Saldo Grab/Gojek  selain itu Jetpedia.id juga menyediakan layanan sosial media marketing seperti jasa penambah Followers, Likes, Subscriber, dll. \r\ntersedia berbagai layanan untuk social media terpopuler seperti Instagram, Facebook, Twitter, Youtube, dll.', '6285600899245', 'Pekalongan, Jawa Tengah, Indonesia', '51137', '2019-01-03', '16:06:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `subjek` varchar(250) NOT NULL,
  `pesan` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `update_terakhir` datetime NOT NULL,
  `status` enum('Pending','Responded','Waiting','Closed') NOT NULL,
  `this_user` int(1) NOT NULL,
  `this_admin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Struktur dari tabel `top_depo`
--

CREATE TABLE `top_depo` (
  `id` int(10) NOT NULL,
  `method` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `jumlah` int(250) NOT NULL,
  `total` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `top_layanan`
--

CREATE TABLE `top_layanan` (
  `id` int(10) NOT NULL,
  `method` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `layanan` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `jumlah` int(100) NOT NULL,
  `total` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `top_layanan`
--

INSERT INTO `top_layanan` (`id`, `method`, `layanan`, `jumlah`, `total`) VALUES
(1, 'Layanan', 'Instagram Likes PROMO 9 [ TERMURAH DI DUNIA ] SUPERFAST', 286622, 27),
(2, 'Layanan', 'Shopee Followers Server NEW [10K] NODROP', 2100, 1),
(3, 'Layanan', 'Instagram Followers PROMO 8 [ DB JETPEDIA ] [ TERMURAH ] ON OFF', 16688, 2),
(4, 'Layanan', 'Instagram Followers Server 1 [ Max 10k ] cheap', 32340, 2),
(5, 'Layanan', 'Instagram Followers Indonesia Server 18 [ max 500 ] ', 35490, 3),
(6, 'Layanan', 'Youtube Subscribe SERVER 14 [ Refill 30Days ] [1k-10k/day] ', 70560, 1),
(7, 'Layanan', 'Instagram Followers Indonesia Server 5 [max 1000] REAL AKTIF⚡ ', 71400, 1),
(8, 'Layanan', 'Instagram Followers JETPEDIA 13 [ No Refill ] [ Cheapest ] ', 9982, 2),
(9, 'Layanan', 'Instagram Likes Indonesia Server 10 max 500 [ MURAH ] ⚡️', 37100, 5),
(10, 'Layanan', 'Instagram Followers Refill Server 5 [ Refill 30 days ] [ 10K/day ] ', 25200, 1),
(11, 'Layanan', 'Instagram Followers PROMO 10 [ TERMURAH ] ON OFF ', 40922, 8),
(12, 'Layanan', 'Instagram Likes PROMO 12 [ CHEAP IN THE WORLD ] ON OFF', 525, 1),
(13, 'Layanan', 'Instagram Likes PROMO 11 [ NO DROP ] ', 291942, 29),
(14, 'Layanan', 'Instagram Likes PROMO 2 [ Superfast ][ high quality ] ', 245196, 24),
(15, 'Layanan', 'Instagram Followers Refill Server 8 [ Real,Mixed ] [ Refill 10D ][ Best Market ]⚡️⭐⭐ ', 17080, 5),
(16, 'Layanan', 'Instagram Followers PROMO 6 [ DB JETPEDIA ] [ TERMURAH ] LQ ', 292922, 30),
(17, 'Layanan', 'Instagram View GRATIS khusus Jetpedia', 10465, 3),
(18, 'Layanan', 'instagram view JETPEDIA 3 [ 100k/day ]', 238, 1),
(19, 'Layanan', 'Instagram Followers PROMO 5 [ DB JETPEDIA ] [ TERMURAH ] LQ', 4900, 1),
(20, 'Layanan', 'Instagram Likes JETPEDIA 13 [ Max 5k ] Cheap fast', 246582, 25),
(21, 'Layanan', 'Instagram Likes JETPEDIA 5 [Cheapest and Super Fast] - WITH PP', 9383, 5),
(22, 'Layanan', 'Tik tok View GRATIS khusus Jetpedia ', 0, 1),
(23, 'Layanan', 'Instagram TV Views Server 6 [500K/day] [ Cheapest in the World ] ', 33460, 4),
(24, 'Layanan', 'Instagram Likes PROMO 5 [ TERMURAH DI DUNIA ] ', 840, 1),
(25, 'Layanan', 'Instagram Likes Indonesia Server 11 max 1000 REKOMENDED ⚡️⚡️⚡️⭐', 5460, 1),
(26, 'Layanan', 'Instagram Followers JETPEDIA 27 [ Max 10K ] [Speed 10K/D]', 9912, 2),
(27, 'Layanan', 'Instagram View  + Impression PROMO 1 [ CHEAP IN THE WORLD ]', 210, 1),
(28, 'Layanan', 'Twitter Followers Server 3 [ auto refill 30Days ] [ Real - Mixed ] ', 38500, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `top_users`
--

CREATE TABLE `top_users` (
  `id` int(10) NOT NULL,
  `method` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `jumlah` int(250) NOT NULL,
  `total` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;


-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `nama_depan` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `nama_belakang` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `nama` text COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `saldo_sosmed` int(10) NOT NULL,
  `saldo_top_up` int(10) NOT NULL,
  `pemakaian_saldo` double NOT NULL,
  `level` enum('Member','Developers') COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Aktif','Tidak Aktif') COLLATE utf8_swedish_ci NOT NULL,
  `status_akun` enum('Sudah Verifikasi','Belum Verifikasi') COLLATE utf8_swedish_ci NOT NULL,
  `pin` int(6) NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `uplink` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `koin` double NOT NULL,
  `no_hp` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `kode_verifikasi` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `kode_referral` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `random_kode` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `read_news` int(1) NOT NULL,
  `riwayat_depo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama_depan`, `nama_belakang`, `nama`, `email`, `username`, `password`, `saldo_sosmed`, `saldo_top_up`, `pemakaian_saldo`, `level`, `status`, `status_akun`, `pin`, `api_key`, `uplink`, `date`, `time`, `koin`, `no_hp`, `kode_verifikasi`, `kode_referral`, `random_kode`, `read_news`, `riwayat_depo`) VALUES
(1, 'Dahri', 'Anshor', 'Dahri Anshor', 'dahrianshor@gmail.com', 'dahry', '$2y$10$GlCIt/yxISXgvA.TcE6fQuwyY9P1/xinaBQZU.S9/5LyzNdguTGja', 93560, 200000, 152610, 'Developers', 'Aktif', 'Sudah Verifikasi', 230695, 'cjErdR6dT8OIB1dgvrrA', 'Admin', '2020-05-15', '16:41:28', 11000.041000000001, '6285600899245', '293307', '', 'sHsTYDXmKx6603921455', 1, 0),
(2, 'akun', 'demo', 'akun demo', 'cs.dansdigitalmedia@gmail.com', 'demo', '$2y$10$GlCIt/yxISXgvA.TcE6fQuwyY9P1/xinaBQZU.S9/5LyzNdguTGja', 10, 0, 2100, 'Member', 'Aktif', 'Sudah Verifikasi', 123456, 'VSwjcDPYrBotgUEQOWV8', '', '2020-04-12', '19:21:11', 2018.9, '6285600899245', '', '123456', '', 0, 1),
(3, 'Ahmad', 'Redhi Raynaldo', 'Ahmad Redhi Raynaldo', 'dansdmedia@gmail.com', 'bangdhi', '$2y$10$GlCIt/yxISXgvA.TcE6fQuwyY9P1/xinaBQZU.S9/5LyzNdguTGja', 0, 0, 0, 'Member', 'Aktif', 'Sudah Verifikasi', 894500, '01qBdchjLiZcFVxFJf6q', 'dahry', '2020-06-04', '00:49:22', 0, '6285780506593', '738676', 'Wjw1434', '', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktifitas`
--
ALTER TABLE `aktifitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bca`
--
ALTER TABLE `bca`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cek_akun`
--
ALTER TABLE `cek_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `harga_kode_undangan`
--
ALTER TABLE `harga_kode_undangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_layanan`
--
ALTER TABLE `kategori_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ketentuan_layanan`
--
ALTER TABLE `ketentuan_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kode_undangan`
--
ALTER TABLE `kode_undangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak_admin`
--
ALTER TABLE `kontak_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak_website`
--
ALTER TABLE `kontak_website`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanan_pascabayar`
--
ALTER TABLE `layanan_pascabayar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanan_pulsa`
--
ALTER TABLE `layanan_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanan_sosmed`
--
ALTER TABLE `layanan_sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `metode_depo`
--
ALTER TABLE `metode_depo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mutasi_bank`
--
ALTER TABLE `mutasi_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mutasi_ovo`
--
ALTER TABLE `mutasi_ovo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ovo`
--
ALTER TABLE `ovo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembelian_pascabayar`
--
ALTER TABLE `pembelian_pascabayar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembelian_pulsa`
--
ALTER TABLE `pembelian_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembelian_sosmed`
--
ALTER TABLE `pembelian_sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pertanyaan_umum`
--
ALTER TABLE `pertanyaan_umum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan_tiket`
--
ALTER TABLE `pesan_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `promo_layanan`
--
ALTER TABLE `promo_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provider_pulsa`
--
ALTER TABLE `provider_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat_referral`
--
ALTER TABLE `riwayat_referral`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat_saldo_koin`
--
ALTER TABLE `riwayat_saldo_koin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat_transfer`
--
ALTER TABLE `riwayat_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `semua_pembelian`
--
ALTER TABLE `semua_pembelian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_harga_untung`
--
ALTER TABLE `setting_harga_untung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_koin`
--
ALTER TABLE `setting_koin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_koin_didapat`
--
ALTER TABLE `setting_koin_didapat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_rate`
--
ALTER TABLE `setting_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_referral`
--
ALTER TABLE `setting_referral`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `top_depo`
--
ALTER TABLE `top_depo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `top_layanan`
--
ALTER TABLE `top_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `top_users`
--
ALTER TABLE `top_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aktifitas`
--
ALTER TABLE `aktifitas`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1204;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `cek_akun`
--
ALTER TABLE `cek_akun`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1963;

--
-- AUTO_INCREMENT untuk tabel `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `harga_kode_undangan`
--
ALTER TABLE `harga_kode_undangan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori_layanan`
--
ALTER TABLE `kategori_layanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2840;

--
-- AUTO_INCREMENT untuk tabel `ketentuan_layanan`
--
ALTER TABLE `ketentuan_layanan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kode_undangan`
--
ALTER TABLE `kode_undangan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `layanan_pascabayar`
--
ALTER TABLE `layanan_pascabayar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT untuk tabel `layanan_pulsa`
--
ALTER TABLE `layanan_pulsa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8312;

--
-- AUTO_INCREMENT untuk tabel `layanan_sosmed`
--
ALTER TABLE `layanan_sosmed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10709;

--
-- AUTO_INCREMENT untuk tabel `metode_depo`
--
ALTER TABLE `metode_depo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mutasi_bank`
--
ALTER TABLE `mutasi_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mutasi_ovo`
--
ALTER TABLE `mutasi_ovo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pembelian_pascabayar`
--
ALTER TABLE `pembelian_pascabayar`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pembelian_pulsa`
--
ALTER TABLE `pembelian_pulsa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pembelian_sosmed`
--
ALTER TABLE `pembelian_sosmed`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `pertanyaan_umum`
--
ALTER TABLE `pertanyaan_umum`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `pesan_tiket`
--
ALTER TABLE `pesan_tiket`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `promo_layanan`
--
ALTER TABLE `promo_layanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `provider_pulsa`
--
ALTER TABLE `provider_pulsa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `riwayat_referral`
--
ALTER TABLE `riwayat_referral`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `riwayat_saldo_koin`
--
ALTER TABLE `riwayat_saldo_koin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `riwayat_transfer`
--
ALTER TABLE `riwayat_transfer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `semua_pembelian`
--
ALTER TABLE `semua_pembelian`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `setting_harga_untung`
--
ALTER TABLE `setting_harga_untung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `setting_koin`
--
ALTER TABLE `setting_koin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `setting_koin_didapat`
--
ALTER TABLE `setting_koin_didapat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `setting_rate`
--
ALTER TABLE `setting_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `top_depo`
--
ALTER TABLE `top_depo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `top_layanan`
--
ALTER TABLE `top_layanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `top_users`
--
ALTER TABLE `top_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
